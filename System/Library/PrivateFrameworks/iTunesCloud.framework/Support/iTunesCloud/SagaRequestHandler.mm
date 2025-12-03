@interface SagaRequestHandler
- (BOOL)isUpdateInProgressWithIsInitialImport:(BOOL *)import;
- (SagaRequestHandler)init;
- (SagaRequestHandler)initWithConfiguration:(id)configuration progressObserver:(id)observer;
- (float)updateProgress;
- (id)_library;
- (void)_handleCloudLibraryUpdateOperationFinishedWithError:(id)error;
- (void)_handleLibraryEditOperationCompletionUpdatingLibrary:(BOOL)library andSubscribedPlaylist:(unint64_t)playlist completion:(id)completion;
- (void)_updateLibraryForFailedLibraryPinsOperationWithCompletion:(id)completion;
- (void)addGeniusPlaylistWithPersistentID:(int64_t)d name:(id)name seedItemIDs:(id)ds itemIDs:(id)iDs clientIdentity:(id)identity completionHandler:(id)handler;
- (void)addItemWithSagaID:(unint64_t)d toPlaylistWithPersistentID:(int64_t)iD clientIdentity:(id)identity completionHandler:(id)handler;
- (void)addItemWithSagaID:(unint64_t)d toPlaylistWithPersistentID:(int64_t)iD requestingBundleID:(id)bundleID clientIdentity:(id)identity completionHandler:(id)handler;
- (void)addStoreItemWithAdamID:(int64_t)d referral:(id)referral clientIdentity:(id)identity completionHandler:(id)handler;
- (void)addStoreItemWithAdamID:(int64_t)d referral:(id)referral toPlaylistWithPersistentID:(int64_t)iD clientIdentity:(id)identity completionHandler:(id)handler;
- (void)addStoreItemWithOpaqueID:(id)d requestingBundleID:(id)iD clientIdentity:(id)identity completionHandler:(id)handler;
- (void)addStoreItemWithOpaqueID:(id)d toPlaylistWithPersistentID:(int64_t)iD requestingBundleID:(id)bundleID clientIdentity:(id)identity completionHandler:(id)handler;
- (void)addStoreItemsWithAdamIDs:(id)ds referral:(id)referral clientIdentity:(id)identity completionHandler:(id)handler;
- (void)addStoreItemsWithAdamIDs:(id)ds referral:(id)referral toPlaylistWithPersistentID:(int64_t)d clientIdentity:(id)identity completionHandler:(id)handler;
- (void)addStorePlaylistWithGlobalID:(id)d clientIdentity:(id)identity completionHandler:(id)handler;
- (void)beginCollaborationUsingPlaylistWithPersistentID:(int64_t)d sharingMode:(unint64_t)mode completion:(id)completion;
- (void)cancelOperations;
- (void)cancelOperationsWithCompletionHandler:(id)handler;
- (void)cancelPendingChangesWithCompletion:(id)completion;
- (void)createPlaylistWithPersistentID:(int64_t)d properties:(id)properties trackList:(id)list clientIdentity:(id)identity completionHandler:(id)handler;
- (void)createPlaylistWithPersistentID:(int64_t)d properties:(id)properties trackList:(id)list requestingBundleID:(id)iD clientIdentity:(id)identity completionHandler:(id)handler;
- (void)dealloc;
- (void)decreasePriorityForAllOperations;
- (void)editCollaborationWithPersistentID:(int64_t)d properties:(id)properties trackEdits:(id)edits completion:(id)completion;
- (void)endCollaborationWithPersistentID:(int64_t)d completion:(id)completion;
- (void)environmentMonitorDidChangePower:(id)power;
- (void)favoriteAlbumWithPersistentID:(int64_t)d cloudLibraryID:(id)iD time:(id)time completionHandler:(id)handler;
- (void)favoriteArtistWithPersistentID:(int64_t)d cloudLibraryID:(id)iD time:(id)time completionHandler:(id)handler;
- (void)favoriteEntityWithPersistentID:(int64_t)d sagaID:(int64_t)iD entityType:(int64_t)type time:(id)time completionHandler:(id)handler;
- (void)favoriteEntityWithPersistentID:(int64_t)d storeID:(int64_t)iD entityType:(int64_t)type time:(id)time completionHandler:(id)handler;
- (void)favoritePlaylistWithPersistentID:(int64_t)d globalID:(id)iD time:(id)time completionHandler:(id)handler;
- (void)importContainerArtworkForSagaID:(unint64_t)d artworkVariantType:(int64_t)type clientIdentity:(id)identity completionHandler:(id)handler;
- (void)importItemArtworkForSagaID:(unint64_t)d clientIdentity:(id)identity completionHandler:(id)handler;
- (void)importScreenshotForSagaID:(unint64_t)d clientIdentity:(id)identity completionHandler:(id)handler;
- (void)increasePriorityForAllOperations;
- (void)joinCollaborationWithGlobalPlaylistID:(id)d invitationURL:(id)l completion:(id)completion;
- (void)loadArtworkInfoForContainerSagaIDs:(id)ds clientIdentity:(id)identity completionHandler:(id)handler;
- (void)loadArtworkInfoForSagaIDs:(id)ds clientIdentity:(id)identity completionHandler:(id)handler;
- (void)loadGeniusItemsForSagaID:(unint64_t)d clientIdentity:(id)identity completionHandler:(id)handler;
- (void)loadScreenshotInfoForSagaIDs:(id)ds clientIdentity:(id)identity completionHandler:(id)handler;
- (void)movePinnedAlbumWithPersistentID:(int64_t)d cloudAlbumID:(id)iD toPosition:(int64_t)position completion:(id)completion;
- (void)movePinnedArtistWithPersistentID:(int64_t)d cloudArtistID:(id)iD toPosition:(int64_t)position completion:(id)completion;
- (void)movePinnedEntityWithPersistentID:(int64_t)d cloudID:(int64_t)iD type:(int64_t)type toPosition:(int64_t)position completion:(id)completion;
- (void)pinLibraryAlbumWithPersistentID:(int64_t)d cloudAlbumID:(id)iD defaultAction:(int64_t)action completion:(id)completion;
- (void)pinLibraryArtistWithPersistentID:(int64_t)d cloudArtistID:(id)iD defaultAction:(int64_t)action completion:(id)completion;
- (void)pinLibraryEntityWithPersistentID:(int64_t)d cloudID:(int64_t)iD type:(int64_t)type defaultAction:(int64_t)action completion:(id)completion;
- (void)publishPlaylistWithSagaID:(unint64_t)d clientIdentity:(id)identity completionHandler:(id)handler;
- (void)removeCollaborators:(id)collaborators fromCollaborationWithPersistentID:(int64_t)d completion:(id)completion;
- (void)removeItemsWithSagaIDs:(id)ds clientIdentity:(id)identity completionHandler:(id)handler;
- (void)removePinnedAlbumWithPersistentID:(int64_t)d cloudAlbumID:(id)iD completion:(id)completion;
- (void)removePinnedArtistWithPersistentID:(int64_t)d cloudArtistID:(id)iD completion:(id)completion;
- (void)removePinnedEntityWithPersistentID:(int64_t)d cloudID:(int64_t)iD type:(int64_t)type completion:(id)completion;
- (void)resetInvitationURLForCollaborationWithPersistentID:(int64_t)d completion:(id)completion;
- (void)setAlbumArtistProperties:(id)properties withArtistPersistentID:(int64_t)d clientIdentity:(id)identity completionHandler:(id)handler;
- (void)setAlbumEntityProperties:(id)properties withAlbumPersistentID:(int64_t)d clientIdentity:(id)identity completionHandler:(id)handler;
- (void)setAlbumProperties:(id)properties forItemsWithAlbumPersistentID:(int64_t)d clientIdentity:(id)identity completionHandler:(id)handler;
- (void)setCloudAddToPlaylistBehavior:(int64_t)behavior clientIdentity:(id)identity completionHandler:(id)handler;
- (void)setCloudFavoriteSongAddToLibraryBehavior:(int64_t)behavior clientIdentity:(id)identity completionHandler:(id)handler;
- (void)setItemProperties:(id)properties forSagaID:(unint64_t)d clientIdentity:(id)identity completionHandler:(id)handler;
- (void)setPlaylistProperties:(id)properties trackList:(id)list forPlaylistPersistentID:(int64_t)d clientIdentity:(id)identity completionHandler:(id)handler;
- (void)setPlaylistProperties:(id)properties trackList:(id)list forPlaylistPersistentID:(int64_t)d clientIdentity:(id)identity requestingBundleID:(id)iD completionHandler:(id)handler;
- (void)updateItemPlayDataWithClientIdentity:(id)identity completionHandler:(id)handler;
- (void)updateLibraryWithClientIdentity:(id)identity reason:(int64_t)reason allowNoisyAuthPrompt:(BOOL)prompt isExplicitUserAction:(BOOL)action reconcileLibraryPins:(BOOL)pins completionHandler:(id)handler;
- (void)updatePinnedLibraryAlbumWithPersistentID:(int64_t)d cloudAlbumID:(id)iD defaultAction:(int64_t)action completion:(id)completion;
- (void)updatePinnedLibraryArtistWithPersistentID:(int64_t)d cloudArtistID:(id)iD defaultAction:(int64_t)action completion:(id)completion;
- (void)updatePinnedLibraryEntityWithPersistentID:(int64_t)d cloudID:(int64_t)iD type:(int64_t)type defaultAction:(int64_t)action completion:(id)completion;
- (void)updatePlaylistPlayDataWithClientIdentity:(id)identity completionHandler:(id)handler;
- (void)uploadArtworkForPlaylistWithPersistentID:(int64_t)d clientIdentity:(id)identity completionHandler:(id)handler;
- (void)uploadItemPropertiesWithClientIdentity:(id)identity minimumTimeInterval:(double)interval;
- (void)uploadPlaylistPropertiesWithClientIdentity:(id)identity minimumTimeInterval:(double)interval;
@end

@implementation SagaRequestHandler

- (void)_updateLibraryForFailedLibraryPinsOperationWithCompletion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion, 0);
  }
}

- (void)_handleLibraryEditOperationCompletionUpdatingLibrary:(BOOL)library andSubscribedPlaylist:(unint64_t)playlist completion:(id)completion
{
  libraryCopy = library;
  completionCopy = completion;
  clientIdentity = [(ICConnectionConfiguration *)self->_configuration clientIdentity];
  if (libraryCopy)
  {
    v10 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy2 = self;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ Requesting library update because the response contained update-required flag", buf, 0xCu);
    }

    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100086864;
    v17[3] = &unk_1001DC4E8;
    v17[4] = self;
    playlistCopy = playlist;
    v19 = completionCopy;
    v18 = clientIdentity;
    [(SagaRequestHandler *)self updateLibraryWithClientIdentity:v18 reason:8 allowNoisyAuthPrompt:1 isExplicitUserAction:0 reconcileLibraryPins:0 completionHandler:v17];

    v11 = v19;
  }

  else
  {
    if (!playlist)
    {
      (*(completionCopy + 2))(completionCopy, 0);
      goto LABEL_10;
    }

    v12 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy2 = self;
      v24 = 2048;
      playlistCopy2 = playlist;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ Requesting subscribed playlist update for %lld", buf, 0x16u);
    }

    v13 = [NSNumber numberWithUnsignedLongLong:playlist];
    v21 = v13;
    v14 = [NSArray arrayWithObjects:&v21 count:1];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100086AF4;
    v15[3] = &unk_1001DFC28;
    v15[4] = self;
    v16 = completionCopy;
    [(SagaRequestHandler *)self updateSubscribedPlaylistsWithSagaIDs:v14 ignoreMinRefreshInterval:1 requestReason:8 pinnedOnly:0 clientIdentity:clientIdentity completionHandler:v15];

    v11 = v16;
  }

LABEL_10:
}

- (void)_handleCloudLibraryUpdateOperationFinishedWithError:(id)error
{
  errorCopy = error;
  v5 = [(NSMutableArray *)self->_updateLibraryCompletionHandlers copy];
  if ([v5 count])
  {
    calloutQueue = self->_calloutQueue;
    v9 = _NSConcreteStackBlock;
    v10 = 3221225472;
    v11 = sub_100086EF8;
    v12 = &unk_1001DF618;
    v13 = v5;
    v14 = errorCopy;
    dispatch_async(calloutQueue, &v9);
  }

  [(NSMutableArray *)self->_updateLibraryCompletionHandlers removeAllObjects:v9];
  updateCloudLibraryOperation = self->_updateCloudLibraryOperation;
  self->_updateCloudLibraryOperation = 0;

  v8 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ - Posting Saga update in progress changed notification", buf, 0xCu);
  }
}

