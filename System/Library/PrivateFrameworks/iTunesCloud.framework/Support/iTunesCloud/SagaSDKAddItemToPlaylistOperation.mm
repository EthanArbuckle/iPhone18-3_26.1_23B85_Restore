@interface SagaSDKAddItemToPlaylistOperation
- (SagaSDKAddItemToPlaylistOperation)initWithCoder:(id)coder;
- (SagaSDKAddItemToPlaylistOperation)initWithConfiguration:(id)configuration itemSagaID:(unint64_t)d playlistPersistentID:(int64_t)iD clientIdentity:(id)identity requestingBundleID:(id)bundleID;
- (void)encodeWithCoder:(id)coder;
- (void)main;
@end

@implementation SagaSDKAddItemToPlaylistOperation

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = SagaSDKAddItemToPlaylistOperation;
  coderCopy = coder;
  [(SagaAddItemToPlaylistOperation *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_requestingBundleID forKey:{@"RequestingBundleKey", v5.receiver, v5.super_class}];
}

- (SagaSDKAddItemToPlaylistOperation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = SagaSDKAddItemToPlaylistOperation;
  v5 = [(SagaAddItemToPlaylistOperation *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"RequestingBundleKey"];
    requestingBundleID = v5->_requestingBundleID;
    v5->_requestingBundleID = v6;
  }

  return v5;
}

- (void)main
{
  v44 = [NSString stringWithFormat:@"SagaSDKAddItemToPlaylistOperation - (saga_id = %llu)", self->_itemSagaID];
  v3 = [[MSVXPCTransaction alloc] initWithName:v44];
  [v3 beginTransaction];
  musicLibrary = [(CloudLibraryOperation *)self musicLibrary];
  clientIdentity = [(CloudLibraryOperation *)self clientIdentity];
  [musicLibrary setClientIdentity:clientIdentity];

  musicLibrary2 = [(CloudLibraryOperation *)self musicLibrary];
  v7 = [ML3Container newWithPersistentID:self->_playlistPersistentID inLibrary:musicLibrary2];
  if ([v7 existsInLibrary])
  {
    v8 = [v7 valueForProperty:ML3ContainerPropertyStoreCloudID];
    unsignedIntValue = [v8 unsignedIntValue];

    if (unsignedIntValue)
    {
      sagaOnDiskDatabaseRevision = [musicLibrary2 sagaOnDiskDatabaseRevision];
      if (sagaOnDiskDatabaseRevision <= 1)
      {
        v11 = 1;
      }

      else
      {
        v11 = sagaOnDiskDatabaseRevision;
      }

      v42 = v11;
      connection = [(CloudLibraryOperation *)self connection];
      v12 = ML3TrackPropertyStoreSagaID;
      if (self->_itemSagaID && ([ML3ComparisonPredicate predicateWithProperty:ML3TrackPropertyStoreSagaID equalToInt64:?], v13 = objc_claimAutoreleasedReturnValue(), [ML3Track anyInLibrary:musicLibrary2 predicate:v13], v14 = objc_claimAutoreleasedReturnValue(), v13, v14))
      {
        v15 = +[ICAddToLibraryRequest requestWithDatabaseID:databaseRevision:sagaID:containerID:](ICAddToLibraryRequest, "requestWithDatabaseID:databaseRevision:sagaID:containerID:", [connection databaseID], v42, self->_itemSagaID, unsignedIntValue);
        *&v56 = 0;
        *(&v56 + 1) = &v56;
        v57 = 0x3032000000;
        v58 = sub_10013E3A0;
        v59 = sub_10013E3B0;
        v60 = 0;
        v16 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          itemSagaID = self->_itemSagaID;
          *buf = 134218240;
          *v55 = itemSagaID;
          *&v55[8] = 1024;
          *&v55[10] = unsignedIntValue;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Appending cloud-id %lld to playlist with cloud-id %u", buf, 0x12u);
        }

        v50[0] = _NSConcreteStackBlock;
        v50[1] = 3221225472;
        v50[2] = sub_10013F180;
        v50[3] = &unk_1001DF8A8;
        v52 = &v56;
        v18 = dispatch_semaphore_create(0);
        v51 = v18;
        [connection sendRequest:v15 withResponseHandler:v50];
        dispatch_semaphore_wait(v18, 0xFFFFFFFFFFFFFFFFLL);
        v19 = *(*(&v56 + 1) + 40);
        if (v19)
        {
          updateRequired = [v19 updateRequired];
          responseCode = [*(*(&v56 + 1) + 40) responseCode];
        }

        else
        {
          responseCode = 0;
          updateRequired = 0;
        }

        _Block_object_dispose(&v56, 8);
        if ((updateRequired & 1) == 0)
        {
LABEL_29:
          configuration = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
          if (os_log_type_enabled(configuration, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v56) = 0;
            _os_log_impl(&_mh_execute_header, configuration, OS_LOG_TYPE_DEFAULT, "Skipping library update because the response did not contain update-required flag", &v56, 2u);
          }

          goto LABEL_31;
        }
      }

      else
      {
        v24 = objc_alloc_init(ICCloudItemIDList);
        v41 = [ML3Track containerQueryWithContainer:v7];
        v53 = v12;
        v25 = [NSArray arrayWithObjects:&v53 count:1];
        v48[0] = _NSConcreteStackBlock;
        v48[1] = 3221225472;
        v48[2] = sub_10013F1E0;
        v48[3] = &unk_1001DF8D0;
        v26 = v24;
        v49 = v26;
        [v41 enumeratePersistentIDsAndProperties:v25 usingBlock:v48];

        [v26 addCloudItemID:self->_itemSagaID idType:0];
        v27 = objc_alloc_init(NSMutableDictionary);
        [v27 setObject:self->_requestingBundleID forKey:ML3ContainerPropertyExternalVendorIdentifier];

        v28 = +[ICSetContainerPropertiesRequest requestWithDatabaseID:databaseRevision:containerID:trackList:properties:](ICSetContainerPropertiesRequest, "requestWithDatabaseID:databaseRevision:containerID:trackList:properties:", [connection databaseID], v42, unsignedIntValue, v26, 0);
        *&v56 = 0;
        *(&v56 + 1) = &v56;
        v57 = 0x3032000000;
        v58 = sub_10013E3A0;
        v59 = sub_10013E3B0;
        v60 = 0;
        v29 = os_log_create("com.apple.amp.itunescloudd", "CloudSync_Oversize");
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109378;
          *v55 = unsignedIntValue;
          *&v55[4] = 2114;
          *&v55[6] = v26;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Updating playlist with cloud-id %u, setting trackList: %{public}@", buf, 0x12u);
        }

        v45[0] = _NSConcreteStackBlock;
        v45[1] = 3221225472;
        v45[2] = sub_10013F24C;
        v45[3] = &unk_1001DF8A8;
        v47 = &v56;
        v30 = dispatch_semaphore_create(0);
        v46 = v30;
        [connection sendRequest:v28 withResponseHandler:v45];
        dispatch_semaphore_wait(v30, 0xFFFFFFFFFFFFFFFFLL);
        v31 = *(*(&v56 + 1) + 40);
        if (v31)
        {
          updateRequired2 = [v31 updateRequired];
          responseCode = [*(*(&v56 + 1) + 40) responseCode];
        }

        else
        {
          responseCode = 0;
          updateRequired2 = 0;
        }

        _Block_object_dispose(&v56, 8);
        v14 = 0;
        if (!updateRequired2)
        {
          goto LABEL_29;
        }
      }

      v34 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v56) = 0;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Requesting library update because the response contained update-required flag", &v56, 2u);
      }

      configuration = [(CloudLibraryOperation *)self configuration];
      v36 = [(BaseRequestHandler *)ICDCloudMusicLibraryRequestHandler handlerForConfiguration:configuration];
      clientIdentity2 = [(CloudLibraryOperation *)self clientIdentity];
      [v36 updateSagaLibraryWithClientIdentity:clientIdentity2 forReason:8 allowNoisyAuthPrompt:0 isExplicitUserAction:0 completionHandler:0];

