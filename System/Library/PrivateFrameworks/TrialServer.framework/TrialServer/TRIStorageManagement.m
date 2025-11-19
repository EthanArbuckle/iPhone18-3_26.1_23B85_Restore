@interface TRIStorageManagement
- (BOOL)_clearContainerStorage;
- (BOOL)_clearStorage;
- (BOOL)_readSchemaVersion:(unsigned int *)a3 fileExists:(BOOL *)a4;
- (BOOL)_runNamespaceDatabaseBlock:(id)a3;
- (BOOL)prepareTrialStorage;
- (BOOL)requestTrialStorageResetOnNextLaunch;
- (void)_eliminateAllMAAssets;
- (void)_notifyNamespaceUpdated;
@end

@implementation TRIStorageManagement

- (BOOL)prepareTrialStorage
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = os_transaction_create();
  v25 = [MEMORY[0x277D737E0] legacySchemaVersion];
  v24 = 0;
  v4 = 0;
  if ([(TRIStorageManagement *)self _readSchemaVersion:&v25 fileExists:&v24])
  {
    v5 = TRILogCategory_Server();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v25;
      _os_log_impl(&dword_26F567000, v5, OS_LOG_TYPE_DEFAULT, "TRIStorageManagement on-disk schema version is %u.", buf, 8u);
    }

    v6 = v25;
    if (v6 == [MEMORY[0x277D737E0] currentSchemaVersion])
    {
LABEL_5:
      v4 = 1;
      goto LABEL_26;
    }

    v7 = v25;
    v8 = [MEMORY[0x277D737E0] resetStorageRequestSchemaVersion];
    v9 = TRILogCategory_Server();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (v7 == v8)
    {
      if (!v10)
      {
        goto LABEL_12;
      }

      *buf = 67109120;
      *&buf[4] = v25;
      v11 = "TRIStorageManagement schema version %u indicates an explicit request for storage reset; will attempt to clear user data.";
      v12 = v9;
      v13 = 8;
    }

    else
    {
      if (!v10)
      {
        goto LABEL_12;
      }

      v14 = v25;
      v15 = [MEMORY[0x277D737E0] currentSchemaVersion];
      *buf = 67109376;
      *&buf[4] = v14;
      v29 = 1024;
      v30 = v15;
      v11 = "TRIStorageManagement schema version has changed (%u --> %u); will attempt to clear user data.";
      v12 = v9;
      v13 = 14;
    }

    _os_log_impl(&dword_26F567000, v12, OS_LOG_TYPE_DEFAULT, v11, buf, v13);
LABEL_12:

    *buf = 0;
    if (![(TRIStorageManagement *)self _readDeviceIdWithSchemaVersion:v25 intoData:buf])
    {
      goto LABEL_25;
    }

    if (v24 == 1)
    {
      [(TRIStorageManagement *)self _eliminateAllMAAssets];
    }

    v16 = [(TRIStorageManagement *)self _clearStorage];
    v17 = v16;
    v18 = *buf;
    if (*buf)
    {
      if (v16)
      {
        v19 = [MEMORY[0x277D737E0] currentSchemaVersion];
        v18 = *buf;
      }

      else
      {
        v19 = v25;
      }

      [(TRIStorageManagement *)self _writeDeviceIdWithData:v18 schemaVersion:v19];
    }

    if (!v17 || (-[TRIStorageManagement _notifyNamespaceUpdated](self, "_notifyNamespaceUpdated"), !-[TRIStorageManagement _writeSchemaVersion:](self, "_writeSchemaVersion:", [MEMORY[0x277D737E0] currentSchemaVersion])))
    {
LABEL_25:

      v4 = 0;
      goto LABEL_26;
    }

    v20 = TRILogCategory_Server();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [MEMORY[0x277D737E0] currentSchemaVersion];
      *v26 = 67109120;
      v27 = v21;
      _os_log_impl(&dword_26F567000, v20, OS_LOG_TYPE_DEFAULT, "TRIStorageManagement user data cleared successfully; schema version is now %u.", v26, 8u);
    }

    goto LABEL_5;
  }

