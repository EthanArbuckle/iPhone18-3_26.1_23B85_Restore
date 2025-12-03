@interface SagaFavoriteEntityOperation
- (BOOL)_canRunOperation;
- (BOOL)_recomputeInUsersLibraryForTrackPids:(id)pids resetFavoriteState:(BOOL)state usingConnection:(id)connection;
- (SagaFavoriteEntityOperation)initWithCoder:(id)coder;
- (id)_containerPidsMatchingRequestGlobalPlaylistID;
- (id)_initWithConfiguration:(id)configuration clientIdentity:(id)identity persistentID:(int64_t)d storeID:(int64_t)iD globalPlaylistID:(id)playlistID albumCloudLibraryID:(id)libraryID artistCloudLibraryID:(id)cloudLibraryID entityType:(int64_t)self0 time:(id)self1;
- (id)description;
- (unsigned)_currentDatabaseRevision;
- (void)_revertFavoritingEntityTypeAlbum;
- (void)_revertFavoritingEntityTypeArtist;
- (void)_revertFavoritingEntityTypePlaylist;
- (void)_revertFavoritingEntityTypeTrack;
- (void)_revertPendingFavoriteEntityForPermanentlyFailedOperation;
- (void)_setCloudIDsFromResponse:(id)response;
- (void)encodeWithCoder:(id)coder;
- (void)main;
@end

@implementation SagaFavoriteEntityOperation

- (BOOL)_canRunOperation
{
  v3 = [CloudPendingChangesCoordinator alloc];
  configuration = [(CloudLibraryOperation *)self configuration];
  v5 = [(CloudPendingChangesCoordinator *)v3 initWithConfiguration:configuration prefix:@"Saga" loggable:objc_opt_class()];

  v6 = +[ICUserIdentityStore defaultIdentityStore];
  userIdentity = [(CloudLibraryOperation *)self userIdentity];
  v26 = 0;
  v8 = [v6 getPropertiesForUserIdentity:userIdentity error:&v26];
  v9 = v26;

  if (!v8 || v9)
  {
    v15 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      userIdentity2 = [(CloudLibraryOperation *)self userIdentity];
      *buf = 138543874;
      *&buf[4] = self;
      *&buf[12] = 2114;
      *&buf[14] = userIdentity2;
      *&buf[22] = 2114;
      v31 = v9;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%{public}@ loading account properties for %{public}@ failed with error: %{public}@", buf, 0x20u);
    }

    [(CloudPendingChangesCoordinator *)v5 addPendingChange:self];
    goto LABEL_11;
  }

  if (([v8 isActiveLocker] & 1) == 0)
  {
    v17 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      *&buf[4] = self;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%{public}@ Cannot run operation as iCloud Music Library is not enabled", buf, 0xCu);
    }

    v27 = @"FavoriteChangeOperation";
    v18 = [(SagaFavoriteEntityOperation *)self description];
    v28 = v18;
    v19 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    v29 = v19;
    v20 = [NSArray arrayWithObjects:&v29 count:1];
    [MSVAutoBugCapture snapshotWithDomain:MSVAutoBugCaptureDomainMusicLibrary type:@"Bug" subType:@"OFT-FavoriteEntityWithCloudLibraryOff" context:@"Unsupported API call" triggerThresholdValues:0 events:v20 completion:0];

    [(SagaFavoriteEntityOperation *)self _revertPendingFavoriteEntityForPermanentlyFailedOperation];
LABEL_11:
    v14 = 0;
    goto LABEL_12;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  LOBYTE(v31) = 1;
  v10 = dispatch_semaphore_create(0);
  v11 = +[ICMusicSubscriptionStatusController sharedStatusController];
  userIdentity3 = [(CloudLibraryOperation *)self userIdentity];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10004797C;
  v22[3] = &unk_1001DAD60;
  v22[4] = self;
  v23 = v5;
  v25 = buf;
  v13 = v10;
  v24 = v13;
  [v11 getSubscriptionStatusForUserIdentity:userIdentity3 withCompletionHandler:v22];

  dispatch_semaphore_wait(v13, 0xFFFFFFFFFFFFFFFFLL);
  v14 = *(*&buf[8] + 24);

  _Block_object_dispose(buf, 8);
LABEL_12:

  return v14 & 1;
}

