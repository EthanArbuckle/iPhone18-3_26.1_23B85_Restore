@interface PRSServer
- (PRSServer)init;
- (PRSServerDelegate)delegate;
- (id)fetchActivePosterForRole:(id)a3 error:(id *)a4;
- (void)_queue_addConnection:(id)a3;
- (void)_queue_removeConnection:(id)a3;
- (void)associateConfigurationMatchingUUID:(id)a3 focusModeActivityUUID:(id)a4 completion:(id)a5;
- (void)clearMigrationFlags:(id)a3;
- (void)commitSuggestionsForConfigurationMatchingUUID:(id)a3 selectSuggestionDescriptorUUID:(id)a4 completion:(id)a5;
- (void)createPosterConfigurationForProviderIdentifier:(id)a3 posterDescriptorIdentifier:(id)a4 role:(id)a5 completion:(id)a6;
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
- (void)fetchActivePosterForRole:(id)a3 completion:(id)a4;
- (void)fetchArchivedDataStoreNamesWithCompletion:(id)a3;
- (void)fetchAssociatedHomeScreenPosterConfigurationUUID:(id)a3 completion:(id)a4;
- (void)fetchChargerIdentifierRelationshipsWithCompletion:(id)a3;
- (void)fetchContentCutoutBoundsForPosterConfiguration:(id)a3 orientation:(id)a4 completion:(id)a5;
- (void)fetchContentObstructionBoundsForPosterConfiguration:(id)a3 orientation:(id)a4 completion:(id)a5;
- (void)fetchExtendedContentCutoutBoundsForOrientation:(id)a3 completion:(id)a4;
- (void)fetchExtensionIdentifiersWithCompletion:(id)a3;
- (void)fetchFocusUUIDForConfiguration:(id)a3 completion:(id)a4;
- (void)fetchGallery:(id)a3;
- (void)fetchLimitedOcclusionBoundsForPosterConfiguration:(id)a3 orientation:(id)a4 completion:(id)a5;
- (void)fetchMaximalContentCutoutBoundsForOrientation:(id)a3 completion:(id)a4;
- (void)fetchObscurableBoundsForPosterConfiguration:(id)a3 orientation:(id)a4 completion:(id)a5;
- (void)fetchPosterConfigurationsForExtension:(id)a3 completion:(id)a4;
- (void)fetchPosterConfigurationsForRole:(id)a3 completion:(id)a4;
- (void)fetchPosterDescriptorsForExtension:(id)a3 completion:(id)a4;
- (void)fetchPosterSnapshotsWithRequest:(id)a3 completion:(id)a4;
- (void)fetchRuntimeAssertionState:(id)a3;
- (void)fetchSelectedPosterForRole:(id)a3 completion:(id)a4;
- (void)fetchStaticPosterDescriptorsForExtension:(id)a3 completion:(id)a4;
- (void)fetchSuggestionDescriptorsForConfigurationMatchingUUID:(id)a3 completion:(id)a4;
- (void)gatherDataFreshnessState:(id)a3;
- (void)ignoreExtension:(id)a3 completion:(id)a4;
- (void)importPosterConfigurationFromArchiveData:(id)a3 completion:(id)a4;
- (void)ingestSnapshotCollection:(id)a3 forPosterConfigurationUUID:(id)a4 completion:(id)a5;
- (void)invalidateDataStoreWithCompletion:(id)a3;
- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5;
- (void)notePosterConfigurationUnderlyingModelDidChange:(id)a3;
- (void)notifyActiveChargerIdentifierDidUpdate:(id)a3 completion:(id)a4;
- (void)notifyAvailableFocusModesDidChange:(id)a3 completion:(id)a4;
- (void)notifyFocusModeDidChange:(id)a3 completion:(id)a4;
- (void)notifyPosterBoardOfApplicationUpdatesWithCompletion:(id)a3;
- (void)overnightUpdate:(id)a3 completion:(id)a4;
- (void)prewarm:(id)a3 completion:(id)a4;
- (void)pushPosterGalleryUpdate:(id)a3 completion:(id)a4;
- (void)pushToProactiveWithCompletion:(id)a3;
- (void)refreshPosterConfigurationMatchingUUID:(id)a3 sessionInfo:(id)a4 completion:(id)a5;
- (void)refreshPosterDescriptorsForExtension:(id)a3 sessionInfo:(id)a4 completion:(id)a5;
- (void)refreshSnapshotForGalleryItemsMatchingDescriptorIdentifier:(id)a3 extensionIdentifier:(id)a4 completion:(id)a5;
- (void)refreshSnapshotForPosterConfigurationMatchUUID:(id)a3 completion:(id)a4;
- (void)refreshSuggestionDescriptorsForConfigurationMatchingUUID:(id)a3 sessionInfo:(id)a4 completion:(id)a5;
- (void)removeAllFocusConfigurationsMatchingFocusUUID:(id)a3 completion:(id)a4;
- (void)resetRole:(id)a3 completion:(id)a4;
- (void)restoreArchivedDataStoreNamed:(id)a3 backupExistingDataStore:(id)a4 completion:(id)a5;
- (void)retrieveGallery:(id)a3;
- (void)runMigration:(id)a3 migrationDescriptor:(id)a4 completion:(id)a5;
- (void)setHostConfiguration:(id)a3 forRole:(id)a4 completion:(id)a5;
- (void)stashCurrentDataStoreWithName:(id)a3 options:(id)a4 completion:(id)a5;
- (void)terminate;
- (void)triggerMessedUpDataProtectionWithCompletion:(id)a3;
- (void)unignoreExtension:(id)a3 completion:(id)a4;
- (void)updatePosterConfiguration:(id)a3 updates:(id)a4 completion:(id)a5;
- (void)updatePosterConfigurationMatchingUUID:(id)a3 updates:(id)a4 completion:(id)a5;
- (void)updatePosterConfigurationsFromHostForRole:(id)a3 completion:(id)a4;
- (void)updateToSelectedPosterMatchingUUID:(id)a3 role:(id)a4 completion:(id)a5;
@end

@implementation PRSServer

- (PRSServer)init
{
  v14.receiver = self;
  v14.super_class = PRSServer;
  v2 = [(PRSServer *)&v14 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.posterboardservices.Server.queue", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = MEMORY[0x1E698F4B8];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __17__PRSServer_init__block_invoke;
    v12[3] = &unk_1E818CF10;
    v6 = v2;
    v13 = v6;
    v7 = [v5 listenerWithConfigurator:v12];
    connectionListener = v6->_connectionListener;
    v6->_connectionListener = v7;

    v9 = [MEMORY[0x1E695DF70] array];
    connections = v6->_connections;
    v6->_connections = v9;
  }

  return v2;
}

void __17__PRSServer_init__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  [v5 setDomain:@"com.apple.posterboardservices"];
  v3 = PRSServiceInterface();
  v4 = [v3 identifier];
  [v5 setService:v4];

  [v5 setDelegate:*(a1 + 32)];
}

- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __55__PRSServer_listener_didReceiveConnection_withContext___block_invoke;
  v16[3] = &unk_1E818CF60;
  v16[4] = self;
  [v6 configureConnection:v16];
  v7 = [v6 remoteProcess];
  v8 = [v7 bundleIdentifier];
  if (([v7 hasEntitlement:@"com.apple.posterboardservices.data-store"] & 1) != 0 || objc_msgSend(v8, "isEqualToString:", @"com.apple.migrationpluginwrapper"))
  {
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __55__PRSServer_listener_didReceiveConnection_withContext___block_invoke_9;
    block[3] = &unk_1E818CF88;
    block[4] = self;
    v10 = v6;
    v15 = v10;
    dispatch_async(queue, block);
    v11 = PRSLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v18 = v10;
      _os_log_impl(&dword_1C26FF000, v11, OS_LOG_TYPE_DEFAULT, "PRSServer received connection: %{public}@", buf, 0xCu);
    }

    [v10 activate];
  }

  else
  {
    v12 = PRSLogCommon();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v18 = v6;
      _os_log_impl(&dword_1C26FF000, v12, OS_LOG_TYPE_DEFAULT, "PRSServer rejected connection: %{public}@", buf, 0xCu);
    }

    [v6 invalidate];
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __55__PRSServer_listener_didReceiveConnection_withContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PRSDefaultServiceQuality();
  [v3 setServiceQuality:v4];

  v5 = PRSServiceInterface();
  [v3 setInterface:v5];

  [v3 setInterfaceTarget:*(a1 + 32)];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55__PRSServer_listener_didReceiveConnection_withContext___block_invoke_2;
  v6[3] = &unk_1E818CF38;
  v6[4] = *(a1 + 32);
  [v3 setInvalidationHandler:v6];
  [v3 setTargetQueue:*(*(a1 + 32) + 8)];
}

void __55__PRSServer_listener_didReceiveConnection_withContext___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PRSLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_1C26FF000, v4, OS_LOG_TYPE_DEFAULT, "PRSServer received connection invalidation: %{public}@", &v6, 0xCu);
  }

  [*(a1 + 32) _queue_removeConnection:v3];
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_queue_addConnection:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PRSLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = v4;
    _os_log_impl(&dword_1C26FF000, v5, OS_LOG_TYPE_DEFAULT, "Adding Connection: %{public}@", &v7, 0xCu);
  }

  dispatch_assert_queue_V2(self->_queue);
  [(NSMutableArray *)self->_connections addObject:v4];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)_queue_removeConnection:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PRSLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = v4;
    _os_log_impl(&dword_1C26FF000, v5, OS_LOG_TYPE_DEFAULT, "Removing Connection: %{public}@", &v7, 0xCu);
  }

  dispatch_assert_queue_V2(self->_queue);
  [(NSMutableArray *)self->_connections removeObject:v4];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)deleteDataStoreWithCompletion:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PRSLogPosterContents();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v11 = 136315138;
    v12 = "[PRSServer deleteDataStoreWithCompletion:]";
    _os_log_impl(&dword_1C26FF000, v5, OS_LOG_TYPE_INFO, "%s", &v11, 0xCu);
  }

  v6 = [MEMORY[0x1E698F490] currentContext];
  v7 = [v6 remoteProcess];
  v8 = [v7 hasEntitlement:@"com.apple.posterboardservices.data-store.deleteDataStore"];

  if (v8)
  {
    v9 = [(PRSServer *)self delegate];
    [v9 server:self deleteDataStoreWithCompletion:v4];
LABEL_7:

    goto LABEL_8;
  }

  if (v4)
  {
    v9 = [MEMORY[0x1E696ABC0] prs_entitlementFailureErrorWithFile:"/Library/Caches/com.apple.xbs/Sources/Wallpaper_NonUI/PosterBoardServices/Server/PRSServer.m" line:121];
    v4[2](v4, v9);
    goto LABEL_7;
  }

LABEL_8:

  v10 = *MEMORY[0x1E69E9840];
}

- (void)triggerMessedUpDataProtectionWithCompletion:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PRSLogPosterContents();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v11 = 136315138;
    v12 = "[PRSServer triggerMessedUpDataProtectionWithCompletion:]";
    _os_log_impl(&dword_1C26FF000, v5, OS_LOG_TYPE_INFO, "%s", &v11, 0xCu);
  }

  v6 = [MEMORY[0x1E698F490] currentContext];
  v7 = [v6 remoteProcess];
  if ([v7 hasEntitlement:@"com.apple.posterboardservices.data-store.deleteDataStore"])
  {
    v8 = MEMORY[0x1C691CE60]("[PRSServer triggerMessedUpDataProtectionWithCompletion:]");

    if (v8)
    {
      v9 = [(PRSServer *)self delegate];
      [v9 server:self triggerMessedUpDataProtectionWithCompletion:v4];
LABEL_9:

      goto LABEL_10;
    }
  }

  else
  {
  }

  if (v4)
  {
    v9 = [MEMORY[0x1E696ABC0] prs_entitlementFailureErrorWithFile:"/Library/Caches/com.apple.xbs/Sources/Wallpaper_NonUI/PosterBoardServices/Server/PRSServer.m" line:134];
    v4[2](v4, v9);
    goto LABEL_9;
  }

