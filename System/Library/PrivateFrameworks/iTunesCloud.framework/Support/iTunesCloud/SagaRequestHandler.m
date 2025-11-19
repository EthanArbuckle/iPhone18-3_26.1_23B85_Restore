@interface SagaRequestHandler
- (BOOL)isUpdateInProgressWithIsInitialImport:(BOOL *)a3;
- (SagaRequestHandler)init;
- (SagaRequestHandler)initWithConfiguration:(id)a3 progressObserver:(id)a4;
- (float)updateProgress;
- (id)_library;
- (void)_handleCloudLibraryUpdateOperationFinishedWithError:(id)a3;
- (void)_handleLibraryEditOperationCompletionUpdatingLibrary:(BOOL)a3 andSubscribedPlaylist:(unint64_t)a4 completion:(id)a5;
- (void)_updateLibraryForFailedLibraryPinsOperationWithCompletion:(id)a3;
- (void)addGeniusPlaylistWithPersistentID:(int64_t)a3 name:(id)a4 seedItemIDs:(id)a5 itemIDs:(id)a6 clientIdentity:(id)a7 completionHandler:(id)a8;
- (void)addItemWithSagaID:(unint64_t)a3 toPlaylistWithPersistentID:(int64_t)a4 clientIdentity:(id)a5 completionHandler:(id)a6;
- (void)addItemWithSagaID:(unint64_t)a3 toPlaylistWithPersistentID:(int64_t)a4 requestingBundleID:(id)a5 clientIdentity:(id)a6 completionHandler:(id)a7;
- (void)addStoreItemWithAdamID:(int64_t)a3 referral:(id)a4 clientIdentity:(id)a5 completionHandler:(id)a6;
- (void)addStoreItemWithAdamID:(int64_t)a3 referral:(id)a4 toPlaylistWithPersistentID:(int64_t)a5 clientIdentity:(id)a6 completionHandler:(id)a7;
- (void)addStoreItemWithOpaqueID:(id)a3 requestingBundleID:(id)a4 clientIdentity:(id)a5 completionHandler:(id)a6;
- (void)addStoreItemWithOpaqueID:(id)a3 toPlaylistWithPersistentID:(int64_t)a4 requestingBundleID:(id)a5 clientIdentity:(id)a6 completionHandler:(id)a7;
- (void)addStoreItemsWithAdamIDs:(id)a3 referral:(id)a4 clientIdentity:(id)a5 completionHandler:(id)a6;
- (void)addStoreItemsWithAdamIDs:(id)a3 referral:(id)a4 toPlaylistWithPersistentID:(int64_t)a5 clientIdentity:(id)a6 completionHandler:(id)a7;
- (void)addStorePlaylistWithGlobalID:(id)a3 clientIdentity:(id)a4 completionHandler:(id)a5;
- (void)beginCollaborationUsingPlaylistWithPersistentID:(int64_t)a3 sharingMode:(unint64_t)a4 completion:(id)a5;
- (void)cancelOperations;
- (void)cancelOperationsWithCompletionHandler:(id)a3;
- (void)cancelPendingChangesWithCompletion:(id)a3;
- (void)createPlaylistWithPersistentID:(int64_t)a3 properties:(id)a4 trackList:(id)a5 clientIdentity:(id)a6 completionHandler:(id)a7;
- (void)createPlaylistWithPersistentID:(int64_t)a3 properties:(id)a4 trackList:(id)a5 requestingBundleID:(id)a6 clientIdentity:(id)a7 completionHandler:(id)a8;
- (void)dealloc;
- (void)decreasePriorityForAllOperations;
- (void)editCollaborationWithPersistentID:(int64_t)a3 properties:(id)a4 trackEdits:(id)a5 completion:(id)a6;
- (void)endCollaborationWithPersistentID:(int64_t)a3 completion:(id)a4;
- (void)environmentMonitorDidChangePower:(id)a3;
- (void)favoriteAlbumWithPersistentID:(int64_t)a3 cloudLibraryID:(id)a4 time:(id)a5 completionHandler:(id)a6;
- (void)favoriteArtistWithPersistentID:(int64_t)a3 cloudLibraryID:(id)a4 time:(id)a5 completionHandler:(id)a6;
- (void)favoriteEntityWithPersistentID:(int64_t)a3 sagaID:(int64_t)a4 entityType:(int64_t)a5 time:(id)a6 completionHandler:(id)a7;
- (void)favoriteEntityWithPersistentID:(int64_t)a3 storeID:(int64_t)a4 entityType:(int64_t)a5 time:(id)a6 completionHandler:(id)a7;
- (void)favoritePlaylistWithPersistentID:(int64_t)a3 globalID:(id)a4 time:(id)a5 completionHandler:(id)a6;
- (void)importContainerArtworkForSagaID:(unint64_t)a3 artworkVariantType:(int64_t)a4 clientIdentity:(id)a5 completionHandler:(id)a6;
- (void)importItemArtworkForSagaID:(unint64_t)a3 clientIdentity:(id)a4 completionHandler:(id)a5;
- (void)importScreenshotForSagaID:(unint64_t)a3 clientIdentity:(id)a4 completionHandler:(id)a5;
- (void)increasePriorityForAllOperations;
- (void)joinCollaborationWithGlobalPlaylistID:(id)a3 invitationURL:(id)a4 completion:(id)a5;
- (void)loadArtworkInfoForContainerSagaIDs:(id)a3 clientIdentity:(id)a4 completionHandler:(id)a5;
- (void)loadArtworkInfoForSagaIDs:(id)a3 clientIdentity:(id)a4 completionHandler:(id)a5;
- (void)loadGeniusItemsForSagaID:(unint64_t)a3 clientIdentity:(id)a4 completionHandler:(id)a5;
- (void)loadScreenshotInfoForSagaIDs:(id)a3 clientIdentity:(id)a4 completionHandler:(id)a5;
- (void)movePinnedAlbumWithPersistentID:(int64_t)a3 cloudAlbumID:(id)a4 toPosition:(int64_t)a5 completion:(id)a6;
- (void)movePinnedArtistWithPersistentID:(int64_t)a3 cloudArtistID:(id)a4 toPosition:(int64_t)a5 completion:(id)a6;
- (void)movePinnedEntityWithPersistentID:(int64_t)a3 cloudID:(int64_t)a4 type:(int64_t)a5 toPosition:(int64_t)a6 completion:(id)a7;
- (void)pinLibraryAlbumWithPersistentID:(int64_t)a3 cloudAlbumID:(id)a4 defaultAction:(int64_t)a5 completion:(id)a6;
- (void)pinLibraryArtistWithPersistentID:(int64_t)a3 cloudArtistID:(id)a4 defaultAction:(int64_t)a5 completion:(id)a6;
- (void)pinLibraryEntityWithPersistentID:(int64_t)a3 cloudID:(int64_t)a4 type:(int64_t)a5 defaultAction:(int64_t)a6 completion:(id)a7;
- (void)publishPlaylistWithSagaID:(unint64_t)a3 clientIdentity:(id)a4 completionHandler:(id)a5;
- (void)removeCollaborators:(id)a3 fromCollaborationWithPersistentID:(int64_t)a4 completion:(id)a5;
- (void)removeItemsWithSagaIDs:(id)a3 clientIdentity:(id)a4 completionHandler:(id)a5;
- (void)removePinnedAlbumWithPersistentID:(int64_t)a3 cloudAlbumID:(id)a4 completion:(id)a5;
- (void)removePinnedArtistWithPersistentID:(int64_t)a3 cloudArtistID:(id)a4 completion:(id)a5;
- (void)removePinnedEntityWithPersistentID:(int64_t)a3 cloudID:(int64_t)a4 type:(int64_t)a5 completion:(id)a6;
- (void)resetInvitationURLForCollaborationWithPersistentID:(int64_t)a3 completion:(id)a4;
- (void)setAlbumArtistProperties:(id)a3 withArtistPersistentID:(int64_t)a4 clientIdentity:(id)a5 completionHandler:(id)a6;
- (void)setAlbumEntityProperties:(id)a3 withAlbumPersistentID:(int64_t)a4 clientIdentity:(id)a5 completionHandler:(id)a6;
- (void)setAlbumProperties:(id)a3 forItemsWithAlbumPersistentID:(int64_t)a4 clientIdentity:(id)a5 completionHandler:(id)a6;
- (void)setCloudAddToPlaylistBehavior:(int64_t)a3 clientIdentity:(id)a4 completionHandler:(id)a5;
- (void)setCloudFavoriteSongAddToLibraryBehavior:(int64_t)a3 clientIdentity:(id)a4 completionHandler:(id)a5;
- (void)setItemProperties:(id)a3 forSagaID:(unint64_t)a4 clientIdentity:(id)a5 completionHandler:(id)a6;
- (void)setPlaylistProperties:(id)a3 trackList:(id)a4 forPlaylistPersistentID:(int64_t)a5 clientIdentity:(id)a6 completionHandler:(id)a7;
- (void)setPlaylistProperties:(id)a3 trackList:(id)a4 forPlaylistPersistentID:(int64_t)a5 clientIdentity:(id)a6 requestingBundleID:(id)a7 completionHandler:(id)a8;
- (void)updateItemPlayDataWithClientIdentity:(id)a3 completionHandler:(id)a4;
- (void)updateLibraryWithClientIdentity:(id)a3 reason:(int64_t)a4 allowNoisyAuthPrompt:(BOOL)a5 isExplicitUserAction:(BOOL)a6 reconcileLibraryPins:(BOOL)a7 completionHandler:(id)a8;
- (void)updatePinnedLibraryAlbumWithPersistentID:(int64_t)a3 cloudAlbumID:(id)a4 defaultAction:(int64_t)a5 completion:(id)a6;
- (void)updatePinnedLibraryArtistWithPersistentID:(int64_t)a3 cloudArtistID:(id)a4 defaultAction:(int64_t)a5 completion:(id)a6;
- (void)updatePinnedLibraryEntityWithPersistentID:(int64_t)a3 cloudID:(int64_t)a4 type:(int64_t)a5 defaultAction:(int64_t)a6 completion:(id)a7;
- (void)updatePlaylistPlayDataWithClientIdentity:(id)a3 completionHandler:(id)a4;
- (void)uploadArtworkForPlaylistWithPersistentID:(int64_t)a3 clientIdentity:(id)a4 completionHandler:(id)a5;
- (void)uploadItemPropertiesWithClientIdentity:(id)a3 minimumTimeInterval:(double)a4;
- (void)uploadPlaylistPropertiesWithClientIdentity:(id)a3 minimumTimeInterval:(double)a4;
@end

