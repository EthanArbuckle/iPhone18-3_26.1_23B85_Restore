@interface ICDCloudMusicLibraryRequestHandler
+ (id)handler;
+ (id)handlers;
- (BOOL)_isNativeMusicAppInstalled;
- (BOOL)_wasRestoredFromCloudBackup:(id)backup;
- (BOOL)isUpdatingCloudLibrary;
- (BOOL)shouldIncludeMediaKindSongForJaliscoImport;
- (ICDCloudMusicLibraryRequestHandler)initWithConfiguration:(id)configuration;
- (id)_cloudSourcesToRemoveForReason:(int64_t)reason;
- (id)_prepareLibraryLoadErrorWithJaliscoError:(id)error sagaError:(id)sagaError;
- (int64_t)_canEnableCloudMusicLibraryOnPlatformsWithSideLoadedMediaContentWithProperties:(id)properties includeLocalContentCheck:(BOOL)check;
- (int64_t)_getCurrentSubscriptionStatusForReason:(int64_t)reason;
- (int64_t)_shouldHandleDaemonStartupOrAccountChangedNotificationWithProperties:(id)properties;
- (void)_adjustMergePreferenceWithUserIdentityProperties:(id)properties;
- (void)_authenticateAndStartInitialImportWithMergePreference:(id)preference userIdentityProperties:(id)properties enableReason:(int64_t)reason withCompletionHandler:(id)handler;
- (void)_enqueueCloudUpdateLibraryOperationForReason:(int64_t)reason;
- (void)_enqueueSubscriptionStatusCheckForReason:(int64_t)reason;
- (void)_handleMusicSubscriptionStatusDidChangeNotification:(id)notification;
- (void)_handleSagaAuthentication:(id)authentication finishedForReason:(int64_t)reason explicitUserAction:(BOOL)action shouldStartInitialImport:(BOOL)import completionHandler:(id)handler;
- (void)_handleUserIdentityStoreDidChangeNotification:(id)notification;
- (void)_performInitialJaliscoImportWithClientIdentity:(id)identity completion:(id)completion;
- (void)_performJaliscoImportWithClientIdentity:(id)identity byAddingMediaKind:(int64_t)kind completionHandler:(id)handler;
- (void)_postLibraryUpdateProgressChangedForLibraryType:(int64_t)type;
- (void)_registerDeviceAndPerformInitialImportWithUserIdentityProperties:(id)properties cloudLibraryEnableReason:(int64_t)reason completionHandler:(id)handler;
- (void)_reloadSubscriptionStatusAndEnableCloudMusicLibraryWithReason:(int64_t)reason completionHandler:(id)handler;
- (void)_resetInternalCloudLibraryState;
- (void)_retryEnablingCloudMusicLibraryForReason:(int64_t)reason;
- (void)_runSubscriptionStatusCheckOperationWithReason:(int64_t)reason completionHandler:(id)handler;
- (void)_tryEnablingCloudMusicLibraryForReason:(int64_t)reason completionHandler:(id)handler;
- (void)_tryEnablingICMLOnDevicesSupportingSideLoadedContentWithProperties:(id)properties reason:(int64_t)reason withCompletionHandler:(id)handler;
- (void)_updateAutomaticDownloadsPreference;
- (void)_updateSagaLibraryWithClientIdentity:(id)identity forReason:(int64_t)reason allowNoisyAuthPrompt:(BOOL)prompt isExplicitUserAction:(BOOL)action reconcileLibraryPins:(BOOL)pins completionHandler:(id)handler;
- (void)addBackgroundOperation:(id)operation forLibraryType:(int64_t)type priority:(int)priority;
- (void)addGeniusPlaylistWithPersistentID:(int64_t)d name:(id)name seedItemIDs:(id)ds itemIDs:(id)iDs clientIdentity:(id)identity completionHandler:(id)handler;
- (void)addItemWithSagaID:(unint64_t)d toPlaylistWithPersistentID:(int64_t)iD clientIdentity:(id)identity completionHandler:(id)handler;
- (void)addItemWithSagaID:(unint64_t)d toPlaylistWithPersistentID:(int64_t)iD requestingBundleID:(id)bundleID clientIdentity:(id)identity completionHandler:(id)handler;
- (void)addOperation:(id)operation forLibraryType:(int64_t)type priority:(int)priority;
- (void)addStoreItemWithAdamID:(int64_t)d referral:(id)referral clientIdentity:(id)identity completionHandler:(id)handler;
- (void)addStoreItemWithAdamID:(int64_t)d referral:(id)referral toPlaylistWithPersistentID:(int64_t)iD clientIdentity:(id)identity completionHandler:(id)handler;
- (void)addStoreItemWithOpaqueID:(id)d requestingBundleID:(id)iD clientIdentity:(id)identity completionHandler:(id)handler;
- (void)addStoreItemWithOpaqueID:(id)d toPlaylistWithPersistentID:(int64_t)iD requestingBundleID:(id)bundleID clientIdentity:(id)identity completionHandler:(id)handler;
- (void)addStoreItemsWithAdamIDs:(id)ds referral:(id)referral clientIdentity:(id)identity completionHandler:(id)handler;
- (void)addStorePlaylistWithGlobalID:(id)d clientIdentity:(id)identity completionHandler:(id)handler;
- (void)becomeActive;
- (void)becomeInactiveWithDeauthentication:(BOOL)deauthentication completion:(id)completion;
- (void)beginCollaborationUsingPlaylistWithPersistentID:(int64_t)d sharingMode:(unint64_t)mode completion:(id)completion;
- (void)cancelPendingChangesForLibraryType:(int64_t)type;
- (void)createPlaylistWithPersistentID:(int64_t)d properties:(id)properties trackList:(id)list clientIdentity:(id)identity completionHandler:(id)handler;
- (void)createPlaylistWithPersistentID:(int64_t)d properties:(id)properties trackList:(id)list requestingBundleID:(id)iD clientIdentity:(id)identity completionHandler:(id)handler;
- (void)deprioritizeContainerArtworkForSagaID:(unint64_t)d;
- (void)deprioritizeItemArtworkForPurchaseHistoryID:(unint64_t)d;
- (void)deprioritizeItemArtworkForSagaID:(unint64_t)d;
- (void)deprioritizeScreenshotForPurchaseHistoryID:(unint64_t)d;
- (void)deprioritizeScreenshotForSagaID:(unint64_t)d;
- (void)deprioritizeSubscriptionContainerArtworkForPersistentID:(int64_t)d;
- (void)deprioritizeSubscriptionItemArtworkForPersistentID:(int64_t)d;
- (void)deprioritizeSubscriptionScreenshotForPersistentID:(int64_t)d;
- (void)disableCloudLibraryWithClientIdentity:(id)identity reason:(int64_t)reason completionHandler:(id)handler;
- (void)editCollaborationWithPersistentID:(int64_t)d properties:(id)properties trackEdits:(id)edits completion:(id)completion;
- (void)enableCloudLibraryWithClientIdentity:(id)identity startInitialImport:(BOOL)import enableCloudLibraryPolicy:(int64_t)policy isExplicitUserAction:(BOOL)action completionHandler:(id)handler;
- (void)endCollaborationWithPersistentID:(int64_t)d completion:(id)completion;
- (void)environmentMonitorDidChangeNetworkReachability:(id)reachability;
- (void)favoriteAlbumWithPersistentID:(int64_t)d cloudLibraryID:(id)iD time:(id)time completionHandler:(id)handler;
- (void)favoriteArtistWithPersistentID:(int64_t)d cloudLibraryID:(id)iD time:(id)time completionHandler:(id)handler;
- (void)favoriteEntityWithPersistentID:(int64_t)d sagaID:(int64_t)iD entityType:(int64_t)type time:(id)time completionHandler:(id)handler;
- (void)favoriteEntityWithPersistentID:(int64_t)d storeID:(int64_t)iD entityType:(int64_t)type time:(id)time completionHandler:(id)handler;
- (void)favoritePlaylistWithPersistentID:(int64_t)d globalID:(id)iD time:(id)time completionHandler:(id)handler;
- (void)finishedUpdateOperationForLibraryType:(int64_t)type withResponse:(id)response;
- (void)handleMusicAppInstalled;
- (void)handleMusicAppRemovedWithCompletion:(id)completion;
- (void)hideItemsWithPurchaseHistoryIDs:(id)ds clientIdentity:(id)identity completionHandler:(id)handler;
- (void)importContainerArtworkForPersistentID:(int64_t)d clientIdentity:(id)identity completionHandler:(id)handler;
- (void)importContainerArtworkForSagaID:(unint64_t)d artworkVariantType:(int64_t)type clientIdentity:(id)identity completionHandler:(id)handler;
- (void)importContainerArtworkForSagaID:(unint64_t)d clientIdentity:(id)identity completionHandler:(id)handler;
- (void)importItemArtworkForPersistentID:(int64_t)d clientIdentity:(id)identity completionHandler:(id)handler;
- (void)importItemArtworkForPurchaseHistoryID:(unint64_t)d clientIdentity:(id)identity completionHandler:(id)handler;
- (void)importItemArtworkForSagaID:(unint64_t)d clientIdentity:(id)identity completionHandler:(id)handler;
- (void)importScreenshotForPersistentID:(int64_t)d clientIdentity:(id)identity completionHandler:(id)handler;
- (void)importScreenshotForPurchaseHistoryID:(unint64_t)d clientIdentity:(id)identity completionHandler:(id)handler;
- (void)importScreenshotForSagaID:(unint64_t)d clientIdentity:(id)identity completionHandler:(id)handler;
- (void)isMediaKindDisabledForJaliscoLibrary:(int64_t)library clientIdentity:(id)identity completion:(id)completion;
- (void)isUpdatingCloudLibraryWithCompletion:(id)completion;
- (void)joinCollaborationWithGlobalPlaylistID:(id)d invitationURL:(id)l completion:(id)completion;
- (void)loadArtworkInfoForContainerSagaIDs:(id)ds clientIdentity:(id)identity completionHandler:(id)handler;
- (void)loadArtworkInfoForPurchaseHistoryIDs:(id)ds clientIdentity:(id)identity completionHandler:(id)handler;
- (void)loadArtworkInfoForSagaIDs:(id)ds clientIdentity:(id)identity completionHandler:(id)handler;
- (void)loadArtworkInfoForSubscriptionContainerPersistentIDs:(id)ds clientIdentity:(id)identity completionHandler:(id)handler;
- (void)loadArtworkInfoForSubscriptionItemPersistentIDs:(id)ds clientIdentity:(id)identity completionHandler:(id)handler;
- (void)loadBooksForStoreIDs:(id)ds clientIdentity:(id)identity withCompletionHandler:(id)handler;
- (void)loadGeniusItemsForSagaID:(unint64_t)d clientIdentity:(id)identity completionHandler:(id)handler;
- (void)loadLastKnownEnableICMLStatusWithCompletionHandler:(id)handler;
- (void)loadMissingArtworkWithClientIdentity:(id)identity;
- (void)loadScreenshotInfoForPurchaseHistoryIDs:(id)ds clientIdentity:(id)identity completionHandler:(id)handler;
- (void)loadScreenshotInfoForSagaIDs:(id)ds clientIdentity:(id)identity completionHandler:(id)handler;
- (void)loadScreenshotInfoForSubscriptionPersistentIDs:(id)ds clientIdentity:(id)identity completionHandler:(id)handler;
- (void)movePinnedAlbumWithPersistentID:(int64_t)d cloudAlbumID:(id)iD toPosition:(int64_t)position completion:(id)completion;
- (void)movePinnedArtistWithPersistentID:(int64_t)d cloudArtistID:(id)iD toPosition:(int64_t)position completion:(id)completion;
- (void)movePinnedEntityWithPersistentID:(int64_t)d cloudID:(int64_t)iD type:(int64_t)type toPosition:(int64_t)position completion:(id)completion;
- (void)pinLibraryAlbumWithPersistentID:(int64_t)d cloudAlbumID:(id)iD defaultAction:(int64_t)action completion:(id)completion;
- (void)pinLibraryArtistWithPersistentID:(int64_t)d cloudArtistID:(id)iD defaultAction:(int64_t)action completion:(id)completion;
- (void)pinLibraryEntityWithPersistentID:(int64_t)d cloudID:(int64_t)iD type:(int64_t)type defaultAction:(int64_t)action completion:(id)completion;
- (void)prepareToDownloadAllLibraryPinnedEntities;
- (void)publishPlaylistWithSagaID:(unint64_t)d clientIdentity:(id)identity completionHandler:(id)handler;
- (void)removeCollaborators:(id)collaborators fromCollaborationWithPersistentID:(int64_t)d completion:(id)completion;
- (void)removeItemsWithSagaIDs:(id)ds clientIdentity:(id)identity completionHandler:(id)handler;
- (void)removeLibraryWithClientIdentity:(id)identity completion:(id)completion;
- (void)removePinnedAlbumWithPersistentID:(int64_t)d cloudAlbumID:(id)iD completion:(id)completion;
- (void)removePinnedArtistWithPersistentID:(int64_t)d cloudArtistID:(id)iD completion:(id)completion;
- (void)removePinnedEntityWithPersistentID:(int64_t)d cloudID:(int64_t)iD type:(int64_t)type completion:(id)completion;
- (void)removePlaylistsWithSagaIDs:(id)ds performDeltaSync:(BOOL)sync clientIdentity:(id)identity completionHandler:(id)handler;
- (void)resetInvitationURLForCollaborationWithPersistentID:(int64_t)d completion:(id)completion;
- (void)respondToPendingCollaborator:(id)collaborator onCollaborationWithPersistentID:(int64_t)d withApproval:(BOOL)approval completion:(id)completion;
- (void)scheduleBackgroundTaskToUpdateLibraryType:(int64_t)type;
- (void)setAlbumArtistProperties:(id)properties withArtistPersistentID:(int64_t)d clientIdentity:(id)identity completionHandler:(id)handler;
- (void)setAlbumEntityProperties:(id)properties withAlbumPersistentID:(int64_t)d clientIdentity:(id)identity completionHandler:(id)handler;
- (void)setAlbumProperties:(id)properties forItemsWithAlbumPersistentID:(int64_t)d clientIdentity:(id)identity completionHandler:(id)handler;
- (void)setCloudAddToPlaylistBehavior:(int64_t)behavior clientIdentity:(id)identity completionHandler:(id)handler;
- (void)setCloudFavoriteSongAddToLibraryBehavior:(int64_t)behavior clientIdentity:(id)identity completionHandler:(id)handler;
- (void)setItemProperties:(id)properties forPurchaseHistoryID:(unint64_t)d clientIdentity:(id)identity completionHandler:(id)handler;
- (void)setItemProperties:(id)properties forSagaID:(unint64_t)d clientIdentity:(id)identity completionHandler:(id)handler;
- (void)setPlaylistProperties:(id)properties trackList:(id)list forPlaylistPersistentID:(int64_t)d clientIdentity:(id)identity completionHandler:(id)handler;
- (void)setPlaylistProperties:(id)properties trackList:(id)list forPlaylistPersistentID:(int64_t)d clientIdentity:(id)identity requestingBundleID:(id)iD completionHandler:(id)handler;
- (void)setUpdateProgress:(float)progress forLibraryType:(int64_t)type;
- (void)startingUpdateOperationForLibraryType:(int64_t)type isInitialImport:(BOOL)import;
- (void)updateItemPlayDataWithClientIdentity:(id)identity completionHandler:(id)handler;
- (void)updateJaliscoLibraryWithClientIdentity:(id)identity forReason:(int64_t)reason completionHandler:(id)handler;
- (void)updateLibraryWithReason:(int64_t)reason completionHandler:(id)handler;
- (void)updatePinnedLibraryAlbumWithPersistentID:(int64_t)d cloudAlbumID:(id)iD defaultAction:(int64_t)action completion:(id)completion;
- (void)updatePinnedLibraryArtistWithPersistentID:(int64_t)d cloudArtistID:(id)iD defaultAction:(int64_t)action completion:(id)completion;
- (void)updatePinnedLibraryEntityWithPersistentID:(int64_t)d cloudID:(int64_t)iD type:(int64_t)type defaultAction:(int64_t)action completion:(id)completion;
- (void)updatePlaylistPlayDataWithClientIdentity:(id)identity completionHandler:(id)handler;
- (void)updateProgressForLibraryType:(int64_t)type completionHandler:(id)handler;
- (void)updateSubscribedPlaylistsWithSagaIDs:(id)ds ignoreMinRefreshInterval:(BOOL)interval requestReason:(int64_t)reason pinnedOnly:(BOOL)only clientIdentity:(id)identity completionHandler:(id)handler;
- (void)uploadArtworkForPlaylistWithPersistentID:(int64_t)d clientIdentity:(id)identity completionHandler:(id)handler;
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
      selfCopy2 = self;
      v26 = 1024;
      LODWORD(v27) = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ includeMediaKindSong=%{BOOL}u on non standalone wOS platform", buf, 0x12u);
    }
  }

  else
  {
    userIdentityStore = [(BaseRequestHandler *)self userIdentityStore];
    userIdentity = [(BaseRequestHandler *)self userIdentity];
    v19 = 0;
    v7 = [userIdentityStore getPropertiesForUserIdentity:userIdentity error:&v19];
    v3 = v19;

    if (v3 || !v7)
    {
      v9 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        selfCopy2 = self;
        v26 = 2114;
        v27 = v3;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}@ could not load user identity properties. error=%{public}@", buf, 0x16u);
      }

      isActiveLocker = 0;
    }

    else
    {
      isActiveLocker = [v7 isActiveLocker];
    }

    v10 = dispatch_semaphore_create(0);
    configuration = [(BaseRequestHandler *)self configuration];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100004290;
    v15[3] = &unk_1001DA2A0;
    v18 = isActiveLocker;
    v15[4] = self;
    v17 = &v20;
    v12 = v10;
    v16 = v12;
    sub_100004BFC(configuration, v15);

    dispatch_semaphore_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
  }

  v13 = *(v21 + 24);
  _Block_object_dispose(&v20, 8);
  return v13;
}

