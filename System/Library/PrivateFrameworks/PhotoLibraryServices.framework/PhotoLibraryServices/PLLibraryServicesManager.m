@interface PLLibraryServicesManager
+ (id)errorForInvalidationError:(id)a3 userInfo:(id)a4;
+ (id)libraryServicesManagerForLibraryURL:(id)a3;
- ($5E5F304956FB491AF6F034FDF0808287)resourceCacheMetrics;
- (BOOL)_canTransitionToState:(int64_t)a3 error:(id *)a4;
- (BOOL)_enqueueOperation:(id)a3 error:(id *)a4;
- (BOOL)activate:(id *)a3;
- (BOOL)awaitLibraryState:(int64_t)a3 error:(id *)a4;
- (BOOL)disableiCPLForLibraryDeletionWithError:(id *)a3;
- (BOOL)enqueueOperation:(id)a3 error:(id *)a4;
- (BOOL)enqueueOperationWithName:(id)a3 requiredState:(int64_t)a4 executionBlock:(id)a5;
- (BOOL)finalize:(id *)a3;
- (BOOL)isAppPhotoLibrary;
- (BOOL)isBackgroundAppRefreshEnabled;
- (BOOL)isBackgroundAppRefreshEnabledForBundleIdentifier:(id)a3;
- (BOOL)isCPLSyncablePhotoLibrary;
- (BOOL)isCloudPhotoLibraryEnabled;
- (BOOL)isSearchIndexingEnabled;
- (BOOL)transitionToState:(int64_t)a3 error:(id *)a4;
- (BOOL)updateGreenTeaSavedContactsAuthorizationIfNeeded;
- (BOOL)updateSavedLocaleIfNeeded;
- (BOOL)willBecomeNonSyncablePhotoLibrary:(id *)a3;
- (NSPersistentStoreCoordinator)persistentStoreCoordinator;
- (NSString)description;
- (NSString)mainScopeIdentifier;
- (NSURL)libraryURL;
- (PFClientSideEncryptionManager)clientSideEncryptionManager;
- (PLChangeHandlingContainer)changeHandlingContainer;
- (PLLibraryServicesManager)initWithLibraryBundle:(id)a3 backgroundJobService:(id)a4 cacheDeleteRegistration:(id)a5 delegateClass:(Class)a6;
- (PLLibraryServicesStateNode)currentStateNode;
- (PLMigrationServiceProtocol)migrationServiceProxy;
- (PLMomentGenerationDataManager)momentGenerationDataManager;
- (PLPhotoLibraryBundle)libraryBundle;
- (id)_enqueueAwaitOperation;
- (id)_libraryServicesStateNodeWithState:(int64_t)a3;
- (id)_newContainer:(Class)a3 scope:(id)a4;
- (id)_provideContextForSearchDonationProgress;
- (id)activeOperations;
- (id)collectionShareBackendForKind:(signed __int16)a3;
- (id)journalManagerForName:(id)a3;
- (id)newAlbumCountCoalescer;
- (id)newBackgroundAssetResourceUploader;
- (id)newClientSideEncryptionManager;
- (id)newCloudPhotoLibraryManager;
- (id)newComputeCacheManager;
- (id)newCrashRecoverySupport;
- (id)newDirectServerConfiguration;
- (id)newImportSessionCountCoalescer;
- (id)newMomentGenerationDataManager;
- (id)newRebuildJournalManager;
- (id)newSearchDonationProgress;
- (id)newSearchIndexingEngine;
- (id)pendingOperations;
- (id)stateCaptureDictionary;
- (id)statusDescription;
- (int64_t)_determineWellKnownPhotoLibraryIdentifier;
- (int64_t)_state;
- (int64_t)state;
- (unint64_t)createOptions;
- (unsigned)maxWaiterQoS;
- (void)_addPendingOperationsForStateNode:(id)a3;
- (void)_awaitLibraryState:(int64_t)a3 sync:(BOOL)a4 completionHandler:(id)a5;
- (void)_cancelPendingOperations;
- (void)_dispatchAwaitLibraryStateCompletionHandler:(id)a3 group:(id)a4 error:(id)a5;
- (void)_dispatchExternalWaitersForState:(int64_t)a3;
- (void)_enqueueExternalWaiterCompletionBlockForState:(int64_t)a3 completionBlock:(id)a4;
- (void)_handleCoalescerActionWithScope:(id)a3 class:(Class)a4 forIDs:(id)a5 context:(id)a6;
- (void)_handleLibraryStateCompletedAllOperations;
- (void)_increaseStateQueueQoSIfNeeded;
- (void)_initCameraPreviewWellManager;
- (void)_initSyndicationPhotoLibrarySpecificServices;
- (void)_initSystemPhotoLibrarySpecificServices;
- (void)_invalidate;
- (void)_invalidateBackgroundJobService;
- (void)_invalidateOutstandingTransactionHandlerTimer;
- (void)_invalidateSyndicationPhotoLibrarySpecificServices;
- (void)_invalidateSystemPhotoLibrarySpecificServices;
- (void)_resetStateQueueQoS;
- (void)_setCameraRollCountedInQuota:(BOOL)a3;
- (void)_setCurrentStateNode:(id)a3;
- (void)_startObservingLibraryStateCompletedAllOperations;
- (void)_stopObservingLibraryStateCompletedAllOperations;
- (void)_transitionToState:(int64_t)a3;
- (void)_waitForAwaitOperation:(id)a3;
- (void)deactivateWithInvalidationError:(id)a3;
- (void)dealloc;
- (void)didBecomeNonSyncablePhotoLibrary;
- (void)initializeChangeHandling;
- (void)initializeConstraintsDirector;
- (void)invalidateReverseLocationDataOnAllAssets;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)performFileSystemAssetImporterWorkWithLibrary:(id)a3 block:(id)a4;
- (void)performTransactionForSyndicationDeleteManager:(id)a3 name:(const char *)a4 transaction:(id)a5;
- (void)refreshAlbumCountForAlbumIDs:(id)a3;
- (void)refreshImportSessionCountForImportSessionIDs:(id)a3;
- (void)registerOutstandingTransactionsHandler:(id)a3;
- (void)setCreateMode:(BOOL)a3 options:(id)a4;
- (void)setICloudPhotosEnabledInternal:(BOOL)a3;
- (void)shutdownLibraryWithDescription:(id)a3;
@end

@implementation PLLibraryServicesManager

- (int64_t)_state
{
  v3 = [(PLLibraryServicesManager *)self stateSerializationQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(PLLibraryServicesManager *)self currentStateNode];
  v5 = [v4 state];

  return v5;
}

- (int64_t)state
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v3 = [(PLLibraryServicesManager *)self stateSerializationQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __33__PLLibraryServicesManager_state__block_invoke;
  v6[3] = &unk_1E7578910;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (PLLibraryServicesStateNode)currentStateNode
{
  v2 = PLResultWithUnfairLock();

  return v2;
}

uint64_t __33__PLLibraryServicesManager_state__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _state];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)isCloudPhotoLibraryEnabled
{
  v2 = [(PLLibraryServicesManager *)self cplSettings];
  v3 = [v2 isCloudPhotoLibraryEnabled];

  return v3;
}

- (id)newComputeCacheManager
{
  v2 = [[PLComputeCacheManager alloc] initWithLibraryServicesManager:self];
  [(PLComputeCacheManager *)v2 start];
  return v2;
}

- ($5E5F304956FB491AF6F034FDF0808287)resourceCacheMetrics
{
  objc_copyStruct(v4, &self->_resourceCacheMetrics, 16, 1, 0);
  v2 = v4[0];
  v3 = v4[1];
  result.var2 = v3;
  result.var3 = HIDWORD(v3);
  result.var0 = v2;
  result.var1 = HIDWORD(v2);
  return result;
}

- (PLMigrationServiceProtocol)migrationServiceProxy
{
  WeakRetained = objc_loadWeakRetained(&self->_migrationServiceProxy);

  return WeakRetained;
}

- (PLPhotoLibraryBundle)libraryBundle
{
  WeakRetained = objc_loadWeakRetained(&self->_libraryBundle);

  return WeakRetained;
}

- (BOOL)isBackgroundAppRefreshEnabledForBundleIdentifier:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    *buf = 0;
    v20 = buf;
    v21 = 0x2020000000;
    v22 = 1;
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __77__PLLibraryServicesManager_isBackgroundAppRefreshEnabledForBundleIdentifier___block_invoke;
    v15 = &unk_1E7578820;
    v16 = self;
    v17 = v4;
    v18 = buf;
    PLRunWithUnfairLock();
    v6 = [MEMORY[0x1E699A4B8] sharedScheduler];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __77__PLLibraryServicesManager_isBackgroundAppRefreshEnabledForBundleIdentifier___block_invoke_2;
    v10[3] = &unk_1E756CEA8;
    v10[4] = self;
    v11 = v17;
    [v6 backgroundAppRefreshEnabledForApp:v11 withHandler:v10];
    v7 = v20[24];

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v8 = PLBackendGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_INFO, "Unable to determine Background App Refresh for nil identifier", buf, 2u);
    }

    v7 = 0;
  }

  return v7 & 1;
}

void __77__PLLibraryServicesManager_isBackgroundAppRefreshEnabledForBundleIdentifier___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 408) objectForKeyedSubscript:a1[5]];

  if (v2)
  {
    v3 = [*(a1[4] + 408) objectForKeyedSubscript:a1[5]];
    *(*(a1[6] + 8) + 24) = [v3 BOOLValue];
  }
}

void __77__PLLibraryServicesManager_isBackgroundAppRefreshEnabledForBundleIdentifier___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  PLRunWithUnfairLock();
}

void __77__PLLibraryServicesManager_isBackgroundAppRefreshEnabledForBundleIdentifier___block_invoke_3(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 48)];
  [*(*(a1 + 32) + 408) setObject:v2 forKeyedSubscript:*(a1 + 40)];
}

- (BOOL)isBackgroundAppRefreshEnabled
{
  v2 = [MEMORY[0x1E69ADFB8] sharedConnection];
  v3 = [v2 isAutomaticAppUpdatesAllowed];

  if ((v3 & 1) == 0)
  {
    v4 = PLBackendGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_INFO, "Worker prevented via global background app refresh", v6, 2u);
    }
  }

  return v3;
}

- (id)stateCaptureDictionary
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = PLLibraryServicesGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(PLLibraryServicesManager *)self logPrefix];
    v5 = MEMORY[0x1E69BF220];
    WeakRetained = objc_loadWeakRetained(&self->_libraryBundle);
    v7 = [WeakRetained libraryURL];
    v8 = [v5 descriptionWithFileURL:v7];
    v21 = 138412546;
    v22 = v4;
    v23 = 2112;
    v24 = v8;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEFAULT, "STATEDUMP: %@: State information for library services manager at path %@", &v21, 0x16u);
  }

  v9 = [(PLLibraryServicesManager *)self currentStateNode];
  v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v9 state];
  v11 = PLStringFromLibraryServicesState();
  [v10 setObject:v11 forKeyedSubscript:@"state"];

  v12 = [v9 description];
  [v10 setObject:v12 forKeyedSubscript:@"currentStateNode"];

  v13 = [(PLLibraryServicesManager *)self activeOperations];
  v14 = [v13 _pl_prettyDescription];
  [v10 setObject:v14 forKeyedSubscript:@"activeOperations"];

  v15 = [(PLLibraryServicesManager *)self pendingOperations];
  v16 = [v15 _pl_prettyDescription];
  [v10 setObject:v16 forKeyedSubscript:@"pendingOperations"];

  [(PLLibraryServicesManager *)self maxWaiterQoS];
  v17 = PLStringFromQoSClass();
  [v10 setObject:v17 forKeyedSubscript:@"maxWaiterQoS"];

  [(PLLibraryServicesManager *)self wellKnownPhotoLibraryIdentifier];
  v18 = PLStringFromWellKnownPhotoLibraryIdentifier();
  [v10 setObject:v18 forKeyedSubscript:@"wellKnownPhotoLibraryIdentifier"];

  v19 = [(PLBackgroundJobService *)self->_backgroundJobService description];
  [v10 setObject:v19 forKeyedSubscript:@"backgroundJobService"];

  return v10;
}

- (BOOL)disableiCPLForLibraryDeletionWithError:(id *)a3
{
  if ([(PLLibraryServicesManager *)self isCPLSyncablePhotoLibrary])
  {
    v5 = [[PLPhotoLibraryOpener alloc] initWithLibraryServicesManager:self reportInProgressUpgrades:0];
    v6 = [(PLPhotoLibraryOpener *)v5 openPhotoLibraryDatabaseWithAutoUpgrade:1 autoCreate:0 error:a3];
    if (v6)
    {
      v7 = [(PLLibraryServicesManager *)self cloudPhotoLibraryManager];
      v8 = v7;
      if (v7)
      {
        [v7 disableiCPLSyncForLibraryDeletion];
      }

      else
      {
        v9 = PLBackendGetLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *v11 = 0;
          _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_DEFAULT, "disableiCPLForLibraryDeletionWithError: CPL manager unexpectedly nil, unable to disable iCPL", v11, 2u);
        }
      }
    }
  }

  else
  {
    LOBYTE(v6) = 1;
  }

  return v6;
}

- (void)didBecomeNonSyncablePhotoLibrary
{
  v3 = [(PLLibraryServicesManager *)self isSystemPhotoLibrary];
  self->_wellKnownPhotoLibraryIdentifier = [(PLLibraryServicesManager *)self _determineWellKnownPhotoLibraryIdentifier];
  [(PLLazyObject *)self->_lazyMainScopeIdentifier resetObject];
  [(PLLazyObject *)self->_lazyCloudPhotoLibraryManager resetObjectWithHandler:&__block_literal_global_260];
  if (v3)
  {
    [(PLLibraryServicesManager *)self _invalidateSystemPhotoLibrarySpecificServices];
  }

  v6 = [(PLLibraryServicesManager *)self backgroundJobService];
  v4 = [(PLLibraryServicesManager *)self libraryBundle];
  v5 = +[PLBackgroundJobWorkerTypes maskForBecomingNonSyncablePhotoLibrary];
  [v6 signalBackgroundProcessingNeededOnBundle:v4 workerTypes:v5];
}

- (BOOL)willBecomeNonSyncablePhotoLibrary:(id *)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = [(PLLibraryServicesManager *)self awaitLibraryState:6 error:a3];
  if (v4)
  {
    v5 = PLLibraryServicesGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(PLLibraryServicesManager *)self logPrefix];
      v7 = MEMORY[0x1E69BF220];
      v8 = [(PLLibraryServicesManager *)self libraryURL];
      v9 = [v7 descriptionWithFileURL:v8];
      v10 = [(PLLibraryServicesManager *)self isSystemPhotoLibrary];
      v11 = @"no";
      *buf = 138543874;
      v31 = v6;
      v32 = 2112;
      if (v10)
      {
        v11 = @"yes";
      }

      v33 = v9;
      v34 = 2112;
      v35 = v11;
      _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Library will become non-syncable: %@ isSPL: %@", buf, 0x20u);
    }

    v12 = [(PLLibraryServicesManager *)self cloudPhotoLibraryManager];
    [v12 disableiCPLSyncWillBecomeNonSyncablePhotoLibrary];

    if ([(PLLibraryServicesManager *)self isSystemPhotoLibrary])
    {
      v13 = dispatch_group_create();
      v14 = +[PLAccountStore pl_sharedAccountStore];
      v15 = [v14 cachedPrimaryAppleAccount];

      v16 = *MEMORY[0x1E6959AE8];
      if ([v15 isEnabledForDataclass:*MEMORY[0x1E6959AE8]])
      {
        [v15 setEnabled:0 forDataclass:v16];
        v17 = *MEMORY[0x1E6959B50];
        if (([v15 isEnabledForDataclass:*MEMORY[0x1E6959B50]] & 1) == 0)
        {
LABEL_14:
          v23 = PLLibraryServicesGetLog();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            v24 = [(PLLibraryServicesManager *)self logPrefix];
            *buf = 138543618;
            v31 = v24;
            v32 = 2112;
            v33 = v15;
            _os_log_impl(&dword_19BF1F000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@: SPL Change: Updating account %@", buf, 0x16u);
          }

          v25 = +[PLAccountStore pl_sharedAccountStore];
          dispatch_group_enter(v13);
          v27[0] = MEMORY[0x1E69E9820];
          v27[1] = 3221225472;
          v27[2] = __62__PLLibraryServicesManager_willBecomeNonSyncablePhotoLibrary___block_invoke;
          v27[3] = &unk_1E756CE80;
          v27[4] = self;
          v28 = v15;
          v29 = v13;
          [v25 saveAccount:v28 withDataclassActions:0 doVerify:0 completion:v27];

          goto LABEL_17;
        }
      }

      else
      {
        v17 = *MEMORY[0x1E6959B50];
        if (![v15 isEnabledForDataclass:*MEMORY[0x1E6959B50]])
        {
LABEL_17:
          dispatch_group_wait(v13, 0xFFFFFFFFFFFFFFFFLL);

          return v4;
        }
      }

      [v15 setEnabled:0 forDataclass:v17];
      v18 = PLLibraryServicesGetLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = [(PLLibraryServicesManager *)self logPrefix];
        v20 = MEMORY[0x1E69BF220];
        v21 = [(PLLibraryServicesManager *)self libraryURL];
        v22 = [v20 descriptionWithFileURL:v21];
        *buf = 138543618;
        v31 = v19;
        v32 = 2112;
        v33 = v22;
        _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@: SPL Change: Disabling Shared Albums of previous SPL at %@", buf, 0x16u);
      }

      [PLCloudSharingEnablingJob disableCloudSharingWithLibraryServicesManager:self];
      goto LABEL_14;
    }
  }

  return v4;
}