@implementation SagaRequestHandler

- (void)_updateLibraryForFailedLibraryPinsOperationWithCompletion:(id)a3
{
  if (a3)
  {
    (*(a3 + 2))(a3, 0);
  }
}

- (void)_handleLibraryEditOperationCompletionUpdatingLibrary:(BOOL)a3 andSubscribedPlaylist:(unint64_t)a4 completion:(id)a5
{
  v6 = a3;
  v8 = a5;
  v9 = [(ICConnectionConfiguration *)self->_configuration clientIdentity];
  if (v6)
  {
    v10 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v23 = self;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ Requesting library update because the response contained update-required flag", buf, 0xCu);
    }

    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100086864;
    v17[3] = &unk_1001DC4E8;
    v17[4] = self;
    v20 = a4;
    v19 = v8;
    v18 = v9;
    [(SagaRequestHandler *)self updateLibraryWithClientIdentity:v18 reason:8 allowNoisyAuthPrompt:1 isExplicitUserAction:0 reconcileLibraryPins:0 completionHandler:v17];

    v11 = v19;
  }

  else
  {
    if (!a4)
    {
      (*(v8 + 2))(v8, 0);
      goto LABEL_10;
    }

    v12 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v23 = self;
      v24 = 2048;
      v25 = a4;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ Requesting subscribed playlist update for %lld", buf, 0x16u);
    }

    v13 = [NSNumber numberWithUnsignedLongLong:a4];
    v21 = v13;
    v14 = [NSArray arrayWithObjects:&v21 count:1];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100086AF4;
    v15[3] = &unk_1001DFC28;
    v15[4] = self;
    v16 = v8;
    [(SagaRequestHandler *)self updateSubscribedPlaylistsWithSagaIDs:v14 ignoreMinRefreshInterval:1 requestReason:8 pinnedOnly:0 clientIdentity:v9 completionHandler:v15];

    v11 = v16;
  }

LABEL_10:
}

- (void)_handleCloudLibraryUpdateOperationFinishedWithError:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableArray *)self->_updateLibraryCompletionHandlers copy];
  if ([v5 count])
  {
    calloutQueue = self->_calloutQueue;
    v9 = _NSConcreteStackBlock;
    v10 = 3221225472;
    v11 = sub_100086EF8;
    v12 = &unk_1001DF618;
    v13 = v5;
    v14 = v4;
    dispatch_async(calloutQueue, &v9);
  }

  [(NSMutableArray *)self->_updateLibraryCompletionHandlers removeAllObjects:v9];
  updateCloudLibraryOperation = self->_updateCloudLibraryOperation;
  self->_updateCloudLibraryOperation = 0;

  v8 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v16 = self;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ - Posting Saga update in progress changed notification", buf, 0xCu);
  }
}

- (void)updateLibraryWithClientIdentity:(id)a3 reason:(int64_t)a4 allowNoisyAuthPrompt:(BOOL)a5 isExplicitUserAction:(BOOL)a6 reconcileLibraryPins:(BOOL)a7 completionHandler:(id)a8
{
  v9 = a7;
  v10 = a6;
  v11 = a5;
  v14 = a3;
  v15 = a8;
  v16 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = ICCloudClientGetStringForRequestReason();
    *buf = 138544386;
    v73 = self;
    v74 = 2114;
    *v75 = v17;
    *&v75[8] = 1024;
    *v76 = v11;
    *&v76[4] = 1024;
    *&v76[6] = v10;
    v77 = 1024;
    v78 = v9;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ - Received request to update cloud library (requestReason = %{public}@), allowNoisyAuthPrompt=%{BOOL}u, isExplicitUserAction=%{BOOL}u, reconcileLibraryPins=%{BOOL}u", buf, 0x28u);
  }

  v18 = +[ICCloudAvailabilityController sharedController];
  v19 = [v18 shouldProhibitMusicActionForCurrentNetworkConditions];

  if (!v19)
  {
    v51 = v14;
    v24 = [(ICConnectionConfiguration *)self->_configuration userIdentity];
    v25 = [ICPrivacyInfo sharedPrivacyInfoForUserIdentity:v24];
    v26 = [v25 shouldBlockPersonalizedNetworkRequestsForMedia];

    if (v26)
    {
      v27 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v73 = self;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%{public}@ - Skipping update because privacy acknowledgement is required", buf, 0xCu);
      }

      v14 = v51;
      if (!v15)
      {
        goto LABEL_45;
      }

      calloutQueue = self->_calloutQueue;
      v68[0] = _NSConcreteStackBlock;
      v68[1] = 3221225472;
      v68[2] = sub_1000878DC;
      v68[3] = &unk_1001DF5C8;
      v69 = v15;
      dispatch_async(calloutQueue, v68);
      v29 = v69;
      goto LABEL_44;
    }

    v30 = [(SagaRequestHandler *)self _library];
    v29 = v30;
    if (!v30)
    {
      v41 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v73 = self;
        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "%{public}@ - Could not initialize saga library", buf, 0xCu);
      }

      v14 = v51;
      if (!v15)
      {
        v29 = 0;
        goto LABEL_44;
      }

      v50 = v24;
      v42 = self->_calloutQueue;
      v66[0] = _NSConcreteStackBlock;
      v66[1] = 3221225472;
      v66[2] = sub_100087954;
      v66[3] = &unk_1001DF5C8;
      v67 = v15;
      dispatch_async(v42, v66);
      v34 = v67;
LABEL_43:

      v24 = v50;
LABEL_44:

      goto LABEL_45;
    }

    v49 = v30;
    v50 = v24;
    v31 = [(ICConnectionConfiguration *)self->_configuration userIdentityStore];
    v32 = [(ICConnectionConfiguration *)self->_configuration userIdentity];
    v65 = 0;
    v33 = [v31 getPropertiesForUserIdentity:v32 error:&v65];
    v34 = v65;

    v48 = v33;
    if (!v33 || v34)
    {
      v43 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
      v14 = v51;
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v73 = self;
        v74 = 2114;
        *v75 = v34;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "%{public}@ - Could not load user identity properties. error=%{public}@", buf, 0x16u);
      }

      v29 = v49;
      if (!v15)
      {
        goto LABEL_42;
      }

      v44 = self->_calloutQueue;
      v62[0] = _NSConcreteStackBlock;
      v62[1] = 3221225472;
      v62[2] = sub_1000879C0;
      v62[3] = &unk_1001DF5A0;
      v64 = v15;
      v63 = v34;
      dispatch_async(v44, v62);

      v40 = v64;
    }

    else if ([v33 isActiveLocker])
    {
      [(ML3MusicLibrary *)self->_musicLibrary setClientIdentity:v51];
      v35 = [v33 DSID];
      v36 = [(ML3MusicLibrary *)self->_musicLibrary sagaAccountID];
      v47 = v35;
      if (v35 != v36 && ([v35 isEqual:v36] & 1) == 0)
      {
        if (v36)
        {
          v37 = sub_10010275C();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
          {
            *buf = 138543874;
            v73 = self;
            v74 = 2114;
            *v75 = v36;
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
      v55 = v15;
      v56 = a4;
      v52[4] = self;
      v53 = v51;
      v57 = v11;
      v58 = v10;
      v59 = v9;
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
        v73 = self;
        v74 = 1024;
        *v75 = a4;
        *&v75[4] = 1024;
        *&v75[6] = v11;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "%{public}@ - Locker bit is not set on the account. Will not updateLibrary for reason=%d, allowNoisyAuthPrompt=%{BOOL}u", buf, 0x18u);
      }

      v14 = v51;
      v29 = v49;
      if (!v15)
      {
        goto LABEL_42;
      }

      v46 = self->_calloutQueue;
      v60[0] = _NSConcreteStackBlock;
      v60[1] = 3221225472;
      v60[2] = sub_1000879D4;
      v60[3] = &unk_1001DF5C8;
      v61 = v15;
      dispatch_async(v46, v60);
      v40 = v61;
    }

    v14 = v51;
LABEL_42:

    goto LABEL_43;
  }

  v20 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = ICCloudClientGetStringForRequestReason();
    *buf = 138543618;
    v73 = self;
    v74 = 2114;
    *v75 = v21;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%{public}@ - No WiFi connection, skipping update (requestReason = %{public}@)", buf, 0x16u);
  }

  if (a4 == 2)
  {
    v22 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v73 = self;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%{public}@ - Rescheduling push notification triggered update when WiFi becomes available.", buf, 0xCu);
    }

    [(ICDCloudMusicLibrarySagaUpdateTaskHelper *)self->_updateTaskHelper scheduleBackgroundTaskToUpdateLibraryType:1];
  }

  if (v15)
  {
    v23 = self->_calloutQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000878C8;
    block[3] = &unk_1001DF5C8;
    v71 = v15;
    dispatch_async(v23, block);
    v24 = v71;
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

- (void)environmentMonitorDidChangePower:(id)a3
{
  v4 = a3;
  v5 = +[ICDeviceInfo currentDeviceInfo];
  v6 = [v5 isWatch];

  if (v6)
  {
    v7 = [v4 isCharging];
    v8 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (v9)
      {
        v12 = 138543362;
        v13 = self;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ - Device is plugged in - checking for artwork to download", &v12, 0xCu);
      }

      artworkImporter = self->_artworkImporter;
      v11 = [(ICConnectionConfiguration *)self->_configuration clientIdentity];
      [(SagaArtworkImporter *)artworkImporter importAllItemArtworkWithClientIdentity:v11];
    }

    else
    {
      if (v9)
      {
        v12 = 138543362;
        v13 = self;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ - Device was unplugged from power - cancelling artwork downloads", &v12, 0xCu);
      }

      [(CloudArtworkImporter *)self->_artworkImporter cancelAllImports];
    }
  }
}

