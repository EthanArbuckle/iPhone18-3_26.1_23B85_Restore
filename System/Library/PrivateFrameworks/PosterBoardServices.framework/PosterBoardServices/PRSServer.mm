@interface PRSServer
- (PRSServer)init;
- (PRSServerDelegate)delegate;
- (id)fetchActivePosterForRole:(id)role error:(id *)error;
- (void)_queue_addConnection:(id)connection;
- (void)_queue_removeConnection:(id)connection;
- (void)associateConfigurationMatchingUUID:(id)d focusModeActivityUUID:(id)iD completion:(id)completion;
- (void)clearMigrationFlags:(id)flags;
- (void)commitSuggestionsForConfigurationMatchingUUID:(id)d selectSuggestionDescriptorUUID:(id)iD completion:(id)completion;
- (void)createPosterConfigurationForProviderIdentifier:(id)identifier posterDescriptorIdentifier:(id)descriptorIdentifier role:(id)role completion:(id)completion;
- (void)deleteArchivedDataStoreNamed:(id)named completion:(id)completion;
- (void)deleteDataStoreWithCompletion:(id)completion;
- (void)deleteHostConfigurationForRole:(id)role completion:(id)completion;
- (void)deletePosterConfigurationsMatchingUUID:(id)d completion:(id)completion;
- (void)deletePosterDescriptorsForExtension:(id)extension completion:(id)completion;
- (void)deleteSnapshotsWithCompletion:(id)completion;
- (void)deleteTransientDataWithCompletion:(id)completion;
- (void)exportArchivedDataStoreNamed:(id)named completion:(id)completion;
- (void)exportCurrentDataStoreToURL:(id)l options:(id)options sandboxToken:(id)token error:(id *)error;
- (void)exportPosterConfigurationMatchingUUID:(id)d completion:(id)completion;
- (void)fetchActivePosterForRole:(id)role completion:(id)completion;
- (void)fetchArchivedDataStoreNamesWithCompletion:(id)completion;
- (void)fetchAssociatedHomeScreenPosterConfigurationUUID:(id)d completion:(id)completion;
- (void)fetchChargerIdentifierRelationshipsWithCompletion:(id)completion;
- (void)fetchContentCutoutBoundsForPosterConfiguration:(id)configuration orientation:(id)orientation completion:(id)completion;
- (void)fetchContentObstructionBoundsForPosterConfiguration:(id)configuration orientation:(id)orientation completion:(id)completion;
- (void)fetchExtendedContentCutoutBoundsForOrientation:(id)orientation completion:(id)completion;
- (void)fetchExtensionIdentifiersWithCompletion:(id)completion;
- (void)fetchFocusUUIDForConfiguration:(id)configuration completion:(id)completion;
- (void)fetchGallery:(id)gallery;
- (void)fetchLimitedOcclusionBoundsForPosterConfiguration:(id)configuration orientation:(id)orientation completion:(id)completion;
- (void)fetchMaximalContentCutoutBoundsForOrientation:(id)orientation completion:(id)completion;
- (void)fetchObscurableBoundsForPosterConfiguration:(id)configuration orientation:(id)orientation completion:(id)completion;
- (void)fetchPosterConfigurationsForExtension:(id)extension completion:(id)completion;
- (void)fetchPosterConfigurationsForRole:(id)role completion:(id)completion;
- (void)fetchPosterDescriptorsForExtension:(id)extension completion:(id)completion;
- (void)fetchPosterSnapshotsWithRequest:(id)request completion:(id)completion;
- (void)fetchRuntimeAssertionState:(id)state;
- (void)fetchSelectedPosterForRole:(id)role completion:(id)completion;
- (void)fetchStaticPosterDescriptorsForExtension:(id)extension completion:(id)completion;
- (void)fetchSuggestionDescriptorsForConfigurationMatchingUUID:(id)d completion:(id)completion;
- (void)gatherDataFreshnessState:(id)state;
- (void)ignoreExtension:(id)extension completion:(id)completion;
- (void)importPosterConfigurationFromArchiveData:(id)data completion:(id)completion;
- (void)ingestSnapshotCollection:(id)collection forPosterConfigurationUUID:(id)d completion:(id)completion;
- (void)invalidateDataStoreWithCompletion:(id)completion;
- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context;
- (void)notePosterConfigurationUnderlyingModelDidChange:(id)change;
- (void)notifyActiveChargerIdentifierDidUpdate:(id)update completion:(id)completion;
- (void)notifyAvailableFocusModesDidChange:(id)change completion:(id)completion;
- (void)notifyFocusModeDidChange:(id)change completion:(id)completion;
- (void)notifyPosterBoardOfApplicationUpdatesWithCompletion:(id)completion;
- (void)overnightUpdate:(id)update completion:(id)completion;
- (void)prewarm:(id)prewarm completion:(id)completion;
- (void)pushPosterGalleryUpdate:(id)update completion:(id)completion;
- (void)pushToProactiveWithCompletion:(id)completion;
- (void)refreshPosterConfigurationMatchingUUID:(id)d sessionInfo:(id)info completion:(id)completion;
- (void)refreshPosterDescriptorsForExtension:(id)extension sessionInfo:(id)info completion:(id)completion;
- (void)refreshSnapshotForGalleryItemsMatchingDescriptorIdentifier:(id)identifier extensionIdentifier:(id)extensionIdentifier completion:(id)completion;
- (void)refreshSnapshotForPosterConfigurationMatchUUID:(id)d completion:(id)completion;
- (void)refreshSuggestionDescriptorsForConfigurationMatchingUUID:(id)d sessionInfo:(id)info completion:(id)completion;
- (void)removeAllFocusConfigurationsMatchingFocusUUID:(id)d completion:(id)completion;
- (void)resetRole:(id)role completion:(id)completion;
- (void)restoreArchivedDataStoreNamed:(id)named backupExistingDataStore:(id)store completion:(id)completion;
- (void)retrieveGallery:(id)gallery;
- (void)runMigration:(id)migration migrationDescriptor:(id)descriptor completion:(id)completion;
- (void)setHostConfiguration:(id)configuration forRole:(id)role completion:(id)completion;
- (void)stashCurrentDataStoreWithName:(id)name options:(id)options completion:(id)completion;
- (void)terminate;
- (void)triggerMessedUpDataProtectionWithCompletion:(id)completion;
- (void)unignoreExtension:(id)extension completion:(id)completion;
- (void)updatePosterConfiguration:(id)configuration updates:(id)updates completion:(id)completion;
- (void)updatePosterConfigurationMatchingUUID:(id)d updates:(id)updates completion:(id)completion;
- (void)updatePosterConfigurationsFromHostForRole:(id)role completion:(id)completion;
- (void)updateToSelectedPosterMatchingUUID:(id)d role:(id)role completion:(id)completion;
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

    array = [MEMORY[0x1E695DF70] array];
    connections = v6->_connections;
    v6->_connections = array;
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

- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context
{
  v19 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __55__PRSServer_listener_didReceiveConnection_withContext___block_invoke;
  v16[3] = &unk_1E818CF60;
  v16[4] = self;
  [connectionCopy configureConnection:v16];
  remoteProcess = [connectionCopy remoteProcess];
  bundleIdentifier = [remoteProcess bundleIdentifier];
  if (([remoteProcess hasEntitlement:@"com.apple.posterboardservices.data-store"] & 1) != 0 || objc_msgSend(bundleIdentifier, "isEqualToString:", @"com.apple.migrationpluginwrapper"))
  {
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __55__PRSServer_listener_didReceiveConnection_withContext___block_invoke_9;
    block[3] = &unk_1E818CF88;
    block[4] = self;
    v10 = connectionCopy;
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
      v18 = connectionCopy;
      _os_log_impl(&dword_1C26FF000, v12, OS_LOG_TYPE_DEFAULT, "PRSServer rejected connection: %{public}@", buf, 0xCu);
    }

    [connectionCopy invalidate];
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

- (void)_queue_addConnection:(id)connection
{
  v9 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  v5 = PRSLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = connectionCopy;
    _os_log_impl(&dword_1C26FF000, v5, OS_LOG_TYPE_DEFAULT, "Adding Connection: %{public}@", &v7, 0xCu);
  }

  dispatch_assert_queue_V2(self->_queue);
  [(NSMutableArray *)self->_connections addObject:connectionCopy];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)_queue_removeConnection:(id)connection
{
  v9 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  v5 = PRSLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = connectionCopy;
    _os_log_impl(&dword_1C26FF000, v5, OS_LOG_TYPE_DEFAULT, "Removing Connection: %{public}@", &v7, 0xCu);
  }

  dispatch_assert_queue_V2(self->_queue);
  [(NSMutableArray *)self->_connections removeObject:connectionCopy];

  v6 = *MEMORY[0x1E69E9840];
}

- (void)deleteDataStoreWithCompletion:(id)completion
{
  v13 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = PRSLogPosterContents();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v11 = 136315138;
    v12 = "[PRSServer deleteDataStoreWithCompletion:]";
    _os_log_impl(&dword_1C26FF000, v5, OS_LOG_TYPE_INFO, "%s", &v11, 0xCu);
  }

  currentContext = [MEMORY[0x1E698F490] currentContext];
  remoteProcess = [currentContext remoteProcess];
  v8 = [remoteProcess hasEntitlement:@"com.apple.posterboardservices.data-store.deleteDataStore"];

  if (v8)
  {
    delegate = [(PRSServer *)self delegate];
    [delegate server:self deleteDataStoreWithCompletion:completionCopy];
LABEL_7:

    goto LABEL_8;
  }

  if (completionCopy)
  {
    delegate = [MEMORY[0x1E696ABC0] prs_entitlementFailureErrorWithFile:"/Library/Caches/com.apple.xbs/Sources/Wallpaper_NonUI/PosterBoardServices/Server/PRSServer.m" line:121];
    completionCopy[2](completionCopy, delegate);
    goto LABEL_7;
  }

LABEL_8:

  v10 = *MEMORY[0x1E69E9840];
}

- (void)triggerMessedUpDataProtectionWithCompletion:(id)completion
{
  v13 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = PRSLogPosterContents();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v11 = 136315138;
    v12 = "[PRSServer triggerMessedUpDataProtectionWithCompletion:]";
    _os_log_impl(&dword_1C26FF000, v5, OS_LOG_TYPE_INFO, "%s", &v11, 0xCu);
  }

  currentContext = [MEMORY[0x1E698F490] currentContext];
  remoteProcess = [currentContext remoteProcess];
  if ([remoteProcess hasEntitlement:@"com.apple.posterboardservices.data-store.deleteDataStore"])
  {
    v8 = MEMORY[0x1C691CE60]("[PRSServer triggerMessedUpDataProtectionWithCompletion:]");

    if (v8)
    {
      delegate = [(PRSServer *)self delegate];
      [delegate server:self triggerMessedUpDataProtectionWithCompletion:completionCopy];
LABEL_9:

      goto LABEL_10;
    }
  }

  else
  {
  }

  if (completionCopy)
  {
    delegate = [MEMORY[0x1E696ABC0] prs_entitlementFailureErrorWithFile:"/Library/Caches/com.apple.xbs/Sources/Wallpaper_NonUI/PosterBoardServices/Server/PRSServer.m" line:134];
    completionCopy[2](completionCopy, delegate);
    goto LABEL_9;
  }

LABEL_10:

  v10 = *MEMORY[0x1E69E9840];
}

