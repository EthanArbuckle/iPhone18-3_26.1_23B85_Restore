@interface ICDCloudMusicLibraryRequestHandler
+ (id)handler;
+ (id)handlers;
- (BOOL)_isNativeMusicAppInstalled;
- (BOOL)_wasRestoredFromCloudBackup:(id)a3;
- (BOOL)isUpdatingCloudLibrary;
- (BOOL)shouldIncludeMediaKindSongForJaliscoImport;
- (ICDCloudMusicLibraryRequestHandler)initWithConfiguration:(id)a3;
- (id)_cloudSourcesToRemoveForReason:(int64_t)a3;
- (id)_prepareLibraryLoadErrorWithJaliscoError:(id)a3 sagaError:(id)a4;
- (int64_t)_canEnableCloudMusicLibraryOnPlatformsWithSideLoadedMediaContentWithProperties:(id)a3 includeLocalContentCheck:(BOOL)a4;
- (int64_t)_getCurrentSubscriptionStatusForReason:(int64_t)a3;
- (int64_t)_shouldHandleDaemonStartupOrAccountChangedNotificationWithProperties:(id)a3;
- (void)_adjustMergePreferenceWithUserIdentityProperties:(id)a3;
- (void)_authenticateAndStartInitialImportWithMergePreference:(id)a3 userIdentityProperties:(id)a4 enableReason:(int64_t)a5 withCompletionHandler:(id)a6;
- (void)_enqueueCloudUpdateLibraryOperationForReason:(int64_t)a3;
- (void)_enqueueSubscriptionStatusCheckForReason:(int64_t)a3;
- (void)_handleMusicSubscriptionStatusDidChangeNotification:(id)a3;
- (void)_handleSagaAuthentication:(id)a3 finishedForReason:(int64_t)a4 explicitUserAction:(BOOL)a5 shouldStartInitialImport:(BOOL)a6 completionHandler:(id)a7;
- (void)_handleUserIdentityStoreDidChangeNotification:(id)a3;
- (void)_performInitialJaliscoImportWithClientIdentity:(id)a3 completion:(id)a4;
- (void)_performJaliscoImportWithClientIdentity:(id)a3 byAddingMediaKind:(int64_t)a4 completionHandler:(id)a5;
- (void)_postLibraryUpdateProgressChangedForLibraryType:(int64_t)a3;
- (void)_registerDeviceAndPerformInitialImportWithUserIdentityProperties:(id)a3 cloudLibraryEnableReason:(int64_t)a4 completionHandler:(id)a5;
- (void)_reloadSubscriptionStatusAndEnableCloudMusicLibraryWithReason:(int64_t)a3 completionHandler:(id)a4;
- (void)_resetInternalCloudLibraryState;
- (void)_retryEnablingCloudMusicLibraryForReason:(int64_t)a3;
- (void)_runSubscriptionStatusCheckOperationWithReason:(int64_t)a3 completionHandler:(id)a4;
- (void)_tryEnablingCloudMusicLibraryForReason:(int64_t)a3 completionHandler:(id)a4;
- (void)_tryEnablingICMLOnDevicesSupportingSideLoadedContentWithProperties:(id)a3 reason:(int64_t)a4 withCompletionHandler:(id)a5;
- (void)_updateAutomaticDownloadsPreference;
- (void)_updateSagaLibraryWithClientIdentity:(id)a3 forReason:(int64_t)a4 allowNoisyAuthPrompt:(BOOL)a5 isExplicitUserAction:(BOOL)a6 reconcileLibraryPins:(BOOL)a7 completionHandler:(id)a8;
- (void)addBackgroundOperation:(id)a3 forLibraryType:(int64_t)a4 priority:(int)a5;
- (void)addGeniusPlaylistWithPersistentID:(int64_t)a3 name:(id)a4 seedItemIDs:(id)a5 itemIDs:(id)a6 clientIdentity:(id)a7 completionHandler:(id)a8;
- (void)addItemWithSagaID:(unint64_t)a3 toPlaylistWithPersistentID:(int64_t)a4 clientIdentity:(id)a5 completionHandler:(id)a6;
- (void)addItemWithSagaID:(unint64_t)a3 toPlaylistWithPersistentID:(int64_t)a4 requestingBundleID:(id)a5 clientIdentity:(id)a6 completionHandler:(id)a7;
- (void)addOperation:(id)a3 forLibraryType:(int64_t)a4 priority:(int)a5;
- (void)addStoreItemWithAdamID:(int64_t)a3 referral:(id)a4 clientIdentity:(id)a5 completionHandler:(id)a6;
- (void)addStoreItemWithAdamID:(int64_t)a3 referral:(id)a4 toPlaylistWithPersistentID:(int64_t)a5 clientIdentity:(id)a6 completionHandler:(id)a7;
- (void)addStoreItemWithOpaqueID:(id)a3 requestingBundleID:(id)a4 clientIdentity:(id)a5 completionHandler:(id)a6;
- (void)addStoreItemWithOpaqueID:(id)a3 toPlaylistWithPersistentID:(int64_t)a4 requestingBundleID:(id)a5 clientIdentity:(id)a6 completionHandler:(id)a7;
- (void)addStoreItemsWithAdamIDs:(id)a3 referral:(id)a4 clientIdentity:(id)a5 completionHandler:(id)a6;
- (void)addStorePlaylistWithGlobalID:(id)a3 clientIdentity:(id)a4 completionHandler:(id)a5;
- (void)becomeActive;
- (void)becomeInactiveWithDeauthentication:(BOOL)a3 completion:(id)a4;
- (void)beginCollaborationUsingPlaylistWithPersistentID:(int64_t)a3 sharingMode:(unint64_t)a4 completion:(id)a5;
- (void)cancelPendingChangesForLibraryType:(int64_t)a3;
- (void)createPlaylistWithPersistentID:(int64_t)a3 properties:(id)a4 trackList:(id)a5 clientIdentity:(id)a6 completionHandler:(id)a7;
- (void)createPlaylistWithPersistentID:(int64_t)a3 properties:(id)a4 trackList:(id)a5 requestingBundleID:(id)a6 clientIdentity:(id)a7 completionHandler:(id)a8;
- (void)deprioritizeContainerArtworkForSagaID:(unint64_t)a3;
- (void)deprioritizeItemArtworkForPurchaseHistoryID:(unint64_t)a3;
- (void)deprioritizeItemArtworkForSagaID:(unint64_t)a3;
- (void)deprioritizeScreenshotForPurchaseHistoryID:(unint64_t)a3;
- (void)deprioritizeScreenshotForSagaID:(unint64_t)a3;
- (void)deprioritizeSubscriptionContainerArtworkForPersistentID:(int64_t)a3;
- (void)deprioritizeSubscriptionItemArtworkForPersistentID:(int64_t)a3;
- (void)deprioritizeSubscriptionScreenshotForPersistentID:(int64_t)a3;
- (void)disableCloudLibraryWithClientIdentity:(id)a3 reason:(int64_t)a4 completionHandler:(id)a5;
- (void)editCollaborationWithPersistentID:(int64_t)a3 properties:(id)a4 trackEdits:(id)a5 completion:(id)a6;
- (void)enableCloudLibraryWithClientIdentity:(id)a3 startInitialImport:(BOOL)a4 enableCloudLibraryPolicy:(int64_t)a5 isExplicitUserAction:(BOOL)a6 completionHandler:(id)a7;
- (void)endCollaborationWithPersistentID:(int64_t)a3 completion:(id)a4;
- (void)environmentMonitorDidChangeNetworkReachability:(id)a3;
- (void)favoriteAlbumWithPersistentID:(int64_t)a3 cloudLibraryID:(id)a4 time:(id)a5 completionHandler:(id)a6;
- (void)favoriteArtistWithPersistentID:(int64_t)a3 cloudLibraryID:(id)a4 time:(id)a5 completionHandler:(id)a6;
- (void)favoriteEntityWithPersistentID:(int64_t)a3 sagaID:(int64_t)a4 entityType:(int64_t)a5 time:(id)a6 completionHandler:(id)a7;
- (void)favoriteEntityWithPersistentID:(int64_t)a3 storeID:(int64_t)a4 entityType:(int64_t)a5 time:(id)a6 completionHandler:(id)a7;
- (void)favoritePlaylistWithPersistentID:(int64_t)a3 globalID:(id)a4 time:(id)a5 completionHandler:(id)a6;
- (void)finishedUpdateOperationForLibraryType:(int64_t)a3 withResponse:(id)a4;
- (void)handleMusicAppInstalled;
- (void)handleMusicAppRemovedWithCompletion:(id)a3;
- (void)hideItemsWithPurchaseHistoryIDs:(id)a3 clientIdentity:(id)a4 completionHandler:(id)a5;
- (void)importContainerArtworkForPersistentID:(int64_t)a3 clientIdentity:(id)a4 completionHandler:(id)a5;
- (void)importContainerArtworkForSagaID:(unint64_t)a3 artworkVariantType:(int64_t)a4 clientIdentity:(id)a5 completionHandler:(id)a6;
- (void)importContainerArtworkForSagaID:(unint64_t)a3 clientIdentity:(id)a4 completionHandler:(id)a5;
- (void)importItemArtworkForPersistentID:(int64_t)a3 clientIdentity:(id)a4 completionHandler:(id)a5;
- (void)importItemArtworkForPurchaseHistoryID:(unint64_t)a3 clientIdentity:(id)a4 completionHandler:(id)a5;
- (void)importItemArtworkForSagaID:(unint64_t)a3 clientIdentity:(id)a4 completionHandler:(id)a5;
- (void)importScreenshotForPersistentID:(int64_t)a3 clientIdentity:(id)a4 completionHandler:(id)a5;
- (void)importScreenshotForPurchaseHistoryID:(unint64_t)a3 clientIdentity:(id)a4 completionHandler:(id)a5;
- (void)importScreenshotForSagaID:(unint64_t)a3 clientIdentity:(id)a4 completionHandler:(id)a5;
- (void)isMediaKindDisabledForJaliscoLibrary:(int64_t)a3 clientIdentity:(id)a4 completion:(id)a5;
- (void)isUpdatingCloudLibraryWithCompletion:(id)a3;
- (void)joinCollaborationWithGlobalPlaylistID:(id)a3 invitationURL:(id)a4 completion:(id)a5;
- (void)loadArtworkInfoForContainerSagaIDs:(id)a3 clientIdentity:(id)a4 completionHandler:(id)a5;
- (void)loadArtworkInfoForPurchaseHistoryIDs:(id)a3 clientIdentity:(id)a4 completionHandler:(id)a5;
- (void)loadArtworkInfoForSagaIDs:(id)a3 clientIdentity:(id)a4 completionHandler:(id)a5;
- (void)loadArtworkInfoForSubscriptionContainerPersistentIDs:(id)a3 clientIdentity:(id)a4 completionHandler:(id)a5;
- (void)loadArtworkInfoForSubscriptionItemPersistentIDs:(id)a3 clientIdentity:(id)a4 completionHandler:(id)a5;
- (void)loadBooksForStoreIDs:(id)a3 clientIdentity:(id)a4 withCompletionHandler:(id)a5;
- (void)loadGeniusItemsForSagaID:(unint64_t)a3 clientIdentity:(id)a4 completionHandler:(id)a5;
- (void)loadLastKnownEnableICMLStatusWithCompletionHandler:(id)a3;
- (void)loadMissingArtworkWithClientIdentity:(id)a3;
- (void)loadScreenshotInfoForPurchaseHistoryIDs:(id)a3 clientIdentity:(id)a4 completionHandler:(id)a5;
- (void)loadScreenshotInfoForSagaIDs:(id)a3 clientIdentity:(id)a4 completionHandler:(id)a5;
- (void)loadScreenshotInfoForSubscriptionPersistentIDs:(id)a3 clientIdentity:(id)a4 completionHandler:(id)a5;
- (void)movePinnedAlbumWithPersistentID:(int64_t)a3 cloudAlbumID:(id)a4 toPosition:(int64_t)a5 completion:(id)a6;
- (void)movePinnedArtistWithPersistentID:(int64_t)a3 cloudArtistID:(id)a4 toPosition:(int64_t)a5 completion:(id)a6;
- (void)movePinnedEntityWithPersistentID:(int64_t)a3 cloudID:(int64_t)a4 type:(int64_t)a5 toPosition:(int64_t)a6 completion:(id)a7;
- (void)pinLibraryAlbumWithPersistentID:(int64_t)a3 cloudAlbumID:(id)a4 defaultAction:(int64_t)a5 completion:(id)a6;
- (void)pinLibraryArtistWithPersistentID:(int64_t)a3 cloudArtistID:(id)a4 defaultAction:(int64_t)a5 completion:(id)a6;
- (void)pinLibraryEntityWithPersistentID:(int64_t)a3 cloudID:(int64_t)a4 type:(int64_t)a5 defaultAction:(int64_t)a6 completion:(id)a7;
- (void)prepareToDownloadAllLibraryPinnedEntities;
- (void)publishPlaylistWithSagaID:(unint64_t)a3 clientIdentity:(id)a4 completionHandler:(id)a5;
- (void)removeCollaborators:(id)a3 fromCollaborationWithPersistentID:(int64_t)a4 completion:(id)a5;
- (void)removeItemsWithSagaIDs:(id)a3 clientIdentity:(id)a4 completionHandler:(id)a5;
- (void)removeLibraryWithClientIdentity:(id)a3 completion:(id)a4;
- (void)removePinnedAlbumWithPersistentID:(int64_t)a3 cloudAlbumID:(id)a4 completion:(id)a5;
- (void)removePinnedArtistWithPersistentID:(int64_t)a3 cloudArtistID:(id)a4 completion:(id)a5;
- (void)removePinnedEntityWithPersistentID:(int64_t)a3 cloudID:(int64_t)a4 type:(int64_t)a5 completion:(id)a6;
- (void)removePlaylistsWithSagaIDs:(id)a3 performDeltaSync:(BOOL)a4 clientIdentity:(id)a5 completionHandler:(id)a6;
- (void)resetInvitationURLForCollaborationWithPersistentID:(int64_t)a3 completion:(id)a4;
- (void)respondToPendingCollaborator:(id)a3 onCollaborationWithPersistentID:(int64_t)a4 withApproval:(BOOL)a5 completion:(id)a6;
- (void)scheduleBackgroundTaskToUpdateLibraryType:(int64_t)a3;
- (void)setAlbumArtistProperties:(id)a3 withArtistPersistentID:(int64_t)a4 clientIdentity:(id)a5 completionHandler:(id)a6;
- (void)setAlbumEntityProperties:(id)a3 withAlbumPersistentID:(int64_t)a4 clientIdentity:(id)a5 completionHandler:(id)a6;
- (void)setAlbumProperties:(id)a3 forItemsWithAlbumPersistentID:(int64_t)a4 clientIdentity:(id)a5 completionHandler:(id)a6;
- (void)setCloudAddToPlaylistBehavior:(int64_t)a3 clientIdentity:(id)a4 completionHandler:(id)a5;
- (void)setCloudFavoriteSongAddToLibraryBehavior:(int64_t)a3 clientIdentity:(id)a4 completionHandler:(id)a5;
- (void)setItemProperties:(id)a3 forPurchaseHistoryID:(unint64_t)a4 clientIdentity:(id)a5 completionHandler:(id)a6;
- (void)setItemProperties:(id)a3 forSagaID:(unint64_t)a4 clientIdentity:(id)a5 completionHandler:(id)a6;
- (void)setPlaylistProperties:(id)a3 trackList:(id)a4 forPlaylistPersistentID:(int64_t)a5 clientIdentity:(id)a6 completionHandler:(id)a7;
- (void)setPlaylistProperties:(id)a3 trackList:(id)a4 forPlaylistPersistentID:(int64_t)a5 clientIdentity:(id)a6 requestingBundleID:(id)a7 completionHandler:(id)a8;
- (void)setUpdateProgress:(float)a3 forLibraryType:(int64_t)a4;
- (void)startingUpdateOperationForLibraryType:(int64_t)a3 isInitialImport:(BOOL)a4;
- (void)updateItemPlayDataWithClientIdentity:(id)a3 completionHandler:(id)a4;
- (void)updateJaliscoLibraryWithClientIdentity:(id)a3 forReason:(int64_t)a4 completionHandler:(id)a5;
- (void)updateLibraryWithReason:(int64_t)a3 completionHandler:(id)a4;
- (void)updatePinnedLibraryAlbumWithPersistentID:(int64_t)a3 cloudAlbumID:(id)a4 defaultAction:(int64_t)a5 completion:(id)a6;
- (void)updatePinnedLibraryArtistWithPersistentID:(int64_t)a3 cloudArtistID:(id)a4 defaultAction:(int64_t)a5 completion:(id)a6;
- (void)updatePinnedLibraryEntityWithPersistentID:(int64_t)a3 cloudID:(int64_t)a4 type:(int64_t)a5 defaultAction:(int64_t)a6 completion:(id)a7;
- (void)updatePlaylistPlayDataWithClientIdentity:(id)a3 completionHandler:(id)a4;
- (void)updateProgressForLibraryType:(int64_t)a3 completionHandler:(id)a4;
- (void)updateSubscribedPlaylistsWithSagaIDs:(id)a3 ignoreMinRefreshInterval:(BOOL)a4 requestReason:(int64_t)a5 pinnedOnly:(BOOL)a6 clientIdentity:(id)a7 completionHandler:(id)a8;
- (void)uploadArtworkForPlaylistWithPersistentID:(int64_t)a3 clientIdentity:(id)a4 completionHandler:(id)a5;
@end