- (void)movePinnedAlbumWithPersistentID:(int64_t)a3 cloudAlbumID:(id)a4 toPosition:(int64_t)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a4;
  v12 = [[SagaMoveLibraryPinOperation alloc] initWithConfiguration:self->_configuration persistentID:a3 cloudAlbumID:v11 newPosition:a5 completion:v10];

  [(SagaRequestHandler *)self _addLibraryOperation:v12 priority:2 noLibraryHandler:0];
}

- (void)movePinnedArtistWithPersistentID:(int64_t)a3 cloudArtistID:(id)a4 toPosition:(int64_t)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a4;
  v12 = [[SagaMoveLibraryPinOperation alloc] initWithConfiguration:self->_configuration persistentID:a3 cloudArtistID:v11 newPosition:a5 completion:v10];

  [(SagaRequestHandler *)self _addLibraryOperation:v12 priority:2 noLibraryHandler:0];
}

- (void)movePinnedEntityWithPersistentID:(int64_t)a3 cloudID:(int64_t)a4 type:(int64_t)a5 toPosition:(int64_t)a6 completion:(id)a7
{
  v12 = a7;
  v13 = [[SagaMoveLibraryPinOperation alloc] initWithConfiguration:self->_configuration persistentID:a3 cloudID:a4 type:a5 newPosition:a6 completion:v12];

  [(SagaRequestHandler *)self _addLibraryOperation:v13 priority:2 noLibraryHandler:0];
}

- (void)updatePinnedLibraryAlbumWithPersistentID:(int64_t)a3 cloudAlbumID:(id)a4 defaultAction:(int64_t)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a4;
  v12 = [[SagaUpdateLibraryPinOperation alloc] initWithConfiguration:self->_configuration persistentID:a3 cloudAlbumID:v11 defaultAction:a5 completion:v10];

  [(SagaRequestHandler *)self _addLibraryOperation:v12 priority:2 noLibraryHandler:0];
}

- (void)updatePinnedLibraryArtistWithPersistentID:(int64_t)a3 cloudArtistID:(id)a4 defaultAction:(int64_t)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a4;
  v12 = [[SagaUpdateLibraryPinOperation alloc] initWithConfiguration:self->_configuration persistentID:a3 cloudArtistID:v11 defaultAction:a5 completion:v10];

  [(SagaRequestHandler *)self _addLibraryOperation:v12 priority:2 noLibraryHandler:0];
}

- (void)updatePinnedLibraryEntityWithPersistentID:(int64_t)a3 cloudID:(int64_t)a4 type:(int64_t)a5 defaultAction:(int64_t)a6 completion:(id)a7
{
  v12 = a7;
  v13 = [[SagaUpdateLibraryPinOperation alloc] initWithConfiguration:self->_configuration persistentID:a3 cloudID:a4 type:a5 defaultAction:a6 completion:v12];

  [(SagaRequestHandler *)self _addLibraryOperation:v13 priority:2 noLibraryHandler:0];
}

- (void)removePinnedAlbumWithPersistentID:(int64_t)a3 cloudAlbumID:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [[SagaRemoveLibraryPinOperation alloc] initWithConfiguration:self->_configuration persistentID:a3 cloudAlbumID:v9 completion:v8];

  [(SagaRequestHandler *)self _addLibraryOperation:v10 priority:2 noLibraryHandler:0];
}

- (void)removePinnedArtistWithPersistentID:(int64_t)a3 cloudArtistID:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [[SagaRemoveLibraryPinOperation alloc] initWithConfiguration:self->_configuration persistentID:a3 cloudArtistID:v9 completion:v8];

  [(SagaRequestHandler *)self _addLibraryOperation:v10 priority:2 noLibraryHandler:0];
}

- (void)removePinnedEntityWithPersistentID:(int64_t)a3 cloudID:(int64_t)a4 type:(int64_t)a5 completion:(id)a6
{
  v10 = a6;
  v11 = [[SagaRemoveLibraryPinOperation alloc] initWithConfiguration:self->_configuration persistentID:a3 cloudID:a4 type:a5 completion:v10];

  [(SagaRequestHandler *)self _addLibraryOperation:v11 priority:2 noLibraryHandler:0];
}

- (void)pinLibraryAlbumWithPersistentID:(int64_t)a3 cloudAlbumID:(id)a4 defaultAction:(int64_t)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a4;
  v12 = [[SagaAddLibraryPinOperation alloc] initWithConfiguration:self->_configuration persistentID:a3 cloudAlbumID:v11 defaultAction:a5 completion:v10];

  [(SagaRequestHandler *)self _addLibraryOperation:v12 priority:2 noLibraryHandler:0];
}

- (void)pinLibraryArtistWithPersistentID:(int64_t)a3 cloudArtistID:(id)a4 defaultAction:(int64_t)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a4;
  v12 = [[SagaAddLibraryPinOperation alloc] initWithConfiguration:self->_configuration persistentID:a3 cloudArtistID:v11 defaultAction:a5 completion:v10];

  [(SagaRequestHandler *)self _addLibraryOperation:v12 priority:2 noLibraryHandler:0];
}

- (void)pinLibraryEntityWithPersistentID:(int64_t)a3 cloudID:(int64_t)a4 type:(int64_t)a5 defaultAction:(int64_t)a6 completion:(id)a7
{
  v12 = a7;
  v13 = [[SagaAddLibraryPinOperation alloc] initWithConfiguration:self->_configuration persistentID:a3 cloudID:a4 type:a5 defaultAction:a6 completion:v12];

  [(SagaRequestHandler *)self _addLibraryOperation:v13 priority:2 noLibraryHandler:0];
}

- (void)resetInvitationURLForCollaborationWithPersistentID:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  v7 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v17 = self;
    v18 = 2048;
    v19 = a3;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ - resetting invitation link for persistentID %lld", buf, 0x16u);
  }

  v8 = [SagaCollaborationResetInvitationURLOperation alloc];
  configuration = self->_configuration;
  v10 = [(ICConnectionConfiguration *)configuration clientIdentity];
  v11 = [(SagaCollaborationResetInvitationURLOperation *)v8 initWithConfiguration:configuration clientIdentity:v10 persistentID:a3];

  objc_initWeak(buf, v11);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100089388;
  v13[3] = &unk_1001DD5D0;
  objc_copyWeak(&v15, buf);
  v12 = v6;
  v13[4] = self;
  v14 = v12;
  [(SagaCollaborationResetInvitationURLOperation *)v11 setCompletionBlock:v13];
  [(SagaRequestHandler *)self _addLibraryOperation:v11 priority:2 noLibraryHandler:0];

  objc_destroyWeak(&v15);
  objc_destroyWeak(buf);
}

- (void)removeCollaborators:(id)a3 fromCollaborationWithPersistentID:(int64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v8 componentsJoinedByString:{@", "}];
    *buf = 138543874;
    v21 = self;
    v22 = 2114;
    v23 = v11;
    v24 = 2048;
    v25 = a4;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ - removing users (%{public}@) for persistendID %lld", buf, 0x20u);
  }

  v12 = [SagaCollaborationRemoveCollaboratorsOperation alloc];
  configuration = self->_configuration;
  v14 = [(ICConnectionConfiguration *)configuration clientIdentity];
  v15 = [(SagaCollaborationRemoveCollaboratorsOperation *)v12 initWithConfiguration:configuration clientIdentity:v14 persistentID:a4 socialProfileIDs:v8];

  objc_initWeak(buf, v15);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100089758;
  v17[3] = &unk_1001DD5D0;
  objc_copyWeak(&v19, buf);
  v16 = v9;
  v17[4] = self;
  v18 = v16;
  [(SagaCollaborationRemoveCollaboratorsOperation *)v15 setCompletionBlock:v17];
  [(SagaRequestHandler *)self _addLibraryOperation:v15 priority:2 noLibraryHandler:0];

  objc_destroyWeak(&v19);
  objc_destroyWeak(buf);
}

- (void)joinCollaborationWithGlobalPlaylistID:(id)a3 invitationURL:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v21 = self;
    v22 = 2114;
    v23 = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ - joining collaboration for playlist with cloud ID %{public}@", buf, 0x16u);
  }

  v12 = [SagaCollaborationJoinOperation alloc];
  configuration = self->_configuration;
  v14 = [(ICConnectionConfiguration *)configuration clientIdentity];
  v15 = [(SagaCollaborationJoinOperation *)v12 initWithConfiguration:configuration clientIdentity:v14 globalPlaylistID:v8 invitationURL:v9];

  objc_initWeak(buf, v15);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100089E60;
  v17[3] = &unk_1001DD5D0;
  objc_copyWeak(&v19, buf);
  v16 = v10;
  v17[4] = self;
  v18 = v16;
  [(SagaCollaborationJoinOperation *)v15 setCompletionBlock:v17];
  [(SagaRequestHandler *)self _addLibraryOperation:v15 priority:2 noLibraryHandler:0];

  objc_destroyWeak(&v19);
  objc_destroyWeak(buf);
}

- (void)editCollaborationWithPersistentID:(int64_t)a3 properties:(id)a4 trackEdits:(id)a5 completion:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v23 = self;
    v24 = 2048;
    v25 = a3;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ - editing a collaboration with persistentID %lld", buf, 0x16u);
  }

  v14 = [SagaCollaborationEditOperation alloc];
  configuration = self->_configuration;
  v16 = [(ICConnectionConfiguration *)configuration clientIdentity];
  v17 = [(SagaCollaborationEditOperation *)v14 initWithConfiguration:configuration clientIdentity:v16 collaborationPersistentID:a3 properties:v10 trackEdits:v11];

  objc_initWeak(buf, v17);
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10008A1F0;
  v19[3] = &unk_1001DD5D0;
  objc_copyWeak(&v21, buf);
  v18 = v12;
  v19[4] = self;
  v20 = v18;
  [(SagaCollaborationEditOperation *)v17 setCompletionBlock:v19];
  [(SagaRequestHandler *)self _addLibraryOperation:v17 priority:2 noLibraryHandler:0];

  objc_destroyWeak(&v21);
  objc_destroyWeak(buf);
}