- (void)resetRole:(id)role completion:(id)completion
{
  v16 = *MEMORY[0x1E69E9840];
  roleCopy = role;
  completionCopy = completion;
  v8 = PRSLogPosterContents();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v14 = 136315138;
    v15 = "[PRSServer resetRole:completion:]";
    _os_log_impl(&dword_1C26FF000, v8, OS_LOG_TYPE_INFO, "%s", &v14, 0xCu);
  }

  currentContext = [MEMORY[0x1E698F490] currentContext];
  remoteProcess = [currentContext remoteProcess];
  v11 = [remoteProcess hasEntitlement:@"com.apple.posterboardservices.data-store.deleteDataStore"];

  if (v11)
  {
    delegate = [(PRSServer *)self delegate];
    [delegate server:self resetRole:roleCopy completion:completionCopy];
LABEL_7:

    goto LABEL_8;
  }

  if (completionCopy)
  {
    delegate = [MEMORY[0x1E696ABC0] prs_entitlementFailureErrorWithFile:"/Library/Caches/com.apple.xbs/Sources/Wallpaper_NonUI/PosterBoardServices/Server/PRSServer.m" line:147];
    completionCopy[2](completionCopy, delegate);
    goto LABEL_7;
  }

LABEL_8:

  v13 = *MEMORY[0x1E69E9840];
}

