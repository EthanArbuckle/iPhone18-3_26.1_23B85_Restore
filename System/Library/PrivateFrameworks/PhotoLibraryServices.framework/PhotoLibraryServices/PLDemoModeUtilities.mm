@interface PLDemoModeUtilities
+ (id)newDemoModeUtilitiesWithDefaultSystemPaths;
- (BOOL)_evalSystemSafetyCheck:(id)a3;
- (BOOL)cleanupForStoreDemoModeByRemovingNonDemoContentFromTargetLibrary;
- (BOOL)prepareForStoreDemoModeByStagingDemoLibraryContentFromTemplate;
- (BOOL)replaceTargetPhotoLibraryWithStagedDemoLibraryIfExists;
- (NSString)demoContentPhotoLibraryPrestagingPath;
- (NSString)demoContentPhotoLibraryStagingPath;
- (PLDemoModeUtilities)initWithDemoContentTemplatePath:(id)a3 stagingBasePath:(id)a4 targetPhotoLibraryPathManager:(id)a5 options:(unint64_t)a6;
- (id)fetchDemoContentResultsInLibrary:(id)a3;
- (int64_t)markAssetOriginalsInTargetPhotoLibraryAsLegacyDemoContent:(BOOL)a3;
- (void)kickstartStagedDemoContentInstallationByKillingAllClients;
- (void)warmUpDemoLibraryInstalledFromStagedTemplate;
@end

@implementation PLDemoModeUtilities

- (BOOL)cleanupForStoreDemoModeByRemovingNonDemoContentFromTargetLibrary
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = [(PLDemoModeUtilities *)self _evalSystemSafetyCheck:&__block_literal_global_104_90780];
  PLSafeRunWithUnfairLock();
  v2 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v2;
}

void __87__PLDemoModeUtilities_cleanupForStoreDemoModeByRemovingNonDemoContentFromTargetLibrary__block_invoke_2(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    v2 = PLStoreDemoModeGetLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_DEFAULT, "Starting legacy clean up for Store Demo Mode", buf, 2u);
    }

    if (([*(a1 + 32) options] & 2) != 0)
    {
      v3 = 0;
    }

    else
    {
      v3 = objc_alloc_init(PLPhotoLibraryOptions);
      [(PLPhotoLibraryOptions *)v3 setRequiredState:6];
      [(PLPhotoLibraryOptions *)v3 setAutomaticallyPinToFirstFetch:0];
    }

    v4 = [*(a1 + 32) targetPhotoLibraryPathManager];
    v5 = [v4 libraryURL];
    v17 = 0;
    v6 = [PLPhotoLibrary newPhotoLibraryWithName:"[PLDemoModeUtilities cleanupForStoreDemoModeByRemovingNonDemoContentFromTargetLibrary]_block_invoke" loadedFromURL:v5 options:v3 error:&v17];
    v7 = v17;

    if (v6)
    {

      v8 = objc_autoreleasePoolPush();
      v9 = [v6 managedObjectContext];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __87__PLDemoModeUtilities_cleanupForStoreDemoModeByRemovingNonDemoContentFromTargetLibrary__block_invoke_106;
      v13[3] = &unk_1E75778C0;
      v13[4] = *(a1 + 32);
      v10 = v6;
      v14 = v10;
      v15 = v9;
      v16 = *(a1 + 40);
      v11 = v9;
      [v11 performBlockAndWait:v13];

      objc_autoreleasePoolPop(v8);
      goto LABEL_14;
    }

    *(*(*(a1 + 40) + 8) + 24) = 0;
    v12 = PLStoreDemoModeGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v19 = v7;
      _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_ERROR, "Failed to cleanup demo library, unable to load photo library %{public}@", buf, 0xCu);
    }
  }

  v10 = PLStoreDemoModeGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_ERROR, "Safety check failed: finalizeStoreDemoModeByRemovingNonDemoContentFromLibrary requires store demo mode", buf, 2u);
  }

LABEL_14:
}

