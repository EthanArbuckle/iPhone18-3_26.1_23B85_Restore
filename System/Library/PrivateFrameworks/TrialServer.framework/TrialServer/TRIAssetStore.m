@interface TRIAssetStore
+ (id)shortHashForAssetIdentifier:(id)a3;
- ($A5A652246548B43F8BC05201A1C72A70)_saveDirectoryAssetWithIdentifier:(id)a3 assetFilename:(id)a4 metadata:(id)a5 flockWitness:(TRIFlockWitness_ *)a6 error:(id *)a7;
- ($A5A652246548B43F8BC05201A1C72A70)saveAssetWithIdentifier:(id)a3 assetURL:(id)a4 metadata:(id)a5 error:(id *)a6;
- (BOOL)_acquireLockfileAndRunBlock:(id)a3;
- (BOOL)_clearUnrefAgeForAssetWithIdentifier:(id)a3;
- (BOOL)_forceRemoveItemAtPath:(id)a3;
- (BOOL)_isDirectoryAtPath:(id)a3 matchingAssetContentAtPath:(id)a4;
- (BOOL)_isFileAtPath:(id)a3 matchingAssetContentAtPath:(id)a4;
- (BOOL)_linkDirectoryAssetWithIdentifier:(id)a3 toCurrentPath:(id)a4 futurePath:(id)a5 flockWitness:(TRIFlockWitness_ *)a6;
- (BOOL)_linkFileAssetWithIdentifier:(id)a3 toCurrentPath:(id)a4 futurePath:(id)a5 flockWitness:(TRIFlockWitness_ *)a6;
- (BOOL)_nonAtomicOverwriteWithSrc:(id)a3 dest:(id)a4 finalPermissionBits:(const unsigned __int16 *)a5;
- (BOOL)_overwriteRenameAsAtomicallyAsPossibleWithSrc:(id)a3 dest:(id)a4;
- (BOOL)_saveFileAssetWithIdentifier:(id)a3 assetFilename:(id)a4 flockWitness:(TRIFlockWitness_ *)a5;
- (BOOL)_saveFileAssetWithIdentifier:(id)a3 assetFilename:(id)a4 workingTempDirectory:(id)a5 flockWitness:(TRIFlockWitness_ *)a6;
- (BOOL)hasAssetWithIdentifier:(id)a3 type:(unsigned __int8 *)a4;
- (BOOL)isValidTargetForSymlink:(id)a3 assetIdentifier:(id)a4;
- (BOOL)linkAssetWithIdentifier:(id)a3 toCurrentPath:(id)a4 futurePath:(id)a5;
- (BOOL)saveAssetWithIdentifier:(id)a3 builtFromAssetWithIdentifier:(id)a4 patchFilename:(id)a5 metadata:(id)a6 error:(id *)a7;
- (BOOL)setCreationDate:(id)a3 forAssetIdentifier:(id)a4;
- (TRIAssetStore)initWithGlobalPaths:(id)a3;
- (TRIAssetStore)initWithPaths:(id)a3 extractor:(id)a4 patcher:(id)a5 monitoredActivity:(id)a6;
- (TRIAssetStore)initWithPaths:(id)a3 monitoredActivity:(id)a4;
- (id)_createTempDir;
- (id)_requireAssetStoreTempDir;
- (id)pathForAssetContentWithIdentifier:(id)a3;
- (id)pathForAssetDirWithIdentifier:(id)a3;
- (id)pathForRefsToAssetWithIdentifier:(id)a3;
- (void)_fixupPermissionsOnPath:(id)a3 permissionBits:(const unsigned __int16 *)a4;
- (void)enumerateAssetDirsUsingBlock:(id)a3;
- (void)enumerateSavedAssetsUsingBlock:(id)a3;
@end

@implementation TRIAssetStore

- (TRIAssetStore)initWithGlobalPaths:(id)a3
{
  result = [(TRIAssetStore *)self initWithPaths:a3];
  result->_useGlobalPaths = 1;
  return result;
}

- (TRIAssetStore)initWithPaths:(id)a3 monitoredActivity:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[TRIRemoteAssetExtractor alloc] initWithMonitoredActivity:v6];
  v9 = [[TRIRemoteAssetPatcher alloc] initWithMonitoredActivity:v6];
  v10 = [(TRIAssetStore *)self initWithPaths:v7 extractor:v8 patcher:v9 monitoredActivity:v6];

  return v10;
}

- (TRIAssetStore)initWithPaths:(id)a3 extractor:(id)a4 patcher:(id)a5 monitoredActivity:(id)a6
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (v15)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v23 = [MEMORY[0x277CCA890] currentHandler];
      [v23 handleFailureInMethod:a2 object:self file:@"TRIAssetStore.m" lineNumber:140 description:@"XPC activity monitoring is available only for TRIRemoteAssetExtractor"];
    }
  }

  v24.receiver = self;
  v24.super_class = TRIAssetStore;
  v16 = [(TRIAssetStore *)&v24 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_paths, a3);
    objc_storeStrong(&v17->_extractor, a4);
    objc_storeStrong(&v17->_patcher, a5);
    objc_storeStrong(&v17->_monitoredActivity, a6);
    v18 = objc_opt_new();
    storageManagement = v17->_storageManagement;
    v17->_storageManagement = v18;

    v17->_useGlobalPaths = 0;
    v20 = [[TRIAssetStoreOperator alloc] initWithPaths:v12 storageManagement:v17->_storageManagement assetStore:v17];
    assetOperator = v17->_assetOperator;
    v17->_assetOperator = v20;
  }

  return v17;
}

- ($A5A652246548B43F8BC05201A1C72A70)saveAssetWithIdentifier:(id)a3 assetURL:(id)a4 metadata:(id)a5 error:(id *)a6
{
  v41 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if (v11)
  {
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_10:
    v23 = [MEMORY[0x277CCA890] currentHandler];
    [v23 handleFailureInMethod:a2 object:self file:@"TRIAssetStore.m" lineNumber:203 description:{@"Invalid parameter not satisfying: %@", @"assetURL"}];

    if (v13)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v22 = [MEMORY[0x277CCA890] currentHandler];
  [v22 handleFailureInMethod:a2 object:self file:@"TRIAssetStore.m" lineNumber:202 description:{@"Invalid parameter not satisfying: %@", @"assetIdentifier"}];

  if (!v12)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v13)
  {
    goto LABEL_4;
  }

LABEL_11:
  v24 = [MEMORY[0x277CCA890] currentHandler];
  [v24 handleFailureInMethod:a2 object:self file:@"TRIAssetStore.m" lineNumber:204 description:{@"Invalid parameter not satisfying: %@", @"metadata"}];

LABEL_4:
  v14 = TRILogCategory_Server();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [(TRIPaths *)self->_paths assetStore];
    *buf = 138543618;
    *&buf[4] = v11;
    *&buf[12] = 2114;
    *&buf[14] = v15;
    _os_log_impl(&dword_26F567000, v14, OS_LOG_TYPE_DEFAULT, "Save asset %{public}@ to asset store: %{public}@", buf, 0x16u);
  }

  v32 = 0;
  v33 = &v32;
  v34 = 0x2810000000;
  v35 = &unk_26F7089E2;
  v36 = 0;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v38 = __Block_byref_object_copy__27;
  v39 = __Block_byref_object_dispose__27;
  v40 = 0;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __65__TRIAssetStore_saveAssetWithIdentifier_assetURL_metadata_error___block_invoke;
  v25[3] = &unk_279DE2370;
  v25[4] = self;
  v16 = v11;
  v26 = v16;
  v29 = &v32;
  v17 = v13;
  v27 = v17;
  v18 = v12;
  v30 = buf;
  v31 = a2;
  v28 = v18;
  [(TRIAssetStore *)self _acquireLockfileAndRunBlock:v25];
  if (a6)
  {
    *a6 = *(*&buf[8] + 40);
  }

  v19.var0 = *(v33 + 32);

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(&v32, 8);

  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