- (void)updateLibraryWithClientIdentity:(id)identity reason:(int64_t)reason allowNoisyAuthPrompt:(BOOL)prompt isExplicitUserAction:(BOOL)action reconcileLibraryPins:(BOOL)pins completionHandler:(id)handler
{
  pinsCopy = pins;
  actionCopy = action;
  promptCopy = prompt;
  identityCopy = identity;
  handlerCopy = handler;
  v16 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = ICCloudClientGetStringForRequestReason();
    *buf = 138544386;
    selfCopy8 = self;
    v74 = 2114;
    *v75 = v17;
    *&v75[8] = 1024;
    *v76 = promptCopy;
    *&v76[4] = 1024;
    *&v76[6] = actionCopy;
    v77 = 1024;
    v78 = pinsCopy;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ - Received request to update cloud library (requestReason = %{public}@), allowNoisyAuthPrompt=%{BOOL}u, isExplicitUserAction=%{BOOL}u, reconcileLibraryPins=%{BOOL}u", buf, 0x28u);
  }

  v18 = +[ICCloudAvailabilityController sharedController];
  shouldProhibitMusicActionForCurrentNetworkConditions = [v18 shouldProhibitMusicActionForCurrentNetworkConditions];

  if (!shouldProhibitMusicActionForCurrentNetworkConditions)
  {
    v51 = identityCopy;
    userIdentity = [(ICConnectionConfiguration *)self->_configuration userIdentity];
    v25 = [ICPrivacyInfo sharedPrivacyInfoForUserIdentity:userIdentity];
    shouldBlockPersonalizedNetworkRequestsForMedia = [v25 shouldBlockPersonalizedNetworkRequestsForMedia];

    if (shouldBlockPersonalizedNetworkRequestsForMedia)
    {
      v27 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        selfCopy8 = self;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%{public}@ - Skipping update because privacy acknowledgement is required", buf, 0xCu);
      }

      identityCopy = v51;
      if (!handlerCopy)
      {
        goto LABEL_45;
      }

      calloutQueue = self->_calloutQueue;
      v68[0] = _NSConcreteStackBlock;
      v68[1] = 3221225472;
      v68[2] = sub_1000878DC;
      v68[3] = &unk_1001DF5C8;
      v69 = handlerCopy;
      dispatch_async(calloutQueue, v68);
      v29 = v69;
      goto LABEL_44;
    }

    _library = [(SagaRequestHandler *)self _library];
    v29 = _library;
    if (!_library)
    {
      v41 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        selfCopy8 = self;
        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "%{public}@ - Could not initialize saga library", buf, 0xCu);
      }

      identityCopy = v51;
      if (!handlerCopy)
      {
        v29 = 0;
        goto LABEL_44;
      }

      v50 = userIdentity;
      v42 = self->_calloutQueue;
      v66[0] = _NSConcreteStackBlock;
      v66[1] = 3221225472;
      v66[2] = sub_100087954;
      v66[3] = &unk_1001DF5C8;
      v67 = handlerCopy;
      dispatch_async(v42, v66);
      v34 = v67;
LABEL_43:

      userIdentity = v50;
LABEL_44:

      goto LABEL_45;
    }

    v49 = _library;
    v50 = userIdentity;
    userIdentityStore = [(ICConnectionConfiguration *)self->_configuration userIdentityStore];
    userIdentity2 = [(ICConnectionConfiguration *)self->_configuration userIdentity];
    v65 = 0;
    v33 = [userIdentityStore getPropertiesForUserIdentity:userIdentity2 error:&v65];
    v34 = v65;

    v48 = v33;
    if (!v33 || v34)
    {
      v43 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
      identityCopy = v51;
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        selfCopy8 = self;
        v74 = 2114;
        *v75 = v34;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "%{public}@ - Could not load user identity properties. error=%{public}@", buf, 0x16u);
      }

      v29 = v49;
      if (!handlerCopy)
      {
        goto LABEL_42;
      }

      v44 = self->_calloutQueue;
      v62[0] = _NSConcreteStackBlock;
      v62[1] = 3221225472;
      v62[2] = sub_1000879C0;
      v62[3] = &unk_1001DF5A0;
      v64 = handlerCopy;
      v63 = v34;
      dispatch_async(v44, v62);

      v40 = v64;
    }

    else if ([v33 isActiveLocker])
    {
      [(ML3MusicLibrary *)self->_musicLibrary setClientIdentity:v51];
      dSID = [v33 DSID];
      sagaAccountID = [(ML3MusicLibrary *)self->_musicLibrary sagaAccountID];
      v47 = dSID;
      if (dSID != sagaAccountID && ([dSID isEqual:sagaAccountID] & 1) == 0)
      {
        if (sagaAccountID)
        {
          v37 = sub_10010275C();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
          {
            *buf = 138543874;
            selfCopy8 = self;
            v74 = 2114;
            *v75 = sagaAccountID;
            *&v75[8] = 2114;
            *v76 = v47;
            _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_FAULT, "%{public}@ - CloudIds are different. oldValue=%{public}@, currentValue=%{public}@}", buf, 0x20u);
          }

          [MSVAutoBugCapture snapshotWithDomain:MSVAutoBugCaptureDomainiTunesCloud type:@"Bug" subType:@"Different Cloud IDS" context:&stru_1001E0388 triggerThresholdValues:&stru_1001E0388 events:0 completion:0];
        }

        [(ML3MusicLibrary *)self->_musicLibrary setSagaAccountID:v47];
      }

      updateCloudLibraryQueue = self->_updateCloudLibraryQueue;
      v52[0] = _NSConcreteStackBlock;
      v52[1] = 3221225472;
      v52[2] = sub_100087A40;
      v52[3] = &unk_1001DC4C0;
      v55 = handlerCopy;
      reasonCopy = reason;
      v52[4] = self;
      v53 = v51;
      v57 = promptCopy;
      v58 = actionCopy;
      v59 = pinsCopy;
      v54 = v49;
      v39 = updateCloudLibraryQueue;
      v29 = v49;
      dispatch_async(v39, v52);

      v40 = v47;
    }

    else
    {
      v45 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543874;
        selfCopy8 = self;
        v74 = 1024;
        *v75 = reason;
        *&v75[4] = 1024;
        *&v75[6] = promptCopy;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "%{public}@ - Locker bit is not set on the account. Will not updateLibrary for reason=%d, allowNoisyAuthPrompt=%{BOOL}u", buf, 0x18u);
      }

      identityCopy = v51;
      v29 = v49;
      if (!handlerCopy)
      {
        goto LABEL_42;
      }

      v46 = self->_calloutQueue;
      v60[0] = _NSConcreteStackBlock;
      v60[1] = 3221225472;
      v60[2] = sub_1000879D4;
      v60[3] = &unk_1001DF5C8;
      v61 = handlerCopy;
      dispatch_async(v46, v60);
      v40 = v61;
    }

    identityCopy = v51;
LABEL_42:

    goto LABEL_43;
  }

  v20 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = ICCloudClientGetStringForRequestReason();
    *buf = 138543618;
    selfCopy8 = self;
    v74 = 2114;
    *v75 = v21;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%{public}@ - No WiFi connection, skipping update (requestReason = %{public}@)", buf, 0x16u);
  }

  if (reason == 2)
  {
    v22 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy8 = self;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%{public}@ - Rescheduling push notification triggered update when WiFi becomes available.", buf, 0xCu);
    }

    [(ICDCloudMusicLibrarySagaUpdateTaskHelper *)self->_updateTaskHelper scheduleBackgroundTaskToUpdateLibraryType:1];
  }

  if (handlerCopy)
  {
    v23 = self->_calloutQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000878C8;
    block[3] = &unk_1001DF5C8;
    v71 = handlerCopy;
    dispatch_async(v23, block);
    userIdentity = v71;
LABEL_45:
  }
}

- (id)_library
{
  library = self->_library;
  if (!library || [(CloudLibrary *)library failedToConnect])
  {
    v4 = [[SagaLibrary alloc] initWithConfiguration:self->_configuration];
    v5 = self->_library;
    self->_library = v4;
  }

  v6 = self->_library;

  return v6;
}

- (void)environmentMonitorDidChangePower:(id)power
{
  powerCopy = power;
  v5 = +[ICDeviceInfo currentDeviceInfo];
  isWatch = [v5 isWatch];

  if (isWatch)
  {
    isCharging = [powerCopy isCharging];
    v8 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (isCharging)
    {
      if (v9)
      {
        v12 = 138543362;
        selfCopy2 = self;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ - Device is plugged in - checking for artwork to download", &v12, 0xCu);
      }

      artworkImporter = self->_artworkImporter;
      clientIdentity = [(ICConnectionConfiguration *)self->_configuration clientIdentity];
      [(SagaArtworkImporter *)artworkImporter importAllItemArtworkWithClientIdentity:clientIdentity];
    }

    else
    {
      if (v9)
      {
        v12 = 138543362;
        selfCopy2 = self;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ - Device was unplugged from power - cancelling artwork downloads", &v12, 0xCu);
      }

      [(CloudArtworkImporter *)self->_artworkImporter cancelAllImports];
    }
  }
}

- (void)movePinnedAlbumWithPersistentID:(int64_t)d cloudAlbumID:(id)iD toPosition:(int64_t)position completion:(id)completion
{
  completionCopy = completion;
  iDCopy = iD;
  v12 = [[SagaMoveLibraryPinOperation alloc] initWithConfiguration:self->_configuration persistentID:d cloudAlbumID:iDCopy newPosition:position completion:completionCopy];

  [(SagaRequestHandler *)self _addLibraryOperation:v12 priority:2 noLibraryHandler:0];
}

- (void)movePinnedArtistWithPersistentID:(int64_t)d cloudArtistID:(id)iD toPosition:(int64_t)position completion:(id)completion
{
  completionCopy = completion;
  iDCopy = iD;
  v12 = [[SagaMoveLibraryPinOperation alloc] initWithConfiguration:self->_configuration persistentID:d cloudArtistID:iDCopy newPosition:position completion:completionCopy];

  [(SagaRequestHandler *)self _addLibraryOperation:v12 priority:2 noLibraryHandler:0];
}

- (void)movePinnedEntityWithPersistentID:(int64_t)d cloudID:(int64_t)iD type:(int64_t)type toPosition:(int64_t)position completion:(id)completion
{
  completionCopy = completion;
  v13 = [[SagaMoveLibraryPinOperation alloc] initWithConfiguration:self->_configuration persistentID:d cloudID:iD type:type newPosition:position completion:completionCopy];

  [(SagaRequestHandler *)self _addLibraryOperation:v13 priority:2 noLibraryHandler:0];
}

- (void)updatePinnedLibraryAlbumWithPersistentID:(int64_t)d cloudAlbumID:(id)iD defaultAction:(int64_t)action completion:(id)completion
{
  completionCopy = completion;
  iDCopy = iD;
  v12 = [[SagaUpdateLibraryPinOperation alloc] initWithConfiguration:self->_configuration persistentID:d cloudAlbumID:iDCopy defaultAction:action completion:completionCopy];

  [(SagaRequestHandler *)self _addLibraryOperation:v12 priority:2 noLibraryHandler:0];
}

- (void)updatePinnedLibraryArtistWithPersistentID:(int64_t)d cloudArtistID:(id)iD defaultAction:(int64_t)action completion:(id)completion
{
  completionCopy = completion;
  iDCopy = iD;
  v12 = [[SagaUpdateLibraryPinOperation alloc] initWithConfiguration:self->_configuration persistentID:d cloudArtistID:iDCopy defaultAction:action completion:completionCopy];

  [(SagaRequestHandler *)self _addLibraryOperation:v12 priority:2 noLibraryHandler:0];
}

- (void)updatePinnedLibraryEntityWithPersistentID:(int64_t)d cloudID:(int64_t)iD type:(int64_t)type defaultAction:(int64_t)action completion:(id)completion
{
  completionCopy = completion;
  v13 = [[SagaUpdateLibraryPinOperation alloc] initWithConfiguration:self->_configuration persistentID:d cloudID:iD type:type defaultAction:action completion:completionCopy];

  [(SagaRequestHandler *)self _addLibraryOperation:v13 priority:2 noLibraryHandler:0];
}

- (void)removePinnedAlbumWithPersistentID:(int64_t)d cloudAlbumID:(id)iD completion:(id)completion
{
  completionCopy = completion;
  iDCopy = iD;
  v10 = [[SagaRemoveLibraryPinOperation alloc] initWithConfiguration:self->_configuration persistentID:d cloudAlbumID:iDCopy completion:completionCopy];

  [(SagaRequestHandler *)self _addLibraryOperation:v10 priority:2 noLibraryHandler:0];
}

- (void)removePinnedArtistWithPersistentID:(int64_t)d cloudArtistID:(id)iD completion:(id)completion
{
  completionCopy = completion;
  iDCopy = iD;
  v10 = [[SagaRemoveLibraryPinOperation alloc] initWithConfiguration:self->_configuration persistentID:d cloudArtistID:iDCopy completion:completionCopy];

  [(SagaRequestHandler *)self _addLibraryOperation:v10 priority:2 noLibraryHandler:0];
}

- (void)removePinnedEntityWithPersistentID:(int64_t)d cloudID:(int64_t)iD type:(int64_t)type completion:(id)completion
{
  completionCopy = completion;
  v11 = [[SagaRemoveLibraryPinOperation alloc] initWithConfiguration:self->_configuration persistentID:d cloudID:iD type:type completion:completionCopy];

  [(SagaRequestHandler *)self _addLibraryOperation:v11 priority:2 noLibraryHandler:0];
}

- (void)pinLibraryAlbumWithPersistentID:(int64_t)d cloudAlbumID:(id)iD defaultAction:(int64_t)action completion:(id)completion
{
  completionCopy = completion;
  iDCopy = iD;
  v12 = [[SagaAddLibraryPinOperation alloc] initWithConfiguration:self->_configuration persistentID:d cloudAlbumID:iDCopy defaultAction:action completion:completionCopy];

  [(SagaRequestHandler *)self _addLibraryOperation:v12 priority:2 noLibraryHandler:0];
}

- (void)pinLibraryArtistWithPersistentID:(int64_t)d cloudArtistID:(id)iD defaultAction:(int64_t)action completion:(id)completion
{
  completionCopy = completion;
  iDCopy = iD;
  v12 = [[SagaAddLibraryPinOperation alloc] initWithConfiguration:self->_configuration persistentID:d cloudArtistID:iDCopy defaultAction:action completion:completionCopy];

  [(SagaRequestHandler *)self _addLibraryOperation:v12 priority:2 noLibraryHandler:0];
}

- (void)pinLibraryEntityWithPersistentID:(int64_t)d cloudID:(int64_t)iD type:(int64_t)type defaultAction:(int64_t)action completion:(id)completion
{
  completionCopy = completion;
  v13 = [[SagaAddLibraryPinOperation alloc] initWithConfiguration:self->_configuration persistentID:d cloudID:iD type:type defaultAction:action completion:completionCopy];

  [(SagaRequestHandler *)self _addLibraryOperation:v13 priority:2 noLibraryHandler:0];
}

