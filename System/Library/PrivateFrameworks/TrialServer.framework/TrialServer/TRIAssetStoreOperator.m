@interface TRIAssetStoreOperator
+ (unint64_t)_fileSizeInBytesForPath:(id)a3;
- (BOOL)_acquireLockfileAndRunBlock:(id)a3;
- (BOOL)_acquireLockfileInAssetStorePath:(id)a3 andRunBlock:(id)a4;
- (BOOL)_clearUnrefAgeForAssetWithIdentifier:(id)a3;
- (BOOL)_fixFileProtectionForFileURL:(id)a3;
- (BOOL)_forceRemoveItemAtPath:(id)a3;
- (BOOL)_incrementUnrefAgeForAssetWithIdentifier:(id)a3 newValue:(unsigned int *)a4 dryRun:(BOOL)a5;
- (BOOL)_migrateAssetContentsWithLocalAssetStorePath:(id)a3 flockWitness:(TRIFlockWitness_ *)a4;
- (BOOL)_migrateAssetsDatabaseWithLocalAssetStorePath:(id)a3;
- (BOOL)_moveDirectoryAssetFromDirectory:(id)a3 toLocationForAssetIdentifier:(id)a4;
- (BOOL)_nonAtomicOverwriteWithSrc:(id)a3 dest:(id)a4 finalPermissionBits:(const unsigned __int16 *)a5;
- (BOOL)_overwriteRenameAsAtomicallyAsPossibleWithSrc:(id)a3 dest:(id)a4;
- (BOOL)_relinkLocalAssetToGlobalAssetStore:(id)a3 withAssetId:(id)a4 localAssetDir:(id)a5;
- (BOOL)_removeAssetWithIdentifier:(id)a3 flockWitness:(TRIFlockWitness_ *)a4 deletedAssetSize:(unint64_t *)a5 dryRun:(BOOL)a6;
- (BOOL)_removeDeadSymlinksWithFlockWitness:(TRIFlockWitness_ *)a3 numRemoved:(unsigned int *)a4;
- (BOOL)_removePaths:(id)a3 numRemoved:(unsigned int *)a4;
- (BOOL)addSymlinkFromAssetWithIdentifier:(id)a3 toPath:(id)a4 flockWitness:(TRIFlockWitness_ *)a5;
- (BOOL)collectGarbageOlderThanNumScans:(unsigned int)a3 deletedAssetSize:(unint64_t *)a4 ignoreRecentlyCreatedAssets:(BOOL)a5 dryRun:(BOOL)a6 includedCacheDeletableAssetIds:(id)a7 deletedAssetIds:(id *)a8;
- (BOOL)fixFileProtectionForAssetStoreFiles;
- (BOOL)migrateToGlobalAssetStoreFromLocalAssetStore:(id)a3;
- (BOOL)removeAssetWithIdentifier:(id)a3;
- (BOOL)saveAssetWithIdentifier:(id)a3 sourcePath:(id)a4 flockWitness:(TRIFlockWitness_ *)a5 removeSourceOnFailure:(BOOL)a6;
- (TRIAssetStoreOperator)initWithPaths:(id)a3 storageManagement:(id)a4 assetStore:(id)a5;
- (id)_collectDeadSymlinks;
- (id)_collectUnreferencedAssetsIncludingLinkTargetsForReferencedAssetIds:(id)a3 ignoreRecentlyCreatedAssets:(BOOL)a4;
- (id)_creationDateForAsset:(id)a3;
- (id)_requireAssetStoreTempDir;
- (id)referenceMAAutoAssetWithId:(id)a3 futurePath:(id)a4 currentPath:(id)a5 isFileFactor:(BOOL)a6;
- (unsigned)_hardLinkCountForAssetWithIdentifier:(id)a3;
- (unsigned)_hardLinkCountForFileWithPath:(id)a3;
- (void)_fixupPermissionsOnPath:(id)a3 permissionBits:(const unsigned __int16 *)a4;
@end

@implementation TRIAssetStoreOperator

- (TRIAssetStoreOperator)initWithPaths:(id)a3 storageManagement:(id)a4 assetStore:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = TRIAssetStoreOperator;
  v12 = [(TRIAssetStoreOperator *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_paths, a3);
    objc_storeStrong(&v13->_storageManagement, a4);
    objc_storeWeak(&v13->_store, v11);
    [v11 setAssetOperator:v13];
  }

  return v13;
}

- (BOOL)saveAssetWithIdentifier:(id)a3 sourcePath:(id)a4 flockWitness:(TRIFlockWitness_ *)a5 removeSourceOnFailure:(BOOL)a6
{
  v6 = a6;
  v27 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = [(TRIAssetStoreOperator *)self _moveDirectoryAssetFromDirectory:v10 toLocationForAssetIdentifier:v9];
  if (!v11)
  {
    v12 = TRILogCategory_Server();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v19 = &stru_287FA0430;
      *buf = 138543874;
      v22 = v10;
      v23 = 2114;
      if (v6)
      {
        v19 = @"removing";
      }

      v24 = v9;
      v25 = 2114;
      v26 = v19;
      _os_log_error_impl(&dword_26F567000, v12, OS_LOG_TYPE_ERROR, "Asset store failed to move dir. asset from: %{public}@ to location for asset: %{public}@. %{public}@", buf, 0x20u);
    }

    if (v6)
    {
      v13 = [MEMORY[0x277CCAA00] defaultManager];
      v20 = 0;
      v14 = [v13 triForceRemoveItemAtPath:v10 error:&v20];
      v15 = v20;

      if ((v14 & 1) == 0)
      {
        v16 = TRILogCategory_Server();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v22 = v10;
          v23 = 2114;
          v24 = v15;
          _os_log_error_impl(&dword_26F567000, v16, OS_LOG_TYPE_ERROR, "Asset store failed follow-up removal of source at path: %{public}@, error: %{public}@", buf, 0x16u);
        }
      }
    }
  }

  v17 = *MEMORY[0x277D85DE8];
  return v11;
}

- (BOOL)_moveDirectoryAssetFromDirectory:(id)a3 toLocationForAssetIdentifier:(id)a4
{
  v85[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v63 = self;
  WeakRetained = objc_loadWeakRetained(&self->_store);
  v9 = WeakRetained;
  v65 = v7;
  if (WeakRetained)
  {
    v10 = [WeakRetained pathForAssetDirWithIdentifier:v7];
    v66 = [v6 stringByAppendingPathComponent:@"content"];
    v79 = 0;
    v11 = [MEMORY[0x277CCAA00] defaultManager];
    v12 = [v11 fileExistsAtPath:v66 isDirectory:&v79];

    if ((v12 & 1) == 0)
    {
      v13 = TRILogCategory_Server();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v84.st_dev = 138543618;
        *&v84.st_mode = v65;
        WORD2(v84.st_ino) = 2114;
        *(&v84.st_ino + 6) = v66;
        _os_log_error_impl(&dword_26F567000, v13, OS_LOG_TYPE_ERROR, "Unable to save asset %{public}@. Can't find source at %{public}@", &v84, 0x16u);
      }
    }

    if (v79 == 1)
    {
      v14 = v66;
      if (chmod([v66 fileSystemRepresentation], 0x168u))
      {
        v15 = TRILogCategory_Server();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v55 = __error();
          v56 = strerror(*v55);
          v57 = *__error();
          v84.st_dev = 138543874;
          *&v84.st_mode = v66;
          WORD2(v84.st_ino) = 2080;
          *(&v84.st_ino + 6) = v56;
          HIWORD(v84.st_gid) = 1024;
          v84.st_rdev = v57;
          _os_log_error_impl(&dword_26F567000, v15, OS_LOG_TYPE_ERROR, "Failed to set permissions on dir-asset toplevel directory %{public}@: %s (%d)", &v84, 0x1Cu);
        }

LABEL_57:
        v16 = 0;
LABEL_63:

        goto LABEL_64;
      }

      v73 = 0;
      v74 = &v73;
      v75 = 0x3032000000;
      v76 = __Block_byref_object_copy__29;
      v77 = __Block_byref_object_dispose__29;
      v78 = 0;
      v17 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:v66 isDirectory:1];
      v18 = [MEMORY[0x277CCAA00] defaultManager];
      v19 = *MEMORY[0x277CBE8A8];
      v61 = *MEMORY[0x277CBE868];
      v85[0] = *MEMORY[0x277CBE868];
      v85[1] = v19;
      v64 = v19;
      v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v85 count:2];
      v72[0] = MEMORY[0x277D85DD0];
      v72[1] = 3221225472;
      v72[2] = __87__TRIAssetStoreOperator__moveDirectoryAssetFromDirectory_toLocationForAssetIdentifier___block_invoke;
      v72[3] = &unk_279DE2410;
      v72[4] = &v73;
      v21 = [v18 enumeratorAtURL:v17 includingPropertiesForKeys:v20 options:0 errorHandler:v72];
      v60 = v17;

      if (v21)
      {
        while (1)
        {
          v22 = objc_autoreleasePoolPush();
          v23 = [v21 nextObject];
          v24 = v23;
          if (!v23)
          {
            v31 = 3;
            goto LABEL_29;
          }

          v70 = 0;
          v71 = 0;
          v25 = [v23 getResourceValue:&v71 forKey:v64 error:&v70];
          v26 = v71;
          v27 = v70;
          if (v25)
          {
            if ([v26 BOOLValue])
            {
              v28 = [v24 path];
              if (!v28)
              {
                v45 = [MEMORY[0x277CCA890] currentHandler];
                [v45 handleFailureInMethod:a2 object:v63 file:@"TRIAssetStoreOperator.m" lineNumber:140 description:{@"Expression was unexpectedly nil/false: %@", @"childURL.path"}];
              }

              v29 = v28;
              if (!chmod([v28 fileSystemRepresentation], 0x124u))
              {
LABEL_43:
                v31 = 2;
                goto LABEL_27;
              }

              v30 = TRILogCategory_Server();
              if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
              {
                v43 = __error();
                v59 = strerror(*v43);
                v44 = *__error();
                v84.st_dev = 138543874;
                *&v84.st_mode = v28;
                WORD2(v84.st_ino) = 2080;
                *(&v84.st_ino + 6) = v59;
                HIWORD(v84.st_gid) = 1024;
                v84.st_rdev = v44;
                _os_log_error_impl(&dword_26F567000, v30, OS_LOG_TYPE_ERROR, "Failed to set permissions on dir-asset file %{public}@: %s (%d)", &v84, 0x1Cu);
              }

              goto LABEL_23;
            }

            v68 = 0;
            v69 = 0;
            v32 = [v24 getResourceValue:&v69 forKey:v61 error:&v68];
            v26 = v69;
            v27 = v68;
            if (v32)
            {
              if (![v26 BOOLValue])
              {
                v31 = 0;
                goto LABEL_28;
              }

              v28 = [v24 path];
              if (!v28)
              {
                v46 = [MEMORY[0x277CCA890] currentHandler];
                [v46 handleFailureInMethod:a2 object:v63 file:@"TRIAssetStoreOperator.m" lineNumber:165 description:{@"Expression was unexpectedly nil/false: %@", @"childURL.path"}];
              }

              memset(&v84, 0, sizeof(v84));
              v33 = v28;
              if (!lstat([v28 fileSystemRepresentation], &v84) && (~v84.st_mode & 0x140) != 0)
              {
                v30 = TRILogCategory_Server();
                if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
                {
                  *buf = 67109378;
                  *v81 = v84.st_mode;
                  *&v81[4] = 2114;
                  *&v81[6] = v6;
                  v38 = v30;
                  v39 = "Candidate asset subdirectory was constructed with bad permission bits 0%o: %{public}@";
                  v40 = 18;
LABEL_50:
                  _os_log_error_impl(&dword_26F567000, v38, OS_LOG_TYPE_ERROR, v39, buf, v40);
                }
              }

              else
              {
                v34 = v28;
                if (!chmod([v28 fileSystemRepresentation], 0x168u))
                {
                  goto LABEL_43;
                }

                v30 = TRILogCategory_Server();
                if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
                {
                  v58 = v30;
                  v35 = __error();
                  v36 = strerror(*v35);
                  v37 = *__error();
                  *buf = 138543874;
                  *v81 = v28;
                  *&v81[8] = 2080;
                  *&v81[10] = v36;
                  v82 = 1024;
                  v83 = v37;
                  v30 = v58;
                  v38 = v58;
                  v39 = "Failed to set permissions on dir-asset subdirectory %{public}@: %s (%d)";
                  v40 = 28;
                  goto LABEL_50;
                }
              }

LABEL_23:

              goto LABEL_26;
            }

            v28 = TRILogCategory_Server();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
            {
              v84.st_dev = 138543362;
              *&v84.st_mode = v27;
              v41 = v28;
              v42 = "Failed to get directory attribute: %{public}@";
LABEL_46:
              _os_log_error_impl(&dword_26F567000, v41, OS_LOG_TYPE_ERROR, v42, &v84, 0xCu);
            }
          }

          else
          {
            v28 = TRILogCategory_Server();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
            {
              v84.st_dev = 138543362;
              *&v84.st_mode = v27;
              v41 = v28;
              v42 = "Failed to get regular file attribute: %{public}@";
              goto LABEL_46;
            }
          }

LABEL_26:
          v31 = 1;
LABEL_27:

LABEL_28:
LABEL_29:

          objc_autoreleasePoolPop(v22);
          if (v31 && v31 != 2)
          {
            if (v31 == 3)
            {
              v31 = v74[5] != 0;
            }

            goto LABEL_56;
          }
        }
      }

      v47 = TRILogCategory_Server();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        v84.st_dev = 138543362;
        *&v84.st_mode = v66;
        _os_log_error_impl(&dword_26F567000, v47, OS_LOG_TYPE_ERROR, "Failed to enumerate dir-asset toplevel directory: %{public}@", &v84, 0xCu);
      }

      v31 = 1;