void __87__PLDemoModeUtilities_cleanupForStoreDemoModeByRemovingNonDemoContentFromTargetLibrary__block_invoke_106(uint64_t a1)
{
  v80 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) fetchDemoContentResultsInLibrary:*(a1 + 40)];
  v4 = PLStoreDemoModeGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 assetsToRevert];
    v6 = [v5 count];
    *buf = 134217984;
    v79 = v6;
    _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_DEFAULT, "Reverting %lu demo content assets that have adjustments", buf, 0xCu);
  }

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v7 = [v3 assetsToRevert];
  v8 = [v7 countByEnumeratingWithState:&v72 objects:v77 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v73;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v73 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v72 + 1) + 8 * i) revertToOriginal];
      }

      v9 = [v7 countByEnumeratingWithState:&v72 objects:v77 count:16];
    }

    while (v9);
  }

  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  v71 = 0;
  v14 = [v12 safeSave:v13 error:&v71];
  v15 = v71;
  if ((v14 & 1) == 0)
  {
    v16 = PLStoreDemoModeGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v79 = v15;
      _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_ERROR, "Save failed reverting assets %{public}@", buf, 0xCu);
    }

    *(*(*(a1 + 56) + 8) + 24) = 0;
  }

  v17 = PLStoreDemoModeGetLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [v3 assetIDsToDelete];
    v19 = [v18 count];
    *buf = 134217984;
    v79 = v19;
    _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_DEFAULT, "Deleting %lu assets that are not demo content", buf, 0xCu);
  }

  v20 = [v3 assetIDsToDelete];
  v21 = [v20 count];

  if (v21)
  {
    v22 = [PLAssetTransactionReason transactionReason:@"[cleanupForStoreDemoMode] Deleting assets that are not demo content."];
    v23 = *(a1 + 40);
    v24 = MEMORY[0x1E696AE18];
    v25 = [v3 assetIDsToDelete];
    v26 = [v24 predicateWithFormat:@"self IN %@", v25];
    v70 = 0;
    v27 = [v23 batchDeleteAssetsWithPredicate:v26 reason:v22 error:&v70];
    v28 = v70;

    if ((v27 & 1) == 0)
    {
      v29 = PLStoreDemoModeGetLog();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v79 = v28;
        _os_log_impl(&dword_19BF1F000, v29, OS_LOG_TYPE_ERROR, "Error deleting non-demo assets %{public}@", buf, 0xCu);
      }

      *(*(*(a1 + 56) + 8) + 24) = 0;
    }
  }

  objc_autoreleasePoolPop(v2);
  v30 = objc_autoreleasePoolPush();
  v31 = [MEMORY[0x1E695D5E0] fetchRequestWithEntityName:@"Album"];
  v32 = [MEMORY[0x1E696AE18] predicateWithFormat:@"((kind = %d) OR (kind = %d)) AND (assets.@count = 0)", 2, 12];
  [v31 setPredicate:v32];

  v33 = *(a1 + 48);
  v69 = 0;
  v34 = [v33 executeFetchRequest:v31 error:&v69];
  v35 = v69;
  if (!v34)
  {
    v36 = PLStoreDemoModeGetLog();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v79 = v35;
      _os_log_impl(&dword_19BF1F000, v36, OS_LOG_TYPE_ERROR, "Fetching empty albums failed %{public}@", buf, 0xCu);
    }

    *(*(*(a1 + 56) + 8) + 24) = 0;
  }

  v37 = PLStoreDemoModeGetLog();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    v38 = [v34 count];
    *buf = 134217984;
    v79 = v38;
    _os_log_impl(&dword_19BF1F000, v37, OS_LOG_TYPE_DEFAULT, "Deleting %lu empty albums", buf, 0xCu);
  }

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v39 = v34;
  v40 = [v39 countByEnumeratingWithState:&v65 objects:v76 count:16];
  if (v40)
  {
    v41 = v40;
    v42 = *v66;
    do
    {
      for (j = 0; j != v41; ++j)
      {
        if (*v66 != v42)
        {
          objc_enumerationMutation(v39);
        }

        [*(*(&v65 + 1) + 8 * j) delete];
      }

      v41 = [v39 countByEnumeratingWithState:&v65 objects:v76 count:16];
    }

    while (v41);
  }

  v44 = *(a1 + 40);
  v45 = *(a1 + 48);
  v64 = 0;
  v46 = [v44 safeSave:v45 error:&v64];
  v47 = v64;
  if ((v46 & 1) == 0)
  {
    v48 = PLStoreDemoModeGetLog();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v79 = v47;
      _os_log_impl(&dword_19BF1F000, v48, OS_LOG_TYPE_ERROR, "Save failed deleting albums %{public}@", buf, 0xCu);
    }

    *(*(*(a1 + 56) + 8) + 24) = 0;
  }

  objc_autoreleasePoolPop(v30);
  v49 = PLStoreDemoModeGetLog();
  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19BF1F000, v49, OS_LOG_TYPE_DEFAULT, "Forcing refresh on image well", buf, 2u);
  }

  v50 = [*(a1 + 40) libraryServicesManager];
  v51 = [v50 cameraPreviewWellManager];
  [v51 refreshPreviewWellImageWithContext:*(a1 + 48) avoidNotificationIfLinkIsAlreadySet:0];

  v52 = [MEMORY[0x1E69BF238] fileManager];
  v53 = [*(a1 + 40) pathManager];
  v54 = [v53 photoDirectoryWithType:29];

  v55 = [v54 stringByAppendingPathComponent:@"MISC"];
  v56 = [MEMORY[0x1E69BF2F8] cameraRollPlistName];
  v57 = [v55 stringByAppendingPathComponent:v56];

  v58 = PLStoreDemoModeGetLog();
  if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v79 = v57;
    _os_log_impl(&dword_19BF1F000, v58, OS_LOG_TYPE_DEFAULT, "Removing DCIM image naming plist %{public}@", buf, 0xCu);
  }

  v63 = 0;
  v59 = [v52 removeItemAtPath:v57 error:&v63];
  v60 = v63;
  if ((v59 & 1) == 0)
  {
    v61 = PLStoreDemoModeGetLog();
    if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v79 = v60;
      _os_log_impl(&dword_19BF1F000, v61, OS_LOG_TYPE_ERROR, "Failed to remove DCIM image naming plist %{public}@", buf, 0xCu);
    }
  }

  v62 = [v54 stringByAppendingPathComponent:@"Metadata/DCIM"];
  [v52 removeItemAtPath:v62 error:0];
}

