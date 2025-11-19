@interface PLDelayedFiledSystemDeletions
+ (id)_filesystemDeletionQueue;
+ (id)deletionsFromChangeHubEvent:(id)a3;
+ (void)appendDescriptionForEvent:(id)a3 toComponents:(id)a4;
+ (void)waitForAllDelayedDeletionsToFinish;
- (PLDelayedFiledSystemDeletions)initWithFilesystemDeletionInfos:(id)a3;
- (id)debugDescription;
- (void)addFilesystemDeletionInfo:(id)a3;
- (void)appendToXPCMessage:(id)a3 managedObjectContext:(id)a4;
- (void)dealloc;
- (void)deleteAllRemainingFilesAndThumbnailsWithPhotoLibrary:(id)a3;
@end

@implementation PLDelayedFiledSystemDeletions

- (PLDelayedFiledSystemDeletions)initWithFilesystemDeletionInfos:(id)a3
{
  v5 = a3;
  v6 = [(PLDelayedFiledSystemDeletions *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_deletionInfos, a3);
  }

  return v7;
}

- (void)deleteAllRemainingFilesAndThumbnailsWithPhotoLibrary:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((PLIsAssetsd() & 1) == 0)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"PLDelayedFiledSystemDeletions.m" lineNumber:353 description:@"deleteAllRemainingFilesAndThumbnails must only be called by assetsd"];
  }

  if ([(NSMutableArray *)self->_deletionInfos count])
  {
    v20 = [MEMORY[0x1E69BF360] transaction:"-[PLDelayedFiledSystemDeletions deleteAllRemainingFilesAndThumbnailsWithPhotoLibrary:]"];
    v6 = PLBackendGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(NSMutableArray *)self->_deletionInfos count];
      *buf = 67109120;
      LODWORD(v33) = v7;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEFAULT, "Processing %d asset file system deletions", buf, 8u);
    }

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v21 = self;
    v8 = self->_deletionInfos;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v28 objects:v34 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v29;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v29 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v28 + 1) + 8 * i);
          v14 = PLBackendGetLog();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v15 = [v13 uuid];
            *buf = 138543362;
            v33 = v15;
            _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_DEFAULT, "Deleting asset file resources and thumbs for %{public}@", buf, 0xCu);
          }
        }

        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v28 objects:v34 count:16];
      }

      while (v10);
    }

    if (!v5)
    {
      v5 = +[PLPhotoLibrary systemPhotoLibrary];
    }

    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __86__PLDelayedFiledSystemDeletions_deleteAllRemainingFilesAndThumbnailsWithPhotoLibrary___block_invoke;
    v25[3] = &unk_1E7578848;
    v16 = v5;
    v26 = v16;
    v27 = v21;
    [v16 performBlockAndWait:v25 completionHandler:0];
    v17 = +[PLDelayedFiledSystemDeletions _filesystemDeletionQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __86__PLDelayedFiledSystemDeletions_deleteAllRemainingFilesAndThumbnailsWithPhotoLibrary___block_invoke_2;
    block[3] = &unk_1E75761B8;
    block[4] = v21;
    v5 = v16;
    v23 = v5;
    v24 = v20;
    v18 = v20;
    dispatch_sync(v17, block);
  }
}

void __86__PLDelayedFiledSystemDeletions_deleteAllRemainingFilesAndThumbnailsWithPhotoLibrary___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) thumbnailManager];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v13 = a1;
  obj = *(*(a1 + 40) + 8);
  v3 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v16;
    do
    {
      v6 = 0;
      do
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v15 + 1) + 8 * v6);
        v8 = objc_autoreleasePoolPush();
        v9 = [v7 thumbnailIdentifier];
        v10 = [v7 thumbnailIndex];
        if ((~v10 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v12 = [v7 uuid];
          [v2 deleteThumbnailsWithIdentifier:v9 orIndex:v10 uuid:v12];

          v11 = [MEMORY[0x1E696AC90] indexSetWithIndex:v10];
          +[PLThumbnailIndexes recycleThumbnailIndexes:inLibrary:timestamp:](PLThumbnailIndexes, "recycleThumbnailIndexes:inLibrary:timestamp:", v11, *(v13 + 32), [v7 timestamp]);
        }

        else
        {
          if (![v9 length])
          {
            goto LABEL_11;
          }

          v11 = [v7 uuid];
          [v2 deleteThumbnailsWithIdentifier:v9 orIndex:v10 uuid:v11];
        }

LABEL_11:
        objc_autoreleasePoolPop(v8);
        ++v6;
      }

      while (v4 != v6);
      v4 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v4);
  }
}