void __65__TRIAssetStore_saveAssetWithIdentifier_assetURL_metadata_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v59 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) hasAssetWithIdentifier:*(a1 + 40) type:0])
  {
    v4 = TRILogCategory_Server();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26F567000, v4, OS_LOG_TYPE_DEFAULT, "Warning: treating asset save as a no-op because asset is already present.", buf, 2u);
    }

    *(*(*(a1 + 64) + 8) + 32) = 1;
    goto LABEL_51;
  }

  v5 = [*(a1 + 48) namespaceNameForEncryptionKey];

  if (!v5)
  {
    v12 = [*(a1 + 56) path];
    if (v12)
    {
      v13 = v12;
      v7 = 0;
      goto LABEL_14;
    }

    v47 = [MEMORY[0x277CCA890] currentHandler];
    [v47 handleFailureInMethod:*(a1 + 80) object:*(a1 + 32) file:@"TRIAssetStore.m" lineNumber:280 description:{@"Expression was unexpectedly nil/false: %@", @"assetURL.path"}];

    v7 = 0;
LABEL_53:
    v48 = [MEMORY[0x277CCA890] currentHandler];
    [v48 handleFailureInMethod:*(a1 + 80) object:*(a1 + 32) file:@"TRIAssetStore.m" lineNumber:282 description:{@"Invalid parameter not satisfying: %@", @"assetFilename"}];

    v13 = 0;
LABEL_14:
    v14 = os_transaction_create();
    v15 = [*(a1 + 48) type];
    if (v15 == 1)
    {
      v18 = *(a1 + 32);
      v19 = *(a1 + 40);
      v20 = *(a1 + 48);
      v21 = *(*(a1 + 72) + 8);
      obj = *(v21 + 40);
      v16 = [v18 _saveDirectoryAssetWithIdentifier:v19 assetFilename:v13 metadata:v20 flockWitness:a2 error:&obj];
      objc_storeStrong((v21 + 40), obj);
    }

    else
    {
      if (v15)
      {
LABEL_25:
        if (v7)
        {
          [*(a1 + 32) _forceRemoveItemAtPath:v7];
        }

        goto LABEL_51;
      }

      v16 = [*(a1 + 32) _saveFileAssetWithIdentifier:*(a1 + 40) assetFilename:v13 flockWitness:a2];
    }

    *(*(*(a1 + 64) + 8) + 32) = v16;
    goto LABEL_25;
  }

  v6 = [*(a1 + 32) _createTempDir];
  if (v6)
  {
    v7 = v6;
    v8 = [*(a1 + 56) lastPathComponent];
    if (!v8)
    {
      v10 = TRILogCategory_Server();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v43 = *(a1 + 40);
        *buf = 138543362;
        v56 = v43;
        _os_log_error_impl(&dword_26F567000, v10, OS_LOG_TYPE_ERROR, "assetURL for encrypted asset %{public}@ has nil lastPathComponent", buf, 0xCu);
      }

      v11 = 0;
      goto LABEL_49;
    }

    v9 = *(a1 + 32);
    if (v9[4])
    {
      if (xpc_activity_should_defer(v9[4]))
      {
        v10 = TRILogCategory_Server();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v11 = 2;
          _os_log_impl(&dword_26F567000, v10, OS_LOG_TYPE_DEFAULT, "Deferral requested before start of asset decryption.", buf, 2u);
        }

        else
        {
          v11 = 2;
        }

LABEL_49:

        *(*(*(a1 + 64) + 8) + 32) = v11;
        goto LABEL_50;
      }

      v9 = *(a1 + 32);
    }

    v22 = [(xpc_activity_t *)v9 _requireAssetStoreTempDir];
    v23 = objc_alloc(MEMORY[0x277CCACA8]);
    v24 = objc_opt_new();
    v25 = [v24 UUIDString];
    v26 = [v23 initWithFormat:@"encrypted-asset-%@", v25];
    v27 = [v22 stringByAppendingPathComponent:v26];

    v28 = [MEMORY[0x277CCAA00] defaultManager];
    v29 = [*(a1 + 56) path];
    if (!v29)
    {
      v49 = [MEMORY[0x277CCA890] currentHandler];
      [v49 handleFailureInMethod:*(a1 + 80) object:*(a1 + 32) file:@"TRIAssetStore.m" lineNumber:251 description:{@"Expression was unexpectedly nil/false: %@", @"assetURL.path"}];
    }

    v30 = *(*(a1 + 72) + 8);
    v54 = *(v30 + 40);
    v31 = [v28 copyItemAtPath:v29 toPath:v27 error:&v54];
    objc_storeStrong((v30 + 40), v54);

    if (v31)
    {
      v32 = [v8 stringByAppendingPathExtension:@"decrypted"];
      if (!v32)
      {
        v50 = [MEMORY[0x277CCA890] currentHandler];
        [v50 handleFailureInMethod:*(a1 + 80) object:*(a1 + 32) file:@"TRIAssetStore.m" lineNumber:261 description:{@"Expression was unexpectedly nil/false: %@", @"[assetFileName stringByAppendingPathExtension:@decrypted]"}];
      }

      v13 = [v7 stringByAppendingPathComponent:v32];

      v33 = [MEMORY[0x277CBEBC0] fileURLWithPath:v27];
      v34 = [*(a1 + 48) namespaceNameForEncryptionKey];
      v35 = *(*(a1 + 72) + 8);
      v53 = *(v35 + 40);
      v36 = [TRIRemoteAssetDecrypter decryptAssetWithURL:v33 destinationFilename:v13 namespaceName:v34 error:&v53];
      objc_storeStrong((v35 + 40), v53);

      v37 = [MEMORY[0x277CCAA00] defaultManager];
      v52 = 0;
      LOBYTE(v35) = [v37 removeItemAtPath:v27 error:&v52];
      v38 = v52;

      if ((v35 & 1) == 0)
      {
        v39 = TRILogCategory_Server();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v56 = v38;
          _os_log_error_impl(&dword_26F567000, v39, OS_LOG_TYPE_ERROR, "Failed to remove copy of encrypted asset: %{public}@", buf, 0xCu);
        }
      }

      if (v36)
      {

        if (v13)
        {
          goto LABEL_14;
        }

        goto LABEL_53;
      }

      v41 = TRILogCategory_Server();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        v45 = *(a1 + 40);
        v46 = [*(a1 + 48) namespaceNameForEncryptionKey];
        *buf = 138543618;
        v56 = v45;
        v57 = 2114;
        v58 = v46;
        _os_log_error_impl(&dword_26F567000, v41, OS_LOG_TYPE_ERROR, "Unable to decrypt asset with identifier: %{public}@, namespace name: %{public}@", buf, 0x16u);
      }

      *(*(*(a1 + 64) + 8) + 32) = 0;
    }

    else
    {
      v40 = TRILogCategory_Server();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        v44 = *(*(*(a1 + 72) + 8) + 40);
        *buf = 138543362;
        v56 = v44;
        _os_log_error_impl(&dword_26F567000, v40, OS_LOG_TYPE_ERROR, "Failed to relocate encrypted asset file: %{public}@", buf, 0xCu);
      }

      *(*(*(a1 + 64) + 8) + 32) = 0;
    }

LABEL_50:
    goto LABEL_51;
  }

  v17 = TRILogCategory_Server();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_26F567000, v17, OS_LOG_TYPE_ERROR, "Unable to create temp directory", buf, 2u);
  }

  *(*(*(a1 + 64) + 8) + 32) = 0;
LABEL_51:
  v42 = *MEMORY[0x277D85DE8];
}

- (BOOL)saveAssetWithIdentifier:(id)a3 builtFromAssetWithIdentifier:(id)a4 patchFilename:(id)a5 metadata:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __99__TRIAssetStore_saveAssetWithIdentifier_builtFromAssetWithIdentifier_patchFilename_metadata_error___block_invoke;
  v21[3] = &unk_279DE2398;
  v21[4] = self;
  v16 = v12;
  v22 = v16;
  v26 = &v28;
  v17 = v13;
  v23 = v17;
  v18 = v14;
  v24 = v18;
  v19 = v15;
  v25 = v19;
  v27 = a7;
  [(TRIAssetStore *)self _acquireLockfileAndRunBlock:v21];
  LOBYTE(self) = *(v29 + 24);

  _Block_object_dispose(&v28, 8);
  return self;
}

