@interface TRIStorageManagement
- (BOOL)_clearContainerStorage;
- (BOOL)_clearStorage;
- (BOOL)_readSchemaVersion:(unsigned int *)version fileExists:(BOOL *)exists;
- (BOOL)_runNamespaceDatabaseBlock:(id)block;
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
  legacySchemaVersion = [MEMORY[0x277D737E0] legacySchemaVersion];
  v24 = 0;
  v4 = 0;
  if ([(TRIStorageManagement *)self _readSchemaVersion:&legacySchemaVersion fileExists:&v24])
  {
    v5 = TRILogCategory_Server();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = legacySchemaVersion;
      _os_log_impl(&dword_26F567000, v5, OS_LOG_TYPE_DEFAULT, "TRIStorageManagement on-disk schema version is %u.", buf, 8u);
    }

    v6 = legacySchemaVersion;
    if (v6 == [MEMORY[0x277D737E0] currentSchemaVersion])
    {
LABEL_5:
      v4 = 1;
      goto LABEL_26;
    }

    v7 = legacySchemaVersion;
    resetStorageRequestSchemaVersion = [MEMORY[0x277D737E0] resetStorageRequestSchemaVersion];
    v9 = TRILogCategory_Server();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (v7 == resetStorageRequestSchemaVersion)
    {
      if (!v10)
      {
        goto LABEL_12;
      }

      *buf = 67109120;
      *&buf[4] = legacySchemaVersion;
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

      v14 = legacySchemaVersion;
      currentSchemaVersion = [MEMORY[0x277D737E0] currentSchemaVersion];
      *buf = 67109376;
      *&buf[4] = v14;
      v29 = 1024;
      v30 = currentSchemaVersion;
      v11 = "TRIStorageManagement schema version has changed (%u --> %u); will attempt to clear user data.";
      v12 = v9;
      v13 = 14;
    }

    _os_log_impl(&dword_26F567000, v12, OS_LOG_TYPE_DEFAULT, v11, buf, v13);
LABEL_12:

    *buf = 0;
    if (![(TRIStorageManagement *)self _readDeviceIdWithSchemaVersion:legacySchemaVersion intoData:buf])
    {
      goto LABEL_25;
    }

    if (v24 == 1)
    {
      [(TRIStorageManagement *)self _eliminateAllMAAssets];
    }

    _clearStorage = [(TRIStorageManagement *)self _clearStorage];
    v17 = _clearStorage;
    v18 = *buf;
    if (*buf)
    {
      if (_clearStorage)
      {
        currentSchemaVersion2 = [MEMORY[0x277D737E0] currentSchemaVersion];
        v18 = *buf;
      }

      else
      {
        currentSchemaVersion2 = legacySchemaVersion;
      }

      [(TRIStorageManagement *)self _writeDeviceIdWithData:v18 schemaVersion:currentSchemaVersion2];
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
      currentSchemaVersion3 = [MEMORY[0x277D737E0] currentSchemaVersion];
      *v26 = 67109120;
      v27 = currentSchemaVersion3;
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
  resetStorageRequestSchemaVersion = [MEMORY[0x277D737E0] resetStorageRequestSchemaVersion];

  return [(TRIStorageManagement *)self _writeSchemaVersion:resetStorageRequestSchemaVersion];
}

- (BOOL)_readSchemaVersion:(unsigned int *)version fileExists:(BOOL *)exists
{
  v41 = *MEMORY[0x277D85DE8];
  if (!version)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIStorageManagement.m" lineNumber:101 description:{@"Invalid parameter not satisfying: %@", @"version"}];
  }

  v6 = objc_autoreleasePoolPush();
  v7 = objc_alloc(MEMORY[0x277CBEA90]);
  schemaVersionFile = [MEMORY[0x277D737E0] schemaVersionFile];
  v34 = 0;
  v9 = [v7 initWithContentsOfFile:schemaVersionFile options:1 error:&v34];
  v10 = v34;

  if (v9)
  {
    v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v9 encoding:4];
    *exists = 1;
    if (v11)
    {
      v33 = -1;
      if (![MEMORY[0x277D73748] convertFromString:v11 usingBase:10 toI64:&v33] || (legacySchemaVersion2 = v33, HIDWORD(v33)))
      {
        v13 = TRILogCategory_Server();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          schemaVersionFile2 = [MEMORY[0x277D737E0] schemaVersionFile];
          legacySchemaVersion = [MEMORY[0x277D737E0] legacySchemaVersion];
          *buf = 138543874;
          v36 = v11;
          v37 = 2114;
          v38 = schemaVersionFile2;
          v39 = 1024;
          v40 = legacySchemaVersion;
          _os_log_error_impl(&dword_26F567000, v13, OS_LOG_TYPE_ERROR, "Could not parse string %{public}@ from schema version file %{public}@ as an unsigned int; treating as version %u.", buf, 0x1Cu);
        }

        legacySchemaVersion2 = [MEMORY[0x277D737E0] legacySchemaVersion];
      }

      *version = legacySchemaVersion2;
    }

    else
    {
      v16 = TRILogCategory_Server();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        schemaVersionFile3 = [MEMORY[0x277D737E0] schemaVersionFile];
        legacySchemaVersion3 = [MEMORY[0x277D737E0] legacySchemaVersion];
        *buf = 138543618;
        v36 = schemaVersionFile3;
        v37 = 1024;
        LODWORD(v38) = legacySchemaVersion3;
        _os_log_error_impl(&dword_26F567000, v16, OS_LOG_TYPE_ERROR, "Schema version file %{public}@ contains non-UTF-8 content; treating as version %u.", buf, 0x12u);
      }

      *version = [MEMORY[0x277D737E0] legacySchemaVersion];
    }