LABEL_26:

  v22 = *MEMORY[0x277D85DE8];
  return v4;
}

- (BOOL)requestTrialStorageResetOnNextLaunch
{
  v3 = [MEMORY[0x277D737E0] resetStorageRequestSchemaVersion];

  return [(TRIStorageManagement *)self _writeSchemaVersion:v3];
}

- (BOOL)_readSchemaVersion:(unsigned int *)a3 fileExists:(BOOL *)a4
{
  v41 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    v32 = [MEMORY[0x277CCA890] currentHandler];
    [v32 handleFailureInMethod:a2 object:self file:@"TRIStorageManagement.m" lineNumber:101 description:{@"Invalid parameter not satisfying: %@", @"version"}];
  }

  v6 = objc_autoreleasePoolPush();
  v7 = objc_alloc(MEMORY[0x277CBEA90]);
  v8 = [MEMORY[0x277D737E0] schemaVersionFile];
  v34 = 0;
  v9 = [v7 initWithContentsOfFile:v8 options:1 error:&v34];
  v10 = v34;

  if (v9)
  {
    v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v9 encoding:4];
    *a4 = 1;
    if (v11)
    {
      v33 = -1;
      if (![MEMORY[0x277D73748] convertFromString:v11 usingBase:10 toI64:&v33] || (v12 = v33, HIDWORD(v33)))
      {
        v13 = TRILogCategory_Server();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v28 = [MEMORY[0x277D737E0] schemaVersionFile];
          v29 = [MEMORY[0x277D737E0] legacySchemaVersion];
          *buf = 138543874;
          v36 = v11;
          v37 = 2114;
          v38 = v28;
          v39 = 1024;
          v40 = v29;
          _os_log_error_impl(&dword_26F567000, v13, OS_LOG_TYPE_ERROR, "Could not parse string %{public}@ from schema version file %{public}@ as an unsigned int; treating as version %u.", buf, 0x1Cu);
        }

        v12 = [MEMORY[0x277D737E0] legacySchemaVersion];
      }

      *a3 = v12;
    }

    else
    {
      v16 = TRILogCategory_Server();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v26 = [MEMORY[0x277D737E0] schemaVersionFile];
        v27 = [MEMORY[0x277D737E0] legacySchemaVersion];
        *buf = 138543618;
        v36 = v26;
        v37 = 1024;
        LODWORD(v38) = v27;
        _os_log_error_impl(&dword_26F567000, v16, OS_LOG_TYPE_ERROR, "Schema version file %{public}@ contains non-UTF-8 content; treating as version %u.", buf, 0x12u);
      }

      *a3 = [MEMORY[0x277D737E0] legacySchemaVersion];
    }

LABEL_17:
    v17 = 1;
    goto LABEL_25;
  }

  v14 = [v10 domain];
  v15 = v14;
  if (v14 == *MEMORY[0x277CCA050])
  {
    v18 = [v10 code];

    if (v18 == 260)
    {
      *a4 = 0;
      v19 = TRILogCategory_Server();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [MEMORY[0x277D737E0] schemaVersionFile];
        v21 = [MEMORY[0x277D737E0] legacySchemaVersion];
        *buf = 138543618;
        v36 = v20;
        v37 = 1024;
        LODWORD(v38) = v21;
        _os_log_impl(&dword_26F567000, v19, OS_LOG_TYPE_DEFAULT, "Schema version file %{public}@ is not present; treating as version %u.", buf, 0x12u);
      }

      *a3 = [MEMORY[0x277D737E0] legacySchemaVersion];
      goto LABEL_17;
    }
  }

  else
  {
  }

  v22 = TRILogCategory_Server();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    v25 = [MEMORY[0x277D737E0] schemaVersionFile];
    *buf = 138543618;
    v36 = v25;
    v37 = 2114;
    v38 = v10;
    _os_log_error_impl(&dword_26F567000, v22, OS_LOG_TYPE_ERROR, "Schema version file %{public}@ is unreadable: %{public}@", buf, 0x16u);
  }

  v17 = 0;
