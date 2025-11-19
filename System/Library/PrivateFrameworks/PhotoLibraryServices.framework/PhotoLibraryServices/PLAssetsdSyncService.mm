@interface PLAssetsdSyncService
- (PLAssetsdSyncService)initWithLibraryServicesManager:(id)a3;
- (id)_fileRestoreExclusionPaths;
- (id)_readRestoreAlbumMetadataForAlbum:(id)a3;
- (void)_addAsset:(id)a3 toAlbumsForUUID:(id)a4 inLibrary:(id)a5;
- (void)_cleanupAlbumMetadataAsideFilesAfterRestore;
- (void)_finalizeOTARestoreEndedAndRecreateAlbums:(BOOL)a3;
- (void)_linkPathsAside:(id)a3;
- (void)_recoverAsideFiles:(id)a3;
- (void)_updatePendingCountForMissingAsset:(id)a3 inLibrary:(id)a4;
- (void)_updateRestoredAssetWithUUID:(id)a3 paths:(id)a4 fixAddedDate:(BOOL)a5;
- (void)finalizeOTARestoreRecreatingAlbums:(BOOL)a3;
- (void)updateRestoredAssetWithUUID:(id)a3 paths:(id)a4 fixAddedDate:(BOOL)a5;
@end

@implementation PLAssetsdSyncService

- (void)_addAsset:(id)a3 toAlbumsForUUID:(id)a4 inLibrary:(id)a5
{
  v80 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v66 = a4;
  v9 = a5;
  v10 = MEMORY[0x1E695DF90];
  v62 = self;
  v11 = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  v12 = [v11 pathManager];
  v13 = [v12 pathToAssetsToAlbumsMapping];
  v14 = [v10 dictionaryWithContentsOfFile:v13];

  if (!v14)
  {
    v16 = PLMigrationGetLog();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    *buf = 0;
    v17 = "Error: Did not find the assets to albums mapping file.";
LABEL_10:
    v18 = v16;
    v19 = 2;
    goto LABEL_11;
  }

  if (![v14 count])
  {
    v16 = PLMigrationGetLog();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    *buf = 0;
    v17 = "Error: The assests to albums mappings is empty.";
    goto LABEL_10;
  }

  v15 = [v14 objectForKey:v66];
  if (v15)
  {
    goto LABEL_13;
  }

  v16 = PLMigrationGetLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v76 = v66;
    v17 = "Error: did not find the list of albums asset %@ is associated with";
    v18 = v16;
    v19 = 12;
LABEL_11:
    _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_ERROR, v17, buf, v19);
  }

LABEL_12:

  v15 = 0;
LABEL_13:
  v20 = [v8 pathForOriginalFile];
  v21 = [v20 stringByDeletingLastPathComponent];

  v22 = [MEMORY[0x1E695DFF8] fileURLWithPath:v21 isDirectory:1];
  v74 = 0;
  [PLModelMigrator shouldImportAssetsFromDCIMSubDirectoryAtURL:v22 assetsKind:&v74];
  if (v74 == 1)
  {
    v23 = [v9 allImportedPhotosAlbumCreateIfNeeded:0];
    if (v23)
    {
      v24 = v23;
LABEL_17:
      v26 = [v24 mutableAssets];
      [v26 addObject:v8];

      goto LABEL_18;
    }

    v72[0] = MEMORY[0x1E69E9820];
    v72[1] = 3221225472;
    v72[2] = __60__PLAssetsdSyncService__addAsset_toAlbumsForUUID_inLibrary___block_invoke;
    v72[3] = &unk_1E75781E8;
    v25 = v9;
    v73 = v25;
    [v25 performTransactionAndWait:v72];
    v24 = [v25 allImportedPhotosAlbumCreateIfNeeded:0];

    if (v24)
    {
      goto LABEL_17;
    }
  }

