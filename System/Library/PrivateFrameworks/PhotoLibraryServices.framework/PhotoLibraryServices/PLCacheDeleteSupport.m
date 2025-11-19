@interface PLCacheDeleteSupport
+ (BOOL)clearPurgeableFlagForResource:(id)a3;
+ (BOOL)clearPurgeableFlagsForAllResourcesInPhotoLibraryURL:(id)a3;
+ (BOOL)isPurgeableFile:(id)a3 outIsPhotoType:(BOOL *)a4 outUrgencyLevel:(int64_t *)a5 error:(id *)a6;
+ (BOOL)markChildrenPurgeableForDirectoryAtURL:(id)a3 withUrgency:(int64_t)a4 error:(id *)a5;
+ (BOOL)markPurgeableForFileAtURL:(id)a3 withUrgency:(int64_t)a4 outInode:(unint64_t *)a5 error:(id *)a6;
+ (BOOL)readInodeAtURL:(id)a3 outInode:(unint64_t *)a4 error:(id *)a5;
+ (BOOL)setClearPurgeableIsCloneStateOnPurgeableResourcesOnceWithPathManager:(id)a3 error:(id *)a4;
+ (BOOL)verifyAndFixLocalAvailabilityForMissingResourcesUsingFileIDInManagedObjectContext:(id)a3 countPresent:(int64_t *)a4 countMissing:(int64_t *)a5 countUnableToVerify:(int64_t *)a6 error:(id *)a7;
+ (fsid)fsidForURL:(id)a3;
+ (id)_allChildrenPurgeableResourceDirectoryTypesForPathManager:(id)a3 libraryIdentifier:(int64_t)a4;
+ (id)_clearablePurgeableResourceDirectoriesForPathManager:(id)a3;
+ (id)_purgeableResourceDirectoriesForPathManager:(id)a3;
+ (id)_unclearablePurgeableResourceDirectoriesForPathManager:(id)a3;
+ (id)purgeableStateDescriptionForFile:(id)a3;
+ (unint64_t)_flagsFromUrgency:(int64_t)a3 markDirectoryChildren:(BOOL)a4;
+ (void)clearPurgeableIsCloneStateOnPurgeableResourcesOnceIfNecessaryInManagedObjectContext:(id)a3 pathManager:(id)a4;
- (BOOL)clearPurgeableFlagsForAllResources;
- (BOOL)isFilePurgedForFileID:(id)a3 purgedPath:(id)a4;
- (BOOL)markResourceAsPurgeable:(id)a3 withUrgency:(int64_t)a4;
- (PLCacheDeleteSupport)initWithLibraryServicesManager:(id)a3 cplStatus:(id)a4;
- (id)_newShortLivedPhotoLibrary;
- (id)markChildrenPurgeableDirectories;
- (id)purgeableDirectories;
- (void)_markAsNotLocallyAvailableForResourcesWithFileIDsToPath:(id)a3 inLibrary:(id)a4;
- (void)dealloc;
- (void)invalidate;
- (void)markAsNotLocallyAvailableForResourcesWithFileIDsToPath:(id)a3;
- (void)rescanResourcesFromFileSystem;
@end

@implementation PLCacheDeleteSupport

- (void)_markAsNotLocallyAvailableForResourcesWithFileIDsToPath:(id)a3 inLibrary:(id)a4
{
  v51 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v40 = v5;
  v7 = [v5 allKeys];
  v8 = MEMORY[0x1E695D5E0];
  v9 = +[PLInternalResource entityName];
  v10 = [v8 fetchRequestWithEntityName:v9];

  v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"fileID", v7];
  [v10 setPredicate:v11];
  v12 = [v6 managedObjectContext];
  v45 = 0;
  v13 = [v12 executeFetchRequest:v10 error:&v45];
  v14 = v45;
  if (!v13)
  {
    v15 = PLResourceCachingGetLog();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    *buf = 138412546;
    v47 = v7;
    v48 = 2112;
    v49 = v14;
    v30 = "Failed to fetch resources with fileIDs %@: %@";
    v31 = v15;
    v32 = OS_LOG_TYPE_ERROR;
    v33 = 22;
LABEL_22:
    _os_log_impl(&dword_19BF1F000, v31, v32, v30, buf, v33);
    goto LABEL_23;
  }

  if (![v13 count])
  {
    v15 = PLResourceCachingGetLog();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      goto LABEL_23;
    }

    *buf = 138412290;
    v47 = v7;
    v30 = "Do not find any resources matching fileIDs: %@";
    v31 = v15;
    v32 = OS_LOG_TYPE_INFO;
    v33 = 12;
    goto LABEL_22;
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v15 = v13;
  v16 = [v15 countByEnumeratingWithState:&v41 objects:v50 count:16];
  if (v16)
  {
    v17 = v16;
    v34 = v13;
    v35 = v12;
    v36 = v11;
    v37 = v10;
    v38 = v7;
    v39 = v6;
    v18 = *v42;
    while (1)
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v42 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v41 + 1) + 8 * i);
        v21 = [v20 cplFileURL];
        v22 = [v21 path];

        v23 = [v20 fileID];
        v24 = [MEMORY[0x1E696AD98] numberWithLongLong:v23];
        v25 = [v40 objectForKeyedSubscript:v24];

        if ([v22 length] && objc_msgSend(v25, "containsString:", v22))
        {
          v26 = PLResourceCachingGetLog();
          if (!os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
          {
            goto LABEL_15;
          }

          *buf = 134218242;
          v47 = v23;
          v48 = 2112;
          v49 = v25;
          v27 = v26;
          v28 = OS_LOG_TYPE_INFO;
          v29 = "Marked resource as not locally available for fileID %lld path %@";
        }

        else
        {
          v26 = PLResourceCachingGetLog();
          if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_15;
          }

          *buf = 138412546;
          v47 = v22;
          v48 = 2112;
          v49 = v25;
          v27 = v26;
          v28 = OS_LOG_TYPE_ERROR;
          v29 = "Mismatch between resource file path %@ and purged path %@";
        }

        _os_log_impl(&dword_19BF1F000, v27, v28, v29, buf, 0x16u);
LABEL_15:

        [v20 markAsNotLocallyAvailableAfterPurge];
      }

      v17 = [v15 countByEnumeratingWithState:&v41 objects:v50 count:16];
      if (!v17)
      {
        v7 = v38;
        v6 = v39;
        v11 = v36;
        v10 = v37;
        v13 = v34;
        v12 = v35;
        break;
      }
    }
  }

LABEL_23:
}

- (void)markAsNotLocallyAvailableForResourcesWithFileIDsToPath:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = [(PLCacheDeleteSupport *)self _newShortLivedPhotoLibrary];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __79__PLCacheDeleteSupport_markAsNotLocallyAvailableForResourcesWithFileIDsToPath___block_invoke;
    v9[3] = &unk_1E75761B8;
    v10 = v4;
    v11 = self;
    v12 = v5;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __79__PLCacheDeleteSupport_markAsNotLocallyAvailableForResourcesWithFileIDsToPath___block_invoke_74;
    v7[3] = &unk_1E75781E8;
    v8 = v12;
    v6 = v12;
    [v6 performTransactionAndWait:v9 completionHandler:v7];
  }
}

