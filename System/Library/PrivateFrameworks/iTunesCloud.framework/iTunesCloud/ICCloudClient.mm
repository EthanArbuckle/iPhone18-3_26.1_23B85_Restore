@interface ICCloudClient
- (BOOL)_isAuthenticated;
- (BOOL)canShowCloudDownloadButtons;
- (BOOL)canShowCloudMusic;
- (BOOL)canShowCloudVideo;
- (BOOL)createMusicNotificationFromAMSDialogRequest:(id)request error:(id *)error;
- (BOOL)hasProperNetworkConditionsToPlayMedia;
- (BOOL)hasProperNetworkConditionsToShowCloudMedia;
- (BOOL)hasSetPreferenceForAutomaticDownloads;
- (BOOL)initialLibrarySyncsComplete;
- (BOOL)isActive;
- (BOOL)isAutomaticDownloadsEnabledForMediaKindMusic;
- (BOOL)isCellularDataRestricted;
- (BOOL)isCellularDataRestrictedForMusic;
- (BOOL)isCellularDataRestrictedForStoreApps;
- (BOOL)isCellularDataRestrictedForVideos;
- (BOOL)isMediaKindDisabledForJaliscoLibrary:(int64_t)library;
- (BOOL)musicPurchasesDisabledForJaliscoLibrary;
- (BOOL)shouldProhibitActionsForCurrentNetworkConditions;
- (BOOL)shouldProhibitMusicActionForCurrentNetworkConditions;
- (BOOL)shouldProhibitStoreAppsActionForCurrentNetworkConditions;
- (BOOL)shouldProhibitVideosActionForCurrentNetworkConditions;
- (ICCloudClient)initWithConfiguration:(id)configuration;
- (ICCloudClient)initWithUserIdentity:(id)identity;
- (ICConnectionConfiguration)configuration;
- (NSXPCConnection)xpcConnection;
- (void)_enableCloudLibraryWithPolicy:(int64_t)policy startinitialImport:(BOOL)import isExplicitUserAction:(BOOL)action completionHandler:(id)handler;
- (void)_serverJaliscoUpdateInProgressDidChange;
- (void)_serverSagaUpdateInProgressDidChange;
- (void)_serverSetupDidComplete;
- (void)_setupNotifications;
- (void)_tearDownNotifications;
- (void)addGeniusPlaylistWithPersistentID:(int64_t)d name:(id)name seedItemSagaIDs:(id)ds itemSagaIDs:(id)iDs completionHandler:(id)handler;
- (void)addItemWithSagaID:(int64_t)d toPlaylistWithPersistentID:(int64_t)iD completionHandler:(id)handler;
- (void)addStoreItemWithAdamID:(int64_t)d referral:(id)referral completionHandler:(id)handler;
- (void)addStoreItemWithAdamID:(int64_t)d referral:(id)referral toPlaylistWithPersistentID:(int64_t)iD completionHandler:(id)handler;
- (void)addStoreItemsWithAdamIDs:(id)ds referral:(id)referral completionHandler:(id)handler;
- (void)addStorePlaylistWithGlobalID:(id)d completionHandler:(id)handler;
- (void)becomeActive;
- (void)beginCollaborationUsingPlaylistWithPersistentID:(int64_t)d sharingMode:(unint64_t)mode completion:(id)completion;
- (void)createPlaylistWithPersistentID:(int64_t)d properties:(id)properties trackList:(id)list completionHandler:(id)handler;
- (void)dealloc;
- (void)deauthenticateWithCompletionHandler:(id)handler;
- (void)deprioritizeAlbumArtistHeroImageForPersistentID:(int64_t)d;
- (void)deprioritizeArtistHeroImageForPersistentID:(int64_t)d;
- (void)deprioritizeContainerArtworkForSagaID:(unint64_t)d;
- (void)deprioritizeItemArtworkForPurchaseHistoryID:(unint64_t)d;
- (void)deprioritizeItemArtworkForSagaID:(unint64_t)d;
- (void)deprioritizeScreenshotForPurchaseHistoryID:(unint64_t)d;
- (void)deprioritizeScreenshotForSagaID:(unint64_t)d;
- (void)deprioritizeSubscriptionContainerArtworkForPersistentID:(int64_t)d;
- (void)deprioritizeSubscriptionItemArtworkForPersistentID:(int64_t)d;
- (void)deprioritizeSubscriptionScreenshotForPersistentID:(int64_t)d;
- (void)disableCloudLibraryWithReason:(int64_t)reason completionHandler:(id)handler;
- (void)editCollaborationWithPersistentID:(int64_t)d properties:(id)properties trackEdits:(id)edits completion:(id)completion;
- (void)endCollaborationWithPersistentID:(int64_t)d completion:(id)completion;
- (void)favoriteAlbumWithPersistentID:(int64_t)d cloudLibraryID:(id)iD time:(id)time completionHandler:(id)handler;
- (void)favoriteArtistWithPersistentID:(int64_t)d cloudLibraryID:(id)iD time:(id)time completionHandler:(id)handler;
- (void)favoriteEntityWithPersistentID:(int64_t)d sagaID:(int64_t)iD entityType:(int64_t)type time:(id)time completionHandler:(id)handler;
- (void)favoriteEntityWithPersistentID:(int64_t)d storeID:(int64_t)iD entityType:(int64_t)type time:(id)time completionHandler:(id)handler;
- (void)favoritePlaylistWithPersistentID:(int64_t)d globalID:(id)iD time:(id)time completionHandler:(id)handler;
- (void)fetchEnhancedAudioOfflineKeys;
- (void)handleAutomaticDownloadPreferenceChangedForMediaKindMusic:(BOOL)music withCompletionHandler:(id)handler;
- (void)handleAutomaticDownloadPreferenceChangedForPinnedLibraryEntities:(BOOL)entities;
- (void)hideItemsWithPurchaseHistoryIDs:(id)ds completionHandler:(id)handler;
- (void)importAlbumArtistHeroImageForPersistentID:(int64_t)d completionHandler:(id)handler;
- (void)importArtistHeroImageForPersistentID:(int64_t)d completionHandler:(id)handler;
- (void)importContainerArtworkForSagaID:(unint64_t)d artworkVariantType:(int64_t)type completionHandler:(id)handler;
- (void)importContainerArtworkForSagaID:(unint64_t)d completionHandler:(id)handler;
- (void)importItemArtworkForPurchaseHistoryID:(unint64_t)d completionHandler:(id)handler;
- (void)importItemArtworkForSagaID:(unint64_t)d completionHandler:(id)handler;
- (void)importScreenshotForPurchaseHistoryID:(unint64_t)d completionHandler:(id)handler;
- (void)importScreenshotForSagaID:(unint64_t)d completionHandler:(id)handler;
- (void)importSubscriptionContainerArtworkForPersistentID:(int64_t)d completionHandler:(id)handler;
- (void)importSubscriptionItemArtworkForPersistentID:(int64_t)d completionHandler:(id)handler;
- (void)importSubscriptionScreenshotForPersistentID:(int64_t)d completionHandler:(id)handler;
- (void)isAuthenticatedWithQueue:(id)queue completionHandler:(id)handler;
- (void)joinCollaborationWithGlobalPlaylistID:(id)d invitationURL:(id)l completion:(id)completion;
- (void)listCloudServerOperations;
- (void)loadArtworkInfoForContainerSagaID:(unint64_t)d completionHandler:(id)handler;
- (void)loadArtworkInfoForContainerSagaIDs:(id)ds completionHandler:(id)handler;
- (void)loadArtworkInfoForPurchaseHistoryID:(unint64_t)d completionHandler:(id)handler;
- (void)loadArtworkInfoForPurchaseHistoryIDs:(id)ds completionHandler:(id)handler;
- (void)loadArtworkInfoForSagaID:(unint64_t)d completionHandler:(id)handler;
- (void)loadArtworkInfoForSagaIDs:(id)ds completionHandler:(id)handler;
- (void)loadArtworkInfoForSubscriptionContainerPersistentID:(unint64_t)d completionHandler:(id)handler;
- (void)loadArtworkInfoForSubscriptionContainerPersistentIDs:(id)ds completionHandler:(id)handler;
- (void)loadArtworkInfoForSubscriptionItemPersistentID:(unint64_t)d completionHandler:(id)handler;
- (void)loadArtworkInfoForSubscriptionItemPersistentIDs:(id)ds completionHandler:(id)handler;
- (void)loadBooksForStoreIDs:(id)ds withCompletionHandler:(id)handler;
- (void)loadGeniusItemsForSagaID:(unint64_t)d completionHandler:(id)handler;
- (void)loadIsJaliscoUpdateInProgressWithCompletionHandler:(id)handler;
- (void)loadIsSagaUpdateInProgressWithCompletionHandler:(id)handler;
- (void)loadIsUpdateInProgressWithCompletionHandler:(id)handler;
- (void)loadJaliscoUpdateProgressWithCompletionHandler:(id)handler;
- (void)loadLastKnownEnableICMLErrorStatusWithCompletionHander:(id)hander;
- (void)loadMissingArtwork;
- (void)loadSagaUpdateProgressWithCompletionHandler:(id)handler;
- (void)loadScreenshotInfoForPurchaseHistoryID:(unint64_t)d completionHandler:(id)handler;
- (void)loadScreenshotInfoForPurchaseHistoryIDs:(id)ds completionHandler:(id)handler;
- (void)loadScreenshotInfoForSagaID:(unint64_t)d completionHandler:(id)handler;
- (void)loadScreenshotInfoForSagaIDs:(id)ds completionHandler:(id)handler;
- (void)loadScreenshotInfoForSubscriptionPersistentID:(unint64_t)d completionHandler:(id)handler;
- (void)loadScreenshotInfoForSubscriptionPersistentIDs:(id)ds completionHandler:(id)handler;
- (void)loadUpdateProgressWithCompletionHandler:(id)handler;
- (void)movePinnedAlbumWithPersistentID:(int64_t)d cloudAlbumID:(id)iD toPosition:(int64_t)position completion:(id)completion;
- (void)movePinnedArtistWithPersistentID:(int64_t)d cloudArtistID:(id)iD toPosition:(int64_t)position completion:(id)completion;
- (void)movePinnedEntityWithPersistentID:(int64_t)d cloudID:(int64_t)iD type:(int64_t)type toPosition:(int64_t)position completion:(id)completion;
- (void)notifyDeviceSetupFinishedWithCompletion:(id)completion;
- (void)performBlockAfterServerSetup:(id)setup;
- (void)pinLibraryAlbumWithPersistentID:(int64_t)d cloudAlbumID:(id)iD defaultAction:(int64_t)action completion:(id)completion;
- (void)pinLibraryArtistWithPersistentID:(int64_t)d cloudArtistID:(id)iD defaultAction:(int64_t)action completion:(id)completion;
- (void)pinLibraryEntityWithPersistentID:(int64_t)d cloudID:(int64_t)iD type:(int64_t)type defaultAction:(int64_t)action completion:(id)completion;
- (void)processPendingKeyInvalidations;
- (void)publishPlaylistWithSagaID:(int64_t)d completionHandler:(id)handler;
- (void)refreshEnhancedAudioSharedKeys;
- (void)removeCollaborators:(id)collaborators fromCollaborationWithPersistentID:(int64_t)d completion:(id)completion;
- (void)removeItemsWithSagaIDs:(id)ds completionHandler:(id)handler;
- (void)removeJaliscoLibraryWithCompletionHander:(id)hander;
- (void)removePinnedAlbumWithPersistentID:(int64_t)d cloudAlbumID:(id)iD completion:(id)completion;
- (void)removePinnedArtistWithPersistentID:(int64_t)d cloudArtistID:(id)iD completion:(id)completion;
- (void)removePinnedEntityWithPersistentID:(int64_t)d cloudID:(int64_t)iD type:(int64_t)type completion:(id)completion;
- (void)removePlaylistsWithSagaIDs:(id)ds performDeltaSync:(BOOL)sync completionHandler:(id)handler;
- (void)reportAppIconBadgeActionMetrics;
- (void)resetConfiguration:(id)configuration;
- (void)resetInvitationURLForCollaborationWithPersistentID:(int64_t)d completion:(id)completion;
- (void)respondToPendingCollaborator:(id)collaborator onCollaborationWithPersistentID:(int64_t)d withApproval:(BOOL)approval completion:(id)completion;
- (void)sdk_addItemWithSagaID:(int64_t)d toPlaylistWithPersistentID:(int64_t)iD completionHandler:(id)handler;
- (void)sdk_addStoreItemWithOpaqueID:(id)d completionHandler:(id)handler;
- (void)sdk_addStoreItemWithOpaqueID:(id)d toPlaylistWithPersistentID:(int64_t)iD completionHandler:(id)handler;
- (void)sdk_createPlaylistWithPersistentID:(int64_t)d properties:(id)properties tracklist:(id)tracklist completionHandler:(id)handler;
- (void)sdk_setPlaylistProperties:(id)properties trackList:(id)list forPlaylistPersistentID:(int64_t)d completionHandler:(id)handler;
- (void)setActive:(BOOL)active;
- (void)setAlbumArtistProperties:(id)properties forAlbumArtistPersistentID:(int64_t)d completionHandler:(id)handler;
- (void)setAlbumEntityProperties:(id)properties forAlbumPersistentID:(int64_t)d completionHandler:(id)handler;
- (void)setAlbumProperties:(id)properties forAlbumPersistentID:(int64_t)d completionHandler:(id)handler;
- (void)setCloudAddToPlaylistBehavior:(int64_t)behavior completionHandler:(id)handler;
- (void)setCloudFavoriteSongAddToLibraryBehavior:(int64_t)behavior completionHandler:(id)handler;
- (void)setItemProperties:(id)properties forPurchaseHistoryID:(unint64_t)d;
- (void)setItemProperties:(id)properties forSagaID:(unint64_t)d;
- (void)setPlaylistProperties:(id)properties trackList:(id)list forPlaylistPersistentID:(int64_t)d completionHandler:(id)handler;
- (void)setPreferredVideoQuality:(int64_t)quality;
- (void)updateArtistHeroImages;
- (void)updateJaliscoLibraryWithReason:(int64_t)reason completionHandler:(id)handler;
- (void)updatePinnedLibraryAlbumWithPersistentID:(int64_t)d cloudAlbumID:(id)iD defaultAction:(int64_t)action completion:(id)completion;
- (void)updatePinnedLibraryArtistWithPersistentID:(int64_t)d cloudArtistID:(id)iD defaultAction:(int64_t)action completion:(id)completion;
- (void)updatePinnedLibraryEntityWithPersistentID:(int64_t)d cloudID:(int64_t)iD type:(int64_t)type defaultAction:(int64_t)action completion:(id)completion;
- (void)updatePinnedSubscribedPlaylistsWithCompletion:(id)completion;
- (void)updateSagaLibraryWithReason:(int64_t)reason completionHandler:(id)handler;
- (void)updateSubscribedPlaylistsWithSagaIDs:(id)ds ignoreMinRefreshInterval:(BOOL)interval completionHandler:(id)handler;
- (void)uploadArtworkForPlaylistWithPersistentID:(int64_t)d completionHandler:(id)handler;
- (void)uploadCloudItemProperties;
- (void)uploadCloudPlaylistProperties;
@end

@implementation ICCloudClient

- (void)_setupNotifications
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, _ServerDidCompleteSetup, @"com.apple.itunescloud.setupcompleted", 0, 1028);
  v4 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v4, self, _ServerJaliscoUpdateInProgressDidChangeNotification, @"com.apple.itunescloudd.jaliscoUpdateInProgressChanged", 0, 1028);
  v5 = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(v5, self, _ServerSagaUpdateInProgressDidChangeNotification, @"com.apple.itunescloudd.sagaUpdateInProgressChanged", 0, 1028);
}

- (ICConnectionConfiguration)configuration
{
  configuration = self->_configuration;
  if (configuration)
  {
    v3 = configuration;
  }

  else
  {
    v3 = objc_alloc_init(ICConnectionConfiguration);
  }

  return v3;
}

- (BOOL)_isAuthenticated
{
  v27 = *MEMORY[0x1E69E9840];
  configuration = [(ICCloudClient *)self configuration];
  userIdentityStore = [configuration userIdentityStore];

  if (!userIdentityStore)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ICCloudClient.m" lineNumber:2359 description:@"userIndentityStore cannot be nil"];
  }

  userIdentity = [configuration userIdentity];

  if (!userIdentity)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"ICCloudClient.m" lineNumber:2360 description:@"userIndentity cannot be nil"];
  }

  userIdentityStore2 = [configuration userIdentityStore];
  [userIdentityStore2 synchronize];

  configuration2 = [(ICCloudClient *)self configuration];
  userIdentityStore3 = [configuration2 userIdentityStore];
  configuration3 = [(ICCloudClient *)self configuration];
  userIdentity2 = [configuration3 userIdentity];
  v20 = 0;
  v12 = [userIdentityStore3 getPropertiesForUserIdentity:userIdentity2 error:&v20];
  v13 = v20;

  if (v13 || !v12)
  {
    v15 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      userIdentity3 = [configuration userIdentity];
      *buf = 138543874;
      selfCopy2 = self;
      v23 = 2112;
      v24 = userIdentity3;
      v25 = 2114;
      v26 = v13;
      _os_log_impl(&dword_1B4491000, v15, OS_LOG_TYPE_ERROR, "%{public}@ - isAuthenticatedWithQueue: - Error retrieving properties - userIdentity=%@ - error=%{public}@", buf, 0x20u);
    }

    LOBYTE(isActiveLocker) = 0;
  }

  else
  {
    isActiveLocker = [v12 isActiveLocker];
    v15 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy2 = self;
      v23 = 1024;
      LODWORD(v24) = isActiveLocker;
      _os_log_impl(&dword_1B4491000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ - isAuthenticatedWithQueue: - isAuthenticated=%{BOOL}u", buf, 0x12u);
    }
  }

  return isActiveLocker;
}

- (void)dealloc
{
  [(ICCloudClient *)self _tearDownNotifications];
  v3.receiver = self;
  v3.super_class = ICCloudClient;
  [(ICCloudClient *)&v3 dealloc];
}

- (void)_tearDownNotifications
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.itunescloud.setupcompleted", 0);
  v4 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(v4, self, @"com.apple.itunescloudd.sagaUpdateInProgressChanged", 0);
  v5 = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterRemoveObserver(v5, self, @"com.apple.itunescloudd.jaliscoUpdateInProgressChanged", 0);
}

- (NSXPCConnection)xpcConnection
{
  cloudService = [(ICCloudClient *)self cloudService];
  xpcConnection = [cloudService xpcConnection];

  return xpcConnection;
}

- (void)_serverJaliscoUpdateInProgressDidChange
{
  v11 = *MEMORY[0x1E69E9840];
  updateJaliscoInProgressChangedHandler = [(ICCloudClient *)self updateJaliscoInProgressChangedHandler];
  v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v9 = 1024;
    v10 = updateJaliscoInProgressChangedHandler != 0;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ - Receveived Jalisco update in progress notification [Handler present: %{BOOL}u", buf, 0x12u);
  }

  if (updateJaliscoInProgressChangedHandler)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __56__ICCloudClient__serverJaliscoUpdateInProgressDidChange__block_invoke;
    v5[3] = &unk_1E7BF4108;
    v6 = updateJaliscoInProgressChangedHandler;
    [(ICCloudClient *)self loadIsJaliscoUpdateInProgressWithCompletionHandler:v5];
  }
}

- (void)processPendingKeyInvalidations
{
  v3 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1B4491000, v3, OS_LOG_TYPE_DEFAULT, "Sending request to process pending key invalidations...", v6, 2u);
  }

  xpcConnection = [(ICCloudClient *)self xpcConnection];
  v5 = [xpcConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_211];
  [v5 processPendingKeyInvalidations];
}

- (void)becomeActive
{
  v23 = *MEMORY[0x1E69E9840];
  if (![(ICCloudClient *)self isActive])
  {
    [(ICCloudClient *)self setActive:1];
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy__4265;
    v17 = __Block_byref_object_dispose__4266;
    v18 = 0;
    xpcConnection = [(ICCloudClient *)self xpcConnection];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __29__ICCloudClient_becomeActive__block_invoke;
    v12[3] = &unk_1E7BF8E70;
    v12[4] = &v13;
    v4 = [xpcConnection remoteObjectProxyWithErrorHandler:v12];

    if (v14[5])
    {
      bundleIdentifier = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
      if (os_log_type_enabled(bundleIdentifier, OS_LOG_TYPE_ERROR))
      {
        v6 = v14[5];
        *buf = 134218242;
        selfCopy = self;
        v21 = 2114;
        v22 = v6;
        _os_log_impl(&dword_1B4491000, bundleIdentifier, OS_LOG_TYPE_ERROR, "ICCloudClient %p - becomeActive - Error retrieving xpc service - error=%{public}@", buf, 0x16u);
      }

      goto LABEL_13;
    }

    configuration = [(ICCloudClient *)self configuration];
    [v4 setupInitialJaliscoPoolingForConfiguration:configuration];

    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];

    v9 = ICBundleIdentifierForSystemApplicationType(0);
    if ([bundleIdentifier isEqualToString:v9])
    {
      if (![(ICCloudClient *)self isAuthenticated]|| ![(ICCloudClient *)self isActive])
      {
        goto LABEL_12;
      }

      configuration2 = [(ICCloudClient *)self configuration];
      [v4 setupInitialSagaPoolingForConfiguration:configuration2];
    }

    else
    {
      configuration2 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
      if (os_log_type_enabled(configuration2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        selfCopy = bundleIdentifier;
        _os_log_impl(&dword_1B4491000, configuration2, OS_LOG_TYPE_DEFAULT, "Skip refreshing cloud library and subscribed playlists for bundle: %{public}@", buf, 0xCu);
      }
    }

LABEL_12:
    configuration3 = [(ICCloudClient *)self configuration];
    [v4 updateArtistHeroImagesForConfiguration:configuration3];

LABEL_13:
    _Block_object_dispose(&v13, 8);
  }
}

- (BOOL)isActive
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  serialAccessQueue = [(ICCloudClient *)self serialAccessQueue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __25__ICCloudClient_isActive__block_invoke;
  v5[3] = &unk_1E7BFA430;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(serialAccessQueue, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

- (void)_serverSagaUpdateInProgressDidChange
{
  v11 = *MEMORY[0x1E69E9840];
  updateSagaInProgressChangedHandler = [(ICCloudClient *)self updateSagaInProgressChangedHandler];
  v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v9 = 1024;
    v10 = updateSagaInProgressChangedHandler != 0;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ - Receveived Saga update in progress notification [Handler present: %{BOOL}u", buf, 0x12u);
  }

  if (updateSagaInProgressChangedHandler)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __53__ICCloudClient__serverSagaUpdateInProgressDidChange__block_invoke;
    v5[3] = &unk_1E7BF4108;
    v6 = updateSagaInProgressChangedHandler;
    [(ICCloudClient *)self loadIsSagaUpdateInProgressWithCompletionHandler:v5];
  }
}

- (void)_serverSetupDidComplete
{
  serverSetupBlockQueue = self->_serverSetupBlockQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__ICCloudClient__serverSetupDidComplete__block_invoke;
  block[3] = &unk_1E7BFA300;
  block[4] = self;
  dispatch_async(serverSetupBlockQueue, block);
}

uint64_t __40__ICCloudClient__serverSetupDidComplete__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  result = [*(a1 + 32) serverIsSetup];
  if ((result & 1) == 0)
  {
    [*(a1 + 32) setServerIsSetup:1];
    v3 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [*(*(a1 + 32) + 96) count];
      *buf = 67109120;
      v17 = v4;
      _os_log_impl(&dword_1B4491000, v3, OS_LOG_TYPE_DEFAULT, "Running %d blocks.", buf, 8u);
    }

    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = *(*(a1 + 32) + 96);
    v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = (*(*(*(&v11 + 1) + 8 * v9) + 16))(*(*(&v11 + 1) + 8 * v9));
          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }

    return [*(*(a1 + 32) + 96) removeAllObjects];
  }

  return result;
}

- (void)setActive:(BOOL)active
{
  serialAccessQueue = [(ICCloudClient *)self serialAccessQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __27__ICCloudClient_setActive___block_invoke;
  v6[3] = &unk_1E7BF7860;
  v6[4] = self;
  activeCopy = active;
  dispatch_sync(serialAccessQueue, v6);
}

- (BOOL)shouldProhibitActionsForCurrentNetworkConditions
{
  availabilityService = [(ICCloudClient *)self availabilityService];
  shouldProhibitStoreAppsActionForCurrentNetworkConditions = [availabilityService shouldProhibitStoreAppsActionForCurrentNetworkConditions];

  return shouldProhibitStoreAppsActionForCurrentNetworkConditions;
}

- (BOOL)isCellularDataRestricted
{
  availabilityService = [(ICCloudClient *)self availabilityService];
  isCellularDataRestrictedForStoreApps = [availabilityService isCellularDataRestrictedForStoreApps];

  return isCellularDataRestrictedForStoreApps;
}

- (BOOL)canShowCloudVideo
{
  availabilityService = [(ICCloudClient *)self availabilityService];
  canShowCloudVideo = [availabilityService canShowCloudVideo];

  return canShowCloudVideo;
}

- (BOOL)canShowCloudMusic
{
  availabilityService = [(ICCloudClient *)self availabilityService];
  canShowCloudMusic = [availabilityService canShowCloudMusic];

  return canShowCloudMusic;
}

- (BOOL)canShowCloudDownloadButtons
{
  availabilityService = [(ICCloudClient *)self availabilityService];
  canShowCloudDownloadButtons = [availabilityService canShowCloudDownloadButtons];

  return canShowCloudDownloadButtons;
}

- (BOOL)shouldProhibitStoreAppsActionForCurrentNetworkConditions
{
  availabilityService = [(ICCloudClient *)self availabilityService];
  shouldProhibitStoreAppsActionForCurrentNetworkConditions = [availabilityService shouldProhibitStoreAppsActionForCurrentNetworkConditions];

  return shouldProhibitStoreAppsActionForCurrentNetworkConditions;
}

- (BOOL)isCellularDataRestrictedForStoreApps
{
  availabilityService = [(ICCloudClient *)self availabilityService];
  isCellularDataRestrictedForStoreApps = [availabilityService isCellularDataRestrictedForStoreApps];

  return isCellularDataRestrictedForStoreApps;
}

- (BOOL)shouldProhibitVideosActionForCurrentNetworkConditions
{
  availabilityService = [(ICCloudClient *)self availabilityService];
  shouldProhibitVideosActionForCurrentNetworkConditions = [availabilityService shouldProhibitVideosActionForCurrentNetworkConditions];

  return shouldProhibitVideosActionForCurrentNetworkConditions;
}

- (BOOL)isCellularDataRestrictedForVideos
{
  availabilityService = [(ICCloudClient *)self availabilityService];
  isCellularDataRestrictedForVideos = [availabilityService isCellularDataRestrictedForVideos];

  return isCellularDataRestrictedForVideos;
}

- (BOOL)shouldProhibitMusicActionForCurrentNetworkConditions
{
  availabilityService = [(ICCloudClient *)self availabilityService];
  shouldProhibitMusicActionForCurrentNetworkConditions = [availabilityService shouldProhibitMusicActionForCurrentNetworkConditions];

  return shouldProhibitMusicActionForCurrentNetworkConditions;
}

- (BOOL)isCellularDataRestrictedForMusic
{
  availabilityService = [(ICCloudClient *)self availabilityService];
  isCellularDataRestrictedForMusic = [availabilityService isCellularDataRestrictedForMusic];

  return isCellularDataRestrictedForMusic;
}

- (BOOL)hasProperNetworkConditionsToShowCloudMedia
{
  availabilityService = [(ICCloudClient *)self availabilityService];
  hasProperNetworkConditionsToShowCloudMedia = [availabilityService hasProperNetworkConditionsToShowCloudMedia];

  return hasProperNetworkConditionsToShowCloudMedia;
}

- (BOOL)hasProperNetworkConditionsToPlayMedia
{
  availabilityService = [(ICCloudClient *)self availabilityService];
  hasProperNetworkConditionsToPlayMedia = [availabilityService hasProperNetworkConditionsToPlayMedia];

  return hasProperNetworkConditionsToPlayMedia;
}

- (void)listCloudServerOperations
{
  xpcConnection = [(ICCloudClient *)self xpcConnection];
  v2 = [xpcConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_213];
  [v2 listCloudServerOperations];
}

void __42__ICCloudClient_listCloudServerOperations__block_invoke(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 138543362;
    v5 = v2;
    _os_log_impl(&dword_1B4491000, v3, OS_LOG_TYPE_ERROR, "Failed to list cloud server operations with error: %{public}@", &v4, 0xCu);
  }
}

- (void)notifyDeviceSetupFinishedWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_DEFAULT, "Sending notification that setup has completed...", buf, 2u);
  }

  listenerEndpointProvider = self->_listenerEndpointProvider;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __57__ICCloudClient_notifyDeviceSetupFinishedWithCompletion___block_invoke;
  v8[3] = &unk_1E7BF77C0;
  v9 = completionCopy;
  v7 = completionCopy;
  [(ICCloudServerListenerEndpointProvider *)listenerEndpointProvider notifyDeviceSetupFinishedWithCompletion:v8];
}