LABEL_18:
  if (+[PLAvalanche shouldOnlyShowAvalanchePicks](PLAvalanche, "shouldOnlyShowAvalanchePicks") && [v8 isPartOfBurst] && (objc_msgSend(v8, "avalanchePickTypeIsVisible") & 1) == 0)
  {
    [v8 setVisibilityState:2];

    v15 = 0;
  }

  if ([v15 count])
  {
    v56 = v22;
    v57 = v21;
    v58 = v15;
    v59 = v14;
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    obj = v15;
    v27 = [obj countByEnumeratingWithState:&v68 objects:v79 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v69;
      v64 = v8;
      v60 = *v69;
      v61 = v9;
      do
      {
        v30 = 0;
        v63 = v28;
        do
        {
          if (*v69 != v29)
          {
            objc_enumerationMutation(obj);
          }

          v31 = *(*(&v68 + 1) + 8 * v30);
          v32 = [v9 albumWithUuid:{v31, v56, v57, v58, v59}];
          v33 = v32;
          if (v32)
          {
            if ([v32 kindValue] == 1000)
            {
              v34 = [v33 mutableAssets];
              v35 = [v34 count];

              v36 = [v33 mutableAssets];
              v37 = [v36 indexOfObject:v8 inSortedRange:0 options:v35 usingComparator:{1024, &__block_literal_global_81_57788}];

              if (v37 == 0x7FFFFFFFFFFFFFFFLL)
              {
                v38 = v35;
              }

              else
              {
                v38 = v37;
              }

              v39 = [v33 mutableAssets];
              [v39 insertObject:v8 atIndex:v38];

              [v33 reducePendingItemsCountBy:1];
            }

            else
            {
              v67 = [(PLAssetsdSyncService *)v62 _readRestoreAlbumMetadataForAlbum:v31];
              v42 = [v67 assetUUIDs];
              v43 = [v42 count];

              v44 = [v33 mutableAssets];
              v45 = [v44 count];

              if (v43)
              {
                v46 = 0;
                v47 = 1;
                while (1)
                {
                  if (v46 == v45)
                  {
                    v46 = v45;
                    goto LABEL_47;
                  }

                  v48 = [v67 assetUUIDs];
                  v49 = [v48 objectAtIndex:v47 - 1];

                  v50 = [v33 mutableAssets];
                  v51 = [v50 objectAtIndex:v46];
                  v52 = [v51 uuid];

                  if ([v49 isEqual:v66])
                  {
                    break;
                  }

                  v53 = [v49 isEqual:v52];

                  if (v47 < v43)
                  {
                    v46 += v53;
                    ++v47;
                    if (v46 <= v45)
                    {
                      continue;
                    }
                  }

                  goto LABEL_49;
                }

LABEL_47:
                v8 = v64;
              }

              else
              {
                v46 = v45;
              }

              v54 = [v33 mutableAssets];
              [v54 insertObject:v8 atIndex:v46];

              [v33 reducePendingItemsCountBy:1];
LABEL_49:

              v28 = v63;
              v8 = v64;
              v29 = v60;
              v9 = v61;
            }
          }

          else
          {
            v40 = PLMigrationGetLog();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
            {
              v41 = [v8 uuid];
              *buf = 138412546;
              v76 = v31;
              v77 = 2112;
              v78 = v41;
              _os_log_impl(&dword_19BF1F000, v40, OS_LOG_TYPE_ERROR, "Error: Failed  to find the album %@, which asset %@ supposedly belongs to", buf, 0x16u);
            }
          }

          ++v30;
        }

        while (v30 != v28);
        v28 = [obj countByEnumeratingWithState:&v68 objects:v79 count:16];
      }

      while (v28);
    }

    v15 = v58;
    v14 = v59;
    v22 = v56;
    v21 = v57;
  }

  v55 = [v9 otaRestoreProgressAlbum];
  [v55 reducePendingItemsCountBy:1];
}

uint64_t __60__PLAssetsdSyncService__addAsset_toAlbumsForUUID_inLibrary___block_invoke_78(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 dateCreated];
  v6 = [v4 dateCreated];

  v7 = [v5 compare:v6];
  return v7;
}

- (id)_readRestoreAlbumMetadataForAlbum:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = [a3 stringByAppendingPathExtension:@"albummetadata"];
  v5 = [v4 stringByAppendingPathExtension:@"aside"];

  v6 = MEMORY[0x1E695DFF8];
  v7 = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  v8 = [v7 pathManager];
  v9 = [v8 privateDirectoryWithSubType:4 createIfNeeded:0 error:0];
  v10 = [v6 fileURLWithPath:v9 isDirectory:1];

  v11 = [v10 URLByAppendingPathComponent:v5 isDirectory:0];
  v12 = [MEMORY[0x1E696AC08] defaultManager];
  v13 = [v11 path];
  LOBYTE(v9) = [v12 fileExistsAtPath:v13];

  if (v9)
  {
    v14 = [[PLPersistedAlbumMetadata alloc] initWithPersistedDataAtURL:v11];
  }

  else
  {
    v15 = PLMigrationGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v17 = 138412290;
      v18 = v11;
      _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_ERROR, "Restore album metadata file %@ doesn't exist!!!!", &v17, 0xCu);
    }

    v14 = 0;
  }

  return v14;
}

- (id)_fileRestoreExclusionPaths
{
  v2 = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  v3 = [v2 pathManager];

  v4 = [MEMORY[0x1E695DF70] array];
  v5 = [v3 photoDirectoryWithType:9];
  if (v5)
  {
    [v4 addObject:v5];
  }

  v6 = [v3 photoDirectoryWithType:10];

  if (v6)
  {
    [v4 addObject:v6];
  }

  return v4;
}

- (void)_cleanupAlbumMetadataAsideFilesAfterRestore
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  v4 = [(PLAbstractLibraryServicesManagerService *)self libraryServicesManager];
  v5 = [v4 pathManager];
  v6 = [v5 privateDirectoryWithSubType:4 createIfNeeded:1 error:0];

  if (v6)
  {
    v24 = v6;
    v7 = [MEMORY[0x1E695DFF8] fileURLWithPath:v6 isDirectory:1];
    v8 = *MEMORY[0x1E695DC30];
    v9 = [MEMORY[0x1E695DEC8] arrayWithObject:*MEMORY[0x1E695DC30]];
    v23 = v7;
    v10 = [v3 enumeratorAtURL:v7 includingPropertiesForKeys:v9 options:0 errorHandler:&__block_literal_global_57802];

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v27;
      do
      {
        v15 = 0;
        do
        {
          if (*v27 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v26 + 1) + 8 * v15);
          v25 = 0;
          v17 = [v16 getResourceValue:&v25 forKey:v8 error:0];
          v18 = v25;
          v19 = v18;
          if (v17 && [v18 length])
          {
            v20 = [v16 pathExtension];
            v21 = v20;
            if (v20 && [v20 isEqualToString:@"aside"])
            {
              [v3 removeItemAtURL:v16 error:0];
            }
          }

          ++v15;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v13);
    }

    v22 = v23;
    v6 = v24;
  }

  else
  {
    v22 = PLMigrationGetLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_DEFAULT, "_cleanupAlbumMetadataAsideFilesAfterRestore: albumsMetadataPath is nil, returning", buf, 2u);
    }
  }
}