- (id)_containerPidsMatchingRequestGlobalPlaylistID
{
  musicLibrary = [(CloudLibraryOperation *)self musicLibrary];
  v4 = +[NSMutableSet set];
  v5 = [ML3ComparisonPredicate predicateWithProperty:ML3ContainerPropertyStoreCloudID equalToInt64:0];
  v14[0] = v5;
  v6 = [ML3ComparisonPredicate predicateWithProperty:ML3ContainerPropertyCloudGlobalID equalToValue:self->_globalPlaylistID];
  v14[1] = v6;
  v7 = [NSArray arrayWithObjects:v14 count:2];
  v8 = [ML3AllCompoundPredicate predicateMatchingPredicates:v7];

  v9 = [ML3Container queryWithLibrary:musicLibrary predicate:v8 usingSections:0];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100047D9C;
  v12[3] = &unk_1001DED58;
  v10 = v4;
  v13 = v10;
  [v9 enumeratePersistentIDsUsingBlock:v12];

  return v10;
}

- (BOOL)_recomputeInUsersLibraryForTrackPids:(id)pids resetFavoriteState:(BOOL)state usingConnection:(id)connection
{
  pidsCopy = pids;
  connectionCopy = connection;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 1;
  if ([pidsCopy count])
  {
    configuration = [(CloudLibraryOperation *)self configuration];
    v11 = sub_10013FB04(configuration);

    musicLibrary = [(CloudLibraryOperation *)self musicLibrary];
    sagaCloudFavoriteSongAddToLibraryBehavior = [musicLibrary sagaCloudFavoriteSongAddToLibraryBehavior];

    musicLibrary2 = [(CloudLibraryOperation *)self musicLibrary];
    currentDeviceFavoriteSongsPlaylist = [musicLibrary2 currentDeviceFavoriteSongsPlaylist];

    if (currentDeviceFavoriteSongsPlaylist)
    {
      v16 = [currentDeviceFavoriteSongsPlaylist valueForProperty:ML3ContainerPropertyKeepLocal];
      intValue = [v16 intValue];

      v18 = intValue > 0;
    }

    else
    {
      v18 = 0;
    }

    v19 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138544386;
      selfCopy = self;
      v36 = 1024;
      v37 = v11;
      v38 = 1024;
      v39 = sagaCloudFavoriteSongAddToLibraryBehavior == 1;
      v40 = 1024;
      v41 = v18;
      v42 = 1024;
      v43 = v18 | v11 & v39;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ _recomputeInUsersLibraryForTrackPids isAutomaticDownloadsEnabled=%{BOOL}u, addToLibraryBehaviorWhenFavoriting=%d, isFSPPinned=%{BOOL}u, shouldDownloadTrack=%{BOOL}u", buf, 0x24u);
    }

    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100048100;
    v24[3] = &unk_1001DAD38;
    stateCopy = state;
    v27 = &v30;
    v20 = connectionCopy;
    v25 = v20;
    selfCopy2 = self;
    v29 = v18 | v11 & (sagaCloudFavoriteSongAddToLibraryBehavior == 1);
    [pidsCopy enumerateObjectsUsingBlock:v24];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1000484F8;
    v23[3] = &unk_1001DEF00;
    v23[4] = self;
    [v20 enqueueBlockForTransactionCommit:v23];
  }

  v21 = *(v31 + 24);
  _Block_object_dispose(&v30, 8);

  return v21 & 1;
}

- (void)_revertFavoritingEntityTypeArtist
{
  musicLibrary = [(CloudLibraryOperation *)self musicLibrary];
  v4 = musicLibrary;
  if (self->_adamID)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100048760;
    v13[3] = &unk_1001DEDD0;
    v13[4] = self;
    v14 = musicLibrary;
    [v14 performDatabaseTransactionWithBlock:v13];
    v5 = v14;
LABEL_5:

    goto LABEL_6;
  }

  if (self->_artistCloudLibraryID)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100048994;
    v11[3] = &unk_1001DEDD0;
    v11[4] = self;
    v12 = musicLibrary;
    [v12 performDatabaseTransactionWithBlock:v11];
    v5 = v12;
    goto LABEL_5;
  }

  v6 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    entityType = self->_entityType;
    v8 = NSStringFromICFavoriteMediaEntityType();
    adamID = self->_adamID;
    artistCloudLibraryID = self->_artistCloudLibraryID;
    *buf = 138544130;
    selfCopy = self;
    v17 = 2114;
    v18 = v8;
    v19 = 2048;
    v20 = adamID;
    v21 = 2114;
    v22 = artistCloudLibraryID;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}@ Invalid identifier to revert favoriting entityType=%{public}@, adamID=%lld, cloudUniversalLibraryID=%{public}@", buf, 0x2Au);
  }