@implementation ICDCloudMusicLibraryRequestHandler

+ (id)handlers
{
  if (qword_100213AC0 != -1)
  {
    dispatch_once(&qword_100213AC0, &stru_1001D9EC0);
  }

  v3 = qword_100213AB8;

  return v3;
}

- (BOOL)shouldIncludeMediaKindSongForJaliscoImport
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 1;
  if (sub_100004B8C())
  {
    v3 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(v21 + 24);
      *buf = 138543618;
      v25 = self;
      v26 = 1024;
      LODWORD(v27) = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ includeMediaKindSong=%{BOOL}u on non standalone wOS platform", buf, 0x12u);
    }
  }

  else
  {
    v5 = [(BaseRequestHandler *)self userIdentityStore];
    v6 = [(BaseRequestHandler *)self userIdentity];
    v19 = 0;
    v7 = [v5 getPropertiesForUserIdentity:v6 error:&v19];
    v3 = v19;

    if (v3 || !v7)
    {
      v9 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v25 = self;
        v26 = 2114;
        v27 = v3;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}@ could not load user identity properties. error=%{public}@", buf, 0x16u);
      }

      v8 = 0;
    }

    else
    {
      v8 = [v7 isActiveLocker];
    }

    v10 = dispatch_semaphore_create(0);
    v11 = [(BaseRequestHandler *)self configuration];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100004290;
    v15[3] = &unk_1001DA2A0;
    v18 = v8;
    v15[4] = self;
    v17 = &v20;
    v12 = v10;
    v16 = v12;
    sub_100004BFC(v11, v15);

    dispatch_semaphore_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
  }

  v13 = *(v21 + 24);
  _Block_object_dispose(&v20, 8);
  return v13;
}

- (void)_updateAutomaticDownloadsPreference
{
  v3 = +[ICDefaults standardDefaults];
  v4 = [v3 automaticDownloadsEnabled];

  v5 = +[ACAccountStore ic_sharedAccountStore];
  v6 = [(BaseRequestHandler *)self configuration];
  v7 = [v6 userIdentity];
  v8 = [v7 accountDSID];
  v9 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v8 longLongValue]);
  v35 = 0;
  v10 = [v5 ic_storeAccountForStoreAccountID:v9 error:&v35];
  v11 = v35;

  if (v10)
  {
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_10000BEFC;
    v34[3] = &unk_1001DEFB8;
    v34[4] = self;
    v12 = [[ICStoreRequestContext alloc] initWithBlock:v34];
    v13 = [v10 ic_isAutomaticDownloadsEnabledForMediaKindMusic];
    if (!(v4 & 1 | ((v13 & 1) == 0)))
    {
      v21 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Automatic downloads are enabled on the account, but not internally - removing it from the account", buf, 2u);
      }

      v22 = [ICUpdateAutomaticDownloadMediaKindsRequest alloc];
      v23 = +[ICUpdateAutomaticDownloadMediaKindsRequest automaticDownloadMediaKindsForMusic];
      v17 = [v22 initWithRequestContext:v12 mediaKindsToAdd:0 mediaKindsToRemove:v23];

      v29 = _NSConcreteStackBlock;
      v30 = 3221225472;
      v31 = sub_10000BFEC;
      v32 = &unk_1001DE828;
      v33 = self;
      v18 = &v29;
      goto LABEL_12;
    }

    if (!(v13 & 1 | ((v4 & 1) == 0)))
    {
      v14 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Automatic downloads are enabled internally but not on the account - setting it on the account", buf, 2u);
      }

      v15 = [ICUpdateAutomaticDownloadMediaKindsRequest alloc];
      v16 = +[ICUpdateAutomaticDownloadMediaKindsRequest automaticDownloadMediaKindsForMusic];
      v17 = [v15 initWithRequestContext:v12 mediaKindsToAdd:v16 mediaKindsToRemove:0];

      v24 = _NSConcreteStackBlock;
      v25 = 3221225472;
      v26 = sub_10000C0C0;
      v27 = &unk_1001DE828;
      v28 = self;
      v18 = &v24;
LABEL_12:
      [v17 performRequestWithCompletionHandler:{v18, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33}];
    }
  }

  else
  {
    v12 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [(BaseRequestHandler *)self configuration];
      v20 = [v19 userIdentity];
      *buf = 138543618;
      v37 = v20;
      v38 = 2114;
      v39 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Could not get account for userIdentity=%{public}@, error=%{public}@ - not updating Automatic Downloads preference", buf, 0x16u);
    }
  }
}

- (id)_cloudSourcesToRemoveForReason:(int64_t)a3
{
  if ((a3 + 11) <= 0xA)
  {
    if (((1 << (a3 + 11)) & 0x76A) != 0)
    {
      [NSSet setWithObjects:&off_1001ECFA0, &off_1001ECFD0, 0, v5];
      v3 = LABEL_4:;
      goto LABEL_5;
    }

    if (a3 == -11)
    {
      [NSSet setWithObjects:&off_1001ECFA0, &off_1001ECF88, &off_1001ECFE8, 0];
      goto LABEL_4;
    }
  }

  v3 = [NSSet setWithObject:&off_1001ECFA0];
LABEL_5:

  return v3;
}

- (void)_handleSagaAuthentication:(id)a3 finishedForReason:(int64_t)a4 explicitUserAction:(BOOL)a5 shouldStartInitialImport:(BOOL)a6 completionHandler:(id)a7
{
  v8 = a6;
  v9 = a5;
  v12 = a3;
  v13 = a7;
  v14 = v13;
  if (v12)
  {
    self->_isPendingAuthentication = 0;
    v15 = dispatch_group_create();
    v47[0] = 0;
    v47[1] = v47;
    v47[2] = 0x3032000000;
    v47[3] = sub_10000C6C0;
    v47[4] = sub_10000C6D0;
    v48 = 0;
    v45[0] = 0;
    v45[1] = v45;
    v45[2] = 0x3032000000;
    v45[3] = sub_10000C6C0;
    v45[4] = sub_10000C6D0;
    v46 = 0;
    self->_havePendingSagaUpdate = 1;
    v16 = [v12 status];
    v17 = [v12 error];
    v18 = [v12 authenticateFailureCode];
    v26 = [v18 integerValue];

    v19 = [v12 clientIdentity];
    v20 = &off_10016A000;
    if (v16 != 1)
    {
LABEL_13:
      accessQueue = self->_accessQueue;
      v27[0] = _NSConcreteStackBlock;
      v27[1] = *(v20 + 397);
      v27[2] = sub_10000C910;
      v27[3] = &unk_1001DA6B0;
      v27[4] = self;
      v28 = v19;
      v36 = v9;
      v33 = v16;
      v34 = a4;
      v31 = v45;
      v32 = v47;
      v35 = v26;
      v29 = v17;
      v30 = v14;
      v24 = v17;
      v25 = v19;
      dispatch_group_notify(v15, accessQueue, v27);

      _Block_object_dispose(v45, 8);
      _Block_object_dispose(v47, 8);

      goto LABEL_14;
    }

    dispatch_group_enter(v15);
    if (!a4 || v9)
    {
      self->_didManuallyReloadCloudLibrary = 1;
      v41[0] = _NSConcreteStackBlock;
      v41[1] = 3221225472;
      v41[2] = sub_10000C6D8;
      v41[3] = &unk_1001DA638;
      v41[4] = self;
      v43 = v47;
      v44 = a4;
      v42 = v15;
      [(ICDCloudMusicLibraryRequestHandler *)self _performJaliscoImportWithClientIdentity:v19 byAddingMediaKind:1 completionHandler:v41];
      v21 = v42;
    }

    else
    {
      if (!v8)
      {
        dispatch_group_leave(v15);
        goto LABEL_12;
      }

      v37[0] = _NSConcreteStackBlock;
      v37[1] = 3221225472;
      v37[2] = sub_10000C808;
      v37[3] = &unk_1001DA638;
      v37[4] = self;
      v39 = v47;
      v40 = a4;
      v38 = v15;
      [(ICDCloudMusicLibraryRequestHandler *)self _performInitialJaliscoImportWithClientIdentity:v19 completion:v37];
      v21 = v38;
    }

LABEL_12:
    v20 = &off_10016A000;
    goto LABEL_13;
  }

  if (v13)
  {
    calloutQueue = self->_calloutQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000C644;
    block[3] = &unk_1001DF5C8;
    v50 = v13;
    dispatch_async(calloutQueue, block);
    v15 = v50;
LABEL_14:
  }
}