void __99__TRIAssetStore_saveAssetWithIdentifier_builtFromAssetWithIdentifier_patchFilename_metadata_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v49 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) hasAssetWithIdentifier:*(a1 + 40) type:0])
  {
    v4 = TRILogCategory_Server();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26F567000, v4, OS_LOG_TYPE_DEFAULT, "Warning: treating asset save as a no-op because asset is already present.", buf, 2u);
    }

    *(*(*(a1 + 72) + 8) + 24) = 1;
    goto LABEL_30;
  }

  v42 = 0;
  if ([*(a1 + 32) hasAssetWithIdentifier:*(a1 + 48) type:&v42])
  {
    v5 = v42 == 1;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v38 = os_transaction_create();
    v37 = [*(a1 + 32) pathForAssetContentWithIdentifier:*(a1 + 48)];
    v7 = [*(a1 + 32) _requireAssetStoreTempDir];
    v8 = objc_alloc(MEMORY[0x277CCACA8]);
    v9 = objc_opt_new();
    v10 = [v9 UUIDString];
    v11 = [v8 initWithFormat:@"partial-asset-%@", v10];
    v12 = [v7 stringByAppendingPathComponent:v11];

    v13 = [v12 stringByAppendingPathComponent:@"content"];
    v14 = [MEMORY[0x277CCAA00] defaultManager];
    v41 = 0;
    LOBYTE(v11) = [v14 createDirectoryAtPath:v13 withIntermediateDirectories:1 attributes:0 error:&v41];
    v15 = v41;

    if (v11)
    {

      v16 = [*(a1 + 32) _requireAssetStoreTempDir];
      v17 = objc_alloc(MEMORY[0x277CCACA8]);
      v18 = objc_opt_new();
      v19 = [v18 UUIDString];
      v20 = [v17 initWithFormat:@"patch-%@", v19];
      v15 = [v16 stringByAppendingPathComponent:v20];

      v21 = [MEMORY[0x277CCAA00] defaultManager];
      v22 = *(a1 + 56);
      v40 = 0;
      LOBYTE(v18) = [v21 copyItemAtPath:v22 toPath:v15 error:&v40];
      v23 = v40;

      if (v18)
      {

        obj = 0;
        v24 = v37;
        v25 = [*(*(a1 + 32) + 24) applyPatchWithFilename:v15 toSrcDir:v37 writingToEmptyDestDir:v13 postPatchCompression:objc_msgSend(*(a1 + 64) error:{"compressionMode"), &obj}];
        v26 = [MEMORY[0x277CCAA00] defaultManager];
        [v26 removeItemAtPath:v15 error:0];

        if (v25 == 1)
        {

          *(*(*(a1 + 72) + 8) + 24) = [*(*(a1 + 32) + 56) saveAssetWithIdentifier:*(a1 + 40) sourcePath:v12 flockWitness:a2 removeSourceOnFailure:1];
        }

        else
        {
          if (!v25)
          {
            v27 = TRILogCategory_Server();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              v35 = *(a1 + 40);
              v36 = *(a1 + 48);
              *buf = 138543874;
              v44 = v35;
              v45 = 2114;
              v46 = v36;
              v47 = 2114;
              v48 = obj;
              _os_log_error_impl(&dword_26F567000, v27, OS_LOG_TYPE_ERROR, "Failed to construct asset %{public}@ by patching asset %{public}@: %{public}@", buf, 0x20u);
            }
          }

          v28 = [MEMORY[0x277CCAA00] defaultManager];
          [v28 removeItemAtPath:v12 error:0];

          v29 = *(a1 + 80);
          if (v29)
          {
            objc_storeStrong(v29, obj);
          }

          *(*(*(a1 + 72) + 8) + 24) = 0;
        }

        goto LABEL_29;
      }

      v31 = TRILogCategory_Server();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v44 = v23;
        _os_log_error_impl(&dword_26F567000, v31, OS_LOG_TYPE_ERROR, "Failed to relocate patch file: %{public}@", buf, 0xCu);
      }

      *(*(*(a1 + 72) + 8) + 24) = 0;
    }

    else
    {
      v30 = TRILogCategory_Server();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v44 = v15;
        _os_log_error_impl(&dword_26F567000, v30, OS_LOG_TYPE_ERROR, "Failed to create dest asset directory: %{public}@", buf, 0xCu);
      }

      *(*(*(a1 + 72) + 8) + 24) = 0;
    }

    v24 = v37;
LABEL_29:

    goto LABEL_30;
  }

  v6 = TRILogCategory_Server();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v33 = *(a1 + 40);
    v34 = *(a1 + 48);
    *buf = 138543618;
    v44 = v33;
    v45 = 2114;
    v46 = v34;
    _os_log_error_impl(&dword_26F567000, v6, OS_LOG_TYPE_ERROR, "Can't create asset %{public}@ from patch because source asset %{public}@ is not present.", buf, 0x16u);
  }

  *(*(*(a1 + 72) + 8) + 24) = 0;
LABEL_30:
  v32 = *MEMORY[0x277D85DE8];
}

- (BOOL)_saveFileAssetWithIdentifier:(id)a3 assetFilename:(id)a4 flockWitness:(TRIFlockWitness_ *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(TRIAssetStore *)self _createTempDir];
  if (!v10)
  {
    goto LABEL_5;
  }

  if (![(TRIAssetStore *)self _saveFileAssetWithIdentifier:v8 assetFilename:v9 workingTempDirectory:v10 flockWitness:a5])
  {
    [(TRIAssetStore *)self _forceRemoveItemAtPath:v10];
LABEL_5:
    v11 = 0;
    goto LABEL_6;
  }

  v11 = 1;
LABEL_6:

  return v11;
}

- (BOOL)_saveFileAssetWithIdentifier:(id)a3 assetFilename:(id)a4 workingTempDirectory:(id)a5 flockWitness:(TRIFlockWitness_ *)a6
{
  v36 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  v12 = a4;
  v13 = [v11 stringByAppendingPathComponent:@"content"];
  v14 = [MEMORY[0x277CCAA00] defaultManager];
  v29 = 0;
  v15 = [v14 triSafeCopyItemAtPath:v12 toPath:v13 error:&v29];

  v16 = v29;
  if ((v15 & 1) == 0)
  {
    v18 = TRILogCategory_Server();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v31 = v13;
      v32 = 2114;
      v33 = v16;
      _os_log_error_impl(&dword_26F567000, v18, OS_LOG_TYPE_ERROR, "Failed to copy asset file to temporary file %{public}@: %{public}@", buf, 0x16u);
    }

    goto LABEL_8;
  }

  if (chmod([v13 fileSystemRepresentation], 0x180u))
  {
    v17 = TRILogCategory_Server();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_4;
    }

    v26 = __error();
    v27 = strerror(*v26);
    v28 = *__error();
    *buf = 138543874;
    v31 = v13;
    v32 = 2080;
    v33 = v27;
    v34 = 1024;
    v35 = v28;
    v25 = "Failed to set permissions on file-asset file %{public}@: %s (%d)";
LABEL_16:
    _os_log_error_impl(&dword_26F567000, v17, OS_LOG_TYPE_ERROR, v25, buf, 0x1Cu);
    goto LABEL_4;
  }

  if (![MEMORY[0x277CCAA00] triRemoveFileProtectionIfPresentForPath:v13])
  {
    goto LABEL_8;
  }

  if (!chmod([v13 fileSystemRepresentation], 0x124u))
  {
    v19 = [(TRIAssetStoreOperations *)self->_assetOperator saveAssetWithIdentifier:v10 sourcePath:v11 flockWitness:a6 removeSourceOnFailure:1];
    goto LABEL_9;
  }

  v17 = TRILogCategory_Server();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v22 = __error();
    v23 = strerror(*v22);
    v24 = *__error();
    *buf = 138543874;
    v31 = v13;
    v32 = 2080;
    v33 = v23;
    v34 = 1024;
    v35 = v24;
    v25 = "Failed to set file permissions on temporary file %{public}@: %s (%d)";
    goto LABEL_16;
  }

LABEL_4:

LABEL_8:
  v19 = 0;
LABEL_9:

  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

- ($A5A652246548B43F8BC05201A1C72A70)_saveDirectoryAssetWithIdentifier:(id)a3 assetFilename:(id)a4 metadata:(id)a5 flockWitness:(TRIFlockWitness_ *)a6 error:(id *)a7
{
  v36 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = [(TRIAssetStore *)self _createTempDir];
  v16 = v15;
  if (v15)
  {
    v17 = [v15 stringByAppendingPathComponent:@"content"];
    if (mkdir([v17 fileSystemRepresentation], 0x1F8u))
    {
      v18 = TRILogCategory_Server();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v26 = __error();
        v27 = strerror(*v26);
        v28 = *__error();
        *buf = 138543874;
        v31 = v17;
        v32 = 2080;
        v33 = v27;
        v34 = 1024;
        v35 = v28;
        _os_log_error_impl(&dword_26F567000, v18, OS_LOG_TYPE_ERROR, "Failed to create directory for dir-asset toplevel %{public}@: %s (%d)", buf, 0x1Cu);
      }
    }

    else if ([MEMORY[0x277CCAA00] triRemoveFileProtectionIfPresentForPath:v17])
    {
      extractor = self->_extractor;
      v29 = 0;
      v19.var0 = -[TRIAssetExtracting extractArchiveFromFile:withArchiveName:toEmptyDirectory:postExtractionCompression:error:](extractor, "extractArchiveFromFile:withArchiveName:toEmptyDirectory:postExtractionCompression:error:", v13, v12, v17, [v14 compressionMode], &v29);
      v21 = v29;
      v22 = v21;
      if (v19.var0 == 1)
      {
        v19.var0 = [(TRIAssetStoreOperations *)self->_assetOperator saveAssetWithIdentifier:v12 sourcePath:v16 flockWitness:a6 removeSourceOnFailure:1];
LABEL_12:

        goto LABEL_13;
      }

      if (a7)
      {
        v25 = v21;
        *a7 = v22;
      }

LABEL_11:
      [(TRIAssetStore *)self _forceRemoveItemAtPath:v16];
      goto LABEL_12;
    }

    v19.var0 = 0;
    v22 = 0;
    goto LABEL_11;
  }

  v19.var0 = 0;
LABEL_13:

  v23 = *MEMORY[0x277D85DE8];
  return v19;
}