void __57__ICCloudClient_notifyDeviceSetupFinishedWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = [v3 msv_description];
      v7 = 138543362;
      v8 = v6;
      _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_ERROR, "Completing sending setup completed notification error=%{public}@", &v7, 0xCu);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v7) = 0;
    _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_DEFAULT, "Completing sending setup completed notification", &v7, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

void __47__ICCloudClient_processPendingKeyInvalidations__block_invoke(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 138543362;
    v5 = v2;
    _os_log_impl(&dword_1B4491000, v3, OS_LOG_TYPE_ERROR, "Failed to invalidate offline keys. err=%{public}@", &v4, 0xCu);
  }
}

- (void)fetchEnhancedAudioOfflineKeys
{
  v3 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1B4491000, v3, OS_LOG_TYPE_DEFAULT, "Sending request to fetch enhanced-audio offline keys...", v6, 2u);
  }

  xpcConnection = [(ICCloudClient *)self xpcConnection];
  v5 = [xpcConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_209];
  [v5 fetchEnhancedAudioOfflineKeys];
}

void __46__ICCloudClient_fetchEnhancedAudioOfflineKeys__block_invoke(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 138543362;
    v5 = v2;
    _os_log_impl(&dword_1B4491000, v3, OS_LOG_TYPE_ERROR, "Failed to fetch enhanced-audio offline keys. err=%{public}@", &v4, 0xCu);
  }
}

- (void)refreshEnhancedAudioSharedKeys
{
  v3 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1B4491000, v3, OS_LOG_TYPE_DEFAULT, "Sending request to refresh enhanced-audio shared keys...", v6, 2u);
  }

  xpcConnection = [(ICCloudClient *)self xpcConnection];
  v5 = [xpcConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_207];
  [v5 refreshEnhancedAudioSharedKeys];
}

void __47__ICCloudClient_refreshEnhancedAudioSharedKeys__block_invoke(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 138543362;
    v5 = v2;
    _os_log_impl(&dword_1B4491000, v3, OS_LOG_TYPE_ERROR, "Failed to refresh enhanced-audio shared keys. err=%{public}@", &v4, 0xCu);
  }
}

- (BOOL)createMusicNotificationFromAMSDialogRequest:(id)request error:(id *)error
{
  requestCopy = request;
  v6 = ICBundleIdentifierForSystemApplicationType(0);
  v7 = +[ICInAppMessageManager sharedManager];
  [v7 addMessageEntryFromAMSDialogRequest:requestCopy bundleIdentifier:v6 completion:&__block_literal_global_205];

  if (error)
  {
    *error = 0;
  }

  return 1;
}

void __67__ICCloudClient_createMusicNotificationFromAMSDialogRequest_error___block_invoke(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    v3 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 138543362;
      v5 = v2;
      _os_log_impl(&dword_1B4491000, v3, OS_LOG_TYPE_ERROR, "Failed to add message entry from AMS dialog. err=%{public}@", &v4, 0xCu);
    }
  }
}

- (void)handleAutomaticDownloadPreferenceChangedForPinnedLibraryEntities:(BOOL)entities
{
  entitiesCopy = entities;
  v17 = *MEMORY[0x1E69E9840];
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"AutomaticDownloadEnabledForLibraryPins", @"com.apple.mobileipod", 0);
  v6 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543874;
    selfCopy = self;
    v13 = 1024;
    v14 = entitiesCopy;
    v15 = 1024;
    v16 = AppBooleanValue != 0;
    _os_log_impl(&dword_1B4491000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ Updating automatic download preference change for library pins. shouldAutomaticallyDownload=%{BOOL}u, currentAutomaticDownloadPrefs=%{BOOL}u", &v11, 0x18u);
  }

  if ((AppBooleanValue != 0) == entitiesCopy || (CFPreferencesSetAppValue(@"AutomaticDownloadEnabledForLibraryPins", [MEMORY[0x1E696AD98] numberWithBool:entitiesCopy], @"com.apple.mobileipod"), CFPreferencesAppSynchronize(@"com.apple.mobileipod")))
  {
    if (!entitiesCopy)
    {
      return;
    }

    goto LABEL_6;
  }

  v10 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v11) = 0;
    _os_log_impl(&dword_1B4491000, v10, OS_LOG_TYPE_ERROR, "Error setting automatic download preference for library pins", &v11, 2u);
  }

  if (entitiesCopy)
  {
LABEL_6:
    if ((MSVDeviceIsiPhone() & 1) != 0 || (MSVDeviceIsiPad() & 1) != 0 || MSVDeviceIsROSDevice())
    {
      xpcConnection = [(ICCloudClient *)self xpcConnection];
      v8 = [xpcConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_202];
      configuration = [(ICCloudClient *)self configuration];
      [v8 prepareToDownloadAllLibraryPinnedEntitiesForConfiguration:configuration];
    }
  }
}

void __82__ICCloudClient_handleAutomaticDownloadPreferenceChangedForPinnedLibraryEntities___block_invoke(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 138543362;
    v5 = v2;
    _os_log_impl(&dword_1B4491000, v3, OS_LOG_TYPE_ERROR, "Load Books failed with error: %{public}@", &v4, 0xCu);
  }
}

- (BOOL)hasSetPreferenceForAutomaticDownloads
{
  v2 = +[ICDefaults standardDefaults];
  automaticDownloadsEnabled = [v2 automaticDownloadsEnabled];

  return automaticDownloadsEnabled;
}

- (BOOL)isAutomaticDownloadsEnabledForMediaKindMusic
{
  v11 = *MEMORY[0x1E69E9840];
  ic_sharedAccountStore = [MEMORY[0x1E6959A48] ic_sharedAccountStore];
  v8 = 0;
  v3 = [ic_sharedAccountStore ic_activeStoreAccountWithError:&v8];
  v4 = v8;

  if (v3)
  {
    ic_isAutomaticDownloadsEnabledForMediaKindMusic = [v3 ic_isAutomaticDownloadsEnabledForMediaKindMusic];
    v6 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v10) = ic_isAutomaticDownloadsEnabledForMediaKindMusic;
      _os_log_impl(&dword_1B4491000, v6, OS_LOG_TYPE_ERROR, "Automatic downloads are %{BOOL}u for media kind music", buf, 8u);
    }
  }

  else
  {
    v6 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v10 = v4;
      _os_log_impl(&dword_1B4491000, v6, OS_LOG_TYPE_DEFAULT, "Not able to determine if automatic downloads are enabled for media kind music. Could not load active store account: error=%{public}@", buf, 0xCu);
    }

    LOBYTE(ic_isAutomaticDownloadsEnabledForMediaKindMusic) = 0;
  }

  return ic_isAutomaticDownloadsEnabledForMediaKindMusic;
}

- (void)handleAutomaticDownloadPreferenceChangedForMediaKindMusic:(BOOL)music withCompletionHandler:(id)handler
{
  musicCopy = music;
  v24 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v7 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v22 = 1024;
    v23 = musicCopy;
    _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Updating automatic download preference change. shouldAutomaticallyDownload=%{BOOL}u", buf, 0x12u);
  }

  v8 = +[ICUpdateAutomaticDownloadMediaKindsRequest automaticDownloadMediaKindsForMusic];
  v9 = [ICStoreRequestContext alloc];
  v10 = +[ICUserIdentity activeAccount];
  v11 = [(ICStoreRequestContext *)v9 initWithIdentity:v10];

  v12 = [ICUpdateAutomaticDownloadMediaKindsRequest alloc];
  if (musicCopy)
  {
    v13 = v8;
  }

  else
  {
    v13 = 0;
  }

  if (musicCopy)
  {
    v14 = 0;
  }

  else
  {
    v14 = v8;
  }

  v15 = [(ICUpdateAutomaticDownloadMediaKindsRequest *)v12 initWithRequestContext:v11 mediaKindsToAdd:v13 mediaKindsToRemove:v14];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __97__ICCloudClient_handleAutomaticDownloadPreferenceChangedForMediaKindMusic_withCompletionHandler___block_invoke;
  v17[3] = &unk_1E7BF5210;
  v19 = musicCopy;
  v17[4] = self;
  v18 = handlerCopy;
  v16 = handlerCopy;
  [(ICRequestOperation *)v15 performRequestWithCompletionHandler:v17];
}

void __97__ICCloudClient_handleAutomaticDownloadPreferenceChangedForMediaKindMusic_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "Default");
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = [v3 msv_description];
      *buf = 138543618;
      v15 = v6;
      v16 = 2114;
      v17 = v7;
      _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_ERROR, "%{public}@ Automatic download media kind update task completed error=%{public}@", buf, 0x16u);
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      *buf = 138543362;
      v15 = v8;
      _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Automatic download media kind update task completed", buf, 0xCu);
    }

    v5 = +[ICDefaults standardDefaults];
    [v5 setAutomaticDownloadsEnabled:*(a1 + 48)];
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    v10 = dispatch_get_global_queue(0, 0);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __97__ICCloudClient_handleAutomaticDownloadPreferenceChangedForMediaKindMusic_withCompletionHandler___block_invoke_193;
    v11[3] = &unk_1E7BF9EC8;
    v13 = v9;
    v12 = v3;
    dispatch_async(v10, v11);
  }
}

- (void)loadBooksForStoreIDs:(id)ds withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  dsCopy = ds;
  xpcConnection = [(ICCloudClient *)self xpcConnection];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __60__ICCloudClient_loadBooksForStoreIDs_withCompletionHandler___block_invoke;
  v15[3] = &unk_1E7BF77C0;
  v9 = handlerCopy;
  v16 = v9;
  v10 = [xpcConnection remoteObjectProxyWithErrorHandler:v15];
  configuration = [(ICCloudClient *)self configuration];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __60__ICCloudClient_loadBooksForStoreIDs_withCompletionHandler___block_invoke_2;
  v13[3] = &unk_1E7BF59C0;
  v14 = v9;
  v12 = v9;
  [v10 loadBooksForStoreIDs:dsCopy configuration:configuration completion:v13];
}

void __60__ICCloudClient_loadBooksForStoreIDs_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v11 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "Load Books failed with error: %{public}@", buf, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = dispatch_get_global_queue(0, 0);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __60__ICCloudClient_loadBooksForStoreIDs_withCompletionHandler___block_invoke_187;
    v7[3] = &unk_1E7BF9EC8;
    v9 = v5;
    v8 = v3;
    dispatch_async(v6, v7);
  }
}

void __60__ICCloudClient_loadBooksForStoreIDs_withCompletionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v15 = v6;
      _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_ERROR, "Load Books failed with error: %{public}@", buf, 0xCu);
    }
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    v9 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __60__ICCloudClient_loadBooksForStoreIDs_withCompletionHandler___block_invoke_188;
    block[3] = &unk_1E7BF9E28;
    v13 = v8;
    v11 = v5;
    v12 = v6;
    dispatch_async(v9, block);
  }
}

- (void)updateArtistHeroImages
{
  v3 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1B4491000, v3, OS_LOG_TYPE_DEFAULT, "Sending request to update artist hero images...", v7, 2u);
  }

  xpcConnection = [(ICCloudClient *)self xpcConnection];
  v5 = [xpcConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_186];
  configuration = [(ICCloudClient *)self configuration];
  [v5 updateArtistHeroImagesForConfiguration:configuration];
}

void __39__ICCloudClient_updateArtistHeroImages__block_invoke(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 138543362;
    v5 = v2;
    _os_log_impl(&dword_1B4491000, v3, OS_LOG_TYPE_ERROR, "Failed to update artist hero images with error: %{public}@", &v4, 0xCu);
  }
}

- (void)setAlbumArtistProperties:(id)properties forAlbumArtistPersistentID:(int64_t)d completionHandler:(id)handler
{
  v24 = *MEMORY[0x1E69E9840];
  propertiesCopy = properties;
  handlerCopy = handler;
  v10 = os_log_create("com.apple.amp.iTunesCloud", "Default_Oversize");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v21 = propertiesCopy;
    v22 = 2048;
    dCopy = d;
    _os_log_impl(&dword_1B4491000, v10, OS_LOG_TYPE_DEFAULT, "Setting album artist properties %{public}@ for persistent ID %llu...", buf, 0x16u);
  }

  xpcConnection = [(ICCloudClient *)self xpcConnection];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __87__ICCloudClient_setAlbumArtistProperties_forAlbumArtistPersistentID_completionHandler___block_invoke;
  v18[3] = &unk_1E7BF77C0;
  v12 = handlerCopy;
  v19 = v12;
  v13 = [xpcConnection remoteObjectProxyWithErrorHandler:v18];
  configuration = [(ICCloudClient *)self configuration];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __87__ICCloudClient_setAlbumArtistProperties_forAlbumArtistPersistentID_completionHandler___block_invoke_2;
  v16[3] = &unk_1E7BF77C0;
  v17 = v12;
  v15 = v12;
  [v13 setAlbumArtistProperties:propertiesCopy forAlbumArtistPersistentID:d configuration:configuration completion:v16];
}

void __87__ICCloudClient_setAlbumArtistProperties_forAlbumArtistPersistentID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v11 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "Failed to set album artist properties with error: %{public}@", buf, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = dispatch_get_global_queue(0, 0);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __87__ICCloudClient_setAlbumArtistProperties_forAlbumArtistPersistentID_completionHandler___block_invoke_183;
    v7[3] = &unk_1E7BF9EC8;
    v9 = v5;
    v8 = v3;
    dispatch_async(v6, v7);
  }
}

void __87__ICCloudClient_setAlbumArtistProperties_forAlbumArtistPersistentID_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v11 = v3;
      _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "Failed to set album artist properties with error: %{public}@", buf, 0xCu);
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = dispatch_get_global_queue(0, 0);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __87__ICCloudClient_setAlbumArtistProperties_forAlbumArtistPersistentID_completionHandler___block_invoke_184;
    v7[3] = &unk_1E7BF9EC8;
    v9 = v5;
    v8 = v3;
    dispatch_async(v6, v7);
  }
}

- (void)setAlbumEntityProperties:(id)properties forAlbumPersistentID:(int64_t)d completionHandler:(id)handler
{
  v24 = *MEMORY[0x1E69E9840];
  propertiesCopy = properties;
  handlerCopy = handler;
  v10 = os_log_create("com.apple.amp.iTunesCloud", "Default_Oversize");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v21 = propertiesCopy;
    v22 = 2048;
    dCopy = d;
    _os_log_impl(&dword_1B4491000, v10, OS_LOG_TYPE_DEFAULT, "Setting album properties %{public}@ for persistent ID %llu ...", buf, 0x16u);
  }

  xpcConnection = [(ICCloudClient *)self xpcConnection];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __81__ICCloudClient_setAlbumEntityProperties_forAlbumPersistentID_completionHandler___block_invoke;
  v18[3] = &unk_1E7BF77C0;
  v12 = handlerCopy;
  v19 = v12;
  v13 = [xpcConnection remoteObjectProxyWithErrorHandler:v18];
  configuration = [(ICCloudClient *)self configuration];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __81__ICCloudClient_setAlbumEntityProperties_forAlbumPersistentID_completionHandler___block_invoke_2;
  v16[3] = &unk_1E7BF77C0;
  v17 = v12;
  v15 = v12;
  [v13 setAlbumEntityProperties:propertiesCopy forAlbumPersistentID:d configuration:configuration completion:v16];
}

void __81__ICCloudClient_setAlbumEntityProperties_forAlbumPersistentID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v11 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "Failed to set collection properties with error: %{public}@", buf, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = dispatch_get_global_queue(0, 0);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __81__ICCloudClient_setAlbumEntityProperties_forAlbumPersistentID_completionHandler___block_invoke_181;
    v7[3] = &unk_1E7BF9EC8;
    v9 = v5;
    v8 = v3;
    dispatch_async(v6, v7);
  }
}

void __81__ICCloudClient_setAlbumEntityProperties_forAlbumPersistentID_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v11 = v3;
      _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "Failed to set collection properties with error: %{public}@", buf, 0xCu);
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = dispatch_get_global_queue(0, 0);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __81__ICCloudClient_setAlbumEntityProperties_forAlbumPersistentID_completionHandler___block_invoke_182;
    v7[3] = &unk_1E7BF9EC8;
    v9 = v5;
    v8 = v3;
    dispatch_async(v6, v7);
  }
}

- (void)setAlbumProperties:(id)properties forAlbumPersistentID:(int64_t)d completionHandler:(id)handler
{
  v24 = *MEMORY[0x1E69E9840];
  propertiesCopy = properties;
  handlerCopy = handler;
  v10 = os_log_create("com.apple.amp.iTunesCloud", "Default_Oversize");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v21 = propertiesCopy;
    v22 = 2048;
    dCopy = d;
    _os_log_impl(&dword_1B4491000, v10, OS_LOG_TYPE_DEFAULT, "Setting album properties %{public}@ for persistent ID %llu...", buf, 0x16u);
  }

  xpcConnection = [(ICCloudClient *)self xpcConnection];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __75__ICCloudClient_setAlbumProperties_forAlbumPersistentID_completionHandler___block_invoke;
  v18[3] = &unk_1E7BF77C0;
  v12 = handlerCopy;
  v19 = v12;
  v13 = [xpcConnection remoteObjectProxyWithErrorHandler:v18];
  configuration = [(ICCloudClient *)self configuration];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __75__ICCloudClient_setAlbumProperties_forAlbumPersistentID_completionHandler___block_invoke_2;
  v16[3] = &unk_1E7BF77C0;
  v17 = v12;
  v15 = v12;
  [v13 setAlbumProperties:propertiesCopy forAlbumPersistentID:d configuration:configuration completion:v16];
}

void __75__ICCloudClient_setAlbumProperties_forAlbumPersistentID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v11 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "Failed to set collection properties with error: %{public}@", buf, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = dispatch_get_global_queue(0, 0);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __75__ICCloudClient_setAlbumProperties_forAlbumPersistentID_completionHandler___block_invoke_179;
    v7[3] = &unk_1E7BF9EC8;
    v9 = v5;
    v8 = v3;
    dispatch_async(v6, v7);
  }
}

void __75__ICCloudClient_setAlbumProperties_forAlbumPersistentID_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v11 = v3;
      _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "Failed to set collection properties with error: %{public}@", buf, 0xCu);
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = dispatch_get_global_queue(0, 0);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __75__ICCloudClient_setAlbumProperties_forAlbumPersistentID_completionHandler___block_invoke_180;
    v7[3] = &unk_1E7BF9EC8;
    v9 = v5;
    v8 = v3;
    dispatch_async(v6, v7);
  }
}

- (void)uploadCloudPlaylistProperties
{
  xpcConnection = [(ICCloudClient *)self xpcConnection];
  v3 = [xpcConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_175];
  configuration = [(ICCloudClient *)self configuration];
  [v3 uploadCloudPlaylistPropertiesForConfiguration:configuration completion:&__block_literal_global_178];
}

void __46__ICCloudClient_uploadCloudPlaylistProperties__block_invoke_176(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    v3 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 138543362;
      v5 = v2;
      _os_log_impl(&dword_1B4491000, v3, OS_LOG_TYPE_ERROR, "Failed to update cloud plaulist properties with error: %{public}@", &v4, 0xCu);
    }
  }
}

void __46__ICCloudClient_uploadCloudPlaylistProperties__block_invoke(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 138543362;
    v5 = v2;
    _os_log_impl(&dword_1B4491000, v3, OS_LOG_TYPE_ERROR, "Failed to update cloud plaulist properties with error: %{public}@", &v4, 0xCu);
  }
}

- (void)uploadCloudItemProperties
{
  xpcConnection = [(ICCloudClient *)self xpcConnection];
  v3 = [xpcConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_170];
  configuration = [(ICCloudClient *)self configuration];
  [v3 uploadCloudItemPropertiesForConfiguration:configuration completion:&__block_literal_global_173];
}

void __42__ICCloudClient_uploadCloudItemProperties__block_invoke_171(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    v3 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 138543362;
      v5 = v2;
      _os_log_impl(&dword_1B4491000, v3, OS_LOG_TYPE_ERROR, "Failed to update cloud item properties with error: %{public}@", &v4, 0xCu);
    }
  }
}

void __42__ICCloudClient_uploadCloudItemProperties__block_invoke(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 138543362;
    v5 = v2;
    _os_log_impl(&dword_1B4491000, v3, OS_LOG_TYPE_ERROR, "Failed to update cloud item properties with error: %{public}@", &v4, 0xCu);
  }
}

- (void)setItemProperties:(id)properties forSagaID:(unint64_t)d
{
  v15 = *MEMORY[0x1E69E9840];
  propertiesCopy = properties;
  if (d)
  {
    v7 = os_log_create("com.apple.amp.iTunesCloud", "Default_Oversize");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543618;
      v12 = propertiesCopy;
      v13 = 2048;
      dCopy = d;
      _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_DEFAULT, "Setting item properties %{public}@ for saga ID %llu...", &v11, 0x16u);
    }

    xpcConnection = [(ICCloudClient *)self xpcConnection];
    v9 = [xpcConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_165];
    configuration = [(ICCloudClient *)self configuration];
    [v9 setItemProperties:propertiesCopy forSagaID:d configuration:configuration completion:&__block_literal_global_168];
  }
}

void __45__ICCloudClient_setItemProperties_forSagaID___block_invoke_166(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    v3 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 138543362;
      v5 = v2;
      _os_log_impl(&dword_1B4491000, v3, OS_LOG_TYPE_ERROR, "Failed to set item properties with error: %{public}@", &v4, 0xCu);
    }
  }
}

void __45__ICCloudClient_setItemProperties_forSagaID___block_invoke(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 138543362;
    v5 = v2;
    _os_log_impl(&dword_1B4491000, v3, OS_LOG_TYPE_ERROR, "Failed to set item properties with error: %{public}@", &v4, 0xCu);
  }
}

- (void)setItemProperties:(id)properties forPurchaseHistoryID:(unint64_t)d
{
  v15 = *MEMORY[0x1E69E9840];
  propertiesCopy = properties;
  if (d)
  {
    v7 = os_log_create("com.apple.amp.iTunesCloud", "Default_Oversize");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543618;
      v12 = propertiesCopy;
      v13 = 2048;
      dCopy = d;
      _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_DEFAULT, "Setting item properties %{public}@ for purchaseHistoryID %llu...", &v11, 0x16u);
    }

    xpcConnection = [(ICCloudClient *)self xpcConnection];
    v9 = [xpcConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_160];
    configuration = [(ICCloudClient *)self configuration];
    [v9 setItemProperties:propertiesCopy forPurchaseHistoryID:d configuration:configuration completion:&__block_literal_global_163];
  }
}

void __56__ICCloudClient_setItemProperties_forPurchaseHistoryID___block_invoke_161(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    v3 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 138543362;
      v5 = v2;
      _os_log_impl(&dword_1B4491000, v3, OS_LOG_TYPE_ERROR, "Failed to set item properties with error: %{public}@", &v4, 0xCu);
    }
  }
}

void __56__ICCloudClient_setItemProperties_forPurchaseHistoryID___block_invoke(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138543362;
    v5 = v2;
    _os_log_impl(&dword_1B4491000, v3, OS_LOG_TYPE_DEFAULT, "Failed to set item properties with error: %{public}@", &v4, 0xCu);
  }
}

- (void)setPreferredVideoQuality:(int64_t)quality
{
  serialAccessQueue = [(ICCloudClient *)self serialAccessQueue];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __42__ICCloudClient_setPreferredVideoQuality___block_invoke;
  v10[3] = &unk_1E7BF9890;
  v10[4] = self;
  v10[5] = quality;
  dispatch_sync(serialAccessQueue, v10);

  xpcConnection = [(ICCloudClient *)self xpcConnection];
  remoteObjectProxy = [xpcConnection remoteObjectProxy];
  preferredVideoQuality = self->_preferredVideoQuality;
  configuration = [(ICCloudClient *)self configuration];
  [remoteObjectProxy setPreferredVideoQuality:preferredVideoQuality forConfiguration:configuration completion:&__block_literal_global_158];
}

- (void)resetConfiguration:(id)configuration
{
  configurationCopy = configuration;
  serialAccessQueue = [(ICCloudClient *)self serialAccessQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __36__ICCloudClient_resetConfiguration___block_invoke;
  v7[3] = &unk_1E7BFA078;
  v7[4] = self;
  v8 = configurationCopy;
  v6 = configurationCopy;
  dispatch_sync(serialAccessQueue, v7);
}

- (void)reportAppIconBadgeActionMetrics
{
  badgingService = [(ICCloudClient *)self badgingService];
  [badgingService reportAppIconBadgeActionMetrics];
}

- (BOOL)initialLibrarySyncsComplete
{
  v41 = *MEMORY[0x1E69E9840];
  configuration = [(ICCloudClient *)self configuration];
  userIdentity = [configuration userIdentity];

  v5 = [getML3MusicLibraryClass() musicLibraryForUserAccount:userIdentity];
  configuration2 = [(ICCloudClient *)self configuration];
  userIdentityStore = [configuration2 userIdentityStore];
  v30 = 0;
  v8 = [userIdentityStore getPropertiesForUserIdentity:userIdentity error:&v30];
  v9 = v30;

  if (v9)
  {
    v10 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v32 = v9;
      _os_log_impl(&dword_1B4491000, v10, OS_LOG_TYPE_ERROR, "Check for initial library syncs completion failed to load identity properties. err = %{public}@", buf, 0xCu);
    }
  }

  jaliscoOnDiskDatabaseRevision = [v5 jaliscoOnDiskDatabaseRevision];
  sagaOnDiskDatabaseRevision = [v5 sagaOnDiskDatabaseRevision];
  syncLibraryID = [v5 syncLibraryID];
  isActiveLocker = [v8 isActiveLocker];
  v15 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 138544386;
    v32 = userIdentity;
    v33 = 2048;
    v34 = jaliscoOnDiskDatabaseRevision;
    v35 = 2048;
    v36 = sagaOnDiskDatabaseRevision;
    v37 = 2114;
    v38 = syncLibraryID;
    v39 = 1024;
    v40 = isActiveLocker;
    _os_log_impl(&dword_1B4491000, v15, OS_LOG_TYPE_ERROR, "Checking if initial library syncs are completed. userIdentity = %{public}@, jaliscoOnDiskDatabaseRevision=%ld, sagaOnDiskDatabaseRevision=%ld, syncLibraryID=%{public}@, isActiveLocker=%{BOOL}u", buf, 0x30u);
  }

  v28 = v5;

  v16 = +[ICDeviceInfo currentDeviceInfo];
  if ([v16 isWatch])
  {
    v17 = +[ICNanoPairedDeviceStatusMonitor sharedMonitor];
    v18 = userIdentity;
    v19 = v9;
    v20 = [v17 isMediaSyncingSupported] ^ 1;
    v21 = syncLibraryID;

    v22 = v20 | (syncLibraryID != 0);
    v9 = v19;
    userIdentity = v18;
  }

  else
  {
    v21 = syncLibraryID;

    v22 = 1;
  }

  if (v8)
  {
    v23 = jaliscoOnDiskDatabaseRevision == 0;
  }

  else
  {
    v23 = 0;
  }

  v24 = !v23;
  v25 = ((sagaOnDiskDatabaseRevision != 0) | ~[v8 isActiveLocker]) & v24 & v22;
  v26 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    LODWORD(v32) = v25;
    _os_log_impl(&dword_1B4491000, v26, OS_LOG_TYPE_ERROR, "Initial library syncs completed: %{BOOL}u", buf, 8u);
  }

  return v25;
}

- (void)loadJaliscoUpdateProgressWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  xpcConnection = [(ICCloudClient *)self xpcConnection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __64__ICCloudClient_loadJaliscoUpdateProgressWithCompletionHandler___block_invoke;
  v12[3] = &unk_1E7BF77C0;
  v6 = handlerCopy;
  v13 = v6;
  v7 = [xpcConnection remoteObjectProxyWithErrorHandler:v12];
  configuration = [(ICCloudClient *)self configuration];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __64__ICCloudClient_loadJaliscoUpdateProgressWithCompletionHandler___block_invoke_2;
  v10[3] = &unk_1E7BF4158;
  v11 = v6;
  v9 = v6;
  [v7 loadJaliscoUpdateProgressForConfiguration:configuration completion:v10];
}

void __64__ICCloudClient_loadJaliscoUpdateProgressWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v10 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "Jalisco update progress failed with error: %{public}@", buf, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __64__ICCloudClient_loadJaliscoUpdateProgressWithCompletionHandler___block_invoke_153;
    block[3] = &unk_1E7BF9D20;
    v8 = v5;
    dispatch_async(v6, block);
  }
}

void __64__ICCloudClient_loadJaliscoUpdateProgressWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2, float a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (v5)
  {
    v6 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v13 = v5;
      _os_log_impl(&dword_1B4491000, v6, OS_LOG_TYPE_ERROR, "Jalisco update progress failed with error: %{public}@", buf, 0xCu);
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = dispatch_get_global_queue(0, 0);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __64__ICCloudClient_loadJaliscoUpdateProgressWithCompletionHandler___block_invoke_154;
    v9[3] = &unk_1E7BF4130;
    v10 = v7;
    v11 = a3;
    dispatch_async(v8, v9);
  }
}

- (void)loadSagaUpdateProgressWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  xpcConnection = [(ICCloudClient *)self xpcConnection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __61__ICCloudClient_loadSagaUpdateProgressWithCompletionHandler___block_invoke;
  v12[3] = &unk_1E7BF77C0;
  v6 = handlerCopy;
  v13 = v6;
  v7 = [xpcConnection remoteObjectProxyWithErrorHandler:v12];
  configuration = [(ICCloudClient *)self configuration];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __61__ICCloudClient_loadSagaUpdateProgressWithCompletionHandler___block_invoke_2;
  v10[3] = &unk_1E7BF4158;
  v11 = v6;
  v9 = v6;
  [v7 loadSagaUpdateProgressForConfiguration:configuration completion:v10];
}

void __61__ICCloudClient_loadSagaUpdateProgressWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v10 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "Saga update progress failed with error: %{public}@", buf, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __61__ICCloudClient_loadSagaUpdateProgressWithCompletionHandler___block_invoke_151;
    block[3] = &unk_1E7BF9D20;
    v8 = v5;
    dispatch_async(v6, block);
  }
}

void __61__ICCloudClient_loadSagaUpdateProgressWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2, float a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (v5)
  {
    v6 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v13 = v5;
      _os_log_impl(&dword_1B4491000, v6, OS_LOG_TYPE_ERROR, "Saga update progress failed with error: %{public}@", buf, 0xCu);
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = dispatch_get_global_queue(0, 0);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __61__ICCloudClient_loadSagaUpdateProgressWithCompletionHandler___block_invoke_152;
    v9[3] = &unk_1E7BF4130;
    v10 = v7;
    v11 = a3;
    dispatch_async(v8, v9);
  }
}

- (void)loadIsJaliscoUpdateInProgressWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  xpcConnection = [(ICCloudClient *)self xpcConnection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __68__ICCloudClient_loadIsJaliscoUpdateInProgressWithCompletionHandler___block_invoke;
  v12[3] = &unk_1E7BF77C0;
  v6 = handlerCopy;
  v13 = v6;
  v7 = [xpcConnection remoteObjectProxyWithErrorHandler:v12];
  configuration = [(ICCloudClient *)self configuration];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __68__ICCloudClient_loadIsJaliscoUpdateInProgressWithCompletionHandler___block_invoke_2;
  v10[3] = &unk_1E7BF4108;
  v11 = v6;
  v9 = v6;
  [v7 loadIsJaliscoUpdateInProgressForConfiguration:configuration completion:v10];
}

void __68__ICCloudClient_loadIsJaliscoUpdateInProgressWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v9 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "Jalisco load Update In Progress failed with error: %{public}@", buf, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __68__ICCloudClient_loadIsJaliscoUpdateInProgressWithCompletionHandler___block_invoke_150;
    block[3] = &unk_1E7BF9D20;
    v7 = v5;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __68__ICCloudClient_loadIsJaliscoUpdateInProgressWithCompletionHandler___block_invoke_2(uint64_t a1, char a2, char a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __68__ICCloudClient_loadIsJaliscoUpdateInProgressWithCompletionHandler___block_invoke_3;
    v6[3] = &unk_1E7BF8CB0;
    v7 = v3;
    v8 = a2;
    v9 = a3;
    dispatch_async(MEMORY[0x1E69E96A0], v6);
  }
}

- (void)loadIsSagaUpdateInProgressWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  xpcConnection = [(ICCloudClient *)self xpcConnection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __65__ICCloudClient_loadIsSagaUpdateInProgressWithCompletionHandler___block_invoke;
  v12[3] = &unk_1E7BF77C0;
  v6 = handlerCopy;
  v13 = v6;
  v7 = [xpcConnection remoteObjectProxyWithErrorHandler:v12];
  configuration = [(ICCloudClient *)self configuration];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __65__ICCloudClient_loadIsSagaUpdateInProgressWithCompletionHandler___block_invoke_2;
  v10[3] = &unk_1E7BF4108;
  v11 = v6;
  v9 = v6;
  [v7 loadIsSagaUpdateInProgressForConfiguration:configuration completion:v10];
}

void __65__ICCloudClient_loadIsSagaUpdateInProgressWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v9 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "Saga update In Progress failed with error: %{public}@", buf, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __65__ICCloudClient_loadIsSagaUpdateInProgressWithCompletionHandler___block_invoke_149;
    block[3] = &unk_1E7BF9D20;
    v7 = v5;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __65__ICCloudClient_loadIsSagaUpdateInProgressWithCompletionHandler___block_invoke_2(uint64_t a1, char a2, char a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __65__ICCloudClient_loadIsSagaUpdateInProgressWithCompletionHandler___block_invoke_3;
    v6[3] = &unk_1E7BF8CB0;
    v7 = v3;
    v8 = a2;
    v9 = a3;
    dispatch_async(MEMORY[0x1E69E96A0], v6);
  }
}

- (void)loadUpdateProgressWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  xpcConnection = [(ICCloudClient *)self xpcConnection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __57__ICCloudClient_loadUpdateProgressWithCompletionHandler___block_invoke;
  v12[3] = &unk_1E7BF77C0;
  v6 = handlerCopy;
  v13 = v6;
  v7 = [xpcConnection remoteObjectProxyWithErrorHandler:v12];
  configuration = [(ICCloudClient *)self configuration];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __57__ICCloudClient_loadUpdateProgressWithCompletionHandler___block_invoke_2;
  v10[3] = &unk_1E7BF4158;
  v11 = v6;
  v9 = v6;
  [v7 loadUpdateProgressForConfiguration:configuration completion:v10];
}

void __57__ICCloudClient_loadUpdateProgressWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v10 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "Load Update In Progress failed with error: %{public}@", buf, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __57__ICCloudClient_loadUpdateProgressWithCompletionHandler___block_invoke_146;
    block[3] = &unk_1E7BF9D20;
    v8 = v5;
    dispatch_async(v6, block);
  }
}

void __57__ICCloudClient_loadUpdateProgressWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2, float a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (v5)
  {
    v6 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v13 = v5;
      _os_log_impl(&dword_1B4491000, v6, OS_LOG_TYPE_ERROR, "Load Update In Progress failed with error: %{public}@", buf, 0xCu);
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = dispatch_get_global_queue(0, 0);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __57__ICCloudClient_loadUpdateProgressWithCompletionHandler___block_invoke_147;
    v9[3] = &unk_1E7BF4130;
    v10 = v7;
    v11 = a3;
    dispatch_async(v8, v9);
  }
}

- (void)loadIsUpdateInProgressWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  xpcConnection = [(ICCloudClient *)self xpcConnection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __61__ICCloudClient_loadIsUpdateInProgressWithCompletionHandler___block_invoke;
  v12[3] = &unk_1E7BF77C0;
  v6 = handlerCopy;
  v13 = v6;
  v7 = [xpcConnection remoteObjectProxyWithErrorHandler:v12];
  configuration = [(ICCloudClient *)self configuration];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __61__ICCloudClient_loadIsUpdateInProgressWithCompletionHandler___block_invoke_2;
  v10[3] = &unk_1E7BF4108;
  v11 = v6;
  v9 = v6;
  [v7 loadIsUpdateInProgressForConfiguration:configuration completion:v10];
}

void __61__ICCloudClient_loadIsUpdateInProgressWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v9 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "Load Update In Progress failed with error: %{public}@", buf, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __61__ICCloudClient_loadIsUpdateInProgressWithCompletionHandler___block_invoke_144;
    block[3] = &unk_1E7BF9D20;
    v7 = v5;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __61__ICCloudClient_loadIsUpdateInProgressWithCompletionHandler___block_invoke_2(uint64_t a1, char a2, char a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __61__ICCloudClient_loadIsUpdateInProgressWithCompletionHandler___block_invoke_3;
    v6[3] = &unk_1E7BF8CB0;
    v7 = v3;
    v8 = a2;
    v9 = a3;
    dispatch_async(MEMORY[0x1E69E96A0], v6);
  }
}

- (void)loadGeniusItemsForSagaID:(unint64_t)d completionHandler:(id)handler
{
  v20 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v7 = handlerCopy;
  if (d)
  {
    v8 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      dCopy = d;
      _os_log_impl(&dword_1B4491000, v8, OS_LOG_TYPE_DEFAULT, "Sending load genius items request for saga ID %llu...", buf, 0xCu);
    }

    xpcConnection = [(ICCloudClient *)self xpcConnection];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __60__ICCloudClient_loadGeniusItemsForSagaID_completionHandler___block_invoke;
    v16[3] = &unk_1E7BF77C0;
    v10 = v7;
    v17 = v10;
    v11 = [xpcConnection remoteObjectProxyWithErrorHandler:v16];
    configuration = [(ICCloudClient *)self configuration];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __60__ICCloudClient_loadGeniusItemsForSagaID_completionHandler___block_invoke_2;
    v14[3] = &unk_1E7BF59C0;
    v15 = v10;
    [v11 loadGeniusItemsForSagaID:d configuration:configuration completion:v14];
  }

  else if (handlerCopy)
  {
    v13 = [MEMORY[0x1E696ABC0] ic_cloudClientErrorWithCode:2015 userInfo:0];
    (v7)[2](v7, 0, v13);
  }
}

void __60__ICCloudClient_loadGeniusItemsForSagaID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v11 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "Load Genius Items failed with error: %{public}@", buf, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = dispatch_get_global_queue(0, 0);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __60__ICCloudClient_loadGeniusItemsForSagaID_completionHandler___block_invoke_141;
    v7[3] = &unk_1E7BF9EC8;
    v9 = v5;
    v8 = v3;
    dispatch_async(v6, v7);
  }
}

void __60__ICCloudClient_loadGeniusItemsForSagaID_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v15 = v6;
      _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_ERROR, "Load Genius Items failed with error: %{public}@", buf, 0xCu);
    }
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    v9 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __60__ICCloudClient_loadGeniusItemsForSagaID_completionHandler___block_invoke_142;
    block[3] = &unk_1E7BF9E28;
    v13 = v8;
    v11 = v5;
    v12 = v6;
    dispatch_async(v9, block);
  }
}

- (void)loadMissingArtwork
{
  xpcConnection = [(ICCloudClient *)self xpcConnection];
  v3 = [xpcConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_4240];
  configuration = [(ICCloudClient *)self configuration];
  [v3 loadMissingArtworkForConfiguration:configuration];
}

void __35__ICCloudClient_loadMissingArtwork__block_invoke(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 138543362;
    v5 = v2;
    _os_log_impl(&dword_1B4491000, v3, OS_LOG_TYPE_ERROR, "loadMissingArtwork failed with error: %{public}@", &v4, 0xCu);
  }
}

- (void)loadArtworkInfoForSubscriptionContainerPersistentIDs:(id)ds completionHandler:(id)handler
{
  dsCopy = ds;
  handlerCopy = handler;
  if (dsCopy && [dsCopy count])
  {
    xpcConnection = [(ICCloudClient *)self xpcConnection];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __88__ICCloudClient_loadArtworkInfoForSubscriptionContainerPersistentIDs_completionHandler___block_invoke;
    v14[3] = &unk_1E7BF77C0;
    v9 = handlerCopy;
    v15 = v9;
    v10 = [xpcConnection remoteObjectProxyWithErrorHandler:v14];
    configuration = [(ICCloudClient *)self configuration];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __88__ICCloudClient_loadArtworkInfoForSubscriptionContainerPersistentIDs_completionHandler___block_invoke_2;
    v12[3] = &unk_1E7BF40E0;
    v13 = v9;
    [v10 loadArtworkInfoForSubscriptionContainerPersistentIDs:dsCopy configuration:configuration completion:v12];
  }

  else if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, MEMORY[0x1E695E0F0]);
  }
}

void __88__ICCloudClient_loadArtworkInfoForSubscriptionContainerPersistentIDs_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v10 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "Load Subscription Container Artwork Info failed with error: %{public}@", buf, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __88__ICCloudClient_loadArtworkInfoForSubscriptionContainerPersistentIDs_completionHandler___block_invoke_139;
    block[3] = &unk_1E7BF9D20;
    v8 = v5;
    dispatch_async(v6, block);
  }
}

void __88__ICCloudClient_loadArtworkInfoForSubscriptionContainerPersistentIDs_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v14 = v5;
      _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_ERROR, "Load Subscription Container Artwork Info failed with error: %{public}@", buf, 0xCu);
    }
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    v9 = dispatch_get_global_queue(0, 0);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __88__ICCloudClient_loadArtworkInfoForSubscriptionContainerPersistentIDs_completionHandler___block_invoke_140;
    v10[3] = &unk_1E7BF9EC8;
    v12 = v8;
    v11 = v6;
    dispatch_async(v9, v10);
  }
}

- (void)loadArtworkInfoForSubscriptionContainerPersistentID:(unint64_t)d completionHandler:(id)handler
{
  v12[1] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:d];
  v12[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __87__ICCloudClient_loadArtworkInfoForSubscriptionContainerPersistentID_completionHandler___block_invoke;
  v10[3] = &unk_1E7BF40B8;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [(ICCloudClient *)self loadArtworkInfoForSubscriptionContainerPersistentIDs:v8 completionHandler:v10];
}

void __87__ICCloudClient_loadArtworkInfoForSubscriptionContainerPersistentID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [a2 firstObject];
    (*(v2 + 16))(v2, v3);
  }
}

- (void)loadScreenshotInfoForSubscriptionPersistentIDs:(id)ds completionHandler:(id)handler
{
  dsCopy = ds;
  handlerCopy = handler;
  if (dsCopy && [dsCopy count])
  {
    xpcConnection = [(ICCloudClient *)self xpcConnection];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __82__ICCloudClient_loadScreenshotInfoForSubscriptionPersistentIDs_completionHandler___block_invoke;
    v14[3] = &unk_1E7BF77C0;
    v9 = handlerCopy;
    v15 = v9;
    v10 = [xpcConnection remoteObjectProxyWithErrorHandler:v14];
    configuration = [(ICCloudClient *)self configuration];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __82__ICCloudClient_loadScreenshotInfoForSubscriptionPersistentIDs_completionHandler___block_invoke_2;
    v12[3] = &unk_1E7BF40E0;
    v13 = v9;
    [v10 loadScreenshotInfoForSubscriptionPersistentIDs:dsCopy configuration:configuration completion:v12];
  }

  else if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, MEMORY[0x1E695E0F0]);
  }
}

void __82__ICCloudClient_loadScreenshotInfoForSubscriptionPersistentIDs_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v10 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "Load Subscription Screenshot Artwork Info failed with error: %{public}@", buf, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __82__ICCloudClient_loadScreenshotInfoForSubscriptionPersistentIDs_completionHandler___block_invoke_137;
    block[3] = &unk_1E7BF9D20;
    v8 = v5;
    dispatch_async(v6, block);
  }
}

void __82__ICCloudClient_loadScreenshotInfoForSubscriptionPersistentIDs_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v14 = v5;
      _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_ERROR, "Load Subscription Screenshot Artwork Info failed with error: %{public}@", buf, 0xCu);
    }
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    v9 = dispatch_get_global_queue(0, 0);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __82__ICCloudClient_loadScreenshotInfoForSubscriptionPersistentIDs_completionHandler___block_invoke_138;
    v10[3] = &unk_1E7BF9EC8;
    v12 = v8;
    v11 = v6;
    dispatch_async(v9, v10);
  }
}

- (void)loadScreenshotInfoForSubscriptionPersistentID:(unint64_t)d completionHandler:(id)handler
{
  v12[1] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:d];
  v12[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __81__ICCloudClient_loadScreenshotInfoForSubscriptionPersistentID_completionHandler___block_invoke;
  v10[3] = &unk_1E7BF40B8;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [(ICCloudClient *)self loadScreenshotInfoForSubscriptionPersistentIDs:v8 completionHandler:v10];
}

void __81__ICCloudClient_loadScreenshotInfoForSubscriptionPersistentID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [a2 firstObject];
    (*(v2 + 16))(v2, v3);
  }
}

- (void)loadArtworkInfoForSubscriptionItemPersistentIDs:(id)ds completionHandler:(id)handler
{
  dsCopy = ds;
  handlerCopy = handler;
  if (dsCopy && [dsCopy count])
  {
    xpcConnection = [(ICCloudClient *)self xpcConnection];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __83__ICCloudClient_loadArtworkInfoForSubscriptionItemPersistentIDs_completionHandler___block_invoke;
    v14[3] = &unk_1E7BF77C0;
    v9 = handlerCopy;
    v15 = v9;
    v10 = [xpcConnection remoteObjectProxyWithErrorHandler:v14];
    configuration = [(ICCloudClient *)self configuration];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __83__ICCloudClient_loadArtworkInfoForSubscriptionItemPersistentIDs_completionHandler___block_invoke_2;
    v12[3] = &unk_1E7BF40E0;
    v13 = v9;
    [v10 loadArtworkInfoForSubscriptionItemPersistentIDs:dsCopy configuration:configuration completion:v12];
  }

  else if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, MEMORY[0x1E695E0F0]);
  }
}

void __83__ICCloudClient_loadArtworkInfoForSubscriptionItemPersistentIDs_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v10 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "Load Subscription Item Artwork Info failed with error: %{public}@", buf, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __83__ICCloudClient_loadArtworkInfoForSubscriptionItemPersistentIDs_completionHandler___block_invoke_135;
    block[3] = &unk_1E7BF9D20;
    v8 = v5;
    dispatch_async(v6, block);
  }
}

void __83__ICCloudClient_loadArtworkInfoForSubscriptionItemPersistentIDs_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v14 = v5;
      _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_ERROR, "Load Subscription Item Artwork Info failed with error: %{public}@", buf, 0xCu);
    }
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    v9 = dispatch_get_global_queue(0, 0);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __83__ICCloudClient_loadArtworkInfoForSubscriptionItemPersistentIDs_completionHandler___block_invoke_136;
    v10[3] = &unk_1E7BF9EC8;
    v12 = v8;
    v11 = v6;
    dispatch_async(v9, v10);
  }
}

- (void)loadArtworkInfoForSubscriptionItemPersistentID:(unint64_t)d completionHandler:(id)handler
{
  v12[1] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:d];
  v12[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __82__ICCloudClient_loadArtworkInfoForSubscriptionItemPersistentID_completionHandler___block_invoke;
  v10[3] = &unk_1E7BF40B8;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [(ICCloudClient *)self loadArtworkInfoForSubscriptionItemPersistentIDs:v8 completionHandler:v10];
}

void __82__ICCloudClient_loadArtworkInfoForSubscriptionItemPersistentID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [a2 firstObject];
    (*(v2 + 16))(v2, v3);
  }
}

- (void)loadScreenshotInfoForSagaIDs:(id)ds completionHandler:(id)handler
{
  dsCopy = ds;
  handlerCopy = handler;
  if (dsCopy && [dsCopy count])
  {
    xpcConnection = [(ICCloudClient *)self xpcConnection];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __64__ICCloudClient_loadScreenshotInfoForSagaIDs_completionHandler___block_invoke;
    v14[3] = &unk_1E7BF77C0;
    v9 = handlerCopy;
    v15 = v9;
    v10 = [xpcConnection remoteObjectProxyWithErrorHandler:v14];
    configuration = [(ICCloudClient *)self configuration];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __64__ICCloudClient_loadScreenshotInfoForSagaIDs_completionHandler___block_invoke_2;
    v12[3] = &unk_1E7BF40E0;
    v13 = v9;
    [v10 loadScreenshotInfoForSagaIDs:dsCopy configuration:configuration completion:v12];
  }

  else if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, MEMORY[0x1E695E0F0]);
  }
}

void __64__ICCloudClient_loadScreenshotInfoForSagaIDs_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v10 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "Load Container Artwork Info failed with error: %{public}@", buf, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __64__ICCloudClient_loadScreenshotInfoForSagaIDs_completionHandler___block_invoke_133;
    block[3] = &unk_1E7BF9D20;
    v8 = v5;
    dispatch_async(v6, block);
  }
}

void __64__ICCloudClient_loadScreenshotInfoForSagaIDs_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v14 = v5;
      _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_ERROR, "Load Container Artwork Info failed with error: %{public}@", buf, 0xCu);
    }
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    v9 = dispatch_get_global_queue(0, 0);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __64__ICCloudClient_loadScreenshotInfoForSagaIDs_completionHandler___block_invoke_134;
    v10[3] = &unk_1E7BF9EC8;
    v12 = v8;
    v11 = v6;
    dispatch_async(v9, v10);
  }
}

- (void)loadScreenshotInfoForSagaID:(unint64_t)d completionHandler:(id)handler
{
  v12[1] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:d];
  v12[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __63__ICCloudClient_loadScreenshotInfoForSagaID_completionHandler___block_invoke;
  v10[3] = &unk_1E7BF40B8;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [(ICCloudClient *)self loadScreenshotInfoForSagaIDs:v8 completionHandler:v10];
}

void __63__ICCloudClient_loadScreenshotInfoForSagaID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [a2 firstObject];
    (*(v2 + 16))(v2, v3);
  }
}

- (void)loadArtworkInfoForContainerSagaIDs:(id)ds completionHandler:(id)handler
{
  dsCopy = ds;
  handlerCopy = handler;
  if (dsCopy && [dsCopy count])
  {
    xpcConnection = [(ICCloudClient *)self xpcConnection];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __70__ICCloudClient_loadArtworkInfoForContainerSagaIDs_completionHandler___block_invoke;
    v14[3] = &unk_1E7BF77C0;
    v9 = handlerCopy;
    v15 = v9;
    v10 = [xpcConnection remoteObjectProxyWithErrorHandler:v14];
    configuration = [(ICCloudClient *)self configuration];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __70__ICCloudClient_loadArtworkInfoForContainerSagaIDs_completionHandler___block_invoke_2;
    v12[3] = &unk_1E7BF40E0;
    v13 = v9;
    [v10 loadArtworkInfoForContainerSagaIDs:dsCopy configuration:configuration completion:v12];
  }

  else if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, MEMORY[0x1E695E0F0]);
  }
}

void __70__ICCloudClient_loadArtworkInfoForContainerSagaIDs_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v10 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "Load Container Artwork Info failed with error: %{public}@", buf, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __70__ICCloudClient_loadArtworkInfoForContainerSagaIDs_completionHandler___block_invoke_131;
    block[3] = &unk_1E7BF9D20;
    v8 = v5;
    dispatch_async(v6, block);
  }
}

void __70__ICCloudClient_loadArtworkInfoForContainerSagaIDs_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v14 = v5;
      _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_ERROR, "Load Container Artwork Info failed with error: %{public}@", buf, 0xCu);
    }
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    v9 = dispatch_get_global_queue(0, 0);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __70__ICCloudClient_loadArtworkInfoForContainerSagaIDs_completionHandler___block_invoke_132;
    v10[3] = &unk_1E7BF9EC8;
    v12 = v8;
    v11 = v6;
    dispatch_async(v9, v10);
  }
}

- (void)loadArtworkInfoForContainerSagaID:(unint64_t)d completionHandler:(id)handler
{
  v12[1] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:d];
  v12[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __69__ICCloudClient_loadArtworkInfoForContainerSagaID_completionHandler___block_invoke;
  v10[3] = &unk_1E7BF40B8;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [(ICCloudClient *)self loadArtworkInfoForContainerSagaIDs:v8 completionHandler:v10];
}

void __69__ICCloudClient_loadArtworkInfoForContainerSagaID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [a2 firstObject];
    (*(v2 + 16))(v2, v3);
  }
}

- (void)loadArtworkInfoForSagaIDs:(id)ds completionHandler:(id)handler
{
  dsCopy = ds;
  handlerCopy = handler;
  if (dsCopy && [dsCopy count])
  {
    xpcConnection = [(ICCloudClient *)self xpcConnection];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __61__ICCloudClient_loadArtworkInfoForSagaIDs_completionHandler___block_invoke;
    v14[3] = &unk_1E7BF77C0;
    v9 = handlerCopy;
    v15 = v9;
    v10 = [xpcConnection remoteObjectProxyWithErrorHandler:v14];
    configuration = [(ICCloudClient *)self configuration];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __61__ICCloudClient_loadArtworkInfoForSagaIDs_completionHandler___block_invoke_2;
    v12[3] = &unk_1E7BF40E0;
    v13 = v9;
    [v10 loadArtworkInfoForSagaIDs:dsCopy configuration:configuration completion:v12];
  }

  else if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, MEMORY[0x1E695E0F0]);
  }
}

void __61__ICCloudClient_loadArtworkInfoForSagaIDs_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v10 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "Load Artwork Info failed with error: %{public}@", buf, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __61__ICCloudClient_loadArtworkInfoForSagaIDs_completionHandler___block_invoke_129;
    block[3] = &unk_1E7BF9D20;
    v8 = v5;
    dispatch_async(v6, block);
  }
}

void __61__ICCloudClient_loadArtworkInfoForSagaIDs_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v14 = v5;
      _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_ERROR, "Load Artwork Info failed with error: %{public}@", buf, 0xCu);
    }
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    v9 = dispatch_get_global_queue(0, 0);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __61__ICCloudClient_loadArtworkInfoForSagaIDs_completionHandler___block_invoke_130;
    v10[3] = &unk_1E7BF9EC8;
    v12 = v8;
    v11 = v6;
    dispatch_async(v9, v10);
  }
}

- (void)loadArtworkInfoForSagaID:(unint64_t)d completionHandler:(id)handler
{
  v12[1] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:d];
  v12[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __60__ICCloudClient_loadArtworkInfoForSagaID_completionHandler___block_invoke;
  v10[3] = &unk_1E7BF40B8;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [(ICCloudClient *)self loadArtworkInfoForSagaIDs:v8 completionHandler:v10];
}

void __60__ICCloudClient_loadArtworkInfoForSagaID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [a2 firstObject];
    (*(v2 + 16))(v2, v3);
  }
}

- (void)loadScreenshotInfoForPurchaseHistoryIDs:(id)ds completionHandler:(id)handler
{
  dsCopy = ds;
  handlerCopy = handler;
  if (dsCopy && [dsCopy count])
  {
    xpcConnection = [(ICCloudClient *)self xpcConnection];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __75__ICCloudClient_loadScreenshotInfoForPurchaseHistoryIDs_completionHandler___block_invoke;
    v14[3] = &unk_1E7BF77C0;
    v9 = handlerCopy;
    v15 = v9;
    v10 = [xpcConnection remoteObjectProxyWithErrorHandler:v14];
    configuration = [(ICCloudClient *)self configuration];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __75__ICCloudClient_loadScreenshotInfoForPurchaseHistoryIDs_completionHandler___block_invoke_2;
    v12[3] = &unk_1E7BF40E0;
    v13 = v9;
    [v10 loadScreenshotInfoForPurchaseHistoryIDs:dsCopy configuration:configuration completion:v12];
  }

  else if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, MEMORY[0x1E695E0F0]);
  }
}

void __75__ICCloudClient_loadScreenshotInfoForPurchaseHistoryIDs_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v10 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "Load Artwork Info for purchase history screenshot failed with error: %{public}@", buf, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __75__ICCloudClient_loadScreenshotInfoForPurchaseHistoryIDs_completionHandler___block_invoke_127;
    block[3] = &unk_1E7BF9D20;
    v8 = v5;
    dispatch_async(v6, block);
  }
}

void __75__ICCloudClient_loadScreenshotInfoForPurchaseHistoryIDs_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v14 = v5;
      _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_ERROR, "Load Artwork Info for purchase history screenshot failed with error: %{public}@", buf, 0xCu);
    }
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    v9 = dispatch_get_global_queue(0, 0);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __75__ICCloudClient_loadScreenshotInfoForPurchaseHistoryIDs_completionHandler___block_invoke_128;
    v10[3] = &unk_1E7BF9EC8;
    v12 = v8;
    v11 = v6;
    dispatch_async(v9, v10);
  }
}

- (void)loadScreenshotInfoForPurchaseHistoryID:(unint64_t)d completionHandler:(id)handler
{
  v12[1] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:d];
  v12[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __74__ICCloudClient_loadScreenshotInfoForPurchaseHistoryID_completionHandler___block_invoke;
  v10[3] = &unk_1E7BF40B8;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [(ICCloudClient *)self loadScreenshotInfoForPurchaseHistoryIDs:v8 completionHandler:v10];
}

void __74__ICCloudClient_loadScreenshotInfoForPurchaseHistoryID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [a2 firstObject];
    (*(v2 + 16))(v2, v3);
  }
}

- (void)loadArtworkInfoForPurchaseHistoryIDs:(id)ds completionHandler:(id)handler
{
  dsCopy = ds;
  handlerCopy = handler;
  if (dsCopy && [dsCopy count])
  {
    xpcConnection = [(ICCloudClient *)self xpcConnection];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __72__ICCloudClient_loadArtworkInfoForPurchaseHistoryIDs_completionHandler___block_invoke;
    v14[3] = &unk_1E7BF77C0;
    v9 = handlerCopy;
    v15 = v9;
    v10 = [xpcConnection remoteObjectProxyWithErrorHandler:v14];
    configuration = [(ICCloudClient *)self configuration];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __72__ICCloudClient_loadArtworkInfoForPurchaseHistoryIDs_completionHandler___block_invoke_2;
    v12[3] = &unk_1E7BF40E0;
    v13 = v9;
    [v10 loadArtworkInfoForPurchaseHistoryIDs:dsCopy configuration:configuration completion:v12];
  }

  else if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, MEMORY[0x1E695E0F0]);
  }
}

void __72__ICCloudClient_loadArtworkInfoForPurchaseHistoryIDs_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v10 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "Load Artwork Info failed with error: %{public}@", buf, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __72__ICCloudClient_loadArtworkInfoForPurchaseHistoryIDs_completionHandler___block_invoke_124;
    block[3] = &unk_1E7BF9D20;
    v8 = v5;
    dispatch_async(v6, block);
  }
}

