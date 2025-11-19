@interface PRSService
- (PRSService)init;
- (id)_serviceInterfaceWithError:(id *)a3;
- (id)fetchActivePosterForRole:(id)a3 error:(id *)a4;
- (void)_refreshPosterDescriptorsForExtension:(id)a3 sessionInfo:(id)a4 completion:(id)a5;
- (void)_selectConfigurationAndRefreshSnapshot:(id)a3 completion:(id)a4;
- (void)associateConfigurationMatchingUUID:(id)a3 focusModeActivityUUID:(id)a4 completion:(id)a5;
- (void)clearMigrationFlags:(id)a3;
- (void)commitSuggestionsForConfigurationMatchingUUID:(id)a3 selectSuggestionDescriptorUUID:(id)a4 completion:(id)a5;
- (void)createAndSelectLegacyPosterConfigurationIfNeededWithCompletion:(id)a3;
- (void)createPosterConfigurationForProviderIdentifier:(id)a3 posterDescriptorIdentifier:(id)a4 role:(id)a5 completion:(id)a6;
- (void)dealloc;
- (void)deleteArchivedDataStoreNamed:(id)a3 completion:(id)a4;
- (void)deleteDataStoreWithCompletion:(id)a3;
- (void)deleteHostConfigurationForRole:(id)a3 completion:(id)a4;
- (void)deletePosterConfigurationsMatchingUUID:(id)a3 completion:(id)a4;
- (void)deletePosterDescriptorsForExtension:(id)a3 completion:(id)a4;
- (void)deleteSnapshotsWithCompletion:(id)a3;
- (void)deleteTransientDataWithCompletion:(id)a3;
- (void)exportArchivedDataStoreNamed:(id)a3 completion:(id)a4;
- (void)exportCurrentDataStoreToURL:(id)a3 options:(id)a4 sandboxToken:(id)a5 error:(id *)a6;
- (void)exportPosterConfigurationMatchingUUID:(id)a3 completion:(id)a4;
- (void)fetchActiveConfiguration:(id)a3;
- (void)fetchActivePosterForRole:(id)a3 completion:(id)a4;
- (void)fetchArchivedDataStoreNamesWithCompletion:(id)a3;
- (void)fetchAssociatedHomeScreenPosterConfigurationUUID:(id)a3 completion:(id)a4;
- (void)fetchChargerIdentifierRelationshipsWithCompletion:(id)a3;
- (void)fetchContentCutoutBoundsForActivePosterWithOrientation:(int64_t)a3 completionHandler:(id)a4;
- (void)fetchContentCutoutBoundsForPosterConfiguration:(id)a3 orientation:(int64_t)a4 completionHandler:(id)a5;
- (void)fetchContentObstructionBoundsForActivePosterWithOrientation:(int64_t)a3 completionHandler:(id)a4;
- (void)fetchContentObstructionBoundsForPosterConfiguration:(id)a3 orientation:(int64_t)a4 completionHandler:(id)a5;
- (void)fetchExtendedContentCutoutBoundsForOrientation:(int64_t)a3 completionHandler:(id)a4;
- (void)fetchExtensionIdentifiersWithCompletion:(id)a3;
- (void)fetchFocusUUIDForConfiguration:(id)a3 completion:(id)a4;
- (void)fetchGallery:(id)a3;
- (void)fetchLimitedOcclusionBoundsForPosterConfiguration:(id)a3 orientation:(int64_t)a4 completionHandler:(id)a5;
- (void)fetchMaximalContentCutoutBoundsForOrientation:(int64_t)a3 completionHandler:(id)a4;
- (void)fetchObscurableBoundsForPosterConfiguration:(id)a3 orientation:(int64_t)a4 completionHandler:(id)a5;
- (void)fetchPosterConfigurationsForExtension:(id)a3 completion:(id)a4;
- (void)fetchPosterConfigurationsForRole:(id)a3 completion:(id)a4;
- (void)fetchPosterDescriptorsForExtension:(id)a3 completion:(id)a4;
- (void)fetchPosterFocusSnapshotsWithRequest:(id)a3 completion:(id)a4;
- (void)fetchPosterSnapshotsWithRequest:(id)a3 completion:(id)a4;
- (void)fetchRuntimeAssertionState:(id)a3;
- (void)fetchSelectedConfiguration:(id)a3;
- (void)fetchSelectedPosterForRole:(id)a3 completion:(id)a4;
- (void)fetchStaticPosterDescriptorsForExtension:(id)a3 completion:(id)a4;
- (void)fetchSuggestionDescriptorsForConfigurationMatchingUUID:(id)a3 completion:(id)a4;
- (void)gatherDataFreshnessState:(id)a3;
- (void)ignoreExtension:(id)a3 completion:(id)a4;
- (void)importPosterConfigurationFromArchiveData:(id)a3 completion:(id)a4;
- (void)importPosterConfigurationFromArchivedData:(id)a3 completion:(id)a4;
- (void)ingestSnapshotCollection:(id)a3 forPosterConfiguration:(id)a4 completion:(id)a5;
- (void)init;
- (void)notePosterConfigurationUnderlyingModelDidChange:(id)a3;
- (void)notifyActiveChargerIdentifierDidUpdate:(id)a3 completion:(id)a4;
- (void)notifyAvailableFocusModesDidChange:(id)a3 completion:(id)a4;
- (void)notifyFocusModeDidChange:(id)a3 completion:(id)a4;
- (void)notifyPosterBoardOfApplicationUpdatesWithCompletion:(id)a3;
- (void)overnightUpdateWithCompletion:(id)a3;
- (void)prewarmWithCompletion:(id)a3;
- (void)pushPosterGalleryUpdate:(id)a3 completion:(id)a4;
- (void)pushToProactiveWithCompletion:(id)a3;
- (void)refreshPosterConfiguration:(id)a3 completion:(id)a4;
- (void)refreshPosterConfiguration:(id)a3 sessionInfo:(id)a4 completion:(id)a5;
- (void)refreshPosterConfigurationMatchingUUID:(id)a3 sessionInfo:(id)a4 completion:(id)a5;
- (void)refreshSnapshotForGalleryItemsMatchingDescriptorIdentifier:(id)a3 extensionIdentifier:(id)a4 completion:(id)a5;
- (void)refreshSnapshotForPosterConfiguration:(id)a3 completion:(id)a4;
- (void)refreshSnapshotForPosterConfigurationMatchingUUID:(id)a3 completion:(id)a4;
- (void)refreshSuggestionDescriptorsForConfigurationMatchingUUID:(id)a3 sessionInfo:(id)a4 completion:(id)a5;
- (void)removeAllFocusConfigurationsMatchingFocusUUID:(id)a3 completion:(id)a4;
- (void)resetRole:(id)a3 completion:(id)a4;
- (void)retrieveGallery:(id)a3;
- (void)setHostConfiguration:(id)a3 forRole:(id)a4 completion:(id)a5;
- (void)stashCurrentDataStoreWithName:(id)a3 options:(id)a4 completion:(id)a5;
- (void)triggerMessedUpDataProtectionWithCompletion:(id)a3;
- (void)unignoreExtension:(id)a3 completion:(id)a4;
- (void)updatePosterConfiguration:(id)a3 update:(id)a4 completion:(id)a5;
- (void)updatePosterConfigurationMatchingUUID:(id)a3 updates:(id)a4 completion:(id)a5;
- (void)updatePosterConfigurationsFromHostForRole:(id)a3 completion:(id)a4;
- (void)updateSelectedForRoleIdentifier:(id)a3 newlySelectedConfiguration:(id)a4 completion:(id)a5;
- (void)updateToSelectedConfigurationMatchingUUID:(id)a3 role:(id)a4 completion:(id)a5;
@end

@implementation PRSService

- (PRSService)init
{
  v19.receiver = self;
  v19.super_class = PRSService;
  v2 = [(PRSService *)&v19 init];
  if (v2)
  {
    v3 = PRSServiceInterface();
    v4 = MEMORY[0x1E698F498];
    v5 = [v3 identifier];
    v6 = [v4 endpointForMachName:@"com.apple.posterboardservices.services" service:v5 instance:0];

    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    if (v6)
    {
      v9 = [MEMORY[0x1E698F490] connectionWithEndpoint:v6];
      serviceConnection = v2->_serviceConnection;
      v2->_serviceConnection = v9;

      objc_initWeak(&location, v2);
      v11 = v2->_serviceConnection;
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __18__PRSService_init__block_invoke;
      v14[3] = &unk_1E818D6B8;
      v15 = v3;
      v16 = v8;
      objc_copyWeak(&v17, &location);
      [(BSServiceConnectionClient *)v11 configureConnection:v14];
      objc_destroyWeak(&v17);

      objc_destroyWeak(&location);
    }

    else
    {
      v12 = PRSLogCommon();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [PRSService init];
      }
    }
  }

  return v2;
}

void __18__PRSService_init__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setInterface:*(a1 + 32)];
  v4 = PRSDefaultServiceQuality();
  [v3 setServiceQuality:v4];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __18__PRSService_init__block_invoke_2;
  v8[3] = &unk_1E818D668;
  v9 = *(a1 + 40);
  objc_copyWeak(&v10, (a1 + 48));
  [v3 setInterruptionHandler:v8];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __18__PRSService_init__block_invoke_8;
  v5[3] = &unk_1E818D690;
  v6 = *(a1 + 40);
  objc_copyWeak(&v7, (a1 + 48));
  [v3 setInvalidationHandler:v5];
  objc_destroyWeak(&v7);

  objc_destroyWeak(&v10);
}

void __18__PRSService_init__block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = PRSLogObserver();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v6 = 138543618;
    v7 = v3;
    v8 = 2048;
    v9 = WeakRetained;
    _os_log_impl(&dword_1C26FF000, v2, OS_LOG_TYPE_DEFAULT, "<%{public}@:%p interrupted", &v6, 0x16u);
  }

  v5 = *MEMORY[0x1E69E9840];
}

void __18__PRSService_init__block_invoke_8(uint64_t a1)
{
  v2 = PRSLogObserver();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __18__PRSService_init__block_invoke_8_cold_1(a1);
  }
}

- (void)dealloc
{
  [(BSServiceConnectionClient *)self->_serviceConnection invalidate];
  v3.receiver = self;
  v3.super_class = PRSService;
  [(PRSService *)&v3 dealloc];
}

- (void)deleteDataStoreWithCompletion:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [PRSService deleteDataStoreWithCompletion:];
  }

  v6 = PRSLogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [PRSService deleteDataStoreWithCompletion:];
  }

  v14 = 0;
  v7 = [(PRSService *)self _serviceInterfaceWithError:&v14];
  v8 = v14;
  if (v7)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __44__PRSService_deleteDataStoreWithCompletion___block_invoke;
    v9[3] = &unk_1E818D6E0;
    v13 = a2;
    v10 = v7;
    v11 = self;
    v12 = v5;
    [v10 invalidateDataStoreWithCompletion:v9];
  }

  else if (v5)
  {
    (*(v5 + 2))(v5, v8);
  }
}

void __44__PRSService_deleteDataStoreWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = PRSLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __44__PRSService_deleteDataStoreWithCompletion___block_invoke_cold_1();
    }

    [*(a1 + 32) terminate];
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__PRSService_deleteDataStoreWithCompletion___block_invoke_24;
  v7[3] = &unk_1E818D6E0;
  v10 = *(a1 + 56);
  v6 = *(a1 + 32);
  v5 = v6.i64[0];
  v8 = vextq_s8(v6, v6, 8uLL);
  v9 = *(a1 + 48);
  [v5 deleteDataStoreWithCompletion:v7];
}

void __44__PRSService_deleteDataStoreWithCompletion___block_invoke_24(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PRSLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __44__PRSService_deleteDataStoreWithCompletion___block_invoke_24_cold_1();
  }

  [*(a1 + 40) terminate];
  (*(*(a1 + 48) + 16))();
}

- (void)resetRole:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    [PRSService resetRole:completion:];
  }

  v14 = 0;
  v9 = [(PRSService *)self _serviceInterfaceWithError:&v14];
  v10 = v14;
  if (v9)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __35__PRSService_resetRole_completion___block_invoke;
    v11[3] = &unk_1E818D708;
    v13 = a2;
    v11[4] = self;
    v12 = v8;
    [v9 resetRole:v7 completion:v11];
  }

  else if (v8)
  {
    (*(v8 + 2))(v8, v10);
  }
}