- (void)resetInvitationURLForCollaborationWithPersistentID:(int64_t)d completion:(id)completion
{
  completionCopy = completion;
  v7 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v18 = 2048;
    dCopy = d;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ - resetting invitation link for persistentID %lld", buf, 0x16u);
  }

  v8 = [SagaCollaborationResetInvitationURLOperation alloc];
  configuration = self->_configuration;
  clientIdentity = [(ICConnectionConfiguration *)configuration clientIdentity];
  v11 = [(SagaCollaborationResetInvitationURLOperation *)v8 initWithConfiguration:configuration clientIdentity:clientIdentity persistentID:d];

  objc_initWeak(buf, v11);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100089388;
  v13[3] = &unk_1001DD5D0;
  objc_copyWeak(&v15, buf);
  v12 = completionCopy;
  v13[4] = self;
  v14 = v12;
  [(SagaCollaborationResetInvitationURLOperation *)v11 setCompletionBlock:v13];
  [(SagaRequestHandler *)self _addLibraryOperation:v11 priority:2 noLibraryHandler:0];

  objc_destroyWeak(&v15);
  objc_destroyWeak(buf);
}

- (void)removeCollaborators:(id)collaborators fromCollaborationWithPersistentID:(int64_t)d completion:(id)completion
{
  collaboratorsCopy = collaborators;
  completionCopy = completion;
  v10 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [collaboratorsCopy componentsJoinedByString:{@", "}];
    *buf = 138543874;
    selfCopy = self;
    v22 = 2114;
    v23 = v11;
    v24 = 2048;
    dCopy = d;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ - removing users (%{public}@) for persistendID %lld", buf, 0x20u);
  }

  v12 = [SagaCollaborationRemoveCollaboratorsOperation alloc];
  configuration = self->_configuration;
  clientIdentity = [(ICConnectionConfiguration *)configuration clientIdentity];
  v15 = [(SagaCollaborationRemoveCollaboratorsOperation *)v12 initWithConfiguration:configuration clientIdentity:clientIdentity persistentID:d socialProfileIDs:collaboratorsCopy];

  objc_initWeak(buf, v15);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100089758;
  v17[3] = &unk_1001DD5D0;
  objc_copyWeak(&v19, buf);
  v16 = completionCopy;
  v17[4] = self;
  v18 = v16;
  [(SagaCollaborationRemoveCollaboratorsOperation *)v15 setCompletionBlock:v17];
  [(SagaRequestHandler *)self _addLibraryOperation:v15 priority:2 noLibraryHandler:0];

  objc_destroyWeak(&v19);
  objc_destroyWeak(buf);
}

- (void)joinCollaborationWithGlobalPlaylistID:(id)d invitationURL:(id)l completion:(id)completion
{
  dCopy = d;
  lCopy = l;
  completionCopy = completion;
  v11 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v22 = 2114;
    v23 = dCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ - joining collaboration for playlist with cloud ID %{public}@", buf, 0x16u);
  }

  v12 = [SagaCollaborationJoinOperation alloc];
  configuration = self->_configuration;
  clientIdentity = [(ICConnectionConfiguration *)configuration clientIdentity];
  v15 = [(SagaCollaborationJoinOperation *)v12 initWithConfiguration:configuration clientIdentity:clientIdentity globalPlaylistID:dCopy invitationURL:lCopy];

  objc_initWeak(buf, v15);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100089E60;
  v17[3] = &unk_1001DD5D0;
  objc_copyWeak(&v19, buf);
  v16 = completionCopy;
  v17[4] = self;
  v18 = v16;
  [(SagaCollaborationJoinOperation *)v15 setCompletionBlock:v17];
  [(SagaRequestHandler *)self _addLibraryOperation:v15 priority:2 noLibraryHandler:0];

  objc_destroyWeak(&v19);
  objc_destroyWeak(buf);
}

- (void)editCollaborationWithPersistentID:(int64_t)d properties:(id)properties trackEdits:(id)edits completion:(id)completion
{
  propertiesCopy = properties;
  editsCopy = edits;
  completionCopy = completion;
  v13 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v24 = 2048;
    dCopy = d;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ - editing a collaboration with persistentID %lld", buf, 0x16u);
  }

  v14 = [SagaCollaborationEditOperation alloc];
  configuration = self->_configuration;
  clientIdentity = [(ICConnectionConfiguration *)configuration clientIdentity];
  v17 = [(SagaCollaborationEditOperation *)v14 initWithConfiguration:configuration clientIdentity:clientIdentity collaborationPersistentID:d properties:propertiesCopy trackEdits:editsCopy];

  objc_initWeak(buf, v17);
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10008A1F0;
  v19[3] = &unk_1001DD5D0;
  objc_copyWeak(&v21, buf);
  v18 = completionCopy;
  v19[4] = self;
  v20 = v18;
  [(SagaCollaborationEditOperation *)v17 setCompletionBlock:v19];
  [(SagaRequestHandler *)self _addLibraryOperation:v17 priority:2 noLibraryHandler:0];

  objc_destroyWeak(&v21);
  objc_destroyWeak(buf);
}

- (void)endCollaborationWithPersistentID:(int64_t)d completion:(id)completion
{
  completionCopy = completion;
  v7 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v18 = 2048;
    dCopy = d;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ - ending collaboration for playlist with persistent ID %lld", buf, 0x16u);
  }

  v8 = [SagaCollaborationEndOperation alloc];
  configuration = self->_configuration;
  clientIdentity = [(ICConnectionConfiguration *)configuration clientIdentity];
  v11 = [(SagaCollaborationEndOperation *)v8 initWithConfiguration:configuration clientIdentity:clientIdentity collaborationPersistentID:d];

  objc_initWeak(buf, v11);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10008A548;
  v13[3] = &unk_1001DD5D0;
  objc_copyWeak(&v15, buf);
  v12 = completionCopy;
  v13[4] = self;
  v14 = v12;
  [(SagaCollaborationEndOperation *)v11 setCompletionBlock:v13];
  [(SagaRequestHandler *)self _addLibraryOperation:v11 priority:2 noLibraryHandler:0];

  objc_destroyWeak(&v15);
  objc_destroyWeak(buf);
}

- (void)beginCollaborationUsingPlaylistWithPersistentID:(int64_t)d sharingMode:(unint64_t)mode completion:(id)completion
{
  completionCopy = completion;
  v9 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v19 = 2048;
    dCopy = d;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ - starting collaboration using playlist with persistentID %lld", buf, 0x16u);
  }

  v10 = self->_configuration;
  clientIdentity = [(ICConnectionConfiguration *)self->_configuration clientIdentity];
  v12 = [[SagaCollaborationBeginOperation alloc] initWithConfiguration:v10 clientIdentity:clientIdentity playlistPersistentID:d sharingMode:mode];
  objc_initWeak(buf, v12);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10008A8B4;
  v14[3] = &unk_1001DD5D0;
  objc_copyWeak(&v16, buf);
  v13 = completionCopy;
  v14[4] = self;
  v15 = v13;
  [(SagaCollaborationBeginOperation *)v12 setCompletionBlock:v14];
  [(SagaRequestHandler *)self _addLibraryOperation:v12 priority:2 noLibraryHandler:0];

  objc_destroyWeak(&v16);
  objc_destroyWeak(buf);
}

- (void)favoriteArtistWithPersistentID:(int64_t)d cloudLibraryID:(id)iD time:(id)time completionHandler:(id)handler
{
  iDCopy = iD;
  timeCopy = time;
  handlerCopy = handler;
  v13 = [iDCopy length];
  v14 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  v15 = v14;
  if (v13)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy2 = self;
      v32 = 2114;
      v33 = iDCopy;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ - favoriting artist with cloudID=%{public}@}", buf, 0x16u);
    }

    v16 = [SagaFavoriteEntityOperation alloc];
    configuration = self->_configuration;
    clientIdentity = [(ICConnectionConfiguration *)configuration clientIdentity];
    v19 = [(SagaFavoriteEntityOperation *)v16 initWithConfiguration:configuration clientIdentity:clientIdentity persistentID:d artistCloudLibraryID:iDCopy time:timeCopy];

    [(SagaFavoriteEntityOperation *)v19 setName:@"com.apple.itunescloudd.SagaRequestHandler.favoriteCloudArtistEntityOperation"];
    objc_initWeak(buf, v19);
    v22 = _NSConcreteStackBlock;
    v23 = 3221225472;
    v24 = sub_10008AD5C;
    v25 = &unk_1001DCA10;
    v26 = handlerCopy;
    objc_copyWeak(&v27, buf);
    [(SagaFavoriteEntityOperation *)v19 setCompletionBlock:&v22];
    [(SagaRequestHandler *)self _addLibraryOperation:v19 priority:2 noLibraryHandler:0, v22, v23, v24, v25];
    objc_destroyWeak(&v27);

    objc_destroyWeak(buf);
    goto LABEL_9;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543874;
    selfCopy2 = self;
    v32 = 2114;
    v33 = iDCopy;
    v34 = 2114;
    v35 = timeCopy;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%{public}@ - cannot favorite album artist with invalid cloud-library-id=%{public}@, timeStamp=%{public}@", buf, 0x20u);
  }

  if (handlerCopy)
  {
    v28[0] = @"entityType";
    v19 = NSStringFromICFavoriteMediaEntityType();
    v28[1] = @"action";
    v29[0] = v19;
    v29[1] = @"favorite";
    v20 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:2];
    v21 = [NSError errorWithDomain:ICErrorDomain code:-7101 userInfo:v20];
    (*(handlerCopy + 2))(handlerCopy, v21);

LABEL_9:
  }
}

- (void)favoriteAlbumWithPersistentID:(int64_t)d cloudLibraryID:(id)iD time:(id)time completionHandler:(id)handler
{
  iDCopy = iD;
  timeCopy = time;
  handlerCopy = handler;
  v13 = [iDCopy length];
  v14 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  v15 = v14;
  if (v13)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy2 = self;
      v32 = 2114;
      v33 = iDCopy;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ - favoriting album with cloudID=%{public}@}", buf, 0x16u);
    }

    v16 = [SagaFavoriteEntityOperation alloc];
    configuration = self->_configuration;
    clientIdentity = [(ICConnectionConfiguration *)configuration clientIdentity];
    v19 = [(SagaFavoriteEntityOperation *)v16 initWithConfiguration:configuration clientIdentity:clientIdentity persistentID:d albumCloudLibraryID:iDCopy time:timeCopy];

    [(SagaFavoriteEntityOperation *)v19 setName:@"com.apple.itunescloudd.SagaRequestHandler.favoriteCloudAlbumEntityOperation"];
    objc_initWeak(buf, v19);
    v22 = _NSConcreteStackBlock;
    v23 = 3221225472;
    v24 = sub_10008B108;
    v25 = &unk_1001DCA10;
    v26 = handlerCopy;
    objc_copyWeak(&v27, buf);
    [(SagaFavoriteEntityOperation *)v19 setCompletionBlock:&v22];
    [(SagaRequestHandler *)self _addLibraryOperation:v19 priority:2 noLibraryHandler:0, v22, v23, v24, v25];
    objc_destroyWeak(&v27);

    objc_destroyWeak(buf);
    goto LABEL_9;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543874;
    selfCopy2 = self;
    v32 = 2114;
    v33 = iDCopy;
    v34 = 2114;
    v35 = timeCopy;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%{public}@ - cannot favorite album with invalid cloud-library-id=%{public}@ timeStamp=%{public}@", buf, 0x20u);
  }

  if (handlerCopy)
  {
    v28[0] = @"entityType";
    v19 = NSStringFromICFavoriteMediaEntityType();
    v28[1] = @"action";
    v29[0] = v19;
    v29[1] = @"favorite";
    v20 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:2];
    v21 = [NSError errorWithDomain:ICErrorDomain code:-7101 userInfo:v20];
    (*(handlerCopy + 2))(handlerCopy, v21);

LABEL_9:
  }
}

- (void)favoriteEntityWithPersistentID:(int64_t)d sagaID:(int64_t)iD entityType:(int64_t)type time:(id)time completionHandler:(id)handler
{
  timeCopy = time;
  handlerCopy = handler;
  v13 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  v14 = v13;
  if (type <= 1)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = NSStringFromICFavoriteMediaEntityType();
      *buf = 138543874;
      selfCopy2 = self;
      v40 = 2048;
      iDCopy = iD;
      v42 = 2114;
      iDCopy2 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ - favoriting entity with cloudID=%lld, entityType=%{public}@", buf, 0x20u);
    }

    v16 = type == 0;

    v17 = &ML3TrackPropertyLikedState;
    if (!v16)
    {
      v17 = &ML3ContainerPropertyLikedState;
    }

    v18 = *v17;
    if (v16)
    {
      v19 = &ML3TrackPropertyLikedStateChangedDate;
    }

    else
    {
      v19 = &ML3ContainerPropertyLikedStateChangedDate;
    }

    v20 = v18;
    v21 = *v19;
    v36[0] = v20;
    v36[1] = v21;
    v37[0] = &off_1001ED5A0;
    v37[1] = timeCopy;
    v22 = [NSDictionary dictionaryWithObjects:v37 forKeys:v36 count:2];
    v23 = [SagaSetItemPropertyOperation alloc];
    configuration = self->_configuration;
    clientIdentity = [(ICConnectionConfiguration *)configuration clientIdentity];
    v26 = [(SagaSetItemPropertyOperation *)v23 initWithConfiguration:configuration clientIdentity:clientIdentity sagaID:iD properties:v22];

    objc_initWeak(buf, v26);
    v28 = _NSConcreteStackBlock;
    v29 = 3221225472;
    v30 = sub_10008B590;
    v31 = &unk_1001DCA10;
    v32 = handlerCopy;
    objc_copyWeak(&v33, buf);
    [(SagaSetItemPropertyOperation *)v26 setCompletionBlock:&v28];
    [(SagaSetItemPropertyOperation *)v26 setName:@"com.apple.itunescloudd.SagaRequestHandler.setItemPropertyOperation", v28, v29, v30, v31];
    [(SagaRequestHandler *)self _addLibraryOperation:v26 priority:2 noLibraryHandler:0];
    objc_destroyWeak(&v33);

    objc_destroyWeak(buf);
    goto LABEL_14;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v27 = NSStringFromICFavoriteMediaEntityType();
    *buf = 138543874;
    selfCopy2 = self;
    v40 = 2114;
    iDCopy = v27;
    v42 = 2048;
    iDCopy2 = iD;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%{public}@ - unsupported entityType=%{public}@ to favorite with entity with sagaID=%lld", buf, 0x20u);
  }

  if (handlerCopy)
  {
    v34[0] = @"entityType";
    v20 = NSStringFromICFavoriteMediaEntityType();
    v35[0] = v20;
    v34[1] = @"sagaID";
    v21 = [NSNumber numberWithLongLong:iD];
    v35[1] = v21;
    v34[2] = @"action";
    v35[2] = @"favorite";
    v22 = [NSDictionary dictionaryWithObjects:v35 forKeys:v34 count:3];
    v26 = [NSError errorWithDomain:ICErrorDomain code:-7101 userInfo:v22];
    (*(handlerCopy + 2))(handlerCopy, v26);
LABEL_14:
  }
}