LABEL_6:
}

- (void)_revertFavoritingEntityTypeAlbum
{
  musicLibrary = [(CloudLibraryOperation *)self musicLibrary];
  v4 = musicLibrary;
  if (self->_adamID)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100048DA8;
    v13[3] = &unk_1001DEDD0;
    v13[4] = self;
    v14 = musicLibrary;
    [v14 performDatabaseTransactionWithBlock:v13];
    v5 = v14;
LABEL_5:

    goto LABEL_6;
  }

  if (self->_albumCloudLibraryID)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000490B4;
    v11[3] = &unk_1001DEDD0;
    v11[4] = self;
    v12 = musicLibrary;
    [v12 performDatabaseTransactionWithBlock:v11];
    v5 = v12;
    goto LABEL_5;
  }

  v6 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    entityType = self->_entityType;
    v8 = NSStringFromICFavoriteMediaEntityType();
    adamID = self->_adamID;
    albumCloudLibraryID = self->_albumCloudLibraryID;
    *buf = 138544130;
    selfCopy = self;
    v17 = 2114;
    v18 = v8;
    v19 = 2048;
    v20 = adamID;
    v21 = 2114;
    v22 = albumCloudLibraryID;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}@ Invalid identifier to revert favoriting entityType=%{public}@, adamID=%lld, cloudLibraryID=%{public}@", buf, 0x2Au);
  }

LABEL_6:
}

- (void)_revertFavoritingEntityTypePlaylist
{
  if (self->_globalPlaylistID)
  {
    v3 = [ML3ComparisonPredicate predicateWithProperty:ML3ContainerPropertyStoreCloudID equalToInt64:0];
    v33[0] = v3;
    v4 = [ML3ComparisonPredicate predicateWithProperty:ML3ContainerPropertyCloudGlobalID equalToValue:self->_globalPlaylistID];
    v33[1] = v4;
    v5 = [ML3ComparisonPredicate predicateWithProperty:ML3ContainerPropertyContainerPersistentId equalToInt64:self->_persistentID];
    v33[2] = v5;
    v6 = [NSArray arrayWithObjects:v33 count:3];
    v7 = [ML3AllCompoundPredicate predicateMatchingPredicates:v6];

    musicLibrary = [(CloudLibraryOperation *)self musicLibrary];
    v9 = [ML3Container anyInLibrary:musicLibrary predicate:v7];

    if (v9)
    {
      deleteFromLibrary = [v9 deleteFromLibrary];
      v11 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
      v12 = v11;
      if (deleteFromLibrary)
      {
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          globalPlaylistID = self->_globalPlaylistID;
          v25 = 138543618;
          selfCopy4 = self;
          v27 = 2114;
          v28 = globalPlaylistID;
          v14 = "%{public}@ Deleted playlist with global id: %{public}@";
          v15 = v12;
          v16 = OS_LOG_TYPE_DEFAULT;
          v17 = 22;
LABEL_13:
          _os_log_impl(&_mh_execute_header, v15, v16, v14, &v25, v17);
        }

LABEL_14:

        goto LABEL_15;
      }

      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_14;
      }

      v23 = self->_globalPlaylistID;
      persistentID = self->_persistentID;
      v25 = 138543874;
      selfCopy4 = self;
      v27 = 2114;
      v28 = v23;
      v29 = 2048;
      v30 = persistentID;
      v14 = "%{public}@ Failed to delete playlist with global id: %{public}@, persistentID=%lld";
      v15 = v12;
      v16 = OS_LOG_TYPE_ERROR;
    }

    else
    {
      v12 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_14;
      }

      v21 = self->_globalPlaylistID;
      v22 = self->_persistentID;
      v25 = 138543874;
      selfCopy4 = self;
      v27 = 2114;
      v28 = v21;
      v29 = 2048;
      v30 = v22;
      v14 = "%{public}@ Could not find a pending playlist to delete with global id: %{public}@, persistentID=%lld";
      v15 = v12;
      v16 = OS_LOG_TYPE_DEFAULT;
    }

    v17 = 32;
    goto LABEL_13;
  }

  v7 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    entityType = self->_entityType;
    v9 = NSStringFromICFavoriteMediaEntityType();
    adamID = self->_adamID;
    v20 = self->_globalPlaylistID;
    v25 = 138544130;
    selfCopy4 = self;
    v27 = 2114;
    v28 = v9;
    v29 = 2048;
    v30 = adamID;
    v31 = 2114;
    v32 = v20;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}@ Invalid identifier to revert favoriting entityType=%{public}@, adamID=%lld, gobalPlaylistID=%{public}@", &v25, 0x2Au);