uint64_t __67__PLAssetsdSyncService__cleanupAlbumMetadataAsideFilesAfterRestore__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  v6 = PLMigrationGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = [v4 path];
    v9 = 138412546;
    v10 = v7;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_ERROR, "Unable to enumerate '%@': %@", &v9, 0x16u);
  }

  return 1;
}

- (void)_recoverAsideFiles:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = 0;
    v9 = *v21;
    *&v6 = 138412546;
    v17 = v6;
    do
    {
      v10 = 0;
      v11 = v8;
      do
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v20 + 1) + 8 * v10);
        v13 = [v12 stringByAppendingPathExtension:{@"aside", v17}];
        v19 = v11;
        v14 = [v4 moveItemAtPath:v13 toPath:v12 error:&v19];
        v8 = v19;

        if ((v14 & 1) == 0)
        {
          v15 = [v12 stringByAppendingPathExtension:@"aside"];
          [v4 removeItemAtPath:v15 error:0];

          v16 = PLMigrationGetLog();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            *buf = v17;
            v25 = v12;
            v26 = 2112;
            v27 = v8;
            _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_ERROR, "Error: could not move from aside to path %@, error: %@", buf, 0x16u);
          }
        }

        ++v10;
        v11 = v8;
      }

      while (v7 != v10);
      v7 = [obj countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v7);
  }
}

- (void)_linkPathsAside:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = 0;
    v9 = *v20;
    *&v6 = 138412546;
    v16 = v6;
    do
    {
      v10 = 0;
      v11 = v8;
      do
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v19 + 1) + 8 * v10);
        v13 = [v12 stringByAppendingPathExtension:{@"aside", v16}];
        v18 = v11;
        v14 = [v4 linkItemAtPath:v12 toPath:v13 error:&v18];
        v8 = v18;

        if ((v14 & 1) == 0)
        {
          v15 = PLMigrationGetLog();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            *buf = v16;
            v24 = v12;
            v25 = 2112;
            v26 = v8;
            _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_ERROR, "Error: could not link path %@ aside, error: %@", buf, 0x16u);
          }
        }

        ++v10;
        v11 = v8;
      }

      while (v7 != v10);
      v7 = [obj countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v7);
  }
}

- (void)_updatePendingCountForMissingAsset:(id)a3 inLibrary:(id)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v27 = a3;
  v5 = a4;
  v6 = MEMORY[0x1E695DF90];
  v7 = [v5 pathManager];
  v8 = [v7 pathToAssetsToAlbumsMapping];
  v9 = [v6 dictionaryWithContentsOfFile:v8];

  if (!v9)
  {
    v11 = PLMigrationGetLog();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    *buf = 0;
    v12 = "Error: Did not find the assets to albums mapping file.";
LABEL_10:
    v13 = v11;
    v14 = 2;
    goto LABEL_11;
  }

  if (![v9 count])
  {
    v11 = PLMigrationGetLog();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    *buf = 0;
    v12 = "Error: The assests to albums mappings is empty.";
    goto LABEL_10;
  }

  v10 = [v9 objectForKey:v27];
  if (v10)
  {
    goto LABEL_13;
  }

  v11 = PLMigrationGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v33 = v27;
    v12 = "Error: did not find the list of albums asset %@ is associated with";
    v13 = v11;
    v14 = 12;
LABEL_11:
    _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_ERROR, v12, buf, v14);
  }

LABEL_12:

  v10 = 0;
LABEL_13:
  if ([v10 count])
  {
    v25 = v10;
    v26 = v9;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v15 = v10;
    v16 = [v15 countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v29;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v29 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v28 + 1) + 8 * i);
          v21 = [v5 albumWithUuid:{v20, v25, v26}];
          v22 = v21;
          if (v21)
          {
            [v21 reducePendingItemsCountBy:1];
          }

          else
          {
            v23 = PLMigrationGetLog();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v33 = v20;
              v34 = 2112;
              v35 = v27;
              _os_log_impl(&dword_19BF1F000, v23, OS_LOG_TYPE_ERROR, "Error: Failed  to find the album %@, which asset %@ supposedly belongs to", buf, 0x16u);
            }
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v28 objects:v36 count:16];
      }

      while (v17);
    }

    v10 = v25;
    v9 = v26;
  }

  v24 = [v5 otaRestoreProgressAlbum];
  [v24 reducePendingItemsCountBy:1];
}

- (void)_updateRestoredAssetWithUUID:(id)a3 paths:(id)a4 fixAddedDate:(BOOL)a5
{
  v6 = a3;
  v7 = a4;
  [MEMORY[0x1E69BF360] transaction:"-[PLAssetsdSyncService _updateRestoredAssetWithUUID:paths:fixAddedDate:]"];
  v11 = v6;
  v13 = v12 = v7;
  v8 = v13;
  v9 = v7;
  v10 = v6;
  pl_dispatch_group_async();
  pl_dispatch_group_notify();
}