- (void)favoritePlaylistWithPersistentID:(int64_t)d globalID:(id)iD time:(id)time completionHandler:(id)handler
{
  iDCopy = iD;
  timeCopy = time;
  handlerCopy = handler;
  v13 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v27 = 2114;
    v28 = iDCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ - favoriting playlist with globalID=%{public}@}", buf, 0x16u);
  }

  v14 = [SagaFavoriteEntityOperation alloc];
  configuration = self->_configuration;
  clientIdentity = [(ICConnectionConfiguration *)configuration clientIdentity];
  v17 = [(SagaFavoriteEntityOperation *)v14 initWithConfiguration:configuration clientIdentity:clientIdentity persistentID:d globalPlaylistID:iDCopy time:timeCopy];

  [(SagaFavoriteEntityOperation *)v17 setName:@"com.apple.itunescloudd.SagaRequestHandler.favoritePlaylistEntityOperation"];
  objc_initWeak(buf, v17);
  v19 = _NSConcreteStackBlock;
  v20 = 3221225472;
  v21 = sub_10008B834;
  v22 = &unk_1001DCA10;
  v18 = handlerCopy;
  v23 = v18;
  objc_copyWeak(&v24, buf);
  [(SagaFavoriteEntityOperation *)v17 setCompletionBlock:&v19];
  [(SagaRequestHandler *)self _addLibraryOperation:v17 priority:2 noLibraryHandler:0, v19, v20, v21, v22];
  objc_destroyWeak(&v24);

  objc_destroyWeak(buf);
}

- (void)favoriteEntityWithPersistentID:(int64_t)d storeID:(int64_t)iD entityType:(int64_t)type time:(id)time completionHandler:(id)handler
{
  timeCopy = time;
  handlerCopy = handler;
  v14 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = NSStringFromICFavoriteMediaEntityType();
    *buf = 138543874;
    selfCopy = self;
    v29 = 2048;
    iDCopy = iD;
    v31 = 2114;
    v32 = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ - favoriting entity with storeID=%lld, entityType=%{public}@", buf, 0x20u);
  }

  v16 = [SagaFavoriteEntityOperation alloc];
  configuration = self->_configuration;
  clientIdentity = [(ICConnectionConfiguration *)configuration clientIdentity];
  v19 = [(SagaFavoriteEntityOperation *)v16 initWithConfiguration:configuration clientIdentity:clientIdentity persistentID:d storeID:iD entityType:type time:timeCopy];

  [(SagaFavoriteEntityOperation *)v19 setName:@"com.apple.itunescloudd.SagaRequestHandler.favoriteEntityOperation"];
  objc_initWeak(buf, v19);
  v21 = _NSConcreteStackBlock;
  v22 = 3221225472;
  v23 = sub_10008BAFC;
  v24 = &unk_1001DCA10;
  v20 = handlerCopy;
  v25 = v20;
  objc_copyWeak(&v26, buf);
  [(SagaFavoriteEntityOperation *)v19 setCompletionBlock:&v21];
  [(SagaRequestHandler *)self _addLibraryOperation:v19 priority:2 noLibraryHandler:0, v21, v22, v23, v24];
  objc_destroyWeak(&v26);

  objc_destroyWeak(buf);
}

- (float)updateProgress
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  updateCloudLibraryQueue = self->_updateCloudLibraryQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10008BC24;
  v5[3] = &unk_1001DEF50;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(updateCloudLibraryQueue, v5);
  v3 = v7[6];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setItemProperties:(id)properties forSagaID:(unint64_t)d clientIdentity:(id)identity completionHandler:(id)handler
{
  propertiesCopy = properties;
  identityCopy = identity;
  handlerCopy = handler;
  v13 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    selfCopy2 = self;
    v26 = 2048;
    dCopy = d;
    v28 = 2114;
    v29 = propertiesCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ - Updating item properties for sagaID %lld. properties=%{public}@", buf, 0x20u);
  }

  v14 = [propertiesCopy objectForKey:@"daap.incrementplaycount"];
  if (v14 || ([propertiesCopy objectForKey:@"daap.incrementskipcount"], (v14 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(propertiesCopy, "objectForKey:", @"daap.songdateadded"), (v14 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(propertiesCopy, "objectForKey:", ML3TrackPropertyDatePlayed), (v14 = objc_claimAutoreleasedReturnValue()) != 0))
  {

LABEL_8:
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10008BFB4;
    v22[3] = &unk_1001DD8F0;
    v23 = handlerCopy;
    [(SagaRequestHandler *)self updateItemPlayDataWithClientIdentity:identityCopy completionHandler:v22];
    v15 = v23;
    goto LABEL_9;
  }

  v16 = [propertiesCopy objectForKey:ML3TrackPropertyDateSkipped];
  v17 = v16 == 0;

  if (!v17)
  {
    goto LABEL_8;
  }

  v18 = sub_10010275C();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy2 = self;
    v26 = 2114;
    dCopy = propertiesCopy;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ - Issuing immediate property change: %{public}@", buf, 0x16u);
  }

  v15 = [[SagaSetItemPropertyOperation alloc] initWithConfiguration:self->_configuration clientIdentity:identityCopy sagaID:d properties:propertiesCopy];
  objc_initWeak(buf, v15);
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10008BFCC;
  v19[3] = &unk_1001DCA10;
  v20 = handlerCopy;
  objc_copyWeak(&v21, buf);
  [(SagaSetItemPropertyOperation *)v15 setCompletionBlock:v19];
  [(SagaSetItemPropertyOperation *)v15 setName:@"com.apple.itunescloudd.SagaRequestHandler.setItemPropertyOperation"];
  [(SagaRequestHandler *)self _addLibraryOperation:v15 priority:2 noLibraryHandler:0];
  objc_destroyWeak(&v21);

  objc_destroyWeak(buf);
LABEL_9:
}

- (void)loadGeniusItemsForSagaID:(unint64_t)d clientIdentity:(id)identity completionHandler:(id)handler
{
  identityCopy = identity;
  handlerCopy = handler;
  v10 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v21 = 2048;
    dCopy = d;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ - Get genius items for saga ID: %llu", buf, 0x16u);
  }

  v11 = [[SagaGetGeniusItemsOperation alloc] initWithConfiguration:self->_configuration clientIdentity:identityCopy seedID:d numberOfItems:25];
  objc_initWeak(buf, v11);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10008C28C;
  v16[3] = &unk_1001DCA10;
  v12 = handlerCopy;
  v17 = v12;
  objc_copyWeak(&v18, buf);
  [(SagaGetGeniusItemsOperation *)v11 setCompletionBlock:v16];
  [(SagaGetGeniusItemsOperation *)v11 setName:@"com.apple.itunescloudd.SagaRequestHandler.getGeniusItemsOperation"];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10008C310;
  v14[3] = &unk_1001DD8F0;
  v13 = v12;
  v15 = v13;
  [(SagaRequestHandler *)self _addLibraryOperation:v11 priority:2 noLibraryHandler:v14];

  objc_destroyWeak(&v18);
  objc_destroyWeak(buf);
}

- (void)loadScreenshotInfoForSagaIDs:(id)ds clientIdentity:(id)identity completionHandler:(id)handler
{
  dsCopy = ds;
  identityCopy = identity;
  handlerCopy = handler;
  v10 = objc_alloc_init(NSMutableArray);
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v11 = dsCopy;
  v35 = [v11 countByEnumeratingWithState:&v41 objects:v49 count:16];
  if (!v35)
  {
    v27 = 0;
    v25 = v11;
LABEL_17:

    v26 = v27;
    v31 = v10;
    goto LABEL_18;
  }

  v29 = handlerCopy;
  v32 = 0;
  v34 = *v42;
  v33 = ML3TrackPropertyStoreSagaID;
  v30 = v11;
  v31 = v10;
LABEL_3:
  v12 = 0;
  while (1)
  {
    if (*v42 != v34)
    {
      objc_enumerationMutation(v11);
    }

    v13 = *(*(&v41 + 1) + 8 * v12);
    [(ML3MusicLibrary *)self->_musicLibrary setClientIdentity:identityCopy];
    v14 = [ML3ComparisonPredicate predicateWithProperty:v33 equalToValue:v13];
    v15 = [ML3Track anyInLibrary:self->_musicLibrary predicate:v14];
    v16 = [[ML3ArtworkTokenSet alloc] initWithEntity:v15 artworkType:2];
    v17 = [v16 artworkTokenForSource:200];
    v18 = [v17 length];
    if (v18)
    {
      v19 = ICCloudClientCreateArtworkInfoDictionary();
      [v10 addObject:v19];
    }

    else
    {
      v20 = identityCopy;
      v21 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
      if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
      {
        persistentID = [v15 persistentID];
        *buf = 134217984;
        v48 = persistentID;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_FAULT, "No saga artwork_token for screenshot item with persistent-id = %lld", buf, 0xCu);
      }

      v19 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"No saga artwork_token for screenshot item with persistent-id = %lld", [v15 persistentID]);
      v45 = @"NSDebugDescription";
      v46 = v19;
      v23 = [NSDictionary dictionaryWithObjects:&v46 forKeys:&v45 count:1];
      v24 = [NSError ic_cloudClientErrorWithCode:2021 userInfo:v23];

      v32 = v24;
      identityCopy = v20;
      v11 = v30;
      v10 = v31;
    }

    if (!v18)
    {
      break;
    }

    if (v35 == ++v12)
    {
      v35 = [v11 countByEnumeratingWithState:&v41 objects:v49 count:16];
      if (v35)
      {
        goto LABEL_3;
      }

      break;
    }
  }

  v25 = v10;
  v10 = 0;
  v26 = 0;
  handlerCopy = v29;
  v27 = v32;
  if (v32)
  {
    goto LABEL_17;
  }

LABEL_18:
  if (handlerCopy)
  {
    calloutQueue = self->_calloutQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10008C70C;
    block[3] = &unk_1001DF5F0;
    v40 = handlerCopy;
    v38 = v31;
    v39 = v26;
    dispatch_async(calloutQueue, block);
  }
}

- (void)loadArtworkInfoForContainerSagaIDs:(id)ds clientIdentity:(id)identity completionHandler:(id)handler
{
  dsCopy = ds;
  identityCopy = identity;
  handlerCopy = handler;
  v11 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy2 = self;
    v24 = 2114;
    v25 = dsCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ - Got load artwork info request for container saga IDs: %{public}@", buf, 0x16u);
  }

  v12 = +[ICCloudAvailabilityController sharedController];
  shouldProhibitMusicActionForCurrentNetworkConditions = [v12 shouldProhibitMusicActionForCurrentNetworkConditions];

  if (!shouldProhibitMusicActionForCurrentNetworkConditions)
  {
    v15 = [(CloudLoadBulkArtworkInfoOperation *)[SagaLoadBulkContainerArtworkInfoOperation alloc] initWithConfiguration:self->_configuration cloudIDs:dsCopy];
    objc_initWeak(buf, v15);
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10008CA38;
    v19[3] = &unk_1001DCA10;
    v16 = handlerCopy;
    v20 = v16;
    objc_copyWeak(&v21, buf);
    [(SagaLoadBulkContainerArtworkInfoOperation *)v15 setCompletionBlock:v19];
    [(SagaLoadBulkContainerArtworkInfoOperation *)v15 setName:@"com.apple.itunescloudd.SagaRequestHandler.loadArtworkInfoOperation"];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10008CABC;
    v17[3] = &unk_1001DD8F0;
    v18 = v16;
    [(SagaRequestHandler *)self _addLibraryOperation:v15 priority:1 noLibraryHandler:v17];

    objc_destroyWeak(&v21);
    objc_destroyWeak(buf);
    goto LABEL_9;
  }

  v14 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy2 = self;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ - No WiFi connection, skipping artwork info load.", buf, 0xCu);
  }

  if (handlerCopy)
  {
    v15 = [NSError errorWithDomain:NSURLErrorDomain code:-999 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, 0, v15);
LABEL_9:
  }
}

- (void)loadArtworkInfoForSagaIDs:(id)ds clientIdentity:(id)identity completionHandler:(id)handler
{
  dsCopy = ds;
  identityCopy = identity;
  handlerCopy = handler;
  v11 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy2 = self;
    v27 = 2114;
    v28 = dsCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ - Got load artwork info request for saga IDs: %{public}@", buf, 0x16u);
  }

  v12 = +[ICCloudAvailabilityController sharedController];
  shouldProhibitMusicActionForCurrentNetworkConditions = [v12 shouldProhibitMusicActionForCurrentNetworkConditions];

  if (!shouldProhibitMusicActionForCurrentNetworkConditions)
  {
    v16 = [(CloudLoadBulkArtworkInfoOperation *)[SagaLoadBulkItemArtworkInfoOperation alloc] initWithConfiguration:self->_configuration cloudIDs:dsCopy];
    objc_initWeak(buf, v16);
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10008CE90;
    v20[3] = &unk_1001DCA10;
    v17 = handlerCopy;
    v21 = v17;
    objc_copyWeak(&v22, buf);
    [(SagaLoadBulkItemArtworkInfoOperation *)v16 setCompletionBlock:v20];
    [(SagaLoadBulkItemArtworkInfoOperation *)v16 setName:@"com.apple.itunescloudd.SagaRequestHandler.loadArtworkInfoOperation"];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10008CF14;
    v18[3] = &unk_1001DD8F0;
    v19 = v17;
    [(SagaRequestHandler *)self _addLibraryOperation:v16 priority:1 noLibraryHandler:v18];

    objc_destroyWeak(&v22);
    objc_destroyWeak(buf);
    goto LABEL_9;
  }

  v14 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy2 = self;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ - No WiFi connection, skipping artwork info load.", buf, 0xCu);
  }

  if (handlerCopy)
  {
    calloutQueue = self->_calloutQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10008CE14;
    block[3] = &unk_1001DF5C8;
    v24 = handlerCopy;
    dispatch_async(calloutQueue, block);
    v16 = v24;
LABEL_9:
  }
}