- (void)_updateAutomaticDownloadsPreference
{
  v3 = +[ICDefaults standardDefaults];
  automaticDownloadsEnabled = [v3 automaticDownloadsEnabled];

  v5 = +[ACAccountStore ic_sharedAccountStore];
  configuration = [(BaseRequestHandler *)self configuration];
  userIdentity = [configuration userIdentity];
  accountDSID = [userIdentity accountDSID];
  v9 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [accountDSID longLongValue]);
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
    ic_isAutomaticDownloadsEnabledForMediaKindMusic = [v10 ic_isAutomaticDownloadsEnabledForMediaKindMusic];
    if (!(automaticDownloadsEnabled & 1 | ((ic_isAutomaticDownloadsEnabledForMediaKindMusic & 1) == 0)))
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
      selfCopy = self;
      v18 = &v29;
      goto LABEL_12;
    }

    if (!(ic_isAutomaticDownloadsEnabledForMediaKindMusic & 1 | ((automaticDownloadsEnabled & 1) == 0)))
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
      selfCopy2 = self;
      v18 = &v24;
LABEL_12:
      [v17 performRequestWithCompletionHandler:{v18, v24, v25, v26, v27, selfCopy2, v29, v30, v31, v32, selfCopy}];
    }
  }

  else
  {
    v12 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      configuration2 = [(BaseRequestHandler *)self configuration];
      userIdentity2 = [configuration2 userIdentity];
      *buf = 138543618;
      v37 = userIdentity2;
      v38 = 2114;
      v39 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Could not get account for userIdentity=%{public}@, error=%{public}@ - not updating Automatic Downloads preference", buf, 0x16u);
    }
  }
}

- (id)_cloudSourcesToRemoveForReason:(int64_t)reason
{
  if ((reason + 11) <= 0xA)
  {
    if (((1 << (reason + 11)) & 0x76A) != 0)
    {
      [NSSet setWithObjects:&off_1001ECFA0, &off_1001ECFD0, 0, v5];
      v3 = LABEL_4:;
      goto LABEL_5;
    }

    if (reason == -11)
    {
      [NSSet setWithObjects:&off_1001ECFA0, &off_1001ECF88, &off_1001ECFE8, 0];
      goto LABEL_4;
    }
  }

  v3 = [NSSet setWithObject:&off_1001ECFA0];
LABEL_5:

  return v3;
}

- (void)_handleSagaAuthentication:(id)authentication finishedForReason:(int64_t)reason explicitUserAction:(BOOL)action shouldStartInitialImport:(BOOL)import completionHandler:(id)handler
{
  importCopy = import;
  actionCopy = action;
  authenticationCopy = authentication;
  handlerCopy = handler;
  v14 = handlerCopy;
  if (authenticationCopy)
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
    status = [authenticationCopy status];
    error = [authenticationCopy error];
    authenticateFailureCode = [authenticationCopy authenticateFailureCode];
    integerValue = [authenticateFailureCode integerValue];

    clientIdentity = [authenticationCopy clientIdentity];
    v20 = &off_10016A000;
    if (status != 1)
    {
LABEL_13:
      accessQueue = self->_accessQueue;
      v27[0] = _NSConcreteStackBlock;
      v27[1] = *(v20 + 397);
      v27[2] = sub_10000C910;
      v27[3] = &unk_1001DA6B0;
      v27[4] = self;
      v28 = clientIdentity;
      v36 = actionCopy;
      v33 = status;
      reasonCopy = reason;
      v31 = v45;
      v32 = v47;
      v35 = integerValue;
      v29 = error;
      v30 = v14;
      v24 = error;
      v25 = clientIdentity;
      dispatch_group_notify(v15, accessQueue, v27);

      _Block_object_dispose(v45, 8);
      _Block_object_dispose(v47, 8);

      goto LABEL_14;
    }

    dispatch_group_enter(v15);
    if (!reason || actionCopy)
    {
      self->_didManuallyReloadCloudLibrary = 1;
      v41[0] = _NSConcreteStackBlock;
      v41[1] = 3221225472;
      v41[2] = sub_10000C6D8;
      v41[3] = &unk_1001DA638;
      v41[4] = self;
      v43 = v47;
      reasonCopy2 = reason;
      v42 = v15;
      [(ICDCloudMusicLibraryRequestHandler *)self _performJaliscoImportWithClientIdentity:clientIdentity byAddingMediaKind:1 completionHandler:v41];
      v21 = v42;
    }

    else
    {
      if (!importCopy)
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
      reasonCopy3 = reason;
      v38 = v15;
      [(ICDCloudMusicLibraryRequestHandler *)self _performInitialJaliscoImportWithClientIdentity:clientIdentity completion:v37];
      v21 = v38;
    }

LABEL_12:
    v20 = &off_10016A000;
    goto LABEL_13;
  }

  if (handlerCopy)
  {
    calloutQueue = self->_calloutQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000C644;
    block[3] = &unk_1001DF5C8;
    v50 = handlerCopy;
    dispatch_async(calloutQueue, block);
    v15 = v50;
LABEL_14:
  }
}

- (id)_prepareLibraryLoadErrorWithJaliscoError:(id)error sagaError:(id)sagaError
{
  errorCopy = error;
  sagaErrorCopy = sagaError;
  if (errorCopy | sagaErrorCopy)
  {
    v7 = +[NSMutableDictionary dictionary];
    v8 = v7;
    if (errorCopy)
    {
      [v7 setObject:errorCopy forKey:@"ICDCloudLibraryJaliscoLibraryUpdateErrorKey"];
    }

    if (sagaErrorCopy)
    {
      [v8 setObject:sagaErrorCopy forKey:@"ICDCloudLibrarySagaLibraryUpdateErrorKey"];
    }

    v9 = [NSError errorWithDomain:ICErrorDomain code:0 userInfo:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_postLibraryUpdateProgressChangedForLibraryType:(int64_t)type
{
  if (type == 1)
  {

    notify_post("com.apple.itunescloudd.sagaUpdateInProgressChanged");
  }

  else
  {
    v9[10] = v3;
    v9[11] = v4;
    userIdentityStore = [(BaseRequestHandler *)self userIdentityStore];
    userIdentity = [(BaseRequestHandler *)self userIdentity];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10000D15C;
    v9[3] = &unk_1001DA610;
    v9[4] = self;
    v9[5] = type;
    [userIdentityStore getPropertiesForUserIdentity:userIdentity completionHandler:v9];
  }
}

- (void)_performJaliscoImportWithClientIdentity:(id)identity byAddingMediaKind:(int64_t)kind completionHandler:(id)handler
{
  handlerCopy = handler;
  jaliscoRequestHandler = self->_jaliscoRequestHandler;
  if (jaliscoRequestHandler)
  {
    [(JaliscoRequestHandler *)jaliscoRequestHandler updateJaliscoLibraryWithClientIdentity:identity byAddingMediaKind:kind completionHandler:handlerCopy];
  }

  else
  {
    v10 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = self->_jaliscoRequestHandler;
      *buf = 138543874;
      selfCopy = self;
      v17 = 1024;
      kindCopy = kind;
      v19 = 2048;
      v20 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ - not reloading media purchase history by adding kind=%d, _jaliscoRequestHandler=%p", buf, 0x1Cu);
    }

    if (handlerCopy)
    {
      calloutQueue = self->_calloutQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10000D89C;
      block[3] = &unk_1001DF5C8;
      v14 = handlerCopy;
      dispatch_async(calloutQueue, block);
    }
  }
}

- (void)_performInitialJaliscoImportWithClientIdentity:(id)identity completion:(id)completion
{
  identityCopy = identity;
  completionCopy = completion;
  musicLibrary = [(BaseRequestHandler *)self musicLibrary];
  jaliscoOnDiskDatabaseRevision = [musicLibrary jaliscoOnDiskDatabaseRevision];

  shouldIncludeMediaKindSongForJaliscoImport = [(ICDCloudMusicLibraryRequestHandler *)self shouldIncludeMediaKindSongForJaliscoImport];
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 1;
  if (sub_100004B8C() || !shouldIncludeMediaKindSongForJaliscoImport)
  {
    v15 = 0;
    *(v33 + 24) = 0;
  }

  else
  {
    musicLibrary2 = [(BaseRequestHandler *)self musicLibrary];
    jaliscoLastSupportedMediaKinds = [musicLibrary2 jaliscoLastSupportedMediaKinds];

    v13 = [jaliscoLastSupportedMediaKinds componentsSeparatedByString:{@", "}];
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
    selfCopy = self;
    v38 = 1024;
    v39 = jaliscoOnDiskDatabaseRevision;
    v40 = 1024;
    v41 = shouldIncludeMediaKindSongForJaliscoImport;
    v42 = 1024;
    v43 = v18;
    v44 = 2114;
    v45 = v15;
    v46 = 2048;
    v47 = jaliscoRequestHandler;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ - jaliscoDatabaseVersion=%d, shouldIncludeMediaKindSong=%{BOOL}u,reloadPurchaseHistoryIncludingMediaKindSong=%{BOOL}u, supportedMediaKinds=%{public}@, _jaliscoRequestHandler=%p", buf, 0x32u);
  }

  if (jaliscoOnDiskDatabaseRevision)
  {
    musicLibrary3 = [(BaseRequestHandler *)self musicLibrary];
    if ([musicLibrary3 jaliscoNeedsUpdateForTokens] & 1) != 0 || (v33[3])
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
          v23 = completionCopy;
          v30[4] = self;
          v30[5] = v23;
          [(JaliscoRequestHandler *)v21 updateJaliscoLibraryWithClientIdentity:identityCopy byAddingMediaKind:1 completionHandler:v30];
        }

        else
        {
          v22 = v29;
          v29[0] = _NSConcreteStackBlock;
          v29[1] = 3221225472;
          v29[2] = sub_10000DE00;
          v29[3] = &unk_1001DFC28;
          v24 = completionCopy;
          v29[4] = self;
          v29[5] = v24;
          [(JaliscoRequestHandler *)v21 updateLibraryWithClientIdentity:identityCopy reason:1 completionHandler:v29];
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

  if (completionCopy)
  {
    calloutQueue = self->_calloutQueue;
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_10000DEC4;
    v27[3] = &unk_1001DF5C8;
    v25 = &v28;
    v28 = completionCopy;
    dispatch_async(calloutQueue, v27);
LABEL_20:
  }

  _Block_object_dispose(&v32, 8);
}

- (void)_handleUserIdentityStoreDidChangeNotification:(id)notification
{
  v4 = +[ICNanoPairedDeviceStatusMonitor sharedMonitor];
  isMediaSyncingSupported = [v4 isMediaSyncingSupported];

  if (isMediaSyncingSupported)
  {
    userIdentityStore = [(BaseRequestHandler *)self userIdentityStore];
    userIdentity = [(BaseRequestHandler *)self userIdentity];
    v14 = 0;
    v8 = [userIdentityStore getPropertiesForUserIdentity:userIdentity error:&v14];
    v9 = v14;

    if (!v9 && v8)
    {
      isActiveLocker = [v8 isActiveLocker];
      accessQueue = self->_accessQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10000E0B0;
      block[3] = &unk_1001DE650;
      v13 = isActiveLocker;
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
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ - ignoring store did change notification", buf, 0xCu);
    }
  }
}

- (void)_tryEnablingCloudMusicLibraryForReason:(int64_t)reason completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = [ICAsyncBlockOperation alloc];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000F674;
  v10[3] = &unk_1001DA598;
  v11 = handlerCopy;
  reasonCopy = reason;
  v10[4] = self;
  v8 = handlerCopy;
  v9 = [v7 initWithStartHandler:v10];
  [(NSOperationQueue *)self->_operationQueue addOperation:v9];
}

- (void)_tryEnablingICMLOnDevicesSupportingSideLoadedContentWithProperties:(id)properties reason:(int64_t)reason withCompletionHandler:(id)handler
{
  propertiesCopy = properties;
  handlerCopy = handler;
  v10 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy6 = self;
    v32 = 1024;
    reasonCopy3 = reason;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ - checking to see if iCML can be enabled for reason=%d", buf, 0x12u);
  }

  if (reason == 1 || !self->_didHandleStartupNotificationReason)
  {
    v11 = [(ICDCloudMusicLibraryRequestHandler *)self _shouldHandleDaemonStartupOrAccountChangedNotificationWithProperties:propertiesCopy];
    if (v11 == 2)
    {
      v12 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        selfCopy6 = self;
        v32 = 1024;
        reasonCopy3 = reason;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ - No pending changes to handle. Ignoring reason=%d", buf, 0x12u);
      }

      if (handlerCopy)
      {
        calloutQueue = self->_calloutQueue;
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10001174C;
        block[3] = &unk_1001DF5C8;
        v29 = handlerCopy;
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

  v15 = [(ICDCloudMusicLibraryRequestHandler *)self _canEnableCloudMusicLibraryOnPlatformsWithSideLoadedMediaContentWithProperties:propertiesCopy includeLocalContentCheck:v11 == 0];
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
          selfCopy6 = self;
          v32 = 1024;
          reasonCopy3 = 3;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ - Will schedule a retry to enable ICML (status = %d)", buf, 0x12u);
        }

        v16 = 1;
        goto LABEL_30;
      }

      goto LABEL_31;
    }

    v17 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    v21 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    if ((reason & 0xFFFFFFFFFFFFFFFBLL) != 2)
    {
      if (v21)
      {
        *buf = 138543874;
        selfCopy6 = self;
        v32 = 1024;
        reasonCopy3 = reason;
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
      selfCopy6 = self;
      v32 = 1024;
      reasonCopy3 = 2;
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
        selfCopy6 = self;
        v32 = 1024;
        reasonCopy3 = 1;
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
    configuration = [(BaseRequestHandler *)self configuration];
    clientIdentity = [configuration clientIdentity];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100011760;
    v24[3] = &unk_1001DA548;
    v24[4] = self;
    reasonCopy4 = reason;
    v25 = handlerCopy;
    v27 = v16;
    [(ICDCloudMusicLibraryRequestHandler *)self _performInitialJaliscoImportWithClientIdentity:clientIdentity completion:v24];

    v14 = v25;
    goto LABEL_32;
  }

  [(ICDCloudMusicLibraryRequestHandler *)self _authenticateAndStartInitialImportWithMergePreference:0 userIdentityProperties:propertiesCopy enableReason:reason withCompletionHandler:handlerCopy];
LABEL_33:
}

- (void)_authenticateAndStartInitialImportWithMergePreference:(id)preference userIdentityProperties:(id)properties enableReason:(int64_t)reason withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  preferenceCopy = preference;
  configuration = [(BaseRequestHandler *)self configuration];
  clientIdentity = [configuration clientIdentity];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100011ABC;
  v14[3] = &unk_1001DA520;
  v15 = handlerCopy;
  reasonCopy = reason;
  v14[4] = self;
  v13 = handlerCopy;
  [(ICDCloudMusicLibraryRequestHandler *)self _runSagaAuthenticateOperationWithClientIdentity:clientIdentity mergePreference:preferenceCopy allowNoisyPrompt:0 cloudLibraryEnableReason:reason completionHandler:v14];
}

