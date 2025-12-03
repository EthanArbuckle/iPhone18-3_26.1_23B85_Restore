@interface CloudService
- (CloudService)initWithHandlerProvider:(id)provider;
- (ICDHandlerProviding)handlerProvider;
- (void)addGeniusPlaylistWithPersistentID:(int64_t)d name:(id)name seedItemSagaIDs:(id)ds itemSagaIDs:(id)iDs configuration:(id)configuration completion:(id)completion;
- (void)addItemWithSagaID:(int64_t)d toPlaylistWithPersistentID:(int64_t)iD configuration:(id)configuration completion:(id)completion;
- (void)addStoreItemWithAdamID:(int64_t)d referral:(id)referral configuration:(id)configuration completion:(id)completion;
- (void)addStoreItemWithAdamID:(int64_t)d referral:(id)referral toPlaylistWithPersistentID:(int64_t)iD configuration:(id)configuration completion:(id)completion;
- (void)addStoreItemsWithAdamIDs:(id)ds referral:(id)referral configuration:(id)configuration completion:(id)completion;
- (void)addStorePlaylistWithGlobalID:(id)d configuration:(id)configuration completion:(id)completion;
- (void)authenticateForConfiguration:(id)configuration startInitialImport:(BOOL)import enableCloudLibraryPolicy:(int64_t)policy isExplicitUserAction:(BOOL)action completion:(id)completion;
- (void)beginCollaborationUsingPlaylistWithPersistentID:(int64_t)d sharingMode:(unint64_t)mode configuration:(id)configuration completion:(id)completion;
- (void)createPlaylistWithPersistentID:(int64_t)d properties:(id)properties trackList:(id)list configuration:(id)configuration completion:(id)completion;
- (void)deauthenticateForConfiguration:(id)configuration completion:(id)completion;
- (void)deprioritizeAlbumArtistHeroImageForPersistentID:(int64_t)d configuration:(id)configuration;
- (void)deprioritizeArtistHeroImageForPersistentID:(int64_t)d configuration:(id)configuration;
- (void)deprioritizeContainerArtworkForSagaID:(unint64_t)d configuration:(id)configuration;
- (void)deprioritizeItemArtworkForPurchaseHistoryID:(unint64_t)d configuration:(id)configuration;
- (void)deprioritizeItemArtworkForSagaID:(unint64_t)d configuration:(id)configuration;
- (void)deprioritizeScreenshotForPurchaseHistoryID:(unint64_t)d configuration:(id)configuration;
- (void)deprioritizeScreenshotForSagaID:(unint64_t)d configuration:(id)configuration;
- (void)deprioritizeSubscriptionContainerArtworkForPersistentID:(int64_t)d configuration:(id)configuration;
- (void)deprioritizeSubscriptionItemArtworkForPersistentID:(int64_t)d configuration:(id)configuration;
- (void)deprioritizeSubscriptionScreenshotForPersistentID:(int64_t)d configuration:(id)configuration;
- (void)disableCloudLibraryWithReason:(int64_t)reason completion:(id)completion;
- (void)editCollaborationWithPersistentID:(int64_t)d configuration:(id)configuration properties:(id)properties trackEdits:(id)edits completion:(id)completion;
- (void)endCollaborationWithPersistentID:(int64_t)d configuration:(id)configuration completion:(id)completion;
- (void)favoriteAlbumWithPersistentID:(int64_t)d cloudLibraryID:(id)iD time:(id)time configuration:(id)configuration completionHandler:(id)handler;
- (void)favoriteArtistWithPersistentID:(int64_t)d cloudLibraryID:(id)iD time:(id)time configuration:(id)configuration completionHandler:(id)handler;
- (void)favoriteEntityWithPersistentID:(int64_t)d sagaID:(int64_t)iD entityType:(int64_t)type time:(id)time configuration:(id)configuration completionHandler:(id)handler;
- (void)favoriteEntityWithPersistentID:(int64_t)d storeID:(int64_t)iD entityType:(int64_t)type time:(id)time configuration:(id)configuration completionHandler:(id)handler;
- (void)favoritePlaylistWithPersistentID:(int64_t)d globalID:(id)iD time:(id)time configuration:(id)configuration completionHandler:(id)handler;
- (void)fetchEnhancedAudioOfflineKeys;
- (void)hideItemsWithPurchaseHistoryIDs:(id)ds configuration:(id)configuration completion:(id)completion;
- (void)importAlbumArtistHeroImageForPersistentID:(int64_t)d configuration:(id)configuration completion:(id)completion;
- (void)importArtistHeroImageForPersistentID:(int64_t)d configuration:(id)configuration completion:(id)completion;
- (void)importContainerArtworkForSagaID:(unint64_t)d artworkVariantType:(int64_t)type configuration:(id)configuration completion:(id)completion;
- (void)importContainerArtworkForSagaID:(unint64_t)d configuration:(id)configuration completion:(id)completion;
- (void)importItemArtworkForPurchaseHistoryID:(unint64_t)d configuration:(id)configuration completion:(id)completion;
- (void)importItemArtworkForSagaID:(unint64_t)d configuration:(id)configuration completion:(id)completion;
- (void)importScreenshotForPurchaseHistoryID:(unint64_t)d configuration:(id)configuration completion:(id)completion;
- (void)importScreenshotForSagaID:(unint64_t)d configuration:(id)configuration completion:(id)completion;
- (void)importSubscriptionContainerArtworkForPersistentID:(int64_t)d configuration:(id)configuration completion:(id)completion;
- (void)importSubscriptionItemArtworkForPersistentID:(int64_t)d configuration:(id)configuration completion:(id)completion;
- (void)importSubscriptionScreenshotForPersistentID:(int64_t)d configuration:(id)configuration completion:(id)completion;
- (void)isMediaKindDisabledForJaliscoLibrary:(int64_t)library configuration:(id)configuration completion:(id)completion;
- (void)isSagaAuthenticatedForConfiguration:(id)configuration completion:(id)completion;
- (void)joinCollaborationWithGlobalPlaylistID:(id)d invitationURL:(id)l configuration:(id)configuration completion:(id)completion;
- (void)listCloudServerOperations;
- (void)loadArtworkInfoForContainerSagaIDs:(id)ds configuration:(id)configuration completion:(id)completion;
- (void)loadArtworkInfoForPurchaseHistoryIDs:(id)ds configuration:(id)configuration completion:(id)completion;
- (void)loadArtworkInfoForSagaIDs:(id)ds configuration:(id)configuration completion:(id)completion;
- (void)loadArtworkInfoForSubscriptionContainerPersistentIDs:(id)ds configuration:(id)configuration completion:(id)completion;
- (void)loadArtworkInfoForSubscriptionItemPersistentIDs:(id)ds configuration:(id)configuration completion:(id)completion;
- (void)loadBooksForStoreIDs:(id)ds configuration:(id)configuration completion:(id)completion;
- (void)loadGeniusItemsForSagaID:(unint64_t)d configuration:(id)configuration completion:(id)completion;
- (void)loadIsJaliscoUpdateInProgressForConfiguration:(id)configuration completion:(id)completion;
- (void)loadIsSagaUpdateInProgressForConfiguration:(id)configuration completion:(id)completion;
- (void)loadIsUpdateInProgressForConfiguration:(id)configuration completion:(id)completion;
- (void)loadJaliscoUpdateProgressForConfiguration:(id)configuration completion:(id)completion;
- (void)loadLastKnownEnableICMLErrorStatusForConfiguration:(id)configuration completion:(id)completion;
- (void)loadMissingArtworkForConfiguration:(id)configuration;
- (void)loadSagaUpdateProgressForConfiguration:(id)configuration completion:(id)completion;
- (void)loadScreenshotInfoForPurchaseHistoryIDs:(id)ds configuration:(id)configuration completion:(id)completion;
- (void)loadScreenshotInfoForSagaIDs:(id)ds configuration:(id)configuration completion:(id)completion;
- (void)loadScreenshotInfoForSubscriptionPersistentIDs:(id)ds configuration:(id)configuration completion:(id)completion;
- (void)loadUpdateProgressForConfiguration:(id)configuration completion:(id)completion;
- (void)movePinnedAlbumWithPersistentID:(int64_t)d cloudAlbumID:(id)iD toPosition:(int64_t)position configuration:(id)configuration completion:(id)completion;
- (void)movePinnedArtistWithPersistentID:(int64_t)d cloudArtistID:(id)iD toPosition:(int64_t)position configuration:(id)configuration completion:(id)completion;
- (void)movePinnedEntityWithPersistentID:(int64_t)d cloudID:(int64_t)iD type:(int64_t)type toPosition:(int64_t)position configuration:(id)configuration completion:(id)completion;
- (void)pinLibraryAlbumWithPersistentID:(int64_t)d cloudAlbumID:(id)iD defaultAction:(int64_t)action configuration:(id)configuration completion:(id)completion;
- (void)pinLibraryArtistWithPersistentID:(int64_t)d cloudArtistID:(id)iD defaultAction:(int64_t)action configuration:(id)configuration completion:(id)completion;
- (void)pinLibraryEntityWithPersistentID:(int64_t)d cloudID:(int64_t)iD type:(int64_t)type defaultAction:(int64_t)action configuration:(id)configuration completion:(id)completion;
- (void)prepareToDownloadAllLibraryPinnedEntitiesForConfiguration:(id)configuration;
- (void)processPendingKeyInvalidations;
- (void)publishPlaylistWithSagaID:(int64_t)d configuration:(id)configuration completion:(id)completion;
- (void)refreshEnhancedAudioSharedKeys;
- (void)removeCollaborators:(id)collaborators fromCollaborationWithPersistentID:(int64_t)d configuration:(id)configuration completion:(id)completion;
- (void)removeItemsWithSagaIDs:(id)ds configuration:(id)configuration completion:(id)completion;
- (void)removeJaliscoLibraryForConfiguration:(id)configuration completion:(id)completion;
- (void)removePinnedAlbumWithPersistentID:(int64_t)d cloudAlbumID:(id)iD configuration:(id)configuration completion:(id)completion;
- (void)removePinnedArtistWithPersistentID:(int64_t)d cloudArtistID:(id)iD configuration:(id)configuration completion:(id)completion;
- (void)removePinnedEntityWithPersistentID:(int64_t)d cloudID:(int64_t)iD type:(int64_t)type configuration:(id)configuration completion:(id)completion;
- (void)resetInvitationURLForCollaborationWithPersistentID:(int64_t)d configuration:(id)configuration completion:(id)completion;
- (void)sdk_addItemWithSagaID:(int64_t)d toPlaylistWithPersistentID:(int64_t)iD configuration:(id)configuration completion:(id)completion;
- (void)sdk_addStoreItemWithOpaqueID:(id)d configuration:(id)configuration completion:(id)completion;
- (void)sdk_addStoreItemWithOpaqueID:(id)d toPlaylistWithPersistentID:(int64_t)iD configuration:(id)configuration completion:(id)completion;
- (void)sdk_createPlaylistWithPersistentID:(int64_t)d properties:(id)properties trackList:(id)list configuration:(id)configuration completion:(id)completion;
- (void)sdk_setPlaylistProperties:(id)properties trackList:(id)list forPlaylistPersistentID:(int64_t)d configuration:(id)configuration completion:(id)completion;
- (void)setAlbumArtistProperties:(id)properties forAlbumArtistPersistentID:(int64_t)d configuration:(id)configuration completion:(id)completion;
- (void)setAlbumEntityProperties:(id)properties forAlbumPersistentID:(int64_t)d configuration:(id)configuration completion:(id)completion;
- (void)setAlbumProperties:(id)properties forAlbumPersistentID:(int64_t)d configuration:(id)configuration completion:(id)completion;
- (void)setCloudAddToPlaylistBehavior:(int64_t)behavior forConfiguration:(id)configuration completion:(id)completion;
- (void)setCloudFavoriteSongAddToLibraryBehavior:(int64_t)behavior forConfiguration:(id)configuration completion:(id)completion;
- (void)setItemProperties:(id)properties forPurchaseHistoryID:(unint64_t)d configuration:(id)configuration completion:(id)completion;
- (void)setItemProperties:(id)properties forSagaID:(unint64_t)d configuration:(id)configuration completion:(id)completion;
- (void)setPlaylistProperties:(id)properties trackList:(id)list forPlaylistPersistentID:(int64_t)d configuration:(id)configuration completion:(id)completion;
- (void)setPreferredVideoQuality:(int64_t)quality forConfiguration:(id)configuration completion:(id)completion;
- (void)setupInitialJaliscoPoolingForConfiguration:(id)configuration;
- (void)setupInitialSagaPoolingForConfiguration:(id)configuration;
- (void)updateArtistHeroImagesForConfiguration:(id)configuration;
- (void)updateJaliscoLibraryWithReason:(int64_t)reason forConfiguration:(id)configuration completion:(id)completion;
- (void)updatePinnedLibraryAlbumWithPersistentID:(int64_t)d cloudAlbumID:(id)iD defaultAction:(int64_t)action configuration:(id)configuration completion:(id)completion;
- (void)updatePinnedLibraryArtistWithPersistentID:(int64_t)d cloudArtistID:(id)iD defaultAction:(int64_t)action configuration:(id)configuration completion:(id)completion;
- (void)updatePinnedLibraryEntityWithPersistentID:(int64_t)d cloudID:(int64_t)iD type:(int64_t)type defaultAction:(int64_t)action configuration:(id)configuration completion:(id)completion;
- (void)updatePinnedSubscribedPlaylistsWithConfiguration:(id)configuration completion:(id)completion;
- (void)updateSagaLibraryWithReason:(int64_t)reason forConfiguration:(id)configuration completion:(id)completion;
- (void)uploadArtworkForPlaylistWithPersistentID:(int64_t)d configuration:(id)configuration completion:(id)completion;
- (void)uploadCloudItemPropertiesForConfiguration:(id)configuration completion:(id)completion;
- (void)uploadCloudPlaylistPropertiesForConfiguration:(id)configuration completion:(id)completion;
@end

@implementation CloudService

- (ICDHandlerProviding)handlerProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_handlerProvider);

  return WeakRetained;
}

- (void)processPendingKeyInvalidations
{
  v2 = +[ICDServer server];
  [v2 processPendingKeyInvalidations];
}

- (void)listCloudServerOperations
{
  v2 = +[ICDServer server];
  [v2 listCloudServerOperations];
}

- (void)fetchEnhancedAudioOfflineKeys
{
  v2 = +[ICDServer server];
  [v2 fetchEnhancedAudioOfflineKeys];
}

- (void)refreshEnhancedAudioSharedKeys
{
  v2 = +[ICDServer server];
  [v2 refreshEnhancedAudioSharedKeys];
}

- (void)resetInvitationURLForCollaborationWithPersistentID:(int64_t)d configuration:(id)configuration completion:(id)completion
{
  completionCopy = completion;
  configurationCopy = configuration;
  v10 = os_log_create("com.apple.amp.itunescloudd", "XPC");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy2 = self;
    v20 = 2048;
    dCopy = d;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ Received request to reset invitation URL with collaboration persistent ID %lld.", buf, 0x16u);
  }

  handlerProvider = [(CloudService *)self handlerProvider];
  v17 = 0;
  v12 = [handlerProvider handlerWithType:0 configuration:configurationCopy error:&v17];

  v13 = v17;
  if (v12)
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100096CD0;
    v15[3] = &unk_1001DC7C8;
    v16 = completionCopy;
    [v12 resetInvitationURLForCollaborationWithPersistentID:d completion:v15];
  }

  else
  {
    v14 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      selfCopy2 = self;
      v20 = 2114;
      dCopy = v13;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "CloudService %p - removeCollaborator Unable to service request for cloud library - error=%{public}@", buf, 0x16u);
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0, v13);
    }
  }
}