void __86__PLDelayedFiledSystemDeletions_deleteAllRemainingFilesAndThumbnailsWithPhotoLibrary___block_invoke_2(uint64_t a1)
{
  v61 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v37 = a1;
  obj = *(*(a1 + 32) + 8);
  v40 = [obj countByEnumeratingWithState:&v51 objects:v60 count:16];
  if (v40)
  {
    v39 = *v52;
    v43 = *MEMORY[0x1E696AA08];
    v42 = *MEMORY[0x1E696A798];
    do
    {
      v3 = 0;
      do
      {
        if (*v52 != v39)
        {
          objc_enumerationMutation(obj);
        }

        v41 = v3;
        v4 = *(*(&v51 + 1) + 8 * v3);
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v44 = [v4 fileURLs];
        v5 = [v44 countByEnumeratingWithState:&v47 objects:v59 count:16];
        if (v5)
        {
          v6 = v5;
          v7 = *v48;
          do
          {
            v8 = 0;
            do
            {
              if (*v48 != v7)
              {
                objc_enumerationMutation(v44);
              }

              v9 = *(*(&v47 + 1) + 8 * v8);
              v46 = 0;
              v10 = [v2 removeItemAtURL:v9 error:&v46];
              v11 = v46;
              v12 = v11;
              if (v10)
              {
                v13 = PLBackendGetLog();
                if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
                {
                  v14 = [v9 path];
                  *buf = 138412290;
                  v56 = v14;
                  _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEBUG, "Deleted %@", buf, 0xCu);
                }

LABEL_24:
                v27 = v12;
                goto LABEL_25;
              }

              v15 = [v11 userInfo];
              v13 = [v15 objectForKey:v43];

              if ([v13 code]== 2)
              {
                v16 = [v13 domain];
                v17 = [v16 isEqualToString:v42];

                if (v17)
                {
                  goto LABEL_24;
                }
              }

              v18 = PLBackendGetLog();
              if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
              {
                v19 = [v9 path];
                *buf = 138412546;
                v56 = v19;
                v57 = 2112;
                v58 = v12;
                _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_ERROR, "Unable to unlink %@: %@", buf, 0x16u);
              }

              v20 = MEMORY[0x1E69BF238];
              v21 = [v9 path];
              LODWORD(v20) = [v20 stripImmutableFlagIfNecessaryFromFileAtPath:v21];

              if (!v20)
              {
                goto LABEL_24;
              }

              v22 = PLBackendGetLog();
              if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
              {
                v23 = [v9 path];
                v24 = __error();
                v25 = strerror(*v24);
                *buf = 138412546;
                v56 = v23;
                v57 = 2082;
                v58 = v25;
                _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_DEFAULT, "Retrying after clearing IMMUTABLE flag from %@ after failing to unlink file (%{public}s).", buf, 0x16u);
              }

              v45 = v12;
              v26 = [v2 removeItemAtURL:v9 error:&v45];
              v27 = v45;

              v28 = PLBackendGetLog();
              v29 = v28;
              if (v26)
              {
                if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
                {
                  v30 = [v9 path];
                  *buf = 138412290;
                  v56 = v30;
                  v31 = v29;
                  v32 = OS_LOG_TYPE_DEFAULT;
                  v33 = "Successfully unlinked %@ after clearing IMMUTABLE flag";
                  v34 = 12;
LABEL_29:
                  _os_log_impl(&dword_19BF1F000, v31, v32, v33, buf, v34);
                }
              }

              else if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
              {
                v30 = [v9 path];
                *buf = 138412546;
                v56 = v30;
                v57 = 2112;
                v58 = v27;
                v31 = v29;
                v32 = OS_LOG_TYPE_ERROR;
                v33 = "Unable to unlink %@: after clearing IMMUTABLE flag (%@)";
                v34 = 22;
                goto LABEL_29;
              }

LABEL_25:
              ++v8;
            }

            while (v6 != v8);
            v35 = [v44 countByEnumeratingWithState:&v47 objects:v59 count:16];
            v6 = v35;
          }

          while (v35);
        }

        v3 = v41 + 1;
      }

      while (v41 + 1 != v40);
      v40 = [obj countByEnumeratingWithState:&v51 objects:v60 count:16];
    }

    while (v40);
  }

  v36 = [*(v37 + 40) libraryBundle];
  [v36 touch];

  [*(v37 + 48) stillAlive];
}