LABEL_56:

      _Block_object_dispose(&v73, 8);
      if (v31)
      {
        goto LABEL_57;
      }
    }

    v48 = [v10 stringByDeletingLastPathComponent];
    v49 = [MEMORY[0x277CCAA00] defaultManager];
    v67 = 0;
    v50 = [v49 createDirectoryAtPath:v48 withIntermediateDirectories:1 attributes:0 error:&v67];
    v51 = v67;

    if ((v50 & 1) == 0)
    {
      v52 = TRILogCategory_Server();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        v84.st_dev = 138543362;
        *&v84.st_mode = v51;
        _os_log_error_impl(&dword_26F567000, v52, OS_LOG_TYPE_ERROR, "Failed to create parent directory for asset: %{public}@", &v84, 0xCu);
      }
    }

    v16 = [(TRIAssetStoreOperator *)v63 _overwriteRenameAsAtomicallyAsPossibleWithSrc:v6 dest:v10];
    goto LABEL_63;
  }

  v10 = TRILogCategory_Server();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v84.st_dev) = 0;
    _os_log_error_impl(&dword_26F567000, v10, OS_LOG_TYPE_ERROR, "Asset store unexpectedly released from asset store operator.", &v84, 2u);
  }

  v16 = 0;
LABEL_64:

  v53 = *MEMORY[0x277D85DE8];
  return v16;
}

- (BOOL)removeAssetWithIdentifier:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"TRIAssetStoreOperator.m" lineNumber:215 description:{@"Invalid parameter not satisfying: %@", @"assetIdentifier"}];
  }

  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __51__TRIAssetStoreOperator_removeAssetWithIdentifier___block_invoke;
  v10[3] = &unk_279DE2578;
  v12 = &v13;
  v10[4] = self;
  v6 = v5;
  v11 = v6;
  if ([(TRIAssetStoreOperator *)self _acquireLockfileAndRunBlock:v10])
  {
    v7 = *(v14 + 24);
  }

  else
  {
    v7 = 0;
  }

  _Block_object_dispose(&v13, 8);
  return v7 & 1;
}

uint64_t __51__TRIAssetStoreOperator_removeAssetWithIdentifier___block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) _removeAssetWithIdentifier:*(a1 + 40) flockWitness:a2 deletedAssetSize:0 dryRun:0];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

+ (unint64_t)_fileSizeInBytesForPath:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [v4 attributesOfItemAtPath:v3 error:0];
  v6 = [v5 fileSize];

  v7 = [v4 enumeratorAtPath:v3];
  v8 = objc_autoreleasePoolPush();
  v9 = [v7 nextObject];
  if (v9)
  {
    v10 = v9;
    do
    {
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@", v3, v10];
      v12 = [v4 attributesOfItemAtPath:v11 error:0];
      v13 = [v12 fileSize];

      v6 += v13;
      objc_autoreleasePoolPop(v8);
      v8 = objc_autoreleasePoolPush();
      v14 = [v7 nextObject];

      v10 = v14;
    }

    while (v14);
  }

  objc_autoreleasePoolPop(v8);

  return v6;
}

- (BOOL)_removeAssetWithIdentifier:(id)a3 flockWitness:(TRIFlockWitness_ *)a4 deletedAssetSize:(unint64_t *)a5 dryRun:(BOOL)a6
{
  v6 = a6;
  v28 = *MEMORY[0x277D85DE8];
  v9 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_store);
  v11 = TRILogCategory_Server();
  v12 = v11;
  if (!WeakRetained)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26F567000, v12, OS_LOG_TYPE_ERROR, "Asset store unexpectedly released from asset store operator.", buf, 2u);
    }

    goto LABEL_14;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = &stru_287FA0430;
    if (v6)
    {
      v13 = @"(dry-run) ";
    }

    *buf = 138543618;
    v25 = v13;
    v26 = 2114;
    v27 = v9;
    _os_log_impl(&dword_26F567000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@Removing asset: %{public}@", buf, 0x16u);
  }

  if (a5)
  {
    *a5 = 0;
  }

  if ([WeakRetained hasAssetWithIdentifier:v9 type:0])
  {
    v12 = [WeakRetained pathForAssetDirWithIdentifier:v9];
    v14 = [objc_opt_class() _fileSizeInBytesForPath:v12];
    if (v6)
    {
      if (!a5)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

    v23 = os_transaction_create();
    v16 = [(TRIAssetStoreOperator *)self _requireAssetStoreTempDir];
    v17 = objc_opt_new();
    v18 = [v17 UUIDString];
    v19 = [v16 stringByAppendingPathComponent:v18];

    if ([(TRIAssetStoreOperator *)self _overwriteRenameAsAtomicallyAsPossibleWithSrc:v12 dest:v19])
    {
      v20 = [(TRIAssetStoreOperator *)self _forceRemoveItemAtPath:v19];

      v15 = 1;
      if (!a5 || !v20)
      {
        goto LABEL_21;
      }

LABEL_19:
      *a5 = v14;
LABEL_20:
      v15 = 1;
      goto LABEL_21;
    }

LABEL_14:
    v15 = 0;
LABEL_21:

    goto LABEL_22;
  }

  v15 = 1;
LABEL_22:

  v21 = *MEMORY[0x277D85DE8];
  return v15;
}

- (BOOL)addSymlinkFromAssetWithIdentifier:(id)a3 toPath:(id)a4 flockWitness:(TRIFlockWitness_ *)a5
{
  v38 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_store);
  v10 = WeakRetained;
  if (WeakRetained)
  {
    v11 = [WeakRetained pathForRefsToAssetWithIdentifier:v7];
    v12 = [MEMORY[0x277CCAA00] defaultManager];
    v29 = 0;
    v13 = [v12 createDirectoryAtPath:v11 withIntermediateDirectories:1 attributes:0 error:&v29];
    v14 = v29;

    if ((v13 & 1) == 0)
    {
      v15 = TRILogCategory_Server();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v31 = v14;
        _os_log_error_impl(&dword_26F567000, v15, OS_LOG_TYPE_ERROR, "Failed to create directory: %{public}@", buf, 0xCu);
      }
    }

    v16 = objc_alloc(MEMORY[0x277CCACA8]);
    v17 = objc_opt_new();
    v18 = [v17 UUIDString];
    v19 = [v16 initWithFormat:@"link-%@", v18];
    v20 = [v11 stringByAppendingPathComponent:v19];

    v21 = symlink([v8 fileSystemRepresentation], objc_msgSend(v20, "fileSystemRepresentation"));
    v22 = v21 == 0;
    if (v21)
    {
      v23 = TRILogCategory_Server();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v26 = __error();
        v27 = strerror(*v26);
        v28 = *__error();
        *buf = 138544130;
        v31 = v20;
        v32 = 2114;
        v33 = v8;
        v34 = 2080;
        v35 = v27;
        v36 = 1024;
        v37 = v28;
        _os_log_error_impl(&dword_26F567000, v23, OS_LOG_TYPE_ERROR, "Failed to create symlink %{public}@ --> %{public}@: %s (%d)", buf, 0x26u);
      }
    }
  }

  else
  {
    v11 = TRILogCategory_Server();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26F567000, v11, OS_LOG_TYPE_ERROR, "Asset store unexpectedly released from asset store operator.", buf, 2u);
    }

    v22 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];
  return v22;
}