- (id)_prepareLibraryLoadErrorWithJaliscoError:(id)a3 sagaError:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v5 | v6)
  {
    v7 = +[NSMutableDictionary dictionary];
    v8 = v7;
    if (v5)
    {
      [v7 setObject:v5 forKey:@"ICDCloudLibraryJaliscoLibraryUpdateErrorKey"];
    }

    if (v6)
    {
      [v8 setObject:v6 forKey:@"ICDCloudLibrarySagaLibraryUpdateErrorKey"];
    }

    v9 = [NSError errorWithDomain:ICErrorDomain code:0 userInfo:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_postLibraryUpdateProgressChangedForLibraryType:(int64_t)a3
{
  if (a3 == 1)
  {

    notify_post("com.apple.itunescloudd.sagaUpdateInProgressChanged");
  }

  else
  {
    v9[10] = v3;
    v9[11] = v4;
    v7 = [(BaseRequestHandler *)self userIdentityStore];
    v8 = [(BaseRequestHandler *)self userIdentity];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10000D15C;
    v9[3] = &unk_1001DA610;
    v9[4] = self;
    v9[5] = a3;
    [v7 getPropertiesForUserIdentity:v8 completionHandler:v9];
  }
}

- (void)_performJaliscoImportWithClientIdentity:(id)a3 byAddingMediaKind:(int64_t)a4 completionHandler:(id)a5
{
  v8 = a5;
  jaliscoRequestHandler = self->_jaliscoRequestHandler;
  if (jaliscoRequestHandler)
  {
    [(JaliscoRequestHandler *)jaliscoRequestHandler updateJaliscoLibraryWithClientIdentity:a3 byAddingMediaKind:a4 completionHandler:v8];
  }

  else
  {
    v10 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = self->_jaliscoRequestHandler;
      *buf = 138543874;
      v16 = self;
      v17 = 1024;
      v18 = a4;
      v19 = 2048;
      v20 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ - not reloading media purchase history by adding kind=%d, _jaliscoRequestHandler=%p", buf, 0x1Cu);
    }

    if (v8)
    {
      calloutQueue = self->_calloutQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10000D89C;
      block[3] = &unk_1001DF5C8;
      v14 = v8;
      dispatch_async(calloutQueue, block);
    }
  }
}

- (void)_performInitialJaliscoImportWithClientIdentity:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BaseRequestHandler *)self musicLibrary];
  v9 = [v8 jaliscoOnDiskDatabaseRevision];

  v10 = [(ICDCloudMusicLibraryRequestHandler *)self shouldIncludeMediaKindSongForJaliscoImport];
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 1;
  if (sub_100004B8C() || !v10)
  {
    v15 = 0;
    *(v33 + 24) = 0;
  }

  else
  {
    v11 = [(BaseRequestHandler *)self musicLibrary];
    v12 = [v11 jaliscoLastSupportedMediaKinds];

    v13 = [v12 componentsSeparatedByString:{@", "}];
    v14 = NSStringFromSelector("longLongValue");
    v15 = [v13 valueForKey:v14];

    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_10000DCF0;
    v31[3] = &unk_1001DA5E8;
    v31[4] = &v32;
    [v15 enumerateObjectsUsingBlock:v31];
  }

  v16 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    jaliscoRequestHandler = self->_jaliscoRequestHandler;
    v18 = *(v33 + 24);
    *buf = 138544642;
    v37 = self;
    v38 = 1024;
    v39 = v9;
    v40 = 1024;
    v41 = v10;
    v42 = 1024;
    v43 = v18;
    v44 = 2114;
    v45 = v15;
    v46 = 2048;
    v47 = jaliscoRequestHandler;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ - jaliscoDatabaseVersion=%d, shouldIncludeMediaKindSong=%{BOOL}u,reloadPurchaseHistoryIncludingMediaKindSong=%{BOOL}u, supportedMediaKinds=%{public}@, _jaliscoRequestHandler=%p", buf, 0x32u);
  }

  if (v9)
  {
    v19 = [(BaseRequestHandler *)self musicLibrary];
    if ([v19 jaliscoNeedsUpdateForTokens] & 1) != 0 || (v33[3])
    {
      v20 = self->_jaliscoRequestHandler == 0;

      if (!v20)
      {
        v21 = self->_jaliscoRequestHandler;
LABEL_13:
        if (*(v33 + 24) == 1)
        {
          v22 = v30;
          v30[0] = _NSConcreteStackBlock;
          v30[1] = 3221225472;
          v30[2] = sub_10000DD3C;
          v30[3] = &unk_1001DFC28;
          v23 = v7;
          v30[4] = self;
          v30[5] = v23;
          [(JaliscoRequestHandler *)v21 updateJaliscoLibraryWithClientIdentity:v6 byAddingMediaKind:1 completionHandler:v30];
        }

        else
        {
          v22 = v29;
          v29[0] = _NSConcreteStackBlock;
          v29[1] = 3221225472;
          v29[2] = sub_10000DE00;
          v29[3] = &unk_1001DFC28;
          v24 = v7;
          v29[4] = self;
          v29[5] = v24;
          [(JaliscoRequestHandler *)v21 updateLibraryWithClientIdentity:v6 reason:1 completionHandler:v29];
        }

        v25 = (v22 + 5);
        goto LABEL_20;
      }
    }

    else
    {
    }
  }

  else
  {
    v21 = self->_jaliscoRequestHandler;
    if (v21)
    {
      goto LABEL_13;
    }
  }

  if (v7)
  {
    calloutQueue = self->_calloutQueue;
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_10000DEC4;
    v27[3] = &unk_1001DF5C8;
    v25 = &v28;
    v28 = v7;
    dispatch_async(calloutQueue, v27);
LABEL_20:
  }

  _Block_object_dispose(&v32, 8);
}

- (void)_handleUserIdentityStoreDidChangeNotification:(id)a3
{
  v4 = +[ICNanoPairedDeviceStatusMonitor sharedMonitor];
  v5 = [v4 isMediaSyncingSupported];

  if (v5)
  {
    v6 = [(BaseRequestHandler *)self userIdentityStore];
    v7 = [(BaseRequestHandler *)self userIdentity];
    v14 = 0;
    v8 = [v6 getPropertiesForUserIdentity:v7 error:&v14];
    v9 = v14;

    if (!v9 && v8)
    {
      v10 = [v8 isActiveLocker];
      accessQueue = self->_accessQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10000E0B0;
      block[3] = &unk_1001DE650;
      v13 = v10;
      block[4] = self;
      dispatch_async(accessQueue, block);
    }
  }

  else
  {
    v9 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v16 = self;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ - ignoring store did change notification", buf, 0xCu);
    }
  }
}

- (void)_tryEnablingCloudMusicLibraryForReason:(int64_t)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = [ICAsyncBlockOperation alloc];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000F674;
  v10[3] = &unk_1001DA598;
  v11 = v6;
  v12 = a3;
  v10[4] = self;
  v8 = v6;
  v9 = [v7 initWithStartHandler:v10];
  [(NSOperationQueue *)self->_operationQueue addOperation:v9];
}

- (void)_tryEnablingICMLOnDevicesSupportingSideLoadedContentWithProperties:(id)a3 reason:(int64_t)a4 withCompletionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v31 = self;
    v32 = 1024;
    v33 = a4;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ - checking to see if iCML can be enabled for reason=%d", buf, 0x12u);
  }

  if (a4 == 1 || !self->_didHandleStartupNotificationReason)
  {
    v11 = [(ICDCloudMusicLibraryRequestHandler *)self _shouldHandleDaemonStartupOrAccountChangedNotificationWithProperties:v8];
    if (v11 == 2)
    {
      v12 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v31 = self;
        v32 = 1024;
        v33 = a4;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ - No pending changes to handle. Ignoring reason=%d", buf, 0x12u);
      }

      if (v9)
      {
        calloutQueue = self->_calloutQueue;
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10001174C;
        block[3] = &unk_1001DF5C8;
        v29 = v9;
        dispatch_async(calloutQueue, block);
        v14 = v29;
LABEL_32:

        goto LABEL_33;
      }

      goto LABEL_33;
    }
  }

  else
  {
    v11 = 0;
  }

  v15 = [(ICDCloudMusicLibraryRequestHandler *)self _canEnableCloudMusicLibraryOnPlatformsWithSideLoadedMediaContentWithProperties:v8 includeLocalContentCheck:v11 == 0];
  v16 = 0;
  if (v15 > 1)
  {
    if (v15 != 2)
    {
      if (v15 == 3)
      {
        v17 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v31 = self;
          v32 = 1024;
          v33 = 3;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ - Will schedule a retry to enable ICML (status = %d)", buf, 0x12u);
        }

        v16 = 1;
        goto LABEL_30;
      }

      goto LABEL_31;
    }

    v17 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    v21 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    if ((a4 & 0xFFFFFFFFFFFFFFFBLL) != 2)
    {
      if (v21)
      {
        *buf = 138543874;
        v31 = self;
        v32 = 1024;
        v33 = a4;
        v34 = 1024;
        v35 = 2;
        v18 = "%{public}@ - Not enabling ICML for reason = %d, status = %d";
        v19 = v17;
        v20 = 24;
        goto LABEL_28;
      }

LABEL_29:
      v16 = 0;
LABEL_30:

      goto LABEL_31;
    }

    if (v21)
    {
      *buf = 138543618;
      v31 = self;
      v32 = 1024;
      v33 = 2;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ -  enabling ICML (status = %d)", buf, 0x12u);
    }
  }

  else if (v15)
  {
    if (v15 == 1)
    {
      v17 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v31 = self;
        v32 = 1024;
        v33 = 1;
        v18 = "%{public}@ - Not enabling ICML (status = %d)";
        v19 = v17;
        v20 = 18;
LABEL_28:
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, v18, buf, v20);
        goto LABEL_29;
      }

      goto LABEL_29;
    }

LABEL_31:
    v22 = [(BaseRequestHandler *)self configuration];
    v23 = [v22 clientIdentity];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100011760;
    v24[3] = &unk_1001DA548;
    v24[4] = self;
    v26 = a4;
    v25 = v9;
    v27 = v16;
    [(ICDCloudMusicLibraryRequestHandler *)self _performInitialJaliscoImportWithClientIdentity:v23 completion:v24];

    v14 = v25;
    goto LABEL_32;
  }

  [(ICDCloudMusicLibraryRequestHandler *)self _authenticateAndStartInitialImportWithMergePreference:0 userIdentityProperties:v8 enableReason:a4 withCompletionHandler:v9];
LABEL_33:
}

- (void)_authenticateAndStartInitialImportWithMergePreference:(id)a3 userIdentityProperties:(id)a4 enableReason:(int64_t)a5 withCompletionHandler:(id)a6
{
  v9 = a6;
  v10 = a3;
  v11 = [(BaseRequestHandler *)self configuration];
  v12 = [v11 clientIdentity];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100011ABC;
  v14[3] = &unk_1001DA520;
  v15 = v9;
  v16 = a5;
  v14[4] = self;
  v13 = v9;
  [(ICDCloudMusicLibraryRequestHandler *)self _runSagaAuthenticateOperationWithClientIdentity:v12 mergePreference:v10 allowNoisyPrompt:0 cloudLibraryEnableReason:a5 completionHandler:v14];
}

- (void)_registerDeviceAndPerformInitialImportWithUserIdentityProperties:(id)a3 cloudLibraryEnableReason:(int64_t)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  if ((MSVDeviceSupportsSideLoadedMediaContent() & 1) == 0)
  {
    v12 = +[ICDeviceInfo currentDeviceInfo];
    if (([v12 isWatch] & 1) == 0)
    {

      goto LABEL_14;
    }

    v13 = +[ICNanoPairedDeviceStatusMonitor sharedMonitor];
    v14 = [v13 isMediaSyncingSupported];

    if (v14)
    {
LABEL_14:
      v15 = +[ICDServer server];
      v16 = [(BaseRequestHandler *)self configuration];
      v17 = [v15 daemonOptionsForConfiguration:v16];

      if (([v17 prohibitLibraryUpload] & 1) == 0)
      {
        v18 = [(BaseRequestHandler *)self musicLibrary];
        v19 = [v18 sagaCloudLibraryCUID];

        v20 = [(BaseRequestHandler *)self musicLibrary];
        v21 = [v20 sagaCloudLibraryTroveID];

        if ([v19 length] && objc_msgSend(v21, "length"))
        {
          v22 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v44 = self;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%{public}@ - Device is already registered with CUID and TroveID", buf, 0xCu);
          }
        }

        else
        {

          v23 = [(BaseRequestHandler *)self configuration];
          v40 = 0;
          v24 = sub_1000E54B0(v23, 0, &v40);

          if (!v24)
          {
            v35 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v44 = self;
              _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "%{public}@ - Enqueuing SagaDeauth as device registration failed.", buf, 0xCu);
            }

            v32 = [(BaseRequestHandler *)self configuration];
            v33 = [v32 clientIdentity];
            v36[0] = _NSConcreteStackBlock;
            v36[1] = 3221225472;
            v36[2] = sub_100012420;
            v36[3] = &unk_1001DA4D0;
            v36[4] = self;
            v37[1] = a4;
            v34 = v37;
            v37[0] = v9;
            [(ICDCloudMusicLibraryRequestHandler *)self _removeCloudSourcesForReason:-3 withClientIdentity:v33 byDisablingActiveLockerAccount:1 completionHandler:v36];
            goto LABEL_28;
          }
        }
      }

      sagaRequestHandler = self->_sagaRequestHandler;
      v26 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
      v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
      if (sagaRequestHandler)
      {
        if (v27)
        {
          v28 = self->_sagaRequestHandler;
          *buf = 138543618;
          v44 = self;
          v45 = 2048;
          v46 = v28;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%{public}@ - We have a valid SagaRequestHander (%p)....", buf, 0x16u);
        }
      }

      else
      {
        if (v27)
        {
          *buf = 138543362;
          v44 = self;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%{public}@ - Initializing SagaRequestHander ....", buf, 0xCu);
        }

        v29 = [SagaRequestHandler alloc];
        v26 = [(BaseRequestHandler *)self configuration];
        v30 = [(SagaRequestHandler *)v29 initWithConfiguration:v26 progressObserver:self];
        v31 = self->_sagaRequestHandler;
        self->_sagaRequestHandler = v30;
      }

      self->_havePendingSagaUpdate = 1;
      v32 = [(BaseRequestHandler *)self configuration];
      v33 = [v32 clientIdentity];
      v38[0] = _NSConcreteStackBlock;
      v38[1] = 3221225472;
      v38[2] = sub_1000122C8;
      v38[3] = &unk_1001DA430;
      v38[4] = self;
      v39[1] = a4;
      v34 = v39;
      v39[0] = v9;
      [(ICDCloudMusicLibraryRequestHandler *)self _performInitialJaliscoImportWithClientIdentity:v33 completion:v38];
LABEL_28:

      goto LABEL_29;
    }
  }

  if (([v8 isActive] & 1) != 0 || !objc_msgSend(v8, "isActiveLocker"))
  {
    if (MSVDeviceSupportsSideLoadedMediaContent() && !self->_didAdjustMergePreference)
    {
      [(ICDCloudMusicLibraryRequestHandler *)self _adjustMergePreferenceWithUserIdentityProperties:v8];
      self->_didAdjustMergePreference = 1;
    }

    goto LABEL_14;
  }

  v10 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v44 = self;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ - Locker bit set, but the account is not active. Enqueuing a SagaDeauth", buf, 0xCu);
  }

  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000121FC;
  block[3] = &unk_1001DF5A0;
  block[4] = self;
  v42 = v9;
  dispatch_async(accessQueue, block);

LABEL_29:
}