- (id)fetchDemoContentResultsInLibrary:(id)a3
{
  v44 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 managedObjectContext];
  v5 = MEMORY[0x1E695D5E0];
  v6 = +[PLManagedAsset entityName];
  v7 = [v5 fetchRequestWithEntityName:v6];

  *(&v27 + 1) = 256;
  LOBYTE(v27) = 0;
  v8 = [MEMORY[0x1E69BF328] validatedSavedAssetTypeMaskUnknown:0 photoBooth:0 photoStream:0 camera:0 cloudShared:0 cameraConnectionKit:0 cloudPhotoLibrary:objc_msgSend(v3 wallpaper_UNUSED:"isCloudPhotoLibraryEnabled") momentShared:v27 placeholder:? referenced:? alternate:? guest:? companionSynced:? recovered:? collectionShare:? legacyImport:?];
  v9 = [MEMORY[0x1E69BF328] predicateForExcludeMask:v8 useIndex:0];
  [v7 setPredicate:v9];
  v40 = 0;
  v10 = [v4 executeFetchRequest:v7 error:&v40];
  v11 = v40;
  v12 = v11;
  if (v10)
  {
    v28 = v11;
    v30 = v9;
    v31 = v7;
    v32 = v4;
    v33 = v3;
    v35 = [MEMORY[0x1E695DF70] array];
    v34 = [MEMORY[0x1E695DF70] array];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v29 = v10;
    v13 = v10;
    v14 = [v13 countByEnumeratingWithState:&v36 objects:v43 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v37;
      v17 = *MEMORY[0x1E69BFD68];
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v37 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v19 = *(*(&v36 + 1) + 8 * i);
          v20 = objc_autoreleasePoolPush();
          v21 = [v19 mainFileURL];
          v22 = [MEMORY[0x1E69BF230] persistedAttributesForFileAtURL:v21];
          *buf = 0;
          [v22 getUInt16:buf forKey:v17];
          if (*buf)
          {
            if ([v19 hasAdjustments])
            {
              [v34 addObject:v19];
            }
          }

          else
          {
            v23 = [v19 objectID];
            [v35 addObject:v23];
          }

          objc_autoreleasePoolPop(v20);
        }

        v15 = [v13 countByEnumeratingWithState:&v36 objects:v43 count:16];
      }

      while (v15);
    }

    v24 = objc_alloc_init(PLDemoContentResults);
    v25 = v35;
    [(PLDemoContentResults *)v24 setAssetIDsToDelete:v35];
    [(PLDemoContentResults *)v24 setAssetsToRevert:v34];

    v4 = v32;
    v3 = v33;
    v9 = v30;
    v7 = v31;
    v12 = v28;
    v10 = v29;
  }

  else
  {
    v25 = PLStoreDemoModeGetLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v42 = v12;
      _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_ERROR, "Fetching demo assets failed %{public}@", buf, 0xCu);
    }

    v24 = 0;
  }

  return v24;
}