LABEL_10:

  v10 = *MEMORY[0x1E69E9840];
}

- (void)resetRole:(id)a3 completion:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = PRSLogPosterContents();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v14 = 136315138;
    v15 = "[PRSServer resetRole:completion:]";
    _os_log_impl(&dword_1C26FF000, v8, OS_LOG_TYPE_INFO, "%s", &v14, 0xCu);
  }

  v9 = [MEMORY[0x1E698F490] currentContext];
  v10 = [v9 remoteProcess];
  v11 = [v10 hasEntitlement:@"com.apple.posterboardservices.data-store.deleteDataStore"];

  if (v11)
  {
    v12 = [(PRSServer *)self delegate];
    [v12 server:self resetRole:v6 completion:v7];
LABEL_7:

    goto LABEL_8;
  }

  if (v7)
  {
    v12 = [MEMORY[0x1E696ABC0] prs_entitlementFailureErrorWithFile:"/Library/Caches/com.apple.xbs/Sources/Wallpaper_NonUI/PosterBoardServices/Server/PRSServer.m" line:147];
    v7[2](v7, v12);
    goto LABEL_7;
  }

LABEL_8:

  v13 = *MEMORY[0x1E69E9840];
}

- (void)invalidateDataStoreWithCompletion:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PRSLogPosterContents();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v11 = 136315138;
    v12 = "[PRSServer invalidateDataStoreWithCompletion:]";
    _os_log_impl(&dword_1C26FF000, v5, OS_LOG_TYPE_INFO, "%s", &v11, 0xCu);
  }

  v6 = [MEMORY[0x1E698F490] currentContext];
  v7 = [v6 remoteProcess];
  v8 = [v7 hasEntitlement:@"com.apple.posterboardservices.data-store.deleteDataStore"];

  if (v8)
  {
    v9 = [(PRSServer *)self delegate];
    [v9 server:self invalidateDataStoreWithCompletion:v4];
LABEL_7:

    goto LABEL_8;
  }

  if (v4)
  {
    v9 = [MEMORY[0x1E696ABC0] prs_entitlementFailureErrorWithFile:"/Library/Caches/com.apple.xbs/Sources/Wallpaper_NonUI/PosterBoardServices/Server/PRSServer.m" line:160];
    v4[2](v4, v9);
    goto LABEL_7;
  }

LABEL_8:

  v10 = *MEMORY[0x1E69E9840];
}

- (void)terminate
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = PRSLogPosterContents();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v7 = 136315138;
    v8 = "[PRSServer terminate]";
    _os_log_impl(&dword_1C26FF000, v2, OS_LOG_TYPE_INFO, "%s", &v7, 0xCu);
  }

  v3 = [MEMORY[0x1E698F490] currentContext];
  v4 = [v3 remoteProcess];
  v5 = [v4 hasEntitlement:@"com.apple.posterboardservices.data-store.deleteDataStore"];

  if (v5)
  {
    exit(0);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)setHostConfiguration:(id)a3 forRole:(id)a4 completion:(id)a5
{
  v14 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x1E698F490] currentContext];
  v11 = [v10 remoteProcess];
  v12 = [v11 hasEntitlement:@"com.apple.posterboardservices.host.configuration"];

  if (v12)
  {
    v13 = [(PRSServer *)self delegate];
    [v13 server:self setHostConfiguration:v14 forRole:v8 completion:v9];
  }

  else
  {
    if (!v9)
    {
      goto LABEL_6;
    }

    v13 = [MEMORY[0x1E696ABC0] prs_entitlementFailureErrorWithFile:"/Library/Caches/com.apple.xbs/Sources/Wallpaper_NonUI/PosterBoardServices/Server/PRSServer.m" line:181];
    v9[2](v9, v13);
  }

LABEL_6:
}

- (void)deleteHostConfigurationForRole:(id)a3 completion:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E698F490] currentContext];
  v8 = [v7 remoteProcess];
  v9 = [v8 hasEntitlement:@"com.apple.posterboardservices.host.configuration"];

  if (v9)
  {
    v10 = [(PRSServer *)self delegate];
    [v10 server:self deleteHostConfigurationForRole:v11 completion:v6];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_6;
    }

    v10 = [MEMORY[0x1E696ABC0] prs_entitlementFailureErrorWithFile:"/Library/Caches/com.apple.xbs/Sources/Wallpaper_NonUI/PosterBoardServices/Server/PRSServer.m" line:191];
    v6[2](v6, v10);
  }

LABEL_6:
}

- (void)updatePosterConfigurationsFromHostForRole:(id)a3 completion:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E698F490] currentContext];
  v8 = [v7 remoteProcess];
  v9 = [v8 hasEntitlement:@"com.apple.posterboardservices.host.configuration"];

  if (v9)
  {
    v10 = [(PRSServer *)self delegate];
    [v10 server:self updatePosterConfigurationsFromHostForRole:v11 completion:v6];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_6;
    }

    v10 = [MEMORY[0x1E696ABC0] prs_entitlementFailureErrorWithFile:"/Library/Caches/com.apple.xbs/Sources/Wallpaper_NonUI/PosterBoardServices/Server/PRSServer.m" line:201];
    v6[2](v6, v10);
  }

LABEL_6:
}

- (void)fetchExtensionIdentifiersWithCompletion:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PRSLogPosterContents();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v11 = "[PRSServer fetchExtensionIdentifiersWithCompletion:]";
    _os_log_impl(&dword_1C26FF000, v5, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
  }

  if (v4)
  {
    v6 = [(PRSServer *)self delegate];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __53__PRSServer_fetchExtensionIdentifiersWithCompletion___block_invoke;
    v8[3] = &unk_1E818CFB0;
    v9 = v4;
    [v6 server:self fetchExtensionIdentifiersWithCompletion:v8];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)fetchPosterDescriptorsForExtension:(id)a3 completion:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = PRSLogPosterContents();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v21 = "[PRSServer fetchPosterDescriptorsForExtension:completion:]";
    _os_log_impl(&dword_1C26FF000, v9, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
  }

  if (v8)
  {
    v10 = [MEMORY[0x1E698F490] currentContext];
    v11 = [v10 remoteProcess];
    v12 = [v11 auditToken];

    v13 = [(PRSServer *)self delegate];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __59__PRSServer_fetchPosterDescriptorsForExtension_completion___block_invoke;
    v16[3] = &unk_1E818CFD8;
    v17 = v12;
    v19 = a2;
    v18 = v8;
    v14 = v12;
    [v13 server:self fetchPosterDescriptorsForExtension:v7 completion:v16];
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __59__PRSServer_fetchPosterDescriptorsForExtension_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v19 = a3;
  v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v5, "count")}];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v32 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
    do
    {
      v11 = 0;
      do
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v22 + 1) + 8 * v11);
        v13 = *(a1 + 32);
        v21 = 0;
        v14 = [v12 extendContentsReadAccessToAuditToken:v13 error:&v21];
        v15 = v21;
        if (v15)
        {
          v16 = PRSLogPosterContents();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v20 = NSStringFromSelector(*(a1 + 48));
            *buf = 138412802;
            v27 = v20;
            v28 = 2112;
            v29 = v15;
            v30 = 2112;
            v31 = v12;
            _os_log_error_impl(&dword_1C26FF000, v16, OS_LOG_TYPE_ERROR, "sandbox extension did error in %@ : error=%@ poster=%@", buf, 0x20u);
          }
        }

        if (v14)
        {
          v17 = v14;
        }

        else
        {
          v17 = v12;
        }

        [v6 addObject:v17];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v22 objects:v32 count:16];
    }

    while (v9);
  }

  (*(*(a1 + 40) + 16))();
  v18 = *MEMORY[0x1E69E9840];
}

- (void)fetchStaticPosterDescriptorsForExtension:(id)a3 completion:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = PRSLogPosterContents();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v21 = "[PRSServer fetchStaticPosterDescriptorsForExtension:completion:]";
    _os_log_impl(&dword_1C26FF000, v9, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
  }

  if (v8)
  {
    v10 = [MEMORY[0x1E698F490] currentContext];
    v11 = [v10 remoteProcess];
    v12 = [v11 auditToken];

    v13 = [(PRSServer *)self delegate];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __65__PRSServer_fetchStaticPosterDescriptorsForExtension_completion___block_invoke;
    v16[3] = &unk_1E818CFD8;
    v17 = v12;
    v19 = a2;
    v18 = v8;
    v14 = v12;
    [v13 server:self fetchStaticPosterDescriptorsForExtension:v7 completion:v16];
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __65__PRSServer_fetchStaticPosterDescriptorsForExtension_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v19 = a3;
  v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v5, "count")}];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v32 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
    do
    {
      v11 = 0;
      do
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v22 + 1) + 8 * v11);
        v13 = *(a1 + 32);
        v21 = 0;
        v14 = [v12 extendContentsReadAccessToAuditToken:v13 error:&v21];
        v15 = v21;
        if (v15)
        {
          v16 = PRSLogPosterContents();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v20 = NSStringFromSelector(*(a1 + 48));
            *buf = 138412802;
            v27 = v20;
            v28 = 2112;
            v29 = v15;
            v30 = 2112;
            v31 = v12;
            _os_log_error_impl(&dword_1C26FF000, v16, OS_LOG_TYPE_ERROR, "sandbox extension did error in %@ : error=%@ poster=%@", buf, 0x20u);
          }
        }

        if (v14)
        {
          v17 = v14;
        }

        else
        {
          v17 = v12;
        }

        [v6 addObject:v17];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v22 objects:v32 count:16];
    }

    while (v9);
  }

  (*(*(a1 + 40) + 16))();
  v18 = *MEMORY[0x1E69E9840];
}

- (void)refreshPosterDescriptorsForExtension:(id)a3 sessionInfo:(id)a4 completion:(id)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = PRSLogPosterContents();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v25 = "[PRSServer refreshPosterDescriptorsForExtension:sessionInfo:completion:]";
    _os_log_impl(&dword_1C26FF000, v12, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
  }

  if (v9)
  {
    v13 = [MEMORY[0x1E698F490] currentContext];
    v14 = [v13 remoteProcess];
    v15 = [v14 auditToken];

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __73__PRSServer_refreshPosterDescriptorsForExtension_sessionInfo_completion___block_invoke;
    v20[3] = &unk_1E818CFD8;
    v21 = v15;
    v23 = a2;
    v22 = v9;
    v16 = v15;
    v17 = MEMORY[0x1C691D2A0](v20);
  }

  else
  {
    v17 = &__block_literal_global_8;
  }

  v18 = [(PRSServer *)self delegate];
  [v18 server:self refreshPosterDescriptorsForExtension:v11 sessionInfo:v10 completion:v17];

  v19 = *MEMORY[0x1E69E9840];
}

void __73__PRSServer_refreshPosterDescriptorsForExtension_sessionInfo_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v19 = a3;
  v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v5, "count")}];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v32 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
    do
    {
      v11 = 0;
      do
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v22 + 1) + 8 * v11);
        v13 = *(a1 + 32);
        v21 = 0;
        v14 = [v12 extendContentsReadAccessToAuditToken:v13 error:&v21];
        v15 = v21;
        if (v15)
        {
          v16 = PRSLogPosterContents();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v20 = NSStringFromSelector(*(a1 + 48));
            *buf = 138412802;
            v27 = v20;
            v28 = 2112;
            v29 = v15;
            v30 = 2112;
            v31 = v12;
            _os_log_error_impl(&dword_1C26FF000, v16, OS_LOG_TYPE_ERROR, "sandbox extension did error in %@ : error=%@ poster=%@", buf, 0x20u);
          }
        }

        if (v14)
        {
          v17 = v14;
        }

        else
        {
          v17 = v12;
        }

        [v6 addObject:v17];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v22 objects:v32 count:16];
    }

    while (v9);
  }

  (*(*(a1 + 40) + 16))();
  v18 = *MEMORY[0x1E69E9840];
}