- (void)removeCollaborators:(id)collaborators fromCollaborationWithPersistentID:(int64_t)d configuration:(id)configuration completion:(id)completion
{
  collaboratorsCopy = collaborators;
  completionCopy = completion;
  configurationCopy = configuration;
  v13 = os_log_create("com.apple.amp.itunescloudd", "XPC");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    msv_compactDescription = [collaboratorsCopy msv_compactDescription];
    *buf = 138543874;
    selfCopy2 = self;
    v24 = 2114;
    v25 = msv_compactDescription;
    v26 = 2048;
    dCopy = d;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ Received remove collaborator request with collaborator %{public}@, persistent ID %lld.", buf, 0x20u);
  }

  handlerProvider = [(CloudService *)self handlerProvider];
  v21 = 0;
  v16 = [handlerProvider handlerWithType:0 configuration:configurationCopy error:&v21];

  v17 = v21;
  if (v16)
  {
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100096F38;
    v19[3] = &unk_1001DD8F0;
    v20 = completionCopy;
    [v16 removeCollaborators:collaboratorsCopy fromCollaborationWithPersistentID:d completion:v19];
  }

  else
  {
    v18 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      selfCopy2 = self;
      v24 = 2114;
      v25 = v17;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "CloudService %p - removeCollaborator Unable to service request for cloud library - error=%{public}@", buf, 0x16u);
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, v17);
    }
  }
}

- (void)joinCollaborationWithGlobalPlaylistID:(id)d invitationURL:(id)l configuration:(id)configuration completion:(id)completion
{
  dCopy = d;
  lCopy = l;
  completionCopy = completion;
  configurationCopy = configuration;
  v14 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy2 = self;
    v24 = 2114;
    v25 = dCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ joining collaboration with global playlist ID %{public}@.", buf, 0x16u);
  }

  handlerProvider = [(CloudService *)self handlerProvider];
  v21 = 0;
  v16 = [handlerProvider handlerWithType:0 configuration:configurationCopy error:&v21];

  v17 = v21;
  if (v16)
  {
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000973EC;
    v19[3] = &unk_1001DC690;
    v20 = completionCopy;
    [v16 joinCollaborationWithGlobalPlaylistID:dCopy invitationURL:lCopy completion:v19];
  }

  else
  {
    v18 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      selfCopy2 = self;
      v24 = 2114;
      v25 = v17;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "CloudService %p - joinCollaborationWithGlobalPlaylistID Unable to service request for cloud library - error=%{public}@", buf, 0x16u);
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0, v17);
    }
  }
}

- (void)editCollaborationWithPersistentID:(int64_t)d configuration:(id)configuration properties:(id)properties trackEdits:(id)edits completion:(id)completion
{
  propertiesCopy = properties;
  editsCopy = edits;
  completionCopy = completion;
  configurationCopy = configuration;
  v16 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy2 = self;
    v26 = 2048;
    dCopy = d;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ Editing collaboration with persistentID %lld.", buf, 0x16u);
  }

  handlerProvider = [(CloudService *)self handlerProvider];
  v23 = 0;
  v18 = [handlerProvider handlerWithType:0 configuration:configurationCopy error:&v23];

  v19 = v23;
  if (v18)
  {
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10009764C;
    v21[3] = &unk_1001DD8F0;
    v22 = completionCopy;
    [v18 editCollaborationWithPersistentID:d properties:propertiesCopy trackEdits:editsCopy completion:v21];
  }

  else
  {
    v20 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      selfCopy2 = self;
      v26 = 2114;
      dCopy = v19;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "CloudService %p - editCollaborationWithCloudLibraryID Unable to service request for cloud library - error=%{public}@", buf, 0x16u);
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, v19);
    }
  }
}

- (void)endCollaborationWithPersistentID:(int64_t)d configuration:(id)configuration completion:(id)completion
{
  completionCopy = completion;
  configurationCopy = configuration;
  v10 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy2 = self;
    v20 = 2048;
    dCopy = d;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ Ending collaboration with persistentID %lld.", buf, 0x16u);
  }

  handlerProvider = [(CloudService *)self handlerProvider];
  v17 = 0;
  v12 = [handlerProvider handlerWithType:0 configuration:configurationCopy error:&v17];

  v13 = v17;
  if (v12)
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10009787C;
    v15[3] = &unk_1001DC690;
    v16 = completionCopy;
    [v12 endCollaborationWithPersistentID:d completion:v15];
  }

  else
  {
    v14 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      selfCopy2 = self;
      v20 = 2114;
      dCopy = v13;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "CloudService %p - endCollaborationUsingPlaylistWithCloudLibraryID Unable to service request for cloud library - error=%{public}@", buf, 0x16u);
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0, v13);
    }
  }
}

- (void)beginCollaborationUsingPlaylistWithPersistentID:(int64_t)d sharingMode:(unint64_t)mode configuration:(id)configuration completion:(id)completion
{
  completionCopy = completion;
  configurationCopy = configuration;
  v12 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy2 = self;
    v22 = 2048;
    dCopy = d;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ Starting collaboration using persistentID %lld.", buf, 0x16u);
  }

  handlerProvider = [(CloudService *)self handlerProvider];
  v19 = 0;
  v14 = [handlerProvider handlerWithType:0 configuration:configurationCopy error:&v19];

  v15 = v19;
  if (v14)
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100097AC0;
    v17[3] = &unk_1001DC690;
    v18 = completionCopy;
    [v14 beginCollaborationUsingPlaylistWithPersistentID:d sharingMode:mode completion:v17];
  }

  else
  {
    v16 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      selfCopy2 = self;
      v22 = 2114;
      dCopy = v15;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "CloudService %p - beginCollaborationUsingPlaylistWithPersistentID Unable to service request for cloud library - error=%{public}@", buf, 0x16u);
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0, v15);
    }
  }
}

- (void)updatePinnedSubscribedPlaylistsWithConfiguration:(id)configuration completion:(id)completion
{
  configurationCopy = configuration;
  completionCopy = completion;
  handlerProvider = [(CloudService *)self handlerProvider];
  v13 = 0;
  v9 = [handlerProvider handlerWithType:0 configuration:configurationCopy error:&v13];
  v10 = v13;

  if (v9)
  {
    clientIdentity = [configurationCopy clientIdentity];
    [v9 updateSubscribedPlaylistsWithSagaIDs:0 ignoreMinRefreshInterval:0 requestReason:14 pinnedOnly:1 clientIdentity:clientIdentity completionHandler:completionCopy];
  }

  else
  {
    v12 = os_log_create("com.apple.amp.itunescloudd", "PurchaseSync");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      selfCopy = self;
      v16 = 2114;
      v17 = v10;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "CloudService %p - updatePinnedSubscribedPlaylistsWithConfiguration Unable to service request for cloud library - error=%{public}@", buf, 0x16u);
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy, v10);
    }
  }
}

- (void)disableCloudLibraryWithReason:(int64_t)reason completion:(id)completion
{
  completionCopy = completion;
  v7 = +[NSXPCConnection currentConnection];
  v8 = v7;
  if (v7)
  {
    [v7 auditToken];
    v9 = MSVTCCIdentityForAuditToken();
  }

  else
  {
    v9 = MSVTCCIdentityForCurrentProcess();
  }

  v10 = v9;
  v11 = [ICAsyncBlockOperation alloc];
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_100097D7C;
  v18 = &unk_1001DC900;
  v19 = v10;
  selfCopy = self;
  v21 = completionCopy;
  reasonCopy = reason;
  v12 = completionCopy;
  v13 = v10;
  v14 = [v11 initWithStartHandler:&v15];
  [(NSOperationQueue *)self->_operationQueue addOperation:v14, v15, v16, v17, v18];
}

- (void)authenticateForConfiguration:(id)configuration startInitialImport:(BOOL)import enableCloudLibraryPolicy:(int64_t)policy isExplicitUserAction:(BOOL)action completion:(id)completion
{
  configurationCopy = configuration;
  completionCopy = completion;
  v14 = [ICAsyncBlockOperation alloc];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100098070;
  v18[3] = &unk_1001DC7A0;
  v18[4] = self;
  v19 = configurationCopy;
  importCopy = import;
  actionCopy = action;
  v20 = completionCopy;
  policyCopy = policy;
  v15 = completionCopy;
  v16 = configurationCopy;
  v17 = [v14 initWithStartHandler:v18];
  [(NSOperationQueue *)self->_operationQueue addOperation:v17];
}

- (void)loadUpdateProgressForConfiguration:(id)configuration completion:(id)completion
{
  completionCopy = completion;
  configurationCopy = configuration;
  handlerProvider = [(CloudService *)self handlerProvider];
  v14 = 0;
  v9 = [handlerProvider handlerWithType:0 configuration:configurationCopy error:&v14];

  v10 = v14;
  if (v9)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000983CC;
    v12[3] = &unk_1001DC778;
    v13 = completionCopy;
    [v9 updateCloudLibraryProgressWithCompletion:v12];
  }

  else
  {
    v11 = os_log_create("com.apple.amp.itunescloudd", "PurchaseSync");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      selfCopy = self;
      v17 = 2114;
      v18 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "CloudService %p - loadUpdateProgressForConfiguration: - Unable to service purchase request - error=%{public}@", buf, 0x16u);
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, v10, 0.0);
    }
  }
}

- (void)loadIsUpdateInProgressForConfiguration:(id)configuration completion:(id)completion
{
  completionCopy = completion;
  configurationCopy = configuration;
  handlerProvider = [(CloudService *)self handlerProvider];
  v14 = 0;
  v9 = [handlerProvider handlerWithType:0 configuration:configurationCopy error:&v14];

  v10 = v14;
  if (v9)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10009859C;
    v12[3] = &unk_1001DC5F0;
    v12[4] = self;
    v13 = completionCopy;
    [v9 isUpdatingCloudLibraryWithCompletion:v12];
  }

  else
  {
    v11 = os_log_create("com.apple.amp.itunescloudd", "PurchaseSync");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      selfCopy = self;
      v17 = 2114;
      v18 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "CloudService %p - loadIsUpdateInProgressForConfiguration: - Unable to service purchase request - error=%{public}@", buf, 0x16u);
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0, 0);
    }
  }
}

- (void)importSubscriptionContainerArtworkForPersistentID:(int64_t)d configuration:(id)configuration completion:(id)completion
{
  configurationCopy = configuration;
  completionCopy = completion;
  handlerProvider = [(CloudService *)self handlerProvider];
  v15 = 0;
  v11 = [handlerProvider handlerWithType:0 configuration:configurationCopy error:&v15];
  v12 = v15;

  if (v11)
  {
    clientIdentity = [configurationCopy clientIdentity];
    [v11 importContainerArtworkForPersistentID:d clientIdentity:clientIdentity completionHandler:completionCopy];
  }

  else
  {
    v14 = os_log_create("com.apple.amp.itunescloudd", "XPC");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      selfCopy = self;
      v18 = 2114;
      v19 = v12;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "CloudService %p -  Unable to service importSubscriptionContainerArtworkForPersistentID request - error=%{public}@", buf, 0x16u);
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy, v12);
    }
  }
}

- (void)loadMissingArtworkForConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "loadMissingArtworkForConfiguration: - Sending request to load missing artwork", buf, 2u);
  }

  handlerProvider = [(CloudService *)self handlerProvider];
  v10 = 0;
  v7 = [handlerProvider handlerWithType:0 configuration:configurationCopy error:&v10];
  v8 = v10;
  if (v7)
  {
    clientIdentity = [configurationCopy clientIdentity];
    [v7 loadMissingArtworkWithClientIdentity:clientIdentity];
  }

  else
  {
    clientIdentity = os_log_create("com.apple.amp.itunescloudd", "Artwork");
    if (os_log_type_enabled(clientIdentity, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      selfCopy = self;
      v13 = 2114;
      v14 = v8;
      _os_log_impl(&_mh_execute_header, clientIdentity, OS_LOG_TYPE_ERROR, "CloudService %p - loadMissingArtworkForConfiguration: - Unable to service request - error=%{public}@", buf, 0x16u);
    }
  }
}

- (void)loadArtworkInfoForSubscriptionContainerPersistentIDs:(id)ds configuration:(id)configuration completion:(id)completion
{
  dsCopy = ds;
  configurationCopy = configuration;
  completionCopy = completion;
  handlerProvider = [(CloudService *)self handlerProvider];
  v18 = 0;
  v12 = [handlerProvider handlerWithType:0 configuration:configurationCopy error:&v18];
  v13 = v18;

  if (v12)
  {
    clientIdentity = [configurationCopy clientIdentity];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100098BA8;
    v16[3] = &unk_1001DC640;
    v16[4] = self;
    v17 = completionCopy;
    [v12 loadArtworkInfoForSubscriptionContainerPersistentIDs:dsCopy clientIdentity:clientIdentity completionHandler:v16];
  }

  else
  {
    v15 = os_log_create("com.apple.amp.itunescloudd", "XPC");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      selfCopy = self;
      v21 = 2114;
      v22 = v13;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "CloudService %p -  Unable to service loadArtworkInfoForSubscriptionItemPersistentIDs request - error=%{public}@", buf, 0x16u);
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, v13, 0);
    }
  }
}

- (void)loadScreenshotInfoForSubscriptionPersistentIDs:(id)ds configuration:(id)configuration completion:(id)completion
{
  dsCopy = ds;
  configurationCopy = configuration;
  completionCopy = completion;
  handlerProvider = [(CloudService *)self handlerProvider];
  v18 = 0;
  v12 = [handlerProvider handlerWithType:0 configuration:configurationCopy error:&v18];
  v13 = v18;

  if (v12)
  {
    clientIdentity = [configurationCopy clientIdentity];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100098E94;
    v16[3] = &unk_1001DC640;
    v16[4] = self;
    v17 = completionCopy;
    [v12 loadScreenshotInfoForSubscriptionPersistentIDs:dsCopy clientIdentity:clientIdentity completionHandler:v16];
  }

  else
  {
    v15 = os_log_create("com.apple.amp.itunescloudd", "XPC");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      selfCopy = self;
      v21 = 2114;
      v22 = v13;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "CloudService %p -  Unable to service loadArtworkInfoForSubscriptionItemPersistentIDs request - error=%{public}@", buf, 0x16u);
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, v13, 0);
    }
  }
}

- (void)loadArtworkInfoForSubscriptionItemPersistentIDs:(id)ds configuration:(id)configuration completion:(id)completion
{
  dsCopy = ds;
  configurationCopy = configuration;
  completionCopy = completion;
  handlerProvider = [(CloudService *)self handlerProvider];
  v18 = 0;
  v12 = [handlerProvider handlerWithType:0 configuration:configurationCopy error:&v18];
  v13 = v18;

  if (v12)
  {
    clientIdentity = [configurationCopy clientIdentity];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100099180;
    v16[3] = &unk_1001DC640;
    v16[4] = self;
    v17 = completionCopy;
    [v12 loadArtworkInfoForSubscriptionItemPersistentIDs:dsCopy clientIdentity:clientIdentity completionHandler:v16];
  }

  else
  {
    v15 = os_log_create("com.apple.amp.itunescloudd", "XPC");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      selfCopy = self;
      v21 = 2114;
      v22 = v13;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "CloudService %p -  Unable to service loadArtworkInfoForSubscriptionItemPersistentIDs request - error=%{public}@", buf, 0x16u);
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, v13, 0);
    }
  }
}