- (BOOL)linkAssetWithIdentifier:(id)a3 toCurrentPath:(id)a4 futurePath:(id)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_18:
    v20 = [MEMORY[0x277CCA890] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"TRIAssetStore.m" lineNumber:541 description:{@"Invalid parameter not satisfying: %@", @"currentPath"}];

    if (v11)
    {
      goto LABEL_4;
    }

    goto LABEL_19;
  }

  v19 = [MEMORY[0x277CCA890] currentHandler];
  [v19 handleFailureInMethod:a2 object:self file:@"TRIAssetStore.m" lineNumber:540 description:{@"Invalid parameter not satisfying: %@", @"assetIdentifier"}];

  if (!v10)
  {
    goto LABEL_18;
  }

LABEL_3:
  if (v11)
  {
    goto LABEL_4;
  }

LABEL_19:
  v21 = [MEMORY[0x277CCA890] currentHandler];
  [v21 handleFailureInMethod:a2 object:self file:@"TRIAssetStore.m" lineNumber:542 description:{@"Invalid parameter not satisfying: %@", @"futurePath"}];

LABEL_4:
  if (![v10 length])
  {
    v16 = TRILogCategory_Server();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *&buf[4] = "[TRIAssetStore linkAssetWithIdentifier:toCurrentPath:futurePath:]";
      _os_log_error_impl(&dword_26F567000, v16, OS_LOG_TYPE_ERROR, "%s has empty path arg: currentPath", buf, 0xCu);
    }

    goto LABEL_15;
  }

  v12 = [v11 length];
  v13 = TRILogCategory_Server();
  v14 = v13;
  if (!v12)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *&buf[4] = "[TRIAssetStore linkAssetWithIdentifier:toCurrentPath:futurePath:]";
      _os_log_error_impl(&dword_26F567000, v14, OS_LOG_TYPE_ERROR, "%s has empty path arg: futurePath", buf, 0xCu);
    }

LABEL_15:
    v15 = 0;
    goto LABEL_16;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    *&buf[4] = v9;
    *&buf[12] = 2114;
    *&buf[14] = v11;
    _os_log_impl(&dword_26F567000, v14, OS_LOG_TYPE_DEFAULT, "Link asset: %{public}@ --> %{public}@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v28 = 0;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __66__TRIAssetStore_linkAssetWithIdentifier_toCurrentPath_futurePath___block_invoke;
  v22[3] = &unk_279DE23C0;
  v22[4] = self;
  v23 = v9;
  v24 = v11;
  v26 = buf;
  v25 = v10;
  [(TRIAssetStore *)self _acquireLockfileAndRunBlock:v22];
  v15 = *(*&buf[8] + 24);

  _Block_object_dispose(buf, 8);
LABEL_16:

  v17 = *MEMORY[0x277D85DE8];
  return v15 & 1;
}

void __66__TRIAssetStore_linkAssetWithIdentifier_toCurrentPath_futurePath___block_invoke(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = os_transaction_create();
  v15 = 0;
  if ([*(a1 + 32) hasAssetWithIdentifier:*(a1 + 40) type:&v15])
  {
    if (v15 == 1)
    {
      v5 = [*(a1 + 32) _linkDirectoryAssetWithIdentifier:*(a1 + 40) toCurrentPath:*(a1 + 56) futurePath:*(a1 + 48) flockWitness:a2];
    }

    else
    {
      if (v15)
      {
        goto LABEL_10;
      }

      v5 = [*(a1 + 32) _linkFileAssetWithIdentifier:*(a1 + 40) toCurrentPath:*(a1 + 56) futurePath:*(a1 + 48) flockWitness:a2];
    }

    *(*(*(a1 + 64) + 8) + 24) = v5;
LABEL_10:
    if (*(*(*(a1 + 64) + 8) + 24) == 1)
    {
      [*(a1 + 32) _clearUnrefAgeForAssetWithIdentifier:*(a1 + 40)];
    }

    else
    {
      v7 = TRILogCategory_Server();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        if (v15 == 1)
        {
          v11 = @"directory";
        }

        else
        {
          v11 = @"file";
        }

        v13 = *(a1 + 48);
        v12 = *(a1 + 56);
        v14 = *(a1 + 40);
        *buf = 138544130;
        v17 = v11;
        v18 = 2114;
        v19 = v14;
        v20 = 2114;
        v21 = v12;
        v22 = 2114;
        v23 = v13;
        _os_log_error_impl(&dword_26F567000, v7, OS_LOG_TYPE_ERROR, "Asset store failed to link %{public}@ with identifier: %{public}@ from %{public}@ to %{public}@", buf, 0x2Au);
      }
    }

    goto LABEL_14;
  }

  v6 = TRILogCategory_Server();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    *buf = 138543618;
    v17 = v9;
    v18 = 2114;
    v19 = v10;
    _os_log_error_impl(&dword_26F567000, v6, OS_LOG_TYPE_ERROR, "Asset store has no asset with identifier: %{public}@. Tried to link to %{public}@", buf, 0x16u);
  }

  *(*(*(a1 + 64) + 8) + 24) = 0;
LABEL_14:

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)_linkFileAssetWithIdentifier:(id)a3 toCurrentPath:(id)a4 futurePath:(id)a5 flockWitness:(TRIFlockWitness_ *)a6
{
  v33 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [(TRIAssetStore *)self _requireAssetStoreTempDir];
  v14 = [(TRIAssetStore *)self pathForAssetContentWithIdentifier:v10];
  v15 = objc_opt_new();
  v16 = [v15 UUIDString];
  v17 = [v13 stringByAppendingPathComponent:v16];

  if (link([v14 fileSystemRepresentation], objc_msgSend(v17, "fileSystemRepresentation")))
  {
    v18 = TRILogCategory_Server();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v22 = __error();
      v23 = strerror(*v22);
      v24 = *__error();
      v25 = 138544130;
      v26 = v14;
      v27 = 2114;
      v28 = v17;
      v29 = 2080;
      v30 = v23;
      v31 = 1024;
      v32 = v24;
      _os_log_error_impl(&dword_26F567000, v18, OS_LOG_TYPE_ERROR, "Failed to link file asset %{public}@ --> %{public}@: %s (%d)", &v25, 0x26u);
    }

    goto LABEL_9;
  }

  if (![(TRIAssetStoreOperations *)self->_assetOperator addSymlinkFromAssetWithIdentifier:v10 toPath:v12 flockWitness:a6]|| ![(TRIAssetStore *)self _overwriteRenameAsAtomicallyAsPossibleWithSrc:v17 dest:v11])
  {
    unlink([v17 fileSystemRepresentation]);
LABEL_9:
    v19 = 0;
    goto LABEL_10;
  }

  v19 = 1;
LABEL_10:

  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

- (BOOL)_linkDirectoryAssetWithIdentifier:(id)a3 toCurrentPath:(id)a4 futurePath:(id)a5 flockWitness:(TRIFlockWitness_ *)a6
{
  v109 = *MEMORY[0x277D85DE8];
  v78 = a3;
  v73 = a4;
  v74 = a5;
  v79 = self;
  v77 = [(TRIAssetStore *)self _requireAssetStoreTempDir];
  v75 = [(TRIAssetStore *)self pathForAssetContentWithIdentifier:v78];
  v90 = 0;
  v91 = &v90;
  v92 = 0x3032000000;
  v93 = __Block_byref_object_copy__27;
  v94 = __Block_byref_object_dispose__27;
  v10 = objc_opt_new();
  v11 = [v10 UUIDString];
  v95 = [v77 stringByAppendingPathComponent:v11];

  v89[0] = MEMORY[0x277D85DD0];
  v89[1] = 3221225472;
  v89[2] = __89__TRIAssetStore__linkDirectoryAssetWithIdentifier_toCurrentPath_futurePath_flockWitness___block_invoke;
  v89[3] = &unk_279DE23E8;
  v89[4] = self;
  v89[5] = &v90;
  v12 = MEMORY[0x2743948D0](v89);
  context = objc_autoreleasePoolPush();
  v13 = [MEMORY[0x277CCAA00] defaultManager];
  v14 = v91[5];
  v88 = 0;
  LOBYTE(v10) = [v13 createDirectoryAtPath:v14 withIntermediateDirectories:1 attributes:0 error:&v88];
  v81 = v88;
  v76 = v13;
  if ((v10 & 1) == 0)
  {
    v53 = TRILogCategory_Server();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      v61 = v91[5];
      *v105 = 138543618;
      *&v105[4] = v61;
      *&v105[12] = 2114;
      *&v105[14] = v81;
      _os_log_error_impl(&dword_26F567000, v53, OS_LOG_TYPE_ERROR, "Failed to create directory %{public}@ for dir-asset: %{public}@", v105, 0x16u);
    }

    v54 = 0;
    v6 = 0;
    goto LABEL_61;
  }

  *v105 = 0;
  *&v105[8] = v105;
  *&v105[16] = 0x3032000000;
  v106 = __Block_byref_object_copy__27;
  v107 = __Block_byref_object_dispose__27;
  v108 = 0;
  v71 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:v75 isDirectory:1];
  v15 = [MEMORY[0x277CCAA00] defaultManager];
  v16 = *MEMORY[0x277CBE8A8];
  v80 = *MEMORY[0x277CBE868];
  v104[0] = *MEMORY[0x277CBE868];
  v104[1] = v16;
  v70 = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v104 count:2];
  v87[0] = MEMORY[0x277D85DD0];
  v87[1] = 3221225472;
  v87[2] = __89__TRIAssetStore__linkDirectoryAssetWithIdentifier_toCurrentPath_futurePath_flockWitness___block_invoke_389;
  v87[3] = &unk_279DE2410;
  v87[4] = v105;
  v18 = [v15 enumeratorAtURL:v71 includingPropertiesForKeys:v17 options:24 errorHandler:v87];

  if (!v18)
  {
    v57 = TRILogCategory_Server();
    if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v97 = v75;
      _os_log_error_impl(&dword_26F567000, v57, OS_LOG_TYPE_ERROR, "Failed to enumerate dir-asset for linking: %{public}@", buf, 0xCu);
    }

    v56 = v12[2](v12);