void __72__PLAssetsdSyncService__updateRestoredAssetWithUUID_paths_fixAddedDate___block_invoke(uint64_t a1)
{
  v2 = _os_activity_create(&dword_19BF1F000, "Executing isolation queue block", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v2, &state);
  v3 = *(a1 + 32);
  if (!v3[4])
  {
    v4 = [MEMORY[0x1E69BF360] transaction:"-[PLAssetsdSyncService _updateRestoredAssetWithUUID:paths:fixAddedDate:]_block_invoke"];
    v5 = *(a1 + 32);
    v6 = *(v5 + 32);
    *(v5 + 32) = v4;

    v3 = *(a1 + 32);
  }

  v7 = [v3 newShortLivedLibraryWithName:"-[PLAssetsdSyncService _updateRestoredAssetWithUUID:paths:fixAddedDate:]_block_invoke"];
  v8 = *(*(a1 + 32) + 24);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __72__PLAssetsdSyncService__updateRestoredAssetWithUUID_paths_fixAddedDate___block_invoke_2;
  v12[3] = &unk_1E756E508;
  v13 = *(a1 + 40);
  v9 = v7;
  v14 = v9;
  v10 = *(a1 + 48);
  v11 = *(a1 + 32);
  v15 = v10;
  v16 = v11;
  v17 = *(a1 + 64);
  [v9 withDispatchGroup:v8 performTransaction:v12];
  [*(a1 + 56) stillAlive];

  os_activity_scope_leave(&state);
}

void __72__PLAssetsdSyncService__updateRestoredAssetWithUUID_paths_fixAddedDate___block_invoke_65(uint64_t a1)
{
  v2 = _os_activity_create(&dword_19BF1F000, "dispatch_group_notify block invoke", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v5.opaque[0] = 0;
  v5.opaque[1] = 0;
  os_activity_scope_enter(v2, &v5);
  if (!dispatch_group_wait(*(*(a1 + 32) + 24), 0))
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 32);
    if (v4)
    {
      *(v3 + 32) = 0;
    }
  }

  os_activity_scope_leave(&v5);
}