uint64_t __79__PLCacheDeleteSupport_markAsNotLocallyAvailableForResourcesWithFileIDsToPath___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = PLResourceCachingGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(a1 + 32) count];
    v4 = [*(*(a1 + 40) + 16) libraryURL];
    v6 = 134218242;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_INFO, "Marking %ld resources as not locally available for libraryURL: %@", &v6, 0x16u);
  }

  return [*(a1 + 40) _markAsNotLocallyAvailableForResourcesWithFileIDsToPath:*(a1 + 32) inLibrary:*(a1 + 48)];
}

void __79__PLCacheDeleteSupport_markAsNotLocallyAvailableForResourcesWithFileIDsToPath___block_invoke_74(uint64_t a1)
{
  v1 = [*(a1 + 32) libraryBundle];
  [v1 touch];
}

- (BOOL)isFilePurgedForFileID:(id)a3 purgedPath:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if ([v5 longLongValue] < 0)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid fileID %@ for purgedPath %@", v5, v6];
    PLSimulateCrash();

    LOBYTE(v8) = 0;
  }

  else
  {
    [v5 unsignedLongLongValue];
    v7 = openbyid_np();
    LODWORD(v8) = v7 >> 31;
    if ((v7 & 0x80000000) == 0)
    {
      v9 = v7;
      v10 = PLResourceCachingGetLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v13 = v5;
        v14 = 2112;
        v15 = v6;
        _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_ERROR, "Received purging notification for fileID %@ purgedPath %@ that still exists", buf, 0x16u);
      }

      close(v9);
    }
  }

  return v8;
}

- (void)rescanResourcesFromFileSystem
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = [(PLCacheDeleteSupport *)self _newShortLivedPhotoLibrary];
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__92396;
  v23 = __Block_byref_object_dispose__92397;
  v24 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __53__PLCacheDeleteSupport_rescanResourcesFromFileSystem__block_invoke;
  v11[3] = &unk_1E7578898;
  v13 = &v15;
  v11[4] = self;
  v4 = v3;
  v12 = v4;
  v14 = &v19;
  [v4 performTransactionAndWait:v11];
  if (*(v16 + 24) == 1)
  {
    v5 = PLResourceCachingGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v6 = "Successfully updated resource local availability";
      v7 = v5;
      v8 = OS_LOG_TYPE_DEFAULT;
      v9 = 2;
LABEL_6:
      _os_log_impl(&dword_19BF1F000, v7, v8, v6, buf, v9);
    }
  }

  else
  {
    v5 = PLResourceCachingGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v10 = v20[5];
      *buf = 138412290;
      v26 = v10;
      v6 = "Failed to update resource local availability: %@";
      v7 = v5;
      v8 = OS_LOG_TYPE_ERROR;
      v9 = 12;
      goto LABEL_6;
    }
  }

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);
}

void __53__PLCacheDeleteSupport_rescanResourcesFromFileSystem__block_invoke(uint64_t a1)
{
  v2 = objc_opt_class();
  v3 = [*(a1 + 40) managedObjectContext];
  v4 = *(*(a1 + 56) + 8);
  obj = *(v4 + 40);
  LOBYTE(v2) = [v2 verifyAndFixLocalAvailabilityForMissingResourcesUsingFileIDInManagedObjectContext:v3 countPresent:0 countMissing:0 countUnableToVerify:0 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  *(*(*(a1 + 48) + 8) + 24) = v2;
}

- (id)markChildrenPurgeableDirectories
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v4 = objc_opt_class();
  v5 = [(PLLibraryServicesManager *)self->_lsm pathManager];
  v6 = [v4 _allChildrenPurgeableResourceDirectoryTypesForPathManager:v5 libraryIdentifier:{-[PLLibraryServicesManager wellKnownPhotoLibraryIdentifier](self->_lsm, "wellKnownPhotoLibraryIdentifier")}];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v19 + 1) + 8 * i) unsignedIntValue];
        v13 = [(PLLibraryServicesManager *)self->_lsm pathManager];
        if ([(PLLibraryServicesManager *)self->_lsm wellKnownPhotoLibraryIdentifier]== 3)
        {
          v14 = objc_alloc(MEMORY[0x1E69BF2A0]);
          v15 = [v13 libraryURL];
          v16 = [v14 initWithLibraryURL:v15 bundleScope:3];

          v13 = v16;
        }

        v17 = [v13 purgeableSubdirectoriesWithType:v12 createIfNeeded:1 error:0];
        [v3 addObjectsFromArray:v17];
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  return v3;
}

- (id)purgeableDirectories
{
  v3 = objc_opt_class();
  v4 = [(PLLibraryServicesManager *)self->_lsm pathManager];
  v5 = [v3 _purgeableResourceDirectoriesForPathManager:v4];

  return v5;
}

- (BOOL)clearPurgeableFlagsForAllResources
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [(PLLibraryServicesManager *)self->_lsm pathManager];
  v4 = [v3 libraryURL];

  v5 = v4 != 0;
  if (v4)
  {
    if (![objc_opt_class() clearPurgeableFlagsForAllResourcesInPhotoLibraryURL:v4])
    {
      v5 = 0;
      goto LABEL_10;
    }

    v6 = PLResourceCachingGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEFAULT, "Resetting fileID for all resources", buf, 2u);
    }

    v7 = [(PLCacheDeleteSupport *)self _newShortLivedPhotoLibrary];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __58__PLCacheDeleteSupport_clearPurgeableFlagsForAllResources__block_invoke;
    v11[3] = &unk_1E75781E8;
    v12 = v7;
    v8 = v7;
    [v8 performTransactionAndWait:v11];
  }

  else
  {
    v8 = PLResourceCachingGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      lsm = self->_lsm;
      *buf = 138412290;
      v14 = lsm;
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_ERROR, "No photoLibraryURL from library services manager %@", buf, 0xCu);
    }
  }

LABEL_10:
  return v5;
}

void __58__PLCacheDeleteSupport_clearPurgeableFlagsForAllResources__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = [*(a1 + 32) managedObjectContext];
  v10 = 0;
  v2 = [PLInternalResource batchResetFileIDInManagedObjectContext:v1 error:&v10];
  v3 = v10;

  v4 = PLResourceCachingGetLog();
  v5 = v4;
  if (v2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v6 = "Successfully reset internal resource fileIDs";
      v7 = v5;
      v8 = OS_LOG_TYPE_DEFAULT;
      v9 = 2;
LABEL_6:
      _os_log_impl(&dword_19BF1F000, v7, v8, v6, buf, v9);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v12 = v3;
    v6 = "Failed to reset internal resource fileID: %@";
    v7 = v5;
    v8 = OS_LOG_TYPE_ERROR;
    v9 = 12;
    goto LABEL_6;
  }
}