- (void)endCollaborationWithPersistentID:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  v7 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v17 = self;
    v18 = 2048;
    v19 = a3;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ - ending collaboration for playlist with persistent ID %lld", buf, 0x16u);
  }

  v8 = [SagaCollaborationEndOperation alloc];
  configuration = self->_configuration;
  v10 = [(ICConnectionConfiguration *)configuration clientIdentity];
  v11 = [(SagaCollaborationEndOperation *)v8 initWithConfiguration:configuration clientIdentity:v10 collaborationPersistentID:a3];

  objc_initWeak(buf, v11);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10008A548;
  v13[3] = &unk_1001DD5D0;
  objc_copyWeak(&v15, buf);
  v12 = v6;
  v13[4] = self;
  v14 = v12;
  [(SagaCollaborationEndOperation *)v11 setCompletionBlock:v13];
  [(SagaRequestHandler *)self _addLibraryOperation:v11 priority:2 noLibraryHandler:0];

  objc_destroyWeak(&v15);
  objc_destroyWeak(buf);
}

- (void)beginCollaborationUsingPlaylistWithPersistentID:(int64_t)a3 sharingMode:(unint64_t)a4 completion:(id)a5
{
  v8 = a5;
  v9 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v18 = self;
    v19 = 2048;
    v20 = a3;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ - starting collaboration using playlist with persistentID %lld", buf, 0x16u);
  }

  v10 = self->_configuration;
  v11 = [(ICConnectionConfiguration *)self->_configuration clientIdentity];
  v12 = [[SagaCollaborationBeginOperation alloc] initWithConfiguration:v10 clientIdentity:v11 playlistPersistentID:a3 sharingMode:a4];
  objc_initWeak(buf, v12);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10008A8B4;
  v14[3] = &unk_1001DD5D0;
  objc_copyWeak(&v16, buf);
  v13 = v8;
  v14[4] = self;
  v15 = v13;
  [(SagaCollaborationBeginOperation *)v12 setCompletionBlock:v14];
  [(SagaRequestHandler *)self _addLibraryOperation:v12 priority:2 noLibraryHandler:0];

  objc_destroyWeak(&v16);
  objc_destroyWeak(buf);
}

- (void)favoriteArtistWithPersistentID:(int64_t)a3 cloudLibraryID:(id)a4 time:(id)a5 completionHandler:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [v10 length];
  v14 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  v15 = v14;
  if (v13)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v31 = self;
      v32 = 2114;
      v33 = v10;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ - favoriting artist with cloudID=%{public}@}", buf, 0x16u);
    }

    v16 = [SagaFavoriteEntityOperation alloc];
    configuration = self->_configuration;
    v18 = [(ICConnectionConfiguration *)configuration clientIdentity];
    v19 = [(SagaFavoriteEntityOperation *)v16 initWithConfiguration:configuration clientIdentity:v18 persistentID:a3 artistCloudLibraryID:v10 time:v11];

    [(SagaFavoriteEntityOperation *)v19 setName:@"com.apple.itunescloudd.SagaRequestHandler.favoriteCloudArtistEntityOperation"];
    objc_initWeak(buf, v19);
    v22 = _NSConcreteStackBlock;
    v23 = 3221225472;
    v24 = sub_10008AD5C;
    v25 = &unk_1001DCA10;
    v26 = v12;
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
    v31 = self;
    v32 = 2114;
    v33 = v10;
    v34 = 2114;
    v35 = v11;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%{public}@ - cannot favorite album artist with invalid cloud-library-id=%{public}@, timeStamp=%{public}@", buf, 0x20u);
  }

  if (v12)
  {
    v28[0] = @"entityType";
    v19 = NSStringFromICFavoriteMediaEntityType();
    v28[1] = @"action";
    v29[0] = v19;
    v29[1] = @"favorite";
    v20 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:2];
    v21 = [NSError errorWithDomain:ICErrorDomain code:-7101 userInfo:v20];
    (*(v12 + 2))(v12, v21);

LABEL_9:
  }
}

- (void)favoriteAlbumWithPersistentID:(int64_t)a3 cloudLibraryID:(id)a4 time:(id)a5 completionHandler:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [v10 length];
  v14 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  v15 = v14;
  if (v13)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v31 = self;
      v32 = 2114;
      v33 = v10;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ - favoriting album with cloudID=%{public}@}", buf, 0x16u);
    }

    v16 = [SagaFavoriteEntityOperation alloc];
    configuration = self->_configuration;
    v18 = [(ICConnectionConfiguration *)configuration clientIdentity];
    v19 = [(SagaFavoriteEntityOperation *)v16 initWithConfiguration:configuration clientIdentity:v18 persistentID:a3 albumCloudLibraryID:v10 time:v11];

    [(SagaFavoriteEntityOperation *)v19 setName:@"com.apple.itunescloudd.SagaRequestHandler.favoriteCloudAlbumEntityOperation"];
    objc_initWeak(buf, v19);
    v22 = _NSConcreteStackBlock;
    v23 = 3221225472;
    v24 = sub_10008B108;
    v25 = &unk_1001DCA10;
    v26 = v12;
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
    v31 = self;
    v32 = 2114;
    v33 = v10;
    v34 = 2114;
    v35 = v11;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%{public}@ - cannot favorite album with invalid cloud-library-id=%{public}@ timeStamp=%{public}@", buf, 0x20u);
  }

  if (v12)
  {
    v28[0] = @"entityType";
    v19 = NSStringFromICFavoriteMediaEntityType();
    v28[1] = @"action";
    v29[0] = v19;
    v29[1] = @"favorite";
    v20 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:2];
    v21 = [NSError errorWithDomain:ICErrorDomain code:-7101 userInfo:v20];
    (*(v12 + 2))(v12, v21);

LABEL_9:
  }
}

- (void)favoriteEntityWithPersistentID:(int64_t)a3 sagaID:(int64_t)a4 entityType:(int64_t)a5 time:(id)a6 completionHandler:(id)a7
{
  v11 = a6;
  v12 = a7;
  v13 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  v14 = v13;
  if (a5 <= 1)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = NSStringFromICFavoriteMediaEntityType();
      *buf = 138543874;
      v39 = self;
      v40 = 2048;
      v41 = a4;
      v42 = 2114;
      v43 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ - favoriting entity with cloudID=%lld, entityType=%{public}@", buf, 0x20u);
    }

    v16 = a5 == 0;

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
    v37[1] = v11;
    v22 = [NSDictionary dictionaryWithObjects:v37 forKeys:v36 count:2];
    v23 = [SagaSetItemPropertyOperation alloc];
    configuration = self->_configuration;
    v25 = [(ICConnectionConfiguration *)configuration clientIdentity];
    v26 = [(SagaSetItemPropertyOperation *)v23 initWithConfiguration:configuration clientIdentity:v25 sagaID:a4 properties:v22];

    objc_initWeak(buf, v26);
    v28 = _NSConcreteStackBlock;
    v29 = 3221225472;
    v30 = sub_10008B590;
    v31 = &unk_1001DCA10;
    v32 = v12;
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
    v39 = self;
    v40 = 2114;
    v41 = v27;
    v42 = 2048;
    v43 = a4;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%{public}@ - unsupported entityType=%{public}@ to favorite with entity with sagaID=%lld", buf, 0x20u);
  }

  if (v12)
  {
    v34[0] = @"entityType";
    v20 = NSStringFromICFavoriteMediaEntityType();
    v35[0] = v20;
    v34[1] = @"sagaID";
    v21 = [NSNumber numberWithLongLong:a4];
    v35[1] = v21;
    v34[2] = @"action";
    v35[2] = @"favorite";
    v22 = [NSDictionary dictionaryWithObjects:v35 forKeys:v34 count:3];
    v26 = [NSError errorWithDomain:ICErrorDomain code:-7101 userInfo:v22];
    (*(v12 + 2))(v12, v26);
LABEL_14:
  }
}

- (void)favoritePlaylistWithPersistentID:(int64_t)a3 globalID:(id)a4 time:(id)a5 completionHandler:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v26 = self;
    v27 = 2114;
    v28 = v10;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ - favoriting playlist with globalID=%{public}@}", buf, 0x16u);
  }

  v14 = [SagaFavoriteEntityOperation alloc];
  configuration = self->_configuration;
  v16 = [(ICConnectionConfiguration *)configuration clientIdentity];
  v17 = [(SagaFavoriteEntityOperation *)v14 initWithConfiguration:configuration clientIdentity:v16 persistentID:a3 globalPlaylistID:v10 time:v11];

  [(SagaFavoriteEntityOperation *)v17 setName:@"com.apple.itunescloudd.SagaRequestHandler.favoritePlaylistEntityOperation"];
  objc_initWeak(buf, v17);
  v19 = _NSConcreteStackBlock;
  v20 = 3221225472;
  v21 = sub_10008B834;
  v22 = &unk_1001DCA10;
  v18 = v12;
  v23 = v18;
  objc_copyWeak(&v24, buf);
  [(SagaFavoriteEntityOperation *)v17 setCompletionBlock:&v19];
  [(SagaRequestHandler *)self _addLibraryOperation:v17 priority:2 noLibraryHandler:0, v19, v20, v21, v22];
  objc_destroyWeak(&v24);

  objc_destroyWeak(buf);
}

- (void)favoriteEntityWithPersistentID:(int64_t)a3 storeID:(int64_t)a4 entityType:(int64_t)a5 time:(id)a6 completionHandler:(id)a7
{
  v12 = a6;
  v13 = a7;
  v14 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = NSStringFromICFavoriteMediaEntityType();
    *buf = 138543874;
    v28 = self;
    v29 = 2048;
    v30 = a4;
    v31 = 2114;
    v32 = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ - favoriting entity with storeID=%lld, entityType=%{public}@", buf, 0x20u);
  }

  v16 = [SagaFavoriteEntityOperation alloc];
  configuration = self->_configuration;
  v18 = [(ICConnectionConfiguration *)configuration clientIdentity];
  v19 = [(SagaFavoriteEntityOperation *)v16 initWithConfiguration:configuration clientIdentity:v18 persistentID:a3 storeID:a4 entityType:a5 time:v12];

  [(SagaFavoriteEntityOperation *)v19 setName:@"com.apple.itunescloudd.SagaRequestHandler.favoriteEntityOperation"];
  objc_initWeak(buf, v19);
  v21 = _NSConcreteStackBlock;
  v22 = 3221225472;
  v23 = sub_10008BAFC;
  v24 = &unk_1001DCA10;
  v20 = v13;
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