void __72__PLAssetsdSyncService__updateRestoredAssetWithUUID_paths_fixAddedDate___block_invoke_2(id *a1)
{
  v1 = a1;
  v156 = *MEMORY[0x1E69E9840];
  if (![a1[4] length] || (+[PLManagedAsset assetWithUUID:inLibrary:](PLManagedAsset, "assetWithUUID:inLibrary:", v1[4], v1[5]), (v2 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v17 = 0;
    v3 = 0;
    v18 = 0;
    v19 = 1;
    if ([v1[6] count])
    {
LABEL_42:
      v58 = PLMigrationGetLog();
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
      {
        v59 = @"Reimporting partially restored";
        v60 = v1[4];
        v61 = v1[6];
        if (v19)
        {
          v59 = @"Failed to fetch";
        }

        *buf = 138412802;
        v152 = v59;
        v153 = 2112;
        *v154 = v60;
        *&v154[8] = 2112;
        *&v154[10] = v61;
        _os_log_impl(&dword_19BF1F000, v58, OS_LOG_TYPE_DEFAULT, "updateRestoredAsset: %@ asset with UUID %@, will attempt import with restored paths: %@", buf, 0x20u);
      }

      v109 = v19;

      v114 = [v1[7] _fileRestoreExclusionPaths];
      v139 = 0u;
      v140 = 0u;
      v141 = 0u;
      v142 = 0u;
      v62 = v1[6];
      v63 = [v62 countByEnumeratingWithState:&v139 objects:v150 count:16];
      v108 = v18;
      if (!v63)
      {

        goto LABEL_72;
      }

      v64 = v63;
      v122 = *v140;
      v65 = 1;
      v66 = 1;
      obj = v62;
      while (1)
      {
        for (i = 0; i != v64; ++i)
        {
          if (*v140 != v122)
          {
            objc_enumerationMutation(obj);
          }

          v68 = *(*(&v139 + 1) + 8 * i);
          v138 = 0;
          v69 = [MEMORY[0x1E69BF238] realPathForPath:v68 error:&v138];
          v70 = v138;
          if (v69)
          {
            v71 = [v69 pathExtension];
            v72 = [v71 caseInsensitiveCompare:@"XMP"] == 0;

            v65 &= v72;
            if ((v66 & 1) == 0)
            {
              v66 = 0;
              goto LABEL_67;
            }

            v136 = 0u;
            v137 = 0u;
            v134 = 0u;
            v135 = 0u;
            v73 = v114;
            v74 = [v73 countByEnumeratingWithState:&v134 objects:v149 count:16];
            if (v74)
            {
              v75 = v74;
              v76 = *v135;
              while (2)
              {
                for (j = 0; j != v75; ++j)
                {
                  if (*v135 != v76)
                  {
                    objc_enumerationMutation(v73);
                  }

                  if ([MEMORY[0x1E69BF238] filePath:v69 hasPrefix:*(*(&v134 + 1) + 8 * j)])
                  {
                    v66 = 1;
                    goto LABEL_66;
                  }
                }

                v75 = [v73 countByEnumeratingWithState:&v134 objects:v149 count:16];
                if (v75)
                {
                  continue;
                }

                break;
              }
            }

            v66 = 0;
          }

          else
          {
            v73 = PLMigrationGetLog();
            if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v152 = v68;
              v153 = 2112;
              *v154 = v70;
              _os_log_impl(&dword_19BF1F000, v73, OS_LOG_TYPE_ERROR, "Couldn't resolve realpath for path: %@, error: %@", buf, 0x16u);
            }
          }

LABEL_66:

LABEL_67:
        }

        v64 = [obj countByEnumeratingWithState:&v139 objects:v150 count:16];
        if (!v64)
        {

          v1 = a1;
          if (((v65 | v66) & 1) == 0)
          {
            v17 = a1[6];
            v78 = v108;
            goto LABEL_104;
          }

LABEL_72:
          v78 = [MEMORY[0x1E696AC08] defaultManager];
          v130 = 0u;
          v131 = 0u;
          v132 = 0u;
          v133 = 0u;
          v112 = v1[6];
          v79 = [v112 countByEnumeratingWithState:&v130 objects:v148 count:16];
          if (v79)
          {
            v80 = v79;
            v115 = *v131;
            do
            {
              v81 = 0;
              v111 = v80;
              do
              {
                if (*v131 != v115)
                {
                  objc_enumerationMutation(v112);
                }

                v82 = *(*(&v130 + 1) + 8 * v81);
                v129 = 0;
                v83 = [MEMORY[0x1E69BF238] realPathForPath:v82 error:&v129];
                v84 = v129;
                v85 = v84;
                if (v83)
                {
                  v117 = v84;
                  v118 = v81;
                  v86 = [(__CFString *)v83 pathExtension];
                  v87 = [v86 caseInsensitiveCompare:@"XMP"];

                  v88 = [a1[5] pathManager];
                  obja = [v88 photoDirectoryWithType:4];

                  v89 = [a1[5] pathManager];
                  v90 = [v89 photoDirectoryWithType:29];

                  v116 = v90;
                  if (!v87 && (([MEMORY[0x1E69BF238] filePath:v83 hasPrefix:obja] & 1) != 0 || objc_msgSend(MEMORY[0x1E69BF238], "filePath:hasPrefix:", v83, v90)))
                  {
                    v98 = PLMigrationGetLog();
                    if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412290;
                      v152 = v83;
                      _os_log_impl(&dword_19BF1F000, v98, OS_LOG_TYPE_DEFAULT, "Deleting XMP restore file at path: %@", buf, 0xCu);
                    }

                    [v78 removeItemAtPath:v83 error:0];
                  }

                  else
                  {
                    v127 = 0u;
                    v128 = 0u;
                    v125 = 0u;
                    v126 = 0u;
                    v91 = v114;
                    v92 = [v91 countByEnumeratingWithState:&v125 objects:v147 count:16];
                    if (v92)
                    {
                      v93 = v92;
                      v94 = *v126;
                      do
                      {
                        for (k = 0; k != v93; ++k)
                        {
                          if (*v126 != v94)
                          {
                            objc_enumerationMutation(v91);
                          }

                          if ([MEMORY[0x1E69BF238] filePath:v83 hasPrefix:*(*(&v125 + 1) + 8 * k)])
                          {
                            v96 = PLBackendGetLog();
                            if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
                            {
                              *buf = 138412290;
                              v152 = v83;
                              _os_log_impl(&dword_19BF1F000, v96, OS_LOG_TYPE_DEFAULT, "Deleting excluded restore file at path: %@", buf, 0xCu);
                            }

                            [v78 removeItemAtPath:v83 error:0];
                          }
                        }

                        v93 = [v91 countByEnumeratingWithState:&v125 objects:v147 count:16];
                      }

                      while (v93);
                    }

                    v80 = v111;
                  }

                  v85 = v117;
                  v81 = v118;

                  v97 = obja;
                }

                else
                {
                  v97 = PLMigrationGetLog();
                  if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412546;
                    v152 = v82;
                    v153 = 2112;
                    *v154 = v85;
                    _os_log_impl(&dword_19BF1F000, v97, OS_LOG_TYPE_ERROR, "Couldn't resolve realpath for path: %@, error: %@", buf, 0x16u);
                  }
                }

                ++v81;
              }

              while (v81 != v80);
              v80 = [v112 countByEnumeratingWithState:&v130 objects:v148 count:16];
            }

            while (v80);
          }

          v1 = a1;
          if ([a1[4] length])
          {
            [a1[7] _updatePendingCountForMissingAsset:a1[4] inLibrary:a1[5]];
          }

          v17 = 0;
LABEL_104:

          LOBYTE(v19) = v109;
LABEL_105:
          if ([v17 count])
          {
            v123 = v1[5];
            v17 = v17;
            v124 = v1[4];
            pl_dispatch_group_async();

            goto LABEL_118;
          }

          if (v19)
          {
            v99 = PLMigrationGetLog();
            if (os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
            {
              v100 = v1[4];
              *buf = 138543362;
              v152 = v100;
              v101 = "Failed to restore asset %{public}@. No valid paths to import";
              v102 = v99;
              v103 = OS_LOG_TYPE_ERROR;
              goto LABEL_116;
            }
          }

          else
          {
            v104 = [v3 complete];
            v99 = PLMigrationGetLog();
            v105 = os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT);
            if (v104)
            {
              if (!v105)
              {
                goto LABEL_117;
              }

              v106 = v1[4];
              *buf = 138543362;
              v152 = v106;
              v101 = "updateRestoredAsset: Restored asset with UUID %{public}@, successfully";
            }

            else
            {
              if (!v105)
              {
                goto LABEL_117;
              }

              v107 = v1[4];
              *buf = 138543362;
              v152 = v107;
              v101 = "updateRestoredAsset: Incomplete asset with UUID %{public}@";
            }

            v102 = v99;
            v103 = OS_LOG_TYPE_DEFAULT;
LABEL_116:
            _os_log_impl(&dword_19BF1F000, v102, v103, v101, buf, 0xCu);
          }

LABEL_117:

          goto LABEL_118;
        }
      }
    }

LABEL_41:
    v18 = v17;
    if (![v17 count])
    {
      goto LABEL_105;
    }

    goto LABEL_42;
  }

  v3 = v2;
  v4 = [v1[5] libraryServicesManager];
  v5 = [v4 modelMigrator];
  v6 = [v5 deviceRestoreMigrationSupport];
  v7 = [v6 isRestoreFromBackupSourceMegaBackup];

  if (!v7 || ([v3 objectIDsForRelationshipNamed:@"master"], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "count"), v8, !v9))
  {
    v20 = PLMigrationGetLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = v1[4];
      v22 = v1[6];
      *buf = 138543874;
      v152 = v21;
      v153 = 1024;
      *v154 = v7;
      *&v154[4] = 2112;
      *&v154[6] = v22;
      _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_DEFAULT, "updateRestoredAsset: Restoring asset with UUID %{public}@, isMegaBackup: %d, restored paths: %@", buf, 0x1Cu);
    }

    v23 = [v3 persistedFileSystemAttributesFileURL];
    if (![PLManagedAsset hasRequiredExtendedAttributesForMainFileURL:v23])
    {
      v24 = PLMigrationGetLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v152 = v23;
        _os_log_impl(&dword_19BF1F000, v24, OS_LOG_TYPE_ERROR, "updateRestoredAsset: ERROR - missing required extended attributes for file at URL: %@", buf, 0xCu);
      }
    }

    v25 = [MEMORY[0x1E696AC08] defaultManager];
    v26 = [v3 sidecars];
    v27 = [v26 count] + 1;
    v28 = [v1[6] count];

    v29 = [MEMORY[0x1E695DF70] array];
    if (v27 <= v28)
    {
      [v3 setComplete:1];
      v37 = [v1[7] libraryServicesManager];
      v38 = [v37 modelMigrator];
      [v38 postProcessFixesAfterOTARestoreForCompleteAsset:v3 fixAddedDate:*(v1 + 64) isMegaBackup:v7];

      v39 = [v3 filePathsWithoutThumbs];
      v40 = [v39 mutableCopy];

      [v40 addObjectsFromArray:v1[6]];
      v41 = [v1[7] libraryServicesManager];
      v42 = [v41 modelMigrator];
      v43 = [v40 allObjects];
      [v42 applyDataProtectionToPhotosPaths:v43 fromKeyClass:4 toKeyClass:3];

      [v1[7] _addAsset:v3 toAlbumsForUUID:v1[4] inLibrary:v1[5]];
      +[PLChangeNotificationCenter forceFetchingAlbumReload];
      v17 = 0;
    }

    else
    {
      v121 = v23;
      v110 = v3;
      v30 = [v3 filePathsWithoutThumbs];
      v143 = 0u;
      v144 = 0u;
      v145 = 0u;
      v146 = 0u;
      v31 = [v30 countByEnumeratingWithState:&v143 objects:v155 count:16];
      if (v31)
      {
        v32 = v31;
        v33 = *v144;
        v34 = 1;
        do
        {
          for (m = 0; m != v32; ++m)
          {
            if (*v144 != v33)
            {
              objc_enumerationMutation(v30);
            }

            v36 = *(*(&v143 + 1) + 8 * m);
            if ([v25 fileExistsAtPath:v36])
            {
              v34 &= [v36 rangeOfString:@".XMP" options:1] != 0x7FFFFFFFFFFFFFFFLL;
              [v29 addObject:v36];
            }
          }

          v32 = [v30 countByEnumeratingWithState:&v143 objects:v155 count:16];
        }

        while (v32);
      }

      else
      {
        v34 = 1;
      }

      v44 = MEMORY[0x1E695DFA8];
      v3 = v110;
      v45 = [v110 filePathsWithoutThumbs];
      v40 = [v44 setWithSet:v45];

      v1 = a1;
      v46 = [MEMORY[0x1E695DFD8] setWithArray:a1[6]];
      [v40 minusSet:v46];

      v47 = PLMigrationGetLog();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        v48 = a1[4];
        v49 = a1[6];
        *buf = 138412546;
        v152 = v48;
        v153 = 2112;
        *v154 = v49;
        _os_log_impl(&dword_19BF1F000, v47, OS_LOG_TYPE_ERROR, "updateRestoredAsset: Missing some expected paths for asset %@: %@", buf, 0x16u);
      }

      if (v34)
      {
        v50 = [PLAssetTransactionReason transactionReason:@"[UpdateRestoredAsset] No image information can be recovered (every file is XMP.)  Deleting."];
        v51 = PLMigrationGetLog();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
        {
          v52 = a1[4];
          *buf = 138412290;
          v152 = v52;
          _os_log_impl(&dword_19BF1F000, v51, OS_LOG_TYPE_DEFAULT, "updateRestoredAsset: will expunge asset %@", buf, 0xCu);
        }

        [v110 deleteWithReason:v50];
        [a1[7] _updatePendingCountForMissingAsset:a1[4] inLibrary:a1[5]];

        v17 = 0;
        v23 = v121;
      }

      else
      {
        [a1[7] _linkPathsAside:v29];
        v53 = PLMigrationGetLog();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
        {
          v54 = a1[4];
          v55 = a1[6];
          *buf = 138412546;
          v152 = v54;
          v153 = 2112;
          *v154 = v55;
          _os_log_impl(&dword_19BF1F000, v53, OS_LOG_TYPE_DEFAULT, "updateRestoredAsset: attempting to reimport asset %@ with incomplete restore paths %@", buf, 0x16u);
        }

        v56 = PLMigrationGetLog();
        v23 = v121;
        if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
        {
          v57 = a1[4];
          *buf = 138412290;
          v152 = v57;
          _os_log_impl(&dword_19BF1F000, v56, OS_LOG_TYPE_DEFAULT, "updateRestoredAsset: deleting existing asset data from db only asset %@", buf, 0xCu);
        }

        [v110 deleteFromDatabaseOnly];
        [a1[7] _recoverAsideFiles:v29];
        v17 = v29;
      }
    }

    v19 = 0;
    goto LABEL_41;
  }

  v10 = PLMigrationGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v1[4];
    *buf = 138543362;
    v152 = v11;
    _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_DEFAULT, "updateRestoredAsset: Mega-backup: Asset with UUID %{public}@ has a CloudMaster, skipping", buf, 0xCu);
  }

  [v3 setComplete:1];
  v12 = [v3 filePathsWithoutThumbs];
  v13 = [v12 mutableCopy];

  [v13 addObjectsFromArray:v1[6]];
  v14 = [v1[7] libraryServicesManager];
  v15 = [v14 modelMigrator];
  v16 = [v13 allObjects];
  [v15 applyDataProtectionToPhotosPaths:v16 fromKeyClass:4 toKeyClass:3];

  v17 = 0;