LABEL_15:
  }
}

- (void)_revertFavoritingEntityTypeTrack
{
  musicLibrary = [(CloudLibraryOperation *)self musicLibrary];
  v4 = musicLibrary;
  if (self->_adamID)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100049824;
    v10[3] = &unk_1001DEE98;
    v10[4] = self;
    [musicLibrary performDatabaseTransactionWithBlock:v10];
  }

  else
  {
    v5 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      entityType = self->_entityType;
      v7 = NSStringFromICFavoriteMediaEntityType();
      adamID = self->_adamID;
      persistentID = self->_persistentID;
      *buf = 138544130;
      selfCopy = self;
      v13 = 2114;
      v14 = v7;
      v15 = 2048;
      v16 = adamID;
      v17 = 2048;
      v18 = persistentID;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%{public}@ Invalid identifier to revert favoriting entityType=%{public}@, adamID=%lld, persistentID=%lld", buf, 0x2Au);
    }
  }
}

- (void)_revertPendingFavoriteEntityForPermanentlyFailedOperation
{
  v3 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    entityType = self->_entityType;
    v5 = NSStringFromICFavoriteMediaEntityType();
    adamID = self->_adamID;
    globalPlaylistID = self->_globalPlaylistID;
    albumCloudLibraryID = self->_albumCloudLibraryID;
    artistCloudLibraryID = self->_artistCloudLibraryID;
    v11 = 138544642;
    selfCopy = self;
    v13 = 2114;
    v14 = v5;
    v15 = 2048;
    v16 = adamID;
    v17 = 2114;
    v18 = globalPlaylistID;
    v19 = 2114;
    v20 = albumCloudLibraryID;
    v21 = 2114;
    v22 = artistCloudLibraryID;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ Processing failed response for entity type=%{public}@, storeID:%lld, globalPlaylistID:%{public}@, cloudAlbumID=%{public}@, cloudArtistID=%{public}@", &v11, 0x3Eu);
  }

  v10 = self->_entityType;
  if (v10 > 1)
  {
    if (v10 == 2)
    {
      [(SagaFavoriteEntityOperation *)self _revertFavoritingEntityTypeArtist];
    }

    else if (v10 == 3)
    {
      [(SagaFavoriteEntityOperation *)self _revertFavoritingEntityTypeAlbum];
    }
  }

  else if (v10)
  {
    if (v10 == 1)
    {
      [(SagaFavoriteEntityOperation *)self _revertFavoritingEntityTypePlaylist];
    }
  }

  else
  {
    [(SagaFavoriteEntityOperation *)self _revertFavoritingEntityTypeTrack];
  }
}

