@interface PLBackgroundJobGuestAssetSyncWorker
+ (BOOL)_needsInitialSyncForSourceLibrary:(id)a3 targetLibrary:(id)a4;
- (BOOL)_batchResetGuestSavedAssetTypeInManagedObjectContext:(id)a3 error:(id *)a4;
- (BOOL)_batchResetSyndicationProcessingInManagedObjectContext:(id)a3 error:(id *)a4;
- (BOOL)_checkSyndicationPreferencesEnabledAndCleanupGuestAssetsIfNeededWithPhotoLibrary:(id)a3;
- (BOOL)_deleteAllGuestAssetsInPhotoLibrary:(id)a3 reason:(id)a4 error:(id *)a5;
- (BOOL)_resetSyndicationProcessingInSourceLibrary:(id)a3 error:(id *)a4;
- (BOOL)_safeIsCancelled;
- (BOOL)_systemPhotoLibraryChangedSinceLastRunWithSourceLibrary:(id)a3 targetLibrary:(id)a4;
- (PLBackgroundJobGuestAssetSyncWorker)initWithLibraryBundle:(id)a3;
- (id)_lastGuestAssetSyncTargetLibraryURLFromSourceLibrary:(id)a3 targetLibrary:(id)a4;
- (id)_sourcePhotoLibraryWithName:(const char *)a3;
- (id)workItemsNeedingProcessingInLibrary:(id)a3 validCriterias:(id)a4;
- (void)_performWorkOnItem:(id)a3 inSystemPhotoLibrary:(id)a4 completion:(id)a5;
- (void)_updateLastGuestAssetSyncTargetLibraryURLInSourceLibrary:(id)a3 targetLibrary:(id)a4;
- (void)guestAssetSyncManager:(id)a3 isTransferingAsset:(id)a4 toLibrary:(id)a5 completion:(id)a6;
- (void)performWorkOnItem:(id)a3 inLibrary:(id)a4 completion:(id)a5;
- (void)stopWorkingOnItem:(id)a3;
@end

@implementation PLBackgroundJobGuestAssetSyncWorker

- (void)guestAssetSyncManager:(id)a3 isTransferingAsset:(id)a4 toLibrary:(id)a5 completion:(id)a6
{
  v8 = a6;
  v9 = a5;
  v10 = a4;
  v11 = [v10 uuid];
  v12 = [v10 photoLibrary];

  v13 = [v12 libraryBundle];

  v14 = [v9 libraryBundle];

  v15 = +[PLInterLibraryTransferOptions newTransferOptionsForAssetsFromSyndicationToSystem];
  v16 = [MEMORY[0x1E695DFD8] setWithObject:v11];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __101__PLBackgroundJobGuestAssetSyncWorker_guestAssetSyncManager_isTransferingAsset_toLibrary_completion___block_invoke;
  v20[3] = &unk_1E7576050;
  v21 = v11;
  v22 = v8;
  v17 = v8;
  v18 = v11;
  v19 = [v13 transferAssets:v16 toBundle:v14 options:v15 completion:v20];
}

void __101__PLBackgroundJobGuestAssetSyncWorker_guestAssetSyncManager_isTransferingAsset_toLibrary_completion___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLSyndicationGetLog();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v14 = 138543618;
      v15 = v6;
      v16 = 2112;
      v17 = v3;
      v7 = "GuestAssetSync: _syncAsset %{public}@ failed with error %@";
      v8 = v5;
      v9 = OS_LOG_TYPE_ERROR;
      v10 = 22;
LABEL_6:
      _os_log_impl(&dword_19BF1F000, v8, v9, v7, &v14, v10);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v11 = *(a1 + 32);
    v14 = 138543362;
    v15 = v11;
    v7 = "GuestAssetSync: _syncAsset %{public}@ succeeded";
    v8 = v5;
    v9 = OS_LOG_TYPE_INFO;
    v10 = 12;
    goto LABEL_6;
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), v3, v12, v13);
}