void __62__PLLibraryServicesManager_willBecomeNonSyncablePhotoLibrary___block_invoke(uint64_t a1, int a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = PLLibraryServicesGetLog();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 32) logPrefix];
      v9 = *(a1 + 40);
      v15 = 138543618;
      v16 = v8;
      v17 = 2112;
      v18 = v9;
      v10 = "%{public}@: SPL Change: Successfully updated account %@";
      v11 = v7;
      v12 = OS_LOG_TYPE_DEFAULT;
      v13 = 22;
LABEL_6:
      _os_log_impl(&dword_19BF1F000, v11, v12, v10, &v15, v13);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v8 = [*(a1 + 32) logPrefix];
    v14 = *(a1 + 40);
    v15 = 138543874;
    v16 = v8;
    v17 = 2112;
    v18 = v14;
    v19 = 2112;
    v20 = v5;
    v10 = "%{public}@: SPL Change: Failed to update account %@: %@";
    v11 = v7;
    v12 = OS_LOG_TYPE_ERROR;
    v13 = 32;
    goto LABEL_6;
  }

  dispatch_group_leave(*(a1 + 48));
}

- (void)setICloudPhotosEnabledInternal:(BOOL)a3
{
  v3 = a3;
  *&v29[5] = *MEMORY[0x1E69E9840];
  if ((PLIsAssetsd() & 1) == 0)
  {
    v26 = [MEMORY[0x1E696AAA8] currentHandler];
    [v26 handleFailureInMethod:a2 object:self file:@"PLLibraryServicesManager.m" lineNumber:1795 description:@"Only Assetsd should be calling setICloudPhotosEnabledInternal"];
  }

  v6 = [(PLLibraryServicesManager *)self libraryBundle];
  v7 = [v6 indicatorFileCoordinator];

  v8 = PLLibraryServicesGetLog();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v9)
    {
      v10 = [(PLLibraryServicesManager *)self logPrefix];
      *buf = 138543362;
      *v29 = v10;
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: enabling iCloud Photos", buf, 0xCu);
    }

    [v7 writeEnableICloudPhotosMarker];
    if ([(PLLibraryServicesManager *)self isSystemPhotoLibrary])
    {
      v11 = [(PLLibraryServicesManager *)self modelMigrator];
      v12 = [v11 isPostProcessingLightweightMigration];

      if ((v12 & 1) == 0)
      {
        v13 = PLLibraryServicesGetLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = [(PLLibraryServicesManager *)self logPrefix];
          *buf = 138543362;
          *v29 = v14;
          _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: deleting all iTunes synced content", buf, 0xCu);
        }

        v15 = [(PLLibraryServicesManager *)self databaseContext];
        [v15 performSync:&__block_literal_global_244 withName:"-[PLLibraryServicesManager setICloudPhotosEnabledInternal:]"];
      }

      v16 = PLLibraryServicesGetLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [(PLLibraryServicesManager *)self logPrefix];
        *buf = 138543362;
        *v29 = v17;
        _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@: deleting all My Photo Stream assets", buf, 0xCu);
      }

      v18 = [MEMORY[0x1E695DF90] dictionary];
      [v18 setObject:*MEMORY[0x1E69C0448] forKey:*MEMORY[0x1E69C0410]];
      v19 = [(PLLibraryServicesManager *)self imageWriter];
      [v19 enqueueJob:v18];

      [(PLLibraryServicesManager *)self _setCameraRollCountedInQuota:1];
    }

    v20 = [(PLLibraryServicesManager *)self readyForAnalysis];
    [v20 resetReadyForAnalysisState];
  }

  else
  {
    if (v9)
    {
      v21 = [(PLLibraryServicesManager *)self logPrefix];
      *buf = 138543362;
      *v29 = v21;
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: disabling iCloud Photos", buf, 0xCu);
    }

    [v7 writeDisableICloudPhotosMarker];
    if ([(PLLibraryServicesManager *)self isSystemPhotoLibrary])
    {
      [(PLLibraryServicesManager *)self _setCameraRollCountedInQuota:0];
    }
  }

  v22 = [(PLLibraryServicesManager *)self cplSettings];
  v27 = 0;
  v23 = [v22 setICPLEnabled:v3 error:&v27];
  v24 = v27;

  if ((v23 & 1) == 0)
  {
    v25 = PLLibraryServicesGetLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109378;
      v29[0] = v3;
      LOWORD(v29[1]) = 2112;
      *(&v29[1] + 2) = v24;
      _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_ERROR, "Failed to write CPL enabled setting to %d, %@", buf, 0x12u);
    }
  }

  if ([v7 isICloudPhotosPaused])
  {
    CFPreferencesSetAppValue(@"cloudPhotosPaused", 0, @"com.apple.mobileslideshow");
    [v7 clearPauseMarkerForReason:3];
  }

  CFPreferencesAppSynchronize(@"com.apple.mobileslideshow");
}

- (void)_setCameraRollCountedInQuota:(BOOL)a3
{
  v3 = a3;
  pl_dispatch_once();
  if (v3)
  {
    [_setCameraRollCountedInQuota___BackupManager countCameraRollQuota];
  }

  else
  {
    [_setCameraRollCountedInQuota___BackupManager discountCameraRollQuota];
  }
}

void __57__PLLibraryServicesManager__setCameraRollCountedInQuota___block_invoke()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2050000000;
  v0 = getMBManagerClass_softClass;
  v8 = getMBManagerClass_softClass;
  if (!getMBManagerClass_softClass)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __getMBManagerClass_block_invoke;
    v4[3] = &unk_1E7577EA0;
    v4[4] = &v5;
    __getMBManagerClass_block_invoke(v4);
    v0 = v6[3];
  }

  v1 = v0;
  _Block_object_dispose(&v5, 8);
  v2 = objc_alloc_init(v0);
  v3 = _setCameraRollCountedInQuota___BackupManager;
  _setCameraRollCountedInQuota___BackupManager = v2;
}

- (void)registerOutstandingTransactionsHandler:(id)a3
{
  v5 = a3;
  v6 = [(PLLibraryServicesManager *)self pathManager];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __67__PLLibraryServicesManager_registerOutstandingTransactionsHandler___block_invoke;
  v11[3] = &unk_1E75781E8;
  v11[4] = self;
  v7 = [PLClientServerTransaction handleOutstandingTransactionsForPathManager:v6 sqliteErrorHandler:v11 handler:v5];

  if (!v7)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PLLibraryServicesManager.m" lineNumber:1759 description:{@"Invalid parameter not satisfying: %@", @"timer != nil"}];
  }

  os_unfair_lock_lock(&self->_outstandingTransactionHandlerTimerLock);
  outstandingTransactionHandlerTimer = self->_outstandingTransactionHandlerTimer;
  if (outstandingTransactionHandlerTimer)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PLLibraryServicesManager.m" lineNumber:1761 description:{@"Invalid parameter not satisfying: %@", @"_outstandingTransactionHandlerTimer == nil"}];

    outstandingTransactionHandlerTimer = self->_outstandingTransactionHandlerTimer;
  }

  self->_outstandingTransactionHandlerTimer = v7;

  os_unfair_lock_unlock(&self->_outstandingTransactionHandlerTimerLock);
}

- (void)performFileSystemAssetImporterWorkWithLibrary:(id)a3 block:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [[PLFileSystemAssetImporter alloc] initWithPhotoLibrary:v6 libraryServicesManager:self];
  v9 = PLLibraryServicesGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [(PLLibraryServicesManager *)self logPrefix];
    *buf = 138543362;
    v18 = v10;
    _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: Preparing to run file system asset importer work block", buf, 0xCu);
  }

  v14 = v6;
  v15 = v8;
  v16 = v7;
  v11 = v8;
  v12 = v7;
  v13 = v6;
  PLSafeRunWithUnfairLock();
}

void __80__PLLibraryServicesManager_performFileSystemAssetImporterWorkWithLibrary_block___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = PLLibraryServicesGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) logPrefix];
    v4 = *(a1 + 40);
    v7 = 138543618;
    v8 = v3;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@: Starting file system asset importer work block on library %@", &v7, 0x16u);
  }

  (*(*(a1 + 56) + 16))();
  v5 = PLLibraryServicesGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [*(a1 + 32) logPrefix];
    v7 = 138543362;
    v8 = v6;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Completed file system asset importer work block", &v7, 0xCu);
  }
}

- (void)_cancelPendingOperations
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [(PLLibraryServicesManager *)self stateSerializationQueue];
  dispatch_assert_queue_V2(v3);

  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __52__PLLibraryServicesManager__cancelPendingOperations__block_invoke;
  v16 = &unk_1E756CE38;
  v17 = self;
  v4 = PLResultWithUnfairLock();
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8++) cancel];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v18 count:16];
    }

    while (v6);
  }
}

id __52__PLLibraryServicesManager__cancelPendingOperations__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 392) copy];
  [*(*(a1 + 32) + 392) removeAllObjects];

  return v2;
}

- (void)_addPendingOperationsForStateNode:(id)a3
{
  v48 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PLLibraryServicesManager *)self stateSerializationQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [MEMORY[0x1E695DF70] array];
  v7 = v4;
  v8 = [v4 state];
  [(PLLibraryServicesManager *)self pendingOperations];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v39 = 0u;
  v9 = [obj countByEnumeratingWithState:&v36 objects:v47 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v37;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v37 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v36 + 1) + 8 * i);
        if ([v13 requiredState] == v8)
        {
          [v6 addObject:v13];
          v30 = MEMORY[0x1E69E9820];
          v31 = 3221225472;
          v32 = __62__PLLibraryServicesManager__addPendingOperationsForStateNode___block_invoke;
          v33 = &unk_1E7578848;
          v34 = self;
          v35 = v13;
          PLRunWithUnfairLock();
        }
      }

      v10 = [obj countByEnumeratingWithState:&v36 objects:v47 count:16];
    }

    while (v10);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = v6;
  v14 = [v24 countByEnumeratingWithState:&v26 objects:v46 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v27;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v27 != v16)
        {
          objc_enumerationMutation(v24);
        }

        v18 = *(*(&v26 + 1) + 8 * j);
        v19 = PLLibraryServicesGetLog();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          v20 = [(PLLibraryServicesManager *)self logPrefix];
          [v18 qualityOfService];
          v21 = PLStringFromQualityOfService();
          *buf = 138543874;
          v41 = v20;
          v42 = 2114;
          v43 = v18;
          v44 = 2114;
          v45 = v21;
          _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_DEBUG, "%{public}@: Adding pending operation: %{public}@ at QoS: %{public}@", buf, 0x20u);
        }

        if (([v7 enqueueOperation:v18 error:0] & 1) == 0)
        {
          v22 = [MEMORY[0x1E696AAA8] currentHandler];
          [v22 handleFailureInMethod:a2 object:self file:@"PLLibraryServicesManager.m" lineNumber:1720 description:{@"Invalid parameter not satisfying: %@", @"enqueued"}];
        }
      }

      v15 = [v24 countByEnumeratingWithState:&v26 objects:v46 count:16];
    }

    while (v15);
  }
}

- (void)_setCurrentStateNode:(id)a3
{
  v12[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PLLibraryServicesManager *)self stateSerializationQueue];
  dispatch_assert_queue_V2(v5);

  v11[0] = @"PLLibraryServicesManagerStateChangeStateKey";
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v4, "state")}];
  v11[1] = @"PLLibraryServicesManagerStateChangeStateNodeKey";
  v12[0] = v6;
  v12[1] = v4;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];

  v8 = [MEMORY[0x1E696AD88] defaultCenter];
  [v8 postNotificationName:@"PLLibraryServicesManagerStateWillChangeNotification" object:self userInfo:v7];
  v10 = v4;
  v9 = v4;
  PLRunWithUnfairLock();
  [v8 postNotificationName:@"PLLibraryServicesManagerStateDidChangeNotification" object:self userInfo:v7];
}

- (void)_handleLibraryStateCompletedAllOperations
{
  v3 = [(PLLibraryServicesManager *)self stateSerializationQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(PLLibraryServicesManager *)self currentStateNode];
  v5 = [v4 operationCount];

  if (!v5)
  {
    v6 = [(PLLibraryServicesManager *)self _state];
    [objc_opt_class() _finalState];
    if (PLCanMoveFromSourceStateToTargetState() && [(PLLibraryServicesManager *)self isFinalizing])
    {
      -[PLLibraryServicesManager _transitionToState:](self, "_transitionToState:", [objc_opt_class() _finalState]);
    }

    if (v6 == 7)
    {
      [(PLLibraryServicesManager *)self _resetStateQueueQoS];
    }

    v7 = [(PLLibraryServicesManager *)self libraryServicesDelegate];
    objc_initWeak(&location, v7);

    v8 = objc_loadWeakRetained(&location);
    if (v8)
    {
      v9 = [(PLLibraryServicesManager *)self helperQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __69__PLLibraryServicesManager__handleLibraryStateCompletedAllOperations__block_invoke;
      block[3] = &unk_1E756CE10;
      objc_copyWeak(v11, &location);
      v11[1] = v6;
      dispatch_async(v9, block);

      objc_destroyWeak(v11);
    }

    objc_destroyWeak(&location);
  }
}

void __69__PLLibraryServicesManager__handleLibraryStateCompletedAllOperations__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleCompletedAllOperationsForLibraryState:*(a1 + 40)];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a4;
  v11 = v10;
  if (a6 == &PLLibraryServicesManagerOperationQueueObserverOperationCountContext)
  {
    if (![v10 operationCount])
    {
      v12 = [(PLLibraryServicesManager *)self stateSerializationQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __75__PLLibraryServicesManager_observeValueForKeyPath_ofObject_change_context___block_invoke;
      block[3] = &unk_1E75781E8;
      block[4] = self;
      dispatch_async(v12, block);
    }
  }

  else
  {
    v13.receiver = self;
    v13.super_class = PLLibraryServicesManager;
    [(PLLibraryServicesManager *)&v13 observeValueForKeyPath:a3 ofObject:v10 change:a5 context:a6];
  }
}

- (void)_stopObservingLibraryStateCompletedAllOperations
{
  v3 = [(PLLibraryServicesManager *)self stateSerializationQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(PLLibraryServicesManager *)self operationCountObservee];

  if (v4)
  {
    v5 = MEMORY[0x1E69BF280];
    v6 = [(PLLibraryServicesManager *)self operationCountObservee];
    [v5 removeOperationCountObserver:self fromObservedObject:v6 context:&PLLibraryServicesManagerOperationQueueObserverOperationCountContext];

    [(PLLibraryServicesManager *)self setOperationCountObservee:0];
  }
}

- (void)_startObservingLibraryStateCompletedAllOperations
{
  v3 = [(PLLibraryServicesManager *)self stateSerializationQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(PLLibraryServicesManager *)self operationCountObservee];

  if (v4)
  {
    [(PLLibraryServicesManager *)self _stopObservingLibraryStateCompletedAllOperations];
  }

  v6 = [(PLLibraryServicesManager *)self currentStateNode];
  v5 = [v6 addOperationCountObserver:self context:&PLLibraryServicesManagerOperationQueueObserverOperationCountContext];
  [(PLLibraryServicesManager *)self setOperationCountObservee:v5];
}

- (void)_dispatchExternalWaitersForState:(int64_t)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = [(PLLibraryServicesManager *)self stateSerializationQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [objc_opt_class() _initialState];
  if (v6 <= a3)
  {
    v7 = v6;
    do
    {
      externalWaiterCompletionBlocksByState = self->_externalWaiterCompletionBlocksByState;
      v9 = [MEMORY[0x1E696AD98] numberWithInteger:v7];
      v10 = [(NSMutableDictionary *)externalWaiterCompletionBlocksByState objectForKeyedSubscript:v9];

      if (v10)
      {
        v21 = 0u;
        v22 = 0u;
        v19 = 0u;
        v20 = 0u;
        v11 = v10;
        v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v20;
          do
          {
            v15 = 0;
            do
            {
              if (*v20 != v14)
              {
                objc_enumerationMutation(v11);
              }

              (*(*(*(&v19 + 1) + 8 * v15++) + 16))();
            }

            while (v13 != v15);
            v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
          }

          while (v13);
        }

        v16 = self->_externalWaiterCompletionBlocksByState;
        v17 = [MEMORY[0x1E696AD98] numberWithInteger:v7];
        [(NSMutableDictionary *)v16 removeObjectForKey:v17];
      }
    }

    while (v7++ != a3);
  }
}