- (int64_t)markAssetOriginalsInTargetPhotoLibraryAsLegacyDemoContent:(BOOL)a3
{
  v3 = a3;
  v25 = *MEMORY[0x1E69E9840];
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v4 = [(PLDemoModeUtilities *)self targetPhotoLibraryPathManager];
  v5 = [v4 libraryURL];
  v16 = 0;
  v6 = [PLPhotoLibrary newPhotoLibraryWithName:"[PLDemoModeUtilities markAssetOriginalsInTargetPhotoLibraryAsLegacyDemoContent:]" loadedFromURL:v5 options:0 error:&v16];
  v7 = v16;

  if (v6)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __81__PLDemoModeUtilities_markAssetOriginalsInTargetPhotoLibraryAsLegacyDemoContent___block_invoke;
    v12[3] = &unk_1E7573CD8;
    v15 = v3;
    v13 = v6;
    v14 = &v17;
    [v13 performBlockAndWait:v12];

    v8 = v18[3];
  }

  else
  {
    v9 = PLStoreDemoModeGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = @"NO";
      if (v3)
      {
        v10 = @"YES";
      }

      *buf = 138412546;
      v22 = v10;
      v23 = 2114;
      v24 = v7;
      _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_ERROR, "Failed to update target library assets as demo content = %@, unable to load photo library %{public}@", buf, 0x16u);
    }

    v8 = -1;
    v18[3] = -1;
  }

  _Block_object_dispose(&v17, 8);
  return v8;
}

void __81__PLDemoModeUtilities_markAssetOriginalsInTargetPhotoLibraryAsLegacyDemoContent___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69BF328] maskForStoreDemoContent];
  v3 = [*(a1 + 32) managedObjectContext];
  v4 = [PLManagedAsset assetsWithValidatedSavedAssetTypeMask:v2 inManagedObjectContext:v3];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    v9 = *MEMORY[0x1E69BFD68];
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v15 + 1) + 8 * v10);
        v12 = objc_autoreleasePoolPush();
        v13 = [v11 mainFileURL];
        v14 = [MEMORY[0x1E69BF230] filesystemPersistenceBatchItemForFileAtURL:v13];
        [v14 setUInt16:*(a1 + 48) forKey:v9];
        [v14 persist];
        ++*(*(*(a1 + 40) + 8) + 24);

        objc_autoreleasePoolPop(v12);
        ++v10;
      }

      while (v7 != v10);
      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }
}