- (BOOL)markResourceAsPurgeable:(id)a3 withUrgency:(int64_t)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(PLLibraryServicesManager *)self->_lsm pathManager];
  v8 = [v7 capabilities];
  v9 = [v8 isCentralizedCacheDeleteCapable];

  if (v9)
  {
    v10 = [(PLLibraryServicesManager *)self->_lsm cplSettings];
    v11 = [v10 isKeepOriginalsEnabled];

    if (v11 && (+[PLInternalResource originalCPLResourceTypes](PLInternalResource, "originalCPLResourceTypes"), v12 = objc_claimAutoreleasedReturnValue(), [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v6, "cplType")}], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v12, "containsObject:", v13), v13, v12, v14))
    {
      v15 = PLResourceCachingGetLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v16 = [v6 singleLineDescription];
        *buf = 138412290;
        v30 = v16;
        v17 = "Download & Keep Originals mode, skip marking original resource %@ as purgeable";
        v18 = v15;
        v19 = 12;
LABEL_10:
        _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_DEBUG, v17, buf, v19);
      }
    }

    else
    {
      if (!self->_exitDeleteTime)
      {
        v15 = [v6 fileURL];
        v28 = 0;
        v27 = 0;
        v20 = [objc_opt_class() markPurgeableForFileAtURL:v15 withUrgency:a4 outInode:&v28 error:&v27];
        v22 = v27;
        if (v20)
        {
          if (v28)
          {
            v23 = [v6 fileID];
            if (v23 != v28)
            {
              [v6 setFileID:?];
            }
          }

          else
          {
            v24 = PLResourceCachingGetLog();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v30 = v15;
              _os_log_impl(&dword_19BF1F000, v24, OS_LOG_TYPE_ERROR, "Unexpected inode value of 0 for %@", buf, 0xCu);
            }

            v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unexpected inode value of 0 for %@", v15];
            PLSimulateCrash();
          }
        }

        else if (PLIsErrorEqualToCode())
        {
          [v6 markAsNotLocallyAvailable];
        }

        goto LABEL_22;
      }

      v15 = PLResourceCachingGetLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        exitDeleteTime = self->_exitDeleteTime;
        v16 = [v6 singleLineDescription];
        *buf = 138412546;
        v30 = exitDeleteTime;
        v31 = 2112;
        v32 = v16;
        v17 = "In exit mode (%@), skip marking resource %@ as purgeable";
        v18 = v15;
        v19 = 22;
        goto LABEL_10;
      }
    }

    LOBYTE(v20) = 0;
LABEL_22:

    goto LABEL_23;
  }

  LOBYTE(v20) = 0;
LABEL_23:

  return v20;
}

- (id)_newShortLivedPhotoLibrary
{
  v2 = [(PLLibraryServicesManager *)self->_lsm databaseContext];
  v3 = [v2 newShortLivedCplLibraryWithNameSuffix:"-[PLCacheDeleteSupport _newShortLivedPhotoLibrary]"];

  return v3;
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
  v4.super_class = PLCacheDeleteSupport;
  [(PLCacheDeleteSupport *)&v4 dealloc];
}

- (void)invalidate
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = PLPhotosObjectLifecycleGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v5 = 138412546;
    v6 = objc_opt_class();
    v7 = 2048;
    v8 = self;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEBUG, "%@ %p invalidate", &v5, 0x16u);
  }

  v4 = [(PLLibraryServicesManager *)self->_lsm cacheDeleteRegistration];
  [v4 unregisterCacheDeleteSupport:self withLibraryServicesManager:self->_lsm];
}

- (PLCacheDeleteSupport)initWithLibraryServicesManager:(id)a3 cplStatus:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v21.receiver = self;
  v21.super_class = PLCacheDeleteSupport;
  v9 = [(PLCacheDeleteSupport *)&v21 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_lsm, a3);
    lsm = v10->_lsm;
    if (!lsm)
    {
      v12 = PLResourceCachingGetLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_ERROR, "libraryServicesManager passed to PLCacheDeleteSupport is nil", buf, 2u);
      }

      lsm = v10->_lsm;
    }

    v13 = [(PLLibraryServicesManager *)lsm pathManager];
    v14 = [v13 libraryURL];

    v10->_fsid = [objc_opt_class() fsidForURL:v14];
    v15 = [v8 exitDeleteTime];
    exitDeleteTime = v10->_exitDeleteTime;
    v10->_exitDeleteTime = v15;

    v17 = [v7 cacheDeleteRegistration];
    [v17 registerCacheDeleteSupport:v10 withLibraryServicesManager:v7];
  }

  v18 = PLPhotosObjectLifecycleGetLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    v19 = objc_opt_class();
    *buf = 138412802;
    v23 = v19;
    v24 = 2048;
    v25 = v10;
    v26 = 2112;
    v27 = v7;
    _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_DEBUG, "%@ %p initWithLibraryServicesManager:%@", buf, 0x20u);
  }

  return v10;
}

+ (void)clearPurgeableIsCloneStateOnPurgeableResourcesOnceIfNecessaryInManagedObjectContext:(id)a3 pathManager:(id)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = MEMORY[0x1E69BF188];
  v8 = [v6 libraryURL];
  v9 = [v7 appPrivateDataForLibraryURL:v8];

  v10 = [v9 valueForKey:@"CacheDeleteSupport.clearPurgeableIsCloneStateOnPurgeableResourcesOnce"];
  v11 = [v10 BOOLValue];

  if (!v11)
  {
    goto LABEL_15;
  }

  v12 = PLResourceCachingGetLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEFAULT, "Calling APFSIOC_GET_CLONE_INFO on all purgeable resources to clear is-clone flag", buf, 2u);
  }

  v13 = MEMORY[0x1E695D5E0];
  v14 = +[PLInternalResource entityName];
  v15 = [v13 fetchRequestWithEntityName:v14];

  v16 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != %lld", @"fileID", -1];
  [v15 setPredicate:v16];

  v33 = 0;
  *buf = 0;
  v30 = buf;
  v31 = 0x2020000000;
  v32 = 0;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __120__PLCacheDeleteSupport_clearPurgeableIsCloneStateOnPurgeableResourcesOnceIfNecessaryInManagedObjectContext_pathManager___block_invoke;
  v28[3] = &unk_1E75741F0;
  v28[4] = buf;
  v17 = [v5 enumerateObjectsFromFetchRequest:v15 count:&v33 usingDefaultBatchSizeWithBlock:v28];
  if (v17)
  {
    v18 = PLResourceCachingGetLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *v34 = 138412290;
      v35 = v17;
      v19 = "Failed to fetch purgeable resources for APFSIOC_GET_CLONE_INFO: %@";
      v20 = v18;
      v21 = OS_LOG_TYPE_ERROR;
      v22 = 12;
LABEL_9:
      _os_log_impl(&dword_19BF1F000, v20, v21, v19, v34, v22);
    }
  }

  else
  {
    v18 = PLResourceCachingGetLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v23 = *(v30 + 3);
      *v34 = 134218240;
      v35 = v33;
      v36 = 2048;
      v37 = v23;
      v19 = "Called APFSIOC_GET_CLONE_INFO on %lu purgeable resources (%lu failed)";
      v20 = v18;
      v21 = OS_LOG_TYPE_DEFAULT;
      v22 = 22;
      goto LABEL_9;
    }
  }

  v27 = 0;
  v24 = [v9 setValue:0 forKey:@"CacheDeleteSupport.clearPurgeableIsCloneStateOnPurgeableResourcesOnce" error:&v27];
  v25 = v27;
  if ((v24 & 1) == 0)
  {
    v26 = PLResourceCachingGetLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *v34 = 138412290;
      v35 = v25;
      _os_log_impl(&dword_19BF1F000, v26, OS_LOG_TYPE_ERROR, "Failed to unset PLCacheDeleteSupportClearPurgeableIsCloneStateOnPurgeableResourcesOnceKey: %@", v34, 0xCu);
    }
  }

  _Block_object_dispose(buf, 8);