- (void)_registerDeviceAndPerformInitialImportWithUserIdentityProperties:(id)properties cloudLibraryEnableReason:(int64_t)reason completionHandler:(id)handler
{
  propertiesCopy = properties;
  handlerCopy = handler;
  if ((MSVDeviceSupportsSideLoadedMediaContent() & 1) == 0)
  {
    v12 = +[ICDeviceInfo currentDeviceInfo];
    if (([v12 isWatch] & 1) == 0)
    {

      goto LABEL_14;
    }

    v13 = +[ICNanoPairedDeviceStatusMonitor sharedMonitor];
    isMediaSyncingSupported = [v13 isMediaSyncingSupported];

    if (isMediaSyncingSupported)
    {
LABEL_14:
      v15 = +[ICDServer server];
      configuration = [(BaseRequestHandler *)self configuration];
      v17 = [v15 daemonOptionsForConfiguration:configuration];

      if (([v17 prohibitLibraryUpload] & 1) == 0)
      {
        musicLibrary = [(BaseRequestHandler *)self musicLibrary];
        sagaCloudLibraryCUID = [musicLibrary sagaCloudLibraryCUID];

        musicLibrary2 = [(BaseRequestHandler *)self musicLibrary];
        sagaCloudLibraryTroveID = [musicLibrary2 sagaCloudLibraryTroveID];

        if ([sagaCloudLibraryCUID length] && objc_msgSend(sagaCloudLibraryTroveID, "length"))
        {
          v22 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            selfCopy5 = self;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%{public}@ - Device is already registered with CUID and TroveID", buf, 0xCu);
          }
        }

        else
        {

          configuration2 = [(BaseRequestHandler *)self configuration];
          v40 = 0;
          v24 = sub_1000E54B0(configuration2, 0, &v40);

          if (!v24)
          {
            v35 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              selfCopy5 = self;
              _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "%{public}@ - Enqueuing SagaDeauth as device registration failed.", buf, 0xCu);
            }

            configuration3 = [(BaseRequestHandler *)self configuration];
            clientIdentity = [configuration3 clientIdentity];
            v36[0] = _NSConcreteStackBlock;
            v36[1] = 3221225472;
            v36[2] = sub_100012420;
            v36[3] = &unk_1001DA4D0;
            v36[4] = self;
            v37[1] = reason;
            v34 = v37;
            v37[0] = handlerCopy;
            [(ICDCloudMusicLibraryRequestHandler *)self _removeCloudSourcesForReason:-3 withClientIdentity:clientIdentity byDisablingActiveLockerAccount:1 completionHandler:v36];
            goto LABEL_28;
          }
        }
      }

      sagaRequestHandler = self->_sagaRequestHandler;
      configuration4 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
      v27 = os_log_type_enabled(configuration4, OS_LOG_TYPE_DEFAULT);
      if (sagaRequestHandler)
      {
        if (v27)
        {
          v28 = self->_sagaRequestHandler;
          *buf = 138543618;
          selfCopy5 = self;
          v45 = 2048;
          v46 = v28;
          _os_log_impl(&_mh_execute_header, configuration4, OS_LOG_TYPE_DEFAULT, "%{public}@ - We have a valid SagaRequestHander (%p)....", buf, 0x16u);
        }
      }

      else
      {
        if (v27)
        {
          *buf = 138543362;
          selfCopy5 = self;
          _os_log_impl(&_mh_execute_header, configuration4, OS_LOG_TYPE_DEFAULT, "%{public}@ - Initializing SagaRequestHander ....", buf, 0xCu);
        }

        v29 = [SagaRequestHandler alloc];
        configuration4 = [(BaseRequestHandler *)self configuration];
        v30 = [(SagaRequestHandler *)v29 initWithConfiguration:configuration4 progressObserver:self];
        v31 = self->_sagaRequestHandler;
        self->_sagaRequestHandler = v30;
      }

      self->_havePendingSagaUpdate = 1;
      configuration3 = [(BaseRequestHandler *)self configuration];
      clientIdentity = [configuration3 clientIdentity];
      v38[0] = _NSConcreteStackBlock;
      v38[1] = 3221225472;
      v38[2] = sub_1000122C8;
      v38[3] = &unk_1001DA430;
      v38[4] = self;
      v39[1] = reason;
      v34 = v39;
      v39[0] = handlerCopy;
      [(ICDCloudMusicLibraryRequestHandler *)self _performInitialJaliscoImportWithClientIdentity:clientIdentity completion:v38];
LABEL_28:

      goto LABEL_29;
    }
  }

  if (([propertiesCopy isActive] & 1) != 0 || !objc_msgSend(propertiesCopy, "isActiveLocker"))
  {
    if (MSVDeviceSupportsSideLoadedMediaContent() && !self->_didAdjustMergePreference)
    {
      [(ICDCloudMusicLibraryRequestHandler *)self _adjustMergePreferenceWithUserIdentityProperties:propertiesCopy];
      self->_didAdjustMergePreference = 1;
    }

    goto LABEL_14;
  }

  v10 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy5 = self;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ - Locker bit set, but the account is not active. Enqueuing a SagaDeauth", buf, 0xCu);
  }

  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000121FC;
  block[3] = &unk_1001DF5A0;
  block[4] = self;
  v42 = handlerCopy;
  dispatch_async(accessQueue, block);

LABEL_29:
}

- (int64_t)_shouldHandleDaemonStartupOrAccountChangedNotificationWithProperties:(id)properties
{
  propertiesCopy = properties;
  if (self->_didHandleStartupNotificationReason)
  {
    v5 = 2;
  }

  else
  {
    self->_didHandleStartupNotificationReason = 1;
    userIdentity = [(BaseRequestHandler *)self userIdentity];
    v7 = [ML3MusicLibrary musicLibraryForUserAccount:userIdentity];

    dSID = [propertiesCopy DSID];
    sagaAccountID = [v7 sagaAccountID];
    sagaLastKnownActiveLockerAccountDSID = [v7 sagaLastKnownActiveLockerAccountDSID];
    sagaOnDiskDatabaseRevision = [v7 sagaOnDiskDatabaseRevision];
    if (sagaAccountID)
    {
      v12 = 1;
    }

    else
    {
      v12 = dSID == 0;
    }

    v13 = !v12;
    if (sagaAccountID)
    {
      v14 = dSID == 0;
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
      v15 = [dSID isEqualToNumber:sagaAccountID] ^ 1;
    }

    v26 = v15;
    if ((v13 | v15))
    {
      v5 = 0;
    }

    else if ([(ICDCloudMusicLibraryRequestHandler *)self _wasRestoredFromCloudBackup:propertiesCopy])
    {
      v5 = 1;
    }

    else
    {
      v16 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        selfCopy2 = self;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ - No changes to process", buf, 0xCu);
      }

      v5 = 2;
    }

    v17 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v24 = v13;
      longLongValue = [sagaAccountID longLongValue];
      v25 = v7;
      v19 = propertiesCopy;
      v20 = sagaOnDiskDatabaseRevision;
      longLongValue2 = [dSID longLongValue];
      longLongValue3 = [sagaLastKnownActiveLockerAccountDSID longLongValue];
      *buf = 138545154;
      selfCopy2 = self;
      v29 = 2048;
      v30 = longLongValue;
      v31 = 2048;
      v32 = longLongValue2;
      v33 = 2048;
      v34 = longLongValue3;
      v35 = 1024;
      v36 = v20;
      propertiesCopy = v19;
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

- (void)_adjustMergePreferenceWithUserIdentityProperties:(id)properties
{
  propertiesCopy = properties;
  userIdentity = [(BaseRequestHandler *)self userIdentity];
  v6 = [ML3MusicLibrary musicLibraryForUserAccount:userIdentity];

  dSID = [propertiesCopy DSID];
  sagaAccountID = [v6 sagaAccountID];
  sagaLastKnownActiveLockerAccountDSID = [v6 sagaLastKnownActiveLockerAccountDSID];
  if (sagaAccountID)
  {
    v10 = 1;
  }

  else
  {
    v10 = dSID == 0;
  }

  v11 = !v10;
  if (sagaAccountID)
  {
    v12 = dSID == 0;
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
    v13 = [dSID isEqualToNumber:sagaAccountID] ^ 1;
  }

  sagaPrefersToMergeWithCloudLibrary = [v6 sagaPrefersToMergeWithCloudLibrary];
  dSID2 = [propertiesCopy DSID];
  v16 = dSID2;
  if (((v11 | v13) & 1) == 0)
  {
    v29 = dSID2;
    if ([(ICDCloudMusicLibraryRequestHandler *)self _wasRestoredFromCloudBackup:propertiesCopy])
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
        selfCopy6 = self;
        v32 = 1024;
        sagaPrefersToMergeWithCloudLibrary2 = [v6 sagaPrefersToMergeWithCloudLibrary];
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
        selfCopy6 = self;
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

  if (!sagaLastKnownActiveLockerAccountDSID)
  {
    mergeToCloudLibraryPreference = [propertiesCopy mergeToCloudLibraryPreference];
    if (mergeToCloudLibraryPreference)
    {
      v24 = mergeToCloudLibraryPreference;
      v29 = v16;
      bOOLValue = [mergeToCloudLibraryPreference BOOLValue];
      v26 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        selfCopy6 = self;
        v32 = 1024;
        sagaPrefersToMergeWithCloudLibrary2 = bOOLValue;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%{public}@ - Found mergePreference on the active locker account - shouldMerge=%d.", buf, 0x12u);
      }

      if (sagaPrefersToMergeWithCloudLibrary == bOOLValue)
      {
        goto LABEL_28;
      }

      goto LABEL_41;
    }

    goto LABEL_35;
  }

  if (dSID2 == sagaLastKnownActiveLockerAccountDSID || ([dSID2 isEqual:sagaLastKnownActiveLockerAccountDSID] & 1) != 0)
  {
    v17 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy6 = self;
      v32 = 1024;
      sagaPrefersToMergeWithCloudLibrary2 = 1;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ - Active locker account is the same as previous locker account - shouldMergeWithCloudLibrary=%d", buf, 0x12u);
    }

LABEL_35:
    if (sagaPrefersToMergeWithCloudLibrary)
    {
      goto LABEL_29;
    }

    v29 = v16;
    sagaPrefersToMergeWithCloudLibrary = 0;
    bOOLValue = 1;
    goto LABEL_41;
  }

  v27 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy6 = self;
    v32 = 1024;
    sagaPrefersToMergeWithCloudLibrary2 = 0;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%{public}@ - Active locker account is different from previous locker account - shouldMergeWithCloudLibrary=%d", buf, 0x12u);
  }

  if (sagaPrefersToMergeWithCloudLibrary)
  {
    v29 = v16;
    bOOLValue = 0;
    sagaPrefersToMergeWithCloudLibrary = 1;
LABEL_41:
    userIdentity2 = [(BaseRequestHandler *)self userIdentity];
    v22 = [ML3MusicLibrary musicLibraryForUserAccount:userIdentity2];

    [v22 setSagaPrefersToMergeWithCloudLibrary:bOOLValue];
    v18 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      selfCopy6 = self;
      v32 = 1024;
      sagaPrefersToMergeWithCloudLibrary2 = sagaPrefersToMergeWithCloudLibrary;
      v34 = 1024;
      v35 = bOOLValue;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ - Updating merge preference from %{BOOL}u to %{BOOL}u", buf, 0x18u);
    }

    goto LABEL_27;
  }

