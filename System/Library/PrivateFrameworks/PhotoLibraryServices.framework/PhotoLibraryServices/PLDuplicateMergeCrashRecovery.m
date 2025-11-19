@interface PLDuplicateMergeCrashRecovery
- (BOOL)removeCrashRecoveryMarkerFileWithError:(id *)a3;
- (BOOL)writeCrashRecoveryMarkerFileForTargetAssetUUID:(id)a3 error:(id *)a4;
- (PLDuplicateMergeCrashRecovery)initWithLibraryServicesManager:(id)a3;
- (PLDuplicateMergeCrashRecovery)initWithPhotoLibrary:(id)a3;
- (id)_crashRecoveryMarkerFileURL;
- (id)_readCrashRecoveryUUIDContainerMarkerFile;
- (id)_readCrashRecoveryUUIDListMarkerFile;
- (int64_t)_requestRecoveryActionForAsset:(id)a3;
- (void)_performCrashRecoveryIfNeededWithUUIDs:(id)a3;
- (void)_recoveryMasterRecordCleanupForAsset:(id)a3;
- (void)_recoveryMasterResourceRecordCleanupForAsset:(id)a3;
- (void)performCrashRecoveryIfNeeded;
@end

@implementation PLDuplicateMergeCrashRecovery

- (void)_recoveryMasterResourceRecordCleanupForAsset:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 masterResourceForCPLType:1];
  v5 = [v4 cplFileURL];
  if (![v5 checkResourceIsReachableAndReturnError:0])
  {
    v8 = [v3 master];
    v9 = [v8 scopedIdentifier];
    v6 = [v9 identifier];

    v7 = [v4 fingerprint];
    if (-[NSObject length](v6, "length") && [v7 length])
    {
      [v4 setFingerprint:v6];
      v10 = [v3 additionalAttributes];
      v11 = [v10 originalStableHash];
      [v4 setStableHash:v11];
    }

    goto LABEL_7;
  }

  v6 = PLDuplicateDetectionGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = [v3 uuid];
    v12 = 138543362;
    v13 = v7;
    _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_ERROR, "Duplicate Merge: Unexpected original resource on disk for asset %{public}@.", &v12, 0xCu);
LABEL_7:
  }
}

- (void)_recoveryMasterRecordCleanupForAsset:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 master];
  if (v5)
  {
    v6 = PLDuplicateDetectionGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v5 scopedIdentifier];
      v8 = [v4 uuid];
      v11 = 138543618;
      v12 = v7;
      v13 = 2114;
      v14 = v8;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEFAULT, "Duplicate Merge: Deleting master %{public}@ so a new master is created for asset %{public}@", &v11, 0x16u);
    }

    [v4 setMaster:0];
    [PLCloudMaster deleteMasterIfNecessary:v5 inLibrary:self->_library];
  }

  v9 = PLDuplicateDetectionGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v4 uuid];
    v11 = 138543362;
    v12 = v10;
    _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_DEFAULT, "Duplicate Merge: Marking asset %{public}@ as not pushed to get it re-pushed to CPL", &v11, 0xCu);
  }

  [v4 setCloudLocalState:0];
}