- (void)importContainerArtworkForSagaID:(unint64_t)d artworkVariantType:(int64_t)type clientIdentity:(id)identity completionHandler:(id)handler
{
  identityCopy = identity;
  handlerCopy = handler;
  userIdentityStore = [(ICConnectionConfiguration *)self->_configuration userIdentityStore];
  userIdentity = [(ICConnectionConfiguration *)self->_configuration userIdentity];
  v23 = 0;
  v14 = [userIdentityStore getPropertiesForUserIdentity:userIdentity error:&v23];
  v15 = v23;

  if (v15)
  {
    v16 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      userIdentity2 = [(ICConnectionConfiguration *)self->_configuration userIdentity];
      msv_description = [v15 msv_description];
      *buf = 138543874;
      selfCopy2 = self;
      v26 = 2114;
      dCopy = userIdentity2;
      v28 = 2114;
      v29 = msv_description;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%{public}@ Failed to load properties for identity %{public}@ error=%{public}@", buf, 0x20u);
    }
  }

  if (v14)
  {
    [(SagaArtworkImporter *)self->_artworkImporter importContainerArtworkForSagaID:d variantType:type clientIdentity:identityCopy completionHandler:handlerCopy];
  }

  else
  {
    v19 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy2 = self;
      v26 = 2048;
      dCopy = d;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ - No active locker account, skipping import container artwork for saga ID: %llu", buf, 0x16u);
    }

    if (handlerCopy)
    {
      calloutQueue = self->_calloutQueue;
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_10008D1D4;
      v21[3] = &unk_1001DF5C8;
      v22 = handlerCopy;
      dispatch_async(calloutQueue, v21);
    }
  }
}

- (void)importScreenshotForSagaID:(unint64_t)d clientIdentity:(id)identity completionHandler:(id)handler
{
  identityCopy = identity;
  handlerCopy = handler;
  userIdentityStore = [(ICConnectionConfiguration *)self->_configuration userIdentityStore];
  userIdentity = [(ICConnectionConfiguration *)self->_configuration userIdentity];
  v21 = 0;
  v12 = [userIdentityStore getPropertiesForUserIdentity:userIdentity error:&v21];
  v13 = v21;

  if (v13)
  {
    v14 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      userIdentity2 = [(ICConnectionConfiguration *)self->_configuration userIdentity];
      msv_description = [v13 msv_description];
      *buf = 138543874;
      selfCopy2 = self;
      v24 = 2114;
      dCopy = userIdentity2;
      v26 = 2114;
      v27 = msv_description;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%{public}@ Failed to load properties for identity %{public}@ error=%{public}@", buf, 0x20u);
    }
  }

  if (v12)
  {
    [(SagaArtworkImporter *)self->_artworkImporter importScreenshotForSagaID:d clientIdentity:identityCopy completionHandler:handlerCopy];
  }

  else
  {
    v17 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy2 = self;
      v24 = 2048;
      dCopy = d;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ - No active locker account, skipping import screenshot for saga ID: %llu", buf, 0x16u);
    }

    if (handlerCopy)
    {
      calloutQueue = self->_calloutQueue;
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_10008D4C4;
      v19[3] = &unk_1001DF5C8;
      v20 = handlerCopy;
      dispatch_async(calloutQueue, v19);
    }
  }
}

- (void)importItemArtworkForSagaID:(unint64_t)d clientIdentity:(id)identity completionHandler:(id)handler
{
  identityCopy = identity;
  handlerCopy = handler;
  userIdentityStore = [(ICConnectionConfiguration *)self->_configuration userIdentityStore];
  userIdentity = [(ICConnectionConfiguration *)self->_configuration userIdentity];
  v21 = 0;
  v12 = [userIdentityStore getPropertiesForUserIdentity:userIdentity error:&v21];
  v13 = v21;

  if (v13)
  {
    v14 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      userIdentity2 = [(ICConnectionConfiguration *)self->_configuration userIdentity];
      msv_description = [v13 msv_description];
      *buf = 138543874;
      selfCopy2 = self;
      v24 = 2114;
      dCopy = userIdentity2;
      v26 = 2114;
      v27 = msv_description;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%{public}@ Failed to load properties for identity %{public}@ error=%{public}@", buf, 0x20u);
    }
  }

  if (v12)
  {
    [(SagaArtworkImporter *)self->_artworkImporter importItemArtworkForSagaID:d clientIdentity:identityCopy completionHandler:handlerCopy];
  }

  else
  {
    v17 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy2 = self;
      v24 = 2048;
      dCopy = d;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ - No active locker account, skipping import item artwork for saga ID: %llu", buf, 0x16u);
    }

    if (handlerCopy)
    {
      calloutQueue = self->_calloutQueue;
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_10008D7A4;
      v19[3] = &unk_1001DF5C8;
      v20 = handlerCopy;
      dispatch_async(calloutQueue, v19);
    }
  }
}

- (BOOL)isUpdateInProgressWithIsInitialImport:(BOOL *)import
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  updateCloudLibraryQueue = self->_updateCloudLibraryQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10008D8F0;
  block[3] = &unk_1001DEF78;
  block[4] = self;
  block[5] = &v12;
  block[6] = &v8;
  dispatch_sync(updateCloudLibraryQueue, block);
  if (import)
  {
    *import = *(v9 + 24);
  }

  v5 = *(v13 + 24);
  _Block_object_dispose(&v8, 8);
  _Block_object_dispose(&v12, 8);
  return v5;
}

- (void)setAlbumArtistProperties:(id)properties withArtistPersistentID:(int64_t)d clientIdentity:(id)identity completionHandler:(id)handler
{
  propertiesCopy = properties;
  identityCopy = identity;
  handlerCopy = handler;
  v13 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    selfCopy = self;
    v24 = 2114;
    v25 = propertiesCopy;
    v26 = 2048;
    dCopy = d;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ - Setting album artist properties %{public}@ on items with album artist persistent ID: %lld", buf, 0x20u);
  }

  v14 = [[SagaSetAlbumArtistPropertyOperation alloc] initWithConfiguration:self->_configuration clientIdentity:identityCopy persistentID:d properties:propertiesCopy];
  objc_initWeak(buf, v14);
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10008DBA0;
  v19[3] = &unk_1001DCA10;
  v15 = handlerCopy;
  v20 = v15;
  objc_copyWeak(&v21, buf);
  [(SagaSetAlbumArtistPropertyOperation *)v14 setCompletionBlock:v19];
  [(SagaSetAlbumArtistPropertyOperation *)v14 setName:@"com.apple.itunescloudd.SagaRequestHandler.setAlbumArtistPropertiesOperation"];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10008DC20;
  v17[3] = &unk_1001DD8F0;
  v16 = v15;
  v18 = v16;
  [(SagaRequestHandler *)self _addLibraryOperation:v14 priority:2 noLibraryHandler:v17];

  objc_destroyWeak(&v21);
  objc_destroyWeak(buf);
}

- (void)setAlbumEntityProperties:(id)properties withAlbumPersistentID:(int64_t)d clientIdentity:(id)identity completionHandler:(id)handler
{
  propertiesCopy = properties;
  identityCopy = identity;
  handlerCopy = handler;
  v13 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    selfCopy = self;
    v24 = 2114;
    v25 = propertiesCopy;
    v26 = 2048;
    dCopy = d;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ - Setting album properties %{public}@ with album persistent ID: %lld", buf, 0x20u);
  }

  v14 = [[SagaSetAlbumPropertyOperation alloc] initWithConfiguration:self->_configuration clientIdentity:identityCopy albumPersistentID:d properties:propertiesCopy];
  objc_initWeak(buf, v14);
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10008DE98;
  v19[3] = &unk_1001DCA10;
  v15 = handlerCopy;
  v20 = v15;
  objc_copyWeak(&v21, buf);
  [(SagaSetAlbumPropertyOperation *)v14 setCompletionBlock:v19];
  [(SagaSetAlbumPropertyOperation *)v14 setName:@"com.apple.itunescloudd.SagaRequestHandler.setAlbumPropertiesOperation"];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10008DF18;
  v17[3] = &unk_1001DD8F0;
  v16 = v15;
  v18 = v16;
  [(SagaRequestHandler *)self _addLibraryOperation:v14 priority:2 noLibraryHandler:v17];

  objc_destroyWeak(&v21);
  objc_destroyWeak(buf);
}

- (void)setAlbumProperties:(id)properties forItemsWithAlbumPersistentID:(int64_t)d clientIdentity:(id)identity completionHandler:(id)handler
{
  propertiesCopy = properties;
  identityCopy = identity;
  handlerCopy = handler;
  v13 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    selfCopy = self;
    v24 = 2114;
    v25 = propertiesCopy;
    v26 = 2048;
    dCopy = d;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ - Setting album properties %{public}@ on items with album persistent ID: %lld", buf, 0x20u);
  }

  v14 = [[SagaSetAlbumItemPropertyOperation alloc] initWithConfiguration:self->_configuration clientIdentity:identityCopy albumPersistentID:d albumItemProperties:propertiesCopy];
  objc_initWeak(buf, v14);
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10008E190;
  v19[3] = &unk_1001DCA10;
  v15 = handlerCopy;
  v20 = v15;
  objc_copyWeak(&v21, buf);
  [(SagaSetAlbumItemPropertyOperation *)v14 setCompletionBlock:v19];
  [(SagaSetAlbumItemPropertyOperation *)v14 setName:@"com.apple.itunescloudd.SagaRequestHandler.setAlbumPropertiesOperation"];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10008E210;
  v17[3] = &unk_1001DD8F0;
  v16 = v15;
  v18 = v16;
  [(SagaRequestHandler *)self _addLibraryOperation:v14 priority:2 noLibraryHandler:v17];

  objc_destroyWeak(&v21);
  objc_destroyWeak(buf);
}

- (void)setCloudFavoriteSongAddToLibraryBehavior:(int64_t)behavior clientIdentity:(id)identity completionHandler:(id)handler
{
  identityCopy = identity;
  handlerCopy = handler;
  v10 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = ICCloudClientGetStringForAddToLibraryBehavior();
    *buf = 138543618;
    selfCopy = self;
    v22 = 2114;
    v23 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ - Setting cloud add to library behavior to: %{public}@", buf, 0x16u);
  }

  v12 = [[CloudSetFavoriteSongAddToLibraryBehaviorOperation alloc] initWithConfiguration:self->_configuration clientIdentity:identityCopy addToLibraryBehavior:behavior];
  objc_initWeak(buf, v12);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10008E47C;
  v17[3] = &unk_1001DCA10;
  v13 = handlerCopy;
  v18 = v13;
  objc_copyWeak(&v19, buf);
  [(CloudSetFavoriteSongAddToLibraryBehaviorOperation *)v12 setCompletionBlock:v17];
  [(CloudSetFavoriteSongAddToLibraryBehaviorOperation *)v12 setName:@"com.apple.itunescloudd.SagaRequestHandler.setAddToLibraryBehaviorOperation"];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10008E4F8;
  v15[3] = &unk_1001DD8F0;
  v14 = v13;
  v16 = v14;
  [(SagaRequestHandler *)self _addLibraryOperation:v12 priority:2 noLibraryHandler:v15];

  objc_destroyWeak(&v19);
  objc_destroyWeak(buf);
}

- (void)setCloudAddToPlaylistBehavior:(int64_t)behavior clientIdentity:(id)identity completionHandler:(id)handler
{
  identityCopy = identity;
  handlerCopy = handler;
  v10 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = ICCloudClientGetStringForAddToPlaylistBehavior();
    *buf = 138543618;
    selfCopy = self;
    v22 = 2114;
    v23 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ - Setting cloud add to playlist behavior to: %{public}@", buf, 0x16u);
  }

  v12 = [[CloudSetAddToPlaylistBehaviorOperation alloc] initWithConfiguration:self->_configuration clientIdentity:identityCopy addToPlaylistBehavior:behavior];
  objc_initWeak(buf, v12);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10008E764;
  v17[3] = &unk_1001DCA10;
  v13 = handlerCopy;
  v18 = v13;
  objc_copyWeak(&v19, buf);
  [(CloudSetAddToPlaylistBehaviorOperation *)v12 setCompletionBlock:v17];
  [(CloudSetAddToPlaylistBehaviorOperation *)v12 setName:@"com.apple.itunescloudd.SagaRequestHandler.setAddToPlaylistBehaviorOperation"];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10008E7E0;
  v15[3] = &unk_1001DD8F0;
  v14 = v13;
  v16 = v14;
  [(SagaRequestHandler *)self _addLibraryOperation:v12 priority:2 noLibraryHandler:v15];

  objc_destroyWeak(&v19);
  objc_destroyWeak(buf);
}

- (void)addStorePlaylistWithGlobalID:(id)d clientIdentity:(id)identity completionHandler:(id)handler
{
  dCopy = d;
  identityCopy = identity;
  handlerCopy = handler;
  v11 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v26 = 2114;
    v27 = dCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ - Received request to add store playlist with global ID: %{public}@", buf, 0x16u);
  }

  v12 = [[SagaCloudAddPlaylistOperation alloc] initWithConfiguration:self->_configuration clientIdentity:identityCopy playlistGlobalID:dCopy];
  objc_initWeak(buf, v12);
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10008EA70;
  v20[3] = &unk_1001DC420;
  objc_copyWeak(&v23, buf);
  v20[4] = self;
  v13 = dCopy;
  v21 = v13;
  v14 = handlerCopy;
  v22 = v14;
  [(SagaCloudAddPlaylistOperation *)v12 setCompletionBlock:v20];
  [(SagaCloudAddPlaylistOperation *)v12 setName:@"com.apple.itunescloudd.SagaRequestHandler.cloudAddOperation"];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10008ECC4;
  v17[3] = &unk_1001DFC28;
  v15 = v13;
  v18 = v15;
  v16 = v14;
  v19 = v16;
  [(SagaRequestHandler *)self _addLibraryOperation:v12 priority:2 noLibraryHandler:v17];

  objc_destroyWeak(&v23);
  objc_destroyWeak(buf);
}