- (void)deprioritizeSubscriptionContainerArtworkForPersistentID:(int64_t)d configuration:(id)configuration
{
  configurationCopy = configuration;
  handlerProvider = [(CloudService *)self handlerProvider];
  v11 = 0;
  v8 = [handlerProvider handlerWithType:0 configuration:configurationCopy error:&v11];

  v9 = v11;
  if (v8)
  {
    [v8 deprioritizeSubscriptionContainerArtworkForPersistentID:d];
  }

  else
  {
    v10 = os_log_create("com.apple.amp.itunescloudd", "XPC");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      selfCopy = self;
      v14 = 2114;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "CloudService %p -  Unable to service deprioritizeSubscriptionScreenshotForPersistentID request - error=%{public}@", buf, 0x16u);
    }
  }
}

- (void)deprioritizeSubscriptionScreenshotForPersistentID:(int64_t)d configuration:(id)configuration
{
  configurationCopy = configuration;
  handlerProvider = [(CloudService *)self handlerProvider];
  v11 = 0;
  v8 = [handlerProvider handlerWithType:0 configuration:configurationCopy error:&v11];

  v9 = v11;
  if (v8)
  {
    [v8 deprioritizeSubscriptionScreenshotForPersistentID:d];
  }

  else
  {
    v10 = os_log_create("com.apple.amp.itunescloudd", "XPC");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      selfCopy = self;
      v14 = 2114;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "CloudService %p -  Unable to service deprioritizeSubscriptionScreenshotForPersistentID request - error=%{public}@", buf, 0x16u);
    }
  }
}

- (void)deprioritizeSubscriptionItemArtworkForPersistentID:(int64_t)d configuration:(id)configuration
{
  configurationCopy = configuration;
  handlerProvider = [(CloudService *)self handlerProvider];
  v11 = 0;
  v8 = [handlerProvider handlerWithType:0 configuration:configurationCopy error:&v11];

  v9 = v11;
  if (v8)
  {
    [v8 deprioritizeSubscriptionItemArtworkForPersistentID:d];
  }

  else
  {
    v10 = os_log_create("com.apple.amp.itunescloudd", "XPC");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      selfCopy = self;
      v14 = 2114;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "CloudService %p -  Unable to service deprioritizeSubscriptionItemArtworkForPersistentID request - error=%{public}@", buf, 0x16u);
    }
  }
}

- (void)importSubscriptionScreenshotForPersistentID:(int64_t)d configuration:(id)configuration completion:(id)completion
{
  configurationCopy = configuration;
  completionCopy = completion;
  handlerProvider = [(CloudService *)self handlerProvider];
  v15 = 0;
  v11 = [handlerProvider handlerWithType:0 configuration:configurationCopy error:&v15];
  v12 = v15;

  if (v11)
  {
    clientIdentity = [configurationCopy clientIdentity];
    [v11 importScreenshotForPersistentID:d clientIdentity:clientIdentity completionHandler:completionCopy];
  }

  else
  {
    v14 = os_log_create("com.apple.amp.itunescloudd", "XPC");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      selfCopy = self;
      v18 = 2114;
      v19 = v12;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "CloudService %p -  Unable to service importSubscriptionScreenshotForPersistentID request - error=%{public}@", buf, 0x16u);
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy, v12);
    }
  }
}

- (void)importSubscriptionItemArtworkForPersistentID:(int64_t)d configuration:(id)configuration completion:(id)completion
{
  configurationCopy = configuration;
  completionCopy = completion;
  handlerProvider = [(CloudService *)self handlerProvider];
  v15 = 0;
  v11 = [handlerProvider handlerWithType:0 configuration:configurationCopy error:&v15];
  v12 = v15;

  if (v11)
  {
    clientIdentity = [configurationCopy clientIdentity];
    [v11 importItemArtworkForPersistentID:d clientIdentity:clientIdentity completionHandler:completionCopy];
  }

  else
  {
    v14 = os_log_create("com.apple.amp.itunescloudd", "XPC");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      selfCopy = self;
      v18 = 2114;
      v19 = v12;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "CloudService %p -  Unable to service importSubscriptionItemArtworkForPersistentID request - error=%{public}@", buf, 0x16u);
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy, v12);
    }
  }
}

- (void)importAlbumArtistHeroImageForPersistentID:(int64_t)d configuration:(id)configuration completion:(id)completion
{
  configurationCopy = configuration;
  completionCopy = completion;
  handlerProvider = [(CloudService *)self handlerProvider];
  v19 = 0;
  v12 = [handlerProvider handlerWithType:1 configuration:configurationCopy error:&v19];
  v13 = v19;

  if (!v13)
  {
    if (v12)
    {
      clientIdentity = [configurationCopy clientIdentity];
      [v12 importAlbumArtistHeroImageForPersistentID:d clientIdentity:clientIdentity completionHandler:completionCopy];
    }

    else
    {
      v17 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218240;
        selfCopy2 = self;
        v24 = 2048;
        dCopy = d;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "CloudService %p - Skipping album artist hero import (unsupported device) for persistentID: %lld", buf, 0x16u);
      }

      v20 = NSDebugDescriptionErrorKey;
      v21 = @"Artist images are not supported on this device.";
      clientIdentity = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
      v18 = [NSError ic_cloudClientErrorWithCode:2005 userInfo:clientIdentity];
      completionCopy[2](completionCopy, v18);
    }

    goto LABEL_11;
  }

  v14 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v15 = NSStringFromSelector(a2);
    *buf = 134218498;
    selfCopy2 = self;
    v24 = 2114;
    dCopy = v15;
    v26 = 2114;
    v27 = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "CloudService %p - %{public}@ - Unable to service artwork request - error=%{public}@", buf, 0x20u);
  }

  if (completionCopy)
  {
    clientIdentity = objc_retainBlock(completionCopy);
    clientIdentity[2](clientIdentity, v13);
LABEL_11:
  }
}

- (void)importArtistHeroImageForPersistentID:(int64_t)d configuration:(id)configuration completion:(id)completion
{
  configurationCopy = configuration;
  completionCopy = completion;
  handlerProvider = [(CloudService *)self handlerProvider];
  v19 = 0;
  v12 = [handlerProvider handlerWithType:1 configuration:configurationCopy error:&v19];
  v13 = v19;

  if (!v13)
  {
    if (v12)
    {
      clientIdentity = [configurationCopy clientIdentity];
      [v12 importArtistHeroImageForPersistentID:d clientIdentity:clientIdentity completionHandler:completionCopy];
    }

    else
    {
      v17 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218240;
        selfCopy2 = self;
        v24 = 2048;
        dCopy = d;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "CloudService %p - importArtistHeroImageForPersistentID: - Skipping artist hero import (unsupported device) for persistentID: %lld", buf, 0x16u);
      }

      v20 = NSDebugDescriptionErrorKey;
      v21 = @"Artist images are not supported on this device.";
      clientIdentity = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
      v18 = [NSError ic_cloudClientErrorWithCode:2005 userInfo:clientIdentity];
      completionCopy[2](completionCopy, v18);
    }

    goto LABEL_11;
  }

  v14 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v15 = NSStringFromSelector(a2);
    *buf = 134218498;
    selfCopy2 = self;
    v24 = 2114;
    dCopy = v15;
    v26 = 2114;
    v27 = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "CloudService %p - %{public}@ - Unable to service artwork request - error=%{public}@", buf, 0x20u);
  }

  if (completionCopy)
  {
    clientIdentity = objc_retainBlock(completionCopy);
    clientIdentity[2](clientIdentity, v13);
LABEL_11:
  }
}

- (void)updateArtistHeroImagesForConfiguration:(id)configuration
{
  configurationCopy = configuration;
  handlerProvider = [(CloudService *)self handlerProvider];
  v14 = 0;
  v6 = [handlerProvider handlerWithType:1 configuration:configurationCopy error:&v14];
  v7 = v14;

  if (v7)
  {
    clientIdentity = os_log_create("com.apple.amp.itunescloudd", "Artwork");
    if (os_log_type_enabled(clientIdentity, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      selfCopy3 = self;
      v17 = 2114;
      v18 = v7;
      v9 = "CloudService %p - updateArtistHeroImagesForConfiguration: - Unable to service artwork request - error=%{public}@";
      v10 = clientIdentity;
      v11 = OS_LOG_TYPE_ERROR;
      v12 = 22;
LABEL_4:
      _os_log_impl(&_mh_execute_header, v10, v11, v9, buf, v12);
    }
  }

  else
  {
    v13 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
    clientIdentity = v13;
    if (!v6)
    {
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_11;
      }

      *buf = 134217984;
      selfCopy3 = self;
      v9 = "CloudService %p - updateArtistHeroImagesForConfiguration: - Skipping artist hero image update (unsupported device)";
      v10 = clientIdentity;
      v11 = OS_LOG_TYPE_DEBUG;
      v12 = 12;
      goto LABEL_4;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      selfCopy3 = self;
      _os_log_impl(&_mh_execute_header, clientIdentity, OS_LOG_TYPE_DEFAULT, "CloudService %p - updateArtistHeroImagesForConfiguration: - Received request to update artist hero images.", buf, 0xCu);
    }

    clientIdentity = [configurationCopy clientIdentity];
    [v6 updateArtistHeroImagesWithClientIdentity:clientIdentity];
  }

LABEL_11:
}

- (void)deprioritizeAlbumArtistHeroImageForPersistentID:(int64_t)d configuration:(id)configuration
{
  configurationCopy = configuration;
  handlerProvider = [(CloudService *)self handlerProvider];
  v11 = 0;
  v8 = [handlerProvider handlerWithType:1 configuration:configurationCopy error:&v11];

  v9 = v11;
  if (v9)
  {
    v10 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      selfCopy = self;
      v14 = 2114;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "CloudService %p - deprioritizeAlbumArtistHeroImageForPersistentID: - Unable to service artist image request - error=%{public}@", buf, 0x16u);
    }
  }

  else
  {
    [v8 deprioritizeAlbumArtistHeroImageForPersistentID:d];
  }
}

- (void)deprioritizeArtistHeroImageForPersistentID:(int64_t)d configuration:(id)configuration
{
  configurationCopy = configuration;
  handlerProvider = [(CloudService *)self handlerProvider];
  v11 = 0;
  v8 = [handlerProvider handlerWithType:1 configuration:configurationCopy error:&v11];

  v9 = v11;
  if (v9)
  {
    v10 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      selfCopy = self;
      v14 = 2114;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "CloudService %p - deprioritizeArtistHeroImageForPersistentID: - Unable to service artist image request - error=%{public}@", buf, 0x16u);
    }
  }

  else
  {
    [v8 deprioritizeArtistHeroImageForPersistentID:d];
  }
}

- (void)setItemProperties:(id)properties forPurchaseHistoryID:(unint64_t)d configuration:(id)configuration completion:(id)completion
{
  propertiesCopy = properties;
  configurationCopy = configuration;
  completionCopy = completion;
  handlerProvider = [(CloudService *)self handlerProvider];
  v18 = 0;
  v14 = [handlerProvider handlerWithType:0 configuration:configurationCopy error:&v18];
  v15 = v18;

  if (v14)
  {
    clientIdentity = [configurationCopy clientIdentity];
    [v14 setItemProperties:propertiesCopy forPurchaseHistoryID:d clientIdentity:clientIdentity completionHandler:completionCopy];
  }

  else
  {
    v17 = os_log_create("com.apple.amp.itunescloudd", "PurchaseSync");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218754;
      selfCopy = self;
      v21 = 2048;
      dCopy = d;
      v23 = 2114;
      v24 = propertiesCopy;
      v25 = 2114;
      v26 = v15;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "CloudService %p - setItemProperties: (purchaseHistoryID=%llu, properties=%{public}@) - Unable to service request for purchases - error=%{public}@", buf, 0x2Au);
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy, v15);
    }
  }
}

- (void)hideItemsWithPurchaseHistoryIDs:(id)ds configuration:(id)configuration completion:(id)completion
{
  dsCopy = ds;
  configurationCopy = configuration;
  completionCopy = completion;
  handlerProvider = [(CloudService *)self handlerProvider];
  v16 = 0;
  v12 = [handlerProvider handlerWithType:0 configuration:configurationCopy error:&v16];
  v13 = v16;

  if (v12)
  {
    clientIdentity = [configurationCopy clientIdentity];
    [v12 hideItemsWithPurchaseHistoryIDs:dsCopy clientIdentity:clientIdentity completionHandler:completionCopy];
  }

  else
  {
    v15 = os_log_create("com.apple.amp.itunescloudd", "PurchaseSync");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218498;
      selfCopy = self;
      v19 = 2114;
      v20 = dsCopy;
      v21 = 2114;
      v22 = v13;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "CloudService %p - hideItemsWithPurchaseHistoryIDs: (purchaseHistoryIDs=%{public}@) - Unable to service request for purchases - error=%{public}@", buf, 0x20u);
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy, v13);
    }
  }
}

- (void)loadBooksForStoreIDs:(id)ds configuration:(id)configuration completion:(id)completion
{
  dsCopy = ds;
  configurationCopy = configuration;
  completionCopy = completion;
  userIdentity = [configurationCopy userIdentity];
  accountDSID = [userIdentity accountDSID];

  if ([accountDSID length])
  {
    handlerProvider = [(CloudService *)self handlerProvider];
    v23 = 0;
    v14 = [handlerProvider handlerWithType:0 configuration:configurationCopy error:&v23];
    userIdentity2 = v23;

    if (v14)
    {
      clientIdentity = [configurationCopy clientIdentity];
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_10009A8E8;
      v21[3] = &unk_1001DC668;
      v22 = completionCopy;
      [v14 loadBooksForStoreIDs:dsCopy clientIdentity:clientIdentity withCompletionHandler:v21];
    }

    else
    {
      v20 = os_log_create("com.apple.amp.itunescloudd", "PurchaseSync");
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218498;
        selfCopy2 = self;
        v26 = 2114;
        v27 = dsCopy;
        v28 = 2114;
        v29 = userIdentity2;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "CloudService %p - loadBooksForStoreIDs %{public}@ - Unable to service request for purchases - error=%{public}@", buf, 0x20u);
      }

      if (completionCopy)
      {
        (*(completionCopy + 2))(completionCopy, 0, userIdentity2);
      }

      v14 = 0;
    }
  }

  else
  {
    v17 = os_log_create("com.apple.amp.itunescloudd", "PurchaseSync");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      selfCopy2 = self;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "CloudService %p - loadBooksForStoreIDs: - Unable to process cloud request [missing DSID]", buf, 0xCu);
    }

    v30 = NSDebugDescriptionErrorKey;
    userIdentity2 = [configurationCopy userIdentity];
    v14 = [NSString stringWithFormat:@"loadBooksForStoreIDs: - Invalid user identity [missing DSID] - userIdentity=%@", userIdentity2];
    v31 = v14;
    v18 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    v19 = [NSError errorWithDomain:ICErrorDomain code:-7400 userInfo:v18];
    (*(completionCopy + 2))(completionCopy, 0, v19);
  }
}

- (void)loadScreenshotInfoForPurchaseHistoryIDs:(id)ds configuration:(id)configuration completion:(id)completion
{
  dsCopy = ds;
  configurationCopy = configuration;
  completionCopy = completion;
  handlerProvider = [(CloudService *)self handlerProvider];
  v18 = 0;
  v12 = [handlerProvider handlerWithType:0 configuration:configurationCopy error:&v18];
  v13 = v18;

  if (v12)
  {
    clientIdentity = [configurationCopy clientIdentity];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10009AAE8;
    v16[3] = &unk_1001DC640;
    v16[4] = self;
    v17 = completionCopy;
    [v12 loadScreenshotInfoForPurchaseHistoryIDs:dsCopy clientIdentity:clientIdentity completionHandler:v16];
  }

  else
  {
    v15 = os_log_create("com.apple.amp.itunescloudd", "PurchaseSync");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218498;
      selfCopy = self;
      v21 = 2114;
      v22 = dsCopy;
      v23 = 2114;
      v24 = v13;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "CloudService %p - loadScreenshotInfoForPurchaseHistoryIDs (%{public}@) Unable to service request for purchases - error=%{public}@", buf, 0x20u);
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, v13, 0);
    }
  }
}