- (int64_t)_requestRecoveryActionForAsset:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 master];
  if (v6)
  {
    v7 = [v5 mainFileURL];
    v8 = [v6 scopedIdentifier];
    v9 = [v8 identifier];

    if (v9)
    {
      v10 = [v6 fingerprintScheme];
      if (!v10)
      {
        v26 = [MEMORY[0x1E696AAA8] currentHandler];
        [v26 handleFailureInMethod:a2 object:self file:@"PLDuplicateMergeCrashRecovery.m" lineNumber:236 description:{@"Failed to get fingerprint scheme from %@", v6}];
      }

      v28 = 0;
      v11 = [v7 checkResourceIsReachableAndReturnError:&v28];
      v12 = v28;
      v13 = v12;
      if (v11)
      {
        v27 = v12;
        v14 = [v10 fingerPrintForFileAtURL:v7 error:&v27];
        v15 = v27;

        if (v14)
        {
          v16 = [v9 isEqualToString:v14] ^ 1;
        }

        else
        {
          v22 = PLDuplicateDetectionGetLog();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            v23 = [v5 uuid];
            v24 = [v10 fingerprintSchemeDescription];
            *buf = 138543874;
            v30 = v23;
            v31 = 2114;
            v32 = v24;
            v33 = 2112;
            v34 = v15;
            _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_ERROR, "Duplicate Merge: Failed to generate fingerprint from %{public}@ for asset %{public}@. Error: %@", buf, 0x20u);
          }

          v14 = 0;
          v16 = 0;
        }
      }

      else
      {
        v17 = PLIsErrorFileNotFound();
        v18 = PLDuplicateDetectionGetLog();
        v14 = v18;
        if (v17)
        {
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            v19 = [v5 uuid];
            *buf = 138543618;
            v30 = v19;
            v31 = 2112;
            v32 = v13;
            _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_INFO, "Duplicate Merge: No master resource found for asset %{public}@. Error: %@", buf, 0x16u);
          }

          v14 = [v5 masterResourceForCPLType:1];
          v20 = [v14 fingerprint];
          if (v20)
          {
            if ([v9 isEqualToString:v20])
            {
              v16 = 0;
            }

            else
            {
              v16 = 2;
            }
          }

          else
          {
            v16 = 0;
          }
        }

        else
        {
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            v21 = [v5 uuid];
            *buf = 138543618;
            v30 = v21;
            v31 = 2112;
            v32 = v13;
            _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_ERROR, "Duplicate Merge: Failed to check if the resource is available on disk for asset %{public}@. Error: %@", buf, 0x16u);
          }

          v16 = 0;
        }

        v15 = v13;
      }
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)_performCrashRecoveryIfNeededWithUUIDs:(id)a3
{
  v14[2] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695D5E0];
  v5 = a3;
  v6 = +[PLManagedAsset entityName];
  v7 = [v4 fetchRequestWithEntityName:v6];

  v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K in %@", @"uuid", v5];

  [v7 setPredicate:v8];
  v14[0] = @"master";
  v14[1] = @"modernResources";
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
  [v7 setRelationshipKeyPathsForPrefetching:v9];

  library = self->_library;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __72__PLDuplicateMergeCrashRecovery__performCrashRecoveryIfNeededWithUUIDs___block_invoke;
  v12[3] = &unk_1E7578848;
  v12[4] = self;
  v13 = v7;
  v11 = v7;
  [(PLPhotoLibrary *)library performTransactionAndWait:v12];
  [(PLDuplicateMergeCrashRecovery *)self removeCrashRecoveryMarkerFileWithError:0];
}

void __72__PLDuplicateMergeCrashRecovery__performCrashRecoveryIfNeededWithUUIDs___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 8) managedObjectContext];
  v3 = *(a1 + 40);
  v24 = 0;
  v4 = [v2 executeFetchRequest:v3 error:&v24];
  v5 = v24;

  if (v4)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v20 objects:v29 count:16];
    if (v7)
    {
      v8 = v7;
      v18 = v5;
      v19 = v4;
      v9 = *v21;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v21 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v20 + 1) + 8 * i);
          v12 = PLDuplicateDetectionGetLog();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v13 = [v11 uuid];
            *buf = 138543362;
            v26 = v13;
            _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEFAULT, "Duplicate Merge: Crash recovery marker file found for asset UUID %{public}@", buf, 0xCu);
          }

          v14 = [*(a1 + 32) _requestRecoveryActionForAsset:v11];
          v15 = PLDuplicateDetectionGetLog();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v16 = [v11 uuid];
            v17 = PLStringFromPLDuplicateMergeCrashRecoveryActionShort(v14);
            *buf = 138543618;
            v26 = v16;
            v27 = 2114;
            v28 = v17;
            _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_DEFAULT, "Duplicate Merge: Crash recovery action for asset %{public}@: %{public}@", buf, 0x16u);
          }

          if (v14 == 2)
          {
            [*(a1 + 32) _recoveryMasterResourceRecordCleanupForAsset:v11];
          }

          else if (v14 == 1)
          {
            [*(a1 + 32) _recoveryMasterRecordCleanupForAsset:v11];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v20 objects:v29 count:16];
      }

      while (v8);
      v5 = v18;
      v4 = v19;
    }
  }

  else
  {
    v6 = PLDuplicateDetectionGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v26 = v5;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_ERROR, "Duplicate Merge: Crash recovery marker file exists but we're unable to fetch associated assets. Error: %@", buf, 0xCu);
    }
  }
}