- (int64_t)_shouldHandleDaemonStartupOrAccountChangedNotificationWithProperties:(id)a3
{
  v4 = a3;
  if (self->_didHandleStartupNotificationReason)
  {
    v5 = 2;
  }

  else
  {
    self->_didHandleStartupNotificationReason = 1;
    v6 = [(BaseRequestHandler *)self userIdentity];
    v7 = [ML3MusicLibrary musicLibraryForUserAccount:v6];

    v8 = [v4 DSID];
    v9 = [v7 sagaAccountID];
    v10 = [v7 sagaLastKnownActiveLockerAccountDSID];
    v11 = [v7 sagaOnDiskDatabaseRevision];
    if (v9)
    {
      v12 = 1;
    }

    else
    {
      v12 = v8 == 0;
    }

    v13 = !v12;
    if (v9)
    {
      v14 = v8 == 0;
    }

    else
    {
      v14 = 1;
    }

    if (v14)
    {
      v15 = 0;
    }

    else
    {
      v15 = [v8 isEqualToNumber:v9] ^ 1;
    }

    v26 = v15;
    if ((v13 | v15))
    {
      v5 = 0;
    }

    else if ([(ICDCloudMusicLibraryRequestHandler *)self _wasRestoredFromCloudBackup:v4])
    {
      v5 = 1;
    }

    else
    {
      v16 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v28 = self;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ - No changes to process", buf, 0xCu);
      }

      v5 = 2;
    }

    v17 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v24 = v13;
      v18 = [v9 longLongValue];
      v25 = v7;
      v19 = v4;
      v20 = v11;
      v21 = [v8 longLongValue];
      v22 = [v10 longLongValue];
      *buf = 138545154;
      v28 = self;
      v29 = 2048;
      v30 = v18;
      v31 = 2048;
      v32 = v21;
      v33 = 2048;
      v34 = v22;
      v35 = 1024;
      v36 = v20;
      v4 = v19;
      v7 = v25;
      v37 = 1024;
      v38 = v24;
      v39 = 1024;
      v40 = v26;
      v41 = 1024;
      v42 = v5;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ - previousAccountID=%lld, activeAccountID=%lld, lastKnownActiveLockerAccountID=%lld, currentSagaDatabaseVersion=%d, accountIDWasAdded=%{BOOL}u, accountIDWasChanged=%{BOOL}u, handleReason=%d", buf, 0x42u);
    }
  }

  return v5;
}

- (void)_adjustMergePreferenceWithUserIdentityProperties:(id)a3
{
  v4 = a3;
  v5 = [(BaseRequestHandler *)self userIdentity];
  v6 = [ML3MusicLibrary musicLibraryForUserAccount:v5];

  v7 = [v4 DSID];
  v8 = [v6 sagaAccountID];
  v9 = [v6 sagaLastKnownActiveLockerAccountDSID];
  if (v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = v7 == 0;
  }

  v11 = !v10;
  if (v8)
  {
    v12 = v7 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = [v7 isEqualToNumber:v8] ^ 1;
  }

  v14 = [v6 sagaPrefersToMergeWithCloudLibrary];
  v15 = [v4 DSID];
  v16 = v15;
  if (((v11 | v13) & 1) == 0)
  {
    v29 = v15;
    if ([(ICDCloudMusicLibraryRequestHandler *)self _wasRestoredFromCloudBackup:v4])
    {
      [v6 clearSagaCloudLibraryTroveID];
      [v6 clearSagaCloudLibraryCUID];
      [v6 clearSagaClientFeaturesVersion];
      [v6 clearSagaMaxLibraryPinCount];
      [v6 setSagaLastKnownActiveLockerAccountDSID:0];
      [v6 setSagaPrefersToMergeWithCloudLibrary:0];
      v18 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v31 = self;
        v32 = 1024;
        v33 = [v6 sagaPrefersToMergeWithCloudLibrary];
        v19 = "%{public}@ - Clearing TroveID, CUID, client feature versions and setting merge preference to %{BOOL}u";
        v20 = v18;
        v21 = 18;
LABEL_25:
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, v19, buf, v21);
      }
    }

    else
    {
      v18 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v31 = self;
        v19 = "%{public}@ - Will not adjust merge preference.";
        v20 = v18;
        v21 = 12;
        goto LABEL_25;
      }
    }

    v22 = v6;
LABEL_27:

    v6 = v22;
LABEL_28:
    v16 = v29;
    goto LABEL_29;
  }

  if (!v9)
  {
    v23 = [v4 mergeToCloudLibraryPreference];
    if (v23)
    {
      v24 = v23;
      v29 = v16;
      v25 = [v23 BOOLValue];
      v26 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v31 = self;
        v32 = 1024;
        v33 = v25;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%{public}@ - Found mergePreference on the active locker account - shouldMerge=%d.", buf, 0x12u);
      }

      if (v14 == v25)
      {
        goto LABEL_28;
      }

      goto LABEL_41;
    }

    goto LABEL_35;
  }

  if (v15 == v9 || ([v15 isEqual:v9] & 1) != 0)
  {
    v17 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v31 = self;
      v32 = 1024;
      v33 = 1;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ - Active locker account is the same as previous locker account - shouldMergeWithCloudLibrary=%d", buf, 0x12u);
    }

LABEL_35:
    if (v14)
    {
      goto LABEL_29;
    }

    v29 = v16;
    v14 = 0;
    v25 = 1;
    goto LABEL_41;
  }

  v27 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v31 = self;
    v32 = 1024;
    v33 = 0;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%{public}@ - Active locker account is different from previous locker account - shouldMergeWithCloudLibrary=%d", buf, 0x12u);
  }

  if (v14)
  {
    v29 = v16;
    v25 = 0;
    v14 = 1;
LABEL_41:
    v28 = [(BaseRequestHandler *)self userIdentity];
    v22 = [ML3MusicLibrary musicLibraryForUserAccount:v28];

    [v22 setSagaPrefersToMergeWithCloudLibrary:v25];
    v18 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v31 = self;
      v32 = 1024;
      v33 = v14;
      v34 = 1024;
      v35 = v25;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ - Updating merge preference from %{BOOL}u to %{BOOL}u", buf, 0x18u);
    }

    goto LABEL_27;
  }

LABEL_29:
}

- (BOOL)_wasRestoredFromCloudBackup:(id)a3
{
  v4 = a3;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  v5 = [(BaseRequestHandler *)self userIdentity];
  v6 = [ML3MusicLibrary musicLibraryForUserAccount:v5];

  v7 = [v4 DSID];
  v8 = [v6 sagaAccountID];
  v9 = [v6 sagaOnDiskDatabaseRevision];
  v10 = objc_alloc_init(sub_1000E78D8());
  v11 = [v10 getCurrentInstallDisposition];
  v32 = v7;
  v12 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v41 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "migratorDisposition=%{public}@", buf, 0xCu);
  }

  if (!v11)
  {
    v19 = 0;
LABEL_14:
    v24 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_17;
    }

    *buf = 138543874;
    v41 = self;
    v42 = 1024;
    *v43 = v9;
    *&v43[4] = 1024;
    *&v43[6] = v19 & 1;
    v25 = "%{public}@ - currentSagaDatabaseVersion=%d, wasRestoredFromCloudBackup=%{BOOL}u";
    v26 = v24;
    v27 = 24;
LABEL_16:
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, v25, buf, v27);
    goto LABEL_17;
  }

  v13 = [(ICDCloudMusicLibraryRequestHandler *)v11 objectForKey:@"WasDeviceRestoredFromBackup"];
  v14 = [v13 BOOLValue];

  v15 = [(ICDCloudMusicLibraryRequestHandler *)v11 objectForKey:@"WasDeviceUpgraded"];
  v16 = [v15 BOOLValue];

  v17 = [(ICDCloudMusicLibraryRequestHandler *)v11 objectForKey:@"WasDeviceRestoredFromCloudBackup"];
  v18 = [v17 BOOLValue];

  v19 = v14 & v18;
  if (v9 || (v19 & 1) == 0)
  {
    goto LABEL_14;
  }

  v20 = 0;
  if (v8 && v32)
  {
    v20 = [v32 isEqualToNumber:v8];
  }

  v21 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544130;
    v41 = self;
    v42 = 1024;
    *v43 = v20;
    *&v43[4] = 1024;
    *&v43[6] = v16 & (v14 ^ 1);
    LOWORD(v44) = 1024;
    *(&v44 + 2) = v14;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ - Device was restored from cloud backup. sameAccountAsInBackup=%{BOOL}u, wasUpgraded=%{BOOL}u, wasRestored=%{BOOL}u", buf, 0x1Eu);
  }

  if (!v20)
  {
    v24 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_17;
    }

    if (v8)
    {
      v30 = [v8 longLongValue];
      if (v32)
      {
LABEL_21:
        v31 = [v32 longLongValue];
LABEL_24:
        *buf = 138543874;
        v41 = self;
        v42 = 2048;
        *v43 = v30;
        *&v43[8] = 2048;
        v44 = v31;
        v25 = "%{public}@ - Account in the backup is NOT the same as the current account (previousAccountID=%lld, activeAccountID=%lld), not upgrading iCML";
        v26 = v24;
        v27 = 32;
        goto LABEL_16;
      }
    }

    else
    {
      v30 = 0;
      if (v32)
      {
        goto LABEL_21;
      }
    }

    v31 = 0;
    goto LABEL_24;
  }

  v22 = dispatch_semaphore_create(0);
  v23 = [(BaseRequestHandler *)self configuration];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_1000137D0;
  v33[3] = &unk_1001DA4A8;
  v35 = &v36;
  v33[4] = self;
  v24 = v22;
  v34 = v24;
  sub_1000031E4(v23, v33);

  dispatch_semaphore_wait(v24, 0xFFFFFFFFFFFFFFFFLL);
LABEL_17:

  v28 = *(v37 + 24);
  _Block_object_dispose(&v36, 8);

  return v28 & 1;
}

- (int64_t)_canEnableCloudMusicLibraryOnPlatformsWithSideLoadedMediaContentWithProperties:(id)a3 includeLocalContentCheck:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    *&buf[4] = self;
    *&buf[12] = 1024;
    *&buf[14] = v4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ - Checking if ICML can be enabled. includeLocalContentCheck=%{BOOL}u", buf, 0x12u);
  }

  v8 = [v6 DSID];
  if ([v6 isActiveLocker])
  {
    v9 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v8 longLongValue];
      *buf = 138543618;
      *&buf[4] = self;
      *&buf[12] = 2048;
      *&buf[14] = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ - DSID (%lld) is already the active locker account", buf, 0x16u);
    }

    v11 = 0;
    goto LABEL_21;
  }

  if (v8 && [v8 longLongValue])
  {
    v12 = dispatch_semaphore_create(0);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v42 = sub_10000C6C0;
    v43 = sub_10000C6D0;
    v44 = 0;
    v33 = 0;
    v34 = &v33;
    v35 = 0x2020000000;
    v36 = 0;
    v13 = [(BaseRequestHandler *)self configuration];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_100013FB8;
    v29[3] = &unk_1001DA480;
    v31 = buf;
    v32 = &v33;
    v9 = v12;
    v30 = v9;
    sub_1000031E4(v13, v29);

    dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
    if (*(v34 + 24) == 1)
    {
      v14 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *v37 = 138543362;
        v38 = self;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ - Cannot enable ICML as the user manually disabled it", v37, 0xCu);
      }
    }

    else
    {
      if (*(*&buf[8] + 40))
      {
        v14 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v16 = *(*&buf[8] + 40);
          *v37 = 138543618;
          v38 = self;
          v39 = 2114;
          v40 = v16;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ - Error (%{public}@ determining if user manually disabled iCML. Will schedule a retry.", v37, 0x16u);
        }

        v11 = 3;
        goto LABEL_20;
      }

      if (!v4 || ([(BaseRequestHandler *)self configuration], v18 = objc_claimAutoreleasedReturnValue(), v19 = sub_1000033E0(v18), v18, !v19))
      {
        v23 = objc_alloc_init(sub_1000E78D8());
        v14 = [v23 getPreExistingStoreIdentifiers];
        v24 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *v37 = 138543362;
          v38 = v14;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "preExistingStoreIdentifiers=%{public}@", v37, 0xCu);
        }

        if ([v14 containsObject:v8])
        {
          v25 = sub_10010291C();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            v26 = [v8 longLongValue];
            *v37 = 138543618;
            v38 = self;
            v39 = 2048;
            v40 = v26;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%{public}@ - Can conditionally enable ICML as DSID (%lld) is a preexisting store acount", v37, 0x16u);
          }

          v11 = 2;
        }

        else
        {
          v11 = 0;
        }

        goto LABEL_20;
      }

      v20 = dispatch_semaphore_create(0);
      v21 = sub_10010291C();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *v37 = 138543362;
        v38 = self;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ - Cannot enable ICML as there are local destructive changes", v37, 0xCu);
      }

      v22 = [(BaseRequestHandler *)self configuration];
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_100014060;
      v27[3] = &unk_1001DE828;
      v14 = v20;
      v28 = v14;
      sub_1000E706C(v22, -100, v27);

      dispatch_semaphore_wait(v14, 0xFFFFFFFFFFFFFFFFLL);
    }

    v11 = 1;
LABEL_20:

    _Block_object_dispose(&v33, 8);
    _Block_object_dispose(buf, 8);

    goto LABEL_21;
  }

  v9 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v8 longLongValue];
    *buf = 138543618;
    *&buf[4] = self;
    *&buf[12] = 2048;
    *&buf[14] = v15;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ - Cannot enable ICML as the DSID (%lld) is invalid", buf, 0x16u);
  }

  v11 = 1;
LABEL_21:

  return v11;
}

- (int64_t)_getCurrentSubscriptionStatusForReason:(int64_t)a3
{
  musicSubscriptionCheckStatus = self->_musicSubscriptionCheckStatus;
  if (!musicSubscriptionCheckStatus)
  {
    [(ICDCloudMusicLibraryRequestHandler *)self _reloadSubscriptionStatusAndEnableCloudMusicLibraryWithReason:a3 completionHandler:0];
  }

  return musicSubscriptionCheckStatus;
}

- (void)_retryEnablingCloudMusicLibraryForReason:(int64_t)a3
{
  if (self->_havePendingAutoEnableICMLCheck)
  {
    v4 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v13 = self;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ - We already have a pending enable ICML operation.", buf, 0xCu);
    }
  }

  else
  {
    self->_havePendingAutoEnableICMLCheck = 1;
    autoEnableFailureCount = self->_autoEnableFailureCount;
    if (autoEnableFailureCount >= 10)
    {
      autoEnableFailureCount = 10;
    }

    v7 = (3600 * (autoEnableFailureCount ^ 2));
    v8 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v13 = self;
      v14 = 2048;
      v15 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ - Will retry enabling iCML in %f seconds.", buf, 0x16u);
    }

    v9 = dispatch_time(0x8000000000000000, (v7 * 1000000000.0));
    accessQueue = self->_accessQueue;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100014288;
    v11[3] = &unk_1001DA020;
    v11[4] = self;
    v11[5] = a3;
    dispatch_after(v9, accessQueue, v11);
  }
}