- (void)loadArtworkInfoForPurchaseHistoryIDs:(id)ds configuration:(id)configuration completion:(id)completion
{
  dsCopy = ds;
  configurationCopy = configuration;
  completionCopy = completion;
  handlerProvider = [(CloudService *)self handlerProvider];
  v18 = 0;
  v12 = [handlerProvider handlerWithType:0 configuration:configurationCopy error:&v18];
  v13 = v18;

  if (v12)
  {
    clientIdentity = [configurationCopy clientIdentity];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10009ADDC;
    v16[3] = &unk_1001DC640;
    v16[4] = self;
    v17 = completionCopy;
    [v12 loadArtworkInfoForPurchaseHistoryIDs:dsCopy clientIdentity:clientIdentity completionHandler:v16];
  }

  else
  {
    v15 = os_log_create("com.apple.amp.itunescloudd", "PurchaseSync");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218498;
      selfCopy = self;
      v21 = 2114;
      v22 = dsCopy;
      v23 = 2114;
      v24 = v13;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "CloudService %p - loadArtworkInfoForPurchaseHistoryIDs (%{public}@) Unable to service request for purchases - error=%{public}@", buf, 0x20u);
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, v13, 0);
    }
  }
}

- (void)deprioritizeScreenshotForPurchaseHistoryID:(unint64_t)d configuration:(id)configuration
{
  configurationCopy = configuration;
  handlerProvider = [(CloudService *)self handlerProvider];
  v11 = 0;
  v8 = [handlerProvider handlerWithType:0 configuration:configurationCopy error:&v11];

  v9 = v11;
  if (v8)
  {
    [v8 deprioritizeScreenshotForPurchaseHistoryID:d];
  }

  else
  {
    v10 = os_log_create("com.apple.amp.itunescloudd", "PurchaseSync");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218498;
      selfCopy = self;
      v14 = 2048;
      dCopy = d;
      v16 = 2114;
      v17 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "CloudService %p - deprioritizeScreenshotForPurchaseHistoryID(%llu) - Unable to service purchase request - error=%{public}@", buf, 0x20u);
    }
  }
}

- (void)deprioritizeItemArtworkForPurchaseHistoryID:(unint64_t)d configuration:(id)configuration
{
  configurationCopy = configuration;
  handlerProvider = [(CloudService *)self handlerProvider];
  v11 = 0;
  v8 = [handlerProvider handlerWithType:0 configuration:configurationCopy error:&v11];

  v9 = v11;
  if (v8)
  {
    [v8 deprioritizeItemArtworkForPurchaseHistoryID:d];
  }

  else
  {
    v10 = os_log_create("com.apple.amp.itunescloudd", "PurchaseSync");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218498;
      selfCopy = self;
      v14 = 2048;
      dCopy = d;
      v16 = 2114;
      v17 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "CloudService %p - deprioritizeItemArtworkForPurchaseHistoryID(%llu) - Unable to service purchase request - error=%{public}@", buf, 0x20u);
    }
  }
}

- (void)importScreenshotForPurchaseHistoryID:(unint64_t)d configuration:(id)configuration completion:(id)completion
{
  configurationCopy = configuration;
  completionCopy = completion;
  handlerProvider = [(CloudService *)self handlerProvider];
  v15 = 0;
  v11 = [handlerProvider handlerWithType:0 configuration:configurationCopy error:&v15];
  v12 = v15;

  if (v11)
  {
    clientIdentity = [configurationCopy clientIdentity];
    [v11 importScreenshotForPurchaseHistoryID:d clientIdentity:clientIdentity completionHandler:completionCopy];
  }

  else
  {
    v14 = os_log_create("com.apple.amp.itunescloudd", "PurchaseSync");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218498;
      selfCopy = self;
      v18 = 2048;
      dCopy = d;
      v20 = 2114;
      v21 = v12;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "CloudService %p - importScreenshotForPurchaseHistoryID(%llu): - Unable to service purchase request - error=%{public}@", buf, 0x20u);
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy, v12);
    }
  }
}

- (void)importItemArtworkForPurchaseHistoryID:(unint64_t)d configuration:(id)configuration completion:(id)completion
{
  configurationCopy = configuration;
  completionCopy = completion;
  handlerProvider = [(CloudService *)self handlerProvider];
  v15 = 0;
  v11 = [handlerProvider handlerWithType:0 configuration:configurationCopy error:&v15];
  v12 = v15;

  if (v11)
  {
    clientIdentity = [configurationCopy clientIdentity];
    [v11 importItemArtworkForPurchaseHistoryID:d clientIdentity:clientIdentity completionHandler:completionCopy];
  }

  else
  {
    v14 = os_log_create("com.apple.amp.itunescloudd", "PurchaseSync");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218498;
      selfCopy = self;
      v18 = 2048;
      dCopy = d;
      v20 = 2114;
      v21 = v12;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "CloudService %p - importItemArtworkForPurchaseHistoryID(%llu): - Unable to service purchase request - error=%{public}@", buf, 0x20u);
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy, v12);
    }
  }
}

- (void)loadJaliscoUpdateProgressForConfiguration:(id)configuration completion:(id)completion
{
  completionCopy = completion;
  configurationCopy = configuration;
  handlerProvider = [(CloudService *)self handlerProvider];
  v15 = 0;
  v9 = [handlerProvider handlerWithType:0 configuration:configurationCopy error:&v15];

  v10 = v15;
  if (v9)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10009B630;
    v12[3] = &unk_1001DC618;
    v12[4] = self;
    v14 = 0;
    v13 = completionCopy;
    [v9 updateProgressForLibraryType:0 completionHandler:v12];

    if (completionCopy)
    {
LABEL_3:
      (*(completionCopy + 2))(completionCopy, v10, 0.0);
    }
  }

  else
  {
    v11 = os_log_create("com.apple.amp.itunescloudd", "PurchaseSync");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      selfCopy = self;
      v18 = 2114;
      v19 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "CloudService %p - loadJaliscoUpdateProgressForConfiguration: - Unable to service purchase request - error=%{public}@", buf, 0x16u);
    }

    if (completionCopy)
    {
      goto LABEL_3;
    }
  }
}

- (void)loadIsJaliscoUpdateInProgressForConfiguration:(id)configuration completion:(id)completion
{
  completionCopy = completion;
  configurationCopy = configuration;
  handlerProvider = [(CloudService *)self handlerProvider];
  v14 = 0;
  v9 = [handlerProvider handlerWithType:0 configuration:configurationCopy error:&v14];

  v10 = v14;
  if (v9)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10009B8C8;
    v12[3] = &unk_1001DC5F0;
    v12[4] = self;
    v13 = completionCopy;
    [v9 isUpdatingCloudLibraryWithCompletion:v12];
  }

  else
  {
    v11 = os_log_create("com.apple.amp.itunescloudd", "PurchaseSync");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      selfCopy = self;
      v17 = 2114;
      v18 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "CloudService %p - loadIsJaliscoUpdateInProgressForConfiguration: - Unable to service purchase request - error=%{public}@", buf, 0x16u);
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0, 0);
    }
  }
}

- (void)isMediaKindDisabledForJaliscoLibrary:(int64_t)library configuration:(id)configuration completion:(id)completion
{
  configurationCopy = configuration;
  completionCopy = completion;
  handlerProvider = [(CloudService *)self handlerProvider];
  v17 = 0;
  v11 = [handlerProvider handlerWithType:0 configuration:configurationCopy error:&v17];
  v12 = v17;

  if (v11)
  {
    clientIdentity = [configurationCopy clientIdentity];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10009BB94;
    v15[3] = &unk_1001DE1C8;
    v16 = completionCopy;
    [v11 isMediaKindDisabledForJaliscoLibrary:library clientIdentity:clientIdentity completion:v15];
  }

  else
  {
    v14 = os_log_create("com.apple.amp.itunescloudd", "PurchaseSync");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      selfCopy = self;
      v20 = 2114;
      v21 = v12;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "CloudService %p - isMediaKindDisabledForJaliscoLibrary: - Unable to service purchase request - error=%{public}@", buf, 0x16u);
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0, v12);
    }
  }
}

- (void)removeJaliscoLibraryForConfiguration:(id)configuration completion:(id)completion
{
  configurationCopy = configuration;
  completionCopy = completion;
  handlerProvider = [(CloudService *)self handlerProvider];
  v15 = 0;
  v9 = [handlerProvider handlerWithType:0 configuration:configurationCopy error:&v15];
  v10 = v15;

  if (v9)
  {
    clientIdentity = [configurationCopy clientIdentity];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10009BD68;
    v13[3] = &unk_1001DD8F0;
    v14 = completionCopy;
    [v9 removeLibraryWithClientIdentity:clientIdentity completion:v13];
  }

  else
  {
    v12 = os_log_create("com.apple.amp.itunescloudd", "PurchaseSync");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      selfCopy = self;
      v18 = 2114;
      v19 = v10;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "CloudService %p - removeJaliscoLibraryForConfiguration - Unable to service purchase request - error=%{public}@", buf, 0x16u);
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, v10);
    }
  }
}

- (void)setupInitialJaliscoPoolingForConfiguration:(id)configuration
{
  configurationCopy = configuration;
  handlerProvider = [(CloudService *)self handlerProvider];
  v21 = 0;
  v6 = [handlerProvider handlerWithType:0 configuration:configurationCopy error:&v21];
  v7 = v21;

  if (!v6 || v7)
  {
    userIdentity = os_log_create("com.apple.amp.itunescloudd", "XPC");
    if (os_log_type_enabled(userIdentity, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      selfCopy2 = self;
      v24 = 2114;
      v25 = v7;
      _os_log_impl(&_mh_execute_header, userIdentity, OS_LOG_TYPE_DEFAULT, "CloudService %p - [BecomeActive::Jalisco] - Unable to service purchase request - error=%{public}@.", buf, 0x16u);
    }
  }

  else
  {
    v8 = +[ICDeviceInfo currentDeviceInfo];
    isAudioAccessory = [v8 isAudioAccessory];

    userIdentity = [configurationCopy userIdentity];
    userIdentity2 = [configurationCopy userIdentity];
    v12 = [ML3MusicLibrary musicLibraryForUserAccount:userIdentity2];

    v13 = os_log_create("com.apple.amp.itunescloudd", "XPC");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      selfCopy2 = self;
      v24 = 2114;
      v25 = configurationCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "CloudService %p - [BecomeActive::Jalisco] - Setting up Jalisco Pooling for configuration=%{public}@.", buf, 0x16u);
    }

    if ((isAudioAccessory & 1) == 0 && ![v12 jaliscoOnDiskDatabaseRevision])
    {
      [(CloudService *)self updateJaliscoLibraryWithReason:1 forConfiguration:configurationCopy completion:&stru_1001DC750];
    }

    v14 = [[ICStoreRequestContext alloc] initWithIdentity:userIdentity];
    v15 = +[ICURLBagProvider sharedBagProvider];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10009C048;
    v17[3] = &unk_1001DC5A0;
    v18 = v12;
    selfCopy3 = self;
    v20 = configurationCopy;
    v16 = v12;
    [v15 getBagForRequestContext:v14 withCompletionHandler:v17];
  }
}

- (void)prepareToDownloadAllLibraryPinnedEntitiesForConfiguration:(id)configuration
{
  configurationCopy = configuration;
  handlerProvider = [(CloudService *)self handlerProvider];
  v9 = 0;
  v6 = [handlerProvider handlerWithType:0 configuration:configurationCopy error:&v9];

  v7 = v9;
  if (v6)
  {
    [v6 prepareToDownloadAllLibraryPinnedEntities];
  }

  else
  {
    v8 = os_log_create("com.apple.amp.itunescloudd", "Default");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      selfCopy = self;
      v12 = 2114;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "CloudService %p - prepareToDownloadAllLibraryPinnedEntitiesForConfiguration - Unable to service request for cloud library - error=%{public}@", buf, 0x16u);
    }
  }
}

- (void)movePinnedAlbumWithPersistentID:(int64_t)d cloudAlbumID:(id)iD toPosition:(int64_t)position configuration:(id)configuration completion:(id)completion
{
  iDCopy = iD;
  completionCopy = completion;
  configurationCopy = configuration;
  handlerProvider = [(CloudService *)self handlerProvider];
  v20 = 0;
  v16 = [handlerProvider handlerWithType:0 configuration:configurationCopy error:&v20];

  v17 = v20;
  if (v16)
  {
    [v16 movePinnedAlbumWithPersistentID:d cloudAlbumID:iDCopy toPosition:position completion:completionCopy];
  }

  else
  {
    v18 = os_log_create("com.apple.amp.itunescloudd", "Default");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218498;
      selfCopy = self;
      v23 = 2048;
      dCopy = d;
      v25 = 2114;
      v26 = v17;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "CloudService %p - movePinnedAlbumWithPersistentID=%lld - Unable to service request for cloud library - error=%{public}@", buf, 0x20u);
    }

    if (completionCopy)
    {
      v19 = [NSError errorWithDomain:ICErrorDomain code:-7002 userInfo:0];
      completionCopy[2](completionCopy, v19);
    }
  }
}

- (void)movePinnedArtistWithPersistentID:(int64_t)d cloudArtistID:(id)iD toPosition:(int64_t)position configuration:(id)configuration completion:(id)completion
{
  iDCopy = iD;
  completionCopy = completion;
  configurationCopy = configuration;
  handlerProvider = [(CloudService *)self handlerProvider];
  v20 = 0;
  v16 = [handlerProvider handlerWithType:0 configuration:configurationCopy error:&v20];

  v17 = v20;
  if (v16)
  {
    [v16 movePinnedArtistWithPersistentID:d cloudArtistID:iDCopy toPosition:position completion:completionCopy];
  }

  else
  {
    v18 = os_log_create("com.apple.amp.itunescloudd", "Default");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218498;
      selfCopy = self;
      v23 = 2048;
      dCopy = d;
      v25 = 2114;
      v26 = v17;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "CloudService %p - movePinnedArtistWithPersistentID=%lld - Unable to service request for cloud library - error=%{public}@", buf, 0x20u);
    }

    if (completionCopy)
    {
      v19 = [NSError errorWithDomain:ICErrorDomain code:-7002 userInfo:0];
      completionCopy[2](completionCopy, v19);
    }
  }
}

- (void)movePinnedEntityWithPersistentID:(int64_t)d cloudID:(int64_t)iD type:(int64_t)type toPosition:(int64_t)position configuration:(id)configuration completion:(id)completion
{
  completionCopy = completion;
  configurationCopy = configuration;
  handlerProvider = [(CloudService *)self handlerProvider];
  v21 = 0;
  v17 = [handlerProvider handlerWithType:0 configuration:configurationCopy error:&v21];

  v18 = v21;
  if (v17)
  {
    [v17 movePinnedEntityWithPersistentID:d cloudID:iD type:type toPosition:position completion:completionCopy];
  }

  else
  {
    v19 = os_log_create("com.apple.amp.itunescloudd", "Default");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218498;
      selfCopy = self;
      v24 = 2048;
      dCopy = d;
      v26 = 2114;
      v27 = v18;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "CloudService %p - movePinnedEntityWithPersistentID=%lld - Unable to service request for cloud library - error=%{public}@", buf, 0x20u);
    }

    if (completionCopy)
    {
      v20 = [NSError errorWithDomain:ICErrorDomain code:-7002 userInfo:0];
      completionCopy[2](completionCopy, v20);
    }
  }
}