- (void)performCrashRecoveryIfNeeded
{
  v21[2] = *MEMORY[0x1E69E9840];
  v4 = [(PLDuplicateMergeCrashRecovery *)self _readCrashRecoveryUUIDContainerMarkerFile];
  if ([v4 count])
  {
    v5 = dispatch_semaphore_create(0);
    v6 = [(PLPhotoLibrary *)self->_library fingerprintContext];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = [MEMORY[0x1E6994AD8] sharedContext];
    }

    v9 = v8;

    v10 = [objc_opt_class() description];
    v21[0] = v10;
    v11 = NSStringFromSelector(a2);
    v21[1] = v11;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __61__PLDuplicateMergeCrashRecovery_performCrashRecoveryIfNeeded__block_invoke;
    v17[3] = &unk_1E7575FA8;
    v13 = v5;
    v18 = v13;
    [v9 refreshBoundaryKeyWithSource:v12 completionHandler:v17];

    v14 = dispatch_time(0, 10000000000);
    if (dispatch_semaphore_wait(v13, v14))
    {
      v15 = PLDuplicateDetectionGetLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = NSStringFromSelector(a2);
        *buf = 138412290;
        v20 = v16;
        _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_ERROR, "Refreshing boundary key for %@ took too long", buf, 0xCu);
      }
    }

    else
    {
      [(PLDuplicateMergeCrashRecovery *)self _performCrashRecoveryIfNeededWithUUIDs:v4];
    }
  }

  else
  {
    [(PLDuplicateMergeCrashRecovery *)self removeCrashRecoveryMarkerFileWithError:0];
  }
}

- (BOOL)removeCrashRecoveryMarkerFileWithError:(id *)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = [(PLDuplicateMergeCrashRecovery *)self _crashRecoveryMarkerFileURL];
  v5 = [MEMORY[0x1E696AC08] defaultManager];
  v12 = 0;
  v6 = [v5 removeItemAtURL:v4 error:&v12];
  v7 = v12;

  if (v6 & 1) != 0 || (PLIsErrorFileNotFound())
  {
    v8 = 1;
  }

  else
  {
    v10 = PLDuplicateDetectionGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v14 = v7;
      _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_ERROR, "Duplicate Merge: Failed to remove crash recovery marker file: %@", buf, 0xCu);
    }

    if (a3)
    {
      v11 = v7;
      v8 = 0;
      *a3 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (BOOL)writeCrashRecoveryMarkerFileForTargetAssetUUID:(id)a3 error:(id *)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if ([v6 length])
  {
    v7 = [(PLDuplicateMergeCrashRecovery *)self _crashRecoveryMarkerFileURL];
    v8 = [MEMORY[0x1E696AC08] defaultManager];
    v9 = [v7 path];
    v10 = [v8 fileExistsAtPath:v9];

    if (v10)
    {
      v25 = 0;
      v11 = [MEMORY[0x1E696AC00] fileHandleForUpdatingURL:v7 error:&v25];
      v12 = v25;
      if (v11)
      {
        v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", @", ", v6];
        v14 = [v13 dataUsingEncoding:4];
        [v11 seekToEndOfFile];
        [v11 writeData:v14];
        [v11 closeFile];
        v15 = PLDuplicateDetectionGetLog();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          *buf = 138543362;
          v27 = v6;
          _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_INFO, "Duplicate Merge: Successfully updated crash recovery marker file for asset UUID %{public}@", buf, 0xCu);
        }

LABEL_11:
        v19 = v12;
        v16 = 1;
LABEL_20:

        goto LABEL_21;
      }

      v11 = PLDuplicateDetectionGetLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v27 = v6;
        v28 = 2112;
        v29 = v12;
        v20 = "Duplicate Merge: Failed to update crash recovery marker file for asset UUID %{public}@: %@";
        goto LABEL_16;
      }
    }

    else
    {
      v24 = 0;
      v17 = [v6 writeToURL:v7 atomically:1 encoding:4 error:&v24];
      v12 = v24;
      v18 = PLDuplicateDetectionGetLog();
      v11 = v18;
      if (v17)
      {
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          *buf = 138543362;
          v27 = v6;
          _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_INFO, "Duplicate Merge: Successfully created crash recovery marker file for asset UUID %{public}@", buf, 0xCu);
        }

        goto LABEL_11;
      }

      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v27 = v6;
        v28 = 2112;
        v29 = v12;
        v20 = "Duplicate Merge: Failed to create crash recovery marker file for asset UUID %{public}@: %@";