- (BOOL)_systemPhotoLibraryChangedSinceLastRunWithSourceLibrary:(id)a3 targetLibrary:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [(PLBackgroundJobGuestAssetSyncWorker *)self _lastGuestAssetSyncTargetLibraryURLFromSourceLibrary:a3 targetLibrary:v6];
  v8 = [v6 pathManager];
  v9 = [v8 libraryURL];
  v10 = [v7 isEqual:v9];

  if ((v10 & 1) == 0)
  {
    v11 = PLSyndicationGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [MEMORY[0x1E69BF220] descriptionWithFileURL:v7];
      v13 = [v6 pathManager];
      v15 = 138412546;
      v16 = v12;
      v17 = 2112;
      v18 = v13;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEFAULT, "GuestAssetSync: System photo library URL changed since last run %@ -> %@", &v15, 0x16u);
    }
  }

  return v10 ^ 1;
}

- (void)_updateLastGuestAssetSyncTargetLibraryURLInSourceLibrary:(id)a3 targetLibrary:(id)a4
{
  v5 = a3;
  v6 = [a4 pathManager];
  v9 = [v6 libraryURL];

  v7 = [v9 path];
  v8 = [v5 globalValues];

  [v8 setLastGuestAssetSyncTargetLibraryPath:v7];
}

- (id)_lastGuestAssetSyncTargetLibraryURLFromSourceLibrary:(id)a3 targetLibrary:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v5 globalValues];
  v8 = [v7 lastGuestAssetSyncTargetLibraryPath];

  if (v8)
  {
    v9 = [MEMORY[0x1E695DFF8] fileURLWithPath:v8 isDirectory:1];
  }

  else
  {
    v10 = [v6 pathManager];
    v9 = [v10 libraryURL];

    v11 = PLSyndicationGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = [v6 pathManager];
      v16 = 138412290;
      v17 = v12;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_INFO, "GuestAssetSync: last target library URL is nil, setting to %@", &v16, 0xCu);
    }

    v13 = [v9 path];
    v14 = [v5 globalValues];
    [v14 setLastGuestAssetSyncTargetLibraryPath:v13];
  }

  return v9;
}

- (BOOL)_safeIsCancelled
{
  v2 = PLSafeResultWithUnfairLock();
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)_batchResetSyndicationProcessingInManagedObjectContext:(id)a3 error:(id *)a4
{
  v23[2] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E695D560];
  v6 = a3;
  v7 = [v5 alloc];
  v8 = +[PLMediaAnalysisAssetAttributes entity];
  v9 = [v7 initWithEntity:v8];

  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != %d", @"syndicationProcessingVersion", 0];
  [v9 setPredicate:v10];
  [v9 setResultType:2];
  v22[0] = @"syndicationProcessingVersion";
  v22[1] = @"syndicationProcessingValue";
  v23[0] = &unk_1F0FBC6B8;
  v23[1] = &unk_1F0FBC6B8;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];
  [v9 setPropertiesToUpdate:v11];

  v19 = 0;
  v12 = [v6 executeRequest:v9 error:&v19];

  v13 = v19;
  v14 = PLSyndicationGetLog();
  v15 = v14;
  if (v12)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v16 = [v12 result];
      *buf = 138412290;
      v21 = v16;
      _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_INFO, "GuestAssetSync: Batch reset syndicationProcessing on %@ media analysis attributes", buf, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v21 = v13;
      _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_ERROR, "GuestAssetSync: Failed to batch reset syndicationProcessing on media analysis attributes: %@", buf, 0xCu);
    }

    if (a4)
    {
      v17 = v13;
      *a4 = v13;
    }
  }

  return v12 != 0;
}