- (void)appendToXPCMessage:(id)a3 managedObjectContext:(id)a4
{
  v119 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  xdict = v6;
  if (!v6)
  {
    v68 = [MEMORY[0x1E696AAA8] currentHandler];
    [v68 handleFailureInMethod:a2 object:self file:@"PLDelayedFiledSystemDeletions.m" lineNumber:206 description:{@"Invalid parameter not satisfying: %@", @"message != NULL"}];
  }

  v8 = [MEMORY[0x1E695DF90] dictionary];
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  v111 = 0u;
  v77 = self;
  v9 = self->_deletionInfos;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v108 objects:v118 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v109;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v109 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v108 + 1) + 8 * i);
        v15 = [v14 directory];
        v16 = [v14 filename];
        if ([v15 length] && objc_msgSend(v16, "length"))
        {
          v17 = [v8 objectForKey:v15];
          if (!v17)
          {
            v17 = [MEMORY[0x1E695DFA8] set];
            [v8 setObject:v17 forKey:v15];
          }

          [v17 addObject:v16];
        }
      }

      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v108 objects:v118 count:16];
    }

    while (v11);
  }

  v18 = [MEMORY[0x1E695DF70] array];
  v105[0] = MEMORY[0x1E69E9820];
  v105[1] = 3221225472;
  v105[2] = __73__PLDelayedFiledSystemDeletions_appendToXPCMessage_managedObjectContext___block_invoke;
  v105[3] = &unk_1E756DD90;
  v74 = v7;
  v106 = v74;
  v19 = v18;
  v107 = v19;
  [v8 enumerateKeysAndObjectsUsingBlock:v105];
  v76 = v19;
  v75 = v8;
  if ([v19 count])
  {
    v20 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v19, "count")}];
    v101 = 0u;
    v102 = 0u;
    v103 = 0u;
    v104 = 0u;
    v21 = v19;
    v22 = [v21 countByEnumeratingWithState:&v101 objects:v117 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v102;
      do
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v102 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v101 + 1) + 8 * j);
          v27 = [v26 directory];
          v28 = [v26 filename];
          if ([v27 length] && objc_msgSend(v28, "length"))
          {
            v29 = [v27 stringByAppendingPathComponent:v28];
            [v20 addObject:v29];
          }
        }

        v23 = [v21 countByEnumeratingWithState:&v101 objects:v117 count:16];
      }

      while (v23);
    }

    v99 = 0u;
    v100 = 0u;
    v97 = 0u;
    v98 = 0u;
    v30 = v77->_deletionInfos;
    v31 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v97 objects:v116 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v98;
      context = v30;
      do
      {
        for (k = 0; k != v32; ++k)
        {
          if (*v98 != v33)
          {
            objc_enumerationMutation(v30);
          }

          v35 = *(*(&v97 + 1) + 8 * k);
          v36 = [v35 directory];
          v37 = [v35 filename];
          if ([v36 length] && objc_msgSend(v37, "length"))
          {
            v38 = [v36 stringByAppendingPathComponent:v37];
            if ([v20 containsObject:v38])
            {
              v39 = v20;
              v40 = PLBackendGetLog();
              if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
              {
                v41 = [v35 fileURLs];
                *buf = 138412290;
                v114 = v41;
                _os_log_impl(&dword_19BF1F000, v40, OS_LOG_TYPE_ERROR, "Denying attempt to delete file paths %@ since we found duplicates", buf, 0xCu);

                v30 = context;
              }

              [v35 setFileURLs:0];
              [v35 setThumbnailIdentifier:0];
              v20 = v39;
            }
          }
        }

        v32 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v97 objects:v116 count:16];
      }

      while (v32);
    }
  }

  v42 = xpc_array_create(0, 0);
  xpc_dictionary_set_value(xdict, "fsDeletionURIs", v42);
  xarray = xpc_array_create(0, 0);
  xpc_dictionary_set_value(xdict, "fsDeletionPaths", xarray);
  v84 = xpc_array_create(0, 0);
  xpc_dictionary_set_value(xdict, "thumbnailIdentifiers", v84);
  v83 = xpc_array_create(0, 0);
  xpc_dictionary_set_value(xdict, "thumbnailIndexes", v83);
  v43 = xpc_array_create(0, 0);
  xpc_dictionary_set_value(xdict, "thumbnailUUIDs", v43);
  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  obj = v77->_deletionInfos;
  v86 = [(NSMutableArray *)obj countByEnumeratingWithState:&v93 objects:v115 count:16];
  if (v86)
  {
    v79 = 0;
    v81 = *v94;
    v82 = v42;
    do
    {
      for (m = 0; m != v86; ++m)
      {
        if (*v94 != v81)
        {
          objc_enumerationMutation(obj);
        }

        v45 = v43;
        v46 = *(*(&v93 + 1) + 8 * m);
        contexta = objc_autoreleasePoolPush();
        v47 = [v46 objectIDURI];
        v48 = CFURLGetBytes(v47, buf, 1024);
        if (!v48)
        {
          v63 = [MEMORY[0x1E696AAA8] currentHandler];
          [v63 handleFailureInMethod:a2 object:v77 file:@"PLDelayedFiledSystemDeletions.m" lineNumber:293 description:@"Unable to encode object URI."];
        }

        xpc_array_set_data(v42, 0xFFFFFFFFFFFFFFFFLL, buf, v48);
        v49 = [v46 fileURLs];
        v50 = xpc_array_create(0, 0);
        xpc_array_set_value(xarray, 0xFFFFFFFFFFFFFFFFLL, v50);
        v91 = 0u;
        v92 = 0u;
        v89 = 0u;
        v90 = 0u;
        v51 = v49;
        v52 = [v51 countByEnumeratingWithState:&v89 objects:v112 count:16];
        if (v52)
        {
          v53 = v52;
          v54 = *v90;
          do
          {
            for (n = 0; n != v53; ++n)
            {
              if (*v90 != v54)
              {
                objc_enumerationMutation(v51);
              }

              v56 = [*(*(&v89 + 1) + 8 * n) path];
              xpc_array_set_string(v50, 0xFFFFFFFFFFFFFFFFLL, [v56 fileSystemRepresentation]);
            }

            v53 = [v51 countByEnumeratingWithState:&v89 objects:v112 count:16];
          }

          while (v53);
        }

        xpc_array_set_uint64(v83, 0xFFFFFFFFFFFFFFFFLL, [v46 thumbnailIndex]);
        v57 = [v46 thumbnailIdentifier];
        v58 = [v57 UTF8String];

        if (v58)
        {
          v59 = v58;
        }

        else
        {
          v59 = "";
        }

        xpc_array_set_string(v84, 0xFFFFFFFFFFFFFFFFLL, v59);
        v60 = [v46 uuid];
        v61 = [v60 UTF8String];

        if (v61)
        {
          v62 = v61;
        }

        else
        {
          v62 = "";
        }

        v43 = v45;
        xpc_array_set_string(v45, 0xFFFFFFFFFFFFFFFFLL, v62);
        if ([v46 thumbnailIndex] != -1 && objc_msgSend(v46, "thumbnailIndex") != 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v46, "timestamp") > v79)
        {
          v79 = [v46 timestamp];
        }

        objc_autoreleasePoolPop(contexta);
        v42 = v82;
      }

      v86 = [(NSMutableArray *)obj countByEnumeratingWithState:&v93 objects:v115 count:16];
    }

    while (v86);
  }

  else
  {
    v79 = 0;
  }

  xpc_dictionary_set_uint64(xdict, "deletionTimestamp", v79);
  count = xpc_array_get_count(v42);
  if (count != xpc_array_get_count(xarray))
  {
    v69 = [MEMORY[0x1E696AAA8] currentHandler];
    [v69 handleFailureInMethod:a2 object:v77 file:@"PLDelayedFiledSystemDeletions.m" lineNumber:328 description:@"len(assetURIs) != len(fileURLsList) ?"];
  }

  v65 = xpc_array_get_count(v42);
  if (v65 != xpc_array_get_count(v83))
  {
    v70 = [MEMORY[0x1E696AAA8] currentHandler];
    [v70 handleFailureInMethod:a2 object:v77 file:@"PLDelayedFiledSystemDeletions.m" lineNumber:330 description:@"len(assetURIs) != len(thumbnailIndexes) ?"];
  }

  v66 = xpc_array_get_count(v42);
  if (v66 != xpc_array_get_count(v84))
  {
    v71 = [MEMORY[0x1E696AAA8] currentHandler];
    [v71 handleFailureInMethod:a2 object:v77 file:@"PLDelayedFiledSystemDeletions.m" lineNumber:332 description:@"len(assetURIs) != len(thumbnailIdentifiers) ?"];
  }

  v67 = xpc_array_get_count(v42);
  if (v67 != xpc_array_get_count(v43))
  {
    v72 = [MEMORY[0x1E696AAA8] currentHandler];
    [v72 handleFailureInMethod:a2 object:v77 file:@"PLDelayedFiledSystemDeletions.m" lineNumber:334 description:@"len(assetURIs) != len(thumbnailUUIDs) ?"];
  }
}