- (void)_setCloudIDsFromResponse:(id)response
{
  responseCopy = response;
  addedItems = [responseCopy addedItems];
  musicLibrary = [(CloudLibraryOperation *)self musicLibrary];
  v7 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    entityType = self->_entityType;
    v9 = NSStringFromICFavoriteMediaEntityType();
    adamID = self->_adamID;
    globalPlaylistID = self->_globalPlaylistID;
    albumCloudLibraryID = self->_albumCloudLibraryID;
    artistCloudLibraryID = self->_artistCloudLibraryID;
    *buf = 138544898;
    *&buf[4] = self;
    *&buf[12] = 2114;
    *&buf[14] = addedItems;
    *&buf[22] = 2114;
    v40 = v9;
    *v41 = 2048;
    *&v41[2] = adamID;
    *&v41[10] = 2114;
    *&v41[12] = globalPlaylistID;
    v42 = 2114;
    v43 = albumCloudLibraryID;
    v44 = 2114;
    v45 = artistCloudLibraryID;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Processing success response with addedItems=%{public}@ for entity type=%{public}@, storeID:%lld, globalPlaylistID:%{public}@, cloudAlbumID=%{public}@, cloudArtistID=%{public}@", buf, 0x48u);
  }

  v14 = self->_entityType;
  if (v14 > 1)
  {
    if (v14 == 2)
    {
      goto LABEL_29;
    }

    if (v14 != 3)
    {
LABEL_15:
      v20 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = self->_entityType;
        *buf = 138543618;
        *&buf[4] = self;
        *&buf[12] = 1024;
        *&buf[14] = v21;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%{public}@ EntityType=%d is not supported", buf, 0x12u);
      }

      goto LABEL_29;
    }

    if (self->_adamID)
    {
      v18 = [NSNumber numberWithLongLong:?];
      v19 = [addedItems objectForKey:v18];

      if (_NSIsNSString())
      {
        v29[0] = _NSConcreteStackBlock;
        v29[1] = 3221225472;
        v29[2] = sub_10004A40C;
        v29[3] = &unk_1001DF3A0;
        v29[4] = self;
        v30 = v19;
        v31 = musicLibrary;
        [v31 performDatabaseTransactionWithBlock:v29];
      }

      else
      {
        v26 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v27 = self->_adamID;
          persistentID = self->_persistentID;
          *buf = 138544130;
          *&buf[4] = self;
          *&buf[12] = 2048;
          *&buf[14] = v27;
          *&buf[22] = 2048;
          v40 = persistentID;
          *v41 = 2114;
          *&v41[2] = v19;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%{public}@ Could not set cloud_library_id for album with adamID=%lld, persistentID=%lld as cloudid=%{public}@ is not a string", buf, 0x2Au);
        }
      }
    }
  }

  else
  {
    if (v14)
    {
      if (v14 == 1)
      {
        if (self->_globalPlaylistID)
        {
          v15 = [addedItems objectForKey:?];
          if (_NSIsNSNumber())
          {
            longLongValue = [v15 longLongValue];
            _containerPidsMatchingRequestGlobalPlaylistID = [(SagaFavoriteEntityOperation *)self _containerPidsMatchingRequestGlobalPlaylistID];
            if ([_containerPidsMatchingRequestGlobalPlaylistID count])
            {
              *buf = 0;
              *&buf[8] = buf;
              *&buf[16] = 0x2020000000;
              LOBYTE(v40) = 0;
              v32[0] = _NSConcreteStackBlock;
              v32[1] = 3221225472;
              v32[2] = sub_10004A2A8;
              v32[3] = &unk_1001DAD10;
              v32[4] = self;
              _containerPidsMatchingRequestGlobalPlaylistID = _containerPidsMatchingRequestGlobalPlaylistID;
              v33 = _containerPidsMatchingRequestGlobalPlaylistID;
              v35 = buf;
              v36 = longLongValue;
              v34 = musicLibrary;
              [v34 performDatabaseTransactionWithBlock:v32];

              _Block_object_dispose(buf, 8);
            }
          }

          else
          {
            _containerPidsMatchingRequestGlobalPlaylistID = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
            if (os_log_type_enabled(_containerPidsMatchingRequestGlobalPlaylistID, OS_LOG_TYPE_ERROR))
            {
              v25 = self->_globalPlaylistID;
              *buf = 138543874;
              *&buf[4] = self;
              *&buf[12] = 2114;
              *&buf[14] = v25;
              *&buf[22] = 2114;
              v40 = v15;
              _os_log_impl(&_mh_execute_header, _containerPidsMatchingRequestGlobalPlaylistID, OS_LOG_TYPE_ERROR, "%{public}@ Could not set store_cloud_id for playlist with globalID=%{public}@ as cloudid=%{public}@ is not a number", buf, 0x20u);
            }
          }
        }

        goto LABEL_29;
      }

      goto LABEL_15;
    }

    if (self->_adamID)
    {
      clientIdentity = [(CloudLibraryOperation *)self clientIdentity];
      sub_10013FD54(addedItems, musicLibrary, clientIdentity);

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v40 = sub_10004A178;
      *v41 = sub_10004A188;
      *&v41[8] = +[NSMutableSet set];
      v23 = [ML3ComparisonPredicate predicateWithProperty:ML3TrackPropertySubscriptionStoreItemID equalToInt64:self->_adamID];
      v24 = [ML3Track allItemsQueryWithLibrary:musicLibrary predicate:v23 orderingTerms:&__NSArray0__struct usingSections:0];
      v38[0] = _NSConcreteStackBlock;
      v38[1] = 3221225472;
      v38[2] = sub_10004A190;
      v38[3] = &unk_1001DB578;
      v38[4] = buf;
      [v24 enumeratePersistentIDsUsingBlock:v38];
      if ([*(*&buf[8] + 40) count])
      {
        v37[0] = _NSConcreteStackBlock;
        v37[1] = 3221225472;
        v37[2] = sub_10004A1F8;
        v37[3] = &unk_1001DF6B8;
        v37[4] = self;
        v37[5] = buf;
        [musicLibrary performDatabaseTransactionWithBlock:v37];
      }

      _Block_object_dispose(buf, 8);
    }
  }