- (void)updatePinnedLibraryAlbumWithPersistentID:(int64_t)d cloudAlbumID:(id)iD defaultAction:(int64_t)action configuration:(id)configuration completion:(id)completion
{
  iDCopy = iD;
  completionCopy = completion;
  configurationCopy = configuration;
  handlerProvider = [(CloudService *)self handlerProvider];
  v20 = 0;
  v16 = [handlerProvider handlerWithType:0 configuration:configurationCopy error:&v20];

  v17 = v20;
  if (v16)
  {
    [v16 updatePinnedLibraryAlbumWithPersistentID:d cloudAlbumID:iDCopy defaultAction:action completion:completionCopy];
  }

  else
  {
    v18 = os_log_create("com.apple.amp.itunescloudd", "Default");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218498;
      selfCopy = self;
      v23 = 2114;
      v24 = iDCopy;
      v25 = 2114;
      v26 = v17;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "CloudService %p - updatePinnedLibraryAlbumWithPersistentID=%{public}@ - Unable to service request for cloud library - error=%{public}@", buf, 0x20u);
    }

    if (completionCopy)
    {
      v19 = [NSError errorWithDomain:ICErrorDomain code:-7002 userInfo:0];
      completionCopy[2](completionCopy, v19);
    }
  }
}

- (void)updatePinnedLibraryArtistWithPersistentID:(int64_t)d cloudArtistID:(id)iD defaultAction:(int64_t)action configuration:(id)configuration completion:(id)completion
{
  iDCopy = iD;
  completionCopy = completion;
  configurationCopy = configuration;
  handlerProvider = [(CloudService *)self handlerProvider];
  v20 = 0;
  v16 = [handlerProvider handlerWithType:0 configuration:configurationCopy error:&v20];

  v17 = v20;
  if (v16)
  {
    [v16 updatePinnedLibraryArtistWithPersistentID:d cloudArtistID:iDCopy defaultAction:action completion:completionCopy];
  }

  else
  {
    v18 = os_log_create("com.apple.amp.itunescloudd", "Default");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218498;
      selfCopy = self;
      v23 = 2114;
      v24 = iDCopy;
      v25 = 2114;
      v26 = v17;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "CloudService %p - updatePinnedLibraryArtistWithPersistentID=%{public}@ - Unable to service request for cloud library - error=%{public}@", buf, 0x20u);
    }

    if (completionCopy)
    {
      v19 = [NSError errorWithDomain:ICErrorDomain code:-7002 userInfo:0];
      completionCopy[2](completionCopy, v19);
    }
  }
}

- (void)updatePinnedLibraryEntityWithPersistentID:(int64_t)d cloudID:(int64_t)iD type:(int64_t)type defaultAction:(int64_t)action configuration:(id)configuration completion:(id)completion
{
  completionCopy = completion;
  configurationCopy = configuration;
  handlerProvider = [(CloudService *)self handlerProvider];
  v21 = 0;
  v17 = [handlerProvider handlerWithType:0 configuration:configurationCopy error:&v21];

  v18 = v21;
  if (v17)
  {
    [v17 updatePinnedLibraryEntityWithPersistentID:d cloudID:iD type:type defaultAction:action completion:completionCopy];
  }

  else
  {
    v19 = os_log_create("com.apple.amp.itunescloudd", "Default");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218498;
      selfCopy = self;
      v24 = 2048;
      dCopy = d;
      v26 = 2114;
      v27 = v18;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "CloudService %p - updatePinnedLibraryEntityWithPersistentID=%lld - Unable to service request for cloud library - error=%{public}@", buf, 0x20u);
    }

    if (completionCopy)
    {
      v20 = [NSError errorWithDomain:ICErrorDomain code:-7002 userInfo:0];
      completionCopy[2](completionCopy, v20);
    }
  }
}

- (void)removePinnedAlbumWithPersistentID:(int64_t)d cloudAlbumID:(id)iD configuration:(id)configuration completion:(id)completion
{
  iDCopy = iD;
  completionCopy = completion;
  configurationCopy = configuration;
  handlerProvider = [(CloudService *)self handlerProvider];
  v18 = 0;
  v14 = [handlerProvider handlerWithType:0 configuration:configurationCopy error:&v18];

  v15 = v18;
  if (v14)
  {
    [v14 removePinnedAlbumWithPersistentID:d cloudAlbumID:iDCopy completion:completionCopy];
  }

  else
  {
    v16 = os_log_create("com.apple.amp.itunescloudd", "Default");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218498;
      selfCopy = self;
      v21 = 2114;
      v22 = iDCopy;
      v23 = 2114;
      v24 = v15;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "CloudService %p - removePinnedAlbumWithPersistentID=%{public}@ - Unable to service request for cloud library - error=%{public}@", buf, 0x20u);
    }

    if (completionCopy)
    {
      v17 = [NSError errorWithDomain:ICErrorDomain code:-7002 userInfo:0];
      completionCopy[2](completionCopy, v17);
    }
  }
}

- (void)removePinnedArtistWithPersistentID:(int64_t)d cloudArtistID:(id)iD configuration:(id)configuration completion:(id)completion
{
  iDCopy = iD;
  completionCopy = completion;
  configurationCopy = configuration;
  handlerProvider = [(CloudService *)self handlerProvider];
  v18 = 0;
  v14 = [handlerProvider handlerWithType:0 configuration:configurationCopy error:&v18];

  v15 = v18;
  if (v14)
  {
    [v14 removePinnedArtistWithPersistentID:d cloudArtistID:iDCopy completion:completionCopy];
  }

  else
  {
    v16 = os_log_create("com.apple.amp.itunescloudd", "Default");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218498;
      selfCopy = self;
      v21 = 2114;
      v22 = iDCopy;
      v23 = 2114;
      v24 = v15;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "CloudService %p - removePinnedArtistWithPersistentID=%{public}@ - Unable to service request for cloud library - error=%{public}@", buf, 0x20u);
    }

    if (completionCopy)
    {
      v17 = [NSError errorWithDomain:ICErrorDomain code:-7002 userInfo:0];
      completionCopy[2](completionCopy, v17);
    }
  }
}

- (void)removePinnedEntityWithPersistentID:(int64_t)d cloudID:(int64_t)iD type:(int64_t)type configuration:(id)configuration completion:(id)completion
{
  completionCopy = completion;
  configurationCopy = configuration;
  handlerProvider = [(CloudService *)self handlerProvider];
  v19 = 0;
  v15 = [handlerProvider handlerWithType:0 configuration:configurationCopy error:&v19];

  v16 = v19;
  if (v15)
  {
    [v15 removePinnedEntityWithPersistentID:d cloudID:iD type:type completion:completionCopy];
  }

  else
  {
    v17 = os_log_create("com.apple.amp.itunescloudd", "Default");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218498;
      selfCopy = self;
      v22 = 2048;
      dCopy = d;
      v24 = 2114;
      v25 = v16;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "CloudService %p - removePinnedEntityWithPersistentID=%lld - Unable to service request for cloud library - error=%{public}@", buf, 0x20u);
    }

    if (completionCopy)
    {
      v18 = [NSError errorWithDomain:ICErrorDomain code:-7002 userInfo:0];
      completionCopy[2](completionCopy, v18);
    }
  }
}

- (void)pinLibraryAlbumWithPersistentID:(int64_t)d cloudAlbumID:(id)iD defaultAction:(int64_t)action configuration:(id)configuration completion:(id)completion
{
  iDCopy = iD;
  completionCopy = completion;
  configurationCopy = configuration;
  handlerProvider = [(CloudService *)self handlerProvider];
  v20 = 0;
  v16 = [handlerProvider handlerWithType:0 configuration:configurationCopy error:&v20];

  v17 = v20;
  if (v16)
  {
    [v16 pinLibraryAlbumWithPersistentID:d cloudAlbumID:iDCopy defaultAction:action completion:completionCopy];
  }

  else
  {
    v18 = os_log_create("com.apple.amp.itunescloudd", "Default");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218498;
      selfCopy = self;
      v23 = 2114;
      v24 = iDCopy;
      v25 = 2114;
      v26 = v17;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "CloudService %p - pinLibraryAlbumWithPersistentID=%{public}@ - Unable to service request for cloud library - error=%{public}@", buf, 0x20u);
    }

    if (completionCopy)
    {
      v19 = [NSError errorWithDomain:ICErrorDomain code:-7002 userInfo:0];
      completionCopy[2](completionCopy, v19);
    }
  }
}

- (void)pinLibraryArtistWithPersistentID:(int64_t)d cloudArtistID:(id)iD defaultAction:(int64_t)action configuration:(id)configuration completion:(id)completion
{
  iDCopy = iD;
  completionCopy = completion;
  configurationCopy = configuration;
  handlerProvider = [(CloudService *)self handlerProvider];
  v20 = 0;
  v16 = [handlerProvider handlerWithType:0 configuration:configurationCopy error:&v20];

  v17 = v20;
  if (v16)
  {
    [v16 pinLibraryArtistWithPersistentID:d cloudArtistID:iDCopy defaultAction:action completion:completionCopy];
  }

  else
  {
    v18 = os_log_create("com.apple.amp.itunescloudd", "Default");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218498;
      selfCopy = self;
      v23 = 2114;
      v24 = iDCopy;
      v25 = 2114;
      v26 = v17;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "CloudService %p - pinLibraryArtistWithPersistentID=%{public}@ - Unable to service request for cloud library - error=%{public}@", buf, 0x20u);
    }

    if (completionCopy)
    {
      v19 = [NSError errorWithDomain:ICErrorDomain code:-7002 userInfo:0];
      completionCopy[2](completionCopy, v19);
    }
  }
}

- (void)pinLibraryEntityWithPersistentID:(int64_t)d cloudID:(int64_t)iD type:(int64_t)type defaultAction:(int64_t)action configuration:(id)configuration completion:(id)completion
{
  completionCopy = completion;
  configurationCopy = configuration;
  handlerProvider = [(CloudService *)self handlerProvider];
  v21 = 0;
  v17 = [handlerProvider handlerWithType:0 configuration:configurationCopy error:&v21];

  v18 = v21;
  if (v17)
  {
    [v17 pinLibraryEntityWithPersistentID:d cloudID:iD type:type defaultAction:action completion:completionCopy];
  }

  else
  {
    v19 = os_log_create("com.apple.amp.itunescloudd", "Default");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218498;
      selfCopy = self;
      v24 = 2048;
      dCopy = d;
      v26 = 2114;
      v27 = v18;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "CloudService %p - pinLibraryEntityWithPersistentID=%lld - Unable to service request for cloud library - error=%{public}@", buf, 0x20u);
    }

    if (completionCopy)
    {
      v20 = [NSError errorWithDomain:ICErrorDomain code:-7002 userInfo:0];
      completionCopy[2](completionCopy, v20);
    }
  }
}

- (void)favoriteArtistWithPersistentID:(int64_t)d cloudLibraryID:(id)iD time:(id)time configuration:(id)configuration completionHandler:(id)handler
{
  iDCopy = iD;
  timeCopy = time;
  handlerCopy = handler;
  configurationCopy = configuration;
  handlerProvider = [(CloudService *)self handlerProvider];
  v21 = 0;
  v17 = [handlerProvider handlerWithType:0 configuration:configurationCopy error:&v21];

  v18 = v21;
  if (v17)
  {
    [v17 favoriteArtistWithPersistentID:d cloudLibraryID:iDCopy time:timeCopy completionHandler:handlerCopy];
  }

  else
  {
    v19 = os_log_create("com.apple.amp.itunescloudd", "Default");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218498;
      selfCopy = self;
      v24 = 2114;
      v25 = iDCopy;
      v26 = 2114;
      v27 = v18;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "CloudService %p - favoriteArtistWithCloudID=%{public}@ - Unable to service request for cloud library - error=%{public}@", buf, 0x20u);
    }

    if (handlerCopy)
    {
      v20 = [NSError errorWithDomain:ICErrorDomain code:-7002 userInfo:0];
      handlerCopy[2](handlerCopy, v20);
    }
  }
}

- (void)favoriteAlbumWithPersistentID:(int64_t)d cloudLibraryID:(id)iD time:(id)time configuration:(id)configuration completionHandler:(id)handler
{
  iDCopy = iD;
  timeCopy = time;
  handlerCopy = handler;
  configurationCopy = configuration;
  handlerProvider = [(CloudService *)self handlerProvider];
  v21 = 0;
  v17 = [handlerProvider handlerWithType:0 configuration:configurationCopy error:&v21];

  v18 = v21;
  if (v17)
  {
    [v17 favoriteAlbumWithPersistentID:d cloudLibraryID:iDCopy time:timeCopy completionHandler:handlerCopy];
  }

  else
  {
    v19 = os_log_create("com.apple.amp.itunescloudd", "Default");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218498;
      selfCopy = self;
      v24 = 2114;
      v25 = iDCopy;
      v26 = 2114;
      v27 = v18;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "CloudService %p - favoriteAlbumWithCloudID=%{public}@ - Unable to service request for cloud library - error=%{public}@", buf, 0x20u);
    }

    if (handlerCopy)
    {
      v20 = [NSError errorWithDomain:ICErrorDomain code:-7002 userInfo:0];
      handlerCopy[2](handlerCopy, v20);
    }
  }
}

- (void)favoriteEntityWithPersistentID:(int64_t)d sagaID:(int64_t)iD entityType:(int64_t)type time:(id)time configuration:(id)configuration completionHandler:(id)handler
{
  timeCopy = time;
  handlerCopy = handler;
  configurationCopy = configuration;
  handlerProvider = [(CloudService *)self handlerProvider];
  v22 = 0;
  v18 = [handlerProvider handlerWithType:0 configuration:configurationCopy error:&v22];

  v19 = v22;
  if (v18)
  {
    [v18 favoriteEntityWithPersistentID:d sagaID:iD entityType:type time:timeCopy completionHandler:handlerCopy];
  }

  else
  {
    v20 = os_log_create("com.apple.amp.itunescloudd", "Default");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218498;
      selfCopy = self;
      v25 = 2048;
      iDCopy = iD;
      v27 = 2114;
      v28 = v19;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "CloudService %p - favoriteEntityWithSagaID=%lld - Unable to service request for cloud library - error=%{public}@", buf, 0x20u);
    }

    if (handlerCopy)
    {
      v21 = [NSError errorWithDomain:ICErrorDomain code:-7002 userInfo:0];
      handlerCopy[2](handlerCopy, v21);
    }
  }
}

- (void)favoritePlaylistWithPersistentID:(int64_t)d globalID:(id)iD time:(id)time configuration:(id)configuration completionHandler:(id)handler
{
  iDCopy = iD;
  timeCopy = time;
  handlerCopy = handler;
  configurationCopy = configuration;
  handlerProvider = [(CloudService *)self handlerProvider];
  v21 = 0;
  v17 = [handlerProvider handlerWithType:0 configuration:configurationCopy error:&v21];

  v18 = v21;
  if (v17)
  {
    [v17 favoritePlaylistWithPersistentID:d globalID:iDCopy time:timeCopy completionHandler:handlerCopy];
  }

  else
  {
    v19 = os_log_create("com.apple.amp.itunescloudd", "Default");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218498;
      selfCopy = self;
      v24 = 2114;
      v25 = iDCopy;
      v26 = 2114;
      v27 = v18;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "CloudService %p - favoritePlaylistWithGlobalID=%{public}@: - Unable to service request for cloud library - error=%{public}@", buf, 0x20u);
    }

    if (handlerCopy)
    {
      v20 = [NSError errorWithDomain:ICErrorDomain code:-7002 userInfo:0];
      handlerCopy[2](handlerCopy, v20);
    }
  }
}