- (void)deletePosterDescriptorsForExtension:(id)a3 completion:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = PRSLogPosterContents();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v18 = "[PRSServer deletePosterDescriptorsForExtension:completion:]";
    _os_log_impl(&dword_1C26FF000, v8, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
  }

  v9 = [MEMORY[0x1E698F490] currentContext];
  v10 = [v9 remoteProcess];
  v11 = [v10 hasEntitlement:@"com.apple.posterboardservices.data-store.deleteDescriptors"];

  if (v11)
  {
    v12 = [(PRSServer *)self delegate];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __60__PRSServer_deletePosterDescriptorsForExtension_completion___block_invoke;
    v15[3] = &unk_1E818D020;
    v16 = v7;
    [v12 server:self deletePosterDescriptorsForExtension:v6 completion:v15];

    v13 = v16;
LABEL_7:

    goto LABEL_8;
  }

  if (v7)
  {
    v13 = [MEMORY[0x1E696ABC0] prs_entitlementFailureErrorWithFile:"/Library/Caches/com.apple.xbs/Sources/Wallpaper_NonUI/PosterBoardServices/Server/PRSServer.m" line:297];
    (*(v7 + 2))(v7, v13);
    goto LABEL_7;
  }

LABEL_8:

  v14 = *MEMORY[0x1E69E9840];
}

uint64_t __60__PRSServer_deletePosterDescriptorsForExtension_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)pushToProactiveWithCompletion:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PRSLogPosterContents();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v12 = "[PRSServer pushToProactiveWithCompletion:]";
    _os_log_impl(&dword_1C26FF000, v5, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
  }

  v6 = [(PRSServer *)self delegate];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __43__PRSServer_pushToProactiveWithCompletion___block_invoke;
  v9[3] = &unk_1E818D020;
  v10 = v4;
  v7 = v4;
  [v6 server:self pushToProactiveWithCompletion:v9];

  v8 = *MEMORY[0x1E69E9840];
}

uint64_t __43__PRSServer_pushToProactiveWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)pushPosterGalleryUpdate:(id)a3 completion:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  v8 = PRSLogPosterContents();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v15 = "[PRSServer pushPosterGalleryUpdate:completion:]";
    _os_log_impl(&dword_1C26FF000, v8, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
  }

  v9 = [(PRSServer *)self delegate];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __48__PRSServer_pushPosterGalleryUpdate_completion___block_invoke;
  v12[3] = &unk_1E818D020;
  v13 = v6;
  v10 = v6;
  [v9 server:self pushPosterGalleryUpdate:v7 completion:v12];

  v11 = *MEMORY[0x1E69E9840];
}

uint64_t __48__PRSServer_pushPosterGalleryUpdate_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)fetchGallery:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PRSLogPosterContents();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v12 = "[PRSServer fetchGallery:]";
    _os_log_impl(&dword_1C26FF000, v5, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
  }

  v6 = [(PRSServer *)self delegate];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __26__PRSServer_fetchGallery___block_invoke;
  v9[3] = &unk_1E818D048;
  v10 = v4;
  v7 = v4;
  [v6 server:self fetchGallery:v9];

  v8 = *MEMORY[0x1E69E9840];
}

uint64_t __26__PRSServer_fetchGallery___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, a3, a5);
  }

  return result;
}

- (void)retrieveGallery:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PRSLogPosterContents();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v12 = "[PRSServer retrieveGallery:]";
    _os_log_impl(&dword_1C26FF000, v5, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
  }

  v6 = [(PRSServer *)self delegate];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __29__PRSServer_retrieveGallery___block_invoke;
  v9[3] = &unk_1E818D048;
  v10 = v4;
  v7 = v4;
  [v6 server:self retrieveGallery:v9];

  v8 = *MEMORY[0x1E69E9840];
}

uint64_t __29__PRSServer_retrieveGallery___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, a3, a5);
  }

  return result;
}

- (void)createPosterConfigurationForProviderIdentifier:(id)a3 posterDescriptorIdentifier:(id)a4 role:(id)a5 completion:(id)a6
{
  v29 = *MEMORY[0x1E69E9840];
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = PRSLogPosterContents();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v28 = "[PRSServer createPosterConfigurationForProviderIdentifier:posterDescriptorIdentifier:role:completion:]";
    _os_log_impl(&dword_1C26FF000, v15, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
  }

  if (v11)
  {
    v16 = [MEMORY[0x1E698F490] currentContext];
    v17 = [v16 remoteProcess];
    v18 = [v17 auditToken];

    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __103__PRSServer_createPosterConfigurationForProviderIdentifier_posterDescriptorIdentifier_role_completion___block_invoke;
    v23[3] = &unk_1E818D070;
    v24 = v18;
    v26 = a2;
    v25 = v11;
    v19 = v18;
    v20 = MEMORY[0x1C691D2A0](v23);
  }

  else
  {
    v20 = &__block_literal_global_21_0;
  }

  v21 = [(PRSServer *)self delegate];
  [v21 server:self createPosterConfigurationForProviderIdentifier:v14 posterDescriptorIdentifier:v13 role:v12 completion:v20];

  v22 = *MEMORY[0x1E69E9840];
}

void __103__PRSServer_createPosterConfigurationForProviderIdentifier_posterDescriptorIdentifier_role_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v14 = 0;
  v8 = [v5 extendContentsReadAccessToAuditToken:v7 error:&v14];
  v9 = v14;
  if (v9)
  {
    v10 = PRSLogPosterContents();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = NSStringFromSelector(*(a1 + 48));
      *buf = 138412802;
      v16 = v13;
      v17 = 2112;
      v18 = v9;
      v19 = 2112;
      v20 = v5;
      _os_log_error_impl(&dword_1C26FF000, v10, OS_LOG_TYPE_ERROR, "sandbox extension did error in %@ : error=%@ poster=%@", buf, 0x20u);
    }
  }

  if (v8)
  {
    v11 = v8;
  }

  else
  {
    v11 = v5;
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), v11, v6);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)deletePosterConfigurationsMatchingUUID:(id)a3 completion:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = PRSLogPosterContents();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v18 = "[PRSServer deletePosterConfigurationsMatchingUUID:completion:]";
    _os_log_impl(&dword_1C26FF000, v8, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
  }

  v9 = [MEMORY[0x1E698F490] currentContext];
  v10 = [v9 remoteProcess];
  v11 = [v10 hasEntitlement:@"com.apple.posterboardservices.data-store.deleteDescriptors"];

  if (v11)
  {
    v12 = [(PRSServer *)self delegate];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __63__PRSServer_deletePosterConfigurationsMatchingUUID_completion___block_invoke;
    v15[3] = &unk_1E818D020;
    v16 = v7;
    [v12 server:self deletePosterConfigurationsMatchingUUID:v6 completion:v15];

    v13 = v16;
LABEL_7:

    goto LABEL_8;
  }

  if (v7)
  {
    v13 = [MEMORY[0x1E696ABC0] prs_entitlementFailureErrorWithFile:"/Library/Caches/com.apple.xbs/Sources/Wallpaper_NonUI/PosterBoardServices/Server/PRSServer.m" line:398];
    (*(v7 + 2))(v7, v13);
    goto LABEL_7;
  }

LABEL_8:

  v14 = *MEMORY[0x1E69E9840];
}

- (void)exportPosterConfigurationMatchingUUID:(id)a3 completion:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = PRSLogPosterContents();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v14 = 136315138;
    v15 = "[PRSServer exportPosterConfigurationMatchingUUID:completion:]";
    _os_log_impl(&dword_1C26FF000, v8, OS_LOG_TYPE_INFO, "%s", &v14, 0xCu);
  }

  v9 = [MEMORY[0x1E698F490] currentContext];
  v10 = [v9 remoteProcess];
  v11 = [v10 hasEntitlement:@"com.apple.posterboardservices.data-store.accessSwitcherConfiguration"];

  if (v11)
  {
    v12 = [(PRSServer *)self delegate];
    [v12 server:self exportPosterConfigurationMatchingUUID:v6 completion:v7];
LABEL_7:

    goto LABEL_8;
  }

  if (v7)
  {
    v12 = [MEMORY[0x1E696ABC0] prs_entitlementFailureErrorWithFile:"/Library/Caches/com.apple.xbs/Sources/Wallpaper_NonUI/PosterBoardServices/Server/PRSServer.m" line:412];
    v7[2](v7, 0, v12);
    goto LABEL_7;
  }

LABEL_8:

  v13 = *MEMORY[0x1E69E9840];
}

- (void)importPosterConfigurationFromArchiveData:(id)a3 completion:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = PRSLogPosterContents();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v14 = 136315138;
    v15 = "[PRSServer importPosterConfigurationFromArchiveData:completion:]";
    _os_log_impl(&dword_1C26FF000, v8, OS_LOG_TYPE_INFO, "%s", &v14, 0xCu);
  }

  v9 = [MEMORY[0x1E698F490] currentContext];
  v10 = [v9 remoteProcess];
  v11 = [v10 hasEntitlement:@"com.apple.posterboardservices.data-store.mutateSwitcherConfiguration"];

  if (v11)
  {
    v12 = [(PRSServer *)self delegate];
    [v12 server:self importPosterConfigurationFromArchiveData:v6 completion:v7];
LABEL_7:

    goto LABEL_8;
  }

  if (v7)
  {
    v12 = [MEMORY[0x1E696ABC0] prs_entitlementFailureErrorWithFile:"/Library/Caches/com.apple.xbs/Sources/Wallpaper_NonUI/PosterBoardServices/Server/PRSServer.m" line:424];
    v7[2](v7, 0, v12);
    goto LABEL_7;
  }

LABEL_8:

  v13 = *MEMORY[0x1E69E9840];
}

- (void)fetchSelectedPosterForRole:(id)a3 completion:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = PRSLogPosterContents();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v14 = 136315138;
    v15 = "[PRSServer fetchSelectedPosterForRole:completion:]";
    _os_log_impl(&dword_1C26FF000, v8, OS_LOG_TYPE_INFO, "%s", &v14, 0xCu);
  }

  v9 = [MEMORY[0x1E698F490] currentContext];
  v10 = [v9 remoteProcess];
  v11 = [v10 hasEntitlement:@"com.apple.posterboardservices.data-store.accessSwitcherConfiguration"];

  if (v11)
  {
    v12 = [(PRSServer *)self delegate];
    [v12 server:self fetchSelectedPosterForRole:v6 completion:v7];
LABEL_7:

    goto LABEL_8;
  }

  if (v7)
  {
    v12 = [MEMORY[0x1E696ABC0] prs_entitlementFailureErrorWithFile:"/Library/Caches/com.apple.xbs/Sources/Wallpaper_NonUI/PosterBoardServices/Server/PRSServer.m" line:437];
    v7[2](v7, 0, v12);
    goto LABEL_7;
  }

LABEL_8:

  v13 = *MEMORY[0x1E69E9840];
}

- (void)fetchActivePosterForRole:(id)a3 completion:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = PRSLogPosterContents();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v18 = "[PRSServer fetchActivePosterForRole:completion:]";
    _os_log_impl(&dword_1C26FF000, v8, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
  }

  v9 = [MEMORY[0x1E698F490] currentContext];
  v10 = [v9 remoteProcess];
  v11 = [v10 hasEntitlement:@"com.apple.posterboardservices.data-store.accessSwitcherConfiguration"];

  if (v11)
  {
    v12 = [(PRSServer *)self delegate];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __49__PRSServer_fetchActivePosterForRole_completion___block_invoke;
    v15[3] = &unk_1E818D0B8;
    v16 = v7;
    [v12 server:self fetchActivePosterForRole:v6 completion:v15];

    v13 = v16;
LABEL_7:

    goto LABEL_8;
  }

  if (v7)
  {
    v13 = [MEMORY[0x1E696ABC0] prs_entitlementFailureErrorWithFile:"/Library/Caches/com.apple.xbs/Sources/Wallpaper_NonUI/PosterBoardServices/Server/PRSServer.m" line:450];
    (*(v7 + 2))(v7, 0, 0, v13);
    goto LABEL_7;
  }

LABEL_8:

  v14 = *MEMORY[0x1E69E9840];
}