LABEL_15:
}

void __120__PLCacheDeleteSupport_clearPurgeableIsCloneStateOnPurgeableResourcesOnceIfNecessaryInManagedObjectContext_pathManager___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = [a2 fileURL];
  v4 = [v3 fileSystemRepresentation];

  if (v4)
  {
    v8[0] = 0;
    v8[1] = 0;
    if (fsctl(v4, 0x40104A0EuLL, v8, 0) == -1)
    {
      v5 = PLResourceCachingGetLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = __error();
        v7 = strerror(*v6);
        *buf = 136315394;
        v10 = v4;
        v11 = 2080;
        v12 = v7;
        _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_ERROR, "Failed to get APFSIOC_GET_CLONE_INFO on resource at path %s: %s", buf, 0x16u);
      }

      ++*(*(*(a1 + 32) + 8) + 24);
    }
  }
}

+ (BOOL)setClearPurgeableIsCloneStateOnPurgeableResourcesOnceWithPathManager:(id)a3 error:(id *)a4
{
  v5 = MEMORY[0x1E69BF188];
  v6 = [a3 libraryURL];
  v7 = [v5 appPrivateDataForLibraryURL:v6];

  LOBYTE(a4) = [v7 setValue:MEMORY[0x1E695E118] forKey:@"CacheDeleteSupport.clearPurgeableIsCloneStateOnPurgeableResourcesOnce" error:a4];
  return a4;
}

+ (BOOL)verifyAndFixLocalAvailabilityForMissingResourcesUsingFileIDInManagedObjectContext:(id)a3 countPresent:(int64_t *)a4 countMissing:(int64_t *)a5 countUnableToVerify:(int64_t *)a6 error:(id *)a7
{
  v91[1] = *MEMORY[0x1E69E9840];
  v42 = a3;
  v78 = 0;
  v79 = &v78;
  v80 = 0x2020000000;
  v81 = 1;
  v43 = +[PLInternalResource fetchRequest];
  v40 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != %lld AND %K >= %d", @"fileID", -1, @"localAvailability", 1];
  [v43 setPredicate:v40];
  [v43 setFetchBatchSize:100];
  v91[0] = @"fileID";
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v91 count:1];
  [v43 setPropertiesToFetch:v10];

  v72 = 0;
  v73 = &v72;
  v74 = 0x3032000000;
  v75 = __Block_byref_object_copy__92396;
  v76 = __Block_byref_object_dispose__92397;
  v77 = 0;
  obj = 0;
  v41 = [v42 executeFetchRequest:v43 error:&obj];
  objc_storeStrong(&v77, obj);
  if (v41)
  {
    v11 = PLResourceCachingGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v41 count];
      *buf = 134217984;
      v83 = v12;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEFAULT, "Verifying localAvailability for %ld resources presumed to be local...", buf, 0xCu);
    }

    v67 = 0;
    v68 = &v67;
    v69 = 0x2020000000;
    v70 = 0;
    v63 = 0;
    v64 = &v63;
    v65 = 0x2020000000;
    v66 = 0;
    v59 = 0;
    v60 = &v59;
    v61 = 0x2020000000;
    v62 = 0;
    v13 = objc_alloc_init(MEMORY[0x1E696AB50]);
    v14 = [v42 pathManager];
    v37 = [v14 libraryURL];

    v57[0] = 0;
    v57[1] = v57;
    v57[2] = 0x2810000000;
    v57[3] = &unk_19C721442;
    v58 = 0;
    v58 = [PLCacheDeleteSupport fsidForURL:v37];
    v15 = malloc_type_calloc(1uLL, 0x400uLL, 0xAE92277FuLL);
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __158__PLCacheDeleteSupport_verifyAndFixLocalAvailabilityForMissingResourcesUsingFileIDInManagedObjectContext_countPresent_countMissing_countUnableToVerify_error___block_invoke;
    v48[3] = &unk_1E75741C8;
    v50 = v57;
    v51 = &v67;
    v56 = v15;
    v52 = &v59;
    v38 = v13;
    v49 = v38;
    v53 = &v78;
    v54 = &v72;
    v55 = &v63;
    v16 = [v42 enumerateWithIncrementalSaveUsingObjects:v41 shouldRefreshAfterSave:0 withBlock:v48];
    v17 = v73[5];
    v73[5] = v16;

    free(v15);
    if (a4)
    {
      *a4 = v64[3];
    }

    if (a5)
    {
      *a5 = v68[3];
    }

    if (a6)
    {
      *a6 = v60[3];
    }

    if ([v38 count])
    {
      v18 = [MEMORY[0x1E696AD60] string];
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v19 = v38;
      v20 = [v19 countByEnumeratingWithState:&v44 objects:v90 count:16];
      if (v20)
      {
        v21 = *v45;
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v45 != v21)
            {
              objc_enumerationMutation(v19);
            }

            v23 = *(*(&v44 + 1) + 8 * i);
            v24 = strerror([v23 intValue]);
            v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v19, "countForObject:", v23)}];
            [v18 appendFormat:@"[error: %@/%s, count: %@] ", v23, v24, v25];
          }

          v20 = [v19 countByEnumeratingWithState:&v44 objects:v90 count:16];
        }

        while (v20);
      }

      v26 = PLResourceCachingGetLog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v83 = "+[PLCacheDeleteSupport verifyAndFixLocalAvailabilityForMissingResourcesUsingFileIDInManagedObjectContext:countPresent:countMissing:countUnableToVerify:error:]";
        v84 = 2114;
        v85 = v18;
        _os_log_impl(&dword_19BF1F000, v26, OS_LOG_TYPE_ERROR, "%s: Encountered errors while verifying local availbility: %{public}@", buf, 0x16u);
      }
    }

    if (v73[5])
    {
      *(v79 + 24) = 0;
      v27 = PLResourceCachingGetLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = v73[5];
        *buf = 136315394;
        v83 = "+[PLCacheDeleteSupport verifyAndFixLocalAvailabilityForMissingResourcesUsingFileIDInManagedObjectContext:countPresent:countMissing:countUnableToVerify:error:]";
        v84 = 2112;
        v85 = v28;
        _os_log_impl(&dword_19BF1F000, v27, OS_LOG_TYPE_ERROR, "%s: Error updating resource local availability: %@", buf, 0x16u);
      }
    }

    v29 = PLResourceCachingGetLog();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = v68[3];
      v31 = v64[3];
      v32 = v60[3];
      *buf = 136315906;
      v83 = "+[PLCacheDeleteSupport verifyAndFixLocalAvailabilityForMissingResourcesUsingFileIDInManagedObjectContext:countPresent:countMissing:countUnableToVerify:error:]";
      v84 = 2048;
      v85 = v30;
      v86 = 2048;
      v87 = v31;
      v88 = 2048;
      v89 = v32;
      _os_log_impl(&dword_19BF1F000, v29, OS_LOG_TYPE_DEFAULT, "%s: Count missing: %ld, Count present: %ld, Count unable to verify: %ld", buf, 0x2Au);
    }

    _Block_object_dispose(v57, 8);
    _Block_object_dispose(&v59, 8);
    _Block_object_dispose(&v63, 8);
    _Block_object_dispose(&v67, 8);
  }

  else
  {
    *(v79 + 24) = 0;
    v33 = PLResourceCachingGetLog();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = v73[5];
      *buf = 136315394;
      v83 = "+[PLCacheDeleteSupport verifyAndFixLocalAvailabilityForMissingResourcesUsingFileIDInManagedObjectContext:countPresent:countMissing:countUnableToVerify:error:]";
      v84 = 2112;
      v85 = v34;
      _os_log_impl(&dword_19BF1F000, v33, OS_LOG_TYPE_ERROR, "%s: Error fetching resources: %@", buf, 0x16u);
    }
  }

  if (a7)
  {
    *a7 = v73[5];
  }

  v35 = *(v79 + 24);

  _Block_object_dispose(&v72, 8);
  _Block_object_dispose(&v78, 8);

  return v35 & 1;
}