- (void)favoriteEntityWithPersistentID:(int64_t)d storeID:(int64_t)iD entityType:(int64_t)type time:(id)time configuration:(id)configuration completionHandler:(id)handler
{
  timeCopy = time;
  handlerCopy = handler;
  configurationCopy = configuration;
  handlerProvider = [(CloudService *)self handlerProvider];
  v22 = 0;
  v18 = [handlerProvider handlerWithType:0 configuration:configurationCopy error:&v22];

  v19 = v22;
  if (v18)
  {
    [v18 favoriteEntityWithPersistentID:d storeID:iD entityType:type time:timeCopy completionHandler:handlerCopy];
  }

  else
  {
    v20 = os_log_create("com.apple.amp.itunescloudd", "Default");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218498;
      selfCopy = self;
      v25 = 2048;
      iDCopy = iD;
      v27 = 2114;
      v28 = v19;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "CloudService %p - favoriteEntityWithStoreID=%lld: - Unable to service request for cloud library - error=%{public}@", buf, 0x20u);
    }

    if (handlerCopy)
    {
      v21 = [NSError errorWithDomain:ICErrorDomain code:-7002 userInfo:0];
      handlerCopy[2](handlerCopy, v21);
    }
  }
}

- (void)sdk_addStoreItemWithOpaqueID:(id)d configuration:(id)configuration completion:(id)completion
{
  dCopy = d;
  configurationCopy = configuration;
  completionCopy = completion;
  v11 = objc_alloc_init(ICDCloudServiceStatusMonitor);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10009E47C;
  v15[3] = &unk_1001DC730;
  v15[4] = self;
  v16 = configurationCopy;
  v17 = dCopy;
  v18 = completionCopy;
  v12 = dCopy;
  v13 = configurationCopy;
  v14 = completionCopy;
  [(ICDCloudServiceStatusMonitor *)v11 requestCapabilitiesWithPrivacyPromptPolicy:1 completionHandler:v15];
}

- (void)sdk_addItemWithSagaID:(int64_t)d toPlaylistWithPersistentID:(int64_t)iD configuration:(id)configuration completion:(id)completion
{
  configurationCopy = configuration;
  completionCopy = completion;
  handlerProvider = [(CloudService *)self handlerProvider];
  v18 = 0;
  v13 = [handlerProvider handlerWithType:0 configuration:configurationCopy error:&v18];
  v14 = v18;

  if (v13)
  {
    requestingBundleID = [(CloudService *)self requestingBundleID];
    clientIdentity = [configurationCopy clientIdentity];
    [v13 addItemWithSagaID:d toPlaylistWithPersistentID:iD requestingBundleID:requestingBundleID clientIdentity:clientIdentity completionHandler:completionCopy];
  }

  else
  {
    v17 = os_log_create("com.apple.amp.itunescloudd", "PurchaseSync");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218754;
      selfCopy = self;
      v21 = 2048;
      dCopy = d;
      v23 = 2048;
      iDCopy = iD;
      v25 = 2114;
      v26 = v14;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "CloudService %p - sdk_addItemWithSagaID (sagaID=%lld, persistentID=%lld) - Unable to service request for purchases - error=%{public}@", buf, 0x2Au);
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy, v14);
    }
  }
}

- (void)sdk_addStoreItemWithOpaqueID:(id)d toPlaylistWithPersistentID:(int64_t)iD configuration:(id)configuration completion:(id)completion
{
  dCopy = d;
  configurationCopy = configuration;
  completionCopy = completion;
  handlerProvider = [(CloudService *)self handlerProvider];
  v21 = 0;
  v14 = [handlerProvider handlerWithType:0 configuration:configurationCopy error:&v21];
  v15 = v21;

  if (v14)
  {
    requestingBundleID = [(CloudService *)self requestingBundleID];
    clientIdentity = [configurationCopy clientIdentity];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10009EAE4;
    v19[3] = &unk_1001DC6E0;
    v20 = completionCopy;
    [v14 addStoreItemWithOpaqueID:dCopy toPlaylistWithPersistentID:iD requestingBundleID:requestingBundleID clientIdentity:clientIdentity completionHandler:v19];
  }

  else
  {
    v18 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      selfCopy = self;
      v24 = 2114;
      v25 = v15;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "CloudService %p - sdk_addStoreItemWithOpaqueID: - Unable to service request for cloud library - error=%{public}@", buf, 0x16u);
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0, v15);
    }
  }
}

- (void)sdk_createPlaylistWithPersistentID:(int64_t)d properties:(id)properties trackList:(id)list configuration:(id)configuration completion:(id)completion
{
  propertiesCopy = properties;
  listCopy = list;
  configurationCopy = configuration;
  completionCopy = completion;
  handlerProvider = [(CloudService *)self handlerProvider];
  v22 = 0;
  v17 = [handlerProvider handlerWithType:0 configuration:configurationCopy error:&v22];
  v18 = v22;

  if (v17)
  {
    requestingBundleID = [(CloudService *)self requestingBundleID];
    clientIdentity = [configurationCopy clientIdentity];
    [v17 createPlaylistWithPersistentID:d properties:propertiesCopy trackList:listCopy requestingBundleID:requestingBundleID clientIdentity:clientIdentity completionHandler:completionCopy];
  }

  else
  {
    v21 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218754;
      selfCopy = self;
      v25 = 2048;
      dCopy = d;
      v27 = 2114;
      v28 = propertiesCopy;
      v29 = 2114;
      v30 = v18;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "CloudService %p - sdk_createPlaylistWithPersistentID (%lld, properties=%{public}@) - Unable to service request for cloud library - error=%{public}@", buf, 0x2Au);
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0, v18);
    }
  }
}

- (void)setAlbumArtistProperties:(id)properties forAlbumArtistPersistentID:(int64_t)d configuration:(id)configuration completion:(id)completion
{
  propertiesCopy = properties;
  configurationCopy = configuration;
  completionCopy = completion;
  handlerProvider = [(CloudService *)self handlerProvider];
  v18 = 0;
  v14 = [handlerProvider handlerWithType:0 configuration:configurationCopy error:&v18];
  v15 = v18;

  if (v14)
  {
    clientIdentity = [configurationCopy clientIdentity];
    [v14 setAlbumArtistProperties:propertiesCopy withArtistPersistentID:d clientIdentity:clientIdentity completionHandler:completionCopy];
  }

  else
  {
    v17 = os_log_create("com.apple.amp.itunescloudd", "PurchaseSync");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218754;
      selfCopy = self;
      v21 = 2048;
      dCopy = d;
      v23 = 2114;
      v24 = propertiesCopy;
      v25 = 2114;
      v26 = v15;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "CloudService %p - setAlbumArtistProperties: (albumArtistID=%llu, properties=%{public}@) - Unable to service request for purchases - error=%{public}@", buf, 0x2Au);
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy, v15);
    }
  }
}

- (void)setAlbumEntityProperties:(id)properties forAlbumPersistentID:(int64_t)d configuration:(id)configuration completion:(id)completion
{
  propertiesCopy = properties;
  configurationCopy = configuration;
  completionCopy = completion;
  handlerProvider = [(CloudService *)self handlerProvider];
  v18 = 0;
  v14 = [handlerProvider handlerWithType:0 configuration:configurationCopy error:&v18];
  v15 = v18;

  if (v14)
  {
    clientIdentity = [configurationCopy clientIdentity];
    [v14 setAlbumEntityProperties:propertiesCopy withAlbumPersistentID:d clientIdentity:clientIdentity completionHandler:completionCopy];
  }

  else
  {
    v17 = os_log_create("com.apple.amp.itunescloudd", "PurchaseSync");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218754;
      selfCopy = self;
      v21 = 2048;
      dCopy = d;
      v23 = 2114;
      v24 = propertiesCopy;
      v25 = 2114;
      v26 = v15;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "CloudService %p - setAlbumProperties: (albumID=%llu, properties=%{public}@) - Unable to service request - error=%{public}@", buf, 0x2Au);
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy, v15);
    }
  }
}

- (void)setAlbumProperties:(id)properties forAlbumPersistentID:(int64_t)d configuration:(id)configuration completion:(id)completion
{
  propertiesCopy = properties;
  configurationCopy = configuration;
  completionCopy = completion;
  handlerProvider = [(CloudService *)self handlerProvider];
  v18 = 0;
  v14 = [handlerProvider handlerWithType:0 configuration:configurationCopy error:&v18];
  v15 = v18;

  if (v14)
  {
    clientIdentity = [configurationCopy clientIdentity];
    [v14 setAlbumProperties:propertiesCopy forItemsWithAlbumPersistentID:d clientIdentity:clientIdentity completionHandler:completionCopy];
  }

  else
  {
    v17 = os_log_create("com.apple.amp.itunescloudd", "PurchaseSync");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218754;
      selfCopy = self;
      v21 = 2048;
      dCopy = d;
      v23 = 2114;
      v24 = propertiesCopy;
      v25 = 2114;
      v26 = v15;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "CloudService %p - setAlbumProperties: (albumID=%llu, properties=%{public}@) - Unable to service request - error=%{public}@", buf, 0x2Au);
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy, v15);
    }
  }
}

- (void)uploadCloudPlaylistPropertiesForConfiguration:(id)configuration completion:(id)completion
{
  configurationCopy = configuration;
  completionCopy = completion;
  handlerProvider = [(CloudService *)self handlerProvider];
  v13 = 0;
  v9 = [handlerProvider handlerWithType:0 configuration:configurationCopy error:&v13];
  v10 = v13;

  if (v9)
  {
    clientIdentity = [configurationCopy clientIdentity];
    [v9 updatePlaylistPlayDataWithClientIdentity:clientIdentity completionHandler:completionCopy];
  }

  else
  {
    v12 = os_log_create("com.apple.amp.itunescloudd", "PurchaseSync");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      selfCopy = self;
      v16 = 2114;
      v17 = v10;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "CloudService %p - uploadCloudPlaylistPropertiesForConfiguration - Unable to service request - error=%{public}@", buf, 0x16u);
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy, v10);
    }
  }
}

- (void)uploadCloudItemPropertiesForConfiguration:(id)configuration completion:(id)completion
{
  configurationCopy = configuration;
  completionCopy = completion;
  handlerProvider = [(CloudService *)self handlerProvider];
  v13 = 0;
  v9 = [handlerProvider handlerWithType:0 configuration:configurationCopy error:&v13];
  v10 = v13;

  if (v9)
  {
    clientIdentity = [configurationCopy clientIdentity];
    [v9 updateItemPlayDataWithClientIdentity:clientIdentity completionHandler:completionCopy];
  }

  else
  {
    v12 = os_log_create("com.apple.amp.itunescloudd", "PurchaseSync");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      selfCopy = self;
      v16 = 2114;
      v17 = v10;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "CloudService %p - uploadCloudItemPropertiesForConfiguration - Unable to service request - error=%{public}@", buf, 0x16u);
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy, v10);
    }
  }
}

- (void)setItemProperties:(id)properties forSagaID:(unint64_t)d configuration:(id)configuration completion:(id)completion
{
  propertiesCopy = properties;
  configurationCopy = configuration;
  completionCopy = completion;
  handlerProvider = [(CloudService *)self handlerProvider];
  v18 = 0;
  v14 = [handlerProvider handlerWithType:0 configuration:configurationCopy error:&v18];
  v15 = v18;

  if (v14)
  {
    clientIdentity = [configurationCopy clientIdentity];
    [v14 setItemProperties:propertiesCopy forSagaID:d clientIdentity:clientIdentity completionHandler:completionCopy];
  }

  else
  {
    v17 = os_log_create("com.apple.amp.itunescloudd", "PurchaseSync");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218754;
      selfCopy = self;
      v21 = 2048;
      dCopy = d;
      v23 = 2114;
      v24 = propertiesCopy;
      v25 = 2114;
      v26 = v15;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "CloudService %p - setItemProperties: (sagaID=%llu, properties=%{public}@) - Unable to service request - error=%{public}@", buf, 0x2Au);
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy, v15);
    }
  }
}

- (void)loadLastKnownEnableICMLErrorStatusForConfiguration:(id)configuration completion:(id)completion
{
  completionCopy = completion;
  configurationCopy = configuration;
  handlerProvider = [(CloudService *)self handlerProvider];
  v14 = 0;
  v9 = [handlerProvider handlerWithType:0 configuration:configurationCopy error:&v14];

  v10 = v14;
  if (v9)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10009F804;
    v12[3] = &unk_1001DC708;
    v13 = completionCopy;
    [v9 loadLastKnownEnableICMLStatusWithCompletionHandler:v12];
  }

  else
  {
    v11 = os_log_create("com.apple.amp.itunescloudd", "PurchaseSync");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      selfCopy = self;
      v17 = 2114;
      v18 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "CloudService %p - loadLastKnownEnableICMLErrorStatusForConfiguration - Unable to service request - error=%{public}@", buf, 0x16u);
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0, v10);
    }
  }
}

- (void)removeItemsWithSagaIDs:(id)ds configuration:(id)configuration completion:(id)completion
{
  dsCopy = ds;
  configurationCopy = configuration;
  completionCopy = completion;
  handlerProvider = [(CloudService *)self handlerProvider];
  v16 = 0;
  v12 = [handlerProvider handlerWithType:0 configuration:configurationCopy error:&v16];
  v13 = v16;

  if (v12)
  {
    clientIdentity = [configurationCopy clientIdentity];
    [v12 removeItemsWithSagaIDs:dsCopy clientIdentity:clientIdentity completionHandler:completionCopy];
  }

  else
  {
    v15 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218498;
      selfCopy = self;
      v19 = 2114;
      v20 = dsCopy;
      v21 = 2114;
      v22 = v13;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "CloudService %p - removeItemsWithSagaIDs (%{public}@) - Unable to service request for cloud library - error=%{public}@", buf, 0x20u);
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy, v13);
    }
  }
}

- (void)addStorePlaylistWithGlobalID:(id)d configuration:(id)configuration completion:(id)completion
{
  dCopy = d;
  configurationCopy = configuration;
  completionCopy = completion;
  handlerProvider = [(CloudService *)self handlerProvider];
  v18 = 0;
  v12 = [handlerProvider handlerWithType:0 configuration:configurationCopy error:&v18];
  v13 = v18;

  if (v12)
  {
    clientIdentity = [configurationCopy clientIdentity];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10009FB9C;
    v16[3] = &unk_1001DC6E0;
    v17 = completionCopy;
    [v12 addStorePlaylistWithGlobalID:dCopy clientIdentity:clientIdentity completionHandler:v16];
  }

  else
  {
    v15 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218498;
      selfCopy = self;
      v21 = 2114;
      v22 = dCopy;
      v23 = 2114;
      v24 = v13;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "CloudService %p - addStorePlaylistWithGlobalID (%{public}@) - Unable to service request for cloud library - error=%{public}@", buf, 0x20u);
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0, v13);
    }
  }
}

- (void)addStoreItemsWithAdamIDs:(id)ds referral:(id)referral configuration:(id)configuration completion:(id)completion
{
  dsCopy = ds;
  referralCopy = referral;
  configurationCopy = configuration;
  completionCopy = completion;
  handlerProvider = [(CloudService *)self handlerProvider];
  v21 = 0;
  v15 = [handlerProvider handlerWithType:0 configuration:configurationCopy error:&v21];
  v16 = v21;

  if (v15)
  {
    clientIdentity = [configurationCopy clientIdentity];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10009FDAC;
    v19[3] = &unk_1001DC6E0;
    v20 = completionCopy;
    [v15 addStoreItemsWithAdamIDs:dsCopy referral:referralCopy clientIdentity:clientIdentity completionHandler:v19];
  }

  else
  {
    v18 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218498;
      selfCopy = self;
      v24 = 2114;
      v25 = dsCopy;
      v26 = 2114;
      v27 = v16;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "CloudService %p - addStoreItemWithAdamID (%{public}@}) - Unable to service request for cloud library - error=%{public}@", buf, 0x20u);
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0, v16);
    }
  }
}

