@interface PLPhotoLibraryImportValidation
- (BOOL)checkLegacyLibraryRequiresRepairWithError:(id *)error;
- (BOOL)checkLegacyLibraryVersionStatusWithError:(id *)error;
- (BOOL)checkLibraryCPLStatusWithError:(id *)error;
- (BOOL)checkLibraryVersionStatusWithError:(id *)error;
- (BOOL)isLibraryValidForImportWithError:(id *)error;
- (PLPhotoLibraryImportValidation)initWithLibraryManager:(id)manager;
@end

@implementation PLPhotoLibraryImportValidation

- (BOOL)checkLegacyLibraryRequiresRepairWithError:(id *)error
{
  if (error)
  {
    *error = 0;
  }

  return 1;
}

- (BOOL)checkLegacyLibraryVersionStatusWithError:(id *)error
{
  v43[1] = *MEMORY[0x1E69E9840];
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__108485;
  v36 = __Block_byref_object_dispose__108486;
  v37 = 0;
  libraryURL = [(PLPhotoLibraryPathManager *)self->_pm libraryURL];
  v31 = 0;
  v6 = [libraryURL bookmarkDataWithOptions:0 includingResourceValuesForKeys:0 relativeToURL:0 error:&v31];
  v7 = v31;

  if (v6)
  {
    v8 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithServiceName:@"com.apple.Photos.Migration"];
    v9 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F109F4E8];
    [v8 setRemoteObjectInterface:v9];

    [v8 resume];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __75__PLPhotoLibraryImportValidation_checkLegacyLibraryVersionStatusWithError___block_invoke;
    v30[3] = &unk_1E75773B8;
    v30[4] = &v32;
    v10 = [v8 synchronousRemoteObjectProxyWithErrorHandler:v30];
    v11 = v10;
    if (v10)
    {
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __75__PLPhotoLibraryImportValidation_checkLegacyLibraryVersionStatusWithError___block_invoke_98;
      v29[3] = &unk_1E75767A8;
      v29[4] = &v32;
      [v10 getMigrationStateForLibraryBookmark:v6 withReply:v29];
    }

    else
    {
      v17 = MEMORY[0x1E696ABC0];
      v42 = *MEMORY[0x1E696A578];
      v43[0] = @"Failed to establish connection to the migration service";
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:&v42 count:1];
      v19 = [v17 errorWithDomain:*MEMORY[0x1E69BFF48] code:72008 userInfo:v18];
      v20 = v33[5];
      v33[5] = v19;

      v21 = PLBackendGetLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = v33[5];
        *buf = 138543362;
        v41 = v22;
        _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_ERROR, "[ImportLibraryValidation] Processing error: %{public}@", buf, 0xCu);
      }
    }

    [v8 invalidate];
  }

  else
  {
    v12 = MEMORY[0x1E696ABC0];
    v38 = *MEMORY[0x1E696A578];
    v39 = @"Missing bookmark data";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
    v14 = [v12 errorWithDomain:*MEMORY[0x1E69BFF48] code:72008 userInfo:v13];
    v15 = v33[5];
    v33[5] = v14;

    v8 = PLBackendGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v16 = v33[5];
      *buf = 138543362;
      v41 = v16;
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_ERROR, "[ImportLibraryValidation] Processing error: %{public}@", buf, 0xCu);
    }
  }

  v23 = v33;
  v25 = (v33 + 5);
  v24 = v33[5];
  if (v24)
  {
    if (!error)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  obj = 0;
  [(PLPhotoLibraryImportValidation *)self checkLegacyLibraryRequiresRepairWithError:&obj];
  objc_storeStrong(v25, obj);
  v23 = v33;
  v24 = v33[5];
  if (error)
  {
LABEL_14:
    *error = v24;
    v23 = v33;
  }

LABEL_15:
  v26 = v23[5] == 0;

  _Block_object_dispose(&v32, 8);
  return v26;
}

void __75__PLPhotoLibraryImportValidation_checkLegacyLibraryVersionStatusWithError___block_invoke(uint64_t a1, void *a2)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  v5 = MEMORY[0x1E696ABC0];
  v6 = *MEMORY[0x1E69BFF48];
  if (v3)
  {
    v15 = *MEMORY[0x1E696AA08];
    v16[0] = v3;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  }

  else
  {
    v7 = 0;
  }

  v8 = [v5 errorWithDomain:v6 code:72008 userInfo:v7];
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  if (v4)
  {
  }

  v11 = PLBackendGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = *(*(*(a1 + 32) + 8) + 40);
    v13 = 138543362;
    v14 = v12;
    _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_ERROR, "[ImportLibraryValidation] Error detected connecting to the service. Error: %{public}@", &v13, 0xCu);
  }
}