- (void)_transitionToState:(int64_t)a3
{
  v48 = *MEMORY[0x1E69E9840];
  v5 = [(PLLibraryServicesManager *)self stateSerializationQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(PLLibraryServicesManager *)self currentStateNode];
  v7 = [v6 state];

  if (v7 != a3)
  {
    v8 = PLLibraryServicesGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(PLLibraryServicesManager *)self logPrefix];
      v10 = PLStringFromLibraryServicesState();
      v11 = PLStringFromLibraryServicesState();
      *buf = 138543874;
      v43 = v9;
      v44 = 2114;
      v45 = v10;
      v46 = 2114;
      v47 = v11;
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: Transition from library services state %{public}@ to %{public}@", buf, 0x20u);
    }
  }

  [(PLLibraryServicesManager *)self _stopObservingLibraryStateCompletedAllOperations];
  v12 = [(PLLibraryServicesManager *)self currentStateNode];
  [v12 terminate];

  v13 = [(PLLibraryServicesManager *)self _libraryServicesStateNodeWithState:a3];
  [(PLLibraryServicesManager *)self _setCurrentStateNode:v13];

  if ([(PLLibraryServicesManager *)self isActive])
  {
    v14 = [(PLLibraryServicesManager *)self libraryServicesDelegate];

    if (v14 && [objc_opt_class() _initialState] == a3)
    {
      v15 = [MEMORY[0x1E696AE38] discreteProgressWithTotalUnitCount:100];
      [(PLLibraryServicesManager *)self setPreRunningProgress:v15];

      v16 = PLLibraryServicesGetLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v17 = [(PLLibraryServicesManager *)self logPrefix];
        v18 = [(PLLibraryServicesManager *)self preRunningProgress];
        *buf = 138543618;
        v43 = v17;
        v44 = 2048;
        v45 = v18;
        _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_DEBUG, "%{public}@: preRunningProgress = %p", buf, 0x16u);
      }

      v19 = [MEMORY[0x1E696AE38] discreteProgressWithTotalUnitCount:100];
      [(PLLibraryServicesManager *)self setPostRunningProgress:v19];

      v20 = PLLibraryServicesGetLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        v21 = [(PLLibraryServicesManager *)self logPrefix];
        v22 = [(PLLibraryServicesManager *)self postRunningProgress];
        *buf = 138543618;
        v43 = v21;
        v44 = 2048;
        v45 = v22;
        _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_DEBUG, "%{public}@: postRunningProgress = %p", buf, 0x16u);
      }

      v23 = [(PLLibraryServicesManager *)self libraryServicesDelegate];
      v24 = [v23 operations];

      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v25 = v24;
      v26 = [v25 countByEnumeratingWithState:&v37 objects:v41 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = 0;
        v29 = *v38;
        do
        {
          for (i = 0; i != v27; ++i)
          {
            if (*v38 != v29)
            {
              objc_enumerationMutation(v25);
            }

            v31 = *(*(&v37 + 1) + 8 * i);
            v28 += [v31 progressPercentOfTotal];
            [(PLLibraryServicesManager *)self _enqueueOperation:v31 error:0];
          }

          v27 = [v25 countByEnumeratingWithState:&v37 objects:v41 count:16];
        }

        while (v27);
      }

      else
      {
        v28 = 0;
      }

      v32 = PLLibraryServicesGetLog();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        v33 = [(PLLibraryServicesManager *)self logPrefix];
        v34 = [v25 debugDescription];
        *buf = 138543874;
        v43 = v33;
        v44 = 2112;
        v45 = v34;
        v46 = 2048;
        v47 = v28;
        _os_log_impl(&dword_19BF1F000, v32, OS_LOG_TYPE_DEBUG, "%{public}@: Finished adding operations: %@\ntotalUnitCounts is %ld.", buf, 0x20u);
      }
    }

    v35 = [(PLLibraryServicesManager *)self currentStateNode];
    [(PLLibraryServicesManager *)self _addPendingOperationsForStateNode:v35];

    [(PLLibraryServicesManager *)self _startObservingLibraryStateCompletedAllOperations];
    v36 = [(PLLibraryServicesManager *)self currentStateNode];
    [v36 run];
  }

  [(PLLibraryServicesManager *)self _dispatchExternalWaitersForState:a3];
}

- (BOOL)_canTransitionToState:(int64_t)a3 error:(id *)a4
{
  v25[2] = *MEMORY[0x1E69E9840];
  v6 = [(PLLibraryServicesManager *)self stateSerializationQueue];
  dispatch_assert_queue_V2(v6);

  [(PLLibraryServicesManager *)self _state];
  [(PLLibraryServicesManager *)self _state];
  if (PLCanMoveFromSourceStateToTargetState())
  {
    v7 = [(PLLibraryServicesManager *)self activeOperations];
    v8 = [v7 count];

    if (!v8)
    {
      v18 = 0;
      v20 = 1;
      goto LABEL_9;
    }

    v9 = MEMORY[0x1E696ABC0];
    v10 = *MEMORY[0x1E69BFF48];
    v22[0] = @"currentState";
    v11 = PLStringFromLibraryServicesState();
    v23[0] = v11;
    v22[1] = @"targetState";
    v12 = PLStringFromLibraryServicesState();
    v22[2] = @"reason";
    v23[1] = v12;
    v23[2] = @"Current library state has active operations";
    v13 = MEMORY[0x1E695DF20];
    v14 = v23;
    v15 = v22;
    v16 = 3;
  }

  else
  {
    v9 = MEMORY[0x1E696ABC0];
    v10 = *MEMORY[0x1E69BFF48];
    v24[0] = @"currentState";
    v11 = PLStringFromLibraryServicesState();
    v24[1] = @"targetState";
    v25[0] = v11;
    v12 = PLStringFromLibraryServicesState();
    v25[1] = v12;
    v13 = MEMORY[0x1E695DF20];
    v14 = v25;
    v15 = v24;
    v16 = 2;
  }

  v17 = [v13 dictionaryWithObjects:v14 forKeys:v15 count:v16];
  v18 = [v9 errorWithDomain:v10 code:43002 userInfo:v17];

  if (a4)
  {
    v19 = v18;
    v20 = 0;
    *a4 = v18;
  }

  else
  {
    v20 = 0;
  }

LABEL_9:

  return v20;
}

- (void)deactivateWithInvalidationError:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PLLibraryServicesGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(PLLibraryServicesManager *)self logPrefix];
    *buf = 138543618;
    v16 = v6;
    v17 = 2112;
    v18 = v4;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Deactivating with error %@", buf, 0x16u);
  }

  v7 = [(PLLibraryServicesManager *)self stateSerializationQueue];
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __60__PLLibraryServicesManager_deactivateWithInvalidationError___block_invoke;
  v12 = &unk_1E7578848;
  v13 = self;
  v14 = v4;
  v8 = v4;
  dispatch_sync(v7, &v9);

  [(PLLibraryServicesManager *)self _invalidate:v9];
}

uint64_t __60__PLLibraryServicesManager_deactivateWithInvalidationError___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setActive:0];
  if (*(a1 + 40))
  {
    v2 = [*(a1 + 32) invalidationError];

    if (!v2)
    {
      objc_storeStrong((*(a1 + 32) + 456), *(a1 + 40));
    }
  }

  result = [*(a1 + 32) _state];
  if (result != 99)
  {
    [*(a1 + 32) _cancelPendingOperations];
    v4 = *(a1 + 32);

    return [v4 _transitionToState:99];
  }

  return result;
}

- (BOOL)finalize:(id *)a3
{
  v20 = *MEMORY[0x1E69E9840];
  [(PLLibraryServicesManager *)self setFinalizing:1];
  v5 = PLLibraryServicesGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(PLLibraryServicesManager *)self logPrefix];
    *buf = 138543362;
    v17 = v6;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Starting finalize", buf, 0xCu);
  }

  v7 = [(PLLibraryServicesManager *)self stateSerializationQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__PLLibraryServicesManager_finalize___block_invoke;
  block[3] = &unk_1E75781E8;
  block[4] = self;
  dispatch_sync(v7, block);

  v14 = 0;
  v8 = -[PLLibraryServicesManager awaitLibraryState:error:](self, "awaitLibraryState:error:", [objc_opt_class() _finalState], &v14);
  v9 = v14;
  if (v8)
  {
    [(PLLibraryServicesManager *)self _invalidate];
  }

  else
  {
    v10 = PLLibraryServicesGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [(PLLibraryServicesManager *)self logPrefix];
      *buf = 138543618;
      v17 = v11;
      v18 = 2112;
      v19 = v9;
      _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: Finalize failed with error %@", buf, 0x16u);
    }

    if (a3)
    {
      v12 = v9;
      *a3 = v9;
    }
  }

  return v8;
}

void __37__PLLibraryServicesManager_finalize___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _state];
  if (v2 != [objc_opt_class() _finalState])
  {
    [*(a1 + 32) _state];
    [objc_opt_class() _finalState];
    if (PLCanMoveFromSourceStateToTargetState())
    {
      v3 = [*(a1 + 32) currentStateNode];
      v4 = [v3 operationCount];

      if (!v4)
      {
        v5 = *(a1 + 32);
        v6 = [objc_opt_class() _finalState];

        [v5 _transitionToState:v6];
      }
    }
  }
}

- (void)_invalidate
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = PLLibraryServicesGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(PLLibraryServicesManager *)self logPrefix];
    *buf = 138543362;
    v8 = v4;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: Invalidating", buf, 0xCu);
  }

  [(PLLibraryServicesManager *)self _invalidateCPLReadiness];
  v5 = [(PLLibraryServicesManager *)self stateSerializationQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__PLLibraryServicesManager__invalidate__block_invoke;
  block[3] = &unk_1E75781E8;
  block[4] = self;
  dispatch_sync(v5, block);

  [(PLLibraryServicesManager *)self _invalidateCloudPhotoLibraryManager];
  [(PLLibraryServicesManager *)self _invalidateCrashRecoverySupport];
  [(PLLibraryServicesManager *)self _invalidateMomentGenerationDataManager];
  [(PLLibraryServicesManager *)self _invalidateRebuildJournalManager];
  [(PLLibraryServicesManager *)self _invalidateComputeCacheManager];
  [(PLLibraryServicesManager *)self _invalidateSearchIndexingEngine];
  [(PLLibraryServicesManager *)self _invalidateSearchDonationProgress];
  [(PLLibraryServicesManager *)self _invalidateModelMigrator];
  [(PLLibraryServicesManager *)self _invalidateBackgroundJobService];
  [(PLLibraryServicesManager *)self _invalidateAlbumCountCoalescer];
  [(PLLibraryServicesManager *)self _invalidateImageWriter];
  [(PLLibraryServicesManager *)self _invalidateKeywordManager];
  [(PLLibraryServicesManager *)self _invalidatePairingManager];
  [(PLLibraryServicesManager *)self _invalidateDuplicateProcessor];
  [(PLLibraryServicesManager *)self _invalidateQuickActionManager];
  [(PLLibraryServicesManager *)self _invalidateDatabaseContext];
  [(PLLibraryServicesManager *)self _invalidateCameraPreviewWellManager];
  if ([(PLLibraryServicesManager *)self isSyndicationPhotoLibrary])
  {
    [(PLLibraryServicesManager *)self _invalidateSyndicationPhotoLibrarySpecificServices];
  }

  [(PLLibraryServicesManager *)self _invalidateOutstandingTransactionHandlerTimer];
  [(PLLibraryServicesManager *)self _invalidateClientSideEncryptionManager];
  [(PLLibraryServicesManager *)self _invalidateDirectServerConfiguration];
  [(PLLibraryServicesManager *)self _invalidateMainScopeIdentifier];
  [(PLLibraryServicesManager *)self _invalidateCPLSettings];
  [(PLLibraryServicesManager *)self _invalidateAnalysisCoordinator];
  [(PLLibraryServicesManager *)self _invalidateReadyForAnalysis];
  [(PLLibraryServicesManager *)self _invalidateAvailabilityComputer];
  [(PLLibraryServicesManager *)self _invalidateCloudIdentifierReservationSupport];
  [(PLLibraryServicesManager *)self _invalidateCollectionShareCPLBackend];
  [(PLLibraryServicesManager *)self _invalidateCollectionShareSharedStreamBackend];
  [(PLLibraryServicesManager *)self _invalidateBackgroundAssetResourceUploader];
  self->_wellKnownPhotoLibraryIdentifier = [(PLLibraryServicesManager *)self _determineWellKnownPhotoLibraryIdentifier];
}

uint64_t __39__PLLibraryServicesManager__invalidate__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _stopObservingLibraryStateCompletedAllOperations];
  v2 = [*(a1 + 32) currentStateNode];
  [v2 terminate];

  v3 = *(a1 + 32);

  return [v3 setActive:0];
}

- (BOOL)transitionToState:(int64_t)a3 error:(id *)a4
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 1;
  v7 = [(PLLibraryServicesManager *)self stateSerializationQueue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __52__PLLibraryServicesManager_transitionToState_error___block_invoke;
  v9[3] = &unk_1E7576590;
  v9[4] = self;
  v9[5] = &v10;
  v9[6] = a3;
  v9[7] = a4;
  dispatch_sync(v7, v9);

  LOBYTE(a4) = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  return a4;
}

void __52__PLLibraryServicesManager_transitionToState_error___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) _state] != *(a1 + 48))
  {
    v2 = [*(a1 + 32) _canTransitionToState:? error:?];
    v3 = 0;
    v4 = v3;
    if (v2)
    {
      [*(a1 + 32) _transitionToState:*(a1 + 48)];
    }

    else
    {
      *(*(*(a1 + 40) + 8) + 24) = 0;
      if (*(a1 + 56))
      {
        v5 = v3;
        **(a1 + 56) = v4;
      }

      else
      {
        v6 = PLLibraryServicesGetLog();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          v7 = [*(a1 + 32) logPrefix];
          v8 = PLStringFromLibraryServicesState();
          v9 = PLStringFromLibraryServicesState();
          v10 = [*(a1 + 32) description];
          *buf = 138544386;
          v12 = v7;
          v13 = 2114;
          v14 = v8;
          v15 = 2114;
          v16 = v9;
          v17 = 2114;
          v18 = v10;
          v19 = 2114;
          v20 = v4;
          _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_ERROR, "%{public}@: Transition from %{public}@ to %{public}@ on %{public}@ failed with error %{public}@", buf, 0x34u);
        }
      }
    }
  }
}

- (void)_enqueueExternalWaiterCompletionBlockForState:(int64_t)a3 completionBlock:(id)a4
{
  aBlock = a4;
  v7 = [(PLLibraryServicesManager *)self stateSerializationQueue];
  dispatch_assert_queue_V2(v7);

  if (!aBlock)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"PLLibraryServicesManager.m" lineNumber:1411 description:{@"Invalid parameter not satisfying: %@", @"completionBlock"}];
  }

  externalWaiterCompletionBlocksByState = self->_externalWaiterCompletionBlocksByState;
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v10 = [(NSMutableDictionary *)externalWaiterCompletionBlocksByState objectForKeyedSubscript:v9];

  if (!v10)
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v11 = self->_externalWaiterCompletionBlocksByState;
    v12 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    [(NSMutableDictionary *)v11 setObject:v10 forKeyedSubscript:v12];
  }

  v13 = _Block_copy(aBlock);
  [v10 addObject:v13];

  [(PLLibraryServicesManager *)self _increaseStateQueueQoSIfNeeded];
}

- (BOOL)awaitLibraryState:(int64_t)a3 error:(id *)a4
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__46470;
  v12 = __Block_byref_object_dispose__46471;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__PLLibraryServicesManager_awaitLibraryState_error___block_invoke;
  v7[3] = &unk_1E7577598;
  v7[4] = &v14;
  v7[5] = &v8;
  [(PLLibraryServicesManager *)self _awaitLibraryState:a3 sync:1 completionHandler:v7];
  if (a4)
  {
    *a4 = v9[5];
  }

  v5 = *(v15 + 24);
  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(&v14, 8);
  return v5;
}

- (void)_waitForAwaitOperation:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = PLLibraryServicesGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(PLLibraryServicesManager *)self logPrefix];
      qos_class_self();
      v7 = PLStringFromQoSClass();
      v8 = 138543874;
      v9 = v6;
      v10 = 2114;
      v11 = v4;
      v12 = 2114;
      v13 = v7;
      _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Waiting for await operation to finish: %{public}@ at QoS: %{public}@", &v8, 0x20u);
    }

    [v4 waitUntilFinished];
  }
}

- (id)_enqueueAwaitOperation
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = [(PLLibraryServicesManager *)self currentStateNode];
  v4 = [v3 state];

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __50__PLLibraryServicesManager__enqueueAwaitOperation__block_invoke;
  v17[3] = &unk_1E756CDE0;
  v17[4] = self;
  v17[5] = v4;
  v5 = [PLLibraryServicesOperation operationWithName:@"Await Operation" libraryServicesManager:self requiredState:v4 parentProgress:0 executionBlock:v17];
  qos_class_self();
  [v5 setQualityOfService:PLQualityOfServiceFromQoSClass()];
  v6 = PLLibraryServicesGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = [(PLLibraryServicesManager *)self logPrefix];
    [v5 qualityOfService];
    v8 = PLStringFromQualityOfService();
    *buf = 138543874;
    v19 = v7;
    v20 = 2114;
    v21 = v5;
    v22 = 2114;
    v23 = v8;
    _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEBUG, "%{public}@: Adding await operation: %{public}@ at QoS: %{public}@", buf, 0x20u);
  }

  v9 = [(PLLibraryServicesManager *)self currentStateNode];
  v16 = 0;
  v10 = [v9 enqueueOperation:v5 error:&v16];
  v11 = v16;

  if (v10)
  {
    v12 = v5;
  }

  else
  {
    v13 = PLLibraryServicesGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [(PLLibraryServicesManager *)self logPrefix];
      *buf = 138543874;
      v19 = v14;
      v20 = 2112;
      v21 = v5;
      v22 = 2112;
      v23 = v11;
      _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_ERROR, "%{public}@: Failed to enqueue await operation: %@ error: %@", buf, 0x20u);
    }

    v12 = 0;
  }

  return v12;
}