- (void)kickstartStagedDemoContentInstallationByKillingAllClients
{
  v2 = [(PLDemoModeUtilities *)self _evalSystemSafetyCheck:&__block_literal_global_91_90841];
  v3 = PLStoreDemoModeGetLog();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_DEFAULT, "Killing all connected photos clients to kickstart demo content installation.", buf, 2u);
    }

    v4 = [MEMORY[0x1E69BF2A0] systemLibraryPathManager];
    [v4 setSqliteErrorForRebuildReason:3 allowsExit:1];
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *v5 = 0;
    _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_ERROR, "Safety check failed: kickstartStagedDemoContentInstallationByKillingAllClients requires store demo mode", v5, 2u);
  }
}

- (BOOL)prepareForStoreDemoModeByStagingDemoLibraryContentFromTemplate
{
  v2 = self;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = [(PLDemoModeUtilities *)self _evalSystemSafetyCheck:&__block_literal_global_89_90846];
  v3 = [MEMORY[0x1E69BF238] fileManager];
  v4 = [(PLDemoModeUtilities *)v2 demoContentPhotoLibraryTemplatePath];
  v6 = v3;
  v7 = v4;
  PLSafeRunWithUnfairLock();
  LOBYTE(v2) = *(v9 + 24);

  _Block_object_dispose(&v8, 8);
  return v2;
}

void __85__PLDemoModeUtilities_prepareForStoreDemoModeByStagingDemoLibraryContentFromTemplate__block_invoke_2(uint64_t a1)
{
  v46[2] = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 56) + 8);
  if (*(v2 + 24) == 1)
  {
    if ([*(a1 + 32) fileExistsAtPath:*(a1 + 40)])
    {
      v3 = PLStoreDemoModeGetLog();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v4 = *(a1 + 40);
        *buf = 138543362;
        v40 = v4;
        _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEFAULT, "Staging demo library content from template %{public}@", buf, 0xCu);
      }

      v5 = [*(a1 + 48) demoContentPhotoLibraryStagingPath];
      [*(a1 + 48) demoContentPhotoLibraryPrestagingPath];
      v31 = v30 = v5;
      v46[0] = v5;
      v46[1] = v31;
      [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:2];
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v6 = v38 = 0u;
      v7 = [v6 countByEnumeratingWithState:&v35 objects:v45 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = 0;
        v10 = *v36;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v36 != v10)
            {
              objc_enumerationMutation(v6);
            }

            v12 = *(*(&v35 + 1) + 8 * i);
            if ([*(a1 + 32) fileExistsAtPath:v12])
            {
              v13 = PLStoreDemoModeGetLog();
              if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                v40 = v12;
                _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEFAULT, "Removing demo library content from staging folder: %{public}@", buf, 0xCu);
              }

              v14 = *(a1 + 32);
              v34 = v9;
              v15 = [v14 removeItemAtPath:v12 error:&v34];
              v16 = v34;

              if ((v15 & 1) == 0)
              {
                v17 = PLStoreDemoModeGetLog();
                if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138543618;
                  v40 = v12;
                  v41 = 2114;
                  v42 = v16;
                  _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_ERROR, "Failed to remove demo library content from %{public}@: %{public}@", buf, 0x16u);
                }
              }

              v9 = v16;
            }
          }

          v8 = [v6 countByEnumeratingWithState:&v35 objects:v45 count:16];
        }

        while (v8);
      }

      else
      {
        v9 = 0;
      }

      v20 = *(a1 + 32);
      v21 = *(a1 + 40);
      v33 = v9;
      v22 = [v20 copyItemAtPath:v21 toPath:v31 error:&v33];
      v23 = v33;

      *(*(*(a1 + 56) + 8) + 24) = v22;
      if (*(*(*(a1 + 56) + 8) + 24) == 1)
      {
        v24 = *(a1 + 32);
        v32 = v23;
        v25 = v30;
        v26 = [v24 moveItemAtPath:v31 toPath:v30 error:&v32];
        v18 = v32;

        *(*(*(a1 + 56) + 8) + 24) = v26;
        v27 = v31;
        if (*(*(*(a1 + 56) + 8) + 24))
        {
LABEL_33:

          goto LABEL_34;
        }

        v28 = PLStoreDemoModeGetLog();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543874;
          v40 = v31;
          v41 = 2114;
          v42 = v30;
          v43 = 2114;
          v44 = v18;
          _os_log_impl(&dword_19BF1F000, v28, OS_LOG_TYPE_ERROR, "Failed to move demo library content from prestaging %{public}@ to staging folder %{public}@: %{public}@", buf, 0x20u);
        }
      }

      else
      {
        v28 = PLStoreDemoModeGetLog();
        v25 = v30;
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          v29 = *(a1 + 40);
          *buf = 138543874;
          v40 = v29;
          v41 = 2114;
          v27 = v31;
          v42 = v31;
          v43 = 2114;
          v44 = v23;
          _os_log_impl(&dword_19BF1F000, v28, OS_LOG_TYPE_ERROR, "Failed to copy demo content from %{public}@ into pre-stage folder %{public}@: %{public}@", buf, 0x20u);
          v18 = v23;
        }

        else
        {
          v18 = v23;
          v27 = v31;
        }
      }

      goto LABEL_33;
    }

    v2 = *(*(a1 + 56) + 8);
  }

  *(v2 + 24) = 0;
  v18 = PLStoreDemoModeGetLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = *(a1 + 40);
    *buf = 138543362;
    v40 = v19;
    _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_DEFAULT, "No demo library content template found at %{public}@", buf, 0xCu);
  }

