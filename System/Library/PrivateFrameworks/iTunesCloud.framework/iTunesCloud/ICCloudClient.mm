@interface ICCloudClient
- (BOOL)_isAuthenticated;
- (BOOL)canShowCloudDownloadButtons;
- (BOOL)canShowCloudMusic;
- (BOOL)canShowCloudVideo;
- (BOOL)createMusicNotificationFromAMSDialogRequest:(id)a3 error:(id *)a4;
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
- (BOOL)isMediaKindDisabledForJaliscoLibrary:(int64_t)a3;
- (BOOL)musicPurchasesDisabledForJaliscoLibrary;
- (BOOL)shouldProhibitActionsForCurrentNetworkConditions;
- (BOOL)shouldProhibitMusicActionForCurrentNetworkConditions;
- (BOOL)shouldProhibitStoreAppsActionForCurrentNetworkConditions;
- (BOOL)shouldProhibitVideosActionForCurrentNetworkConditions;
- (ICCloudClient)initWithConfiguration:(id)a3;
- (ICCloudClient)initWithUserIdentity:(id)a3;
- (ICConnectionConfiguration)configuration;
- (NSXPCConnection)xpcConnection;
- (void)_enableCloudLibraryWithPolicy:(int64_t)a3 startinitialImport:(BOOL)a4 isExplicitUserAction:(BOOL)a5 completionHandler:(id)a6;
- (void)_serverJaliscoUpdateInProgressDidChange;
- (void)_serverSagaUpdateInProgressDidChange;
- (void)_serverSetupDidComplete;
- (void)_setupNotifications;
- (void)_tearDownNotifications;
- (void)addGeniusPlaylistWithPersistentID:(int64_t)a3 name:(id)a4 seedItemSagaIDs:(id)a5 itemSagaIDs:(id)a6 completionHandler:(id)a7;
- (void)addItemWithSagaID:(int64_t)a3 toPlaylistWithPersistentID:(int64_t)a4 completionHandler:(id)a5;
- (void)addStoreItemWithAdamID:(int64_t)a3 referral:(id)a4 completionHandler:(id)a5;
- (void)addStoreItemWithAdamID:(int64_t)a3 referral:(id)a4 toPlaylistWithPersistentID:(int64_t)a5 completionHandler:(id)a6;
- (void)addStoreItemsWithAdamIDs:(id)a3 referral:(id)a4 completionHandler:(id)a5;
- (void)addStorePlaylistWithGlobalID:(id)a3 completionHandler:(id)a4;
- (void)becomeActive;
- (void)beginCollaborationUsingPlaylistWithPersistentID:(int64_t)a3 sharingMode:(unint64_t)a4 completion:(id)a5;
- (void)createPlaylistWithPersistentID:(int64_t)a3 properties:(id)a4 trackList:(id)a5 completionHandler:(id)a6;
- (void)dealloc;
- (void)deauthenticateWithCompletionHandler:(id)a3;
- (void)deprioritizeAlbumArtistHeroImageForPersistentID:(int64_t)a3;
- (void)deprioritizeArtistHeroImageForPersistentID:(int64_t)a3;
- (void)deprioritizeContainerArtworkForSagaID:(unint64_t)a3;
- (void)deprioritizeItemArtworkForPurchaseHistoryID:(unint64_t)a3;
- (void)deprioritizeItemArtworkForSagaID:(unint64_t)a3;
- (void)deprioritizeScreenshotForPurchaseHistoryID:(unint64_t)a3;
- (void)deprioritizeScreenshotForSagaID:(unint64_t)a3;
- (void)deprioritizeSubscriptionContainerArtworkForPersistentID:(int64_t)a3;
- (void)deprioritizeSubscriptionItemArtworkForPersistentID:(int64_t)a3;
- (void)deprioritizeSubscriptionScreenshotForPersistentID:(int64_t)a3;
- (void)disableCloudLibraryWithReason:(int64_t)a3 completionHandler:(id)a4;
- (void)editCollaborationWithPersistentID:(int64_t)a3 properties:(id)a4 trackEdits:(id)a5 completion:(id)a6;
- (void)endCollaborationWithPersistentID:(int64_t)a3 completion:(id)a4;
- (void)favoriteAlbumWithPersistentID:(int64_t)a3 cloudLibraryID:(id)a4 time:(id)a5 completionHandler:(id)a6;
- (void)favoriteArtistWithPersistentID:(int64_t)a3 cloudLibraryID:(id)a4 time:(id)a5 completionHandler:(id)a6;
- (void)favoriteEntityWithPersistentID:(int64_t)a3 sagaID:(int64_t)a4 entityType:(int64_t)a5 time:(id)a6 completionHandler:(id)a7;
- (void)favoriteEntityWithPersistentID:(int64_t)a3 storeID:(int64_t)a4 entityType:(int64_t)a5 time:(id)a6 completionHandler:(id)a7;
- (void)favoritePlaylistWithPersistentID:(int64_t)a3 globalID:(id)a4 time:(id)a5 completionHandler:(id)a6;
- (void)fetchEnhancedAudioOfflineKeys;
- (void)handleAutomaticDownloadPreferenceChangedForMediaKindMusic:(BOOL)a3 withCompletionHandler:(id)a4;
- (void)handleAutomaticDownloadPreferenceChangedForPinnedLibraryEntities:(BOOL)a3;
- (void)hideItemsWithPurchaseHistoryIDs:(id)a3 completionHandler:(id)a4;
- (void)importAlbumArtistHeroImageForPersistentID:(int64_t)a3 completionHandler:(id)a4;
- (void)importArtistHeroImageForPersistentID:(int64_t)a3 completionHandler:(id)a4;
- (void)importContainerArtworkForSagaID:(unint64_t)a3 artworkVariantType:(int64_t)a4 completionHandler:(id)a5;
- (void)importContainerArtworkForSagaID:(unint64_t)a3 completionHandler:(id)a4;
- (void)importItemArtworkForPurchaseHistoryID:(unint64_t)a3 completionHandler:(id)a4;
- (void)importItemArtworkForSagaID:(unint64_t)a3 completionHandler:(id)a4;
- (void)importScreenshotForPurchaseHistoryID:(unint64_t)a3 completionHandler:(id)a4;
- (void)importScreenshotForSagaID:(unint64_t)a3 completionHandler:(id)a4;
- (void)importSubscriptionContainerArtworkForPersistentID:(int64_t)a3 completionHandler:(id)a4;
- (void)importSubscriptionItemArtworkForPersistentID:(int64_t)a3 completionHandler:(id)a4;
- (void)importSubscriptionScreenshotForPersistentID:(int64_t)a3 completionHandler:(id)a4;
- (void)isAuthenticatedWithQueue:(id)a3 completionHandler:(id)a4;
- (void)joinCollaborationWithGlobalPlaylistID:(id)a3 invitationURL:(id)a4 completion:(id)a5;
- (void)listCloudServerOperations;
- (void)loadArtworkInfoForContainerSagaID:(unint64_t)a3 completionHandler:(id)a4;
- (void)loadArtworkInfoForContainerSagaIDs:(id)a3 completionHandler:(id)a4;
- (void)loadArtworkInfoForPurchaseHistoryID:(unint64_t)a3 completionHandler:(id)a4;
- (void)loadArtworkInfoForPurchaseHistoryIDs:(id)a3 completionHandler:(id)a4;
- (void)loadArtworkInfoForSagaID:(unint64_t)a3 completionHandler:(id)a4;
- (void)loadArtworkInfoForSagaIDs:(id)a3 completionHandler:(id)a4;
- (void)loadArtworkInfoForSubscriptionContainerPersistentID:(unint64_t)a3 completionHandler:(id)a4;
- (void)loadArtworkInfoForSubscriptionContainerPersistentIDs:(id)a3 completionHandler:(id)a4;
- (void)loadArtworkInfoForSubscriptionItemPersistentID:(unint64_t)a3 completionHandler:(id)a4;
- (void)loadArtworkInfoForSubscriptionItemPersistentIDs:(id)a3 completionHandler:(id)a4;
- (void)loadBooksForStoreIDs:(id)a3 withCompletionHandler:(id)a4;
- (void)loadGeniusItemsForSagaID:(unint64_t)a3 completionHandler:(id)a4;
- (void)loadIsJaliscoUpdateInProgressWithCompletionHandler:(id)a3;
- (void)loadIsSagaUpdateInProgressWithCompletionHandler:(id)a3;
- (void)loadIsUpdateInProgressWithCompletionHandler:(id)a3;
- (void)loadJaliscoUpdateProgressWithCompletionHandler:(id)a3;
- (void)loadLastKnownEnableICMLErrorStatusWithCompletionHander:(id)a3;
- (void)loadMissingArtwork;
- (void)loadSagaUpdateProgressWithCompletionHandler:(id)a3;
- (void)loadScreenshotInfoForPurchaseHistoryID:(unint64_t)a3 completionHandler:(id)a4;
- (void)loadScreenshotInfoForPurchaseHistoryIDs:(id)a3 completionHandler:(id)a4;
- (void)loadScreenshotInfoForSagaID:(unint64_t)a3 completionHandler:(id)a4;
- (void)loadScreenshotInfoForSagaIDs:(id)a3 completionHandler:(id)a4;
- (void)loadScreenshotInfoForSubscriptionPersistentID:(unint64_t)a3 completionHandler:(id)a4;
- (void)loadScreenshotInfoForSubscriptionPersistentIDs:(id)a3 completionHandler:(id)a4;
- (void)loadUpdateProgressWithCompletionHandler:(id)a3;
- (void)movePinnedAlbumWithPersistentID:(int64_t)a3 cloudAlbumID:(id)a4 toPosition:(int64_t)a5 completion:(id)a6;
- (void)movePinnedArtistWithPersistentID:(int64_t)a3 cloudArtistID:(id)a4 toPosition:(int64_t)a5 completion:(id)a6;
- (void)movePinnedEntityWithPersistentID:(int64_t)a3 cloudID:(int64_t)a4 type:(int64_t)a5 toPosition:(int64_t)a6 completion:(id)a7;
- (void)notifyDeviceSetupFinishedWithCompletion:(id)a3;
- (void)performBlockAfterServerSetup:(id)a3;
- (void)pinLibraryAlbumWithPersistentID:(int64_t)a3 cloudAlbumID:(id)a4 defaultAction:(int64_t)a5 completion:(id)a6;
- (void)pinLibraryArtistWithPersistentID:(int64_t)a3 cloudArtistID:(id)a4 defaultAction:(int64_t)a5 completion:(id)a6;
- (void)pinLibraryEntityWithPersistentID:(int64_t)a3 cloudID:(int64_t)a4 type:(int64_t)a5 defaultAction:(int64_t)a6 completion:(id)a7;
- (void)processPendingKeyInvalidations;
- (void)publishPlaylistWithSagaID:(int64_t)a3 completionHandler:(id)a4;
- (void)refreshEnhancedAudioSharedKeys;
- (void)removeCollaborators:(id)a3 fromCollaborationWithPersistentID:(int64_t)a4 completion:(id)a5;
- (void)removeItemsWithSagaIDs:(id)a3 completionHandler:(id)a4;
- (void)removeJaliscoLibraryWithCompletionHander:(id)a3;
- (void)removePinnedAlbumWithPersistentID:(int64_t)a3 cloudAlbumID:(id)a4 completion:(id)a5;
- (void)removePinnedArtistWithPersistentID:(int64_t)a3 cloudArtistID:(id)a4 completion:(id)a5;
- (void)removePinnedEntityWithPersistentID:(int64_t)a3 cloudID:(int64_t)a4 type:(int64_t)a5 completion:(id)a6;
- (void)removePlaylistsWithSagaIDs:(id)a3 performDeltaSync:(BOOL)a4 completionHandler:(id)a5;
- (void)reportAppIconBadgeActionMetrics;
- (void)resetConfiguration:(id)a3;
- (void)resetInvitationURLForCollaborationWithPersistentID:(int64_t)a3 completion:(id)a4;
- (void)respondToPendingCollaborator:(id)a3 onCollaborationWithPersistentID:(int64_t)a4 withApproval:(BOOL)a5 completion:(id)a6;
- (void)sdk_addItemWithSagaID:(int64_t)a3 toPlaylistWithPersistentID:(int64_t)a4 completionHandler:(id)a5;
- (void)sdk_addStoreItemWithOpaqueID:(id)a3 completionHandler:(id)a4;
- (void)sdk_addStoreItemWithOpaqueID:(id)a3 toPlaylistWithPersistentID:(int64_t)a4 completionHandler:(id)a5;
- (void)sdk_createPlaylistWithPersistentID:(int64_t)a3 properties:(id)a4 tracklist:(id)a5 completionHandler:(id)a6;
- (void)sdk_setPlaylistProperties:(id)a3 trackList:(id)a4 forPlaylistPersistentID:(int64_t)a5 completionHandler:(id)a6;
- (void)setActive:(BOOL)a3;
- (void)setAlbumArtistProperties:(id)a3 forAlbumArtistPersistentID:(int64_t)a4 completionHandler:(id)a5;
- (void)setAlbumEntityProperties:(id)a3 forAlbumPersistentID:(int64_t)a4 completionHandler:(id)a5;
- (void)setAlbumProperties:(id)a3 forAlbumPersistentID:(int64_t)a4 completionHandler:(id)a5;
- (void)setCloudAddToPlaylistBehavior:(int64_t)a3 completionHandler:(id)a4;
- (void)setCloudFavoriteSongAddToLibraryBehavior:(int64_t)a3 completionHandler:(id)a4;
- (void)setItemProperties:(id)a3 forPurchaseHistoryID:(unint64_t)a4;
- (void)setItemProperties:(id)a3 forSagaID:(unint64_t)a4;
- (void)setPlaylistProperties:(id)a3 trackList:(id)a4 forPlaylistPersistentID:(int64_t)a5 completionHandler:(id)a6;
- (void)setPreferredVideoQuality:(int64_t)a3;
- (void)updateArtistHeroImages;
- (void)updateJaliscoLibraryWithReason:(int64_t)a3 completionHandler:(id)a4;
- (void)updatePinnedLibraryAlbumWithPersistentID:(int64_t)a3 cloudAlbumID:(id)a4 defaultAction:(int64_t)a5 completion:(id)a6;
- (void)updatePinnedLibraryArtistWithPersistentID:(int64_t)a3 cloudArtistID:(id)a4 defaultAction:(int64_t)a5 completion:(id)a6;
- (void)updatePinnedLibraryEntityWithPersistentID:(int64_t)a3 cloudID:(int64_t)a4 type:(int64_t)a5 defaultAction:(int64_t)a6 completion:(id)a7;
- (void)updatePinnedSubscribedPlaylistsWithCompletion:(id)a3;
- (void)updateSagaLibraryWithReason:(int64_t)a3 completionHandler:(id)a4;
- (void)updateSubscribedPlaylistsWithSagaIDs:(id)a3 ignoreMinRefreshInterval:(BOOL)a4 completionHandler:(id)a5;
- (void)uploadArtworkForPlaylistWithPersistentID:(int64_t)a3 completionHandler:(id)a4;
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
  v4 = [(ICCloudClient *)self configuration];
  v5 = [v4 userIdentityStore];

  if (!v5)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"ICCloudClient.m" lineNumber:2359 description:@"userIndentityStore cannot be nil"];
  }

  v6 = [v4 userIdentity];

  if (!v6)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"ICCloudClient.m" lineNumber:2360 description:@"userIndentity cannot be nil"];
  }

  v7 = [v4 userIdentityStore];
  [v7 synchronize];

  v8 = [(ICCloudClient *)self configuration];
  v9 = [v8 userIdentityStore];
  v10 = [(ICCloudClient *)self configuration];
  v11 = [v10 userIdentity];
  v20 = 0;
  v12 = [v9 getPropertiesForUserIdentity:v11 error:&v20];
  v13 = v20;

  if (v13 || !v12)
  {
    v15 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [v4 userIdentity];
      *buf = 138543874;
      v22 = self;
      v23 = 2112;
      v24 = v16;
      v25 = 2114;
      v26 = v13;
      _os_log_impl(&dword_1B4491000, v15, OS_LOG_TYPE_ERROR, "%{public}@ - isAuthenticatedWithQueue: - Error retrieving properties - userIdentity=%@ - error=%{public}@", buf, 0x20u);
    }

    LOBYTE(v14) = 0;
  }

  else
  {
    v14 = [v12 isActiveLocker];
    v15 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v22 = self;
      v23 = 1024;
      LODWORD(v24) = v14;
      _os_log_impl(&dword_1B4491000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ - isAuthenticatedWithQueue: - isAuthenticated=%{BOOL}u", buf, 0x12u);
    }
  }

  return v14;
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
  v2 = [(ICCloudClient *)self cloudService];
  v3 = [v2 xpcConnection];

  return v3;
}