LABEL_17:
    v17 = 1;
    goto LABEL_25;
  }

  domain = [v10 domain];
  v15 = domain;
  if (domain == *MEMORY[0x277CCA050])
  {
    code = [v10 code];

    if (code == 260)
    {
      *exists = 0;
      v19 = TRILogCategory_Server();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        schemaVersionFile4 = [MEMORY[0x277D737E0] schemaVersionFile];
        legacySchemaVersion4 = [MEMORY[0x277D737E0] legacySchemaVersion];
        *buf = 138543618;
        v36 = schemaVersionFile4;
        v37 = 1024;
        LODWORD(v38) = legacySchemaVersion4;
        _os_log_impl(&dword_26F567000, v19, OS_LOG_TYPE_DEFAULT, "Schema version file %{public}@ is not present; treating as version %u.", buf, 0x12u);
      }

      *version = [MEMORY[0x277D737E0] legacySchemaVersion];
      goto LABEL_17;
    }
  }

  else
  {
  }

  v22 = TRILogCategory_Server();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    schemaVersionFile5 = [MEMORY[0x277D737E0] schemaVersionFile];
    *buf = 138543618;
    v36 = schemaVersionFile5;
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

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  mEMORY[0x277D737E0] = [MEMORY[0x277D737E0] sharedPaths];
  trialRootDir = [mEMORY[0x277D737E0] trialRootDir];
  v19 = 0;
  v8 = [defaultManager triForceRemoveItemAtPath:trialRootDir error:&v19];
  v9 = v19;

  if (v8)
  {
    goto LABEL_8;
  }

  domain = [v9 domain];
  v12 = domain;
  if (domain == *MEMORY[0x277CCA050])
  {
    code = [v9 code];

    if (code == 4)
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
    mEMORY[0x277D737E0]2 = [MEMORY[0x277D737E0] sharedPaths];
    trialRootDir2 = [mEMORY[0x277D737E0]2 trialRootDir];
    *buf = 138543618;
    v21 = trialRootDir2;
    v22 = 2114;
    v23 = v9;
    _os_log_error_impl(&dword_26F567000, v14, OS_LOG_TYPE_ERROR, "Failed to remove Trial data directory %{public}@: %{public}@", buf, 0x16u);
  }

  v10 = 0;
LABEL_15:

  v15 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)_runNamespaceDatabaseBlock:(id)block
{
  blockCopy = block;
  mEMORY[0x277D737E0] = [MEMORY[0x277D737E0] sharedPaths];
  v6 = [[TRIDatabase alloc] initWithPaths:mEMORY[0x277D737E0] storageManagement:self];
  if (v6)
  {
    v7 = [[TRINamespaceDatabase alloc] initWithDatabase:v6];
    v8 = blockCopy[2](blockCopy, v7);
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
          mEMORY[0x277D737E0] = [MEMORY[0x277D737E0] sharedPaths];
          v13 = mEMORY[0x277D737E0];
          if (mEMORY[0x277D737E0])
          {
            trialRootDir = [mEMORY[0x277D737E0] trialRootDir];
            v15 = TRILogCategory_Server();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138543362;
              v36 = trialRootDir;
              _os_log_debug_impl(&dword_26F567000, v15, OS_LOG_TYPE_DEBUG, "removing container Trial data directory %{public}@", buf, 0xCu);
            }

            defaultManager = [MEMORY[0x277CCAA00] defaultManager];
            v28 = 0;
            v17 = [defaultManager triForceRemoveItemAtPath:trialRootDir error:&v28];
            identifier = v28;

            if (v17)
            {
              goto LABEL_19;
            }

            domain = [identifier domain];
            v20 = domain;
            if (domain != v26)
            {

LABEL_16:
              v22 = TRILogCategory_Server();
              if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543618;
                v36 = trialRootDir;
                v37 = 2114;
                v38 = identifier;
                _os_log_error_impl(&dword_26F567000, v22, OS_LOG_TYPE_ERROR, "Failed to remove container Trial data directory %{public}@: %{public}@", buf, 0x16u);
              }

              v5 = 0;
              goto LABEL_19;
            }

            code = [identifier code];

            if (code != 4)
            {
              goto LABEL_16;
            }
          }

          else
          {
            trialRootDir = TRILogCategory_Server();
            if (!os_log_type_enabled(trialRootDir, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_20;
            }

            identifier = [v10 identifier];
            *buf = 138543362;
            v36 = identifier;
            _os_log_impl(&dword_26F567000, trialRootDir, OS_LOG_TYPE_DEFAULT, "not clearing Trial data from missing app container: %{public}@", buf, 0xCu);
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
  mEMORY[0x277D737E0] = [MEMORY[0x277D737E0] sharedPaths];
  namespaceDescriptorsDefaultDir = [mEMORY[0x277D737E0] namespaceDescriptorsDefaultDir];
  v6 = [v3 descriptorsForDirectory:namespaceDescriptorsDefaultDir filterBlock:0];

  [v6 enumerateObjectsUsingBlock:&__block_literal_global_346_0];
}

void __47__TRIStorageManagement__notifyNamespaceUpdated__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D73790];
  v3 = [a2 namespaceName];
  [v2 notifyUpdateForNamespaceName:v3];
}

@end