- (BOOL)_batchResetGuestSavedAssetTypeInManagedObjectContext:(id)a3 error:(id *)a4
{
  v24[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E695D560];
  v6 = a3;
  v7 = [v5 alloc];
  v8 = +[PLManagedAsset entity];
  v9 = [v7 initWithEntity:v8];

  v10 = [MEMORY[0x1E69BF328] predicateForIncludeMask:objc_msgSend(MEMORY[0x1E69BF328] useIndex:{"maskForGuestAsset"), 1}];
  [v9 setPredicate:v10];
  [v9 setResultType:2];
  v23 = @"savedAssetType";
  v11 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(MEMORY[0x1E69BF328], "savedAssetTypeForInsertIntoSyndicationLibrary")}];
  v24[0] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
  [v9 setPropertiesToUpdate:v12];

  v20 = 0;
  v13 = [v6 executeRequest:v9 error:&v20];

  v14 = v20;
  v15 = PLSyndicationGetLog();
  v16 = v15;
  if (v13)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v17 = [v13 result];
      *buf = 138412290;
      v22 = v17;
      _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_INFO, "GuestAssetSync: Batch reset savedAssetType for %@ assets", buf, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v22 = v14;
      _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_ERROR, "GuestAssetSync: Failed to batch reset savedAssetType for assets: %@", buf, 0xCu);
    }

    if (a4)
    {
      v18 = v14;
      *a4 = v14;
    }
  }

  return v13 != 0;
}

- (BOOL)_resetSyndicationProcessingInSourceLibrary:(id)a3 error:(id *)a4
{
  v6 = a3;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__36536;
  v19 = __Block_byref_object_dispose__36537;
  v20 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __88__PLBackgroundJobGuestAssetSyncWorker__resetSyndicationProcessingInSourceLibrary_error___block_invoke;
  v11[3] = &unk_1E7578898;
  v13 = &v21;
  v11[4] = self;
  v7 = v6;
  v12 = v7;
  v14 = &v15;
  [v7 performTransactionAndWait:v11];
  v8 = v16[5];
  if (v8 && a4)
  {
    *a4 = v8;
  }

  v9 = *(v22 + 24);

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);

  return v9;
}

void __88__PLBackgroundJobGuestAssetSyncWorker__resetSyndicationProcessingInSourceLibrary_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) managedObjectContext];
  v14 = 0;
  v4 = [v2 _batchResetGuestSavedAssetTypeInManagedObjectContext:v3 error:&v14];
  v5 = v14;
  *(*(*(a1 + 48) + 8) + 24) = v4;

  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    v6 = *(a1 + 32);
    v7 = [*(a1 + 40) managedObjectContext];
    v13 = 0;
    v8 = [v6 _batchResetSyndicationProcessingInManagedObjectContext:v7 error:&v13];
    v9 = v13;
    v10 = v13;
    *(*(*(a1 + 48) + 8) + 24) = v8;

    if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
    {
      objc_storeStrong((*(*(a1 + 56) + 8) + 40), v9);
    }
  }

  else
  {
    v11 = *(*(a1 + 56) + 8);
    v12 = v5;
    v10 = *(v11 + 40);
    *(v11 + 40) = v12;
  }
}

- (id)_sourcePhotoLibraryWithName:(const char *)a3
{
  v4 = +[PLPhotoLibraryBundleController sharedBundleController];
  v5 = [MEMORY[0x1E69BF2A0] wellKnownPhotoLibraryURLForIdentifier:3];
  v6 = [v4 openBundleAtLibraryURL:v5];

  v7 = [v6 libraryServicesManager];
  v17 = 0;
  v8 = [v7 activate:&v17];
  v9 = v17;
  v10 = v9;
  if (v8 && (v9, v16 = 0, v11 = [v7 awaitLibraryState:7 error:&v16], v10 = v16, v11))
  {
    v12 = [v7 databaseContext];
    v13 = [v12 newShortLivedLibraryWithName:a3];
  }

  else
  {
    v12 = PLSyndicationGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *v15 = 0;
      _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_ERROR, "GuestAssetSync: Unable to provide source library for guest asset sync worker", v15, 2u);
    }

    v13 = 0;
  }

  return v13;
}