void __75__PLPhotoLibraryImportValidation_checkLegacyLibraryVersionStatusWithError___block_invoke_98(uint64_t a1, uint64_t a2, void *a3)
{
  v23[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if ((a2 - 2) < 3)
  {
    v7 = MEMORY[0x1E696ABC0];
    v8 = *MEMORY[0x1E69BFF48];
    if (v5)
    {
      v20 = *MEMORY[0x1E696AA08];
      v21 = v5;
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    }

    else
    {
      v9 = 0;
    }

    v12 = 72003;
LABEL_14:
    v13 = v7;
    v14 = v8;
    goto LABEL_15;
  }

  if (a2 == 6)
  {
    v7 = MEMORY[0x1E696ABC0];
    v8 = *MEMORY[0x1E69BFF48];
    if (v5)
    {
      v18 = *MEMORY[0x1E696AA08];
      v19 = v5;
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    }

    else
    {
      v9 = 0;
    }

    v12 = 72009;
    goto LABEL_14;
  }

  if (a2)
  {
    goto LABEL_17;
  }

  v10 = MEMORY[0x1E696ABC0];
  v11 = *MEMORY[0x1E69BFF48];
  if (v5)
  {
    v22 = *MEMORY[0x1E696AA08];
    v23[0] = v5;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
  }

  else
  {
    v9 = 0;
  }

  v13 = v10;
  v14 = v11;
  v12 = 72001;
LABEL_15:
  v15 = [v13 errorWithDomain:v14 code:v12 userInfo:v9];
  v16 = *(*(a1 + 32) + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = v15;

  if (v6)
  {
  }

LABEL_17:
}

- (BOOL)checkLibraryVersionStatusWithError:(id *)error
{
  v18 = 0;
  fm = self->_fm;
  photosDatabasePath = [(PLPhotoLibraryPathManager *)self->_pm photosDatabasePath];
  LODWORD(fm) = [(NSFileManager *)fm fileExistsAtPath:photosDatabasePath isDirectory:&v18];
  v7 = v18;

  if (fm)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    modelMigrator = [(PLLibraryServicesManager *)self->_libraryServicesManager modelMigrator];
    legacyMigrationState = [modelMigrator legacyMigrationState];

    v9 = 0;
    v13 = 0;
    if (legacyMigrationState > 2)
    {
      if ((legacyMigrationState - 3) >= 2)
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (!legacyMigrationState)
      {
        v13 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69BFF48] code:72001 userInfo:0];
        v9 = 0;
        if (!error)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

      if (legacyMigrationState != 1)
      {
        if (legacyMigrationState != 2)
        {
          goto LABEL_14;
        }

        v16 = 0;
        v9 = [(PLPhotoLibraryImportValidation *)self checkLegacyLibraryRequiresRepairWithError:&v16];
        v10 = v16;
        goto LABEL_13;
      }
    }

    v17 = 0;
    v9 = [(PLPhotoLibraryImportValidation *)self checkLegacyLibraryVersionStatusWithError:&v17];
    v10 = v17;
  }

  else
  {
    v15 = 0;
    v9 = [(PLPhotoLibraryImportValidation *)self checkLegacyLibraryVersionStatusWithError:&v15];
    v10 = v15;
  }

LABEL_13:
  v13 = v10;
LABEL_14:
  if (error)
  {
LABEL_15:
    v13 = v13;
    *error = v13;
  }

LABEL_16:

  return v9;
}

- (BOOL)checkLibraryCPLStatusWithError:(id *)error
{
  libraryURL = [(PLPhotoLibraryPathManager *)self->_pm libraryURL];
  v6 = PLIsCloudPhotoLibraryEnabledForPhotoLibraryURL(libraryURL);

  if (v6)
  {
    v7 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69BFF48] code:72006 userInfo:0];
    v8 = 0;
    if (!error)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v14 = 0;
  fm = self->_fm;
  disableICloudPhotosFilePath = [(PLPhotoLibraryPathManager *)self->_pm disableICloudPhotosFilePath];
  v11 = [(NSFileManager *)fm fileExistsAtPath:disableICloudPhotosFilePath isDirectory:&v14];
  if (v14)
  {
    v12 = 0;
  }

  else
  {
    v12 = v11;
  }

  if (v12)
  {
    v7 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69BFF48] code:72007 userInfo:0];
  }

  else
  {
    v7 = 0;
  }

  v8 = !v12;
  if (error)
  {
LABEL_11:
    v7 = v7;
    *error = v7;
  }

LABEL_12:

  return v8;
}

- (BOOL)isLibraryValidForImportWithError:(id *)error
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69BFF48] code:72002 userInfo:0];
  v5 = PLBackendGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_ERROR, "[ImportLibraryValidation] Library is invalid for import. Error: %@", &v8, 0xCu);
  }

  if (error)
  {
    v6 = v4;
    *error = v4;
  }

  return 0;
}

- (PLPhotoLibraryImportValidation)initWithLibraryManager:(id)manager
{
  managerCopy = manager;
  if (!managerCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLPhotoLibraryImportValidation.m" lineNumber:32 description:{@"Invalid parameter not satisfying: %@", @"manager"}];
  }

  v15.receiver = self;
  v15.super_class = PLPhotoLibraryImportValidation;
  v7 = [(PLPhotoLibraryImportValidation *)&v15 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_libraryServicesManager, manager);
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    fm = v8->_fm;
    v8->_fm = defaultManager;

    pathManager = [(PLLibraryServicesManager *)v8->_libraryServicesManager pathManager];
    pm = v8->_pm;
    v8->_pm = pathManager;
  }

  return v8;
}

@end