- (id)fetchActivePosterForRole:(id)a3 error:(id *)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = PRSLogPosterContents();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v15 = 136315138;
    v16 = "[PRSServer fetchActivePosterForRole:error:]";
    _os_log_impl(&dword_1C26FF000, v7, OS_LOG_TYPE_INFO, "%s", &v15, 0xCu);
  }

  v8 = [MEMORY[0x1E698F490] currentContext];
  v9 = [v8 remoteProcess];
  v10 = [v9 hasEntitlement:@"com.apple.posterboardservices.data-store.accessSwitcherConfiguration"];

  if (v10)
  {
    v11 = [(PRSServer *)self delegate];
    v12 = [v11 server:self fetchActivePosterForRole:v6 error:a4];
  }

  else if (a4)
  {
    [MEMORY[0x1E696ABC0] prs_entitlementFailureErrorWithFile:"/Library/Caches/com.apple.xbs/Sources/Wallpaper_NonUI/PosterBoardServices/Server/PRSServer.m" line:464];
    *a4 = v12 = 0;
  }

  else
  {
    v12 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (void)updateToSelectedPosterMatchingUUID:(id)a3 role:(id)a4 completion:(id)a5
{
  v22 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = PRSLogPosterContents();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v20 = 136315138;
    v21 = "[PRSServer updateToSelectedPosterMatchingUUID:role:completion:]";
    _os_log_impl(&dword_1C26FF000, v11, OS_LOG_TYPE_INFO, "%s", &v20, 0xCu);
  }

  v12 = [MEMORY[0x1E698F490] currentContext];
  v13 = [v12 remoteProcess];
  v14 = [v13 hasEntitlement:@"com.apple.posterboardservices.data-store.mutateSwitcherConfiguration"];

  if (v14)
  {
    v15 = [MEMORY[0x1E698F490] currentContext];
    v16 = [v15 remoteProcess];
    v17 = [v16 bundleIdentifier];

    v18 = [(PRSServer *)self delegate];
    [v18 server:self updateToSelectedConfigurationMatchingUUID:v8 role:v9 from:v17 completion:v10];

LABEL_7:
    goto LABEL_8;
  }

  if (v10)
  {
    v17 = [MEMORY[0x1E696ABC0] prs_entitlementFailureErrorWithFile:"/Library/Caches/com.apple.xbs/Sources/Wallpaper_NonUI/PosterBoardServices/Server/PRSServer.m" line:477];
    v10[2](v10, v17);
    goto LABEL_7;
  }

LABEL_8:

  v19 = *MEMORY[0x1E69E9840];
}

- (void)fetchPosterConfigurationsForRole:(id)a3 completion:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = PRSLogPosterContents();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v24 = "[PRSServer fetchPosterConfigurationsForRole:completion:]";
    _os_log_impl(&dword_1C26FF000, v9, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
  }

  v10 = [MEMORY[0x1E698F490] currentContext];
  v11 = [v10 remoteProcess];
  v12 = [v11 hasEntitlement:@"com.apple.posterboardservices.data-store.accessSwitcherConfiguration"];

  if (v12)
  {
    if (v8)
    {
      v13 = [MEMORY[0x1E698F490] currentContext];
      v14 = [v13 remoteProcess];
      v15 = [v14 auditToken];

      v16 = [(PRSServer *)self delegate];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __57__PRSServer_fetchPosterConfigurationsForRole_completion___block_invoke;
      v19[3] = &unk_1E818CFD8;
      v20 = v15;
      v22 = a2;
      v21 = v8;
      v17 = v15;
      [v16 server:self fetchPosterConfigurationsForRole:v7 completion:v19];

LABEL_8:
    }
  }

  else if (v8)
  {
    v17 = [MEMORY[0x1E696ABC0] prs_entitlementFailureErrorWithFile:"/Library/Caches/com.apple.xbs/Sources/Wallpaper_NonUI/PosterBoardServices/Server/PRSServer.m" line:491];
    (*(v8 + 2))(v8, 0, v17);
    goto LABEL_8;
  }

  v18 = *MEMORY[0x1E69E9840];
}

void __57__PRSServer_fetchPosterConfigurationsForRole_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v19 = a3;
  v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v5, "count")}];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v32 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
    do
    {
      v11 = 0;
      do
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v22 + 1) + 8 * v11);
        v13 = *(a1 + 32);
        v21 = 0;
        v14 = [v12 extendContentsReadAccessToAuditToken:v13 error:&v21];
        v15 = v21;
        if (v15)
        {
          v16 = PRSLogPosterContents();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v20 = NSStringFromSelector(*(a1 + 48));
            *buf = 138412802;
            v27 = v20;
            v28 = 2112;
            v29 = v15;
            v30 = 2112;
            v31 = v12;
            _os_log_error_impl(&dword_1C26FF000, v16, OS_LOG_TYPE_ERROR, "sandbox extension did error in %@ : error=%@ poster=%@", buf, 0x20u);
          }
        }

        if (v14)
        {
          v17 = v14;
        }

        else
        {
          v17 = v12;
        }

        [v6 addObject:v17];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v22 objects:v32 count:16];
    }

    while (v9);
  }

  (*(*(a1 + 40) + 16))();
  v18 = *MEMORY[0x1E69E9840];
}

- (void)fetchPosterConfigurationsForExtension:(id)a3 completion:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = PRSLogPosterContents();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v24 = "[PRSServer fetchPosterConfigurationsForExtension:completion:]";
    _os_log_impl(&dword_1C26FF000, v9, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
  }

  v10 = [MEMORY[0x1E698F490] currentContext];
  v11 = [v10 remoteProcess];
  v12 = [v11 hasEntitlement:@"com.apple.posterboardservices.data-store.accessSwitcherConfiguration"];

  if (v12)
  {
    if (v8)
    {
      v13 = [MEMORY[0x1E698F490] currentContext];
      v14 = [v13 remoteProcess];
      v15 = [v14 auditToken];

      v16 = [(PRSServer *)self delegate];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __62__PRSServer_fetchPosterConfigurationsForExtension_completion___block_invoke;
      v19[3] = &unk_1E818CFD8;
      v20 = v15;
      v22 = a2;
      v21 = v8;
      v17 = v15;
      [v16 server:self fetchPosterConfigurationsForExtension:v7 completion:v19];

LABEL_8:
    }
  }

  else if (v8)
  {
    v17 = [MEMORY[0x1E696ABC0] prs_entitlementFailureErrorWithFile:"/Library/Caches/com.apple.xbs/Sources/Wallpaper_NonUI/PosterBoardServices/Server/PRSServer.m" line:518];
    (*(v8 + 2))(v8, 0, v17);
    goto LABEL_8;
  }

  v18 = *MEMORY[0x1E69E9840];
}

void __62__PRSServer_fetchPosterConfigurationsForExtension_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v19 = a3;
  v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v5, "count")}];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v32 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
    do
    {
      v11 = 0;
      do
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v22 + 1) + 8 * v11);
        v13 = *(a1 + 32);
        v21 = 0;
        v14 = [v12 extendContentsReadAccessToAuditToken:v13 error:&v21];
        v15 = v21;
        if (v15)
        {
          v16 = PRSLogPosterContents();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v20 = NSStringFromSelector(*(a1 + 48));
            *buf = 138412802;
            v27 = v20;
            v28 = 2112;
            v29 = v15;
            v30 = 2112;
            v31 = v12;
            _os_log_error_impl(&dword_1C26FF000, v16, OS_LOG_TYPE_ERROR, "sandbox extension did error in %@ : error=%@ poster=%@", buf, 0x20u);
          }
        }

        if (v14)
        {
          v17 = v14;
        }

        else
        {
          v17 = v12;
        }

        [v6 addObject:v17];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v22 objects:v32 count:16];
    }

    while (v9);
  }

  (*(*(a1 + 40) + 16))();
  v18 = *MEMORY[0x1E69E9840];
}

- (void)fetchPosterSnapshotsWithRequest:(id)a3 completion:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  v8 = PRSLogPosterContents();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v15 = "[PRSServer fetchPosterSnapshotsWithRequest:completion:]";
    _os_log_impl(&dword_1C26FF000, v8, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
  }

  v9 = [(PRSServer *)self delegate];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __56__PRSServer_fetchPosterSnapshotsWithRequest_completion___block_invoke;
  v12[3] = &unk_1E818D0E0;
  v13 = v6;
  v10 = v6;
  [v9 server:self fetchPosterSnapshotsWithRequest:v7 completion:v12];

  v11 = *MEMORY[0x1E69E9840];
}

- (void)refreshPosterConfigurationMatchingUUID:(id)a3 sessionInfo:(id)a4 completion:(id)a5
{
  v29 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = PRSLogPosterContents();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v28 = "[PRSServer refreshPosterConfigurationMatchingUUID:sessionInfo:completion:]";
    _os_log_impl(&dword_1C26FF000, v12, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
  }

  v13 = [MEMORY[0x1E698F490] currentContext];
  v14 = [v13 remoteProcess];
  v15 = [v14 hasEntitlement:@"com.apple.posterboardservices.data-store.refreshConfigurations"];

  if (v15)
  {
    if (v11)
    {
      v16 = [MEMORY[0x1E698F490] currentContext];
      v17 = [v16 remoteProcess];
      v18 = [v17 auditToken];

      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __75__PRSServer_refreshPosterConfigurationMatchingUUID_sessionInfo_completion___block_invoke;
      v23[3] = &unk_1E818D070;
      v24 = v18;
      v26 = a2;
      v25 = v11;
      v19 = v18;
      v20 = MEMORY[0x1C691D2A0](v23);
    }

    else
    {
      v20 = &__block_literal_global_26;
    }

    v21 = [(PRSServer *)self delegate];
    [v21 server:self refreshPosterConfigurationMatchingUUID:v9 sessionInfo:v10 completion:v20];

    goto LABEL_10;
  }

  if (v11)
  {
    v20 = [MEMORY[0x1E696ABC0] prs_entitlementFailureErrorWithFile:"/Library/Caches/com.apple.xbs/Sources/Wallpaper_NonUI/PosterBoardServices/Server/PRSServer.m" line:551];
    (*(v11 + 2))(v11, 0, v20);
LABEL_10:
  }

  v22 = *MEMORY[0x1E69E9840];
}

void __75__PRSServer_refreshPosterConfigurationMatchingUUID_sessionInfo_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v14 = 0;
  v8 = [v5 extendContentsReadAccessToAuditToken:v7 error:&v14];
  v9 = v14;
  if (v9)
  {
    v10 = PRSLogPosterContents();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = NSStringFromSelector(*(a1 + 48));
      *buf = 138412802;
      v16 = v13;
      v17 = 2112;
      v18 = v9;
      v19 = 2112;
      v20 = v5;
      _os_log_error_impl(&dword_1C26FF000, v10, OS_LOG_TYPE_ERROR, "sandbox extension did error in %@ : error=%@ poster=%@", buf, 0x20u);
    }
  }

  if (v8)
  {
    v11 = v8;
  }

  else
  {
    v11 = v5;
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), v11, v6);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)associateConfigurationMatchingUUID:(id)a3 focusModeActivityUUID:(id)a4 completion:(id)a5
{
  v19 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = PRSLogPosterContents();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v17 = 136315138;
    v18 = "[PRSServer associateConfigurationMatchingUUID:focusModeActivityUUID:completion:]";
    _os_log_impl(&dword_1C26FF000, v11, OS_LOG_TYPE_INFO, "%s", &v17, 0xCu);
  }

  v12 = [MEMORY[0x1E698F490] currentContext];
  v13 = [v12 remoteProcess];
  v14 = [v13 hasEntitlement:@"com.apple.posterboardservices.data-store.mutateSwitcherConfiguration"];

  if (v14)
  {
    v15 = [(PRSServer *)self delegate];
    [v15 server:self associateConfigurationMatchingUUID:v8 focusModeActivityUUID:v9 completion:v10];
LABEL_7:

    goto LABEL_8;
  }

  if (v10)
  {
    v15 = [MEMORY[0x1E696ABC0] prs_entitlementFailureErrorWithFile:"/Library/Caches/com.apple.xbs/Sources/Wallpaper_NonUI/PosterBoardServices/Server/PRSServer.m" line:579];
    v10[2](v10, v15);
    goto LABEL_7;
  }