void __35__PRSService_resetRole_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PRSLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __35__PRSService_resetRole_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)deleteSnapshotsWithCompletion:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [PRSService deleteSnapshotsWithCompletion:];
  }

  v11 = 0;
  v6 = [(PRSService *)self _serviceInterfaceWithError:&v11];
  v7 = v11;
  if (v6)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __44__PRSService_deleteSnapshotsWithCompletion___block_invoke;
    v8[3] = &unk_1E818D708;
    v10 = a2;
    v8[4] = self;
    v9 = v5;
    [v6 deleteSnapshotsWithCompletion:v8];
  }

  else if (v5)
  {
    (*(v5 + 2))(v5, v7);
  }
}

void __44__PRSService_deleteSnapshotsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PRSLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __35__PRSService_resetRole_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)notifyPosterBoardOfApplicationUpdatesWithCompletion:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [PRSService notifyPosterBoardOfApplicationUpdatesWithCompletion:];
  }

  v11 = 0;
  v6 = [(PRSService *)self _serviceInterfaceWithError:&v11];
  v7 = v11;
  if (v6)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __66__PRSService_notifyPosterBoardOfApplicationUpdatesWithCompletion___block_invoke;
    v8[3] = &unk_1E818D708;
    v10 = a2;
    v8[4] = self;
    v9 = v5;
    [v6 notifyPosterBoardOfApplicationUpdatesWithCompletion:v8];
  }

  else if (v5)
  {
    (*(v5 + 2))(v5, v7);
  }
}

void __66__PRSService_notifyPosterBoardOfApplicationUpdatesWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PRSLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __35__PRSService_resetRole_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)deleteTransientDataWithCompletion:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [PRSService deleteTransientDataWithCompletion:];
  }

  v11 = 0;
  v6 = [(PRSService *)self _serviceInterfaceWithError:&v11];
  v7 = v11;
  if (v6)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __48__PRSService_deleteTransientDataWithCompletion___block_invoke;
    v8[3] = &unk_1E818D708;
    v10 = a2;
    v8[4] = self;
    v9 = v5;
    [v6 deleteTransientDataWithCompletion:v8];
  }

  else if (v5)
  {
    (*(v5 + 2))(v5, v7);
  }
}

void __48__PRSService_deleteTransientDataWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PRSLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __35__PRSService_resetRole_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)setHostConfiguration:(id)a3 forRole:(id)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v10)
  {
    [PRSService setHostConfiguration:forRole:completion:];
  }

  v17 = 0;
  v12 = [(PRSService *)self _serviceInterfaceWithError:&v17];
  v13 = v17;
  if (v12)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __54__PRSService_setHostConfiguration_forRole_completion___block_invoke;
    v14[3] = &unk_1E818D708;
    v16 = a2;
    v14[4] = self;
    v15 = v11;
    [v12 setHostConfiguration:v9 forRole:v10 completion:v14];
  }

  else if (v11)
  {
    (*(v11 + 2))(v11, v13);
  }
}

void __54__PRSService_setHostConfiguration_forRole_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PRSLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __35__PRSService_resetRole_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

- (void)deleteHostConfigurationForRole:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    [PRSService deleteHostConfigurationForRole:completion:];
  }

  v14 = 0;
  v9 = [(PRSService *)self _serviceInterfaceWithError:&v14];
  v10 = v14;
  if (v9)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __56__PRSService_deleteHostConfigurationForRole_completion___block_invoke;
    v11[3] = &unk_1E818D708;
    v13 = a2;
    v11[4] = self;
    v12 = v8;
    [v9 deleteHostConfigurationForRole:v7 completion:v11];
  }

  else if (v8)
  {
    (*(v8 + 2))(v8, v10);
  }
}

void __56__PRSService_deleteHostConfigurationForRole_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PRSLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __35__PRSService_resetRole_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

- (void)updatePosterConfigurationsFromHostForRole:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    [PRSService updatePosterConfigurationsFromHostForRole:completion:];
  }

  v14 = 0;
  v9 = [(PRSService *)self _serviceInterfaceWithError:&v14];
  v10 = v14;
  if (v9)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __67__PRSService_updatePosterConfigurationsFromHostForRole_completion___block_invoke;
    v11[3] = &unk_1E818D708;
    v13 = a2;
    v11[4] = self;
    v12 = v8;
    [v9 updatePosterConfigurationsFromHostForRole:v7 completion:v11];
  }

  else if (v8)
  {
    (*(v8 + 2))(v8, v10);
  }
}

void __67__PRSService_updatePosterConfigurationsFromHostForRole_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PRSLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __35__PRSService_resetRole_completion___block_invoke_cold_1();
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

- (void)fetchExtensionIdentifiersWithCompletion:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [PRSService fetchExtensionIdentifiersWithCompletion:];
  }

  v11 = 0;
  v6 = [(PRSService *)self _serviceInterfaceWithError:&v11];
  v7 = v11;
  if (v6)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __54__PRSService_fetchExtensionIdentifiersWithCompletion___block_invoke;
    v8[3] = &unk_1E818D730;
    v10 = a2;
    v8[4] = self;
    v9 = v5;
    [v6 fetchExtensionIdentifiersWithCompletion:v8];
  }

  else if (v5)
  {
    (*(v5 + 2))(v5, 0, v7);
  }
}

void __54__PRSService_fetchExtensionIdentifiersWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = PRSLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __35__PRSService_resetRole_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)fetchPosterDescriptorsForExtension:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    [PRSService fetchPosterDescriptorsForExtension:completion:];
  }

  v14 = 0;
  v9 = [(PRSService *)self _serviceInterfaceWithError:&v14];
  v10 = v14;
  if (v9)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __60__PRSService_fetchPosterDescriptorsForExtension_completion___block_invoke;
    v11[3] = &unk_1E818D758;
    v13 = a2;
    v11[4] = self;
    v12 = v8;
    [v9 fetchPosterDescriptorsForExtension:v7 completion:v11];
  }

  else
  {
    (*(v8 + 2))(v8, 0, v10);
  }
}

void __60__PRSService_fetchPosterDescriptorsForExtension_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = PRSLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __35__PRSService_resetRole_completion___block_invoke_cold_1();
  }

  v8 = *(a1 + 40);
  if (v6)
  {
    (*(v8 + 16))(v8, 0, v6);
  }

  else
  {
    v9 = [v5 bs_mapNoNulls:&__block_literal_global_14];
    (*(v8 + 16))(v8, v9, 0);
  }
}

- (void)fetchStaticPosterDescriptorsForExtension:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    [PRSService fetchStaticPosterDescriptorsForExtension:completion:];
  }

  v14 = 0;
  v9 = [(PRSService *)self _serviceInterfaceWithError:&v14];
  v10 = v14;
  if (v9)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __66__PRSService_fetchStaticPosterDescriptorsForExtension_completion___block_invoke;
    v11[3] = &unk_1E818D758;
    v13 = a2;
    v11[4] = self;
    v12 = v8;
    [v9 fetchStaticPosterDescriptorsForExtension:v7 completion:v11];
  }

  else
  {
    (*(v8 + 2))(v8, 0, v10);
  }
}

void __66__PRSService_fetchStaticPosterDescriptorsForExtension_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = PRSLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __35__PRSService_resetRole_completion___block_invoke_cold_1();
  }

  v8 = *(a1 + 40);
  if (v6)
  {
    (*(v8 + 16))(v8, 0, v6);
  }

  else
  {
    v9 = [v5 bs_mapNoNulls:&__block_literal_global_14];
    (*(v8 + 16))(v8, v9, 0);
  }
}

- (void)_refreshPosterDescriptorsForExtension:(id)a3 sessionInfo:(id)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v11)
  {
    [PRSService _refreshPosterDescriptorsForExtension:sessionInfo:completion:];
  }

  v17 = 0;
  v12 = [(PRSService *)self _serviceInterfaceWithError:&v17];
  v13 = v17;
  if (v12)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __75__PRSService__refreshPosterDescriptorsForExtension_sessionInfo_completion___block_invoke;
    v14[3] = &unk_1E818D758;
    v16 = a2;
    v14[4] = self;
    v15 = v11;
    [v12 refreshPosterDescriptorsForExtension:v9 sessionInfo:v10 completion:v14];
  }

  else if (v11)
  {
    (*(v11 + 2))(v11, 0, v13);
  }
}

void __75__PRSService__refreshPosterDescriptorsForExtension_sessionInfo_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = PRSLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __35__PRSService_resetRole_completion___block_invoke_cold_1();
  }

  v8 = *(a1 + 40);
  if (v6)
  {
    (*(v8 + 16))(v8, 0, v6);
  }

  else
  {
    v9 = [v5 bs_mapNoNulls:&__block_literal_global_14];
    (*(v8 + 16))(v8, v9, 0);
  }
}

- (void)deletePosterDescriptorsForExtension:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [PRSService deletePosterDescriptorsForExtension:completion:];
    if (v7)
    {
      goto LABEL_3;
    }
  }

  [PRSService deletePosterDescriptorsForExtension:completion:];
LABEL_3:
  v14 = 0;
  v9 = [(PRSService *)self _serviceInterfaceWithError:&v14];
  v10 = v14;
  if (v9)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __61__PRSService_deletePosterDescriptorsForExtension_completion___block_invoke;
    v11[3] = &unk_1E818D708;
    v13 = a2;
    v11[4] = self;
    v12 = v8;
    [v9 deletePosterDescriptorsForExtension:v7 completion:v11];
  }

  else if (v8)
  {
    (*(v8 + 2))(v8, v10);
  }
}

void __61__PRSService_deletePosterDescriptorsForExtension_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PRSLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __35__PRSService_resetRole_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)fetchRuntimeAssertionState:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [PRSService fetchRuntimeAssertionState:];
  }

  v11 = 0;
  v6 = [(PRSService *)self _serviceInterfaceWithError:&v11];
  v7 = v11;
  if (v6)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __41__PRSService_fetchRuntimeAssertionState___block_invoke;
    v8[3] = &unk_1E818D780;
    v10 = a2;
    v8[4] = self;
    v9 = v5;
    [v6 fetchRuntimeAssertionState:v8];
  }

  else if (v5)
  {
    (*(v5 + 2))(v5, 0, v7);
  }
}

void __41__PRSService_fetchRuntimeAssertionState___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = PRSLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __35__PRSService_resetRole_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)triggerMessedUpDataProtectionWithCompletion:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [PRSService triggerMessedUpDataProtectionWithCompletion:];
  }

  v11 = 0;
  v6 = [(PRSService *)self _serviceInterfaceWithError:&v11];
  v7 = v11;
  if (v6)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __58__PRSService_triggerMessedUpDataProtectionWithCompletion___block_invoke;
    v8[3] = &unk_1E818D708;
    v10 = a2;
    v8[4] = self;
    v9 = v5;
    [v6 triggerMessedUpDataProtectionWithCompletion:v8];
  }

  else if (v5)
  {
    (*(v5 + 2))(v5, v7);
  }
}

void __58__PRSService_triggerMessedUpDataProtectionWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PRSLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __35__PRSService_resetRole_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)fetchChargerIdentifierRelationshipsWithCompletion:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [PRSService fetchChargerIdentifierRelationshipsWithCompletion:];
  }

  v11 = 0;
  v6 = [(PRSService *)self _serviceInterfaceWithError:&v11];
  v7 = v11;
  if (v6)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __64__PRSService_fetchChargerIdentifierRelationshipsWithCompletion___block_invoke;
    v8[3] = &unk_1E818D7A8;
    v10 = a2;
    v8[4] = self;
    v9 = v5;
    [v6 fetchChargerIdentifierRelationshipsWithCompletion:v8];
  }

  else if (v5)
  {
    (*(v5 + 2))(v5, 0, v7);
  }
}

void __64__PRSService_fetchChargerIdentifierRelationshipsWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = PRSLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __35__PRSService_resetRole_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)createPosterConfigurationForProviderIdentifier:(id)a3 posterDescriptorIdentifier:(id)a4 role:(id)a5 completion:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (v14)
  {
    if (v11)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [PRSService createPosterConfigurationForProviderIdentifier:posterDescriptorIdentifier:role:completion:];
    if (v11)
    {
      goto LABEL_3;
    }
  }

  [PRSService createPosterConfigurationForProviderIdentifier:posterDescriptorIdentifier:role:completion:];