void __158__PLCacheDeleteSupport_verifyAndFixLocalAvailabilityForMissingResourcesUsingFileIDInManagedObjectContext_countPresent_countMissing_countUnableToVerify_error___block_invoke(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 fileID];
  if (fsgetpath(*(a1 + 88), 0x400uLL, (*(*(a1 + 40) + 8) + 32), v4) != -1)
  {
    ++*(*(*(a1 + 80) + 8) + 24);
    goto LABEL_17;
  }

  if (*__error() == 2)
  {
    v5 = *(*(a1 + 48) + 8);
    v6 = *(v5 + 24);
    if (v6 > 49)
    {
LABEL_16:
      *(v5 + 24) = v6 + 1;
      [v3 markAsNotLocallyAvailable];
      goto LABEL_17;
    }

    v7 = [v3 asset];
    v8 = [v7 uuid];

    v9 = PLResourceCachingGetLog();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
    if (v8)
    {
      if (v10)
      {
        v11 = [v3 objectID];
        v12 = [v3 fileID];
        v13 = [v3 fileURL];
        v25 = 136315906;
        v26 = "+[PLCacheDeleteSupport verifyAndFixLocalAvailabilityForMissingResourcesUsingFileIDInManagedObjectContext:countPresent:countMissing:countUnableToVerify:error:]_block_invoke";
        v27 = 2114;
        v28 = v11;
        v29 = 2048;
        v30 = v12;
        v31 = 2112;
        v32 = v13;
        _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_INFO, "%s: Fixing broken localAvailability for resource: %{public}@, with fileID: %lld, expected at url: %@", &v25, 0x2Au);

LABEL_14:
      }
    }

    else if (v10)
    {
      v11 = [v3 objectID];
      v21 = [v3 fileID];
      v22 = [v3 asset];
      v23 = [v3 asset];
      v24 = [v23 uuid];
      v25 = 136316162;
      v26 = "+[PLCacheDeleteSupport verifyAndFixLocalAvailabilityForMissingResourcesUsingFileIDInManagedObjectContext:countPresent:countMissing:countUnableToVerify:error:]_block_invoke";
      v27 = 2114;
      v28 = v11;
      v29 = 2048;
      v30 = v21;
      v31 = 2048;
      v32 = v22;
      v33 = 2114;
      v34 = v24;
      _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_INFO, "%s: Fixing broken localAvailability for resource: %{public}@, with fileID: %lld, asset %p uuid %{public}@", &v25, 0x34u);

      goto LABEL_14;
    }

    v5 = *(*(a1 + 48) + 8);
    v6 = *(v5 + 24);
    goto LABEL_16;
  }

  ++*(*(*(a1 + 56) + 8) + 24);
  v14 = *(a1 + 32);
  v15 = [MEMORY[0x1E696AD98] numberWithInt:*__error()];
  [v14 addObject:v15];

  if (*(*(*(a1 + 64) + 8) + 24) == 1)
  {
    v16 = PLResourceCachingGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = *__error();
      v25 = 136315650;
      v26 = "+[PLCacheDeleteSupport verifyAndFixLocalAvailabilityForMissingResourcesUsingFileIDInManagedObjectContext:countPresent:countMissing:countUnableToVerify:error:]_block_invoke";
      v27 = 2048;
      v28 = v4;
      v29 = 1024;
      LODWORD(v30) = v17;
      _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_ERROR, "%s: Error getting path from inode: %llu, errno: %d", &v25, 0x1Cu);
    }

    v18 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69BFF48] code:47014 userInfo:0];
    v19 = *(*(a1 + 72) + 8);
    v20 = *(v19 + 40);
    *(v19 + 40) = v18;

    *(*(*(a1 + 64) + 8) + 24) = 0;
  }

LABEL_17:
}

+ (fsid)fsidForURL:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  memset(&v6, 0, sizeof(v6));
  v3 = [a3 fileSystemRepresentation];
  if (stat(v3, &v6))
  {
    v4 = PLResourceCachingGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v8 = v3;
      _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_ERROR, "could not get device ID for %s", buf, 0xCu);
    }

    return 0;
  }

  else
  {
    return v6.st_dev;
  }
}

+ (id)_allChildrenPurgeableResourceDirectoryTypesForPathManager:(id)a3 libraryIdentifier:(int64_t)a4
{
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v6 = v5;
  if (a4 == 3)
  {
    [v5 addObject:&unk_1F0FBDEE8];
    [v6 addObject:&unk_1F0FBDF00];
  }

  return v6;
}

+ (id)_purgeableResourceDirectoriesForPathManager:(id)a3
{
  v4 = a3;
  v5 = [a1 _clearablePurgeableResourceDirectoriesForPathManager:v4];
  v6 = [a1 _unclearablePurgeableResourceDirectoriesForPathManager:v4];

  v7 = [v5 setByAddingObjectsFromSet:v6];

  return v7;
}