LABEL_29:
}

- (BOOL)_wasRestoredFromCloudBackup:(id)backup
{
  backupCopy = backup;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  userIdentity = [(BaseRequestHandler *)self userIdentity];
  v6 = [ML3MusicLibrary musicLibraryForUserAccount:userIdentity];

  dSID = [backupCopy DSID];
  sagaAccountID = [v6 sagaAccountID];
  sagaOnDiskDatabaseRevision = [v6 sagaOnDiskDatabaseRevision];
  v10 = objc_alloc_init(sub_1000E78D8());
  getCurrentInstallDisposition = [v10 getCurrentInstallDisposition];
  v32 = dSID;
  v12 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy3 = getCurrentInstallDisposition;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "migratorDisposition=%{public}@", buf, 0xCu);
  }

  if (!getCurrentInstallDisposition)
  {
    v19 = 0;
LABEL_14:
    v24 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_17;
    }

    *buf = 138543874;
    selfCopy3 = self;
    v42 = 1024;
    *v43 = sagaOnDiskDatabaseRevision;
    *&v43[4] = 1024;
    *&v43[6] = v19 & 1;
    v25 = "%{public}@ - currentSagaDatabaseVersion=%d, wasRestoredFromCloudBackup=%{BOOL}u";
    v26 = v24;
    v27 = 24;
LABEL_16:
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, v25, buf, v27);
    goto LABEL_17;
  }

  v13 = [(ICDCloudMusicLibraryRequestHandler *)getCurrentInstallDisposition objectForKey:@"WasDeviceRestoredFromBackup"];
  bOOLValue = [v13 BOOLValue];

  v15 = [(ICDCloudMusicLibraryRequestHandler *)getCurrentInstallDisposition objectForKey:@"WasDeviceUpgraded"];
  bOOLValue2 = [v15 BOOLValue];

  v17 = [(ICDCloudMusicLibraryRequestHandler *)getCurrentInstallDisposition objectForKey:@"WasDeviceRestoredFromCloudBackup"];
  bOOLValue3 = [v17 BOOLValue];

  v19 = bOOLValue & bOOLValue3;
  if (sagaOnDiskDatabaseRevision || (v19 & 1) == 0)
  {
    goto LABEL_14;
  }

  v20 = 0;
  if (sagaAccountID && v32)
  {
    v20 = [v32 isEqualToNumber:sagaAccountID];
  }

  v21 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544130;
    selfCopy3 = self;
    v42 = 1024;
    *v43 = v20;
    *&v43[4] = 1024;
    *&v43[6] = bOOLValue2 & (bOOLValue ^ 1);
    LOWORD(v44) = 1024;
    *(&v44 + 2) = bOOLValue;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ - Device was restored from cloud backup. sameAccountAsInBackup=%{BOOL}u, wasUpgraded=%{BOOL}u, wasRestored=%{BOOL}u", buf, 0x1Eu);
  }

  if (!v20)
  {
    v24 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_17;
    }

    if (sagaAccountID)
    {
      longLongValue = [sagaAccountID longLongValue];
      if (v32)
      {
LABEL_21:
        longLongValue2 = [v32 longLongValue];
LABEL_24:
        *buf = 138543874;
        selfCopy3 = self;
        v42 = 2048;
        *v43 = longLongValue;
        *&v43[8] = 2048;
        v44 = longLongValue2;
        v25 = "%{public}@ - Account in the backup is NOT the same as the current account (previousAccountID=%lld, activeAccountID=%lld), not upgrading iCML";
        v26 = v24;
        v27 = 32;
        goto LABEL_16;
      }
    }

    else
    {
      longLongValue = 0;
      if (v32)
      {
        goto LABEL_21;
      }
    }

    longLongValue2 = 0;
    goto LABEL_24;
  }

  v22 = dispatch_semaphore_create(0);
  configuration = [(BaseRequestHandler *)self configuration];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_1000137D0;
  v33[3] = &unk_1001DA4A8;
  v35 = &v36;
  v33[4] = self;
  v24 = v22;
  v34 = v24;
  sub_1000031E4(configuration, v33);

  dispatch_semaphore_wait(v24, 0xFFFFFFFFFFFFFFFFLL);
LABEL_17:

  v28 = *(v37 + 24);
  _Block_object_dispose(&v36, 8);

  return v28 & 1;
}

- (int64_t)_canEnableCloudMusicLibraryOnPlatformsWithSideLoadedMediaContentWithProperties:(id)properties includeLocalContentCheck:(BOOL)check
{
  checkCopy = check;
  propertiesCopy = properties;
  v7 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    *&buf[4] = self;
    *&buf[12] = 1024;
    *&buf[14] = checkCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ - Checking if ICML can be enabled. includeLocalContentCheck=%{BOOL}u", buf, 0x12u);
  }

  dSID = [propertiesCopy DSID];
  if ([propertiesCopy isActiveLocker])
  {
    v9 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      longLongValue = [dSID longLongValue];
      *buf = 138543618;
      *&buf[4] = self;
      *&buf[12] = 2048;
      *&buf[14] = longLongValue;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ - DSID (%lld) is already the active locker account", buf, 0x16u);
    }

    v11 = 0;
    goto LABEL_21;
  }

  if (dSID && [dSID longLongValue])
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
    configuration = [(BaseRequestHandler *)self configuration];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_100013FB8;
    v29[3] = &unk_1001DA480;
    v31 = buf;
    v32 = &v33;
    v9 = v12;
    v30 = v9;
    sub_1000031E4(configuration, v29);

    dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
    if (*(v34 + 24) == 1)
    {
      getPreExistingStoreIdentifiers = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
      if (os_log_type_enabled(getPreExistingStoreIdentifiers, OS_LOG_TYPE_DEFAULT))
      {
        *v37 = 138543362;
        selfCopy4 = self;
        _os_log_impl(&_mh_execute_header, getPreExistingStoreIdentifiers, OS_LOG_TYPE_DEFAULT, "%{public}@ - Cannot enable ICML as the user manually disabled it", v37, 0xCu);
      }
    }

    else
    {
      if (*(*&buf[8] + 40))
      {
        getPreExistingStoreIdentifiers = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
        if (os_log_type_enabled(getPreExistingStoreIdentifiers, OS_LOG_TYPE_DEFAULT))
        {
          v16 = *(*&buf[8] + 40);
          *v37 = 138543618;
          selfCopy4 = self;
          v39 = 2114;
          v40 = v16;
          _os_log_impl(&_mh_execute_header, getPreExistingStoreIdentifiers, OS_LOG_TYPE_DEFAULT, "%{public}@ - Error (%{public}@ determining if user manually disabled iCML. Will schedule a retry.", v37, 0x16u);
        }

        v11 = 3;
        goto LABEL_20;
      }

      if (!checkCopy || ([(BaseRequestHandler *)self configuration], v18 = objc_claimAutoreleasedReturnValue(), v19 = sub_1000033E0(v18), v18, !v19))
      {
        v23 = objc_alloc_init(sub_1000E78D8());
        getPreExistingStoreIdentifiers = [v23 getPreExistingStoreIdentifiers];
        v24 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *v37 = 138543362;
          selfCopy4 = getPreExistingStoreIdentifiers;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "preExistingStoreIdentifiers=%{public}@", v37, 0xCu);
        }

        if ([getPreExistingStoreIdentifiers containsObject:dSID])
        {
          v25 = sub_10010291C();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            longLongValue2 = [dSID longLongValue];
            *v37 = 138543618;
            selfCopy4 = self;
            v39 = 2048;
            v40 = longLongValue2;
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
        selfCopy4 = self;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ - Cannot enable ICML as there are local destructive changes", v37, 0xCu);
      }

      configuration2 = [(BaseRequestHandler *)self configuration];
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_100014060;
      v27[3] = &unk_1001DE828;
      getPreExistingStoreIdentifiers = v20;
      v28 = getPreExistingStoreIdentifiers;
      sub_1000E706C(configuration2, -100, v27);

      dispatch_semaphore_wait(getPreExistingStoreIdentifiers, 0xFFFFFFFFFFFFFFFFLL);
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
    longLongValue3 = [dSID longLongValue];
    *buf = 138543618;
    *&buf[4] = self;
    *&buf[12] = 2048;
    *&buf[14] = longLongValue3;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ - Cannot enable ICML as the DSID (%lld) is invalid", buf, 0x16u);
  }

  v11 = 1;
LABEL_21:

  return v11;
}

- (int64_t)_getCurrentSubscriptionStatusForReason:(int64_t)reason
{
  musicSubscriptionCheckStatus = self->_musicSubscriptionCheckStatus;
  if (!musicSubscriptionCheckStatus)
  {
    [(ICDCloudMusicLibraryRequestHandler *)self _reloadSubscriptionStatusAndEnableCloudMusicLibraryWithReason:reason completionHandler:0];
  }

  return musicSubscriptionCheckStatus;
}

- (void)_retryEnablingCloudMusicLibraryForReason:(int64_t)reason
{
  if (self->_havePendingAutoEnableICMLCheck)
  {
    v4 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy2 = self;
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
      selfCopy2 = self;
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
    v11[5] = reason;
    dispatch_after(v9, accessQueue, v11);
  }
}

- (void)_reloadSubscriptionStatusAndEnableCloudMusicLibraryWithReason:(int64_t)reason completionHandler:(id)handler
{
  handlerCopy = handler;
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
        selfCopy2 = self;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ - shouldTreatSubscriptionStatusAsExpired is set. Will force subscription status to be expired", buf, 0xCu);
      }

      accessQueue = self->_accessQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000148BC;
      block[3] = &unk_1001DA070;
      v20[0] = handlerCopy;
      v20[1] = reason;
      v11 = v20;
      block[4] = self;
      v12 = handlerCopy;
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
    selfCopy2 = self;
    v23 = 1024;
    v24 = musicSubscriptionCheckStatus;
    v25 = 1024;
    reasonCopy = reason;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ - reloading subscription status. Current status=%d, reason=%d", buf, 0x18u);
  }

  configuration = [(BaseRequestHandler *)self configuration];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100014970;
  v17[3] = &unk_1001DA458;
  v18[0] = handlerCopy;
  v18[1] = reason;
  v11 = v18;
  v17[4] = self;
  v16 = handlerCopy;
  sub_100004BFC(configuration, v17);

LABEL_10:
}

- (void)_enqueueCloudUpdateLibraryOperationForReason:(int64_t)reason
{
  if (!self->_havePendingCloudUpdateLibraryCheck)
  {
    self->_havePendingCloudUpdateLibraryCheck = 1;
    v5 = +[ICURLBagProvider sharedBagProvider];
    v6 = [ICStoreRequestContext alloc];
    configuration = [(BaseRequestHandler *)self configuration];
    userIdentity = [configuration userIdentity];
    v9 = [v6 initWithIdentity:userIdentity];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000159A4;
    v10[3] = &unk_1001DA408;
    v10[4] = self;
    v10[5] = reason;
    [v5 getBagForRequestContext:v9 withCompletionHandler:v10];
  }
}

- (void)_enqueueSubscriptionStatusCheckForReason:(int64_t)reason
{
  if ((reason - 3) <= 0xFFFFFFFFFFFFFFFDLL && self->_havePendingSubscriptionStatusCheck)
  {
    v5 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
LABEL_6:

      return;
    }

    *buf = 138543362;
    selfCopy3 = self;
    v6 = "%{public}@ - We already have a pending subscription status check operation.";
LABEL_5:
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v6, buf, 0xCu);
    goto LABEL_6;
  }

  if ((reason - 3) >= 0xFFFFFFFFFFFFFFFELL)
  {
    if (![(BaseRequestHandler *)self isActive])
    {
      v5 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_6;
      }

      *buf = 138543362;
      selfCopy3 = self;
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
      selfCopy3 = self;
      v16 = 2048;
      v17 = v8;
      v18 = 1024;
      reasonCopy = reason;
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
    v13[5] = reason;
    dispatch_after(v11, accessQueue, v13);
  }
}

- (void)_runSubscriptionStatusCheckOperationWithReason:(int64_t)reason completionHandler:(id)handler
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000161E0;
  v6[3] = &unk_1001DA3E0;
  v6[4] = self;
  v6[5] = reason;
  v5 = [[ICAsyncBlockOperation alloc] initWithStartHandler:v6];
  [(NSOperationQueue *)self->_retryQueue addOperation:v5];
}

- (void)_updateSagaLibraryWithClientIdentity:(id)identity forReason:(int64_t)reason allowNoisyAuthPrompt:(BOOL)prompt isExplicitUserAction:(BOOL)action reconcileLibraryPins:(BOOL)pins completionHandler:(id)handler
{
  identityCopy = identity;
  handlerCopy = handler;
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100016570;
  block[3] = &unk_1001DA3B8;
  v21 = handlerCopy;
  reasonCopy = reason;
  block[4] = self;
  v20 = identityCopy;
  promptCopy = prompt;
  actionCopy = action;
  pinsCopy = pins;
  v17 = identityCopy;
  v18 = handlerCopy;
  dispatch_async(accessQueue, block);
}

- (void)_handleMusicSubscriptionStatusDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  v5 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138543362;
    selfCopy2 = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ - Handling subscription status change notification", &v17, 0xCu);
  }

  userInfo = [notificationCopy userInfo];
  v7 = ICUserIdentityForMusicSubscriptionStatusDidChangeKey;
  v8 = [userInfo objectForKeyedSubscript:ICUserIdentityForMusicSubscriptionStatusDidChangeKey];

  if (!v8)
  {
    goto LABEL_7;
  }

  userInfo2 = [notificationCopy userInfo];
  v10 = [userInfo2 objectForKeyedSubscript:v7];

  userIdentityStore = [(BaseRequestHandler *)self userIdentityStore];
  v12 = [userIdentityStore DSIDForUserIdentity:v10 outError:0];

  userIdentityStore2 = [(BaseRequestHandler *)self userIdentityStore];
  userIdentity = [(BaseRequestHandler *)self userIdentity];
  v15 = [userIdentityStore2 DSIDForUserIdentity:userIdentity outError:0];

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
    selfCopy2 = self;
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
      selfCopy2 = self;
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
      selfCopy2 = self;
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

- (void)updateLibraryWithReason:(int64_t)reason completionHandler:(id)handler
{
  handlerCopy = handler;
  userIdentityStore = [(BaseRequestHandler *)self userIdentityStore];
  userIdentity = [(BaseRequestHandler *)self userIdentity];
  v25 = 0;
  v9 = [userIdentityStore getPropertiesForUserIdentity:userIdentity error:&v25];
  v10 = v25;

  if (v9)
  {
    isActiveLocker = [v9 isActiveLocker];
    v12 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      reasonCopy = reason;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Updating Jalisco Library with reason=%d", buf, 8u);
    }

    configuration = [(BaseRequestHandler *)self configuration];
    clientIdentity = [configuration clientIdentity];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100017168;
    v20[3] = &unk_1001DA368;
    reasonCopy2 = reason;
    v15 = v21;
    v16 = v10;
    v24 = isActiveLocker;
    v21[0] = v16;
    v21[1] = self;
    v22 = handlerCopy;
    [(ICDCloudMusicLibraryRequestHandler *)self updateJaliscoLibraryWithClientIdentity:clientIdentity forReason:reason completionHandler:v20];
  }

  else
  {
    calloutQueue = self->_calloutQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100017384;
    block[3] = &unk_1001DF5C8;
    v15 = &v19;
    v19 = handlerCopy;
    dispatch_async(calloutQueue, block);
  }
}

- (void)becomeInactiveWithDeauthentication:(BOOL)deauthentication completion:(id)completion
{
  completionCopy = completion;
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100017688;
  block[3] = &unk_1001DE1A0;
  deauthenticationCopy = deauthentication;
  block[4] = self;
  v10 = completionCopy;
  v8 = completionCopy;
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

- (void)environmentMonitorDidChangeNetworkReachability:(id)reachability
{
  if ([reachability isRemoteServerReachable] && !self->_musicSubscriptionCheckStatus)
  {
    v4 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      musicSubscriptionCheckStatus = self->_musicSubscriptionCheckStatus;
      v6 = 138543618;
      selfCopy = self;
      v8 = 1024;
      v9 = musicSubscriptionCheckStatus;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ - network reachability changed, _musicSubscriptionCheckStatus = %d. Reloading subscription status", &v6, 0x12u);
    }

    [(ICDCloudMusicLibraryRequestHandler *)self _reloadSubscriptionStatusAndEnableCloudMusicLibraryWithReason:5 completionHandler:0];
  }
}

- (void)scheduleBackgroundTaskToUpdateLibraryType:(int64_t)type
{
  v4 = type != 1;
  taskScheduler = [(BaseRequestHandler *)self taskScheduler];
  configuration = [(BaseRequestHandler *)self configuration];
  [taskScheduler scheduleBackgroundUpdateType:v4 forConfiguration:configuration];
}

- (void)setUpdateProgress:(float)progress forLibraryType:(int64_t)type
{
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001888C;
  block[3] = &unk_1001DA318;
  block[4] = self;
  block[5] = type;
  progressCopy = progress;
  dispatch_async(accessQueue, block);
}

- (void)finishedUpdateOperationForLibraryType:(int64_t)type withResponse:(id)response
{
  responseCopy = response;
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100018A64;
  block[3] = &unk_1001DE600;
  v10 = responseCopy;
  typeCopy = type;
  block[4] = self;
  v8 = responseCopy;
  dispatch_async(accessQueue, block);
}

- (void)startingUpdateOperationForLibraryType:(int64_t)type isInitialImport:(BOOL)import
{
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000191D4;
  block[3] = &unk_1001DA2C8;
  block[4] = self;
  block[5] = type;
  importCopy = import;
  dispatch_async(accessQueue, block);
}

- (void)loadScreenshotInfoForSubscriptionPersistentIDs:(id)ds clientIdentity:(id)identity completionHandler:(id)handler
{
  dsCopy = ds;
  identityCopy = identity;
  handlerCopy = handler;
  accessQueue = self->_accessQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100019444;
  v15[3] = &unk_1001DF730;
  v15[4] = self;
  v16 = dsCopy;
  v17 = identityCopy;
  v18 = handlerCopy;
  v12 = handlerCopy;
  v13 = identityCopy;
  v14 = dsCopy;
  dispatch_async(accessQueue, v15);
}

- (void)loadArtworkInfoForSubscriptionContainerPersistentIDs:(id)ds clientIdentity:(id)identity completionHandler:(id)handler
{
  dsCopy = ds;
  identityCopy = identity;
  handlerCopy = handler;
  accessQueue = self->_accessQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10001972C;
  v15[3] = &unk_1001DF730;
  v15[4] = self;
  v16 = dsCopy;
  v17 = identityCopy;
  v18 = handlerCopy;
  v12 = handlerCopy;
  v13 = identityCopy;
  v14 = dsCopy;
  dispatch_async(accessQueue, v15);
}

- (void)loadArtworkInfoForSubscriptionItemPersistentIDs:(id)ds clientIdentity:(id)identity completionHandler:(id)handler
{
  dsCopy = ds;
  identityCopy = identity;
  handlerCopy = handler;
  accessQueue = self->_accessQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100019A14;
  v15[3] = &unk_1001DF730;
  v15[4] = self;
  v16 = dsCopy;
  v17 = identityCopy;
  v18 = handlerCopy;
  v12 = handlerCopy;
  v13 = identityCopy;
  v14 = dsCopy;
  dispatch_async(accessQueue, v15);
}

- (void)deprioritizeSubscriptionContainerArtworkForPersistentID:(int64_t)d
{
  accessQueue = self->_accessQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100019C8C;
  v4[3] = &unk_1001DA020;
  v4[4] = self;
  v4[5] = d;
  dispatch_async(accessQueue, v4);
}

- (void)deprioritizeSubscriptionScreenshotForPersistentID:(int64_t)d
{
  accessQueue = self->_accessQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100019E0C;
  v4[3] = &unk_1001DA020;
  v4[4] = self;
  v4[5] = d;
  dispatch_async(accessQueue, v4);
}

- (void)deprioritizeSubscriptionItemArtworkForPersistentID:(int64_t)d
{
  accessQueue = self->_accessQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100019F8C;
  v4[3] = &unk_1001DA020;
  v4[4] = self;
  v4[5] = d;
  dispatch_async(accessQueue, v4);
}

- (void)importContainerArtworkForPersistentID:(int64_t)d clientIdentity:(id)identity completionHandler:(id)handler
{
  identityCopy = identity;
  handlerCopy = handler;
  accessQueue = self->_accessQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10001A160;
  v13[3] = &unk_1001DA188;
  v13[4] = self;
  v14 = identityCopy;
  v15 = handlerCopy;
  dCopy = d;
  v11 = handlerCopy;
  v12 = identityCopy;
  dispatch_async(accessQueue, v13);
}

- (void)importScreenshotForPersistentID:(int64_t)d clientIdentity:(id)identity completionHandler:(id)handler
{
  identityCopy = identity;
  handlerCopy = handler;
  accessQueue = self->_accessQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10001A428;
  v13[3] = &unk_1001DA188;
  v13[4] = self;
  v14 = identityCopy;
  v15 = handlerCopy;
  dCopy = d;
  v11 = handlerCopy;
  v12 = identityCopy;
  dispatch_async(accessQueue, v13);
}

- (void)importItemArtworkForPersistentID:(int64_t)d clientIdentity:(id)identity completionHandler:(id)handler
{
  identityCopy = identity;
  handlerCopy = handler;
  accessQueue = self->_accessQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10001A6F0;
  v13[3] = &unk_1001DA188;
  v13[4] = self;
  v14 = identityCopy;
  v15 = handlerCopy;
  dCopy = d;
  v11 = handlerCopy;
  v12 = identityCopy;
  dispatch_async(accessQueue, v13);
}

- (void)hideItemsWithPurchaseHistoryIDs:(id)ds clientIdentity:(id)identity completionHandler:(id)handler
{
  dsCopy = ds;
  identityCopy = identity;
  handlerCopy = handler;
  accessQueue = self->_accessQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10001A9D4;
  v15[3] = &unk_1001DF730;
  v15[4] = self;
  v16 = dsCopy;
  v17 = identityCopy;
  v18 = handlerCopy;
  v12 = handlerCopy;
  v13 = identityCopy;
  v14 = dsCopy;
  dispatch_async(accessQueue, v15);
}

- (void)loadMissingArtworkWithClientIdentity:(id)identity
{
  identityCopy = identity;
  accessQueue = self->_accessQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001AC6C;
  v7[3] = &unk_1001DF618;
  v7[4] = self;
  v8 = identityCopy;
  v6 = identityCopy;
  dispatch_async(accessQueue, v7);
}

- (void)loadBooksForStoreIDs:(id)ds clientIdentity:(id)identity withCompletionHandler:(id)handler
{
  dsCopy = ds;
  identityCopy = identity;
  handlerCopy = handler;
  accessQueue = self->_accessQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10001AEAC;
  v15[3] = &unk_1001DF730;
  v15[4] = self;
  v16 = dsCopy;
  v17 = identityCopy;
  v18 = handlerCopy;
  v12 = handlerCopy;
  v13 = identityCopy;
  v14 = dsCopy;
  dispatch_async(accessQueue, v15);
}

- (void)isMediaKindDisabledForJaliscoLibrary:(int64_t)library clientIdentity:(id)identity completion:(id)completion
{
  identityCopy = identity;
  completionCopy = completion;
  accessQueue = self->_accessQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10001B178;
  v13[3] = &unk_1001DA188;
  v13[4] = self;
  v14 = identityCopy;
  v15 = completionCopy;
  libraryCopy = library;
  v11 = completionCopy;
  v12 = identityCopy;
  dispatch_async(accessQueue, v13);
}

- (void)loadScreenshotInfoForPurchaseHistoryIDs:(id)ds clientIdentity:(id)identity completionHandler:(id)handler
{
  dsCopy = ds;
  identityCopy = identity;
  handlerCopy = handler;
  accessQueue = self->_accessQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10001B460;
  v15[3] = &unk_1001DF730;
  v15[4] = self;
  v16 = dsCopy;
  v17 = identityCopy;
  v18 = handlerCopy;
  v12 = handlerCopy;
  v13 = identityCopy;
  v14 = dsCopy;
  dispatch_async(accessQueue, v15);
}

- (void)loadArtworkInfoForPurchaseHistoryIDs:(id)ds clientIdentity:(id)identity completionHandler:(id)handler
{
  dsCopy = ds;
  identityCopy = identity;
  handlerCopy = handler;
  accessQueue = self->_accessQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10001B748;
  v15[3] = &unk_1001DF730;
  v15[4] = self;
  v16 = dsCopy;
  v17 = identityCopy;
  v18 = handlerCopy;
  v12 = handlerCopy;
  v13 = identityCopy;
  v14 = dsCopy;
  dispatch_async(accessQueue, v15);
}

- (void)setItemProperties:(id)properties forPurchaseHistoryID:(unint64_t)d clientIdentity:(id)identity completionHandler:(id)handler
{
  propertiesCopy = properties;
  identityCopy = identity;
  handlerCopy = handler;
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001BA40;
  block[3] = &unk_1001DA138;
  block[4] = self;
  v18 = propertiesCopy;
  v20 = handlerCopy;
  dCopy = d;
  v19 = identityCopy;
  v14 = handlerCopy;
  v15 = identityCopy;
  v16 = propertiesCopy;
  dispatch_async(accessQueue, block);
}

- (void)removeLibraryWithClientIdentity:(id)identity completion:(id)completion
{
  identityCopy = identity;
  completionCopy = completion;
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001BD04;
  block[3] = &unk_1001DF5F0;
  block[4] = self;
  v12 = identityCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = identityCopy;
  dispatch_async(accessQueue, block);
}

- (void)deprioritizeScreenshotForPurchaseHistoryID:(unint64_t)d
{
  accessQueue = self->_accessQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001BF74;
  v4[3] = &unk_1001DA020;
  v4[4] = self;
  v4[5] = d;
  dispatch_async(accessQueue, v4);
}

- (void)deprioritizeItemArtworkForPurchaseHistoryID:(unint64_t)d
{
  accessQueue = self->_accessQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001C0F4;
  v4[3] = &unk_1001DA020;
  v4[4] = self;
  v4[5] = d;
  dispatch_async(accessQueue, v4);
}

- (void)importScreenshotForPurchaseHistoryID:(unint64_t)d clientIdentity:(id)identity completionHandler:(id)handler
{
  identityCopy = identity;
  handlerCopy = handler;
  accessQueue = self->_accessQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10001C2C8;
  v13[3] = &unk_1001DA188;
  v13[4] = self;
  v14 = identityCopy;
  v15 = handlerCopy;
  dCopy = d;
  v11 = handlerCopy;
  v12 = identityCopy;
  dispatch_async(accessQueue, v13);
}