LABEL_3:
  if (!v13)
  {
    v13 = @"PRPosterRoleLockScreen";
  }

  v20 = 0;
  v15 = [(PRSService *)self _serviceInterfaceWithError:&v20];
  v16 = v20;
  if (v15)
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __104__PRSService_createPosterConfigurationForProviderIdentifier_posterDescriptorIdentifier_role_completion___block_invoke;
    v17[3] = &unk_1E818D070;
    v19 = a2;
    v17[4] = self;
    v18 = v14;
    [v15 createPosterConfigurationForProviderIdentifier:v11 posterDescriptorIdentifier:v12 role:v13 completion:v17];
  }

  else if (v14)
  {
    (*(v14 + 2))(v14, 0, v16);
  }
}

void __104__PRSService_createPosterConfigurationForProviderIdentifier_posterDescriptorIdentifier_role_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = PRSLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __35__PRSService_resetRole_completion___block_invoke_cold_1();
  }

  if (v5)
  {
    v8 = [[PRSPosterConfiguration alloc] _initWithPath:v5];
  }

  else
  {
    v8 = 0;
  }

  (*(*(a1 + 40) + 16))();
}

- (void)refreshPosterConfiguration:(id)a3 completion:(id)a4
{
  v10 = a3;
  v6 = a4;
  if (v10)
  {
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [PRSService refreshPosterConfiguration:completion:];
    if (v6)
    {
      goto LABEL_3;
    }
  }

  [PRSService refreshPosterConfiguration:completion:];
LABEL_3:
  v7 = [v10 _path];
  v8 = [v7 serverIdentity];
  v9 = [v8 posterUUID];

  [(PRSService *)self refreshPosterConfigurationMatchingUUID:v9 sessionInfo:0 completion:v6];
}

- (void)refreshPosterConfiguration:(id)a3 sessionInfo:(id)a4 completion:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  if (v13)
  {
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [PRSService refreshPosterConfiguration:sessionInfo:completion:];
    if (v9)
    {
      goto LABEL_3;
    }
  }

  [PRSService refreshPosterConfiguration:sessionInfo:completion:];
LABEL_3:
  v10 = [v13 _path];
  v11 = [v10 serverIdentity];
  v12 = [v11 posterUUID];

  [(PRSService *)self refreshPosterConfigurationMatchingUUID:v12 sessionInfo:v8 completion:v9];
}

- (void)refreshPosterConfigurationMatchingUUID:(id)a3 sessionInfo:(id)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v11)
  {
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [PRSService refreshPosterConfigurationMatchingUUID:sessionInfo:completion:];
    if (v9)
    {
      goto LABEL_3;
    }
  }

  [PRSService refreshPosterConfigurationMatchingUUID:sessionInfo:completion:];
LABEL_3:
  v17 = 0;
  v12 = [(PRSService *)self _serviceInterfaceWithError:&v17];
  v13 = v17;
  if (v12)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __76__PRSService_refreshPosterConfigurationMatchingUUID_sessionInfo_completion___block_invoke;
    v14[3] = &unk_1E818D070;
    v16 = a2;
    v14[4] = self;
    v15 = v11;
    [v12 refreshPosterConfigurationMatchingUUID:v9 sessionInfo:v10 completion:v14];
  }

  else if (v11)
  {
    (*(v11 + 2))(v11, 0, v13);
  }
}

void __76__PRSService_refreshPosterConfigurationMatchingUUID_sessionInfo_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = PRSLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __35__PRSService_resetRole_completion___block_invoke_cold_1();
  }

  if (v5)
  {
    v8 = [[PRSPosterConfiguration alloc] _initWithPath:v5];
  }

  else
  {
    v8 = 0;
  }

  (*(*(a1 + 40) + 16))();
}

- (void)notePosterConfigurationUnderlyingModelDidChange:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [PRSService notePosterConfigurationUnderlyingModelDidChange:];
  }

  v7 = 0;
  v5 = [(PRSService *)self _serviceInterfaceWithError:&v7];
  v6 = v5;
  if (v5)
  {
    [v5 notePosterConfigurationUnderlyingModelDidChange:v4];
  }
}

- (void)associateConfigurationMatchingUUID:(id)a3 focusModeActivityUUID:(id)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v11)
  {
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [PRSService associateConfigurationMatchingUUID:focusModeActivityUUID:completion:];
    if (v9)
    {
      goto LABEL_3;
    }
  }

  [PRSService associateConfigurationMatchingUUID:focusModeActivityUUID:completion:];
LABEL_3:
  v17 = 0;
  v12 = [(PRSService *)self _serviceInterfaceWithError:&v17];
  v13 = v17;
  if (v12)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __82__PRSService_associateConfigurationMatchingUUID_focusModeActivityUUID_completion___block_invoke;
    v14[3] = &unk_1E818D708;
    v16 = a2;
    v14[4] = self;
    v15 = v11;
    [v12 associateConfigurationMatchingUUID:v9 focusModeActivityUUID:v10 completion:v14];
  }

  else if (v11)
  {
    (*(v11 + 2))(v11, v13);
  }
}

void __82__PRSService_associateConfigurationMatchingUUID_focusModeActivityUUID_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PRSLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __35__PRSService_resetRole_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)fetchPosterConfigurationsForExtension:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [PRSService fetchPosterConfigurationsForExtension:completion:];
    if (v9)
    {
      goto LABEL_3;
    }
  }

  [PRSService fetchPosterConfigurationsForExtension:completion:];
LABEL_3:
  v15 = 0;
  v10 = [(PRSService *)self _serviceInterfaceWithError:&v15];
  v11 = v15;
  if (v10)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __63__PRSService_fetchPosterConfigurationsForExtension_completion___block_invoke;
    v12[3] = &unk_1E818D758;
    v14 = a2;
    v12[4] = self;
    v13 = v9;
    [v10 fetchPosterConfigurationsForExtension:v7 completion:v12];
  }

  else if (v9)
  {
    (v9)[2](v9, 0, v11);
  }
}

void __63__PRSService_fetchPosterConfigurationsForExtension_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = PRSLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __35__PRSService_resetRole_completion___block_invoke_cold_1();
  }

  v8 = *(a1 + 40);
  v9 = [v6 bs_mapNoNulls:&__block_literal_global_3];

  (*(v8 + 16))(v8, v9, v5);
}

- (void)fetchPosterSnapshotsWithRequest:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [PRSService fetchPosterSnapshotsWithRequest:completion:];
    if (v9)
    {
      goto LABEL_3;
    }
  }

  [PRSService fetchPosterSnapshotsWithRequest:completion:];
LABEL_3:
  v10 = objc_opt_class();
  v11 = v7;
  if (v10)
  {
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  if (v13)
  {
    v14 = [[PRSPosterSnapshotRequest alloc] initWithFocusPosterRequest:v13];

    v11 = v14;
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __57__PRSService_fetchPosterSnapshotsWithRequest_completion___block_invoke;
  v17[3] = &unk_1E818D7F8;
  v18 = v11;
  v19 = self;
  v20 = v9;
  v21 = a2;
  v15 = v9;
  v16 = v11;
  [PRSHostContext hostContextWithCompletion:v17];
}

void __57__PRSService_fetchPosterSnapshotsWithRequest_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setHostContext:a2];
  v3 = *(a1 + 40);
  v12 = 0;
  v4 = [v3 _serviceInterfaceWithError:&v12];
  v5 = v12;
  if (v4)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __57__PRSService_fetchPosterSnapshotsWithRequest_completion___block_invoke_2;
    v10[3] = &unk_1E818D7D0;
    v6 = *(a1 + 32);
    v10[4] = *(a1 + 40);
    v9 = *(a1 + 48);
    v7 = v9;
    v11 = v9;
    [v4 fetchPosterSnapshotsWithRequest:v6 completion:v10];
  }

  else
  {
    v8 = *(a1 + 48);
    if (v8)
    {
      (*(v8 + 16))(v8, 0, v5);
    }
  }
}

void __57__PRSService_fetchPosterSnapshotsWithRequest_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = PRSLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __35__PRSService_resetRole_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)fetchPosterFocusSnapshotsWithRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[PRSPosterSnapshotRequest alloc] initWithFocusPosterRequest:v7];

  [(PRSService *)self fetchPosterSnapshotsWithRequest:v8 completion:v6];
}

- (void)deletePosterConfigurationsMatchingUUID:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [PRSService deletePosterConfigurationsMatchingUUID:completion:];
    if (v9)
    {
      goto LABEL_3;
    }
  }

  [PRSService deletePosterConfigurationsMatchingUUID:completion:];
LABEL_3:
  v15 = 0;
  v10 = [(PRSService *)self _serviceInterfaceWithError:&v15];
  v11 = v15;
  if (v10)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __64__PRSService_deletePosterConfigurationsMatchingUUID_completion___block_invoke;
    v12[3] = &unk_1E818D708;
    v14 = a2;
    v12[4] = self;
    v13 = v9;
    [v10 deletePosterConfigurationsMatchingUUID:v7 completion:v12];
  }

  else if (v9)
  {
    (v9)[2](v9, v11);
  }
}

void __64__PRSService_deletePosterConfigurationsMatchingUUID_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PRSLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __35__PRSService_resetRole_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)refreshSuggestionDescriptorsForConfigurationMatchingUUID:(id)a3 sessionInfo:(id)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v11;
  if (v9)
  {
    if (v11)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [PRSService refreshSuggestionDescriptorsForConfigurationMatchingUUID:sessionInfo:completion:];
    if (v12)
    {
      goto LABEL_3;
    }
  }

  [PRSService refreshSuggestionDescriptorsForConfigurationMatchingUUID:sessionInfo:completion:];
LABEL_3:
  v18 = 0;
  v13 = [(PRSService *)self _serviceInterfaceWithError:&v18];
  v14 = v18;
  if (v13)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __94__PRSService_refreshSuggestionDescriptorsForConfigurationMatchingUUID_sessionInfo_completion___block_invoke;
    v15[3] = &unk_1E818CFD8;
    v17 = a2;
    v15[4] = self;
    v16 = v12;
    [v13 refreshSuggestionDescriptorsForConfigurationMatchingUUID:v9 sessionInfo:v10 completion:v15];
  }

  else if (v12)
  {
    (v12)[2](v12, 0, v14);
  }
}

void __94__PRSService_refreshSuggestionDescriptorsForConfigurationMatchingUUID_sessionInfo_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = PRSLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __35__PRSService_resetRole_completion___block_invoke_cold_1();
  }

  v8 = *(a1 + 40);
  v9 = [v6 bs_mapNoNulls:&__block_literal_global_14];

  (*(v8 + 16))(v8, v9, v5);
}

- (void)fetchSuggestionDescriptorsForConfigurationMatchingUUID:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [PRSService fetchSuggestionDescriptorsForConfigurationMatchingUUID:completion:];
    if (v9)
    {
      goto LABEL_3;
    }
  }

  [PRSService fetchSuggestionDescriptorsForConfigurationMatchingUUID:completion:];
LABEL_3:
  v15 = 0;
  v10 = [(PRSService *)self _serviceInterfaceWithError:&v15];
  v11 = v15;
  if (v10)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __80__PRSService_fetchSuggestionDescriptorsForConfigurationMatchingUUID_completion___block_invoke;
    v12[3] = &unk_1E818CFD8;
    v14 = a2;
    v12[4] = self;
    v13 = v9;
    [v10 fetchSuggestionDescriptorsForConfigurationMatchingUUID:v7 completion:v12];
  }

  else if (v9)
  {
    (v9)[2](v9, 0, v11);
  }
}

void __80__PRSService_fetchSuggestionDescriptorsForConfigurationMatchingUUID_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = PRSLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __35__PRSService_resetRole_completion___block_invoke_cold_1();
  }

  v8 = *(a1 + 40);
  v9 = [v6 bs_mapNoNulls:&__block_literal_global_14];

  (*(v8 + 16))(v8, v9, v5);
}

- (void)commitSuggestionsForConfigurationMatchingUUID:(id)a3 selectSuggestionDescriptorUUID:(id)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v11;
  if (v9)
  {
    if (v11)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [PRSService commitSuggestionsForConfigurationMatchingUUID:selectSuggestionDescriptorUUID:completion:];
    if (v12)
    {
      goto LABEL_3;
    }
  }

  [PRSService commitSuggestionsForConfigurationMatchingUUID:selectSuggestionDescriptorUUID:completion:];