void __50__PLLibraryServicesManager__enqueueAwaitOperation__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = PLLibraryServicesGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) logPrefix];
    v4 = PLStringFromLibraryServicesState();
    qos_class_self();
    v5 = PLStringFromQoSClass();
    v6 = 138543874;
    v7 = v3;
    v8 = 2114;
    v9 = v4;
    v10 = 2114;
    v11 = v5;
    _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@: Running await block, state before enqueue: %{public}@ at QoS: %{public}@)", &v6, 0x20u);
  }
}

- (void)_awaitLibraryState:(int64_t)a3 sync:(BOOL)a4 completionHandler:(id)a5
{
  v5 = a4;
  v61 = *MEMORY[0x1E69E9840];
  v8 = a5;
  if (a3 < 1)
  {
    goto LABEL_4;
  }

  v54 = 0;
  v9 = [(PLLibraryServicesManager *)self activate:&v54];
  v10 = v54;
  v11 = v10;
  if (v9)
  {

LABEL_4:
    v12 = dispatch_group_create();
    dispatch_group_enter(v12);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __70__PLLibraryServicesManager__awaitLibraryState_sync_completionHandler___block_invoke;
    block[3] = &unk_1E7576078;
    v13 = v8;
    v52 = v13;
    v53 = a3;
    block[4] = self;
    v14 = v12;
    v51 = v14;
    v15 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
    v46 = 0;
    v47 = &v46;
    v48 = 0x2020000000;
    v49 = 0;
    v42 = 0;
    v43 = &v42;
    v44 = 0x2020000000;
    v45 = 0;
    v36 = 0;
    v37 = &v36;
    v38 = 0x3032000000;
    v39 = __Block_byref_object_copy__46470;
    v40 = __Block_byref_object_dispose__46471;
    v41 = 0;
    v16 = [(PLLibraryServicesManager *)self stateSerializationQueue];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __70__PLLibraryServicesManager__awaitLibraryState_sync_completionHandler___block_invoke_2;
    v28[3] = &unk_1E756CDB8;
    v32 = &v46;
    v33 = &v42;
    v28[4] = self;
    v35 = a3;
    v30 = v13;
    v11 = v14;
    v29 = v11;
    v17 = v15;
    v31 = v17;
    v34 = &v36;
    dispatch_sync(v16, v28);

    if (v5)
    {
      [(PLLibraryServicesManager *)self _waitForAwaitOperation:v37[5]];
      if (*(v47 + 24) == 1)
      {
        v18 = PLLibraryServicesGetLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = [(PLLibraryServicesManager *)self logPrefix];
          v20 = PLStringFromLibraryServicesState();
          qos_class_self();
          v21 = PLStringFromQoSClass();
          *buf = 138543874;
          v56 = v19;
          v57 = 2114;
          v58 = v20;
          v59 = 2114;
          v60 = v21;
          _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@: Already good to go for library state %{public}@ at QoS: %{public}@", buf, 0x20u);
        }
      }

      else if (*(v43 + 24) == 1)
      {
        v18 = PLLibraryServicesGetLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v22 = [(PLLibraryServicesManager *)self logPrefix];
          v23 = PLStringFromLibraryServicesState();
          qos_class_self();
          v24 = PLStringFromQoSClass();
          *buf = 138543874;
          v56 = v22;
          v57 = 2114;
          v58 = v23;
          v59 = 2114;
          v60 = v24;
          _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@: LSM is already in final state, dispatched completion handler for library state %{public}@ at QoS: %{public}@", buf, 0x20u);
        }
      }

      else
      {
        v18 = PLLibraryServicesGetLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v25 = [(PLLibraryServicesManager *)self logPrefix];
          v26 = PLStringFromLibraryServicesState();
          qos_class_self();
          v27 = PLStringFromQoSClass();
          *buf = 138543874;
          v56 = v25;
          v57 = 2114;
          v58 = v26;
          v59 = 2114;
          v60 = v27;
          _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@: Waiting on dispatch_group for library state %{public}@ at QoS: %{public}@", buf, 0x20u);
        }
      }

      dispatch_group_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
    }

    _Block_object_dispose(&v36, 8);
    _Block_object_dispose(&v42, 8);
    _Block_object_dispose(&v46, 8);

    goto LABEL_17;
  }

  if (v8)
  {
    (*(v8 + 2))(v8, 0, v10);
  }

LABEL_17:
}

void __70__PLLibraryServicesManager__awaitLibraryState_sync_completionHandler___block_invoke(uint64_t a1)
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (*(a1 + 48))
  {
    v2 = [*(a1 + 32) stateSerializationQueue];
    dispatch_assert_queue_V2(v2);

    [*(a1 + 32) _state];
    if (PLIsValidStateForMinimumStateRequirement())
    {
      v3 = 0;
    }

    else
    {
      v9 = @"currentState";
      v5 = PLStringFromLibraryServicesState();
      v10[0] = v5;
      v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];

      v7 = objc_opt_class();
      v8 = [*(a1 + 32) invalidationError];
      v3 = [v7 errorForInvalidationError:v8 userInfo:v6];
    }

    [*(a1 + 32) _dispatchAwaitLibraryStateCompletionHandler:*(a1 + 48) group:*(a1 + 40) error:v3];
  }

  else
  {
    v4 = *(a1 + 40);

    dispatch_group_leave(v4);
  }
}

void __70__PLLibraryServicesManager__awaitLibraryState_sync_completionHandler___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _state];
  *(*(*(a1 + 64) + 8) + 24) = PLIsValidStateForMinimumStateRequirement();
  if ([*(a1 + 32) isFinalizing])
  {
    v2 = [*(a1 + 32) _state];
    v3 = v2 == [objc_opt_class() _finalState];
  }

  else
  {
    v3 = 0;
  }

  *(*(*(a1 + 72) + 8) + 24) = v3;
  if ((*(*(*(a1 + 64) + 8) + 24) & 1) != 0 || *(*(*(a1 + 72) + 8) + 24) == 1)
  {
    v5 = *(a1 + 40);
    v4 = *(a1 + 48);
    v6 = *(a1 + 32);

    [v6 _dispatchAwaitLibraryStateCompletionHandler:v4 group:v5 error:0];
  }

  else
  {
    [*(a1 + 32) _state];
    if (!PLHasPathFromSourceStateToTargetState() || ([*(a1 + 32) _enqueueExternalWaiterCompletionBlockForState:*(a1 + 88) completionBlock:*(a1 + 56)], objc_msgSend(*(a1 + 32), "_enqueueAwaitOperation"), v7 = objc_claimAutoreleasedReturnValue(), v8 = *(*(a1 + 80) + 8), v9 = *(v8 + 40), *(v8 + 40) = v7, v9, !*(*(*(a1 + 80) + 8) + 40)))
    {
      v10 = *(*(a1 + 56) + 16);

      v10();
    }
  }
}

- (void)_dispatchAwaitLibraryStateCompletionHandler:(id)a3 group:(id)a4 error:(id)a5
{
  v24 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8)
  {
    v11 = PLLibraryServicesGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = [(PLLibraryServicesManager *)self logPrefix];
      qos_class_self();
      v13 = PLStringFromQoSClass();
      *buf = 138543618;
      v21 = v12;
      v22 = 2114;
      v23 = v13;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEBUG, "%{public}@: Dispatching await completion handler at current QoS: %{public}@", buf, 0x16u);
    }

    v14 = qos_class_self();
    v15 = dispatch_get_global_queue(v14, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __84__PLLibraryServicesManager__dispatchAwaitLibraryStateCompletionHandler_group_error___block_invoke;
    block[3] = &unk_1E7576F38;
    v17 = v10;
    v19 = v8;
    v18 = v9;
    dispatch_group_async(v18, v15, block);
  }

  else
  {
    dispatch_group_leave(v9);
  }
}

void __84__PLLibraryServicesManager__dispatchAwaitLibraryStateCompletionHandler_group_error___block_invoke(uint64_t a1)
{
  (*(*(a1 + 48) + 16))();
  v2 = *(a1 + 40);

  dispatch_group_leave(v2);
}

- (BOOL)activate:(id *)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = PLLibraryServicesGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = [(PLLibraryServicesManager *)self logPrefix];
    qos_class_self();
    v8 = PLStringFromQoSClass();
    *buf = 138543618;
    *&buf[4] = v7;
    *&buf[12] = 2114;
    *&buf[14] = v8;
    _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEBUG, "%{public}@: Received activate state machine at current QoS: %{public}@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v14 = 1;
  v9 = [(PLLibraryServicesManager *)self stateSerializationQueue];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __37__PLLibraryServicesManager_activate___block_invoke;
  v12[3] = &unk_1E7576590;
  v12[4] = self;
  v12[5] = buf;
  v12[6] = a2;
  v12[7] = a3;
  dispatch_sync(v9, v12);

  v10 = *(*&buf[8] + 24);
  _Block_object_dispose(buf, 8);
  return v10;
}

void __37__PLLibraryServicesManager_activate___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) currentStateNode];

  if (v2)
  {
    if ([*(a1 + 32) _state] == 99)
    {
      v3 = PLLibraryServicesGetLog();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        v4 = [*(a1 + 32) logPrefix];
        v5 = PLStringFromLibraryServicesState();
        v6 = [*(a1 + 32) invalidationError];
        *buf = 138543874;
        v24 = v4;
        v25 = 2112;
        v26 = v5;
        v27 = 2112;
        v28 = v6;
        _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_ERROR, "%{public}@: Cannot activate state machine in error state (%@: %@)", buf, 0x20u);
      }

      *(*(*(a1 + 40) + 8) + 24) = 0;
      if (*(a1 + 56))
      {
        v21 = @"currentState";
        v7 = PLStringFromLibraryServicesState();
        v22 = v7;
        v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];

        v9 = objc_opt_class();
        v10 = [*(a1 + 32) invalidationError];
        **(a1 + 56) = [v9 errorForInvalidationError:v10 userInfo:v8];
      }
    }
  }

  else
  {
    v11 = PLLibraryServicesGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [*(a1 + 32) logPrefix];
      qos_class_self();
      v13 = PLStringFromQoSClass();
      *buf = 138543618;
      v24 = v12;
      v25 = 2114;
      v26 = v13;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: Activating state machine at current QoS: %{public}@", buf, 0x16u);
    }

    if (*(*(a1 + 32) + 16))
    {
      v20 = [MEMORY[0x1E696AAA8] currentHandler];
      [v20 handleFailureInMethod:*(a1 + 48) object:*(a1 + 32) file:@"PLLibraryServicesManager.m" lineNumber:1265 description:{@"Invalid parameter not satisfying: %@", @"_stateHandler == nil"}];
    }

    v14 = objc_alloc(MEMORY[0x1E69BDD80]);
    v15 = *(a1 + 32);
    v16 = [v15 logPrefix];
    v17 = [v14 initWithProvider:v15 name:v16];
    v18 = *(a1 + 32);
    v19 = *(v18 + 16);
    *(v18 + 16) = v17;

    [*(a1 + 32) setActive:1];
    [*(a1 + 32) _transitionToState:{objc_msgSend(objc_opt_class(), "_initialState")}];
  }
}

- (id)pendingOperations
{
  v2 = PLResultWithUnfairLock();

  return v2;
}

id __45__PLLibraryServicesManager_pendingOperations__block_invoke(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 392) copy];

  return v1;
}

- (id)activeOperations
{
  v2 = [(PLLibraryServicesManager *)self currentStateNode];
  v3 = [v2 operations];

  return v3;
}

- (BOOL)_enqueueOperation:(id)a3 error:(id *)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(PLLibraryServicesManager *)self stateSerializationQueue];
  dispatch_assert_queue_V2(v7);

  if (!-[PLLibraryServicesManager isFinalizing](self, "isFinalizing") || (v8 = [v6 requiredState], v8 == objc_msgSend(objc_opt_class(), "_finalState")))
  {
    if ([(PLLibraryServicesManager *)self isActive])
    {
      v9 = [(PLLibraryServicesManager *)self _state];
      if (v9 == [v6 requiredState])
      {
        [(PLLibraryServicesManager *)self _increaseStateQueueQoSIfNeeded];
        v10 = PLLibraryServicesGetLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          v11 = [(PLLibraryServicesManager *)self logPrefix];
          [v6 qualityOfService];
          v12 = PLStringFromQualityOfService();
          *buf = 138543874;
          v31 = v11;
          v32 = 2114;
          v33 = v6;
          v34 = 2114;
          v35 = v12;
          _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_DEBUG, "%{public}@: Adding operation: %{public}@ at QoS: %{public}@", buf, 0x20u);
        }

        v13 = [(PLLibraryServicesManager *)self currentStateNode];
        v14 = [v13 enqueueOperation:v6 error:0];

        if ((v14 & 1) == 0)
        {
          goto LABEL_12;
        }

LABEL_11:
        v15 = 1;
        goto LABEL_19;
      }
    }

    [(PLLibraryServicesManager *)self _state];
    [v6 requiredState];
    if (PLHasPathFromSourceStateToTargetState())
    {
      [(PLLibraryServicesManager *)self _increaseStateQueueQoSIfNeeded];
      v27 = v6;
      PLRunWithUnfairLock();

      goto LABEL_11;
    }
  }

LABEL_12:
  v28[0] = @"currentState";
  [(PLLibraryServicesManager *)self _state];
  v16 = PLStringFromLibraryServicesState();
  v28[1] = @"operation";
  v29[0] = v16;
  v17 = [v6 description];
  v29[1] = v17;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:2];

  v19 = objc_opt_class();
  v20 = [(PLLibraryServicesManager *)self invalidationError];
  v21 = [v19 errorForInvalidationError:v20 userInfo:v18];

  if (!+[PLLibraryServicesOperation shouldSuppressLogging])
  {
    v22 = PLLibraryServicesGetLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [(PLLibraryServicesManager *)self logPrefix];
      [(PLLibraryServicesManager *)self _state];
      v24 = PLStringFromLibraryServicesState();
      *buf = 138543874;
      v31 = v23;
      v32 = 2114;
      v33 = v24;
      v34 = 2114;
      v35 = v6;
      _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@: Enqueue operation failed with invalid library state %{public}@ %{public}@", buf, 0x20u);
    }
  }

  if (a4)
  {
    v25 = v21;
    *a4 = v21;
  }

  v15 = 0;
LABEL_19:

  return v15;
}

- (void)_resetStateQueueQoS
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = [(PLLibraryServicesManager *)self stateSerializationQueue];
  dispatch_assert_queue_V2(v3);

  if ([(PLLibraryServicesManager *)self maxWaiterQoS]!= 9)
  {
    v4 = PLLibraryServicesGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [(PLLibraryServicesManager *)self logPrefix];
      v6 = PLStringFromQoSClass();
      v9 = 138543618;
      v10 = v5;
      v11 = 2114;
      v12 = v6;
      _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Resetting QoS to %{public}@", &v9, 0x16u);
    }

    [(PLLibraryServicesManager *)self setMaxWaiterQoS:9];
    v7 = [(PLLibraryServicesManager *)self maxWaiterQoS];
    v8 = [(PLLibraryServicesManager *)self currentStateNode];
    [v8 setQos:v7];
  }
}

- (void)_increaseStateQueueQoSIfNeeded
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [(PLLibraryServicesManager *)self stateSerializationQueue];
  dispatch_assert_queue_V2(v3);

  v4 = qos_class_self();
  if (v4 > [(PLLibraryServicesManager *)self maxWaiterQoS])
  {
    v5 = PLLibraryServicesGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(PLLibraryServicesManager *)self logPrefix];
      [(PLLibraryServicesManager *)self maxWaiterQoS];
      v7 = PLStringFromQoSClass();
      v8 = PLStringFromQoSClass();
      v10 = 138543874;
      v11 = v6;
      v12 = 2114;
      v13 = v7;
      v14 = 2114;
      v15 = v8;
      _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Increase QoS from %{public}@ to %{public}@", &v10, 0x20u);
    }

    [(PLLibraryServicesManager *)self setMaxWaiterQoS:v4];
    v9 = [(PLLibraryServicesManager *)self currentStateNode];
    [v9 setQos:v4];
  }
}

- (unsigned)maxWaiterQoS
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  PLRunWithUnfairLock();
  v2 = *(v5 + 6);
  _Block_object_dispose(&v4, 8);
  return v2;
}

- (void)shutdownLibraryWithDescription:(id)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[PLPhotoLibraryBundleController sharedBundleController];
  WeakRetained = objc_loadWeakRetained(&self->_libraryBundle);
  v7 = MEMORY[0x1E696ABC0];
  v8 = *MEMORY[0x1E69BFF48];
  v11 = *MEMORY[0x1E696A278];
  v12[0] = v4;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v10 = [v7 errorWithDomain:v8 code:41021 userInfo:v9];

  [v5 shutdownBundle:WeakRetained reason:v10];
}

- (BOOL)enqueueOperationWithName:(id)a3 requiredState:(int64_t)a4 executionBlock:(id)a5
{
  v8 = a5;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __82__PLLibraryServicesManager_enqueueOperationWithName_requiredState_executionBlock___block_invoke;
  v12[3] = &unk_1E756CD68;
  v13 = v8;
  v9 = v8;
  v10 = [PLLibraryServicesOperation operationWithName:a3 libraryServicesManager:self requiredState:a4 parentProgress:0 executionBlock:v12];
  LOBYTE(a3) = [(PLLibraryServicesManager *)self enqueueOperation:v10 error:0];

  return a3;
}