- (void)setItemProperties:(id)a3 forSagaID:(unint64_t)a4 clientIdentity:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v25 = self;
    v26 = 2048;
    v27 = a4;
    v28 = 2114;
    v29 = v10;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ - Updating item properties for sagaID %lld. properties=%{public}@", buf, 0x20u);
  }

  v14 = [v10 objectForKey:@"daap.incrementplaycount"];
  if (v14 || ([v10 objectForKey:@"daap.incrementskipcount"], (v14 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(v10, "objectForKey:", @"daap.songdateadded"), (v14 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(v10, "objectForKey:", ML3TrackPropertyDatePlayed), (v14 = objc_claimAutoreleasedReturnValue()) != 0))
  {

LABEL_8:
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10008BFB4;
    v22[3] = &unk_1001DD8F0;
    v23 = v12;
    [(SagaRequestHandler *)self updateItemPlayDataWithClientIdentity:v11 completionHandler:v22];
    v15 = v23;
    goto LABEL_9;
  }

  v16 = [v10 objectForKey:ML3TrackPropertyDateSkipped];
  v17 = v16 == 0;

  if (!v17)
  {
    goto LABEL_8;
  }

  v18 = sub_10010275C();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v25 = self;
    v26 = 2114;
    v27 = v10;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ - Issuing immediate property change: %{public}@", buf, 0x16u);
  }

  v15 = [[SagaSetItemPropertyOperation alloc] initWithConfiguration:self->_configuration clientIdentity:v11 sagaID:a4 properties:v10];
  objc_initWeak(buf, v15);
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10008BFCC;
  v19[3] = &unk_1001DCA10;
  v20 = v12;
  objc_copyWeak(&v21, buf);
  [(SagaSetItemPropertyOperation *)v15 setCompletionBlock:v19];
  [(SagaSetItemPropertyOperation *)v15 setName:@"com.apple.itunescloudd.SagaRequestHandler.setItemPropertyOperation"];
  [(SagaRequestHandler *)self _addLibraryOperation:v15 priority:2 noLibraryHandler:0];
  objc_destroyWeak(&v21);

  objc_destroyWeak(buf);
LABEL_9:
}

- (void)loadGeniusItemsForSagaID:(unint64_t)a3 clientIdentity:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v20 = self;
    v21 = 2048;
    v22 = a3;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ - Get genius items for saga ID: %llu", buf, 0x16u);
  }

  v11 = [[SagaGetGeniusItemsOperation alloc] initWithConfiguration:self->_configuration clientIdentity:v8 seedID:a3 numberOfItems:25];
  objc_initWeak(buf, v11);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10008C28C;
  v16[3] = &unk_1001DCA10;
  v12 = v9;
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

- (void)loadScreenshotInfoForSagaIDs:(id)a3 clientIdentity:(id)a4 completionHandler:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_alloc_init(NSMutableArray);
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v11 = v7;
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

  v29 = v9;
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
    [(ML3MusicLibrary *)self->_musicLibrary setClientIdentity:v8];
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
      v20 = v8;
      v21 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
      if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
      {
        v22 = [v15 persistentID];
        *buf = 134217984;
        v48 = v22;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_FAULT, "No saga artwork_token for screenshot item with persistent-id = %lld", buf, 0xCu);
      }

      v19 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"No saga artwork_token for screenshot item with persistent-id = %lld", [v15 persistentID]);
      v45 = @"NSDebugDescription";
      v46 = v19;
      v23 = [NSDictionary dictionaryWithObjects:&v46 forKeys:&v45 count:1];
      v24 = [NSError ic_cloudClientErrorWithCode:2021 userInfo:v23];

      v32 = v24;
      v8 = v20;
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
  v9 = v29;
  v27 = v32;
  if (v32)
  {
    goto LABEL_17;
  }

LABEL_18:
  if (v9)
  {
    calloutQueue = self->_calloutQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10008C70C;
    block[3] = &unk_1001DF5F0;
    v40 = v9;
    v38 = v31;
    v39 = v26;
    dispatch_async(calloutQueue, block);
  }
}

- (void)loadArtworkInfoForContainerSagaIDs:(id)a3 clientIdentity:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v23 = self;
    v24 = 2114;
    v25 = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ - Got load artwork info request for container saga IDs: %{public}@", buf, 0x16u);
  }

  v12 = +[ICCloudAvailabilityController sharedController];
  v13 = [v12 shouldProhibitMusicActionForCurrentNetworkConditions];

  if (!v13)
  {
    v15 = [(CloudLoadBulkArtworkInfoOperation *)[SagaLoadBulkContainerArtworkInfoOperation alloc] initWithConfiguration:self->_configuration cloudIDs:v8];
    objc_initWeak(buf, v15);
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10008CA38;
    v19[3] = &unk_1001DCA10;
    v16 = v10;
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
    v23 = self;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ - No WiFi connection, skipping artwork info load.", buf, 0xCu);
  }

  if (v10)
  {
    v15 = [NSError errorWithDomain:NSURLErrorDomain code:-999 userInfo:0];
    (*(v10 + 2))(v10, 0, v15);
LABEL_9:
  }
}

- (void)loadArtworkInfoForSagaIDs:(id)a3 clientIdentity:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v26 = self;
    v27 = 2114;
    v28 = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ - Got load artwork info request for saga IDs: %{public}@", buf, 0x16u);
  }

  v12 = +[ICCloudAvailabilityController sharedController];
  v13 = [v12 shouldProhibitMusicActionForCurrentNetworkConditions];

  if (!v13)
  {
    v16 = [(CloudLoadBulkArtworkInfoOperation *)[SagaLoadBulkItemArtworkInfoOperation alloc] initWithConfiguration:self->_configuration cloudIDs:v8];
    objc_initWeak(buf, v16);
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10008CE90;
    v20[3] = &unk_1001DCA10;
    v17 = v10;
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
    v26 = self;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ - No WiFi connection, skipping artwork info load.", buf, 0xCu);
  }

  if (v10)
  {
    calloutQueue = self->_calloutQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10008CE14;
    block[3] = &unk_1001DF5C8;
    v24 = v10;
    dispatch_async(calloutQueue, block);
    v16 = v24;
LABEL_9:
  }
}

- (void)importContainerArtworkForSagaID:(unint64_t)a3 artworkVariantType:(int64_t)a4 clientIdentity:(id)a5 completionHandler:(id)a6
{
  v10 = a5;
  v11 = a6;
  v12 = [(ICConnectionConfiguration *)self->_configuration userIdentityStore];
  v13 = [(ICConnectionConfiguration *)self->_configuration userIdentity];
  v23 = 0;
  v14 = [v12 getPropertiesForUserIdentity:v13 error:&v23];
  v15 = v23;

  if (v15)
  {
    v16 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = [(ICConnectionConfiguration *)self->_configuration userIdentity];
      v18 = [v15 msv_description];
      *buf = 138543874;
      v25 = self;
      v26 = 2114;
      v27 = v17;
      v28 = 2114;
      v29 = v18;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%{public}@ Failed to load properties for identity %{public}@ error=%{public}@", buf, 0x20u);
    }
  }

  if (v14)
  {
    [(SagaArtworkImporter *)self->_artworkImporter importContainerArtworkForSagaID:a3 variantType:a4 clientIdentity:v10 completionHandler:v11];
  }

  else
  {
    v19 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v25 = self;
      v26 = 2048;
      v27 = a3;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ - No active locker account, skipping import container artwork for saga ID: %llu", buf, 0x16u);
    }

    if (v11)
    {
      calloutQueue = self->_calloutQueue;
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_10008D1D4;
      v21[3] = &unk_1001DF5C8;
      v22 = v11;
      dispatch_async(calloutQueue, v21);
    }
  }
}

- (void)importScreenshotForSagaID:(unint64_t)a3 clientIdentity:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(ICConnectionConfiguration *)self->_configuration userIdentityStore];
  v11 = [(ICConnectionConfiguration *)self->_configuration userIdentity];
  v21 = 0;
  v12 = [v10 getPropertiesForUserIdentity:v11 error:&v21];
  v13 = v21;

  if (v13)
  {
    v14 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [(ICConnectionConfiguration *)self->_configuration userIdentity];
      v16 = [v13 msv_description];
      *buf = 138543874;
      v23 = self;
      v24 = 2114;
      v25 = v15;
      v26 = 2114;
      v27 = v16;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%{public}@ Failed to load properties for identity %{public}@ error=%{public}@", buf, 0x20u);
    }
  }

  if (v12)
  {
    [(SagaArtworkImporter *)self->_artworkImporter importScreenshotForSagaID:a3 clientIdentity:v8 completionHandler:v9];
  }

  else
  {
    v17 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v23 = self;
      v24 = 2048;
      v25 = a3;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ - No active locker account, skipping import screenshot for saga ID: %llu", buf, 0x16u);
    }

    if (v9)
    {
      calloutQueue = self->_calloutQueue;
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_10008D4C4;
      v19[3] = &unk_1001DF5C8;
      v20 = v9;
      dispatch_async(calloutQueue, v19);
    }
  }
}

- (void)importItemArtworkForSagaID:(unint64_t)a3 clientIdentity:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(ICConnectionConfiguration *)self->_configuration userIdentityStore];
  v11 = [(ICConnectionConfiguration *)self->_configuration userIdentity];
  v21 = 0;
  v12 = [v10 getPropertiesForUserIdentity:v11 error:&v21];
  v13 = v21;

  if (v13)
  {
    v14 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [(ICConnectionConfiguration *)self->_configuration userIdentity];
      v16 = [v13 msv_description];
      *buf = 138543874;
      v23 = self;
      v24 = 2114;
      v25 = v15;
      v26 = 2114;
      v27 = v16;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%{public}@ Failed to load properties for identity %{public}@ error=%{public}@", buf, 0x20u);
    }
  }

  if (v12)
  {
    [(SagaArtworkImporter *)self->_artworkImporter importItemArtworkForSagaID:a3 clientIdentity:v8 completionHandler:v9];
  }

  else
  {
    v17 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v23 = self;
      v24 = 2048;
      v25 = a3;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ - No active locker account, skipping import item artwork for saga ID: %llu", buf, 0x16u);
    }

    if (v9)
    {
      calloutQueue = self->_calloutQueue;
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_10008D7A4;
      v19[3] = &unk_1001DF5C8;
      v20 = v9;
      dispatch_async(calloutQueue, v19);
    }
  }
}