- (void)addStoreItemWithOpaqueID:(id)d requestingBundleID:(id)iD clientIdentity:(id)identity completionHandler:(id)handler
{
  dCopy = d;
  iDCopy = iD;
  handlerCopy = handler;
  identityCopy = identity;
  v14 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    selfCopy = self;
    v24 = 2114;
    v25 = dCopy;
    v26 = 2114;
    v27 = iDCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ - Received request to add store item with opaque ID: %{public}@ from %{public}@", buf, 0x20u);
  }

  v15 = [[SagaCloudSDKAddOperation alloc] initWithConfiguration:self->_configuration clientIdentity:identityCopy opaqueID:dCopy bundleID:iDCopy];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10008F134;
  v20[3] = &unk_1001DC6E0;
  v16 = handlerCopy;
  v21 = v16;
  [(SagaCloudSDKAddOperation *)v15 setUpdateCompletionBlock:v20];
  [(SagaCloudSDKAddOperation *)v15 setName:@"com.apple.itunescloudd.SagaRequestHandler.cloudAddOperation"];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10008F14C;
  v18[3] = &unk_1001DD8F0;
  v19 = v16;
  v17 = v16;
  [(SagaRequestHandler *)self _addLibraryOperation:v15 priority:2 noLibraryHandler:v18];
}

- (void)addStoreItemsWithAdamIDs:(id)ds referral:(id)referral clientIdentity:(id)identity completionHandler:(id)handler
{
  dsCopy = ds;
  referralCopy = referral;
  identityCopy = identity;
  handlerCopy = handler;
  if ([referralCopy albumAdamID])
  {
    v14 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      selfCopy3 = self;
      v34 = 2114;
      v35 = dsCopy;
      v36 = 2048;
      albumAdamID = [referralCopy albumAdamID];
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ - Received request to add store item with adam IDs: %{public}@ (referral albumAdamID = %lld)", buf, 0x20u);
    }

    v15 = -[SagaCloudAddItemOperation initWithConfiguration:adamIDs:referralAlbumAdamID:clientIdentity:]([SagaCloudAddItemOperation alloc], "initWithConfiguration:adamIDs:referralAlbumAdamID:clientIdentity:", self->_configuration, dsCopy, [referralCopy albumAdamID], identityCopy);
LABEL_5:
    v16 = v15;
    goto LABEL_10;
  }

  playlistGlobalID = [referralCopy playlistGlobalID];
  v18 = [playlistGlobalID length];

  v19 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
  if (!v18)
  {
    if (v20)
    {
      *buf = 138543618;
      selfCopy3 = self;
      v34 = 2114;
      v35 = dsCopy;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ - Received request to add store item with adam ID: %{public}@", buf, 0x16u);
    }

    v15 = [[SagaCloudAddItemOperation alloc] initWithConfiguration:self->_configuration adamIDs:dsCopy clientIdentity:identityCopy];
    goto LABEL_5;
  }

  if (v20)
  {
    playlistGlobalID2 = [referralCopy playlistGlobalID];
    *buf = 138543874;
    selfCopy3 = self;
    v34 = 2114;
    v35 = dsCopy;
    v36 = 2114;
    albumAdamID = playlistGlobalID2;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ - Received request to add store item with adam ID: %{public}@ (referral playlistGlobalID = %{public}@)", buf, 0x20u);
  }

  v22 = [SagaCloudAddItemOperation alloc];
  configuration = self->_configuration;
  playlistGlobalID3 = [referralCopy playlistGlobalID];
  v16 = [(SagaCloudAddItemOperation *)v22 initWithConfiguration:configuration adamIDs:dsCopy referralPlaylistGlobalID:playlistGlobalID3 clientIdentity:identityCopy];

LABEL_10:
  objc_initWeak(buf, v16);
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_10008F560;
  v29[3] = &unk_1001DD5D0;
  objc_copyWeak(&v31, buf);
  v29[4] = self;
  v25 = handlerCopy;
  v30 = v25;
  [(SagaCloudAddItemOperation *)v16 setCompletionBlock:v29];
  [(SagaCloudAddItemOperation *)v16 setName:@"com.apple.itunescloudd.SagaRequestHandler.cloudAddOperation"];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_10008F61C;
  v27[3] = &unk_1001DD8F0;
  v26 = v25;
  v28 = v26;
  [(SagaRequestHandler *)self _addLibraryOperation:v16 priority:2 noLibraryHandler:v27];

  objc_destroyWeak(&v31);
  objc_destroyWeak(buf);
}

- (void)addStoreItemWithAdamID:(int64_t)d referral:(id)referral clientIdentity:(id)identity completionHandler:(id)handler
{
  referralCopy = referral;
  identityCopy = identity;
  handlerCopy = handler;
  if ([referralCopy albumAdamID])
  {
    v13 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      selfCopy3 = self;
      v42 = 2048;
      dCopy3 = d;
      v44 = 2048;
      albumAdamID = [referralCopy albumAdamID];
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ - Received request to add store item with adam ID: %lld (referral albumAdamID = %lld)", buf, 0x20u);
    }

    v14 = [SagaCloudAddItemOperation alloc];
    configuration = self->_configuration;
    v16 = [NSNumber numberWithLongLong:d];
    v39 = v16;
    v17 = [NSArray arrayWithObjects:&v39 count:1];
    v18 = -[SagaCloudAddItemOperation initWithConfiguration:adamIDs:referralAlbumAdamID:clientIdentity:](v14, "initWithConfiguration:adamIDs:referralAlbumAdamID:clientIdentity:", configuration, v17, [referralCopy albumAdamID], identityCopy);
LABEL_5:
    v19 = v18;
    goto LABEL_10;
  }

  playlistGlobalID = [referralCopy playlistGlobalID];
  v21 = [playlistGlobalID length];

  v22 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
  if (!v21)
  {
    if (v23)
    {
      *buf = 138543618;
      selfCopy3 = self;
      v42 = 2048;
      dCopy3 = d;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%{public}@ - Received request to add store item with adam ID: %lld", buf, 0x16u);
    }

    v30 = [SagaCloudAddItemOperation alloc];
    v31 = self->_configuration;
    v16 = [NSNumber numberWithLongLong:d];
    v37 = v16;
    v17 = [NSArray arrayWithObjects:&v37 count:1];
    v18 = [(SagaCloudAddItemOperation *)v30 initWithConfiguration:v31 adamIDs:v17 clientIdentity:identityCopy];
    goto LABEL_5;
  }

  if (v23)
  {
    playlistGlobalID2 = [referralCopy playlistGlobalID];
    *buf = 138543874;
    selfCopy3 = self;
    v42 = 2048;
    dCopy3 = d;
    v44 = 2114;
    albumAdamID = playlistGlobalID2;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%{public}@ - Received request to add store item with adam ID: %lld (referral playlistGlobalID = %{public}@)", buf, 0x20u);
  }

  v25 = [SagaCloudAddItemOperation alloc];
  v26 = self->_configuration;
  v16 = [NSNumber numberWithLongLong:d];
  v38 = v16;
  v17 = [NSArray arrayWithObjects:&v38 count:1];
  playlistGlobalID3 = [referralCopy playlistGlobalID];
  v19 = [(SagaCloudAddItemOperation *)v25 initWithConfiguration:v26 adamIDs:v17 referralPlaylistGlobalID:playlistGlobalID3 clientIdentity:identityCopy];

LABEL_10:
  objc_initWeak(buf, v19);
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_10008FAF0;
  v34[3] = &unk_1001DD5D0;
  objc_copyWeak(&v36, buf);
  v34[4] = self;
  v28 = handlerCopy;
  v35 = v28;
  [(SagaCloudAddItemOperation *)v19 setCompletionBlock:v34];
  [(SagaCloudAddItemOperation *)v19 setName:@"com.apple.itunescloudd.SagaRequestHandler.cloudAddOperation"];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_10008FBAC;
  v32[3] = &unk_1001DD8F0;
  v29 = v28;
  v33 = v29;
  [(SagaRequestHandler *)self _addLibraryOperation:v19 priority:2 noLibraryHandler:v32];

  objc_destroyWeak(&v36);
  objc_destroyWeak(buf);
}

- (void)uploadArtworkForPlaylistWithPersistentID:(int64_t)d clientIdentity:(id)identity completionHandler:(id)handler
{
  identityCopy = identity;
  handlerCopy = handler;
  v10 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v24 = 2048;
    dCopy = d;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ - Setting artwork on saga playlist (pid = %lld)", buf, 0x16u);
  }

  v11 = [[SagaUploadPlaylistArtworkOperation alloc] initWithConfiguration:self->_configuration clientIdentity:identityCopy playlistPersistentID:d];
  objc_initWeak(buf, v11);
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_1000902E4;
  v18 = &unk_1001DC368;
  selfCopy2 = self;
  v21[1] = d;
  v12 = handlerCopy;
  v20 = v12;
  objc_copyWeak(v21, buf);
  [(SagaUploadPlaylistArtworkOperation *)v11 setCompletionBlock:&v15];
  v13 = [(SagaRequestHandler *)self _library:v15];
  if (v13)
  {
    [(SagaUploadPlaylistArtworkOperation *)v11 setName:@"com.apple.itunescloudd.SagaRequestHandler.uploadPlaylistArtworkOperation"];
    [v13 addBackgroundOperation:v11 priority:2];
  }

  else if (v12)
  {
    v14 = [NSError ic_cloudClientErrorWithCode:2009 userInfo:0];
    (*(v12 + 2))(v12, v14);
  }

  objc_destroyWeak(v21);
  objc_destroyWeak(buf);
}

- (void)removeItemsWithSagaIDs:(id)ds clientIdentity:(id)identity completionHandler:(id)handler
{
  dsCopy = ds;
  identityCopy = identity;
  handlerCopy = handler;
  v11 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v22 = 2114;
    v23 = dsCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ - Removing items with cloud ids = %{public}@", buf, 0x16u);
  }

  v12 = [[SagaRemoveItemOperation alloc] initWithConfiguration:self->_configuration clientIdentity:identityCopy itemSagaIDs:dsCopy];
  objc_initWeak(buf, v12);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100090B08;
  v17[3] = &unk_1001DCA10;
  v13 = handlerCopy;
  v18 = v13;
  objc_copyWeak(&v19, buf);
  [(SagaRemoveItemOperation *)v12 setCompletionBlock:v17];
  [(SagaRemoveItemOperation *)v12 setName:@"com.apple.itunescloudd.SagaRequestHandler.removeItemOperation"];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100090B88;
  v15[3] = &unk_1001DD8F0;
  v14 = v13;
  v16 = v14;
  [(SagaRequestHandler *)self _addLibraryOperation:v12 priority:2 noLibraryHandler:v15];

  objc_destroyWeak(&v19);
  objc_destroyWeak(buf);
}

- (void)publishPlaylistWithSagaID:(unint64_t)d clientIdentity:(id)identity completionHandler:(id)handler
{
  identityCopy = identity;
  handlerCopy = handler;
  v10 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v22 = 2048;
    dCopy = d;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ - Publishing playlist with cloud id = %llu.", buf, 0x16u);
  }

  v11 = [[SagaPublishPlaylistOperation alloc] initWithConfiguration:self->_configuration clientIdentity:identityCopy sagaID:d];
  objc_initWeak(buf, v11);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100090DEC;
  v17[3] = &unk_1001DC368;
  v17[4] = self;
  v19[1] = d;
  v12 = handlerCopy;
  v18 = v12;
  objc_copyWeak(v19, buf);
  [(SagaPublishPlaylistOperation *)v11 setCompletionBlock:v17];
  [(SagaPublishPlaylistOperation *)v11 setName:@"com.apple.itunescloudd.SagaRequestHandler.publishPlaylistOperation"];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100090F44;
  v14[3] = &unk_1001DC390;
  dCopy2 = d;
  v13 = v12;
  v15 = v13;
  [(SagaRequestHandler *)self _addLibraryOperation:v11 priority:2 noLibraryHandler:v14];

  objc_destroyWeak(v19);
  objc_destroyWeak(buf);
}

- (void)setPlaylistProperties:(id)properties trackList:(id)list forPlaylistPersistentID:(int64_t)d clientIdentity:(id)identity requestingBundleID:(id)iD completionHandler:(id)handler
{
  propertiesCopy = properties;
  listCopy = list;
  identityCopy = identity;
  iDCopy = iD;
  handlerCopy = handler;
  v19 = os_log_create("com.apple.amp.itunescloudd", "CloudSync_Oversize");
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544130;
    selfCopy2 = self;
    v31 = 2048;
    dCopy = d;
    v33 = 2114;
    v34 = iDCopy;
    v35 = 2114;
    v36 = propertiesCopy;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ - Updating cloud playlist (pid = %lld) for %{public}@, setting properties: %{public}@", buf, 0x2Au);
  }

  v20 = os_log_create("com.apple.amp.itunescloudd", "CloudSync_Oversize");
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy2 = self;
    v31 = 2114;
    dCopy = listCopy;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%{public}@ - ... with cloud tracks: %{public}@", buf, 0x16u);
  }

  v21 = [[SagaSDKUpdatePlaylistOperation alloc] initWithConfiguration:self->_configuration clientIdentity:identityCopy playlistPersistentID:d properties:propertiesCopy trackList:listCopy requestingBundleID:iDCopy];
  objc_initWeak(buf, v21);
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100091364;
  v26[3] = &unk_1001DD5D0;
  v22 = handlerCopy;
  v27 = v22;
  objc_copyWeak(&v28, buf);
  v26[4] = self;
  [(SagaSDKUpdatePlaylistOperation *)v21 setCompletionBlock:v26];
  [(SagaSDKUpdatePlaylistOperation *)v21 setName:@"com.apple.itunescloudd.SagaRequestHandler.updatePlaylistOperation"];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100091484;
  v24[3] = &unk_1001DD8F0;
  v23 = v22;
  v25 = v23;
  [(SagaRequestHandler *)self _addLibraryOperation:v21 priority:2 noLibraryHandler:v24];

  objc_destroyWeak(&v28);
  objc_destroyWeak(buf);
}