+ (id)_unclearablePurgeableResourceDirectoriesForPathManager:(id)a3
{
  v11[2] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc(MEMORY[0x1E695DFA8]);
  v5 = [v3 photoDirectoryWithType:28];
  v11[0] = v5;
  v6 = [v3 photoDirectoryWithType:19];
  v11[1] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
  v8 = [v4 initWithArray:v7];

  if ([v3 isDCIM])
  {
    v9 = [v3 photoDirectoryWithType:31];
    [v8 addObject:v9];
  }

  return v8;
}

+ (id)_clearablePurgeableResourceDirectoriesForPathManager:(id)a3
{
  v15[5] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DFA8];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [v4 photoDirectoryWithType:4];
  v7 = [v4 photoDirectoryWithType:{30, v6}];
  v15[1] = v7;
  v8 = [v4 photoDirectoryWithType:10];
  v15[2] = v8;
  v9 = [v4 photoDirectoryWithType:9];
  v15[3] = v9;
  v10 = [v4 photoDirectoryWithType:27];
  v15[4] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:5];
  v12 = [v5 initWithArray:v11];

  if ([v4 isDCIM])
  {
    [v4 privateDirectoryWithSubType:7];
  }

  else
  {
    [v4 photoDirectoryWithType:26];
  }
  v13 = ;

  [v12 addObject:v13];

  return v12;
}

+ (id)purgeableStateDescriptionForFile:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v5 = [v4 fileExistsAtPath:v3];

  if (v5)
  {
    v9 = 0;
    v8 = -1;
    if (![PLCacheDeleteSupport isPurgeableFile:v3 outIsPhotoType:&v9 outUrgencyLevel:&v8 error:0])
    {
      goto LABEL_7;
    }

    if (v9 != 1)
    {
      v6 = @"[N]";
      goto LABEL_9;
    }

    if ((v8 + 1) <= 3)
    {
      v6 = off_1E7574210[v8 + 1];
    }

    else
    {
LABEL_7:
      v6 = &stru_1F0F06D80;
    }
  }

  else
  {
    v6 = @"[E]";
  }

LABEL_9:

  return v6;
}

+ (BOOL)isPurgeableFile:(id)a3 outIsPhotoType:(BOOL *)a4 outUrgencyLevel:(int64_t *)a5 error:(id *)a6
{
  v33[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v25 = 0;
  v10 = fsctl([v9 fileSystemRepresentation], 0x40084A47uLL, &v25, 0);
  if (v10)
  {
    v11 = v10;
    v12 = *__error();
    v13 = MEMORY[0x1E696ABC0];
    v14 = *MEMORY[0x1E696A798];
    v32 = *MEMORY[0x1E696A278];
    v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:strerror(v12)];
    v33[0] = v15;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:&v32 count:1];
    v17 = [v13 errorWithDomain:v14 code:v12 userInfo:v16];

    v18 = PLResourceCachingGetLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = strerror(v12);
      *buf = 138412802;
      v27 = v9;
      v28 = 1024;
      v29 = v11;
      v30 = 2080;
      v31 = v19;
      _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_ERROR, "Unable to check purgeable flag for %@ %d (%s)", buf, 0x1Cu);
    }

    if (a6)
    {
      v20 = v17;
      *a6 = v17;
    }
  }

  else
  {
    v22 = v25;
    if (v25)
    {
      if (a4)
      {
        *a4 = v25 & 1;
      }

      if (a5)
      {
        if ((v22 & 0x200) != 0)
        {
          *a5 = 0;
        }

        else
        {
          if ((v22 & 0x400) != 0)
          {
            v21 = 1;
            *a5 = 1;
            goto LABEL_21;
          }

          if ((v22 & 0x800) != 0)
          {
            v23 = 2;
          }

          else
          {
            v23 = -1;
          }

          *a5 = v23;
        }
      }

      v21 = 1;
      goto LABEL_21;
    }
  }

  v21 = 0;
LABEL_21:

  return v21;
}

+ (BOOL)clearPurgeableFlagsForAllResourcesInPhotoLibraryURL:(id)a3
{
  buf[5] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = PLResourceCachingGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf[0]) = 138412290;
    *(buf + 4) = v3;
    _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_DEFAULT, "Clearing purgeable flags for all resources in %@.", buf, 0xCu);
  }

  v25 = v3;
  v24 = [objc_alloc(MEMORY[0x1E69BF2A0]) initWithLibraryURL:v3];
  v5 = [objc_opt_class() _clearablePurgeableResourceDirectoriesForPathManager:v24];
  memset(&buf[1], 0, 24);
  buf[0] = 0x100000002;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v26 objects:v36 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v27;
    v9 = 1;
    while (1)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v26 + 1) + 8 * i);
        v12 = fsctl([v11 fileSystemRepresentation], 0xC0204A49uLL, buf, 0);
        if (!v12)
        {
          v16 = PLResourceCachingGetLog();
          if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_18;
          }

          *v30 = 138412290;
          v31 = v11;
          v17 = v16;
          v18 = "Cleared purgeable flags under %@";
          goto LABEL_14;
        }

        v13 = v12;
        v14 = *__error();
        v15 = PLResourceCachingGetLog();
        v16 = v15;
        if (v14 == 2)
        {
          if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_18;
          }

          *v30 = 138412290;
          v31 = v11;
          v17 = v16;
          v18 = "%@ does not exist, skip clearing the purgeable flags";
LABEL_14:
          _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_DEFAULT, v18, v30, 0xCu);
          goto LABEL_18;
        }

        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v19 = __error();
          v20 = strerror(*v19);
          *v30 = 138412802;
          v31 = v11;
          v32 = 1024;
          v33 = v13;
          v34 = 2080;
          v35 = v20;
          _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_ERROR, "Failed to clear purgeable flag for %@ %d (%s)", v30, 0x1Cu);
        }

        v21 = MEMORY[0x1E696AEC0];
        v22 = __error();
        v16 = [v21 stringWithFormat:@"Failed to clear purgeable flag for %@ %d (%s)", v11, v13, strerror(*v22)];
        PLSimulateCrash();
        v9 = 0;
LABEL_18:
      }

      v7 = [v5 countByEnumeratingWithState:&v26 objects:v36 count:16];
      if (!v7)
      {
        goto LABEL_22;
      }
    }
  }

  v9 = 1;
LABEL_22:

  return v9 & 1;
}