void __72__ICCloudClient_loadArtworkInfoForPurchaseHistoryIDs_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v14 = v5;
      _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_ERROR, "Load Artwork Info failed with error: %{public}@", buf, 0xCu);
    }
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    v9 = dispatch_get_global_queue(0, 0);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __72__ICCloudClient_loadArtworkInfoForPurchaseHistoryIDs_completionHandler___block_invoke_125;
    v10[3] = &unk_1E7BF9EC8;
    v12 = v8;
    v11 = v6;
    dispatch_async(v9, v10);
  }
}

- (void)loadArtworkInfoForPurchaseHistoryID:(unint64_t)d completionHandler:(id)handler
{
  v12[1] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:d];
  v12[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __71__ICCloudClient_loadArtworkInfoForPurchaseHistoryID_completionHandler___block_invoke;
  v10[3] = &unk_1E7BF40B8;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [(ICCloudClient *)self loadArtworkInfoForPurchaseHistoryIDs:v8 completionHandler:v10];
}

void __71__ICCloudClient_loadArtworkInfoForPurchaseHistoryID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [a2 firstObject];
    (*(v2 + 16))(v2, v3);
  }
}

- (void)deprioritizeAlbumArtistHeroImageForPersistentID:(int64_t)d
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    dCopy = d;
    _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_DEFAULT, "Sending request to deprioritize album artist hero artwork import with persistent ID %lld...", buf, 0xCu);
  }

  xpcConnection = [(ICCloudClient *)self xpcConnection];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __65__ICCloudClient_deprioritizeAlbumArtistHeroImageForPersistentID___block_invoke;
  v9[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v9[4] = d;
  v7 = [xpcConnection remoteObjectProxyWithErrorHandler:v9];
  configuration = [(ICCloudClient *)self configuration];
  [v7 deprioritizeAlbumArtistHeroImageForPersistentID:d configuration:configuration];
}

void __65__ICCloudClient_deprioritizeAlbumArtistHeroImageForPersistentID___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = 134218242;
    v7 = v5;
    v8 = 2114;
    v9 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "Failed to deprioritize album artist hero artwork import with persistent ID %lld with error: %{public}@", &v6, 0x16u);
  }
}

- (void)deprioritizeArtistHeroImageForPersistentID:(int64_t)d
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    dCopy = d;
    _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_DEFAULT, "Sending request to deprioritize artist hero artwork import with persistent ID %lld...", buf, 0xCu);
  }

  xpcConnection = [(ICCloudClient *)self xpcConnection];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __60__ICCloudClient_deprioritizeArtistHeroImageForPersistentID___block_invoke;
  v9[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v9[4] = d;
  v7 = [xpcConnection remoteObjectProxyWithErrorHandler:v9];
  configuration = [(ICCloudClient *)self configuration];
  [v7 deprioritizeArtistHeroImageForPersistentID:d configuration:configuration];
}

void __60__ICCloudClient_deprioritizeArtistHeroImageForPersistentID___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = 134218242;
    v7 = v5;
    v8 = 2114;
    v9 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "Failed to deprioritize artist hero artwork import with persistent ID %lld with error: %{public}@", &v6, 0x16u);
  }
}

- (void)deprioritizeSubscriptionContainerArtworkForPersistentID:(int64_t)d
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    dCopy = d;
    _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_DEFAULT, "Sending request to deprioritize subscription container artwork import with persistent ID %lld...", buf, 0xCu);
  }

  xpcConnection = [(ICCloudClient *)self xpcConnection];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __73__ICCloudClient_deprioritizeSubscriptionContainerArtworkForPersistentID___block_invoke;
  v9[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v9[4] = d;
  v7 = [xpcConnection remoteObjectProxyWithErrorHandler:v9];
  configuration = [(ICCloudClient *)self configuration];
  [v7 deprioritizeSubscriptionContainerArtworkForPersistentID:d configuration:configuration];
}

void __73__ICCloudClient_deprioritizeSubscriptionContainerArtworkForPersistentID___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = 134218242;
    v7 = v5;
    v8 = 2114;
    v9 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "Failed to deprioritize subscription container artwork import with persistent ID %lld with error: %{public}@", &v6, 0x16u);
  }
}

- (void)deprioritizeSubscriptionScreenshotForPersistentID:(int64_t)d
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    dCopy = d;
    _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_DEFAULT, "Sending request to deprioritize subscription screenshot import with persistent ID %lld...", buf, 0xCu);
  }

  xpcConnection = [(ICCloudClient *)self xpcConnection];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __67__ICCloudClient_deprioritizeSubscriptionScreenshotForPersistentID___block_invoke;
  v9[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v9[4] = d;
  v7 = [xpcConnection remoteObjectProxyWithErrorHandler:v9];
  configuration = [(ICCloudClient *)self configuration];
  [v7 deprioritizeSubscriptionScreenshotForPersistentID:d configuration:configuration];
}

void __67__ICCloudClient_deprioritizeSubscriptionScreenshotForPersistentID___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = 134218242;
    v7 = v5;
    v8 = 2114;
    v9 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "Failed to deprioritize subscription screenshot import with persistent ID %lld with error: %{public}@", &v6, 0x16u);
  }
}

- (void)deprioritizeSubscriptionItemArtworkForPersistentID:(int64_t)d
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    dCopy = d;
    _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_DEFAULT, "Sending request to deprioritize subscription item artwork import with persistent ID %lld...", buf, 0xCu);
  }

  xpcConnection = [(ICCloudClient *)self xpcConnection];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __68__ICCloudClient_deprioritizeSubscriptionItemArtworkForPersistentID___block_invoke;
  v9[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v9[4] = d;
  v7 = [xpcConnection remoteObjectProxyWithErrorHandler:v9];
  configuration = [(ICCloudClient *)self configuration];
  [v7 deprioritizeSubscriptionItemArtworkForPersistentID:d configuration:configuration];
}

void __68__ICCloudClient_deprioritizeSubscriptionItemArtworkForPersistentID___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = 134218242;
    v7 = v5;
    v8 = 2114;
    v9 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "Failed to deprioritize subscription item artwork import with persistent ID %lld with error: %{public}@", &v6, 0x16u);
  }
}

- (void)deprioritizeContainerArtworkForSagaID:(unint64_t)d
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    dCopy = d;
    _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_DEFAULT, "Sending request to deprioritize container artwork import with saga ID %llu...", buf, 0xCu);
  }

  xpcConnection = [(ICCloudClient *)self xpcConnection];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __55__ICCloudClient_deprioritizeContainerArtworkForSagaID___block_invoke;
  v9[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v9[4] = d;
  v7 = [xpcConnection remoteObjectProxyWithErrorHandler:v9];
  configuration = [(ICCloudClient *)self configuration];
  [v7 deprioritizeContainerArtworkForSagaID:d configuration:configuration];
}

void __55__ICCloudClient_deprioritizeContainerArtworkForSagaID___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = 134218242;
    v7 = v5;
    v8 = 2114;
    v9 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "Failed to deprioritize container artwork import with saga ID %llu with error: %{public}@", &v6, 0x16u);
  }
}

- (void)deprioritizeScreenshotForSagaID:(unint64_t)d
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    dCopy = d;
    _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_DEFAULT, "Sending request to deprioritize screenshot import with saga ID %llu...", buf, 0xCu);
  }

  xpcConnection = [(ICCloudClient *)self xpcConnection];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __49__ICCloudClient_deprioritizeScreenshotForSagaID___block_invoke;
  v9[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v9[4] = d;
  v7 = [xpcConnection remoteObjectProxyWithErrorHandler:v9];
  configuration = [(ICCloudClient *)self configuration];
  [v7 deprioritizeScreenshotForSagaID:d configuration:configuration];
}

void __49__ICCloudClient_deprioritizeScreenshotForSagaID___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = 134218242;
    v7 = v5;
    v8 = 2114;
    v9 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "Failed to deprioritize screenshot import with saga ID %llu with error: %{public}@", &v6, 0x16u);
  }
}

- (void)deprioritizeItemArtworkForSagaID:(unint64_t)d
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    dCopy = d;
    _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_DEFAULT, "Sending request to deprioritize item artwork import with saga ID %llu...", buf, 0xCu);
  }

  xpcConnection = [(ICCloudClient *)self xpcConnection];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __50__ICCloudClient_deprioritizeItemArtworkForSagaID___block_invoke;
  v9[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v9[4] = d;
  v7 = [xpcConnection remoteObjectProxyWithErrorHandler:v9];
  configuration = [(ICCloudClient *)self configuration];
  [v7 deprioritizeItemArtworkForSagaID:d configuration:configuration];
}

void __50__ICCloudClient_deprioritizeItemArtworkForSagaID___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = 134218242;
    v7 = v5;
    v8 = 2114;
    v9 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "Failed to deprioritize item artwork import with saga ID %llu with error: %{public}@", &v6, 0x16u);
  }
}

- (void)deprioritizeScreenshotForPurchaseHistoryID:(unint64_t)d
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    dCopy = d;
    _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_DEFAULT, "Sending request to deprioritize screenshot artwork import with purchase history ID %llu...", buf, 0xCu);
  }

  xpcConnection = [(ICCloudClient *)self xpcConnection];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __60__ICCloudClient_deprioritizeScreenshotForPurchaseHistoryID___block_invoke;
  v9[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v9[4] = d;
  v7 = [xpcConnection remoteObjectProxyWithErrorHandler:v9];
  configuration = [(ICCloudClient *)self configuration];
  [v7 deprioritizeScreenshotForPurchaseHistoryID:d configuration:configuration];
}

void __60__ICCloudClient_deprioritizeScreenshotForPurchaseHistoryID___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = 134218242;
    v7 = v5;
    v8 = 2114;
    v9 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "Failed to deprioritize screenshot artwork import with purchase history ID %llu with error: %{public}@", &v6, 0x16u);
  }
}

- (void)deprioritizeItemArtworkForPurchaseHistoryID:(unint64_t)d
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    dCopy = d;
    _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_DEFAULT, "Sending request to deprioritize item artwork import with purchase history ID %llu...", buf, 0xCu);
  }

  xpcConnection = [(ICCloudClient *)self xpcConnection];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __61__ICCloudClient_deprioritizeItemArtworkForPurchaseHistoryID___block_invoke;
  v9[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v9[4] = d;
  v7 = [xpcConnection remoteObjectProxyWithErrorHandler:v9];
  configuration = [(ICCloudClient *)self configuration];
  [v7 deprioritizeItemArtworkForPurchaseHistoryID:d configuration:configuration];
}

void __61__ICCloudClient_deprioritizeItemArtworkForPurchaseHistoryID___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = 134218242;
    v7 = v5;
    v8 = 2114;
    v9 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "Failed to deprioritize item artwork import with purchase history ID %llu with error: %{public}@", &v6, 0x16u);
  }
}

- (void)importAlbumArtistHeroImageForPersistentID:(int64_t)d completionHandler:(id)handler
{
  v19 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v7 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    dCopy = d;
    _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_DEFAULT, "Sending request to import album artist hero image for item persistent ID %lld...", buf, 0xCu);
  }

  xpcConnection = [(ICCloudClient *)self xpcConnection];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __77__ICCloudClient_importAlbumArtistHeroImageForPersistentID_completionHandler___block_invoke;
  v15[3] = &unk_1E7BF77C0;
  v9 = handlerCopy;
  v16 = v9;
  v10 = [xpcConnection remoteObjectProxyWithErrorHandler:v15];
  configuration = [(ICCloudClient *)self configuration];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __77__ICCloudClient_importAlbumArtistHeroImageForPersistentID_completionHandler___block_invoke_120;
  v13[3] = &unk_1E7BF77C0;
  v14 = v9;
  v12 = v9;
  [v10 importAlbumArtistHeroImageForPersistentID:d configuration:configuration completion:v13];
}

void __77__ICCloudClient_importAlbumArtistHeroImageForPersistentID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "Import Album Artist Hero Artwork failed with error: %{public}@", &v6, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

void __77__ICCloudClient_importAlbumArtistHeroImageForPersistentID_completionHandler___block_invoke_120(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 138543362;
      v7 = v3;
      _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "Import Album Artist Hero Artwork failed with error: %{public}@", &v6, 0xCu);
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

- (void)importArtistHeroImageForPersistentID:(int64_t)d completionHandler:(id)handler
{
  v19 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v7 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    dCopy = d;
    _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_DEFAULT, "Sending request to artist hero image hero for item persistent ID %lld...", buf, 0xCu);
  }

  xpcConnection = [(ICCloudClient *)self xpcConnection];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __72__ICCloudClient_importArtistHeroImageForPersistentID_completionHandler___block_invoke;
  v15[3] = &unk_1E7BF77C0;
  v9 = handlerCopy;
  v16 = v9;
  v10 = [xpcConnection remoteObjectProxyWithErrorHandler:v15];
  configuration = [(ICCloudClient *)self configuration];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __72__ICCloudClient_importArtistHeroImageForPersistentID_completionHandler___block_invoke_119;
  v13[3] = &unk_1E7BF77C0;
  v14 = v9;
  v12 = v9;
  [v10 importArtistHeroImageForPersistentID:d configuration:configuration completion:v13];
}

void __72__ICCloudClient_importArtistHeroImageForPersistentID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "Import Artist Hero Artwork failed with error: %{public}@", &v6, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

void __72__ICCloudClient_importArtistHeroImageForPersistentID_completionHandler___block_invoke_119(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 138543362;
      v7 = v3;
      _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "Import Artist Hero Artwork failed with error: %{public}@", &v6, 0xCu);
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

- (void)importSubscriptionContainerArtworkForPersistentID:(int64_t)d completionHandler:(id)handler
{
  v19 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v7 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    dCopy = d;
    _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_DEFAULT, "Sending request to import subscription artwork for container persistent ID %lld...", buf, 0xCu);
  }

  xpcConnection = [(ICCloudClient *)self xpcConnection];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __85__ICCloudClient_importSubscriptionContainerArtworkForPersistentID_completionHandler___block_invoke;
  v15[3] = &unk_1E7BF77C0;
  v9 = handlerCopy;
  v16 = v9;
  v10 = [xpcConnection remoteObjectProxyWithErrorHandler:v15];
  configuration = [(ICCloudClient *)self configuration];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __85__ICCloudClient_importSubscriptionContainerArtworkForPersistentID_completionHandler___block_invoke_118;
  v13[3] = &unk_1E7BF77C0;
  v14 = v9;
  v12 = v9;
  [v10 importSubscriptionContainerArtworkForPersistentID:d configuration:configuration completion:v13];
}

void __85__ICCloudClient_importSubscriptionContainerArtworkForPersistentID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "Import Subscription Container Artwork with error: %{public}@", &v6, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

void __85__ICCloudClient_importSubscriptionContainerArtworkForPersistentID_completionHandler___block_invoke_118(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 138543362;
      v7 = v3;
      _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "Import Subscription Container Artwork with error: %{public}@", &v6, 0xCu);
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

- (void)importSubscriptionScreenshotForPersistentID:(int64_t)d completionHandler:(id)handler
{
  v19 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v7 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    dCopy = d;
    _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_DEFAULT, "Sending request to import subscription screenshot for item persistent ID %lld...", buf, 0xCu);
  }

  xpcConnection = [(ICCloudClient *)self xpcConnection];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __79__ICCloudClient_importSubscriptionScreenshotForPersistentID_completionHandler___block_invoke;
  v15[3] = &unk_1E7BF77C0;
  v9 = handlerCopy;
  v16 = v9;
  v10 = [xpcConnection remoteObjectProxyWithErrorHandler:v15];
  configuration = [(ICCloudClient *)self configuration];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __79__ICCloudClient_importSubscriptionScreenshotForPersistentID_completionHandler___block_invoke_117;
  v13[3] = &unk_1E7BF77C0;
  v14 = v9;
  v12 = v9;
  [v10 importSubscriptionScreenshotForPersistentID:d configuration:configuration completion:v13];
}

void __79__ICCloudClient_importSubscriptionScreenshotForPersistentID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "Import Subscription Screenshot failed with error: %{public}@", &v6, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

void __79__ICCloudClient_importSubscriptionScreenshotForPersistentID_completionHandler___block_invoke_117(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 138543362;
      v7 = v3;
      _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "Import Subscription Screenshot failed with error: %{public}@", &v6, 0xCu);
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

- (void)importSubscriptionItemArtworkForPersistentID:(int64_t)d completionHandler:(id)handler
{
  v19 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v7 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    dCopy = d;
    _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_DEFAULT, "Sending request to import subscription artwork for item persistent ID %lld...", buf, 0xCu);
  }

  xpcConnection = [(ICCloudClient *)self xpcConnection];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __80__ICCloudClient_importSubscriptionItemArtworkForPersistentID_completionHandler___block_invoke;
  v15[3] = &unk_1E7BF77C0;
  v9 = handlerCopy;
  v16 = v9;
  v10 = [xpcConnection remoteObjectProxyWithErrorHandler:v15];
  configuration = [(ICCloudClient *)self configuration];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __80__ICCloudClient_importSubscriptionItemArtworkForPersistentID_completionHandler___block_invoke_116;
  v13[3] = &unk_1E7BF77C0;
  v14 = v9;
  v12 = v9;
  [v10 importSubscriptionItemArtworkForPersistentID:d configuration:configuration completion:v13];
}

void __80__ICCloudClient_importSubscriptionItemArtworkForPersistentID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "Import Subscription Item Artwork failed with error: %{public}@", &v6, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

void __80__ICCloudClient_importSubscriptionItemArtworkForPersistentID_completionHandler___block_invoke_116(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 138543362;
      v7 = v3;
      _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "Import Subscription Item Artwork failed with error: %{public}@", &v6, 0xCu);
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

- (void)importContainerArtworkForSagaID:(unint64_t)d artworkVariantType:(int64_t)type completionHandler:(id)handler
{
  v23 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v9 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    dCopy = d;
    v21 = 2048;
    typeCopy = type;
    _os_log_impl(&dword_1B4491000, v9, OS_LOG_TYPE_DEFAULT, "Sending request to import container artwork for saga ID %llu and variant %ld...", buf, 0x16u);
  }

  xpcConnection = [(ICCloudClient *)self xpcConnection];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __86__ICCloudClient_importContainerArtworkForSagaID_artworkVariantType_completionHandler___block_invoke;
  v17[3] = &unk_1E7BF77C0;
  v11 = handlerCopy;
  v18 = v11;
  v12 = [xpcConnection remoteObjectProxyWithErrorHandler:v17];
  configuration = [(ICCloudClient *)self configuration];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __86__ICCloudClient_importContainerArtworkForSagaID_artworkVariantType_completionHandler___block_invoke_115;
  v15[3] = &unk_1E7BF77C0;
  v16 = v11;
  v14 = v11;
  [v12 importContainerArtworkForSagaID:d artworkVariantType:type configuration:configuration completion:v15];
}

void __86__ICCloudClient_importContainerArtworkForSagaID_artworkVariantType_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "Import Container Artwork failed with error: %{public}@", &v6, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

void __86__ICCloudClient_importContainerArtworkForSagaID_artworkVariantType_completionHandler___block_invoke_115(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 138543362;
      v7 = v3;
      _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "Import Container Artwork failed with error: %{public}@", &v6, 0xCu);
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

- (void)importContainerArtworkForSagaID:(unint64_t)d completionHandler:(id)handler
{
  v19 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v7 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    dCopy = d;
    _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_DEFAULT, "Sending request to import container artwork for saga ID %llu...", buf, 0xCu);
  }

  xpcConnection = [(ICCloudClient *)self xpcConnection];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __67__ICCloudClient_importContainerArtworkForSagaID_completionHandler___block_invoke;
  v15[3] = &unk_1E7BF77C0;
  v9 = handlerCopy;
  v16 = v9;
  v10 = [xpcConnection remoteObjectProxyWithErrorHandler:v15];
  configuration = [(ICCloudClient *)self configuration];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __67__ICCloudClient_importContainerArtworkForSagaID_completionHandler___block_invoke_114;
  v13[3] = &unk_1E7BF77C0;
  v14 = v9;
  v12 = v9;
  [v10 importContainerArtworkForSagaID:d configuration:configuration completion:v13];
}

void __67__ICCloudClient_importContainerArtworkForSagaID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "Import Container Artwork failed with error: %{public}@", &v6, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

void __67__ICCloudClient_importContainerArtworkForSagaID_completionHandler___block_invoke_114(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 138543362;
      v7 = v3;
      _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "Import Container Artwork failed with error: %{public}@", &v6, 0xCu);
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

- (void)importScreenshotForSagaID:(unint64_t)d completionHandler:(id)handler
{
  v19 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v7 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    dCopy = d;
    _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_DEFAULT, "Sending request to import screenshot for saga ID %llu...", buf, 0xCu);
  }

  xpcConnection = [(ICCloudClient *)self xpcConnection];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __61__ICCloudClient_importScreenshotForSagaID_completionHandler___block_invoke;
  v15[3] = &unk_1E7BF77C0;
  v9 = handlerCopy;
  v16 = v9;
  v10 = [xpcConnection remoteObjectProxyWithErrorHandler:v15];
  configuration = [(ICCloudClient *)self configuration];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __61__ICCloudClient_importScreenshotForSagaID_completionHandler___block_invoke_113;
  v13[3] = &unk_1E7BF77C0;
  v14 = v9;
  v12 = v9;
  [v10 importScreenshotForSagaID:d configuration:configuration completion:v13];
}

void __61__ICCloudClient_importScreenshotForSagaID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "Import Cloud Screenshot failed with error: %{public}@", &v6, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

void __61__ICCloudClient_importScreenshotForSagaID_completionHandler___block_invoke_113(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 138543362;
      v7 = v3;
      _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "Import Cloud Screenshot failed with error: %{public}@", &v6, 0xCu);
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

- (void)importItemArtworkForSagaID:(unint64_t)d completionHandler:(id)handler
{
  v19 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v7 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    dCopy = d;
    _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_DEFAULT, "Sending request to import item artwork for saga ID %llu...", buf, 0xCu);
  }

  xpcConnection = [(ICCloudClient *)self xpcConnection];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __62__ICCloudClient_importItemArtworkForSagaID_completionHandler___block_invoke;
  v15[3] = &unk_1E7BF77C0;
  v9 = handlerCopy;
  v16 = v9;
  v10 = [xpcConnection remoteObjectProxyWithErrorHandler:v15];
  configuration = [(ICCloudClient *)self configuration];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __62__ICCloudClient_importItemArtworkForSagaID_completionHandler___block_invoke_112;
  v13[3] = &unk_1E7BF77C0;
  v14 = v9;
  v12 = v9;
  [v10 importItemArtworkForSagaID:d configuration:configuration completion:v13];
}

void __62__ICCloudClient_importItemArtworkForSagaID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "Import Item Artwork failed with error: %{public}@", &v6, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

void __62__ICCloudClient_importItemArtworkForSagaID_completionHandler___block_invoke_112(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 138543362;
      v7 = v3;
      _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "Import Item Artwork failed with error: %{public}@", &v6, 0xCu);
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

- (void)importScreenshotForPurchaseHistoryID:(unint64_t)d completionHandler:(id)handler
{
  v22 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v7 = +[ICCloudAvailabilityController sharedController];
  shouldProhibitVideosActionForCurrentNetworkConditions = [v7 shouldProhibitVideosActionForCurrentNetworkConditions];

  v9 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (!shouldProhibitVideosActionForCurrentNetworkConditions)
  {
    if (v10)
    {
      *buf = 134217984;
      dCopy2 = d;
      _os_log_impl(&dword_1B4491000, v9, OS_LOG_TYPE_DEFAULT, "Sending request to import screenshot for purchase history ID %llu...", buf, 0xCu);
    }

    xpcConnection = [(ICCloudClient *)self xpcConnection];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __72__ICCloudClient_importScreenshotForPurchaseHistoryID_completionHandler___block_invoke;
    v18[3] = &unk_1E7BF77C0;
    v13 = handlerCopy;
    v19 = v13;
    v14 = [xpcConnection remoteObjectProxyWithErrorHandler:v18];
    configuration = [(ICCloudClient *)self configuration];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __72__ICCloudClient_importScreenshotForPurchaseHistoryID_completionHandler___block_invoke_111;
    v16[3] = &unk_1E7BF77C0;
    v17 = v13;
    [v14 importScreenshotForPurchaseHistoryID:d configuration:configuration completion:v16];

    v11 = v19;
    goto LABEL_9;
  }

  if (v10)
  {
    *buf = 134217984;
    dCopy2 = d;
    _os_log_impl(&dword_1B4491000, v9, OS_LOG_TYPE_DEFAULT, "Skipping request to import item screenshot for purchase history ID %llu due to insufficient network conditions", buf, 0xCu);
  }

  if (handlerCopy)
  {
    v11 = [MEMORY[0x1E696ABC0] ic_cloudClientErrorWithCode:2006 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, v11);
LABEL_9:
  }
}

void __72__ICCloudClient_importScreenshotForPurchaseHistoryID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "Import Purchase History Screenshot failed with error: %{public}@", &v6, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

void __72__ICCloudClient_importScreenshotForPurchaseHistoryID_completionHandler___block_invoke_111(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 138543362;
      v7 = v3;
      _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "Import Purchase History Screenshot failed with error: %{public}@", &v6, 0xCu);
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

- (void)importItemArtworkForPurchaseHistoryID:(unint64_t)d completionHandler:(id)handler
{
  v19 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v7 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    dCopy = d;
    _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_DEFAULT, "Sending request to import item artwork for purchase history ID %llu...", buf, 0xCu);
  }

  xpcConnection = [(ICCloudClient *)self xpcConnection];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __73__ICCloudClient_importItemArtworkForPurchaseHistoryID_completionHandler___block_invoke;
  v15[3] = &unk_1E7BF77C0;
  v9 = handlerCopy;
  v16 = v9;
  v10 = [xpcConnection remoteObjectProxyWithErrorHandler:v15];
  configuration = [(ICCloudClient *)self configuration];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __73__ICCloudClient_importItemArtworkForPurchaseHistoryID_completionHandler___block_invoke_110;
  v13[3] = &unk_1E7BF77C0;
  v14 = v9;
  v12 = v9;
  [v10 importItemArtworkForPurchaseHistoryID:d configuration:configuration completion:v13];
}

void __73__ICCloudClient_importItemArtworkForPurchaseHistoryID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "Import Item Artwork failed with error: %{public}@", &v6, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

void __73__ICCloudClient_importItemArtworkForPurchaseHistoryID_completionHandler___block_invoke_110(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 138543362;
      v7 = v3;
      _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "Import Item Artwork failed with error: %{public}@", &v6, 0xCu);
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

- (void)loadLastKnownEnableICMLErrorStatusWithCompletionHander:(id)hander
{
  handerCopy = hander;
  xpcConnection = [(ICCloudClient *)self xpcConnection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __72__ICCloudClient_loadLastKnownEnableICMLErrorStatusWithCompletionHander___block_invoke;
  v12[3] = &unk_1E7BF77C0;
  v6 = handerCopy;
  v13 = v6;
  v7 = [xpcConnection remoteObjectProxyWithErrorHandler:v12];
  configuration = [(ICCloudClient *)self configuration];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __72__ICCloudClient_loadLastKnownEnableICMLErrorStatusWithCompletionHander___block_invoke_108;
  v10[3] = &unk_1E7BF4090;
  v11 = v6;
  v9 = v6;
  [v7 loadLastKnownEnableICMLErrorStatusForConfiguration:configuration completion:v10];
}

void __72__ICCloudClient_loadLastKnownEnableICMLErrorStatusWithCompletionHander___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "loading last known iCML state change failed with error: %{public}@", &v6, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

void __72__ICCloudClient_loadLastKnownEnableICMLErrorStatusWithCompletionHander___block_invoke_108(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = 138543362;
      v10 = v6;
      _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_ERROR, "loading last known iCML state change failed with error: %{public}@", &v9, 0xCu);
    }
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v5, v6);
  }
}

- (void)isAuthenticatedWithQueue:(id)queue completionHandler:(id)handler
{
  queueCopy = queue;
  handlerCopy = handler;
  _isAuthenticated = [(ICCloudClient *)self _isAuthenticated];
  if (queueCopy)
  {
    v9 = queueCopy;
  }

  else
  {
    v9 = dispatch_get_global_queue(0, 0);
  }

  v10 = v9;
  if (handlerCopy)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __60__ICCloudClient_isAuthenticatedWithQueue_completionHandler___block_invoke;
    v11[3] = &unk_1E7BF8C60;
    v12 = handlerCopy;
    v13 = _isAuthenticated;
    dispatch_async(v10, v11);
  }
}

- (void)deauthenticateWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_DEFAULT, "Sending deauthenticate request...", buf, 2u);
  }

  xpcConnection = [(ICCloudClient *)self xpcConnection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __53__ICCloudClient_deauthenticateWithCompletionHandler___block_invoke;
  v13[3] = &unk_1E7BF77C0;
  v7 = handlerCopy;
  v14 = v7;
  v8 = [xpcConnection remoteObjectProxyWithErrorHandler:v13];
  configuration = [(ICCloudClient *)self configuration];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __53__ICCloudClient_deauthenticateWithCompletionHandler___block_invoke_2;
  v11[3] = &unk_1E7BF77C0;
  v12 = v7;
  v10 = v7;
  [v8 deauthenticateForConfiguration:configuration completion:v11];
}