void __73__PLDelayedFiledSystemDeletions_appendToXPCMessage_managedObjectContext___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x1E695D5E0];
  v6 = a3;
  v7 = a2;
  v8 = +[PLManagedAsset entityName];
  v11 = [v5 fetchRequestWithEntityName:v8];

  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"directory = %@ AND filename IN %@", v7, v6];

  [v11 setPredicate:v9];
  v10 = [*(a1 + 32) executeFetchRequest:v11 error:0];
  if ([v10 count])
  {
    [*(a1 + 40) addObjectsFromArray:v10];
  }
}

- (void)addFilesystemDeletionInfo:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (!self->_deletionInfos)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    deletionInfos = self->_deletionInfos;
    self->_deletionInfos = v5;

    v4 = v7;
  }

  if (v4)
  {
    [(NSMutableArray *)self->_deletionInfos addObject:v7];
    v4 = v7;
  }
}

- (void)dealloc
{
  deletionInfos = self->_deletionInfos;
  self->_deletionInfos = 0;

  v4.receiver = self;
  v4.super_class = PLDelayedFiledSystemDeletions;
  [(PLDelayedFiledSystemDeletions *)&v4 dealloc];
}

- (id)debugDescription
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD60] string];
  [v3 appendFormat:@"<%p %@> {", self, objc_opt_class()];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = self->_deletionInfos;
  v4 = [(NSMutableArray *)obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v17 + 1) + 8 * i);
        v9 = [v8 objectIDURI];
        v10 = [v8 fileURLs];
        v11 = [v10 componentsJoinedByString:{@", "}];
        v12 = [v8 thumbnailIndex];
        v13 = [v8 thumbnailIdentifier];
        v14 = [v8 uuid];
        [v3 appendFormat:@"\n%@: { %@ }, [%lu, %@]: %@", v9, v11, v12, v13, v14];
      }

      v5 = [(NSMutableArray *)obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v5);
  }

  [v3 appendString:@"\n}"];

  return v3;
}