LABEL_8:

  v16 = *MEMORY[0x1E69E9840];
}

- (void)notePosterConfigurationUnderlyingModelDidChange:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PRSLogPosterContents();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v11 = 136315138;
    v12 = "[PRSServer notePosterConfigurationUnderlyingModelDidChange:]";
    _os_log_impl(&dword_1C26FF000, v5, OS_LOG_TYPE_INFO, "%s", &v11, 0xCu);
  }

  v6 = [MEMORY[0x1E698F490] currentContext];
  v7 = [v6 remoteProcess];
  v8 = [v7 hasEntitlement:@"com.apple.posterboardservices.data-store.mutateSwitcherConfiguration"];

  if (v8)
  {
    v9 = [(PRSServer *)self delegate];
    [v9 server:self notePosterConfigurationUnderlyingModelDidChange:v4];
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)refreshSnapshotForPosterConfigurationMatchUUID:(id)a3 completion:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = PRSLogPosterContents();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v14 = 136315138;
    v15 = "[PRSServer refreshSnapshotForPosterConfigurationMatchUUID:completion:]";
    _os_log_impl(&dword_1C26FF000, v8, OS_LOG_TYPE_INFO, "%s", &v14, 0xCu);
  }

  v9 = [MEMORY[0x1E698F490] currentContext];
  v10 = [v9 remoteProcess];
  v11 = [v10 hasEntitlement:@"com.apple.posterboardservices.data-store.refreshConfigurationSnapshot"];

  if (v11)
  {
    v12 = [(PRSServer *)self delegate];
    [v12 server:self refreshSnapshotForPosterConfigurationMatchUUID:v6 completion:v7];
LABEL_7:

    goto LABEL_8;
  }

  if (v7)
  {
    v12 = [MEMORY[0x1E696ABC0] prs_entitlementFailureErrorWithFile:"/Library/Caches/com.apple.xbs/Sources/Wallpaper_NonUI/PosterBoardServices/Server/PRSServer.m" line:599];
    v7[2](v7, v12);
    goto LABEL_7;
  }

LABEL_8:

  v13 = *MEMORY[0x1E69E9840];
}

- (void)ingestSnapshotCollection:(id)a3 forPosterConfigurationUUID:(id)a4 completion:(id)a5
{
  v22 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = PRSLogPosterContents();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v21 = "[PRSServer ingestSnapshotCollection:forPosterConfigurationUUID:completion:]";
    _os_log_impl(&dword_1C26FF000, v11, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
  }

  v12 = [MEMORY[0x1E698F490] currentContext];
  v13 = [v12 remoteProcess];
  v14 = [v13 hasEntitlement:@"com.apple.posterboardservices.data-store.mutateSwitcherConfiguration"];

  if (v14)
  {
    v15 = [(PRSServer *)self delegate];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __76__PRSServer_ingestSnapshotCollection_forPosterConfigurationUUID_completion___block_invoke;
    v18[3] = &unk_1E818D020;
    v19 = v10;
    [v15 server:self ingestSnapshotCollection:v8 forPosterConfigurationUUID:v9 completion:v18];

    v16 = v19;
LABEL_7:

    goto LABEL_8;
  }

  if (v10)
  {
    v16 = [MEMORY[0x1E696ABC0] prs_entitlementFailureErrorWithFile:"/Library/Caches/com.apple.xbs/Sources/Wallpaper_NonUI/PosterBoardServices/Server/PRSServer.m" line:611];
    (*(v10 + 2))(v10, v16);
    goto LABEL_7;
  }

LABEL_8:

  v17 = *MEMORY[0x1E69E9840];
}

- (void)fetchFocusUUIDForConfiguration:(id)a3 completion:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E698F490] currentContext];
  v8 = [v7 remoteProcess];
  v9 = [v8 hasEntitlement:@"com.apple.posterboardservices.data-store.accessSwitcherFocusConfiguration"];

  if (v9)
  {
    v10 = [(PRSServer *)self delegate];
    [v10 server:self fetchFocusUUIDForConfiguration:v11 completion:v6];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_6;
    }

    v10 = [MEMORY[0x1E696ABC0] prs_entitlementFailureErrorWithFile:"/Library/Caches/com.apple.xbs/Sources/Wallpaper_NonUI/PosterBoardServices/Server/PRSServer.m" line:623];
    v6[2](v6, 0, v10);
  }

LABEL_6:
}

- (void)removeAllFocusConfigurationsMatchingFocusUUID:(id)a3 completion:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E698F490] currentContext];
  v8 = [v7 remoteProcess];
  v9 = [v8 hasEntitlement:@"com.apple.posterboardservices.data-store.mutateSwitcherFocusConfiguration"];

  if (v9)
  {
    v10 = [(PRSServer *)self delegate];
    [v10 server:self removeAllFocusConfigurationsMatchingFocusUUID:v11 completion:v6];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_6;
    }

    v10 = [MEMORY[0x1E696ABC0] prs_entitlementFailureErrorWithFile:"/Library/Caches/com.apple.xbs/Sources/Wallpaper_NonUI/PosterBoardServices/Server/PRSServer.m" line:634];
    v6[2](v6, v10);
  }

LABEL_6:
}

- (void)fetchContentObstructionBoundsForPosterConfiguration:(id)a3 orientation:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v12 = [(PRSServer *)self delegate];
  v11 = [v9 integerValue];

  [v12 server:self fetchContentObstructionBoundsForPosterConfiguration:v10 orientation:v11 completion:v8];
}

- (void)fetchMaximalContentCutoutBoundsForOrientation:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(PRSServer *)self delegate];
  v8 = [v7 integerValue];

  [v9 server:self fetchMaximalContentCutoutBoundsForOrientation:v8 completion:v6];
}

- (void)fetchExtendedContentCutoutBoundsForOrientation:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(PRSServer *)self delegate];
  v8 = [v7 integerValue];

  [v9 server:self fetchExtendedContentCutoutBoundsForOrientation:v8 completion:v6];
}

- (void)fetchContentCutoutBoundsForPosterConfiguration:(id)a3 orientation:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v12 = [(PRSServer *)self delegate];
  v11 = [v9 integerValue];

  [v12 server:self fetchContentCutoutBoundsForPosterConfiguration:v10 orientation:v11 completion:v8];
}

- (void)fetchObscurableBoundsForPosterConfiguration:(id)a3 orientation:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v12 = [(PRSServer *)self delegate];
  v11 = [v9 integerValue];

  [v12 server:self fetchObscurableBoundsForPosterConfiguration:v10 orientation:v11 completion:v8];
}

- (void)fetchLimitedOcclusionBoundsForPosterConfiguration:(id)a3 orientation:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v12 = [(PRSServer *)self delegate];
  v11 = [v9 integerValue];

  [v12 server:self fetchLimitedOcclusionBoundsForPosterConfiguration:v10 orientation:v11 completion:v8];
}

- (void)refreshSnapshotForGalleryItemsMatchingDescriptorIdentifier:(id)a3 extensionIdentifier:(id)a4 completion:(id)a5
{
  v19 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = PRSLogPosterContents();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v17 = 136315138;
    v18 = "[PRSServer refreshSnapshotForGalleryItemsMatchingDescriptorIdentifier:extensionIdentifier:completion:]";
    _os_log_impl(&dword_1C26FF000, v11, OS_LOG_TYPE_INFO, "%s", &v17, 0xCu);
  }

  v12 = [MEMORY[0x1E698F490] currentContext];
  v13 = [v12 remoteProcess];
  v14 = [v13 hasEntitlement:@"com.apple.posterboardservices.data-store.mutateSwitcherConfiguration"];

  if (v14)
  {
    v15 = [(PRSServer *)self delegate];
    [v15 server:self refreshSnapshotForGalleryItemsMatchingDescriptorIdentifier:v8 extensionIdentifier:v9 completion:v10];
LABEL_7:

    goto LABEL_8;
  }

  if (v10)
  {
    v15 = [MEMORY[0x1E696ABC0] prs_entitlementFailureErrorWithFile:"/Library/Caches/com.apple.xbs/Sources/Wallpaper_NonUI/PosterBoardServices/Server/PRSServer.m" line:671];
    v10[2](v10, v15);
    goto LABEL_7;
  }

LABEL_8:

  v16 = *MEMORY[0x1E69E9840];
}

- (void)notifyActiveChargerIdentifierDidUpdate:(id)a3 completion:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = PRSLogPosterContents();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v14 = 136315138;
    v15 = "[PRSServer notifyActiveChargerIdentifierDidUpdate:completion:]";
    _os_log_impl(&dword_1C26FF000, v8, OS_LOG_TYPE_INFO, "%s", &v14, 0xCu);
  }

  v9 = [MEMORY[0x1E698F490] currentContext];
  v10 = [v9 remoteProcess];
  v11 = [v10 hasEntitlement:@"com.apple.posterboardservices.data-store.mutateSwitcherConfiguration"];

  if (v11)
  {
    v12 = [(PRSServer *)self delegate];
    [v12 server:self notifyActiveChargerIdentifierDidUpdate:v6 completion:v7];
LABEL_7:

    goto LABEL_8;
  }

  if (v7)
  {
    v12 = [MEMORY[0x1E696ABC0] prs_entitlementFailureErrorWithFile:"/Library/Caches/com.apple.xbs/Sources/Wallpaper_NonUI/PosterBoardServices/Server/PRSServer.m" line:682];
    v7[2](v7, v12);
    goto LABEL_7;
  }

LABEL_8:

  v13 = *MEMORY[0x1E69E9840];
}

- (void)notifyFocusModeDidChange:(id)a3 completion:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = PRSLogPosterContents();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v14 = 136315138;
    v15 = "[PRSServer notifyFocusModeDidChange:completion:]";
    _os_log_impl(&dword_1C26FF000, v8, OS_LOG_TYPE_INFO, "%s", &v14, 0xCu);
  }

  v9 = [MEMORY[0x1E698F490] currentContext];
  v10 = [v9 remoteProcess];
  v11 = [v10 hasEntitlement:@"com.apple.posterboardservices.data-store.mutateSwitcherConfiguration"];

  if (v11)
  {
    v12 = [(PRSServer *)self delegate];
    [v12 server:self notifyFocusModeDidChange:v6 completion:v7];
LABEL_7:

    goto LABEL_8;
  }

  if (v7)
  {
    v12 = [MEMORY[0x1E696ABC0] prs_entitlementFailureErrorWithFile:"/Library/Caches/com.apple.xbs/Sources/Wallpaper_NonUI/PosterBoardServices/Server/PRSServer.m" line:693];
    v7[2](v7, v12);
    goto LABEL_7;
  }

LABEL_8:

  v13 = *MEMORY[0x1E69E9840];
}

- (void)notifyAvailableFocusModesDidChange:(id)a3 completion:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = PRSLogPosterContents();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v14 = 136315138;
    v15 = "[PRSServer notifyAvailableFocusModesDidChange:completion:]";
    _os_log_impl(&dword_1C26FF000, v8, OS_LOG_TYPE_INFO, "%s", &v14, 0xCu);
  }

  v9 = [MEMORY[0x1E698F490] currentContext];
  v10 = [v9 remoteProcess];
  v11 = [v10 hasEntitlement:@"com.apple.posterboardservices.data-store.mutateSwitcherConfiguration"];

  if (v11)
  {
    v12 = [(PRSServer *)self delegate];
    [v12 server:self notifyAvailableFocusModesDidChange:v6 completion:v7];
LABEL_7:

    goto LABEL_8;
  }

  if (v7)
  {
    v12 = [MEMORY[0x1E696ABC0] prs_entitlementFailureErrorWithFile:"/Library/Caches/com.apple.xbs/Sources/Wallpaper_NonUI/PosterBoardServices/Server/PRSServer.m" line:704];
    v7[2](v7, v12);
    goto LABEL_7;
  }

LABEL_8:

  v13 = *MEMORY[0x1E69E9840];
}