void __53__ICCloudClient_deauthenticateWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v11 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "Deauthenticate failed with error: %{public}@", buf, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = dispatch_get_global_queue(0, 0);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __53__ICCloudClient_deauthenticateWithCompletionHandler___block_invoke_106;
    v7[3] = &unk_1E7BF9EC8;
    v9 = v5;
    v8 = v3;
    dispatch_async(v6, v7);
  }
}

void __53__ICCloudClient_deauthenticateWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v11 = v3;
      _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "Deauthenticate failed with error: %{public}@", buf, 0xCu);
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = dispatch_get_global_queue(0, 0);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __53__ICCloudClient_deauthenticateWithCompletionHandler___block_invoke_107;
    v7[3] = &unk_1E7BF9EC8;
    v9 = v5;
    v8 = v3;
    dispatch_async(v6, v7);
  }
}

- (void)updateSagaLibraryWithReason:(int64_t)reason completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_DEFAULT, "Sending request to update Cloud Library...", buf, 2u);
  }

  v8 = +[ICCloudAvailabilityController sharedController];
  shouldProhibitMusicActionForCurrentNetworkConditions = [v8 shouldProhibitMusicActionForCurrentNetworkConditions];

  if (shouldProhibitMusicActionForCurrentNetworkConditions)
  {
    v10 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B4491000, v10, OS_LOG_TYPE_DEFAULT, "Can't update cloud library using current network - skipping", buf, 2u);
    }

    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, 0);
    }
  }

  else
  {
    xpcConnection = [(ICCloudClient *)self xpcConnection];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __63__ICCloudClient_updateSagaLibraryWithReason_completionHandler___block_invoke;
    v17[3] = &unk_1E7BF77C0;
    v12 = handlerCopy;
    v18 = v12;
    v13 = [xpcConnection remoteObjectProxyWithErrorHandler:v17];
    configuration = [(ICCloudClient *)self configuration];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __63__ICCloudClient_updateSagaLibraryWithReason_completionHandler___block_invoke_104;
    v15[3] = &unk_1E7BF77C0;
    v16 = v12;
    [v13 updateSagaLibraryWithReason:reason forConfiguration:configuration completion:v15];
  }
}

void __63__ICCloudClient_updateSagaLibraryWithReason_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "Update Match Library failed with error: %{public}@", &v6, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0);
  }
}

void __63__ICCloudClient_updateSagaLibraryWithReason_completionHandler___block_invoke_104(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = [a2 code];
  if (v3 >= 1)
  {
    v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v11 = v3;
      _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "Update Match Library failed with status: %ld", buf, 0xCu);
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = dispatch_get_global_queue(0, 0);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __63__ICCloudClient_updateSagaLibraryWithReason_completionHandler___block_invoke_105;
    v7[3] = &unk_1E7BF7260;
    v8 = v5;
    v9 = v3;
    dispatch_async(v6, v7);
  }
}

- (BOOL)musicPurchasesDisabledForJaliscoLibrary
{
  configuration = [(ICCloudClient *)self configuration];
  userIdentity = [configuration userIdentity];
  v4 = [getML3MusicLibraryClass() musicLibraryForUserAccount:userIdentity];
  jaliscoLastExcludedMediaKinds = [v4 jaliscoLastExcludedMediaKinds];
  v6 = [jaliscoLastExcludedMediaKinds containsObject:&unk_1F2C92050];

  return v6;
}

- (BOOL)isMediaKindDisabledForJaliscoLibrary:(int64_t)library
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  xpcConnection = [(ICCloudClient *)self xpcConnection];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __54__ICCloudClient_isMediaKindDisabledForJaliscoLibrary___block_invoke;
  v10[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v10[4] = library;
  v6 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v10];
  configuration = [(ICCloudClient *)self configuration];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __54__ICCloudClient_isMediaKindDisabledForJaliscoLibrary___block_invoke_98;
  v9[3] = &unk_1E7BF4068;
  v9[4] = &v11;
  v9[5] = library;
  [v6 isMediaKindDisabledForJaliscoLibrary:library configuration:configuration completion:v9];

  LOBYTE(library) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return library;
}

void __54__ICCloudClient_isMediaKindDisabledForJaliscoLibrary___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6[0] = 67109378;
    v6[1] = v5;
    v7 = 2114;
    v8 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "Checking if mediakind=%d is disabled failed with error=%{public}@", v6, 0x12u);
  }
}

void __54__ICCloudClient_isMediaKindDisabledForJaliscoLibrary___block_invoke_98(uint64_t a1, char a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 40);
      v8 = *(*(*(a1 + 32) + 8) + 24);
      v15 = 67109634;
      v16 = v7;
      v17 = 2114;
      v18 = v5;
      v19 = 1024;
      v20 = v8;
      v9 = "Could not get if mediaKind=%d is disabled for Jalisco sync. error=%{public}@, isMediaKindDisabled=%d";
      v10 = v6;
      v11 = OS_LOG_TYPE_ERROR;
      v12 = 24;
LABEL_9:
      _os_log_impl(&dword_1B4491000, v10, v11, v9, &v15, v12);
    }
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = a2;
    v6 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 40);
      if (*(*(*(a1 + 32) + 8) + 24))
      {
        v14 = "disabled";
      }

      else
      {
        v14 = "enabled";
      }

      v15 = 67109378;
      v16 = v13;
      v17 = 2082;
      v18 = v14;
      v9 = "mediaKind=%d is %{public}s for Jalisco sync";
      v10 = v6;
      v11 = OS_LOG_TYPE_DEFAULT;
      v12 = 18;
      goto LABEL_9;
    }
  }
}

- (void)removeJaliscoLibraryWithCompletionHander:(id)hander
{
  handerCopy = hander;
  xpcConnection = [(ICCloudClient *)self xpcConnection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __58__ICCloudClient_removeJaliscoLibraryWithCompletionHander___block_invoke;
  v12[3] = &unk_1E7BF77C0;
  v6 = handerCopy;
  v13 = v6;
  v7 = [xpcConnection remoteObjectProxyWithErrorHandler:v12];
  configuration = [(ICCloudClient *)self configuration];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __58__ICCloudClient_removeJaliscoLibraryWithCompletionHander___block_invoke_2;
  v10[3] = &unk_1E7BF77C0;
  v11 = v6;
  v9 = v6;
  [v7 removeJaliscoLibraryForConfiguration:configuration completion:v10];
}

void __58__ICCloudClient_removeJaliscoLibraryWithCompletionHander___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v11 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "Remove Jalisco failed with error: %{public}@", buf, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = dispatch_get_global_queue(0, 0);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __58__ICCloudClient_removeJaliscoLibraryWithCompletionHander___block_invoke_96;
    v7[3] = &unk_1E7BF9EC8;
    v9 = v5;
    v8 = v3;
    dispatch_async(v6, v7);
  }
}

void __58__ICCloudClient_removeJaliscoLibraryWithCompletionHander___block_invoke_2(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v11 = v3;
      _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "Remove Jalisco failed with error: %{public}@", buf, 0xCu);
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = dispatch_get_global_queue(0, 0);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __58__ICCloudClient_removeJaliscoLibraryWithCompletionHander___block_invoke_97;
    v7[3] = &unk_1E7BF9EC8;
    v9 = v5;
    v8 = v3;
    dispatch_async(v6, v7);
  }
}

- (void)updateJaliscoLibraryWithReason:(int64_t)reason completionHandler:(id)handler
{
  handlerCopy = handler;
  xpcConnection = [(ICCloudClient *)self xpcConnection];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __66__ICCloudClient_updateJaliscoLibraryWithReason_completionHandler___block_invoke;
  v14[3] = &unk_1E7BF77C0;
  v8 = handlerCopy;
  v15 = v8;
  v9 = [xpcConnection remoteObjectProxyWithErrorHandler:v14];
  configuration = [(ICCloudClient *)self configuration];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __66__ICCloudClient_updateJaliscoLibraryWithReason_completionHandler___block_invoke_2;
  v12[3] = &unk_1E7BF77C0;
  v13 = v8;
  v11 = v8;
  [v9 updateJaliscoLibraryWithReason:reason forConfiguration:configuration completion:v12];
}

void __66__ICCloudClient_updateJaliscoLibraryWithReason_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v10 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "Update Jalisco Library failed with error: %{public}@", buf, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __66__ICCloudClient_updateJaliscoLibraryWithReason_completionHandler___block_invoke_94;
    block[3] = &unk_1E7BF9D20;
    v8 = v5;
    dispatch_async(v6, block);
  }
}

void __66__ICCloudClient_updateJaliscoLibraryWithReason_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v11 = v3;
      _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "Update Jalisco Library failed with error: %{public}@", buf, 0xCu);
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = dispatch_get_global_queue(0, 0);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __66__ICCloudClient_updateJaliscoLibraryWithReason_completionHandler___block_invoke_95;
    v7[3] = &unk_1E7BF9EC8;
    v9 = v5;
    v8 = v3;
    dispatch_async(v6, v7);
  }
}

void __29__ICCloudClient_becomeActive__block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 138543362;
    v8 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "Update Jalisco Library failed with error: %{public}@", &v7, 0xCu);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (void)disableCloudLibraryWithReason:(int64_t)reason completionHandler:(id)handler
{
  v18 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v7 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_DEFAULT, "<ICCloudClient %p> - Attempting disable cloud library", buf, 0xCu);
  }

  xpcConnection = [(ICCloudClient *)self xpcConnection];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __65__ICCloudClient_disableCloudLibraryWithReason_completionHandler___block_invoke;
  v14[3] = &unk_1E7BFA490;
  v14[4] = self;
  v9 = handlerCopy;
  v15 = v9;
  v10 = [xpcConnection remoteObjectProxyWithErrorHandler:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __65__ICCloudClient_disableCloudLibraryWithReason_completionHandler___block_invoke_92;
  v12[3] = &unk_1E7BF77C0;
  v13 = v9;
  v11 = v9;
  [v10 disableCloudLibraryWithReason:reason completion:v12];
}

void __65__ICCloudClient_disableCloudLibraryWithReason_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "Could not get remote object to deauth Saga library - error=%{public}@", &v7, 0xCu);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v3);
  }
}

void __65__ICCloudClient_disableCloudLibraryWithReason_completionHandler___block_invoke_92(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  v5 = v4;
  if (v3)
  {
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v11 = 138543362;
    v12 = v3;
    v6 = "Could not deauthenticate Saga library and disable active locker account - error=%{public}@.";
    v7 = v5;
    v8 = OS_LOG_TYPE_ERROR;
    v9 = 12;
  }

  else
  {
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    LOWORD(v11) = 0;
    v6 = "Finished deauthenticating Saga library";
    v7 = v5;
    v8 = OS_LOG_TYPE_DEFAULT;
    v9 = 2;
  }

  _os_log_impl(&dword_1B4491000, v7, v8, v6, &v11, v9);
LABEL_7:

  v10 = *(a1 + 32);
  if (v10)
  {
    (*(v10 + 16))(v10, v3);
  }
}

- (void)_enableCloudLibraryWithPolicy:(int64_t)policy startinitialImport:(BOOL)import isExplicitUserAction:(BOOL)action completionHandler:(id)handler
{
  actionCopy = action;
  importCopy = import;
  v30 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v11 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218752;
    selfCopy = self;
    v24 = 1024;
    policyCopy = policy;
    v26 = 1024;
    v27 = importCopy;
    v28 = 1024;
    v29 = actionCopy;
    _os_log_impl(&dword_1B4491000, v11, OS_LOG_TYPE_DEFAULT, "<ICCloudClient %p> - Attempting cloud library authenticate (start initial import with explicit user action, merge policy=%d, shouldStartInitialImport=%{BOOL}u, isExplicitUserAction = %{BOOL}u)", buf, 0x1Eu);
  }

  _isAuthenticated = [(ICCloudClient *)self _isAuthenticated];
  if (!policy || !_isAuthenticated)
  {
    xpcConnection = [(ICCloudClient *)self xpcConnection];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __105__ICCloudClient__enableCloudLibraryWithPolicy_startinitialImport_isExplicitUserAction_completionHandler___block_invoke;
    v20[3] = &unk_1E7BF77C0;
    v15 = handlerCopy;
    v21 = v15;
    v16 = [xpcConnection remoteObjectProxyWithErrorHandler:v20];
    configuration = [(ICCloudClient *)self configuration];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __105__ICCloudClient__enableCloudLibraryWithPolicy_startinitialImport_isExplicitUserAction_completionHandler___block_invoke_91;
    v18[3] = &unk_1E7BF77C0;
    v19 = v15;
    [v16 authenticateForConfiguration:configuration startInitialImport:importCopy enableCloudLibraryPolicy:policy isExplicitUserAction:actionCopy completion:v18];

    v13 = v21;
    goto LABEL_8;
  }

  if (handlerCopy)
  {
    v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:0 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, v13);
LABEL_8:
  }
}

void __105__ICCloudClient__enableCloudLibraryWithPolicy_startinitialImport_isExplicitUserAction_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "Could not get remote object to authenticate and start initial Saga import - error=%{public}@", &v6, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

void __105__ICCloudClient__enableCloudLibraryWithPolicy_startinitialImport_isExplicitUserAction_completionHandler___block_invoke_91(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  v5 = v4;
  if (v3)
  {
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v11 = 138543362;
    v12 = v3;
    v6 = "Could not authenticate and start initial import of Saga library - error=%{public}@";
    v7 = v5;
    v8 = OS_LOG_TYPE_ERROR;
    v9 = 12;
  }

  else
  {
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    LOWORD(v11) = 0;
    v6 = "Successfully authenticated and finished Saga import.";
    v7 = v5;
    v8 = OS_LOG_TYPE_DEFAULT;
    v9 = 2;
  }

  _os_log_impl(&dword_1B4491000, v7, v8, v6, &v11, v9);
LABEL_7:

  v10 = *(a1 + 32);
  if (v10)
  {
    (*(v10 + 16))(v10, v3);
  }
}

- (void)movePinnedAlbumWithPersistentID:(int64_t)d cloudAlbumID:(id)iD toPosition:(int64_t)position completion:(id)completion
{
  completionCopy = completion;
  iDCopy = iD;
  xpcConnection = [(ICCloudClient *)self xpcConnection];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __84__ICCloudClient_movePinnedAlbumWithPersistentID_cloudAlbumID_toPosition_completion___block_invoke;
  v19[3] = &unk_1E7BFA490;
  v19[4] = self;
  v13 = completionCopy;
  v20 = v13;
  v14 = [xpcConnection remoteObjectProxyWithErrorHandler:v19];
  configuration = [(ICCloudClient *)self configuration];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __84__ICCloudClient_movePinnedAlbumWithPersistentID_cloudAlbumID_toPosition_completion___block_invoke_2;
  v17[3] = &unk_1E7BFA490;
  v17[4] = self;
  v18 = v13;
  v16 = v13;
  [v14 movePinnedAlbumWithPersistentID:d cloudAlbumID:iDCopy toPosition:position configuration:configuration completion:v17];
}

void __84__ICCloudClient_movePinnedAlbumWithPersistentID_cloudAlbumID_toPosition_completion___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    *buf = 138543618;
    v12 = v5;
    v13 = 2114;
    v14 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "%{public}@ Failed to connect to remote proxy. err=%{public}@", buf, 0x16u);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = dispatch_get_global_queue(0, 0);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __84__ICCloudClient_movePinnedAlbumWithPersistentID_cloudAlbumID_toPosition_completion___block_invoke_89;
    v8[3] = &unk_1E7BF9EC8;
    v10 = v6;
    v9 = v3;
    dispatch_async(v7, v8);
  }
}

void __84__ICCloudClient_movePinnedAlbumWithPersistentID_cloudAlbumID_toPosition_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = [v3 msv_description];
      *buf = 138543618;
      v15 = v6;
      v16 = 2114;
      v17 = v7;
      _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_ERROR, "%{public}@ Completed request to move pinned artist error=%{public}@", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    *buf = 138543362;
    v15 = v8;
    _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Completed request to move pinned artist", buf, 0xCu);
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    v10 = dispatch_get_global_queue(0, 0);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __84__ICCloudClient_movePinnedAlbumWithPersistentID_cloudAlbumID_toPosition_completion___block_invoke_90;
    v11[3] = &unk_1E7BF9EC8;
    v13 = v9;
    v12 = v3;
    dispatch_async(v10, v11);
  }
}

- (void)movePinnedArtistWithPersistentID:(int64_t)d cloudArtistID:(id)iD toPosition:(int64_t)position completion:(id)completion
{
  completionCopy = completion;
  iDCopy = iD;
  xpcConnection = [(ICCloudClient *)self xpcConnection];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __86__ICCloudClient_movePinnedArtistWithPersistentID_cloudArtistID_toPosition_completion___block_invoke;
  v19[3] = &unk_1E7BFA490;
  v19[4] = self;
  v13 = completionCopy;
  v20 = v13;
  v14 = [xpcConnection remoteObjectProxyWithErrorHandler:v19];
  configuration = [(ICCloudClient *)self configuration];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __86__ICCloudClient_movePinnedArtistWithPersistentID_cloudArtistID_toPosition_completion___block_invoke_2;
  v17[3] = &unk_1E7BFA490;
  v17[4] = self;
  v18 = v13;
  v16 = v13;
  [v14 movePinnedArtistWithPersistentID:d cloudArtistID:iDCopy toPosition:position configuration:configuration completion:v17];
}

void __86__ICCloudClient_movePinnedArtistWithPersistentID_cloudArtistID_toPosition_completion___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    *buf = 138543618;
    v12 = v5;
    v13 = 2114;
    v14 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "%{public}@ Failed to connect to remote proxy. err=%{public}@", buf, 0x16u);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = dispatch_get_global_queue(0, 0);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __86__ICCloudClient_movePinnedArtistWithPersistentID_cloudArtistID_toPosition_completion___block_invoke_87;
    v8[3] = &unk_1E7BF9EC8;
    v10 = v6;
    v9 = v3;
    dispatch_async(v7, v8);
  }
}

void __86__ICCloudClient_movePinnedArtistWithPersistentID_cloudArtistID_toPosition_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = [v3 msv_description];
      *buf = 138543618;
      v15 = v6;
      v16 = 2114;
      v17 = v7;
      _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_ERROR, "%{public}@ Completed request to move pinned artist error=%{public}@", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    *buf = 138543362;
    v15 = v8;
    _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Completed request to move pinned artist", buf, 0xCu);
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    v10 = dispatch_get_global_queue(0, 0);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __86__ICCloudClient_movePinnedArtistWithPersistentID_cloudArtistID_toPosition_completion___block_invoke_88;
    v11[3] = &unk_1E7BF9EC8;
    v13 = v9;
    v12 = v3;
    dispatch_async(v10, v11);
  }
}

- (void)movePinnedEntityWithPersistentID:(int64_t)d cloudID:(int64_t)iD type:(int64_t)type toPosition:(int64_t)position completion:(id)completion
{
  completionCopy = completion;
  xpcConnection = [(ICCloudClient *)self xpcConnection];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __85__ICCloudClient_movePinnedEntityWithPersistentID_cloudID_type_toPosition_completion___block_invoke;
  v20[3] = &unk_1E7BFA490;
  v20[4] = self;
  v14 = completionCopy;
  v21 = v14;
  v15 = [xpcConnection remoteObjectProxyWithErrorHandler:v20];
  configuration = [(ICCloudClient *)self configuration];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __85__ICCloudClient_movePinnedEntityWithPersistentID_cloudID_type_toPosition_completion___block_invoke_2;
  v18[3] = &unk_1E7BFA490;
  v18[4] = self;
  v19 = v14;
  v17 = v14;
  [v15 movePinnedEntityWithPersistentID:d cloudID:iD type:type toPosition:position configuration:configuration completion:v18];
}

void __85__ICCloudClient_movePinnedEntityWithPersistentID_cloudID_type_toPosition_completion___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    *buf = 138543618;
    v12 = v5;
    v13 = 2114;
    v14 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "%{public}@ Failed to connect to remote proxy. err=%{public}@", buf, 0x16u);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = dispatch_get_global_queue(0, 0);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __85__ICCloudClient_movePinnedEntityWithPersistentID_cloudID_type_toPosition_completion___block_invoke_85;
    v8[3] = &unk_1E7BF9EC8;
    v10 = v6;
    v9 = v3;
    dispatch_async(v7, v8);
  }
}

void __85__ICCloudClient_movePinnedEntityWithPersistentID_cloudID_type_toPosition_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = [v3 msv_description];
      *buf = 138543618;
      v15 = v6;
      v16 = 2114;
      v17 = v7;
      _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_ERROR, "%{public}@ Completed request to move pinned library entity error=%{public}@", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    *buf = 138543362;
    v15 = v8;
    _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Completed request to move pinned library entity", buf, 0xCu);
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    v10 = dispatch_get_global_queue(0, 0);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __85__ICCloudClient_movePinnedEntityWithPersistentID_cloudID_type_toPosition_completion___block_invoke_86;
    v11[3] = &unk_1E7BF9EC8;
    v13 = v9;
    v12 = v3;
    dispatch_async(v10, v11);
  }
}

- (void)updatePinnedLibraryAlbumWithPersistentID:(int64_t)d cloudAlbumID:(id)iD defaultAction:(int64_t)action completion:(id)completion
{
  completionCopy = completion;
  iDCopy = iD;
  xpcConnection = [(ICCloudClient *)self xpcConnection];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __96__ICCloudClient_updatePinnedLibraryAlbumWithPersistentID_cloudAlbumID_defaultAction_completion___block_invoke;
  v19[3] = &unk_1E7BFA490;
  v19[4] = self;
  v13 = completionCopy;
  v20 = v13;
  v14 = [xpcConnection remoteObjectProxyWithErrorHandler:v19];
  configuration = [(ICCloudClient *)self configuration];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __96__ICCloudClient_updatePinnedLibraryAlbumWithPersistentID_cloudAlbumID_defaultAction_completion___block_invoke_2;
  v17[3] = &unk_1E7BFA490;
  v17[4] = self;
  v18 = v13;
  v16 = v13;
  [v14 updatePinnedLibraryAlbumWithPersistentID:d cloudAlbumID:iDCopy defaultAction:action configuration:configuration completion:v17];
}

void __96__ICCloudClient_updatePinnedLibraryAlbumWithPersistentID_cloudAlbumID_defaultAction_completion___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    *buf = 138543618;
    v12 = v5;
    v13 = 2114;
    v14 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "%{public}@ Failed to connect to remote proxy. err=%{public}@", buf, 0x16u);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = dispatch_get_global_queue(0, 0);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __96__ICCloudClient_updatePinnedLibraryAlbumWithPersistentID_cloudAlbumID_defaultAction_completion___block_invoke_83;
    v8[3] = &unk_1E7BF9EC8;
    v10 = v6;
    v9 = v3;
    dispatch_async(v7, v8);
  }
}

void __96__ICCloudClient_updatePinnedLibraryAlbumWithPersistentID_cloudAlbumID_defaultAction_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = [v3 msv_description];
      *buf = 138543618;
      v15 = v6;
      v16 = 2114;
      v17 = v7;
      _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_ERROR, "%{public}@ Completed request to update pinned library album error=%{public}@", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    *buf = 138543362;
    v15 = v8;
    _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Completed request to update pinned library album", buf, 0xCu);
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    v10 = dispatch_get_global_queue(0, 0);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __96__ICCloudClient_updatePinnedLibraryAlbumWithPersistentID_cloudAlbumID_defaultAction_completion___block_invoke_84;
    v11[3] = &unk_1E7BF9EC8;
    v13 = v9;
    v12 = v3;
    dispatch_async(v10, v11);
  }
}

- (void)updatePinnedLibraryArtistWithPersistentID:(int64_t)d cloudArtistID:(id)iD defaultAction:(int64_t)action completion:(id)completion
{
  completionCopy = completion;
  iDCopy = iD;
  xpcConnection = [(ICCloudClient *)self xpcConnection];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __98__ICCloudClient_updatePinnedLibraryArtistWithPersistentID_cloudArtistID_defaultAction_completion___block_invoke;
  v19[3] = &unk_1E7BFA490;
  v19[4] = self;
  v13 = completionCopy;
  v20 = v13;
  v14 = [xpcConnection remoteObjectProxyWithErrorHandler:v19];
  configuration = [(ICCloudClient *)self configuration];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __98__ICCloudClient_updatePinnedLibraryArtistWithPersistentID_cloudArtistID_defaultAction_completion___block_invoke_2;
  v17[3] = &unk_1E7BFA490;
  v17[4] = self;
  v18 = v13;
  v16 = v13;
  [v14 updatePinnedLibraryArtistWithPersistentID:d cloudArtistID:iDCopy defaultAction:action configuration:configuration completion:v17];
}

void __98__ICCloudClient_updatePinnedLibraryArtistWithPersistentID_cloudArtistID_defaultAction_completion___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    *buf = 138543618;
    v12 = v5;
    v13 = 2114;
    v14 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "%{public}@ Failed to connect to remote proxy. err=%{public}@", buf, 0x16u);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = dispatch_get_global_queue(0, 0);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __98__ICCloudClient_updatePinnedLibraryArtistWithPersistentID_cloudArtistID_defaultAction_completion___block_invoke_81;
    v8[3] = &unk_1E7BF9EC8;
    v10 = v6;
    v9 = v3;
    dispatch_async(v7, v8);
  }
}

void __98__ICCloudClient_updatePinnedLibraryArtistWithPersistentID_cloudArtistID_defaultAction_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = [v3 msv_description];
      *buf = 138543618;
      v15 = v6;
      v16 = 2114;
      v17 = v7;
      _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_ERROR, "%{public}@ Completed request to update pinned library artist error=%{public}@", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    *buf = 138543362;
    v15 = v8;
    _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Completed request to update pinned library artist", buf, 0xCu);
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    v10 = dispatch_get_global_queue(0, 0);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __98__ICCloudClient_updatePinnedLibraryArtistWithPersistentID_cloudArtistID_defaultAction_completion___block_invoke_82;
    v11[3] = &unk_1E7BF9EC8;
    v13 = v9;
    v12 = v3;
    dispatch_async(v10, v11);
  }
}

- (void)updatePinnedLibraryEntityWithPersistentID:(int64_t)d cloudID:(int64_t)iD type:(int64_t)type defaultAction:(int64_t)action completion:(id)completion
{
  completionCopy = completion;
  xpcConnection = [(ICCloudClient *)self xpcConnection];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __97__ICCloudClient_updatePinnedLibraryEntityWithPersistentID_cloudID_type_defaultAction_completion___block_invoke;
  v20[3] = &unk_1E7BFA490;
  v20[4] = self;
  v14 = completionCopy;
  v21 = v14;
  v15 = [xpcConnection remoteObjectProxyWithErrorHandler:v20];
  configuration = [(ICCloudClient *)self configuration];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __97__ICCloudClient_updatePinnedLibraryEntityWithPersistentID_cloudID_type_defaultAction_completion___block_invoke_2;
  v18[3] = &unk_1E7BFA490;
  v18[4] = self;
  v19 = v14;
  v17 = v14;
  [v15 updatePinnedLibraryEntityWithPersistentID:d cloudID:iD type:type defaultAction:action configuration:configuration completion:v18];
}

void __97__ICCloudClient_updatePinnedLibraryEntityWithPersistentID_cloudID_type_defaultAction_completion___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    *buf = 138543618;
    v12 = v5;
    v13 = 2114;
    v14 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "%{public}@ Failed to connect to remote proxy. err=%{public}@", buf, 0x16u);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = dispatch_get_global_queue(0, 0);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __97__ICCloudClient_updatePinnedLibraryEntityWithPersistentID_cloudID_type_defaultAction_completion___block_invoke_79;
    v8[3] = &unk_1E7BF9EC8;
    v10 = v6;
    v9 = v3;
    dispatch_async(v7, v8);
  }
}

void __97__ICCloudClient_updatePinnedLibraryEntityWithPersistentID_cloudID_type_defaultAction_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = [v3 msv_description];
      *buf = 138543618;
      v15 = v6;
      v16 = 2114;
      v17 = v7;
      _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_ERROR, "%{public}@ Completed request to update pinned library entity error=%{public}@", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    *buf = 138543362;
    v15 = v8;
    _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Completed request to update pinned library entity", buf, 0xCu);
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    v10 = dispatch_get_global_queue(0, 0);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __97__ICCloudClient_updatePinnedLibraryEntityWithPersistentID_cloudID_type_defaultAction_completion___block_invoke_80;
    v11[3] = &unk_1E7BF9EC8;
    v13 = v9;
    v12 = v3;
    dispatch_async(v10, v11);
  }
}

- (void)removePinnedAlbumWithPersistentID:(int64_t)d cloudAlbumID:(id)iD completion:(id)completion
{
  completionCopy = completion;
  iDCopy = iD;
  xpcConnection = [(ICCloudClient *)self xpcConnection];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __75__ICCloudClient_removePinnedAlbumWithPersistentID_cloudAlbumID_completion___block_invoke;
  v17[3] = &unk_1E7BFA490;
  v17[4] = self;
  v11 = completionCopy;
  v18 = v11;
  v12 = [xpcConnection remoteObjectProxyWithErrorHandler:v17];
  configuration = [(ICCloudClient *)self configuration];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __75__ICCloudClient_removePinnedAlbumWithPersistentID_cloudAlbumID_completion___block_invoke_2;
  v15[3] = &unk_1E7BFA490;
  v15[4] = self;
  v16 = v11;
  v14 = v11;
  [v12 removePinnedAlbumWithPersistentID:d cloudAlbumID:iDCopy configuration:configuration completion:v15];
}