+ (id)deletionsFromChangeHubEvent:(id)a3
{
  v5 = a3;
  v6 = xpc_dictionary_get_value(v5, "fsDeletionURIs");
  v7 = xpc_dictionary_get_value(v5, "fsDeletionPaths");
  v8 = xpc_dictionary_get_value(v5, "thumbnailIndexes");
  v9 = xpc_dictionary_get_value(v5, "thumbnailIdentifiers");
  v10 = xpc_dictionary_get_value(v5, "thumbnailUUIDs");
  uint64 = xpc_dictionary_get_uint64(v5, "deletionTimestamp");
  if (v6)
  {
    v12 = uint64;
    if (!v7)
    {
      v26 = [MEMORY[0x1E696AAA8] currentHandler];
      [v26 handleFailureInMethod:a2 object:a1 file:@"PLDelayedFiledSystemDeletions.m" lineNumber:471 description:@"fileURLsList is out of sync?"];
    }

    count = xpc_array_get_count(v6);
    if (count != xpc_array_get_count(v7))
    {
      v27 = [MEMORY[0x1E696AAA8] currentHandler];
      [v27 handleFailureInMethod:a2 object:a1 file:@"PLDelayedFiledSystemDeletions.m" lineNumber:473 description:@"len(xpcAssetURIs) != len(xpcFileURLsList) ?"];
    }

    v14 = xpc_array_get_count(v6);
    if (v14 != xpc_array_get_count(v8))
    {
      v28 = [MEMORY[0x1E696AAA8] currentHandler];
      [v28 handleFailureInMethod:a2 object:a1 file:@"PLDelayedFiledSystemDeletions.m" lineNumber:475 description:@"len(xpcAssetURIs) != len(xpcThumbnailIndexes) ?"];
    }

    v15 = xpc_array_get_count(v6);
    if (v15 != xpc_array_get_count(v8))
    {
      v29 = [MEMORY[0x1E696AAA8] currentHandler];
      [v29 handleFailureInMethod:a2 object:a1 file:@"PLDelayedFiledSystemDeletions.m" lineNumber:477 description:@"len(xpcAssetURIs) != len(xpcThumbnailIndexes) ?"];
    }

    v16 = xpc_array_get_count(v6);
    if (v16 != xpc_array_get_count(v9))
    {
      v30 = [MEMORY[0x1E696AAA8] currentHandler];
      [v30 handleFailureInMethod:a2 object:a1 file:@"PLDelayedFiledSystemDeletions.m" lineNumber:479 description:@"len(xpcAssetURIs) != len(xpcThumbnailIdentifiers) ?"];
    }

    v17 = xpc_array_get_count(v6);
    if (v17 != xpc_array_get_count(v10))
    {
      v31 = [MEMORY[0x1E696AAA8] currentHandler];
      [v31 handleFailureInMethod:a2 object:a1 file:@"PLDelayedFiledSystemDeletions.m" lineNumber:481 description:@"len(xpcAssetURIs) != len(xpcThumbnailUUIDs) ?"];
    }

    v18 = objc_autoreleasePoolPush();
    v19 = [MEMORY[0x1E695DF70] array];
    v20 = a2;
    v21 = v19;
    v32 = MEMORY[0x1E69E9820];
    v33 = 3221225472;
    v34 = __61__PLDelayedFiledSystemDeletions_deletionsFromChangeHubEvent___block_invoke;
    v35 = &unk_1E756DE08;
    v41 = v20;
    v42 = a1;
    v36 = v7;
    v37 = v8;
    v38 = v9;
    v43 = v12;
    v39 = v10;
    v40 = v21;
    v22 = v21;
    xpc_array_apply(v6, &v32);
    v23 = [a1 alloc];
    v24 = [v23 initWithFilesystemDeletionInfos:{v22, v32, v33, v34, v35}];

    objc_autoreleasePoolPop(v18);
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

uint64_t __61__PLDelayedFiledSystemDeletions_deletionsFromChangeHubEvent___block_invoke(uint64_t a1, size_t a2, void *a3)
{
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  bytes_ptr = xpc_data_get_bytes_ptr(v5);
  length = xpc_data_get_length(v5);
  v9 = CFURLCreateWithBytes(0, bytes_ptr, length, 0x8000100u, 0);
  if (!v9)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:*(a1 + 72) object:*(a1 + 80) file:@"PLDelayedFiledSystemDeletions.m" lineNumber:489 description:@"Invalid asset URI."];
  }

  v10 = [MEMORY[0x1E695DF70] array];
  v11 = xpc_array_get_value(*(a1 + 32), a2);
  applier[0] = MEMORY[0x1E69E9820];
  applier[1] = 3221225472;
  applier[2] = __61__PLDelayedFiledSystemDeletions_deletionsFromChangeHubEvent___block_invoke_2;
  applier[3] = &unk_1E756DDB8;
  v12 = v10;
  v20 = v12;
  xpc_array_apply(v11, applier);
  uint64 = xpc_array_get_uint64(*(a1 + 40), a2);
  v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{xpc_array_get_string(*(a1 + 48), a2)}];
  v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{xpc_array_get_string(*(a1 + 56), a2)}];
  v16 = [[PLFilesystemDeletionInfo alloc] initWithObjectIDURI:v9 directory:0 filename:0 fileURLs:v12 thumbnailIndex:uint64 thumbnailIdentifier:v14 uuid:v15 timestamp:*(a1 + 88)];
  if (v16)
  {
    [*(a1 + 64) addObject:v16];
  }

  CFRelease(v9);

  objc_autoreleasePoolPop(v6);
  return 1;
}