- (void)prewarm:(id)a3 completion:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = PRSLogPosterContents();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v14 = 136315138;
    v15 = "[PRSServer prewarm:completion:]";
    _os_log_impl(&dword_1C26FF000, v8, OS_LOG_TYPE_INFO, "%s", &v14, 0xCu);
  }

  v9 = [MEMORY[0x1E698F490] currentContext];
  v10 = [v9 remoteProcess];
  v11 = [v10 hasEntitlement:@"com.apple.posterboardservices.data-store.accessSwitcherConfiguration"];

  if (v11)
  {
    v12 = [(PRSServer *)self delegate];
    [v12 server:self prewarm:v6 completion:v7];
LABEL_7:

    goto LABEL_8;
  }

  if (v7)
  {
    v12 = [MEMORY[0x1E696ABC0] prs_entitlementFailureErrorWithFile:"/Library/Caches/com.apple.xbs/Sources/Wallpaper_NonUI/PosterBoardServices/Server/PRSServer.m" line:715];
    v7[2](v7, v12);
    goto LABEL_7;
  }

LABEL_8:

  v13 = *MEMORY[0x1E69E9840];
}

- (void)overnightUpdate:(id)a3 completion:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = PRSLogPosterContents();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v14 = 136315138;
    v15 = "[PRSServer overnightUpdate:completion:]";
    _os_log_impl(&dword_1C26FF000, v8, OS_LOG_TYPE_INFO, "%s", &v14, 0xCu);
  }

  v9 = [MEMORY[0x1E698F490] currentContext];
  v10 = [v9 remoteProcess];
  v11 = [v10 hasEntitlement:@"com.apple.posterboardservices.data-store.accessSwitcherConfiguration"];

  if (v11)
  {
    v12 = [(PRSServer *)self delegate];
    [v12 server:self overnightUpdate:v6 completion:v7];
LABEL_7:

    goto LABEL_8;
  }

  if (v7)
  {
    v12 = [MEMORY[0x1E696ABC0] prs_entitlementFailureErrorWithFile:"/Library/Caches/com.apple.xbs/Sources/Wallpaper_NonUI/PosterBoardServices/Server/PRSServer.m" line:726];
    v7[2](v7, v12);
    goto LABEL_7;
  }

LABEL_8:

  v13 = *MEMORY[0x1E69E9840];
}

- (void)gatherDataFreshnessState:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PRSLogPosterContents();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v11 = 136315138;
    v12 = "[PRSServer gatherDataFreshnessState:]";
    _os_log_impl(&dword_1C26FF000, v5, OS_LOG_TYPE_INFO, "%s", &v11, 0xCu);
  }

  v6 = [MEMORY[0x1E698F490] currentContext];
  v7 = [v6 remoteProcess];
  v8 = [v7 hasEntitlement:@"com.apple.posterboardservices.data-store.accessSwitcherConfiguration"];

  if (v8)
  {
    v9 = [(PRSServer *)self delegate];
    [v9 server:self gatherDataFreshnessState:v4];
LABEL_7:

    goto LABEL_8;
  }

  if (v4)
  {
    v9 = [MEMORY[0x1E696ABC0] prs_entitlementFailureErrorWithFile:"/Library/Caches/com.apple.xbs/Sources/Wallpaper_NonUI/PosterBoardServices/Server/PRSServer.m" line:738];
    v4[2](v4, 0, v9);
    goto LABEL_7;
  }

LABEL_8:

  v10 = *MEMORY[0x1E69E9840];
}

- (void)deleteTransientDataWithCompletion:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PRSLogPosterContents();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v11 = 136315138;
    v12 = "[PRSServer deleteTransientDataWithCompletion:]";
    _os_log_impl(&dword_1C26FF000, v5, OS_LOG_TYPE_INFO, "%s", &v11, 0xCu);
  }

  v6 = [MEMORY[0x1E698F490] currentContext];
  v7 = [v6 remoteProcess];
  v8 = [v7 hasEntitlement:@"com.apple.posterboardservices.data-store.accessSwitcherConfiguration"];

  if (v8)
  {
    v9 = [(PRSServer *)self delegate];
    [v9 server:self deleteTransientDataWithCompletion:v4];
LABEL_7:

    goto LABEL_8;
  }

  if (v4)
  {
    v9 = [MEMORY[0x1E696ABC0] prs_entitlementFailureErrorWithFile:"/Library/Caches/com.apple.xbs/Sources/Wallpaper_NonUI/PosterBoardServices/Server/PRSServer.m" line:749];
    v4[2](v4, v9);
    goto LABEL_7;
  }

LABEL_8:

  v10 = *MEMORY[0x1E69E9840];
}

- (void)deleteSnapshotsWithCompletion:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PRSLogPosterContents();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v11 = 136315138;
    v12 = "[PRSServer deleteSnapshotsWithCompletion:]";
    _os_log_impl(&dword_1C26FF000, v5, OS_LOG_TYPE_INFO, "%s", &v11, 0xCu);
  }

  v6 = [MEMORY[0x1E698F490] currentContext];
  v7 = [v6 remoteProcess];
  v8 = [v7 hasEntitlement:@"com.apple.posterboardservices.data-store.mutateSwitcherConfiguration"];

  if (v8)
  {
    v9 = [(PRSServer *)self delegate];
    [v9 server:self deleteSnapshotsWithCompletion:v4];
LABEL_7:

    goto LABEL_8;
  }

  if (v4)
  {
    v9 = [MEMORY[0x1E696ABC0] prs_entitlementFailureErrorWithFile:"/Library/Caches/com.apple.xbs/Sources/Wallpaper_NonUI/PosterBoardServices/Server/PRSServer.m" line:760];
    v4[2](v4, v9);
    goto LABEL_7;
  }

LABEL_8:

  v10 = *MEMORY[0x1E69E9840];
}

- (void)notifyPosterBoardOfApplicationUpdatesWithCompletion:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PRSLogPosterContents();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v11 = 136315138;
    v12 = "[PRSServer notifyPosterBoardOfApplicationUpdatesWithCompletion:]";
    _os_log_impl(&dword_1C26FF000, v5, OS_LOG_TYPE_INFO, "%s", &v11, 0xCu);
  }

  v6 = [MEMORY[0x1E698F490] currentContext];
  v7 = [v6 remoteProcess];
  v8 = [v7 hasEntitlement:@"com.apple.posterboardservices.data-store.mutateSwitcherConfiguration"];

  if (v8)
  {
    v9 = [(PRSServer *)self delegate];
    [v9 server:self notifyPosterBoardOfApplicationUpdatesWithCompletion:v4];
LABEL_7:

    goto LABEL_8;
  }

  if (v4)
  {
    v9 = [MEMORY[0x1E696ABC0] prs_entitlementFailureErrorWithFile:"/Library/Caches/com.apple.xbs/Sources/Wallpaper_NonUI/PosterBoardServices/Server/PRSServer.m" line:771];
    v4[2](v4, v9);
    goto LABEL_7;
  }

LABEL_8:

  v10 = *MEMORY[0x1E69E9840];
}

- (void)fetchRuntimeAssertionState:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PRSLogPosterContents();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v11 = 136315138;
    v12 = "[PRSServer fetchRuntimeAssertionState:]";
    _os_log_impl(&dword_1C26FF000, v5, OS_LOG_TYPE_INFO, "%s", &v11, 0xCu);
  }

  v6 = [MEMORY[0x1E698F490] currentContext];
  v7 = [v6 remoteProcess];
  v8 = [v7 hasEntitlement:@"com.apple.posterboardservices.data-store.mutateSwitcherConfiguration"];

  if (v8)
  {
    v9 = [(PRSServer *)self delegate];
    [v9 server:self fetchRuntimeAssertionState:v4];
LABEL_7:

    goto LABEL_8;
  }

  if (v4)
  {
    v9 = [MEMORY[0x1E696ABC0] prs_entitlementFailureErrorWithFile:"/Library/Caches/com.apple.xbs/Sources/Wallpaper_NonUI/PosterBoardServices/Server/PRSServer.m" line:782];
    v4[2](v4, 0, v9);
    goto LABEL_7;
  }

LABEL_8:

  v10 = *MEMORY[0x1E69E9840];
}

- (void)fetchChargerIdentifierRelationshipsWithCompletion:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PRSLogPosterContents();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v11 = 136315138;
    v12 = "[PRSServer fetchChargerIdentifierRelationshipsWithCompletion:]";
    _os_log_impl(&dword_1C26FF000, v5, OS_LOG_TYPE_INFO, "%s", &v11, 0xCu);
  }

  v6 = [MEMORY[0x1E698F490] currentContext];
  v7 = [v6 remoteProcess];
  if ([v7 hasEntitlement:@"com.apple.posterboardservices.data-store.accessSwitcherConfiguration"])
  {
    v8 = MEMORY[0x1C691CE60]("[PRSServer fetchChargerIdentifierRelationshipsWithCompletion:]");

    if (v8)
    {
      v9 = [(PRSServer *)self delegate];
      [v9 server:self fetchChargerIdentifierRelationshipsWithCompletion:v4];
LABEL_9:

      goto LABEL_10;
    }
  }

  else
  {
  }

  if (v4)
  {
    v9 = [MEMORY[0x1E696ABC0] prs_entitlementFailureErrorWithFile:"/Library/Caches/com.apple.xbs/Sources/Wallpaper_NonUI/PosterBoardServices/Server/PRSServer.m" line:793];
    v4[2](v4, 0, v9);
    goto LABEL_9;
  }

LABEL_10:

  v10 = *MEMORY[0x1E69E9840];
}

- (void)fetchAssociatedHomeScreenPosterConfigurationUUID:(id)a3 completion:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = PRSLogPosterContents();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v14 = 136315138;
    v15 = "[PRSServer fetchAssociatedHomeScreenPosterConfigurationUUID:completion:]";
    _os_log_impl(&dword_1C26FF000, v8, OS_LOG_TYPE_INFO, "%s", &v14, 0xCu);
  }

  v9 = [MEMORY[0x1E698F490] currentContext];
  v10 = [v9 remoteProcess];
  v11 = [v10 hasEntitlement:@"com.apple.posterboardservices.data-store.accessSwitcherConfiguration"];

  if (v11)
  {
    v12 = [(PRSServer *)self delegate];
    [v12 server:self fetchAssociatedHomeScreenPosterConfigurationUUID:v6 completion:v7];
LABEL_7:

    goto LABEL_8;
  }

  if (v7)
  {
    v12 = [MEMORY[0x1E696ABC0] prs_entitlementFailureErrorWithFile:"/Library/Caches/com.apple.xbs/Sources/Wallpaper_NonUI/PosterBoardServices/Server/PRSServer.m" line:805];
    v7[2](v7, 0, v12);
    goto LABEL_7;
  }

LABEL_8:

  v13 = *MEMORY[0x1E69E9840];
}

- (void)updatePosterConfigurationMatchingUUID:(id)a3 updates:(id)a4 completion:(id)a5
{
  v33 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = PRSLogPosterContents();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v32 = "[PRSServer updatePosterConfigurationMatchingUUID:updates:completion:]";
    _os_log_impl(&dword_1C26FF000, v12, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
  }

  v13 = [MEMORY[0x1E698F490] currentContext];
  v14 = [v13 remoteProcess];
  v15 = [v14 hasEntitlement:@"com.apple.posterboardservices.data-store.mutateSwitcherConfiguration"];

  if (v15)
  {
    v16 = [MEMORY[0x1E698F490] currentContext];
    v17 = [v16 remoteProcess];
    v18 = [v17 hasEntitlement:@"com.apple.posterboardservices.data-store.refreshConfigurations"];

    if (v18)
    {
      v19 = [MEMORY[0x1E698F490] currentContext];
      v20 = [v19 remoteProcess];
      v21 = [v20 auditToken];

      v22 = [(PRSServer *)self delegate];
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __70__PRSServer_updatePosterConfigurationMatchingUUID_updates_completion___block_invoke;
      v27[3] = &unk_1E818D108;
      v28 = v21;
      v29 = v11;
      v30 = a2;
      v23 = v21;
      [v22 server:self updatePosterConfigurationMatchingUUID:v9 updates:v10 completion:v27];

LABEL_11:
      goto LABEL_12;
    }

    if (v11)
    {
      v24 = MEMORY[0x1E696ABC0];
      v25 = 822;
      goto LABEL_10;
    }
  }

  else if (v11)
  {
    v24 = MEMORY[0x1E696ABC0];
    v25 = 816;
LABEL_10:
    v23 = [v24 prs_entitlementFailureErrorWithFile:"/Library/Caches/com.apple.xbs/Sources/Wallpaper_NonUI/PosterBoardServices/Server/PRSServer.m" line:v25];
    (*(v11 + 2))(v11, 0, 0, v23);
    goto LABEL_11;
  }

LABEL_12:

  v26 = *MEMORY[0x1E69E9840];
}