- (void)_serverJaliscoUpdateInProgressDidChange
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = [(ICCloudClient *)self updateJaliscoInProgressChangedHandler];
  v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v8 = self;
    v9 = 1024;
    v10 = v3 != 0;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ - Receveived Jalisco update in progress notification [Handler present: %{BOOL}u", buf, 0x12u);
  }

  if (v3)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __56__ICCloudClient__serverJaliscoUpdateInProgressDidChange__block_invoke;
    v5[3] = &unk_1E7BF4108;
    v6 = v3;
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

  v4 = [(ICCloudClient *)self xpcConnection];
  v5 = [v4 remoteObjectProxyWithErrorHandler:&__block_literal_global_211];
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
    v3 = [(ICCloudClient *)self xpcConnection];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __29__ICCloudClient_becomeActive__block_invoke;
    v12[3] = &unk_1E7BF8E70;
    v12[4] = &v13;
    v4 = [v3 remoteObjectProxyWithErrorHandler:v12];

    if (v14[5])
    {
      v5 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = v14[5];
        *buf = 134218242;
        v20 = self;
        v21 = 2114;
        v22 = v6;
        _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_ERROR, "ICCloudClient %p - becomeActive - Error retrieving xpc service - error=%{public}@", buf, 0x16u);
      }

      goto LABEL_13;
    }

    v7 = [(ICCloudClient *)self configuration];
    [v4 setupInitialJaliscoPoolingForConfiguration:v7];

    v8 = [MEMORY[0x1E696AAE8] mainBundle];
    v5 = [v8 bundleIdentifier];

    v9 = ICBundleIdentifierForSystemApplicationType(0);
    if ([v5 isEqualToString:v9])
    {
      if (![(ICCloudClient *)self isAuthenticated]|| ![(ICCloudClient *)self isActive])
      {
        goto LABEL_12;
      }

      v10 = [(ICCloudClient *)self configuration];
      [v4 setupInitialSagaPoolingForConfiguration:v10];
    }

    else
    {
      v10 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v20 = v5;
        _os_log_impl(&dword_1B4491000, v10, OS_LOG_TYPE_DEFAULT, "Skip refreshing cloud library and subscribed playlists for bundle: %{public}@", buf, 0xCu);
      }
    }

LABEL_12:
    v11 = [(ICCloudClient *)self configuration];
    [v4 updateArtistHeroImagesForConfiguration:v11];

LABEL_13:
    _Block_object_dispose(&v13, 8);
  }
}

- (BOOL)isActive
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(ICCloudClient *)self serialAccessQueue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __25__ICCloudClient_isActive__block_invoke;
  v5[3] = &unk_1E7BFA430;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(v3, v5);

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

- (void)_serverSagaUpdateInProgressDidChange
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = [(ICCloudClient *)self updateSagaInProgressChangedHandler];
  v4 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v8 = self;
    v9 = 1024;
    v10 = v3 != 0;
    _os_log_impl(&dword_1B4491000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ - Receveived Saga update in progress notification [Handler present: %{BOOL}u", buf, 0x12u);
  }

  if (v3)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __53__ICCloudClient__serverSagaUpdateInProgressDidChange__block_invoke;
    v5[3] = &unk_1E7BF4108;
    v6 = v3;
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

- (void)setActive:(BOOL)a3
{
  v5 = [(ICCloudClient *)self serialAccessQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __27__ICCloudClient_setActive___block_invoke;
  v6[3] = &unk_1E7BF7860;
  v6[4] = self;
  v7 = a3;
  dispatch_sync(v5, v6);
}

- (BOOL)shouldProhibitActionsForCurrentNetworkConditions
{
  v2 = [(ICCloudClient *)self availabilityService];
  v3 = [v2 shouldProhibitStoreAppsActionForCurrentNetworkConditions];

  return v3;
}

- (BOOL)isCellularDataRestricted
{
  v2 = [(ICCloudClient *)self availabilityService];
  v3 = [v2 isCellularDataRestrictedForStoreApps];

  return v3;
}

- (BOOL)canShowCloudVideo
{
  v2 = [(ICCloudClient *)self availabilityService];
  v3 = [v2 canShowCloudVideo];

  return v3;
}

- (BOOL)canShowCloudMusic
{
  v2 = [(ICCloudClient *)self availabilityService];
  v3 = [v2 canShowCloudMusic];

  return v3;
}

- (BOOL)canShowCloudDownloadButtons
{
  v2 = [(ICCloudClient *)self availabilityService];
  v3 = [v2 canShowCloudDownloadButtons];

  return v3;
}

- (BOOL)shouldProhibitStoreAppsActionForCurrentNetworkConditions
{
  v2 = [(ICCloudClient *)self availabilityService];
  v3 = [v2 shouldProhibitStoreAppsActionForCurrentNetworkConditions];

  return v3;
}

- (BOOL)isCellularDataRestrictedForStoreApps
{
  v2 = [(ICCloudClient *)self availabilityService];
  v3 = [v2 isCellularDataRestrictedForStoreApps];

  return v3;
}

- (BOOL)shouldProhibitVideosActionForCurrentNetworkConditions
{
  v2 = [(ICCloudClient *)self availabilityService];
  v3 = [v2 shouldProhibitVideosActionForCurrentNetworkConditions];

  return v3;
}

- (BOOL)isCellularDataRestrictedForVideos
{
  v2 = [(ICCloudClient *)self availabilityService];
  v3 = [v2 isCellularDataRestrictedForVideos];

  return v3;
}

- (BOOL)shouldProhibitMusicActionForCurrentNetworkConditions
{
  v2 = [(ICCloudClient *)self availabilityService];
  v3 = [v2 shouldProhibitMusicActionForCurrentNetworkConditions];

  return v3;
}

- (BOOL)isCellularDataRestrictedForMusic
{
  v2 = [(ICCloudClient *)self availabilityService];
  v3 = [v2 isCellularDataRestrictedForMusic];

  return v3;
}

- (BOOL)hasProperNetworkConditionsToShowCloudMedia
{
  v2 = [(ICCloudClient *)self availabilityService];
  v3 = [v2 hasProperNetworkConditionsToShowCloudMedia];

  return v3;
}

- (BOOL)hasProperNetworkConditionsToPlayMedia
{
  v2 = [(ICCloudClient *)self availabilityService];
  v3 = [v2 hasProperNetworkConditionsToPlayMedia];

  return v3;
}

- (void)listCloudServerOperations
{
  v3 = [(ICCloudClient *)self xpcConnection];
  v2 = [v3 remoteObjectProxyWithErrorHandler:&__block_literal_global_213];
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

- (void)notifyDeviceSetupFinishedWithCompletion:(id)a3
{
  v4 = a3;
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
  v9 = v4;
  v7 = v4;
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

  v4 = [(ICCloudClient *)self xpcConnection];
  v5 = [v4 remoteObjectProxyWithErrorHandler:&__block_literal_global_209];
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

  v4 = [(ICCloudClient *)self xpcConnection];
  v5 = [v4 remoteObjectProxyWithErrorHandler:&__block_literal_global_207];
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

- (BOOL)createMusicNotificationFromAMSDialogRequest:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = ICBundleIdentifierForSystemApplicationType(0);
  v7 = +[ICInAppMessageManager sharedManager];
  [v7 addMessageEntryFromAMSDialogRequest:v5 bundleIdentifier:v6 completion:&__block_literal_global_205];

  if (a4)
  {
    *a4 = 0;
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

- (void)handleAutomaticDownloadPreferenceChangedForPinnedLibraryEntities:(BOOL)a3
{
  v3 = a3;
  v17 = *MEMORY[0x1E69E9840];
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"AutomaticDownloadEnabledForLibraryPins", @"com.apple.mobileipod", 0);
  v6 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543874;
    v12 = self;
    v13 = 1024;
    v14 = v3;
    v15 = 1024;
    v16 = AppBooleanValue != 0;
    _os_log_impl(&dword_1B4491000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ Updating automatic download preference change for library pins. shouldAutomaticallyDownload=%{BOOL}u, currentAutomaticDownloadPrefs=%{BOOL}u", &v11, 0x18u);
  }

  if ((AppBooleanValue != 0) == v3 || (CFPreferencesSetAppValue(@"AutomaticDownloadEnabledForLibraryPins", [MEMORY[0x1E696AD98] numberWithBool:v3], @"com.apple.mobileipod"), CFPreferencesAppSynchronize(@"com.apple.mobileipod")))
  {
    if (!v3)
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

  if (v3)
  {
LABEL_6:
    if ((MSVDeviceIsiPhone() & 1) != 0 || (MSVDeviceIsiPad() & 1) != 0 || MSVDeviceIsROSDevice())
    {
      v7 = [(ICCloudClient *)self xpcConnection];
      v8 = [v7 remoteObjectProxyWithErrorHandler:&__block_literal_global_202];
      v9 = [(ICCloudClient *)self configuration];
      [v8 prepareToDownloadAllLibraryPinnedEntitiesForConfiguration:v9];
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
  v3 = [v2 automaticDownloadsEnabled];

  return v3;
}

- (BOOL)isAutomaticDownloadsEnabledForMediaKindMusic
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E6959A48] ic_sharedAccountStore];
  v8 = 0;
  v3 = [v2 ic_activeStoreAccountWithError:&v8];
  v4 = v8;

  if (v3)
  {
    v5 = [v3 ic_isAutomaticDownloadsEnabledForMediaKindMusic];
    v6 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v10) = v5;
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

    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)handleAutomaticDownloadPreferenceChangedForMediaKindMusic:(BOOL)a3 withCompletionHandler:(id)a4
{
  v4 = a3;
  v24 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v21 = self;
    v22 = 1024;
    v23 = v4;
    _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Updating automatic download preference change. shouldAutomaticallyDownload=%{BOOL}u", buf, 0x12u);
  }

  v8 = +[ICUpdateAutomaticDownloadMediaKindsRequest automaticDownloadMediaKindsForMusic];
  v9 = [ICStoreRequestContext alloc];
  v10 = +[ICUserIdentity activeAccount];
  v11 = [(ICStoreRequestContext *)v9 initWithIdentity:v10];

  v12 = [ICUpdateAutomaticDownloadMediaKindsRequest alloc];
  if (v4)
  {
    v13 = v8;
  }

  else
  {
    v13 = 0;
  }

  if (v4)
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
  v19 = v4;
  v17[4] = self;
  v18 = v6;
  v16 = v6;
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

- (void)loadBooksForStoreIDs:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ICCloudClient *)self xpcConnection];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __60__ICCloudClient_loadBooksForStoreIDs_withCompletionHandler___block_invoke;
  v15[3] = &unk_1E7BF77C0;
  v9 = v6;
  v16 = v9;
  v10 = [v8 remoteObjectProxyWithErrorHandler:v15];
  v11 = [(ICCloudClient *)self configuration];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __60__ICCloudClient_loadBooksForStoreIDs_withCompletionHandler___block_invoke_2;
  v13[3] = &unk_1E7BF59C0;
  v14 = v9;
  v12 = v9;
  [v10 loadBooksForStoreIDs:v7 configuration:v11 completion:v13];
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

  v4 = [(ICCloudClient *)self xpcConnection];
  v5 = [v4 remoteObjectProxyWithErrorHandler:&__block_literal_global_186];
  v6 = [(ICCloudClient *)self configuration];
  [v5 updateArtistHeroImagesForConfiguration:v6];
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

- (void)setAlbumArtistProperties:(id)a3 forAlbumArtistPersistentID:(int64_t)a4 completionHandler:(id)a5
{
  v24 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = os_log_create("com.apple.amp.iTunesCloud", "Default_Oversize");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v21 = v8;
    v22 = 2048;
    v23 = a4;
    _os_log_impl(&dword_1B4491000, v10, OS_LOG_TYPE_DEFAULT, "Setting album artist properties %{public}@ for persistent ID %llu...", buf, 0x16u);
  }

  v11 = [(ICCloudClient *)self xpcConnection];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __87__ICCloudClient_setAlbumArtistProperties_forAlbumArtistPersistentID_completionHandler___block_invoke;
  v18[3] = &unk_1E7BF77C0;
  v12 = v9;
  v19 = v12;
  v13 = [v11 remoteObjectProxyWithErrorHandler:v18];
  v14 = [(ICCloudClient *)self configuration];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __87__ICCloudClient_setAlbumArtistProperties_forAlbumArtistPersistentID_completionHandler___block_invoke_2;
  v16[3] = &unk_1E7BF77C0;
  v17 = v12;
  v15 = v12;
  [v13 setAlbumArtistProperties:v8 forAlbumArtistPersistentID:a4 configuration:v14 completion:v16];
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

- (void)setAlbumEntityProperties:(id)a3 forAlbumPersistentID:(int64_t)a4 completionHandler:(id)a5
{
  v24 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = os_log_create("com.apple.amp.iTunesCloud", "Default_Oversize");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v21 = v8;
    v22 = 2048;
    v23 = a4;
    _os_log_impl(&dword_1B4491000, v10, OS_LOG_TYPE_DEFAULT, "Setting album properties %{public}@ for persistent ID %llu ...", buf, 0x16u);
  }

  v11 = [(ICCloudClient *)self xpcConnection];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __81__ICCloudClient_setAlbumEntityProperties_forAlbumPersistentID_completionHandler___block_invoke;
  v18[3] = &unk_1E7BF77C0;
  v12 = v9;
  v19 = v12;
  v13 = [v11 remoteObjectProxyWithErrorHandler:v18];
  v14 = [(ICCloudClient *)self configuration];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __81__ICCloudClient_setAlbumEntityProperties_forAlbumPersistentID_completionHandler___block_invoke_2;
  v16[3] = &unk_1E7BF77C0;
  v17 = v12;
  v15 = v12;
  [v13 setAlbumEntityProperties:v8 forAlbumPersistentID:a4 configuration:v14 completion:v16];
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

- (void)setAlbumProperties:(id)a3 forAlbumPersistentID:(int64_t)a4 completionHandler:(id)a5
{
  v24 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = os_log_create("com.apple.amp.iTunesCloud", "Default_Oversize");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v21 = v8;
    v22 = 2048;
    v23 = a4;
    _os_log_impl(&dword_1B4491000, v10, OS_LOG_TYPE_DEFAULT, "Setting album properties %{public}@ for persistent ID %llu...", buf, 0x16u);
  }

  v11 = [(ICCloudClient *)self xpcConnection];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __75__ICCloudClient_setAlbumProperties_forAlbumPersistentID_completionHandler___block_invoke;
  v18[3] = &unk_1E7BF77C0;
  v12 = v9;
  v19 = v12;
  v13 = [v11 remoteObjectProxyWithErrorHandler:v18];
  v14 = [(ICCloudClient *)self configuration];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __75__ICCloudClient_setAlbumProperties_forAlbumPersistentID_completionHandler___block_invoke_2;
  v16[3] = &unk_1E7BF77C0;
  v17 = v12;
  v15 = v12;
  [v13 setAlbumProperties:v8 forAlbumPersistentID:a4 configuration:v14 completion:v16];
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
  v5 = [(ICCloudClient *)self xpcConnection];
  v3 = [v5 remoteObjectProxyWithErrorHandler:&__block_literal_global_175];
  v4 = [(ICCloudClient *)self configuration];
  [v3 uploadCloudPlaylistPropertiesForConfiguration:v4 completion:&__block_literal_global_178];
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
  v5 = [(ICCloudClient *)self xpcConnection];
  v3 = [v5 remoteObjectProxyWithErrorHandler:&__block_literal_global_170];
  v4 = [(ICCloudClient *)self configuration];
  [v3 uploadCloudItemPropertiesForConfiguration:v4 completion:&__block_literal_global_173];
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

- (void)setItemProperties:(id)a3 forSagaID:(unint64_t)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (a4)
  {
    v7 = os_log_create("com.apple.amp.iTunesCloud", "Default_Oversize");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543618;
      v12 = v6;
      v13 = 2048;
      v14 = a4;
      _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_DEFAULT, "Setting item properties %{public}@ for saga ID %llu...", &v11, 0x16u);
    }

    v8 = [(ICCloudClient *)self xpcConnection];
    v9 = [v8 remoteObjectProxyWithErrorHandler:&__block_literal_global_165];
    v10 = [(ICCloudClient *)self configuration];
    [v9 setItemProperties:v6 forSagaID:a4 configuration:v10 completion:&__block_literal_global_168];
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

- (void)setItemProperties:(id)a3 forPurchaseHistoryID:(unint64_t)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (a4)
  {
    v7 = os_log_create("com.apple.amp.iTunesCloud", "Default_Oversize");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543618;
      v12 = v6;
      v13 = 2048;
      v14 = a4;
      _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_DEFAULT, "Setting item properties %{public}@ for purchaseHistoryID %llu...", &v11, 0x16u);
    }

    v8 = [(ICCloudClient *)self xpcConnection];
    v9 = [v8 remoteObjectProxyWithErrorHandler:&__block_literal_global_160];
    v10 = [(ICCloudClient *)self configuration];
    [v9 setItemProperties:v6 forPurchaseHistoryID:a4 configuration:v10 completion:&__block_literal_global_163];
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