LABEL_58:
    v6 = v56;
    goto LABEL_59;
  }

  do
  {
    v19 = objc_autoreleasePoolPush();
    v20 = [v18 nextObject];
    if (v20)
    {
      if ([v18 isEnumeratingDirectoryPostOrder])
      {
        v21 = v91[5];
        v22 = [v20 relativePath];
        if (!v22)
        {
          v50 = [MEMORY[0x277CCA890] currentHandler];
          [v50 handleFailureInMethod:a2 object:v79 file:@"TRIAssetStore.m" lineNumber:670 description:{@"Expression was unexpectedly nil/false: %@", @"childURL.relativePath"}];
        }

        v23 = [v21 stringByAppendingPathComponent:v22];

        v24 = v23;
        if (chmod([v23 fileSystemRepresentation], 0x16Du))
        {
          v25 = TRILogCategory_Server();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            v44 = __error();
            v45 = strerror(*v44);
            v46 = *__error();
            *buf = 138543874;
            v97 = v23;
            v98 = 2080;
            v99 = v45;
            v100 = 1024;
            LODWORD(v101) = v46;
            _os_log_error_impl(&dword_26F567000, v25, OS_LOG_TYPE_ERROR, "Failed to set permissions on %{public}@: %s (%d)", buf, 0x1Cu);
          }

          v6 = v12[2](v12);
          v26 = 1;
        }

        else
        {
          v26 = 2;
        }

        goto LABEL_43;
      }

      v85 = 0;
      v86 = 0;
      v27 = [v20 getResourceValue:&v86 forKey:v80 error:&v85];
      v23 = v86;
      v28 = v85;
      if (v27)
      {
        if ([v23 BOOLValue])
        {
          v29 = v91[5];
          v30 = [v20 relativePath];
          if (!v30)
          {
            v51 = [MEMORY[0x277CCA890] currentHandler];
            [v51 handleFailureInMethod:a2 object:v79 file:@"TRIAssetStore.m" lineNumber:695 description:{@"Expression was unexpectedly nil/false: %@", @"childURL.relativePath"}];
          }

          v31 = [v29 stringByAppendingPathComponent:v30];

          v84 = v81;
          v32 = [v76 createDirectoryAtPath:v31 withIntermediateDirectories:1 attributes:0 error:&v84];
          v33 = v84;

          if (v32)
          {
            v26 = 2;
          }

          else
          {
            v43 = TRILogCategory_Server();
            if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543618;
              v97 = v31;
              v98 = 2114;
              v99 = v33;
              _os_log_error_impl(&dword_26F567000, v43, OS_LOG_TYPE_ERROR, "Failed to create subdirectory %{public}@ for dir-asset: %{public}@", buf, 0x16u);
            }

            v6 = v12[2](v12);
            v26 = 1;
          }

LABEL_41:

          v81 = v33;
          goto LABEL_42;
        }

        v82 = 0;
        v83 = 0;
        v35 = [v20 getResourceValue:&v83 forKey:v70 error:&v82];
        v23 = v83;
        v28 = v82;
        if (v35)
        {
          if ([v23 BOOLValue])
          {
            v31 = [v20 path];
            if (!v31)
            {
              v52 = [MEMORY[0x277CCA890] currentHandler];
              [v52 handleFailureInMethod:a2 object:v79 file:@"TRIAssetStore.m" lineNumber:722 description:{@"Expression was unexpectedly nil/false: %@", @"childURL.path"}];
            }

            v36 = v91[5];
            v37 = [v20 relativePath];
            if (!v37)
            {
              v67 = [MEMORY[0x277CCA890] currentHandler];
              [v67 handleFailureInMethod:a2 object:v79 file:@"TRIAssetStore.m" lineNumber:724 description:{@"Expression was unexpectedly nil/false: %@", @"childURL.relativePath"}];
            }

            v38 = [v36 stringByAppendingPathComponent:v37];

            v39 = v31;
            v40 = [v31 fileSystemRepresentation];
            v41 = v38;
            if (link(v40, [v38 fileSystemRepresentation]))
            {
              v42 = TRILogCategory_Server();
              if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
              {
                v47 = __error();
                v48 = strerror(*v47);
                v49 = *__error();
                *buf = 138544130;
                v97 = v31;
                v98 = 2114;
                v99 = v38;
                v100 = 2080;
                v101 = v48;
                v102 = 1024;
                v103 = v49;
                _os_log_error_impl(&dword_26F567000, v42, OS_LOG_TYPE_ERROR, "Failed to link %{public}@ --> %{public}@ for dir-asset: %s (%d)", buf, 0x26u);
              }

              v6 = v12[2](v12);
              v26 = 1;
            }

            else
            {
              v26 = 2;
            }

            v33 = v81;
            goto LABEL_41;
          }

          v26 = 0;
LABEL_42:

LABEL_43:
          goto LABEL_44;
        }

        v34 = TRILogCategory_Server();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v97 = v28;
          _os_log_error_impl(&dword_26F567000, v34, OS_LOG_TYPE_ERROR, "Failed to determine regular file status: %{public}@", buf, 0xCu);
        }
      }

      else
      {
        v34 = TRILogCategory_Server();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v97 = v28;
          _os_log_error_impl(&dword_26F567000, v34, OS_LOG_TYPE_ERROR, "Failed to determine directory status: %{public}@", buf, 0xCu);
        }
      }

      v6 = v12[2](v12);
      v26 = 1;
      goto LABEL_42;
    }

    v26 = 3;
LABEL_44:

    objc_autoreleasePoolPop(v19);
  }

  while (!v26 || v26 == 2);
  if (v26 != 3)
  {
LABEL_59:
    v54 = 0;
    goto LABEL_60;
  }

  if (*(*&v105[8] + 40))
  {
    v55 = TRILogCategory_Server();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      v66 = *(*&v105[8] + 40);
      *buf = 138543362;
      v97 = v66;
      _os_log_error_impl(&dword_26F567000, v55, OS_LOG_TYPE_ERROR, "Failed to enumerate directory during asset linking: %{public}@", buf, 0xCu);
    }

    v56 = v12[2](v12);
    goto LABEL_58;
  }

  v54 = 1;
LABEL_60:

  _Block_object_dispose(v105, 8);
LABEL_61:

  objc_autoreleasePoolPop(context);
  if (v54)
  {
    if (chmod([v91[5] fileSystemRepresentation], 0x16Du))
    {
      v58 = TRILogCategory_Server();
      if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
      {
        v62 = v91[5];
        v63 = __error();
        v64 = strerror(*v63);
        v65 = *__error();
        *v105 = 138543874;
        *&v105[4] = v62;
        *&v105[12] = 2080;
        *&v105[14] = v64;
        *&v105[22] = 1024;
        LODWORD(v106) = v65;
        _os_log_error_impl(&dword_26F567000, v58, OS_LOG_TYPE_ERROR, "Failed to set permissions on %{public}@: %s (%d)", v105, 0x1Cu);
      }

LABEL_69:
      v6 = v12[2](v12);
    }

    else
    {
      if (![(TRIAssetStoreOperations *)v79->_assetOperator addSymlinkFromAssetWithIdentifier:v78 toPath:v74 flockWitness:a6]|| ![(TRIAssetStore *)v79 _overwriteRenameAsAtomicallyAsPossibleWithSrc:v91[5] dest:v73])
      {
        goto LABEL_69;
      }

      v6 = 1;
    }
  }

  _Block_object_dispose(&v90, 8);
  v59 = *MEMORY[0x277D85DE8];
  return v6 & 1;
}