LABEL_3:
  v18 = 0;
  v13 = [(PRSService *)self _serviceInterfaceWithError:&v18];
  v14 = v18;
  if (v13)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __102__PRSService_commitSuggestionsForConfigurationMatchingUUID_selectSuggestionDescriptorUUID_completion___block_invoke;
    v15[3] = &unk_1E818D708;
    v17 = a2;
    v15[4] = self;
    v16 = v12;
    [v13 commitSuggestionsForConfigurationMatchingUUID:v9 selectSuggestionDescriptorUUID:v10 completion:v15];
  }

  else if (v12)
  {
    (v12)[2](v12, v14);
  }
}

void __102__PRSService_commitSuggestionsForConfigurationMatchingUUID_selectSuggestionDescriptorUUID_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PRSLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __35__PRSService_resetRole_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)exportPosterConfigurationMatchingUUID:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [PRSService exportPosterConfigurationMatchingUUID:completion:];
    if (v9)
    {
      goto LABEL_3;
    }
  }

  [PRSService exportPosterConfigurationMatchingUUID:completion:];
LABEL_3:
  v15 = 0;
  v10 = [(PRSService *)self _serviceInterfaceWithError:&v15];
  v11 = v15;
  if (v10)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __63__PRSService_exportPosterConfigurationMatchingUUID_completion___block_invoke;
    v12[3] = &unk_1E818D820;
    v14 = a2;
    v12[4] = self;
    v13 = v9;
    [v10 exportPosterConfigurationMatchingUUID:v7 completion:v12];
  }

  else if (v9)
  {
    (v9)[2](v9, 0, v11);
  }
}

void __63__PRSService_exportPosterConfigurationMatchingUUID_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = PRSLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __35__PRSService_resetRole_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)importPosterConfigurationFromArchiveData:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [PRSService importPosterConfigurationFromArchiveData:completion:];
    if (v9)
    {
      goto LABEL_3;
    }
  }

  [PRSService importPosterConfigurationFromArchiveData:completion:];
LABEL_3:
  v15 = 0;
  v10 = [(PRSService *)self _serviceInterfaceWithError:&v15];
  v11 = v15;
  if (v10)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __66__PRSService_importPosterConfigurationFromArchiveData_completion___block_invoke;
    v12[3] = &unk_1E818D070;
    v14 = a2;
    v12[4] = self;
    v13 = v9;
    [v10 importPosterConfigurationFromArchiveData:v7 completion:v12];
  }

  else if (v9)
  {
    (v9)[2](v9, 0, v11);
  }
}

void __66__PRSService_importPosterConfigurationFromArchiveData_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = PRSLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __35__PRSService_resetRole_completion___block_invoke_cold_1();
  }

  v8 = *(a1 + 40);
  v9 = [v6 identity];

  v10 = [v9 posterUUID];
  (*(v8 + 16))(v8, v10, v5);
}

- (void)importPosterConfigurationFromArchivedData:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [PRSService importPosterConfigurationFromArchivedData:completion:];
    if (v9)
    {
      goto LABEL_3;
    }
  }

  [PRSService importPosterConfigurationFromArchivedData:completion:];
LABEL_3:
  v15 = 0;
  v10 = [(PRSService *)self _serviceInterfaceWithError:&v15];
  v11 = v15;
  if (v10)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __67__PRSService_importPosterConfigurationFromArchivedData_completion___block_invoke;
    v12[3] = &unk_1E818D070;
    v14 = a2;
    v12[4] = self;
    v13 = v9;
    [v10 importPosterConfigurationFromArchiveData:v7 completion:v12];
  }

  else if (v9)
  {
    (v9)[2](v9, 0, v11);
  }
}

void __67__PRSService_importPosterConfigurationFromArchivedData_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = PRSLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __35__PRSService_resetRole_completion___block_invoke_cold_1();
  }

  if (v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = [[PRSPosterConfiguration alloc] _initWithPath:v5];
  }

  (*(*(a1 + 40) + 16))();
}

- (void)updatePosterConfigurationMatchingUUID:(id)a3 updates:(id)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v10;
  NSClassFromString(&cfstr_Nsarray.isa);
  if (!v12)
  {
    [PRSService updatePosterConfigurationMatchingUUID:a2 updates:? completion:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PRSService updatePosterConfigurationMatchingUUID:a2 updates:? completion:?];
  }

  v13 = v9;
  NSClassFromString(&cfstr_Nsuuid.isa);
  if (!v13)
  {
    [PRSService updatePosterConfigurationMatchingUUID:a2 updates:? completion:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PRSService updatePosterConfigurationMatchingUUID:a2 updates:? completion:?];
  }

  if (!v11)
  {
    [PRSService updatePosterConfigurationMatchingUUID:updates:completion:];
  }

  v19 = 0;
  v14 = [(PRSService *)self _serviceInterfaceWithError:&v19];
  v15 = v19;
  if (v14)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __71__PRSService_updatePosterConfigurationMatchingUUID_updates_completion___block_invoke;
    v16[3] = &unk_1E818D848;
    v18 = a2;
    v16[4] = self;
    v17 = v11;
    [v14 updatePosterConfigurationMatchingUUID:v13 updates:v12 completion:v16];
  }

  else if (v11)
  {
    (*(v11 + 2))(v11, 0, 0, v15);
  }
}

void __71__PRSService_updatePosterConfigurationMatchingUUID_updates_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = PRSLogCommon();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    __35__PRSService_resetRole_completion___block_invoke_cold_1();
  }

  v11 = *(a1 + 40);
  if (v7)
  {
    v12 = [[PRSPosterConfiguration alloc] _initWithPath:v7];
    (*(v11 + 16))(v11, v12, v8, v9);
  }

  else
  {
    (*(v11 + 16))(v11, 0, v8, v9);
  }
}

- (void)updatePosterConfiguration:(id)a3 update:(id)a4 completion:(id)a5
{
  v24[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v10;
  NSClassFromString(&cfstr_Prsposterupdat_25.isa);
  if (!v12)
  {
    [PRSService updatePosterConfiguration:a2 update:? completion:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PRSService updatePosterConfiguration:a2 update:? completion:?];
  }

  v13 = v9;
  NSClassFromString(&cfstr_Prsposterconfi_1.isa);
  if (!v13)
  {
    [PRSService updatePosterConfiguration:a2 update:? completion:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PRSService updatePosterConfiguration:a2 update:? completion:?];
  }

  v14 = [v13 _path];
  v15 = [v14 isServerPosterPath];

  if ((v15 & 1) == 0)
  {
    [PRSService updatePosterConfiguration:a2 update:? completion:?];
  }

  if (!v11)
  {
    [PRSService updatePosterConfiguration:update:completion:];
  }

  v23 = 0;
  v16 = [(PRSService *)self _serviceInterfaceWithError:&v23];
  v17 = v23;
  if (v16)
  {
    v24[0] = v12;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __58__PRSService_updatePosterConfiguration_update_completion___block_invoke;
    v20[3] = &unk_1E818D848;
    v22 = a2;
    v20[4] = self;
    v21 = v11;
    [v16 updatePosterConfiguration:v13 updates:v18 completion:v20];
  }

  else if (v11)
  {
    (*(v11 + 2))(v11, 0, 0, v17);
  }

  v19 = *MEMORY[0x1E69E9840];
}

void __58__PRSService_updatePosterConfiguration_update_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = PRSLogCommon();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    __35__PRSService_resetRole_completion___block_invoke_cold_1();
  }

  v11 = *(a1 + 40);
  if (v7)
  {
    v12 = [[PRSPosterConfiguration alloc] _initWithPath:v7];
  }

  else
  {
    v12 = 0;
  }

  v13 = [v8 firstObject];
  (*(v11 + 16))(v11, v12, v13, v9);

  if (v7)
  {
  }
}

- (void)refreshSnapshotForPosterConfiguration:(id)a3 completion:(id)a4
{
  v13[1] = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v5 = MEMORY[0x1E696ABC0];
    v6 = a4;
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v12 = *MEMORY[0x1E696A588];
    v13[0] = @"Deprecated.";
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v10 = [v5 errorWithDomain:v8 code:1 userInfo:v9];
    (*(a4 + 2))(v6, v10);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)refreshSnapshotForPosterConfigurationMatchingUUID:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    [PRSService refreshSnapshotForPosterConfigurationMatchingUUID:completion:];
  }

  v14 = 0;
  v9 = [(PRSService *)self _serviceInterfaceWithError:&v14];
  v10 = v14;
  if (v9)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __75__PRSService_refreshSnapshotForPosterConfigurationMatchingUUID_completion___block_invoke;
    v11[3] = &unk_1E818D708;
    v13 = a2;
    v11[4] = self;
    v12 = v8;
    [v9 refreshSnapshotForPosterConfigurationMatchUUID:v7 completion:v11];
  }

  else if (v8)
  {
    (*(v8 + 2))(v8, v10);
  }
}

void __75__PRSService_refreshSnapshotForPosterConfigurationMatchingUUID_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PRSLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __35__PRSService_resetRole_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)ingestSnapshotCollection:(id)a3 forPosterConfiguration:(id)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v11;
  if (v9)
  {
    if (v11)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [PRSService ingestSnapshotCollection:forPosterConfiguration:completion:];
    if (v12)
    {
      goto LABEL_3;
    }
  }

  [PRSService ingestSnapshotCollection:forPosterConfiguration:completion:];
LABEL_3:
  v13 = [v10 _path];
  v14 = [v13 serverIdentity];
  v15 = [v14 posterUUID];

  v21 = 0;
  v16 = [(PRSService *)self _serviceInterfaceWithError:&v21];
  v17 = v21;
  if (v16)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __73__PRSService_ingestSnapshotCollection_forPosterConfiguration_completion___block_invoke;
    v18[3] = &unk_1E818D708;
    v20 = a2;
    v18[4] = self;
    v19 = v12;
    [v16 ingestSnapshotCollection:v9 forPosterConfigurationUUID:v15 completion:v18];
  }

  else if (v12)
  {
    (v12)[2](v12, v17);
  }
}

void __73__PRSService_ingestSnapshotCollection_forPosterConfiguration_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PRSLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __35__PRSService_resetRole_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)fetchContentObstructionBoundsForActivePosterWithOrientation:(int64_t)a3 completionHandler:(id)a4
{
  v7 = a4;
  if (!v7)
  {
    [PRSService fetchContentObstructionBoundsForActivePosterWithOrientation:completionHandler:];
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __92__PRSService_fetchContentObstructionBoundsForActivePosterWithOrientation_completionHandler___block_invoke;
  v9[3] = &unk_1E818D898;
  v11 = a3;
  v12 = a2;
  v9[4] = self;
  v10 = v7;
  v8 = v7;
  [(PRSService *)self fetchActivePosterConfiguration:v9];
}

void __92__PRSService_fetchContentObstructionBoundsForActivePosterWithOrientation_completionHandler___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    (*(a1[5] + 16))();
  }

  else
  {
    v8 = a1[4];
    v17 = 0;
    v9 = [v8 _serviceInterfaceWithError:&v17];
    v7 = v17;
    if (v9)
    {
      v10 = [v5 lockScreenPosterConfiguration];
      v11 = [MEMORY[0x1E696AD98] numberWithInteger:a1[6]];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __92__PRSService_fetchContentObstructionBoundsForActivePosterWithOrientation_completionHandler___block_invoke_2;
      v14[3] = &unk_1E818D870;
      v12 = a1[4];
      v13 = a1[5];
      v16 = a1[7];
      v14[4] = v12;
      v15 = v13;
      [v9 fetchContentObstructionBoundsForPosterConfiguration:v10 orientation:v11 completion:v14];
    }

    else
    {
      (*(a1[5] + 16))();
    }
  }
}

void __92__PRSService_fetchContentObstructionBoundsForActivePosterWithOrientation_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = PRSLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __35__PRSService_resetRole_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)fetchContentObstructionBoundsForPosterConfiguration:(id)a3 orientation:(int64_t)a4 completionHandler:(id)a5
{
  v9 = a3;
  v10 = a5;
  v17 = 0;
  v11 = [(PRSService *)self _serviceInterfaceWithError:&v17];
  v12 = v17;
  if (v11)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __96__PRSService_fetchContentObstructionBoundsForPosterConfiguration_orientation_completionHandler___block_invoke;
    v14[3] = &unk_1E818D870;
    v16 = a2;
    v14[4] = self;
    v15 = v10;
    [v11 fetchContentObstructionBoundsForPosterConfiguration:v9 orientation:v13 completion:v14];
  }

  else if (v10)
  {
    (*(v10 + 2))(v10, MEMORY[0x1E695E0F0], v12);
  }
}