- (BOOL)enqueueOperation:(id)a3 error:(id *)a4
{
  v6 = a3;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 1;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__46470;
  v19 = __Block_byref_object_dispose__46471;
  v20 = 0;
  v7 = [(PLLibraryServicesManager *)self stateSerializationQueue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __51__PLLibraryServicesManager_enqueueOperation_error___block_invoke;
  v11[3] = &unk_1E7578898;
  v13 = &v21;
  v11[4] = self;
  v8 = v6;
  v12 = v8;
  v14 = &v15;
  dispatch_sync(v7, v11);

  v9 = *(v22 + 24);
  if (a4 && (v22[3] & 1) == 0)
  {
    *a4 = v16[5];
    v9 = *(v22 + 24);
  }

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);

  return v9 & 1;
}

void __51__PLLibraryServicesManager_enqueueOperation_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(a1[7] + 8);
  obj = *(v4 + 40);
  v5 = [v2 _enqueueOperation:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  *(*(a1[6] + 8) + 24) = v5;
}

- (id)_libraryServicesStateNodeWithState:(int64_t)a3
{
  v5 = objc_alloc(MEMORY[0x1E69BF280]);
  v6 = [(PLLibraryServicesManager *)self maxWaiterQoS];
  v7 = [(PLLibraryServicesManager *)self logPrefix];
  v8 = [v5 initWithLibraryServicesState:a3 qualityOfService:v6 logPrefix:v7];

  return v8;
}

- (void)initializeConstraintsDirector
{
  v3 = [(PLLibraryServicesManager *)self libraryBundle];
  v2 = [v3 constraintsDirector];
}

- (PLChangeHandlingContainer)changeHandlingContainer
{
  v2 = [(PLLibraryServicesManager *)self libraryBundle];
  v3 = [v2 changeHandlingContainer];

  return v3;
}

- (void)initializeChangeHandling
{
  v2 = [(PLLibraryServicesManager *)self libraryBundle];
  [v2 initializeChangeHandling];
}

- (id)collectionShareBackendForKind:(signed __int16)a3
{
  v3 = a3;
  v16 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if (a3 == 2)
    {
      lazyCollectionShareSharedStreamBackend = self->_lazyCollectionShareSharedStreamBackend;
      goto LABEL_6;
    }

    if (a3 == 1)
    {
      lazyCollectionShareSharedStreamBackend = self->_lazyCollectionShareCPLBackend;
LABEL_6:
      v6 = [(PLLazyObject *)lazyCollectionShareSharedStreamBackend objectValue];
      goto LABEL_13;
    }
  }

  else
  {
    v7 = PLLibraryServicesGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(PLLibraryServicesManager *)self logPrefix];
      v12 = 138543362;
      v13 = v8;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: Invalid Collection Share Kind Unknown", &v12, 0xCu);
    }
  }

  v9 = PLLibraryServicesGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v10 = [(PLLibraryServicesManager *)self logPrefix];
    v12 = 138543618;
    v13 = v10;
    v14 = 1024;
    v15 = v3;
    _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_ERROR, "%{public}@: Invalid Collection Share Kind: %d", &v12, 0x12u);
  }

  v6 = 0;
LABEL_13:

  return v6;
}

- (id)newDirectServerConfiguration
{
  v13 = *MEMORY[0x1E69E9840];
  pathManager = self->_pathManager;
  v10 = 0;
  v3 = [(PLPhotoLibraryPathManager *)pathManager photoDirectoryWithType:5 createIfNeeded:1 error:&v10];
  v4 = v10;
  if (v4)
  {
    v5 = PLBackendGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v12 = v4;
      _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_ERROR, "Could not create private directory for direct server configuration cache: %@", buf, 0xCu);
    }
  }

  v6 = objc_alloc(MEMORY[0x1E6994AA0]);
  v7 = [MEMORY[0x1E695DFF8] fileURLWithPath:v3 isDirectory:1];
  v8 = [v6 initWithClientLibraryBaseURL:v7 minUpdateInterval:*MEMORY[0x1E6994950] updateIntervalKey:*MEMORY[0x1E6994958]];

  return v8;
}

- (id)newClientSideEncryptionManager
{
  v2 = objc_alloc(MEMORY[0x1E69C0698]);
  v3 = [v2 initWithProfile:*MEMORY[0x1E69C09B8]];
  [v3 start];
  return v3;
}

- (PFClientSideEncryptionManager)clientSideEncryptionManager
{
  if ([(PLLibraryServicesManager *)self isSystemPhotoLibrary])
  {
    v3 = [(PLLazyObject *)self->_lazyClientSideEncryptionManager objectValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)journalManagerForName:(id)a3
{
  v4 = a3;
  v5 = +[PLComputeCacheManager name];
  v6 = [v4 isEqualToString:v5];

  if (v6)
  {
    [(PLLibraryServicesManager *)self computeCacheManager];
  }

  else
  {
    [(PLLibraryServicesManager *)self rebuildJournalManager];
  }
  v7 = ;

  return v7;
}

- (id)newRebuildJournalManager
{
  v3 = [(PLLibraryServicesManager *)self createOptions];
  if ([PLRebuildJournalManager isEnabledWithPathManager:self->_pathManager error:0])
  {
    v4 = (v3 & 0x200) == 0;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    return 0;
  }

  v6 = [PLRebuildJournalManager alloc];

  return [(PLRebuildJournalManager *)v6 initWithLibraryServicesManager:self];
}

- (PLMomentGenerationDataManager)momentGenerationDataManager
{
  if (PLPlatformMomentsSupported())
  {
    v3 = [(PLLazyObject *)self->_lazyMomentGenerationDataManager objectValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_invalidateOutstandingTransactionHandlerTimer
{
  os_unfair_lock_lock(&self->_outstandingTransactionHandlerTimerLock);
  outstandingTransactionHandlerTimer = self->_outstandingTransactionHandlerTimer;
  self->_outstandingTransactionHandlerTimer = 0;
  v4 = outstandingTransactionHandlerTimer;

  os_unfair_lock_unlock(&self->_outstandingTransactionHandlerTimerLock);
  [PLClientServerTransaction cancelOutstandingTransactionHandlerTimer:v4];
}

- (void)_invalidateBackgroundJobService
{
  if (self->_backgroundJobService)
  {
    block = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, &__block_literal_global_171_46514);
    backgroundJobService = self->_backgroundJobService;
    v4 = [(PLLibraryServicesManager *)self libraryBundle];
    [(PLBackgroundJobService *)backgroundJobService invalidateLibraryBundle:v4 completion:block];

    dispatch_block_wait(block, 0xFFFFFFFFFFFFFFFFLL);
  }
}

- (id)newMomentGenerationDataManager
{
  v9 = *MEMORY[0x1E69E9840];
  if (PLPlatformMomentsSupported())
  {
    v3 = [PLMomentGenerationDataManager alloc];

    return [(PLMomentGenerationDataManager *)v3 initWithLibraryServicesManager:self];
  }

  else
  {
    v5 = PLLibraryServicesGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [(PLLibraryServicesManager *)self logPrefix];
      v7 = 138543362;
      v8 = v6;
      _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_ERROR, "%{public}@: Moments disabled, momentGenerationDataManager unavailable", &v7, 0xCu);
    }

    return 0;
  }
}

- (id)newSearchDonationProgress
{
  objc_initWeak(&location, self);
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __53__PLLibraryServicesManager_newSearchDonationProgress__block_invoke;
  v11 = &unk_1E756CC00;
  objc_copyWeak(&v12, &location);
  v3 = _Block_copy(&v8);
  v4 = [PLSearchDonationProgress alloc];
  v5 = [(PLLibraryServicesManager *)self pathManager:v8];
  v6 = [(PLSearchDonationProgress *)v4 initWithPathManager:v5 contextProviderBlock:v3];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
  return v6;
}

id __53__PLLibraryServicesManager_newSearchDonationProgress__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _provideContextForSearchDonationProgress];

  return v2;
}

- (id)_provideContextForSearchDonationProgress
{
  v2 = [(PLLibraryServicesManager *)self databaseContext];
  v3 = [v2 newShortLivedLibraryWithName:"search donation progress"];

  v4 = [v3 managedObjectContext];

  return v4;
}

- (id)newSearchIndexingEngine
{
  v9 = *MEMORY[0x1E69E9840];
  if ([(PLLibraryServicesManager *)self isSearchIndexingEnabled])
  {
    v3 = [PLSearchIndexingEngine alloc];

    return [(PLSearchIndexingEngine *)v3 initWithLibraryServicesManager:self];
  }

  else
  {
    v5 = PLLibraryServicesGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [(PLLibraryServicesManager *)self logPrefix];
      v7 = 138543362;
      v8 = v6;
      _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_ERROR, "%{public}@: Search indexing disabled, newSearchIndexingEngine unavailable", &v7, 0xCu);
    }

    return 0;
  }
}

- (id)newCrashRecoverySupport
{
  v14 = *MEMORY[0x1E69E9840];
  if ([(PLLibraryServicesManager *)self isSystemPhotoLibrary])
  {
    v3 = [PLAssetsdCrashRecoverySupport alloc];
    v4 = [(PLLibraryServicesManager *)self pathManager];
    v5 = [(PLAssetsdCrashRecoverySupport *)v3 initWithPathManager:v4];

    return v5;
  }

  else
  {
    v7 = PLLibraryServicesGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [(PLLibraryServicesManager *)self logPrefix];
      v9 = [(PLLibraryServicesManager *)self pathManager];
      v10 = 138543618;
      v11 = v8;
      v12 = 2112;
      v13 = v9;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_ERROR, "%{public}@: Request for newCrashRecoverySupport from a non-system photo library: %@", &v10, 0x16u);
    }

    return 0;
  }
}

- (id)newCloudPhotoLibraryManager
{
  v12 = *MEMORY[0x1E69E9840];
  if ([(PLLibraryServicesManager *)self isCPLSyncablePhotoLibrary])
  {
    v3 = [PLCloudPhotoLibraryManager alloc];

    return [(PLCloudPhotoLibraryManager *)v3 initWithLibraryServicesManager:self];
  }

  else
  {
    v5 = PLLibraryServicesGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [(PLLibraryServicesManager *)self logPrefix];
      v7 = [(PLLibraryServicesManager *)self pathManager];
      v8 = 138543618;
      v9 = v6;
      v10 = 2112;
      v11 = v7;
      _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_ERROR, "%{public}@: Request for newCloudPhotoLibraryManager from a non-system photo library: %@", &v8, 0x16u);
    }

    return 0;
  }
}

- (id)_newContainer:(Class)a3 scope:(id)a4
{
  v6 = a4;
  v7 = [(objc_class *)a3 entityName];
  v8 = MEMORY[0x1E69BDD68];
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.photos.%@counts", v7];
  albumCountQueue = self->_albumCountQueue;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __48__PLLibraryServicesManager__newContainer_scope___block_invoke;
  v14[3] = &unk_1E756CBD8;
  v15 = v6;
  v16 = a3;
  v11 = v6;
  v12 = [v8 setCoalescerWithLabel:v9 target:self queue:albumCountQueue action:v14];

  return v12;
}

- (void)_handleCoalescerActionWithScope:(id)a3 class:(Class)a4 forIDs:(id)a5 context:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  dispatch_assert_queue_V2(self->_albumCountQueue);
  v24 = [(PLLibraryServicesManager *)self isSystemPhotoLibrary];
  v13 = [(objc_class *)a4 entityName];
  v14 = [v12 activityToken];
  v25 = v11;
  v15 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self IN %@", v11];
  v16 = [(PLLibraryServicesManager *)self databaseContext];
  v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-countCoalescer", v13];
  v18 = [v16 newShortLivedLibraryWithName:{objc_msgSend(v17, "UTF8String")}];

  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __81__PLLibraryServicesManager__handleCoalescerActionWithScope_class_forIDs_context___block_invoke;
  v26[3] = &unk_1E756CBB0;
  v29 = a4;
  v19 = v18;
  v27 = v19;
  v20 = v15;
  v28 = v20;
  [v19 performTransactionAndWait:v26];
  v21 = self;
  objc_sync_enter(v21);
  [(PLClientServerTransaction *)v21->_serverTransaction completeTransactionScope:v10];
  if (v24)
  {
    v22 = 4.0;
  }

  else
  {
    v22 = 0.5;
  }

  serverTransaction = v21->_serverTransaction;
  v21->_serverTransaction = 0;

  objc_sync_exit(v21);
  [v14 endActivity];
  [v12 delayNextInvocationByTimeInterval:v22];
}

void __81__PLLibraryServicesManager__handleCoalescerActionWithScope_class_forIDs_context___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) managedObjectContext];
  [PLPhotoLibrary refreshCachedCountsAndDates:1 onAssetsContainerClass:v2 inContext:v3 withPredicate:*(a1 + 40)];
}

- (id)newImportSessionCountCoalescer
{
  v3 = objc_opt_class();

  return [(PLLibraryServicesManager *)self _newContainer:v3 scope:@"PLTransactionScopeImportSessionCounts"];
}

- (id)newAlbumCountCoalescer
{
  v3 = objc_opt_class();

  return [(PLLibraryServicesManager *)self _newContainer:v3 scope:@"PLTransactionScopeAlbumCounts"];
}

- (void)_invalidateSyndicationPhotoLibrarySpecificServices
{
  [(PLLibraryServicesManager *)self _invalidateSyndicationDeleteManager];

  [(PLLibraryServicesManager *)self _invalidateCacheDeleteSupport];
}

- (void)_initSyndicationPhotoLibrarySpecificServices
{
  v3 = objc_initWeak(&location, self);

  v4 = objc_alloc(MEMORY[0x1E69BF270]);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __72__PLLibraryServicesManager__initSyndicationPhotoLibrarySpecificServices__block_invoke;
  v13[3] = &unk_1E7576828;
  objc_copyWeak(&v14, &location);
  v5 = [v4 initWithBlock:v13];
  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
  lazySyndicationDeleteManager = self->_lazySyndicationDeleteManager;
  self->_lazySyndicationDeleteManager = v5;

  v7 = objc_initWeak(&location, self);
  v8 = objc_alloc(MEMORY[0x1E69BF270]);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __72__PLLibraryServicesManager__initSyndicationPhotoLibrarySpecificServices__block_invoke_2;
  v11[3] = &unk_1E7576828;
  objc_copyWeak(&v12, &location);
  v9 = [v8 initWithBlock:v11];
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
  lazyCacheDeleteSupport = self->_lazyCacheDeleteSupport;
  self->_lazyCacheDeleteSupport = v9;
}

PLSyndicationDeleteEngine *__72__PLLibraryServicesManager__initSyndicationPhotoLibrarySpecificServices__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = [[PLSyndicationDeleteEngine alloc] initWithLibraryServicesManager:WeakRetained];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

PLCacheDeleteSupport *__72__PLLibraryServicesManager__initSyndicationPhotoLibrarySpecificServices__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = [[PLCacheDeleteSupport alloc] initWithLibraryServicesManager:WeakRetained cplStatus:0];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)_invalidateSystemPhotoLibrarySpecificServices
{
  v3 = [(PLLibraryServicesManager *)self searchIndexingEngine];
  [v3 disableUISearch];

  [(PLLibraryServicesManager *)self _invalidateCameraPreviewWellManager];
  [(PLLibraryServicesManager *)self _invalidateCrashRecoverySupport];

  [(PLLibraryServicesManager *)self _invalidateSyndicationDeleteManager];
}

- (void)_initSystemPhotoLibrarySpecificServices
{
  [(PLLibraryServicesManager *)self _initCameraPreviewWellManager];
  v3 = objc_initWeak(&location, self);

  v4 = objc_alloc(MEMORY[0x1E69BF270]);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __67__PLLibraryServicesManager__initSystemPhotoLibrarySpecificServices__block_invoke;
  v13[3] = &unk_1E7576828;
  objc_copyWeak(&v14, &location);
  v5 = [v4 initWithBlock:v13];
  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
  lazyCrashRecoverySupport = self->_lazyCrashRecoverySupport;
  self->_lazyCrashRecoverySupport = v5;

  if ([(PLLibraryServicesManager *)self isSystemPhotoLibrary])
  {
    v7 = objc_initWeak(&location, self);

    v8 = objc_alloc(MEMORY[0x1E69BF270]);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __67__PLLibraryServicesManager__initSystemPhotoLibrarySpecificServices__block_invoke_2;
    v11[3] = &unk_1E7576828;
    objc_copyWeak(&v12, &location);
    v9 = [v8 initWithBlock:v11];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
    lazySyndicationDeleteManager = self->_lazySyndicationDeleteManager;
    self->_lazySyndicationDeleteManager = v9;
  }
}

id __67__PLLibraryServicesManager__initSystemPhotoLibrarySpecificServices__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained newCrashRecoverySupport];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

PLSyndicationDeleteEngine *__67__PLLibraryServicesManager__initSystemPhotoLibrarySpecificServices__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = [[PLSyndicationDeleteEngine alloc] initWithLibraryServicesManager:WeakRetained];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)newBackgroundAssetResourceUploader
{
  if ([(PLLibraryServicesManager *)self wellKnownPhotoLibraryIdentifier]!= 1)
  {
    return 0;
  }

  v3 = [PLBackgroundAssetResourceUploader alloc];
  v4 = [(PLLibraryServicesManager *)self databaseContext];
  v5 = [(PLBackgroundAssetResourceUploader *)v3 initWithPhotoLibraryFactory:v4];

  return v5;
}

- (NSString)mainScopeIdentifier
{
  v2 = [(PLLazyObject *)self->_lazyMainScopeIdentifier objectValue];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = CPLPrimaryScopeIdentifierForCurrentUniverse();
  }

  v5 = v4;

  return v5;
}