- (BOOL)_deleteAllGuestAssetsInPhotoLibrary:(id)a3 reason:(id)a4 error:(id *)a5
{
  v23 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = PLSyndicationGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v20 = v7;
    _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_DEFAULT, "GuestAssetSync: deleting all guest assets in library %@", buf, 0xCu);
  }

  v10 = [v7 managedObjectContext];
  v11 = [v7 pathManager];
  v18 = 0;
  v12 = PLDeleteGuestAssetsInLibraryWithManagedObjectContext(v10, v11, v8, 0, &v18);

  v13 = v18;
  if (v12)
  {
    v14 = v13;
  }

  else
  {
    v15 = PLSyndicationGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v20 = v7;
      v21 = 2112;
      v22 = v13;
      _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_ERROR, "GuestAssetSync: failed to delete guest assets in library %@ error: %@", buf, 0x16u);
    }

    v16 = v13;
    if (a5)
    {
      *a5 = v16;
    }
  }

  return v12;
}

- (BOOL)_checkSyndicationPreferencesEnabledAndCleanupGuestAssetsIfNeededWithPhotoLibrary:(id)a3
{
  v4 = a3;
  v5 = PLSyndicationGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v10 = 0;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_INFO, "GuestAssetSync: checking syndication preferences...", v10, 2u);
  }

  v6 = PLSyndicationPreferencesEnabled(0);
  if ((v6 & 1) == 0)
  {
    if ([PLGuestAssetSyncEngine didIngestGuestAssetsInLibrary:v4])
    {
      [(PLBackgroundJobGuestAssetSyncWorker *)self _deleteAllGuestAssetsInPhotoLibrary:v4 reason:@"Deleting all guest assets in SPL because syndication prefs are disabled" error:0];
    }

    else
    {
      v7 = [v4 globalValues];
      [v7 setGuestAssetSyncStatus:0];

      v8 = [v4 globalValues];
      [v8 setGuestAssetInitialSyncResumeMarker:0];
    }
  }

  return v6;
}

- (void)stopWorkingOnItem:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = PLSyndicationGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v6 = v3;
    _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_INFO, "GuestAssetSync: PLBackgroundJobGuestAssetSyncWorker stopWorkingOnItem: %p", buf, 0xCu);
  }

  PLSafeRunWithUnfairLock();
}

uint64_t __57__PLBackgroundJobGuestAssetSyncWorker_stopWorkingOnItem___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 116) == 1)
  {
    *(v1 + 117) = 1;
  }

  return result;
}

- (void)performWorkOnItem:(id)a3 inLibrary:(id)a4 completion:(id)a5
{
  v41 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = PLSyndicationGetLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 134218242;
    v38 = v9;
    v39 = 2112;
    v40 = v9;
    _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_INFO, "GuestAssetSync: PLBackgroundJobGuestAssetSyncWorker performWorkOnItem: %p %@", buf, 0x16u);
  }

  if (!v10)
  {
    v31 = [MEMORY[0x1E696AAA8] currentHandler];
    [v31 handleFailureInMethod:a2 object:self file:@"PLBackgroundJobGuestAssetSyncWorker.m" lineNumber:238 description:{@"Invalid parameter not satisfying: %@", @"library != nil"}];
  }

  if ([(PLBackgroundJobWorker *)self hasEnoughDiskSpaceToContinue:v11])
  {
    v13 = [(PLBackgroundJobWorker *)self libraryBundle];
    v14 = [v13 libraryServicesManager];

    if (v14)
    {
      v15 = [v14 wellKnownPhotoLibraryIdentifier];
      if (v15 <= 1)
      {
        if (v15)
        {
          if (v15 == 1)
          {
            [(PLBackgroundJobGuestAssetSyncWorker *)self _performWorkOnItem:v9 inSystemPhotoLibrary:v10 completion:v11];
          }
        }

        else
        {
          if ([PLGuestAssetSyncEngine didIngestGuestAssetsInLibrary:v10])
          {
            v25 = [v10 managedObjectContext];
            if (v25)
            {
              v26 = v25;
              v32 = 0;
              [(PLBackgroundJobGuestAssetSyncWorker *)self _deleteAllGuestAssetsInPhotoLibrary:v10 reason:@"Guest asset sync worker on non-SPL library deleting guest assets" error:&v32];
              v27 = v32;
            }

            else
            {
              v28 = MEMORY[0x1E696ABC0];
              v29 = *MEMORY[0x1E69BFF48];
              v33 = *MEMORY[0x1E696A278];
              v34 = @"MOC is nil during guest asset sync performWorkOnItem";
              v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
              v27 = [v28 errorWithDomain:v29 code:41003 userInfo:v30];

              v26 = 0;
            }
          }

          else
          {
            v26 = [v10 globalValues];
            [v26 setGuestAssetSyncStatus:0];
            v27 = 0;
          }

          v11[2](v11, v27);
        }

        goto LABEL_21;
      }

      if (v15 == 2)
      {
        v20 = [MEMORY[0x1E696AAA8] currentHandler];
        v18 = v20;
        v21 = @"Guest asset sync worker should not run on messages photo library";
        v22 = a2;
        v23 = self;
        v24 = 255;
      }

      else
      {
        if (v15 != 3)
        {
LABEL_21:

          goto LABEL_22;
        }

        v20 = [MEMORY[0x1E696AAA8] currentHandler];
        v18 = v20;
        v21 = @"Guest asset sync worker should not run on syndication photo library";
        v22 = a2;
        v23 = self;
        v24 = 252;
      }

      [v20 handleFailureInMethod:v22 object:v23 file:@"PLBackgroundJobGuestAssetSyncWorker.m" lineNumber:v24 description:v21];
    }

    else
    {
      v16 = MEMORY[0x1E696ABC0];
      v17 = *MEMORY[0x1E69BFF48];
      v35 = *MEMORY[0x1E696A278];
      v36 = @"nil lsm";
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
      v19 = [v16 errorWithDomain:v17 code:46002 userInfo:v18];
      v11[2](v11, v19);
    }

    goto LABEL_21;
  }