void __96__PRSService_fetchContentObstructionBoundsForPosterConfiguration_orientation_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = PRSLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __35__PRSService_resetRole_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)fetchMaximalContentCutoutBoundsForOrientation:(int64_t)a3 completionHandler:(id)a4
{
  v7 = a4;
  if (!v7)
  {
    [PRSService fetchMaximalContentCutoutBoundsForOrientation:completionHandler:];
  }

  v14 = 0;
  v8 = [(PRSService *)self _serviceInterfaceWithError:&v14];
  v9 = v14;
  if (v8)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __78__PRSService_fetchMaximalContentCutoutBoundsForOrientation_completionHandler___block_invoke;
    v11[3] = &unk_1E818D8C0;
    v13 = a2;
    v11[4] = self;
    v12 = v7;
    [v8 fetchMaximalContentCutoutBoundsForOrientation:v10 completion:v11];
  }

  else
  {
    (*(v7 + 2))(v7, 0, v9);
  }
}

void __78__PRSService_fetchMaximalContentCutoutBoundsForOrientation_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = PRSLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __35__PRSService_resetRole_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)fetchExtendedContentCutoutBoundsForOrientation:(int64_t)a3 completionHandler:(id)a4
{
  v7 = a4;
  if (!v7)
  {
    [PRSService fetchExtendedContentCutoutBoundsForOrientation:completionHandler:];
  }

  v14 = 0;
  v8 = [(PRSService *)self _serviceInterfaceWithError:&v14];
  v9 = v14;
  if (v8)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __79__PRSService_fetchExtendedContentCutoutBoundsForOrientation_completionHandler___block_invoke;
    v11[3] = &unk_1E818D8C0;
    v13 = a2;
    v11[4] = self;
    v12 = v7;
    [v8 fetchExtendedContentCutoutBoundsForOrientation:v10 completion:v11];
  }

  else
  {
    (*(v7 + 2))(v7, 0, v9);
  }
}

void __79__PRSService_fetchExtendedContentCutoutBoundsForOrientation_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = PRSLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __35__PRSService_resetRole_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)fetchContentCutoutBoundsForActivePosterWithOrientation:(int64_t)a3 completionHandler:(id)a4
{
  v7 = a4;
  if (!v7)
  {
    [PRSService fetchContentCutoutBoundsForActivePosterWithOrientation:completionHandler:];
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __87__PRSService_fetchContentCutoutBoundsForActivePosterWithOrientation_completionHandler___block_invoke;
  v9[3] = &unk_1E818D898;
  v11 = a3;
  v12 = a2;
  v9[4] = self;
  v10 = v7;
  v8 = v7;
  [(PRSService *)self fetchActivePosterConfiguration:v9];
}

void __87__PRSService_fetchContentCutoutBoundsForActivePosterWithOrientation_completionHandler___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    (*(a1[5] + 16))();
  }

  else
  {
    v8 = a1[4];
    v17 = 0;
    v9 = [v8 _serviceInterfaceWithError:&v17];
    v7 = v17;
    if (v9)
    {
      v10 = [v5 lockScreenPosterConfiguration];
      v11 = [MEMORY[0x1E696AD98] numberWithInteger:a1[6]];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __87__PRSService_fetchContentCutoutBoundsForActivePosterWithOrientation_completionHandler___block_invoke_2;
      v14[3] = &unk_1E818D8C0;
      v12 = a1[4];
      v13 = a1[5];
      v16 = a1[7];
      v14[4] = v12;
      v15 = v13;
      [v9 fetchContentCutoutBoundsForPosterConfiguration:v10 orientation:v11 completion:v14];
    }

    else
    {
      (*(a1[5] + 16))();
    }
  }
}

void __87__PRSService_fetchContentCutoutBoundsForActivePosterWithOrientation_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = PRSLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __35__PRSService_resetRole_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)fetchContentCutoutBoundsForPosterConfiguration:(id)a3 orientation:(int64_t)a4 completionHandler:(id)a5
{
  v9 = a3;
  v10 = a5;
  v17 = 0;
  v11 = [(PRSService *)self _serviceInterfaceWithError:&v17];
  v12 = v17;
  if (v11)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __91__PRSService_fetchContentCutoutBoundsForPosterConfiguration_orientation_completionHandler___block_invoke;
    v14[3] = &unk_1E818D8C0;
    v16 = a2;
    v14[4] = self;
    v15 = v10;
    [v11 fetchContentCutoutBoundsForPosterConfiguration:v9 orientation:v13 completion:v14];
  }

  else if (v10)
  {
    (*(v10 + 2))(v10, 0, v12);
  }
}

void __91__PRSService_fetchContentCutoutBoundsForPosterConfiguration_orientation_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = PRSLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __35__PRSService_resetRole_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)fetchObscurableBoundsForPosterConfiguration:(id)a3 orientation:(int64_t)a4 completionHandler:(id)a5
{
  v9 = a3;
  v10 = a5;
  v17 = 0;
  v11 = [(PRSService *)self _serviceInterfaceWithError:&v17];
  v12 = v17;
  if (v11)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __88__PRSService_fetchObscurableBoundsForPosterConfiguration_orientation_completionHandler___block_invoke;
    v14[3] = &unk_1E818D8C0;
    v16 = a2;
    v14[4] = self;
    v15 = v10;
    [v11 fetchObscurableBoundsForPosterConfiguration:v9 orientation:v13 completion:v14];
  }

  else if (v10)
  {
    (*(v10 + 2))(v10, 0, v12);
  }
}

void __88__PRSService_fetchObscurableBoundsForPosterConfiguration_orientation_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = PRSLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __35__PRSService_resetRole_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)fetchLimitedOcclusionBoundsForPosterConfiguration:(id)a3 orientation:(int64_t)a4 completionHandler:(id)a5
{
  v9 = a3;
  v10 = a5;
  v17 = 0;
  v11 = [(PRSService *)self _serviceInterfaceWithError:&v17];
  v12 = v17;
  if (v11)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __94__PRSService_fetchLimitedOcclusionBoundsForPosterConfiguration_orientation_completionHandler___block_invoke;
    v14[3] = &unk_1E818D8C0;
    v16 = a2;
    v14[4] = self;
    v15 = v10;
    [v11 fetchLimitedOcclusionBoundsForPosterConfiguration:v9 orientation:v13 completion:v14];
  }

  else if (v10)
  {
    (*(v10 + 2))(v10, 0, v12);
  }
}

void __94__PRSService_fetchLimitedOcclusionBoundsForPosterConfiguration_orientation_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = PRSLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __35__PRSService_resetRole_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)fetchPosterConfigurationsForRole:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    [PRSService fetchPosterConfigurationsForRole:completion:];
  }

  if (!v7)
  {
    v7 = @"PRPosterRoleLockScreen";
  }

  v14 = 0;
  v9 = [(PRSService *)self _serviceInterfaceWithError:&v14];
  v10 = v14;
  if (v9)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __58__PRSService_fetchPosterConfigurationsForRole_completion___block_invoke;
    v11[3] = &unk_1E818D758;
    v13 = a2;
    v11[4] = self;
    v12 = v8;
    [v9 fetchPosterConfigurationsForRole:v7 completion:v11];
  }

  else if (v8)
  {
    (*(v8 + 2))(v8, 0, v10);
  }
}

void __58__PRSService_fetchPosterConfigurationsForRole_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = PRSLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __35__PRSService_resetRole_completion___block_invoke_cold_1();
  }

  v8 = *(a1 + 40);
  v9 = [v6 bs_mapNoNulls:&__block_literal_global_3];

  (*(v8 + 16))(v8, v9, v5);
}

- (void)fetchSelectedPosterForRole:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    [PRSService fetchSelectedPosterForRole:completion:];
  }

  if (!v7)
  {
    v7 = @"PRPosterRoleLockScreen";
  }

  v14 = 0;
  v9 = [(PRSService *)self _serviceInterfaceWithError:&v14];
  v10 = v14;
  if (v9)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __52__PRSService_fetchSelectedPosterForRole_completion___block_invoke;
    v11[3] = &unk_1E818D070;
    v13 = a2;
    v11[4] = self;
    v12 = v8;
    [v9 fetchSelectedPosterForRole:v7 completion:v11];
  }

  else if (v8)
  {
    (*(v8 + 2))(v8, 0, v10);
  }
}

void __52__PRSService_fetchSelectedPosterForRole_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = PRSLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __35__PRSService_resetRole_completion___block_invoke_cold_1();
  }

  v8 = *(a1 + 40);
  if (v5)
  {
    v9 = [[PRSPosterConfiguration alloc] _initWithPath:v5];
    (*(v8 + 16))(v8, v9, v6);
  }

  else
  {
    (*(v8 + 16))(v8, 0, v6);
  }
}

- (void)fetchActivePosterForRole:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    [PRSService fetchActivePosterForRole:completion:];
  }

  if (!v7)
  {
    v7 = @"PRPosterRoleLockScreen";
  }

  v14 = 0;
  v9 = [(PRSService *)self _serviceInterfaceWithError:&v14];
  v10 = v14;
  if (v9)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __50__PRSService_fetchActivePosterForRole_completion___block_invoke;
    v11[3] = &unk_1E818D8E8;
    v13 = a2;
    v11[4] = self;
    v12 = v8;
    [v9 fetchActivePosterForRole:v7 completion:v11];
  }

  else if (v8)
  {
    (*(v8 + 2))(v8, 0, v10);
  }
}

void __50__PRSService_fetchActivePosterForRole_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = PRSLogCommon();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    __35__PRSService_resetRole_completion___block_invoke_cold_1();
  }

  if (v8)
  {
    v11 = [PRSActivePosterConfiguration alloc];
    v12 = [[PRSPosterConfiguration alloc] _initWithPath:v8];
    if (v7)
    {
      v13 = [[PRSPosterConfiguration alloc] _initWithPath:v7];
    }

    else
    {
      v13 = 0;
    }

    v14 = [(PRSActivePosterConfiguration *)v11 initWithLockScreenPosterConfiguration:v12 homeScreenPosterConfiguration:v13];
    if (v7)
    {
    }
  }

  else
  {
    v14 = 0;
  }

  (*(*(a1 + 40) + 16))();
}

- (id)fetchActivePosterForRole:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = @"PRPosterRoleLockScreen";
  }

  v8 = [(PRSService *)self _serviceInterfaceWithError:a4];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 fetchActivePosterForRole:v7 error:a4];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)updateSelectedForRoleIdentifier:(id)a3 newlySelectedConfiguration:(id)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v11)
  {
    [PRSService updateSelectedForRoleIdentifier:newlySelectedConfiguration:completion:];
  }

  v12 = [v10 serverUUID];
  if (!v12)
  {
    [PRSService updateSelectedForRoleIdentifier:newlySelectedConfiguration:completion:];
  }

  if (!v9)
  {
    v9 = @"PRPosterRoleLockScreen";
  }

  v18 = 0;
  v13 = [(PRSService *)self _serviceInterfaceWithError:&v18];
  v14 = v18;
  if (v13)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __84__PRSService_updateSelectedForRoleIdentifier_newlySelectedConfiguration_completion___block_invoke;
    v15[3] = &unk_1E818D708;
    v17 = a2;
    v15[4] = self;
    v16 = v11;
    [v13 updateToSelectedPosterMatchingUUID:v12 role:v9 completion:v15];
  }

  else if (v11)
  {
    (*(v11 + 2))(v11, v14);
  }
}

void __84__PRSService_updateSelectedForRoleIdentifier_newlySelectedConfiguration_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PRSLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __35__PRSService_resetRole_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)fetchSelectedConfiguration:(id)a3
{
  if (a3)
  {
    [(PRSService *)self fetchSelectedPosterForRole:0 completion:a3];
  }
}

- (void)fetchActiveConfiguration:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __39__PRSService_fetchActiveConfiguration___block_invoke;
    v6[3] = &unk_1E818D910;
    v7 = v4;
    [(PRSService *)self fetchActivePosterForRole:0 completion:v6];
  }
}

void __39__PRSService_fetchActiveConfiguration___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 lockScreenPosterConfiguration];
  (*(v4 + 16))(v4, v6, v5);
}