- (id)referenceMAAutoAssetWithId:(id)a3 futurePath:(id)a4 currentPath:(id)a5 isFileFactor:(BOOL)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__29;
  v30 = __Block_byref_object_dispose__29;
  v31 = 0;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __88__TRIAssetStoreOperator_referenceMAAutoAssetWithId_futurePath_currentPath_isFileFactor___block_invoke;
  v19[3] = &unk_279DE25C0;
  v19[4] = self;
  v14 = v11;
  v20 = v14;
  v15 = v12;
  v25 = a6;
  v21 = v15;
  v24 = a2;
  v16 = v13;
  v22 = v16;
  v23 = &v26;
  [(TRIAssetStoreOperator *)self _acquireLockfileAndRunBlock:v19];
  v17 = v27[5];

  _Block_object_dispose(&v26, 8);

  return v17;
}

void __88__TRIAssetStoreOperator_referenceMAAutoAssetWithId_futurePath_currentPath_isFileFactor___block_invoke(uint64_t a1)
{
  v78 = *MEMORY[0x277D85DE8];
  v2 = [[TRIAssetStoreDatabase alloc] initWithPaths:*(*(a1 + 32) + 8) storageManagement:*(*(a1 + 32) + 16)];
  if (v2)
  {
    location = 0;
    v59 = objc_opt_new();
    v3 = [v59 createAutoAssetWithId:*(a1 + 40) decryptionKey:0 error:&location];
    if (!v3)
    {
      log = TRILogCategory_Server();
      if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
      {
        v34 = *(a1 + 40);
        *buf = 138543618;
        *&buf[4] = v34;
        *&buf[12] = 2114;
        *&buf[14] = location;
        _os_log_error_impl(&dword_26F567000, log, OS_LOG_TYPE_ERROR, "Failed to instantiate MAAutoAsset %{public}@: %{public}@", buf, 0x16u);
      }

      goto LABEL_57;
    }

    v4 = location;
    location = 0;

    obj = location;
    log = [v3 currentLocksSync:&obj];
    objc_storeStrong(&location, obj);
    v5 = TRILogCategory_Server();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&buf[4] = log;
      _os_log_impl(&dword_26F567000, v5, OS_LOG_TYPE_DEFAULT, "MAAutoAssetStatus lock usage: %{public}@", buf, 0xCu);
    }

    v57 = [log objectForKeyedSubscript:@"persistently required by Trial"];
    if (log && [v57 intValue])
    {
      v6 = TRILogCategory_Server();
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_12;
      }

      v7 = [v57 longValue];
      *buf = 134218242;
      *&buf[4] = v7;
      *&buf[12] = 2114;
      *&buf[14] = v3;
      v8 = "MAAutoAsset already persistently locked %ld time(s), creating new lock anyway: %{public}@";
      v9 = v6;
      v10 = 22;
    }

    else
    {
      v6 = TRILogCategory_Server();
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_12;
      }

      *buf = 138543362;
      *&buf[4] = v3;
      v8 = "MAAutoAsset was not persistently locked, creating new lock: %{public}@";
      v9 = v6;
      v10 = 12;
    }

    _os_log_impl(&dword_26F567000, v9, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
LABEL_12:

    v61 = objc_opt_new();
    [v61 setLockAcrossTermination:1];
    [v61 setLockAcrossReboot:1];
    [v61 setLockInhibitsEmergencyRemoval:1];
    v11 = location;
    location = 0;

    v66 = location;
    v58 = [v3 lockContentSync:@"persistently required by Trial" withUsagePolicy:v61 withTimeout:0 lockedAssetSelector:0 newerInProgress:0 error:&v66];
    objc_storeStrong(&location, v66);
    if (!v58)
    {
      v35 = TRILogCategory_Server();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        *&buf[4] = v3;
        *&buf[12] = 2114;
        *&buf[14] = location;
        _os_log_error_impl(&dword_26F567000, v35, OS_LOG_TYPE_ERROR, "Could not create persistent lock for MAAutoAsset %{public}@: %{public}@", buf, 0x16u);
      }

      goto LABEL_56;
    }

    v12 = [v3 assetSelector];
    v13 = [v59 endAllPreviousLocksOfReasonSync:@"transiently required by Trial" forClientName:*MEMORY[0x277D73AB0] forAssetSelector:v12];

    v14 = objc_alloc(MEMORY[0x277D289F8]);
    v15 = [v3 assetSelector];
    v16 = [v15 assetType];
    v17 = [v3 assetSelector];
    v18 = [v17 assetSpecifier];
    v55 = [v14 initForAssetType:v16 withAssetSpecifier:v18];

    [v59 eliminatePromotedNeverLockedForSelector:v55 completion:&__block_literal_global_31];
    if (![(TRIAssetStoreDatabase *)v2 addReferenceToAutoAssetId:*(a1 + 40) forLifetimeOfPath:*(a1 + 48)])
    {
      v36 = TRILogCategory_Server();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        v37 = *(a1 + 40);
        *buf = 138543362;
        *&buf[4] = v37;
        _os_log_error_impl(&dword_26F567000, v36, OS_LOG_TYPE_ERROR, "Unable to add TRIAssetStoreDatabase reference for auto asset: %{public}@", buf, 0xCu);
      }

      goto LABEL_55;
    }

    if (*(a1 + 80) == 1)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v75 = __Block_byref_object_copy__29;
      v76 = __Block_byref_object_dispose__29;
      v77 = 0;
      v19 = [MEMORY[0x277CCAA00] defaultManager];
      v20 = *MEMORY[0x277CBE8A8];
      v73 = *MEMORY[0x277CBE8A8];
      v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v73 count:1];
      v65[0] = MEMORY[0x277D85DD0];
      v65[1] = 3221225472;
      v65[2] = __88__TRIAssetStoreOperator_referenceMAAutoAssetWithId_futurePath_currentPath_isFileFactor___block_invoke_360;
      v65[3] = &unk_279DE2410;
      v65[4] = buf;
      v22 = [v19 enumeratorAtURL:v58 includingPropertiesForKeys:v21 options:1 errorHandler:v65];

      if (v22)
      {
        v56 = 0;
        while (1)
        {
          v23 = objc_autoreleasePoolPush();
          v24 = [v22 nextObject];
          v25 = v24;
          if (!v24)
          {
            v27 = TRILogCategory_Server();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              v32 = [v58 path];
              *v69 = 138543618;
              v70 = v32;
              v71 = 2114;
              v72 = v3;
              _os_log_error_impl(&dword_26F567000, v27, OS_LOG_TYPE_ERROR, "Factor level of File-type points to MAAutoAsset content directory %{public}@ with no regular files: %{public}@", v69, 0x16u);
            }

            v31 = 1;
            goto LABEL_30;
          }

          v63 = 0;
          v64 = 0;
          v26 = [v24 getResourceValue:&v64 forKey:v20 error:&v63];
          v27 = v64;
          v28 = v63;
          if (v26)
          {
            if (![v27 BOOLValue])
            {
              v31 = 0;
              goto LABEL_29;
            }

            v29 = [v25 path];
            if (v29)
            {
              v30 = v56;
              v56 = v29;
            }

            else
            {
              v33 = [MEMORY[0x277CCA890] currentHandler];
              [v33 handleFailureInMethod:*(a1 + 72) object:*(a1 + 32) file:@"TRIAssetStoreOperator.m" lineNumber:419 description:{@"Expression was unexpectedly nil/false: %@", @"firstRegularFileURL.path"}];

              v30 = v56;
              v56 = 0;
            }
          }

          else
          {
            v30 = TRILogCategory_Server();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              *v69 = 138543362;
              v70 = v28;
              _os_log_error_impl(&dword_26F567000, v30, OS_LOG_TYPE_ERROR, "Failed to determine regular file status: %{public}@", v69, 0xCu);
            }
          }

          v31 = 1;
LABEL_29:

LABEL_30:
          objc_autoreleasePoolPop(v23);
          if (v31)
          {
            goto LABEL_43;
          }
        }
      }

      v38 = TRILogCategory_Server();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        v54 = *(*&buf[8] + 40);
        *v69 = 138543362;
        v70 = v54;
        _os_log_error_impl(&dword_26F567000, v38, OS_LOG_TYPE_ERROR, "Unable to enumerate URL: %{public}@", v69, 0xCu);
      }

      v56 = 0;
LABEL_43:

      _Block_object_dispose(buf, 8);
    }

    else
    {
      v56 = [v58 path];
    }

    v39 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@\n", v56];
    v40 = [v39 dataUsingEncoding:4];

    v41 = *(a1 + 56);
    v62 = 0;
    LOBYTE(v39) = [v40 writeToFile:v41 options:0x10000000 error:&v62];
    v42 = v62;
    v43 = v42;
    if (v39)
    {
      goto LABEL_45;
    }

    v50 = [v42 domain];
    if ([v50 isEqualToString:*MEMORY[0x277CCA050]])
    {
      v51 = [v43 code] == 516;

      if (v51)
      {
LABEL_45:
        v44 = TRILogCategory_Server();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          v45 = *(a1 + 56);
          *buf = 138543618;
          *&buf[4] = v45;
          *&buf[12] = 2114;
          *&buf[14] = v56;
          _os_log_impl(&dword_26F567000, v44, OS_LOG_TYPE_DEFAULT, "Created maRefs file at %{public}@ referencing MA asset at %{public}@", buf, 0x16u);
        }

        v46 = *(a1 + 56);
        v47 = *(*(a1 + 64) + 8);
        v48 = v46;
        v49 = *(v47 + 40);
        *(v47 + 40) = v48;
LABEL_54:

        v36 = v56;
LABEL_55:

        v35 = v55;
LABEL_56:

LABEL_57:
        goto LABEL_58;
      }
    }

    else
    {
    }

    v49 = TRILogCategory_Server();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      v53 = *(a1 + 56);
      *buf = 138412546;
      *&buf[4] = v53;
      *&buf[12] = 2114;
      *&buf[14] = v43;
      _os_log_error_impl(&dword_26F567000, v49, OS_LOG_TYPE_ERROR, "Failed to create file for MAAutoAsset reference at %@: %{public}@. ", buf, 0x16u);
    }

    goto LABEL_54;
  }