LABEL_25:

  objc_autoreleasePoolPop(v6);
  v23 = *MEMORY[0x277D85DE8];
  return v17;
}

- (void)_eliminateAllMAAssets
{
  v2 = +[TRIMobileAssetUtil eliminableAssetTypes];
  v3 = TRILogCategory_Server();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_26F567000, v3, OS_LOG_TYPE_DEFAULT, "Attempting to eliminate all MA assets that exist on the device", v4, 2u);
  }

  [v2 enumerateObjectsUsingBlock:&__block_literal_global_34];
}

void __45__TRIStorageManagement__eliminateAllMAAssets__block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = [MEMORY[0x277D289E0] eliminateAllForAssetTypeSync:v2];
  if (v3)
  {
    v4 = TRILogCategory_Server();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 138543618;
      v7 = v2;
      v8 = 2114;
      v9 = v3;
      _os_log_error_impl(&dword_26F567000, v4, OS_LOG_TYPE_ERROR, "Failed to eliminate asset type %{public}@ : %{public}@", &v6, 0x16u);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (BOOL)_clearStorage
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = TRILogCategory_Server();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_26F567000, v3, OS_LOG_TYPE_DEBUG, "attempting to delete Trial data dirs from containers", buf, 2u);
  }

  if (![(TRIStorageManagement *)self _clearContainerStorage])
  {
    v4 = TRILogCategory_Server();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26F567000, v4, OS_LOG_TYPE_ERROR, "failed to delete Trial data dirs from all containers", buf, 2u);
    }
  }

  v5 = [MEMORY[0x277CCAA00] defaultManager];
  v6 = [MEMORY[0x277D737E0] sharedPaths];
  v7 = [v6 trialRootDir];
  v19 = 0;
  v8 = [v5 triForceRemoveItemAtPath:v7 error:&v19];
  v9 = v19;

  if (v8)
  {
    goto LABEL_8;
  }

  v11 = [v9 domain];
  v12 = v11;
  if (v11 == *MEMORY[0x277CCA050])
  {
    v13 = [v9 code];

    if (v13 == 4)
    {
LABEL_8:
      v10 = 1;
      goto LABEL_15;
    }
  }

  else
  {
  }

  v14 = TRILogCategory_Server();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v17 = [MEMORY[0x277D737E0] sharedPaths];
    v18 = [v17 trialRootDir];
    *buf = 138543618;
    v21 = v18;
    v22 = 2114;
    v23 = v9;
    _os_log_error_impl(&dword_26F567000, v14, OS_LOG_TYPE_ERROR, "Failed to remove Trial data directory %{public}@: %{public}@", buf, 0x16u);
  }

  v10 = 0;
LABEL_15:

  v15 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)_runNamespaceDatabaseBlock:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277D737E0] sharedPaths];
  v6 = [[TRIDatabase alloc] initWithPaths:v5 storageManagement:self];
  if (v6)
  {
    v7 = [[TRINamespaceDatabase alloc] initWithDatabase:v6];
    v8 = v4[2](v4, v7);
    [(TRIDatabase *)v6 closePermanently];
  }

  else
  {
    v9 = TRILogCategory_Server();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      _os_log_error_impl(&dword_26F567000, v9, OS_LOG_TYPE_ERROR, "failed to open database.  Cannot delete container Trial data directories", v11, 2u);
    }

    v8 = 0;
  }

  return v8;
}