- (BOOL)isValidTargetForSymlink:(id)a3 assetIdentifier:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v15 = 0;
  v7 = [(TRIAssetStore *)self pathForAssetContentWithIdentifier:a4];
  v8 = [MEMORY[0x277CCAA00] defaultManager];
  v9 = [v8 fileExistsAtPath:v7 isDirectory:&v15];

  if ((v9 & 1) == 0)
  {
    v10 = TRILogCategory_Server();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v17 = v7;
      _os_log_error_impl(&dword_26F567000, v10, OS_LOG_TYPE_ERROR, "Missing content %{public}@ while checking symlink", buf, 0xCu);
    }

    goto LABEL_7;
  }

  v10 = [MEMORY[0x277CCAA00] triTargetPathForSymlink:v6];
  if (!v10)
  {
LABEL_7:
    v12 = 0;
    goto LABEL_10;
  }

  if (v15 == 1)
  {
    v11 = [(TRIAssetStore *)self _isDirectoryAtPath:v10 matchingAssetContentAtPath:v7];
  }

  else
  {
    v11 = [(TRIAssetStore *)self _isFileAtPath:v10 matchingAssetContentAtPath:v7];
  }

  v12 = v11;
LABEL_10:

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

- (BOOL)_isFileAtPath:(id)a3 matchingAssetContentAtPath:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  memset(&v15, 0, sizeof(v15));
  if (stat([v6 fileSystemRepresentation], &v15))
  {
    v7 = TRILogCategory_Server();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v12 = __error();
      v13 = strerror(*v12);
      v14 = *__error();
      v16.st_dev = 138543874;
      *&v16.st_mode = v6;
      WORD2(v16.st_ino) = 2080;
      *(&v16.st_ino + 6) = v13;
      HIWORD(v16.st_gid) = 1024;
      v16.st_rdev = v14;
      _os_log_error_impl(&dword_26F567000, v7, OS_LOG_TYPE_ERROR, "Unexpected failure to stat() asset content %{public}@: %s (%d)", &v16, 0x1Cu);
    }

    v8 = 0;
  }

  else
  {
    memset(&v16, 0, sizeof(v16));
    if (stat([v5 fileSystemRepresentation], &v16))
    {
      v9 = 0;
    }

    else
    {
      v9 = v15.st_ino == v16.st_ino;
    }

    v8 = v9;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v8;
}

- (BOOL)_isDirectoryAtPath:(id)a3 matchingAssetContentAtPath:(id)a4
{
  v5 = a3;
  v6 = a4;
  v31 = 0;
  v7 = [MEMORY[0x277CCAA00] defaultManager];
  v30 = v5;
  LODWORD(v5) = [v7 fileExistsAtPath:v5 isDirectory:&v31];
  v8 = v31;

  v9 = 0;
  if (v5 && (v8 & 1) != 0)
  {
    v29 = [MEMORY[0x277CCAA00] defaultManager];
    v10 = [v29 enumeratorAtPath:v6];
    v11 = objc_autoreleasePoolPush();
    v12 = [v10 nextObject];
    if (v12)
    {
      v13 = v12;
      v28 = v6;
      v14 = *MEMORY[0x277CCA1E0];
      v15 = *MEMORY[0x277CCA1F0];
      while (1)
      {
        v16 = [v30 stringByAppendingPathComponent:{v13, v28}];
        v17 = [v29 attributesOfItemAtPath:v16 error:0];
        if (!v17)
        {
          goto LABEL_11;
        }

        v18 = [v10 fileAttributes];
        v19 = [v18 objectForKeyedSubscript:v14];
        v20 = [v17 objectForKeyedSubscript:v14];

        if (v19 != v20)
        {
LABEL_11:
          v9 = 0;
          goto LABEL_13;
        }

        v21 = [v10 fileAttributes];
        v22 = [v21 objectForKeyedSubscript:v14];

        if (v22 == v15)
        {
          break;
        }

        objc_autoreleasePoolPop(v11);
        v11 = objc_autoreleasePoolPush();
        v13 = [v10 nextObject];
        if (!v13)
        {
          v9 = 1;
          goto LABEL_14;
        }
      }

      v23 = [v10 fileAttributes];
      v24 = *MEMORY[0x277CCA1C8];
      v25 = [v23 objectForKeyedSubscript:*MEMORY[0x277CCA1C8]];
      v26 = [v17 objectForKeyedSubscript:v24];
      v9 = [v25 isEqual:v26];

LABEL_13:
LABEL_14:
      v6 = v28;
    }

    else
    {
      v9 = 1;
    }

    objc_autoreleasePoolPop(v11);
  }

  return v9;
}

- (id)_requireAssetStoreTempDir
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [(TRIPaths *)self->_paths assetStoreUsingGlobal:self->_useGlobalPaths];
  v3 = [v2 stringByAppendingPathComponent:@"tmp"];

  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v14 = 0;
  v5 = [v4 createDirectoryAtPath:v3 withIntermediateDirectories:1 attributes:0 error:&v14];
  v6 = v14;

  if ((v5 & 1) == 0)
  {
    v7 = TRILogCategory_Server();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v19.st_dev = 138543618;
      *&v19.st_mode = v3;
      WORD2(v19.st_ino) = 2114;
      *(&v19.st_ino + 6) = v6;
      _os_log_error_impl(&dword_26F567000, v7, OS_LOG_TYPE_ERROR, "Failed to create directory %{public}@: %{public}@", &v19, 0x16u);
    }
  }

  memset(&v19, 0, sizeof(v19));
  if (stat([v3 fileSystemRepresentation], &v19))
  {
    v8 = TRILogCategory_Server();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v12 = __error();
      v13 = strerror(*v12);
      *buf = 138543618;
      v16 = v3;
      v17 = 2080;
      v18 = v13;
      _os_log_error_impl(&dword_26F567000, v8, OS_LOG_TYPE_ERROR, "Could not stat temporary directory %{public}@: %s", buf, 0x16u);
    }
  }

  else
  {
    v9 = [v3 fileSystemRepresentation];
    chmod(v9, v19.st_mode | 0x92);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v3;
}

- (BOOL)_acquireLockfileAndRunBlock:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [(TRIPaths *)self->_paths assetStoreUsingGlobal:self->_useGlobalPaths];
  v7 = [MEMORY[0x277CCAA00] defaultManager];
  v31 = 0;
  v8 = [v7 createDirectoryAtPath:v6 withIntermediateDirectories:1 attributes:0 error:&v31];
  v9 = v31;

  if ((v8 & 1) == 0)
  {
    v10 = TRILogCategory_Server();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v33 = v9;
      _os_log_error_impl(&dword_26F567000, v10, OS_LOG_TYPE_ERROR, "Failed to create AssetStore: %{public}@", buf, 0xCu);
    }
  }

  v11 = [v6 stringByAppendingPathComponent:@"lock"];
  v12 = v11;
  v13 = open([v11 fileSystemRepresentation], 514, 432);
  v14 = v13;
  if (v13 < 0)
  {
    v17 = TRILogCategory_Server();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v25 = __error();
      v26 = strerror(*v25);
      v27 = *__error();
      *buf = 138543874;
      v33 = v11;
      v34 = 2080;
      v35 = v26;
      v36 = 1024;
      v37 = v27;
      _os_log_error_impl(&dword_26F567000, v17, OS_LOG_TYPE_ERROR, "Failed to open lockfile %{public}@: %s (%d)", buf, 0x1Cu);
    }

    v16 = 0;
  }

  else
  {
    if (flock(v13, 2))
    {
      v15 = TRILogCategory_Server();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v22 = __error();
        v23 = strerror(*v22);
        v24 = *__error();
        *buf = 138543874;
        v33 = v11;
        v34 = 2080;
        v35 = v23;
        v36 = 1024;
        v37 = v24;
        _os_log_error_impl(&dword_26F567000, v15, OS_LOG_TYPE_ERROR, "Failed to acquire lockfile %{public}@: %s (%d)", buf, 0x1Cu);
      }

      v16 = 0;
    }

    else
    {
      v18 = objc_autoreleasePoolPush();
      *buf = v14;
      v4[2](v4, buf);
      objc_autoreleasePoolPop(v18);
      if (flock(v14, 8))
      {
        v19 = TRILogCategory_Server();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v28 = __error();
          v29 = strerror(*v28);
          v30 = *__error();
          *buf = 138543874;
          v33 = v11;
          v34 = 2080;
          v35 = v29;
          v36 = 1024;
          v37 = v30;
          _os_log_error_impl(&dword_26F567000, v19, OS_LOG_TYPE_ERROR, "Failed to unlock lockfile %{public}@: %s (%d)", buf, 0x1Cu);
        }
      }

      v16 = 1;
    }

    close(v14);
  }

  objc_autoreleasePoolPop(v5);
  v20 = *MEMORY[0x277D85DE8];
  return v16 & 1;
}