- (void)addStoreItemWithAdamID:(int64_t)d referral:(id)referral configuration:(id)configuration completion:(id)completion
{
  referralCopy = referral;
  configurationCopy = configuration;
  completionCopy = completion;
  handlerProvider = [(CloudService *)self handlerProvider];
  v20 = 0;
  v14 = [handlerProvider handlerWithType:0 configuration:configurationCopy error:&v20];
  v15 = v20;

  if (v14)
  {
    clientIdentity = [configurationCopy clientIdentity];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10009FFB4;
    v18[3] = &unk_1001DC6E0;
    v19 = completionCopy;
    [v14 addStoreItemWithAdamID:d referral:referralCopy clientIdentity:clientIdentity completionHandler:v18];
  }

  else
  {
    v17 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218498;
      selfCopy = self;
      v23 = 2048;
      dCopy = d;
      v25 = 2114;
      v26 = v15;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "CloudService %p - addStoreItemWithAdamID (%lld) - Unable to service request for cloud library - error=%{public}@", buf, 0x20u);
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0, v15);
    }
  }
}

- (void)uploadArtworkForPlaylistWithPersistentID:(int64_t)d configuration:(id)configuration completion:(id)completion
{
  configurationCopy = configuration;
  completionCopy = completion;
  handlerProvider = [(CloudService *)self handlerProvider];
  v15 = 0;
  v11 = [handlerProvider handlerWithType:0 configuration:configurationCopy error:&v15];
  v12 = v15;

  if (v11)
  {
    clientIdentity = [configurationCopy clientIdentity];
    [v11 uploadArtworkForPlaylistWithPersistentID:d clientIdentity:clientIdentity completionHandler:completionCopy];
  }

  else
  {
    v14 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218498;
      selfCopy = self;
      v18 = 2048;
      dCopy = d;
      v20 = 2114;
      v21 = v12;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "CloudService %p - uploadArtworkForPlaylistWithPersistentID (%lld) - Unable to service request for cloud library - error=%{public}@", buf, 0x20u);
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy, v12);
    }
  }
}

- (void)publishPlaylistWithSagaID:(int64_t)d configuration:(id)configuration completion:(id)completion
{
  configurationCopy = configuration;
  completionCopy = completion;
  handlerProvider = [(CloudService *)self handlerProvider];
  v17 = 0;
  v11 = [handlerProvider handlerWithType:0 configuration:configurationCopy error:&v17];
  v12 = v17;

  if (v11)
  {
    clientIdentity = [configurationCopy clientIdentity];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000A0690;
    v15[3] = &unk_1001DC6B8;
    v16 = completionCopy;
    [v11 publishPlaylistWithSagaID:d clientIdentity:clientIdentity completionHandler:v15];
  }

  else
  {
    v14 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218498;
      selfCopy = self;
      v20 = 2048;
      dCopy = d;
      v22 = 2114;
      v23 = v12;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "CloudService %p - publishPlaylistWithSagaID (%lld) - Unable to service request for cloud library - error=%{public}@", buf, 0x20u);
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0, 0, v12);
    }
  }
}

- (void)addItemWithSagaID:(int64_t)d toPlaylistWithPersistentID:(int64_t)iD configuration:(id)configuration completion:(id)completion
{
  configurationCopy = configuration;
  completionCopy = completion;
  handlerProvider = [(CloudService *)self handlerProvider];
  v17 = 0;
  v13 = [handlerProvider handlerWithType:0 configuration:configurationCopy error:&v17];
  v14 = v17;

  if (v13)
  {
    clientIdentity = [configurationCopy clientIdentity];
    [v13 addItemWithSagaID:d toPlaylistWithPersistentID:iD clientIdentity:clientIdentity completionHandler:completionCopy];
  }

  else
  {
    v16 = os_log_create("com.apple.amp.itunescloudd", "PurchaseSync");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218754;
      selfCopy = self;
      v20 = 2048;
      dCopy = d;
      v22 = 2048;
      iDCopy = iD;
      v24 = 2114;
      v25 = v14;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "CloudService %p - addItemWithSagaID (sagaID=%lld, persistentID=%lld) - Unable to service request for purchases - error=%{public}@", buf, 0x2Au);
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy, v14);
    }
  }
}

- (void)addStoreItemWithAdamID:(int64_t)d referral:(id)referral toPlaylistWithPersistentID:(int64_t)iD configuration:(id)configuration completion:(id)completion
{
  referralCopy = referral;
  configurationCopy = configuration;
  completionCopy = completion;
  handlerProvider = [(CloudService *)self handlerProvider];
  v20 = 0;
  v16 = [handlerProvider handlerWithType:0 configuration:configurationCopy error:&v20];
  v17 = v20;

  if (v16)
  {
    clientIdentity = [configurationCopy clientIdentity];
    [v16 addStoreItemWithAdamID:d referral:referralCopy toPlaylistWithPersistentID:iD clientIdentity:clientIdentity completionHandler:completionCopy];
  }

  else
  {
    v19 = os_log_create("com.apple.amp.itunescloudd", "PurchaseSync");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218754;
      selfCopy = self;
      v23 = 2048;
      dCopy = d;
      v25 = 2048;
      iDCopy = iD;
      v27 = 2114;
      v28 = v17;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "CloudService %p - addStoreItemWithAdamIDToPlaylistWithPersistentID (adamID=%lld, persistentID=%lld) - Unable to service request for purchases - error=%{public}@", buf, 0x2Au);
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy, v17);
    }
  }
}

- (void)sdk_setPlaylistProperties:(id)properties trackList:(id)list forPlaylistPersistentID:(int64_t)d configuration:(id)configuration completion:(id)completion
{
  propertiesCopy = properties;
  listCopy = list;
  configurationCopy = configuration;
  completionCopy = completion;
  handlerProvider = [(CloudService *)self handlerProvider];
  v22 = 0;
  v17 = [handlerProvider handlerWithType:0 configuration:configurationCopy error:&v22];
  v18 = v22;

  if (v17)
  {
    clientIdentity = [configurationCopy clientIdentity];
    requestingBundleID = [(CloudService *)self requestingBundleID];
    [v17 setPlaylistProperties:propertiesCopy trackList:listCopy forPlaylistPersistentID:d clientIdentity:clientIdentity requestingBundleID:requestingBundleID completionHandler:completionCopy];
  }

  else
  {
    v21 = os_log_create("com.apple.amp.itunescloudd", "PurchaseSync");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218754;
      selfCopy = self;
      v25 = 2114;
      v26 = propertiesCopy;
      v27 = 2048;
      dCopy = d;
      v29 = 2114;
      v30 = v18;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "CloudService %p - sdk_setPlaylistProperties (properties=%{public}@, forPlaylistPersistentID=%lld) - Unable to service request for purchases - error=%{public}@", buf, 0x2Au);
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy, v18);
    }
  }
}

- (void)setPlaylistProperties:(id)properties trackList:(id)list forPlaylistPersistentID:(int64_t)d configuration:(id)configuration completion:(id)completion
{
  propertiesCopy = properties;
  listCopy = list;
  configurationCopy = configuration;
  completionCopy = completion;
  handlerProvider = [(CloudService *)self handlerProvider];
  v21 = 0;
  v17 = [handlerProvider handlerWithType:0 configuration:configurationCopy error:&v21];
  v18 = v21;

  if (v17)
  {
    clientIdentity = [configurationCopy clientIdentity];
    [v17 setPlaylistProperties:propertiesCopy trackList:listCopy forPlaylistPersistentID:d clientIdentity:clientIdentity completionHandler:completionCopy];
  }

  else
  {
    v20 = os_log_create("com.apple.amp.itunescloudd", "PurchaseSync");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218754;
      selfCopy = self;
      v24 = 2114;
      v25 = propertiesCopy;
      v26 = 2048;
      dCopy = d;
      v28 = 2114;
      v29 = v18;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "CloudService %p - setPlaylistProperties (properties=%{public}@, forPlaylistPersistentID=%lld) - Unable to service request for purchases - error=%{public}@", buf, 0x2Au);
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy, v18);
    }
  }
}

- (void)createPlaylistWithPersistentID:(int64_t)d properties:(id)properties trackList:(id)list configuration:(id)configuration completion:(id)completion
{
  propertiesCopy = properties;
  listCopy = list;
  configurationCopy = configuration;
  completionCopy = completion;
  handlerProvider = [(CloudService *)self handlerProvider];
  v23 = 0;
  v17 = [handlerProvider handlerWithType:0 configuration:configurationCopy error:&v23];
  v18 = v23;

  if (v17)
  {
    clientIdentity = [configurationCopy clientIdentity];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1000A0FB0;
    v21[3] = &unk_1001DC690;
    v22 = completionCopy;
    [v17 createPlaylistWithPersistentID:d properties:propertiesCopy trackList:listCopy clientIdentity:clientIdentity completionHandler:v21];
  }

  else
  {
    v20 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218754;
      selfCopy = self;
      v26 = 2048;
      dCopy = d;
      v28 = 2114;
      v29 = propertiesCopy;
      v30 = 2114;
      v31 = v18;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "CloudService %p - createPlaylistWithPersistentID (%lld, properties=%{public}@): - Unable to service request for cloud library - error=%{public}@", buf, 0x2Au);
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0, v18);
    }
  }
}

- (void)addGeniusPlaylistWithPersistentID:(int64_t)d name:(id)name seedItemSagaIDs:(id)ds itemSagaIDs:(id)iDs configuration:(id)configuration completion:(id)completion
{
  nameCopy = name;
  dsCopy = ds;
  iDsCopy = iDs;
  configurationCopy = configuration;
  completionCopy = completion;
  handlerProvider = [(CloudService *)self handlerProvider];
  v26 = 0;
  v20 = [handlerProvider handlerWithType:0 configuration:configurationCopy error:&v26];
  v21 = v26;

  if (v20)
  {
    clientIdentity = [configurationCopy clientIdentity];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1000A11E8;
    v24[3] = &unk_1001DC690;
    v25 = completionCopy;
    [v20 addGeniusPlaylistWithPersistentID:d name:nameCopy seedItemIDs:dsCopy itemIDs:iDsCopy clientIdentity:clientIdentity completionHandler:v24];
  }

  else
  {
    v23 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218498;
      selfCopy = self;
      v29 = 2048;
      dCopy = d;
      v31 = 2114;
      v32 = v21;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "CloudService %p - addGeniusPlaylistWithPersistentID (%lld) - Unable to service request for cloud library - error=%{public}@", buf, 0x20u);
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0, v21);
    }
  }
}

- (void)loadGeniusItemsForSagaID:(unint64_t)d configuration:(id)configuration completion:(id)completion
{
  configurationCopy = configuration;
  completionCopy = completion;
  handlerProvider = [(CloudService *)self handlerProvider];
  v17 = 0;
  v11 = [handlerProvider handlerWithType:0 configuration:configurationCopy error:&v17];
  v12 = v17;

  if (v11)
  {
    clientIdentity = [configurationCopy clientIdentity];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000A13DC;
    v15[3] = &unk_1001DC668;
    v16 = completionCopy;
    [v11 loadGeniusItemsForSagaID:d clientIdentity:clientIdentity completionHandler:v15];
  }

  else
  {
    v14 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218498;
      selfCopy = self;
      v20 = 2048;
      dCopy = d;
      v22 = 2114;
      v23 = v12;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "CloudService %p - loadGeniusItemsForSagaID (%llu) - Unable to service request for cloud library - error=%{public}@", buf, 0x20u);
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0, v12);
    }
  }
}

- (void)loadScreenshotInfoForSagaIDs:(id)ds configuration:(id)configuration completion:(id)completion
{
  dsCopy = ds;
  configurationCopy = configuration;
  completionCopy = completion;
  handlerProvider = [(CloudService *)self handlerProvider];
  v18 = 0;
  v12 = [handlerProvider handlerWithType:0 configuration:configurationCopy error:&v18];
  v13 = v18;

  if (v12)
  {
    clientIdentity = [configurationCopy clientIdentity];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000A15DC;
    v16[3] = &unk_1001DC640;
    v16[4] = self;
    v17 = completionCopy;
    [v12 loadScreenshotInfoForSagaIDs:dsCopy clientIdentity:clientIdentity completionHandler:v16];
  }

  else
  {
    v15 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218498;
      selfCopy = self;
      v21 = 2114;
      v22 = dsCopy;
      v23 = 2114;
      v24 = v13;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "CloudService %p - loadScreenshotInfoForSagaIDs (%{public}@) - Unable to service cloud library request - error=%{public}@", buf, 0x20u);
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, v13, 0);
    }
  }
}

- (void)loadArtworkInfoForContainerSagaIDs:(id)ds configuration:(id)configuration completion:(id)completion
{
  dsCopy = ds;
  configurationCopy = configuration;
  completionCopy = completion;
  handlerProvider = [(CloudService *)self handlerProvider];
  v18 = 0;
  v12 = [handlerProvider handlerWithType:0 configuration:configurationCopy error:&v18];
  v13 = v18;

  if (v12)
  {
    clientIdentity = [configurationCopy clientIdentity];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000A18D0;
    v16[3] = &unk_1001DC640;
    v16[4] = self;
    v17 = completionCopy;
    [v12 loadArtworkInfoForContainerSagaIDs:dsCopy clientIdentity:clientIdentity completionHandler:v16];
  }

  else
  {
    v15 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218498;
      selfCopy = self;
      v21 = 2114;
      v22 = dsCopy;
      v23 = 2114;
      v24 = v13;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "CloudService %p - loadArtworkInfoForContainerSagaIDs (%{public}@) - Unable to service cloud library request - error=%{public}@", buf, 0x20u);
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, v13, 0);
    }
  }
}

- (void)loadArtworkInfoForSagaIDs:(id)ds configuration:(id)configuration completion:(id)completion
{
  dsCopy = ds;
  configurationCopy = configuration;
  completionCopy = completion;
  handlerProvider = [(CloudService *)self handlerProvider];
  v18 = 0;
  v12 = [handlerProvider handlerWithType:0 configuration:configurationCopy error:&v18];
  v13 = v18;

  if (v12)
  {
    clientIdentity = [configurationCopy clientIdentity];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000A1BC4;
    v16[3] = &unk_1001DC640;
    v16[4] = self;
    v17 = completionCopy;
    [v12 loadArtworkInfoForSagaIDs:dsCopy clientIdentity:clientIdentity completionHandler:v16];
  }

  else
  {
    v15 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218498;
      selfCopy = self;
      v21 = 2114;
      v22 = dsCopy;
      v23 = 2114;
      v24 = v13;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "CloudService %p - loadArtworkInfoForSagaIDs (%{public}@) - Unable to service cloud library request - error=%{public}@", buf, 0x20u);
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, v13, 0);
    }
  }
}

- (void)deprioritizeContainerArtworkForSagaID:(unint64_t)d configuration:(id)configuration
{
  configurationCopy = configuration;
  handlerProvider = [(CloudService *)self handlerProvider];
  v11 = 0;
  v8 = [handlerProvider handlerWithType:0 configuration:configurationCopy error:&v11];

  v9 = v11;
  if (v8)
  {
    [v8 deprioritizeContainerArtworkForSagaID:d];
  }

  else
  {
    v10 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218498;
      selfCopy = self;
      v14 = 2048;
      dCopy = d;
      v16 = 2114;
      v17 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "CloudService %p - deprioritizeContainerArtworkForSagaID (%llu) - Unable to service cloud library request - error=%{public}@", buf, 0x20u);
    }
  }
}