LABEL_34:
}

- (void)warmUpDemoLibraryInstalledFromStagedTemplate
{
  v2 = PLStoreDemoModeGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_DEFAULT, "Performing demo library post processing after installation [warmUpDemoLibraryInstalledFromStagedTemplate]", buf, 2u);
  }

  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  PLSafeRunWithUnfairLock();
}

void __67__PLDemoModeUtilities_warmUpDemoLibraryInstalledFromStagedTemplate__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) targetPhotoLibraryPathManager];
  v3 = [v2 libraryURL];
  v13 = 0;
  v4 = [PLPhotoLibrary newPhotoLibraryWithName:"[PLDemoModeUtilities warmUpDemoLibraryInstalledFromStagedTemplate]_block_invoke" loadedFromURL:v3 options:0 error:&v13];
  v5 = v13;

  if (v4)
  {
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v7 = v6;
    v8 = PLStoreDemoModeGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v7 - *(a1 + 40);
      *buf = 134217984;
      v15 = v9;
      v10 = "Successfully opened demo library in %2.2fs";
      v11 = v8;
      v12 = OS_LOG_TYPE_DEFAULT;
LABEL_6:
      _os_log_impl(&dword_19BF1F000, v11, v12, v10, buf, 0xCu);
    }
  }

  else
  {
    v8 = PLStoreDemoModeGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v15 = *&v5;
      v10 = "Failed to open demo library %{public}@";
      v11 = v8;
      v12 = OS_LOG_TYPE_ERROR;
      goto LABEL_6;
    }
  }
}

- (BOOL)replaceTargetPhotoLibraryWithStagedDemoLibraryIfExists
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  [(PLDemoModeUtilities *)self _evalSystemSafetyCheck:&__block_literal_global_90859];
  PLSafeRunWithUnfairLock();
  v2 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v2;
}