- (void)setPreferredVideoQuality:(int64_t)a3
{
  v5 = [(ICCloudClient *)self serialAccessQueue];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __42__ICCloudClient_setPreferredVideoQuality___block_invoke;
  v10[3] = &unk_1E7BF9890;
  v10[4] = self;
  v10[5] = a3;
  dispatch_sync(v5, v10);

  v6 = [(ICCloudClient *)self xpcConnection];
  v7 = [v6 remoteObjectProxy];
  preferredVideoQuality = self->_preferredVideoQuality;
  v9 = [(ICCloudClient *)self configuration];
  [v7 setPreferredVideoQuality:preferredVideoQuality forConfiguration:v9 completion:&__block_literal_global_158];
}

- (void)resetConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(ICCloudClient *)self serialAccessQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __36__ICCloudClient_resetConfiguration___block_invoke;
  v7[3] = &unk_1E7BFA078;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

- (void)reportAppIconBadgeActionMetrics
{
  v2 = [(ICCloudClient *)self badgingService];
  [v2 reportAppIconBadgeActionMetrics];
}

- (BOOL)initialLibrarySyncsComplete
{
  v41 = *MEMORY[0x1E69E9840];
  v3 = [(ICCloudClient *)self configuration];
  v4 = [v3 userIdentity];

  v5 = [getML3MusicLibraryClass() musicLibraryForUserAccount:v4];
  v6 = [(ICCloudClient *)self configuration];
  v7 = [v6 userIdentityStore];
  v30 = 0;
  v8 = [v7 getPropertiesForUserIdentity:v4 error:&v30];
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

  v11 = [v5 jaliscoOnDiskDatabaseRevision];
  v12 = [v5 sagaOnDiskDatabaseRevision];
  v13 = [v5 syncLibraryID];
  v14 = [v8 isActiveLocker];
  v15 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 138544386;
    v32 = v4;
    v33 = 2048;
    v34 = v11;
    v35 = 2048;
    v36 = v12;
    v37 = 2114;
    v38 = v13;
    v39 = 1024;
    v40 = v14;
    _os_log_impl(&dword_1B4491000, v15, OS_LOG_TYPE_ERROR, "Checking if initial library syncs are completed. userIdentity = %{public}@, jaliscoOnDiskDatabaseRevision=%ld, sagaOnDiskDatabaseRevision=%ld, syncLibraryID=%{public}@, isActiveLocker=%{BOOL}u", buf, 0x30u);
  }

  v28 = v5;

  v16 = +[ICDeviceInfo currentDeviceInfo];
  if ([v16 isWatch])
  {
    v17 = +[ICNanoPairedDeviceStatusMonitor sharedMonitor];
    v18 = v4;
    v19 = v9;
    v20 = [v17 isMediaSyncingSupported] ^ 1;
    v21 = v13;

    v22 = v20 | (v13 != 0);
    v9 = v19;
    v4 = v18;
  }

  else
  {
    v21 = v13;

    v22 = 1;
  }

  if (v8)
  {
    v23 = v11 == 0;
  }

  else
  {
    v23 = 0;
  }

  v24 = !v23;
  v25 = ((v12 != 0) | ~[v8 isActiveLocker]) & v24 & v22;
  v26 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    LODWORD(v32) = v25;
    _os_log_impl(&dword_1B4491000, v26, OS_LOG_TYPE_ERROR, "Initial library syncs completed: %{BOOL}u", buf, 8u);
  }

  return v25;
}

- (void)loadJaliscoUpdateProgressWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(ICCloudClient *)self xpcConnection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __64__ICCloudClient_loadJaliscoUpdateProgressWithCompletionHandler___block_invoke;
  v12[3] = &unk_1E7BF77C0;
  v6 = v4;
  v13 = v6;
  v7 = [v5 remoteObjectProxyWithErrorHandler:v12];
  v8 = [(ICCloudClient *)self configuration];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __64__ICCloudClient_loadJaliscoUpdateProgressWithCompletionHandler___block_invoke_2;
  v10[3] = &unk_1E7BF4158;
  v11 = v6;
  v9 = v6;
  [v7 loadJaliscoUpdateProgressForConfiguration:v8 completion:v10];
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

- (void)loadSagaUpdateProgressWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(ICCloudClient *)self xpcConnection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __61__ICCloudClient_loadSagaUpdateProgressWithCompletionHandler___block_invoke;
  v12[3] = &unk_1E7BF77C0;
  v6 = v4;
  v13 = v6;
  v7 = [v5 remoteObjectProxyWithErrorHandler:v12];
  v8 = [(ICCloudClient *)self configuration];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __61__ICCloudClient_loadSagaUpdateProgressWithCompletionHandler___block_invoke_2;
  v10[3] = &unk_1E7BF4158;
  v11 = v6;
  v9 = v6;
  [v7 loadSagaUpdateProgressForConfiguration:v8 completion:v10];
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

- (void)loadIsJaliscoUpdateInProgressWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(ICCloudClient *)self xpcConnection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __68__ICCloudClient_loadIsJaliscoUpdateInProgressWithCompletionHandler___block_invoke;
  v12[3] = &unk_1E7BF77C0;
  v6 = v4;
  v13 = v6;
  v7 = [v5 remoteObjectProxyWithErrorHandler:v12];
  v8 = [(ICCloudClient *)self configuration];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __68__ICCloudClient_loadIsJaliscoUpdateInProgressWithCompletionHandler___block_invoke_2;
  v10[3] = &unk_1E7BF4108;
  v11 = v6;
  v9 = v6;
  [v7 loadIsJaliscoUpdateInProgressForConfiguration:v8 completion:v10];
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

- (void)loadIsSagaUpdateInProgressWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(ICCloudClient *)self xpcConnection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __65__ICCloudClient_loadIsSagaUpdateInProgressWithCompletionHandler___block_invoke;
  v12[3] = &unk_1E7BF77C0;
  v6 = v4;
  v13 = v6;
  v7 = [v5 remoteObjectProxyWithErrorHandler:v12];
  v8 = [(ICCloudClient *)self configuration];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __65__ICCloudClient_loadIsSagaUpdateInProgressWithCompletionHandler___block_invoke_2;
  v10[3] = &unk_1E7BF4108;
  v11 = v6;
  v9 = v6;
  [v7 loadIsSagaUpdateInProgressForConfiguration:v8 completion:v10];
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

- (void)loadUpdateProgressWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(ICCloudClient *)self xpcConnection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __57__ICCloudClient_loadUpdateProgressWithCompletionHandler___block_invoke;
  v12[3] = &unk_1E7BF77C0;
  v6 = v4;
  v13 = v6;
  v7 = [v5 remoteObjectProxyWithErrorHandler:v12];
  v8 = [(ICCloudClient *)self configuration];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __57__ICCloudClient_loadUpdateProgressWithCompletionHandler___block_invoke_2;
  v10[3] = &unk_1E7BF4158;
  v11 = v6;
  v9 = v6;
  [v7 loadUpdateProgressForConfiguration:v8 completion:v10];
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

- (void)loadIsUpdateInProgressWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(ICCloudClient *)self xpcConnection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __61__ICCloudClient_loadIsUpdateInProgressWithCompletionHandler___block_invoke;
  v12[3] = &unk_1E7BF77C0;
  v6 = v4;
  v13 = v6;
  v7 = [v5 remoteObjectProxyWithErrorHandler:v12];
  v8 = [(ICCloudClient *)self configuration];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __61__ICCloudClient_loadIsUpdateInProgressWithCompletionHandler___block_invoke_2;
  v10[3] = &unk_1E7BF4108;
  v11 = v6;
  v9 = v6;
  [v7 loadIsUpdateInProgressForConfiguration:v8 completion:v10];
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

- (void)loadGeniusItemsForSagaID:(unint64_t)a3 completionHandler:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = v6;
  if (a3)
  {
    v8 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v19 = a3;
      _os_log_impl(&dword_1B4491000, v8, OS_LOG_TYPE_DEFAULT, "Sending load genius items request for saga ID %llu...", buf, 0xCu);
    }

    v9 = [(ICCloudClient *)self xpcConnection];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __60__ICCloudClient_loadGeniusItemsForSagaID_completionHandler___block_invoke;
    v16[3] = &unk_1E7BF77C0;
    v10 = v7;
    v17 = v10;
    v11 = [v9 remoteObjectProxyWithErrorHandler:v16];
    v12 = [(ICCloudClient *)self configuration];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __60__ICCloudClient_loadGeniusItemsForSagaID_completionHandler___block_invoke_2;
    v14[3] = &unk_1E7BF59C0;
    v15 = v10;
    [v11 loadGeniusItemsForSagaID:a3 configuration:v12 completion:v14];
  }

  else if (v6)
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
  v5 = [(ICCloudClient *)self xpcConnection];
  v3 = [v5 remoteObjectProxyWithErrorHandler:&__block_literal_global_4240];
  v4 = [(ICCloudClient *)self configuration];
  [v3 loadMissingArtworkForConfiguration:v4];
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