void __70__PRSServer_updatePosterConfigurationMatchingUUID_updates_completion___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v23 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  if (a4)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v9 = *(a1 + 32);
    v16 = 0;
    v10 = [v7 extendContentsReadAccessToAuditToken:v9 error:&v16];
    v11 = v16;
    if (v11)
    {
      v12 = PRSLogPosterContents();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v15 = NSStringFromSelector(*(a1 + 48));
        *buf = 138412802;
        v18 = v15;
        v19 = 2112;
        v20 = v11;
        v21 = 2112;
        v22 = v7;
        _os_log_error_impl(&dword_1C26FF000, v12, OS_LOG_TYPE_ERROR, "sandbox extension did error in %@ : error=%@ poster=%@", buf, 0x20u);
      }
    }

    if (v10)
    {
      v13 = v10;
    }

    else
    {
      v13 = v7;
    }

    (*(*(a1 + 40) + 16))(*(a1 + 40), v13, v8, 0);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)updatePosterConfiguration:(id)a3 updates:(id)a4 completion:(id)a5
{
  v33 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = PRSLogPosterContents();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v32 = "[PRSServer updatePosterConfiguration:updates:completion:]";
    _os_log_impl(&dword_1C26FF000, v12, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
  }

  v13 = [MEMORY[0x1E698F490] currentContext];
  v14 = [v13 remoteProcess];
  v15 = [v14 hasEntitlement:@"com.apple.posterboardservices.data-store.mutateSwitcherConfiguration"];

  if (v15)
  {
    v16 = [MEMORY[0x1E698F490] currentContext];
    v17 = [v16 remoteProcess];
    v18 = [v17 hasEntitlement:@"com.apple.posterboardservices.data-store.refreshConfigurations"];

    if (v18)
    {
      v19 = [MEMORY[0x1E698F490] currentContext];
      v20 = [v19 remoteProcess];
      v21 = [v20 auditToken];

      v22 = [(PRSServer *)self delegate];
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __58__PRSServer_updatePosterConfiguration_updates_completion___block_invoke;
      v27[3] = &unk_1E818D108;
      v28 = v21;
      v29 = v11;
      v30 = a2;
      v23 = v21;
      [v22 server:self updatePosterConfiguration:v9 updates:v10 completion:v27];

LABEL_11:
      goto LABEL_12;
    }

    if (v11)
    {
      v24 = MEMORY[0x1E696ABC0];
      v25 = 853;
      goto LABEL_10;
    }
  }

  else if (v11)
  {
    v24 = MEMORY[0x1E696ABC0];
    v25 = 847;
LABEL_10:
    v23 = [v24 prs_entitlementFailureErrorWithFile:"/Library/Caches/com.apple.xbs/Sources/Wallpaper_NonUI/PosterBoardServices/Server/PRSServer.m" line:v25];
    (*(v11 + 2))(v11, 0, 0, v23);
    goto LABEL_11;
  }

LABEL_12:

  v26 = *MEMORY[0x1E69E9840];
}

void __58__PRSServer_updatePosterConfiguration_updates_completion___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v23 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  if (a4)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v9 = *(a1 + 32);
    v16 = 0;
    v10 = [v7 extendContentsReadAccessToAuditToken:v9 error:&v16];
    v11 = v16;
    if (v11)
    {
      v12 = PRSLogPosterContents();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v15 = NSStringFromSelector(*(a1 + 48));
        *buf = 138412802;
        v18 = v15;
        v19 = 2112;
        v20 = v11;
        v21 = 2112;
        v22 = v7;
        _os_log_error_impl(&dword_1C26FF000, v12, OS_LOG_TYPE_ERROR, "sandbox extension did error in %@ : error=%@ poster=%@", buf, 0x20u);
      }
    }

    if (v10)
    {
      v13 = v10;
    }

    else
    {
      v13 = v7;
    }

    (*(*(a1 + 40) + 16))(*(a1 + 40), v13, v8, 0);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)refreshSuggestionDescriptorsForConfigurationMatchingUUID:(id)a3 sessionInfo:(id)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [MEMORY[0x1E698F490] currentContext];
  v13 = [v12 remoteProcess];
  v14 = [v13 hasEntitlement:@"com.apple.posterboardservices.data-store.mutateSwitcherConfiguration"];

  if ((v14 & 1) == 0)
  {
    if (!v11)
    {
      goto LABEL_9;
    }

    v19 = MEMORY[0x1E696ABC0];
    v20 = 877;
LABEL_8:
    v21 = [v19 prs_entitlementFailureErrorWithFile:"/Library/Caches/com.apple.xbs/Sources/Wallpaper_NonUI/PosterBoardServices/Server/PRSServer.m" line:v20];
    v11[2](v11, 0, v21);

    goto LABEL_9;
  }

  v15 = [MEMORY[0x1E698F490] currentContext];
  v16 = [v15 remoteProcess];
  v17 = [v16 hasEntitlement:@"com.apple.posterboardservices.data-store.refreshConfigurations"];

  if ((v17 & 1) == 0)
  {
    if (!v11)
    {
      goto LABEL_9;
    }

    v19 = MEMORY[0x1E696ABC0];
    v20 = 883;
    goto LABEL_8;
  }

  v18 = [(PRSServer *)self delegate];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __93__PRSServer_refreshSuggestionDescriptorsForConfigurationMatchingUUID_sessionInfo_completion___block_invoke;
  v22[3] = &unk_1E818D130;
  v24 = a2;
  v23 = v11;
  [v18 server:self refreshSuggestionDescriptorsForConfigurationMatchingUUID:v9 sessionInfo:v10 completion:v22];

LABEL_9:
}

void __93__PRSServer_refreshSuggestionDescriptorsForConfigurationMatchingUUID_sessionInfo_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v22 = a3;
  v5 = [MEMORY[0x1E698F490] currentContext];
  v6 = [v5 remoteProcess];
  v7 = [v6 auditToken];

  v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v9 = v4;
  v10 = [v9 countByEnumeratingWithState:&v26 objects:v36 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v27;
    do
    {
      v13 = 0;
      do
      {
        if (*v27 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v26 + 1) + 8 * v13);
        v25 = 0;
        v15 = [v14 extendContentsReadAccessToAuditToken:v7 error:&v25];
        v16 = v25;
        if (v16)
        {
          v17 = PRSLogPosterContents();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v24 = NSStringFromSelector(*(a1 + 40));
            *buf = 138412802;
            v31 = v24;
            v32 = 2112;
            v33 = v16;
            v34 = 2112;
            v35 = v14;
            _os_log_error_impl(&dword_1C26FF000, v17, OS_LOG_TYPE_ERROR, "sandbox extension did error in %@ : error=%@ poster=%@", buf, 0x20u);
          }
        }

        if (v15)
        {
          v18 = v15;
        }

        else
        {
          v18 = v14;
        }

        [v8 addObject:v18];

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v26 objects:v36 count:16];
    }

    while (v11);
  }

  v19 = *(a1 + 32);
  v20 = [v8 copy];
  (*(v19 + 16))(v19, v20, v22);

  v21 = *MEMORY[0x1E69E9840];
}

- (void)fetchSuggestionDescriptorsForConfigurationMatchingUUID:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x1E698F490] currentContext];
  v10 = [v9 remoteProcess];
  v11 = [v10 hasEntitlement:@"com.apple.posterboardservices.data-store.mutateSwitcherConfiguration"];

  if ((v11 & 1) == 0)
  {
    if (!v8)
    {
      goto LABEL_9;
    }

    v20 = MEMORY[0x1E696ABC0];
    v21 = 907;
LABEL_8:
    v22 = [v20 prs_entitlementFailureErrorWithFile:"/Library/Caches/com.apple.xbs/Sources/Wallpaper_NonUI/PosterBoardServices/Server/PRSServer.m" line:v21];
    v8[2](v8, 0, v22);

    goto LABEL_9;
  }

  v12 = [MEMORY[0x1E698F490] currentContext];
  v13 = [v12 remoteProcess];
  v14 = [v13 hasEntitlement:@"com.apple.posterboardservices.data-store.refreshConfigurations"];

  if ((v14 & 1) == 0)
  {
    if (!v8)
    {
      goto LABEL_9;
    }

    v20 = MEMORY[0x1E696ABC0];
    v21 = 913;
    goto LABEL_8;
  }

  v15 = [MEMORY[0x1E698F490] currentContext];
  v16 = [v15 remoteProcess];
  v17 = [v16 auditToken];

  v18 = [(PRSServer *)self delegate];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __79__PRSServer_fetchSuggestionDescriptorsForConfigurationMatchingUUID_completion___block_invoke;
  v23[3] = &unk_1E818D158;
  v24 = v17;
  v25 = v8;
  v26 = a2;
  v19 = v17;
  [v18 server:self fetchSuggestionDescriptorsForConfigurationMatchingUUID:v7 completion:v23];

LABEL_9:
}

void __79__PRSServer_fetchSuggestionDescriptorsForConfigurationMatchingUUID_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v5, "count")}];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v20 = v6;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v23 objects:v33 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v24;
      do
      {
        v12 = 0;
        do
        {
          if (*v24 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v23 + 1) + 8 * v12);
          v14 = *(a1 + 32);
          v22 = 0;
          v15 = [v13 extendContentsReadAccessToAuditToken:v14 error:&v22];
          v16 = v22;
          if (v16)
          {
            v17 = PRSLogPosterContents();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              v21 = NSStringFromSelector(*(a1 + 48));
              *buf = 138412802;
              v28 = v21;
              v29 = 2112;
              v30 = v16;
              v31 = 2112;
              v32 = v13;
              _os_log_error_impl(&dword_1C26FF000, v17, OS_LOG_TYPE_ERROR, "sandbox extension did error in %@ : error=%@ poster=%@", buf, 0x20u);
            }
          }

          if (v15)
          {
            v18 = v15;
          }

          else
          {
            v18 = v13;
          }

          [v7 addObject:v18];

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v23 objects:v33 count:16];
      }

      while (v10);
    }

    (*(*(a1 + 40) + 16))();
    v6 = v20;
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)commitSuggestionsForConfigurationMatchingUUID:(id)a3 selectSuggestionDescriptorUUID:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x1E698F490] currentContext];
  v12 = [v11 remoteProcess];
  v13 = [v12 hasEntitlement:@"com.apple.posterboardservices.data-store.mutateSwitcherConfiguration"];

  if ((v13 & 1) == 0)
  {
    if (!v10)
    {
      goto LABEL_9;
    }

    v18 = MEMORY[0x1E696ABC0];
    v19 = 940;
LABEL_8:
    v20 = [v18 prs_entitlementFailureErrorWithFile:"/Library/Caches/com.apple.xbs/Sources/Wallpaper_NonUI/PosterBoardServices/Server/PRSServer.m" line:v19];
    v10[2](v10, v20);

    goto LABEL_9;
  }

  v14 = [MEMORY[0x1E698F490] currentContext];
  v15 = [v14 remoteProcess];
  v16 = [v15 hasEntitlement:@"com.apple.posterboardservices.data-store.refreshConfigurations"];

  if ((v16 & 1) == 0)
  {
    if (!v10)
    {
      goto LABEL_9;
    }

    v18 = MEMORY[0x1E696ABC0];
    v19 = 946;
    goto LABEL_8;
  }

  v17 = [(PRSServer *)self delegate];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __101__PRSServer_commitSuggestionsForConfigurationMatchingUUID_selectSuggestionDescriptorUUID_completion___block_invoke;
  v21[3] = &unk_1E818D020;
  v22 = v10;
  [v17 server:self commitSuggestionsForConfigurationMatchingUUID:v8 selectSuggestionDescriptorUUID:v9 completion:v21];