LABEL_29:
}

- (unsigned)_currentDatabaseRevision
{
  musicLibrary = [(CloudLibraryOperation *)self musicLibrary];
  sagaOnDiskDatabaseRevision = [musicLibrary sagaOnDiskDatabaseRevision];

  if (sagaOnDiskDatabaseRevision <= 1)
  {
    return 1;
  }

  else
  {
    return sagaOnDiskDatabaseRevision;
  }
}

- (void)main
{
  v3 = objc_autoreleasePoolPush();
  if ([(SagaFavoriteEntityOperation *)self _canRunOperation])
  {
    v45 = [NSString stringWithFormat:@"%@", objc_opt_class()];
    v44 = [[MSVXPCTransaction alloc] initWithName:v45];
    [v44 beginTransaction];
    musicLibrary = [(CloudLibraryOperation *)self musicLibrary];
    clientIdentity = [(CloudLibraryOperation *)self clientIdentity];
    [musicLibrary setClientIdentity:clientIdentity];

    connection = [(CloudLibraryOperation *)self connection];
    v6 = [ICFavoriteEntityRequest alloc];
    adamID = self->_adamID;
    globalPlaylistID = self->_globalPlaylistID;
    albumCloudLibraryID = self->_albumCloudLibraryID;
    artistCloudLibraryID = self->_artistCloudLibraryID;
    entityType = self->_entityType;
    timeStamp = self->_timeStamp;
    v13 = v3;
    databaseID = [connection databaseID];
    v43 = __PAIR64__([(SagaFavoriteEntityOperation *)self _currentDatabaseRevision], databaseID);
    v3 = v13;
    v15 = [(ICFavoriteEntityRequest *)v6 initWithStoreID:adamID globalPlaylistID:globalPlaylistID albumCloudLibraryID:albumCloudLibraryID artistCloudLibraryID:artistCloudLibraryID entityType:entityType time:timeStamp databaseID:v43 databaseRevision:?];
    v16 = v15;
    if (!v15)
    {
LABEL_40:
      if ([(CloudLibraryOperation *)self status]== 3)
      {
        v40 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          *&buf[4] = self;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "%{public}@ Operation permanently failed, attempting to remove pending library content...", buf, 0xCu);
        }

        [(SagaFavoriteEntityOperation *)self _revertPendingFavoriteEntityForPermanentlyFailedOperation];
      }

      musicLibrary2 = [(CloudLibraryOperation *)self musicLibrary];
      v42 = MSVTCCIdentityForCurrentProcess();
      [musicLibrary2 setClientIdentity:v42];

      [v44 endTransaction];
      v26 = v45;
      goto LABEL_45;
    }

    [(ICDRequest *)v15 setVerificationInteractionLevel:2];
    v17 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      if ([(ICDRequest *)v16 method])
      {
        v20 = @"POST";
      }

      else
      {
        v20 = @"GET";
      }

      action = [(ICDRequest *)v16 action];
      *buf = 138544386;
      *&buf[4] = self;
      *&buf[12] = 2114;
      *&buf[14] = v19;
      *&buf[22] = 2048;
      v62 = v16;
      *v63 = 2114;
      *&v63[2] = v20;
      *&v63[10] = 2114;
      *&v63[12] = action;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ Sending favorite entity request <%{public}@: %p method=%{public}@ action=%{public}@>", buf, 0x34u);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v62 = sub_10004A178;
    *v63 = sub_10004A188;
    *&v63[8] = 0;
    v53 = 0;
    v54 = &v53;
    v55 = 0x3032000000;
    v56 = sub_10004A178;
    v57 = sub_10004A188;
    v58 = 0;
    v22 = dispatch_semaphore_create(0);
    v47[0] = _NSConcreteStackBlock;
    v47[1] = 3221225472;
    v47[2] = sub_10004B120;
    v47[3] = &unk_1001DE510;
    v48 = v16;
    selfCopy = self;
    v51 = buf;
    v52 = &v53;
    v23 = v22;
    v50 = v23;
    v3 = v13;
    [connection sendRequest:v48 withResponseHandler:v47];
    dispatch_semaphore_wait(v23, 0xFFFFFFFFFFFFFFFFLL);
    responseCode = [*(*&buf[8] + 40) responseCode];
    if (responseCode > 399)
    {
      if (responseCode == 404 || responseCode == 400)
      {
        v25 = 3;
        goto LABEL_18;
      }
    }

    else
    {
      v25 = 1;
      if (responseCode == 200 || responseCode == 204)
      {
LABEL_18:
        [(CloudLibraryOperation *)self setStatus:v25];
        v27 = v54[5];
        if (!v27)
        {
          goto LABEL_26;
        }

        domain = [v27 domain];
        if ([domain isEqualToString:ICCloudClientErrorDomain])
        {
          v29 = [v54[5] code] == 2019;

          if (!v29)
          {
            goto LABEL_26;
          }

          userInfo = [v54[5] userInfo];
          domain = [userInfo objectForKey:@"CloudLibraryConnectionRequestForbiddenAdditonalErrorCodeKey"];

          if ([domain integerValue] == 954)
          {
            [(CloudLibraryOperation *)self setStatus:3];
            v31 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
            if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
            {
              *v59 = 138543362;
              selfCopy5 = self;
              _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "%{public}@ favorite entity permamently failed -- item limit exceeded", v59, 0xCu);
            }
          }
        }

LABEL_26:
        if (MSVDeviceOSIsInternalInstall())
        {
          v32 = +[ICDefaults standardDefaults];
          shouldTreatFavoritingEntityRequestAsFailed = [v32 shouldTreatFavoritingEntityRequestAsFailed];

          if (shouldTreatFavoritingEntityRequestAsFailed)
          {
            v34 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
            {
              *v59 = 138543362;
              selfCopy5 = self;
              _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "%{public}@ Defaults are set to treat favoriting action as failed. Setting operation status to permanently failed", v59, 0xCu);
            }

            [(CloudLibraryOperation *)self setStatus:3];
          }
        }

        if ([(CloudLibraryOperation *)self status]== 1)
        {
          [(SagaFavoriteEntityOperation *)self _setCloudIDsFromResponse:*(*&buf[8] + 40)];
          updateRequired = [*(*&buf[8] + 40) updateRequired];
          configuration = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
          v37 = os_log_type_enabled(configuration, OS_LOG_TYPE_DEFAULT);
          if (updateRequired)
          {
            if (v37)
            {
              *v59 = 138543362;
              selfCopy5 = self;
              _os_log_impl(&_mh_execute_header, configuration, OS_LOG_TYPE_DEFAULT, "%{public}@ Requesting library update because the response contained update-required flag", v59, 0xCu);
            }

            configuration = [(CloudLibraryOperation *)self configuration];
            v38 = [(BaseRequestHandler *)ICDCloudMusicLibraryRequestHandler handlerForConfiguration:configuration];
            clientIdentity2 = [(CloudLibraryOperation *)self clientIdentity];
            [v38 updateSagaLibraryWithClientIdentity:clientIdentity2 forReason:8 allowNoisyAuthPrompt:0 isExplicitUserAction:0 completionHandler:0];
          }

          else if (v37)
          {
            *v59 = 138543362;
            selfCopy5 = self;
            _os_log_impl(&_mh_execute_header, configuration, OS_LOG_TYPE_DEFAULT, "%{public}@ Skipping library update because the response did not contain update-required flag", v59, 0xCu);
          }
        }

        _Block_object_dispose(&v53, 8);
        _Block_object_dispose(buf, 8);

        goto LABEL_40;
      }
    }

    v25 = 2;
    goto LABEL_18;
  }

  v26 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    *&buf[4] = self;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%{public}@ Not running operation...", buf, 0xCu);
  }