- (void)loadArtworkInfoForSubscriptionContainerPersistentIDs:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6 && [v6 count])
  {
    v8 = [(ICCloudClient *)self xpcConnection];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __88__ICCloudClient_loadArtworkInfoForSubscriptionContainerPersistentIDs_completionHandler___block_invoke;
    v14[3] = &unk_1E7BF77C0;
    v9 = v7;
    v15 = v9;
    v10 = [v8 remoteObjectProxyWithErrorHandler:v14];
    v11 = [(ICCloudClient *)self configuration];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __88__ICCloudClient_loadArtworkInfoForSubscriptionContainerPersistentIDs_completionHandler___block_invoke_2;
    v12[3] = &unk_1E7BF40E0;
    v13 = v9;
    [v10 loadArtworkInfoForSubscriptionContainerPersistentIDs:v6 configuration:v11 completion:v12];
  }

  else if (v7)
  {
    (*(v7 + 2))(v7, MEMORY[0x1E695E0F0]);
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

- (void)loadArtworkInfoForSubscriptionContainerPersistentID:(unint64_t)a3 completionHandler:(id)a4
{
  v12[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a3];
  v12[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __87__ICCloudClient_loadArtworkInfoForSubscriptionContainerPersistentID_completionHandler___block_invoke;
  v10[3] = &unk_1E7BF40B8;
  v11 = v6;
  v9 = v6;
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

- (void)loadScreenshotInfoForSubscriptionPersistentIDs:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6 && [v6 count])
  {
    v8 = [(ICCloudClient *)self xpcConnection];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __82__ICCloudClient_loadScreenshotInfoForSubscriptionPersistentIDs_completionHandler___block_invoke;
    v14[3] = &unk_1E7BF77C0;
    v9 = v7;
    v15 = v9;
    v10 = [v8 remoteObjectProxyWithErrorHandler:v14];
    v11 = [(ICCloudClient *)self configuration];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __82__ICCloudClient_loadScreenshotInfoForSubscriptionPersistentIDs_completionHandler___block_invoke_2;
    v12[3] = &unk_1E7BF40E0;
    v13 = v9;
    [v10 loadScreenshotInfoForSubscriptionPersistentIDs:v6 configuration:v11 completion:v12];
  }

  else if (v7)
  {
    (*(v7 + 2))(v7, MEMORY[0x1E695E0F0]);
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

- (void)loadScreenshotInfoForSubscriptionPersistentID:(unint64_t)a3 completionHandler:(id)a4
{
  v12[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a3];
  v12[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __81__ICCloudClient_loadScreenshotInfoForSubscriptionPersistentID_completionHandler___block_invoke;
  v10[3] = &unk_1E7BF40B8;
  v11 = v6;
  v9 = v6;
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

- (void)loadArtworkInfoForSubscriptionItemPersistentIDs:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6 && [v6 count])
  {
    v8 = [(ICCloudClient *)self xpcConnection];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __83__ICCloudClient_loadArtworkInfoForSubscriptionItemPersistentIDs_completionHandler___block_invoke;
    v14[3] = &unk_1E7BF77C0;
    v9 = v7;
    v15 = v9;
    v10 = [v8 remoteObjectProxyWithErrorHandler:v14];
    v11 = [(ICCloudClient *)self configuration];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __83__ICCloudClient_loadArtworkInfoForSubscriptionItemPersistentIDs_completionHandler___block_invoke_2;
    v12[3] = &unk_1E7BF40E0;
    v13 = v9;
    [v10 loadArtworkInfoForSubscriptionItemPersistentIDs:v6 configuration:v11 completion:v12];
  }

  else if (v7)
  {
    (*(v7 + 2))(v7, MEMORY[0x1E695E0F0]);
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

- (void)loadArtworkInfoForSubscriptionItemPersistentID:(unint64_t)a3 completionHandler:(id)a4
{
  v12[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a3];
  v12[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __82__ICCloudClient_loadArtworkInfoForSubscriptionItemPersistentID_completionHandler___block_invoke;
  v10[3] = &unk_1E7BF40B8;
  v11 = v6;
  v9 = v6;
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

- (void)loadScreenshotInfoForSagaIDs:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6 && [v6 count])
  {
    v8 = [(ICCloudClient *)self xpcConnection];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __64__ICCloudClient_loadScreenshotInfoForSagaIDs_completionHandler___block_invoke;
    v14[3] = &unk_1E7BF77C0;
    v9 = v7;
    v15 = v9;
    v10 = [v8 remoteObjectProxyWithErrorHandler:v14];
    v11 = [(ICCloudClient *)self configuration];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __64__ICCloudClient_loadScreenshotInfoForSagaIDs_completionHandler___block_invoke_2;
    v12[3] = &unk_1E7BF40E0;
    v13 = v9;
    [v10 loadScreenshotInfoForSagaIDs:v6 configuration:v11 completion:v12];
  }

  else if (v7)
  {
    (*(v7 + 2))(v7, MEMORY[0x1E695E0F0]);
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

- (void)loadScreenshotInfoForSagaID:(unint64_t)a3 completionHandler:(id)a4
{
  v12[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a3];
  v12[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __63__ICCloudClient_loadScreenshotInfoForSagaID_completionHandler___block_invoke;
  v10[3] = &unk_1E7BF40B8;
  v11 = v6;
  v9 = v6;
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

- (void)loadArtworkInfoForContainerSagaIDs:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6 && [v6 count])
  {
    v8 = [(ICCloudClient *)self xpcConnection];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __70__ICCloudClient_loadArtworkInfoForContainerSagaIDs_completionHandler___block_invoke;
    v14[3] = &unk_1E7BF77C0;
    v9 = v7;
    v15 = v9;
    v10 = [v8 remoteObjectProxyWithErrorHandler:v14];
    v11 = [(ICCloudClient *)self configuration];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __70__ICCloudClient_loadArtworkInfoForContainerSagaIDs_completionHandler___block_invoke_2;
    v12[3] = &unk_1E7BF40E0;
    v13 = v9;
    [v10 loadArtworkInfoForContainerSagaIDs:v6 configuration:v11 completion:v12];
  }

  else if (v7)
  {
    (*(v7 + 2))(v7, MEMORY[0x1E695E0F0]);
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

- (void)loadArtworkInfoForContainerSagaID:(unint64_t)a3 completionHandler:(id)a4
{
  v12[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a3];
  v12[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __69__ICCloudClient_loadArtworkInfoForContainerSagaID_completionHandler___block_invoke;
  v10[3] = &unk_1E7BF40B8;
  v11 = v6;
  v9 = v6;
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

- (void)loadArtworkInfoForSagaIDs:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6 && [v6 count])
  {
    v8 = [(ICCloudClient *)self xpcConnection];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __61__ICCloudClient_loadArtworkInfoForSagaIDs_completionHandler___block_invoke;
    v14[3] = &unk_1E7BF77C0;
    v9 = v7;
    v15 = v9;
    v10 = [v8 remoteObjectProxyWithErrorHandler:v14];
    v11 = [(ICCloudClient *)self configuration];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __61__ICCloudClient_loadArtworkInfoForSagaIDs_completionHandler___block_invoke_2;
    v12[3] = &unk_1E7BF40E0;
    v13 = v9;
    [v10 loadArtworkInfoForSagaIDs:v6 configuration:v11 completion:v12];
  }

  else if (v7)
  {
    (*(v7 + 2))(v7, MEMORY[0x1E695E0F0]);
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

- (void)loadArtworkInfoForSagaID:(unint64_t)a3 completionHandler:(id)a4
{
  v12[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a3];
  v12[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __60__ICCloudClient_loadArtworkInfoForSagaID_completionHandler___block_invoke;
  v10[3] = &unk_1E7BF40B8;
  v11 = v6;
  v9 = v6;
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

- (void)loadScreenshotInfoForPurchaseHistoryIDs:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6 && [v6 count])
  {
    v8 = [(ICCloudClient *)self xpcConnection];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __75__ICCloudClient_loadScreenshotInfoForPurchaseHistoryIDs_completionHandler___block_invoke;
    v14[3] = &unk_1E7BF77C0;
    v9 = v7;
    v15 = v9;
    v10 = [v8 remoteObjectProxyWithErrorHandler:v14];
    v11 = [(ICCloudClient *)self configuration];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __75__ICCloudClient_loadScreenshotInfoForPurchaseHistoryIDs_completionHandler___block_invoke_2;
    v12[3] = &unk_1E7BF40E0;
    v13 = v9;
    [v10 loadScreenshotInfoForPurchaseHistoryIDs:v6 configuration:v11 completion:v12];
  }

  else if (v7)
  {
    (*(v7 + 2))(v7, MEMORY[0x1E695E0F0]);
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

- (void)loadScreenshotInfoForPurchaseHistoryID:(unint64_t)a3 completionHandler:(id)a4
{
  v12[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a3];
  v12[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __74__ICCloudClient_loadScreenshotInfoForPurchaseHistoryID_completionHandler___block_invoke;
  v10[3] = &unk_1E7BF40B8;
  v11 = v6;
  v9 = v6;
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

- (void)loadArtworkInfoForPurchaseHistoryIDs:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6 && [v6 count])
  {
    v8 = [(ICCloudClient *)self xpcConnection];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __72__ICCloudClient_loadArtworkInfoForPurchaseHistoryIDs_completionHandler___block_invoke;
    v14[3] = &unk_1E7BF77C0;
    v9 = v7;
    v15 = v9;
    v10 = [v8 remoteObjectProxyWithErrorHandler:v14];
    v11 = [(ICCloudClient *)self configuration];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __72__ICCloudClient_loadArtworkInfoForPurchaseHistoryIDs_completionHandler___block_invoke_2;
    v12[3] = &unk_1E7BF40E0;
    v13 = v9;
    [v10 loadArtworkInfoForPurchaseHistoryIDs:v6 configuration:v11 completion:v12];
  }

  else if (v7)
  {
    (*(v7 + 2))(v7, MEMORY[0x1E695E0F0]);
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

- (void)loadArtworkInfoForPurchaseHistoryID:(unint64_t)a3 completionHandler:(id)a4
{
  v12[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a3];
  v12[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __71__ICCloudClient_loadArtworkInfoForPurchaseHistoryID_completionHandler___block_invoke;
  v10[3] = &unk_1E7BF40B8;
  v11 = v6;
  v9 = v6;
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

- (void)deprioritizeAlbumArtistHeroImageForPersistentID:(int64_t)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v11 = a3;
    _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_DEFAULT, "Sending request to deprioritize album artist hero artwork import with persistent ID %lld...", buf, 0xCu);
  }

  v6 = [(ICCloudClient *)self xpcConnection];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __65__ICCloudClient_deprioritizeAlbumArtistHeroImageForPersistentID___block_invoke;
  v9[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v9[4] = a3;
  v7 = [v6 remoteObjectProxyWithErrorHandler:v9];
  v8 = [(ICCloudClient *)self configuration];
  [v7 deprioritizeAlbumArtistHeroImageForPersistentID:a3 configuration:v8];
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

- (void)deprioritizeArtistHeroImageForPersistentID:(int64_t)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v11 = a3;
    _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_DEFAULT, "Sending request to deprioritize artist hero artwork import with persistent ID %lld...", buf, 0xCu);
  }

  v6 = [(ICCloudClient *)self xpcConnection];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __60__ICCloudClient_deprioritizeArtistHeroImageForPersistentID___block_invoke;
  v9[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v9[4] = a3;
  v7 = [v6 remoteObjectProxyWithErrorHandler:v9];
  v8 = [(ICCloudClient *)self configuration];
  [v7 deprioritizeArtistHeroImageForPersistentID:a3 configuration:v8];
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

- (void)deprioritizeSubscriptionContainerArtworkForPersistentID:(int64_t)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v11 = a3;
    _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_DEFAULT, "Sending request to deprioritize subscription container artwork import with persistent ID %lld...", buf, 0xCu);
  }

  v6 = [(ICCloudClient *)self xpcConnection];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __73__ICCloudClient_deprioritizeSubscriptionContainerArtworkForPersistentID___block_invoke;
  v9[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v9[4] = a3;
  v7 = [v6 remoteObjectProxyWithErrorHandler:v9];
  v8 = [(ICCloudClient *)self configuration];
  [v7 deprioritizeSubscriptionContainerArtworkForPersistentID:a3 configuration:v8];
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

- (void)deprioritizeSubscriptionScreenshotForPersistentID:(int64_t)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v11 = a3;
    _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_DEFAULT, "Sending request to deprioritize subscription screenshot import with persistent ID %lld...", buf, 0xCu);
  }

  v6 = [(ICCloudClient *)self xpcConnection];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __67__ICCloudClient_deprioritizeSubscriptionScreenshotForPersistentID___block_invoke;
  v9[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v9[4] = a3;
  v7 = [v6 remoteObjectProxyWithErrorHandler:v9];
  v8 = [(ICCloudClient *)self configuration];
  [v7 deprioritizeSubscriptionScreenshotForPersistentID:a3 configuration:v8];
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

- (void)deprioritizeSubscriptionItemArtworkForPersistentID:(int64_t)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v11 = a3;
    _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_DEFAULT, "Sending request to deprioritize subscription item artwork import with persistent ID %lld...", buf, 0xCu);
  }

  v6 = [(ICCloudClient *)self xpcConnection];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __68__ICCloudClient_deprioritizeSubscriptionItemArtworkForPersistentID___block_invoke;
  v9[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v9[4] = a3;
  v7 = [v6 remoteObjectProxyWithErrorHandler:v9];
  v8 = [(ICCloudClient *)self configuration];
  [v7 deprioritizeSubscriptionItemArtworkForPersistentID:a3 configuration:v8];
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

- (void)deprioritizeContainerArtworkForSagaID:(unint64_t)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v11 = a3;
    _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_DEFAULT, "Sending request to deprioritize container artwork import with saga ID %llu...", buf, 0xCu);
  }

  v6 = [(ICCloudClient *)self xpcConnection];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __55__ICCloudClient_deprioritizeContainerArtworkForSagaID___block_invoke;
  v9[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v9[4] = a3;
  v7 = [v6 remoteObjectProxyWithErrorHandler:v9];
  v8 = [(ICCloudClient *)self configuration];
  [v7 deprioritizeContainerArtworkForSagaID:a3 configuration:v8];
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

- (void)deprioritizeScreenshotForSagaID:(unint64_t)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v11 = a3;
    _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_DEFAULT, "Sending request to deprioritize screenshot import with saga ID %llu...", buf, 0xCu);
  }

  v6 = [(ICCloudClient *)self xpcConnection];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __49__ICCloudClient_deprioritizeScreenshotForSagaID___block_invoke;
  v9[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v9[4] = a3;
  v7 = [v6 remoteObjectProxyWithErrorHandler:v9];
  v8 = [(ICCloudClient *)self configuration];
  [v7 deprioritizeScreenshotForSagaID:a3 configuration:v8];
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

- (void)deprioritizeItemArtworkForSagaID:(unint64_t)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v11 = a3;
    _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_DEFAULT, "Sending request to deprioritize item artwork import with saga ID %llu...", buf, 0xCu);
  }

  v6 = [(ICCloudClient *)self xpcConnection];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __50__ICCloudClient_deprioritizeItemArtworkForSagaID___block_invoke;
  v9[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v9[4] = a3;
  v7 = [v6 remoteObjectProxyWithErrorHandler:v9];
  v8 = [(ICCloudClient *)self configuration];
  [v7 deprioritizeItemArtworkForSagaID:a3 configuration:v8];
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

- (void)deprioritizeScreenshotForPurchaseHistoryID:(unint64_t)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v11 = a3;
    _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_DEFAULT, "Sending request to deprioritize screenshot artwork import with purchase history ID %llu...", buf, 0xCu);
  }

  v6 = [(ICCloudClient *)self xpcConnection];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __60__ICCloudClient_deprioritizeScreenshotForPurchaseHistoryID___block_invoke;
  v9[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v9[4] = a3;
  v7 = [v6 remoteObjectProxyWithErrorHandler:v9];
  v8 = [(ICCloudClient *)self configuration];
  [v7 deprioritizeScreenshotForPurchaseHistoryID:a3 configuration:v8];
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

- (void)deprioritizeItemArtworkForPurchaseHistoryID:(unint64_t)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v11 = a3;
    _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_DEFAULT, "Sending request to deprioritize item artwork import with purchase history ID %llu...", buf, 0xCu);
  }

  v6 = [(ICCloudClient *)self xpcConnection];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __61__ICCloudClient_deprioritizeItemArtworkForPurchaseHistoryID___block_invoke;
  v9[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v9[4] = a3;
  v7 = [v6 remoteObjectProxyWithErrorHandler:v9];
  v8 = [(ICCloudClient *)self configuration];
  [v7 deprioritizeItemArtworkForPurchaseHistoryID:a3 configuration:v8];
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

- (void)importAlbumArtistHeroImageForPersistentID:(int64_t)a3 completionHandler:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v18 = a3;
    _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_DEFAULT, "Sending request to import album artist hero image for item persistent ID %lld...", buf, 0xCu);
  }

  v8 = [(ICCloudClient *)self xpcConnection];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __77__ICCloudClient_importAlbumArtistHeroImageForPersistentID_completionHandler___block_invoke;
  v15[3] = &unk_1E7BF77C0;
  v9 = v6;
  v16 = v9;
  v10 = [v8 remoteObjectProxyWithErrorHandler:v15];
  v11 = [(ICCloudClient *)self configuration];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __77__ICCloudClient_importAlbumArtistHeroImageForPersistentID_completionHandler___block_invoke_120;
  v13[3] = &unk_1E7BF77C0;
  v14 = v9;
  v12 = v9;
  [v10 importAlbumArtistHeroImageForPersistentID:a3 configuration:v11 completion:v13];
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

- (void)importArtistHeroImageForPersistentID:(int64_t)a3 completionHandler:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v18 = a3;
    _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_DEFAULT, "Sending request to artist hero image hero for item persistent ID %lld...", buf, 0xCu);
  }

  v8 = [(ICCloudClient *)self xpcConnection];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __72__ICCloudClient_importArtistHeroImageForPersistentID_completionHandler___block_invoke;
  v15[3] = &unk_1E7BF77C0;
  v9 = v6;
  v16 = v9;
  v10 = [v8 remoteObjectProxyWithErrorHandler:v15];
  v11 = [(ICCloudClient *)self configuration];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __72__ICCloudClient_importArtistHeroImageForPersistentID_completionHandler___block_invoke_119;
  v13[3] = &unk_1E7BF77C0;
  v14 = v9;
  v12 = v9;
  [v10 importArtistHeroImageForPersistentID:a3 configuration:v11 completion:v13];
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

- (void)importSubscriptionContainerArtworkForPersistentID:(int64_t)a3 completionHandler:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v18 = a3;
    _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_DEFAULT, "Sending request to import subscription artwork for container persistent ID %lld...", buf, 0xCu);
  }

  v8 = [(ICCloudClient *)self xpcConnection];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __85__ICCloudClient_importSubscriptionContainerArtworkForPersistentID_completionHandler___block_invoke;
  v15[3] = &unk_1E7BF77C0;
  v9 = v6;
  v16 = v9;
  v10 = [v8 remoteObjectProxyWithErrorHandler:v15];
  v11 = [(ICCloudClient *)self configuration];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __85__ICCloudClient_importSubscriptionContainerArtworkForPersistentID_completionHandler___block_invoke_118;
  v13[3] = &unk_1E7BF77C0;
  v14 = v9;
  v12 = v9;
  [v10 importSubscriptionContainerArtworkForPersistentID:a3 configuration:v11 completion:v13];
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

- (void)importSubscriptionScreenshotForPersistentID:(int64_t)a3 completionHandler:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v18 = a3;
    _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_DEFAULT, "Sending request to import subscription screenshot for item persistent ID %lld...", buf, 0xCu);
  }

  v8 = [(ICCloudClient *)self xpcConnection];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __79__ICCloudClient_importSubscriptionScreenshotForPersistentID_completionHandler___block_invoke;
  v15[3] = &unk_1E7BF77C0;
  v9 = v6;
  v16 = v9;
  v10 = [v8 remoteObjectProxyWithErrorHandler:v15];
  v11 = [(ICCloudClient *)self configuration];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __79__ICCloudClient_importSubscriptionScreenshotForPersistentID_completionHandler___block_invoke_117;
  v13[3] = &unk_1E7BF77C0;
  v14 = v9;
  v12 = v9;
  [v10 importSubscriptionScreenshotForPersistentID:a3 configuration:v11 completion:v13];
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