LABEL_118:
}

void __72__PLAssetsdSyncService__updateRestoredAssetWithUUID_paths_fixAddedDate___block_invoke_60(uint64_t a1)
{
  v2 = (a1 + 32);
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 40));
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __72__PLAssetsdSyncService__updateRestoredAssetWithUUID_paths_fixAddedDate___block_invoke_2_61;
  v10[3] = &unk_1E756E4E0;
  v4 = *(a1 + 40);
  *&v5 = v4;
  *(&v5 + 1) = *v2;
  v9 = v5;
  v6 = *(a1 + 48);
  v13 = *(a1 + 64);
  v7 = *(a1 + 56);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  v11 = v9;
  v12 = v8;
  [WeakRetained performFileSystemAssetImporterWorkWithLibrary:v4 block:v10];
}

void __72__PLAssetsdSyncService__updateRestoredAssetWithUUID_paths_fixAddedDate___block_invoke_2_61(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(*(a1 + 40) + 24);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __72__PLAssetsdSyncService__updateRestoredAssetWithUUID_paths_fixAddedDate___block_invoke_3;
  v9[3] = &unk_1E7573A98;
  v6 = *(a1 + 48);
  v7 = *(a1 + 40);
  v10 = v6;
  v11 = v7;
  v12 = v3;
  v15 = *(a1 + 64);
  v13 = *(a1 + 56);
  v14 = *(a1 + 32);
  v8 = v3;
  [v4 withDispatchGroup:v5 performTransaction:v9];
}