- (void)updateToSelectedConfigurationMatchingUUID:(id)a3 role:(id)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v11)
  {
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [PRSService updateToSelectedConfigurationMatchingUUID:role:completion:];
    if (v9)
    {
      goto LABEL_3;
    }
  }

  [PRSService updateToSelectedConfigurationMatchingUUID:role:completion:];
LABEL_3:
  if (!v10)
  {
    v10 = @"PRPosterRoleLockScreen";
  }

  v17 = 0;
  v12 = [(PRSService *)self _serviceInterfaceWithError:&v17];
  v13 = v17;
  if (v12)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __72__PRSService_updateToSelectedConfigurationMatchingUUID_role_completion___block_invoke;
    v14[3] = &unk_1E818D708;
    v16 = a2;
    v14[4] = self;
    v15 = v11;
    [v12 updateToSelectedPosterMatchingUUID:v9 role:v10 completion:v14];
  }

  else if (v11)
  {
    (*(v11 + 2))(v11, v13);
  }
}

void __72__PRSService_updateToSelectedConfigurationMatchingUUID_role_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PRSLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __35__PRSService_resetRole_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)fetchFocusUUIDForConfiguration:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 _path];
  NSClassFromString(&cfstr_Pfserverposter.isa);
  if (!v9)
  {
    [PRSService fetchFocusUUIDForConfiguration:a2 completion:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PRSService fetchFocusUUIDForConfiguration:a2 completion:?];
  }

  if (!v8)
  {
    [PRSService fetchFocusUUIDForConfiguration:completion:];
  }

  v16 = 0;
  v10 = [(PRSService *)self _serviceInterfaceWithError:&v16];
  v11 = v16;
  if (v10)
  {
    v12 = [v7 _path];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __56__PRSService_fetchFocusUUIDForConfiguration_completion___block_invoke;
    v13[3] = &unk_1E818D938;
    v15 = a2;
    v13[4] = self;
    v14 = v8;
    [v10 fetchFocusUUIDForConfiguration:v12 completion:v13];
  }

  else if (v8)
  {
    (*(v8 + 2))(v8, 0, v11);
  }
}

void __56__PRSService_fetchFocusUUIDForConfiguration_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = PRSLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __35__PRSService_resetRole_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)removeAllFocusConfigurationsMatchingFocusUUID:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    [PRSService removeAllFocusConfigurationsMatchingFocusUUID:completion:];
  }

  v14 = 0;
  v9 = [(PRSService *)self _serviceInterfaceWithError:&v14];
  v10 = v14;
  if (v9)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __71__PRSService_removeAllFocusConfigurationsMatchingFocusUUID_completion___block_invoke;
    v11[3] = &unk_1E818D708;
    v13 = a2;
    v11[4] = self;
    v12 = v8;
    [v9 removeAllFocusConfigurationsMatchingFocusUUID:v7 completion:v11];
  }

  else if (v8)
  {
    (*(v8 + 2))(v8, v10);
  }
}

void __71__PRSService_removeAllFocusConfigurationsMatchingFocusUUID_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PRSLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __35__PRSService_resetRole_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)pushToProactiveWithCompletion:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [PRSService pushToProactiveWithCompletion:];
  }

  v11 = 0;
  v6 = [(PRSService *)self _serviceInterfaceWithError:&v11];
  v7 = v11;
  if (v6)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __44__PRSService_pushToProactiveWithCompletion___block_invoke;
    v8[3] = &unk_1E818D708;
    v10 = a2;
    v8[4] = self;
    v9 = v5;
    [v6 pushToProactiveWithCompletion:v8];
  }

  else if (v5)
  {
    (*(v5 + 2))(v5, v7);
  }
}

void __44__PRSService_pushToProactiveWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PRSLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __35__PRSService_resetRole_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)pushPosterGalleryUpdate:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [PRSService pushPosterGalleryUpdate:completion:];
    if (v9)
    {
      goto LABEL_3;
    }
  }

  [PRSService pushPosterGalleryUpdate:completion:];
LABEL_3:
  v15 = 0;
  v10 = [(PRSService *)self _serviceInterfaceWithError:&v15];
  v11 = v15;
  if (v10)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __49__PRSService_pushPosterGalleryUpdate_completion___block_invoke;
    v12[3] = &unk_1E818D708;
    v14 = a2;
    v12[4] = self;
    v13 = v9;
    [v10 pushPosterGalleryUpdate:v7 completion:v12];
  }

  else if (v9)
  {
    (v9)[2](v9, v11);
  }
}

void __49__PRSService_pushPosterGalleryUpdate_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PRSLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __35__PRSService_resetRole_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)fetchGallery:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [PRSService fetchGallery:];
  }

  v11 = 0;
  v6 = [(PRSService *)self _serviceInterfaceWithError:&v11];
  v7 = v11;
  if (v6)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __27__PRSService_fetchGallery___block_invoke;
    v8[3] = &unk_1E818D960;
    v10 = a2;
    v8[4] = self;
    v9 = v5;
    [v6 fetchGallery:v8];
  }

  else if (v5)
  {
    (*(v5 + 2))(v5, 0, 0, v7);
  }
}

void __27__PRSService_fetchGallery___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v10 = PRSLogCommon();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    __35__PRSService_resetRole_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)retrieveGallery:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [PRSService retrieveGallery:];
  }

  v11 = 0;
  v6 = [(PRSService *)self _serviceInterfaceWithError:&v11];
  v7 = v11;
  if (v6)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __30__PRSService_retrieveGallery___block_invoke;
    v8[3] = &unk_1E818D960;
    v10 = a2;
    v8[4] = self;
    v9 = v5;
    [v6 retrieveGallery:v8];
  }

  else if (v5)
  {
    (*(v5 + 2))(v5, 0, 0, v7);
  }
}

void __30__PRSService_retrieveGallery___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v10 = PRSLogCommon();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    __35__PRSService_resetRole_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)gatherDataFreshnessState:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [PRSService gatherDataFreshnessState:];
  }

  v11 = 0;
  v6 = [(PRSService *)self _serviceInterfaceWithError:&v11];
  v7 = v11;
  if (v6)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __39__PRSService_gatherDataFreshnessState___block_invoke;
    v8[3] = &unk_1E818D780;
    v10 = a2;
    v8[4] = self;
    v9 = v5;
    [v6 gatherDataFreshnessState:v8];
  }

  else if (v5)
  {
    (*(v5 + 2))(v5, 0, v7);
  }
}

void __39__PRSService_gatherDataFreshnessState___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = PRSLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __35__PRSService_resetRole_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)refreshSnapshotForGalleryItemsMatchingDescriptorIdentifier:(id)a3 extensionIdentifier:(id)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v11)
  {
    [PRSService refreshSnapshotForGalleryItemsMatchingDescriptorIdentifier:extensionIdentifier:completion:];
  }

  v17 = 0;
  v12 = [(PRSService *)self _serviceInterfaceWithError:&v17];
  v13 = v17;
  if (v12)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __104__PRSService_refreshSnapshotForGalleryItemsMatchingDescriptorIdentifier_extensionIdentifier_completion___block_invoke;
    v14[3] = &unk_1E818D708;
    v16 = a2;
    v14[4] = self;
    v15 = v11;
    [v12 refreshSnapshotForGalleryItemsMatchingDescriptorIdentifier:v9 extensionIdentifier:v10 completion:v14];
  }

  else if (v11)
  {
    (*(v11 + 2))(v11, v13);
  }
}

void __104__PRSService_refreshSnapshotForGalleryItemsMatchingDescriptorIdentifier_extensionIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PRSLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __35__PRSService_resetRole_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)notifyFocusModeDidChange:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    [PRSService notifyFocusModeDidChange:completion:];
  }

  v14 = 0;
  v9 = [(PRSService *)self _serviceInterfaceWithError:&v14];
  v10 = v14;
  if (v9)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __50__PRSService_notifyFocusModeDidChange_completion___block_invoke;
    v11[3] = &unk_1E818D708;
    v13 = a2;
    v11[4] = self;
    v12 = v8;
    [v9 notifyFocusModeDidChange:v7 completion:v11];
  }

  else if (v8)
  {
    (*(v8 + 2))(v8, v10);
  }
}

void __50__PRSService_notifyFocusModeDidChange_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PRSLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __35__PRSService_resetRole_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)notifyAvailableFocusModesDidChange:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14 = 0;
  v9 = [(PRSService *)self _serviceInterfaceWithError:&v14];
  v10 = v14;
  if (v9)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __60__PRSService_notifyAvailableFocusModesDidChange_completion___block_invoke;
    v11[3] = &unk_1E818D708;
    v13 = a2;
    v11[4] = self;
    v12 = v8;
    [v9 notifyAvailableFocusModesDidChange:v7 completion:v11];
  }

  else if (v8)
  {
    (*(v8 + 2))(v8, v10);
  }
}

void __60__PRSService_notifyAvailableFocusModesDidChange_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PRSLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __35__PRSService_resetRole_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)notifyActiveChargerIdentifierDidUpdate:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    [PRSService notifyActiveChargerIdentifierDidUpdate:completion:];
  }

  v14 = 0;
  v9 = [(PRSService *)self _serviceInterfaceWithError:&v14];
  v10 = v14;
  if (v9)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __64__PRSService_notifyActiveChargerIdentifierDidUpdate_completion___block_invoke;
    v11[3] = &unk_1E818D708;
    v13 = a2;
    v11[4] = self;
    v12 = v8;
    [v9 notifyActiveChargerIdentifierDidUpdate:v7 completion:v11];
  }

  else if (v8)
  {
    (*(v8 + 2))(v8, v10);
  }
}

void __64__PRSService_notifyActiveChargerIdentifierDidUpdate_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PRSLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __35__PRSService_resetRole_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)prewarmWithCompletion:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [PRSService prewarmWithCompletion:];
  }

  v13 = 0;
  v6 = [(PRSService *)self _serviceInterfaceWithError:&v13];
  v7 = v13;
  if (v6)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __36__PRSService_prewarmWithCompletion___block_invoke;
    v8[3] = &unk_1E818D7F8;
    v12 = a2;
    v9 = v6;
    v10 = self;
    v11 = v5;
    [PRSHostContext hostContextWithCompletion:v8];
  }

  else if (v5)
  {
    (*(v5 + 2))(v5, v7);
  }
}

void __36__PRSService_prewarmWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __36__PRSService_prewarmWithCompletion___block_invoke_2;
  v6[3] = &unk_1E818D708;
  v3 = *(a1 + 32);
  v6[4] = *(a1 + 40);
  v5 = *(a1 + 48);
  v4 = v5;
  v7 = v5;
  [v3 prewarm:a2 completion:v6];
}

void __36__PRSService_prewarmWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PRSLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __35__PRSService_resetRole_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)overnightUpdateWithCompletion:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [PRSService overnightUpdateWithCompletion:];
  }

  v13 = 0;
  v6 = [(PRSService *)self _serviceInterfaceWithError:&v13];
  v7 = v13;
  if (v6)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __44__PRSService_overnightUpdateWithCompletion___block_invoke;
    v8[3] = &unk_1E818D7F8;
    v12 = a2;
    v9 = v6;
    v10 = self;
    v11 = v5;
    [PRSHostContext hostContextWithCompletion:v8];
  }

  else if (v5)
  {
    (*(v5 + 2))(v5, v7);
  }
}

void __44__PRSService_overnightUpdateWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __44__PRSService_overnightUpdateWithCompletion___block_invoke_2;
  v6[3] = &unk_1E818D708;
  v3 = *(a1 + 32);
  v6[4] = *(a1 + 40);
  v5 = *(a1 + 48);
  v4 = v5;
  v7 = v5;
  [v3 overnightUpdate:a2 completion:v6];
}

void __44__PRSService_overnightUpdateWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PRSLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __35__PRSService_resetRole_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)fetchAssociatedHomeScreenPosterConfigurationUUID:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    [PRSService fetchAssociatedHomeScreenPosterConfigurationUUID:completion:];
  }

  v14 = 0;
  v9 = [(PRSService *)self _serviceInterfaceWithError:&v14];
  v10 = v14;
  if (v9)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __74__PRSService_fetchAssociatedHomeScreenPosterConfigurationUUID_completion___block_invoke;
    v11[3] = &unk_1E818D070;
    v13 = a2;
    v11[4] = self;
    v12 = v8;
    [v9 fetchAssociatedHomeScreenPosterConfigurationUUID:v7 completion:v11];
  }

  else if (v8)
  {
    (*(v8 + 2))(v8, 0, v10);
  }
}