- (void)_reloadSubscriptionStatusAndEnableCloudMusicLibraryWithReason:(int64_t)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = +[ICDefaults standardDefaults];
  if ([v7 shouldTreatSubscriptionStatusAsExpired])
  {
    v8 = MSVDeviceOSIsInternalInstall();

    if (v8)
    {
      v9 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v22 = self;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ - shouldTreatSubscriptionStatusAsExpired is set. Will force subscription status to be expired", buf, 0xCu);
      }

      accessQueue = self->_accessQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000148BC;
      block[3] = &unk_1001DA070;
      v20[0] = v6;
      v20[1] = a3;
      v11 = v20;
      block[4] = self;
      v12 = v6;
      dispatch_async(accessQueue, block);
      goto LABEL_10;
    }
  }

  else
  {
  }

  v13 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    musicSubscriptionCheckStatus = self->_musicSubscriptionCheckStatus;
    *buf = 138543874;
    v22 = self;
    v23 = 1024;
    v24 = musicSubscriptionCheckStatus;
    v25 = 1024;
    v26 = a3;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ - reloading subscription status. Current status=%d, reason=%d", buf, 0x18u);
  }

  v15 = [(BaseRequestHandler *)self configuration];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100014970;
  v17[3] = &unk_1001DA458;
  v18[0] = v6;
  v18[1] = a3;
  v11 = v18;
  v17[4] = self;
  v16 = v6;
  sub_100004BFC(v15, v17);

LABEL_10:
}

- (void)_enqueueCloudUpdateLibraryOperationForReason:(int64_t)a3
{
  if (!self->_havePendingCloudUpdateLibraryCheck)
  {
    self->_havePendingCloudUpdateLibraryCheck = 1;
    v5 = +[ICURLBagProvider sharedBagProvider];
    v6 = [ICStoreRequestContext alloc];
    v7 = [(BaseRequestHandler *)self configuration];
    v8 = [v7 userIdentity];
    v9 = [v6 initWithIdentity:v8];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000159A4;
    v10[3] = &unk_1001DA408;
    v10[4] = self;
    v10[5] = a3;
    [v5 getBagForRequestContext:v9 withCompletionHandler:v10];
  }
}

- (void)_enqueueSubscriptionStatusCheckForReason:(int64_t)a3
{
  if ((a3 - 3) <= 0xFFFFFFFFFFFFFFFDLL && self->_havePendingSubscriptionStatusCheck)
  {
    v5 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
LABEL_6:

      return;
    }

    *buf = 138543362;
    v15 = self;
    v6 = "%{public}@ - We already have a pending subscription status check operation.";
LABEL_5:
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v6, buf, 0xCu);
    goto LABEL_6;
  }

  if ((a3 - 3) >= 0xFFFFFFFFFFFFFFFELL)
  {
    if (![(BaseRequestHandler *)self isActive])
    {
      v5 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_6;
      }

      *buf = 138543362;
      v15 = self;
      v6 = "%{public}@ - Not reloading subscription status as the handler is not active.";
      goto LABEL_5;
    }

    [(ICDCloudMusicLibraryRequestHandler *)self _runSubscriptionStatusCheckOperationWithReason:5 completionHandler:0];
  }

  else
  {
    self->_havePendingSubscriptionStatusCheck = 1;
    subscriptionStatusFailureCount = self->_subscriptionStatusFailureCount;
    if (subscriptionStatusFailureCount >= 10)
    {
      subscriptionStatusFailureCount = 10;
    }

    v8 = (600 * (subscriptionStatusFailureCount ^ 2));
    v9 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = self->_subscriptionStatusFailureCount;
      *buf = 138544130;
      v15 = self;
      v16 = 2048;
      v17 = v8;
      v18 = 1024;
      v19 = a3;
      v20 = 2048;
      v21 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ - Will retry getting subscription status in %f seconds for reason %d, _subscriptionStatusFailureCount=%ld", buf, 0x26u);
    }

    v11 = dispatch_time(0x8000000000000000, (v8 * 1000000000.0));
    accessQueue = self->_accessQueue;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10001602C;
    v13[3] = &unk_1001DA020;
    v13[4] = self;
    v13[5] = a3;
    dispatch_after(v11, accessQueue, v13);
  }
}

- (void)_runSubscriptionStatusCheckOperationWithReason:(int64_t)a3 completionHandler:(id)a4
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000161E0;
  v6[3] = &unk_1001DA3E0;
  v6[4] = self;
  v6[5] = a3;
  v5 = [[ICAsyncBlockOperation alloc] initWithStartHandler:v6];
  [(NSOperationQueue *)self->_retryQueue addOperation:v5];
}

- (void)_updateSagaLibraryWithClientIdentity:(id)a3 forReason:(int64_t)a4 allowNoisyAuthPrompt:(BOOL)a5 isExplicitUserAction:(BOOL)a6 reconcileLibraryPins:(BOOL)a7 completionHandler:(id)a8
{
  v14 = a3;
  v15 = a8;
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100016570;
  block[3] = &unk_1001DA3B8;
  v21 = v15;
  v22 = a4;
  block[4] = self;
  v20 = v14;
  v23 = a5;
  v24 = a6;
  v25 = a7;
  v17 = v14;
  v18 = v15;
  dispatch_async(accessQueue, block);
}

- (void)_handleMusicSubscriptionStatusDidChangeNotification:(id)a3
{
  v4 = a3;
  v5 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138543362;
    v18 = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ - Handling subscription status change notification", &v17, 0xCu);
  }

  v6 = [v4 userInfo];
  v7 = ICUserIdentityForMusicSubscriptionStatusDidChangeKey;
  v8 = [v6 objectForKeyedSubscript:ICUserIdentityForMusicSubscriptionStatusDidChangeKey];

  if (!v8)
  {
    goto LABEL_7;
  }

  v9 = [v4 userInfo];
  v10 = [v9 objectForKeyedSubscript:v7];

  v11 = [(BaseRequestHandler *)self userIdentityStore];
  v12 = [v11 DSIDForUserIdentity:v10 outError:0];

  v13 = [(BaseRequestHandler *)self userIdentityStore];
  v14 = [(BaseRequestHandler *)self userIdentity];
  v15 = [v13 DSIDForUserIdentity:v14 outError:0];

  if (v12 == v15 || ([v12 isEqual:v15] & 1) != 0)
  {

LABEL_7:
    [(ICDCloudMusicLibraryRequestHandler *)self _reloadSubscriptionStatusAndEnableCloudMusicLibraryWithReason:2 completionHandler:0];
    goto LABEL_8;
  }

  v16 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138543874;
    v18 = self;
    v19 = 2112;
    v20 = v15;
    v21 = 2112;
    v22 = v12;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ - Subscription change notification received for another account [no action to take] - handlerDSID=%@ - notificationDSID=%@", &v17, 0x20u);
  }

LABEL_8:
}

- (BOOL)_isNativeMusicAppInstalled
{
  if (MSVDeviceSupportsMultipleLibraries())
  {
    v3 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138543362;
      v7 = self;
      v4 = "%{public}@ - Ignoring native music app check on platforms that support multiple libraries";
LABEL_7:
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, v4, &v6, 0xCu);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  if (sub_100004B8C())
  {
    v3 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138543362;
      v7 = self;
      v4 = "%{public}@ - Ignoring native music app check on traditional wOS";
      goto LABEL_7;
    }

LABEL_8:

    return 1;
  }

  return ICSystemApplicationIsInstalled();
}

- (void)_resetInternalCloudLibraryState
{
  self->_musicSubscriptionCheckStatus = 1;
  self->_subscriptionStatusFailureCount = 0;
  self->_autoEnableFailureCount = 0;
  self->_sagaImportFailureCount = 0;
  self->_autoRetryCloudAuthenticateFailureCount = 0;
}

- (void)updateLibraryWithReason:(int64_t)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = [(BaseRequestHandler *)self userIdentityStore];
  v8 = [(BaseRequestHandler *)self userIdentity];
  v25 = 0;
  v9 = [v7 getPropertiesForUserIdentity:v8 error:&v25];
  v10 = v25;

  if (v9)
  {
    v11 = [v9 isActiveLocker];
    v12 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v27 = a3;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Updating Jalisco Library with reason=%d", buf, 8u);
    }

    v13 = [(BaseRequestHandler *)self configuration];
    v14 = [v13 clientIdentity];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100017168;
    v20[3] = &unk_1001DA368;
    v23 = a3;
    v15 = v21;
    v16 = v10;
    v24 = v11;
    v21[0] = v16;
    v21[1] = self;
    v22 = v6;
    [(ICDCloudMusicLibraryRequestHandler *)self updateJaliscoLibraryWithClientIdentity:v14 forReason:a3 completionHandler:v20];
  }

  else
  {
    calloutQueue = self->_calloutQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100017384;
    block[3] = &unk_1001DF5C8;
    v15 = &v19;
    v19 = v6;
    dispatch_async(calloutQueue, block);
  }
}

- (void)becomeInactiveWithDeauthentication:(BOOL)a3 completion:(id)a4
{
  v6 = a4;
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100017688;
  block[3] = &unk_1001DE1A0;
  v11 = a3;
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(accessQueue, block);
}

- (void)becomeActive
{
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100017EF8;
  block[3] = &unk_1001DF578;
  block[4] = self;
  dispatch_async(accessQueue, block);
}

- (void)environmentMonitorDidChangeNetworkReachability:(id)a3
{
  if ([a3 isRemoteServerReachable] && !self->_musicSubscriptionCheckStatus)
  {
    v4 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      musicSubscriptionCheckStatus = self->_musicSubscriptionCheckStatus;
      v6 = 138543618;
      v7 = self;
      v8 = 1024;
      v9 = musicSubscriptionCheckStatus;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ - network reachability changed, _musicSubscriptionCheckStatus = %d. Reloading subscription status", &v6, 0x12u);
    }

    [(ICDCloudMusicLibraryRequestHandler *)self _reloadSubscriptionStatusAndEnableCloudMusicLibraryWithReason:5 completionHandler:0];
  }
}

- (void)scheduleBackgroundTaskToUpdateLibraryType:(int64_t)a3
{
  v4 = a3 != 1;
  v6 = [(BaseRequestHandler *)self taskScheduler];
  v5 = [(BaseRequestHandler *)self configuration];
  [v6 scheduleBackgroundUpdateType:v4 forConfiguration:v5];
}

- (void)setUpdateProgress:(float)a3 forLibraryType:(int64_t)a4
{
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001888C;
  block[3] = &unk_1001DA318;
  block[4] = self;
  block[5] = a4;
  v6 = a3;
  dispatch_async(accessQueue, block);
}

- (void)finishedUpdateOperationForLibraryType:(int64_t)a3 withResponse:(id)a4
{
  v6 = a4;
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100018A64;
  block[3] = &unk_1001DE600;
  v10 = v6;
  v11 = a3;
  block[4] = self;
  v8 = v6;
  dispatch_async(accessQueue, block);
}

- (void)startingUpdateOperationForLibraryType:(int64_t)a3 isInitialImport:(BOOL)a4
{
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000191D4;
  block[3] = &unk_1001DA2C8;
  block[4] = self;
  block[5] = a3;
  v6 = a4;
  dispatch_async(accessQueue, block);
}

- (void)loadScreenshotInfoForSubscriptionPersistentIDs:(id)a3 clientIdentity:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  accessQueue = self->_accessQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100019444;
  v15[3] = &unk_1001DF730;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(accessQueue, v15);
}

- (void)loadArtworkInfoForSubscriptionContainerPersistentIDs:(id)a3 clientIdentity:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  accessQueue = self->_accessQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10001972C;
  v15[3] = &unk_1001DF730;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(accessQueue, v15);
}

- (void)loadArtworkInfoForSubscriptionItemPersistentIDs:(id)a3 clientIdentity:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  accessQueue = self->_accessQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100019A14;
  v15[3] = &unk_1001DF730;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(accessQueue, v15);
}

- (void)deprioritizeSubscriptionContainerArtworkForPersistentID:(int64_t)a3
{
  accessQueue = self->_accessQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100019C8C;
  v4[3] = &unk_1001DA020;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(accessQueue, v4);
}

- (void)deprioritizeSubscriptionScreenshotForPersistentID:(int64_t)a3
{
  accessQueue = self->_accessQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100019E0C;
  v4[3] = &unk_1001DA020;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(accessQueue, v4);
}

- (void)deprioritizeSubscriptionItemArtworkForPersistentID:(int64_t)a3
{
  accessQueue = self->_accessQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100019F8C;
  v4[3] = &unk_1001DA020;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(accessQueue, v4);
}

- (void)importContainerArtworkForPersistentID:(int64_t)a3 clientIdentity:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  accessQueue = self->_accessQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10001A160;
  v13[3] = &unk_1001DA188;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a3;
  v11 = v9;
  v12 = v8;
  dispatch_async(accessQueue, v13);
}

- (void)importScreenshotForPersistentID:(int64_t)a3 clientIdentity:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  accessQueue = self->_accessQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10001A428;
  v13[3] = &unk_1001DA188;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a3;
  v11 = v9;
  v12 = v8;
  dispatch_async(accessQueue, v13);
}

- (void)importItemArtworkForPersistentID:(int64_t)a3 clientIdentity:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  accessQueue = self->_accessQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10001A6F0;
  v13[3] = &unk_1001DA188;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a3;
  v11 = v9;
  v12 = v8;
  dispatch_async(accessQueue, v13);
}

- (void)hideItemsWithPurchaseHistoryIDs:(id)a3 clientIdentity:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  accessQueue = self->_accessQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10001A9D4;
  v15[3] = &unk_1001DF730;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(accessQueue, v15);
}

- (void)loadMissingArtworkWithClientIdentity:(id)a3
{
  v4 = a3;
  accessQueue = self->_accessQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001AC6C;
  v7[3] = &unk_1001DF618;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(accessQueue, v7);
}

- (void)loadBooksForStoreIDs:(id)a3 clientIdentity:(id)a4 withCompletionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  accessQueue = self->_accessQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10001AEAC;
  v15[3] = &unk_1001DF730;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(accessQueue, v15);
}