- (BOOL)_clearContainerStorage
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __46__TRIStorageManagement__clearContainerStorage__block_invoke;
  v33[3] = &unk_279DE3420;
  v4 = v3;
  v34 = v4;
  v5 = [(TRIStorageManagement *)self _runNamespaceDatabaseBlock:v33];
  if ([v4 count])
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    obj = v4;
    v6 = [obj countByEnumeratingWithState:&v29 objects:v39 count:16];
    if (v6)
    {
      v7 = v6;
      v25 = v4;
      v8 = *v30;
      v26 = *MEMORY[0x277CCA050];
      while (1)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v30 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v29 + 1) + 8 * i);
          v11 = objc_autoreleasePoolPush();
          v12 = [MEMORY[0x277D737E0] sharedPaths];
          v13 = v12;
          if (v12)
          {
            v14 = [v12 trialRootDir];
            v15 = TRILogCategory_Server();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138543362;
              v36 = v14;
              _os_log_debug_impl(&dword_26F567000, v15, OS_LOG_TYPE_DEBUG, "removing container Trial data directory %{public}@", buf, 0xCu);
            }

            v16 = [MEMORY[0x277CCAA00] defaultManager];
            v28 = 0;
            v17 = [v16 triForceRemoveItemAtPath:v14 error:&v28];
            v18 = v28;

            if (v17)
            {
              goto LABEL_19;
            }

            v19 = [v18 domain];
            v20 = v19;
            if (v19 != v26)
            {

LABEL_16:
              v22 = TRILogCategory_Server();
              if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543618;
                v36 = v14;
                v37 = 2114;
                v38 = v18;
                _os_log_error_impl(&dword_26F567000, v22, OS_LOG_TYPE_ERROR, "Failed to remove container Trial data directory %{public}@: %{public}@", buf, 0x16u);
              }

              v5 = 0;
              goto LABEL_19;
            }

            v21 = [v18 code];

            if (v21 != 4)
            {
              goto LABEL_16;
            }
          }

          else
          {
            v14 = TRILogCategory_Server();
            if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_20;
            }

            v18 = [v10 identifier];
            *buf = 138543362;
            v36 = v18;
            _os_log_impl(&dword_26F567000, v14, OS_LOG_TYPE_DEFAULT, "not clearing Trial data from missing app container: %{public}@", buf, 0xCu);
          }

LABEL_19:

LABEL_20:
          objc_autoreleasePoolPop(v11);
        }

        v7 = [obj countByEnumeratingWithState:&v29 objects:v39 count:16];
        if (!v7)
        {
          v4 = v25;
          break;
        }
      }
    }
  }

  else
  {
    obj = TRILogCategory_Server();
    if (os_log_type_enabled(obj, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_26F567000, obj, OS_LOG_TYPE_DEBUG, "no container Trial data directories to delete", buf, 2u);
    }
  }

  v23 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t __46__TRIStorageManagement__clearContainerStorage__block_invoke(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __46__TRIStorageManagement__clearContainerStorage__block_invoke_2;
  v5[3] = &unk_279DDF748;
  v6 = *(a1 + 32);
  v3 = [a2 enumerateDynamicNamespaceRecordsWithBlock:v5];

  return v3;
}

void __46__TRIStorageManagement__clearContainerStorage__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 appContainer];
  [v2 addObject:v3];
}

- (void)_notifyNamespaceUpdated
{
  v2 = TRILogCategory_Server();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_debug_impl(&dword_26F567000, v2, OS_LOG_TYPE_DEBUG, "Starting notification of namespaces after schema version update", v7, 2u);
  }

  v3 = MEMORY[0x277D73750];
  v4 = [MEMORY[0x277D737E0] sharedPaths];
  v5 = [v4 namespaceDescriptorsDefaultDir];
  v6 = [v3 descriptorsForDirectory:v5 filterBlock:0];

  [v6 enumerateObjectsUsingBlock:&__block_literal_global_346_0];
}

void __47__TRIStorageManagement__notifyNamespaceUpdated__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D73790];
  v3 = [a2 namespaceName];
  [v2 notifyUpdateForNamespaceName:v3];
}

@end