void __74__PRSService_fetchAssociatedHomeScreenPosterConfigurationUUID_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = PRSLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __35__PRSService_resetRole_completion___block_invoke_cold_1();
  }

  if (v6)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v8 = *(a1 + 40);
    if (v5)
    {
      v9 = [[PRSPosterConfiguration alloc] _initWithPath:v5];
      (*(v8 + 16))(v8, v9, 0);
    }

    else
    {
      (*(v8 + 16))(v8, 0, 0);
    }
  }
}

void __58__PRSService_runMigration_migrationDescriptor_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PRSLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __35__PRSService_resetRole_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)clearMigrationFlags:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [PRSService clearMigrationFlags:];
  }

  v11 = 0;
  v6 = [(PRSService *)self _serviceInterfaceWithError:&v11];
  v7 = v11;
  if (v6)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __34__PRSService_clearMigrationFlags___block_invoke;
    v8[3] = &unk_1E818D988;
    v10 = a2;
    v8[4] = self;
    v9 = v5;
    [v6 clearMigrationFlags:v8];
  }

  else if (v5)
  {
    (*(v5 + 2))(v5, 0, v7);
  }
}

void __34__PRSService_clearMigrationFlags___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = PRSLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __35__PRSService_resetRole_completion___block_invoke_cold_1();
  }

  v8 = *(a1 + 40);
  v9 = [v6 BOOLValue];

  (*(v8 + 16))(v8, v9, v5);
}

- (void)createAndSelectLegacyPosterConfigurationIfNeededWithCompletion:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __77__PRSService_createAndSelectLegacyPosterConfigurationIfNeededWithCompletion___block_invoke;
  v6[3] = &unk_1E818DA00;
  v6[4] = self;
  v7 = @"com.apple.PaperBoard.LegacyPoster";
  v8 = @"LegacyPoster";
  v9 = v4;
  v5 = v4;
  [(PRSService *)self fetchPosterConfigurationsForExtension:@"com.apple.PaperBoard.LegacyPoster" completion:v6];
}

void __77__PRSService_createAndSelectLegacyPosterConfigurationIfNeededWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 || !v6)
  {
    v9 = [v5 count];
    v10 = *(a1 + 32);
    if (v9)
    {
      v11 = [v5 firstObject];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __77__PRSService_createAndSelectLegacyPosterConfigurationIfNeededWithCompletion___block_invoke_136;
      v20[3] = &unk_1E818D180;
      v21 = *(a1 + 56);
      [v10 _selectConfigurationAndRefreshSnapshot:v11 completion:v20];

      v12 = v21;
    }

    else
    {
      v13 = *(a1 + 40);
      v14 = *(a1 + 48);
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __77__PRSService_createAndSelectLegacyPosterConfigurationIfNeededWithCompletion___block_invoke_2;
      v16[3] = &unk_1E818D9D8;
      v17 = v7;
      v15 = *(a1 + 56);
      v18 = *(a1 + 32);
      v19 = v15;
      [v10 createPosterConfigurationForProviderIdentifier:v13 posterDescriptorIdentifier:v14 role:@"PRPosterRoleLockScreen" completion:v16];

      v12 = v17;
    }
  }

  else
  {
    v8 = PRSLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __77__PRSService_createAndSelectLegacyPosterConfigurationIfNeededWithCompletion___block_invoke_cold_1();
    }

    (*(*(a1 + 56) + 16))();
  }
}

void __77__PRSService_createAndSelectLegacyPosterConfigurationIfNeededWithCompletion___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    v6 = PRSLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __77__PRSService_createAndSelectLegacyPosterConfigurationIfNeededWithCompletion___block_invoke_2_cold_1(a1, v6, v7, v8, v9, v10, v11, v12);
    }

    v13 = *(a1 + 32);
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __77__PRSService_createAndSelectLegacyPosterConfigurationIfNeededWithCompletion___block_invoke_138;
    v15[3] = &unk_1E818D9B0;
    v14 = *(a1 + 40);
    v17 = *(a1 + 48);
    v16 = v5;
    [v14 _selectConfigurationAndRefreshSnapshot:v16 completion:v15];
  }
}

- (void)_selectConfigurationAndRefreshSnapshot:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __64__PRSService__selectConfigurationAndRefreshSnapshot_completion___block_invoke;
    v10[3] = &unk_1E818DA28;
    v12 = v7;
    v10[4] = self;
    v11 = v6;
    [(PRSService *)self updateSelectedForRoleIdentifier:@"PRPosterRoleLockScreen" newlySelectedConfiguration:v11 completion:v10];
  }

  else
  {
    v9 = PRSLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [PRSService _selectConfigurationAndRefreshSnapshot:v9 completion:?];
    }

    v8[2](v8, 0, 0);
  }
}

void __64__PRSService__selectConfigurationAndRefreshSnapshot_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = PRSLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __64__PRSService__selectConfigurationAndRefreshSnapshot_completion___block_invoke_cold_1();
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __64__PRSService__selectConfigurationAndRefreshSnapshot_completion___block_invoke_140;
    v7[3] = &unk_1E818D020;
    v8 = *(a1 + 48);
    [v5 refreshSnapshotForPosterConfiguration:v6 completion:v7];
  }
}

void __64__PRSService__selectConfigurationAndRefreshSnapshot_completion___block_invoke_140(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = PRSLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __64__PRSService__selectConfigurationAndRefreshSnapshot_completion___block_invoke_140_cold_1();
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)fetchArchivedDataStoreNamesWithCompletion:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [PRSService fetchArchivedDataStoreNamesWithCompletion:];
  }

  v11 = 0;
  v6 = [(PRSService *)self _serviceInterfaceWithError:&v11];
  v7 = v11;
  if (v6)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __56__PRSService_fetchArchivedDataStoreNamesWithCompletion___block_invoke;
    v8[3] = &unk_1E818CFD8;
    v10 = a2;
    v8[4] = self;
    v9 = v5;
    [v6 fetchArchivedDataStoreNamesWithCompletion:v8];
  }

  else if (v5)
  {
    (*(v5 + 2))(v5, 0, v7);
  }
}

void __56__PRSService_fetchArchivedDataStoreNamesWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = PRSLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __35__PRSService_resetRole_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)stashCurrentDataStoreWithName:(id)a3 options:(id)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v11)
  {
    [PRSService stashCurrentDataStoreWithName:options:completion:];
  }

  if (![v9 length])
  {
    [PRSService stashCurrentDataStoreWithName:options:completion:];
  }

  v17 = 0;
  v12 = [(PRSService *)self _serviceInterfaceWithError:&v17];
  v13 = v17;
  if (v12)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __63__PRSService_stashCurrentDataStoreWithName_options_completion___block_invoke;
    v14[3] = &unk_1E818D708;
    v16 = a2;
    v14[4] = self;
    v15 = v11;
    [v12 stashCurrentDataStoreWithName:v9 options:v10 completion:v14];
  }

  else if (v11)
  {
    (*(v11 + 2))(v11, v13);
  }
}

void __63__PRSService_stashCurrentDataStoreWithName_options_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PRSLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __35__PRSService_resetRole_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 40) + 16))();
}

void __79__PRSService_restoreArchivedDataStoreNamed_backupExistingDataStore_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PRSLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __35__PRSService_resetRole_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)deleteArchivedDataStoreNamed:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    [PRSService deleteArchivedDataStoreNamed:completion:];
  }

  v14 = 0;
  v9 = [(PRSService *)self _serviceInterfaceWithError:&v14];
  v10 = v14;
  if (v9)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __54__PRSService_deleteArchivedDataStoreNamed_completion___block_invoke;
    v11[3] = &unk_1E818D708;
    v13 = a2;
    v11[4] = self;
    v12 = v8;
    [v9 deleteArchivedDataStoreNamed:v7 completion:v11];
  }

  else if (v8)
  {
    (*(v8 + 2))(v8, v10);
  }
}

void __54__PRSService_deleteArchivedDataStoreNamed_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PRSLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __35__PRSService_resetRole_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)exportArchivedDataStoreNamed:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    [PRSService exportArchivedDataStoreNamed:completion:];
  }

  v14 = 0;
  v9 = [(PRSService *)self _serviceInterfaceWithError:&v14];
  v10 = v14;
  if (v9)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __54__PRSService_exportArchivedDataStoreNamed_completion___block_invoke;
    v11[3] = &unk_1E818D820;
    v13 = a2;
    v11[4] = self;
    v12 = v8;
    [v9 exportArchivedDataStoreNamed:v7 completion:v11];
  }

  else if (v8)
  {
    (*(v8 + 2))(v8, 0, v10);
  }
}

void __54__PRSService_exportArchivedDataStoreNamed_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = PRSLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __35__PRSService_resetRole_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)exportCurrentDataStoreToURL:(id)a3 options:(id)a4 sandboxToken:(id)a5 error:(id *)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v20 = 0;
  v14 = [(PRSService *)self _serviceInterfaceWithError:&v20];
  v15 = v20;
  if (v14)
  {
    v19 = 0;
    [v14 exportCurrentDataStoreToURL:v11 options:v12 sandboxToken:v13 error:&v19];
    v16 = v19;

    v17 = PRSLogCommon();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      [PRSService exportCurrentDataStoreToURL:a2 options:? sandboxToken:? error:?];
    }

    v15 = v16;
  }

  v18 = v15;
  *a6 = v15;
}

- (void)ignoreExtension:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [PRSService ignoreExtension:completion:];
    if (v9)
    {
      goto LABEL_3;
    }
  }

  [PRSService ignoreExtension:completion:];
LABEL_3:
  v15 = 0;
  v10 = [(PRSService *)self _serviceInterfaceWithError:&v15];
  v11 = v15;
  if (v10)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __41__PRSService_ignoreExtension_completion___block_invoke;
    v12[3] = &unk_1E818D708;
    v14 = a2;
    v12[4] = self;
    v13 = v9;
    [v10 ignoreExtension:v7 completion:v12];
  }

  else if (v9)
  {
    (v9)[2](v9, v11);
  }
}

void __41__PRSService_ignoreExtension_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PRSLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __35__PRSService_resetRole_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 40) + 16))();
}

- (void)unignoreExtension:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [PRSService unignoreExtension:completion:];
    if (v9)
    {
      goto LABEL_3;
    }
  }

  [PRSService unignoreExtension:completion:];
LABEL_3:
  v15 = 0;
  v10 = [(PRSService *)self _serviceInterfaceWithError:&v15];
  v11 = v15;
  if (v10)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __43__PRSService_unignoreExtension_completion___block_invoke;
    v12[3] = &unk_1E818D708;
    v14 = a2;
    v12[4] = self;
    v13 = v9;
    [v10 unignoreExtension:v7 completion:v12];
  }

  else if (v9)
  {
    (v9)[2](v9, v11);
  }
}

void __43__PRSService_unignoreExtension_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PRSLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __35__PRSService_resetRole_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 40) + 16))();
}

- (id)_serviceInterfaceWithError:(id *)a3
{
  v16[1] = *MEMORY[0x1E69E9840];
  p_serviceConnection = &self->_serviceConnection;
  [(BSServiceConnectionClient *)self->_serviceConnection activate];
  v6 = *p_serviceConnection;
  v7 = [MEMORY[0x1E69C7560] attributeWithDomain:@"com.apple.common" name:@"BasicAngelIPC"];
  v16[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  v9 = [v6 remoteTargetWithLaunchingAssertionAttributes:v8];

  if (!v9)
  {
    v10 = PRSLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(PRSService *)self _serviceInterfaceWithError:?];
    }

    if (a3)
    {
      v11 = MEMORY[0x1E696ABC0];
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      *a3 = [v11 errorWithDomain:v13 code:1 userInfo:0];
    }
  }

  v14 = *MEMORY[0x1E69E9840];

  return v9;
}

- (void)init
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5_0();
  v4 = 2048;
  v5 = v0;
  _os_log_error_impl(&dword_1C26FF000, v1, OS_LOG_TYPE_ERROR, "%{public}@:%p failed to lookup endpoint", v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

void __18__PRSService_init__block_invoke_8_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)deleteDataStoreWithCompletion:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

- (void)deleteDataStoreWithCompletion:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696AE30] processInfo];
  v1 = [v0 processName];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