LABEL_58:

  v52 = *MEMORY[0x277D85DE8];
}

void __88__TRIAssetStoreOperator_referenceMAAutoAssetWithId_futurePath_currentPath_isFileFactor___block_invoke_358(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = TRILogCategory_Server();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 138543618;
      v9 = v4;
      v10 = 2114;
      v11 = v5;
      _os_log_error_impl(&dword_26F567000, v6, OS_LOG_TYPE_ERROR, "Failed to eliminate pre-SU-staged MAAutoAsset %{public}@: %{public}@ ", &v8, 0x16u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (BOOL)collectGarbageOlderThanNumScans:(unsigned int)a3 deletedAssetSize:(unint64_t *)a4 ignoreRecentlyCreatedAssets:(BOOL)a5 dryRun:(BOOL)a6 includedCacheDeletableAssetIds:(id)a7 deletedAssetIds:(id *)a8
{
  v14 = a7;
  if (a4)
  {
    *a4 = 0;
  }

  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 1;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __156__TRIAssetStoreOperator_collectGarbageOlderThanNumScans_deletedAssetSize_ignoreRecentlyCreatedAssets_dryRun_includedCacheDeletableAssetIds_deletedAssetIds___block_invoke;
  v18[3] = &unk_279DE2630;
  v20 = &v26;
  v21 = a4;
  v18[4] = self;
  v23 = a3;
  v24 = a5;
  v25 = a6;
  v15 = v14;
  v19 = v15;
  v22 = a8;
  [(TRIAssetStoreOperator *)self _acquireLockfileAndRunBlock:v18];
  v16 = *(v27 + 24);

  _Block_object_dispose(&v26, 8);
  return v16;
}

void __156__TRIAssetStoreOperator_collectGarbageOlderThanNumScans_deletedAssetSize_ignoreRecentlyCreatedAssets_dryRun_includedCacheDeletableAssetIds_deletedAssetIds___block_invoke(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0;
  *(*(*(a1 + 48) + 8) + 24) &= [*(a1 + 32) _removeDeadSymlinksWithFlockWitness:a2 numRemoved:&v16];
  v4 = TRILogCategory_Server();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(*(a1 + 32) + 8) assetStore];
    *buf = 138543618;
    v18 = v5;
    v19 = 1024;
    v20 = v16;
    _os_log_impl(&dword_26F567000, v4, OS_LOG_TYPE_DEFAULT, "Garbage collection for asset store %{public}@ removed %u dead symlinks.", buf, 0x12u);
  }

  v16 = 0;
  v6 = *(a1 + 40);
  *(*(*(a1 + 48) + 8) + 24) &= [*(a1 + 32) _removeUnreferencedAssetsWithFlockWitness:a2 olderThanAge:*(a1 + 72) numRemoved:&v16 deletedAssetsSize:*(a1 + 56) ignoreRecentlyCreatedAssets:*(a1 + 76) dryRun:*(a1 + 77) includedCacheDeletableAssetIds:v6 deletedAssetIds:*(a1 + 64)];
  v7 = TRILogCategory_Server();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [*(*(a1 + 32) + 8) assetStore];
    *buf = 138543618;
    v18 = v8;
    v19 = 1024;
    v20 = v16;
    _os_log_impl(&dword_26F567000, v7, OS_LOG_TYPE_DEFAULT, "Garbage collection for asset store %{public}@ removed %u assets.", buf, 0x12u);
  }

  v9 = [[TRIAssetStoreDatabase alloc] initWithPaths:*(*(a1 + 32) + 8) storageManagement:*(*(a1 + 32) + 16)];
  v10 = v9;
  if (v9)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __156__TRIAssetStoreOperator_collectGarbageOlderThanNumScans_deletedAssetSize_ignoreRecentlyCreatedAssets_dryRun_includedCacheDeletableAssetIds_deletedAssetIds___block_invoke_367;
    v14[3] = &__block_descriptor_41_e34_v32__0__TRIFullMAAssetId_8_B16_B24l;
    v14[4] = *(a1 + 56);
    v15 = *(a1 + 77);
    [(TRIAssetStoreDatabase *)v9 enumerateAssetIdsWithoutLiveReferencesUsingBlock:v14];
    if ((*(a1 + 77) & 1) == 0)
    {
      v11 = [MEMORY[0x277CCAA00] defaultManager];
      v12 = [*(a1 + 32) _requireAssetStoreTempDir];
      [v11 removeItemAtPath:v12 error:0];
    }
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __156__TRIAssetStoreOperator_collectGarbageOlderThanNumScans_deletedAssetSize_ignoreRecentlyCreatedAssets_dryRun_includedCacheDeletableAssetIds_deletedAssetIds___block_invoke_367(uint64_t a1, void *a2, _BYTE *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = objc_opt_new();
  v7 = [v6 createAutoAssetWithId:v5 decryptionKey:0 error:0];
  v18 = 0;
  v8 = [v7 currentAssetSizeOnDiskUsingStatus:&v18];
  v9 = v18;
  if ([v8 longLongValue] < 1)
  {
    v10 = TRILogCategory_Server();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v20 = v5;
      v21 = 2114;
      v22 = v9;
      _os_log_error_impl(&dword_26F567000, v10, OS_LOG_TYPE_ERROR, "Failed to get MA asset size for %{public}@ garbage collection: %{public}@", buf, 0x16u);
    }
  }

  else if (*(a1 + 32))
  {
    **(a1 + 32) += [v8 longLongValue];
  }

  v11 = *(a1 + 40);
  v12 = TRILogCategory_Server();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (v11 == 1)
  {
    if (v13)
    {
      *buf = 138543362;
      v20 = v5;
      _os_log_impl(&dword_26F567000, v12, OS_LOG_TYPE_DEFAULT, "(Dry-run) Removing MAAutoAsset: %{public}@", buf, 0xCu);
    }
  }

  else
  {
    if (v13)
    {
      *buf = 138543362;
      v20 = v7;
      _os_log_impl(&dword_26F567000, v12, OS_LOG_TYPE_DEFAULT, "Removing MAAutoAsset: %{public}@", buf, 0xCu);
    }

    *a3 = 1;
    v14 = [v7 assetSelector];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __156__TRIAssetStoreOperator_collectGarbageOlderThanNumScans_deletedAssetSize_ignoreRecentlyCreatedAssets_dryRun_includedCacheDeletableAssetIds_deletedAssetIds___block_invoke_368;
    v16[3] = &unk_279DE25E8;
    v17 = v7;
    [v6 eliminateAllForSelector:v14 completion:v16];

    v12 = v17;
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __156__TRIAssetStoreOperator_collectGarbageOlderThanNumScans_deletedAssetSize_ignoreRecentlyCreatedAssets_dryRun_includedCacheDeletableAssetIds_deletedAssetIds___block_invoke_368(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = TRILogCategory_Server();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v10 = 138543618;
      v11 = v7;
      v12 = 2114;
      v13 = v4;
      _os_log_error_impl(&dword_26F567000, v6, OS_LOG_TYPE_ERROR, "Failed to eliminate MAAutoAsset %{public}@: %{public}@", &v10, 0x16u);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v10 = 138543362;
    v11 = v8;
    _os_log_impl(&dword_26F567000, v6, OS_LOG_TYPE_DEFAULT, "Eliminated MAAutoAsset: %{public}@", &v10, 0xCu);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)_incrementUnrefAgeForAssetWithIdentifier:(id)a3 newValue:(unsigned int *)a4 dryRun:(BOOL)a5
{
  v42 = *MEMORY[0x277D85DE8];
  v9 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_store);
  v11 = WeakRetained;
  if (WeakRetained)
  {
    v12 = [WeakRetained pathForAssetDirWithIdentifier:v9];
    v13 = [v12 stringByAppendingPathComponent:@"unref-age"];

    v39 = 0;
    v14 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfFile:v13 options:0 error:&v39];
    v15 = v39;
    v16 = v15;
    if (v14)
    {
      v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v14 encoding:4];
      if (v17)
      {
        v18 = v17;
        v36 = a2;
        v19 = v16;
        v38 = -1;
        if (![MEMORY[0x277D73748] convertFromString:v17 usingBase:10 toI64:&v38] || (v20 = v38, HIDWORD(v38)))
        {
          v25 = TRILogCategory_Server();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v41 = v18;
            _os_log_error_impl(&dword_26F567000, v25, OS_LOG_TYPE_ERROR, "Failed to decode unref-age content: %{public}@", buf, 0xCu);
          }

          v22 = 0;
LABEL_33:
          v16 = v19;
          goto LABEL_37;
        }

        if (v20 == 0xFFFFFFFF)
        {
          v21 = -1;
        }

        else
        {
          v21 = v20 + 1;
        }

        v16 = v19;
LABEL_23:
        *a4 = v21;
        if (a5)
        {
          v22 = 1;
LABEL_38:

          goto LABEL_39;
        }

        v18 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%u\n", *a4];
        v29 = [v18 dataUsingEncoding:4];

        if (!v29)
        {
          [MEMORY[0x277CCA890] currentHandler];
          v35 = v34 = v16;
          [v35 handleFailureInMethod:v36 object:self file:@"TRIAssetStoreOperator.m" lineNumber:594 description:{@"Invalid parameter not satisfying: %@", @"data"}];

          v16 = v34;
        }

        v37 = 0;
        v30 = [v29 writeToFile:v13 options:0x10000000 error:&v37];
        v19 = v37;
        if ((v30 & 1) == 0)
        {
          v31 = TRILogCategory_Server();
          v16 = v19;
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v41 = v19;
            _os_log_error_impl(&dword_26F567000, v31, OS_LOG_TYPE_ERROR, "Failed to update content of unref-age: %{public}@", buf, 0xCu);
          }

          v22 = 0;
          v14 = v29;
          goto LABEL_37;
        }

        v22 = 1;
        v14 = v29;
        goto LABEL_33;
      }

      v18 = TRILogCategory_Server();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_26F567000, v18, OS_LOG_TYPE_ERROR, "Failed to read non-UTF-8 unref-age.", buf, 2u);
      }
    }

    else
    {
      v23 = [v15 domain];
      v24 = v23;
      if (v23 == *MEMORY[0x277CCA050])
      {
        v36 = a2;
        v26 = v16;
        v27 = [v16 code];

        v28 = v27 == 260;
        v16 = v26;
        if (v28)
        {
          v21 = 1;
          goto LABEL_23;
        }
      }

      else
      {
      }

      v18 = TRILogCategory_Server();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v41 = v16;
        _os_log_error_impl(&dword_26F567000, v18, OS_LOG_TYPE_ERROR, "Failed to read content of unref-age: %{public}@", buf, 0xCu);
      }

      v14 = 0;
    }

    v22 = 0;