- (void)deprioritizeScreenshotForSagaID:(unint64_t)d configuration:(id)configuration
{
  configurationCopy = configuration;
  handlerProvider = [(CloudService *)self handlerProvider];
  v11 = 0;
  v8 = [handlerProvider handlerWithType:0 configuration:configurationCopy error:&v11];

  v9 = v11;
  if (v8)
  {
    [v8 deprioritizeScreenshotForSagaID:d];
  }

  else
  {
    v10 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218498;
      selfCopy = self;
      v14 = 2048;
      dCopy = d;
      v16 = 2114;
      v17 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "CloudService %p - deprioritizeScreenshotForSagaID (%llu) - Unable to service cloud library request - error=%{public}@", buf, 0x20u);
    }
  }
}

- (void)deprioritizeItemArtworkForSagaID:(unint64_t)d configuration:(id)configuration
{
  configurationCopy = configuration;
  handlerProvider = [(CloudService *)self handlerProvider];
  v11 = 0;
  v8 = [handlerProvider handlerWithType:0 configuration:configurationCopy error:&v11];

  v9 = v11;
  if (v8)
  {
    [v8 deprioritizeItemArtworkForSagaID:d];
  }

  else
  {
    v10 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218498;
      selfCopy = self;
      v14 = 2048;
      dCopy = d;
      v16 = 2114;
      v17 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "CloudService %p - deprioritizeItemArtworkForSagaID (%llu) - Unable to service cloud library request - error=%{public}@", buf, 0x20u);
    }
  }
}

- (void)importContainerArtworkForSagaID:(unint64_t)d artworkVariantType:(int64_t)type configuration:(id)configuration completion:(id)completion
{
  configurationCopy = configuration;
  completionCopy = completion;
  handlerProvider = [(CloudService *)self handlerProvider];
  v17 = 0;
  v13 = [handlerProvider handlerWithType:0 configuration:configurationCopy error:&v17];
  v14 = v17;

  if (v13)
  {
    clientIdentity = [configurationCopy clientIdentity];
    [v13 importContainerArtworkForSagaID:d artworkVariantType:type clientIdentity:clientIdentity completionHandler:completionCopy];
  }

  else
  {
    v16 = os_log_create("com.apple.amp.itunescloudd", "PurchaseSync");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218498;
      selfCopy = self;
      v20 = 2048;
      dCopy = d;
      v22 = 2114;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "CloudService %p - importContainerArtworkForSagaID (sagaID=%lld) - Unable to service request - error=%{public}@", buf, 0x20u);
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy, v14);
    }
  }
}

- (void)importContainerArtworkForSagaID:(unint64_t)d configuration:(id)configuration completion:(id)completion
{
  configurationCopy = configuration;
  completionCopy = completion;
  handlerProvider = [(CloudService *)self handlerProvider];
  v15 = 0;
  v11 = [handlerProvider handlerWithType:0 configuration:configurationCopy error:&v15];
  v12 = v15;

  if (v11)
  {
    clientIdentity = [configurationCopy clientIdentity];
    [v11 importContainerArtworkForSagaID:d clientIdentity:clientIdentity completionHandler:completionCopy];
  }

  else
  {
    v14 = os_log_create("com.apple.amp.itunescloudd", "PurchaseSync");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218498;
      selfCopy = self;
      v18 = 2048;
      dCopy = d;
      v20 = 2114;
      v21 = v12;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "CloudService %p - importContainerArtworkForSagaID (sagaID=%lld) - Unable to service request - error=%{public}@", buf, 0x20u);
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy, v12);
    }
  }
}

- (void)importScreenshotForSagaID:(unint64_t)d configuration:(id)configuration completion:(id)completion
{
  configurationCopy = configuration;
  completionCopy = completion;
  handlerProvider = [(CloudService *)self handlerProvider];
  v15 = 0;
  v11 = [handlerProvider handlerWithType:0 configuration:configurationCopy error:&v15];
  v12 = v15;

  if (v11)
  {
    clientIdentity = [configurationCopy clientIdentity];
    [v11 importScreenshotForSagaID:d clientIdentity:clientIdentity completionHandler:completionCopy];
  }

  else
  {
    v14 = os_log_create("com.apple.amp.itunescloudd", "PurchaseSync");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218498;
      selfCopy = self;
      v18 = 2048;
      dCopy = d;
      v20 = 2114;
      v21 = v12;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "CloudService %p - importScreenshotForSagaID (sagaID=%lld) - Unable to service request - error=%{public}@", buf, 0x20u);
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy, v12);
    }
  }
}

- (void)importItemArtworkForSagaID:(unint64_t)d configuration:(id)configuration completion:(id)completion
{
  configurationCopy = configuration;
  completionCopy = completion;
  handlerProvider = [(CloudService *)self handlerProvider];
  v15 = 0;
  v11 = [handlerProvider handlerWithType:0 configuration:configurationCopy error:&v15];
  v12 = v15;

  if (v11)
  {
    clientIdentity = [configurationCopy clientIdentity];
    [v11 importItemArtworkForSagaID:d clientIdentity:clientIdentity completionHandler:completionCopy];
  }

  else
  {
    v14 = os_log_create("com.apple.amp.itunescloudd", "PurchaseSync");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218498;
      selfCopy = self;
      v18 = 2048;
      dCopy = d;
      v20 = 2114;
      v21 = v12;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "CloudService %p - importItemArtworkForSagaID (sagaID=%lld) - Unable to service request - error=%{public}@", buf, 0x20u);
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy, v12);
    }
  }
}

- (void)loadSagaUpdateProgressForConfiguration:(id)configuration completion:(id)completion
{
  completionCopy = completion;
  configurationCopy = configuration;
  handlerProvider = [(CloudService *)self handlerProvider];
  v15 = 0;
  v9 = [handlerProvider handlerWithType:0 configuration:configurationCopy error:&v15];

  v10 = v15;
  if (v9)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000A2880;
    v12[3] = &unk_1001DC618;
    v12[4] = self;
    v14 = 0;
    v13 = completionCopy;
    [v9 updateProgressForLibraryType:1 completionHandler:v12];

    if (completionCopy)
    {
LABEL_3:
      (*(completionCopy + 2))(completionCopy, v10, 0.0);
    }
  }

  else
  {
    v11 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      selfCopy = self;
      v18 = 2114;
      v19 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "CloudService %p - loadSagaUpdateProgressForConfiguration: - Unable to service cloud library request - error=%{public}@", buf, 0x16u);
    }

    if (completionCopy)
    {
      goto LABEL_3;
    }
  }
}

- (void)loadIsSagaUpdateInProgressForConfiguration:(id)configuration completion:(id)completion
{
  completionCopy = completion;
  configurationCopy = configuration;
  handlerProvider = [(CloudService *)self handlerProvider];
  v14 = 0;
  v9 = [handlerProvider handlerWithType:0 configuration:configurationCopy error:&v14];

  v10 = v14;
  if (v9)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000A2B18;
    v12[3] = &unk_1001DC5F0;
    v12[4] = self;
    v13 = completionCopy;
    [v9 isUpdatingCloudLibraryWithCompletion:v12];
  }

  else
  {
    v11 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      selfCopy = self;
      v17 = 2114;
      v18 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "CloudService %p - loadIsSagaUpdateInProgressForConfiguration: - Unable to service cloud library request - error=%{public}@", buf, 0x16u);
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0, 0);
    }
  }
}

- (void)setCloudFavoriteSongAddToLibraryBehavior:(int64_t)behavior forConfiguration:(id)configuration completion:(id)completion
{
  configurationCopy = configuration;
  completionCopy = completion;
  handlerProvider = [(CloudService *)self handlerProvider];
  v15 = 0;
  v11 = [handlerProvider handlerWithType:0 configuration:configurationCopy error:&v15];
  v12 = v15;

  if (v11)
  {
    clientIdentity = [configurationCopy clientIdentity];
    [v11 setCloudFavoriteSongAddToLibraryBehavior:behavior clientIdentity:clientIdentity completionHandler:completionCopy];
  }

  else
  {
    v14 = os_log_create("com.apple.amp.itunescloudd", "PurchaseSync");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218498;
      selfCopy = self;
      v18 = 1024;
      behaviorCopy = behavior;
      v20 = 2114;
      v21 = v12;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "CloudService %p - setCloudFavoriteSongAddToLibraryBehavior (%d) - Unable to service request - error=%{public}@", buf, 0x1Cu);
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy, v12);
    }
  }
}

- (void)setCloudAddToPlaylistBehavior:(int64_t)behavior forConfiguration:(id)configuration completion:(id)completion
{
  configurationCopy = configuration;
  completionCopy = completion;
  handlerProvider = [(CloudService *)self handlerProvider];
  v15 = 0;
  v11 = [handlerProvider handlerWithType:0 configuration:configurationCopy error:&v15];
  v12 = v15;

  if (v11)
  {
    clientIdentity = [configurationCopy clientIdentity];
    [v11 setCloudAddToPlaylistBehavior:behavior clientIdentity:clientIdentity completionHandler:completionCopy];
  }

  else
  {
    v14 = os_log_create("com.apple.amp.itunescloudd", "PurchaseSync");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218498;
      selfCopy = self;
      v18 = 1024;
      behaviorCopy = behavior;
      v20 = 2114;
      v21 = v12;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "CloudService %p - setCloudAddToPlaylistBehavior (%d) - Unable to service request - error=%{public}@", buf, 0x1Cu);
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy, v12);
    }
  }
}

- (void)deauthenticateForConfiguration:(id)configuration completion:(id)completion
{
  configurationCopy = configuration;
  completionCopy = completion;
  handlerProvider = [(CloudService *)self handlerProvider];
  v13 = 0;
  v9 = [handlerProvider handlerWithType:0 configuration:configurationCopy error:&v13];
  v10 = v13;

  if (v9)
  {
    clientIdentity = [configurationCopy clientIdentity];
    [v9 disableCloudLibraryWithClientIdentity:clientIdentity reason:-7 completionHandler:completionCopy];
  }

  else
  {
    v12 = os_log_create("com.apple.amp.itunescloudd", "PurchaseSync");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      selfCopy = self;
      v16 = 2114;
      v17 = v10;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "CloudService %p - deauthenticateForConfiguration - Unable to service request - error=%{public}@", buf, 0x16u);
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy, v10);
    }
  }
}

- (void)updateJaliscoLibraryWithReason:(int64_t)reason forConfiguration:(id)configuration completion:(id)completion
{
  configurationCopy = configuration;
  completionCopy = completion;
  handlerProvider = [(CloudService *)self handlerProvider];
  v15 = 0;
  v11 = [handlerProvider handlerWithType:0 configuration:configurationCopy error:&v15];
  v12 = v15;

  if (v11)
  {
    clientIdentity = [configurationCopy clientIdentity];
    [v11 updateJaliscoLibraryWithClientIdentity:clientIdentity forReason:reason completionHandler:completionCopy];
  }

  else
  {
    v14 = os_log_create("com.apple.amp.itunescloudd", "PurchaseSync");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218498;
      selfCopy = self;
      v18 = 1024;
      reasonCopy = reason;
      v20 = 2114;
      v21 = v12;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "CloudService %p - updateJaliscoLibraryWithReason - Unable to service request for purchases/reason=%d - error=%{public}@", buf, 0x1Cu);
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy, v12);
    }
  }
}

- (void)isSagaAuthenticatedForConfiguration:(id)configuration completion:(id)completion
{
  completionCopy = completion;
  configurationCopy = configuration;
  userIdentityStore = [configurationCopy userIdentityStore];
  userIdentity = [configurationCopy userIdentity];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000A3310;
  v10[3] = &unk_1001DC5C8;
  v11 = completionCopy;
  v9 = completionCopy;
  [userIdentityStore getPropertiesForUserIdentity:userIdentity completionHandler:v10];
}

- (void)setPreferredVideoQuality:(int64_t)quality forConfiguration:(id)configuration completion:(id)completion
{
  completionCopy = completion;
  userIdentity = [configuration userIdentity];
  v9 = [ML3MusicLibrary musicLibraryForUserAccount:userIdentity];

  [v9 icd_setPreferredVideoQuality:quality];
  completionCopy[2](completionCopy, 0);
}

- (void)updateSagaLibraryWithReason:(int64_t)reason forConfiguration:(id)configuration completion:(id)completion
{
  configurationCopy = configuration;
  completionCopy = completion;
  handlerProvider = [(CloudService *)self handlerProvider];
  v15 = 0;
  v11 = [handlerProvider handlerWithType:0 configuration:configurationCopy error:&v15];
  v12 = v15;

  if (v11)
  {
    clientIdentity = [configurationCopy clientIdentity];
    [v11 updateSagaLibraryWithClientIdentity:clientIdentity forReason:reason allowNoisyAuthPrompt:0 isExplicitUserAction:0 completionHandler:completionCopy];
  }

  else
  {
    v14 = os_log_create("com.apple.amp.itunescloudd", "PurchaseSync");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218498;
      selfCopy = self;
      v18 = 1024;
      reasonCopy = reason;
      v20 = 2114;
      v21 = v12;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "CloudService %p - updateSagaLibraryWithReason (%d) - Unable to service request - error=%{public}@", buf, 0x1Cu);
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy, v12);
    }
  }
}

- (void)setupInitialSagaPoolingForConfiguration:(id)configuration
{
  configurationCopy = configuration;
  handlerProvider = [(CloudService *)self handlerProvider];
  v16 = 0;
  v6 = [handlerProvider handlerWithType:0 configuration:configurationCopy error:&v16];
  v7 = v16;

  if (v6)
  {
    userIdentity = [configurationCopy userIdentity];
    userIdentityStore = [configurationCopy userIdentityStore];
    v10 = os_log_create("com.apple.amp.itunescloudd", "XPC");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      selfCopy3 = self;
      v19 = 2114;
      v20 = configurationCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "CloudService %p - [BecomeActive::Cloud] - Setting up Saga Pooling for configuration=%{public}@.", buf, 0x16u);
    }

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000A3818;
    v12[3] = &unk_1001DE9E0;
    v13 = userIdentity;
    selfCopy2 = self;
    v15 = configurationCopy;
    v11 = userIdentity;
    [userIdentityStore getPropertiesForUserIdentity:v11 completionHandler:v12];
  }

  else
  {
    userIdentityStore = os_log_create("com.apple.amp.itunescloudd", "XPC");
    if (os_log_type_enabled(userIdentityStore, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      selfCopy3 = self;
      v19 = 2114;
      v20 = v7;
      _os_log_impl(&_mh_execute_header, userIdentityStore, OS_LOG_TYPE_DEFAULT, "CloudService %p - [BecomeActive::Cloud] - Unable to service cloud library request - error=%{public}@.", buf, 0x16u);
    }
  }
}

- (CloudService)initWithHandlerProvider:(id)provider
{
  providerCopy = provider;
  v10.receiver = self;
  v10.super_class = CloudService;
  v5 = [(CloudService *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_handlerProvider, providerCopy);
    v7 = objc_alloc_init(NSOperationQueue);
    operationQueue = v6->_operationQueue;
    v6->_operationQueue = v7;

    [(NSOperationQueue *)v6->_operationQueue setName:@"com.apple.iTunesCloud.CloudService.operationQueue"];
    [(NSOperationQueue *)v6->_operationQueue setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)v6->_operationQueue setQualityOfService:25];
  }

  return v6;
}

@end