+ (BOOL)clearPurgeableFlagForResource:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 pathManager];
  v5 = [v4 capabilities];
  v6 = [v5 isCentralizedCacheDeleteCapable];

  if (v6)
  {
    v7 = [v3 fileURL];
    v8 = v7;
    if (v7)
    {
      v9 = open([v7 fileSystemRepresentation], 0);
      if (v9 < 0)
      {
        v19 = PLResourceCachingGetLog();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v31.st_dev = 138412546;
          *&v31.st_mode = v8;
          WORD2(v31.st_ino) = 2112;
          *(&v31.st_ino + 6) = v3;
          _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_ERROR, "Missing file %@ to clear purgeable flag for %@, marking as not locally available", &v31, 0x16u);
        }

        [v3 markAsNotLocallyAvailable];
      }

      else
      {
        v10 = v9;
        memset(&v31, 0, sizeof(v31));
        if (fstat(v9, &v31) != -1)
        {
          st_ino = v31.st_ino;
          if ([v3 fileID] != st_ino)
          {
            v12 = PLResourceCachingGetLog();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218498;
              v26 = [v3 fileID];
              v27 = 2048;
              v28 = st_ino;
              v29 = 2112;
              v30[0] = v8;
              _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_ERROR, "Mismatch fileID between model %lld and file system %lld for file %@", buf, 0x20u);
            }
          }

          v24 = 0;
          v13 = ffsctl(v10, 0xC0084A44uLL, &v24, 0);
          LOBYTE(v6) = v13 == 0;
          v14 = PLResourceCachingGetLog();
          v15 = v14;
          if (v13)
          {
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              v16 = __error();
              v17 = strerror(*v16);
              *buf = 138413058;
              v26 = v8;
              v27 = 2048;
              v28 = st_ino;
              v29 = 1024;
              LODWORD(v30[0]) = v13;
              WORD2(v30[0]) = 2080;
              *(v30 + 6) = v17;
              _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_ERROR, "Failed to clear purgeable flag for %@ (%lld): %d (%s", buf, 0x26u);
            }
          }

          else
          {
            if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v26 = v8;
              v27 = 2048;
              v28 = st_ino;
              _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_INFO, "Cleared purgeable flag for %@ (%lld)", buf, 0x16u);
            }

            [v3 setFileID:-1];
          }

          close(v10);
          goto LABEL_27;
        }

        v20 = PLResourceCachingGetLog();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v21 = __error();
          v22 = strerror(*v21);
          *buf = 138412546;
          v26 = v8;
          v27 = 2080;
          v28 = v22;
          _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_ERROR, "Failed to get inode from %@ (%s), skip marking it as purgeable", buf, 0x16u);
        }

        close(v10);
      }
    }

    else
    {
      v18 = PLResourceCachingGetLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v31.st_dev = 138412290;
        *&v31.st_mode = v3;
        _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_ERROR, "Missing fileURL to clear purgeable flag for %@", &v31, 0xCu);
      }
    }

    LOBYTE(v6) = 0;
LABEL_27:
  }

  return v6;
}

+ (BOOL)readInodeAtURL:(id)a3 outInode:(unint64_t *)a4 error:(id *)a5
{
  v45[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = v7;
  if (!v7)
  {
LABEL_13:
    v12 = 0;
    goto LABEL_20;
  }

  v9 = open([v7 fileSystemRepresentation], 0);
  if (v9 < 0)
  {
    v16 = *__error();
    v17 = MEMORY[0x1E696ABC0];
    v18 = *MEMORY[0x1E696A798];
    v44 = *MEMORY[0x1E696A278];
    v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:strerror(v16)];
    v45[0] = v19;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:&v44 count:1];
    v21 = [v17 errorWithDomain:v18 code:v16 userInfo:v20];

    v22 = PLResourceCachingGetLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = [MEMORY[0x1E69BF220] descriptionWithFileURL:v8];
      v43.st_dev = 138412802;
      *&v43.st_mode = v23;
      WORD2(v43.st_ino) = 2082;
      *(&v43.st_ino + 6) = strerror(v16);
      HIWORD(v43.st_gid) = 1024;
      v43.st_rdev = v16;
      _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_ERROR, "Missing file to read inode for %@ (%{public}s [%d])", &v43, 0x1Cu);
    }

    if (a5)
    {
      v24 = v21;
      *a5 = v21;
    }

    goto LABEL_13;
  }

  v10 = v9;
  memset(&v43, 0, sizeof(v43));
  v11 = fstat(v9, &v43);
  v12 = v11 != -1;
  if (v11 == -1)
  {
    v25 = *__error();
    v26 = MEMORY[0x1E696ABC0];
    v27 = *MEMORY[0x1E696A798];
    v41 = *MEMORY[0x1E696A278];
    v28 = [MEMORY[0x1E696AEC0] stringWithUTF8String:strerror(v25)];
    v42 = v28;
    v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
    v30 = [v26 errorWithDomain:v27 code:v25 userInfo:v29];

    v31 = PLResourceCachingGetLog();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = [MEMORY[0x1E69BF220] descriptionWithFileURL:v8];
      v35 = 138412802;
      v36 = v32;
      v37 = 2082;
      v38 = strerror(v25);
      v39 = 1024;
      v40 = v25;
      _os_log_impl(&dword_19BF1F000, v31, OS_LOG_TYPE_ERROR, "Failed to get inode from %@ (%{public}s [%d])", &v35, 0x1Cu);
    }

    if (a5)
    {
      v33 = v30;
      *a5 = v30;
    }

    close(v10);
  }

  else
  {
    st_ino = v43.st_ino;
    v14 = PLResourceCachingGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = [MEMORY[0x1E69BF220] descriptionWithFileURL:v8];
      v35 = 138412546;
      v36 = v15;
      v37 = 2048;
      v38 = st_ino;
      _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_INFO, "Read inode for %@ with fileID %lld", &v35, 0x16u);
    }

    if (a4)
    {
      *a4 = st_ino;
    }
  }

  close(v10);
LABEL_20:

  return v12;
}

+ (BOOL)markChildrenPurgeableForDirectoryAtURL:(id)a3 withUrgency:(int64_t)a4 error:(id *)a5
{
  v48[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = open([v8 fileSystemRepresentation], 0);
  if (v9 < 0)
  {
    v24 = *__error();
    v25 = MEMORY[0x1E696ABC0];
    v26 = *MEMORY[0x1E696A798];
    v47 = *MEMORY[0x1E696A278];
    v27 = [MEMORY[0x1E696AEC0] stringWithUTF8String:strerror(v24)];
    v48[0] = v27;
    v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:&v47 count:1];
    v29 = [v25 errorWithDomain:v26 code:v24 userInfo:v28];

    v30 = PLResourceCachingGetLog();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = [MEMORY[0x1E69BF220] descriptionWithFileURL:v8];
      *buf = 138412802;
      v38 = v31;
      v39 = 2082;
      *v40 = strerror(v24);
      *&v40[8] = 1024;
      *&v40[10] = v24;
      _os_log_impl(&dword_19BF1F000, v30, OS_LOG_TYPE_ERROR, "Missing dir to mark purgeable for %@ (%{public}s [%d])", buf, 0x1Cu);
    }

    if (a5)
    {
      v32 = v29;
      *a5 = v29;
    }

    v12 = 0;
  }

  else
  {
    v10 = v9;
    v36 = [a1 _flagsFromUrgency:a4 markDirectoryChildren:1];
    v11 = ffsctl(v10, 0xC0084A44uLL, &v36, 0);
    v12 = v11 == 0;
    if (v11)
    {
      v13 = v11;
      v35 = a5;
      v14 = *__error();
      v15 = MEMORY[0x1E696ABC0];
      v16 = *MEMORY[0x1E696A798];
      v45 = *MEMORY[0x1E696A278];
      v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:strerror(v14)];
      v46 = v17;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
      v19 = [v15 errorWithDomain:v16 code:v14 userInfo:v18];

      v20 = PLResourceCachingGetLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = [MEMORY[0x1E69BF220] descriptionWithFileURL:v8];
        v22 = strerror(v14);
        *buf = 138413314;
        v38 = v21;
        v39 = 1024;
        *v40 = v13;
        *&v40[4] = 2082;
        *&v40[6] = v22;
        v41 = 1024;
        v42 = v14;
        v43 = 2048;
        v44 = v36;
        _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_ERROR, "Failed to mark %@ as purgeable %d (%{public}s [%d]) (flags 0x%llx)", buf, 0x2Cu);
      }

      if (v35)
      {
        v23 = v19;
        *v35 = v19;
      }
    }

    else
    {
      v19 = PLResourceCachingGetLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v33 = [MEMORY[0x1E69BF220] descriptionWithFileURL:v8];
        *buf = 138412546;
        v38 = v33;
        v39 = 2048;
        *v40 = v36;
        _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_INFO, "Marked %@ children as purgeable with flags 0x%llx", buf, 0x16u);
      }
    }

    close(v10);
  }

  return v12;
}