LABEL_37:

    goto LABEL_38;
  }

  v13 = TRILogCategory_Server();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_26F567000, v13, OS_LOG_TYPE_ERROR, "Asset store unexpectedly released from asset store operator.", buf, 2u);
  }

  v22 = 0;
LABEL_39:

  v32 = *MEMORY[0x277D85DE8];
  return v22;
}

- (BOOL)_clearUnrefAgeForAssetWithIdentifier:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_store);
  v6 = WeakRetained;
  if (!WeakRetained)
  {
    v8 = TRILogCategory_Server();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v16) = 0;
      _os_log_error_impl(&dword_26F567000, v8, OS_LOG_TYPE_ERROR, "Asset store unexpectedly released from asset store operator.", &v16, 2u);
    }

    goto LABEL_10;
  }

  v7 = [WeakRetained pathForAssetDirWithIdentifier:v4];
  v8 = [v7 stringByAppendingPathComponent:@"unref-age"];

  if (unlink([v8 fileSystemRepresentation]) && *__error() != 2)
  {
    v10 = TRILogCategory_Server();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = __error();
      v14 = strerror(*v13);
      v15 = *__error();
      v16 = 136315394;
      v17 = v14;
      v18 = 1024;
      v19 = v15;
      _os_log_error_impl(&dword_26F567000, v10, OS_LOG_TYPE_ERROR, "Failed to unlink() unref-age: %s (%d)", &v16, 0x12u);
    }

LABEL_10:
    v9 = 0;
    goto LABEL_11;
  }

  v9 = 1;
LABEL_11:

  v11 = *MEMORY[0x277D85DE8];
  return v9;
}

- (id)_collectDeadSymlinks
{
  v4 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained(&self->_store);
  if (WeakRetained)
  {
    *buf = 0;
    v17 = buf;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy__29;
    v20 = __Block_byref_object_dispose__29;
    v21 = objc_opt_new();
    if (*(v17 + 5))
    {
      v14[0] = 0;
      v14[1] = v14;
      v14[2] = 0x2020000000;
      v15 = 0;
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __45__TRIAssetStoreOperator__collectDeadSymlinks__block_invoke;
      v9[3] = &unk_279DE2658;
      v13 = a2;
      v9[4] = self;
      v11 = v14;
      v10 = WeakRetained;
      v12 = buf;
      [v10 enumerateAssetDirsUsingBlock:v9];
      v6 = *(v17 + 5);

      _Block_object_dispose(v14, 8);
    }

    else
    {
      v6 = 0;
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v7 = TRILogCategory_Server();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26F567000, v7, OS_LOG_TYPE_ERROR, "Asset store unexpectedly released from asset store operator.", buf, 2u);
    }

    v6 = 0;
  }

  objc_autoreleasePoolPop(v4);

  return v6;
}

void __45__TRIAssetStoreOperator__collectDeadSymlinks__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [v5 lastPathComponent];
  if (!v6)
  {
    v26 = [MEMORY[0x277CCA890] currentHandler];
    [v26 handleFailureInMethod:*(a1 + 64) object:*(a1 + 32) file:@"TRIAssetStoreOperator.m" lineNumber:647 description:{@"Invalid parameter not satisfying: %@", @"assetIdentifier"}];
  }

  v7 = [MEMORY[0x277CBEBC0] fileURLWithPath:@"refs" relativeToURL:v5];
  v8 = [MEMORY[0x277CCAA00] defaultManager];
  v9 = [v7 path];
  if (!v9)
  {
    v27 = [MEMORY[0x277CCA890] currentHandler];
    [v27 handleFailureInMethod:*(a1 + 64) object:*(a1 + 32) file:@"TRIAssetStoreOperator.m" lineNumber:651 description:{@"Expression was unexpectedly nil/false: %@", @"refsURL.path"}];
  }

  if ([v8 fileExistsAtPath:v9])
  {

    goto LABEL_13;
  }

  v10 = [*(a1 + 32) _hardLinkCountForAssetWithIdentifier:v6];

  if (v10 >= 2)
  {
    v11 = *(*(*(a1 + 48) + 8) + 24);
    v12 = TRILogCategory_Server();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
    if (v11)
    {
      if (v13)
      {
        *buf = 138543362;
        v29 = v6;
LABEL_26:
        _os_log_error_impl(&dword_26F567000, v12, OS_LOG_TYPE_ERROR, "Asset %{public}@ has other hard link references but no refs folder", buf, 0xCu);
      }
    }

    else if (v13)
    {
      *buf = 138543362;
      v29 = v6;
      goto LABEL_26;
    }

    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

LABEL_13:
  v14 = [MEMORY[0x277CCAA00] defaultManager];
  v15 = [v14 enumeratorAtURL:v7 includingPropertiesForKeys:0 options:1 errorHandler:0];

  v16 = objc_autoreleasePoolPush();
  v17 = [v15 nextObject];
  if (v17)
  {
    v18 = v17;
    do
    {
      v19 = [v18 lastPathComponent];
      v20 = [v19 hasPrefix:@"link-"];

      if (v20)
      {
        v21 = [v18 path];
        if (!v21)
        {
          v22 = [MEMORY[0x277CCA890] currentHandler];
          [v22 handleFailureInMethod:*(a1 + 64) object:*(a1 + 32) file:@"TRIAssetStoreOperator.m" lineNumber:670 description:{@"Invalid parameter not satisfying: %@", @"symlinkPath"}];
        }

        if (([*(a1 + 40) isValidTargetForSymlink:v21 assetIdentifier:v6] & 1) == 0 && (objc_msgSend(*(*(*(a1 + 56) + 8) + 40), "addString:", v21) & 1) == 0)
        {
          v23 = *(*(a1 + 56) + 8);
          v24 = *(v23 + 40);
          *(v23 + 40) = 0;

          *a3 = 1;
          break;
        }
      }

      objc_autoreleasePoolPop(v16);
      v16 = objc_autoreleasePoolPush();
      v18 = [v15 nextObject];
    }

    while (v18);
  }

  objc_autoreleasePoolPop(v16);

  v25 = *MEMORY[0x277D85DE8];
}

- (unsigned)_hardLinkCountForAssetWithIdentifier:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v15 = [MEMORY[0x277CCA890] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"TRIAssetStoreOperator.m" lineNumber:688 description:{@"Invalid parameter not satisfying: %@", @"assetIdentifier"}];
  }

  WeakRetained = objc_loadWeakRetained(&self->_store);
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = [WeakRetained pathForAssetContentWithIdentifier:v5];
    v16 = 0;
    v9 = [MEMORY[0x277CCAA00] defaultManager];
    v10 = [v9 fileExistsAtPath:v8 isDirectory:&v16];

    v11 = 0;
    if (v10)
    {
      if (v16)
      {
        v12 = [MEMORY[0x277CCAA00] triArbitraryFileInDirWithPath:v8];
      }

      else
      {
        v12 = v8;
      }

      v13 = v12;
      if (v12)
      {
        v11 = [(TRIAssetStoreOperator *)self _hardLinkCountForFileWithPath:v12];
      }

      else
      {
        v11 = 0;
      }
    }
  }

  else
  {
    v8 = TRILogCategory_Server();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26F567000, v8, OS_LOG_TYPE_ERROR, "Asset store unexpectedly released from asset store operator.", buf, 2u);
    }

    v11 = 0;
  }

  return v11;
}

- (unsigned)_hardLinkCountForFileWithPath:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  memset(&v11, 0, sizeof(v11));
  if (stat([v3 fileSystemRepresentation], &v11))
  {
    v4 = TRILogCategory_Server();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v8 = __error();
      v9 = strerror(*v8);
      v10 = *__error();
      *buf = 138543874;
      v13 = v3;
      v14 = 2080;
      v15 = v9;
      v16 = 1024;
      v17 = v10;
      _os_log_error_impl(&dword_26F567000, v4, OS_LOG_TYPE_ERROR, "Failed to stat file at path %{public}@ to find hard link count: %s (%d)", buf, 0x1Cu);
    }

    st_nlink = 0;
  }

  else
  {
    st_nlink = v11.st_nlink;
  }

  v6 = *MEMORY[0x277D85DE8];
  return st_nlink;
}