uint64_t __61__PLDelayedFiledSystemDeletions_deletionsFromChangeHubEvent___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  string_ptr = xpc_string_get_string_ptr(v4);
  length = xpc_string_get_length(v4);

  v7 = CFURLCreateFromFileSystemRepresentation(0, string_ptr, length, 0);
  [*(a1 + 32) addObject:v7];
  CFRelease(v7);
  return 1;
}

+ (void)appendDescriptionForEvent:(id)a3 toComponents:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = objc_autoreleasePoolPush();
  v10 = xpc_dictionary_get_value(v7, "fsDeletionURIs");
  v11 = xpc_dictionary_get_value(v7, "fsDeletionPaths");
  if (v10)
  {
    count = xpc_array_get_count(v10);
    if (count != xpc_array_get_count(v11))
    {
      v19 = [MEMORY[0x1E696AAA8] currentHandler];
      v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[PLDelayedFiledSystemDeletions appendDescriptionForEvent:toComponents:]"];
      [v19 handleFailureInFunction:v20 file:@"PLDelayedFiledSystemDeletions.m" lineNumber:427 description:@"len(xpcAssetURIs) != len(xpcFileURLsList) ?"];
    }

    v13 = [MEMORY[0x1E695DF70] array];
    applier = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = __72__PLDelayedFiledSystemDeletions_appendDescriptionForEvent_toComponents___block_invoke;
    v24 = &unk_1E756DDE0;
    v27 = a2;
    v28 = a1;
    v25 = v11;
    v26 = v13;
    v14 = v13;
    xpc_array_apply(v10, &applier);
    v15 = MEMORY[0x1E696AEC0];
    v16 = xpc_array_get_count(v10);
    v17 = [v14 componentsJoinedByString:{@", "}];
    v18 = [v15 stringWithFormat:@"%zu delayed deletes: {%@}", v16, v17, applier, v22, v23, v24];
    [v8 addObject:v18];
  }

  objc_autoreleasePoolPop(v9);
}