- (BOOL)isUpdateInProgressWithIsInitialImport:(BOOL *)a3
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
  if (a3)
  {
    *a3 = *(v9 + 24);
  }

  v5 = *(v13 + 24);
  _Block_object_dispose(&v8, 8);
  _Block_object_dispose(&v12, 8);
  return v5;
}

- (void)setAlbumArtistProperties:(id)a3 withArtistPersistentID:(int64_t)a4 clientIdentity:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v23 = self;
    v24 = 2114;
    v25 = v10;
    v26 = 2048;
    v27 = a4;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ - Setting album artist properties %{public}@ on items with album artist persistent ID: %lld", buf, 0x20u);
  }

  v14 = [[SagaSetAlbumArtistPropertyOperation alloc] initWithConfiguration:self->_configuration clientIdentity:v11 persistentID:a4 properties:v10];
  objc_initWeak(buf, v14);
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10008DBA0;
  v19[3] = &unk_1001DCA10;
  v15 = v12;
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

- (void)setAlbumEntityProperties:(id)a3 withAlbumPersistentID:(int64_t)a4 clientIdentity:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v23 = self;
    v24 = 2114;
    v25 = v10;
    v26 = 2048;
    v27 = a4;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ - Setting album properties %{public}@ with album persistent ID: %lld", buf, 0x20u);
  }

  v14 = [[SagaSetAlbumPropertyOperation alloc] initWithConfiguration:self->_configuration clientIdentity:v11 albumPersistentID:a4 properties:v10];
  objc_initWeak(buf, v14);
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10008DE98;
  v19[3] = &unk_1001DCA10;
  v15 = v12;
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

- (void)setAlbumProperties:(id)a3 forItemsWithAlbumPersistentID:(int64_t)a4 clientIdentity:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v23 = self;
    v24 = 2114;
    v25 = v10;
    v26 = 2048;
    v27 = a4;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ - Setting album properties %{public}@ on items with album persistent ID: %lld", buf, 0x20u);
  }

  v14 = [[SagaSetAlbumItemPropertyOperation alloc] initWithConfiguration:self->_configuration clientIdentity:v11 albumPersistentID:a4 albumItemProperties:v10];
  objc_initWeak(buf, v14);
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10008E190;
  v19[3] = &unk_1001DCA10;
  v15 = v12;
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

- (void)setCloudFavoriteSongAddToLibraryBehavior:(int64_t)a3 clientIdentity:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = ICCloudClientGetStringForAddToLibraryBehavior();
    *buf = 138543618;
    v21 = self;
    v22 = 2114;
    v23 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ - Setting cloud add to library behavior to: %{public}@", buf, 0x16u);
  }

  v12 = [[CloudSetFavoriteSongAddToLibraryBehaviorOperation alloc] initWithConfiguration:self->_configuration clientIdentity:v8 addToLibraryBehavior:a3];
  objc_initWeak(buf, v12);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10008E47C;
  v17[3] = &unk_1001DCA10;
  v13 = v9;
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

- (void)setCloudAddToPlaylistBehavior:(int64_t)a3 clientIdentity:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = ICCloudClientGetStringForAddToPlaylistBehavior();
    *buf = 138543618;
    v21 = self;
    v22 = 2114;
    v23 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ - Setting cloud add to playlist behavior to: %{public}@", buf, 0x16u);
  }

  v12 = [[CloudSetAddToPlaylistBehaviorOperation alloc] initWithConfiguration:self->_configuration clientIdentity:v8 addToPlaylistBehavior:a3];
  objc_initWeak(buf, v12);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10008E764;
  v17[3] = &unk_1001DCA10;
  v13 = v9;
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

- (void)addStorePlaylistWithGlobalID:(id)a3 clientIdentity:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v25 = self;
    v26 = 2114;
    v27 = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ - Received request to add store playlist with global ID: %{public}@", buf, 0x16u);
  }

  v12 = [[SagaCloudAddPlaylistOperation alloc] initWithConfiguration:self->_configuration clientIdentity:v9 playlistGlobalID:v8];
  objc_initWeak(buf, v12);
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10008EA70;
  v20[3] = &unk_1001DC420;
  objc_copyWeak(&v23, buf);
  v20[4] = self;
  v13 = v8;
  v21 = v13;
  v14 = v10;
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

- (void)addStoreItemWithOpaqueID:(id)a3 requestingBundleID:(id)a4 clientIdentity:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = a5;
  v14 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v23 = self;
    v24 = 2114;
    v25 = v10;
    v26 = 2114;
    v27 = v11;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ - Received request to add store item with opaque ID: %{public}@ from %{public}@", buf, 0x20u);
  }

  v15 = [[SagaCloudSDKAddOperation alloc] initWithConfiguration:self->_configuration clientIdentity:v13 opaqueID:v10 bundleID:v11];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10008F134;
  v20[3] = &unk_1001DC6E0;
  v16 = v12;
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

- (void)addStoreItemsWithAdamIDs:(id)a3 referral:(id)a4 clientIdentity:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if ([v11 albumAdamID])
  {
    v14 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v33 = self;
      v34 = 2114;
      v35 = v10;
      v36 = 2048;
      v37 = [v11 albumAdamID];
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ - Received request to add store item with adam IDs: %{public}@ (referral albumAdamID = %lld)", buf, 0x20u);
    }

    v15 = -[SagaCloudAddItemOperation initWithConfiguration:adamIDs:referralAlbumAdamID:clientIdentity:]([SagaCloudAddItemOperation alloc], "initWithConfiguration:adamIDs:referralAlbumAdamID:clientIdentity:", self->_configuration, v10, [v11 albumAdamID], v12);
LABEL_5:
    v16 = v15;
    goto LABEL_10;
  }

  v17 = [v11 playlistGlobalID];
  v18 = [v17 length];

  v19 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
  if (!v18)
  {
    if (v20)
    {
      *buf = 138543618;
      v33 = self;
      v34 = 2114;
      v35 = v10;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ - Received request to add store item with adam ID: %{public}@", buf, 0x16u);
    }

    v15 = [[SagaCloudAddItemOperation alloc] initWithConfiguration:self->_configuration adamIDs:v10 clientIdentity:v12];
    goto LABEL_5;
  }

  if (v20)
  {
    v21 = [v11 playlistGlobalID];
    *buf = 138543874;
    v33 = self;
    v34 = 2114;
    v35 = v10;
    v36 = 2114;
    v37 = v21;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ - Received request to add store item with adam ID: %{public}@ (referral playlistGlobalID = %{public}@)", buf, 0x20u);
  }

  v22 = [SagaCloudAddItemOperation alloc];
  configuration = self->_configuration;
  v24 = [v11 playlistGlobalID];
  v16 = [(SagaCloudAddItemOperation *)v22 initWithConfiguration:configuration adamIDs:v10 referralPlaylistGlobalID:v24 clientIdentity:v12];

LABEL_10:
  objc_initWeak(buf, v16);
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_10008F560;
  v29[3] = &unk_1001DD5D0;
  objc_copyWeak(&v31, buf);
  v29[4] = self;
  v25 = v13;
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

- (void)addStoreItemWithAdamID:(int64_t)a3 referral:(id)a4 clientIdentity:(id)a5 completionHandler:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if ([v10 albumAdamID])
  {
    v13 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v41 = self;
      v42 = 2048;
      v43 = a3;
      v44 = 2048;
      v45 = [v10 albumAdamID];
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ - Received request to add store item with adam ID: %lld (referral albumAdamID = %lld)", buf, 0x20u);
    }

    v14 = [SagaCloudAddItemOperation alloc];
    configuration = self->_configuration;
    v16 = [NSNumber numberWithLongLong:a3];
    v39 = v16;
    v17 = [NSArray arrayWithObjects:&v39 count:1];
    v18 = -[SagaCloudAddItemOperation initWithConfiguration:adamIDs:referralAlbumAdamID:clientIdentity:](v14, "initWithConfiguration:adamIDs:referralAlbumAdamID:clientIdentity:", configuration, v17, [v10 albumAdamID], v11);
LABEL_5:
    v19 = v18;
    goto LABEL_10;
  }

  v20 = [v10 playlistGlobalID];
  v21 = [v20 length];

  v22 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
  if (!v21)
  {
    if (v23)
    {
      *buf = 138543618;
      v41 = self;
      v42 = 2048;
      v43 = a3;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%{public}@ - Received request to add store item with adam ID: %lld", buf, 0x16u);
    }

    v30 = [SagaCloudAddItemOperation alloc];
    v31 = self->_configuration;
    v16 = [NSNumber numberWithLongLong:a3];
    v37 = v16;
    v17 = [NSArray arrayWithObjects:&v37 count:1];
    v18 = [(SagaCloudAddItemOperation *)v30 initWithConfiguration:v31 adamIDs:v17 clientIdentity:v11];
    goto LABEL_5;
  }

  if (v23)
  {
    v24 = [v10 playlistGlobalID];
    *buf = 138543874;
    v41 = self;
    v42 = 2048;
    v43 = a3;
    v44 = 2114;
    v45 = v24;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%{public}@ - Received request to add store item with adam ID: %lld (referral playlistGlobalID = %{public}@)", buf, 0x20u);
  }

  v25 = [SagaCloudAddItemOperation alloc];
  v26 = self->_configuration;
  v16 = [NSNumber numberWithLongLong:a3];
  v38 = v16;
  v17 = [NSArray arrayWithObjects:&v38 count:1];
  v27 = [v10 playlistGlobalID];
  v19 = [(SagaCloudAddItemOperation *)v25 initWithConfiguration:v26 adamIDs:v17 referralPlaylistGlobalID:v27 clientIdentity:v11];

LABEL_10:
  objc_initWeak(buf, v19);
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_10008FAF0;
  v34[3] = &unk_1001DD5D0;
  objc_copyWeak(&v36, buf);
  v34[4] = self;
  v28 = v12;
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