- (void)importItemArtworkForPurchaseHistoryID:(unint64_t)d clientIdentity:(id)identity completionHandler:(id)handler
{
  identityCopy = identity;
  handlerCopy = handler;
  accessQueue = self->_accessQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10001C590;
  v13[3] = &unk_1001DA188;
  v13[4] = self;
  v14 = identityCopy;
  v15 = handlerCopy;
  dCopy = d;
  v11 = handlerCopy;
  v12 = identityCopy;
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

- (void)movePinnedAlbumWithPersistentID:(int64_t)d cloudAlbumID:(id)iD toPosition:(int64_t)position completion:(id)completion
{
  iDCopy = iD;
  completionCopy = completion;
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001C9E4;
  block[3] = &unk_1001DA098;
  block[4] = self;
  v16 = iDCopy;
  dCopy = d;
  positionCopy = position;
  v17 = completionCopy;
  v13 = completionCopy;
  v14 = iDCopy;
  dispatch_async(accessQueue, block);
}

- (void)movePinnedArtistWithPersistentID:(int64_t)d cloudArtistID:(id)iD toPosition:(int64_t)position completion:(id)completion
{
  iDCopy = iD;
  completionCopy = completion;
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001CCBC;
  block[3] = &unk_1001DA098;
  block[4] = self;
  v16 = iDCopy;
  dCopy = d;
  positionCopy = position;
  v17 = completionCopy;
  v13 = completionCopy;
  v14 = iDCopy;
  dispatch_async(accessQueue, block);
}

- (void)movePinnedEntityWithPersistentID:(int64_t)d cloudID:(int64_t)iD type:(int64_t)type toPosition:(int64_t)position completion:(id)completion
{
  completionCopy = completion;
  accessQueue = self->_accessQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10001CF7C;
  v15[3] = &unk_1001DA250;
  dCopy = d;
  iDCopy = iD;
  typeCopy = type;
  positionCopy = position;
  v15[4] = self;
  v16 = completionCopy;
  v14 = completionCopy;
  dispatch_async(accessQueue, v15);
}

- (void)updatePinnedLibraryAlbumWithPersistentID:(int64_t)d cloudAlbumID:(id)iD defaultAction:(int64_t)action completion:(id)completion
{
  iDCopy = iD;
  completionCopy = completion;
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001D258;
  block[3] = &unk_1001DA098;
  block[4] = self;
  v16 = iDCopy;
  dCopy = d;
  actionCopy = action;
  v17 = completionCopy;
  v13 = completionCopy;
  v14 = iDCopy;
  dispatch_async(accessQueue, block);
}

- (void)updatePinnedLibraryArtistWithPersistentID:(int64_t)d cloudArtistID:(id)iD defaultAction:(int64_t)action completion:(id)completion
{
  iDCopy = iD;
  completionCopy = completion;
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001D530;
  block[3] = &unk_1001DA098;
  block[4] = self;
  v16 = iDCopy;
  dCopy = d;
  actionCopy = action;
  v17 = completionCopy;
  v13 = completionCopy;
  v14 = iDCopy;
  dispatch_async(accessQueue, block);
}

- (void)updatePinnedLibraryEntityWithPersistentID:(int64_t)d cloudID:(int64_t)iD type:(int64_t)type defaultAction:(int64_t)action completion:(id)completion
{
  completionCopy = completion;
  accessQueue = self->_accessQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10001D7F0;
  v15[3] = &unk_1001DA250;
  dCopy = d;
  iDCopy = iD;
  typeCopy = type;
  actionCopy = action;
  v15[4] = self;
  v16 = completionCopy;
  v14 = completionCopy;
  dispatch_async(accessQueue, v15);
}

- (void)removePinnedAlbumWithPersistentID:(int64_t)d cloudAlbumID:(id)iD completion:(id)completion
{
  iDCopy = iD;
  completionCopy = completion;
  accessQueue = self->_accessQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10001DABC;
  v13[3] = &unk_1001DA188;
  v13[4] = self;
  v14 = iDCopy;
  v15 = completionCopy;
  dCopy = d;
  v11 = completionCopy;
  v12 = iDCopy;
  dispatch_async(accessQueue, v13);
}

- (void)removePinnedArtistWithPersistentID:(int64_t)d cloudArtistID:(id)iD completion:(id)completion
{
  iDCopy = iD;
  completionCopy = completion;
  accessQueue = self->_accessQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10001DD84;
  v13[3] = &unk_1001DA188;
  v13[4] = self;
  v14 = iDCopy;
  v15 = completionCopy;
  dCopy = d;
  v11 = completionCopy;
  v12 = iDCopy;
  dispatch_async(accessQueue, v13);
}

- (void)removePinnedEntityWithPersistentID:(int64_t)d cloudID:(int64_t)iD type:(int64_t)type completion:(id)completion
{
  completionCopy = completion;
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001E040;
  block[3] = &unk_1001DA278;
  dCopy = d;
  iDCopy = iD;
  typeCopy = type;
  block[4] = self;
  v14 = completionCopy;
  v12 = completionCopy;
  dispatch_async(accessQueue, block);
}

- (void)pinLibraryAlbumWithPersistentID:(int64_t)d cloudAlbumID:(id)iD defaultAction:(int64_t)action completion:(id)completion
{
  iDCopy = iD;
  completionCopy = completion;
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001E318;
  block[3] = &unk_1001DA098;
  block[4] = self;
  v16 = iDCopy;
  dCopy = d;
  actionCopy = action;
  v17 = completionCopy;
  v13 = completionCopy;
  v14 = iDCopy;
  dispatch_async(accessQueue, block);
}

- (void)pinLibraryArtistWithPersistentID:(int64_t)d cloudArtistID:(id)iD defaultAction:(int64_t)action completion:(id)completion
{
  iDCopy = iD;
  completionCopy = completion;
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001E5F0;
  block[3] = &unk_1001DA098;
  block[4] = self;
  v16 = iDCopy;
  dCopy = d;
  actionCopy = action;
  v17 = completionCopy;
  v13 = completionCopy;
  v14 = iDCopy;
  dispatch_async(accessQueue, block);
}

- (void)pinLibraryEntityWithPersistentID:(int64_t)d cloudID:(int64_t)iD type:(int64_t)type defaultAction:(int64_t)action completion:(id)completion
{
  completionCopy = completion;
  accessQueue = self->_accessQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10001E8B0;
  v15[3] = &unk_1001DA250;
  dCopy = d;
  iDCopy = iD;
  typeCopy = type;
  actionCopy = action;
  v15[4] = self;
  v16 = completionCopy;
  v14 = completionCopy;
  dispatch_async(accessQueue, v15);
}

- (void)resetInvitationURLForCollaborationWithPersistentID:(int64_t)d completion:(id)completion
{
  completionCopy = completion;
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001EB5C;
  block[3] = &unk_1001DA070;
  v10 = completionCopy;
  dCopy = d;
  block[4] = self;
  v8 = completionCopy;
  dispatch_async(accessQueue, block);
}

- (void)removeCollaborators:(id)collaborators fromCollaborationWithPersistentID:(int64_t)d completion:(id)completion
{
  collaboratorsCopy = collaborators;
  completionCopy = completion;
  accessQueue = self->_accessQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10001EE24;
  v13[3] = &unk_1001DA188;
  v13[4] = self;
  v14 = collaboratorsCopy;
  v15 = completionCopy;
  dCopy = d;
  v11 = completionCopy;
  v12 = collaboratorsCopy;
  dispatch_async(accessQueue, v13);
}

- (void)respondToPendingCollaborator:(id)collaborator onCollaborationWithPersistentID:(int64_t)d withApproval:(BOOL)approval completion:(id)completion
{
  collaboratorCopy = collaborator;
  completionCopy = completion;
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001F0FC;
  block[3] = &unk_1001DA228;
  block[4] = self;
  v16 = collaboratorCopy;
  approvalCopy = approval;
  v17 = completionCopy;
  dCopy = d;
  v13 = completionCopy;
  v14 = collaboratorCopy;
  dispatch_async(accessQueue, block);
}

- (void)joinCollaborationWithGlobalPlaylistID:(id)d invitationURL:(id)l completion:(id)completion
{
  dCopy = d;
  lCopy = l;
  completionCopy = completion;
  accessQueue = self->_accessQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10001F3E4;
  v15[3] = &unk_1001DF730;
  v15[4] = self;
  v16 = dCopy;
  v17 = lCopy;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = lCopy;
  v14 = dCopy;
  dispatch_async(accessQueue, v15);
}

- (void)editCollaborationWithPersistentID:(int64_t)d properties:(id)properties trackEdits:(id)edits completion:(id)completion
{
  propertiesCopy = properties;
  editsCopy = edits;
  completionCopy = completion;
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001F6DC;
  block[3] = &unk_1001DA138;
  v20 = completionCopy;
  dCopy = d;
  block[4] = self;
  v18 = propertiesCopy;
  v19 = editsCopy;
  v14 = completionCopy;
  v15 = editsCopy;
  v16 = propertiesCopy;
  dispatch_async(accessQueue, block);
}

- (void)endCollaborationWithPersistentID:(int64_t)d completion:(id)completion
{
  completionCopy = completion;
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001F984;
  block[3] = &unk_1001DA070;
  v10 = completionCopy;
  dCopy = d;
  block[4] = self;
  v8 = completionCopy;
  dispatch_async(accessQueue, block);
}

- (void)beginCollaborationUsingPlaylistWithPersistentID:(int64_t)d sharingMode:(unint64_t)mode completion:(id)completion
{
  completionCopy = completion;
  accessQueue = self->_accessQueue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10001FC30;
  v11[3] = &unk_1001DA200;
  dCopy = d;
  modeCopy = mode;
  v11[4] = self;
  v12 = completionCopy;
  v10 = completionCopy;
  dispatch_async(accessQueue, v11);
}

- (void)favoriteEntityWithPersistentID:(int64_t)d sagaID:(int64_t)iD entityType:(int64_t)type time:(id)time completionHandler:(id)handler
{
  timeCopy = time;
  handlerCopy = handler;
  accessQueue = self->_accessQueue;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10001FF10;
  v17[3] = &unk_1001DA1D8;
  dCopy = d;
  typeCopy = type;
  v17[4] = self;
  v18 = timeCopy;
  v19 = handlerCopy;
  iDCopy = iD;
  v15 = handlerCopy;
  v16 = timeCopy;
  dispatch_async(accessQueue, v17);
}

- (void)favoriteArtistWithPersistentID:(int64_t)d cloudLibraryID:(id)iD time:(id)time completionHandler:(id)handler
{
  iDCopy = iD;
  timeCopy = time;
  handlerCopy = handler;
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100020258;
  block[3] = &unk_1001DA138;
  block[4] = self;
  v18 = iDCopy;
  v20 = handlerCopy;
  dCopy = d;
  v19 = timeCopy;
  v14 = handlerCopy;
  v15 = timeCopy;
  v16 = iDCopy;
  dispatch_async(accessQueue, block);
}

- (void)favoriteAlbumWithPersistentID:(int64_t)d cloudLibraryID:(id)iD time:(id)time completionHandler:(id)handler
{
  iDCopy = iD;
  timeCopy = time;
  handlerCopy = handler;
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100020574;
  block[3] = &unk_1001DA138;
  block[4] = self;
  v18 = iDCopy;
  v20 = handlerCopy;
  dCopy = d;
  v19 = timeCopy;
  v14 = handlerCopy;
  v15 = timeCopy;
  v16 = iDCopy;
  dispatch_async(accessQueue, block);
}

- (void)favoritePlaylistWithPersistentID:(int64_t)d globalID:(id)iD time:(id)time completionHandler:(id)handler
{
  iDCopy = iD;
  timeCopy = time;
  handlerCopy = handler;
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100020890;
  block[3] = &unk_1001DA138;
  v20 = handlerCopy;
  dCopy = d;
  block[4] = self;
  v18 = iDCopy;
  v19 = timeCopy;
  v14 = handlerCopy;
  v15 = timeCopy;
  v16 = iDCopy;
  dispatch_async(accessQueue, block);
}

- (void)favoriteEntityWithPersistentID:(int64_t)d storeID:(int64_t)iD entityType:(int64_t)type time:(id)time completionHandler:(id)handler
{
  timeCopy = time;
  handlerCopy = handler;
  accessQueue = self->_accessQueue;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100020B94;
  v17[3] = &unk_1001DA1D8;
  iDCopy = iD;
  typeCopy = type;
  v17[4] = self;
  v18 = timeCopy;
  v19 = handlerCopy;
  dCopy = d;
  v15 = handlerCopy;
  v16 = timeCopy;
  dispatch_async(accessQueue, v17);
}

- (void)loadLastKnownEnableICMLStatusWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  userIdentityStore = [(BaseRequestHandler *)self userIdentityStore];
  userIdentity = [(BaseRequestHandler *)self userIdentity];
  v26 = 0;
  v7 = [userIdentityStore getPropertiesForUserIdentity:userIdentity error:&v26];
  v8 = v26;

  if (v7)
  {
    cloudLibraryStateReason = [v7 cloudLibraryStateReason];
    if ([v7 isActiveLocker])
    {
      v10 = [cloudLibraryStateReason objectForKey:@"EnableCloudLibraryFailureReasonKey"];
      v11 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        selfCopy3 = self;
        v29 = 2114;
        v30 = cloudLibraryStateReason;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ - last known error reason enabling iCML=%{public}@", buf, 0x16u);
      }

      if (handlerCopy)
      {
        calloutQueue = self->_calloutQueue;
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1000211B8;
        block[3] = &unk_1001DF5A0;
        v25 = handlerCopy;
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
        selfCopy3 = self;
        v29 = 2114;
        v30 = cloudLibraryStateReason;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ - locker bit is not set, not returning last known error enabling iCML. cloudLibraryStateReason=%{public}@", buf, 0x16u);
      }

      if (!handlerCopy)
      {
        goto LABEL_16;
      }

      v16 = self->_calloutQueue;
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_1000211D0;
      v20[3] = &unk_1001DF5A0;
      v22 = handlerCopy;
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
    selfCopy3 = self;
    v29 = 2114;
    v30 = v8;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ - could not load user identity properties (error=%{public}@), not returning last known error enabling iCML", buf, 0x16u);
  }

  if (handlerCopy)
  {
    v14 = self->_calloutQueue;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000211E8;
    v17[3] = &unk_1001DF5A0;
    v19 = handlerCopy;
    v18 = v8;
    dispatch_async(v14, v17);

    cloudLibraryStateReason = v19;
    goto LABEL_16;
  }

LABEL_17:
}

- (void)loadScreenshotInfoForSagaIDs:(id)ds clientIdentity:(id)identity completionHandler:(id)handler
{
  dsCopy = ds;
  identityCopy = identity;
  handlerCopy = handler;
  accessQueue = self->_accessQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000212EC;
  v15[3] = &unk_1001DF730;
  v15[4] = self;
  v16 = dsCopy;
  v17 = identityCopy;
  v18 = handlerCopy;
  v12 = handlerCopy;
  v13 = identityCopy;
  v14 = dsCopy;
  dispatch_async(accessQueue, v15);
}