- (void)isMediaKindDisabledForJaliscoLibrary:(int64_t)a3 clientIdentity:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  accessQueue = self->_accessQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10001B178;
  v13[3] = &unk_1001DA188;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a3;
  v11 = v9;
  v12 = v8;
  dispatch_async(accessQueue, v13);
}

- (void)loadScreenshotInfoForPurchaseHistoryIDs:(id)a3 clientIdentity:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  accessQueue = self->_accessQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10001B460;
  v15[3] = &unk_1001DF730;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(accessQueue, v15);
}

- (void)loadArtworkInfoForPurchaseHistoryIDs:(id)a3 clientIdentity:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  accessQueue = self->_accessQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10001B748;
  v15[3] = &unk_1001DF730;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(accessQueue, v15);
}

- (void)setItemProperties:(id)a3 forPurchaseHistoryID:(unint64_t)a4 clientIdentity:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001BA40;
  block[3] = &unk_1001DA138;
  block[4] = self;
  v18 = v10;
  v20 = v12;
  v21 = a4;
  v19 = v11;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  dispatch_async(accessQueue, block);
}

- (void)removeLibraryWithClientIdentity:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001BD04;
  block[3] = &unk_1001DF5F0;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(accessQueue, block);
}

- (void)deprioritizeScreenshotForPurchaseHistoryID:(unint64_t)a3
{
  accessQueue = self->_accessQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001BF74;
  v4[3] = &unk_1001DA020;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(accessQueue, v4);
}

- (void)deprioritizeItemArtworkForPurchaseHistoryID:(unint64_t)a3
{
  accessQueue = self->_accessQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001C0F4;
  v4[3] = &unk_1001DA020;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(accessQueue, v4);
}

- (void)importScreenshotForPurchaseHistoryID:(unint64_t)a3 clientIdentity:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  accessQueue = self->_accessQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10001C2C8;
  v13[3] = &unk_1001DA188;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a3;
  v11 = v9;
  v12 = v8;
  dispatch_async(accessQueue, v13);
}

- (void)importItemArtworkForPurchaseHistoryID:(unint64_t)a3 clientIdentity:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  accessQueue = self->_accessQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10001C590;
  v13[3] = &unk_1001DA188;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a3;
  v11 = v9;
  v12 = v8;
  dispatch_async(accessQueue, v13);
}

- (void)prepareToDownloadAllLibraryPinnedEntities
{
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001C804;
  block[3] = &unk_1001DF578;
  block[4] = self;
  dispatch_async(accessQueue, block);
}

- (void)movePinnedAlbumWithPersistentID:(int64_t)a3 cloudAlbumID:(id)a4 toPosition:(int64_t)a5 completion:(id)a6
{
  v10 = a4;
  v11 = a6;
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001C9E4;
  block[3] = &unk_1001DA098;
  block[4] = self;
  v16 = v10;
  v18 = a3;
  v19 = a5;
  v17 = v11;
  v13 = v11;
  v14 = v10;
  dispatch_async(accessQueue, block);
}

- (void)movePinnedArtistWithPersistentID:(int64_t)a3 cloudArtistID:(id)a4 toPosition:(int64_t)a5 completion:(id)a6
{
  v10 = a4;
  v11 = a6;
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001CCBC;
  block[3] = &unk_1001DA098;
  block[4] = self;
  v16 = v10;
  v18 = a3;
  v19 = a5;
  v17 = v11;
  v13 = v11;
  v14 = v10;
  dispatch_async(accessQueue, block);
}

- (void)movePinnedEntityWithPersistentID:(int64_t)a3 cloudID:(int64_t)a4 type:(int64_t)a5 toPosition:(int64_t)a6 completion:(id)a7
{
  v12 = a7;
  accessQueue = self->_accessQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10001CF7C;
  v15[3] = &unk_1001DA250;
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v15[4] = self;
  v16 = v12;
  v14 = v12;
  dispatch_async(accessQueue, v15);
}

- (void)updatePinnedLibraryAlbumWithPersistentID:(int64_t)a3 cloudAlbumID:(id)a4 defaultAction:(int64_t)a5 completion:(id)a6
{
  v10 = a4;
  v11 = a6;
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001D258;
  block[3] = &unk_1001DA098;
  block[4] = self;
  v16 = v10;
  v18 = a3;
  v19 = a5;
  v17 = v11;
  v13 = v11;
  v14 = v10;
  dispatch_async(accessQueue, block);
}

- (void)updatePinnedLibraryArtistWithPersistentID:(int64_t)a3 cloudArtistID:(id)a4 defaultAction:(int64_t)a5 completion:(id)a6
{
  v10 = a4;
  v11 = a6;
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001D530;
  block[3] = &unk_1001DA098;
  block[4] = self;
  v16 = v10;
  v18 = a3;
  v19 = a5;
  v17 = v11;
  v13 = v11;
  v14 = v10;
  dispatch_async(accessQueue, block);
}

- (void)updatePinnedLibraryEntityWithPersistentID:(int64_t)a3 cloudID:(int64_t)a4 type:(int64_t)a5 defaultAction:(int64_t)a6 completion:(id)a7
{
  v12 = a7;
  accessQueue = self->_accessQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10001D7F0;
  v15[3] = &unk_1001DA250;
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v15[4] = self;
  v16 = v12;
  v14 = v12;
  dispatch_async(accessQueue, v15);
}

- (void)removePinnedAlbumWithPersistentID:(int64_t)a3 cloudAlbumID:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  accessQueue = self->_accessQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10001DABC;
  v13[3] = &unk_1001DA188;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a3;
  v11 = v9;
  v12 = v8;
  dispatch_async(accessQueue, v13);
}

- (void)removePinnedArtistWithPersistentID:(int64_t)a3 cloudArtistID:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  accessQueue = self->_accessQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10001DD84;
  v13[3] = &unk_1001DA188;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a3;
  v11 = v9;
  v12 = v8;
  dispatch_async(accessQueue, v13);
}

- (void)removePinnedEntityWithPersistentID:(int64_t)a3 cloudID:(int64_t)a4 type:(int64_t)a5 completion:(id)a6
{
  v10 = a6;
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001E040;
  block[3] = &unk_1001DA278;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  block[4] = self;
  v14 = v10;
  v12 = v10;
  dispatch_async(accessQueue, block);
}

- (void)pinLibraryAlbumWithPersistentID:(int64_t)a3 cloudAlbumID:(id)a4 defaultAction:(int64_t)a5 completion:(id)a6
{
  v10 = a4;
  v11 = a6;
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001E318;
  block[3] = &unk_1001DA098;
  block[4] = self;
  v16 = v10;
  v18 = a3;
  v19 = a5;
  v17 = v11;
  v13 = v11;
  v14 = v10;
  dispatch_async(accessQueue, block);
}

- (void)pinLibraryArtistWithPersistentID:(int64_t)a3 cloudArtistID:(id)a4 defaultAction:(int64_t)a5 completion:(id)a6
{
  v10 = a4;
  v11 = a6;
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001E5F0;
  block[3] = &unk_1001DA098;
  block[4] = self;
  v16 = v10;
  v18 = a3;
  v19 = a5;
  v17 = v11;
  v13 = v11;
  v14 = v10;
  dispatch_async(accessQueue, block);
}

- (void)pinLibraryEntityWithPersistentID:(int64_t)a3 cloudID:(int64_t)a4 type:(int64_t)a5 defaultAction:(int64_t)a6 completion:(id)a7
{
  v12 = a7;
  accessQueue = self->_accessQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10001E8B0;
  v15[3] = &unk_1001DA250;
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v15[4] = self;
  v16 = v12;
  v14 = v12;
  dispatch_async(accessQueue, v15);
}

- (void)resetInvitationURLForCollaborationWithPersistentID:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001EB5C;
  block[3] = &unk_1001DA070;
  v10 = v6;
  v11 = a3;
  block[4] = self;
  v8 = v6;
  dispatch_async(accessQueue, block);
}

- (void)removeCollaborators:(id)a3 fromCollaborationWithPersistentID:(int64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  accessQueue = self->_accessQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10001EE24;
  v13[3] = &unk_1001DA188;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a4;
  v11 = v9;
  v12 = v8;
  dispatch_async(accessQueue, v13);
}

- (void)respondToPendingCollaborator:(id)a3 onCollaborationWithPersistentID:(int64_t)a4 withApproval:(BOOL)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a6;
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001F0FC;
  block[3] = &unk_1001DA228;
  block[4] = self;
  v16 = v10;
  v19 = a5;
  v17 = v11;
  v18 = a4;
  v13 = v11;
  v14 = v10;
  dispatch_async(accessQueue, block);
}

- (void)joinCollaborationWithGlobalPlaylistID:(id)a3 invitationURL:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  accessQueue = self->_accessQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10001F3E4;
  v15[3] = &unk_1001DF730;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(accessQueue, v15);
}

- (void)editCollaborationWithPersistentID:(int64_t)a3 properties:(id)a4 trackEdits:(id)a5 completion:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001F6DC;
  block[3] = &unk_1001DA138;
  v20 = v12;
  v21 = a3;
  block[4] = self;
  v18 = v10;
  v19 = v11;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  dispatch_async(accessQueue, block);
}

- (void)endCollaborationWithPersistentID:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001F984;
  block[3] = &unk_1001DA070;
  v10 = v6;
  v11 = a3;
  block[4] = self;
  v8 = v6;
  dispatch_async(accessQueue, block);
}

- (void)beginCollaborationUsingPlaylistWithPersistentID:(int64_t)a3 sharingMode:(unint64_t)a4 completion:(id)a5
{
  v8 = a5;
  accessQueue = self->_accessQueue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10001FC30;
  v11[3] = &unk_1001DA200;
  v13 = a3;
  v14 = a4;
  v11[4] = self;
  v12 = v8;
  v10 = v8;
  dispatch_async(accessQueue, v11);
}

- (void)favoriteEntityWithPersistentID:(int64_t)a3 sagaID:(int64_t)a4 entityType:(int64_t)a5 time:(id)a6 completionHandler:(id)a7
{
  v12 = a6;
  v13 = a7;
  accessQueue = self->_accessQueue;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10001FF10;
  v17[3] = &unk_1001DA1D8;
  v21 = a3;
  v22 = a5;
  v17[4] = self;
  v18 = v12;
  v19 = v13;
  v20 = a4;
  v15 = v13;
  v16 = v12;
  dispatch_async(accessQueue, v17);
}

- (void)favoriteArtistWithPersistentID:(int64_t)a3 cloudLibraryID:(id)a4 time:(id)a5 completionHandler:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100020258;
  block[3] = &unk_1001DA138;
  block[4] = self;
  v18 = v10;
  v20 = v12;
  v21 = a3;
  v19 = v11;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  dispatch_async(accessQueue, block);
}

- (void)favoriteAlbumWithPersistentID:(int64_t)a3 cloudLibraryID:(id)a4 time:(id)a5 completionHandler:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100020574;
  block[3] = &unk_1001DA138;
  block[4] = self;
  v18 = v10;
  v20 = v12;
  v21 = a3;
  v19 = v11;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  dispatch_async(accessQueue, block);
}

- (void)favoritePlaylistWithPersistentID:(int64_t)a3 globalID:(id)a4 time:(id)a5 completionHandler:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100020890;
  block[3] = &unk_1001DA138;
  v20 = v12;
  v21 = a3;
  block[4] = self;
  v18 = v10;
  v19 = v11;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  dispatch_async(accessQueue, block);
}

- (void)favoriteEntityWithPersistentID:(int64_t)a3 storeID:(int64_t)a4 entityType:(int64_t)a5 time:(id)a6 completionHandler:(id)a7
{
  v12 = a6;
  v13 = a7;
  accessQueue = self->_accessQueue;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100020B94;
  v17[3] = &unk_1001DA1D8;
  v21 = a4;
  v22 = a5;
  v17[4] = self;
  v18 = v12;
  v19 = v13;
  v20 = a3;
  v15 = v13;
  v16 = v12;
  dispatch_async(accessQueue, v17);
}

- (void)loadLastKnownEnableICMLStatusWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(BaseRequestHandler *)self userIdentityStore];
  v6 = [(BaseRequestHandler *)self userIdentity];
  v26 = 0;
  v7 = [v5 getPropertiesForUserIdentity:v6 error:&v26];
  v8 = v26;

  if (v7)
  {
    v9 = [v7 cloudLibraryStateReason];
    if ([v7 isActiveLocker])
    {
      v10 = [v9 objectForKey:@"EnableCloudLibraryFailureReasonKey"];
      v11 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v28 = self;
        v29 = 2114;
        v30 = v9;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ - last known error reason enabling iCML=%{public}@", buf, 0x16u);
      }

      if (v4)
      {
        calloutQueue = self->_calloutQueue;
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1000211B8;
        block[3] = &unk_1001DF5A0;
        v25 = v4;
        v10 = v10;
        v24 = v10;
        dispatch_async(calloutQueue, block);
      }
    }

    else
    {
      v15 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v28 = self;
        v29 = 2114;
        v30 = v9;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ - locker bit is not set, not returning last known error enabling iCML. cloudLibraryStateReason=%{public}@", buf, 0x16u);
      }

      if (!v4)
      {
        goto LABEL_16;
      }

      v16 = self->_calloutQueue;
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_1000211D0;
      v20[3] = &unk_1001DF5A0;
      v22 = v4;
      v21 = v8;
      dispatch_async(v16, v20);

      v10 = v22;
    }

LABEL_16:
    goto LABEL_17;
  }

  v13 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v28 = self;
    v29 = 2114;
    v30 = v8;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ - could not load user identity properties (error=%{public}@), not returning last known error enabling iCML", buf, 0x16u);
  }

  if (v4)
  {
    v14 = self->_calloutQueue;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000211E8;
    v17[3] = &unk_1001DF5A0;
    v19 = v4;
    v18 = v8;
    dispatch_async(v14, v17);

    v9 = v19;
    goto LABEL_16;
  }

LABEL_17:
}

- (void)loadScreenshotInfoForSagaIDs:(id)a3 clientIdentity:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  accessQueue = self->_accessQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000212EC;
  v15[3] = &unk_1001DF730;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(accessQueue, v15);
}