- (void)uploadArtworkForPlaylistWithPersistentID:(int64_t)a3 clientIdentity:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v23 = self;
    v24 = 2048;
    v25 = a3;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ - Setting artwork on saga playlist (pid = %lld)", buf, 0x16u);
  }

  v11 = [[SagaUploadPlaylistArtworkOperation alloc] initWithConfiguration:self->_configuration clientIdentity:v8 playlistPersistentID:a3];
  objc_initWeak(buf, v11);
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_1000902E4;
  v18 = &unk_1001DC368;
  v19 = self;
  v21[1] = a3;
  v12 = v9;
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

- (void)removeItemsWithSagaIDs:(id)a3 clientIdentity:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v21 = self;
    v22 = 2114;
    v23 = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ - Removing items with cloud ids = %{public}@", buf, 0x16u);
  }

  v12 = [[SagaRemoveItemOperation alloc] initWithConfiguration:self->_configuration clientIdentity:v9 itemSagaIDs:v8];
  objc_initWeak(buf, v12);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100090B08;
  v17[3] = &unk_1001DCA10;
  v13 = v10;
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

- (void)publishPlaylistWithSagaID:(unint64_t)a3 clientIdentity:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v21 = self;
    v22 = 2048;
    v23 = a3;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ - Publishing playlist with cloud id = %llu.", buf, 0x16u);
  }

  v11 = [[SagaPublishPlaylistOperation alloc] initWithConfiguration:self->_configuration clientIdentity:v8 sagaID:a3];
  objc_initWeak(buf, v11);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100090DEC;
  v17[3] = &unk_1001DC368;
  v17[4] = self;
  v19[1] = a3;
  v12 = v9;
  v18 = v12;
  objc_copyWeak(v19, buf);
  [(SagaPublishPlaylistOperation *)v11 setCompletionBlock:v17];
  [(SagaPublishPlaylistOperation *)v11 setName:@"com.apple.itunescloudd.SagaRequestHandler.publishPlaylistOperation"];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100090F44;
  v14[3] = &unk_1001DC390;
  v16 = a3;
  v13 = v12;
  v15 = v13;
  [(SagaRequestHandler *)self _addLibraryOperation:v11 priority:2 noLibraryHandler:v14];

  objc_destroyWeak(v19);
  objc_destroyWeak(buf);
}

- (void)setPlaylistProperties:(id)a3 trackList:(id)a4 forPlaylistPersistentID:(int64_t)a5 clientIdentity:(id)a6 requestingBundleID:(id)a7 completionHandler:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = os_log_create("com.apple.amp.itunescloudd", "CloudSync_Oversize");
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544130;
    v30 = self;
    v31 = 2048;
    v32 = a5;
    v33 = 2114;
    v34 = v17;
    v35 = 2114;
    v36 = v14;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ - Updating cloud playlist (pid = %lld) for %{public}@, setting properties: %{public}@", buf, 0x2Au);
  }

  v20 = os_log_create("com.apple.amp.itunescloudd", "CloudSync_Oversize");
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v30 = self;
    v31 = 2114;
    v32 = v15;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%{public}@ - ... with cloud tracks: %{public}@", buf, 0x16u);
  }

  v21 = [[SagaSDKUpdatePlaylistOperation alloc] initWithConfiguration:self->_configuration clientIdentity:v16 playlistPersistentID:a5 properties:v14 trackList:v15 requestingBundleID:v17];
  objc_initWeak(buf, v21);
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100091364;
  v26[3] = &unk_1001DD5D0;
  v22 = v18;
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

- (void)setPlaylistProperties:(id)a3 trackList:(id)a4 forPlaylistPersistentID:(int64_t)a5 clientIdentity:(id)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v16 = os_log_create("com.apple.amp.itunescloudd", "CloudSync_Oversize");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v27 = self;
    v28 = 2048;
    v29 = a5;
    v30 = 2114;
    v31 = v12;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ - Updating cloud playlist (pid = %lld), setting properties: %{public}@", buf, 0x20u);
  }

  v17 = os_log_create("com.apple.amp.itunescloudd", "CloudSync_Oversize");
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v27 = self;
    v28 = 2114;
    v29 = v13;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ - ... with cloud tracks: %{public}@", buf, 0x16u);
  }

  v18 = [[SagaUpdatePlaylistOperation alloc] initWithConfiguration:self->_configuration clientIdentity:v14 playlistPersistentID:a5 properties:v12 trackList:v13];
  objc_initWeak(buf, v18);
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100091794;
  v23[3] = &unk_1001DD5D0;
  v19 = v15;
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

- (void)addItemWithSagaID:(unint64_t)a3 toPlaylistWithPersistentID:(int64_t)a4 requestingBundleID:(id)a5 clientIdentity:(id)a6 completionHandler:(id)a7
{
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v25 = self;
    v26 = 2048;
    v27 = a3;
    v28 = 2048;
    v29 = a4;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ - Adding item with saga ID: %llu to cloud playlist (pid = %lld)", buf, 0x20u);
  }

  v16 = [[SagaSDKAddItemToPlaylistOperation alloc] initWithConfiguration:self->_configuration itemSagaID:a3 playlistPersistentID:a4 clientIdentity:v13 requestingBundleID:v12];
  objc_initWeak(buf, v16);
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100091AE8;
  v21[3] = &unk_1001DCA10;
  v17 = v14;
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

- (void)addStoreItemWithOpaqueID:(id)a3 toPlaylistWithPersistentID:(int64_t)a4 requestingBundleID:(id)a5 clientIdentity:(id)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a7;
  v14 = a6;
  v15 = a5;
  v16 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v25 = self;
    v26 = 2114;
    v27 = v12;
    v28 = 2048;
    v29 = a4;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ - Adding store item with opaque ID: %{public}@ to cloud playlist (pid = %lld)", buf, 0x20u);
  }

  v17 = [[SagaCloudSDKAddItemToPlaylistOperation alloc] initWithConfiguration:self->_configuration clientIdentity:v14 opaqueID:v12 bundleID:v15 playlistPersistentID:a4];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100091DAC;
  v22[3] = &unk_1001DC6E0;
  v18 = v13;
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

- (void)addItemWithSagaID:(unint64_t)a3 toPlaylistWithPersistentID:(int64_t)a4 clientIdentity:(id)a5 completionHandler:(id)a6
{
  v10 = a5;
  v11 = a6;
  v12 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v22 = self;
    v23 = 2048;
    v24 = a3;
    v25 = 2048;
    v26 = a4;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ - Adding item with saga ID: %llu to cloud playlist (pid = %lld)", buf, 0x20u);
  }

  v13 = [[SagaAddItemToPlaylistOperation alloc] initWithConfiguration:self->_configuration itemSagaID:a3 playlistPersistentID:a4 clientIdentity:v10];
  objc_initWeak(buf, v13);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100092034;
  v18[3] = &unk_1001DCA10;
  v14 = v11;
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

- (void)addStoreItemsWithAdamIDs:(id)a3 referral:(id)a4 toPlaylistWithPersistentID:(int64_t)a5 clientIdentity:(id)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  if ([v13 albumAdamID])
  {
    v16 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138544130;
      v35 = self;
      v36 = 2114;
      v37 = v12;
      v38 = 2048;
      v39 = a5;
      v40 = 2048;
      v41 = [v13 albumAdamID];
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ - Adding store item with adam ID: %{public}@ to cloud playlist (pid = %lld, referral albumAdamID = %lld)", buf, 0x2Au);
    }

    v17 = -[SagaCloudAddItemToPlaylistOperation initWithConfiguration:adamIDs:playlistPersistentID:referralAlbumAdamID:clientIdentity:]([SagaCloudAddItemToPlaylistOperation alloc], "initWithConfiguration:adamIDs:playlistPersistentID:referralAlbumAdamID:clientIdentity:", self->_configuration, v12, a5, [v13 albumAdamID], v14);
LABEL_5:
    v18 = v17;
    goto LABEL_10;
  }

  v19 = [v13 playlistGlobalID];
  v20 = [v19 length];

  v21 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
  if (!v20)
  {
    if (v22)
    {
      *buf = 138543874;
      v35 = self;
      v36 = 2114;
      v37 = v12;
      v38 = 2048;
      v39 = a5;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ - Adding store item with adam ID: %{public}@ to cloud playlist (pid = %lld)", buf, 0x20u);
    }

    v17 = [[SagaCloudAddItemToPlaylistOperation alloc] initWithConfiguration:self->_configuration adamIDs:v12 playlistPersistentID:a5 clientIdentity:v14];
    goto LABEL_5;
  }

  if (v22)
  {
    v23 = [v13 playlistGlobalID];
    *buf = 138544130;
    v35 = self;
    v36 = 2114;
    v37 = v12;
    v38 = 2048;
    v39 = a5;
    v40 = 2114;
    v41 = v23;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ - Adding store item with adam ID:%{public}@ to cloud playlist (pid = %lld, referral playlistGlobalID = %{public}@)", buf, 0x2Au);
  }

  v24 = [SagaCloudAddItemToPlaylistOperation alloc];
  configuration = self->_configuration;
  v26 = [v13 playlistGlobalID];
  v18 = [(SagaCloudAddItemToPlaylistOperation *)v24 initWithConfiguration:configuration adamIDs:v12 playlistPersistentID:a5 referralPlaylistGlobalID:v26 clientIdentity:v14];

LABEL_10:
  objc_initWeak(buf, v18);
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_1000924FC;
  v31[3] = &unk_1001DD5D0;
  objc_copyWeak(&v33, buf);
  v31[4] = self;
  v27 = v15;
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