- (void)setPlaylistProperties:(id)properties trackList:(id)list forPlaylistPersistentID:(int64_t)d clientIdentity:(id)identity completionHandler:(id)handler
{
  propertiesCopy = properties;
  listCopy = list;
  identityCopy = identity;
  handlerCopy = handler;
  v16 = os_log_create("com.apple.amp.itunescloudd", "CloudSync_Oversize");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    selfCopy2 = self;
    v28 = 2048;
    dCopy = d;
    v30 = 2114;
    v31 = propertiesCopy;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ - Updating cloud playlist (pid = %lld), setting properties: %{public}@", buf, 0x20u);
  }

  v17 = os_log_create("com.apple.amp.itunescloudd", "CloudSync_Oversize");
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy2 = self;
    v28 = 2114;
    dCopy = listCopy;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ - ... with cloud tracks: %{public}@", buf, 0x16u);
  }

  v18 = [[SagaUpdatePlaylistOperation alloc] initWithConfiguration:self->_configuration clientIdentity:identityCopy playlistPersistentID:d properties:propertiesCopy trackList:listCopy];
  objc_initWeak(buf, v18);
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100091794;
  v23[3] = &unk_1001DD5D0;
  v19 = handlerCopy;
  v24 = v19;
  objc_copyWeak(&v25, buf);
  v23[4] = self;
  [(SagaUpdatePlaylistOperation *)v18 setCompletionBlock:v23];
  [(SagaUpdatePlaylistOperation *)v18 setName:@"com.apple.itunescloudd.SagaRequestHandler.updatePlaylistOperation"];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100091860;
  v21[3] = &unk_1001DD8F0;
  v20 = v19;
  v22 = v20;
  [(SagaRequestHandler *)self _addLibraryOperation:v18 priority:2 noLibraryHandler:v21];

  objc_destroyWeak(&v25);
  objc_destroyWeak(buf);
}

- (void)addItemWithSagaID:(unint64_t)d toPlaylistWithPersistentID:(int64_t)iD requestingBundleID:(id)bundleID clientIdentity:(id)identity completionHandler:(id)handler
{
  bundleIDCopy = bundleID;
  identityCopy = identity;
  handlerCopy = handler;
  v15 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    selfCopy = self;
    v26 = 2048;
    dCopy = d;
    v28 = 2048;
    iDCopy = iD;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ - Adding item with saga ID: %llu to cloud playlist (pid = %lld)", buf, 0x20u);
  }

  v16 = [[SagaSDKAddItemToPlaylistOperation alloc] initWithConfiguration:self->_configuration itemSagaID:d playlistPersistentID:iD clientIdentity:identityCopy requestingBundleID:bundleIDCopy];
  objc_initWeak(buf, v16);
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100091AE8;
  v21[3] = &unk_1001DCA10;
  v17 = handlerCopy;
  v22 = v17;
  objc_copyWeak(&v23, buf);
  [(SagaSDKAddItemToPlaylistOperation *)v16 setCompletionBlock:v21];
  [(SagaSDKAddItemToPlaylistOperation *)v16 setName:@"com.apple.itunescloudd.SagaRequestHandler.addItemToPlaylistOperation"];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100091B68;
  v19[3] = &unk_1001DD8F0;
  v18 = v17;
  v20 = v18;
  [(SagaRequestHandler *)self _addLibraryOperation:v16 priority:2 noLibraryHandler:v19];

  objc_destroyWeak(&v23);
  objc_destroyWeak(buf);
}

- (void)addStoreItemWithOpaqueID:(id)d toPlaylistWithPersistentID:(int64_t)iD requestingBundleID:(id)bundleID clientIdentity:(id)identity completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  identityCopy = identity;
  bundleIDCopy = bundleID;
  v16 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    selfCopy = self;
    v26 = 2114;
    v27 = dCopy;
    v28 = 2048;
    iDCopy = iD;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ - Adding store item with opaque ID: %{public}@ to cloud playlist (pid = %lld)", buf, 0x20u);
  }

  v17 = [[SagaCloudSDKAddItemToPlaylistOperation alloc] initWithConfiguration:self->_configuration clientIdentity:identityCopy opaqueID:dCopy bundleID:bundleIDCopy playlistPersistentID:iD];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100091DAC;
  v22[3] = &unk_1001DC6E0;
  v18 = handlerCopy;
  v23 = v18;
  [(SagaCloudSDKAddOperation *)v17 setUpdateCompletionBlock:v22];
  [(SagaCloudSDKAddItemToPlaylistOperation *)v17 setName:@"com.apple.itunescloudd.SagaRequestHandler.addItemToPlaylistOperation"];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100091DC4;
  v20[3] = &unk_1001DD8F0;
  v21 = v18;
  v19 = v18;
  [(SagaRequestHandler *)self _addLibraryOperation:v17 priority:2 noLibraryHandler:v20];
}

- (void)addItemWithSagaID:(unint64_t)d toPlaylistWithPersistentID:(int64_t)iD clientIdentity:(id)identity completionHandler:(id)handler
{
  identityCopy = identity;
  handlerCopy = handler;
  v12 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    selfCopy = self;
    v23 = 2048;
    dCopy = d;
    v25 = 2048;
    iDCopy = iD;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ - Adding item with saga ID: %llu to cloud playlist (pid = %lld)", buf, 0x20u);
  }

  v13 = [[SagaAddItemToPlaylistOperation alloc] initWithConfiguration:self->_configuration itemSagaID:d playlistPersistentID:iD clientIdentity:identityCopy];
  objc_initWeak(buf, v13);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100092034;
  v18[3] = &unk_1001DCA10;
  v14 = handlerCopy;
  v19 = v14;
  objc_copyWeak(&v20, buf);
  [(SagaAddItemToPlaylistOperation *)v13 setCompletionBlock:v18];
  [(SagaAddItemToPlaylistOperation *)v13 setName:@"com.apple.itunescloudd.SagaRequestHandler.addItemToPlaylistOperation"];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000920B4;
  v16[3] = &unk_1001DD8F0;
  v15 = v14;
  v17 = v15;
  [(SagaRequestHandler *)self _addLibraryOperation:v13 priority:2 noLibraryHandler:v16];

  objc_destroyWeak(&v20);
  objc_destroyWeak(buf);
}

- (void)addStoreItemsWithAdamIDs:(id)ds referral:(id)referral toPlaylistWithPersistentID:(int64_t)d clientIdentity:(id)identity completionHandler:(id)handler
{
  dsCopy = ds;
  referralCopy = referral;
  identityCopy = identity;
  handlerCopy = handler;
  if ([referralCopy albumAdamID])
  {
    v16 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138544130;
      selfCopy3 = self;
      v36 = 2114;
      v37 = dsCopy;
      v38 = 2048;
      dCopy3 = d;
      v40 = 2048;
      albumAdamID = [referralCopy albumAdamID];
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ - Adding store item with adam ID: %{public}@ to cloud playlist (pid = %lld, referral albumAdamID = %lld)", buf, 0x2Au);
    }

    v17 = -[SagaCloudAddItemToPlaylistOperation initWithConfiguration:adamIDs:playlistPersistentID:referralAlbumAdamID:clientIdentity:]([SagaCloudAddItemToPlaylistOperation alloc], "initWithConfiguration:adamIDs:playlistPersistentID:referralAlbumAdamID:clientIdentity:", self->_configuration, dsCopy, d, [referralCopy albumAdamID], identityCopy);
LABEL_5:
    v18 = v17;
    goto LABEL_10;
  }

  playlistGlobalID = [referralCopy playlistGlobalID];
  v20 = [playlistGlobalID length];

  v21 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
  if (!v20)
  {
    if (v22)
    {
      *buf = 138543874;
      selfCopy3 = self;
      v36 = 2114;
      v37 = dsCopy;
      v38 = 2048;
      dCopy3 = d;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ - Adding store item with adam ID: %{public}@ to cloud playlist (pid = %lld)", buf, 0x20u);
    }

    v17 = [[SagaCloudAddItemToPlaylistOperation alloc] initWithConfiguration:self->_configuration adamIDs:dsCopy playlistPersistentID:d clientIdentity:identityCopy];
    goto LABEL_5;
  }

  if (v22)
  {
    playlistGlobalID2 = [referralCopy playlistGlobalID];
    *buf = 138544130;
    selfCopy3 = self;
    v36 = 2114;
    v37 = dsCopy;
    v38 = 2048;
    dCopy3 = d;
    v40 = 2114;
    albumAdamID = playlistGlobalID2;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ - Adding store item with adam ID:%{public}@ to cloud playlist (pid = %lld, referral playlistGlobalID = %{public}@)", buf, 0x2Au);
  }

  v24 = [SagaCloudAddItemToPlaylistOperation alloc];
  configuration = self->_configuration;
  playlistGlobalID3 = [referralCopy playlistGlobalID];
  v18 = [(SagaCloudAddItemToPlaylistOperation *)v24 initWithConfiguration:configuration adamIDs:dsCopy playlistPersistentID:d referralPlaylistGlobalID:playlistGlobalID3 clientIdentity:identityCopy];

LABEL_10:
  objc_initWeak(buf, v18);
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_1000924FC;
  v31[3] = &unk_1001DD5D0;
  objc_copyWeak(&v33, buf);
  v31[4] = self;
  v27 = handlerCopy;
  v32 = v27;
  [(SagaCloudAddItemToPlaylistOperation *)v18 setCompletionBlock:v31];
  [(SagaCloudAddItemToPlaylistOperation *)v18 setName:@"com.apple.itunescloudd.SagaRequestHandler.addItemToPlaylistOperation"];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100092598;
  v29[3] = &unk_1001DD8F0;
  v28 = v27;
  v30 = v28;
  [(SagaRequestHandler *)self _addLibraryOperation:v18 priority:2 noLibraryHandler:v29];

  objc_destroyWeak(&v33);
  objc_destroyWeak(buf);
}

- (void)addStoreItemWithAdamID:(int64_t)d referral:(id)referral toPlaylistWithPersistentID:(int64_t)iD clientIdentity:(id)identity completionHandler:(id)handler
{
  referralCopy = referral;
  identityCopy = identity;
  handlerCopy = handler;
  if ([referralCopy albumAdamID])
  {
    v15 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138544130;
      selfCopy3 = self;
      v44 = 2048;
      dCopy3 = d;
      v46 = 2048;
      iDCopy3 = iD;
      v48 = 2048;
      albumAdamID = [referralCopy albumAdamID];
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ - Adding store item with adam ID: %lld to cloud playlist (pid = %lld, referral albumAdamID = %lld)", buf, 0x2Au);
    }

    v16 = [SagaCloudAddItemToPlaylistOperation alloc];
    configuration = self->_configuration;
    v18 = [NSNumber numberWithLongLong:d];
    v41 = v18;
    v19 = [NSArray arrayWithObjects:&v41 count:1];
    v20 = -[SagaCloudAddItemToPlaylistOperation initWithConfiguration:adamIDs:playlistPersistentID:referralAlbumAdamID:clientIdentity:](v16, "initWithConfiguration:adamIDs:playlistPersistentID:referralAlbumAdamID:clientIdentity:", configuration, v19, iD, [referralCopy albumAdamID], identityCopy);
LABEL_5:
    v21 = v20;
    goto LABEL_10;
  }

  playlistGlobalID = [referralCopy playlistGlobalID];
  v23 = [playlistGlobalID length];

  v24 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
  if (!v23)
  {
    if (v25)
    {
      *buf = 138543874;
      selfCopy3 = self;
      v44 = 2048;
      dCopy3 = d;
      v46 = 2048;
      iDCopy3 = iD;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%{public}@ - Adding store item with adam ID: %lld to cloud playlist (pid = %lld)", buf, 0x20u);
    }

    v32 = [SagaCloudAddItemToPlaylistOperation alloc];
    v33 = self->_configuration;
    v18 = [NSNumber numberWithLongLong:d];
    v39 = v18;
    v19 = [NSArray arrayWithObjects:&v39 count:1];
    v20 = [(SagaCloudAddItemToPlaylistOperation *)v32 initWithConfiguration:v33 adamIDs:v19 playlistPersistentID:iD clientIdentity:identityCopy];
    goto LABEL_5;
  }

  if (v25)
  {
    playlistGlobalID2 = [referralCopy playlistGlobalID];
    *buf = 138544130;
    selfCopy3 = self;
    v44 = 2048;
    dCopy3 = d;
    v46 = 2048;
    iDCopy3 = iD;
    v48 = 2114;
    albumAdamID = playlistGlobalID2;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%{public}@ - Adding store item with adam ID: %lld to cloud playlist (pid = %lld, referral playlistGlobalID = %{public}@)", buf, 0x2Au);
  }

  v27 = [SagaCloudAddItemToPlaylistOperation alloc];
  v28 = self->_configuration;
  v18 = [NSNumber numberWithLongLong:d];
  v40 = v18;
  v19 = [NSArray arrayWithObjects:&v40 count:1];
  playlistGlobalID3 = [referralCopy playlistGlobalID];
  v21 = [(SagaCloudAddItemToPlaylistOperation *)v27 initWithConfiguration:v28 adamIDs:v19 playlistPersistentID:iD referralPlaylistGlobalID:playlistGlobalID3 clientIdentity:identityCopy];

LABEL_10:
  objc_initWeak(buf, v21);
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_100092A8C;
  v36[3] = &unk_1001DD5D0;
  objc_copyWeak(&v38, buf);
  v36[4] = self;
  v30 = handlerCopy;
  v37 = v30;
  [(SagaCloudAddItemToPlaylistOperation *)v21 setCompletionBlock:v36];
  [(SagaCloudAddItemToPlaylistOperation *)v21 setName:@"com.apple.itunescloudd.SagaRequestHandler.addItemToPlaylistOperation"];
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_100092B28;
  v34[3] = &unk_1001DD8F0;
  v31 = v30;
  v35 = v31;
  [(SagaRequestHandler *)self _addLibraryOperation:v21 priority:2 noLibraryHandler:v34];

  objc_destroyWeak(&v38);
  objc_destroyWeak(buf);
}