- (BOOL)_removeDeadSymlinksWithFlockWitness:(TRIFlockWitness_ *)a3 numRemoved:(unsigned int *)a4
{
  v6 = [(TRIAssetStoreOperator *)self _collectDeadSymlinks];
  if (v6)
  {
    v7 = [(TRIAssetStoreOperator *)self _removePaths:v6 numRemoved:a4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_collectUnreferencedAssetsIncludingLinkTargetsForReferencedAssetIds:(id)a3 ignoreRecentlyCreatedAssets:(BOOL)a4
{
  v7 = a3;
  v8 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained(&self->_store);
  if (WeakRetained)
  {
    *buf = 0;
    v19 = buf;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy__29;
    v22 = __Block_byref_object_dispose__29;
    v23 = objc_opt_new();
    if (*(v19 + 5))
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __121__TRIAssetStoreOperator__collectUnreferencedAssetsIncludingLinkTargetsForReferencedAssetIds_ignoreRecentlyCreatedAssets___block_invoke;
      v13[3] = &unk_279DE2680;
      v16 = a2;
      v13[4] = self;
      v17 = a4;
      v14 = v7;
      v15 = buf;
      [WeakRetained enumerateAssetDirsUsingBlock:v13];
      v10 = *(v19 + 5);
    }

    else
    {
      v10 = 0;
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v11 = TRILogCategory_Server();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26F567000, v11, OS_LOG_TYPE_ERROR, "Asset store unexpectedly released from asset store operator.", buf, 2u);
    }

    v10 = 0;
  }

  objc_autoreleasePoolPop(v8);

  return v10;
}

void __121__TRIAssetStoreOperator__collectUnreferencedAssetsIncludingLinkTargetsForReferencedAssetIds_ignoreRecentlyCreatedAssets___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v35 = [v4 lastPathComponent];
  if (!v35)
  {
    v29 = [MEMORY[0x277CCA890] currentHandler];
    [v29 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"TRIAssetStoreOperator.m" lineNumber:753 description:{@"Invalid parameter not satisfying: %@", @"assetIdentifier"}];
  }

  v34 = v4;
  v5 = [MEMORY[0x277CBEBC0] fileURLWithPath:@"refs" relativeToURL:v4];
  v6 = [MEMORY[0x277CCAA00] defaultManager];
  v33 = v5;
  v7 = [v6 enumeratorAtURL:v5 includingPropertiesForKeys:0 options:1 errorHandler:0];

  v8 = 0;
  while (1)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = [v7 nextObject];
    if (!v10)
    {
      break;
    }

    v11 = v10;
    if (!*(a1 + 40))
    {

      objc_autoreleasePoolPop(v9);
      v19 = v33;
      v18 = v34;
      goto LABEL_26;
    }

    v12 = [v10 path];
    if (!v12)
    {
      v17 = [MEMORY[0x277CCA890] currentHandler];
      [v17 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"TRIAssetStoreOperator.m" lineNumber:773 description:{@"Invalid parameter not satisfying: %@", @"refPath"}];
    }

    v13 = [MEMORY[0x277CCAA00] triTargetPathForSymlink:v12];
    if (v13)
    {
      [*(a1 + 40) objectForKeyedSubscript:v35];
      v15 = v14 = v7;
      v16 = [v15 containsObject:v13];

      v7 = v14;
      v8 |= v16 ^ 1;
    }

    else
    {
      v16 = 1;
    }

    objc_autoreleasePoolPop(v9);
    if ((v16 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  objc_autoreleasePoolPop(v9);
LABEL_14:
  v19 = v33;
  v18 = v34;
  if (v8)
  {
    goto LABEL_26;
  }

  if (*(a1 + 64) != 1)
  {
    goto LABEL_23;
  }

  v20 = *(a1 + 32);
  v21 = [v34 path];
  if (!v21)
  {
    [MEMORY[0x277CCA890] currentHandler];
    v31 = v30 = v7;
    [v31 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"TRIAssetStoreOperator.m" lineNumber:789 description:{@"Expression was unexpectedly nil/false: %@", @"assetIdentifierURL.path"}];

    v7 = v30;
  }

  v22 = [v20 _creationDateForAsset:v21];

  if (!v22 || ([v22 timeIntervalSinceNow], fabs(v23) >= 600.0))
  {
    v24 = TRILogCategory_Server();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 138543618;
      v37 = v34;
      v38 = 2112;
      v39 = v22;
      _os_log_impl(&dword_26F567000, v24, OS_LOG_TYPE_INFO, "Including asset directory %{public}@ for GC (created %@)", buf, 0x16u);
    }

LABEL_23:
    if (([*(*(*(a1 + 48) + 8) + 40) addString:v35] & 1) == 0)
    {
      v25 = *(*(a1 + 48) + 8);
      v26 = *(v25 + 40);
      *(v25 + 40) = 0;

      *a3 = 1;
    }

    goto LABEL_26;
  }

  v28 = TRILogCategory_Server();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    v37 = v34;
    v38 = 2112;
    v39 = v22;
    _os_log_impl(&dword_26F567000, v28, OS_LOG_TYPE_INFO, "Not including asset directory %{public}@ for GC because it's too new (created %@)", buf, 0x16u);
  }

LABEL_26:
  v27 = *MEMORY[0x277D85DE8];
}

- (id)_creationDateForAsset:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v13 = 0;
  v5 = [v4 attributesOfItemAtPath:v3 error:&v13];
  v6 = v13;

  if (v5)
  {
    v7 = [v5 fileCreationDate];
    if (v7)
    {
      v8 = v7;
      v9 = v8;
      goto LABEL_10;
    }

    v10 = TRILogCategory_Server();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v15 = v5;
      v16 = 2114;
      v17 = v3;
      _os_log_error_impl(&dword_26F567000, v10, OS_LOG_TYPE_ERROR, "Couldn't get creation date from file attributes %@ for %{public}@", buf, 0x16u);
    }

    v8 = 0;
  }

  else
  {
    v8 = TRILogCategory_Server();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v15 = v3;
      v16 = 2114;
      v17 = v6;
      _os_log_error_impl(&dword_26F567000, v8, OS_LOG_TYPE_ERROR, "Couldn't read file attributes for %{public}@: %{public}@", buf, 0x16u);
    }
  }

  v9 = 0;
LABEL_10:

  v11 = *MEMORY[0x277D85DE8];

  return v9;
}

void __191__TRIAssetStoreOperator__removeUnreferencedAssetsWithFlockWitness_olderThanAge_numRemoved_deletedAssetsSize_ignoreRecentlyCreatedAssets_dryRun_includedCacheDeletableAssetIds_deletedAssetIds___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = TRIValidateAssetId();
  if (!v2)
  {
    goto LABEL_14;
  }

  v14 = 0;
  if ([*(a1 + 32) _incrementUnrefAgeForAssetWithIdentifier:v2 newValue:&v14 dryRun:*(a1 + 84)])
  {
    v3 = v14;
  }

  else
  {
    v3 = -1;
    v14 = -1;
  }

  if (v3 > *(a1 + 80))
  {
    *buf = 0;
    if ([*(a1 + 32) _removeAssetWithIdentifier:v2 flockWitness:*(a1 + 48) deletedAssetSize:buf dryRun:*(a1 + 84)])
    {
      v4 = *(a1 + 56);
      if (v4)
      {
        ++*v4;
      }

      v5 = *(a1 + 64);
      if (v5)
      {
        *v5 += *buf;
      }

      v6 = *(a1 + 72);
      if (v6)
      {
        if (*v6)
        {
          v7 = *v6;
          v8 = *v6;
          *v6 = v7;
        }

        else
        {
          v11 = objc_opt_new();
          v12 = *(a1 + 72);
          v8 = *v12;
          *v12 = v11;
        }

        [**(a1 + 72) addObject:v2];
      }

      goto LABEL_20;
    }

LABEL_14:
    *(*(*(a1 + 40) + 8) + 24) = 0;
    goto LABEL_20;
  }

  v9 = TRILogCategory_Server();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 80) + 1;
    *buf = 138543874;
    *&buf[4] = v2;
    v16 = 1024;
    v17 = v14;
    v18 = 1024;
    v19 = v10;
    _os_log_impl(&dword_26F567000, v9, OS_LOG_TYPE_DEFAULT, "Asset %{public}@ has been unreferenced for %u sequential scans, has not yet reached threshold of %u.", buf, 0x18u);
  }

LABEL_20:
  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)_removePaths:(id)a3 numRemoved:(unsigned int *)a4
{
  v5 = a3;
  v6 = v5;
  if (a4)
  {
    *a4 = 0;
  }

  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 1;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __49__TRIAssetStoreOperator__removePaths_numRemoved___block_invoke;
  v9[3] = &unk_279DE26D0;
  v9[4] = &v10;
  v9[5] = a4;
  if ([v5 enumerateStringsWithBlock:v9])
  {
    v7 = *(v11 + 24);
  }

  else
  {
    v7 = 0;
  }

  _Block_object_dispose(&v10, 8);

  return v7 & 1;
}

void __49__TRIAssetStoreOperator__removePaths_numRemoved___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 length])
  {
    if (unlink([v3 fileSystemRepresentation]))
    {
      v4 = TRILogCategory_Server();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v7 = __error();
        v8 = strerror(*v7);
        v9 = *__error();
        v10 = 138543874;
        v11 = v3;
        v12 = 2080;
        v13 = v8;
        v14 = 1024;
        v15 = v9;
        _os_log_error_impl(&dword_26F567000, v4, OS_LOG_TYPE_ERROR, "Failed to unlink %{public}@: %s (%d)", &v10, 0x1Cu);
      }

      *(*(*(a1 + 32) + 8) + 24) = 0;
    }

    else
    {
      v5 = *(a1 + 40);
      if (v5)
      {
        ++*v5;
      }
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (BOOL)migrateToGlobalAssetStoreFromLocalAssetStore:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 1;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __70__TRIAssetStoreOperator_migrateToGlobalAssetStoreFromLocalAssetStore___block_invoke;
  v7[3] = &unk_279DE2578;
  v9 = &v10;
  v7[4] = self;
  v5 = v4;
  v8 = v5;
  [(TRIAssetStoreOperator *)self _acquireLockfileInAssetStorePath:v5 andRunBlock:v7];
  LOBYTE(self) = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return self;
}

void __70__TRIAssetStoreOperator_migrateToGlobalAssetStoreFromLocalAssetStore___block_invoke(uint64_t a1, uint64_t a2)
{
  *(*(*(a1 + 48) + 8) + 24) &= [*(a1 + 32) _migrateAssetsDatabaseWithLocalAssetStorePath:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) &= [*(a1 + 32) _migrateAssetContentsWithLocalAssetStorePath:*(a1 + 40) flockWitness:a2];
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    v4 = TRILogCategory_Server();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_26F567000, v4, OS_LOG_TYPE_DEFAULT, "Successfully migrated assets to the global asset store", v5, 2u);
    }
  }
}

- (BOOL)_migrateAssetsDatabaseWithLocalAssetStorePath:(id)a3
{
  v4 = a3;
  v5 = [[TRIAssetStoreDatabase alloc] initWithPaths:self->_paths assetStorePath:v4 storageManagement:0];

  v6 = [[TRIAssetStoreDatabase alloc] initWithPaths:self->_paths storageManagement:self->_storageManagement];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __71__TRIAssetStoreOperator__migrateAssetsDatabaseWithLocalAssetStorePath___block_invoke;
  v9[3] = &unk_279DE26F8;
  v10 = v6;
  v7 = v6;
  LOBYTE(v4) = [(TRIAssetStoreDatabase *)v5 enumerateAllAutoAssetReferencesWithBlock:v9];
  [(TRIAssetStoreDatabase *)v5 closePermanently];
  [(TRIAssetStoreDatabase *)v7 closePermanently];

  return v4;
}