- (void)importSubscriptionItemArtworkForPersistentID:(int64_t)a3 completionHandler:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v18 = a3;
    _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_DEFAULT, "Sending request to import subscription artwork for item persistent ID %lld...", buf, 0xCu);
  }

  v8 = [(ICCloudClient *)self xpcConnection];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __80__ICCloudClient_importSubscriptionItemArtworkForPersistentID_completionHandler___block_invoke;
  v15[3] = &unk_1E7BF77C0;
  v9 = v6;
  v16 = v9;
  v10 = [v8 remoteObjectProxyWithErrorHandler:v15];
  v11 = [(ICCloudClient *)self configuration];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __80__ICCloudClient_importSubscriptionItemArtworkForPersistentID_completionHandler___block_invoke_116;
  v13[3] = &unk_1E7BF77C0;
  v14 = v9;
  v12 = v9;
  [v10 importSubscriptionItemArtworkForPersistentID:a3 configuration:v11 completion:v13];
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

- (void)importContainerArtworkForSagaID:(unint64_t)a3 artworkVariantType:(int64_t)a4 completionHandler:(id)a5
{
  v23 = *MEMORY[0x1E69E9840];
  v8 = a5;
  v9 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v20 = a3;
    v21 = 2048;
    v22 = a4;
    _os_log_impl(&dword_1B4491000, v9, OS_LOG_TYPE_DEFAULT, "Sending request to import container artwork for saga ID %llu and variant %ld...", buf, 0x16u);
  }

  v10 = [(ICCloudClient *)self xpcConnection];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __86__ICCloudClient_importContainerArtworkForSagaID_artworkVariantType_completionHandler___block_invoke;
  v17[3] = &unk_1E7BF77C0;
  v11 = v8;
  v18 = v11;
  v12 = [v10 remoteObjectProxyWithErrorHandler:v17];
  v13 = [(ICCloudClient *)self configuration];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __86__ICCloudClient_importContainerArtworkForSagaID_artworkVariantType_completionHandler___block_invoke_115;
  v15[3] = &unk_1E7BF77C0;
  v16 = v11;
  v14 = v11;
  [v12 importContainerArtworkForSagaID:a3 artworkVariantType:a4 configuration:v13 completion:v15];
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

- (void)importContainerArtworkForSagaID:(unint64_t)a3 completionHandler:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v18 = a3;
    _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_DEFAULT, "Sending request to import container artwork for saga ID %llu...", buf, 0xCu);
  }

  v8 = [(ICCloudClient *)self xpcConnection];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __67__ICCloudClient_importContainerArtworkForSagaID_completionHandler___block_invoke;
  v15[3] = &unk_1E7BF77C0;
  v9 = v6;
  v16 = v9;
  v10 = [v8 remoteObjectProxyWithErrorHandler:v15];
  v11 = [(ICCloudClient *)self configuration];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __67__ICCloudClient_importContainerArtworkForSagaID_completionHandler___block_invoke_114;
  v13[3] = &unk_1E7BF77C0;
  v14 = v9;
  v12 = v9;
  [v10 importContainerArtworkForSagaID:a3 configuration:v11 completion:v13];
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

- (void)importScreenshotForSagaID:(unint64_t)a3 completionHandler:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v18 = a3;
    _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_DEFAULT, "Sending request to import screenshot for saga ID %llu...", buf, 0xCu);
  }

  v8 = [(ICCloudClient *)self xpcConnection];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __61__ICCloudClient_importScreenshotForSagaID_completionHandler___block_invoke;
  v15[3] = &unk_1E7BF77C0;
  v9 = v6;
  v16 = v9;
  v10 = [v8 remoteObjectProxyWithErrorHandler:v15];
  v11 = [(ICCloudClient *)self configuration];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __61__ICCloudClient_importScreenshotForSagaID_completionHandler___block_invoke_113;
  v13[3] = &unk_1E7BF77C0;
  v14 = v9;
  v12 = v9;
  [v10 importScreenshotForSagaID:a3 configuration:v11 completion:v13];
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

- (void)importItemArtworkForSagaID:(unint64_t)a3 completionHandler:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v18 = a3;
    _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_DEFAULT, "Sending request to import item artwork for saga ID %llu...", buf, 0xCu);
  }

  v8 = [(ICCloudClient *)self xpcConnection];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __62__ICCloudClient_importItemArtworkForSagaID_completionHandler___block_invoke;
  v15[3] = &unk_1E7BF77C0;
  v9 = v6;
  v16 = v9;
  v10 = [v8 remoteObjectProxyWithErrorHandler:v15];
  v11 = [(ICCloudClient *)self configuration];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __62__ICCloudClient_importItemArtworkForSagaID_completionHandler___block_invoke_112;
  v13[3] = &unk_1E7BF77C0;
  v14 = v9;
  v12 = v9;
  [v10 importItemArtworkForSagaID:a3 configuration:v11 completion:v13];
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

- (void)importScreenshotForPurchaseHistoryID:(unint64_t)a3 completionHandler:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = +[ICCloudAvailabilityController sharedController];
  v8 = [v7 shouldProhibitVideosActionForCurrentNetworkConditions];

  v9 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (!v8)
  {
    if (v10)
    {
      *buf = 134217984;
      v21 = a3;
      _os_log_impl(&dword_1B4491000, v9, OS_LOG_TYPE_DEFAULT, "Sending request to import screenshot for purchase history ID %llu...", buf, 0xCu);
    }

    v12 = [(ICCloudClient *)self xpcConnection];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __72__ICCloudClient_importScreenshotForPurchaseHistoryID_completionHandler___block_invoke;
    v18[3] = &unk_1E7BF77C0;
    v13 = v6;
    v19 = v13;
    v14 = [v12 remoteObjectProxyWithErrorHandler:v18];
    v15 = [(ICCloudClient *)self configuration];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __72__ICCloudClient_importScreenshotForPurchaseHistoryID_completionHandler___block_invoke_111;
    v16[3] = &unk_1E7BF77C0;
    v17 = v13;
    [v14 importScreenshotForPurchaseHistoryID:a3 configuration:v15 completion:v16];

    v11 = v19;
    goto LABEL_9;
  }

  if (v10)
  {
    *buf = 134217984;
    v21 = a3;
    _os_log_impl(&dword_1B4491000, v9, OS_LOG_TYPE_DEFAULT, "Skipping request to import item screenshot for purchase history ID %llu due to insufficient network conditions", buf, 0xCu);
  }

  if (v6)
  {
    v11 = [MEMORY[0x1E696ABC0] ic_cloudClientErrorWithCode:2006 userInfo:0];
    (*(v6 + 2))(v6, v11);
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

- (void)importItemArtworkForPurchaseHistoryID:(unint64_t)a3 completionHandler:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v18 = a3;
    _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_DEFAULT, "Sending request to import item artwork for purchase history ID %llu...", buf, 0xCu);
  }

  v8 = [(ICCloudClient *)self xpcConnection];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __73__ICCloudClient_importItemArtworkForPurchaseHistoryID_completionHandler___block_invoke;
  v15[3] = &unk_1E7BF77C0;
  v9 = v6;
  v16 = v9;
  v10 = [v8 remoteObjectProxyWithErrorHandler:v15];
  v11 = [(ICCloudClient *)self configuration];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __73__ICCloudClient_importItemArtworkForPurchaseHistoryID_completionHandler___block_invoke_110;
  v13[3] = &unk_1E7BF77C0;
  v14 = v9;
  v12 = v9;
  [v10 importItemArtworkForPurchaseHistoryID:a3 configuration:v11 completion:v13];
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

- (void)loadLastKnownEnableICMLErrorStatusWithCompletionHander:(id)a3
{
  v4 = a3;
  v5 = [(ICCloudClient *)self xpcConnection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __72__ICCloudClient_loadLastKnownEnableICMLErrorStatusWithCompletionHander___block_invoke;
  v12[3] = &unk_1E7BF77C0;
  v6 = v4;
  v13 = v6;
  v7 = [v5 remoteObjectProxyWithErrorHandler:v12];
  v8 = [(ICCloudClient *)self configuration];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __72__ICCloudClient_loadLastKnownEnableICMLErrorStatusWithCompletionHander___block_invoke_108;
  v10[3] = &unk_1E7BF4090;
  v11 = v6;
  v9 = v6;
  [v7 loadLastKnownEnableICMLErrorStatusForConfiguration:v8 completion:v10];
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

- (void)isAuthenticatedWithQueue:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ICCloudClient *)self _isAuthenticated];
  if (v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = dispatch_get_global_queue(0, 0);
  }

  v10 = v9;
  if (v7)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __60__ICCloudClient_isAuthenticatedWithQueue_completionHandler___block_invoke;
    v11[3] = &unk_1E7BF8C60;
    v12 = v7;
    v13 = v8;
    dispatch_async(v10, v11);
  }
}

- (void)deauthenticateWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B4491000, v5, OS_LOG_TYPE_DEFAULT, "Sending deauthenticate request...", buf, 2u);
  }

  v6 = [(ICCloudClient *)self xpcConnection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __53__ICCloudClient_deauthenticateWithCompletionHandler___block_invoke;
  v13[3] = &unk_1E7BF77C0;
  v7 = v4;
  v14 = v7;
  v8 = [v6 remoteObjectProxyWithErrorHandler:v13];
  v9 = [(ICCloudClient *)self configuration];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __53__ICCloudClient_deauthenticateWithCompletionHandler___block_invoke_2;
  v11[3] = &unk_1E7BF77C0;
  v12 = v7;
  v10 = v7;
  [v8 deauthenticateForConfiguration:v9 completion:v11];
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

- (void)updateSagaLibraryWithReason:(int64_t)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_DEFAULT, "Sending request to update Cloud Library...", buf, 2u);
  }

  v8 = +[ICCloudAvailabilityController sharedController];
  v9 = [v8 shouldProhibitMusicActionForCurrentNetworkConditions];

  if (v9)
  {
    v10 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B4491000, v10, OS_LOG_TYPE_DEFAULT, "Can't update cloud library using current network - skipping", buf, 2u);
    }

    if (v6)
    {
      v6[2](v6, 0);
    }
  }

  else
  {
    v11 = [(ICCloudClient *)self xpcConnection];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __63__ICCloudClient_updateSagaLibraryWithReason_completionHandler___block_invoke;
    v17[3] = &unk_1E7BF77C0;
    v12 = v6;
    v18 = v12;
    v13 = [v11 remoteObjectProxyWithErrorHandler:v17];
    v14 = [(ICCloudClient *)self configuration];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __63__ICCloudClient_updateSagaLibraryWithReason_completionHandler___block_invoke_104;
    v15[3] = &unk_1E7BF77C0;
    v16 = v12;
    [v13 updateSagaLibraryWithReason:a3 forConfiguration:v14 completion:v15];
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
  v2 = [(ICCloudClient *)self configuration];
  v3 = [v2 userIdentity];
  v4 = [getML3MusicLibraryClass() musicLibraryForUserAccount:v3];
  v5 = [v4 jaliscoLastExcludedMediaKinds];
  v6 = [v5 containsObject:&unk_1F2C92050];

  return v6;
}

- (BOOL)isMediaKindDisabledForJaliscoLibrary:(int64_t)a3
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v5 = [(ICCloudClient *)self xpcConnection];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __54__ICCloudClient_isMediaKindDisabledForJaliscoLibrary___block_invoke;
  v10[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v10[4] = a3;
  v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v10];
  v7 = [(ICCloudClient *)self configuration];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __54__ICCloudClient_isMediaKindDisabledForJaliscoLibrary___block_invoke_98;
  v9[3] = &unk_1E7BF4068;
  v9[4] = &v11;
  v9[5] = a3;
  [v6 isMediaKindDisabledForJaliscoLibrary:a3 configuration:v7 completion:v9];

  LOBYTE(a3) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return a3;
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