- (BOOL)isSearchIndexingEnabled
{
  v2 = self;
  v3 = [(PLLibraryServicesManager *)self createOptions];
  LOBYTE(v2) = [(PLLibraryServicesManager *)v2 isSyndicationPhotoLibrary]|| (v3 & 2) == 0;
  return PLPlatformSearchSupported() & v2;
}

- (BOOL)isCPLSyncablePhotoLibrary
{
  if ([(PLLibraryServicesManager *)self isSystemPhotoLibrary])
  {
    return 1;
  }

  if (![(PLLibraryServicesManager *)self isAppPhotoLibrary])
  {
    if (PLCloudPhotoLibraryMultiLibarySyncingEnabled_onceToken != -1)
    {
      dispatch_once(&PLCloudPhotoLibraryMultiLibarySyncingEnabled_onceToken, &__block_literal_global_60348);
    }

    return PLCloudPhotoLibraryMultiLibarySyncingEnabled_multiLibrarySyncingEnabled == 1 && [(PLLibraryServicesManager *)self isSyndicationPhotoLibrary];
  }

  v4 = [(PLLibraryServicesManager *)self libraryBundle];
  v5 = [v4 indicatorFileCoordinator];

  if ([(PLLibraryServicesManager *)self isCloudPhotoLibraryEnabled])
  {
    v3 = 1;
  }

  else
  {
    v3 = [v5 isDisableICloudPhotos];
  }

  return v3;
}

- (BOOL)isAppPhotoLibrary
{
  v2 = [(PLLibraryServicesManager *)self cplSettings];
  v3 = [v2 isAppLibrary];

  return v3;
}

- (void)refreshImportSessionCountForImportSessionIDs:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E69BF360] transaction:"-[PLLibraryServicesManager refreshImportSessionCountForImportSessionIDs:]"];
  v6 = [(PLLazyObject *)self->_lazyImportSessionCountCoalescer objectValue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __73__PLLibraryServicesManager_refreshImportSessionCountForImportSessionIDs___block_invoke;
  v9[3] = &unk_1E756CB88;
  v9[4] = self;
  v10 = v4;
  v11 = v5;
  v7 = v5;
  v8 = v4;
  [v6 update:v9];
}

void __73__PLLibraryServicesManager_refreshImportSessionCountForImportSessionIDs___block_invoke(uint64_t a1, void *a2)
{
  v12 = a2;
  v3 = *(a1 + 32);
  objc_sync_enter(v3);
  if (!*(*(a1 + 32) + 336))
  {
    v4 = [MEMORY[0x1E695DFD8] setWithObject:@"PLTransactionScopeImportSessionCounts"];
    v5 = [*(a1 + 32) pathManager];
    v6 = [PLClientServerTransaction beginClientTransactionWithChangeScopes:v4 pathManager:v5 identifier:"[PLLibraryServicesManager refreshImportSessionCountForImportSessionIDs:]_block_invoke"];

    v7 = [v6 transactionToken];
    v8 = [*(a1 + 32) pathManager];
    v9 = [PLClientServerTransaction beginServerTransactionWithToken:v7 changeScopes:v4 pathManager:v8 identifier:"[PLLibraryServicesManager refreshImportSessionCountForImportSessionIDs:]_block_invoke"];
    v10 = *(a1 + 32);
    v11 = *(v10 + 336);
    *(v10 + 336) = v9;

    [v6 completeTransaction];
  }

  objc_sync_exit(v3);

  [v12 unionSet:*(a1 + 40)];
  [*(a1 + 48) stillAlive];
}

- (void)refreshAlbumCountForAlbumIDs:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E69BF360] transaction:"-[PLLibraryServicesManager refreshAlbumCountForAlbumIDs:]"];
  v6 = [(PLLazyObject *)self->_lazyAlbumCountCoalescer objectValue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __57__PLLibraryServicesManager_refreshAlbumCountForAlbumIDs___block_invoke;
  v9[3] = &unk_1E756CB88;
  v9[4] = self;
  v10 = v4;
  v11 = v5;
  v7 = v5;
  v8 = v4;
  [v6 update:v9];
}

void __57__PLLibraryServicesManager_refreshAlbumCountForAlbumIDs___block_invoke(uint64_t a1, void *a2)
{
  v12 = a2;
  v3 = *(a1 + 32);
  objc_sync_enter(v3);
  if (!*(*(a1 + 32) + 336))
  {
    v4 = [MEMORY[0x1E695DFD8] setWithObject:@"PLTransactionScopeAlbumCounts"];
    v5 = [*(a1 + 32) pathManager];
    v6 = [PLClientServerTransaction beginClientTransactionWithChangeScopes:v4 pathManager:v5 identifier:"[PLLibraryServicesManager refreshAlbumCountForAlbumIDs:]_block_invoke"];

    v7 = [v6 transactionToken];
    v8 = [*(a1 + 32) pathManager];
    v9 = [PLClientServerTransaction beginServerTransactionWithToken:v7 changeScopes:v4 pathManager:v8 identifier:"[PLLibraryServicesManager refreshAlbumCountForAlbumIDs:]_block_invoke"];
    v10 = *(a1 + 32);
    v11 = *(v10 + 336);
    *(v10 + 336) = v9;

    [v6 completeTransaction];
  }

  objc_sync_exit(v3);

  [v12 unionSet:*(a1 + 40)];
  [*(a1 + 48) stillAlive];
}

- (void)setCreateMode:(BOOL)a3 options:(id)a4
{
  v7 = a4;
  self->_isCreateMode = a3;
  if (v7)
  {
    v10 = v7;
    objc_storeStrong(&self->_openerCreationOptions, a4);
    v8 = [v10 createDatabaseOptionsDictionary];
    v9 = [(PLLibraryServicesManager *)self modelMigrator];
    [v9 setOptions:v8];

    v7 = v10;
  }
}

- (unint64_t)createOptions
{
  v2 = [(PLLibraryServicesManager *)self modelMigrator];
  v3 = [v2 options];
  v4 = [v3 objectForKeyedSubscript:@"PLPhotoLibraryCreateOptions"];
  v5 = [v4 unsignedIntegerValue];

  return v5;
}

- (NSPersistentStoreCoordinator)persistentStoreCoordinator
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [(PLLibraryServicesManager *)self libraryBundle];
  v4 = [v3 persistentContainer];
  v10 = 0;
  v5 = [v4 sharedPersistentStoreCoordinatorWithError:&v10];
  v6 = v10;

  if (!v5)
  {
    v7 = PLLibraryServicesGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [(PLLibraryServicesManager *)self logPrefix];
      *buf = 138543618;
      v12 = v8;
      v13 = 2112;
      v14 = v6;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_ERROR, "%{public}@: Failed to get shared PSC: %@", buf, 0x16u);
    }
  }

  return v5;
}

- (NSURL)libraryURL
{
  v2 = [(PLLibraryServicesManager *)self pathManager];
  v3 = [v2 libraryURL];

  return v3;
}

- (void)invalidateReverseLocationDataOnAllAssets
{
  v29 = *MEMORY[0x1E69E9840];
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__46470;
  v23 = __Block_byref_object_dispose__46471;
  v24 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v3 = [(PLLibraryServicesManager *)self databaseContext];
  v4 = [v3 newShortLivedLibraryWithName:"-[PLLibraryServicesManager invalidateReverseLocationDataOnAllAssets]"];

  v5 = [v4 managedObjectContext];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __68__PLLibraryServicesManager_invalidateReverseLocationDataOnAllAssets__block_invoke;
  v11[3] = &unk_1E7578870;
  v13 = &v15;
  v6 = v5;
  v12 = v6;
  v14 = &v19;
  [v4 performTransactionAndWait:v11];
  if (*(v16 + 24) == 1)
  {
    v7 = PLLibraryServicesGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(PLLibraryServicesManager *)self logPrefix];
      *buf = 138543362;
      v26 = v8;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: Successfully invalidated reverseLocationDataIsValid on ALL assets", buf, 0xCu);
    }
  }

  else
  {
    v7 = PLLibraryServicesGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = [(PLLibraryServicesManager *)self logPrefix];
      v10 = v20[5];
      *buf = 138543618;
      v26 = v9;
      v27 = 2112;
      v28 = v10;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_ERROR, "%{public}@: Failed to invalidate reverseLocationDataIsValid on ALL assets error: %@", buf, 0x16u);
    }
  }

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);
}

void __68__PLLibraryServicesManager_invalidateReverseLocationDataOnAllAssets__block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(a1[6] + 8);
  obj = *(v3 + 40);
  v4 = [PLManagedAsset invalidateReverseLocationDataOnAllAssetsInManagedObjectContext:v2 error:&obj];
  objc_storeStrong((v3 + 40), obj);
  *(*(a1[5] + 8) + 24) = v4;
}

- (BOOL)updateGreenTeaSavedContactsAuthorizationIfNeeded
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  PLSafeRunWithUnfairLock();
  v2 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v2;
}

void __76__PLLibraryServicesManager_updateGreenTeaSavedContactsAuthorizationIfNeeded__block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) databaseContext];
  v3 = [v2 newShortLivedLibraryWithName:"-[PLLibraryServicesManager updateGreenTeaSavedContactsAuthorizationIfNeeded]_block_invoke"];

  v4 = [v3 globalValues];
  v5 = [v4 greenTeaContactsAuthorization];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(MEMORY[0x1E695CE18], "authorizationStatusForEntityType:", 0)}];
  if (v5)
  {
    if ([v5 isEqualToNumber:v6])
    {
      goto LABEL_9;
    }

    v7 = PLLibraryServicesGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 32) logPrefix];
      v13 = 138543874;
      v14 = v8;
      v15 = 2114;
      v16 = v6;
      v17 = 2114;
      v18 = v5;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: Detected contacts authorization change: currentAuthStatus %{public}@ differs from savedAuthStatus %{public}@", &v13, 0x20u);
    }

    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  v9 = PLLibraryServicesGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [*(a1 + 32) logPrefix];
    v13 = 138543618;
    v14 = v10;
    v15 = 2114;
    v16 = v6;
    _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: Saving new contacts authorization: %{public}@", &v13, 0x16u);
  }

  [v4 setGreenTeaContactsAuthorization:v6];
LABEL_9:
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    v11 = [*(*(a1 + 32) + 96) objectValue];
    v12 = [v11 generator];
    [v12 invalidateHighlightSubtitlesAndRegenerateHighlightTitlesWithForceUpdateLocale:1 completionBlock:0];

    [*(a1 + 32) invalidateReverseLocationDataOnAllAssets];
  }
}

- (BOOL)updateSavedLocaleIfNeeded
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  PLSafeRunWithUnfairLock();
  v2 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v2;
}

void __53__PLLibraryServicesManager_updateSavedLocaleIfNeeded__block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) databaseContext];
  v3 = [v2 newShortLivedLibraryWithName:"-[PLLibraryServicesManager updateSavedLocaleIfNeeded]_block_invoke"];

  v4 = [v3 globalValues];
  v5 = [v4 localeIdentifier];
  v6 = [MEMORY[0x1E695DF58] currentLocale];
  v7 = [v6 localeIdentifier];

  if (v5)
  {
    if ([v5 isEqualToString:v7])
    {
      goto LABEL_9;
    }

    v8 = PLLibraryServicesGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [*(a1 + 32) logPrefix];
      v14 = 138543874;
      v15 = v9;
      v16 = 2114;
      v17 = v7;
      v18 = 2114;
      v19 = v5;
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: Detected locale change: currentLocaleIdentifier %{public}@ differs from savedLocaleIdentifier %{public}@", &v14, 0x20u);
    }

    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  v10 = PLLibraryServicesGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [*(a1 + 32) logPrefix];
    v14 = 138543618;
    v15 = v11;
    v16 = 2114;
    v17 = v7;
    _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: Saving new locale identifier: %{public}@", &v14, 0x16u);
  }

  [v4 setLocaleIdentifier:v7];
LABEL_9:
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    v12 = [*(*(a1 + 32) + 96) objectValue];
    v13 = [v12 generator];
    [v13 invalidateHighlightSubtitlesAndRegenerateHighlightTitlesWithForceUpdateLocale:1 completionBlock:0];

    [*(a1 + 32) invalidateReverseLocationDataOnAllAssets];
  }
}

- (void)_initCameraPreviewWellManager
{
  v3 = objc_initWeak(&location, self);

  v4 = objc_alloc(MEMORY[0x1E69BF270]);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__PLLibraryServicesManager__initCameraPreviewWellManager__block_invoke;
  v7[3] = &unk_1E7576828;
  objc_copyWeak(&v8, &location);
  v5 = [v4 initWithBlock:v7];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
  lazyCameraPreviewWellManager = self->_lazyCameraPreviewWellManager;
  self->_lazyCameraPreviewWellManager = v5;
}

PLCameraPreviewWellManager *__57__PLLibraryServicesManager__initCameraPreviewWellManager__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained && [WeakRetained isSystemPhotoLibrary])
  {
    v3 = objc_alloc_init(PLCameraPreviewWellManager);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (int64_t)_determineWellKnownPhotoLibraryIdentifier
{
  v3 = MEMORY[0x1E69BF2A0];
  v4 = [(PLLibraryServicesManager *)self pathManager];
  v5 = [v4 libraryURL];
  v6 = [v3 wellKnownPhotoLibraryIdentifierForURL:v5];

  if (!v6)
  {
    v7 = MEMORY[0x1E69BF2A0];
    v8 = [(PLLibraryServicesManager *)self pathManager];
    v9 = [v8 libraryURL];
    LODWORD(v6) = [v7 isSystemPhotoLibraryURL:v9];

    return v6;
  }

  return v6;
}

- (void)dealloc
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = PLPhotosObjectLifecycleGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = objc_opt_class();
    pathManager = self->_pathManager;
    *buf = 138412802;
    v8 = v4;
    v9 = 2048;
    v10 = self;
    v11 = 2112;
    v12 = pathManager;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEBUG, "%@ %p dealloc %@", buf, 0x20u);
  }

  v6.receiver = self;
  v6.super_class = PLLibraryServicesManager;
  [(PLLibraryServicesManager *)&v6 dealloc];
}