- (BOOL)_migrateAssetContentsWithLocalAssetStorePath:(id)a3 flockWitness:(TRIFlockWitness_ *)a4
{
  v57 = *MEMORY[0x277D85DE8];
  v36 = a3;
  v47 = 0;
  v48 = &v47;
  v49 = 0x2020000000;
  v50 = 1;
  v5 = [(TRIPaths *)self->_paths assetStore];
  v38 = [v5 stringByAppendingPathComponent:@"assets"];

  v37 = [v36 stringByAppendingPathComponent:@"assets"];
  v6 = [MEMORY[0x277CCAA00] defaultManager];
  v7 = [v6 fileExistsAtPath:v38];

  if (v7)
  {
    v8 = [[TRIAssetStore alloc] initWithGlobalPaths:self->_paths];
    v9 = [MEMORY[0x277CCAA00] defaultManager];
    v10 = [MEMORY[0x277CBEBC0] fileURLWithPath:v37];
    v11 = [v9 enumeratorAtURL:v10 includingPropertiesForKeys:0 options:1 errorHandler:0];

    do
    {
      v12 = objc_autoreleasePoolPush();
      v13 = [v11 nextObject];
      v14 = v13;
      if (v13)
      {
        v15 = [v13 lastPathComponent];
        if (v15)
        {
          v16 = [v14 path];
          if (v16)
          {
            v17 = [MEMORY[0x277D73728] arrayFromDirectory:v16];
            if (v17)
            {
              v39[0] = MEMORY[0x277D85DD0];
              v39[1] = 3221225472;
              v39[2] = __83__TRIAssetStoreOperator__migrateAssetContentsWithLocalAssetStorePath_flockWitness___block_invoke;
              v39[3] = &unk_279DE2720;
              v40 = v38;
              v41 = v15;
              v18 = v8;
              v43 = self;
              v44 = &v47;
              v42 = v18;
              v19 = [v17 enumerateStringsWithBlock:v39];
              *(v48 + 24) &= v19;

              v20 = v40;
            }

            else
            {
              v20 = TRILogCategory_Server();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v52 = v15;
                _os_log_error_impl(&dword_26F567000, v20, OS_LOG_TYPE_ERROR, "Couldn't locate asset folders for short hash: %@", buf, 0xCu);
              }
            }
          }

          else
          {
            v17 = TRILogCategory_Server();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v52 = v14;
              _os_log_error_impl(&dword_26F567000, v17, OS_LOG_TYPE_ERROR, "Local asset url and hash is non-nil but the path is nil: %{public}@", buf, 0xCu);
            }
          }
        }

        else
        {
          v16 = TRILogCategory_Server();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v21 = [v14 path];
            *buf = 138543362;
            v52 = v21;
            _os_log_error_impl(&dword_26F567000, v16, OS_LOG_TYPE_ERROR, "Invalid short hash found in local asset store url: %{public}@", buf, 0xCu);
          }
        }
      }

      objc_autoreleasePoolPop(v12);
    }

    while (v14);
    v30 = *(v48 + 24);
  }

  else
  {
    v22 = TRILogCategory_Server();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v52 = v38;
      _os_log_impl(&dword_26F567000, v22, OS_LOG_TYPE_INFO, "No global assets folder exists at %@. Copying the entirety of the local assets folder.", buf, 0xCu);
    }

    v23 = [MEMORY[0x277CCAA00] defaultManager];
    v24 = [v38 stringByDeletingLastPathComponent];
    v46 = 0;
    v25 = [v23 createDirectoryAtPath:v24 withIntermediateDirectories:1 attributes:0 error:&v46];
    v26 = v46;

    if ((v25 & 1) == 0)
    {
      v27 = TRILogCategory_Server();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v34 = [v26 localizedDescription];
        *buf = 138543618;
        v52 = v38;
        v53 = 2112;
        v54 = v34;
        _os_log_error_impl(&dword_26F567000, v27, OS_LOG_TYPE_ERROR, "Failed to create global assets folder: %{public}@ with error:%@", buf, 0x16u);
      }

      *(v48 + 24) = 0;
    }

    v28 = [MEMORY[0x277CCAA00] defaultManager];
    v45 = v26;
    v29 = [v28 moveItemAtPath:v37 toPath:v38 error:&v45];
    v8 = v45;

    if (v29)
    {
      v30 = *(v48 + 24);
    }

    else
    {
      v31 = TRILogCategory_Server();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v35 = [(TRIAssetStore *)v8 localizedDescription];
        *buf = 138543874;
        v52 = v37;
        v53 = 2114;
        v54 = v38;
        v55 = 2112;
        v56 = v35;
        _os_log_error_impl(&dword_26F567000, v31, OS_LOG_TYPE_ERROR, "Failed to move local assets folder to the global assets folder: %{public}@ to %{public}@ with error:%@", buf, 0x20u);
      }

      v30 = 0;
      *(v48 + 24) = 0;
    }
  }

  _Block_object_dispose(&v47, 8);
  v32 = *MEMORY[0x277D85DE8];
  return v30 & 1;
}

void __83__TRIAssetStoreOperator__migrateAssetContentsWithLocalAssetStorePath_flockWitness___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 lastPathComponent];
  v5 = TRIValidateAssetId();

  if (v5 && [v5 length])
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 32);
    v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@/%@/", *(a1 + 40), v5];
    v9 = [v7 stringByAppendingPathComponent:v8];

    objc_autoreleasePoolPop(v6);
    LODWORD(v8) = [*(a1 + 48) hasAssetWithIdentifier:v5 type:0];
    v10 = TRILogCategory_Server();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      if (v11)
      {
        *buf = 138543362;
        v21 = v5;
        _os_log_impl(&dword_26F567000, v10, OS_LOG_TYPE_DEFAULT, "Asset already present in the global asset store. Updating references - AssetId: %{public}@", buf, 0xCu);
      }

      *(*(*(a1 + 64) + 8) + 24) &= [*(a1 + 56) _relinkLocalAssetToGlobalAssetStore:*(a1 + 48) withAssetId:v5 localAssetDir:v3];
    }

    else
    {
      if (v11)
      {
        *buf = 138543362;
        v21 = v5;
        _os_log_impl(&dword_26F567000, v10, OS_LOG_TYPE_DEFAULT, "Asset not present in the global asset store. Migrating asset to the global store - AssetId: %{public}@", buf, 0xCu);
      }

      v12 = [MEMORY[0x277CCAA00] defaultManager];
      v13 = [v9 stringByDeletingLastPathComponent];
      v19 = 0;
      v14 = [v12 createDirectoryAtPath:v13 withIntermediateDirectories:1 attributes:0 error:&v19];
      v15 = v19;

      if ((v14 & 1) == 0)
      {
        v16 = TRILogCategory_Server();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v18 = [v15 localizedDescription];
          *buf = 138543618;
          v21 = v9;
          v22 = 2112;
          v23 = v18;
          _os_log_error_impl(&dword_26F567000, v16, OS_LOG_TYPE_ERROR, "Failed to create asset directory in global asset store: %{public}@ with error:%@", buf, 0x16u);
        }

        *(*(*(a1 + 64) + 8) + 24) = 0;
      }

      if (([MEMORY[0x277CCAA00] triForceRenameWithSourcePath:v3 destPath:v9] & 1) == 0)
      {
        *(*(*(a1 + 64) + 8) + 24) = 0;
      }
    }
  }

  else
  {
    v9 = TRILogCategory_Server();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v21 = v3;
      _os_log_error_impl(&dword_26F567000, v9, OS_LOG_TYPE_ERROR, "Invalid asset Id in local asset store: %{public}@", buf, 0xCu);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (BOOL)_relinkLocalAssetToGlobalAssetStore:(id)a3 withAssetId:(id)a4 localAssetDir:(id)a5
{
  v36 = *MEMORY[0x277D85DE8];
  v31 = a3;
  v9 = a4;
  v30 = a5;
  v29 = [MEMORY[0x277CBEBC0] fileURLWithPath:?];
  v10 = [MEMORY[0x277CBEBC0] fileURLWithPath:@"refs" relativeToURL:?];
  v11 = [MEMORY[0x277CCAA00] defaultManager];
  v12 = 1;
  v28 = v10;
  v13 = [v11 enumeratorAtURL:v10 includingPropertiesForKeys:0 options:1 errorHandler:0];

  v14 = objc_autoreleasePoolPush();
  v15 = [v13 nextObject];
  if (v15)
  {
    v16 = v15;
    v27 = a2;
    v12 = 1;
    do
    {
      v17 = [v16 lastPathComponent];
      v18 = [v17 hasPrefix:@"link-"];

      if (v18)
      {
        v19 = [v16 path];
        if (!v19)
        {
          v22 = [MEMORY[0x277CCA890] currentHandler];
          [v22 handleFailureInMethod:v27 object:self file:@"TRIAssetStoreOperator.m" lineNumber:1076 description:{@"Invalid parameter not satisfying: %@", @"symlinkPath"}];
        }

        v20 = [MEMORY[0x277CCAA00] triTargetPathForSymlink:v19];
        if (!v20 || ([v31 linkAssetWithIdentifier:v9 toPath:v20] & 1) == 0)
        {
          v21 = TRILogCategory_Server();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v33 = v20;
            _os_log_error_impl(&dword_26F567000, v21, OS_LOG_TYPE_ERROR, "Failed to link from the global asset store to local treatment asset: %{public}@", buf, 0xCu);
          }

          v12 = 0;
        }
      }

      objc_autoreleasePoolPop(v14);
      v14 = objc_autoreleasePoolPush();
      v16 = [v13 nextObject];
    }

    while (v16);
  }

  objc_autoreleasePoolPop(v14);
  v23 = TRILogCategory_Server();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    v24 = @"failed";
    if (v12)
    {
      v24 = @"completed successfully";
    }

    *buf = 138543618;
    v33 = v9;
    v34 = 2112;
    v35 = v24;
    _os_log_impl(&dword_26F567000, v23, OS_LOG_TYPE_INFO, "Re-linking references to asset id %{public}@ to the global directory %@.", buf, 0x16u);
  }

  v25 = *MEMORY[0x277D85DE8];
  return v12 & 1;
}

- (BOOL)_acquireLockfileAndRunBlock:(id)a3
{
  v3 = self;
  paths = self->_paths;
  v5 = a3;
  v6 = [(TRIPaths *)paths assetStore];
  LOBYTE(v3) = [(TRIAssetStoreOperator *)v3 _acquireLockfileInAssetStorePath:v6 andRunBlock:v5];

  return v3;
}