void __75__ICCloudClient_removePinnedAlbumWithPersistentID_cloudAlbumID_completion___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    *buf = 138543618;
    v12 = v5;
    v13 = 2114;
    v14 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "%{public}@ Failed to connect to remote proxy. err=%{public}@", buf, 0x16u);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = dispatch_get_global_queue(0, 0);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __75__ICCloudClient_removePinnedAlbumWithPersistentID_cloudAlbumID_completion___block_invoke_77;
    v8[3] = &unk_1E7BF9EC8;
    v10 = v6;
    v9 = v3;
    dispatch_async(v7, v8);
  }
}

void __75__ICCloudClient_removePinnedAlbumWithPersistentID_cloudAlbumID_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = [v3 msv_description];
      *buf = 138543618;
      v15 = v6;
      v16 = 2114;
      v17 = v7;
      _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_ERROR, "%{public}@ Completed request to remove pinned library album error=%{public}@", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    *buf = 138543362;
    v15 = v8;
    _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Completed request to remove pinned library album", buf, 0xCu);
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    v10 = dispatch_get_global_queue(0, 0);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __75__ICCloudClient_removePinnedAlbumWithPersistentID_cloudAlbumID_completion___block_invoke_78;
    v11[3] = &unk_1E7BF9EC8;
    v13 = v9;
    v12 = v3;
    dispatch_async(v10, v11);
  }
}

- (void)removePinnedArtistWithPersistentID:(int64_t)d cloudArtistID:(id)iD completion:(id)completion
{
  completionCopy = completion;
  iDCopy = iD;
  xpcConnection = [(ICCloudClient *)self xpcConnection];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __77__ICCloudClient_removePinnedArtistWithPersistentID_cloudArtistID_completion___block_invoke;
  v17[3] = &unk_1E7BFA490;
  v17[4] = self;
  v11 = completionCopy;
  v18 = v11;
  v12 = [xpcConnection remoteObjectProxyWithErrorHandler:v17];
  configuration = [(ICCloudClient *)self configuration];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __77__ICCloudClient_removePinnedArtistWithPersistentID_cloudArtistID_completion___block_invoke_2;
  v15[3] = &unk_1E7BFA490;
  v15[4] = self;
  v16 = v11;
  v14 = v11;
  [v12 removePinnedArtistWithPersistentID:d cloudArtistID:iDCopy configuration:configuration completion:v15];
}

void __77__ICCloudClient_removePinnedArtistWithPersistentID_cloudArtistID_completion___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    *buf = 138543618;
    v12 = v5;
    v13 = 2114;
    v14 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "%{public}@ Failed to connect to remote proxy. err=%{public}@", buf, 0x16u);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = dispatch_get_global_queue(0, 0);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __77__ICCloudClient_removePinnedArtistWithPersistentID_cloudArtistID_completion___block_invoke_75;
    v8[3] = &unk_1E7BF9EC8;
    v10 = v6;
    v9 = v3;
    dispatch_async(v7, v8);
  }
}

void __77__ICCloudClient_removePinnedArtistWithPersistentID_cloudArtistID_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = [v3 msv_description];
      *buf = 138543618;
      v15 = v6;
      v16 = 2114;
      v17 = v7;
      _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_ERROR, "%{public}@ Completed request to remove pinned library artist error=%{public}@", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    *buf = 138543362;
    v15 = v8;
    _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Completed request to remove pinned library artist", buf, 0xCu);
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    v10 = dispatch_get_global_queue(0, 0);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __77__ICCloudClient_removePinnedArtistWithPersistentID_cloudArtistID_completion___block_invoke_76;
    v11[3] = &unk_1E7BF9EC8;
    v13 = v9;
    v12 = v3;
    dispatch_async(v10, v11);
  }
}

- (void)removePinnedEntityWithPersistentID:(int64_t)d cloudID:(int64_t)iD type:(int64_t)type completion:(id)completion
{
  completionCopy = completion;
  xpcConnection = [(ICCloudClient *)self xpcConnection];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __76__ICCloudClient_removePinnedEntityWithPersistentID_cloudID_type_completion___block_invoke;
  v18[3] = &unk_1E7BFA490;
  v18[4] = self;
  v12 = completionCopy;
  v19 = v12;
  v13 = [xpcConnection remoteObjectProxyWithErrorHandler:v18];
  configuration = [(ICCloudClient *)self configuration];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __76__ICCloudClient_removePinnedEntityWithPersistentID_cloudID_type_completion___block_invoke_2;
  v16[3] = &unk_1E7BFA490;
  v16[4] = self;
  v17 = v12;
  v15 = v12;
  [v13 removePinnedEntityWithPersistentID:d cloudID:iD type:type configuration:configuration completion:v16];
}

void __76__ICCloudClient_removePinnedEntityWithPersistentID_cloudID_type_completion___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    *buf = 138543618;
    v12 = v5;
    v13 = 2114;
    v14 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "%{public}@ Failed to connect to remote proxy. err=%{public}@", buf, 0x16u);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = dispatch_get_global_queue(0, 0);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __76__ICCloudClient_removePinnedEntityWithPersistentID_cloudID_type_completion___block_invoke_73;
    v8[3] = &unk_1E7BF9EC8;
    v10 = v6;
    v9 = v3;
    dispatch_async(v7, v8);
  }
}

void __76__ICCloudClient_removePinnedEntityWithPersistentID_cloudID_type_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = [v3 msv_description];
      *buf = 138543618;
      v15 = v6;
      v16 = 2114;
      v17 = v7;
      _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_ERROR, "%{public}@ Completed request to remove pinned library entity error=%{public}@", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    *buf = 138543362;
    v15 = v8;
    _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Completed request to remove pinned library entity", buf, 0xCu);
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    v10 = dispatch_get_global_queue(0, 0);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __76__ICCloudClient_removePinnedEntityWithPersistentID_cloudID_type_completion___block_invoke_74;
    v11[3] = &unk_1E7BF9EC8;
    v13 = v9;
    v12 = v3;
    dispatch_async(v10, v11);
  }
}

- (void)pinLibraryAlbumWithPersistentID:(int64_t)d cloudAlbumID:(id)iD defaultAction:(int64_t)action completion:(id)completion
{
  completionCopy = completion;
  iDCopy = iD;
  xpcConnection = [(ICCloudClient *)self xpcConnection];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __87__ICCloudClient_pinLibraryAlbumWithPersistentID_cloudAlbumID_defaultAction_completion___block_invoke;
  v19[3] = &unk_1E7BFA490;
  v19[4] = self;
  v13 = completionCopy;
  v20 = v13;
  v14 = [xpcConnection remoteObjectProxyWithErrorHandler:v19];
  configuration = [(ICCloudClient *)self configuration];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __87__ICCloudClient_pinLibraryAlbumWithPersistentID_cloudAlbumID_defaultAction_completion___block_invoke_2;
  v17[3] = &unk_1E7BFA490;
  v17[4] = self;
  v18 = v13;
  v16 = v13;
  [v14 pinLibraryAlbumWithPersistentID:d cloudAlbumID:iDCopy defaultAction:action configuration:configuration completion:v17];
}

void __87__ICCloudClient_pinLibraryAlbumWithPersistentID_cloudAlbumID_defaultAction_completion___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    *buf = 138543618;
    v12 = v5;
    v13 = 2114;
    v14 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "%{public}@ Failed to connect to remote proxy. err=%{public}@", buf, 0x16u);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = dispatch_get_global_queue(0, 0);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __87__ICCloudClient_pinLibraryAlbumWithPersistentID_cloudAlbumID_defaultAction_completion___block_invoke_71;
    v8[3] = &unk_1E7BF9EC8;
    v10 = v6;
    v9 = v3;
    dispatch_async(v7, v8);
  }
}

void __87__ICCloudClient_pinLibraryAlbumWithPersistentID_cloudAlbumID_defaultAction_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = [v3 msv_description];
      *buf = 138543618;
      v15 = v6;
      v16 = 2114;
      v17 = v7;
      _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_ERROR, "%{public}@ Completed request to pin library album error=%{public}@", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    *buf = 138543362;
    v15 = v8;
    _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Completed request to pin library album", buf, 0xCu);
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    v10 = dispatch_get_global_queue(0, 0);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __87__ICCloudClient_pinLibraryAlbumWithPersistentID_cloudAlbumID_defaultAction_completion___block_invoke_72;
    v11[3] = &unk_1E7BF9EC8;
    v13 = v9;
    v12 = v3;
    dispatch_async(v10, v11);
  }
}

- (void)pinLibraryArtistWithPersistentID:(int64_t)d cloudArtistID:(id)iD defaultAction:(int64_t)action completion:(id)completion
{
  completionCopy = completion;
  iDCopy = iD;
  xpcConnection = [(ICCloudClient *)self xpcConnection];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __89__ICCloudClient_pinLibraryArtistWithPersistentID_cloudArtistID_defaultAction_completion___block_invoke;
  v19[3] = &unk_1E7BFA490;
  v19[4] = self;
  v13 = completionCopy;
  v20 = v13;
  v14 = [xpcConnection remoteObjectProxyWithErrorHandler:v19];
  configuration = [(ICCloudClient *)self configuration];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __89__ICCloudClient_pinLibraryArtistWithPersistentID_cloudArtistID_defaultAction_completion___block_invoke_2;
  v17[3] = &unk_1E7BFA490;
  v17[4] = self;
  v18 = v13;
  v16 = v13;
  [v14 pinLibraryArtistWithPersistentID:d cloudArtistID:iDCopy defaultAction:action configuration:configuration completion:v17];
}

void __89__ICCloudClient_pinLibraryArtistWithPersistentID_cloudArtistID_defaultAction_completion___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    *buf = 138543618;
    v12 = v5;
    v13 = 2114;
    v14 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "%{public}@ Failed to connect to remote proxy. err=%{public}@", buf, 0x16u);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = dispatch_get_global_queue(0, 0);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __89__ICCloudClient_pinLibraryArtistWithPersistentID_cloudArtistID_defaultAction_completion___block_invoke_69;
    v8[3] = &unk_1E7BF9EC8;
    v10 = v6;
    v9 = v3;
    dispatch_async(v7, v8);
  }
}

void __89__ICCloudClient_pinLibraryArtistWithPersistentID_cloudArtistID_defaultAction_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = [v3 msv_description];
      *buf = 138543618;
      v15 = v6;
      v16 = 2114;
      v17 = v7;
      _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_ERROR, "%{public}@ Completed request to pin library artist error=%{public}@", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    *buf = 138543362;
    v15 = v8;
    _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Completed request to pin library artist", buf, 0xCu);
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    v10 = dispatch_get_global_queue(0, 0);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __89__ICCloudClient_pinLibraryArtistWithPersistentID_cloudArtistID_defaultAction_completion___block_invoke_70;
    v11[3] = &unk_1E7BF9EC8;
    v13 = v9;
    v12 = v3;
    dispatch_async(v10, v11);
  }
}

- (void)pinLibraryEntityWithPersistentID:(int64_t)d cloudID:(int64_t)iD type:(int64_t)type defaultAction:(int64_t)action completion:(id)completion
{
  completionCopy = completion;
  xpcConnection = [(ICCloudClient *)self xpcConnection];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __88__ICCloudClient_pinLibraryEntityWithPersistentID_cloudID_type_defaultAction_completion___block_invoke;
  v20[3] = &unk_1E7BFA490;
  v20[4] = self;
  v14 = completionCopy;
  v21 = v14;
  v15 = [xpcConnection remoteObjectProxyWithErrorHandler:v20];
  configuration = [(ICCloudClient *)self configuration];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __88__ICCloudClient_pinLibraryEntityWithPersistentID_cloudID_type_defaultAction_completion___block_invoke_2;
  v18[3] = &unk_1E7BFA490;
  v18[4] = self;
  v19 = v14;
  v17 = v14;
  [v15 pinLibraryEntityWithPersistentID:d cloudID:iD type:type defaultAction:action configuration:configuration completion:v18];
}

void __88__ICCloudClient_pinLibraryEntityWithPersistentID_cloudID_type_defaultAction_completion___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    *buf = 138543618;
    v12 = v5;
    v13 = 2114;
    v14 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "%{public}@ Failed to connect to remote proxy. err=%{public}@", buf, 0x16u);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = dispatch_get_global_queue(0, 0);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __88__ICCloudClient_pinLibraryEntityWithPersistentID_cloudID_type_defaultAction_completion___block_invoke_67;
    v8[3] = &unk_1E7BF9EC8;
    v10 = v6;
    v9 = v3;
    dispatch_async(v7, v8);
  }
}

void __88__ICCloudClient_pinLibraryEntityWithPersistentID_cloudID_type_defaultAction_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = [v3 msv_description];
      *buf = 138543618;
      v15 = v6;
      v16 = 2114;
      v17 = v7;
      _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_ERROR, "%{public}@ Completed request to pin library entity error=%{public}@", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    *buf = 138543362;
    v15 = v8;
    _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Completed request to pin library entity", buf, 0xCu);
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    v10 = dispatch_get_global_queue(0, 0);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __88__ICCloudClient_pinLibraryEntityWithPersistentID_cloudID_type_defaultAction_completion___block_invoke_68;
    v11[3] = &unk_1E7BF9EC8;
    v13 = v9;
    v12 = v3;
    dispatch_async(v10, v11);
  }
}

- (void)resetInvitationURLForCollaborationWithPersistentID:(int64_t)d completion:(id)completion
{
  completionCopy = completion;
  xpcConnection = [(ICCloudClient *)self xpcConnection];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __79__ICCloudClient_resetInvitationURLForCollaborationWithPersistentID_completion___block_invoke;
  v14[3] = &unk_1E7BFA490;
  v14[4] = self;
  v8 = completionCopy;
  v15 = v8;
  v9 = [xpcConnection remoteObjectProxyWithErrorHandler:v14];
  configuration = [(ICCloudClient *)self configuration];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __79__ICCloudClient_resetInvitationURLForCollaborationWithPersistentID_completion___block_invoke_2;
  v12[3] = &unk_1E7BF4020;
  v12[4] = self;
  v13 = v8;
  v11 = v8;
  [v9 resetInvitationURLForCollaborationWithPersistentID:d configuration:configuration completion:v12];
}

void __79__ICCloudClient_resetInvitationURLForCollaborationWithPersistentID_completion___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    *buf = 138543618;
    v12 = v5;
    v13 = 2114;
    v14 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "%{public}@ Failed to connect to remote proxy. err=%{public}@", buf, 0x16u);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = dispatch_get_global_queue(0, 0);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __79__ICCloudClient_resetInvitationURLForCollaborationWithPersistentID_completion___block_invoke_64;
    v8[3] = &unk_1E7BF9EC8;
    v10 = v6;
    v9 = v3;
    dispatch_async(v7, v8);
  }
}

void __79__ICCloudClient_resetInvitationURLForCollaborationWithPersistentID_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      v10 = [v6 msv_description];
      *buf = 138543618;
      v19 = v9;
      v20 = 2114;
      v21 = v10;
      _os_log_impl(&dword_1B4491000, v8, OS_LOG_TYPE_ERROR, "%{public}@ Completed request to reset invitation link error=%{public}@", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 32);
    *buf = 138543362;
    v19 = v11;
    _os_log_impl(&dword_1B4491000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ Completed request to reset invitation link", buf, 0xCu);
  }

  v12 = *(a1 + 40);
  if (v12)
  {
    v13 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __79__ICCloudClient_resetInvitationURLForCollaborationWithPersistentID_completion___block_invoke_65;
    block[3] = &unk_1E7BF9E28;
    v17 = v12;
    v15 = v5;
    v16 = v6;
    dispatch_async(v13, block);
  }
}

- (void)removeCollaborators:(id)collaborators fromCollaborationWithPersistentID:(int64_t)d completion:(id)completion
{
  completionCopy = completion;
  collaboratorsCopy = collaborators;
  xpcConnection = [(ICCloudClient *)self xpcConnection];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __82__ICCloudClient_removeCollaborators_fromCollaborationWithPersistentID_completion___block_invoke;
  v17[3] = &unk_1E7BFA490;
  v17[4] = self;
  v11 = completionCopy;
  v18 = v11;
  v12 = [xpcConnection remoteObjectProxyWithErrorHandler:v17];
  configuration = [(ICCloudClient *)self configuration];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __82__ICCloudClient_removeCollaborators_fromCollaborationWithPersistentID_completion___block_invoke_2;
  v15[3] = &unk_1E7BFA490;
  v15[4] = self;
  v16 = v11;
  v14 = v11;
  [v12 removeCollaborators:collaboratorsCopy fromCollaborationWithPersistentID:d configuration:configuration completion:v15];
}

void __82__ICCloudClient_removeCollaborators_fromCollaborationWithPersistentID_completion___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    *buf = 138543618;
    v12 = v5;
    v13 = 2114;
    v14 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "%{public}@ Failed to connect to remote proxy. err=%{public}@", buf, 0x16u);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = dispatch_get_global_queue(0, 0);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __82__ICCloudClient_removeCollaborators_fromCollaborationWithPersistentID_completion___block_invoke_62;
    v8[3] = &unk_1E7BF9EC8;
    v10 = v6;
    v9 = v3;
    dispatch_async(v7, v8);
  }
}

void __82__ICCloudClient_removeCollaborators_fromCollaborationWithPersistentID_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = [v3 msv_description];
      *buf = 138543618;
      v15 = v6;
      v16 = 2114;
      v17 = v7;
      _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_ERROR, "%{public}@ Completed removing collaborator request error=%{public}@", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    *buf = 138543362;
    v15 = v8;
    _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Completed removing collaborator request", buf, 0xCu);
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    v10 = dispatch_get_global_queue(0, 0);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __82__ICCloudClient_removeCollaborators_fromCollaborationWithPersistentID_completion___block_invoke_63;
    v11[3] = &unk_1E7BF9EC8;
    v13 = v9;
    v12 = v3;
    dispatch_async(v10, v11);
  }
}

- (void)respondToPendingCollaborator:(id)collaborator onCollaborationWithPersistentID:(int64_t)d withApproval:(BOOL)approval completion:(id)completion
{
  approvalCopy = approval;
  completionCopy = completion;
  collaboratorCopy = collaborator;
  xpcConnection = [(ICCloudClient *)self xpcConnection];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __102__ICCloudClient_respondToPendingCollaborator_onCollaborationWithPersistentID_withApproval_completion___block_invoke;
  v20[3] = &unk_1E7BFA490;
  v20[4] = self;
  v13 = completionCopy;
  v21 = v13;
  v14 = [xpcConnection remoteObjectProxyWithErrorHandler:v20];
  configuration = [(ICCloudClient *)self configuration];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __102__ICCloudClient_respondToPendingCollaborator_onCollaborationWithPersistentID_withApproval_completion___block_invoke_2;
  v17[3] = &unk_1E7BF76F8;
  v18 = v13;
  dCopy = d;
  v17[4] = self;
  v16 = v13;
  [v14 respondToPendingCollaborator:collaboratorCopy onCollaborationWithPersistentID:d withApproval:approvalCopy configuration:configuration completion:v17];
}

void __102__ICCloudClient_respondToPendingCollaborator_onCollaborationWithPersistentID_withApproval_completion___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    *buf = 138543618;
    v12 = v5;
    v13 = 2114;
    v14 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "%{public}@ Failed to connect to remote proxy. err=%{public}@", buf, 0x16u);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = dispatch_get_global_queue(0, 0);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __102__ICCloudClient_respondToPendingCollaborator_onCollaborationWithPersistentID_withApproval_completion___block_invoke_60;
    v8[3] = &unk_1E7BF9EC8;
    v10 = v6;
    v9 = v3;
    dispatch_async(v7, v8);
  }
}

void __102__ICCloudClient_respondToPendingCollaborator_onCollaborationWithPersistentID_withApproval_completion___block_invoke_2(void *a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = a1[4];
      v7 = a1[6];
      v8 = [v3 msv_description];
      *buf = 138543874;
      v17 = v6;
      v18 = 2048;
      v19 = v7;
      v20 = 2114;
      v21 = v8;
      _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_ERROR, "%{public}@ Completed responding to collaboration join request persistentID %lld error=%{public}@", buf, 0x20u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v9 = a1[4];
    v10 = a1[6];
    *buf = 138543618;
    v17 = v9;
    v18 = 2048;
    v19 = v10;
    _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Completed responding to collaboration join request persistentID %lld", buf, 0x16u);
  }

  v11 = a1[5];
  if (v11)
  {
    v12 = dispatch_get_global_queue(0, 0);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __102__ICCloudClient_respondToPendingCollaborator_onCollaborationWithPersistentID_withApproval_completion___block_invoke_61;
    v13[3] = &unk_1E7BF9EC8;
    v15 = v11;
    v14 = v3;
    dispatch_async(v12, v13);
  }
}

- (void)joinCollaborationWithGlobalPlaylistID:(id)d invitationURL:(id)l completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  lCopy = l;
  xpcConnection = [(ICCloudClient *)self xpcConnection];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __80__ICCloudClient_joinCollaborationWithGlobalPlaylistID_invitationURL_completion___block_invoke;
  v20[3] = &unk_1E7BFA490;
  v20[4] = self;
  v12 = completionCopy;
  v21 = v12;
  v13 = [xpcConnection remoteObjectProxyWithErrorHandler:v20];
  configuration = [(ICCloudClient *)self configuration];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __80__ICCloudClient_joinCollaborationWithGlobalPlaylistID_invitationURL_completion___block_invoke_2;
  v17[3] = &unk_1E7BF7540;
  v17[4] = self;
  v18 = dCopy;
  v19 = v12;
  v15 = v12;
  v16 = dCopy;
  [v13 joinCollaborationWithGlobalPlaylistID:v16 invitationURL:lCopy configuration:configuration completion:v17];
}

void __80__ICCloudClient_joinCollaborationWithGlobalPlaylistID_invitationURL_completion___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    *buf = 138543618;
    v12 = v5;
    v13 = 2114;
    v14 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "%{public}@ Failed to connect to remote proxy. err=%{public}@", buf, 0x16u);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = dispatch_get_global_queue(0, 0);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __80__ICCloudClient_joinCollaborationWithGlobalPlaylistID_invitationURL_completion___block_invoke_58;
    v8[3] = &unk_1E7BF9EC8;
    v10 = v6;
    v9 = v3;
    dispatch_async(v7, v8);
  }
}

void __80__ICCloudClient_joinCollaborationWithGlobalPlaylistID_invitationURL_completion___block_invoke_2(void *a1, uint64_t a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = a1[4];
      v9 = a1[5];
      v10 = [v5 msv_description];
      *buf = 138543874;
      v20 = v8;
      v21 = 2114;
      v22 = v9;
      v23 = 2114;
      v24 = v10;
      _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_ERROR, "%{public}@ Completed request to join collaboration for playlist %{public}@ error=%{public}@", buf, 0x20u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v11 = a1[4];
    v12 = a1[5];
    *buf = 138543618;
    v20 = v11;
    v21 = 2114;
    v22 = v12;
    _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Completed request to join collaboration for playlist %{public}@", buf, 0x16u);
  }

  v13 = a1[6];
  if (v13)
  {
    v14 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __80__ICCloudClient_joinCollaborationWithGlobalPlaylistID_invitationURL_completion___block_invoke_59;
    block[3] = &unk_1E7BF7288;
    v17 = v13;
    v18 = a2;
    v16 = v5;
    dispatch_async(v14, block);
  }
}

- (void)editCollaborationWithPersistentID:(int64_t)d properties:(id)properties trackEdits:(id)edits completion:(id)completion
{
  completionCopy = completion;
  editsCopy = edits;
  propertiesCopy = properties;
  xpcConnection = [(ICCloudClient *)self xpcConnection];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __84__ICCloudClient_editCollaborationWithPersistentID_properties_trackEdits_completion___block_invoke;
  v21[3] = &unk_1E7BFA490;
  v21[4] = self;
  v14 = completionCopy;
  v22 = v14;
  v15 = [xpcConnection remoteObjectProxyWithErrorHandler:v21];
  configuration = [(ICCloudClient *)self configuration];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __84__ICCloudClient_editCollaborationWithPersistentID_properties_trackEdits_completion___block_invoke_2;
  v18[3] = &unk_1E7BF76F8;
  v19 = v14;
  dCopy = d;
  v18[4] = self;
  v17 = v14;
  [v15 editCollaborationWithPersistentID:d configuration:configuration properties:propertiesCopy trackEdits:editsCopy completion:v18];
}

void __84__ICCloudClient_editCollaborationWithPersistentID_properties_trackEdits_completion___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    *buf = 138543618;
    v12 = v5;
    v13 = 2114;
    v14 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "%{public}@ Failed to connect to remote proxy. err=%{public}@", buf, 0x16u);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = dispatch_get_global_queue(0, 0);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __84__ICCloudClient_editCollaborationWithPersistentID_properties_trackEdits_completion___block_invoke_56;
    v8[3] = &unk_1E7BF9EC8;
    v10 = v6;
    v9 = v3;
    dispatch_async(v7, v8);
  }
}

void __84__ICCloudClient_editCollaborationWithPersistentID_properties_trackEdits_completion___block_invoke_2(void *a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = a1[4];
      v7 = a1[6];
      v8 = [v3 msv_description];
      *buf = 138543874;
      v17 = v6;
      v18 = 2048;
      v19 = v7;
      v20 = 2114;
      v21 = v8;
      _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_ERROR, "%{public}@ Completed request to edit collaboration for persistentID %lld error=%{public}@", buf, 0x20u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v9 = a1[4];
    v10 = a1[6];
    *buf = 138543618;
    v17 = v9;
    v18 = 2048;
    v19 = v10;
    _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Completed request to edit collaboration for persistentID %lld", buf, 0x16u);
  }

  v11 = a1[5];
  if (v11)
  {
    v12 = dispatch_get_global_queue(0, 0);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __84__ICCloudClient_editCollaborationWithPersistentID_properties_trackEdits_completion___block_invoke_57;
    v13[3] = &unk_1E7BF9EC8;
    v15 = v11;
    v14 = v3;
    dispatch_async(v12, v13);
  }
}

- (void)endCollaborationWithPersistentID:(int64_t)d completion:(id)completion
{
  completionCopy = completion;
  xpcConnection = [(ICCloudClient *)self xpcConnection];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __61__ICCloudClient_endCollaborationWithPersistentID_completion___block_invoke;
  v15[3] = &unk_1E7BFA490;
  v15[4] = self;
  v8 = completionCopy;
  v16 = v8;
  v9 = [xpcConnection remoteObjectProxyWithErrorHandler:v15];
  configuration = [(ICCloudClient *)self configuration];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __61__ICCloudClient_endCollaborationWithPersistentID_completion___block_invoke_2;
  v12[3] = &unk_1E7BF3FF8;
  v13 = v8;
  dCopy = d;
  v12[4] = self;
  v11 = v8;
  [v9 endCollaborationWithPersistentID:d configuration:configuration completion:v12];
}

void __61__ICCloudClient_endCollaborationWithPersistentID_completion___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    *buf = 138543618;
    v12 = v5;
    v13 = 2114;
    v14 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "%{public}@ Failed to connect to remote proxy. err=%{public}@", buf, 0x16u);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = dispatch_get_global_queue(0, 0);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __61__ICCloudClient_endCollaborationWithPersistentID_completion___block_invoke_54;
    v8[3] = &unk_1E7BF9EC8;
    v10 = v6;
    v9 = v3;
    dispatch_async(v7, v8);
  }
}

void __61__ICCloudClient_endCollaborationWithPersistentID_completion___block_invoke_2(void *a1, uint64_t a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = a1[4];
      v9 = a1[6];
      v10 = [v5 msv_description];
      *buf = 138543874;
      v20 = v8;
      v21 = 2048;
      v22 = v9;
      v23 = 2114;
      v24 = v10;
      _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_ERROR, "%{public}@ Completed request to end collaboration with persistentID %lld error=%{public}@", buf, 0x20u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v11 = a1[4];
    v12 = a1[6];
    *buf = 138543618;
    v20 = v11;
    v21 = 2048;
    v22 = v12;
    _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Completed request to end collaboration with persistentID %lld", buf, 0x16u);
  }

  v13 = a1[5];
  if (v13)
  {
    v14 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __61__ICCloudClient_endCollaborationWithPersistentID_completion___block_invoke_55;
    block[3] = &unk_1E7BF7288;
    v17 = v13;
    v18 = a2;
    v16 = v5;
    dispatch_async(v14, block);
  }
}

- (void)beginCollaborationUsingPlaylistWithPersistentID:(int64_t)d sharingMode:(unint64_t)mode completion:(id)completion
{
  completionCopy = completion;
  xpcConnection = [(ICCloudClient *)self xpcConnection];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __88__ICCloudClient_beginCollaborationUsingPlaylistWithPersistentID_sharingMode_completion___block_invoke;
  v17[3] = &unk_1E7BFA490;
  v17[4] = self;
  v10 = completionCopy;
  v18 = v10;
  v11 = [xpcConnection remoteObjectProxyWithErrorHandler:v17];
  configuration = [(ICCloudClient *)self configuration];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __88__ICCloudClient_beginCollaborationUsingPlaylistWithPersistentID_sharingMode_completion___block_invoke_2;
  v14[3] = &unk_1E7BF3FF8;
  v15 = v10;
  dCopy = d;
  v14[4] = self;
  v13 = v10;
  [v11 beginCollaborationUsingPlaylistWithPersistentID:d sharingMode:mode configuration:configuration completion:v14];
}