- (void)loadArtworkInfoForContainerSagaIDs:(id)a3 clientIdentity:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  accessQueue = self->_accessQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000215D4;
  v15[3] = &unk_1001DF730;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(accessQueue, v15);
}

- (void)loadArtworkInfoForSagaIDs:(id)a3 clientIdentity:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  accessQueue = self->_accessQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000218BC;
  v15[3] = &unk_1001DF730;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(accessQueue, v15);
}

- (void)loadGeniusItemsForSagaID:(unint64_t)a3 clientIdentity:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  accessQueue = self->_accessQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100021B88;
  v13[3] = &unk_1001DA188;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a3;
  v11 = v9;
  v12 = v8;
  dispatch_async(accessQueue, v13);
}

- (void)updateSubscribedPlaylistsWithSagaIDs:(id)a3 ignoreMinRefreshInterval:(BOOL)a4 requestReason:(int64_t)a5 pinnedOnly:(BOOL)a6 clientIdentity:(id)a7 completionHandler:(id)a8
{
  v14 = a3;
  v15 = a7;
  v16 = a8;
  accessQueue = self->_accessQueue;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100021E98;
  v21[3] = &unk_1001DA1B0;
  v21[4] = self;
  v22 = v14;
  v26 = a4;
  v24 = v16;
  v25 = a5;
  v27 = a6;
  v23 = v15;
  v18 = v16;
  v19 = v15;
  v20 = v14;
  dispatch_async(accessQueue, v21);
}

- (void)updatePlaylistPlayDataWithClientIdentity:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100022164;
  block[3] = &unk_1001DF5F0;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(accessQueue, block);
}

- (void)updateItemPlayDataWithClientIdentity:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100022424;
  block[3] = &unk_1001DF5F0;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(accessQueue, block);
}

- (void)setAlbumArtistProperties:(id)a3 withArtistPersistentID:(int64_t)a4 clientIdentity:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100022714;
  block[3] = &unk_1001DA138;
  block[4] = self;
  v18 = v10;
  v20 = v12;
  v21 = a4;
  v19 = v11;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  dispatch_async(accessQueue, block);
}

- (void)setAlbumEntityProperties:(id)a3 withAlbumPersistentID:(int64_t)a4 clientIdentity:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100022A08;
  block[3] = &unk_1001DA138;
  block[4] = self;
  v18 = v10;
  v20 = v12;
  v21 = a4;
  v19 = v11;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  dispatch_async(accessQueue, block);
}

- (void)setAlbumProperties:(id)a3 forItemsWithAlbumPersistentID:(int64_t)a4 clientIdentity:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100022CFC;
  block[3] = &unk_1001DA138;
  block[4] = self;
  v18 = v10;
  v20 = v12;
  v21 = a4;
  v19 = v11;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  dispatch_async(accessQueue, block);
}

- (void)setItemProperties:(id)a3 forSagaID:(unint64_t)a4 clientIdentity:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100022FF0;
  block[3] = &unk_1001DA138;
  block[4] = self;
  v18 = v10;
  v20 = v12;
  v21 = a4;
  v19 = v11;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  dispatch_async(accessQueue, block);
}

- (void)setCloudFavoriteSongAddToLibraryBehavior:(int64_t)a3 clientIdentity:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  accessQueue = self->_accessQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000232C4;
  v13[3] = &unk_1001DA188;
  v15 = v9;
  v16 = a3;
  v13[4] = self;
  v14 = v8;
  v11 = v8;
  v12 = v9;
  dispatch_async(accessQueue, v13);
}

- (void)setCloudAddToPlaylistBehavior:(int64_t)a3 clientIdentity:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  accessQueue = self->_accessQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10002370C;
  v13[3] = &unk_1001DA188;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a3;
  v11 = v9;
  v12 = v8;
  dispatch_async(accessQueue, v13);
}

- (void)setPlaylistProperties:(id)a3 trackList:(id)a4 forPlaylistPersistentID:(int64_t)a5 clientIdentity:(id)a6 requestingBundleID:(id)a7 completionHandler:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100023A4C;
  block[3] = &unk_1001DC998;
  block[4] = self;
  v26 = v14;
  v30 = v18;
  v31 = a5;
  v27 = v15;
  v28 = v16;
  v29 = v17;
  v20 = v18;
  v21 = v17;
  v22 = v16;
  v23 = v15;
  v24 = v14;
  dispatch_async(accessQueue, block);
}

- (void)setPlaylistProperties:(id)a3 trackList:(id)a4 forPlaylistPersistentID:(int64_t)a5 clientIdentity:(id)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  accessQueue = self->_accessQueue;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100023D64;
  v21[3] = &unk_1001DA0C0;
  v21[4] = self;
  v22 = v12;
  v23 = v13;
  v24 = v14;
  v25 = v15;
  v26 = a5;
  v17 = v15;
  v18 = v14;
  v19 = v13;
  v20 = v12;
  dispatch_async(accessQueue, v21);
}

- (void)addStorePlaylistWithGlobalID:(id)a3 clientIdentity:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  accessQueue = self->_accessQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10002404C;
  v15[3] = &unk_1001DF730;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(accessQueue, v15);
}

- (void)addStoreItemWithOpaqueID:(id)a3 requestingBundleID:(id)a4 clientIdentity:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100024360;
  block[3] = &unk_1001DA160;
  block[4] = self;
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v23 = v13;
  v15 = v13;
  v16 = v12;
  v17 = v11;
  v18 = v10;
  dispatch_async(accessQueue, block);
}

- (void)addStoreItemsWithAdamIDs:(id)a3 referral:(id)a4 clientIdentity:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100024674;
  block[3] = &unk_1001DA160;
  block[4] = self;
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v23 = v13;
  v15 = v13;
  v16 = v12;
  v17 = v11;
  v18 = v10;
  dispatch_async(accessQueue, block);
}

- (void)addStoreItemWithAdamID:(int64_t)a3 referral:(id)a4 clientIdentity:(id)a5 completionHandler:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002496C;
  block[3] = &unk_1001DA138;
  v20 = v12;
  v21 = a3;
  block[4] = self;
  v18 = v10;
  v19 = v11;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  dispatch_async(accessQueue, block);
}

- (void)addItemWithSagaID:(unint64_t)a3 toPlaylistWithPersistentID:(int64_t)a4 requestingBundleID:(id)a5 clientIdentity:(id)a6 completionHandler:(id)a7
{
  v12 = a5;
  v13 = a6;
  v14 = a7;
  accessQueue = self->_accessQueue;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100024C68;
  v19[3] = &unk_1001DA110;
  v23 = a3;
  v24 = a4;
  v19[4] = self;
  v20 = v12;
  v21 = v13;
  v22 = v14;
  v16 = v14;
  v17 = v13;
  v18 = v12;
  dispatch_async(accessQueue, v19);
}

- (void)addStoreItemWithOpaqueID:(id)a3 toPlaylistWithPersistentID:(int64_t)a4 requestingBundleID:(id)a5 clientIdentity:(id)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  accessQueue = self->_accessQueue;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100024F80;
  v21[3] = &unk_1001DA0C0;
  v21[4] = self;
  v22 = v12;
  v23 = v13;
  v24 = v14;
  v25 = v15;
  v26 = a4;
  v17 = v15;
  v18 = v14;
  v19 = v13;
  v20 = v12;
  dispatch_async(accessQueue, v21);
}

- (void)addItemWithSagaID:(unint64_t)a3 toPlaylistWithPersistentID:(int64_t)a4 clientIdentity:(id)a5 completionHandler:(id)a6
{
  v10 = a5;
  v11 = a6;
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100025260;
  block[3] = &unk_1001DA098;
  v18 = a3;
  v19 = a4;
  block[4] = self;
  v16 = v10;
  v17 = v11;
  v13 = v11;
  v14 = v10;
  dispatch_async(accessQueue, block);
}

- (void)addStoreItemWithAdamID:(int64_t)a3 referral:(id)a4 toPlaylistWithPersistentID:(int64_t)a5 clientIdentity:(id)a6 completionHandler:(id)a7
{
  v12 = a4;
  v13 = a6;
  v14 = a7;
  accessQueue = self->_accessQueue;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100025558;
  v19[3] = &unk_1001DA110;
  v19[4] = self;
  v20 = v12;
  v23 = a3;
  v24 = a5;
  v21 = v13;
  v22 = v14;
  v16 = v14;
  v17 = v13;
  v18 = v12;
  dispatch_async(accessQueue, v19);
}

- (void)addGeniusPlaylistWithPersistentID:(int64_t)a3 name:(id)a4 seedItemIDs:(id)a5 itemIDs:(id)a6 clientIdentity:(id)a7 completionHandler:(id)a8
{
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002589C;
  block[3] = &unk_1001DC998;
  v30 = v18;
  v31 = a3;
  block[4] = self;
  v26 = v14;
  v27 = v15;
  v28 = v16;
  v29 = v17;
  v20 = v18;
  v21 = v17;
  v22 = v16;
  v23 = v15;
  v24 = v14;
  dispatch_async(accessQueue, block);
}

- (void)uploadArtworkForPlaylistWithPersistentID:(int64_t)a3 clientIdentity:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  accessQueue = self->_accessQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100025B6C;
  v13[3] = &unk_1001DA188;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a3;
  v11 = v9;
  v12 = v8;
  dispatch_async(accessQueue, v13);
}

- (void)removePlaylistsWithSagaIDs:(id)a3 performDeltaSync:(BOOL)a4 clientIdentity:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100025E60;
  block[3] = &unk_1001DA0E8;
  block[4] = self;
  v18 = v10;
  v21 = a4;
  v19 = v11;
  v20 = v12;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  dispatch_async(accessQueue, block);
}

- (void)removeItemsWithSagaIDs:(id)a3 clientIdentity:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  accessQueue = self->_accessQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100026148;
  v15[3] = &unk_1001DF730;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(accessQueue, v15);
}

- (void)publishPlaylistWithSagaID:(unint64_t)a3 clientIdentity:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  accessQueue = self->_accessQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100026410;
  v13[3] = &unk_1001DA188;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a3;
  v11 = v9;
  v12 = v8;
  dispatch_async(accessQueue, v13);
}

- (void)createPlaylistWithPersistentID:(int64_t)a3 properties:(id)a4 trackList:(id)a5 requestingBundleID:(id)a6 clientIdentity:(id)a7 completionHandler:(id)a8
{
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100026758;
  block[3] = &unk_1001DC998;
  v30 = v18;
  v31 = a3;
  block[4] = self;
  v26 = v14;
  v27 = v15;
  v28 = v16;
  v29 = v17;
  v20 = v18;
  v21 = v17;
  v22 = v16;
  v23 = v15;
  v24 = v14;
  dispatch_async(accessQueue, block);
}

- (void)createPlaylistWithPersistentID:(int64_t)a3 properties:(id)a4 trackList:(id)a5 clientIdentity:(id)a6 completionHandler:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  accessQueue = self->_accessQueue;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100026A74;
  v21[3] = &unk_1001DA0C0;
  v21[4] = self;
  v22 = v12;
  v23 = v13;
  v24 = v14;
  v25 = v15;
  v26 = a3;
  v17 = v15;
  v18 = v14;
  v19 = v13;
  v20 = v12;
  dispatch_async(accessQueue, v21);
}

- (void)deprioritizeContainerArtworkForSagaID:(unint64_t)a3
{
  accessQueue = self->_accessQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100026CF0;
  v4[3] = &unk_1001DA020;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(accessQueue, v4);
}

- (void)deprioritizeScreenshotForSagaID:(unint64_t)a3
{
  accessQueue = self->_accessQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100026E70;
  v4[3] = &unk_1001DA020;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(accessQueue, v4);
}

- (void)deprioritizeItemArtworkForSagaID:(unint64_t)a3
{
  accessQueue = self->_accessQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100026FF0;
  v4[3] = &unk_1001DA020;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(accessQueue, v4);
}

- (void)importContainerArtworkForSagaID:(unint64_t)a3 artworkVariantType:(int64_t)a4 clientIdentity:(id)a5 completionHandler:(id)a6
{
  v10 = a5;
  v11 = a6;
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000271D4;
  block[3] = &unk_1001DA098;
  v18 = a3;
  v19 = a4;
  block[4] = self;
  v16 = v10;
  v17 = v11;
  v13 = v11;
  v14 = v10;
  dispatch_async(accessQueue, block);
}

- (void)importContainerArtworkForSagaID:(unint64_t)a3 clientIdentity:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  accessQueue = self->_accessQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000274B0;
  v13[3] = &unk_1001DA188;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a3;
  v11 = v9;
  v12 = v8;
  dispatch_async(accessQueue, v13);
}

- (void)importScreenshotForSagaID:(unint64_t)a3 clientIdentity:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  accessQueue = self->_accessQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100027778;
  v13[3] = &unk_1001DA188;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a3;
  v11 = v9;
  v12 = v8;
  dispatch_async(accessQueue, v13);
}

- (void)importItemArtworkForSagaID:(unint64_t)a3 clientIdentity:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  accessQueue = self->_accessQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100027A40;
  v13[3] = &unk_1001DA188;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a3;
  v11 = v9;
  v12 = v8;
  dispatch_async(accessQueue, v13);
}

- (void)updateProgressForLibraryType:(int64_t)a3 completionHandler:(id)a4
{
  v6 = a4;
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100027CE8;
  block[3] = &unk_1001DA070;
  v10 = v6;
  v11 = a3;
  block[4] = self;
  v8 = v6;
  dispatch_async(accessQueue, block);
}

- (void)cancelPendingChangesForLibraryType:(int64_t)a3
{
  accessQueue = self->_accessQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000280B0;
  v4[3] = &unk_1001DA020;
  v4[4] = self;
  v4[5] = a3;
  dispatch_sync(accessQueue, v4);
}

- (void)addBackgroundOperation:(id)a3 forLibraryType:(int64_t)a4 priority:(int)a5
{
  v8 = a3;
  accessQueue = self->_accessQueue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100028190;
  v11[3] = &unk_1001D9FF8;
  v12 = v8;
  v13 = a4;
  v11[4] = self;
  v14 = a5;
  v10 = v8;
  dispatch_async(accessQueue, v11);
}