- (void)loadArtworkInfoForContainerSagaIDs:(id)ds clientIdentity:(id)identity completionHandler:(id)handler
{
  dsCopy = ds;
  identityCopy = identity;
  handlerCopy = handler;
  accessQueue = self->_accessQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000215D4;
  v15[3] = &unk_1001DF730;
  v15[4] = self;
  v16 = dsCopy;
  v17 = identityCopy;
  v18 = handlerCopy;
  v12 = handlerCopy;
  v13 = identityCopy;
  v14 = dsCopy;
  dispatch_async(accessQueue, v15);
}

- (void)loadArtworkInfoForSagaIDs:(id)ds clientIdentity:(id)identity completionHandler:(id)handler
{
  dsCopy = ds;
  identityCopy = identity;
  handlerCopy = handler;
  accessQueue = self->_accessQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000218BC;
  v15[3] = &unk_1001DF730;
  v15[4] = self;
  v16 = dsCopy;
  v17 = identityCopy;
  v18 = handlerCopy;
  v12 = handlerCopy;
  v13 = identityCopy;
  v14 = dsCopy;
  dispatch_async(accessQueue, v15);
}

- (void)loadGeniusItemsForSagaID:(unint64_t)d clientIdentity:(id)identity completionHandler:(id)handler
{
  identityCopy = identity;
  handlerCopy = handler;
  accessQueue = self->_accessQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100021B88;
  v13[3] = &unk_1001DA188;
  v13[4] = self;
  v14 = identityCopy;
  v15 = handlerCopy;
  dCopy = d;
  v11 = handlerCopy;
  v12 = identityCopy;
  dispatch_async(accessQueue, v13);
}

- (void)updateSubscribedPlaylistsWithSagaIDs:(id)ds ignoreMinRefreshInterval:(BOOL)interval requestReason:(int64_t)reason pinnedOnly:(BOOL)only clientIdentity:(id)identity completionHandler:(id)handler
{
  dsCopy = ds;
  identityCopy = identity;
  handlerCopy = handler;
  accessQueue = self->_accessQueue;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100021E98;
  v21[3] = &unk_1001DA1B0;
  v21[4] = self;
  v22 = dsCopy;
  intervalCopy = interval;
  v24 = handlerCopy;
  reasonCopy = reason;
  onlyCopy = only;
  v23 = identityCopy;
  v18 = handlerCopy;
  v19 = identityCopy;
  v20 = dsCopy;
  dispatch_async(accessQueue, v21);
}

- (void)updatePlaylistPlayDataWithClientIdentity:(id)identity completionHandler:(id)handler
{
  identityCopy = identity;
  handlerCopy = handler;
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100022164;
  block[3] = &unk_1001DF5F0;
  block[4] = self;
  v12 = identityCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = identityCopy;
  dispatch_async(accessQueue, block);
}

- (void)updateItemPlayDataWithClientIdentity:(id)identity completionHandler:(id)handler
{
  identityCopy = identity;
  handlerCopy = handler;
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100022424;
  block[3] = &unk_1001DF5F0;
  block[4] = self;
  v12 = identityCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = identityCopy;
  dispatch_async(accessQueue, block);
}

- (void)setAlbumArtistProperties:(id)properties withArtistPersistentID:(int64_t)d clientIdentity:(id)identity completionHandler:(id)handler
{
  propertiesCopy = properties;
  identityCopy = identity;
  handlerCopy = handler;
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100022714;
  block[3] = &unk_1001DA138;
  block[4] = self;
  v18 = propertiesCopy;
  v20 = handlerCopy;
  dCopy = d;
  v19 = identityCopy;
  v14 = handlerCopy;
  v15 = identityCopy;
  v16 = propertiesCopy;
  dispatch_async(accessQueue, block);
}

- (void)setAlbumEntityProperties:(id)properties withAlbumPersistentID:(int64_t)d clientIdentity:(id)identity completionHandler:(id)handler
{
  propertiesCopy = properties;
  identityCopy = identity;
  handlerCopy = handler;
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100022A08;
  block[3] = &unk_1001DA138;
  block[4] = self;
  v18 = propertiesCopy;
  v20 = handlerCopy;
  dCopy = d;
  v19 = identityCopy;
  v14 = handlerCopy;
  v15 = identityCopy;
  v16 = propertiesCopy;
  dispatch_async(accessQueue, block);
}

- (void)setAlbumProperties:(id)properties forItemsWithAlbumPersistentID:(int64_t)d clientIdentity:(id)identity completionHandler:(id)handler
{
  propertiesCopy = properties;
  identityCopy = identity;
  handlerCopy = handler;
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100022CFC;
  block[3] = &unk_1001DA138;
  block[4] = self;
  v18 = propertiesCopy;
  v20 = handlerCopy;
  dCopy = d;
  v19 = identityCopy;
  v14 = handlerCopy;
  v15 = identityCopy;
  v16 = propertiesCopy;
  dispatch_async(accessQueue, block);
}

- (void)setItemProperties:(id)properties forSagaID:(unint64_t)d clientIdentity:(id)identity completionHandler:(id)handler
{
  propertiesCopy = properties;
  identityCopy = identity;
  handlerCopy = handler;
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100022FF0;
  block[3] = &unk_1001DA138;
  block[4] = self;
  v18 = propertiesCopy;
  v20 = handlerCopy;
  dCopy = d;
  v19 = identityCopy;
  v14 = handlerCopy;
  v15 = identityCopy;
  v16 = propertiesCopy;
  dispatch_async(accessQueue, block);
}

- (void)setCloudFavoriteSongAddToLibraryBehavior:(int64_t)behavior clientIdentity:(id)identity completionHandler:(id)handler
{
  identityCopy = identity;
  handlerCopy = handler;
  accessQueue = self->_accessQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000232C4;
  v13[3] = &unk_1001DA188;
  v15 = handlerCopy;
  behaviorCopy = behavior;
  v13[4] = self;
  v14 = identityCopy;
  v11 = identityCopy;
  v12 = handlerCopy;
  dispatch_async(accessQueue, v13);
}

- (void)setCloudAddToPlaylistBehavior:(int64_t)behavior clientIdentity:(id)identity completionHandler:(id)handler
{
  identityCopy = identity;
  handlerCopy = handler;
  accessQueue = self->_accessQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10002370C;
  v13[3] = &unk_1001DA188;
  v13[4] = self;
  v14 = identityCopy;
  v15 = handlerCopy;
  behaviorCopy = behavior;
  v11 = handlerCopy;
  v12 = identityCopy;
  dispatch_async(accessQueue, v13);
}

- (void)setPlaylistProperties:(id)properties trackList:(id)list forPlaylistPersistentID:(int64_t)d clientIdentity:(id)identity requestingBundleID:(id)iD completionHandler:(id)handler
{
  propertiesCopy = properties;
  listCopy = list;
  identityCopy = identity;
  iDCopy = iD;
  handlerCopy = handler;
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100023A4C;
  block[3] = &unk_1001DC998;
  block[4] = self;
  v26 = propertiesCopy;
  v30 = handlerCopy;
  dCopy = d;
  v27 = listCopy;
  v28 = identityCopy;
  v29 = iDCopy;
  v20 = handlerCopy;
  v21 = iDCopy;
  v22 = identityCopy;
  v23 = listCopy;
  v24 = propertiesCopy;
  dispatch_async(accessQueue, block);
}

- (void)setPlaylistProperties:(id)properties trackList:(id)list forPlaylistPersistentID:(int64_t)d clientIdentity:(id)identity completionHandler:(id)handler
{
  propertiesCopy = properties;
  listCopy = list;
  identityCopy = identity;
  handlerCopy = handler;
  accessQueue = self->_accessQueue;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100023D64;
  v21[3] = &unk_1001DA0C0;
  v21[4] = self;
  v22 = propertiesCopy;
  v23 = listCopy;
  v24 = identityCopy;
  v25 = handlerCopy;
  dCopy = d;
  v17 = handlerCopy;
  v18 = identityCopy;
  v19 = listCopy;
  v20 = propertiesCopy;
  dispatch_async(accessQueue, v21);
}

- (void)addStorePlaylistWithGlobalID:(id)d clientIdentity:(id)identity completionHandler:(id)handler
{
  dCopy = d;
  identityCopy = identity;
  handlerCopy = handler;
  accessQueue = self->_accessQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10002404C;
  v15[3] = &unk_1001DF730;
  v15[4] = self;
  v16 = dCopy;
  v17 = identityCopy;
  v18 = handlerCopy;
  v12 = handlerCopy;
  v13 = identityCopy;
  v14 = dCopy;
  dispatch_async(accessQueue, v15);
}

- (void)addStoreItemWithOpaqueID:(id)d requestingBundleID:(id)iD clientIdentity:(id)identity completionHandler:(id)handler
{
  dCopy = d;
  iDCopy = iD;
  identityCopy = identity;
  handlerCopy = handler;
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100024360;
  block[3] = &unk_1001DA160;
  block[4] = self;
  v20 = dCopy;
  v21 = iDCopy;
  v22 = identityCopy;
  v23 = handlerCopy;
  v15 = handlerCopy;
  v16 = identityCopy;
  v17 = iDCopy;
  v18 = dCopy;
  dispatch_async(accessQueue, block);
}

- (void)addStoreItemsWithAdamIDs:(id)ds referral:(id)referral clientIdentity:(id)identity completionHandler:(id)handler
{
  dsCopy = ds;
  referralCopy = referral;
  identityCopy = identity;
  handlerCopy = handler;
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100024674;
  block[3] = &unk_1001DA160;
  block[4] = self;
  v20 = dsCopy;
  v21 = referralCopy;
  v22 = identityCopy;
  v23 = handlerCopy;
  v15 = handlerCopy;
  v16 = identityCopy;
  v17 = referralCopy;
  v18 = dsCopy;
  dispatch_async(accessQueue, block);
}

- (void)addStoreItemWithAdamID:(int64_t)d referral:(id)referral clientIdentity:(id)identity completionHandler:(id)handler
{
  referralCopy = referral;
  identityCopy = identity;
  handlerCopy = handler;
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002496C;
  block[3] = &unk_1001DA138;
  v20 = handlerCopy;
  dCopy = d;
  block[4] = self;
  v18 = referralCopy;
  v19 = identityCopy;
  v14 = handlerCopy;
  v15 = identityCopy;
  v16 = referralCopy;
  dispatch_async(accessQueue, block);
}

- (void)addItemWithSagaID:(unint64_t)d toPlaylistWithPersistentID:(int64_t)iD requestingBundleID:(id)bundleID clientIdentity:(id)identity completionHandler:(id)handler
{
  bundleIDCopy = bundleID;
  identityCopy = identity;
  handlerCopy = handler;
  accessQueue = self->_accessQueue;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100024C68;
  v19[3] = &unk_1001DA110;
  dCopy = d;
  iDCopy = iD;
  v19[4] = self;
  v20 = bundleIDCopy;
  v21 = identityCopy;
  v22 = handlerCopy;
  v16 = handlerCopy;
  v17 = identityCopy;
  v18 = bundleIDCopy;
  dispatch_async(accessQueue, v19);
}

- (void)addStoreItemWithOpaqueID:(id)d toPlaylistWithPersistentID:(int64_t)iD requestingBundleID:(id)bundleID clientIdentity:(id)identity completionHandler:(id)handler
{
  dCopy = d;
  bundleIDCopy = bundleID;
  identityCopy = identity;
  handlerCopy = handler;
  accessQueue = self->_accessQueue;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100024F80;
  v21[3] = &unk_1001DA0C0;
  v21[4] = self;
  v22 = dCopy;
  v23 = bundleIDCopy;
  v24 = identityCopy;
  v25 = handlerCopy;
  iDCopy = iD;
  v17 = handlerCopy;
  v18 = identityCopy;
  v19 = bundleIDCopy;
  v20 = dCopy;
  dispatch_async(accessQueue, v21);
}

- (void)addItemWithSagaID:(unint64_t)d toPlaylistWithPersistentID:(int64_t)iD clientIdentity:(id)identity completionHandler:(id)handler
{
  identityCopy = identity;
  handlerCopy = handler;
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100025260;
  block[3] = &unk_1001DA098;
  dCopy = d;
  iDCopy = iD;
  block[4] = self;
  v16 = identityCopy;
  v17 = handlerCopy;
  v13 = handlerCopy;
  v14 = identityCopy;
  dispatch_async(accessQueue, block);
}

- (void)addStoreItemWithAdamID:(int64_t)d referral:(id)referral toPlaylistWithPersistentID:(int64_t)iD clientIdentity:(id)identity completionHandler:(id)handler
{
  referralCopy = referral;
  identityCopy = identity;
  handlerCopy = handler;
  accessQueue = self->_accessQueue;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100025558;
  v19[3] = &unk_1001DA110;
  v19[4] = self;
  v20 = referralCopy;
  dCopy = d;
  iDCopy = iD;
  v21 = identityCopy;
  v22 = handlerCopy;
  v16 = handlerCopy;
  v17 = identityCopy;
  v18 = referralCopy;
  dispatch_async(accessQueue, v19);
}

- (void)addGeniusPlaylistWithPersistentID:(int64_t)d name:(id)name seedItemIDs:(id)ds itemIDs:(id)iDs clientIdentity:(id)identity completionHandler:(id)handler
{
  nameCopy = name;
  dsCopy = ds;
  iDsCopy = iDs;
  identityCopy = identity;
  handlerCopy = handler;
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002589C;
  block[3] = &unk_1001DC998;
  v30 = handlerCopy;
  dCopy = d;
  block[4] = self;
  v26 = nameCopy;
  v27 = dsCopy;
  v28 = iDsCopy;
  v29 = identityCopy;
  v20 = handlerCopy;
  v21 = identityCopy;
  v22 = iDsCopy;
  v23 = dsCopy;
  v24 = nameCopy;
  dispatch_async(accessQueue, block);
}

- (void)uploadArtworkForPlaylistWithPersistentID:(int64_t)d clientIdentity:(id)identity completionHandler:(id)handler
{
  identityCopy = identity;
  handlerCopy = handler;
  accessQueue = self->_accessQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100025B6C;
  v13[3] = &unk_1001DA188;
  v13[4] = self;
  v14 = identityCopy;
  v15 = handlerCopy;
  dCopy = d;
  v11 = handlerCopy;
  v12 = identityCopy;
  dispatch_async(accessQueue, v13);
}