- (void)addStoreItemWithAdamID:(int64_t)a3 referral:(id)a4 toPlaylistWithPersistentID:(int64_t)a5 clientIdentity:(id)a6 completionHandler:(id)a7
{
  v12 = a4;
  v13 = a6;
  v14 = a7;
  if ([v12 albumAdamID])
  {
    v15 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138544130;
      v43 = self;
      v44 = 2048;
      v45 = a3;
      v46 = 2048;
      v47 = a5;
      v48 = 2048;
      v49 = [v12 albumAdamID];
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ - Adding store item with adam ID: %lld to cloud playlist (pid = %lld, referral albumAdamID = %lld)", buf, 0x2Au);
    }

    v16 = [SagaCloudAddItemToPlaylistOperation alloc];
    configuration = self->_configuration;
    v18 = [NSNumber numberWithLongLong:a3];
    v41 = v18;
    v19 = [NSArray arrayWithObjects:&v41 count:1];
    v20 = -[SagaCloudAddItemToPlaylistOperation initWithConfiguration:adamIDs:playlistPersistentID:referralAlbumAdamID:clientIdentity:](v16, "initWithConfiguration:adamIDs:playlistPersistentID:referralAlbumAdamID:clientIdentity:", configuration, v19, a5, [v12 albumAdamID], v13);
LABEL_5:
    v21 = v20;
    goto LABEL_10;
  }

  v22 = [v12 playlistGlobalID];
  v23 = [v22 length];

  v24 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
  if (!v23)
  {
    if (v25)
    {
      *buf = 138543874;
      v43 = self;
      v44 = 2048;
      v45 = a3;
      v46 = 2048;
      v47 = a5;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%{public}@ - Adding store item with adam ID: %lld to cloud playlist (pid = %lld)", buf, 0x20u);
    }

    v32 = [SagaCloudAddItemToPlaylistOperation alloc];
    v33 = self->_configuration;
    v18 = [NSNumber numberWithLongLong:a3];
    v39 = v18;
    v19 = [NSArray arrayWithObjects:&v39 count:1];
    v20 = [(SagaCloudAddItemToPlaylistOperation *)v32 initWithConfiguration:v33 adamIDs:v19 playlistPersistentID:a5 clientIdentity:v13];
    goto LABEL_5;
  }

  if (v25)
  {
    v26 = [v12 playlistGlobalID];
    *buf = 138544130;
    v43 = self;
    v44 = 2048;
    v45 = a3;
    v46 = 2048;
    v47 = a5;
    v48 = 2114;
    v49 = v26;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%{public}@ - Adding store item with adam ID: %lld to cloud playlist (pid = %lld, referral playlistGlobalID = %{public}@)", buf, 0x2Au);
  }

  v27 = [SagaCloudAddItemToPlaylistOperation alloc];
  v28 = self->_configuration;
  v18 = [NSNumber numberWithLongLong:a3];
  v40 = v18;
  v19 = [NSArray arrayWithObjects:&v40 count:1];
  v29 = [v12 playlistGlobalID];
  v21 = [(SagaCloudAddItemToPlaylistOperation *)v27 initWithConfiguration:v28 adamIDs:v19 playlistPersistentID:a5 referralPlaylistGlobalID:v29 clientIdentity:v13];

LABEL_10:
  objc_initWeak(buf, v21);
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_100092A8C;
  v36[3] = &unk_1001DD5D0;
  objc_copyWeak(&v38, buf);
  v36[4] = self;
  v30 = v14;
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

- (void)addGeniusPlaylistWithPersistentID:(int64_t)a3 name:(id)a4 seedItemIDs:(id)a5 itemIDs:(id)a6 clientIdentity:(id)a7 completionHandler:(id)a8
{
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = [v15 firstObject];
    *buf = 138543874;
    v30 = self;
    v31 = 2048;
    v32 = a3;
    v33 = 2048;
    v34 = [v20 unsignedLongLongValue];
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ - Creating Genius playlist (pid = %lld) with seed ID: %lld", buf, 0x20u);
  }

  v21 = [[SagaCreateGeniusPlaylistOperation alloc] initWithConfiguration:self->_configuration geniusPlaylistPersistentID:a3 playlistName:v14 seedItemIDs:v15 itemIDs:v16 clientIdentity:v17];
  objc_initWeak(buf, v21);
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100092DF0;
  v26[3] = &unk_1001DCA10;
  v22 = v18;
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

- (void)createPlaylistWithPersistentID:(int64_t)a3 properties:(id)a4 trackList:(id)a5 requestingBundleID:(id)a6 clientIdentity:(id)a7 completionHandler:(id)a8
{
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = os_log_create("com.apple.amp.itunescloudd", "CloudSync_Oversize");
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v30 = self;
    v31 = 2114;
    v32 = v16;
    v33 = 2114;
    v34 = v14;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ - Creating cloud playlist for %{public}@ with initial properties: %{public}@", buf, 0x20u);
  }

  v20 = os_log_create("com.apple.amp.itunescloudd", "CloudSync_Oversize");
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v30 = self;
    v31 = 2114;
    v32 = v15;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%{public}@ - ... with cloud tracks: %{public}@", buf, 0x16u);
  }

  v21 = [[SagaSDKCreatePlaylistOperation alloc] initWithConfiguration:self->_configuration playlistPersistentID:a3 properties:v14 trackList:v15 requestingBundleID:v16 clientIdentity:v17];
  objc_initWeak(buf, v21);
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10009319C;
  v26[3] = &unk_1001DD5D0;
  v22 = v18;
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

- (void)createPlaylistWithPersistentID:(int64_t)a3 properties:(id)a4 trackList:(id)a5 clientIdentity:(id)a6 completionHandler:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = os_log_create("com.apple.amp.itunescloudd", "CloudSync_Oversize");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v27 = self;
    v28 = 2114;
    v29 = v12;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ - Creating cloud playlist with initial properties: %{public}@", buf, 0x16u);
  }

  v17 = os_log_create("com.apple.amp.itunescloudd", "CloudSync_Oversize");
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v27 = self;
    v28 = 2114;
    v29 = v13;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ - ... with cloud tracks: %{public}@", buf, 0x16u);
  }

  v18 = [[SagaCreatePlaylistOperation alloc] initWithConfiguration:self->_configuration playlistPersistentID:a3 properties:v12 trackList:v13 clientIdentity:v14];
  objc_initWeak(buf, v18);
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10009362C;
  v23[3] = &unk_1001DCA10;
  v19 = v15;
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

- (void)uploadPlaylistPropertiesWithClientIdentity:(id)a3 minimumTimeInterval:(double)a4
{
  v6 = a3;
  uploadPlaylistPropertiesQueue = self->_uploadPlaylistPropertiesQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100093788;
  block[3] = &unk_1001DE600;
  block[4] = self;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  dispatch_async(uploadPlaylistPropertiesQueue, block);
}

- (void)uploadItemPropertiesWithClientIdentity:(id)a3 minimumTimeInterval:(double)a4
{
  v6 = a3;
  uploadItemPropertiesQueue = self->_uploadItemPropertiesQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100093D30;
  block[3] = &unk_1001DE600;
  block[4] = self;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  dispatch_async(uploadItemPropertiesQueue, block);
}

- (void)updatePlaylistPlayDataWithClientIdentity:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v19 = self;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ - Updating playlist play data", buf, 0xCu);
  }

  v9 = +[ICURLBagProvider sharedBagProvider];
  v10 = [ICStoreRequestContext alloc];
  v11 = [(ICConnectionConfiguration *)self->_configuration userIdentity];
  v12 = [v10 initWithIdentity:v11];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100094490;
  v15[3] = &unk_1001DE218;
  v15[4] = self;
  v16 = v6;
  v17 = v7;
  v13 = v7;
  v14 = v6;
  [v9 getBagForRequestContext:v12 withCompletionHandler:v15];
}

- (void)updateItemPlayDataWithClientIdentity:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v19 = self;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ - Updating item play data", buf, 0xCu);
  }

  v9 = +[ICURLBagProvider sharedBagProvider];
  v10 = [ICStoreRequestContext alloc];
  v11 = [(ICConnectionConfiguration *)self->_configuration userIdentity];
  v12 = [v10 initWithIdentity:v11];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000947D4;
  v15[3] = &unk_1001DE218;
  v15[4] = self;
  v16 = v6;
  v17 = v7;
  v13 = v7;
  v14 = v6;
  [v9 getBagForRequestContext:v12 withCompletionHandler:v15];
}

- (void)increasePriorityForAllOperations
{
  v4 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v9 = self;
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
    v9 = self;
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
    v6 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ - cancelOperations: - Starting...", buf, 0xCu);
  }

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100094D6C;
  v4[3] = &unk_1001DF578;
  v4[4] = self;
  [(SagaRequestHandler *)self cancelPendingChangesWithCompletion:v4];
}

- (void)cancelOperationsWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v10 = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ - cancelOperationsWithCompletion: - Starting...", buf, 0xCu);
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10009509C;
  v7[3] = &unk_1001DF5A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(SagaRequestHandler *)self cancelPendingChangesWithCompletion:v7];
}

- (void)cancelPendingChangesWithCompletion:(id)a3
{
  v4 = a3;
  v5 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    library = self->_library;
    v7 = [(CloudLibrary *)library pendingChangesCoordinator];
    v11 = 138543874;
    v12 = self;
    v13 = 2112;
    v14 = library;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ - cancelPendingChangesWithCompletion: - Library=%@ - PendingChangesCoordinator:%@", &v11, 0x20u);
  }

  v8 = self->_library;
  if (v8 && ([(CloudLibrary *)v8 pendingChangesCoordinator], v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
  {
    v10 = [(CloudLibrary *)self->_library pendingChangesCoordinator];
    [v10 removeAllPendingChangesWithCompletion:v4];
  }

  else if (v4)
  {
    v4[2](v4);
  }
}

- (SagaRequestHandler)initWithConfiguration:(id)a3 progressObserver:(id)a4
{
  v7 = a3;
  v8 = a4;
  v35.receiver = self;
  v35.super_class = SagaRequestHandler;
  v9 = [(SagaRequestHandler *)&v35 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_configuration, a3);
    v11 = [v7 userIdentity];
    v12 = [ML3MusicLibrary musicLibraryForUserAccount:v11];
    musicLibrary = v10->_musicLibrary;
    v10->_musicLibrary = v12;

    v14 = [[SagaArtworkImporter alloc] initWithConfiguration:v7];
    artworkImporter = v10->_artworkImporter;
    v10->_artworkImporter = v14;

    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_10009576C;
    v33[3] = &unk_1001DC2B8;
    v34 = v7;
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

    objc_storeStrong(&v10->_updateTaskHelper, a4);
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
    v16 = self;
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