- (BOOL)_acquireLockfileInAssetStorePath:(id)a3 andRunBlock:(id)a4
{
  v39 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = objc_autoreleasePoolPush();
  v8 = [MEMORY[0x277CCAA00] defaultManager];
  v32 = 0;
  v9 = [v8 createDirectoryAtPath:v5 withIntermediateDirectories:1 attributes:0 error:&v32];
  v10 = v32;

  if ((v9 & 1) == 0)
  {
    v11 = TRILogCategory_Server();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v34 = v10;
      _os_log_error_impl(&dword_26F567000, v11, OS_LOG_TYPE_ERROR, "Failed to create AssetStore: %{public}@", buf, 0xCu);
    }
  }

  v12 = [v5 stringByAppendingPathComponent:@"lock"];
  v13 = v12;
  v14 = open([v12 fileSystemRepresentation], 514, 432);
  v15 = v14;
  if (v14 < 0)
  {
    v18 = TRILogCategory_Server();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v26 = __error();
      v27 = strerror(*v26);
      v28 = *__error();
      *buf = 138543874;
      v34 = v12;
      v35 = 2080;
      v36 = v27;
      v37 = 1024;
      v38 = v28;
      _os_log_error_impl(&dword_26F567000, v18, OS_LOG_TYPE_ERROR, "Failed to open lockfile %{public}@: %s (%d)", buf, 0x1Cu);
    }

    v17 = 0;
  }

  else
  {
    if (flock(v14, 2))
    {
      v16 = TRILogCategory_Server();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v23 = __error();
        v24 = strerror(*v23);
        v25 = *__error();
        *buf = 138543874;
        v34 = v12;
        v35 = 2080;
        v36 = v24;
        v37 = 1024;
        v38 = v25;
        _os_log_error_impl(&dword_26F567000, v16, OS_LOG_TYPE_ERROR, "Failed to acquire lockfile %{public}@: %s (%d)", buf, 0x1Cu);
      }

      v17 = 0;
    }

    else
    {
      v19 = objc_autoreleasePoolPush();
      *buf = v15;
      v6[2](v6, buf);
      objc_autoreleasePoolPop(v19);
      if (flock(v15, 8))
      {
        v20 = TRILogCategory_Server();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v29 = __error();
          v30 = strerror(*v29);
          v31 = *__error();
          *buf = 138543874;
          v34 = v12;
          v35 = 2080;
          v36 = v30;
          v37 = 1024;
          v38 = v31;
          _os_log_error_impl(&dword_26F567000, v20, OS_LOG_TYPE_ERROR, "Failed to unlock lockfile %{public}@: %s (%d)", buf, 0x1Cu);
        }
      }

      v17 = 1;
    }

    close(v15);
  }

  objc_autoreleasePoolPop(v7);
  v21 = *MEMORY[0x277D85DE8];
  return v17 & 1;
}

- (id)_requireAssetStoreTempDir
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [(TRIPaths *)self->_paths assetStore];
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

- (BOOL)_fixFileProtectionForFileURL:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v26 = 0;
  v6 = *MEMORY[0x277CBE868];
  v25 = 0;
  v7 = [v5 getResourceValue:&v26 forKey:v6 error:&v25];
  v8 = v26;
  v9 = v25;
  if (!v7)
  {
    v11 = TRILogCategory_Server();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v33.st_dev = 138543618;
      *&v33.st_mode = v5;
      WORD2(v33.st_ino) = 2114;
      *(&v33.st_ino + 6) = v9;
      v12 = "Failed to determine if url %{public}@ is a directory: %{public}@";
      v13 = &v33;
      v14 = v11;
      v15 = 22;
LABEL_12:
      _os_log_error_impl(&dword_26F567000, v14, OS_LOG_TYPE_ERROR, v12, v13, v15);
    }

LABEL_13:

    v10 = 0;
    goto LABEL_14;
  }

  if (([v8 BOOLValue] & 1) == 0)
  {
    memset(&v33, 0, sizeof(v33));
    if (stat([v5 fileSystemRepresentation], &v33))
    {
      v11 = TRILogCategory_Server();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v28 = v5;
        v12 = "Could not stat: %{public}@";
        v13 = buf;
        v14 = v11;
        v15 = 12;
        goto LABEL_12;
      }
    }

    else
    {
      if (!chmod([v5 fileSystemRepresentation], 0x1F8u))
      {
        v21 = MEMORY[0x277CCAA00];
        v22 = [v5 path];
        if (!v22)
        {
          v24 = [MEMORY[0x277CCA890] currentHandler];
          [v24 handleFailureInMethod:a2 object:self file:@"TRIAssetStoreOperator.m" lineNumber:1187 description:{@"Expression was unexpectedly nil/false: %@", @"fileURL.path"}];
        }

        [v21 triRemoveFileProtectionIfPresentForPath:v22];

        v23 = [v5 fileSystemRepresentation];
        chmod(v23, v33.st_mode & 0x124);
        goto LABEL_3;
      }

      v11 = TRILogCategory_Server();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v16 = __error();
        v17 = strerror(*v16);
        v18 = *__error();
        *buf = 138543874;
        v28 = v5;
        v29 = 2080;
        v30 = v17;
        v31 = 1024;
        v32 = v18;
        v12 = "Failed to adjust permissions on temp dir: %{public}@ %s (%d)";
        v13 = buf;
        v14 = v11;
        v15 = 28;
        goto LABEL_12;
      }
    }

    goto LABEL_13;
  }

LABEL_3:
  v10 = 1;
LABEL_14:

  v19 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)fixFileProtectionForAssetStoreFiles
{
  WeakRetained = objc_loadWeakRetained(&self->_store);
  v5 = WeakRetained;
  if (WeakRetained)
  {
    *buf = 0;
    v15 = buf;
    v16 = 0x2020000000;
    v17 = 1;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __60__TRIAssetStoreOperator_fixFileProtectionForAssetStoreFiles__block_invoke;
    v9[3] = &unk_279DE2770;
    v10 = WeakRetained;
    v11 = self;
    v12 = buf;
    v13 = a2;
    [(TRIAssetStoreOperator *)self _acquireLockfileAndRunBlock:v9];
    v6 = v15[24];

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v7 = TRILogCategory_Server();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26F567000, v7, OS_LOG_TYPE_ERROR, "Asset store unexpectedly released from asset store operator.", buf, 2u);
    }

    v6 = 0;
  }

  return v6 & 1;
}

uint64_t __60__TRIAssetStoreOperator_fixFileProtectionForAssetStoreFiles__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __60__TRIAssetStoreOperator_fixFileProtectionForAssetStoreFiles__block_invoke_2;
  v3[3] = &unk_279DE2748;
  v5 = *(a1 + 56);
  v4 = *(a1 + 40);
  return [v1 enumerateAssetDirsUsingBlock:v3];
}

void __60__TRIAssetStoreOperator_fixFileProtectionForAssetStoreFiles__block_invoke_2(uint64_t a1, void *a2)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 lastPathComponent];
  if (!v4)
  {
    v16 = [MEMORY[0x277CCA890] currentHandler];
    [v16 handleFailureInMethod:*(a1 + 48) object:*(a1 + 32) file:@"TRIAssetStoreOperator.m" lineNumber:1212 description:{@"Invalid parameter not satisfying: %@", @"assetIdentifier"}];
  }

  v5 = [MEMORY[0x277CBEBC0] fileURLWithPath:@"content" relativeToURL:v3];
  v19 = 0;
  v6 = [MEMORY[0x277CCAA00] defaultManager];
  v7 = [v5 path];
  if (!v7)
  {
    v17 = [MEMORY[0x277CCA890] currentHandler];
    [v17 handleFailureInMethod:*(a1 + 48) object:*(a1 + 32) file:@"TRIAssetStoreOperator.m" lineNumber:1216 description:{@"Expression was unexpectedly nil/false: %@", @"contentURL.path"}];
  }

  v8 = [v6 fileExistsAtPath:v7 isDirectory:&v19];

  if (v8)
  {
    if (v19)
    {
      v9 = [MEMORY[0x277CCAA00] defaultManager];
      v20[0] = *MEMORY[0x277CBE868];
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __60__TRIAssetStoreOperator_fixFileProtectionForAssetStoreFiles__block_invoke_3;
      v18[3] = &unk_279DE2410;
      v18[4] = *(a1 + 40);
      v11 = [v9 enumeratorAtURL:v5 includingPropertiesForKeys:v10 options:0 errorHandler:v18];

      v12 = objc_autoreleasePoolPush();
      v13 = [v11 nextObject];
      if (v13)
      {
        v14 = v13;
        do
        {
          *(*(*(a1 + 40) + 8) + 24) &= [*(a1 + 32) _fixFileProtectionForFileURL:v14];

          objc_autoreleasePoolPop(v12);
          v12 = objc_autoreleasePoolPush();
          v14 = [v11 nextObject];
        }

        while (v14);
      }

      objc_autoreleasePoolPop(v12);
    }

    else
    {
      *(*(*(a1 + 40) + 8) + 24) &= [*(a1 + 32) _fixFileProtectionForFileURL:v5];
    }
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t __60__TRIAssetStoreOperator_fixFileProtectionForAssetStoreFiles__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = TRILogCategory_Server();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543618;
    v11 = v5;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_26F567000, v7, OS_LOG_TYPE_DEFAULT, "Encountered error while enumerating over assets to fix file protection for %{public}@: %@", &v10, 0x16u);
  }

  *(*(*(a1 + 32) + 8) + 24) = 0;
  v8 = *MEMORY[0x277D85DE8];
  return 1;
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
    [(TRIAssetStoreOperator *)self _fixupPermissionsOnPath:v7 permissionBits:v12];
    v9 = 1;
    goto LABEL_19;
  }

  if (*__error() == 17 || *__error() == 66 || *__error() == 21 || *__error() == 20)
  {
    v9 = [(TRIAssetStoreOperator *)self _nonAtomicOverwriteWithSrc:v6 dest:v7 finalPermissionBits:v12];
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

  [(TRIAssetStoreOperator *)self _fixupPermissionsOnPath:v6 permissionBits:v12];
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
  v10 = [(TRIAssetStoreOperator *)self _requireAssetStoreTempDir];
  v11 = objc_opt_new();
  v12 = [v11 UUIDString];
  v13 = [v10 stringByAppendingPathComponent:v12];

  v14 = [v9 fileSystemRepresentation];
  v15 = [v13 fileSystemRepresentation];
  rename(v14, v15, v16);
  if (v17)
  {
    [(TRIAssetStoreOperator *)self _fixupPermissionsOnPath:v8 permissionBits:a5];
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
      [(TRIAssetStoreOperator *)self _fixupPermissionsOnPath:v9 permissionBits:a5];
      [(TRIAssetStoreOperator *)self _forceRemoveItemAtPath:v13];
      v30 = 1;
      goto LABEL_7;
    }

    v27 = [v13 fileSystemRepresentation];
    v28 = [v9 fileSystemRepresentation];
    rename(v27, v28, v29);
    [(TRIAssetStoreOperator *)self _fixupPermissionsOnPath:v8 permissionBits:a5];
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

@end