- (BOOL)hasAssetWithIdentifier:(id)a3 type:(unsigned __int8 *)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v7 = a3;
  if (!v7)
  {
    v15 = [MEMORY[0x277CCA890] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"TRIAssetStore.m" lineNumber:968 description:{@"Invalid parameter not satisfying: %@", @"assetIdentifier"}];
  }

  v8 = [(TRIAssetStore *)self pathForAssetDirWithIdentifier:v7];
  v9 = [v8 stringByAppendingPathComponent:@"content"];

  v10 = TRILogCategory_Server();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v17 = v9;
    _os_log_debug_impl(&dword_26F567000, v10, OS_LOG_TYPE_DEBUG, "Checking for asset in path %@", buf, 0xCu);
  }

  buf[0] = 0;
  v11 = [MEMORY[0x277CCAA00] defaultManager];
  v12 = [v11 fileExistsAtPath:v9 isDirectory:buf];

  if (a4 && v12)
  {
    *a4 = buf[0];
  }

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)enumerateSavedAssetsUsingBlock:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"TRIAssetStore.m" lineNumber:986 description:{@"Invalid parameter not satisfying: %@", @"block"}];
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __48__TRIAssetStore_enumerateSavedAssetsUsingBlock___block_invoke;
  v8[3] = &unk_279DE2438;
  v9 = v5;
  v10 = a2;
  v8[4] = self;
  v6 = v5;
  [(TRIAssetStore *)self enumerateAssetDirsUsingBlock:v8];
}

void __48__TRIAssetStore_enumerateSavedAssetsUsingBlock___block_invoke(uint64_t a1, void *a2)
{
  v16 = a2;
  v3 = [v16 lastPathComponent];
  if (!v3)
  {
    v15 = [MEMORY[0x277CCA890] currentHandler];
    [v15 handleFailureInMethod:*(a1 + 48) object:*(a1 + 32) file:@"TRIAssetStore.m" lineNumber:991 description:{@"Invalid parameter not satisfying: %@", @"assetIdentifier"}];
  }

  v4 = [MEMORY[0x277CBEBC0] fileURLWithPath:@"refs" relativeToURL:v16];
  v5 = [MEMORY[0x277CCAA00] defaultManager];
  v6 = [v5 enumeratorAtURL:v4 includingPropertiesForKeys:0 options:1 errorHandler:0];

  v7 = objc_autoreleasePoolPush();
  v8 = [v6 nextObject];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    do
    {
      v11 = [v9 lastPathComponent];
      v12 = [v11 hasPrefix:@"link-"];

      if (v12)
      {
        v13 = [v9 path];
        if (!v13)
        {
          v14 = [MEMORY[0x277CCA890] currentHandler];
          [v14 handleFailureInMethod:*(a1 + 48) object:*(a1 + 32) file:@"TRIAssetStore.m" lineNumber:1008 description:{@"Invalid parameter not satisfying: %@", @"symlinkPath"}];
        }

        v10 += [*(a1 + 32) isValidTargetForSymlink:v13 assetIdentifier:v3];
      }

      objc_autoreleasePoolPop(v7);
      v7 = objc_autoreleasePoolPush();
      v9 = [v6 nextObject];
    }

    while (v9);
  }

  objc_autoreleasePoolPop(v7);
  (*(*(a1 + 40) + 16))();
}

+ (id)shortHashForAssetIdentifier:(id)a3
{
  v5 = [a3 dataUsingEncoding:4];
  if (!v5)
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    [v9 handleFailureInMethod:a2 object:a1 file:@"TRIAssetStore.m" lineNumber:1029 description:{@"Invalid parameter not satisfying: %@", @"utf8Identifier"}];
  }

  [v5 bytes];
  [v5 length];
  v10 = _PASMurmur3_x86_32();
  v6 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:&v10 length:1 freeWhenDone:0];
  v7 = [v6 triHexlify];

  return v7;
}

- (BOOL)setCreationDate:(id)a3 forAssetIdentifier:(id)a4
{
  v22[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(TRIAssetStore *)self pathForAssetDirWithIdentifier:v7];
  v21 = *MEMORY[0x277CCA150];
  v22[0] = v6;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
  v10 = [MEMORY[0x277CCAA00] defaultManager];
  v16 = 0;
  v11 = [v10 setAttributes:v9 ofItemAtPath:v8 error:&v16];
  v12 = v16;

  if ((v11 & 1) == 0)
  {
    v13 = TRILogCategory_Server();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v18 = v7;
      v19 = 2114;
      v20 = v12;
      _os_log_error_impl(&dword_26F567000, v13, OS_LOG_TYPE_ERROR, "Failed to backdate %{public}@; %{public}@", buf, 0x16u);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return v11;
}

- (id)pathForAssetDirWithIdentifier:(id)a3
{
  v12[4] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCACA8];
  paths = self->_paths;
  v5 = a3;
  v6 = [(TRIPaths *)paths assetStore];
  v12[0] = v6;
  v12[1] = @"assets";
  v7 = [objc_opt_class() shortHashForAssetIdentifier:v5];
  v12[2] = v7;
  v12[3] = v5;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:4];
  v9 = [v3 pathWithComponents:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)pathForAssetContentWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [(TRIAssetStore *)self pathForAssetDirWithIdentifier:v4];
  v7 = [v6 stringByAppendingPathComponent:@"content"];

  objc_autoreleasePoolPop(v5);

  return v7;
}

- (id)pathForRefsToAssetWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [(TRIAssetStore *)self pathForAssetDirWithIdentifier:v4];
  v7 = [v6 stringByAppendingPathComponent:@"refs"];

  objc_autoreleasePoolPop(v5);

  return v7;
}

- (id)_createTempDir
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = [(TRIAssetStore *)self _requireAssetStoreTempDir];
  v5 = [MEMORY[0x277CCAA00] defaultManager];
  v28 = 0;
  v6 = [v5 createDirectoryAtPath:v4 withIntermediateDirectories:1 attributes:0 error:&v28];
  v7 = v28;

  if ((v6 & 1) == 0)
  {
    v8 = TRILogCategory_Server();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v30 = v4;
      v31 = 2114;
      v32 = v7;
      _os_log_error_impl(&dword_26F567000, v8, OS_LOG_TYPE_ERROR, "Failed to create directory %{public}@: %{public}@", buf, 0x16u);
    }
  }

  v9 = [v4 stringByAppendingPathComponent:@"partial-asset-XXXXXX"];
  v10 = [v9 UTF8String];
  if (!v10)
  {
    v25 = [MEMORY[0x277CCA890] currentHandler];
    [v25 handleFailureInMethod:a2 object:self file:@"TRIAssetStore.m" lineNumber:1084 description:{@"Unexpected UTF-8 conversion failure: %@", v9}];
  }

  v11 = [objc_alloc(MEMORY[0x277CBEB28]) initWithBytes:v10 length:strlen(v10) + 1];
  v12 = [v11 mutableBytes];
  if (!v12)
  {
    v27 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE728] reason:@"malloc failed" userInfo:0];
    objc_exception_throw(v27);
  }

  v13 = v12;
  if (!mkdtemp(v12))
  {
    v14 = TRILogCategory_Server();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v22 = __error();
      v23 = strerror(*v22);
      v24 = *__error();
      *buf = 136315394;
      v30 = v23;
      v31 = 1024;
      LODWORD(v32) = v24;
      _os_log_error_impl(&dword_26F567000, v14, OS_LOG_TYPE_ERROR, "Failed to create temp dir: %s (%d)", buf, 0x12u);
    }

    goto LABEL_17;
  }

  v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v13];
  if (!v14)
  {
    v26 = [MEMORY[0x277CCA890] currentHandler];
    [v26 handleFailureInMethod:a2 object:self file:@"TRIAssetStore.m" lineNumber:1094 description:{@"Invalid parameter not satisfying: %@", @"result"}];
  }

  if (chmod([v14 fileSystemRepresentation], 0x1F8u))
  {
    v15 = TRILogCategory_Server();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v19 = __error();
      v20 = strerror(*v19);
      v21 = *__error();
      *buf = 136315394;
      v30 = v20;
      v31 = 1024;
      LODWORD(v32) = v21;
      _os_log_error_impl(&dword_26F567000, v15, OS_LOG_TYPE_ERROR, "Failed to adjust permissions on temp dir: %s (%d)", buf, 0x12u);
    }

    [(TRIAssetStore *)self _forceRemoveItemAtPath:v14];
LABEL_17:
    v16 = 0;
    goto LABEL_19;
  }

  v14 = v14;
  v16 = v14;