LABEL_9:
}

- (void)runMigration:(id)a3 migrationDescriptor:(id)a4 completion:(id)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = PRSLogPosterContents();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v25 = "[PRSServer runMigration:migrationDescriptor:completion:]";
    _os_log_impl(&dword_1C26FF000, v11, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
  }

  v12 = [MEMORY[0x1E698F490] currentContext];
  v13 = [v12 remoteProcess];

  v14 = [v13 bundleIdentifier];
  if ([v13 hasEntitlement:@"com.apple.posterboardservices.data-store.migration"] & 1) != 0 || (-[__CFString isEqualToString:](v14, "isEqualToString:", @"com.apple.migrationpluginwrapper"))
  {
    v15 = [(PRSServer *)self delegate];
    [v15 server:self runMigration:objc_msgSend(v8 migrationDescriptor:"BOOLValue") completion:{v9, v10}];
  }

  else
  {
    if (!v10)
    {
      goto LABEL_7;
    }

    v17 = MEMORY[0x1E696ABC0];
    v18 = *MEMORY[0x1E696A250];
    v21 = *MEMORY[0x1E696A588];
    v22 = @"bundleIdentifier";
    v19 = @"(null)";
    if (v14)
    {
      v19 = v14;
    }

    v23[0] = @"Process not allowed to run migration.";
    v23[1] = v19;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v21 count:2];
    v20 = [v17 errorWithDomain:v18 code:-1 userInfo:{v15, v21, v22}];
    v10[2](v10, v20);
  }

LABEL_7:
  v16 = *MEMORY[0x1E69E9840];
}

- (void)clearMigrationFlags:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PRSLogPosterContents();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v15 = "[PRSServer clearMigrationFlags:]";
    _os_log_impl(&dword_1C26FF000, v5, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
  }

  v6 = [MEMORY[0x1E698F490] currentContext];
  v7 = [v6 remoteProcess];
  v8 = [v7 hasEntitlement:@"com.apple.posterboardservices.data-store.migration"];

  if (v8)
  {
    v9 = [(PRSServer *)self delegate];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __33__PRSServer_clearMigrationFlags___block_invoke;
    v12[3] = &unk_1E818D180;
    v13 = v4;
    [v9 server:self clearMigrationFlags:v12];

    v10 = v13;
LABEL_7:

    goto LABEL_8;
  }

  if (v4)
  {
    v10 = [MEMORY[0x1E696ABC0] prs_entitlementFailureErrorWithFile:"/Library/Caches/com.apple.xbs/Sources/Wallpaper_NonUI/PosterBoardServices/Server/PRSServer.m" line:974];
    (*(v4 + 2))(v4, MEMORY[0x1E695E110], v10);
    goto LABEL_7;
  }

LABEL_8:

  v11 = *MEMORY[0x1E69E9840];
}

void __33__PRSServer_clearMigrationFlags___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = MEMORY[0x1E696AD98];
  v6 = a3;
  v7 = [v5 numberWithBool:a2];
  (*(v4 + 16))(v4, v7, v6);
}

- (void)ignoreExtension:(id)a3 completion:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = PRSLogPosterContents();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v14 = 136315138;
    v15 = "[PRSServer ignoreExtension:completion:]";
    _os_log_impl(&dword_1C26FF000, v8, OS_LOG_TYPE_INFO, "%s", &v14, 0xCu);
  }

  v9 = [MEMORY[0x1E698F490] currentContext];
  v10 = [v9 remoteProcess];
  v11 = [v10 hasEntitlement:@"com.apple.posterboardservices.data-store.mutateSwitcherConfiguration"];

  if (v11)
  {
    v12 = [(PRSServer *)self delegate];
    [v12 server:self ignoreExtension:v6 completion:v7];
LABEL_7:

    goto LABEL_8;
  }

  if (v7)
  {
    v12 = [MEMORY[0x1E696ABC0] prs_entitlementFailureErrorWithFile:"/Library/Caches/com.apple.xbs/Sources/Wallpaper_NonUI/PosterBoardServices/Server/PRSServer.m" line:988];
    v7[2](v7, v12);
    goto LABEL_7;
  }

LABEL_8:

  v13 = *MEMORY[0x1E69E9840];
}

- (void)unignoreExtension:(id)a3 completion:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = PRSLogPosterContents();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v14 = 136315138;
    v15 = "[PRSServer unignoreExtension:completion:]";
    _os_log_impl(&dword_1C26FF000, v8, OS_LOG_TYPE_INFO, "%s", &v14, 0xCu);
  }

  v9 = [MEMORY[0x1E698F490] currentContext];
  v10 = [v9 remoteProcess];
  v11 = [v10 hasEntitlement:@"com.apple.posterboardservices.data-store.mutateSwitcherConfiguration"];

  if (v11)
  {
    v12 = [(PRSServer *)self delegate];
    [v12 server:self unignoreExtension:v6 completion:v7];
LABEL_7:

    goto LABEL_8;
  }

  if (v7)
  {
    v12 = [MEMORY[0x1E696ABC0] prs_entitlementFailureErrorWithFile:"/Library/Caches/com.apple.xbs/Sources/Wallpaper_NonUI/PosterBoardServices/Server/PRSServer.m" line:1000];
    v7[2](v7, v12);
    goto LABEL_7;
  }

LABEL_8:

  v13 = *MEMORY[0x1E69E9840];
}

- (void)fetchArchivedDataStoreNamesWithCompletion:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PRSLogPosterContents();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v11 = 136315138;
    v12 = "[PRSServer fetchArchivedDataStoreNamesWithCompletion:]";
    _os_log_impl(&dword_1C26FF000, v5, OS_LOG_TYPE_INFO, "%s", &v11, 0xCu);
  }

  v6 = [MEMORY[0x1E698F490] currentContext];
  v7 = [v6 remoteProcess];
  v8 = [v7 hasEntitlement:@"com.apple.posterboardservices.data-store.archiveDataStore"];

  if (v8)
  {
    v9 = [(PRSServer *)self delegate];
    [v9 server:self fetchArchivedDataStoreNamesWithCompletion:v4];
LABEL_7:

    goto LABEL_8;
  }

  if (v4)
  {
    v9 = [MEMORY[0x1E696ABC0] prs_entitlementFailureErrorWithFile:"/Library/Caches/com.apple.xbs/Sources/Wallpaper_NonUI/PosterBoardServices/Server/PRSServer.m" line:1012];
    v4[2](v4, 0, v9);
    goto LABEL_7;
  }

LABEL_8:

  v10 = *MEMORY[0x1E69E9840];
}

- (void)restoreArchivedDataStoreNamed:(id)a3 backupExistingDataStore:(id)a4 completion:(id)a5
{
  v20 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = PRSLogPosterContents();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v18 = 136315138;
    v19 = "[PRSServer restoreArchivedDataStoreNamed:backupExistingDataStore:completion:]";
    _os_log_impl(&dword_1C26FF000, v11, OS_LOG_TYPE_INFO, "%s", &v18, 0xCu);
  }

  v12 = [MEMORY[0x1E698F490] currentContext];
  v13 = [v12 remoteProcess];
  v14 = [v13 hasEntitlement:@"com.apple.posterboardservices.data-store.archiveDataStore"];

  if (v14)
  {
    v15 = [(PRSServer *)self delegate];
    if (v9)
    {
      v16 = v9;
    }

    else
    {
      v16 = MEMORY[0x1E695E118];
    }

    [v15 server:self restoreArchivedDataStoreNamed:v8 backupExistingDataStore:objc_msgSend(v16 completion:{"BOOLValue"), v10}];
    goto LABEL_10;
  }

  if (v10)
  {
    v15 = [MEMORY[0x1E696ABC0] prs_entitlementFailureErrorWithFile:"/Library/Caches/com.apple.xbs/Sources/Wallpaper_NonUI/PosterBoardServices/Server/PRSServer.m" line:1025];
    v10[2](v10, v15);
LABEL_10:
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)stashCurrentDataStoreWithName:(id)a3 options:(id)a4 completion:(id)a5
{
  v19 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = PRSLogPosterContents();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v17 = 136315138;
    v18 = "[PRSServer stashCurrentDataStoreWithName:options:completion:]";
    _os_log_impl(&dword_1C26FF000, v11, OS_LOG_TYPE_INFO, "%s", &v17, 0xCu);
  }

  v12 = [MEMORY[0x1E698F490] currentContext];
  v13 = [v12 remoteProcess];
  v14 = [v13 hasEntitlement:@"com.apple.posterboardservices.data-store.archiveDataStore"];

  if (v14)
  {
    v15 = [(PRSServer *)self delegate];
    [v15 server:self stashCurrentDataStoreWithName:v8 options:v9 completion:v10];
LABEL_7:

    goto LABEL_8;
  }

  if (v10)
  {
    v15 = [MEMORY[0x1E696ABC0] prs_entitlementFailureErrorWithFile:"/Library/Caches/com.apple.xbs/Sources/Wallpaper_NonUI/PosterBoardServices/Server/PRSServer.m" line:1038];
    v10[2](v10, v15);
    goto LABEL_7;
  }

LABEL_8:

  v16 = *MEMORY[0x1E69E9840];
}

- (void)deleteArchivedDataStoreNamed:(id)a3 completion:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = PRSLogPosterContents();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v14 = 136315138;
    v15 = "[PRSServer deleteArchivedDataStoreNamed:completion:]";
    _os_log_impl(&dword_1C26FF000, v8, OS_LOG_TYPE_INFO, "%s", &v14, 0xCu);
  }

  v9 = [MEMORY[0x1E698F490] currentContext];
  v10 = [v9 remoteProcess];
  v11 = [v10 hasEntitlement:@"com.apple.posterboardservices.data-store.archiveDataStore"];

  if (v11)
  {
    v12 = [(PRSServer *)self delegate];
    [v12 server:self deleteArchivedDataStoreNamed:v6 completion:v7];
LABEL_7:

    goto LABEL_8;
  }

  if (v7)
  {
    v12 = [MEMORY[0x1E696ABC0] prs_entitlementFailureErrorWithFile:"/Library/Caches/com.apple.xbs/Sources/Wallpaper_NonUI/PosterBoardServices/Server/PRSServer.m" line:1051];
    v7[2](v7, v12);
    goto LABEL_7;
  }

LABEL_8:

  v13 = *MEMORY[0x1E69E9840];
}

- (void)exportArchivedDataStoreNamed:(id)a3 completion:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E698F490] currentContext];
  v8 = [v7 remoteProcess];
  v9 = [v8 hasEntitlement:@"com.apple.posterboardservices.data-store.archiveDataStore"];

  if (v9)
  {
    v10 = [(PRSServer *)self delegate];
    [v10 server:self exportArchivedDataStoreNamed:v11 completion:v6];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_6;
    }

    v10 = [MEMORY[0x1E696ABC0] prs_entitlementFailureErrorWithFile:"/Library/Caches/com.apple.xbs/Sources/Wallpaper_NonUI/PosterBoardServices/Server/PRSServer.m" line:1063];
    v6[2](v6, 0, v10);
  }

LABEL_6:
}

- (void)exportCurrentDataStoreToURL:(id)a3 options:(id)a4 sandboxToken:(id)a5 error:(id *)a6
{
  v16 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [MEMORY[0x1E698F490] currentContext];
  v13 = [v12 remoteProcess];
  v14 = [v13 hasEntitlement:@"com.apple.posterboardservices.data-store.archiveDataStore"];

  if (v14)
  {
    v15 = [(PRSServer *)self delegate];
    [v15 server:self exportCurrentDataStoreToURL:v16 options:v10 sandboxToken:v11 error:a6];
  }

  else
  {
    *a6 = [MEMORY[0x1E696ABC0] prs_entitlementFailureErrorWithFile:"/Library/Caches/com.apple.xbs/Sources/Wallpaper_NonUI/PosterBoardServices/Server/PRSServer.m" line:1073];
  }
}

- (PRSServerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end