uint64_t __72__PLDelayedFiledSystemDeletions_appendDescriptionForEvent_toComponents___block_invoke(uint64_t a1, size_t a2, void *a3)
{
  v5 = a3;
  bytes_ptr = xpc_data_get_bytes_ptr(v5);
  length = xpc_data_get_length(v5);

  v8 = CFURLCreateWithBytes(0, bytes_ptr, length, 0x8000100u, 0);
  if (!v8)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:*(a1 + 48) object:*(a1 + 56) file:@"PLDelayedFiledSystemDeletions.m" lineNumber:432 description:@"Invalid asset URI."];
  }

  v9 = [(__CFURL *)v8 pathComponents];
  if ([v9 count] >= 3)
  {
    v10 = [v9 subarrayWithRange:{objc_msgSend(v9, "count") - 2, 2}];

    v9 = v10;
  }

  v11 = [MEMORY[0x1E696AEC0] pathWithComponents:v9];
  CFRelease(v8);
  v12 = [MEMORY[0x1E695DF70] array];
  v13 = xpc_array_get_value(*(a1 + 32), a2);
  applier = MEMORY[0x1E69E9820];
  v22 = 3221225472;
  v23 = __72__PLDelayedFiledSystemDeletions_appendDescriptionForEvent_toComponents___block_invoke_2;
  v24 = &unk_1E756DDB8;
  v25 = v12;
  v14 = v12;
  xpc_array_apply(v13, &applier);

  v15 = *(a1 + 40);
  v16 = MEMORY[0x1E696AEC0];
  v17 = [v14 componentsJoinedByString:{@", "}];
  v18 = [v16 stringWithFormat:@"%@ (%zu): [%@]", v11, a2, v17, applier, v22, v23, v24];
  [v15 addObject:v18];

  return 1;
}

uint64_t __72__PLDelayedFiledSystemDeletions_appendDescriptionForEvent_toComponents___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x1E695DEF0];
  v5 = a3;
  string_ptr = xpc_string_get_string_ptr(v5);
  length = xpc_string_get_length(v5);

  v8 = [v4 dataWithBytes:string_ptr length:length];
  v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v8 encoding:4];
  [*(a1 + 32) addObject:v9];

  return 1;
}

+ (void)waitForAllDelayedDeletionsToFinish
{
  v2 = [a1 _filesystemDeletionQueue];
  dispatch_sync(v2, &__block_literal_global_148_54432);
}

+ (id)_filesystemDeletionQueue
{
  pl_dispatch_once();
  v2 = _filesystemDeletionQueue_filesystemDeletionQueue;

  return v2;
}

void __57__PLDelayedFiledSystemDeletions__filesystemDeletionQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("PLDelayedFileSystemDeletions", v2);
  v1 = _filesystemDeletionQueue_filesystemDeletionQueue;
  _filesystemDeletionQueue_filesystemDeletionQueue = v0;
}

@end