- (PLLibraryServicesManager)initWithLibraryBundle:(id)a3 backgroundJobService:(id)a4 cacheDeleteRegistration:(id)a5 delegateClass:(Class)a6
{
  v247 = *MEMORY[0x1E69E9840];
  v11 = a3;
  obj = a5;
  v173 = a4;
  v174 = a5;
  v240.receiver = self;
  v240.super_class = PLLibraryServicesManager;
  v12 = [(PLLibraryServicesManager *)&v240 init];
  if (v12)
  {
    if ((PLIsAssetsd() & 1) == 0)
    {
      v170 = [MEMORY[0x1E696AAA8] currentHandler];
      [v170 handleFailureInMethod:a2 object:v12 file:@"PLLibraryServicesManager.m" lineNumber:298 description:@"Only supposed to be running in assetsd"];
    }

    objc_storeWeak(v12 + 1, v11);
    v13 = [v11 pathManager];
    v14 = *(v12 + 3);
    *(v12 + 3) = v13;

    *(v12 + 5) = [v12 _determineWellKnownPhotoLibraryIdentifier];
    v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"LSM-%d-%p", *(v12 + 5), v12];
    v16 = *(v12 + 55);
    *(v12 + 55) = v15;

    v17 = PLLibraryServicesGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [v12 logPrefix];
      v19 = MEMORY[0x1E69BF220];
      v20 = [v11 libraryURL];
      v21 = [v19 descriptionWithFileURL:v20];
      v22 = PLStringFromWellKnownPhotoLibraryIdentifier();
      *buf = 138543874;
      v242 = v18;
      v243 = 2112;
      v244 = v21;
      v245 = 2112;
      v246 = v22;
      _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@: Initialized library services manager at path %@ with well known identifier %@", buf, 0x20u);
    }

    v23 = dispatch_queue_create("PLLibraryServicesManager.nodesQueue", 0);
    v24 = *(v12 + 67);
    *(v12 + 67) = v23;

    *(v12 + 94) = 0;
    v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v26 = *(v12 + 49);
    *(v12 + 49) = v25;

    *(v12 + 53) = 0;
    *(v12 + 54) = 0;
    v27 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v28 = *(v12 + 46);
    *(v12 + 46) = v27;

    if (a6)
    {
      v29 = [a6 alloc];
      if (([v29 conformsToProtocol:&unk_1F109F188] & 1) == 0)
      {
        v171 = [MEMORY[0x1E696AAA8] currentHandler];
        [v171 handleFailureInMethod:a2 object:v12 file:@"PLLibraryServicesManager.m" lineNumber:315 description:{@"Invalid class '%@' assigned to libraryServicesDelegateClass, must conform to PLLibraryServicesDelegate", a6}];
      }

      v30 = [v29 initWithLibraryServicesManager:v12];
      [v12 setLibraryServicesDelegate:v30];
      v31 = dispatch_queue_create("PLLibraryServicesManager.helperQueue", 0);
      v32 = *(v12 + 68);
      *(v12 + 68) = v31;
    }

    v33 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v34 = dispatch_queue_attr_make_with_qos_class(v33, QOS_CLASS_BACKGROUND, 0);

    v35 = dispatch_queue_create("album-count-update", v34);
    v36 = *(v12 + 45);
    *(v12 + 45) = v35;

    v37 = objc_initWeak(buf, v12);
    v38 = objc_alloc(MEMORY[0x1E69BF270]);
    v237[0] = MEMORY[0x1E69E9820];
    v237[1] = 3221225472;
    v237[2] = __109__PLLibraryServicesManager_initWithLibraryBundle_backgroundJobService_cacheDeleteRegistration_delegateClass___block_invoke;
    v237[3] = &unk_1E7573318;
    objc_copyWeak(&v239, buf);
    v238 = v11;
    v39 = [v38 initWithBlock:v237];

    objc_destroyWeak(&v239);
    objc_destroyWeak(buf);
    v40 = *(v12 + 10);
    *(v12 + 10) = v39;

    v41 = objc_initWeak(buf, v12);
    v42 = objc_alloc(MEMORY[0x1E69BF270]);
    v235[0] = MEMORY[0x1E69E9820];
    v235[1] = 3221225472;
    v235[2] = __109__PLLibraryServicesManager_initWithLibraryBundle_backgroundJobService_cacheDeleteRegistration_delegateClass___block_invoke_2;
    v235[3] = &unk_1E7576828;
    objc_copyWeak(&v236, buf);
    v43 = [v42 initWithBlock:v235];
    objc_destroyWeak(&v236);
    objc_destroyWeak(buf);
    v44 = *(v12 + 6);
    *(v12 + 6) = v43;

    v45 = objc_initWeak(buf, v12);
    v46 = objc_alloc(MEMORY[0x1E69BF270]);
    v233[0] = MEMORY[0x1E69E9820];
    v233[1] = 3221225472;
    v233[2] = __109__PLLibraryServicesManager_initWithLibraryBundle_backgroundJobService_cacheDeleteRegistration_delegateClass___block_invoke_3;
    v233[3] = &unk_1E7576828;
    objc_copyWeak(&v234, buf);
    v47 = [v46 initWithBlock:v233];
    objc_destroyWeak(&v234);
    objc_destroyWeak(buf);
    v48 = *(v12 + 7);
    *(v12 + 7) = v47;

    v49 = objc_initWeak(buf, v12);
    v50 = objc_alloc(MEMORY[0x1E69BF270]);
    v231[0] = MEMORY[0x1E69E9820];
    v231[1] = 3221225472;
    v231[2] = __109__PLLibraryServicesManager_initWithLibraryBundle_backgroundJobService_cacheDeleteRegistration_delegateClass___block_invoke_4;
    v231[3] = &unk_1E7576828;
    objc_copyWeak(&v232, buf);
    v51 = [v50 initWithBlock:v231];
    objc_destroyWeak(&v232);
    objc_destroyWeak(buf);
    v52 = *(v12 + 8);
    *(v12 + 8) = v51;

    v53 = objc_initWeak(buf, v12);
    v54 = objc_alloc(MEMORY[0x1E69BF270]);
    v229[0] = MEMORY[0x1E69E9820];
    v229[1] = 3221225472;
    v229[2] = __109__PLLibraryServicesManager_initWithLibraryBundle_backgroundJobService_cacheDeleteRegistration_delegateClass___block_invoke_5;
    v229[3] = &unk_1E7576828;
    objc_copyWeak(&v230, buf);
    v55 = [v54 initWithBlock:v229];
    objc_destroyWeak(&v230);
    objc_destroyWeak(buf);
    v56 = *(v12 + 9);
    *(v12 + 9) = v55;

    v57 = objc_initWeak(buf, v12);
    v58 = objc_alloc(MEMORY[0x1E69BF270]);
    v227[0] = MEMORY[0x1E69E9820];
    v227[1] = 3221225472;
    v227[2] = __109__PLLibraryServicesManager_initWithLibraryBundle_backgroundJobService_cacheDeleteRegistration_delegateClass___block_invoke_6;
    v227[3] = &unk_1E7576828;
    objc_copyWeak(&v228, buf);
    v59 = [v58 initWithBlock:v227];
    objc_destroyWeak(&v228);
    objc_destroyWeak(buf);
    v60 = *(v12 + 12);
    *(v12 + 12) = v59;

    v61 = objc_initWeak(buf, v12);
    v62 = objc_alloc(MEMORY[0x1E69BF270]);
    v225[0] = MEMORY[0x1E69E9820];
    v225[1] = 3221225472;
    v225[2] = __109__PLLibraryServicesManager_initWithLibraryBundle_backgroundJobService_cacheDeleteRegistration_delegateClass___block_invoke_7;
    v225[3] = &unk_1E7576828;
    objc_copyWeak(&v226, buf);
    v63 = [v62 initWithBlock:v225];
    objc_destroyWeak(&v226);
    objc_destroyWeak(buf);
    v64 = *(v12 + 11);
    *(v12 + 11) = v63;

    v65 = objc_initWeak(buf, v12);
    v66 = objc_alloc(MEMORY[0x1E69BF270]);
    v223[0] = MEMORY[0x1E69E9820];
    v223[1] = 3221225472;
    v223[2] = __109__PLLibraryServicesManager_initWithLibraryBundle_backgroundJobService_cacheDeleteRegistration_delegateClass___block_invoke_8;
    v223[3] = &unk_1E7576828;
    objc_copyWeak(&v224, buf);
    v67 = [v66 initWithBlock:v223];
    objc_destroyWeak(&v224);
    objc_destroyWeak(buf);
    v68 = *(v12 + 13);
    *(v12 + 13) = v67;

    v69 = objc_initWeak(buf, v12);
    v70 = objc_alloc(MEMORY[0x1E69BF270]);
    v221[0] = MEMORY[0x1E69E9820];
    v221[1] = 3221225472;
    v221[2] = __109__PLLibraryServicesManager_initWithLibraryBundle_backgroundJobService_cacheDeleteRegistration_delegateClass___block_invoke_9;
    v221[3] = &unk_1E7576828;
    objc_copyWeak(&v222, buf);
    v71 = [v70 initWithBlock:v221];
    objc_destroyWeak(&v222);
    objc_destroyWeak(buf);
    v72 = *(v12 + 14);
    *(v12 + 14) = v71;

    v73 = objc_initWeak(buf, v12);
    v74 = objc_alloc(MEMORY[0x1E69BF270]);
    v219[0] = MEMORY[0x1E69E9820];
    v219[1] = 3221225472;
    v219[2] = __109__PLLibraryServicesManager_initWithLibraryBundle_backgroundJobService_cacheDeleteRegistration_delegateClass___block_invoke_10;
    v219[3] = &unk_1E7576828;
    objc_copyWeak(&v220, buf);
    v75 = [v74 initWithBlock:v219];
    objc_destroyWeak(&v220);
    objc_destroyWeak(buf);
    v76 = *(v12 + 15);
    *(v12 + 15) = v75;

    v77 = objc_initWeak(buf, v12);
    v78 = objc_alloc(MEMORY[0x1E69BF270]);
    v217[0] = MEMORY[0x1E69E9820];
    v217[1] = 3221225472;
    v217[2] = __109__PLLibraryServicesManager_initWithLibraryBundle_backgroundJobService_cacheDeleteRegistration_delegateClass___block_invoke_11;
    v217[3] = &unk_1E7576828;
    objc_copyWeak(&v218, buf);
    v79 = [v78 initWithBlock:v217];
    objc_destroyWeak(&v218);
    objc_destroyWeak(buf);
    v80 = *(v12 + 16);
    *(v12 + 16) = v79;

    objc_storeStrong(v12 + 58, a4);
    v81 = objc_initWeak(buf, v12);

    v82 = objc_alloc(MEMORY[0x1E69BF270]);
    v215[0] = MEMORY[0x1E69E9820];
    v215[1] = 3221225472;
    v215[2] = __109__PLLibraryServicesManager_initWithLibraryBundle_backgroundJobService_cacheDeleteRegistration_delegateClass___block_invoke_12;
    v215[3] = &unk_1E7576828;
    objc_copyWeak(&v216, buf);
    v83 = [v82 initWithBlock:v215];
    objc_destroyWeak(&v216);
    objc_destroyWeak(buf);
    v84 = *(v12 + 21);
    *(v12 + 21) = v83;

    v85 = objc_initWeak(buf, v12);
    v86 = objc_alloc(MEMORY[0x1E69BF270]);
    v213[0] = MEMORY[0x1E69E9820];
    v213[1] = 3221225472;
    v213[2] = __109__PLLibraryServicesManager_initWithLibraryBundle_backgroundJobService_cacheDeleteRegistration_delegateClass___block_invoke_13;
    v213[3] = &unk_1E7576828;
    objc_copyWeak(&v214, buf);
    v87 = [v86 initWithBlock:v213];
    objc_destroyWeak(&v214);
    objc_destroyWeak(buf);
    v88 = *(v12 + 22);
    *(v12 + 22) = v87;

    v89 = objc_initWeak(buf, v12);
    v90 = objc_alloc(MEMORY[0x1E69BF270]);
    v211[0] = MEMORY[0x1E69E9820];
    v211[1] = 3221225472;
    v211[2] = __109__PLLibraryServicesManager_initWithLibraryBundle_backgroundJobService_cacheDeleteRegistration_delegateClass___block_invoke_14;
    v211[3] = &unk_1E7576828;
    objc_copyWeak(&v212, buf);
    v91 = [v90 initWithBlock:v211];
    objc_destroyWeak(&v212);
    objc_destroyWeak(buf);
    v92 = *(v12 + 23);
    *(v12 + 23) = v91;

    v93 = objc_initWeak(buf, v12);
    v94 = objc_alloc(MEMORY[0x1E69BF270]);
    v209[0] = MEMORY[0x1E69E9820];
    v209[1] = 3221225472;
    v209[2] = __109__PLLibraryServicesManager_initWithLibraryBundle_backgroundJobService_cacheDeleteRegistration_delegateClass___block_invoke_15;
    v209[3] = &unk_1E7576828;
    objc_copyWeak(&v210, buf);
    v95 = [v94 initWithBlock:v209];
    objc_destroyWeak(&v210);
    objc_destroyWeak(buf);
    v96 = *(v12 + 27);
    *(v12 + 27) = v95;

    v97 = objc_initWeak(buf, v12);
    v98 = objc_alloc(MEMORY[0x1E69BF270]);
    v207[0] = MEMORY[0x1E69E9820];
    v207[1] = 3221225472;
    v207[2] = __109__PLLibraryServicesManager_initWithLibraryBundle_backgroundJobService_cacheDeleteRegistration_delegateClass___block_invoke_16;
    v207[3] = &unk_1E7576828;
    objc_copyWeak(&v208, buf);
    v99 = [v98 initWithBlock:v207];
    objc_destroyWeak(&v208);
    objc_destroyWeak(buf);
    v100 = *(v12 + 28);
    *(v12 + 28) = v99;

    v101 = objc_initWeak(buf, v12);
    v102 = objc_alloc(MEMORY[0x1E69BF270]);
    v205[0] = MEMORY[0x1E69E9820];
    v205[1] = 3221225472;
    v205[2] = __109__PLLibraryServicesManager_initWithLibraryBundle_backgroundJobService_cacheDeleteRegistration_delegateClass___block_invoke_17;
    v205[3] = &unk_1E7576828;
    objc_copyWeak(&v206, buf);
    v103 = [v102 initWithBlock:v205];
    objc_destroyWeak(&v206);
    objc_destroyWeak(buf);
    v104 = *(v12 + 29);
    *(v12 + 29) = v103;

    v105 = objc_initWeak(buf, v12);
    v106 = objc_alloc(MEMORY[0x1E69BF270]);
    v203[0] = MEMORY[0x1E69E9820];
    v203[1] = 3221225472;
    v203[2] = __109__PLLibraryServicesManager_initWithLibraryBundle_backgroundJobService_cacheDeleteRegistration_delegateClass___block_invoke_18;
    v203[3] = &unk_1E7576828;
    objc_copyWeak(&v204, buf);
    v107 = [v106 initWithBlock:v203];
    objc_destroyWeak(&v204);
    objc_destroyWeak(buf);
    v108 = *(v12 + 31);
    *(v12 + 31) = v107;

    v109 = objc_initWeak(buf, v12);
    v110 = objc_alloc(MEMORY[0x1E69BF270]);
    v201[0] = MEMORY[0x1E69E9820];
    v201[1] = 3221225472;
    v201[2] = __109__PLLibraryServicesManager_initWithLibraryBundle_backgroundJobService_cacheDeleteRegistration_delegateClass___block_invoke_19;
    v201[3] = &unk_1E7576828;
    objc_copyWeak(&v202, buf);
    v111 = [v110 initWithRetriableBlock:v201];
    objc_destroyWeak(&v202);
    objc_destroyWeak(buf);
    v112 = *(v12 + 30);
    *(v12 + 30) = v111;

    v113 = objc_initWeak(buf, v12);
    v114 = objc_alloc(MEMORY[0x1E69BF270]);
    v199[0] = MEMORY[0x1E69E9820];
    v199[1] = 3221225472;
    v199[2] = __109__PLLibraryServicesManager_initWithLibraryBundle_backgroundJobService_cacheDeleteRegistration_delegateClass___block_invoke_20;
    v199[3] = &unk_1E7576828;
    objc_copyWeak(&v200, buf);
    v115 = [v114 initWithBlock:v199];
    objc_destroyWeak(&v200);
    objc_destroyWeak(buf);
    v116 = *(v12 + 17);
    *(v12 + 17) = v115;

    v117 = objc_initWeak(buf, v12);
    v118 = objc_alloc(MEMORY[0x1E69BF270]);
    v197[0] = MEMORY[0x1E69E9820];
    v197[1] = 3221225472;
    v197[2] = __109__PLLibraryServicesManager_initWithLibraryBundle_backgroundJobService_cacheDeleteRegistration_delegateClass___block_invoke_21;
    v197[3] = &unk_1E7576828;
    objc_copyWeak(&v198, buf);
    v119 = [v118 initWithBlock:v197];
    objc_destroyWeak(&v198);
    objc_destroyWeak(buf);
    v120 = *(v12 + 18);
    *(v12 + 18) = v119;

    v121 = objc_initWeak(buf, v12);
    v122 = objc_alloc(MEMORY[0x1E69BF270]);
    v195[0] = MEMORY[0x1E69E9820];
    v195[1] = 3221225472;
    v195[2] = __109__PLLibraryServicesManager_initWithLibraryBundle_backgroundJobService_cacheDeleteRegistration_delegateClass___block_invoke_22;
    v195[3] = &unk_1E7576828;
    objc_copyWeak(&v196, buf);
    v123 = [v122 initWithRetriableBlock:v195];
    objc_destroyWeak(&v196);
    objc_destroyWeak(buf);
    v124 = *(v12 + 19);
    *(v12 + 19) = v123;

    v125 = objc_initWeak(buf, v12);
    v126 = objc_alloc(MEMORY[0x1E69BF270]);
    v193[0] = MEMORY[0x1E69E9820];
    v193[1] = 3221225472;
    v193[2] = __109__PLLibraryServicesManager_initWithLibraryBundle_backgroundJobService_cacheDeleteRegistration_delegateClass___block_invoke_23;
    v193[3] = &unk_1E7576828;
    objc_copyWeak(&v194, buf);
    v127 = [v126 initWithBlock:v193];
    objc_destroyWeak(&v194);
    objc_destroyWeak(buf);
    v128 = *(v12 + 32);
    *(v12 + 32) = v127;

    v129 = objc_initWeak(buf, v12);
    v130 = objc_alloc(MEMORY[0x1E69BF270]);
    v191[0] = MEMORY[0x1E69E9820];
    v191[1] = 3221225472;
    v191[2] = __109__PLLibraryServicesManager_initWithLibraryBundle_backgroundJobService_cacheDeleteRegistration_delegateClass___block_invoke_24;
    v191[3] = &unk_1E7576828;
    objc_copyWeak(&v192, buf);
    v131 = [v130 initWithBlock:v191];
    objc_destroyWeak(&v192);
    objc_destroyWeak(buf);
    v132 = *(v12 + 33);
    *(v12 + 33) = v131;

    v133 = objc_initWeak(buf, v12);
    v134 = objc_alloc(MEMORY[0x1E69BF270]);
    v189[0] = MEMORY[0x1E69E9820];
    v189[1] = 3221225472;
    v189[2] = __109__PLLibraryServicesManager_initWithLibraryBundle_backgroundJobService_cacheDeleteRegistration_delegateClass___block_invoke_25;
    v189[3] = &unk_1E7576828;
    objc_copyWeak(&v190, buf);
    v135 = [v134 initWithBlock:v189];
    objc_destroyWeak(&v190);
    objc_destroyWeak(buf);
    v136 = *(v12 + 34);
    *(v12 + 34) = v135;

    v137 = objc_initWeak(buf, v12);
    v138 = objc_alloc(MEMORY[0x1E69BF270]);
    v187[0] = MEMORY[0x1E69E9820];
    v187[1] = 3221225472;
    v187[2] = __109__PLLibraryServicesManager_initWithLibraryBundle_backgroundJobService_cacheDeleteRegistration_delegateClass___block_invoke_26;
    v187[3] = &unk_1E7576828;
    objc_copyWeak(&v188, buf);
    v139 = [v138 initWithBlock:v187];
    objc_destroyWeak(&v188);
    objc_destroyWeak(buf);
    v140 = *(v12 + 35);
    *(v12 + 35) = v139;

    v141 = objc_initWeak(buf, v12);
    v142 = objc_alloc(MEMORY[0x1E69BF270]);
    v185[0] = MEMORY[0x1E69E9820];
    v185[1] = 3221225472;
    v185[2] = __109__PLLibraryServicesManager_initWithLibraryBundle_backgroundJobService_cacheDeleteRegistration_delegateClass___block_invoke_27;
    v185[3] = &unk_1E7576828;
    objc_copyWeak(&v186, buf);
    v143 = [v142 initWithBlock:v185];
    objc_destroyWeak(&v186);
    objc_destroyWeak(buf);
    v144 = *(v12 + 36);
    *(v12 + 36) = v143;

    v145 = objc_initWeak(buf, v12);
    v146 = objc_alloc(MEMORY[0x1E69BF270]);
    v183[0] = MEMORY[0x1E69E9820];
    v183[1] = 3221225472;
    v183[2] = __109__PLLibraryServicesManager_initWithLibraryBundle_backgroundJobService_cacheDeleteRegistration_delegateClass___block_invoke_28;
    v183[3] = &unk_1E7576828;
    objc_copyWeak(&v184, buf);
    v147 = [v146 initWithBlock:v183];
    objc_destroyWeak(&v184);
    objc_destroyWeak(buf);
    v148 = *(v12 + 37);
    *(v12 + 37) = v147;

    v149 = objc_initWeak(buf, v12);
    v150 = objc_alloc(MEMORY[0x1E69BF270]);
    v181[0] = MEMORY[0x1E69E9820];
    v181[1] = 3221225472;
    v181[2] = __109__PLLibraryServicesManager_initWithLibraryBundle_backgroundJobService_cacheDeleteRegistration_delegateClass___block_invoke_29;
    v181[3] = &unk_1E7576828;
    objc_copyWeak(&v182, buf);
    v151 = [v150 initWithBlock:v181];
    objc_destroyWeak(&v182);
    objc_destroyWeak(buf);
    v152 = *(v12 + 38);
    *(v12 + 38) = v151;

    v153 = objc_initWeak(buf, v12);
    v154 = objc_alloc(MEMORY[0x1E69BF270]);
    v179[0] = MEMORY[0x1E69E9820];
    v179[1] = 3221225472;
    v179[2] = __109__PLLibraryServicesManager_initWithLibraryBundle_backgroundJobService_cacheDeleteRegistration_delegateClass___block_invoke_30;
    v179[3] = &unk_1E7576828;
    objc_copyWeak(&v180, buf);
    v155 = [v154 initWithBlock:v179];
    objc_destroyWeak(&v180);
    objc_destroyWeak(buf);
    v156 = *(v12 + 39);
    *(v12 + 39) = v155;

    v157 = objc_initWeak(buf, v12);
    v158 = objc_alloc(MEMORY[0x1E69BF270]);
    v177[0] = MEMORY[0x1E69E9820];
    v177[1] = 3221225472;
    v177[2] = __109__PLLibraryServicesManager_initWithLibraryBundle_backgroundJobService_cacheDeleteRegistration_delegateClass___block_invoke_31;
    v177[3] = &unk_1E7576828;
    objc_copyWeak(&v178, buf);
    v159 = [v158 initWithBlock:v177];
    objc_destroyWeak(&v178);
    objc_destroyWeak(buf);
    v160 = *(v12 + 40);
    *(v12 + 40) = v159;

    v161 = objc_initWeak(buf, v12);
    v162 = objc_alloc(MEMORY[0x1E69BF270]);
    v175[0] = MEMORY[0x1E69E9820];
    v175[1] = 3221225472;
    v175[2] = __109__PLLibraryServicesManager_initWithLibraryBundle_backgroundJobService_cacheDeleteRegistration_delegateClass___block_invoke_32;
    v175[3] = &unk_1E7576828;
    objc_copyWeak(&v176, buf);
    v163 = [v162 initWithBlock:v175];
    objc_destroyWeak(&v176);
    objc_destroyWeak(buf);
    v164 = *(v12 + 41);
    *(v12 + 41) = v163;

    *(v12 + 88) = 0;
    *(v12 + 552) = 0u;
    [v12 _initSystemPhotoLibrarySpecificServices];
    if ([v12 isSyndicationPhotoLibrary])
    {
      [v12 _initSyndicationPhotoLibrarySpecificServices];
    }

    *(v12 + 100) = 9;
    objc_storeStrong(v12 + 60, obj);
    v165 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v166 = *(v12 + 51);
    *(v12 + 51) = v165;

    *(v12 + 104) = 0;
  }

  v167 = PLPhotosObjectLifecycleGetLog();
  if (os_log_type_enabled(v167, OS_LOG_TYPE_DEBUG))
  {
    v168 = objc_opt_class();
    *buf = 138412802;
    v242 = v168;
    v243 = 2048;
    v244 = v12;
    v245 = 2112;
    v246 = v11;
    _os_log_impl(&dword_19BF1F000, v167, OS_LOG_TYPE_DEBUG, "%@ %p initWithLibraryBundle:%@", buf, 0x20u);
  }

  return v12;
}