- (void)removeJaliscoLibraryWithCompletionHander:(id)a3
{
  v4 = a3;
  v5 = [(ICCloudClient *)self xpcConnection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __58__ICCloudClient_removeJaliscoLibraryWithCompletionHander___block_invoke;
  v12[3] = &unk_1E7BF77C0;
  v6 = v4;
  v13 = v6;
  v7 = [v5 remoteObjectProxyWithErrorHandler:v12];
  v8 = [(ICCloudClient *)self configuration];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __58__ICCloudClient_removeJaliscoLibraryWithCompletionHander___block_invoke_2;
  v10[3] = &unk_1E7BF77C0;
  v11 = v6;
  v9 = v6;
  [v7 removeJaliscoLibraryForConfiguration:v8 completion:v10];
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

- (void)updateJaliscoLibraryWithReason:(int64_t)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = [(ICCloudClient *)self xpcConnection];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __66__ICCloudClient_updateJaliscoLibraryWithReason_completionHandler___block_invoke;
  v14[3] = &unk_1E7BF77C0;
  v8 = v6;
  v15 = v8;
  v9 = [v7 remoteObjectProxyWithErrorHandler:v14];
  v10 = [(ICCloudClient *)self configuration];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __66__ICCloudClient_updateJaliscoLibraryWithReason_completionHandler___block_invoke_2;
  v12[3] = &unk_1E7BF77C0;
  v13 = v8;
  v11 = v8;
  [v9 updateJaliscoLibraryWithReason:a3 forConfiguration:v10 completion:v12];
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

- (void)disableCloudLibraryWithReason:(int64_t)a3 completionHandler:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v17 = self;
    _os_log_impl(&dword_1B4491000, v7, OS_LOG_TYPE_DEFAULT, "<ICCloudClient %p> - Attempting disable cloud library", buf, 0xCu);
  }

  v8 = [(ICCloudClient *)self xpcConnection];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __65__ICCloudClient_disableCloudLibraryWithReason_completionHandler___block_invoke;
  v14[3] = &unk_1E7BFA490;
  v14[4] = self;
  v9 = v6;
  v15 = v9;
  v10 = [v8 remoteObjectProxyWithErrorHandler:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __65__ICCloudClient_disableCloudLibraryWithReason_completionHandler___block_invoke_92;
  v12[3] = &unk_1E7BF77C0;
  v13 = v9;
  v11 = v9;
  [v10 disableCloudLibraryWithReason:a3 completion:v12];
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

- (void)_enableCloudLibraryWithPolicy:(int64_t)a3 startinitialImport:(BOOL)a4 isExplicitUserAction:(BOOL)a5 completionHandler:(id)a6
{
  v6 = a5;
  v7 = a4;
  v30 = *MEMORY[0x1E69E9840];
  v10 = a6;
  v11 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218752;
    v23 = self;
    v24 = 1024;
    v25 = a3;
    v26 = 1024;
    v27 = v7;
    v28 = 1024;
    v29 = v6;
    _os_log_impl(&dword_1B4491000, v11, OS_LOG_TYPE_DEFAULT, "<ICCloudClient %p> - Attempting cloud library authenticate (start initial import with explicit user action, merge policy=%d, shouldStartInitialImport=%{BOOL}u, isExplicitUserAction = %{BOOL}u)", buf, 0x1Eu);
  }

  v12 = [(ICCloudClient *)self _isAuthenticated];
  if (!a3 || !v12)
  {
    v14 = [(ICCloudClient *)self xpcConnection];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __105__ICCloudClient__enableCloudLibraryWithPolicy_startinitialImport_isExplicitUserAction_completionHandler___block_invoke;
    v20[3] = &unk_1E7BF77C0;
    v15 = v10;
    v21 = v15;
    v16 = [v14 remoteObjectProxyWithErrorHandler:v20];
    v17 = [(ICCloudClient *)self configuration];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __105__ICCloudClient__enableCloudLibraryWithPolicy_startinitialImport_isExplicitUserAction_completionHandler___block_invoke_91;
    v18[3] = &unk_1E7BF77C0;
    v19 = v15;
    [v16 authenticateForConfiguration:v17 startInitialImport:v7 enableCloudLibraryPolicy:a3 isExplicitUserAction:v6 completion:v18];

    v13 = v21;
    goto LABEL_8;
  }

  if (v10)
  {
    v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:0 userInfo:0];
    (*(v10 + 2))(v10, v13);
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

- (void)movePinnedAlbumWithPersistentID:(int64_t)a3 cloudAlbumID:(id)a4 toPosition:(int64_t)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a4;
  v12 = [(ICCloudClient *)self xpcConnection];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __84__ICCloudClient_movePinnedAlbumWithPersistentID_cloudAlbumID_toPosition_completion___block_invoke;
  v19[3] = &unk_1E7BFA490;
  v19[4] = self;
  v13 = v10;
  v20 = v13;
  v14 = [v12 remoteObjectProxyWithErrorHandler:v19];
  v15 = [(ICCloudClient *)self configuration];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __84__ICCloudClient_movePinnedAlbumWithPersistentID_cloudAlbumID_toPosition_completion___block_invoke_2;
  v17[3] = &unk_1E7BFA490;
  v17[4] = self;
  v18 = v13;
  v16 = v13;
  [v14 movePinnedAlbumWithPersistentID:a3 cloudAlbumID:v11 toPosition:a5 configuration:v15 completion:v17];
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

- (void)movePinnedArtistWithPersistentID:(int64_t)a3 cloudArtistID:(id)a4 toPosition:(int64_t)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a4;
  v12 = [(ICCloudClient *)self xpcConnection];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __86__ICCloudClient_movePinnedArtistWithPersistentID_cloudArtistID_toPosition_completion___block_invoke;
  v19[3] = &unk_1E7BFA490;
  v19[4] = self;
  v13 = v10;
  v20 = v13;
  v14 = [v12 remoteObjectProxyWithErrorHandler:v19];
  v15 = [(ICCloudClient *)self configuration];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __86__ICCloudClient_movePinnedArtistWithPersistentID_cloudArtistID_toPosition_completion___block_invoke_2;
  v17[3] = &unk_1E7BFA490;
  v17[4] = self;
  v18 = v13;
  v16 = v13;
  [v14 movePinnedArtistWithPersistentID:a3 cloudArtistID:v11 toPosition:a5 configuration:v15 completion:v17];
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

- (void)movePinnedEntityWithPersistentID:(int64_t)a3 cloudID:(int64_t)a4 type:(int64_t)a5 toPosition:(int64_t)a6 completion:(id)a7
{
  v12 = a7;
  v13 = [(ICCloudClient *)self xpcConnection];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __85__ICCloudClient_movePinnedEntityWithPersistentID_cloudID_type_toPosition_completion___block_invoke;
  v20[3] = &unk_1E7BFA490;
  v20[4] = self;
  v14 = v12;
  v21 = v14;
  v15 = [v13 remoteObjectProxyWithErrorHandler:v20];
  v16 = [(ICCloudClient *)self configuration];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __85__ICCloudClient_movePinnedEntityWithPersistentID_cloudID_type_toPosition_completion___block_invoke_2;
  v18[3] = &unk_1E7BFA490;
  v18[4] = self;
  v19 = v14;
  v17 = v14;
  [v15 movePinnedEntityWithPersistentID:a3 cloudID:a4 type:a5 toPosition:a6 configuration:v16 completion:v18];
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

- (void)updatePinnedLibraryAlbumWithPersistentID:(int64_t)a3 cloudAlbumID:(id)a4 defaultAction:(int64_t)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a4;
  v12 = [(ICCloudClient *)self xpcConnection];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __96__ICCloudClient_updatePinnedLibraryAlbumWithPersistentID_cloudAlbumID_defaultAction_completion___block_invoke;
  v19[3] = &unk_1E7BFA490;
  v19[4] = self;
  v13 = v10;
  v20 = v13;
  v14 = [v12 remoteObjectProxyWithErrorHandler:v19];
  v15 = [(ICCloudClient *)self configuration];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __96__ICCloudClient_updatePinnedLibraryAlbumWithPersistentID_cloudAlbumID_defaultAction_completion___block_invoke_2;
  v17[3] = &unk_1E7BFA490;
  v17[4] = self;
  v18 = v13;
  v16 = v13;
  [v14 updatePinnedLibraryAlbumWithPersistentID:a3 cloudAlbumID:v11 defaultAction:a5 configuration:v15 completion:v17];
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

- (void)updatePinnedLibraryArtistWithPersistentID:(int64_t)a3 cloudArtistID:(id)a4 defaultAction:(int64_t)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a4;
  v12 = [(ICCloudClient *)self xpcConnection];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __98__ICCloudClient_updatePinnedLibraryArtistWithPersistentID_cloudArtistID_defaultAction_completion___block_invoke;
  v19[3] = &unk_1E7BFA490;
  v19[4] = self;
  v13 = v10;
  v20 = v13;
  v14 = [v12 remoteObjectProxyWithErrorHandler:v19];
  v15 = [(ICCloudClient *)self configuration];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __98__ICCloudClient_updatePinnedLibraryArtistWithPersistentID_cloudArtistID_defaultAction_completion___block_invoke_2;
  v17[3] = &unk_1E7BFA490;
  v17[4] = self;
  v18 = v13;
  v16 = v13;
  [v14 updatePinnedLibraryArtistWithPersistentID:a3 cloudArtistID:v11 defaultAction:a5 configuration:v15 completion:v17];
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

- (void)updatePinnedLibraryEntityWithPersistentID:(int64_t)a3 cloudID:(int64_t)a4 type:(int64_t)a5 defaultAction:(int64_t)a6 completion:(id)a7
{
  v12 = a7;
  v13 = [(ICCloudClient *)self xpcConnection];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __97__ICCloudClient_updatePinnedLibraryEntityWithPersistentID_cloudID_type_defaultAction_completion___block_invoke;
  v20[3] = &unk_1E7BFA490;
  v20[4] = self;
  v14 = v12;
  v21 = v14;
  v15 = [v13 remoteObjectProxyWithErrorHandler:v20];
  v16 = [(ICCloudClient *)self configuration];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __97__ICCloudClient_updatePinnedLibraryEntityWithPersistentID_cloudID_type_defaultAction_completion___block_invoke_2;
  v18[3] = &unk_1E7BFA490;
  v18[4] = self;
  v19 = v14;
  v17 = v14;
  [v15 updatePinnedLibraryEntityWithPersistentID:a3 cloudID:a4 type:a5 defaultAction:a6 configuration:v16 completion:v18];
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

- (void)removePinnedAlbumWithPersistentID:(int64_t)a3 cloudAlbumID:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [(ICCloudClient *)self xpcConnection];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __75__ICCloudClient_removePinnedAlbumWithPersistentID_cloudAlbumID_completion___block_invoke;
  v17[3] = &unk_1E7BFA490;
  v17[4] = self;
  v11 = v8;
  v18 = v11;
  v12 = [v10 remoteObjectProxyWithErrorHandler:v17];
  v13 = [(ICCloudClient *)self configuration];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __75__ICCloudClient_removePinnedAlbumWithPersistentID_cloudAlbumID_completion___block_invoke_2;
  v15[3] = &unk_1E7BFA490;
  v15[4] = self;
  v16 = v11;
  v14 = v11;
  [v12 removePinnedAlbumWithPersistentID:a3 cloudAlbumID:v9 configuration:v13 completion:v15];
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

- (void)removePinnedArtistWithPersistentID:(int64_t)a3 cloudArtistID:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [(ICCloudClient *)self xpcConnection];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __77__ICCloudClient_removePinnedArtistWithPersistentID_cloudArtistID_completion___block_invoke;
  v17[3] = &unk_1E7BFA490;
  v17[4] = self;
  v11 = v8;
  v18 = v11;
  v12 = [v10 remoteObjectProxyWithErrorHandler:v17];
  v13 = [(ICCloudClient *)self configuration];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __77__ICCloudClient_removePinnedArtistWithPersistentID_cloudArtistID_completion___block_invoke_2;
  v15[3] = &unk_1E7BFA490;
  v15[4] = self;
  v16 = v11;
  v14 = v11;
  [v12 removePinnedArtistWithPersistentID:a3 cloudArtistID:v9 configuration:v13 completion:v15];
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

- (void)removePinnedEntityWithPersistentID:(int64_t)a3 cloudID:(int64_t)a4 type:(int64_t)a5 completion:(id)a6
{
  v10 = a6;
  v11 = [(ICCloudClient *)self xpcConnection];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __76__ICCloudClient_removePinnedEntityWithPersistentID_cloudID_type_completion___block_invoke;
  v18[3] = &unk_1E7BFA490;
  v18[4] = self;
  v12 = v10;
  v19 = v12;
  v13 = [v11 remoteObjectProxyWithErrorHandler:v18];
  v14 = [(ICCloudClient *)self configuration];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __76__ICCloudClient_removePinnedEntityWithPersistentID_cloudID_type_completion___block_invoke_2;
  v16[3] = &unk_1E7BFA490;
  v16[4] = self;
  v17 = v12;
  v15 = v12;
  [v13 removePinnedEntityWithPersistentID:a3 cloudID:a4 type:a5 configuration:v14 completion:v16];
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

- (void)pinLibraryAlbumWithPersistentID:(int64_t)a3 cloudAlbumID:(id)a4 defaultAction:(int64_t)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a4;
  v12 = [(ICCloudClient *)self xpcConnection];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __87__ICCloudClient_pinLibraryAlbumWithPersistentID_cloudAlbumID_defaultAction_completion___block_invoke;
  v19[3] = &unk_1E7BFA490;
  v19[4] = self;
  v13 = v10;
  v20 = v13;
  v14 = [v12 remoteObjectProxyWithErrorHandler:v19];
  v15 = [(ICCloudClient *)self configuration];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __87__ICCloudClient_pinLibraryAlbumWithPersistentID_cloudAlbumID_defaultAction_completion___block_invoke_2;
  v17[3] = &unk_1E7BFA490;
  v17[4] = self;
  v18 = v13;
  v16 = v13;
  [v14 pinLibraryAlbumWithPersistentID:a3 cloudAlbumID:v11 defaultAction:a5 configuration:v15 completion:v17];
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

- (void)pinLibraryArtistWithPersistentID:(int64_t)a3 cloudArtistID:(id)a4 defaultAction:(int64_t)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a4;
  v12 = [(ICCloudClient *)self xpcConnection];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __89__ICCloudClient_pinLibraryArtistWithPersistentID_cloudArtistID_defaultAction_completion___block_invoke;
  v19[3] = &unk_1E7BFA490;
  v19[4] = self;
  v13 = v10;
  v20 = v13;
  v14 = [v12 remoteObjectProxyWithErrorHandler:v19];
  v15 = [(ICCloudClient *)self configuration];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __89__ICCloudClient_pinLibraryArtistWithPersistentID_cloudArtistID_defaultAction_completion___block_invoke_2;
  v17[3] = &unk_1E7BFA490;
  v17[4] = self;
  v18 = v13;
  v16 = v13;
  [v14 pinLibraryArtistWithPersistentID:a3 cloudArtistID:v11 defaultAction:a5 configuration:v15 completion:v17];
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

- (void)pinLibraryEntityWithPersistentID:(int64_t)a3 cloudID:(int64_t)a4 type:(int64_t)a5 defaultAction:(int64_t)a6 completion:(id)a7
{
  v12 = a7;
  v13 = [(ICCloudClient *)self xpcConnection];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __88__ICCloudClient_pinLibraryEntityWithPersistentID_cloudID_type_defaultAction_completion___block_invoke;
  v20[3] = &unk_1E7BFA490;
  v20[4] = self;
  v14 = v12;
  v21 = v14;
  v15 = [v13 remoteObjectProxyWithErrorHandler:v20];
  v16 = [(ICCloudClient *)self configuration];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __88__ICCloudClient_pinLibraryEntityWithPersistentID_cloudID_type_defaultAction_completion___block_invoke_2;
  v18[3] = &unk_1E7BFA490;
  v18[4] = self;
  v19 = v14;
  v17 = v14;
  [v15 pinLibraryEntityWithPersistentID:a3 cloudID:a4 type:a5 defaultAction:a6 configuration:v16 completion:v18];
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

- (void)resetInvitationURLForCollaborationWithPersistentID:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [(ICCloudClient *)self xpcConnection];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __79__ICCloudClient_resetInvitationURLForCollaborationWithPersistentID_completion___block_invoke;
  v14[3] = &unk_1E7BFA490;
  v14[4] = self;
  v8 = v6;
  v15 = v8;
  v9 = [v7 remoteObjectProxyWithErrorHandler:v14];
  v10 = [(ICCloudClient *)self configuration];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __79__ICCloudClient_resetInvitationURLForCollaborationWithPersistentID_completion___block_invoke_2;
  v12[3] = &unk_1E7BF4020;
  v12[4] = self;
  v13 = v8;
  v11 = v8;
  [v9 resetInvitationURLForCollaborationWithPersistentID:a3 configuration:v10 completion:v12];
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

- (void)removeCollaborators:(id)a3 fromCollaborationWithPersistentID:(int64_t)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [(ICCloudClient *)self xpcConnection];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __82__ICCloudClient_removeCollaborators_fromCollaborationWithPersistentID_completion___block_invoke;
  v17[3] = &unk_1E7BFA490;
  v17[4] = self;
  v11 = v8;
  v18 = v11;
  v12 = [v10 remoteObjectProxyWithErrorHandler:v17];
  v13 = [(ICCloudClient *)self configuration];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __82__ICCloudClient_removeCollaborators_fromCollaborationWithPersistentID_completion___block_invoke_2;
  v15[3] = &unk_1E7BFA490;
  v15[4] = self;
  v16 = v11;
  v14 = v11;
  [v12 removeCollaborators:v9 fromCollaborationWithPersistentID:a4 configuration:v13 completion:v15];
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

- (void)respondToPendingCollaborator:(id)a3 onCollaborationWithPersistentID:(int64_t)a4 withApproval:(BOOL)a5 completion:(id)a6
{
  v6 = a5;
  v10 = a6;
  v11 = a3;
  v12 = [(ICCloudClient *)self xpcConnection];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __102__ICCloudClient_respondToPendingCollaborator_onCollaborationWithPersistentID_withApproval_completion___block_invoke;
  v20[3] = &unk_1E7BFA490;
  v20[4] = self;
  v13 = v10;
  v21 = v13;
  v14 = [v12 remoteObjectProxyWithErrorHandler:v20];
  v15 = [(ICCloudClient *)self configuration];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __102__ICCloudClient_respondToPendingCollaborator_onCollaborationWithPersistentID_withApproval_completion___block_invoke_2;
  v17[3] = &unk_1E7BF76F8;
  v18 = v13;
  v19 = a4;
  v17[4] = self;
  v16 = v13;
  [v14 respondToPendingCollaborator:v11 onCollaborationWithPersistentID:a4 withApproval:v6 configuration:v15 completion:v17];
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

- (void)joinCollaborationWithGlobalPlaylistID:(id)a3 invitationURL:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = [(ICCloudClient *)self xpcConnection];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __80__ICCloudClient_joinCollaborationWithGlobalPlaylistID_invitationURL_completion___block_invoke;
  v20[3] = &unk_1E7BFA490;
  v20[4] = self;
  v12 = v9;
  v21 = v12;
  v13 = [v11 remoteObjectProxyWithErrorHandler:v20];
  v14 = [(ICCloudClient *)self configuration];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __80__ICCloudClient_joinCollaborationWithGlobalPlaylistID_invitationURL_completion___block_invoke_2;
  v17[3] = &unk_1E7BF7540;
  v17[4] = self;
  v18 = v8;
  v19 = v12;
  v15 = v12;
  v16 = v8;
  [v13 joinCollaborationWithGlobalPlaylistID:v16 invitationURL:v10 configuration:v14 completion:v17];
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

- (void)editCollaborationWithPersistentID:(int64_t)a3 properties:(id)a4 trackEdits:(id)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = [(ICCloudClient *)self xpcConnection];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __84__ICCloudClient_editCollaborationWithPersistentID_properties_trackEdits_completion___block_invoke;
  v21[3] = &unk_1E7BFA490;
  v21[4] = self;
  v14 = v10;
  v22 = v14;
  v15 = [v13 remoteObjectProxyWithErrorHandler:v21];
  v16 = [(ICCloudClient *)self configuration];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __84__ICCloudClient_editCollaborationWithPersistentID_properties_trackEdits_completion___block_invoke_2;
  v18[3] = &unk_1E7BF76F8;
  v19 = v14;
  v20 = a3;
  v18[4] = self;
  v17 = v14;
  [v15 editCollaborationWithPersistentID:a3 configuration:v16 properties:v12 trackEdits:v11 completion:v18];
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

- (void)endCollaborationWithPersistentID:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [(ICCloudClient *)self xpcConnection];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __61__ICCloudClient_endCollaborationWithPersistentID_completion___block_invoke;
  v15[3] = &unk_1E7BFA490;
  v15[4] = self;
  v8 = v6;
  v16 = v8;
  v9 = [v7 remoteObjectProxyWithErrorHandler:v15];
  v10 = [(ICCloudClient *)self configuration];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __61__ICCloudClient_endCollaborationWithPersistentID_completion___block_invoke_2;
  v12[3] = &unk_1E7BF3FF8;
  v13 = v8;
  v14 = a3;
  v12[4] = self;
  v11 = v8;
  [v9 endCollaborationWithPersistentID:a3 configuration:v10 completion:v12];
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

- (void)beginCollaborationUsingPlaylistWithPersistentID:(int64_t)a3 sharingMode:(unint64_t)a4 completion:(id)a5
{
  v8 = a5;
  v9 = [(ICCloudClient *)self xpcConnection];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __88__ICCloudClient_beginCollaborationUsingPlaylistWithPersistentID_sharingMode_completion___block_invoke;
  v17[3] = &unk_1E7BFA490;
  v17[4] = self;
  v10 = v8;
  v18 = v10;
  v11 = [v9 remoteObjectProxyWithErrorHandler:v17];
  v12 = [(ICCloudClient *)self configuration];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __88__ICCloudClient_beginCollaborationUsingPlaylistWithPersistentID_sharingMode_completion___block_invoke_2;
  v14[3] = &unk_1E7BF3FF8;
  v15 = v10;
  v16 = a3;
  v14[4] = self;
  v13 = v10;
  [v11 beginCollaborationUsingPlaylistWithPersistentID:a3 sharingMode:a4 configuration:v12 completion:v14];
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

- (void)favoriteArtistWithPersistentID:(int64_t)a3 cloudLibraryID:(id)a4 time:(id)a5 completionHandler:(id)a6
{
  v10 = a4;
  v11 = a6;
  v12 = a5;
  v13 = [(ICCloudClient *)self xpcConnection];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __86__ICCloudClient_favoriteArtistWithPersistentID_cloudLibraryID_time_completionHandler___block_invoke;
  v23[3] = &unk_1E7BFA490;
  v14 = v10;
  v24 = v14;
  v15 = v11;
  v25 = v15;
  v16 = [v13 remoteObjectProxyWithErrorHandler:v23];
  v17 = [(ICCloudClient *)self configuration];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __86__ICCloudClient_favoriteArtistWithPersistentID_cloudLibraryID_time_completionHandler___block_invoke_2;
  v20[3] = &unk_1E7BFA490;
  v21 = v14;
  v22 = v15;
  v18 = v15;
  v19 = v14;
  [v16 favoriteArtistWithPersistentID:a3 cloudLibraryID:v19 time:v12 configuration:v17 completionHandler:v20];
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

- (void)favoriteAlbumWithPersistentID:(int64_t)a3 cloudLibraryID:(id)a4 time:(id)a5 completionHandler:(id)a6
{
  v10 = a4;
  v11 = a6;
  v12 = a5;
  v13 = [(ICCloudClient *)self xpcConnection];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __85__ICCloudClient_favoriteAlbumWithPersistentID_cloudLibraryID_time_completionHandler___block_invoke;
  v23[3] = &unk_1E7BFA490;
  v14 = v10;
  v24 = v14;
  v15 = v11;
  v25 = v15;
  v16 = [v13 remoteObjectProxyWithErrorHandler:v23];
  v17 = [(ICCloudClient *)self configuration];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __85__ICCloudClient_favoriteAlbumWithPersistentID_cloudLibraryID_time_completionHandler___block_invoke_2;
  v20[3] = &unk_1E7BFA490;
  v21 = v14;
  v22 = v15;
  v18 = v15;
  v19 = v14;
  [v16 favoriteAlbumWithPersistentID:a3 cloudLibraryID:v19 time:v12 configuration:v17 completionHandler:v20];
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

- (void)favoriteEntityWithPersistentID:(int64_t)a3 sagaID:(int64_t)a4 entityType:(int64_t)a5 time:(id)a6 completionHandler:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = [(ICCloudClient *)self xpcConnection];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __89__ICCloudClient_favoriteEntityWithPersistentID_sagaID_entityType_time_completionHandler___block_invoke;
  v22[3] = &unk_1E7BF7658;
  v24 = a4;
  v15 = v12;
  v23 = v15;
  v16 = [v14 remoteObjectProxyWithErrorHandler:v22];
  v17 = [(ICCloudClient *)self configuration];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __89__ICCloudClient_favoriteEntityWithPersistentID_sagaID_entityType_time_completionHandler___block_invoke_2;
  v19[3] = &unk_1E7BF7658;
  v20 = v15;
  v21 = a4;
  v18 = v15;
  [v16 favoriteEntityWithPersistentID:a3 sagaID:a4 entityType:a5 time:v13 configuration:v17 completionHandler:v19];
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

- (void)favoritePlaylistWithPersistentID:(int64_t)a3 globalID:(id)a4 time:(id)a5 completionHandler:(id)a6
{
  v10 = a4;
  v11 = a6;
  v12 = a5;
  v13 = [(ICCloudClient *)self xpcConnection];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __82__ICCloudClient_favoritePlaylistWithPersistentID_globalID_time_completionHandler___block_invoke;
  v23[3] = &unk_1E7BFA490;
  v14 = v10;
  v24 = v14;
  v15 = v11;
  v25 = v15;
  v16 = [v13 remoteObjectProxyWithErrorHandler:v23];
  v17 = [(ICCloudClient *)self configuration];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __82__ICCloudClient_favoritePlaylistWithPersistentID_globalID_time_completionHandler___block_invoke_2;
  v20[3] = &unk_1E7BFA490;
  v21 = v14;
  v22 = v15;
  v18 = v15;
  v19 = v14;
  [v16 favoritePlaylistWithPersistentID:a3 globalID:v19 time:v12 configuration:v17 completionHandler:v20];
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

- (void)favoriteEntityWithPersistentID:(int64_t)a3 storeID:(int64_t)a4 entityType:(int64_t)a5 time:(id)a6 completionHandler:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = [(ICCloudClient *)self xpcConnection];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __90__ICCloudClient_favoriteEntityWithPersistentID_storeID_entityType_time_completionHandler___block_invoke;
  v22[3] = &unk_1E7BF7658;
  v24 = a4;
  v15 = v12;
  v23 = v15;
  v16 = [v14 remoteObjectProxyWithErrorHandler:v22];
  v17 = [(ICCloudClient *)self configuration];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __90__ICCloudClient_favoriteEntityWithPersistentID_storeID_entityType_time_completionHandler___block_invoke_2;
  v19[3] = &unk_1E7BF7658;
  v20 = v15;
  v21 = a4;
  v18 = v15;
  [v16 favoriteEntityWithPersistentID:a3 storeID:a4 entityType:a5 time:v13 configuration:v17 completionHandler:v19];
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

- (void)addGeniusPlaylistWithPersistentID:(int64_t)a3 name:(id)a4 seedItemSagaIDs:(id)a5 itemSagaIDs:(id)a6 completionHandler:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = [(ICCloudClient *)self xpcConnection];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __102__ICCloudClient_addGeniusPlaylistWithPersistentID_name_seedItemSagaIDs_itemSagaIDs_completionHandler___block_invoke;
  v23[3] = &unk_1E7BF77C0;
  v17 = v12;
  v24 = v17;
  v18 = [v16 remoteObjectProxyWithErrorHandler:v23];
  v19 = [(ICCloudClient *)self configuration];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __102__ICCloudClient_addGeniusPlaylistWithPersistentID_name_seedItemSagaIDs_itemSagaIDs_completionHandler___block_invoke_2;
  v21[3] = &unk_1E7BF73D8;
  v22 = v17;
  v20 = v17;
  [v18 addGeniusPlaylistWithPersistentID:a3 name:v15 seedItemSagaIDs:v14 itemSagaIDs:v13 configuration:v19 completion:v21];
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

- (void)hideItemsWithPurchaseHistoryIDs:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ICCloudClient *)self xpcConnection];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __67__ICCloudClient_hideItemsWithPurchaseHistoryIDs_completionHandler___block_invoke;
  v15[3] = &unk_1E7BF77C0;
  v9 = v6;
  v16 = v9;
  v10 = [v8 remoteObjectProxyWithErrorHandler:v15];
  v11 = [(ICCloudClient *)self configuration];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __67__ICCloudClient_hideItemsWithPurchaseHistoryIDs_completionHandler___block_invoke_2;
  v13[3] = &unk_1E7BF77C0;
  v14 = v9;
  v12 = v9;
  [v10 hideItemsWithPurchaseHistoryIDs:v7 configuration:v11 completion:v13];
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

- (void)removeItemsWithSagaIDs:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ICCloudClient *)self xpcConnection];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __58__ICCloudClient_removeItemsWithSagaIDs_completionHandler___block_invoke;
  v15[3] = &unk_1E7BF77C0;
  v9 = v6;
  v16 = v9;
  v10 = [v8 remoteObjectProxyWithErrorHandler:v15];
  v11 = [(ICCloudClient *)self configuration];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __58__ICCloudClient_removeItemsWithSagaIDs_completionHandler___block_invoke_2;
  v13[3] = &unk_1E7BF77C0;
  v14 = v9;
  v12 = v9;
  [v10 removeItemsWithSagaIDs:v7 configuration:v11 completion:v13];
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

- (void)removePlaylistsWithSagaIDs:(id)a3 performDeltaSync:(BOOL)a4 completionHandler:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = [(ICCloudClient *)self xpcConnection];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __79__ICCloudClient_removePlaylistsWithSagaIDs_performDeltaSync_completionHandler___block_invoke;
  v19[3] = &unk_1E7BF77C0;
  v11 = v9;
  v20 = v11;
  v12 = [v10 remoteObjectProxyWithErrorHandler:v19];
  v13 = [(ICCloudClient *)self configuration];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __79__ICCloudClient_removePlaylistsWithSagaIDs_performDeltaSync_completionHandler___block_invoke_2;
  v16[3] = &unk_1E7BFA490;
  v17 = v8;
  v18 = v11;
  v14 = v11;
  v15 = v8;
  [v12 removePlaylistsWithSagaIDs:v15 performDeltaSync:v6 configuration:v13 completion:v16];
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

- (void)addStorePlaylistWithGlobalID:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ICCloudClient *)self xpcConnection];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __64__ICCloudClient_addStorePlaylistWithGlobalID_completionHandler___block_invoke;
  v17[3] = &unk_1E7BF77C0;
  v9 = v7;
  v18 = v9;
  v10 = [v8 remoteObjectProxyWithErrorHandler:v17];
  v11 = [(ICCloudClient *)self configuration];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __64__ICCloudClient_addStorePlaylistWithGlobalID_completionHandler___block_invoke_2;
  v14[3] = &unk_1E7BF6AC0;
  v15 = v6;
  v16 = v9;
  v12 = v9;
  v13 = v6;
  [v10 addStorePlaylistWithGlobalID:v13 configuration:v11 completion:v14];
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

- (void)sdk_addStoreItemWithOpaqueID:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ICCloudClient *)self xpcConnection];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __64__ICCloudClient_sdk_addStoreItemWithOpaqueID_completionHandler___block_invoke;
  v15[3] = &unk_1E7BF77C0;
  v9 = v6;
  v16 = v9;
  v10 = [v8 remoteObjectProxyWithErrorHandler:v15];
  v11 = [(ICCloudClient *)self configuration];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __64__ICCloudClient_sdk_addStoreItemWithOpaqueID_completionHandler___block_invoke_2;
  v13[3] = &unk_1E7BF3FA8;
  v14 = v9;
  v12 = v9;
  [v10 sdk_addStoreItemWithOpaqueID:v7 configuration:v11 completion:v13];
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

- (void)addStoreItemsWithAdamIDs:(id)a3 referral:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(ICCloudClient *)self xpcConnection];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __69__ICCloudClient_addStoreItemsWithAdamIDs_referral_completionHandler___block_invoke;
  v18[3] = &unk_1E7BF77C0;
  v12 = v8;
  v19 = v12;
  v13 = [v11 remoteObjectProxyWithErrorHandler:v18];
  v14 = [(ICCloudClient *)self configuration];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __69__ICCloudClient_addStoreItemsWithAdamIDs_referral_completionHandler___block_invoke_2;
  v16[3] = &unk_1E7BF3FA8;
  v17 = v12;
  v15 = v12;
  [v13 addStoreItemsWithAdamIDs:v10 referral:v9 configuration:v14 completion:v16];
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

- (void)addStoreItemWithAdamID:(int64_t)a3 referral:(id)a4 completionHandler:(id)a5
{
  v21 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  if (a3 <= 0)
  {
    v14 = os_log_create("com.apple.amp.iTunesCloud", "CloudClient");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v20 = a3;
      _os_log_impl(&dword_1B4491000, v14, OS_LOG_TYPE_ERROR, "Must provide a valid adam ID (%lld) adding to library.", buf, 0xCu);
    }

    if (v9)
    {
      (*(v9 + 2))(v9, 0, 0);
    }
  }

  else
  {
    v10 = [(ICCloudClient *)self xpcConnection];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __67__ICCloudClient_addStoreItemWithAdamID_referral_completionHandler___block_invoke;
    v17[3] = &unk_1E7BF77C0;
    v11 = v9;
    v18 = v11;
    v12 = [v10 remoteObjectProxyWithErrorHandler:v17];
    v13 = [(ICCloudClient *)self configuration];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __67__ICCloudClient_addStoreItemWithAdamID_referral_completionHandler___block_invoke_2;
    v15[3] = &unk_1E7BF3FA8;
    v16 = v11;
    [v12 addStoreItemWithAdamID:a3 referral:v8 configuration:v13 completion:v15];
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

- (void)updatePinnedSubscribedPlaylistsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(ICCloudClient *)self xpcConnection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __63__ICCloudClient_updatePinnedSubscribedPlaylistsWithCompletion___block_invoke;
  v12[3] = &unk_1E7BF77C0;
  v6 = v4;
  v13 = v6;
  v7 = [v5 remoteObjectProxyWithErrorHandler:v12];
  v8 = [(ICCloudClient *)self configuration];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __63__ICCloudClient_updatePinnedSubscribedPlaylistsWithCompletion___block_invoke_2;
  v10[3] = &unk_1E7BF77C0;
  v11 = v6;
  v9 = v6;
  [v7 updatePinnedSubscribedPlaylistsWithConfiguration:v8 completion:v10];
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

- (void)updateSubscribedPlaylistsWithSagaIDs:(id)a3 ignoreMinRefreshInterval:(BOOL)a4 completionHandler:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = a3;
  v10 = [(ICCloudClient *)self xpcConnection];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __97__ICCloudClient_updateSubscribedPlaylistsWithSagaIDs_ignoreMinRefreshInterval_completionHandler___block_invoke;
  v17[3] = &unk_1E7BF77C0;
  v11 = v8;
  v18 = v11;
  v12 = [v10 remoteObjectProxyWithErrorHandler:v17];
  v13 = [(ICCloudClient *)self configuration];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __97__ICCloudClient_updateSubscribedPlaylistsWithSagaIDs_ignoreMinRefreshInterval_completionHandler___block_invoke_2;
  v15[3] = &unk_1E7BF77C0;
  v16 = v11;
  v14 = v11;
  [v12 updateSubscribedPlaylistsWithSagaIDs:v9 ignoreMinRefreshInterval:v5 configuration:v13 completion:v15];
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

- (void)uploadArtworkForPlaylistWithPersistentID:(int64_t)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = [(ICCloudClient *)self xpcConnection];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __76__ICCloudClient_uploadArtworkForPlaylistWithPersistentID_completionHandler___block_invoke;
  v14[3] = &unk_1E7BF77C0;
  v8 = v6;
  v15 = v8;
  v9 = [v7 remoteObjectProxyWithErrorHandler:v14];
  v10 = [(ICCloudClient *)self configuration];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __76__ICCloudClient_uploadArtworkForPlaylistWithPersistentID_completionHandler___block_invoke_2;
  v12[3] = &unk_1E7BF77C0;
  v13 = v8;
  v11 = v8;
  [v9 uploadArtworkForPlaylistWithPersistentID:a3 configuration:v10 completion:v12];
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

- (void)publishPlaylistWithSagaID:(int64_t)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = [(ICCloudClient *)self xpcConnection];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __61__ICCloudClient_publishPlaylistWithSagaID_completionHandler___block_invoke;
  v14[3] = &unk_1E7BF77C0;
  v8 = v6;
  v15 = v8;
  v9 = [v7 remoteObjectProxyWithErrorHandler:v14];
  v10 = [(ICCloudClient *)self configuration];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __61__ICCloudClient_publishPlaylistWithSagaID_completionHandler___block_invoke_2;
  v12[3] = &unk_1E7BF3FD0;
  v13 = v8;
  v11 = v8;
  [v9 publishPlaylistWithSagaID:a3 configuration:v10 completion:v12];
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

- (void)sdk_addItemWithSagaID:(int64_t)a3 toPlaylistWithPersistentID:(int64_t)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = [(ICCloudClient *)self xpcConnection];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __84__ICCloudClient_sdk_addItemWithSagaID_toPlaylistWithPersistentID_completionHandler___block_invoke;
  v16[3] = &unk_1E7BF77C0;
  v10 = v8;
  v17 = v10;
  v11 = [v9 remoteObjectProxyWithErrorHandler:v16];
  v12 = [(ICCloudClient *)self configuration];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __84__ICCloudClient_sdk_addItemWithSagaID_toPlaylistWithPersistentID_completionHandler___block_invoke_2;
  v14[3] = &unk_1E7BF77C0;
  v15 = v10;
  v13 = v10;
  [v11 sdk_addItemWithSagaID:a3 toPlaylistWithPersistentID:a4 configuration:v12 completion:v14];
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

- (void)sdk_addStoreItemWithOpaqueID:(id)a3 toPlaylistWithPersistentID:(int64_t)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [(ICCloudClient *)self xpcConnection];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __91__ICCloudClient_sdk_addStoreItemWithOpaqueID_toPlaylistWithPersistentID_completionHandler___block_invoke;
  v17[3] = &unk_1E7BF77C0;
  v11 = v8;
  v18 = v11;
  v12 = [v10 remoteObjectProxyWithErrorHandler:v17];
  v13 = [(ICCloudClient *)self configuration];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __91__ICCloudClient_sdk_addStoreItemWithOpaqueID_toPlaylistWithPersistentID_completionHandler___block_invoke_2;
  v15[3] = &unk_1E7BF3FA8;
  v16 = v11;
  v14 = v11;
  [v12 sdk_addStoreItemWithOpaqueID:v9 toPlaylistWithPersistentID:a4 configuration:v13 completion:v15];
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

- (void)addItemWithSagaID:(int64_t)a3 toPlaylistWithPersistentID:(int64_t)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = [(ICCloudClient *)self xpcConnection];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __80__ICCloudClient_addItemWithSagaID_toPlaylistWithPersistentID_completionHandler___block_invoke;
  v16[3] = &unk_1E7BF77C0;
  v10 = v8;
  v17 = v10;
  v11 = [v9 remoteObjectProxyWithErrorHandler:v16];
  v12 = [(ICCloudClient *)self configuration];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __80__ICCloudClient_addItemWithSagaID_toPlaylistWithPersistentID_completionHandler___block_invoke_2;
  v14[3] = &unk_1E7BF77C0;
  v15 = v10;
  v13 = v10;
  [v11 addItemWithSagaID:a3 toPlaylistWithPersistentID:a4 configuration:v12 completion:v14];
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

- (void)addStoreItemWithAdamID:(int64_t)a3 referral:(id)a4 toPlaylistWithPersistentID:(int64_t)a5 completionHandler:(id)a6
{
  v10 = a6;
  v11 = a4;
  v12 = [(ICCloudClient *)self xpcConnection];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __94__ICCloudClient_addStoreItemWithAdamID_referral_toPlaylistWithPersistentID_completionHandler___block_invoke;
  v19[3] = &unk_1E7BF77C0;
  v13 = v10;
  v20 = v13;
  v14 = [v12 remoteObjectProxyWithErrorHandler:v19];
  v15 = [(ICCloudClient *)self configuration];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __94__ICCloudClient_addStoreItemWithAdamID_referral_toPlaylistWithPersistentID_completionHandler___block_invoke_2;
  v17[3] = &unk_1E7BF77C0;
  v18 = v13;
  v16 = v13;
  [v14 addStoreItemWithAdamID:a3 referral:v11 toPlaylistWithPersistentID:a5 configuration:v15 completion:v17];
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

- (void)sdk_setPlaylistProperties:(id)a3 trackList:(id)a4 forPlaylistPersistentID:(int64_t)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = v12;
  if (v10 | v11)
  {
    v14 = [(ICCloudClient *)self xpcConnection];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __95__ICCloudClient_sdk_setPlaylistProperties_trackList_forPlaylistPersistentID_completionHandler___block_invoke;
    v20[3] = &unk_1E7BF77C0;
    v15 = v13;
    v21 = v15;
    v16 = [v14 remoteObjectProxyWithErrorHandler:v20];
    v17 = [(ICCloudClient *)self configuration];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __95__ICCloudClient_sdk_setPlaylistProperties_trackList_forPlaylistPersistentID_completionHandler___block_invoke_2;
    v18[3] = &unk_1E7BF77C0;
    v19 = v15;
    [v16 sdk_setPlaylistProperties:v10 trackList:v11 forPlaylistPersistentID:a5 configuration:v17 completion:v18];
  }

  else if (v12)
  {
    (*(v12 + 2))(v12, 0);
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

- (void)setPlaylistProperties:(id)a3 trackList:(id)a4 forPlaylistPersistentID:(int64_t)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = v12;
  if (v10 | v11)
  {
    v14 = [(ICCloudClient *)self xpcConnection];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __91__ICCloudClient_setPlaylistProperties_trackList_forPlaylistPersistentID_completionHandler___block_invoke;
    v20[3] = &unk_1E7BF77C0;
    v15 = v13;
    v21 = v15;
    v16 = [v14 remoteObjectProxyWithErrorHandler:v20];
    v17 = [(ICCloudClient *)self configuration];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __91__ICCloudClient_setPlaylistProperties_trackList_forPlaylistPersistentID_completionHandler___block_invoke_2;
    v18[3] = &unk_1E7BF77C0;
    v19 = v15;
    [v16 setPlaylistProperties:v10 trackList:v11 forPlaylistPersistentID:a5 configuration:v17 completion:v18];
  }

  else if (v12)
  {
    (*(v12 + 2))(v12, 0);
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

- (void)sdk_createPlaylistWithPersistentID:(int64_t)a3 properties:(id)a4 tracklist:(id)a5 completionHandler:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [v10 objectForKey:@"name"];
  v14 = [v13 length];

  if (v14)
  {
    v15 = [(ICCloudClient *)self xpcConnection];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __91__ICCloudClient_sdk_createPlaylistWithPersistentID_properties_tracklist_completionHandler___block_invoke;
    v23[3] = &unk_1E7BF77C0;
    v16 = v12;
    v24 = v16;
    v17 = [v15 remoteObjectProxyWithErrorHandler:v23];
    v18 = [(ICCloudClient *)self configuration];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __91__ICCloudClient_sdk_createPlaylistWithPersistentID_properties_tracklist_completionHandler___block_invoke_2;
    v21[3] = &unk_1E7BF73D8;
    v22 = v16;
    [v17 sdk_createPlaylistWithPersistentID:a3 properties:v10 trackList:v11 configuration:v18 completion:v21];

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

  if (v12)
  {
    v19 = [MEMORY[0x1E696ABC0] ic_cloudClientErrorWithCode:2015 userInfo:0];
    (*(v12 + 2))(v12, 0, v19);
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

- (void)createPlaylistWithPersistentID:(int64_t)a3 properties:(id)a4 trackList:(id)a5 completionHandler:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [v10 objectForKey:@"name"];
  v14 = [v13 length];

  if (v14)
  {
    v15 = [(ICCloudClient *)self xpcConnection];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __87__ICCloudClient_createPlaylistWithPersistentID_properties_trackList_completionHandler___block_invoke;
    v23[3] = &unk_1E7BF77C0;
    v16 = v12;
    v24 = v16;
    v17 = [v15 remoteObjectProxyWithErrorHandler:v23];
    v18 = [(ICCloudClient *)self configuration];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __87__ICCloudClient_createPlaylistWithPersistentID_properties_trackList_completionHandler___block_invoke_2;
    v21[3] = &unk_1E7BF73D8;
    v22 = v16;
    [v17 createPlaylistWithPersistentID:a3 properties:v10 trackList:v11 configuration:v18 completion:v21];

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

  if (v12)
  {
    v19 = [MEMORY[0x1E696ABC0] ic_cloudClientErrorWithCode:2015 userInfo:0];
    (*(v12 + 2))(v12, 0, v19);
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

- (void)setCloudFavoriteSongAddToLibraryBehavior:(int64_t)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = [(ICCloudClient *)self xpcConnection];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __76__ICCloudClient_setCloudFavoriteSongAddToLibraryBehavior_completionHandler___block_invoke;
  v14[3] = &unk_1E7BF77C0;
  v8 = v6;
  v15 = v8;
  v9 = [v7 remoteObjectProxyWithErrorHandler:v14];
  v10 = [(ICCloudClient *)self configuration];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __76__ICCloudClient_setCloudFavoriteSongAddToLibraryBehavior_completionHandler___block_invoke_2;
  v12[3] = &unk_1E7BF77C0;
  v13 = v8;
  v11 = v8;
  [v9 setCloudFavoriteSongAddToLibraryBehavior:a3 forConfiguration:v10 completion:v12];
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

- (void)setCloudAddToPlaylistBehavior:(int64_t)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = [(ICCloudClient *)self xpcConnection];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __65__ICCloudClient_setCloudAddToPlaylistBehavior_completionHandler___block_invoke;
  v14[3] = &unk_1E7BF77C0;
  v8 = v6;
  v15 = v8;
  v9 = [v7 remoteObjectProxyWithErrorHandler:v14];
  v10 = [(ICCloudClient *)self configuration];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __65__ICCloudClient_setCloudAddToPlaylistBehavior_completionHandler___block_invoke_2;
  v12[3] = &unk_1E7BF77C0;
  v13 = v8;
  v11 = v8;
  [v9 setCloudAddToPlaylistBehavior:a3 forConfiguration:v10 completion:v12];
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

- (void)performBlockAfterServerSetup:(id)a3
{
  v4 = a3;
  serverSetupBlockQueue = self->_serverSetupBlockQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__ICCloudClient_performBlockAfterServerSetup___block_invoke;
  v7[3] = &unk_1E7BF9EC8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
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

- (ICCloudClient)initWithConfiguration:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = ICCloudClient;
  v5 = [(ICCloudClient *)&v25 init];
  if (v5)
  {
    v6 = [v4 copy];
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

    v20 = [MEMORY[0x1E695DF70] array];
    pendingServerSetupCompleteBlocks = v5->_pendingServerSetupCompleteBlocks;
    v5->_pendingServerSetupCompleteBlocks = v20;

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

- (ICCloudClient)initWithUserIdentity:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[ICConnectionConfiguration alloc] initWithUserIdentity:v4];
  }

  else
  {
    v5 = 0;
  }

  v6 = [(ICCloudClient *)self initWithConfiguration:v5];

  return v6;
}

@end