- (void)addOperation:(id)a3 forLibraryType:(int64_t)a4 priority:(int)a5
{
  v8 = a3;
  accessQueue = self->_accessQueue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100028360;
  v11[3] = &unk_1001D9FF8;
  v12 = v8;
  v13 = a4;
  v11[4] = self;
  v14 = a5;
  v10 = v8;
  dispatch_async(accessQueue, v11);
}

- (void)updateJaliscoLibraryWithClientIdentity:(id)a3 forReason:(int64_t)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  accessQueue = self->_accessQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100028460;
  v13[3] = &unk_1001DA188;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a4;
  v11 = v9;
  v12 = v8;
  dispatch_async(accessQueue, v13);
}

- (void)isUpdatingCloudLibraryWithCompletion:(id)a3
{
  v4 = a3;
  accessQueue = self->_accessQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100028948;
  v7[3] = &unk_1001DF5A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(accessQueue, v7);
}

- (BOOL)isUpdatingCloudLibrary
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100029078;
  v5[3] = &unk_1001DEF50;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)disableCloudLibraryWithClientIdentity:(id)a3 reason:(int64_t)a4 completionHandler:(id)a5
{
  v46 = a3;
  v47 = a5;
  v8 = [(BaseRequestHandler *)self userIdentityStore];
  v9 = [(BaseRequestHandler *)self userIdentity];
  v60 = 0;
  v48 = [v8 getPropertiesForUserIdentity:v9 error:&v60];
  v45 = v60;

  v10 = 0;
  if (v48)
  {
    v11 = 0;
    if (!v45)
    {
      v11 = [v48 isActiveLocker];
      v12 = [v48 DSID];

      v10 = v12 != 0;
    }
  }

  else
  {
    v11 = 0;
  }

  if ((a4 + 11) <= 4 && a4 != -8)
  {
    v69[0] = @"reason";
    v13 = [NSNumber numberWithInteger:a4];
    v69[1] = @"isActiveLocker";
    v70[0] = v13;
    v14 = [NSNumber numberWithBool:v11];
    v70[1] = v14;
    v15 = [NSDictionary dictionaryWithObjects:v70 forKeys:v69 count:2];
    v71 = v15;
    v16 = [NSArray arrayWithObjects:&v71 count:1];
    [MSVAutoBugCapture snapshotWithDomain:MSVAutoBugCaptureDomainMusicLibrary type:@"Bug" subType:@"DisableICMLWrongReason" context:@"Disable iCML invoked for the wrong reason" triggerThresholdValues:0 events:v16 completion:0];
  }

  v17 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    *&buf[4] = self;
    *&buf[12] = 1024;
    *&buf[14] = a4;
    *&buf[18] = 1024;
    *&buf[20] = v11;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ - Starting to disable cloud library for reason=%d, isActiveLocker=%{BOOL}u", buf, 0x18u);
  }

  if (v11)
  {
    if ((MSVDeviceSupportsSideLoadedMediaContent() & v10) == 1)
    {
      v59[0] = _NSConcreteStackBlock;
      v59[1] = 3221225472;
      v59[2] = sub_100029B8C;
      v59[3] = &unk_1001DEFB8;
      v59[4] = self;
      v18 = [[ICStoreRequestContext alloc] initWithBlock:v59];
      v19 = +[ICUpdateAutomaticDownloadMediaKindsRequest automaticDownloadMediaKindsForMusic];
      v20 = [[ICUpdateAutomaticDownloadMediaKindsRequest alloc] initWithRequestContext:v18 mediaKindsToAdd:0 mediaKindsToRemove:v19];
      [v20 performRequestWithCompletionHandler:&stru_1001D9F58];
    }

    v21 = [(BaseRequestHandler *)self configuration];
    v55[0] = _NSConcreteStackBlock;
    v55[1] = 3221225472;
    v55[2] = sub_100029C1C;
    v55[3] = &unk_1001DC4E8;
    v55[4] = self;
    v58 = a4;
    v56 = v46;
    v57 = v47;
    v22 = v21;
    v44 = v55;
    v23 = [v22 userIdentityStore];
    v24 = [v22 userIdentity];
    v43 = +[NSDate date];
    v68 = 0;
    v25 = [v23 getPropertiesForUserIdentity:v24 error:&v68];
    v26 = v68;
    if (v26 || !v25)
    {
      v36 = dispatch_get_global_queue(0, 0);
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_1000E7370;
      *&buf[24] = &unk_1001DF5A0;
      v74 = v44;
      v73 = v26;
      dispatch_async(v36, buf);
    }

    else
    {
      v62 = 0;
      v63 = &v62;
      v64 = 0x3032000000;
      v65 = sub_1000E5AD0;
      v66 = sub_1000E5AE0;
      v27 = [v25 cloudLibraryStateReason];
      v67 = [v27 mutableCopy];

      v28 = [v63[5] objectForKey:@"CloudLibraryStateReasonKey"];
      v29 = [v28 integerValue];
      if (v29 == -1 || v63[5] && [v28 integerValue] == a4)
      {
        v30 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          v31 = v63[5];
          *buf = 67109634;
          *&buf[4] = a4;
          *&buf[8] = 1024;
          *&buf[10] = v29 == -1;
          *&buf[14] = 2114;
          *&buf[16] = v31;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Not updating account with disable iCML reason=%d. wasManuallyDisabled=%{BOOL}u, currentReason=%{public}@", buf, 0x18u);
        }

        v32 = dispatch_get_global_queue(0, 0);
        *buf = _NSConcreteStackBlock;
        *&buf[8] = 3221225472;
        *&buf[16] = sub_1000E7638;
        *&buf[24] = &unk_1001DF5C8;
        v73 = v44;
        dispatch_async(v32, buf);
      }

      else
      {
        v61[0] = _NSConcreteStackBlock;
        v61[1] = 3221225472;
        v61[2] = sub_1000E7384;
        v61[3] = &unk_1001DDB88;
        v61[4] = &v62;
        v61[5] = a4;
        *buf = _NSConcreteStackBlock;
        *&buf[8] = 3221225472;
        *&buf[16] = sub_1000E748C;
        *&buf[24] = &unk_1001DDB60;
        v76 = &v62;
        v42 = v24;
        v73 = v42;
        v74 = v43;
        v75 = v44;
        [v23 insertPropertiesForUserIdentity:v42 andPostAccountChangeNotification:0 usingBlock:v61 completionHandler:buf];

        v32 = v74;
      }

      _Block_object_dispose(&v62, 8);
    }
  }

  else if (self->_jaliscoRequestHandler)
  {
    if (a4 == -1)
    {
      v40 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        *&buf[4] = self;
        *&buf[12] = 1024;
        *&buf[14] = -1;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "%{public}@ - Updating Jalisco library for reason=%d", buf, 0x12u);
      }

      jaliscoRequestHandler = self->_jaliscoRequestHandler;
      v53[0] = _NSConcreteStackBlock;
      v53[1] = 3221225472;
      v53[2] = sub_100029CD4;
      v53[3] = &unk_1001DFC28;
      v53[4] = self;
      v54 = v47;
      [(JaliscoRequestHandler *)jaliscoRequestHandler updateJaliscoLibraryByRemovingMediaKind:1 withClientIdentity:v46 completionHandler:v53];
    }

    else
    {
      v33 = [(BaseRequestHandler *)self musicLibrary];
      [v33 setJaliscoNeedsUpdateForTokens:1];

      v34 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        *&buf[4] = self;
        *&buf[12] = 1024;
        *&buf[14] = a4;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "%{public}@ - Updating Jalisco library for reason=%d, Setting jaliscoNeedsUpdateForTokens=YES", buf, 0x12u);
      }

      v35 = self->_jaliscoRequestHandler;
      v51[0] = _NSConcreteStackBlock;
      v51[1] = 3221225472;
      v51[2] = sub_100029D90;
      v51[3] = &unk_1001DFC28;
      v51[4] = self;
      v52 = v47;
      [(JaliscoRequestHandler *)v35 updateLibraryWithClientIdentity:v46 reason:6 completionHandler:v51];
    }
  }

  else
  {
    v37 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v38 = self->_jaliscoRequestHandler;
      *buf = 138543874;
      *&buf[4] = self;
      *&buf[12] = 1024;
      *&buf[14] = a4;
      *&buf[18] = 2048;
      *&buf[20] = v38;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "%{public}@ - Will not update Jalisco library for reason=%d _jaliscoRequestHandler=%p", buf, 0x1Cu);
    }

    if (v47)
    {
      calloutQueue = self->_calloutQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100029E4C;
      block[3] = &unk_1001DF5C8;
      v50 = v47;
      dispatch_async(calloutQueue, block);
    }
  }
}

- (void)enableCloudLibraryWithClientIdentity:(id)a3 startInitialImport:(BOOL)a4 enableCloudLibraryPolicy:(int64_t)a5 isExplicitUserAction:(BOOL)a6 completionHandler:(id)a7
{
  v8 = a6;
  v10 = a4;
  v12 = a3;
  v13 = a7;
  v14 = [ICAsyncBlockOperation alloc];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10002A2E8;
  v20[3] = &unk_1001DC7A0;
  v20[4] = self;
  v21 = v12;
  v24 = v10;
  v25 = v8;
  v22 = v13;
  v23 = a5;
  v15 = v13;
  v16 = v12;
  v17 = [v14 initWithStartHandler:v20];
  v18 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    isPendingAuthentication = self->_isPendingAuthentication;
    *buf = 138544642;
    v27 = self;
    v28 = 2114;
    v29 = v17;
    v30 = 1024;
    v31 = v10;
    v32 = 1024;
    v33 = a5;
    v34 = 1024;
    v35 = v8;
    v36 = 1024;
    v37 = isPendingAuthentication;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ - Enqueuing enableCloudLibraryOperation: %{public}@ - shouldStartInitialImport=%{BOOL}u, enableCloudLibraryPolicy=%d, isExplicitUserAction=%{BOOL}u, isPendingAuthentication=%{BOOL}u", buf, 0x2Eu);
  }

  [(NSOperationQueue *)self->_operationQueue addOperation:v17];
}

- (void)handleMusicAppInstalled
{
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002B41C;
  block[3] = &unk_1001DF578;
  block[4] = self;
  dispatch_async(accessQueue, block);
}

- (void)handleMusicAppRemovedWithCompletion:(id)a3
{
  v4 = a3;
  v5 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ - Handling music app removal", &v8, 0xCu);
  }

  v6 = [(BaseRequestHandler *)self configuration];
  v7 = [v6 clientIdentity];
  [(ICDCloudMusicLibraryRequestHandler *)self disableCloudLibraryWithClientIdentity:v7 reason:-5 completionHandler:v4];
}

- (ICDCloudMusicLibraryRequestHandler)initWithConfiguration:(id)a3
{
  v21.receiver = self;
  v21.super_class = ICDCloudMusicLibraryRequestHandler;
  v3 = [(BaseRequestHandler *)&v21 initWithConfiguration:a3];
  if (v3)
  {
    v4 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v5 = dispatch_queue_create("com.apple.itunescloudd.ICDCloudMusicLibraryRequestHandler.accessQueue", v4);
    accessQueue = v3->_accessQueue;
    v3->_accessQueue = v5;

    v7 = dispatch_queue_attr_make_with_qos_class(&_dispatch_queue_attr_concurrent, QOS_CLASS_UTILITY, 0);
    v8 = dispatch_queue_create("com.apple.itunescloudd.ICDCloudMusicLibraryRequestHandler.calloutQueue", v7);
    calloutQueue = v3->_calloutQueue;
    v3->_calloutQueue = v8;

    v3->_havePendingAutoEnableICMLCheck = 0;
    v3->_havePendingSubscriptionStatusCheck = 0;
    v3->_havePendingCloudUpdateLibraryCheck = 0;
    v3->_havePendingSagaUpdate = 0;
    v3->_didManuallyReloadCloudLibrary = 0;
    v3->_isPendingAuthentication = 0;
    v3->_didAdjustMergePreference = MSVDeviceSupportsSideLoadedMediaContent() ^ 1;
    v3->_didHandleStartupNotificationReason = MSVDeviceSupportsSideLoadedMediaContent() ^ 1;
    v3->_finishedSetup = 0;
    v3->_musicSubscriptionCheckStatus = 0;
    v10 = objc_alloc_init(NSOperationQueue);
    operationQueue = v3->_operationQueue;
    v3->_operationQueue = v10;

    [(NSOperationQueue *)v3->_operationQueue setName:@"com.apple.itunescloudd.ICDCloudMusicLibraryRequestHandler.operationQueue"];
    [(NSOperationQueue *)v3->_operationQueue setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)v3->_operationQueue setQualityOfService:17];
    [(NSOperationQueue *)v3->_operationQueue setUnderlyingQueue:v3->_accessQueue];
    v12 = objc_alloc_init(NSOperationQueue);
    retryQueue = v3->_retryQueue;
    v3->_retryQueue = v12;

    [(NSOperationQueue *)v3->_retryQueue setName:@"com.apple.itunescloudd.ICDCloudMusicLibraryRequestHandler.retryQueue"];
    [(NSOperationQueue *)v3->_retryQueue setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)v3->_retryQueue setQualityOfService:17];
    v3->_autoEnableFailureCount = 0;
    v3->_subscriptionStatusFailureCount = 0;
    v3->_autoRetryCloudAuthenticateFailureCount = 0;
    v3->_sagaImportFailureCount = 0;
    v3->_deauthOperationCount = 0;
    v14 = +[NSMutableDictionary dictionary];
    syncProgressDictionary = v3->_syncProgressDictionary;
    v3->_syncProgressDictionary = v14;

    v16 = +[ICEnvironmentMonitor sharedMonitor];
    [v16 registerObserver:v3];

    v17 = +[ICDeviceInfo currentDeviceInfo];
    v18 = [v17 isWatch];

    if (v18)
    {
      v19 = +[NSNotificationCenter defaultCenter];
      [v19 addObserver:v3 selector:"_handleUserIdentityStoreDidChangeNotification:" name:ICUserIdentityStoreDidChangeNotification object:0];
    }
  }

  return v3;
}

+ (id)handler
{
  v2 = objc_opt_new();
  v3 = [(BaseRequestHandler *)ICDCloudMusicLibraryRequestHandler handlerForConfiguration:v2];

  return v3;
}

@end