- (void)addGeniusPlaylistWithPersistentID:(int64_t)d name:(id)name seedItemIDs:(id)ds itemIDs:(id)iDs clientIdentity:(id)identity completionHandler:(id)handler
{
  nameCopy = name;
  dsCopy = ds;
  iDsCopy = iDs;
  identityCopy = identity;
  handlerCopy = handler;
  v19 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    firstObject = [dsCopy firstObject];
    *buf = 138543874;
    selfCopy = self;
    v31 = 2048;
    dCopy = d;
    v33 = 2048;
    unsignedLongLongValue = [firstObject unsignedLongLongValue];
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ - Creating Genius playlist (pid = %lld) with seed ID: %lld", buf, 0x20u);
  }

  v21 = [[SagaCreateGeniusPlaylistOperation alloc] initWithConfiguration:self->_configuration geniusPlaylistPersistentID:d playlistName:nameCopy seedItemIDs:dsCopy itemIDs:iDsCopy clientIdentity:identityCopy];
  objc_initWeak(buf, v21);
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100092DF0;
  v26[3] = &unk_1001DCA10;
  v22 = handlerCopy;
  v27 = v22;
  objc_copyWeak(&v28, buf);
  [(SagaCreateGeniusPlaylistOperation *)v21 setCompletionBlock:v26];
  [(SagaCreateGeniusPlaylistOperation *)v21 setName:@"com.apple.itunescloudd.SagaRequestHandler.createGeniusPlaylistOperation"];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100092E84;
  v24[3] = &unk_1001DD8F0;
  v23 = v22;
  v25 = v23;
  [(SagaRequestHandler *)self _addLibraryOperation:v21 priority:2 noLibraryHandler:v24];

  objc_destroyWeak(&v28);
  objc_destroyWeak(buf);
}

- (void)createPlaylistWithPersistentID:(int64_t)d properties:(id)properties trackList:(id)list requestingBundleID:(id)iD clientIdentity:(id)identity completionHandler:(id)handler
{
  propertiesCopy = properties;
  listCopy = list;
  iDCopy = iD;
  identityCopy = identity;
  handlerCopy = handler;
  v19 = os_log_create("com.apple.amp.itunescloudd", "CloudSync_Oversize");
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    selfCopy2 = self;
    v31 = 2114;
    v32 = iDCopy;
    v33 = 2114;
    v34 = propertiesCopy;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ - Creating cloud playlist for %{public}@ with initial properties: %{public}@", buf, 0x20u);
  }

  v20 = os_log_create("com.apple.amp.itunescloudd", "CloudSync_Oversize");
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy2 = self;
    v31 = 2114;
    v32 = listCopy;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%{public}@ - ... with cloud tracks: %{public}@", buf, 0x16u);
  }

  v21 = [[SagaSDKCreatePlaylistOperation alloc] initWithConfiguration:self->_configuration playlistPersistentID:d properties:propertiesCopy trackList:listCopy requestingBundleID:iDCopy clientIdentity:identityCopy];
  objc_initWeak(buf, v21);
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10009319C;
  v26[3] = &unk_1001DD5D0;
  v22 = handlerCopy;
  v27 = v22;
  objc_copyWeak(&v28, buf);
  v26[4] = self;
  [(SagaSDKCreatePlaylistOperation *)v21 setCompletionBlock:v26];
  [(SagaSDKCreatePlaylistOperation *)v21 setName:@"com.apple.itunescloudd.SagaRequestHandler.createPlaylistOperation"];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1000932D0;
  v24[3] = &unk_1001DD8F0;
  v23 = v22;
  v25 = v23;
  [(SagaRequestHandler *)self _addLibraryOperation:v21 priority:2 noLibraryHandler:v24];

  objc_destroyWeak(&v28);
  objc_destroyWeak(buf);
}

- (void)createPlaylistWithPersistentID:(int64_t)d properties:(id)properties trackList:(id)list clientIdentity:(id)identity completionHandler:(id)handler
{
  propertiesCopy = properties;
  listCopy = list;
  identityCopy = identity;
  handlerCopy = handler;
  v16 = os_log_create("com.apple.amp.itunescloudd", "CloudSync_Oversize");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy2 = self;
    v28 = 2114;
    v29 = propertiesCopy;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ - Creating cloud playlist with initial properties: %{public}@", buf, 0x16u);
  }

  v17 = os_log_create("com.apple.amp.itunescloudd", "CloudSync_Oversize");
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy2 = self;
    v28 = 2114;
    v29 = listCopy;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ - ... with cloud tracks: %{public}@", buf, 0x16u);
  }

  v18 = [[SagaCreatePlaylistOperation alloc] initWithConfiguration:self->_configuration playlistPersistentID:d properties:propertiesCopy trackList:listCopy clientIdentity:identityCopy];
  objc_initWeak(buf, v18);
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10009362C;
  v23[3] = &unk_1001DCA10;
  v19 = handlerCopy;
  v24 = v19;
  objc_copyWeak(&v25, buf);
  [(SagaCreatePlaylistOperation *)v18 setCompletionBlock:v23];
  [(SagaCreatePlaylistOperation *)v18 setName:@"com.apple.itunescloudd.SagaRequestHandler.createPlaylistOperation"];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000936C0;
  v21[3] = &unk_1001DD8F0;
  v20 = v19;
  v22 = v20;
  [(SagaRequestHandler *)self _addLibraryOperation:v18 priority:2 noLibraryHandler:v21];

  objc_destroyWeak(&v25);
  objc_destroyWeak(buf);
}

- (void)uploadPlaylistPropertiesWithClientIdentity:(id)identity minimumTimeInterval:(double)interval
{
  identityCopy = identity;
  uploadPlaylistPropertiesQueue = self->_uploadPlaylistPropertiesQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100093788;
  block[3] = &unk_1001DE600;
  block[4] = self;
  v10 = identityCopy;
  intervalCopy = interval;
  v8 = identityCopy;
  dispatch_async(uploadPlaylistPropertiesQueue, block);
}

- (void)uploadItemPropertiesWithClientIdentity:(id)identity minimumTimeInterval:(double)interval
{
  identityCopy = identity;
  uploadItemPropertiesQueue = self->_uploadItemPropertiesQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100093D30;
  block[3] = &unk_1001DE600;
  block[4] = self;
  v10 = identityCopy;
  intervalCopy = interval;
  v8 = identityCopy;
  dispatch_async(uploadItemPropertiesQueue, block);
}

- (void)updatePlaylistPlayDataWithClientIdentity:(id)identity completionHandler:(id)handler
{
  identityCopy = identity;
  handlerCopy = handler;
  v8 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ - Updating playlist play data", buf, 0xCu);
  }

  v9 = +[ICURLBagProvider sharedBagProvider];
  v10 = [ICStoreRequestContext alloc];
  userIdentity = [(ICConnectionConfiguration *)self->_configuration userIdentity];
  v12 = [v10 initWithIdentity:userIdentity];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100094490;
  v15[3] = &unk_1001DE218;
  v15[4] = self;
  v16 = identityCopy;
  v17 = handlerCopy;
  v13 = handlerCopy;
  v14 = identityCopy;
  [v9 getBagForRequestContext:v12 withCompletionHandler:v15];
}

- (void)updateItemPlayDataWithClientIdentity:(id)identity completionHandler:(id)handler
{
  identityCopy = identity;
  handlerCopy = handler;
  v8 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ - Updating item play data", buf, 0xCu);
  }

  v9 = +[ICURLBagProvider sharedBagProvider];
  v10 = [ICStoreRequestContext alloc];
  userIdentity = [(ICConnectionConfiguration *)self->_configuration userIdentity];
  v12 = [v10 initWithIdentity:userIdentity];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000947D4;
  v15[3] = &unk_1001DE218;
  v15[4] = self;
  v16 = identityCopy;
  v17 = handlerCopy;
  v13 = handlerCopy;
  v14 = identityCopy;
  [v9 getBagForRequestContext:v12 withCompletionHandler:v15];
}

- (void)increasePriorityForAllOperations
{
  v4 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ - increasePriorityForAllOperations:", buf, 0xCu);
  }

  if ((MSVDeviceSupportsMultipleLibraries() & 1) == 0)
  {
    v6 = +[NSAssertionHandler currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"SagaRequestHandler.m" lineNumber:222 description:{@"Invalid parameter not satisfying: %@", @"MSVDeviceSupportsMultipleLibraries()"}];
  }

  updateCloudLibraryQueue = self->_updateCloudLibraryQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100094AE0;
  block[3] = &unk_1001DF578;
  block[4] = self;
  dispatch_sync(updateCloudLibraryQueue, block);
  [(CloudArtworkImporter *)self->_artworkImporter increasePriorityForAllOperations];
  [(CloudLibrary *)self->_library increasePriorityForAllOperations];
}

- (void)decreasePriorityForAllOperations
{
  v4 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ - decreasePriorityForAllOperations:", buf, 0xCu);
  }

  if ((MSVDeviceSupportsMultipleLibraries() & 1) == 0)
  {
    v6 = +[NSAssertionHandler currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"SagaRequestHandler.m" lineNumber:210 description:{@"Invalid parameter not satisfying: %@", @"MSVDeviceSupportsMultipleLibraries()"}];
  }

  updateCloudLibraryQueue = self->_updateCloudLibraryQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100094C5C;
  block[3] = &unk_1001DF578;
  block[4] = self;
  dispatch_sync(updateCloudLibraryQueue, block);
  [(CloudArtworkImporter *)self->_artworkImporter decreasePriorityForAllOperations];
  [(CloudLibrary *)self->_library decreasePriorityForAllOperations];
}

- (void)cancelOperations
{
  v3 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ - cancelOperations: - Starting...", buf, 0xCu);
  }

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100094D6C;
  v4[3] = &unk_1001DF578;
  v4[4] = self;
  [(SagaRequestHandler *)self cancelPendingChangesWithCompletion:v4];
}

- (void)cancelOperationsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ - cancelOperationsWithCompletion: - Starting...", buf, 0xCu);
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10009509C;
  v7[3] = &unk_1001DF5A0;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [(SagaRequestHandler *)self cancelPendingChangesWithCompletion:v7];
}

- (void)cancelPendingChangesWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    library = self->_library;
    pendingChangesCoordinator = [(CloudLibrary *)library pendingChangesCoordinator];
    v11 = 138543874;
    selfCopy = self;
    v13 = 2112;
    v14 = library;
    v15 = 2112;
    v16 = pendingChangesCoordinator;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ - cancelPendingChangesWithCompletion: - Library=%@ - PendingChangesCoordinator:%@", &v11, 0x20u);
  }

  v8 = self->_library;
  if (v8 && ([(CloudLibrary *)v8 pendingChangesCoordinator], v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
  {
    pendingChangesCoordinator2 = [(CloudLibrary *)self->_library pendingChangesCoordinator];
    [pendingChangesCoordinator2 removeAllPendingChangesWithCompletion:completionCopy];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

- (SagaRequestHandler)initWithConfiguration:(id)configuration progressObserver:(id)observer
{
  configurationCopy = configuration;
  observerCopy = observer;
  v35.receiver = self;
  v35.super_class = SagaRequestHandler;
  v9 = [(SagaRequestHandler *)&v35 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_configuration, configuration);
    userIdentity = [configurationCopy userIdentity];
    v12 = [ML3MusicLibrary musicLibraryForUserAccount:userIdentity];
    musicLibrary = v10->_musicLibrary;
    v10->_musicLibrary = v12;

    v14 = [[SagaArtworkImporter alloc] initWithConfiguration:configurationCopy];
    artworkImporter = v10->_artworkImporter;
    v10->_artworkImporter = v14;

    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_10009576C;
    v33[3] = &unk_1001DC2B8;
    v34 = configurationCopy;
    v16 = objc_retainBlock(v33);
    v17 = (v16[2])(v16, @"com.apple.itunescloudd.sagaUploadItemPropertiesQueue");
    v18 = dispatch_queue_create([v17 UTF8String], 0);
    uploadItemPropertiesQueue = v10->_uploadItemPropertiesQueue;
    v10->_uploadItemPropertiesQueue = v18;

    v20 = (v16[2])(v16, @"com.apple.itunescloudd.sagaUploadPlaylistPropertiesQueue");
    v21 = dispatch_queue_create([v20 UTF8String], 0);
    uploadPlaylistPropertiesQueue = v10->_uploadPlaylistPropertiesQueue;
    v10->_uploadPlaylistPropertiesQueue = v21;

    v23 = (v16[2])(v16, @"com.apple.itunescloudd.sagaUpdateLibraryQueue");
    v24 = dispatch_queue_create([v23 UTF8String], 0);
    updateCloudLibraryQueue = v10->_updateCloudLibraryQueue;
    v10->_updateCloudLibraryQueue = v24;

    v26 = (v16[2])(v16, @"com.apple.itunescloudd.calloutQueue");
    v27 = dispatch_queue_create([v26 UTF8String], &_dispatch_queue_attr_concurrent);
    calloutQueue = v10->_calloutQueue;
    v10->_calloutQueue = v27;

    v29 = objc_alloc_init(NSMutableArray);
    updateLibraryCompletionHandlers = v10->_updateLibraryCompletionHandlers;
    v10->_updateLibraryCompletionHandlers = v29;

    v31 = +[ICEnvironmentMonitor sharedMonitor];
    [v31 registerObserver:v10];

    objc_storeStrong(&v10->_updateTaskHelper, observer);
    v10->_performCloudUpdateToReconcilePins = 0;
  }

  return v10;
}

- (SagaRequestHandler)init
{
  [NSException raise:NSInvalidArgumentException format:@"-init is not supported, use +handler"];

  return 0;
}

- (void)dealloc
{
  v3 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "%{public}@ - dealloc", buf, 0xCu);
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = self->_updateLibraryCompletionHandlers;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        (*(*(*(&v10 + 1) + 8 * v8) + 16))();
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9.receiver = self;
  v9.super_class = SagaRequestHandler;
  [(SagaRequestHandler *)&v9 dealloc];
}

@end