- (void)invalidateDataStoreWithCompletion:(id)completion
{
  v13 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = PRSLogPosterContents();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v11 = 136315138;
    v12 = "[PRSServer invalidateDataStoreWithCompletion:]";
    _os_log_impl(&dword_1C26FF000, v5, OS_LOG_TYPE_INFO, "%s", &v11, 0xCu);
  }

  currentContext = [MEMORY[0x1E698F490] currentContext];
  remoteProcess = [currentContext remoteProcess];
  v8 = [remoteProcess hasEntitlement:@"com.apple.posterboardservices.data-store.deleteDataStore"];

  if (v8)
  {
    delegate = [(PRSServer *)self delegate];
    [delegate server:self invalidateDataStoreWithCompletion:completionCopy];
LABEL_7:

    goto LABEL_8;
  }

  if (completionCopy)
  {
    delegate = [MEMORY[0x1E696ABC0] prs_entitlementFailureErrorWithFile:"/Library/Caches/com.apple.xbs/Sources/Wallpaper_NonUI/PosterBoardServices/Server/PRSServer.m" line:160];
    completionCopy[2](completionCopy, delegate);
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

  currentContext = [MEMORY[0x1E698F490] currentContext];
  remoteProcess = [currentContext remoteProcess];
  v5 = [remoteProcess hasEntitlement:@"com.apple.posterboardservices.data-store.deleteDataStore"];

  if (v5)
  {
    exit(0);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)setHostConfiguration:(id)configuration forRole:(id)role completion:(id)completion
{
  configurationCopy = configuration;
  roleCopy = role;
  completionCopy = completion;
  currentContext = [MEMORY[0x1E698F490] currentContext];
  remoteProcess = [currentContext remoteProcess];
  v12 = [remoteProcess hasEntitlement:@"com.apple.posterboardservices.host.configuration"];

  if (v12)
  {
    delegate = [(PRSServer *)self delegate];
    [delegate server:self setHostConfiguration:configurationCopy forRole:roleCopy completion:completionCopy];
  }

  else
  {
    if (!completionCopy)
    {
      goto LABEL_6;
    }

    delegate = [MEMORY[0x1E696ABC0] prs_entitlementFailureErrorWithFile:"/Library/Caches/com.apple.xbs/Sources/Wallpaper_NonUI/PosterBoardServices/Server/PRSServer.m" line:181];
    completionCopy[2](completionCopy, delegate);
  }

LABEL_6:
}

- (void)deleteHostConfigurationForRole:(id)role completion:(id)completion
{
  roleCopy = role;
  completionCopy = completion;
  currentContext = [MEMORY[0x1E698F490] currentContext];
  remoteProcess = [currentContext remoteProcess];
  v9 = [remoteProcess hasEntitlement:@"com.apple.posterboardservices.host.configuration"];

  if (v9)
  {
    delegate = [(PRSServer *)self delegate];
    [delegate server:self deleteHostConfigurationForRole:roleCopy completion:completionCopy];
  }

  else
  {
    if (!completionCopy)
    {
      goto LABEL_6;
    }

    delegate = [MEMORY[0x1E696ABC0] prs_entitlementFailureErrorWithFile:"/Library/Caches/com.apple.xbs/Sources/Wallpaper_NonUI/PosterBoardServices/Server/PRSServer.m" line:191];
    completionCopy[2](completionCopy, delegate);
  }

LABEL_6:
}

- (void)updatePosterConfigurationsFromHostForRole:(id)role completion:(id)completion
{
  roleCopy = role;
  completionCopy = completion;
  currentContext = [MEMORY[0x1E698F490] currentContext];
  remoteProcess = [currentContext remoteProcess];
  v9 = [remoteProcess hasEntitlement:@"com.apple.posterboardservices.host.configuration"];

  if (v9)
  {
    delegate = [(PRSServer *)self delegate];
    [delegate server:self updatePosterConfigurationsFromHostForRole:roleCopy completion:completionCopy];
  }

  else
  {
    if (!completionCopy)
    {
      goto LABEL_6;
    }

    delegate = [MEMORY[0x1E696ABC0] prs_entitlementFailureErrorWithFile:"/Library/Caches/com.apple.xbs/Sources/Wallpaper_NonUI/PosterBoardServices/Server/PRSServer.m" line:201];
    completionCopy[2](completionCopy, delegate);
  }

LABEL_6:
}

- (void)fetchExtensionIdentifiersWithCompletion:(id)completion
{
  v12 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = PRSLogPosterContents();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v11 = "[PRSServer fetchExtensionIdentifiersWithCompletion:]";
    _os_log_impl(&dword_1C26FF000, v5, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
  }

  if (completionCopy)
  {
    delegate = [(PRSServer *)self delegate];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __53__PRSServer_fetchExtensionIdentifiersWithCompletion___block_invoke;
    v8[3] = &unk_1E818CFB0;
    v9 = completionCopy;
    [delegate server:self fetchExtensionIdentifiersWithCompletion:v8];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)fetchPosterDescriptorsForExtension:(id)extension completion:(id)completion
{
  v22 = *MEMORY[0x1E69E9840];
  extensionCopy = extension;
  completionCopy = completion;
  v9 = PRSLogPosterContents();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v21 = "[PRSServer fetchPosterDescriptorsForExtension:completion:]";
    _os_log_impl(&dword_1C26FF000, v9, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
  }

  if (completionCopy)
  {
    currentContext = [MEMORY[0x1E698F490] currentContext];
    remoteProcess = [currentContext remoteProcess];
    auditToken = [remoteProcess auditToken];

    delegate = [(PRSServer *)self delegate];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __59__PRSServer_fetchPosterDescriptorsForExtension_completion___block_invoke;
    v16[3] = &unk_1E818CFD8;
    v17 = auditToken;
    v19 = a2;
    v18 = completionCopy;
    v14 = auditToken;
    [delegate server:self fetchPosterDescriptorsForExtension:extensionCopy completion:v16];
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

- (void)fetchStaticPosterDescriptorsForExtension:(id)extension completion:(id)completion
{
  v22 = *MEMORY[0x1E69E9840];
  extensionCopy = extension;
  completionCopy = completion;
  v9 = PRSLogPosterContents();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v21 = "[PRSServer fetchStaticPosterDescriptorsForExtension:completion:]";
    _os_log_impl(&dword_1C26FF000, v9, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
  }

  if (completionCopy)
  {
    currentContext = [MEMORY[0x1E698F490] currentContext];
    remoteProcess = [currentContext remoteProcess];
    auditToken = [remoteProcess auditToken];

    delegate = [(PRSServer *)self delegate];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __65__PRSServer_fetchStaticPosterDescriptorsForExtension_completion___block_invoke;
    v16[3] = &unk_1E818CFD8;
    v17 = auditToken;
    v19 = a2;
    v18 = completionCopy;
    v14 = auditToken;
    [delegate server:self fetchStaticPosterDescriptorsForExtension:extensionCopy completion:v16];
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

- (void)refreshPosterDescriptorsForExtension:(id)extension sessionInfo:(id)info completion:(id)completion
{
  v26 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  infoCopy = info;
  extensionCopy = extension;
  v12 = PRSLogPosterContents();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v25 = "[PRSServer refreshPosterDescriptorsForExtension:sessionInfo:completion:]";
    _os_log_impl(&dword_1C26FF000, v12, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
  }

  if (completionCopy)
  {
    currentContext = [MEMORY[0x1E698F490] currentContext];
    remoteProcess = [currentContext remoteProcess];
    auditToken = [remoteProcess auditToken];

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __73__PRSServer_refreshPosterDescriptorsForExtension_sessionInfo_completion___block_invoke;
    v20[3] = &unk_1E818CFD8;
    v21 = auditToken;
    v23 = a2;
    v22 = completionCopy;
    v16 = auditToken;
    v17 = MEMORY[0x1C691D2A0](v20);
  }

  else
  {
    v17 = &__block_literal_global_8;
  }

  delegate = [(PRSServer *)self delegate];
  [delegate server:self refreshPosterDescriptorsForExtension:extensionCopy sessionInfo:infoCopy completion:v17];

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

- (void)deletePosterDescriptorsForExtension:(id)extension completion:(id)completion
{
  v19 = *MEMORY[0x1E69E9840];
  extensionCopy = extension;
  completionCopy = completion;
  v8 = PRSLogPosterContents();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v18 = "[PRSServer deletePosterDescriptorsForExtension:completion:]";
    _os_log_impl(&dword_1C26FF000, v8, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
  }

  currentContext = [MEMORY[0x1E698F490] currentContext];
  remoteProcess = [currentContext remoteProcess];
  v11 = [remoteProcess hasEntitlement:@"com.apple.posterboardservices.data-store.deleteDescriptors"];

  if (v11)
  {
    delegate = [(PRSServer *)self delegate];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __60__PRSServer_deletePosterDescriptorsForExtension_completion___block_invoke;
    v15[3] = &unk_1E818D020;
    v16 = completionCopy;
    [delegate server:self deletePosterDescriptorsForExtension:extensionCopy completion:v15];

    v13 = v16;
LABEL_7:

    goto LABEL_8;
  }

  if (completionCopy)
  {
    v13 = [MEMORY[0x1E696ABC0] prs_entitlementFailureErrorWithFile:"/Library/Caches/com.apple.xbs/Sources/Wallpaper_NonUI/PosterBoardServices/Server/PRSServer.m" line:297];
    (*(completionCopy + 2))(completionCopy, v13);
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

- (void)pushToProactiveWithCompletion:(id)completion
{
  v13 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = PRSLogPosterContents();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v12 = "[PRSServer pushToProactiveWithCompletion:]";
    _os_log_impl(&dword_1C26FF000, v5, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
  }

  delegate = [(PRSServer *)self delegate];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __43__PRSServer_pushToProactiveWithCompletion___block_invoke;
  v9[3] = &unk_1E818D020;
  v10 = completionCopy;
  v7 = completionCopy;
  [delegate server:self pushToProactiveWithCompletion:v9];

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

- (void)pushPosterGalleryUpdate:(id)update completion:(id)completion
{
  v16 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  updateCopy = update;
  v8 = PRSLogPosterContents();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v15 = "[PRSServer pushPosterGalleryUpdate:completion:]";
    _os_log_impl(&dword_1C26FF000, v8, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
  }

  delegate = [(PRSServer *)self delegate];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __48__PRSServer_pushPosterGalleryUpdate_completion___block_invoke;
  v12[3] = &unk_1E818D020;
  v13 = completionCopy;
  v10 = completionCopy;
  [delegate server:self pushPosterGalleryUpdate:updateCopy completion:v12];

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

- (void)fetchGallery:(id)gallery
{
  v13 = *MEMORY[0x1E69E9840];
  galleryCopy = gallery;
  v5 = PRSLogPosterContents();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v12 = "[PRSServer fetchGallery:]";
    _os_log_impl(&dword_1C26FF000, v5, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
  }

  delegate = [(PRSServer *)self delegate];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __26__PRSServer_fetchGallery___block_invoke;
  v9[3] = &unk_1E818D048;
  v10 = galleryCopy;
  v7 = galleryCopy;
  [delegate server:self fetchGallery:v9];

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

- (void)retrieveGallery:(id)gallery
{
  v13 = *MEMORY[0x1E69E9840];
  galleryCopy = gallery;
  v5 = PRSLogPosterContents();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v12 = "[PRSServer retrieveGallery:]";
    _os_log_impl(&dword_1C26FF000, v5, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
  }

  delegate = [(PRSServer *)self delegate];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __29__PRSServer_retrieveGallery___block_invoke;
  v9[3] = &unk_1E818D048;
  v10 = galleryCopy;
  v7 = galleryCopy;
  [delegate server:self retrieveGallery:v9];

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

- (void)createPosterConfigurationForProviderIdentifier:(id)identifier posterDescriptorIdentifier:(id)descriptorIdentifier role:(id)role completion:(id)completion
{
  v29 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  roleCopy = role;
  descriptorIdentifierCopy = descriptorIdentifier;
  identifierCopy = identifier;
  v15 = PRSLogPosterContents();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v28 = "[PRSServer createPosterConfigurationForProviderIdentifier:posterDescriptorIdentifier:role:completion:]";
    _os_log_impl(&dword_1C26FF000, v15, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
  }

  if (completionCopy)
  {
    currentContext = [MEMORY[0x1E698F490] currentContext];
    remoteProcess = [currentContext remoteProcess];
    auditToken = [remoteProcess auditToken];

    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __103__PRSServer_createPosterConfigurationForProviderIdentifier_posterDescriptorIdentifier_role_completion___block_invoke;
    v23[3] = &unk_1E818D070;
    v24 = auditToken;
    v26 = a2;
    v25 = completionCopy;
    v19 = auditToken;
    v20 = MEMORY[0x1C691D2A0](v23);
  }

  else
  {
    v20 = &__block_literal_global_21_0;
  }

  delegate = [(PRSServer *)self delegate];
  [delegate server:self createPosterConfigurationForProviderIdentifier:identifierCopy posterDescriptorIdentifier:descriptorIdentifierCopy role:roleCopy completion:v20];

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

- (void)deletePosterConfigurationsMatchingUUID:(id)d completion:(id)completion
{
  v19 = *MEMORY[0x1E69E9840];
  dCopy = d;
  completionCopy = completion;
  v8 = PRSLogPosterContents();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v18 = "[PRSServer deletePosterConfigurationsMatchingUUID:completion:]";
    _os_log_impl(&dword_1C26FF000, v8, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
  }

  currentContext = [MEMORY[0x1E698F490] currentContext];
  remoteProcess = [currentContext remoteProcess];
  v11 = [remoteProcess hasEntitlement:@"com.apple.posterboardservices.data-store.deleteDescriptors"];

  if (v11)
  {
    delegate = [(PRSServer *)self delegate];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __63__PRSServer_deletePosterConfigurationsMatchingUUID_completion___block_invoke;
    v15[3] = &unk_1E818D020;
    v16 = completionCopy;
    [delegate server:self deletePosterConfigurationsMatchingUUID:dCopy completion:v15];

    v13 = v16;
LABEL_7:

    goto LABEL_8;
  }

  if (completionCopy)
  {
    v13 = [MEMORY[0x1E696ABC0] prs_entitlementFailureErrorWithFile:"/Library/Caches/com.apple.xbs/Sources/Wallpaper_NonUI/PosterBoardServices/Server/PRSServer.m" line:398];
    (*(completionCopy + 2))(completionCopy, v13);
    goto LABEL_7;
  }

LABEL_8:

  v14 = *MEMORY[0x1E69E9840];
}

- (void)exportPosterConfigurationMatchingUUID:(id)d completion:(id)completion
{
  v16 = *MEMORY[0x1E69E9840];
  dCopy = d;
  completionCopy = completion;
  v8 = PRSLogPosterContents();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v14 = 136315138;
    v15 = "[PRSServer exportPosterConfigurationMatchingUUID:completion:]";
    _os_log_impl(&dword_1C26FF000, v8, OS_LOG_TYPE_INFO, "%s", &v14, 0xCu);
  }

  currentContext = [MEMORY[0x1E698F490] currentContext];
  remoteProcess = [currentContext remoteProcess];
  v11 = [remoteProcess hasEntitlement:@"com.apple.posterboardservices.data-store.accessSwitcherConfiguration"];

  if (v11)
  {
    delegate = [(PRSServer *)self delegate];
    [delegate server:self exportPosterConfigurationMatchingUUID:dCopy completion:completionCopy];
LABEL_7:

    goto LABEL_8;
  }

  if (completionCopy)
  {
    delegate = [MEMORY[0x1E696ABC0] prs_entitlementFailureErrorWithFile:"/Library/Caches/com.apple.xbs/Sources/Wallpaper_NonUI/PosterBoardServices/Server/PRSServer.m" line:412];
    completionCopy[2](completionCopy, 0, delegate);
    goto LABEL_7;
  }

LABEL_8:

  v13 = *MEMORY[0x1E69E9840];
}

- (void)importPosterConfigurationFromArchiveData:(id)data completion:(id)completion
{
  v16 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  completionCopy = completion;
  v8 = PRSLogPosterContents();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v14 = 136315138;
    v15 = "[PRSServer importPosterConfigurationFromArchiveData:completion:]";
    _os_log_impl(&dword_1C26FF000, v8, OS_LOG_TYPE_INFO, "%s", &v14, 0xCu);
  }

  currentContext = [MEMORY[0x1E698F490] currentContext];
  remoteProcess = [currentContext remoteProcess];
  v11 = [remoteProcess hasEntitlement:@"com.apple.posterboardservices.data-store.mutateSwitcherConfiguration"];

  if (v11)
  {
    delegate = [(PRSServer *)self delegate];
    [delegate server:self importPosterConfigurationFromArchiveData:dataCopy completion:completionCopy];
LABEL_7:

    goto LABEL_8;
  }

  if (completionCopy)
  {
    delegate = [MEMORY[0x1E696ABC0] prs_entitlementFailureErrorWithFile:"/Library/Caches/com.apple.xbs/Sources/Wallpaper_NonUI/PosterBoardServices/Server/PRSServer.m" line:424];
    completionCopy[2](completionCopy, 0, delegate);
    goto LABEL_7;
  }

LABEL_8:

  v13 = *MEMORY[0x1E69E9840];
}

- (void)fetchSelectedPosterForRole:(id)role completion:(id)completion
{
  v16 = *MEMORY[0x1E69E9840];
  roleCopy = role;
  completionCopy = completion;
  v8 = PRSLogPosterContents();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v14 = 136315138;
    v15 = "[PRSServer fetchSelectedPosterForRole:completion:]";
    _os_log_impl(&dword_1C26FF000, v8, OS_LOG_TYPE_INFO, "%s", &v14, 0xCu);
  }

  currentContext = [MEMORY[0x1E698F490] currentContext];
  remoteProcess = [currentContext remoteProcess];
  v11 = [remoteProcess hasEntitlement:@"com.apple.posterboardservices.data-store.accessSwitcherConfiguration"];

  if (v11)
  {
    delegate = [(PRSServer *)self delegate];
    [delegate server:self fetchSelectedPosterForRole:roleCopy completion:completionCopy];
LABEL_7:

    goto LABEL_8;
  }

  if (completionCopy)
  {
    delegate = [MEMORY[0x1E696ABC0] prs_entitlementFailureErrorWithFile:"/Library/Caches/com.apple.xbs/Sources/Wallpaper_NonUI/PosterBoardServices/Server/PRSServer.m" line:437];
    completionCopy[2](completionCopy, 0, delegate);
    goto LABEL_7;
  }

LABEL_8:

  v13 = *MEMORY[0x1E69E9840];
}

- (void)fetchActivePosterForRole:(id)role completion:(id)completion
{
  v19 = *MEMORY[0x1E69E9840];
  roleCopy = role;
  completionCopy = completion;
  v8 = PRSLogPosterContents();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v18 = "[PRSServer fetchActivePosterForRole:completion:]";
    _os_log_impl(&dword_1C26FF000, v8, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
  }

  currentContext = [MEMORY[0x1E698F490] currentContext];
  remoteProcess = [currentContext remoteProcess];
  v11 = [remoteProcess hasEntitlement:@"com.apple.posterboardservices.data-store.accessSwitcherConfiguration"];

  if (v11)
  {
    delegate = [(PRSServer *)self delegate];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __49__PRSServer_fetchActivePosterForRole_completion___block_invoke;
    v15[3] = &unk_1E818D0B8;
    v16 = completionCopy;
    [delegate server:self fetchActivePosterForRole:roleCopy completion:v15];

    v13 = v16;
LABEL_7:

    goto LABEL_8;
  }

  if (completionCopy)
  {
    v13 = [MEMORY[0x1E696ABC0] prs_entitlementFailureErrorWithFile:"/Library/Caches/com.apple.xbs/Sources/Wallpaper_NonUI/PosterBoardServices/Server/PRSServer.m" line:450];
    (*(completionCopy + 2))(completionCopy, 0, 0, v13);
    goto LABEL_7;
  }

LABEL_8:

  v14 = *MEMORY[0x1E69E9840];
}

- (id)fetchActivePosterForRole:(id)role error:(id *)error
{
  v17 = *MEMORY[0x1E69E9840];
  roleCopy = role;
  v7 = PRSLogPosterContents();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v15 = 136315138;
    v16 = "[PRSServer fetchActivePosterForRole:error:]";
    _os_log_impl(&dword_1C26FF000, v7, OS_LOG_TYPE_INFO, "%s", &v15, 0xCu);
  }

  currentContext = [MEMORY[0x1E698F490] currentContext];
  remoteProcess = [currentContext remoteProcess];
  v10 = [remoteProcess hasEntitlement:@"com.apple.posterboardservices.data-store.accessSwitcherConfiguration"];

  if (v10)
  {
    delegate = [(PRSServer *)self delegate];
    v12 = [delegate server:self fetchActivePosterForRole:roleCopy error:error];
  }

  else if (error)
  {
    [MEMORY[0x1E696ABC0] prs_entitlementFailureErrorWithFile:"/Library/Caches/com.apple.xbs/Sources/Wallpaper_NonUI/PosterBoardServices/Server/PRSServer.m" line:464];
    *error = v12 = 0;
  }

  else
  {
    v12 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (void)updateToSelectedPosterMatchingUUID:(id)d role:(id)role completion:(id)completion
{
  v22 = *MEMORY[0x1E69E9840];
  dCopy = d;
  roleCopy = role;
  completionCopy = completion;
  v11 = PRSLogPosterContents();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v20 = 136315138;
    v21 = "[PRSServer updateToSelectedPosterMatchingUUID:role:completion:]";
    _os_log_impl(&dword_1C26FF000, v11, OS_LOG_TYPE_INFO, "%s", &v20, 0xCu);
  }

  currentContext = [MEMORY[0x1E698F490] currentContext];
  remoteProcess = [currentContext remoteProcess];
  v14 = [remoteProcess hasEntitlement:@"com.apple.posterboardservices.data-store.mutateSwitcherConfiguration"];

  if (v14)
  {
    currentContext2 = [MEMORY[0x1E698F490] currentContext];
    remoteProcess2 = [currentContext2 remoteProcess];
    bundleIdentifier = [remoteProcess2 bundleIdentifier];

    delegate = [(PRSServer *)self delegate];
    [delegate server:self updateToSelectedConfigurationMatchingUUID:dCopy role:roleCopy from:bundleIdentifier completion:completionCopy];

LABEL_7:
    goto LABEL_8;
  }

  if (completionCopy)
  {
    bundleIdentifier = [MEMORY[0x1E696ABC0] prs_entitlementFailureErrorWithFile:"/Library/Caches/com.apple.xbs/Sources/Wallpaper_NonUI/PosterBoardServices/Server/PRSServer.m" line:477];
    completionCopy[2](completionCopy, bundleIdentifier);
    goto LABEL_7;
  }

LABEL_8:

  v19 = *MEMORY[0x1E69E9840];
}

- (void)fetchPosterConfigurationsForRole:(id)role completion:(id)completion
{
  v25 = *MEMORY[0x1E69E9840];
  roleCopy = role;
  completionCopy = completion;
  v9 = PRSLogPosterContents();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v24 = "[PRSServer fetchPosterConfigurationsForRole:completion:]";
    _os_log_impl(&dword_1C26FF000, v9, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
  }

  currentContext = [MEMORY[0x1E698F490] currentContext];
  remoteProcess = [currentContext remoteProcess];
  v12 = [remoteProcess hasEntitlement:@"com.apple.posterboardservices.data-store.accessSwitcherConfiguration"];

  if (v12)
  {
    if (completionCopy)
    {
      currentContext2 = [MEMORY[0x1E698F490] currentContext];
      remoteProcess2 = [currentContext2 remoteProcess];
      auditToken = [remoteProcess2 auditToken];

      delegate = [(PRSServer *)self delegate];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __57__PRSServer_fetchPosterConfigurationsForRole_completion___block_invoke;
      v19[3] = &unk_1E818CFD8;
      v20 = auditToken;
      v22 = a2;
      v21 = completionCopy;
      v17 = auditToken;
      [delegate server:self fetchPosterConfigurationsForRole:roleCopy completion:v19];

LABEL_8:
    }
  }

  else if (completionCopy)
  {
    v17 = [MEMORY[0x1E696ABC0] prs_entitlementFailureErrorWithFile:"/Library/Caches/com.apple.xbs/Sources/Wallpaper_NonUI/PosterBoardServices/Server/PRSServer.m" line:491];
    (*(completionCopy + 2))(completionCopy, 0, v17);
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

- (void)fetchPosterConfigurationsForExtension:(id)extension completion:(id)completion
{
  v25 = *MEMORY[0x1E69E9840];
  extensionCopy = extension;
  completionCopy = completion;
  v9 = PRSLogPosterContents();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v24 = "[PRSServer fetchPosterConfigurationsForExtension:completion:]";
    _os_log_impl(&dword_1C26FF000, v9, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
  }

  currentContext = [MEMORY[0x1E698F490] currentContext];
  remoteProcess = [currentContext remoteProcess];
  v12 = [remoteProcess hasEntitlement:@"com.apple.posterboardservices.data-store.accessSwitcherConfiguration"];

  if (v12)
  {
    if (completionCopy)
    {
      currentContext2 = [MEMORY[0x1E698F490] currentContext];
      remoteProcess2 = [currentContext2 remoteProcess];
      auditToken = [remoteProcess2 auditToken];

      delegate = [(PRSServer *)self delegate];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __62__PRSServer_fetchPosterConfigurationsForExtension_completion___block_invoke;
      v19[3] = &unk_1E818CFD8;
      v20 = auditToken;
      v22 = a2;
      v21 = completionCopy;
      v17 = auditToken;
      [delegate server:self fetchPosterConfigurationsForExtension:extensionCopy completion:v19];

LABEL_8:
    }
  }

  else if (completionCopy)
  {
    v17 = [MEMORY[0x1E696ABC0] prs_entitlementFailureErrorWithFile:"/Library/Caches/com.apple.xbs/Sources/Wallpaper_NonUI/PosterBoardServices/Server/PRSServer.m" line:518];
    (*(completionCopy + 2))(completionCopy, 0, v17);
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

- (void)fetchPosterSnapshotsWithRequest:(id)request completion:(id)completion
{
  v16 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  requestCopy = request;
  v8 = PRSLogPosterContents();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v15 = "[PRSServer fetchPosterSnapshotsWithRequest:completion:]";
    _os_log_impl(&dword_1C26FF000, v8, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
  }

  delegate = [(PRSServer *)self delegate];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __56__PRSServer_fetchPosterSnapshotsWithRequest_completion___block_invoke;
  v12[3] = &unk_1E818D0E0;
  v13 = completionCopy;
  v10 = completionCopy;
  [delegate server:self fetchPosterSnapshotsWithRequest:requestCopy completion:v12];

  v11 = *MEMORY[0x1E69E9840];
}

- (void)refreshPosterConfigurationMatchingUUID:(id)d sessionInfo:(id)info completion:(id)completion
{
  v29 = *MEMORY[0x1E69E9840];
  dCopy = d;
  infoCopy = info;
  completionCopy = completion;
  v12 = PRSLogPosterContents();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v28 = "[PRSServer refreshPosterConfigurationMatchingUUID:sessionInfo:completion:]";
    _os_log_impl(&dword_1C26FF000, v12, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
  }

  currentContext = [MEMORY[0x1E698F490] currentContext];
  remoteProcess = [currentContext remoteProcess];
  v15 = [remoteProcess hasEntitlement:@"com.apple.posterboardservices.data-store.refreshConfigurations"];

  if (v15)
  {
    if (completionCopy)
    {
      currentContext2 = [MEMORY[0x1E698F490] currentContext];
      remoteProcess2 = [currentContext2 remoteProcess];
      auditToken = [remoteProcess2 auditToken];

      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __75__PRSServer_refreshPosterConfigurationMatchingUUID_sessionInfo_completion___block_invoke;
      v23[3] = &unk_1E818D070;
      v24 = auditToken;
      v26 = a2;
      v25 = completionCopy;
      v19 = auditToken;
      v20 = MEMORY[0x1C691D2A0](v23);
    }

    else
    {
      v20 = &__block_literal_global_26;
    }

    delegate = [(PRSServer *)self delegate];
    [delegate server:self refreshPosterConfigurationMatchingUUID:dCopy sessionInfo:infoCopy completion:v20];

    goto LABEL_10;
  }

  if (completionCopy)
  {
    v20 = [MEMORY[0x1E696ABC0] prs_entitlementFailureErrorWithFile:"/Library/Caches/com.apple.xbs/Sources/Wallpaper_NonUI/PosterBoardServices/Server/PRSServer.m" line:551];
    (*(completionCopy + 2))(completionCopy, 0, v20);
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

- (void)associateConfigurationMatchingUUID:(id)d focusModeActivityUUID:(id)iD completion:(id)completion
{
  v19 = *MEMORY[0x1E69E9840];
  dCopy = d;
  iDCopy = iD;
  completionCopy = completion;
  v11 = PRSLogPosterContents();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v17 = 136315138;
    v18 = "[PRSServer associateConfigurationMatchingUUID:focusModeActivityUUID:completion:]";
    _os_log_impl(&dword_1C26FF000, v11, OS_LOG_TYPE_INFO, "%s", &v17, 0xCu);
  }

  currentContext = [MEMORY[0x1E698F490] currentContext];
  remoteProcess = [currentContext remoteProcess];
  v14 = [remoteProcess hasEntitlement:@"com.apple.posterboardservices.data-store.mutateSwitcherConfiguration"];

  if (v14)
  {
    delegate = [(PRSServer *)self delegate];
    [delegate server:self associateConfigurationMatchingUUID:dCopy focusModeActivityUUID:iDCopy completion:completionCopy];
LABEL_7:

    goto LABEL_8;
  }

  if (completionCopy)
  {
    delegate = [MEMORY[0x1E696ABC0] prs_entitlementFailureErrorWithFile:"/Library/Caches/com.apple.xbs/Sources/Wallpaper_NonUI/PosterBoardServices/Server/PRSServer.m" line:579];
    completionCopy[2](completionCopy, delegate);
    goto LABEL_7;
  }

LABEL_8:

  v16 = *MEMORY[0x1E69E9840];
}

- (void)notePosterConfigurationUnderlyingModelDidChange:(id)change
{
  v13 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  v5 = PRSLogPosterContents();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v11 = 136315138;
    v12 = "[PRSServer notePosterConfigurationUnderlyingModelDidChange:]";
    _os_log_impl(&dword_1C26FF000, v5, OS_LOG_TYPE_INFO, "%s", &v11, 0xCu);
  }

  currentContext = [MEMORY[0x1E698F490] currentContext];
  remoteProcess = [currentContext remoteProcess];
  v8 = [remoteProcess hasEntitlement:@"com.apple.posterboardservices.data-store.mutateSwitcherConfiguration"];

  if (v8)
  {
    delegate = [(PRSServer *)self delegate];
    [delegate server:self notePosterConfigurationUnderlyingModelDidChange:changeCopy];
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)refreshSnapshotForPosterConfigurationMatchUUID:(id)d completion:(id)completion
{
  v16 = *MEMORY[0x1E69E9840];
  dCopy = d;
  completionCopy = completion;
  v8 = PRSLogPosterContents();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v14 = 136315138;
    v15 = "[PRSServer refreshSnapshotForPosterConfigurationMatchUUID:completion:]";
    _os_log_impl(&dword_1C26FF000, v8, OS_LOG_TYPE_INFO, "%s", &v14, 0xCu);
  }

  currentContext = [MEMORY[0x1E698F490] currentContext];
  remoteProcess = [currentContext remoteProcess];
  v11 = [remoteProcess hasEntitlement:@"com.apple.posterboardservices.data-store.refreshConfigurationSnapshot"];

  if (v11)
  {
    delegate = [(PRSServer *)self delegate];
    [delegate server:self refreshSnapshotForPosterConfigurationMatchUUID:dCopy completion:completionCopy];
LABEL_7:

    goto LABEL_8;
  }

  if (completionCopy)
  {
    delegate = [MEMORY[0x1E696ABC0] prs_entitlementFailureErrorWithFile:"/Library/Caches/com.apple.xbs/Sources/Wallpaper_NonUI/PosterBoardServices/Server/PRSServer.m" line:599];
    completionCopy[2](completionCopy, delegate);
    goto LABEL_7;
  }

LABEL_8:

  v13 = *MEMORY[0x1E69E9840];
}

- (void)ingestSnapshotCollection:(id)collection forPosterConfigurationUUID:(id)d completion:(id)completion
{
  v22 = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  dCopy = d;
  completionCopy = completion;
  v11 = PRSLogPosterContents();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v21 = "[PRSServer ingestSnapshotCollection:forPosterConfigurationUUID:completion:]";
    _os_log_impl(&dword_1C26FF000, v11, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
  }

  currentContext = [MEMORY[0x1E698F490] currentContext];
  remoteProcess = [currentContext remoteProcess];
  v14 = [remoteProcess hasEntitlement:@"com.apple.posterboardservices.data-store.mutateSwitcherConfiguration"];

  if (v14)
  {
    delegate = [(PRSServer *)self delegate];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __76__PRSServer_ingestSnapshotCollection_forPosterConfigurationUUID_completion___block_invoke;
    v18[3] = &unk_1E818D020;
    v19 = completionCopy;
    [delegate server:self ingestSnapshotCollection:collectionCopy forPosterConfigurationUUID:dCopy completion:v18];

    v16 = v19;
LABEL_7:

    goto LABEL_8;
  }

  if (completionCopy)
  {
    v16 = [MEMORY[0x1E696ABC0] prs_entitlementFailureErrorWithFile:"/Library/Caches/com.apple.xbs/Sources/Wallpaper_NonUI/PosterBoardServices/Server/PRSServer.m" line:611];
    (*(completionCopy + 2))(completionCopy, v16);
    goto LABEL_7;
  }

LABEL_8:

  v17 = *MEMORY[0x1E69E9840];
}

- (void)fetchFocusUUIDForConfiguration:(id)configuration completion:(id)completion
{
  configurationCopy = configuration;
  completionCopy = completion;
  currentContext = [MEMORY[0x1E698F490] currentContext];
  remoteProcess = [currentContext remoteProcess];
  v9 = [remoteProcess hasEntitlement:@"com.apple.posterboardservices.data-store.accessSwitcherFocusConfiguration"];

  if (v9)
  {
    delegate = [(PRSServer *)self delegate];
    [delegate server:self fetchFocusUUIDForConfiguration:configurationCopy completion:completionCopy];
  }

  else
  {
    if (!completionCopy)
    {
      goto LABEL_6;
    }

    delegate = [MEMORY[0x1E696ABC0] prs_entitlementFailureErrorWithFile:"/Library/Caches/com.apple.xbs/Sources/Wallpaper_NonUI/PosterBoardServices/Server/PRSServer.m" line:623];
    completionCopy[2](completionCopy, 0, delegate);
  }

LABEL_6:
}

- (void)removeAllFocusConfigurationsMatchingFocusUUID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  currentContext = [MEMORY[0x1E698F490] currentContext];
  remoteProcess = [currentContext remoteProcess];
  v9 = [remoteProcess hasEntitlement:@"com.apple.posterboardservices.data-store.mutateSwitcherFocusConfiguration"];

  if (v9)
  {
    delegate = [(PRSServer *)self delegate];
    [delegate server:self removeAllFocusConfigurationsMatchingFocusUUID:dCopy completion:completionCopy];
  }

  else
  {
    if (!completionCopy)
    {
      goto LABEL_6;
    }

    delegate = [MEMORY[0x1E696ABC0] prs_entitlementFailureErrorWithFile:"/Library/Caches/com.apple.xbs/Sources/Wallpaper_NonUI/PosterBoardServices/Server/PRSServer.m" line:634];
    completionCopy[2](completionCopy, delegate);
  }

LABEL_6:
}

- (void)fetchContentObstructionBoundsForPosterConfiguration:(id)configuration orientation:(id)orientation completion:(id)completion
{
  completionCopy = completion;
  orientationCopy = orientation;
  configurationCopy = configuration;
  delegate = [(PRSServer *)self delegate];
  integerValue = [orientationCopy integerValue];

  [delegate server:self fetchContentObstructionBoundsForPosterConfiguration:configurationCopy orientation:integerValue completion:completionCopy];
}

- (void)fetchMaximalContentCutoutBoundsForOrientation:(id)orientation completion:(id)completion
{
  completionCopy = completion;
  orientationCopy = orientation;
  delegate = [(PRSServer *)self delegate];
  integerValue = [orientationCopy integerValue];

  [delegate server:self fetchMaximalContentCutoutBoundsForOrientation:integerValue completion:completionCopy];
}

- (void)fetchExtendedContentCutoutBoundsForOrientation:(id)orientation completion:(id)completion
{
  completionCopy = completion;
  orientationCopy = orientation;
  delegate = [(PRSServer *)self delegate];
  integerValue = [orientationCopy integerValue];

  [delegate server:self fetchExtendedContentCutoutBoundsForOrientation:integerValue completion:completionCopy];
}

- (void)fetchContentCutoutBoundsForPosterConfiguration:(id)configuration orientation:(id)orientation completion:(id)completion
{
  completionCopy = completion;
  orientationCopy = orientation;
  configurationCopy = configuration;
  delegate = [(PRSServer *)self delegate];
  integerValue = [orientationCopy integerValue];

  [delegate server:self fetchContentCutoutBoundsForPosterConfiguration:configurationCopy orientation:integerValue completion:completionCopy];
}

- (void)fetchObscurableBoundsForPosterConfiguration:(id)configuration orientation:(id)orientation completion:(id)completion
{
  completionCopy = completion;
  orientationCopy = orientation;
  configurationCopy = configuration;
  delegate = [(PRSServer *)self delegate];
  integerValue = [orientationCopy integerValue];

  [delegate server:self fetchObscurableBoundsForPosterConfiguration:configurationCopy orientation:integerValue completion:completionCopy];
}

- (void)fetchLimitedOcclusionBoundsForPosterConfiguration:(id)configuration orientation:(id)orientation completion:(id)completion
{
  completionCopy = completion;
  orientationCopy = orientation;
  configurationCopy = configuration;
  delegate = [(PRSServer *)self delegate];
  integerValue = [orientationCopy integerValue];

  [delegate server:self fetchLimitedOcclusionBoundsForPosterConfiguration:configurationCopy orientation:integerValue completion:completionCopy];
}

- (void)refreshSnapshotForGalleryItemsMatchingDescriptorIdentifier:(id)identifier extensionIdentifier:(id)extensionIdentifier completion:(id)completion
{
  v19 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  extensionIdentifierCopy = extensionIdentifier;
  completionCopy = completion;
  v11 = PRSLogPosterContents();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v17 = 136315138;
    v18 = "[PRSServer refreshSnapshotForGalleryItemsMatchingDescriptorIdentifier:extensionIdentifier:completion:]";
    _os_log_impl(&dword_1C26FF000, v11, OS_LOG_TYPE_INFO, "%s", &v17, 0xCu);
  }

  currentContext = [MEMORY[0x1E698F490] currentContext];
  remoteProcess = [currentContext remoteProcess];
  v14 = [remoteProcess hasEntitlement:@"com.apple.posterboardservices.data-store.mutateSwitcherConfiguration"];

  if (v14)
  {
    delegate = [(PRSServer *)self delegate];
    [delegate server:self refreshSnapshotForGalleryItemsMatchingDescriptorIdentifier:identifierCopy extensionIdentifier:extensionIdentifierCopy completion:completionCopy];
LABEL_7:

    goto LABEL_8;
  }

  if (completionCopy)
  {
    delegate = [MEMORY[0x1E696ABC0] prs_entitlementFailureErrorWithFile:"/Library/Caches/com.apple.xbs/Sources/Wallpaper_NonUI/PosterBoardServices/Server/PRSServer.m" line:671];
    completionCopy[2](completionCopy, delegate);
    goto LABEL_7;
  }

LABEL_8:

  v16 = *MEMORY[0x1E69E9840];
}

- (void)notifyActiveChargerIdentifierDidUpdate:(id)update completion:(id)completion
{
  v16 = *MEMORY[0x1E69E9840];
  updateCopy = update;
  completionCopy = completion;
  v8 = PRSLogPosterContents();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v14 = 136315138;
    v15 = "[PRSServer notifyActiveChargerIdentifierDidUpdate:completion:]";
    _os_log_impl(&dword_1C26FF000, v8, OS_LOG_TYPE_INFO, "%s", &v14, 0xCu);
  }

  currentContext = [MEMORY[0x1E698F490] currentContext];
  remoteProcess = [currentContext remoteProcess];
  v11 = [remoteProcess hasEntitlement:@"com.apple.posterboardservices.data-store.mutateSwitcherConfiguration"];

  if (v11)
  {
    delegate = [(PRSServer *)self delegate];
    [delegate server:self notifyActiveChargerIdentifierDidUpdate:updateCopy completion:completionCopy];
LABEL_7:

    goto LABEL_8;
  }

  if (completionCopy)
  {
    delegate = [MEMORY[0x1E696ABC0] prs_entitlementFailureErrorWithFile:"/Library/Caches/com.apple.xbs/Sources/Wallpaper_NonUI/PosterBoardServices/Server/PRSServer.m" line:682];
    completionCopy[2](completionCopy, delegate);
    goto LABEL_7;
  }

LABEL_8:

  v13 = *MEMORY[0x1E69E9840];
}

- (void)notifyFocusModeDidChange:(id)change completion:(id)completion
{
  v16 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  completionCopy = completion;
  v8 = PRSLogPosterContents();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v14 = 136315138;
    v15 = "[PRSServer notifyFocusModeDidChange:completion:]";
    _os_log_impl(&dword_1C26FF000, v8, OS_LOG_TYPE_INFO, "%s", &v14, 0xCu);
  }

  currentContext = [MEMORY[0x1E698F490] currentContext];
  remoteProcess = [currentContext remoteProcess];
  v11 = [remoteProcess hasEntitlement:@"com.apple.posterboardservices.data-store.mutateSwitcherConfiguration"];

  if (v11)
  {
    delegate = [(PRSServer *)self delegate];
    [delegate server:self notifyFocusModeDidChange:changeCopy completion:completionCopy];
LABEL_7:

    goto LABEL_8;
  }

  if (completionCopy)
  {
    delegate = [MEMORY[0x1E696ABC0] prs_entitlementFailureErrorWithFile:"/Library/Caches/com.apple.xbs/Sources/Wallpaper_NonUI/PosterBoardServices/Server/PRSServer.m" line:693];
    completionCopy[2](completionCopy, delegate);
    goto LABEL_7;
  }

LABEL_8:

  v13 = *MEMORY[0x1E69E9840];
}

- (void)notifyAvailableFocusModesDidChange:(id)change completion:(id)completion
{
  v16 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  completionCopy = completion;
  v8 = PRSLogPosterContents();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v14 = 136315138;
    v15 = "[PRSServer notifyAvailableFocusModesDidChange:completion:]";
    _os_log_impl(&dword_1C26FF000, v8, OS_LOG_TYPE_INFO, "%s", &v14, 0xCu);
  }

  currentContext = [MEMORY[0x1E698F490] currentContext];
  remoteProcess = [currentContext remoteProcess];
  v11 = [remoteProcess hasEntitlement:@"com.apple.posterboardservices.data-store.mutateSwitcherConfiguration"];

  if (v11)
  {
    delegate = [(PRSServer *)self delegate];
    [delegate server:self notifyAvailableFocusModesDidChange:changeCopy completion:completionCopy];
LABEL_7:

    goto LABEL_8;
  }

  if (completionCopy)
  {
    delegate = [MEMORY[0x1E696ABC0] prs_entitlementFailureErrorWithFile:"/Library/Caches/com.apple.xbs/Sources/Wallpaper_NonUI/PosterBoardServices/Server/PRSServer.m" line:704];
    completionCopy[2](completionCopy, delegate);
    goto LABEL_7;
  }

LABEL_8:

  v13 = *MEMORY[0x1E69E9840];
}

- (void)prewarm:(id)prewarm completion:(id)completion
{
  v16 = *MEMORY[0x1E69E9840];
  prewarmCopy = prewarm;
  completionCopy = completion;
  v8 = PRSLogPosterContents();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v14 = 136315138;
    v15 = "[PRSServer prewarm:completion:]";
    _os_log_impl(&dword_1C26FF000, v8, OS_LOG_TYPE_INFO, "%s", &v14, 0xCu);
  }

  currentContext = [MEMORY[0x1E698F490] currentContext];
  remoteProcess = [currentContext remoteProcess];
  v11 = [remoteProcess hasEntitlement:@"com.apple.posterboardservices.data-store.accessSwitcherConfiguration"];

  if (v11)
  {
    delegate = [(PRSServer *)self delegate];
    [delegate server:self prewarm:prewarmCopy completion:completionCopy];
LABEL_7:

    goto LABEL_8;
  }

  if (completionCopy)
  {
    delegate = [MEMORY[0x1E696ABC0] prs_entitlementFailureErrorWithFile:"/Library/Caches/com.apple.xbs/Sources/Wallpaper_NonUI/PosterBoardServices/Server/PRSServer.m" line:715];
    completionCopy[2](completionCopy, delegate);
    goto LABEL_7;
  }

LABEL_8:

  v13 = *MEMORY[0x1E69E9840];
}

- (void)overnightUpdate:(id)update completion:(id)completion
{
  v16 = *MEMORY[0x1E69E9840];
  updateCopy = update;
  completionCopy = completion;
  v8 = PRSLogPosterContents();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v14 = 136315138;
    v15 = "[PRSServer overnightUpdate:completion:]";
    _os_log_impl(&dword_1C26FF000, v8, OS_LOG_TYPE_INFO, "%s", &v14, 0xCu);
  }

  currentContext = [MEMORY[0x1E698F490] currentContext];
  remoteProcess = [currentContext remoteProcess];
  v11 = [remoteProcess hasEntitlement:@"com.apple.posterboardservices.data-store.accessSwitcherConfiguration"];

  if (v11)
  {
    delegate = [(PRSServer *)self delegate];
    [delegate server:self overnightUpdate:updateCopy completion:completionCopy];
LABEL_7:

    goto LABEL_8;
  }

  if (completionCopy)
  {
    delegate = [MEMORY[0x1E696ABC0] prs_entitlementFailureErrorWithFile:"/Library/Caches/com.apple.xbs/Sources/Wallpaper_NonUI/PosterBoardServices/Server/PRSServer.m" line:726];
    completionCopy[2](completionCopy, delegate);
    goto LABEL_7;
  }

LABEL_8:

  v13 = *MEMORY[0x1E69E9840];
}

- (void)gatherDataFreshnessState:(id)state
{
  v13 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  v5 = PRSLogPosterContents();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v11 = 136315138;
    v12 = "[PRSServer gatherDataFreshnessState:]";
    _os_log_impl(&dword_1C26FF000, v5, OS_LOG_TYPE_INFO, "%s", &v11, 0xCu);
  }

  currentContext = [MEMORY[0x1E698F490] currentContext];
  remoteProcess = [currentContext remoteProcess];
  v8 = [remoteProcess hasEntitlement:@"com.apple.posterboardservices.data-store.accessSwitcherConfiguration"];

  if (v8)
  {
    delegate = [(PRSServer *)self delegate];
    [delegate server:self gatherDataFreshnessState:stateCopy];
LABEL_7:

    goto LABEL_8;
  }

  if (stateCopy)
  {
    delegate = [MEMORY[0x1E696ABC0] prs_entitlementFailureErrorWithFile:"/Library/Caches/com.apple.xbs/Sources/Wallpaper_NonUI/PosterBoardServices/Server/PRSServer.m" line:738];
    stateCopy[2](stateCopy, 0, delegate);
    goto LABEL_7;
  }

LABEL_8:

  v10 = *MEMORY[0x1E69E9840];
}

- (void)deleteTransientDataWithCompletion:(id)completion
{
  v13 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = PRSLogPosterContents();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v11 = 136315138;
    v12 = "[PRSServer deleteTransientDataWithCompletion:]";
    _os_log_impl(&dword_1C26FF000, v5, OS_LOG_TYPE_INFO, "%s", &v11, 0xCu);
  }

  currentContext = [MEMORY[0x1E698F490] currentContext];
  remoteProcess = [currentContext remoteProcess];
  v8 = [remoteProcess hasEntitlement:@"com.apple.posterboardservices.data-store.accessSwitcherConfiguration"];

  if (v8)
  {
    delegate = [(PRSServer *)self delegate];
    [delegate server:self deleteTransientDataWithCompletion:completionCopy];
LABEL_7:

    goto LABEL_8;
  }

  if (completionCopy)
  {
    delegate = [MEMORY[0x1E696ABC0] prs_entitlementFailureErrorWithFile:"/Library/Caches/com.apple.xbs/Sources/Wallpaper_NonUI/PosterBoardServices/Server/PRSServer.m" line:749];
    completionCopy[2](completionCopy, delegate);
    goto LABEL_7;
  }

LABEL_8:

  v10 = *MEMORY[0x1E69E9840];
}

- (void)deleteSnapshotsWithCompletion:(id)completion
{
  v13 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = PRSLogPosterContents();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v11 = 136315138;
    v12 = "[PRSServer deleteSnapshotsWithCompletion:]";
    _os_log_impl(&dword_1C26FF000, v5, OS_LOG_TYPE_INFO, "%s", &v11, 0xCu);
  }

  currentContext = [MEMORY[0x1E698F490] currentContext];
  remoteProcess = [currentContext remoteProcess];
  v8 = [remoteProcess hasEntitlement:@"com.apple.posterboardservices.data-store.mutateSwitcherConfiguration"];

  if (v8)
  {
    delegate = [(PRSServer *)self delegate];
    [delegate server:self deleteSnapshotsWithCompletion:completionCopy];
LABEL_7:

    goto LABEL_8;
  }

  if (completionCopy)
  {
    delegate = [MEMORY[0x1E696ABC0] prs_entitlementFailureErrorWithFile:"/Library/Caches/com.apple.xbs/Sources/Wallpaper_NonUI/PosterBoardServices/Server/PRSServer.m" line:760];
    completionCopy[2](completionCopy, delegate);
    goto LABEL_7;
  }

LABEL_8:

  v10 = *MEMORY[0x1E69E9840];
}

- (void)notifyPosterBoardOfApplicationUpdatesWithCompletion:(id)completion
{
  v13 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = PRSLogPosterContents();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v11 = 136315138;
    v12 = "[PRSServer notifyPosterBoardOfApplicationUpdatesWithCompletion:]";
    _os_log_impl(&dword_1C26FF000, v5, OS_LOG_TYPE_INFO, "%s", &v11, 0xCu);
  }

  currentContext = [MEMORY[0x1E698F490] currentContext];
  remoteProcess = [currentContext remoteProcess];
  v8 = [remoteProcess hasEntitlement:@"com.apple.posterboardservices.data-store.mutateSwitcherConfiguration"];

  if (v8)
  {
    delegate = [(PRSServer *)self delegate];
    [delegate server:self notifyPosterBoardOfApplicationUpdatesWithCompletion:completionCopy];
LABEL_7:

    goto LABEL_8;
  }

  if (completionCopy)
  {
    delegate = [MEMORY[0x1E696ABC0] prs_entitlementFailureErrorWithFile:"/Library/Caches/com.apple.xbs/Sources/Wallpaper_NonUI/PosterBoardServices/Server/PRSServer.m" line:771];
    completionCopy[2](completionCopy, delegate);
    goto LABEL_7;
  }

LABEL_8:

  v10 = *MEMORY[0x1E69E9840];
}

- (void)fetchRuntimeAssertionState:(id)state
{
  v13 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  v5 = PRSLogPosterContents();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v11 = 136315138;
    v12 = "[PRSServer fetchRuntimeAssertionState:]";
    _os_log_impl(&dword_1C26FF000, v5, OS_LOG_TYPE_INFO, "%s", &v11, 0xCu);
  }

  currentContext = [MEMORY[0x1E698F490] currentContext];
  remoteProcess = [currentContext remoteProcess];
  v8 = [remoteProcess hasEntitlement:@"com.apple.posterboardservices.data-store.mutateSwitcherConfiguration"];

  if (v8)
  {
    delegate = [(PRSServer *)self delegate];
    [delegate server:self fetchRuntimeAssertionState:stateCopy];
LABEL_7:

    goto LABEL_8;
  }

  if (stateCopy)
  {
    delegate = [MEMORY[0x1E696ABC0] prs_entitlementFailureErrorWithFile:"/Library/Caches/com.apple.xbs/Sources/Wallpaper_NonUI/PosterBoardServices/Server/PRSServer.m" line:782];
    stateCopy[2](stateCopy, 0, delegate);
    goto LABEL_7;
  }

LABEL_8:

  v10 = *MEMORY[0x1E69E9840];
}

- (void)fetchChargerIdentifierRelationshipsWithCompletion:(id)completion
{
  v13 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = PRSLogPosterContents();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v11 = 136315138;
    v12 = "[PRSServer fetchChargerIdentifierRelationshipsWithCompletion:]";
    _os_log_impl(&dword_1C26FF000, v5, OS_LOG_TYPE_INFO, "%s", &v11, 0xCu);
  }

  currentContext = [MEMORY[0x1E698F490] currentContext];
  remoteProcess = [currentContext remoteProcess];
  if ([remoteProcess hasEntitlement:@"com.apple.posterboardservices.data-store.accessSwitcherConfiguration"])
  {
    v8 = MEMORY[0x1C691CE60]("[PRSServer fetchChargerIdentifierRelationshipsWithCompletion:]");

    if (v8)
    {
      delegate = [(PRSServer *)self delegate];
      [delegate server:self fetchChargerIdentifierRelationshipsWithCompletion:completionCopy];
LABEL_9:

      goto LABEL_10;
    }
  }

  else
  {
  }

  if (completionCopy)
  {
    delegate = [MEMORY[0x1E696ABC0] prs_entitlementFailureErrorWithFile:"/Library/Caches/com.apple.xbs/Sources/Wallpaper_NonUI/PosterBoardServices/Server/PRSServer.m" line:793];
    completionCopy[2](completionCopy, 0, delegate);
    goto LABEL_9;
  }

LABEL_10:

  v10 = *MEMORY[0x1E69E9840];
}

- (void)fetchAssociatedHomeScreenPosterConfigurationUUID:(id)d completion:(id)completion
{
  v16 = *MEMORY[0x1E69E9840];
  dCopy = d;
  completionCopy = completion;
  v8 = PRSLogPosterContents();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v14 = 136315138;
    v15 = "[PRSServer fetchAssociatedHomeScreenPosterConfigurationUUID:completion:]";
    _os_log_impl(&dword_1C26FF000, v8, OS_LOG_TYPE_INFO, "%s", &v14, 0xCu);
  }

  currentContext = [MEMORY[0x1E698F490] currentContext];
  remoteProcess = [currentContext remoteProcess];
  v11 = [remoteProcess hasEntitlement:@"com.apple.posterboardservices.data-store.accessSwitcherConfiguration"];

  if (v11)
  {
    delegate = [(PRSServer *)self delegate];
    [delegate server:self fetchAssociatedHomeScreenPosterConfigurationUUID:dCopy completion:completionCopy];
LABEL_7:

    goto LABEL_8;
  }

  if (completionCopy)
  {
    delegate = [MEMORY[0x1E696ABC0] prs_entitlementFailureErrorWithFile:"/Library/Caches/com.apple.xbs/Sources/Wallpaper_NonUI/PosterBoardServices/Server/PRSServer.m" line:805];
    completionCopy[2](completionCopy, 0, delegate);
    goto LABEL_7;
  }

LABEL_8:

  v13 = *MEMORY[0x1E69E9840];
}

- (void)updatePosterConfigurationMatchingUUID:(id)d updates:(id)updates completion:(id)completion
{
  v33 = *MEMORY[0x1E69E9840];
  dCopy = d;
  updatesCopy = updates;
  completionCopy = completion;
  v12 = PRSLogPosterContents();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v32 = "[PRSServer updatePosterConfigurationMatchingUUID:updates:completion:]";
    _os_log_impl(&dword_1C26FF000, v12, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
  }

  currentContext = [MEMORY[0x1E698F490] currentContext];
  remoteProcess = [currentContext remoteProcess];
  v15 = [remoteProcess hasEntitlement:@"com.apple.posterboardservices.data-store.mutateSwitcherConfiguration"];

  if (v15)
  {
    currentContext2 = [MEMORY[0x1E698F490] currentContext];
    remoteProcess2 = [currentContext2 remoteProcess];
    v18 = [remoteProcess2 hasEntitlement:@"com.apple.posterboardservices.data-store.refreshConfigurations"];

    if (v18)
    {
      currentContext3 = [MEMORY[0x1E698F490] currentContext];
      remoteProcess3 = [currentContext3 remoteProcess];
      auditToken = [remoteProcess3 auditToken];

      delegate = [(PRSServer *)self delegate];
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __70__PRSServer_updatePosterConfigurationMatchingUUID_updates_completion___block_invoke;
      v27[3] = &unk_1E818D108;
      v28 = auditToken;
      v29 = completionCopy;
      v30 = a2;
      v23 = auditToken;
      [delegate server:self updatePosterConfigurationMatchingUUID:dCopy updates:updatesCopy completion:v27];

LABEL_11:
      goto LABEL_12;
    }

    if (completionCopy)
    {
      v24 = MEMORY[0x1E696ABC0];
      v25 = 822;
      goto LABEL_10;
    }
  }

  else if (completionCopy)
  {
    v24 = MEMORY[0x1E696ABC0];
    v25 = 816;
LABEL_10:
    v23 = [v24 prs_entitlementFailureErrorWithFile:"/Library/Caches/com.apple.xbs/Sources/Wallpaper_NonUI/PosterBoardServices/Server/PRSServer.m" line:v25];
    (*(completionCopy + 2))(completionCopy, 0, 0, v23);
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

- (void)updatePosterConfiguration:(id)configuration updates:(id)updates completion:(id)completion
{
  v33 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  updatesCopy = updates;
  completionCopy = completion;
  v12 = PRSLogPosterContents();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v32 = "[PRSServer updatePosterConfiguration:updates:completion:]";
    _os_log_impl(&dword_1C26FF000, v12, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
  }

  currentContext = [MEMORY[0x1E698F490] currentContext];
  remoteProcess = [currentContext remoteProcess];
  v15 = [remoteProcess hasEntitlement:@"com.apple.posterboardservices.data-store.mutateSwitcherConfiguration"];

  if (v15)
  {
    currentContext2 = [MEMORY[0x1E698F490] currentContext];
    remoteProcess2 = [currentContext2 remoteProcess];
    v18 = [remoteProcess2 hasEntitlement:@"com.apple.posterboardservices.data-store.refreshConfigurations"];

    if (v18)
    {
      currentContext3 = [MEMORY[0x1E698F490] currentContext];
      remoteProcess3 = [currentContext3 remoteProcess];
      auditToken = [remoteProcess3 auditToken];

      delegate = [(PRSServer *)self delegate];
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __58__PRSServer_updatePosterConfiguration_updates_completion___block_invoke;
      v27[3] = &unk_1E818D108;
      v28 = auditToken;
      v29 = completionCopy;
      v30 = a2;
      v23 = auditToken;
      [delegate server:self updatePosterConfiguration:configurationCopy updates:updatesCopy completion:v27];

LABEL_11:
      goto LABEL_12;
    }

    if (completionCopy)
    {
      v24 = MEMORY[0x1E696ABC0];
      v25 = 853;
      goto LABEL_10;
    }
  }

  else if (completionCopy)
  {
    v24 = MEMORY[0x1E696ABC0];
    v25 = 847;
LABEL_10:
    v23 = [v24 prs_entitlementFailureErrorWithFile:"/Library/Caches/com.apple.xbs/Sources/Wallpaper_NonUI/PosterBoardServices/Server/PRSServer.m" line:v25];
    (*(completionCopy + 2))(completionCopy, 0, 0, v23);
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

- (void)refreshSuggestionDescriptorsForConfigurationMatchingUUID:(id)d sessionInfo:(id)info completion:(id)completion
{
  dCopy = d;
  infoCopy = info;
  completionCopy = completion;
  currentContext = [MEMORY[0x1E698F490] currentContext];
  remoteProcess = [currentContext remoteProcess];
  v14 = [remoteProcess hasEntitlement:@"com.apple.posterboardservices.data-store.mutateSwitcherConfiguration"];

  if ((v14 & 1) == 0)
  {
    if (!completionCopy)
    {
      goto LABEL_9;
    }

    v19 = MEMORY[0x1E696ABC0];
    v20 = 877;
LABEL_8:
    v21 = [v19 prs_entitlementFailureErrorWithFile:"/Library/Caches/com.apple.xbs/Sources/Wallpaper_NonUI/PosterBoardServices/Server/PRSServer.m" line:v20];
    completionCopy[2](completionCopy, 0, v21);

    goto LABEL_9;
  }

  currentContext2 = [MEMORY[0x1E698F490] currentContext];
  remoteProcess2 = [currentContext2 remoteProcess];
  v17 = [remoteProcess2 hasEntitlement:@"com.apple.posterboardservices.data-store.refreshConfigurations"];

  if ((v17 & 1) == 0)
  {
    if (!completionCopy)
    {
      goto LABEL_9;
    }

    v19 = MEMORY[0x1E696ABC0];
    v20 = 883;
    goto LABEL_8;
  }

  delegate = [(PRSServer *)self delegate];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __93__PRSServer_refreshSuggestionDescriptorsForConfigurationMatchingUUID_sessionInfo_completion___block_invoke;
  v22[3] = &unk_1E818D130;
  v24 = a2;
  v23 = completionCopy;
  [delegate server:self refreshSuggestionDescriptorsForConfigurationMatchingUUID:dCopy sessionInfo:infoCopy completion:v22];

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

- (void)fetchSuggestionDescriptorsForConfigurationMatchingUUID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  currentContext = [MEMORY[0x1E698F490] currentContext];
  remoteProcess = [currentContext remoteProcess];
  v11 = [remoteProcess hasEntitlement:@"com.apple.posterboardservices.data-store.mutateSwitcherConfiguration"];

  if ((v11 & 1) == 0)
  {
    if (!completionCopy)
    {
      goto LABEL_9;
    }

    v20 = MEMORY[0x1E696ABC0];
    v21 = 907;
LABEL_8:
    v22 = [v20 prs_entitlementFailureErrorWithFile:"/Library/Caches/com.apple.xbs/Sources/Wallpaper_NonUI/PosterBoardServices/Server/PRSServer.m" line:v21];
    completionCopy[2](completionCopy, 0, v22);

    goto LABEL_9;
  }

  currentContext2 = [MEMORY[0x1E698F490] currentContext];
  remoteProcess2 = [currentContext2 remoteProcess];
  v14 = [remoteProcess2 hasEntitlement:@"com.apple.posterboardservices.data-store.refreshConfigurations"];

  if ((v14 & 1) == 0)
  {
    if (!completionCopy)
    {
      goto LABEL_9;
    }

    v20 = MEMORY[0x1E696ABC0];
    v21 = 913;
    goto LABEL_8;
  }

  currentContext3 = [MEMORY[0x1E698F490] currentContext];
  remoteProcess3 = [currentContext3 remoteProcess];
  auditToken = [remoteProcess3 auditToken];

  delegate = [(PRSServer *)self delegate];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __79__PRSServer_fetchSuggestionDescriptorsForConfigurationMatchingUUID_completion___block_invoke;
  v23[3] = &unk_1E818D158;
  v24 = auditToken;
  v25 = completionCopy;
  v26 = a2;
  v19 = auditToken;
  [delegate server:self fetchSuggestionDescriptorsForConfigurationMatchingUUID:dCopy completion:v23];

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

- (void)commitSuggestionsForConfigurationMatchingUUID:(id)d selectSuggestionDescriptorUUID:(id)iD completion:(id)completion
{
  dCopy = d;
  iDCopy = iD;
  completionCopy = completion;
  currentContext = [MEMORY[0x1E698F490] currentContext];
  remoteProcess = [currentContext remoteProcess];
  v13 = [remoteProcess hasEntitlement:@"com.apple.posterboardservices.data-store.mutateSwitcherConfiguration"];

  if ((v13 & 1) == 0)
  {
    if (!completionCopy)
    {
      goto LABEL_9;
    }

    v18 = MEMORY[0x1E696ABC0];
    v19 = 940;
LABEL_8:
    v20 = [v18 prs_entitlementFailureErrorWithFile:"/Library/Caches/com.apple.xbs/Sources/Wallpaper_NonUI/PosterBoardServices/Server/PRSServer.m" line:v19];
    completionCopy[2](completionCopy, v20);

    goto LABEL_9;
  }

  currentContext2 = [MEMORY[0x1E698F490] currentContext];
  remoteProcess2 = [currentContext2 remoteProcess];
  v16 = [remoteProcess2 hasEntitlement:@"com.apple.posterboardservices.data-store.refreshConfigurations"];

  if ((v16 & 1) == 0)
  {
    if (!completionCopy)
    {
      goto LABEL_9;
    }

    v18 = MEMORY[0x1E696ABC0];
    v19 = 946;
    goto LABEL_8;
  }

  delegate = [(PRSServer *)self delegate];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __101__PRSServer_commitSuggestionsForConfigurationMatchingUUID_selectSuggestionDescriptorUUID_completion___block_invoke;
  v21[3] = &unk_1E818D020;
  v22 = completionCopy;
  [delegate server:self commitSuggestionsForConfigurationMatchingUUID:dCopy selectSuggestionDescriptorUUID:iDCopy completion:v21];

LABEL_9:
}

- (void)runMigration:(id)migration migrationDescriptor:(id)descriptor completion:(id)completion
{
  v26 = *MEMORY[0x1E69E9840];
  migrationCopy = migration;
  descriptorCopy = descriptor;
  completionCopy = completion;
  v11 = PRSLogPosterContents();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v25 = "[PRSServer runMigration:migrationDescriptor:completion:]";
    _os_log_impl(&dword_1C26FF000, v11, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
  }

  currentContext = [MEMORY[0x1E698F490] currentContext];
  remoteProcess = [currentContext remoteProcess];

  bundleIdentifier = [remoteProcess bundleIdentifier];
  if ([remoteProcess hasEntitlement:@"com.apple.posterboardservices.data-store.migration"] & 1) != 0 || (-[__CFString isEqualToString:](bundleIdentifier, "isEqualToString:", @"com.apple.migrationpluginwrapper"))
  {
    delegate = [(PRSServer *)self delegate];
    [delegate server:self runMigration:objc_msgSend(migrationCopy migrationDescriptor:"BOOLValue") completion:{descriptorCopy, completionCopy}];
  }

  else
  {
    if (!completionCopy)
    {
      goto LABEL_7;
    }

    v17 = MEMORY[0x1E696ABC0];
    v18 = *MEMORY[0x1E696A250];
    v21 = *MEMORY[0x1E696A588];
    v22 = @"bundleIdentifier";
    v19 = @"(null)";
    if (bundleIdentifier)
    {
      v19 = bundleIdentifier;
    }

    v23[0] = @"Process not allowed to run migration.";
    v23[1] = v19;
    delegate = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v21 count:2];
    v20 = [v17 errorWithDomain:v18 code:-1 userInfo:{delegate, v21, v22}];
    completionCopy[2](completionCopy, v20);
  }

LABEL_7:
  v16 = *MEMORY[0x1E69E9840];
}

- (void)clearMigrationFlags:(id)flags
{
  v16 = *MEMORY[0x1E69E9840];
  flagsCopy = flags;
  v5 = PRSLogPosterContents();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v15 = "[PRSServer clearMigrationFlags:]";
    _os_log_impl(&dword_1C26FF000, v5, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
  }

  currentContext = [MEMORY[0x1E698F490] currentContext];
  remoteProcess = [currentContext remoteProcess];
  v8 = [remoteProcess hasEntitlement:@"com.apple.posterboardservices.data-store.migration"];

  if (v8)
  {
    delegate = [(PRSServer *)self delegate];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __33__PRSServer_clearMigrationFlags___block_invoke;
    v12[3] = &unk_1E818D180;
    v13 = flagsCopy;
    [delegate server:self clearMigrationFlags:v12];

    v10 = v13;
LABEL_7:

    goto LABEL_8;
  }

  if (flagsCopy)
  {
    v10 = [MEMORY[0x1E696ABC0] prs_entitlementFailureErrorWithFile:"/Library/Caches/com.apple.xbs/Sources/Wallpaper_NonUI/PosterBoardServices/Server/PRSServer.m" line:974];
    (*(flagsCopy + 2))(flagsCopy, MEMORY[0x1E695E110], v10);
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

- (void)ignoreExtension:(id)extension completion:(id)completion
{
  v16 = *MEMORY[0x1E69E9840];
  extensionCopy = extension;
  completionCopy = completion;
  v8 = PRSLogPosterContents();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v14 = 136315138;
    v15 = "[PRSServer ignoreExtension:completion:]";
    _os_log_impl(&dword_1C26FF000, v8, OS_LOG_TYPE_INFO, "%s", &v14, 0xCu);
  }

  currentContext = [MEMORY[0x1E698F490] currentContext];
  remoteProcess = [currentContext remoteProcess];
  v11 = [remoteProcess hasEntitlement:@"com.apple.posterboardservices.data-store.mutateSwitcherConfiguration"];

  if (v11)
  {
    delegate = [(PRSServer *)self delegate];
    [delegate server:self ignoreExtension:extensionCopy completion:completionCopy];
LABEL_7:

    goto LABEL_8;
  }

  if (completionCopy)
  {
    delegate = [MEMORY[0x1E696ABC0] prs_entitlementFailureErrorWithFile:"/Library/Caches/com.apple.xbs/Sources/Wallpaper_NonUI/PosterBoardServices/Server/PRSServer.m" line:988];
    completionCopy[2](completionCopy, delegate);
    goto LABEL_7;
  }

LABEL_8:

  v13 = *MEMORY[0x1E69E9840];
}

- (void)unignoreExtension:(id)extension completion:(id)completion
{
  v16 = *MEMORY[0x1E69E9840];
  extensionCopy = extension;
  completionCopy = completion;
  v8 = PRSLogPosterContents();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v14 = 136315138;
    v15 = "[PRSServer unignoreExtension:completion:]";
    _os_log_impl(&dword_1C26FF000, v8, OS_LOG_TYPE_INFO, "%s", &v14, 0xCu);
  }

  currentContext = [MEMORY[0x1E698F490] currentContext];
  remoteProcess = [currentContext remoteProcess];
  v11 = [remoteProcess hasEntitlement:@"com.apple.posterboardservices.data-store.mutateSwitcherConfiguration"];

  if (v11)
  {
    delegate = [(PRSServer *)self delegate];
    [delegate server:self unignoreExtension:extensionCopy completion:completionCopy];
LABEL_7:

    goto LABEL_8;
  }

  if (completionCopy)
  {
    delegate = [MEMORY[0x1E696ABC0] prs_entitlementFailureErrorWithFile:"/Library/Caches/com.apple.xbs/Sources/Wallpaper_NonUI/PosterBoardServices/Server/PRSServer.m" line:1000];
    completionCopy[2](completionCopy, delegate);
    goto LABEL_7;
  }

LABEL_8:

  v13 = *MEMORY[0x1E69E9840];
}

- (void)fetchArchivedDataStoreNamesWithCompletion:(id)completion
{
  v13 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = PRSLogPosterContents();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v11 = 136315138;
    v12 = "[PRSServer fetchArchivedDataStoreNamesWithCompletion:]";
    _os_log_impl(&dword_1C26FF000, v5, OS_LOG_TYPE_INFO, "%s", &v11, 0xCu);
  }

  currentContext = [MEMORY[0x1E698F490] currentContext];
  remoteProcess = [currentContext remoteProcess];
  v8 = [remoteProcess hasEntitlement:@"com.apple.posterboardservices.data-store.archiveDataStore"];

  if (v8)
  {
    delegate = [(PRSServer *)self delegate];
    [delegate server:self fetchArchivedDataStoreNamesWithCompletion:completionCopy];
LABEL_7:

    goto LABEL_8;
  }

  if (completionCopy)
  {
    delegate = [MEMORY[0x1E696ABC0] prs_entitlementFailureErrorWithFile:"/Library/Caches/com.apple.xbs/Sources/Wallpaper_NonUI/PosterBoardServices/Server/PRSServer.m" line:1012];
    completionCopy[2](completionCopy, 0, delegate);
    goto LABEL_7;
  }

LABEL_8:

  v10 = *MEMORY[0x1E69E9840];
}

- (void)restoreArchivedDataStoreNamed:(id)named backupExistingDataStore:(id)store completion:(id)completion
{
  v20 = *MEMORY[0x1E69E9840];
  namedCopy = named;
  storeCopy = store;
  completionCopy = completion;
  v11 = PRSLogPosterContents();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v18 = 136315138;
    v19 = "[PRSServer restoreArchivedDataStoreNamed:backupExistingDataStore:completion:]";
    _os_log_impl(&dword_1C26FF000, v11, OS_LOG_TYPE_INFO, "%s", &v18, 0xCu);
  }

  currentContext = [MEMORY[0x1E698F490] currentContext];
  remoteProcess = [currentContext remoteProcess];
  v14 = [remoteProcess hasEntitlement:@"com.apple.posterboardservices.data-store.archiveDataStore"];

  if (v14)
  {
    delegate = [(PRSServer *)self delegate];
    if (storeCopy)
    {
      v16 = storeCopy;
    }

    else
    {
      v16 = MEMORY[0x1E695E118];
    }

    [delegate server:self restoreArchivedDataStoreNamed:namedCopy backupExistingDataStore:objc_msgSend(v16 completion:{"BOOLValue"), completionCopy}];
    goto LABEL_10;
  }

  if (completionCopy)
  {
    delegate = [MEMORY[0x1E696ABC0] prs_entitlementFailureErrorWithFile:"/Library/Caches/com.apple.xbs/Sources/Wallpaper_NonUI/PosterBoardServices/Server/PRSServer.m" line:1025];
    completionCopy[2](completionCopy, delegate);
LABEL_10:
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)stashCurrentDataStoreWithName:(id)name options:(id)options completion:(id)completion
{
  v19 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  optionsCopy = options;
  completionCopy = completion;
  v11 = PRSLogPosterContents();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v17 = 136315138;
    v18 = "[PRSServer stashCurrentDataStoreWithName:options:completion:]";
    _os_log_impl(&dword_1C26FF000, v11, OS_LOG_TYPE_INFO, "%s", &v17, 0xCu);
  }

  currentContext = [MEMORY[0x1E698F490] currentContext];
  remoteProcess = [currentContext remoteProcess];
  v14 = [remoteProcess hasEntitlement:@"com.apple.posterboardservices.data-store.archiveDataStore"];

  if (v14)
  {
    delegate = [(PRSServer *)self delegate];
    [delegate server:self stashCurrentDataStoreWithName:nameCopy options:optionsCopy completion:completionCopy];
LABEL_7:

    goto LABEL_8;
  }

  if (completionCopy)
  {
    delegate = [MEMORY[0x1E696ABC0] prs_entitlementFailureErrorWithFile:"/Library/Caches/com.apple.xbs/Sources/Wallpaper_NonUI/PosterBoardServices/Server/PRSServer.m" line:1038];
    completionCopy[2](completionCopy, delegate);
    goto LABEL_7;
  }

LABEL_8:

  v16 = *MEMORY[0x1E69E9840];
}

- (void)deleteArchivedDataStoreNamed:(id)named completion:(id)completion
{
  v16 = *MEMORY[0x1E69E9840];
  namedCopy = named;
  completionCopy = completion;
  v8 = PRSLogPosterContents();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v14 = 136315138;
    v15 = "[PRSServer deleteArchivedDataStoreNamed:completion:]";
    _os_log_impl(&dword_1C26FF000, v8, OS_LOG_TYPE_INFO, "%s", &v14, 0xCu);
  }

  currentContext = [MEMORY[0x1E698F490] currentContext];
  remoteProcess = [currentContext remoteProcess];
  v11 = [remoteProcess hasEntitlement:@"com.apple.posterboardservices.data-store.archiveDataStore"];

  if (v11)
  {
    delegate = [(PRSServer *)self delegate];
    [delegate server:self deleteArchivedDataStoreNamed:namedCopy completion:completionCopy];
LABEL_7:

    goto LABEL_8;
  }

  if (completionCopy)
  {
    delegate = [MEMORY[0x1E696ABC0] prs_entitlementFailureErrorWithFile:"/Library/Caches/com.apple.xbs/Sources/Wallpaper_NonUI/PosterBoardServices/Server/PRSServer.m" line:1051];
    completionCopy[2](completionCopy, delegate);
    goto LABEL_7;
  }

LABEL_8:

  v13 = *MEMORY[0x1E69E9840];
}

- (void)exportArchivedDataStoreNamed:(id)named completion:(id)completion
{
  namedCopy = named;
  completionCopy = completion;
  currentContext = [MEMORY[0x1E698F490] currentContext];
  remoteProcess = [currentContext remoteProcess];
  v9 = [remoteProcess hasEntitlement:@"com.apple.posterboardservices.data-store.archiveDataStore"];

  if (v9)
  {
    delegate = [(PRSServer *)self delegate];
    [delegate server:self exportArchivedDataStoreNamed:namedCopy completion:completionCopy];
  }

  else
  {
    if (!completionCopy)
    {
      goto LABEL_6;
    }

    delegate = [MEMORY[0x1E696ABC0] prs_entitlementFailureErrorWithFile:"/Library/Caches/com.apple.xbs/Sources/Wallpaper_NonUI/PosterBoardServices/Server/PRSServer.m" line:1063];
    completionCopy[2](completionCopy, 0, delegate);
  }

LABEL_6:
}

- (void)exportCurrentDataStoreToURL:(id)l options:(id)options sandboxToken:(id)token error:(id *)error
{
  lCopy = l;
  optionsCopy = options;
  tokenCopy = token;
  currentContext = [MEMORY[0x1E698F490] currentContext];
  remoteProcess = [currentContext remoteProcess];
  v14 = [remoteProcess hasEntitlement:@"com.apple.posterboardservices.data-store.archiveDataStore"];

  if (v14)
  {
    delegate = [(PRSServer *)self delegate];
    [delegate server:self exportCurrentDataStoreToURL:lCopy options:optionsCopy sandboxToken:tokenCopy error:error];
  }

  else
  {
    *error = [MEMORY[0x1E696ABC0] prs_entitlementFailureErrorWithFile:"/Library/Caches/com.apple.xbs/Sources/Wallpaper_NonUI/PosterBoardServices/Server/PRSServer.m" line:1073];
  }
}

- (PRSServerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end