void __88__ICCloudClient_beginCollaborationUsingPlaylistWithPersistentID_sharingMode_completion___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    *buf = 138543618;
    v12 = v5;
    v13 = 2114;
    v14 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "%{public}@ Failed to connect to remote proxy. err=%{public}@", buf, 0x16u);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = dispatch_get_global_queue(0, 0);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __88__ICCloudClient_beginCollaborationUsingPlaylistWithPersistentID_sharingMode_completion___block_invoke_52;
    v8[3] = &unk_1E7BF9EC8;
    v10 = v6;
    v9 = v3;
    dispatch_async(v7, v8);
  }
}

void __88__ICCloudClient_beginCollaborationUsingPlaylistWithPersistentID_sharingMode_completion___block_invoke_2(void *a1, uint64_t a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = a1[4];
      v9 = a1[6];
      v10 = [v5 msv_description];
      *buf = 138543874;
      v20 = v8;
      v21 = 2048;
      v22 = v9;
      v23 = 2114;
      v24 = v10;
      _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_ERROR, "%{public}@ Completed request to start collaboration for persistentID %lld error=%{public}@", buf, 0x20u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v11 = a1[4];
    v12 = a1[6];
    *buf = 138543618;
    v20 = v11;
    v21 = 2048;
    v22 = v12;
    _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Completed request to start collaboration for persistentID %lld", buf, 0x16u);
  }

  v13 = a1[5];
  if (v13)
  {
    v14 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __88__ICCloudClient_beginCollaborationUsingPlaylistWithPersistentID_sharingMode_completion___block_invoke_53;
    block[3] = &unk_1E7BF7288;
    v17 = v13;
    v18 = a2;
    v16 = v5;
    dispatch_async(v14, block);
  }
}

- (void)favoriteArtistWithPersistentID:(int64_t)d cloudLibraryID:(id)iD time:(id)time completionHandler:(id)handler
{
  iDCopy = iD;
  handlerCopy = handler;
  timeCopy = time;
  xpcConnection = [(ICCloudClient *)self xpcConnection];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __86__ICCloudClient_favoriteArtistWithPersistentID_cloudLibraryID_time_completionHandler___block_invoke;
  v23[3] = &unk_1E7BFA490;
  v14 = iDCopy;
  v24 = v14;
  v15 = handlerCopy;
  v25 = v15;
  v16 = [xpcConnection remoteObjectProxyWithErrorHandler:v23];
  configuration = [(ICCloudClient *)self configuration];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __86__ICCloudClient_favoriteArtistWithPersistentID_cloudLibraryID_time_completionHandler___block_invoke_2;
  v20[3] = &unk_1E7BFA490;
  v21 = v14;
  v22 = v15;
  v18 = v15;
  v19 = v14;
  [v16 favoriteArtistWithPersistentID:d cloudLibraryID:v19 time:timeCopy configuration:configuration completionHandler:v20];
}

void __86__ICCloudClient_favoriteArtistWithPersistentID_cloudLibraryID_time_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    *buf = 138543618;
    v12 = v5;
    v13 = 2114;
    v14 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "Favoriting artist with cloud=%{public}@ failed with error: %{public}@", buf, 0x16u);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = dispatch_get_global_queue(0, 0);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __86__ICCloudClient_favoriteArtistWithPersistentID_cloudLibraryID_time_completionHandler___block_invoke_50;
    v8[3] = &unk_1E7BF9EC8;
    v10 = v6;
    v9 = v3;
    dispatch_async(v7, v8);
  }
}

void __86__ICCloudClient_favoriteArtistWithPersistentID_cloudLibraryID_time_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      *buf = 138543618;
      v12 = v5;
      v13 = 2114;
      v14 = v3;
      _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "Failed to favorite artist with cloudID=%{public}@} with error: %{public}@", buf, 0x16u);
    }
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = dispatch_get_global_queue(0, 0);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __86__ICCloudClient_favoriteArtistWithPersistentID_cloudLibraryID_time_completionHandler___block_invoke_51;
    v8[3] = &unk_1E7BF9EC8;
    v10 = v6;
    v9 = v3;
    dispatch_async(v7, v8);
  }
}

- (void)favoriteAlbumWithPersistentID:(int64_t)d cloudLibraryID:(id)iD time:(id)time completionHandler:(id)handler
{
  iDCopy = iD;
  handlerCopy = handler;
  timeCopy = time;
  xpcConnection = [(ICCloudClient *)self xpcConnection];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __85__ICCloudClient_favoriteAlbumWithPersistentID_cloudLibraryID_time_completionHandler___block_invoke;
  v23[3] = &unk_1E7BFA490;
  v14 = iDCopy;
  v24 = v14;
  v15 = handlerCopy;
  v25 = v15;
  v16 = [xpcConnection remoteObjectProxyWithErrorHandler:v23];
  configuration = [(ICCloudClient *)self configuration];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __85__ICCloudClient_favoriteAlbumWithPersistentID_cloudLibraryID_time_completionHandler___block_invoke_2;
  v20[3] = &unk_1E7BFA490;
  v21 = v14;
  v22 = v15;
  v18 = v15;
  v19 = v14;
  [v16 favoriteAlbumWithPersistentID:d cloudLibraryID:v19 time:timeCopy configuration:configuration completionHandler:v20];
}

void __85__ICCloudClient_favoriteAlbumWithPersistentID_cloudLibraryID_time_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    *buf = 138543618;
    v12 = v5;
    v13 = 2114;
    v14 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "Favoriting album with cloud=%{public}@ failed with error: %{public}@", buf, 0x16u);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = dispatch_get_global_queue(0, 0);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __85__ICCloudClient_favoriteAlbumWithPersistentID_cloudLibraryID_time_completionHandler___block_invoke_48;
    v8[3] = &unk_1E7BF9EC8;
    v10 = v6;
    v9 = v3;
    dispatch_async(v7, v8);
  }
}

void __85__ICCloudClient_favoriteAlbumWithPersistentID_cloudLibraryID_time_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      *buf = 138543618;
      v12 = v5;
      v13 = 2114;
      v14 = v3;
      _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "Failed to favorite album with cloudID=%{public}@} with error: %{public}@", buf, 0x16u);
    }
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = dispatch_get_global_queue(0, 0);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __85__ICCloudClient_favoriteAlbumWithPersistentID_cloudLibraryID_time_completionHandler___block_invoke_49;
    v8[3] = &unk_1E7BF9EC8;
    v10 = v6;
    v9 = v3;
    dispatch_async(v7, v8);
  }
}

- (void)favoriteEntityWithPersistentID:(int64_t)d sagaID:(int64_t)iD entityType:(int64_t)type time:(id)time completionHandler:(id)handler
{
  handlerCopy = handler;
  timeCopy = time;
  xpcConnection = [(ICCloudClient *)self xpcConnection];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __89__ICCloudClient_favoriteEntityWithPersistentID_sagaID_entityType_time_completionHandler___block_invoke;
  v22[3] = &unk_1E7BF7658;
  iDCopy = iD;
  v15 = handlerCopy;
  v23 = v15;
  v16 = [xpcConnection remoteObjectProxyWithErrorHandler:v22];
  configuration = [(ICCloudClient *)self configuration];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __89__ICCloudClient_favoriteEntityWithPersistentID_sagaID_entityType_time_completionHandler___block_invoke_2;
  v19[3] = &unk_1E7BF7658;
  v20 = v15;
  iDCopy2 = iD;
  v18 = v15;
  [v16 favoriteEntityWithPersistentID:d sagaID:iD entityType:type time:timeCopy configuration:configuration completionHandler:v19];
}

void __89__ICCloudClient_favoriteEntityWithPersistentID_sagaID_entityType_time_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 40);
    *buf = 134218242;
    v12 = v5;
    v13 = 2114;
    v14 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "Favoriting entity with cloud=%lld failed with error: %{public}@", buf, 0x16u);
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = dispatch_get_global_queue(0, 0);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __89__ICCloudClient_favoriteEntityWithPersistentID_sagaID_entityType_time_completionHandler___block_invoke_46;
    v8[3] = &unk_1E7BF9EC8;
    v10 = v6;
    v9 = v3;
    dispatch_async(v7, v8);
  }
}

void __89__ICCloudClient_favoriteEntityWithPersistentID_sagaID_entityType_time_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 40);
      *buf = 134218242;
      v12 = v5;
      v13 = 2114;
      v14 = v3;
      _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "Failed to favorite entity with itemIdentifiers=%lld with error: %{public}@", buf, 0x16u);
    }
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = dispatch_get_global_queue(0, 0);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __89__ICCloudClient_favoriteEntityWithPersistentID_sagaID_entityType_time_completionHandler___block_invoke_47;
    v8[3] = &unk_1E7BF9EC8;
    v10 = v6;
    v9 = v3;
    dispatch_async(v7, v8);
  }
}

- (void)favoritePlaylistWithPersistentID:(int64_t)d globalID:(id)iD time:(id)time completionHandler:(id)handler
{
  iDCopy = iD;
  handlerCopy = handler;
  timeCopy = time;
  xpcConnection = [(ICCloudClient *)self xpcConnection];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __82__ICCloudClient_favoritePlaylistWithPersistentID_globalID_time_completionHandler___block_invoke;
  v23[3] = &unk_1E7BFA490;
  v14 = iDCopy;
  v24 = v14;
  v15 = handlerCopy;
  v25 = v15;
  v16 = [xpcConnection remoteObjectProxyWithErrorHandler:v23];
  configuration = [(ICCloudClient *)self configuration];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __82__ICCloudClient_favoritePlaylistWithPersistentID_globalID_time_completionHandler___block_invoke_2;
  v20[3] = &unk_1E7BFA490;
  v21 = v14;
  v22 = v15;
  v18 = v15;
  v19 = v14;
  [v16 favoritePlaylistWithPersistentID:d globalID:v19 time:timeCopy configuration:configuration completionHandler:v20];
}

void __82__ICCloudClient_favoritePlaylistWithPersistentID_globalID_time_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    *buf = 138543618;
    v12 = v5;
    v13 = 2114;
    v14 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "Favoriting entity with globalPlaylistID=%{public}@ failed with error: %{public}@", buf, 0x16u);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = dispatch_get_global_queue(0, 0);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __82__ICCloudClient_favoritePlaylistWithPersistentID_globalID_time_completionHandler___block_invoke_44;
    v8[3] = &unk_1E7BF9EC8;
    v10 = v6;
    v9 = v3;
    dispatch_async(v7, v8);
  }
}

void __82__ICCloudClient_favoritePlaylistWithPersistentID_globalID_time_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      *buf = 138543618;
      v12 = v5;
      v13 = 2114;
      v14 = v3;
      _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "Failed to favorite entity with globalPlaylistID=%{public}@ with error: %{public}@", buf, 0x16u);
    }
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = dispatch_get_global_queue(0, 0);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __82__ICCloudClient_favoritePlaylistWithPersistentID_globalID_time_completionHandler___block_invoke_45;
    v8[3] = &unk_1E7BF9EC8;
    v10 = v6;
    v9 = v3;
    dispatch_async(v7, v8);
  }
}

- (void)favoriteEntityWithPersistentID:(int64_t)d storeID:(int64_t)iD entityType:(int64_t)type time:(id)time completionHandler:(id)handler
{
  handlerCopy = handler;
  timeCopy = time;
  xpcConnection = [(ICCloudClient *)self xpcConnection];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __90__ICCloudClient_favoriteEntityWithPersistentID_storeID_entityType_time_completionHandler___block_invoke;
  v22[3] = &unk_1E7BF7658;
  iDCopy = iD;
  v15 = handlerCopy;
  v23 = v15;
  v16 = [xpcConnection remoteObjectProxyWithErrorHandler:v22];
  configuration = [(ICCloudClient *)self configuration];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __90__ICCloudClient_favoriteEntityWithPersistentID_storeID_entityType_time_completionHandler___block_invoke_2;
  v19[3] = &unk_1E7BF7658;
  v20 = v15;
  iDCopy2 = iD;
  v18 = v15;
  [v16 favoriteEntityWithPersistentID:d storeID:iD entityType:type time:timeCopy configuration:configuration completionHandler:v19];
}

void __90__ICCloudClient_favoriteEntityWithPersistentID_storeID_entityType_time_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 40);
    *buf = 134218242;
    v12 = v5;
    v13 = 2114;
    v14 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "Favoriting entity with storeID=%lld failed with error: %{public}@", buf, 0x16u);
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = dispatch_get_global_queue(0, 0);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __90__ICCloudClient_favoriteEntityWithPersistentID_storeID_entityType_time_completionHandler___block_invoke_42;
    v8[3] = &unk_1E7BF9EC8;
    v10 = v6;
    v9 = v3;
    dispatch_async(v7, v8);
  }
}

void __90__ICCloudClient_favoriteEntityWithPersistentID_storeID_entityType_time_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 40);
      *buf = 134218242;
      v12 = v5;
      v13 = 2114;
      v14 = v3;
      _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "Failed to favorite entity with itemIdentifiers=%lld with error: %{public}@", buf, 0x16u);
    }
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = dispatch_get_global_queue(0, 0);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __90__ICCloudClient_favoriteEntityWithPersistentID_storeID_entityType_time_completionHandler___block_invoke_43;
    v8[3] = &unk_1E7BF9EC8;
    v10 = v6;
    v9 = v3;
    dispatch_async(v7, v8);
  }
}

- (void)addGeniusPlaylistWithPersistentID:(int64_t)d name:(id)name seedItemSagaIDs:(id)ds itemSagaIDs:(id)iDs completionHandler:(id)handler
{
  handlerCopy = handler;
  iDsCopy = iDs;
  dsCopy = ds;
  nameCopy = name;
  xpcConnection = [(ICCloudClient *)self xpcConnection];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __102__ICCloudClient_addGeniusPlaylistWithPersistentID_name_seedItemSagaIDs_itemSagaIDs_completionHandler___block_invoke;
  v23[3] = &unk_1E7BF77C0;
  v17 = handlerCopy;
  v24 = v17;
  v18 = [xpcConnection remoteObjectProxyWithErrorHandler:v23];
  configuration = [(ICCloudClient *)self configuration];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __102__ICCloudClient_addGeniusPlaylistWithPersistentID_name_seedItemSagaIDs_itemSagaIDs_completionHandler___block_invoke_2;
  v21[3] = &unk_1E7BF73D8;
  v22 = v17;
  v20 = v17;
  [v18 addGeniusPlaylistWithPersistentID:d name:nameCopy seedItemSagaIDs:dsCopy itemSagaIDs:iDsCopy configuration:configuration completion:v21];
}

void __102__ICCloudClient_addGeniusPlaylistWithPersistentID_name_seedItemSagaIDs_itemSagaIDs_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v11 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "Create cloud genius playlist failed with error: %{public}@", buf, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = dispatch_get_global_queue(0, 0);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __102__ICCloudClient_addGeniusPlaylistWithPersistentID_name_seedItemSagaIDs_itemSagaIDs_completionHandler___block_invoke_40;
    v7[3] = &unk_1E7BF9EC8;
    v9 = v5;
    v8 = v3;
    dispatch_async(v6, v7);
  }
}

void __102__ICCloudClient_addGeniusPlaylistWithPersistentID_name_seedItemSagaIDs_itemSagaIDs_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v14 = v5;
      _os_log_impl(&dword_1B4491000, v6, OS_LOG_TYPE_ERROR, "Failed to create Genius playlist with error: %{public}@", buf, 0xCu);
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __102__ICCloudClient_addGeniusPlaylistWithPersistentID_name_seedItemSagaIDs_itemSagaIDs_completionHandler___block_invoke_41;
    block[3] = &unk_1E7BF7288;
    v11 = v7;
    v12 = a2;
    v10 = v5;
    dispatch_async(v8, block);
  }
}

- (void)hideItemsWithPurchaseHistoryIDs:(id)ds completionHandler:(id)handler
{
  handlerCopy = handler;
  dsCopy = ds;
  xpcConnection = [(ICCloudClient *)self xpcConnection];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __67__ICCloudClient_hideItemsWithPurchaseHistoryIDs_completionHandler___block_invoke;
  v15[3] = &unk_1E7BF77C0;
  v9 = handlerCopy;
  v16 = v9;
  v10 = [xpcConnection remoteObjectProxyWithErrorHandler:v15];
  configuration = [(ICCloudClient *)self configuration];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __67__ICCloudClient_hideItemsWithPurchaseHistoryIDs_completionHandler___block_invoke_2;
  v13[3] = &unk_1E7BF77C0;
  v14 = v9;
  v12 = v9;
  [v10 hideItemsWithPurchaseHistoryIDs:dsCopy configuration:configuration completion:v13];
}

void __67__ICCloudClient_hideItemsWithPurchaseHistoryIDs_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v11 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "Hide items from purchase history failed with error: %{public}@", buf, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = dispatch_get_global_queue(0, 0);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __67__ICCloudClient_hideItemsWithPurchaseHistoryIDs_completionHandler___block_invoke_39;
    v7[3] = &unk_1E7BF9EC8;
    v9 = v5;
    v8 = v3;
    dispatch_async(v6, v7);
  }
}

void __67__ICCloudClient_hideItemsWithPurchaseHistoryIDs_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = dispatch_get_global_queue(0, 0);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __67__ICCloudClient_hideItemsWithPurchaseHistoryIDs_completionHandler___block_invoke_3;
    v6[3] = &unk_1E7BF9EC8;
    v8 = v4;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

- (void)removeItemsWithSagaIDs:(id)ds completionHandler:(id)handler
{
  handlerCopy = handler;
  dsCopy = ds;
  xpcConnection = [(ICCloudClient *)self xpcConnection];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __58__ICCloudClient_removeItemsWithSagaIDs_completionHandler___block_invoke;
  v15[3] = &unk_1E7BF77C0;
  v9 = handlerCopy;
  v16 = v9;
  v10 = [xpcConnection remoteObjectProxyWithErrorHandler:v15];
  configuration = [(ICCloudClient *)self configuration];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __58__ICCloudClient_removeItemsWithSagaIDs_completionHandler___block_invoke_2;
  v13[3] = &unk_1E7BF77C0;
  v14 = v9;
  v12 = v9;
  [v10 removeItemsWithSagaIDs:dsCopy configuration:configuration completion:v13];
}

void __58__ICCloudClient_removeItemsWithSagaIDs_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v11 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "Remove cloud items from library failed with error: %{public}@", buf, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = dispatch_get_global_queue(0, 0);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __58__ICCloudClient_removeItemsWithSagaIDs_completionHandler___block_invoke_38;
    v7[3] = &unk_1E7BF9EC8;
    v9 = v5;
    v8 = v3;
    dispatch_async(v6, v7);
  }
}

void __58__ICCloudClient_removeItemsWithSagaIDs_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = dispatch_get_global_queue(0, 0);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __58__ICCloudClient_removeItemsWithSagaIDs_completionHandler___block_invoke_3;
    v6[3] = &unk_1E7BF9EC8;
    v8 = v4;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

- (void)removePlaylistsWithSagaIDs:(id)ds performDeltaSync:(BOOL)sync completionHandler:(id)handler
{
  syncCopy = sync;
  dsCopy = ds;
  handlerCopy = handler;
  xpcConnection = [(ICCloudClient *)self xpcConnection];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __79__ICCloudClient_removePlaylistsWithSagaIDs_performDeltaSync_completionHandler___block_invoke;
  v19[3] = &unk_1E7BF77C0;
  v11 = handlerCopy;
  v20 = v11;
  v12 = [xpcConnection remoteObjectProxyWithErrorHandler:v19];
  configuration = [(ICCloudClient *)self configuration];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __79__ICCloudClient_removePlaylistsWithSagaIDs_performDeltaSync_completionHandler___block_invoke_2;
  v16[3] = &unk_1E7BFA490;
  v17 = dsCopy;
  v18 = v11;
  v14 = v11;
  v15 = dsCopy;
  [v12 removePlaylistsWithSagaIDs:v15 performDeltaSync:syncCopy configuration:configuration completion:v16];
}

void __79__ICCloudClient_removePlaylistsWithSagaIDs_performDeltaSync_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v11 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "Remove cloud playlists from library failed with error: %{public}@", buf, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = dispatch_get_global_queue(0, 0);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __79__ICCloudClient_removePlaylistsWithSagaIDs_performDeltaSync_completionHandler___block_invoke_36;
    v7[3] = &unk_1E7BF9EC8;
    v9 = v5;
    v8 = v3;
    dispatch_async(v6, v7);
  }
}

void __79__ICCloudClient_removePlaylistsWithSagaIDs_performDeltaSync_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = MEMORY[0x1B8C781E0](*(a1 + 40));
    *buf = 138543874;
    v13 = v5;
    v14 = 2114;
    v15 = v3;
    v16 = 2048;
    v17 = v6;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_DEFAULT, "Removing playlists with sagaIDs=%{public}@ to library failed with error: %{public}@, completionHandler=%p", buf, 0x20u);
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = dispatch_get_global_queue(0, 0);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __79__ICCloudClient_removePlaylistsWithSagaIDs_performDeltaSync_completionHandler___block_invoke_37;
    v9[3] = &unk_1E7BF9EC8;
    v11 = v7;
    v10 = v3;
    dispatch_async(v8, v9);
  }
}

- (void)addStorePlaylistWithGlobalID:(id)d completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  xpcConnection = [(ICCloudClient *)self xpcConnection];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __64__ICCloudClient_addStorePlaylistWithGlobalID_completionHandler___block_invoke;
  v17[3] = &unk_1E7BF77C0;
  v9 = handlerCopy;
  v18 = v9;
  v10 = [xpcConnection remoteObjectProxyWithErrorHandler:v17];
  configuration = [(ICCloudClient *)self configuration];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __64__ICCloudClient_addStorePlaylistWithGlobalID_completionHandler___block_invoke_2;
  v14[3] = &unk_1E7BF6AC0;
  v15 = dCopy;
  v16 = v9;
  v12 = v9;
  v13 = dCopy;
  [v10 addStorePlaylistWithGlobalID:v13 configuration:configuration completion:v14];
}

void __64__ICCloudClient_addStorePlaylistWithGlobalID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v11 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "Add store playlist to library failed with error: %{public}@", buf, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = dispatch_get_global_queue(0, 0);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __64__ICCloudClient_addStorePlaylistWithGlobalID_completionHandler___block_invoke_34;
    v7[3] = &unk_1E7BF9EC8;
    v9 = v5;
    v8 = v3;
    dispatch_async(v6, v7);
  }
}

void __64__ICCloudClient_addStorePlaylistWithGlobalID_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = MEMORY[0x1B8C781E0](*(a1 + 40));
    *buf = 138543874;
    v17 = v8;
    v18 = 2114;
    v19 = v6;
    v20 = 2048;
    v21 = v9;
    _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_DEFAULT, "Add store playlist with globalID=%{public}@ to library failed with error: %{public}@, completionHandler=%p", buf, 0x20u);
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    v11 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __64__ICCloudClient_addStorePlaylistWithGlobalID_completionHandler___block_invoke_35;
    block[3] = &unk_1E7BF9E28;
    v15 = v10;
    v13 = v5;
    v14 = v6;
    dispatch_async(v11, block);
  }
}

- (void)sdk_addStoreItemWithOpaqueID:(id)d completionHandler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  xpcConnection = [(ICCloudClient *)self xpcConnection];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __64__ICCloudClient_sdk_addStoreItemWithOpaqueID_completionHandler___block_invoke;
  v15[3] = &unk_1E7BF77C0;
  v9 = handlerCopy;
  v16 = v9;
  v10 = [xpcConnection remoteObjectProxyWithErrorHandler:v15];
  configuration = [(ICCloudClient *)self configuration];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __64__ICCloudClient_sdk_addStoreItemWithOpaqueID_completionHandler___block_invoke_2;
  v13[3] = &unk_1E7BF3FA8;
  v14 = v9;
  v12 = v9;
  [v10 sdk_addStoreItemWithOpaqueID:dCopy configuration:configuration completion:v13];
}

void __64__ICCloudClient_sdk_addStoreItemWithOpaqueID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v11 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "SDK: Add store item to library failed with error: %{public}@", buf, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = dispatch_get_global_queue(0, 0);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __64__ICCloudClient_sdk_addStoreItemWithOpaqueID_completionHandler___block_invoke_33;
    v7[3] = &unk_1E7BF9EC8;
    v9 = v5;
    v8 = v3;
    dispatch_async(v6, v7);
  }
}

void __64__ICCloudClient_sdk_addStoreItemWithOpaqueID_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __64__ICCloudClient_sdk_addStoreItemWithOpaqueID_completionHandler___block_invoke_3;
    block[3] = &unk_1E7BF9E28;
    v12 = v7;
    v10 = v5;
    v11 = v6;
    dispatch_async(v8, block);
  }
}

- (void)addStoreItemsWithAdamIDs:(id)ds referral:(id)referral completionHandler:(id)handler
{
  handlerCopy = handler;
  referralCopy = referral;
  dsCopy = ds;
  xpcConnection = [(ICCloudClient *)self xpcConnection];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __69__ICCloudClient_addStoreItemsWithAdamIDs_referral_completionHandler___block_invoke;
  v18[3] = &unk_1E7BF77C0;
  v12 = handlerCopy;
  v19 = v12;
  v13 = [xpcConnection remoteObjectProxyWithErrorHandler:v18];
  configuration = [(ICCloudClient *)self configuration];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __69__ICCloudClient_addStoreItemsWithAdamIDs_referral_completionHandler___block_invoke_2;
  v16[3] = &unk_1E7BF3FA8;
  v17 = v12;
  v15 = v12;
  [v13 addStoreItemsWithAdamIDs:dsCopy referral:referralCopy configuration:configuration completion:v16];
}

void __69__ICCloudClient_addStoreItemsWithAdamIDs_referral_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v11 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "Add store items to library failed with error: %{public}@", buf, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = dispatch_get_global_queue(0, 0);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __69__ICCloudClient_addStoreItemsWithAdamIDs_referral_completionHandler___block_invoke_32;
    v7[3] = &unk_1E7BF9EC8;
    v9 = v5;
    v8 = v3;
    dispatch_async(v6, v7);
  }
}

void __69__ICCloudClient_addStoreItemsWithAdamIDs_referral_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __69__ICCloudClient_addStoreItemsWithAdamIDs_referral_completionHandler___block_invoke_3;
    block[3] = &unk_1E7BF9E28;
    v12 = v7;
    v10 = v5;
    v11 = v6;
    dispatch_async(v8, block);
  }
}

- (void)addStoreItemWithAdamID:(int64_t)d referral:(id)referral completionHandler:(id)handler
{
  v21 = *MEMORY[0x1E69E9840];
  referralCopy = referral;
  handlerCopy = handler;
  if (d <= 0)
  {
    v14 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      dCopy = d;
      _os_log_impl(&dword_1B4491000, v14, OS_LOG_TYPE_ERROR, "Must provide a valid adam ID (%lld) adding to library.", buf, 0xCu);
    }

    if (handlerCopy)
    {
      (*(handlerCopy + 2))(handlerCopy, 0, 0);
    }
  }

  else
  {
    xpcConnection = [(ICCloudClient *)self xpcConnection];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __67__ICCloudClient_addStoreItemWithAdamID_referral_completionHandler___block_invoke;
    v17[3] = &unk_1E7BF77C0;
    v11 = handlerCopy;
    v18 = v11;
    v12 = [xpcConnection remoteObjectProxyWithErrorHandler:v17];
    configuration = [(ICCloudClient *)self configuration];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __67__ICCloudClient_addStoreItemWithAdamID_referral_completionHandler___block_invoke_2;
    v15[3] = &unk_1E7BF3FA8;
    v16 = v11;
    [v12 addStoreItemWithAdamID:d referral:referralCopy configuration:configuration completion:v15];
  }
}

void __67__ICCloudClient_addStoreItemWithAdamID_referral_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v11 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "Add store item to library failed with error: %{public}@", buf, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = dispatch_get_global_queue(0, 0);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __67__ICCloudClient_addStoreItemWithAdamID_referral_completionHandler___block_invoke_31;
    v7[3] = &unk_1E7BF9EC8;
    v9 = v5;
    v8 = v3;
    dispatch_async(v6, v7);
  }
}

void __67__ICCloudClient_addStoreItemWithAdamID_referral_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __67__ICCloudClient_addStoreItemWithAdamID_referral_completionHandler___block_invoke_3;
    block[3] = &unk_1E7BF9E28;
    v12 = v7;
    v10 = v5;
    v11 = v6;
    dispatch_async(v8, block);
  }
}