void __77__PLDemoModeUtilities_replaceTargetPhotoLibraryWithStagedDemoLibraryIfExists__block_invoke_2(uint64_t a1)
{
  v72 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69BF238] fileManager];
  v3 = [*(a1 + 32) demoContentPhotoLibraryStagingPath];
  v52 = v3;
  if (*(a1 + 48) == 1)
  {
    *(*(*(a1 + 40) + 8) + 24) = [v2 fileExistsAtPath:v3];
  }

  else
  {
    v4 = PLStoreDemoModeGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = [*(a1 + 32) targetPhotoLibraryPathManager];
      v6 = [*(a1 + 32) demoContentPhotoLibraryStagingPath];
      *buf = 138543618;
      v69 = v5;
      v70 = 2114;
      v71 = v6;
      _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_ERROR, "System does not allow installing staged demo photo library content. Ignoring request to replace target library %{public}@ with staged demo library %{public}@", buf, 0x16u);
    }
  }

  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    v51 = a1;
    v7 = [*(a1 + 32) targetPhotoLibraryPathManager];
    v8 = PLStoreDemoModeGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v69 = v7;
      v70 = 2112;
      v71 = v3;
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_DEBUG, "Overwriting target library %@ with staged demo library %@", buf, 0x16u);
    }

    v9 = [v7 photoDirectoryWithType:4];
    v67[0] = v9;
    v10 = [v7 photoDirectoryWithType:2];
    v67[1] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v67 count:2];

    v12 = [v7 iTunesPhotosDirectory];
    v66[0] = v12;
    v49 = v7;
    v13 = [v7 photoStreamsDataDirectory];
    v66[1] = v13;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v66 count:2];

    v50 = v11;
    v48 = v14;
    v15 = [v11 arrayByAddingObjectsFromArray:v14];
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v16 = [v15 countByEnumeratingWithState:&v60 objects:v65 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v61;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v61 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v60 + 1) + 8 * i);
          if ([v2 fileExistsAtPath:v20])
          {
            v59 = 0;
            v21 = [v2 removeItemAtPath:v20 error:&v59];
            v22 = v59;
            if ((v21 & 1) == 0)
            {
              v23 = PLStoreDemoModeGetLog();
              if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543618;
                v69 = v20;
                v70 = 2114;
                v71 = v22;
                _os_log_impl(&dword_19BF1F000, v23, OS_LOG_TYPE_ERROR, "Failed to remove target photo library folder %{public}@: %{public}@", buf, 0x16u);
              }
            }
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v60 objects:v65 count:16];
      }

      while (v17);
    }

    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v24 = v15;
    v25 = [v24 countByEnumeratingWithState:&v55 objects:v64 count:16];
    v26 = v52;
    if (v25)
    {
      v27 = v25;
      v28 = *v56;
      do
      {
        for (j = 0; j != v27; ++j)
        {
          if (*v56 != v28)
          {
            objc_enumerationMutation(v24);
          }

          v30 = *(*(&v55 + 1) + 8 * j);
          v31 = [v30 lastPathComponent];
          v32 = [v26 stringByAppendingPathComponent:v31];
          if ([v2 fileExistsAtPath:v32])
          {
            v33 = PLStoreDemoModeGetLog();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v69 = v32;
              _os_log_impl(&dword_19BF1F000, v33, OS_LOG_TYPE_DEFAULT, "Copying demo content from %{public}@...", buf, 0xCu);
            }

            v54 = 0;
            v34 = [v2 copyItemAtPath:v32 toPath:v30 error:&v54];
            v35 = v54;
            if ((v34 & 1) == 0)
            {
              v36 = PLStoreDemoModeGetLog();
              if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543618;
                v69 = v30;
                v70 = 2114;
                v71 = v35;
                _os_log_impl(&dword_19BF1F000, v36, OS_LOG_TYPE_ERROR, "Error copying demo content to %{public}@ folder: %{public}@", buf, 0x16u);
              }

              goto LABEL_37;
            }

            goto LABEL_38;
          }

          if ([v50 containsObject:v30])
          {
            v36 = PLStoreDemoModeGetLog();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v69 = v32;
              _os_log_impl(&dword_19BF1F000, v36, OS_LOG_TYPE_ERROR, "No demo content exists for required folder %{public}@", buf, 0xCu);
            }

            v35 = 0;
LABEL_37:

            *(*(*(v51 + 40) + 8) + 24) = 0;
LABEL_38:
            v26 = v52;
            goto LABEL_40;
          }

          v35 = 0;