void __72__PLAssetsdSyncService__updateRestoredAssetWithUUID_paths_fixAddedDate___block_invoke_3(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [MEMORY[0x1E695DFF8] fileURLWithPath:*(*(&v19 + 1) + 8 * i) isDirectory:0];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v6);
  }

  v10 = [*(a1 + 40) libraryServicesManager];
  v11 = [v10 modelMigrator];
  [v11 applyDataProtectionToPhotosPaths:*(a1 + 32) fromKeyClass:4 toKeyClass:3];

  v12 = [*(a1 + 48) addAssetWithURLs:v3 assetPayload:0 forceInsert:1 forceUpdate:0 fixAddedDate:*(a1 + 72)];
  v13 = *(a1 + 40);
  if (v12)
  {
    [v13 _addAsset:v12 toAlbumsForUUID:*(a1 + 56) inLibrary:*(a1 + 64)];
    v18 = 0;
    v14 = [PLResourceInstaller installInternalResourcesForExistingAsset:v12 assumeNoExistingResources:1 referencedResourceURLs:0 error:&v18];
    v15 = v18;
    if (!v14)
    {
      v16 = PLBackendGetLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = [v12 uuid];
        *buf = 138412546;
        v24 = v17;
        v25 = 2112;
        v26 = v15;
        _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_ERROR, "Failed to build modern resources for asset uuid: %@, reason: %@", buf, 0x16u);
      }
    }
  }

  else
  {
    [v13 _updatePendingCountForMissingAsset:*(a1 + 56) inLibrary:*(a1 + 64)];
  }

  objc_autoreleasePoolPop(v2);
}