LABEL_16:
        _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_ERROR, v20, buf, 0x16u);
      }
    }

    v21 = v12;
    v19 = v21;
    if (a4)
    {
      v22 = v21;
      v16 = 0;
      *a4 = v19;
    }

    else
    {
      v16 = 0;
    }

    goto LABEL_20;
  }

  v16 = 1;
LABEL_21:

  return v16;
}

- (id)_readCrashRecoveryUUIDListMarkerFile
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = [(PLDuplicateMergeCrashRecovery *)self _crashRecoveryMarkerFileURL];
  v7 = 0;
  v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithContentsOfURL:v2 encoding:4 error:&v7];
  v4 = v7;
  if (!v3 && (PLIsErrorFileNotFound() & 1) == 0)
  {
    v5 = PLDuplicateDetectionGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v9 = v4;
      _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_ERROR, "Duplicate Merge: Failed to read the crash recovery marker file: %@", buf, 0xCu);
    }
  }

  if (![v3 length])
  {

    v3 = 0;
  }

  return v3;
}

- (id)_readCrashRecoveryUUIDContainerMarkerFile
{
  v2 = [(PLDuplicateMergeCrashRecovery *)self _readCrashRecoveryUUIDListMarkerFile];
  v3 = [v2 componentsSeparatedByString:{@", "}];

  return v3;
}

- (id)_crashRecoveryMarkerFileURL
{
  v2 = MEMORY[0x1E695DFF8];
  v3 = [(PLPhotoLibraryPathManager *)self->_pathManager photoDirectoryWithType:5 createIfNeeded:1 error:0];
  v4 = [v3 stringByAppendingPathComponent:@"duplicateMergeMarkerFile.txt"];
  v5 = [v2 fileURLWithPath:v4 isDirectory:0];

  return v5;
}

- (PLDuplicateMergeCrashRecovery)initWithPhotoLibrary:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PLDuplicateMergeCrashRecovery.m" lineNumber:62 description:{@"Invalid parameter not satisfying: %@", @"library"}];
  }

  v13.receiver = self;
  v13.super_class = PLDuplicateMergeCrashRecovery;
  v7 = [(PLDuplicateMergeCrashRecovery *)&v13 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_library, a3);
    v9 = [v6 pathManager];
    pathManager = v8->_pathManager;
    v8->_pathManager = v9;
  }

  return v8;
}

- (PLDuplicateMergeCrashRecovery)initWithLibraryServicesManager:(id)a3
{
  v4 = [a3 databaseContext];
  v5 = [v4 newShortLivedLibraryWithName:"-[PLDuplicateMergeCrashRecovery initWithLibraryServicesManager:]"];

  if (v5)
  {
    v6 = [(PLDuplicateMergeCrashRecovery *)self initWithPhotoLibrary:v5];
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

@end