PLDatabaseContext *__109__PLLibraryServicesManager_initWithLibraryBundle_backgroundJobService_cacheDeleteRegistration_delegateClass___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [[PLDatabaseContext alloc] initWithLibraryBundle:*(a1 + 32)];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

PLImageWriter *__109__PLLibraryServicesManager_initWithLibraryBundle_backgroundJobService_cacheDeleteRegistration_delegateClass___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = [[PLImageWriter alloc] initWithLibraryServicesManager:WeakRetained];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

PLModelMigrator *__109__PLLibraryServicesManager_initWithLibraryBundle_backgroundJobService_cacheDeleteRegistration_delegateClass___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = [PLModelMigrator alloc];
    v3 = [WeakRetained pathManager];
    v4 = [(PLModelMigrator *)v2 initWithPathManager:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id __109__PLLibraryServicesManager_initWithLibraryBundle_backgroundJobService_cacheDeleteRegistration_delegateClass___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained newSearchIndexingEngine];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id __109__PLLibraryServicesManager_initWithLibraryBundle_backgroundJobService_cacheDeleteRegistration_delegateClass___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained newSearchDonationProgress];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id __109__PLLibraryServicesManager_initWithLibraryBundle_backgroundJobService_cacheDeleteRegistration_delegateClass___block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained newMomentGenerationDataManager];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

PLDuplicateProcessor *__109__PLLibraryServicesManager_initWithLibraryBundle_backgroundJobService_cacheDeleteRegistration_delegateClass___block_invoke_7(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = [[PLDuplicateProcessor alloc] initWithLibraryServicesManager:WeakRetained];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id __109__PLLibraryServicesManager_initWithLibraryBundle_backgroundJobService_cacheDeleteRegistration_delegateClass___block_invoke_8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained newRebuildJournalManager];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id __109__PLLibraryServicesManager_initWithLibraryBundle_backgroundJobService_cacheDeleteRegistration_delegateClass___block_invoke_9(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained newComputeCacheManager];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

PLQuickActionManager *__109__PLLibraryServicesManager_initWithLibraryBundle_backgroundJobService_cacheDeleteRegistration_delegateClass___block_invoke_10(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = [PLQuickActionManager alloc];
    v3 = [WeakRetained databaseContext];
    v4 = [(PLQuickActionManager *)v2 initWithDatabaseContext:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

PLKeywordManager *__109__PLLibraryServicesManager_initWithLibraryBundle_backgroundJobService_cacheDeleteRegistration_delegateClass___block_invoke_11(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = [PLKeywordManager alloc];
    v3 = [WeakRetained pathManager];
    v4 = [(PLKeywordManager *)v2 initWithPathManager:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

PLPairing *__109__PLLibraryServicesManager_initWithLibraryBundle_backgroundJobService_cacheDeleteRegistration_delegateClass___block_invoke_12(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = objc_alloc_init(PLPairing);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

PLLibraryServicesCPLReadiness *__109__PLLibraryServicesManager_initWithLibraryBundle_backgroundJobService_cacheDeleteRegistration_delegateClass___block_invoke_13(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = [[PLLibraryServicesCPLReadiness alloc] initWithLibraryServicesManager:WeakRetained];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id __109__PLLibraryServicesManager_initWithLibraryBundle_backgroundJobService_cacheDeleteRegistration_delegateClass___block_invoke_14(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained newClientSideEncryptionManager];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

PLDeferredProcessingServiceHandler *__109__PLLibraryServicesManager_initWithLibraryBundle_backgroundJobService_cacheDeleteRegistration_delegateClass___block_invoke_15(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = objc_alloc_init(PLDeferredProcessingServiceHandler);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id __109__PLLibraryServicesManager_initWithLibraryBundle_backgroundJobService_cacheDeleteRegistration_delegateClass___block_invoke_16(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained newDirectServerConfiguration];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

PLCPLSettings *__109__PLLibraryServicesManager_initWithLibraryBundle_backgroundJobService_cacheDeleteRegistration_delegateClass___block_invoke_17(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = [PLCPLSettings alloc];
    v3 = [WeakRetained libraryBundle];
    v4 = [(PLCPLSettings *)v2 initWithLibraryBundle:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

PLAnalysisCoordinator *__109__PLLibraryServicesManager_initWithLibraryBundle_backgroundJobService_cacheDeleteRegistration_delegateClass___block_invoke_18(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = [[PLAnalysisCoordinator alloc] initWithLibraryServicesManager:WeakRetained];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id __109__PLLibraryServicesManager_initWithLibraryBundle_backgroundJobService_cacheDeleteRegistration_delegateClass___block_invoke_19(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained && [WeakRetained isCPLSyncablePhotoLibrary])
  {
    v3 = [v2 cplSettings];
    v4 = [v3 deriveMainScopeIdentifier];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id __109__PLLibraryServicesManager_initWithLibraryBundle_backgroundJobService_cacheDeleteRegistration_delegateClass___block_invoke_20(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained newAlbumCountCoalescer];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id __109__PLLibraryServicesManager_initWithLibraryBundle_backgroundJobService_cacheDeleteRegistration_delegateClass___block_invoke_21(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained newImportSessionCountCoalescer];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id __109__PLLibraryServicesManager_initWithLibraryBundle_backgroundJobService_cacheDeleteRegistration_delegateClass___block_invoke_22(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained newCloudPhotoLibraryManager];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

PLReadyForAnalysis *__109__PLLibraryServicesManager_initWithLibraryBundle_backgroundJobService_cacheDeleteRegistration_delegateClass___block_invoke_23(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = [[PLReadyForAnalysis alloc] initWithLibraryServicesManager:WeakRetained];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

PLFeatureAvailabilityProgressDelegate *__109__PLLibraryServicesManager_initWithLibraryBundle_backgroundJobService_cacheDeleteRegistration_delegateClass___block_invoke_24(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = [[PLFeatureAvailabilityProgressDelegate alloc] initWithLibraryServicesManager:WeakRetained];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

PLFeatureAvailabilityTransitionDelegate *__109__PLLibraryServicesManager_initWithLibraryBundle_backgroundJobService_cacheDeleteRegistration_delegateClass___block_invoke_25(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = [[PLFeatureAvailabilityTransitionDelegate alloc] initWithLibraryServicesManager:WeakRetained];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

PLFeatureAvailabilityComputer *__109__PLLibraryServicesManager_initWithLibraryBundle_backgroundJobService_cacheDeleteRegistration_delegateClass___block_invoke_26(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = [PLFeatureAvailabilityComputer alloc];
    v3 = [WeakRetained availabilityTransitionDelegate];
    v4 = [WeakRetained availabilityProgressDelegate];
    v5 = [(PLFeatureAvailabilityComputer *)v2 initWithTransitionDelegate:v3 progressDelegate:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

PLCloudIdentifierReservationSupport *__109__PLLibraryServicesManager_initWithLibraryBundle_backgroundJobService_cacheDeleteRegistration_delegateClass___block_invoke_27(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = objc_alloc_init(PLCloudIdentifierReservationSupport);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id __109__PLLibraryServicesManager_initWithLibraryBundle_backgroundJobService_cacheDeleteRegistration_delegateClass___block_invoke_28(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained cplSettings];
    v4 = [v3 fingerprintContext];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

PLCollectionShareCPLBackend *__109__PLLibraryServicesManager_initWithLibraryBundle_backgroundJobService_cacheDeleteRegistration_delegateClass___block_invoke_29(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = objc_alloc_init(PLCollectionShareCPLBackend);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

PLCollectionShareSharedStreamBackend *__109__PLLibraryServicesManager_initWithLibraryBundle_backgroundJobService_cacheDeleteRegistration_delegateClass___block_invoke_30(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = objc_alloc_init(PLCollectionShareSharedStreamBackend);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

PLIntensiveResourceTaskManager *__109__PLLibraryServicesManager_initWithLibraryBundle_backgroundJobService_cacheDeleteRegistration_delegateClass___block_invoke_31(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = objc_alloc_init(PLIntensiveResourceTaskManager);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id __109__PLLibraryServicesManager_initWithLibraryBundle_backgroundJobService_cacheDeleteRegistration_delegateClass___block_invoke_32(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained newBackgroundAssetResourceUploader];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)statusDescription
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = [(PLLibraryServicesManager *)self activeOperations];
  v4 = [(PLLibraryServicesManager *)self pendingOperations];
  v5 = MEMORY[0x1E696AD60];
  v6 = [(PLLibraryServicesManager *)self libraryURL];
  v7 = [v6 path];
  v8 = [(PLLibraryServicesManager *)self currentStateNode];
  [v8 state];
  v9 = PLStringFromLibraryServicesState();
  v10 = [v5 stringWithFormat:@"%@ [%@, %d active, %d pending]\n", v7, v9, objc_msgSend(v3, "count"), objc_msgSend(v4, "count")];

  v28 = v3;
  if ([v3 count])
  {
    [v10 appendFormat:@"  Active operations\n"];
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v11 = v3;
    v12 = [v11 countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = 0;
      v15 = *v34;
      do
      {
        v16 = 0;
        v17 = v14;
        do
        {
          if (*v34 != v15)
          {
            objc_enumerationMutation(v11);
          }

          v14 = (v17 + 1);
          v18 = [*(*(&v33 + 1) + 8 * v16) statusDescription];
          [v10 appendFormat:@"  %d: %@\n", v17, v18];

          ++v16;
          v17 = v14;
        }

        while (v13 != v16);
        v13 = [v11 countByEnumeratingWithState:&v33 objects:v38 count:16];
      }

      while (v13);
    }

    v3 = v28;
  }

  if ([v4 count])
  {
    [v10 appendFormat:@"  Pending operations\n"];
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v19 = v4;
    v20 = [v19 countByEnumeratingWithState:&v29 objects:v37 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = 0;
      v23 = *v30;
      do
      {
        v24 = 0;
        v25 = v22;
        do
        {
          if (*v30 != v23)
          {
            objc_enumerationMutation(v19);
          }

          v22 = (v25 + 1);
          v26 = [*(*(&v29 + 1) + 8 * v24) statusDescription];
          [v10 appendFormat:@"  %d: %@\n", v25, v26];

          ++v24;
          v25 = v22;
        }

        while (v21 != v24);
        v21 = [v19 countByEnumeratingWithState:&v29 objects:v37 count:16];
      }

      while (v21);
    }

    v3 = v28;
  }

  return v10;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  [(PLLibraryServicesManager *)self wellKnownPhotoLibraryIdentifier];
  v5 = PLStringFromWellKnownPhotoLibraryIdentifier();
  v6 = [v3 stringWithFormat:@"<%@: %p> %@ %@", v4, self, v5, self->_pathManager];

  return v6;
}

+ (id)errorForInvalidationError:(id)a3 userInfo:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 domain];
  v8 = *MEMORY[0x1E69BFF48];
  v9 = [v7 isEqualToString:*MEMORY[0x1E69BFF48]];

  if (v9)
  {
    v10 = v5;
  }

  else
  {
    v11 = *MEMORY[0x1E696AA08];
    if (v5)
    {
      v12 = [v6 objectForKeyedSubscript:*MEMORY[0x1E696AA08]];

      if (!v12)
      {
        v13 = objc_alloc(MEMORY[0x1E695DF90]);
        if (v6)
        {
          v14 = v6;
        }

        else
        {
          v14 = MEMORY[0x1E695E0F8];
        }

        v15 = [v13 initWithDictionary:v14];
        [v15 setObject:v5 forKeyedSubscript:v11];

        v6 = v15;
      }
    }

    v16 = [v6 objectForKeyedSubscript:v11];
    if (PLIsErrorEqualToCode())
    {
      v17 = 46516;
    }

    else
    {
      v17 = 43002;
    }

    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:v8 code:v17 userInfo:v6];
  }

  return v10;
}

+ (id)libraryServicesManagerForLibraryURL:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:a1 file:@"PLLibraryServicesManager.m" lineNumber:236 description:{@"Invalid parameter not satisfying: %@", @"url"}];
  }

  v6 = +[PLPhotoLibraryBundleController sharedBundleController];
  v7 = [v6 lookupOrCreateBundleForLibraryURL:v5];

  v8 = [v7 libraryServicesManager];

  return v8;
}

- (void)performTransactionForSyndicationDeleteManager:(id)a3 name:(const char *)a4 transaction:(id)a5
{
  v7 = a5;
  v8 = [(PLLibraryServicesManager *)self databaseContext];
  v9 = [v8 newShortLivedLibraryWithName:a4];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __126__PLLibraryServicesManager_PLSyndicationDeleteEngineDelegate__performTransactionForSyndicationDeleteManager_name_transaction___block_invoke;
  v12[3] = &unk_1E7577C08;
  v13 = v9;
  v14 = v7;
  v10 = v9;
  v11 = v7;
  [v10 performTransactionAndWait:v12];
}

void __126__PLLibraryServicesManager_PLSyndicationDeleteEngineDelegate__performTransactionForSyndicationDeleteManager_name_transaction___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) managedObjectContext];
  (*(v1 + 16))(v1, v2);
}

@end