- (void)_finalizeOTARestoreEndedAndRecreateAlbums:(BOOL)a3
{
  v3 = a3;
  v10 = *MEMORY[0x1E69E9840];
  v4 = PLMigrationGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"NO";
    if (v3)
    {
      v5 = @"YES";
    }

    *buf = 138543362;
    v9 = v5;
    _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_DEFAULT, "_finalizeOTARestoreEndedAndRecreateAlbums: %{public}@", buf, 0xCu);
  }

  v7 = [MEMORY[0x1E69BF360] transaction:"-[PLAssetsdSyncService _finalizeOTARestoreEndedAndRecreateAlbums:]"];
  v6 = v7;
  pl_dispatch_group_async();
}

void __66__PLAssetsdSyncService__finalizeOTARestoreEndedAndRecreateAlbums___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = _os_activity_create(&dword_19BF1F000, "Executing isolation queue block", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v2, &state);
  v3 = *(a1 + 32);
  if (*(v3 + 48))
  {
    v4 = PLMigrationGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a1 + 48))
      {
        v5 = @"YES";
      }

      else
      {
        v5 = @"NO";
      }

      *buf = 138543362;
      v16 = v5;
      _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_DEFAULT, "Ignoring redundant call to _finalizeOTARestoreEndedAndRecreateAlbums: %{public}@", buf, 0xCu);
    }
  }

  else
  {
    *(v3 + 48) = 1;
    v6 = [*(a1 + 32) newShortLivedLibraryWithName:"-[PLAssetsdSyncService _finalizeOTARestoreEndedAndRecreateAlbums:]_block_invoke"];
    v7 = *(*(a1 + 32) + 24);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __66__PLAssetsdSyncService__finalizeOTARestoreEndedAndRecreateAlbums___block_invoke_2;
    v10[3] = &unk_1E7576AC8;
    v4 = v6;
    v11 = v4;
    v13 = *(a1 + 48);
    v12 = *(a1 + 40);
    [v4 withDispatchGroup:v7 performTransaction:v10];
    [*(a1 + 32) _cleanupAlbumMetadataAsideFilesAfterRestore];
    v8 = [*(a1 + 32) libraryServicesManager];
    v9 = [v8 modelMigrator];
    [v9 applyDataProtectionToAllPhotosFilesOnce];
  }

  [*(a1 + 40) stillAlive];
  os_activity_scope_leave(&state);
}

uint64_t __66__PLAssetsdSyncService__finalizeOTARestoreEndedAndRecreateAlbums___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) cleanupIncompleteAssetsAfterOTARestore];
  if (*(a1 + 48) == 1)
  {
    [*(a1 + 32) recreateAlbumsAndPersonsFromMetadata];
  }

  v2 = *(a1 + 40);

  return [v2 stillAlive];
}

- (void)finalizeOTARestoreRecreatingAlbums:(BOOL)a3
{
  v3 = a3;
  v15 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  *sel = 0u;
  v9 = 0u;
  v5 = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v9) = v5;
  if (v5)
  {
    *(&v9 + 1) = _os_activity_create(&dword_19BF1F000, "PLXPC Service: finalizeOTARestoreRecreatingAlbums:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

    os_activity_scope_enter(*(&v9 + 1), (&v11 + 8));
  }

  [(PLAssetsdSyncService *)self _finalizeOTARestoreEndedAndRecreateAlbums:v3, v9];
  if (v10 == 1)
  {
    os_activity_scope_leave((&v11 + 8));
  }

  if (v11)
  {
    v6 = PLRequestGetLog();
    v7 = v6;
    if ((v11 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v14 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v7, OS_SIGNPOST_INTERVAL_END, v11, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

- (void)updateRestoredAssetWithUUID:(id)a3 paths:(id)a4 fixAddedDate:(BOOL)a5
{
  v5 = a5;
  v20 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v16 = 0u;
  *sel = 0u;
  v14 = 0u;
  v10 = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v14) = v10;
  if (v10)
  {
    *(&v14 + 1) = _os_activity_create(&dword_19BF1F000, "PLXPC Service: updateRestoredAssetWithUUID:paths:fixAddedDate:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

    os_activity_scope_enter(*(&v14 + 1), (&v16 + 8));
  }

  [(PLAssetsdSyncService *)self _updateRestoredAssetWithUUID:v8 paths:v9 fixAddedDate:v5, v14];
  if (v15 == 1)
  {
    os_activity_scope_leave((&v16 + 8));
  }

  if (v16)
  {
    v11 = PLRequestGetLog();
    v12 = v11;
    if ((v16 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v19 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v12, OS_SIGNPOST_INTERVAL_END, v16, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

- (PLAssetsdSyncService)initWithLibraryServicesManager:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PLAssetsdSyncService;
  v5 = [(PLAbstractLibraryServicesManagerService *)&v11 initWithLibraryServicesManager:v4];
  if (v5)
  {
    v6 = dispatch_queue_create("com.apple.private.photos.service.sync", 0);
    isolationQueue = v5->_isolationQueue;
    v5->_isolationQueue = v6;

    v8 = dispatch_group_create();
    updateGroup = v5->_updateGroup;
    v5->_updateGroup = v8;

    objc_storeWeak(&v5->_libraryServicesManager, v4);
  }

  return v5;
}

@end