LABEL_22:
}

- (void)_performWorkOnItem:(id)a3 inSystemPhotoLibrary:(id)a4 completion:(id)a5
{
  v29 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(PLBackgroundJobGuestAssetSyncWorker *)self _checkSyndicationPreferencesEnabledAndCleanupGuestAssetsIfNeededWithPhotoLibrary:v9])
  {
    v11 = [(PLBackgroundJobGuestAssetSyncWorker *)self _sourcePhotoLibraryWithName:"[PLBackgroundJobGuestAssetSyncWorker _performWorkOnItem:inSystemPhotoLibrary:completion:]"];
    if (v11)
    {
      if ([(PLBackgroundJobGuestAssetSyncWorker *)self _systemPhotoLibraryChangedSinceLastRunWithSourceLibrary:v11 targetLibrary:v9])
      {
        v26 = 0;
        v12 = [(PLBackgroundJobGuestAssetSyncWorker *)self _resetSyndicationProcessingInSourceLibrary:v11 error:&v26];
        v13 = v26;
        if (!v12)
        {
          v10[2](v10, v13);
          goto LABEL_20;
        }

        [(PLBackgroundJobGuestAssetSyncWorker *)self _updateLastGuestAssetSyncTargetLibraryURLInSourceLibrary:v11 targetLibrary:v9];
      }

      if ([objc_opt_class() _needsInitialSyncForSourceLibrary:v11 targetLibrary:v9])
      {
        v14 = PLSyndicationGetLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_DEFAULT, "GuestAssetSync: Performing initial guest asset sync", buf, 2u);
        }

        v21 = MEMORY[0x1E69E9820];
        v22 = 3221225472;
        v23 = __90__PLBackgroundJobGuestAssetSyncWorker__performWorkOnItem_inSystemPhotoLibrary_completion___block_invoke;
        v24 = &unk_1E75781E8;
        v25 = self;
        PLSafeRunWithUnfairLock();
        manager = self->_manager;
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v19[2] = __90__PLBackgroundJobGuestAssetSyncWorker__performWorkOnItem_inSystemPhotoLibrary_completion___block_invoke_2;
        v19[3] = &unk_1E7576FF8;
        v19[4] = self;
        v20 = v10;
        [(PLGuestAssetSyncEngine *)manager performInitialSyncWithSourceLibrary:v11 targetLibrary:v9 completion:v19];

        goto LABEL_21;
      }

      if ([v8 type] == 2)
      {
        v18 = self->_manager;
        v13 = [v8 objectID];
        [(PLGuestAssetSyncEngine *)v18 processWorkItemObjectID:v13 sourceLibrary:v11 targetLibrary:v9 completion:v10];
LABEL_20:

        goto LABEL_21;
      }
    }

    else
    {
      v17 = PLSyndicationGetLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v28 = v8;
        _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_INFO, "GuestAssetSync: No work for item %p: sourceLibrary is nil", buf, 0xCu);
      }
    }

    v10[2](v10, 0);