- (void)removePlaylistsWithSagaIDs:(id)ds performDeltaSync:(BOOL)sync clientIdentity:(id)identity completionHandler:(id)handler
{
  dsCopy = ds;
  identityCopy = identity;
  handlerCopy = handler;
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100025E60;
  block[3] = &unk_1001DA0E8;
  block[4] = self;
  v18 = dsCopy;
  syncCopy = sync;
  v19 = identityCopy;
  v20 = handlerCopy;
  v14 = handlerCopy;
  v15 = identityCopy;
  v16 = dsCopy;
  dispatch_async(accessQueue, block);
}

- (void)removeItemsWithSagaIDs:(id)ds clientIdentity:(id)identity completionHandler:(id)handler
{
  dsCopy = ds;
  identityCopy = identity;
  handlerCopy = handler;
  accessQueue = self->_accessQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100026148;
  v15[3] = &unk_1001DF730;
  v15[4] = self;
  v16 = dsCopy;
  v17 = identityCopy;
  v18 = handlerCopy;
  v12 = handlerCopy;
  v13 = identityCopy;
  v14 = dsCopy;
  dispatch_async(accessQueue, v15);
}

- (void)publishPlaylistWithSagaID:(unint64_t)d clientIdentity:(id)identity completionHandler:(id)handler
{
  identityCopy = identity;
  handlerCopy = handler;
  accessQueue = self->_accessQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100026410;
  v13[3] = &unk_1001DA188;
  v13[4] = self;
  v14 = identityCopy;
  v15 = handlerCopy;
  dCopy = d;
  v11 = handlerCopy;
  v12 = identityCopy;
  dispatch_async(accessQueue, v13);
}

- (void)createPlaylistWithPersistentID:(int64_t)d properties:(id)properties trackList:(id)list requestingBundleID:(id)iD clientIdentity:(id)identity completionHandler:(id)handler
{
  propertiesCopy = properties;
  listCopy = list;
  iDCopy = iD;
  identityCopy = identity;
  handlerCopy = handler;
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100026758;
  block[3] = &unk_1001DC998;
  v30 = handlerCopy;
  dCopy = d;
  block[4] = self;
  v26 = propertiesCopy;
  v27 = listCopy;
  v28 = iDCopy;
  v29 = identityCopy;
  v20 = handlerCopy;
  v21 = identityCopy;
  v22 = iDCopy;
  v23 = listCopy;
  v24 = propertiesCopy;
  dispatch_async(accessQueue, block);
}

- (void)createPlaylistWithPersistentID:(int64_t)d properties:(id)properties trackList:(id)list clientIdentity:(id)identity completionHandler:(id)handler
{
  propertiesCopy = properties;
  listCopy = list;
  identityCopy = identity;
  handlerCopy = handler;
  accessQueue = self->_accessQueue;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100026A74;
  v21[3] = &unk_1001DA0C0;
  v21[4] = self;
  v22 = propertiesCopy;
  v23 = listCopy;
  v24 = identityCopy;
  v25 = handlerCopy;
  dCopy = d;
  v17 = handlerCopy;
  v18 = identityCopy;
  v19 = listCopy;
  v20 = propertiesCopy;
  dispatch_async(accessQueue, v21);
}

- (void)deprioritizeContainerArtworkForSagaID:(unint64_t)d
{
  accessQueue = self->_accessQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100026CF0;
  v4[3] = &unk_1001DA020;
  v4[4] = self;
  v4[5] = d;
  dispatch_async(accessQueue, v4);
}

- (void)deprioritizeScreenshotForSagaID:(unint64_t)d
{
  accessQueue = self->_accessQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100026E70;
  v4[3] = &unk_1001DA020;
  v4[4] = self;
  v4[5] = d;
  dispatch_async(accessQueue, v4);
}

- (void)deprioritizeItemArtworkForSagaID:(unint64_t)d
{
  accessQueue = self->_accessQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100026FF0;
  v4[3] = &unk_1001DA020;
  v4[4] = self;
  v4[5] = d;
  dispatch_async(accessQueue, v4);
}

- (void)importContainerArtworkForSagaID:(unint64_t)d artworkVariantType:(int64_t)type clientIdentity:(id)identity completionHandler:(id)handler
{
  identityCopy = identity;
  handlerCopy = handler;
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000271D4;
  block[3] = &unk_1001DA098;
  dCopy = d;
  typeCopy = type;
  block[4] = self;
  v16 = identityCopy;
  v17 = handlerCopy;
  v13 = handlerCopy;
  v14 = identityCopy;
  dispatch_async(accessQueue, block);
}

- (void)importContainerArtworkForSagaID:(unint64_t)d clientIdentity:(id)identity completionHandler:(id)handler
{
  identityCopy = identity;
  handlerCopy = handler;
  accessQueue = self->_accessQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000274B0;
  v13[3] = &unk_1001DA188;
  v13[4] = self;
  v14 = identityCopy;
  v15 = handlerCopy;
  dCopy = d;
  v11 = handlerCopy;
  v12 = identityCopy;
  dispatch_async(accessQueue, v13);
}

- (void)importScreenshotForSagaID:(unint64_t)d clientIdentity:(id)identity completionHandler:(id)handler
{
  identityCopy = identity;
  handlerCopy = handler;
  accessQueue = self->_accessQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100027778;
  v13[3] = &unk_1001DA188;
  v13[4] = self;
  v14 = identityCopy;
  v15 = handlerCopy;
  dCopy = d;
  v11 = handlerCopy;
  v12 = identityCopy;
  dispatch_async(accessQueue, v13);
}

- (void)importItemArtworkForSagaID:(unint64_t)d clientIdentity:(id)identity completionHandler:(id)handler
{
  identityCopy = identity;
  handlerCopy = handler;
  accessQueue = self->_accessQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100027A40;
  v13[3] = &unk_1001DA188;
  v13[4] = self;
  v14 = identityCopy;
  v15 = handlerCopy;
  dCopy = d;
  v11 = handlerCopy;
  v12 = identityCopy;
  dispatch_async(accessQueue, v13);
}

- (void)updateProgressForLibraryType:(int64_t)type completionHandler:(id)handler
{
  handlerCopy = handler;
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100027CE8;
  block[3] = &unk_1001DA070;
  v10 = handlerCopy;
  typeCopy = type;
  block[4] = self;
  v8 = handlerCopy;
  dispatch_async(accessQueue, block);
}

- (void)cancelPendingChangesForLibraryType:(int64_t)type
{
  accessQueue = self->_accessQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000280B0;
  v4[3] = &unk_1001DA020;
  v4[4] = self;
  v4[5] = type;
  dispatch_sync(accessQueue, v4);
}

- (void)addBackgroundOperation:(id)operation forLibraryType:(int64_t)type priority:(int)priority
{
  operationCopy = operation;
  accessQueue = self->_accessQueue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100028190;
  v11[3] = &unk_1001D9FF8;
  v12 = operationCopy;
  typeCopy = type;
  v11[4] = self;
  priorityCopy = priority;
  v10 = operationCopy;
  dispatch_async(accessQueue, v11);
}

- (void)addOperation:(id)operation forLibraryType:(int64_t)type priority:(int)priority
{
  operationCopy = operation;
  accessQueue = self->_accessQueue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100028360;
  v11[3] = &unk_1001D9FF8;
  v12 = operationCopy;
  typeCopy = type;
  v11[4] = self;
  priorityCopy = priority;
  v10 = operationCopy;
  dispatch_async(accessQueue, v11);
}

- (void)updateJaliscoLibraryWithClientIdentity:(id)identity forReason:(int64_t)reason completionHandler:(id)handler
{
  identityCopy = identity;
  handlerCopy = handler;
  accessQueue = self->_accessQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100028460;
  v13[3] = &unk_1001DA188;
  v13[4] = self;
  v14 = identityCopy;
  v15 = handlerCopy;
  reasonCopy = reason;
  v11 = handlerCopy;
  v12 = identityCopy;
  dispatch_async(accessQueue, v13);
}

- (void)isUpdatingCloudLibraryWithCompletion:(id)completion
{
  completionCopy = completion;
  accessQueue = self->_accessQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100028948;
  v7[3] = &unk_1001DF5A0;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
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

- (void)disableCloudLibraryWithClientIdentity:(id)identity reason:(int64_t)reason completionHandler:(id)handler
{
  identityCopy = identity;
  handlerCopy = handler;
  userIdentityStore = [(BaseRequestHandler *)self userIdentityStore];
  userIdentity = [(BaseRequestHandler *)self userIdentity];
  v60 = 0;
  v48 = [userIdentityStore getPropertiesForUserIdentity:userIdentity error:&v60];
  v45 = v60;

  v10 = 0;
  if (v48)
  {
    isActiveLocker = 0;
    if (!v45)
    {
      isActiveLocker = [v48 isActiveLocker];
      dSID = [v48 DSID];

      v10 = dSID != 0;
    }
  }

  else
  {
    isActiveLocker = 0;
  }

  if ((reason + 11) <= 4 && reason != -8)
  {
    v69[0] = @"reason";
    v13 = [NSNumber numberWithInteger:reason];
    v69[1] = @"isActiveLocker";
    v70[0] = v13;
    v14 = [NSNumber numberWithBool:isActiveLocker];
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
    *&buf[14] = reason;
    *&buf[18] = 1024;
    *&buf[20] = isActiveLocker;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ - Starting to disable cloud library for reason=%d, isActiveLocker=%{BOOL}u", buf, 0x18u);
  }

  if (isActiveLocker)
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

    configuration = [(BaseRequestHandler *)self configuration];
    v55[0] = _NSConcreteStackBlock;
    v55[1] = 3221225472;
    v55[2] = sub_100029C1C;
    v55[3] = &unk_1001DC4E8;
    v55[4] = self;
    reasonCopy = reason;
    v56 = identityCopy;
    v57 = handlerCopy;
    v22 = configuration;
    v44 = v55;
    userIdentityStore2 = [v22 userIdentityStore];
    userIdentity2 = [v22 userIdentity];
    v43 = +[NSDate date];
    v68 = 0;
    v25 = [userIdentityStore2 getPropertiesForUserIdentity:userIdentity2 error:&v68];
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
      cloudLibraryStateReason = [v25 cloudLibraryStateReason];
      v67 = [cloudLibraryStateReason mutableCopy];

      v28 = [v63[5] objectForKey:@"CloudLibraryStateReasonKey"];
      integerValue = [v28 integerValue];
      if (integerValue == -1 || v63[5] && [v28 integerValue] == reason)
      {
        v30 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          v31 = v63[5];
          *buf = 67109634;
          *&buf[4] = reason;
          *&buf[8] = 1024;
          *&buf[10] = integerValue == -1;
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
        v61[5] = reason;
        *buf = _NSConcreteStackBlock;
        *&buf[8] = 3221225472;
        *&buf[16] = sub_1000E748C;
        *&buf[24] = &unk_1001DDB60;
        v76 = &v62;
        v42 = userIdentity2;
        v73 = v42;
        v74 = v43;
        v75 = v44;
        [userIdentityStore2 insertPropertiesForUserIdentity:v42 andPostAccountChangeNotification:0 usingBlock:v61 completionHandler:buf];

        v32 = v74;
      }

      _Block_object_dispose(&v62, 8);
    }
  }

  else if (self->_jaliscoRequestHandler)
  {
    if (reason == -1)
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
      v54 = handlerCopy;
      [(JaliscoRequestHandler *)jaliscoRequestHandler updateJaliscoLibraryByRemovingMediaKind:1 withClientIdentity:identityCopy completionHandler:v53];
    }

    else
    {
      musicLibrary = [(BaseRequestHandler *)self musicLibrary];
      [musicLibrary setJaliscoNeedsUpdateForTokens:1];

      v34 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        *&buf[4] = self;
        *&buf[12] = 1024;
        *&buf[14] = reason;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "%{public}@ - Updating Jalisco library for reason=%d, Setting jaliscoNeedsUpdateForTokens=YES", buf, 0x12u);
      }

      v35 = self->_jaliscoRequestHandler;
      v51[0] = _NSConcreteStackBlock;
      v51[1] = 3221225472;
      v51[2] = sub_100029D90;
      v51[3] = &unk_1001DFC28;
      v51[4] = self;
      v52 = handlerCopy;
      [(JaliscoRequestHandler *)v35 updateLibraryWithClientIdentity:identityCopy reason:6 completionHandler:v51];
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
      *&buf[14] = reason;
      *&buf[18] = 2048;
      *&buf[20] = v38;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "%{public}@ - Will not update Jalisco library for reason=%d _jaliscoRequestHandler=%p", buf, 0x1Cu);
    }

    if (handlerCopy)
    {
      calloutQueue = self->_calloutQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100029E4C;
      block[3] = &unk_1001DF5C8;
      v50 = handlerCopy;
      dispatch_async(calloutQueue, block);
    }
  }
}

- (void)enableCloudLibraryWithClientIdentity:(id)identity startInitialImport:(BOOL)import enableCloudLibraryPolicy:(int64_t)policy isExplicitUserAction:(BOOL)action completionHandler:(id)handler
{
  actionCopy = action;
  importCopy = import;
  identityCopy = identity;
  handlerCopy = handler;
  v14 = [ICAsyncBlockOperation alloc];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10002A2E8;
  v20[3] = &unk_1001DC7A0;
  v20[4] = self;
  v21 = identityCopy;
  v24 = importCopy;
  v25 = actionCopy;
  v22 = handlerCopy;
  policyCopy = policy;
  v15 = handlerCopy;
  v16 = identityCopy;
  v17 = [v14 initWithStartHandler:v20];
  v18 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    isPendingAuthentication = self->_isPendingAuthentication;
    *buf = 138544642;
    selfCopy = self;
    v28 = 2114;
    v29 = v17;
    v30 = 1024;
    v31 = importCopy;
    v32 = 1024;
    policyCopy2 = policy;
    v34 = 1024;
    v35 = actionCopy;
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

- (void)handleMusicAppRemovedWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = os_log_create("com.apple.amp.itunescloudd", "CloudLibraryCoordinator");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ - Handling music app removal", &v8, 0xCu);
  }

  configuration = [(BaseRequestHandler *)self configuration];
  clientIdentity = [configuration clientIdentity];
  [(ICDCloudMusicLibraryRequestHandler *)self disableCloudLibraryWithClientIdentity:clientIdentity reason:-5 completionHandler:completionCopy];
}

- (ICDCloudMusicLibraryRequestHandler)initWithConfiguration:(id)configuration
{
  v21.receiver = self;
  v21.super_class = ICDCloudMusicLibraryRequestHandler;
  v3 = [(BaseRequestHandler *)&v21 initWithConfiguration:configuration];
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
    isWatch = [v17 isWatch];

    if (isWatch)
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