LABEL_40:
        }

        v27 = [v24 countByEnumeratingWithState:&v55 objects:v64 count:16];
      }

      while (v27);
    }

    v53 = 0;
    v37 = [v2 removeItemAtPath:v26 error:&v53];
    v38 = v53;
    if ((v37 & 1) == 0)
    {
      v39 = PLStoreDemoModeGetLog();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v69 = v52;
        v70 = 2114;
        v71 = v38;
        _os_log_impl(&dword_19BF1F000, v39, OS_LOG_TYPE_ERROR, "Error removing staged demo content from %{public}@: %{public}@", buf, 0x16u);
      }
    }

    v40 = *(*(*(v51 + 40) + 8) + 24);
    v41 = PLStoreDemoModeGetLog();
    v42 = v41;
    if (v40 == 1)
    {
      v43 = v48;
      v44 = v49;
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v45 = "Demo library content installation complete";
        v46 = v42;
        v47 = OS_LOG_TYPE_DEFAULT;
LABEL_53:
        _os_log_impl(&dword_19BF1F000, v46, v47, v45, buf, 2u);
      }
    }

    else
    {
      v43 = v48;
      v44 = v49;
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v45 = "Demo library content installation failed";
        v46 = v42;
        v47 = OS_LOG_TYPE_ERROR;
        goto LABEL_53;
      }
    }

    v3 = v52;
    goto LABEL_55;
  }

  v44 = PLStoreDemoModeGetLog();
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19BF1F000, v44, OS_LOG_TYPE_DEFAULT, "Staged demo content library does not exist, ignoring request to replace target library", buf, 2u);
  }

LABEL_55:
}

- (BOOL)_evalSystemSafetyCheck:(id)a3
{
  if (self->_options)
  {
    return 1;
  }

  else
  {
    return (*(a3 + 2))(a3);
  }
}

- (PLDemoModeUtilities)initWithDemoContentTemplatePath:(id)a3 stagingBasePath:(id)a4 targetPhotoLibraryPathManager:(id)a5 options:(unint64_t)a6
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  if (v12)
  {
    if (v13)
    {
      goto LABEL_3;
    }

LABEL_8:
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"PLDemoModeUtilities.m" lineNumber:119 description:{@"Invalid parameter not satisfying: %@", @"stagingBase"}];

    if (v14)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v18 = [MEMORY[0x1E696AAA8] currentHandler];
  [v18 handleFailureInMethod:a2 object:self file:@"PLDemoModeUtilities.m" lineNumber:118 description:{@"Invalid parameter not satisfying: %@", @"templatePath"}];

  if (!v13)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v14)
  {
    goto LABEL_4;
  }

LABEL_9:
  v20 = [MEMORY[0x1E696AAA8] currentHandler];
  [v20 handleFailureInMethod:a2 object:self file:@"PLDemoModeUtilities.m" lineNumber:120 description:{@"Invalid parameter not satisfying: %@", @"pathManager"}];

LABEL_4:
  v21.receiver = self;
  v21.super_class = PLDemoModeUtilities;
  v15 = [(PLDemoModeUtilities *)&v21 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_demoContentPhotoLibraryTemplatePath, a3);
    objc_storeStrong(&v16->_demoContentStagingBasePath, a4);
    objc_storeStrong(&v16->_targetPhotoLibraryPathManager, a5);
    v16->_options = a6;
  }

  return v16;
}

- (NSString)demoContentPhotoLibraryPrestagingPath
{
  v2 = [(PLDemoModeUtilities *)self demoContentPhotoLibraryStagingPath];
  v3 = [v2 stringByAppendingString:@"-inprogress"];

  return v3;
}

- (NSString)demoContentPhotoLibraryStagingPath
{
  v2 = [(PLDemoModeUtilities *)self demoContentStagingBasePath];
  v3 = [v2 stringByAppendingPathComponent:@"DemoPhotoLibrary_STAGED.photoslibrary"];

  return v3;
}

+ (id)newDemoModeUtilitiesWithDefaultSystemPaths
{
  v3 = [a1 systemDemoContentPhotoLibraryTemplatePath];
  v4 = [a1 systemDemoContentStagingBasePath];
  v5 = [MEMORY[0x1E69BF2A0] systemLibraryPathManager];
  v6 = [[PLDemoModeUtilities alloc] initWithDemoContentTemplatePath:v3 stagingBasePath:v4 targetPhotoLibraryPathManager:v5 options:0];

  return v6;
}

@end