LABEL_31:
      if (responseCode > 399)
      {
        if (responseCode == 404 || responseCode == 400)
        {
          v38 = 3;
LABEL_39:
          [(CloudLibraryOperation *)self setStatus:v38];

          goto LABEL_40;
        }
      }

      else
      {
        v38 = 1;
        if (responseCode == 200 || responseCode == 204)
        {
          goto LABEL_39;
        }
      }

      v38 = 2;
      goto LABEL_39;
    }

    v22 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      playlistPersistentID = self->_playlistPersistentID;
      LODWORD(v56) = 134217984;
      *(&v56 + 4) = playlistPersistentID;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Playlist with pid = %lld does not have a cloud_id in the database, skipping save to cloud library.", &v56, 0xCu);
    }
  }

  else
  {
    v22 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = self->_playlistPersistentID;
      LODWORD(v56) = 134217984;
      *(&v56 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Playlist with pid = %lld is not in the database, skipping save to cloud library.", &v56, 0xCu);
    }
  }

  [(CloudLibraryOperation *)self setStatus:1];
LABEL_40:
  musicLibrary3 = [(CloudLibraryOperation *)self musicLibrary];
  v40 = MSVTCCIdentityForCurrentProcess();
  [musicLibrary3 setClientIdentity:v40];

  [v3 endTransaction];
}

- (SagaSDKAddItemToPlaylistOperation)initWithConfiguration:(id)configuration itemSagaID:(unint64_t)d playlistPersistentID:(int64_t)iD clientIdentity:(id)identity requestingBundleID:(id)bundleID
{
  bundleIDCopy = bundleID;
  v18.receiver = self;
  v18.super_class = SagaSDKAddItemToPlaylistOperation;
  v13 = [(SagaAddItemToPlaylistOperation *)&v18 initWithConfiguration:configuration itemSagaID:d playlistPersistentID:iD clientIdentity:identity];
  v14 = v13;
  if (v13)
  {
    v13->_itemSagaID = d;
    v13->_playlistPersistentID = iD;
    v15 = [bundleIDCopy copy];
    requestingBundleID = v14->_requestingBundleID;
    v14->_requestingBundleID = v15;
  }

  return v14;
}

@end