+ (BOOL)markPurgeableForFileAtURL:(id)a3 withUrgency:(int64_t)a4 outInode:(unint64_t *)a5 error:(id *)a6
{
  v60[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = v10;
  if (!v10)
  {
    v26 = PLResourceCachingGetLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v58.st_dev = 138412290;
      *&v58.st_mode = 0;
      _os_log_impl(&dword_19BF1F000, v26, OS_LOG_TYPE_ERROR, "Missing fileURL to mark purgeable for %@", &v58, 0xCu);
    }

    goto LABEL_23;
  }

  v12 = open([v10 fileSystemRepresentation], 0);
  if (v12 < 0)
  {
    v27 = *__error();
    v28 = MEMORY[0x1E696ABC0];
    v29 = *MEMORY[0x1E696A798];
    v59 = *MEMORY[0x1E696A278];
    v30 = [MEMORY[0x1E696AEC0] stringWithUTF8String:strerror(v27)];
    v60[0] = v30;
    v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v60 forKeys:&v59 count:1];
    v32 = [v28 errorWithDomain:v29 code:v27 userInfo:v31];

    v33 = PLResourceCachingGetLog();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v58.st_dev = 138412802;
      *&v58.st_mode = v11;
      WORD2(v58.st_ino) = 2082;
      *(&v58.st_ino + 6) = strerror(v27);
      HIWORD(v58.st_gid) = 1024;
      v58.st_rdev = v27;
      _os_log_impl(&dword_19BF1F000, v33, OS_LOG_TYPE_ERROR, "Missing file to mark purgeable for %@ (%{public}s [%d])", &v58, 0x1Cu);
    }

    if (a6)
    {
      v34 = v32;
      *a6 = v32;
    }

    goto LABEL_23;
  }

  v13 = v12;
  memset(&v58, 0, sizeof(v58));
  if (fstat(v12, &v58) == -1)
  {
    v35 = *__error();
    v36 = MEMORY[0x1E696ABC0];
    v37 = *MEMORY[0x1E696A798];
    v56 = *MEMORY[0x1E696A278];
    v38 = [MEMORY[0x1E696AEC0] stringWithUTF8String:strerror(v35)];
    v57 = v38;
    v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
    v40 = [v36 errorWithDomain:v37 code:v35 userInfo:v39];

    v41 = PLResourceCachingGetLog();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v49 = v11;
      v50 = 2082;
      *v51 = strerror(v35);
      *&v51[8] = 1024;
      *&v51[10] = v35;
      _os_log_impl(&dword_19BF1F000, v41, OS_LOG_TYPE_ERROR, "Failed to get inode from %@ (%{public}s [%d]), skip marking it as purgeable", buf, 0x1Cu);
    }

    if (a6)
    {
      v42 = v40;
      *a6 = v40;
    }

    close(v13);

LABEL_23:
    v15 = 0;
    goto LABEL_29;
  }

  v47 = [a1 _flagsFromUrgency:a4 markDirectoryChildren:0];
  v14 = ffsctl(v13, 0xC0084A44uLL, &v47, 0);
  v15 = v14 == 0;
  if (v14)
  {
    v16 = v14;
    v46 = a6;
    v17 = *__error();
    v18 = MEMORY[0x1E696ABC0];
    v19 = *MEMORY[0x1E696A798];
    v54 = *MEMORY[0x1E696A278];
    v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:strerror(v17)];
    v55 = v20;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
    v22 = [v18 errorWithDomain:v19 code:v17 userInfo:v21];

    v23 = PLResourceCachingGetLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = strerror(v17);
      *buf = 138413314;
      v49 = v11;
      v50 = 1024;
      *v51 = v16;
      *&v51[4] = 2082;
      *&v51[6] = v24;
      *&v51[14] = 1024;
      *&v51[16] = v17;
      v52 = 2048;
      v53 = v47;
      _os_log_impl(&dword_19BF1F000, v23, OS_LOG_TYPE_ERROR, "Failed to mark %@ as purgeable %d (%{public}s [%d]) (flags 0x%llx)", buf, 0x2Cu);
    }

    if (v46)
    {
      v25 = v22;
      *v46 = v22;
    }
  }

  else
  {
    st_ino = v58.st_ino;
    v44 = PLResourceCachingGetLog();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      v49 = v11;
      v50 = 2048;
      *v51 = st_ino;
      *&v51[8] = 2048;
      *&v51[10] = v47;
      _os_log_impl(&dword_19BF1F000, v44, OS_LOG_TYPE_INFO, "Marked %@ as purgeable with fileID %lld flags 0x%llx", buf, 0x20u);
    }

    if (a5)
    {
      *a5 = st_ino;
    }
  }

  close(v13);
LABEL_29:

  return v15;
}

+ (unint64_t)_flagsFromUrgency:(int64_t)a3 markDirectoryChildren:(BOOL)a4
{
  v4 = 65537;
  if (a3 > 0)
  {
    v5 = 536936449;
    v6 = 1024;
    v8 = 2048;
    if (a3 == 2)
    {
      v4 = 805371905;
    }

    else
    {
      v8 = 0;
    }

    v7 = a3 == 1;
    if (a3 != 1)
    {
      v6 = v8;
    }
  }

  else
  {
    if (a3 == -1)
    {
      if (a4)
      {
        return 73729;
      }

      else
      {
        return 65537;
      }
    }

    v5 = 268500993;
    v6 = 512;
    v7 = a3 == 0;
    if (a3)
    {
      v6 = 0;
    }
  }

  if (v7)
  {
    v4 = v5;
  }

  if (a4)
  {
    v6 |= 0x2000uLL;
  }

  return v4 | v6;
}

@end