- (void)updatePinnedSubscribedPlaylistsWithCompletion:(id)completion
{
  completionCopy = completion;
  xpcConnection = [(ICCloudClient *)self xpcConnection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __63__ICCloudClient_updatePinnedSubscribedPlaylistsWithCompletion___block_invoke;
  v12[3] = &unk_1E7BF77C0;
  v6 = completionCopy;
  v13 = v6;
  v7 = [xpcConnection remoteObjectProxyWithErrorHandler:v12];
  configuration = [(ICCloudClient *)self configuration];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __63__ICCloudClient_updatePinnedSubscribedPlaylistsWithCompletion___block_invoke_2;
  v10[3] = &unk_1E7BF77C0;
  v11 = v6;
  v9 = v6;
  [v7 updatePinnedSubscribedPlaylistsWithConfiguration:configuration completion:v10];
}

void __63__ICCloudClient_updatePinnedSubscribedPlaylistsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v11 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "Update pinned subscribed playlists failed with error: %{public}@", buf, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = dispatch_get_global_queue(0, 0);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __63__ICCloudClient_updatePinnedSubscribedPlaylistsWithCompletion___block_invoke_30;
    v7[3] = &unk_1E7BF9EC8;
    v9 = v5;
    v8 = v3;
    dispatch_async(v6, v7);
  }
}

void __63__ICCloudClient_updatePinnedSubscribedPlaylistsWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = dispatch_get_global_queue(0, 0);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __63__ICCloudClient_updatePinnedSubscribedPlaylistsWithCompletion___block_invoke_3;
    v6[3] = &unk_1E7BF9EC8;
    v8 = v4;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

- (void)updateSubscribedPlaylistsWithSagaIDs:(id)ds ignoreMinRefreshInterval:(BOOL)interval completionHandler:(id)handler
{
  intervalCopy = interval;
  handlerCopy = handler;
  dsCopy = ds;
  xpcConnection = [(ICCloudClient *)self xpcConnection];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __97__ICCloudClient_updateSubscribedPlaylistsWithSagaIDs_ignoreMinRefreshInterval_completionHandler___block_invoke;
  v17[3] = &unk_1E7BF77C0;
  v11 = handlerCopy;
  v18 = v11;
  v12 = [xpcConnection remoteObjectProxyWithErrorHandler:v17];
  configuration = [(ICCloudClient *)self configuration];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __97__ICCloudClient_updateSubscribedPlaylistsWithSagaIDs_ignoreMinRefreshInterval_completionHandler___block_invoke_2;
  v15[3] = &unk_1E7BF77C0;
  v16 = v11;
  v14 = v11;
  [v12 updateSubscribedPlaylistsWithSagaIDs:dsCopy ignoreMinRefreshInterval:intervalCopy configuration:configuration completion:v15];
}

void __97__ICCloudClient_updateSubscribedPlaylistsWithSagaIDs_ignoreMinRefreshInterval_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v11 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "Update subscribed playlists failed with error: %{public}@", buf, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = dispatch_get_global_queue(0, 0);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __97__ICCloudClient_updateSubscribedPlaylistsWithSagaIDs_ignoreMinRefreshInterval_completionHandler___block_invoke_29;
    v7[3] = &unk_1E7BF9EC8;
    v9 = v5;
    v8 = v3;
    dispatch_async(v6, v7);
  }
}

void __97__ICCloudClient_updateSubscribedPlaylistsWithSagaIDs_ignoreMinRefreshInterval_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = dispatch_get_global_queue(0, 0);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __97__ICCloudClient_updateSubscribedPlaylistsWithSagaIDs_ignoreMinRefreshInterval_completionHandler___block_invoke_3;
    v6[3] = &unk_1E7BF9EC8;
    v8 = v4;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

- (void)uploadArtworkForPlaylistWithPersistentID:(int64_t)d completionHandler:(id)handler
{
  handlerCopy = handler;
  xpcConnection = [(ICCloudClient *)self xpcConnection];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __76__ICCloudClient_uploadArtworkForPlaylistWithPersistentID_completionHandler___block_invoke;
  v14[3] = &unk_1E7BF77C0;
  v8 = handlerCopy;
  v15 = v8;
  v9 = [xpcConnection remoteObjectProxyWithErrorHandler:v14];
  configuration = [(ICCloudClient *)self configuration];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __76__ICCloudClient_uploadArtworkForPlaylistWithPersistentID_completionHandler___block_invoke_2;
  v12[3] = &unk_1E7BF77C0;
  v13 = v8;
  v11 = v8;
  [v9 uploadArtworkForPlaylistWithPersistentID:d configuration:configuration completion:v12];
}

void __76__ICCloudClient_uploadArtworkForPlaylistWithPersistentID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v11 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "Upload playlist artwork failed with error: %{public}@", buf, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = dispatch_get_global_queue(0, 0);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __76__ICCloudClient_uploadArtworkForPlaylistWithPersistentID_completionHandler___block_invoke_28;
    v7[3] = &unk_1E7BF9EC8;
    v9 = v5;
    v8 = v3;
    dispatch_async(v6, v7);
  }
}

void __76__ICCloudClient_uploadArtworkForPlaylistWithPersistentID_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = dispatch_get_global_queue(0, 0);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __76__ICCloudClient_uploadArtworkForPlaylistWithPersistentID_completionHandler___block_invoke_3;
    v6[3] = &unk_1E7BF9EC8;
    v8 = v4;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

- (void)publishPlaylistWithSagaID:(int64_t)d completionHandler:(id)handler
{
  handlerCopy = handler;
  xpcConnection = [(ICCloudClient *)self xpcConnection];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __61__ICCloudClient_publishPlaylistWithSagaID_completionHandler___block_invoke;
  v14[3] = &unk_1E7BF77C0;
  v8 = handlerCopy;
  v15 = v8;
  v9 = [xpcConnection remoteObjectProxyWithErrorHandler:v14];
  configuration = [(ICCloudClient *)self configuration];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __61__ICCloudClient_publishPlaylistWithSagaID_completionHandler___block_invoke_2;
  v12[3] = &unk_1E7BF3FD0;
  v13 = v8;
  v11 = v8;
  [v9 publishPlaylistWithSagaID:d configuration:configuration completion:v12];
}

void __61__ICCloudClient_publishPlaylistWithSagaID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v11 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "Publish cloud playlist failed with error: %{public}@", buf, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = dispatch_get_global_queue(0, 0);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __61__ICCloudClient_publishPlaylistWithSagaID_completionHandler___block_invoke_26;
    v7[3] = &unk_1E7BF9EC8;
    v9 = v5;
    v8 = v3;
    dispatch_async(v6, v7);
  }
}

void __61__ICCloudClient_publishPlaylistWithSagaID_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 32);
  if (v10)
  {
    v11 = dispatch_get_global_queue(0, 0);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __61__ICCloudClient_publishPlaylistWithSagaID_completionHandler___block_invoke_3;
    v12[3] = &unk_1E7BF9E78;
    v16 = v10;
    v13 = v7;
    v14 = v8;
    v15 = v9;
    dispatch_async(v11, v12);
  }
}

- (void)sdk_addItemWithSagaID:(int64_t)d toPlaylistWithPersistentID:(int64_t)iD completionHandler:(id)handler
{
  handlerCopy = handler;
  xpcConnection = [(ICCloudClient *)self xpcConnection];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __84__ICCloudClient_sdk_addItemWithSagaID_toPlaylistWithPersistentID_completionHandler___block_invoke;
  v16[3] = &unk_1E7BF77C0;
  v10 = handlerCopy;
  v17 = v10;
  v11 = [xpcConnection remoteObjectProxyWithErrorHandler:v16];
  configuration = [(ICCloudClient *)self configuration];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __84__ICCloudClient_sdk_addItemWithSagaID_toPlaylistWithPersistentID_completionHandler___block_invoke_2;
  v14[3] = &unk_1E7BF77C0;
  v15 = v10;
  v13 = v10;
  [v11 sdk_addItemWithSagaID:d toPlaylistWithPersistentID:iD configuration:configuration completion:v14];
}

void __84__ICCloudClient_sdk_addItemWithSagaID_toPlaylistWithPersistentID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v11 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "SDK: Add saga id to playlist failed with error: %{public}@", buf, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = dispatch_get_global_queue(0, 0);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __84__ICCloudClient_sdk_addItemWithSagaID_toPlaylistWithPersistentID_completionHandler___block_invoke_25;
    v7[3] = &unk_1E7BF9EC8;
    v9 = v5;
    v8 = v3;
    dispatch_async(v6, v7);
  }
}

void __84__ICCloudClient_sdk_addItemWithSagaID_toPlaylistWithPersistentID_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = dispatch_get_global_queue(0, 0);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __84__ICCloudClient_sdk_addItemWithSagaID_toPlaylistWithPersistentID_completionHandler___block_invoke_3;
    v6[3] = &unk_1E7BF9EC8;
    v8 = v4;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

- (void)sdk_addStoreItemWithOpaqueID:(id)d toPlaylistWithPersistentID:(int64_t)iD completionHandler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  xpcConnection = [(ICCloudClient *)self xpcConnection];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __91__ICCloudClient_sdk_addStoreItemWithOpaqueID_toPlaylistWithPersistentID_completionHandler___block_invoke;
  v17[3] = &unk_1E7BF77C0;
  v11 = handlerCopy;
  v18 = v11;
  v12 = [xpcConnection remoteObjectProxyWithErrorHandler:v17];
  configuration = [(ICCloudClient *)self configuration];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __91__ICCloudClient_sdk_addStoreItemWithOpaqueID_toPlaylistWithPersistentID_completionHandler___block_invoke_2;
  v15[3] = &unk_1E7BF3FA8;
  v16 = v11;
  v14 = v11;
  [v12 sdk_addStoreItemWithOpaqueID:dCopy toPlaylistWithPersistentID:iD configuration:configuration completion:v15];
}

void __91__ICCloudClient_sdk_addStoreItemWithOpaqueID_toPlaylistWithPersistentID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v11 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "SDK: Add store item to playlist failed with error: %{public}@", buf, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = dispatch_get_global_queue(0, 0);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __91__ICCloudClient_sdk_addStoreItemWithOpaqueID_toPlaylistWithPersistentID_completionHandler___block_invoke_23;
    v7[3] = &unk_1E7BF9EC8;
    v9 = v5;
    v8 = v3;
    dispatch_async(v6, v7);
  }
}

void __91__ICCloudClient_sdk_addStoreItemWithOpaqueID_toPlaylistWithPersistentID_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __91__ICCloudClient_sdk_addStoreItemWithOpaqueID_toPlaylistWithPersistentID_completionHandler___block_invoke_3;
    block[3] = &unk_1E7BF9E28;
    v12 = v7;
    v10 = v5;
    v11 = v6;
    dispatch_async(v8, block);
  }
}

- (void)addItemWithSagaID:(int64_t)d toPlaylistWithPersistentID:(int64_t)iD completionHandler:(id)handler
{
  handlerCopy = handler;
  xpcConnection = [(ICCloudClient *)self xpcConnection];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __80__ICCloudClient_addItemWithSagaID_toPlaylistWithPersistentID_completionHandler___block_invoke;
  v16[3] = &unk_1E7BF77C0;
  v10 = handlerCopy;
  v17 = v10;
  v11 = [xpcConnection remoteObjectProxyWithErrorHandler:v16];
  configuration = [(ICCloudClient *)self configuration];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __80__ICCloudClient_addItemWithSagaID_toPlaylistWithPersistentID_completionHandler___block_invoke_2;
  v14[3] = &unk_1E7BF77C0;
  v15 = v10;
  v13 = v10;
  [v11 addItemWithSagaID:d toPlaylistWithPersistentID:iD configuration:configuration completion:v14];
}

void __80__ICCloudClient_addItemWithSagaID_toPlaylistWithPersistentID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v11 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "Add saga id to playlist failed with error: %{public}@", buf, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = dispatch_get_global_queue(0, 0);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __80__ICCloudClient_addItemWithSagaID_toPlaylistWithPersistentID_completionHandler___block_invoke_22;
    v7[3] = &unk_1E7BF9EC8;
    v9 = v5;
    v8 = v3;
    dispatch_async(v6, v7);
  }
}

void __80__ICCloudClient_addItemWithSagaID_toPlaylistWithPersistentID_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = dispatch_get_global_queue(0, 0);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __80__ICCloudClient_addItemWithSagaID_toPlaylistWithPersistentID_completionHandler___block_invoke_3;
    v6[3] = &unk_1E7BF9EC8;
    v8 = v4;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

- (void)addStoreItemWithAdamID:(int64_t)d referral:(id)referral toPlaylistWithPersistentID:(int64_t)iD completionHandler:(id)handler
{
  handlerCopy = handler;
  referralCopy = referral;
  xpcConnection = [(ICCloudClient *)self xpcConnection];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __94__ICCloudClient_addStoreItemWithAdamID_referral_toPlaylistWithPersistentID_completionHandler___block_invoke;
  v19[3] = &unk_1E7BF77C0;
  v13 = handlerCopy;
  v20 = v13;
  v14 = [xpcConnection remoteObjectProxyWithErrorHandler:v19];
  configuration = [(ICCloudClient *)self configuration];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __94__ICCloudClient_addStoreItemWithAdamID_referral_toPlaylistWithPersistentID_completionHandler___block_invoke_2;
  v17[3] = &unk_1E7BF77C0;
  v18 = v13;
  v16 = v13;
  [v14 addStoreItemWithAdamID:d referral:referralCopy toPlaylistWithPersistentID:iD configuration:configuration completion:v17];
}

void __94__ICCloudClient_addStoreItemWithAdamID_referral_toPlaylistWithPersistentID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v11 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "Add store item to playlist failed with error: %{public}@", buf, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = dispatch_get_global_queue(0, 0);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __94__ICCloudClient_addStoreItemWithAdamID_referral_toPlaylistWithPersistentID_completionHandler___block_invoke_21;
    v7[3] = &unk_1E7BF9EC8;
    v9 = v5;
    v8 = v3;
    dispatch_async(v6, v7);
  }
}

void __94__ICCloudClient_addStoreItemWithAdamID_referral_toPlaylistWithPersistentID_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = dispatch_get_global_queue(0, 0);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __94__ICCloudClient_addStoreItemWithAdamID_referral_toPlaylistWithPersistentID_completionHandler___block_invoke_3;
    v6[3] = &unk_1E7BF9EC8;
    v8 = v4;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

- (void)sdk_setPlaylistProperties:(id)properties trackList:(id)list forPlaylistPersistentID:(int64_t)d completionHandler:(id)handler
{
  propertiesCopy = properties;
  listCopy = list;
  handlerCopy = handler;
  v13 = handlerCopy;
  if (propertiesCopy | listCopy)
  {
    xpcConnection = [(ICCloudClient *)self xpcConnection];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __95__ICCloudClient_sdk_setPlaylistProperties_trackList_forPlaylistPersistentID_completionHandler___block_invoke;
    v20[3] = &unk_1E7BF77C0;
    v15 = v13;
    v21 = v15;
    v16 = [xpcConnection remoteObjectProxyWithErrorHandler:v20];
    configuration = [(ICCloudClient *)self configuration];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __95__ICCloudClient_sdk_setPlaylistProperties_trackList_forPlaylistPersistentID_completionHandler___block_invoke_2;
    v18[3] = &unk_1E7BF77C0;
    v19 = v15;
    [v16 sdk_setPlaylistProperties:propertiesCopy trackList:listCopy forPlaylistPersistentID:d configuration:configuration completion:v18];
  }

  else if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

void __95__ICCloudClient_sdk_setPlaylistProperties_trackList_forPlaylistPersistentID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v11 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "SDK Set cloud playlist properties failed with error: %{public}@", buf, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = dispatch_get_global_queue(0, 0);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __95__ICCloudClient_sdk_setPlaylistProperties_trackList_forPlaylistPersistentID_completionHandler___block_invoke_20;
    v7[3] = &unk_1E7BF9EC8;
    v9 = v5;
    v8 = v3;
    dispatch_async(v6, v7);
  }
}

void __95__ICCloudClient_sdk_setPlaylistProperties_trackList_forPlaylistPersistentID_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = dispatch_get_global_queue(0, 0);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __95__ICCloudClient_sdk_setPlaylistProperties_trackList_forPlaylistPersistentID_completionHandler___block_invoke_3;
    v6[3] = &unk_1E7BF9EC8;
    v8 = v4;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

- (void)setPlaylistProperties:(id)properties trackList:(id)list forPlaylistPersistentID:(int64_t)d completionHandler:(id)handler
{
  propertiesCopy = properties;
  listCopy = list;
  handlerCopy = handler;
  v13 = handlerCopy;
  if (propertiesCopy | listCopy)
  {
    xpcConnection = [(ICCloudClient *)self xpcConnection];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __91__ICCloudClient_setPlaylistProperties_trackList_forPlaylistPersistentID_completionHandler___block_invoke;
    v20[3] = &unk_1E7BF77C0;
    v15 = v13;
    v21 = v15;
    v16 = [xpcConnection remoteObjectProxyWithErrorHandler:v20];
    configuration = [(ICCloudClient *)self configuration];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __91__ICCloudClient_setPlaylistProperties_trackList_forPlaylistPersistentID_completionHandler___block_invoke_2;
    v18[3] = &unk_1E7BF77C0;
    v19 = v15;
    [v16 setPlaylistProperties:propertiesCopy trackList:listCopy forPlaylistPersistentID:d configuration:configuration completion:v18];
  }

  else if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

void __91__ICCloudClient_setPlaylistProperties_trackList_forPlaylistPersistentID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v11 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "Set cloud playlist properties failed with error: %{public}@", buf, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = dispatch_get_global_queue(0, 0);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __91__ICCloudClient_setPlaylistProperties_trackList_forPlaylistPersistentID_completionHandler___block_invoke_19;
    v7[3] = &unk_1E7BF9EC8;
    v9 = v5;
    v8 = v3;
    dispatch_async(v6, v7);
  }
}

void __91__ICCloudClient_setPlaylistProperties_trackList_forPlaylistPersistentID_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = dispatch_get_global_queue(0, 0);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __91__ICCloudClient_setPlaylistProperties_trackList_forPlaylistPersistentID_completionHandler___block_invoke_3;
    v6[3] = &unk_1E7BF9EC8;
    v8 = v4;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

- (void)sdk_createPlaylistWithPersistentID:(int64_t)d properties:(id)properties tracklist:(id)tracklist completionHandler:(id)handler
{
  propertiesCopy = properties;
  tracklistCopy = tracklist;
  handlerCopy = handler;
  v13 = [propertiesCopy objectForKey:@"name"];
  v14 = [v13 length];

  if (v14)
  {
    xpcConnection = [(ICCloudClient *)self xpcConnection];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __91__ICCloudClient_sdk_createPlaylistWithPersistentID_properties_tracklist_completionHandler___block_invoke;
    v23[3] = &unk_1E7BF77C0;
    v16 = handlerCopy;
    v24 = v16;
    v17 = [xpcConnection remoteObjectProxyWithErrorHandler:v23];
    configuration = [(ICCloudClient *)self configuration];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __91__ICCloudClient_sdk_createPlaylistWithPersistentID_properties_tracklist_completionHandler___block_invoke_2;
    v21[3] = &unk_1E7BF73D8;
    v22 = v16;
    [v17 sdk_createPlaylistWithPersistentID:d properties:propertiesCopy trackList:tracklistCopy configuration:configuration completion:v21];

    v19 = v24;
LABEL_7:

    goto LABEL_8;
  }

  v20 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_1B4491000, v20, OS_LOG_TYPE_ERROR, "Must provide at least a playlist name when creating a playlist.", buf, 2u);
  }

  if (handlerCopy)
  {
    v19 = [MEMORY[0x1E696ABC0] ic_cloudClientErrorWithCode:2015 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, 0, v19);
    goto LABEL_7;
  }

LABEL_8:
}

void __91__ICCloudClient_sdk_createPlaylistWithPersistentID_properties_tracklist_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v11 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "SDK: Create cloud playlist failed with error: %{public}@", buf, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = dispatch_get_global_queue(0, 0);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __91__ICCloudClient_sdk_createPlaylistWithPersistentID_properties_tracklist_completionHandler___block_invoke_18;
    v7[3] = &unk_1E7BF9EC8;
    v9 = v5;
    v8 = v3;
    dispatch_async(v6, v7);
  }
}

void __91__ICCloudClient_sdk_createPlaylistWithPersistentID_properties_tracklist_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __91__ICCloudClient_sdk_createPlaylistWithPersistentID_properties_tracklist_completionHandler___block_invoke_3;
  block[3] = &unk_1E7BF7288;
  v10 = *(a1 + 32);
  v11 = a2;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, block);
}

- (void)createPlaylistWithPersistentID:(int64_t)d properties:(id)properties trackList:(id)list completionHandler:(id)handler
{
  propertiesCopy = properties;
  listCopy = list;
  handlerCopy = handler;
  v13 = [propertiesCopy objectForKey:@"name"];
  v14 = [v13 length];

  if (v14)
  {
    xpcConnection = [(ICCloudClient *)self xpcConnection];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __87__ICCloudClient_createPlaylistWithPersistentID_properties_trackList_completionHandler___block_invoke;
    v23[3] = &unk_1E7BF77C0;
    v16 = handlerCopy;
    v24 = v16;
    v17 = [xpcConnection remoteObjectProxyWithErrorHandler:v23];
    configuration = [(ICCloudClient *)self configuration];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __87__ICCloudClient_createPlaylistWithPersistentID_properties_trackList_completionHandler___block_invoke_2;
    v21[3] = &unk_1E7BF73D8;
    v22 = v16;
    [v17 createPlaylistWithPersistentID:d properties:propertiesCopy trackList:listCopy configuration:configuration completion:v21];

    v19 = v24;
LABEL_7:

    goto LABEL_8;
  }

  v20 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_1B4491000, v20, OS_LOG_TYPE_ERROR, "Must provide at least a playlist name when creating a playlist.", buf, 2u);
  }

  if (handlerCopy)
  {
    v19 = [MEMORY[0x1E696ABC0] ic_cloudClientErrorWithCode:2015 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, 0, v19);
    goto LABEL_7;
  }

LABEL_8:
}

void __87__ICCloudClient_createPlaylistWithPersistentID_properties_trackList_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v11 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "Create cloud playlist failed with error: %{public}@", buf, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = dispatch_get_global_queue(0, 0);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __87__ICCloudClient_createPlaylistWithPersistentID_properties_trackList_completionHandler___block_invoke_16;
    v7[3] = &unk_1E7BF9EC8;
    v9 = v5;
    v8 = v3;
    dispatch_async(v6, v7);
  }
}

void __87__ICCloudClient_createPlaylistWithPersistentID_properties_trackList_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __87__ICCloudClient_createPlaylistWithPersistentID_properties_trackList_completionHandler___block_invoke_3;
    block[3] = &unk_1E7BF7288;
    v10 = v6;
    v11 = a2;
    v9 = v5;
    dispatch_async(v7, block);
  }
}

- (void)setCloudFavoriteSongAddToLibraryBehavior:(int64_t)behavior completionHandler:(id)handler
{
  handlerCopy = handler;
  xpcConnection = [(ICCloudClient *)self xpcConnection];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __76__ICCloudClient_setCloudFavoriteSongAddToLibraryBehavior_completionHandler___block_invoke;
  v14[3] = &unk_1E7BF77C0;
  v8 = handlerCopy;
  v15 = v8;
  v9 = [xpcConnection remoteObjectProxyWithErrorHandler:v14];
  configuration = [(ICCloudClient *)self configuration];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __76__ICCloudClient_setCloudFavoriteSongAddToLibraryBehavior_completionHandler___block_invoke_2;
  v12[3] = &unk_1E7BF77C0;
  v13 = v8;
  v11 = v8;
  [v9 setCloudFavoriteSongAddToLibraryBehavior:behavior forConfiguration:configuration completion:v12];
}

void __76__ICCloudClient_setCloudFavoriteSongAddToLibraryBehavior_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v11 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "Set cloud favorite-to-library behavior failed with error: %{public}@", buf, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = dispatch_get_global_queue(0, 0);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __76__ICCloudClient_setCloudFavoriteSongAddToLibraryBehavior_completionHandler___block_invoke_13;
    v7[3] = &unk_1E7BF9EC8;
    v9 = v5;
    v8 = v3;
    dispatch_async(v6, v7);
  }
}

void __76__ICCloudClient_setCloudFavoriteSongAddToLibraryBehavior_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = dispatch_get_global_queue(0, 0);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __76__ICCloudClient_setCloudFavoriteSongAddToLibraryBehavior_completionHandler___block_invoke_3;
    v6[3] = &unk_1E7BF9EC8;
    v8 = v4;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

- (void)setCloudAddToPlaylistBehavior:(int64_t)behavior completionHandler:(id)handler
{
  handlerCopy = handler;
  xpcConnection = [(ICCloudClient *)self xpcConnection];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __65__ICCloudClient_setCloudAddToPlaylistBehavior_completionHandler___block_invoke;
  v14[3] = &unk_1E7BF77C0;
  v8 = handlerCopy;
  v15 = v8;
  v9 = [xpcConnection remoteObjectProxyWithErrorHandler:v14];
  configuration = [(ICCloudClient *)self configuration];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __65__ICCloudClient_setCloudAddToPlaylistBehavior_completionHandler___block_invoke_2;
  v12[3] = &unk_1E7BF77C0;
  v13 = v8;
  v11 = v8;
  [v9 setCloudAddToPlaylistBehavior:behavior forConfiguration:configuration completion:v12];
}

void __65__ICCloudClient_setCloudAddToPlaylistBehavior_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v11 = v3;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_ERROR, "Set cloud add-to-playlist behavior failed with error: %{public}@", buf, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = dispatch_get_global_queue(0, 0);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __65__ICCloudClient_setCloudAddToPlaylistBehavior_completionHandler___block_invoke_11;
    v7[3] = &unk_1E7BF9EC8;
    v9 = v5;
    v8 = v3;
    dispatch_async(v6, v7);
  }
}

void __65__ICCloudClient_setCloudAddToPlaylistBehavior_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = dispatch_get_global_queue(0, 0);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __65__ICCloudClient_setCloudAddToPlaylistBehavior_completionHandler___block_invoke_3;
    v6[3] = &unk_1E7BF9EC8;
    v8 = v4;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

- (void)performBlockAfterServerSetup:(id)setup
{
  setupCopy = setup;
  serverSetupBlockQueue = self->_serverSetupBlockQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__ICCloudClient_performBlockAfterServerSetup___block_invoke;
  v7[3] = &unk_1E7BF9EC8;
  v7[4] = self;
  v8 = setupCopy;
  v6 = setupCopy;
  dispatch_async(serverSetupBlockQueue, v7);
}

void __46__ICCloudClient_performBlockAfterServerSetup___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) serverIsSetup])
  {
    v2 = *(*(a1 + 40) + 16);

    v2();
  }

  else
  {
    v3 = *(*(a1 + 32) + 96);
    v4 = MEMORY[0x1B8C781E0](*(a1 + 40));
    [v3 addObject:v4];

    v5 = [*(a1 + 32) xpcConnection];

    if (!v5)
    {
      v6 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = [*(*(a1 + 32) + 96) count];
        v8 = 134217984;
        v9 = v7;
        _os_log_impl(&dword_1B4491000, v6, OS_LOG_TYPE_ERROR, "xpcConnection=nil. %lu pending blocks may not execute.", &v8, 0xCu);
      }
    }
  }
}

- (ICCloudClient)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v25.receiver = self;
  v25.super_class = ICCloudClient;
  v5 = [(ICCloudClient *)&v25 init];
  if (v5)
  {
    v6 = [configurationCopy copy];
    configuration = v5->_configuration;
    v5->_configuration = v6;

    v8 = dispatch_queue_create("com.apple.iTunesCloud.ICCloudClient.serial.access", 0);
    serialAccessQueue = v5->_serialAccessQueue;
    v5->_serialAccessQueue = v8;

    v10 = dispatch_queue_create("com.apple.iTunesCloud.ICCloudClient.serverSetupQueue", 0);
    serverSetupBlockQueue = v5->_serverSetupBlockQueue;
    v5->_serverSetupBlockQueue = v10;

    v5->_preferredVideoQuality = -1;
    v12 = objc_alloc_init(ICCloudServerListenerEndpointProvider);
    listenerEndpointProvider = v5->_listenerEndpointProvider;
    v5->_listenerEndpointProvider = v12;

    v14 = [[ICCloudClientAvailabilityService alloc] initWithListenerEndpointProvider:v5->_listenerEndpointProvider];
    availabilityService = v5->_availabilityService;
    v5->_availabilityService = v14;

    v16 = [[ICCloudBadgingService alloc] initWithListenerEndpointProvider:v5->_listenerEndpointProvider];
    badgingService = v5->_badgingService;
    v5->_badgingService = v16;

    v18 = [[ICCloudClientCloudService alloc] initWithListenerEndpointProvider:v5->_listenerEndpointProvider];
    cloudService = v5->_cloudService;
    v5->_cloudService = v18;

    array = [MEMORY[0x1E695DF70] array];
    pendingServerSetupCompleteBlocks = v5->_pendingServerSetupCompleteBlocks;
    v5->_pendingServerSetupCompleteBlocks = array;

    out_token = -1;
    notify_register_check("com.apple.itunescloud.setupcompleted", &out_token);
    v23 = 0;
    notify_get_state(out_token, &v23);
    notify_cancel(out_token);
    v5->_serverIsSetup = v23 == 1;
    [(ICCloudClient *)v5 _setupNotifications];
  }

  return v5;
}

- (ICCloudClient)initWithUserIdentity:(id)identity
{
  if (identity)
  {
    identityCopy = identity;
    v5 = [[ICConnectionConfiguration alloc] initWithUserIdentity:identityCopy];
  }

  else
  {
    v5 = 0;
  }

  v6 = [(ICCloudClient *)self initWithConfiguration:v5];

  return v6;
}

@end