LABEL_21:

    goto LABEL_22;
  }

  v16 = PLSyndicationGetLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v28 = v8;
    _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_INFO, "GuestAssetSync: No work for item %p: syndication preference is disabled", buf, 0xCu);
  }

  v10[2](v10, 0);
LABEL_22:
}

void __90__PLBackgroundJobGuestAssetSyncWorker__performWorkOnItem_inSystemPhotoLibrary_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  PLSafeRunWithUnfairLock();
  (*(*(a1 + 40) + 16))();
}

uint64_t __90__PLBackgroundJobGuestAssetSyncWorker__performWorkOnItem_inSystemPhotoLibrary_completion___block_invoke_3(uint64_t result)
{
  *(*(result + 32) + 117) = 0;
  *(*(result + 32) + 116) = 0;
  return result;
}

- (id)workItemsNeedingProcessingInLibrary:(id)a3 validCriterias:(id)a4
{
  v50[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = +[PLBackgroundJobCriteria criteriaForHubbleWorker];
  if (([v7 containsObject:v8] & 1) == 0)
  {
    v16 = [[PLBackgroundJobWorkerPendingWorkItems alloc] initWithZeroWorkItemsForValidCriteria];
    goto LABEL_34;
  }

  v9 = [(PLBackgroundJobWorker *)self libraryBundle];
  v10 = [v9 libraryServicesManager];

  if (v10 && ![v10 wellKnownPhotoLibraryIdentifier])
  {
    v22 = [PLGuestAssetSyncEngine didIngestGuestAssetsInLibrary:v6];
    v18 = [PLBackgroundJobWorkerPendingWorkItems alloc];
    if (v22)
    {
      v19 = +[PLBackgroundJobGuestAssetSyncWorkItemContainer libraryOrPreferencesChangedWorkItem];
      v50[0] = v19;
      v20 = MEMORY[0x1E695DEC8];
      v21 = v50;
      goto LABEL_12;
    }

LABEL_13:
    v16 = [(PLBackgroundJobWorkerPendingWorkItems *)v18 initWithZeroWorkItems];
    goto LABEL_33;
  }

  if (PLSyndicationPreferencesEnabled(1))
  {
    v11 = [(PLBackgroundJobGuestAssetSyncWorker *)self _sourcePhotoLibraryWithName:"[PLBackgroundJobGuestAssetSyncWorker workItemsNeedingProcessingInLibrary:validCriterias:]"];
    if ([(PLBackgroundJobGuestAssetSyncWorker *)self _systemPhotoLibraryChangedSinceLastRunWithSourceLibrary:v11 targetLibrary:v6])
    {
      v12 = [PLBackgroundJobWorkerPendingWorkItems alloc];
      v13 = +[PLBackgroundJobGuestAssetSyncWorkItemContainer libraryOrPreferencesChangedWorkItem];
      v48 = v13;
      v14 = MEMORY[0x1E695DEC8];
      v15 = &v48;
    }

    else
    {
      if (![objc_opt_class() _needsInitialSyncForSourceLibrary:v11 targetLibrary:v6])
      {
        manager = self->_manager;
        v43 = 0;
        v24 = [(PLGuestAssetSyncEngine *)manager workItemObjectIDsInLibrary:v11 error:&v43];
        v13 = v43;
        if (!v24)
        {
          v26 = PLSyndicationGetLog();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v46 = v13;
            _os_log_impl(&dword_19BF1F000, v26, OS_LOG_TYPE_ERROR, "GuestAssetSync: Unable to fetch work items needed, error: %@", buf, 0xCu);
          }
        }

        v27 = objc_alloc_init(MEMORY[0x1E695DF70]);
        if ([v24 count])
        {
          v36 = v13;
          v37 = v11;
          v38 = v10;
          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          v35 = v24;
          v28 = v24;
          v29 = [v28 countByEnumeratingWithState:&v39 objects:v44 count:16];
          if (v29)
          {
            v30 = v29;
            v31 = *v40;
            do
            {
              for (i = 0; i != v30; ++i)
              {
                if (*v40 != v31)
                {
                  objc_enumerationMutation(v28);
                }

                v33 = [PLBackgroundJobGuestAssetSyncWorkItemContainer persistedJobWorkItemWithObjectID:*(*(&v39 + 1) + 8 * i), v35, v36, v37, v38, v39];
                [v27 addObject:v33];
              }

              v30 = [v28 countByEnumeratingWithState:&v39 objects:v44 count:16];
            }

            while (v30);
          }

          v16 = [[PLBackgroundJobWorkerPendingWorkItems alloc] initWithCriteria:v8 workItemsNeedingProcessing:v27];
          v11 = v37;
          v10 = v38;
          v24 = v35;
          v13 = v36;
        }

        else
        {
          v16 = [[PLBackgroundJobWorkerPendingWorkItems alloc] initWithZeroWorkItems];
        }

        goto LABEL_32;
      }

      v12 = [PLBackgroundJobWorkerPendingWorkItems alloc];
      v13 = +[PLBackgroundJobGuestAssetSyncWorkItemContainer initialSyncWorkItem];
      v47 = v13;
      v14 = MEMORY[0x1E695DEC8];
      v15 = &v47;
    }

    v24 = [v14 arrayWithObjects:v15 count:1];
    v16 = [(PLBackgroundJobWorkerPendingWorkItems *)v12 initWithCriteria:v8 workItemsNeedingProcessing:v24];
LABEL_32:

    goto LABEL_33;
  }

  v17 = [PLGuestAssetSyncEngine didIngestGuestAssetsInLibrary:v6];
  v18 = [PLBackgroundJobWorkerPendingWorkItems alloc];
  if (!v17)
  {
    goto LABEL_13;
  }

  v19 = +[PLBackgroundJobGuestAssetSyncWorkItemContainer libraryOrPreferencesChangedWorkItem];
  v49 = v19;
  v20 = MEMORY[0x1E695DEC8];
  v21 = &v49;
LABEL_12:
  v23 = [v20 arrayWithObjects:v21 count:1];
  v16 = [(PLBackgroundJobWorkerPendingWorkItems *)v18 initWithCriteria:v8 workItemsNeedingProcessing:v23];

LABEL_33:
LABEL_34:

  return v16;
}

- (PLBackgroundJobGuestAssetSyncWorker)initWithLibraryBundle:(id)a3
{
  v8.receiver = self;
  v8.super_class = PLBackgroundJobGuestAssetSyncWorker;
  v3 = [(PLBackgroundJobWorker *)&v8 initWithLibraryBundle:a3];
  v4 = v3;
  if (v3)
  {
    v3->_lock._os_unfair_lock_opaque = 0;
    v5 = [[PLGuestAssetSyncEngine alloc] initWithDelegate:v3];
    manager = v4->_manager;
    v4->_manager = v5;
  }

  return v4;
}

+ (BOOL)_needsInitialSyncForSourceLibrary:(id)a3 targetLibrary:(id)a4
{
  v5 = a4;
  v6 = [a3 globalValues];
  v7 = [v6 guestAssetSyncStatus];
  if (v7)
  {
    v8 = [v5 globalValues];
    v9 = [v8 guestAssetSyncStatus];
    if (v9)
    {
      v10 = [v5 globalValues];
      v11 = [v10 guestAssetSyncStatus];
      v12 = ([v11 integerValue] & 4) == 0;
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 1;
  }

  return v12;
}

@end