LABEL_19:

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (void)enumerateAssetDirsUsingBlock:(id)a3
{
  v4 = a3;
  context = objc_autoreleasePoolPush();
  v5 = [MEMORY[0x277CCAA00] defaultManager];
  v6 = MEMORY[0x277CBEBC0];
  v7 = [(TRIPaths *)self->_paths assetStore];
  v8 = [v6 fileURLWithPath:v7];
  v9 = [v6 fileURLWithPath:@"assets" relativeToURL:v8];

  v19 = v9;
  v10 = [v5 enumeratorAtURL:v9 includingPropertiesForKeys:0 options:1 errorHandler:0];
  v11 = objc_autoreleasePoolPush();
  v12 = [v10 nextObject];
  if (v12)
  {
    v13 = v12;
    while (1)
    {
      v14 = [v5 enumeratorAtURL:v13 includingPropertiesForKeys:0 options:1 errorHandler:0];
      v15 = objc_autoreleasePoolPush();
      v16 = [v14 nextObject];
      if (v16)
      {
        break;
      }

LABEL_7:
      objc_autoreleasePoolPop(v15);

      objc_autoreleasePoolPop(v11);
      v11 = objc_autoreleasePoolPush();
      v13 = [v10 nextObject];
      if (!v13)
      {
        goto LABEL_10;
      }
    }

    v17 = v16;
    while (1)
    {
      v21 = 0;
      v18 = objc_autoreleasePoolPush();
      v4[2](v4, v17, &v21);
      objc_autoreleasePoolPop(v18);
      LOBYTE(v18) = v21;

      objc_autoreleasePoolPop(v15);
      if (v18)
      {
        break;
      }

      v15 = objc_autoreleasePoolPush();
      v17 = [v14 nextObject];
      if (!v17)
      {
        goto LABEL_7;
      }
    }
  }

LABEL_10:
  objc_autoreleasePoolPop(v11);

  objc_autoreleasePoolPop(context);
}

- (BOOL)_forceRemoveItemAtPath:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAA00];
  v4 = a3;
  v5 = [v3 defaultManager];
  v11 = 0;
  v6 = [v5 triForceRemoveItemAtPath:v4 error:&v11];

  v7 = v11;
  if ((v6 & 1) == 0)
  {
    v8 = TRILogCategory_Server();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v13 = v7;
      _os_log_error_impl(&dword_26F567000, v8, OS_LOG_TYPE_ERROR, "Failed to force-remove: %{public}@", buf, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)_overwriteRenameAsAtomicallyAsPossibleWithSrc:(id)a3 dest:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  memset(&v28, 0, sizeof(v28));
  if (stat([v6 fileSystemRepresentation], &v28))
  {
    v8 = TRILogCategory_Server();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v19 = __error();
      v20 = strerror(*v19);
      v21 = *__error();
      v27.st_dev = 138543874;
      *&v27.st_mode = v6;
      WORD2(v27.st_ino) = 2080;
      *(&v27.st_ino + 6) = v20;
      HIWORD(v27.st_gid) = 1024;
      v27.st_rdev = v21;
      _os_log_error_impl(&dword_26F567000, v8, OS_LOG_TYPE_ERROR, "Failed to stat %{public}@: %s (%d)", &v27, 0x1Cu);
    }

    goto LABEL_5;
  }

  v26 = v28.st_mode & 0x1FF;
  memset(&v27, 0, sizeof(v27));
  v10 = stat([v7 fileSystemRepresentation], &v27);
  v11 = v10;
  if ((v28.st_mode & 0xF000) == 0x4000)
  {
    chmod([v6 fileSystemRepresentation], 0x1F8u);
    v12 = &v26;
    if (!v11)
    {
LABEL_10:
      if ((v27.st_mode & 0xF000) == 0x4000)
      {
        chmod([v7 fileSystemRepresentation], 0x1F8u);
      }
    }
  }

  else
  {
    v12 = 0;
    if (!v10)
    {
      goto LABEL_10;
    }
  }

  v13 = [v6 fileSystemRepresentation];
  v14 = [v7 fileSystemRepresentation];
  rename(v13, v14, v15);
  if (!v16)
  {
    [(TRIAssetStore *)self _fixupPermissionsOnPath:v7 permissionBits:v12];
    v9 = 1;
    goto LABEL_19;
  }

  if (*__error() == 17 || *__error() == 66 || *__error() == 21 || *__error() == 20)
  {
    v9 = [(TRIAssetStore *)self _nonAtomicOverwriteWithSrc:v6 dest:v7 finalPermissionBits:v12];
    goto LABEL_19;
  }

  v22 = TRILogCategory_Server();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    v23 = __error();
    v24 = strerror(*v23);
    v25 = *__error();
    v28.st_dev = 138544130;
    *&v28.st_mode = v6;
    WORD2(v28.st_ino) = 2114;
    *(&v28.st_ino + 6) = v7;
    HIWORD(v28.st_gid) = 2080;
    *&v28.st_rdev = v24;
    LOWORD(v28.st_atimespec.tv_sec) = 1024;
    *(&v28.st_atimespec.tv_sec + 2) = v25;
    _os_log_error_impl(&dword_26F567000, v22, OS_LOG_TYPE_ERROR, "Failed to rename() %{public}@ --> %{public}@: %s (%d)", &v28, 0x26u);
  }

  [(TRIAssetStore *)self _fixupPermissionsOnPath:v6 permissionBits:v12];
LABEL_5:
  v9 = 0;
LABEL_19:

  v17 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)_fixupPermissionsOnPath:(id)a3 permissionBits:(const unsigned __int16 *)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (a4 && chmod([v5 fileSystemRepresentation], *a4))
  {
    v7 = TRILogCategory_Server();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = __error();
      v10 = strerror(*v9);
      v11 = *__error();
      v12 = 138543874;
      v13 = v6;
      v14 = 2080;
      v15 = v10;
      v16 = 1024;
      v17 = v11;
      _os_log_error_impl(&dword_26F567000, v7, OS_LOG_TYPE_ERROR, "Failed to restore permission bits on %{public}@: %s (%d)", &v12, 0x1Cu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)_nonAtomicOverwriteWithSrc:(id)a3 dest:(id)a4 finalPermissionBits:(const unsigned __int16 *)a5
{
  v44 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [(TRIAssetStore *)self _requireAssetStoreTempDir];
  v11 = objc_opt_new();
  v12 = [v11 UUIDString];
  v13 = [v10 stringByAppendingPathComponent:v12];

  v14 = [v9 fileSystemRepresentation];
  v15 = [v13 fileSystemRepresentation];
  rename(v14, v15, v16);
  if (v17)
  {
    [(TRIAssetStore *)self _fixupPermissionsOnPath:v8 permissionBits:a5];
    v18 = TRILogCategory_Server();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = __error();
      v20 = strerror(*v19);
      v21 = *__error();
      v36 = 138544130;
      v37 = v9;
      v38 = 2114;
      v39 = v13;
      v40 = 2080;
      v41 = v20;
      v42 = 1024;
      v43 = v21;
      v22 = "Failed rename() to relocate before overwrite %{public}@ -> %{public}@: %s (%d)";
LABEL_10:
      _os_log_error_impl(&dword_26F567000, v18, OS_LOG_TYPE_ERROR, v22, &v36, 0x26u);
    }
  }

  else
  {
    v23 = [v8 fileSystemRepresentation];
    v24 = [v9 fileSystemRepresentation];
    rename(v23, v24, v25);
    if (!v26)
    {
      [(TRIAssetStore *)self _fixupPermissionsOnPath:v9 permissionBits:a5];
      [(TRIAssetStore *)self _forceRemoveItemAtPath:v13];
      v30 = 1;
      goto LABEL_7;
    }

    v27 = [v13 fileSystemRepresentation];
    v28 = [v9 fileSystemRepresentation];
    rename(v27, v28, v29);
    [(TRIAssetStore *)self _fixupPermissionsOnPath:v8 permissionBits:a5];
    v18 = TRILogCategory_Server();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v33 = __error();
      v34 = strerror(*v33);
      v35 = *__error();
      v36 = 138544130;
      v37 = v8;
      v38 = 2114;
      v39 = v9;
      v40 = 2080;
      v41 = v34;
      v42 = 1024;
      v43 = v35;
      v22 = "Failed to rename() even after relocating destination: %{public}@ --> %{public}@: %s (%d)";
      goto LABEL_10;
    }
  }

  v30 = 0;
LABEL_7:

  v31 = *MEMORY[0x277D85DE8];
  return v30;
}

- (BOOL)_clearUnrefAgeForAssetWithIdentifier:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [(TRIAssetStore *)self pathForAssetDirWithIdentifier:a3];
  v4 = [v3 stringByAppendingPathComponent:@"unref-age"];

  if (unlink([v4 fileSystemRepresentation]) && *__error() != 2)
  {
    v6 = TRILogCategory_Server();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v9 = __error();
      v10 = strerror(*v9);
      v11 = *__error();
      v12 = 136315394;
      v13 = v10;
      v14 = 1024;
      v15 = v11;
      _os_log_error_impl(&dword_26F567000, v6, OS_LOG_TYPE_ERROR, "Failed to unlink() unref-age: %s (%d)", &v12, 0x12u);
    }

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v5;
}

@end