LABEL_45:

  objc_autoreleasePoolPop(v3);
}

- (id)description
{
  adamID = self->_adamID;
  globalPlaylistID = self->_globalPlaylistID;
  albumCloudLibraryID = self->_albumCloudLibraryID;
  artistCloudLibraryID = self->_artistCloudLibraryID;
  entityType = self->_entityType;
  v8 = NSStringFromICFavoriteMediaEntityType();
  persistentID = self->_persistentID;
  v10 = [NSString stringWithFormat:@"<SagaFavoriteEntityOperation=%p, adamID=%lld, globalPlaylistID=%@, albumCloudLibraryID=%@, artistCloudLibraryID=%@, entityType=%@, _persistentID=%lld, timeStamp=%@>", self, adamID, globalPlaylistID, albumCloudLibraryID, artistCloudLibraryID, v8, persistentID, self->_timeStamp];

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = SagaFavoriteEntityOperation;
  coderCopy = coder;
  [(CloudLibraryOperation *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInt64:self->_adamID forKey:{@"SagaFavoriteEntityOperationAdamIDKey", v5.receiver, v5.super_class}];
  [coderCopy encodeInt64:self->_persistentID forKey:@"SagaFavoriteEntityOperationPersistentIDKey"];
  [coderCopy encodeObject:self->_timeStamp forKey:@"SagaFavoriteEntityOperationTimeStampKey"];
  [coderCopy encodeObject:self->_globalPlaylistID forKey:@"SagaFavoriteEntityOperationGlobalPlaylistIDKey"];
  [coderCopy encodeObject:self->_albumCloudLibraryID forKey:@"SagaFavoriteEntityOperationCloudAlbumIDKey"];
  [coderCopy encodeObject:self->_artistCloudLibraryID forKey:@"SagaFavoriteEntityOperationCloudArtistIDKey"];
  [coderCopy encodeInteger:self->_entityType forKey:@"SagaFavoriteEntityOperationTypeKey"];
}

- (SagaFavoriteEntityOperation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = SagaFavoriteEntityOperation;
  v5 = [(CloudLibraryOperation *)&v15 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_adamID = [coderCopy decodeInt64ForKey:@"SagaFavoriteEntityOperationAdamIDKey"];
    v5->_persistentID = [coderCopy decodeInt64ForKey:@"SagaFavoriteEntityOperationPersistentIDKey"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SagaFavoriteEntityOperationGlobalPlaylistIDKey"];
    globalPlaylistID = v5->_globalPlaylistID;
    v5->_globalPlaylistID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SagaFavoriteEntityOperationCloudAlbumIDKey"];
    albumCloudLibraryID = v5->_albumCloudLibraryID;
    v5->_albumCloudLibraryID = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SagaFavoriteEntityOperationCloudArtistIDKey"];
    artistCloudLibraryID = v5->_artistCloudLibraryID;
    v5->_artistCloudLibraryID = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SagaFavoriteEntityOperationTimeStampKey"];
    timeStamp = v5->_timeStamp;
    v5->_timeStamp = v12;

    v5->_entityType = [coderCopy decodeIntegerForKey:@"SagaFavoriteEntityOperationTypeKey"];
  }

  return v5;
}

- (id)_initWithConfiguration:(id)configuration clientIdentity:(id)identity persistentID:(int64_t)d storeID:(int64_t)iD globalPlaylistID:(id)playlistID albumCloudLibraryID:(id)libraryID artistCloudLibraryID:(id)cloudLibraryID entityType:(int64_t)self0 time:(id)self1
{
  playlistIDCopy = playlistID;
  libraryIDCopy = libraryID;
  cloudLibraryIDCopy = cloudLibraryID;
  timeCopy = time;
  v32.receiver = self;
  v32.super_class = SagaFavoriteEntityOperation;
  v21 = [(CloudLibraryOperation *)&v32 initWithConfiguration:configuration clientIdentity:identity];
  v22 = v21;
  if (v21)
  {
    v21->_adamID = iD;
    v21->_persistentID = d;
    v23 = [timeCopy copy];
    timeStamp = v22->_timeStamp;
    v22->_timeStamp = v23;

    v25 = [playlistIDCopy copy];
    globalPlaylistID = v22->_globalPlaylistID;
    v22->_globalPlaylistID = v25;

    v27 = [libraryIDCopy copy];
    albumCloudLibraryID = v22->_albumCloudLibraryID;
    v22->_albumCloudLibraryID = v27;

    v29 = [cloudLibraryIDCopy copy];
    artistCloudLibraryID = v22->_artistCloudLibraryID;
    v22->_artistCloudLibraryID = v29;

    v22->_entityType = type;
  }

  return v22;
}

@end