void __44__PRSService_deleteDataStoreWithCompletion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_1(&dword_1C26FF000, v0, v1, "Data store invalidation failed with error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __44__PRSService_deleteDataStoreWithCompletion___block_invoke_24_cold_1()
{
  OUTLINED_FUNCTION_3_1();
  v10 = *MEMORY[0x1E69E9840];
  NSStringFromSelector(*(v1 + 56));
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_2(&dword_1C26FF000, v2, v3, "received reply to %{public}@ on %{public}@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)resetRole:completion:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

void __35__PRSService_resetRole_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3_1();
  v1 = *MEMORY[0x1E69E9840];
  v3 = OUTLINED_FUNCTION_7_0(v2);
  NSStringFromSelector(v3);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1_2(&dword_1C26FF000, v4, v5, "received reply to %{public}@ on %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)deleteSnapshotsWithCompletion:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

- (void)notifyPosterBoardOfApplicationUpdatesWithCompletion:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

- (void)deleteTransientDataWithCompletion:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

- (void)setHostConfiguration:forRole:completion:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4();
  [v0 handleFailureInMethod:@"roleIdentifier" object:? file:? lineNumber:? description:?];
}

- (void)deleteHostConfigurationForRole:completion:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4();
  [v0 handleFailureInMethod:@"roleIdentifier" object:? file:? lineNumber:? description:?];
}

- (void)updatePosterConfigurationsFromHostForRole:completion:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4();
  [v0 handleFailureInMethod:@"roleIdentifier" object:? file:? lineNumber:? description:?];
}

- (void)fetchExtensionIdentifiersWithCompletion:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

- (void)fetchPosterDescriptorsForExtension:completion:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

- (void)fetchStaticPosterDescriptorsForExtension:completion:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

- (void)_refreshPosterDescriptorsForExtension:sessionInfo:completion:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

- (void)deletePosterDescriptorsForExtension:completion:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

- (void)deletePosterDescriptorsForExtension:completion:.cold.2()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4();
  [v0 handleFailureInMethod:@"providerIdentifier" object:? file:? lineNumber:? description:?];
}

- (void)fetchRuntimeAssertionState:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

- (void)triggerMessedUpDataProtectionWithCompletion:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

- (void)fetchChargerIdentifierRelationshipsWithCompletion:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

- (void)createPosterConfigurationForProviderIdentifier:posterDescriptorIdentifier:role:completion:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

- (void)createPosterConfigurationForProviderIdentifier:posterDescriptorIdentifier:role:completion:.cold.2()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4();
  [v0 handleFailureInMethod:@"providerIdentifier" object:? file:? lineNumber:? description:?];
}

- (void)refreshPosterConfiguration:completion:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4();
  [v0 handleFailureInMethod:@"configuration" object:? file:? lineNumber:? description:?];
}

- (void)refreshPosterConfiguration:completion:.cold.2()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

- (void)refreshPosterConfiguration:sessionInfo:completion:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4();
  [v0 handleFailureInMethod:@"configuration" object:? file:? lineNumber:? description:?];
}

- (void)refreshPosterConfiguration:sessionInfo:completion:.cold.2()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

- (void)refreshPosterConfigurationMatchingUUID:sessionInfo:completion:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

- (void)refreshPosterConfigurationMatchingUUID:sessionInfo:completion:.cold.2()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4();
  [v0 handleFailureInMethod:@"posterUUID" object:? file:? lineNumber:? description:?];
}

- (void)notePosterConfigurationUnderlyingModelDidChange:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4();
  [v0 handleFailureInMethod:@"posterUUID" object:? file:? lineNumber:? description:?];
}

- (void)associateConfigurationMatchingUUID:focusModeActivityUUID:completion:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

- (void)associateConfigurationMatchingUUID:focusModeActivityUUID:completion:.cold.2()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4();
  [v0 handleFailureInMethod:@"configurationUUID" object:? file:? lineNumber:? description:?];
}

- (void)fetchPosterConfigurationsForExtension:completion:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4();
  [v0 handleFailureInMethod:@"posterExtensionIdentifier" object:? file:? lineNumber:? description:?];
}

- (void)fetchPosterConfigurationsForExtension:completion:.cold.2()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

- (void)fetchPosterSnapshotsWithRequest:completion:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4();
  [v0 handleFailureInMethod:@"request" object:? file:? lineNumber:? description:?];
}

- (void)fetchPosterSnapshotsWithRequest:completion:.cold.2()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

- (void)deletePosterConfigurationsMatchingUUID:completion:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4();
  [v0 handleFailureInMethod:@"UUID" object:? file:? lineNumber:? description:?];
}

- (void)deletePosterConfigurationsMatchingUUID:completion:.cold.2()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

- (void)refreshSuggestionDescriptorsForConfigurationMatchingUUID:sessionInfo:completion:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4();
  [v0 handleFailureInMethod:@"posterUUID" object:? file:? lineNumber:? description:?];
}

- (void)refreshSuggestionDescriptorsForConfigurationMatchingUUID:sessionInfo:completion:.cold.2()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

- (void)fetchSuggestionDescriptorsForConfigurationMatchingUUID:completion:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4();
  [v0 handleFailureInMethod:@"posterUUID" object:? file:? lineNumber:? description:?];
}

- (void)fetchSuggestionDescriptorsForConfigurationMatchingUUID:completion:.cold.2()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

- (void)commitSuggestionsForConfigurationMatchingUUID:selectSuggestionDescriptorUUID:completion:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4();
  [v0 handleFailureInMethod:@"posterUUID" object:? file:? lineNumber:? description:?];
}

- (void)commitSuggestionsForConfigurationMatchingUUID:selectSuggestionDescriptorUUID:completion:.cold.2()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

- (void)exportPosterConfigurationMatchingUUID:completion:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4();
  [v0 handleFailureInMethod:@"configurationUUID" object:? file:? lineNumber:? description:?];
}

- (void)exportPosterConfigurationMatchingUUID:completion:.cold.2()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

- (void)importPosterConfigurationFromArchiveData:completion:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4();
  [v0 handleFailureInMethod:@"archiveData" object:? file:? lineNumber:? description:?];
}

- (void)importPosterConfigurationFromArchiveData:completion:.cold.2()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

- (void)importPosterConfigurationFromArchivedData:completion:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4();
  [v0 handleFailureInMethod:@"archiveData" object:? file:? lineNumber:? description:?];
}

- (void)importPosterConfigurationFromArchivedData:completion:.cold.2()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

- (void)updatePosterConfigurationMatchingUUID:(char *)a1 updates:completion:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1C26FF000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSArrayClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)updatePosterConfigurationMatchingUUID:(char *)a1 updates:completion:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1C26FF000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSUUIDClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)updatePosterConfigurationMatchingUUID:updates:completion:.cold.3()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

- (void)updatePosterConfigurationMatchingUUID:(char *)a1 updates:completion:.cold.4(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1C26FF000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)updatePosterConfigurationMatchingUUID:(char *)a1 updates:completion:.cold.5(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1C26FF000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)updatePosterConfiguration:(char *)a1 update:completion:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1C26FF000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:PRSPosterUpdateClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)updatePosterConfiguration:(char *)a1 update:completion:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1C26FF000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:PRSPosterConfigurationClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)updatePosterConfiguration:(char *)a1 update:completion:.cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1C26FF000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[[configuration _path] isServerPosterPath]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)updatePosterConfiguration:update:completion:.cold.4()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

- (void)updatePosterConfiguration:(char *)a1 update:completion:.cold.5(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1C26FF000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)updatePosterConfiguration:(char *)a1 update:completion:.cold.6(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1C26FF000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)refreshSnapshotForPosterConfigurationMatchingUUID:completion:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

- (void)ingestSnapshotCollection:forPosterConfiguration:completion:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4();
  [v0 handleFailureInMethod:@"snapshotCollection" object:? file:? lineNumber:? description:?];
}

- (void)ingestSnapshotCollection:forPosterConfiguration:completion:.cold.2()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

- (void)fetchContentObstructionBoundsForActivePosterWithOrientation:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

- (void)fetchMaximalContentCutoutBoundsForOrientation:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

- (void)fetchExtendedContentCutoutBoundsForOrientation:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

- (void)fetchContentCutoutBoundsForActivePosterWithOrientation:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

- (void)fetchPosterConfigurationsForRole:completion:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

- (void)fetchSelectedPosterForRole:completion:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

- (void)fetchActivePosterForRole:completion:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

- (void)updateSelectedForRoleIdentifier:newlySelectedConfiguration:completion:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

- (void)updateSelectedForRoleIdentifier:newlySelectedConfiguration:completion:.cold.2()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4();
  [v0 handleFailureInMethod:@"posterUUID" object:? file:? lineNumber:? description:?];
}

- (void)updateToSelectedConfigurationMatchingUUID:role:completion:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

- (void)updateToSelectedConfigurationMatchingUUID:role:completion:.cold.2()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4();
  [v0 handleFailureInMethod:@"posterUUID" object:? file:? lineNumber:? description:?];
}

- (void)fetchFocusUUIDForConfiguration:(char *)a1 completion:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1C26FF000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:PFServerPosterPathClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)fetchFocusUUIDForConfiguration:completion:.cold.2()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

- (void)fetchFocusUUIDForConfiguration:(char *)a1 completion:.cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1C26FF000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)removeAllFocusConfigurationsMatchingFocusUUID:completion:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

- (void)pushToProactiveWithCompletion:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

- (void)pushPosterGalleryUpdate:completion:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4();
  [v0 handleFailureInMethod:@"faceGalleryConfiguration" object:? file:? lineNumber:? description:?];
}

- (void)pushPosterGalleryUpdate:completion:.cold.2()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

- (void)fetchGallery:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

- (void)retrieveGallery:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

- (void)gatherDataFreshnessState:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

- (void)refreshSnapshotForGalleryItemsMatchingDescriptorIdentifier:extensionIdentifier:completion:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

- (void)notifyFocusModeDidChange:completion:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

- (void)notifyActiveChargerIdentifierDidUpdate:completion:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

- (void)prewarmWithCompletion:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

- (void)overnightUpdateWithCompletion:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

- (void)fetchAssociatedHomeScreenPosterConfigurationUUID:completion:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

- (void)runMigration:migrationDescriptor:completion:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

- (void)clearMigrationFlags:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

void __77__PRSService_createAndSelectLegacyPosterConfigurationIfNeededWithCompletion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_1(&dword_1C26FF000, v0, v1, "Failed to fetch poster configuration with error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __77__PRSService_createAndSelectLegacyPosterConfigurationIfNeededWithCompletion___block_invoke_2_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = HIDWORD(*(a1 + 32));
  OUTLINED_FUNCTION_0_1(&dword_1C26FF000, a2, a3, "Failed to create poster configuration with error: %{public}@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void __64__PRSService__selectConfigurationAndRefreshSnapshot_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_1(&dword_1C26FF000, v0, v1, "Failed to update to selected configuration with error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __64__PRSService__selectConfigurationAndRefreshSnapshot_completion___block_invoke_140_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_1(&dword_1C26FF000, v0, v1, "Failed to refresh snapshot for poster configuration with error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)fetchArchivedDataStoreNamesWithCompletion:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

- (void)stashCurrentDataStoreWithName:options:completion:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

- (void)stashCurrentDataStoreWithName:options:completion:.cold.2()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4();
  [v0 handleFailureInMethod:@"[stashName length] > 0" object:? file:? lineNumber:? description:?];
}

- (void)restoreArchivedDataStoreNamed:backupExistingDataStore:completion:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

- (void)deleteArchivedDataStoreNamed:completion:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

- (void)exportArchivedDataStoreNamed:completion:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

- (void)exportCurrentDataStoreToURL:(const char *)a1 options:sandboxToken:error:.cold.1(const char *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_1_2(&dword_1C26FF000, v2, v3, "received reply to %{public}@ on %{public}@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)ignoreExtension:completion:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4();
  [v0 handleFailureInMethod:@"extension" object:? file:? lineNumber:? description:?];
}

- (void)ignoreExtension:completion:.cold.2()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

- (void)unignoreExtension:completion:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4();
  [v0 handleFailureInMethod:@"extension" object:? file:? lineNumber:? description:?];
}

- (void)unignoreExtension:completion:.cold.2()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_4();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

- (void)_serviceInterfaceWithError:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = *a2;
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x16u);

  v11 = *MEMORY[0x1E69E9840];
}

@end