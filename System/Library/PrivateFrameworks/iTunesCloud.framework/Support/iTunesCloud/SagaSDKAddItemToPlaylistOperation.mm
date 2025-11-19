@interface SagaSDKAddItemToPlaylistOperation
- (SagaSDKAddItemToPlaylistOperation)initWithCoder:(id)a3;
- (SagaSDKAddItemToPlaylistOperation)initWithConfiguration:(id)a3 itemSagaID:(unint64_t)a4 playlistPersistentID:(int64_t)a5 clientIdentity:(id)a6 requestingBundleID:(id)a7;
- (void)encodeWithCoder:(id)a3;
- (void)main;
@end

@implementation SagaSDKAddItemToPlaylistOperation

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = SagaSDKAddItemToPlaylistOperation;
  v4 = a3;
  [(SagaAddItemToPlaylistOperation *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_requestingBundleID forKey:{@"RequestingBundleKey", v5.receiver, v5.super_class}];
}

- (SagaSDKAddItemToPlaylistOperation)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SagaSDKAddItemToPlaylistOperation;
  v5 = [(SagaAddItemToPlaylistOperation *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"RequestingBundleKey"];
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
  v4 = [(CloudLibraryOperation *)self musicLibrary];
  v5 = [(CloudLibraryOperation *)self clientIdentity];
  [v4 setClientIdentity:v5];

  v6 = [(CloudLibraryOperation *)self musicLibrary];
  v7 = [ML3Container newWithPersistentID:self->_playlistPersistentID inLibrary:v6];
  if ([v7 existsInLibrary])
  {
    v8 = [v7 valueForProperty:ML3ContainerPropertyStoreCloudID];
    v9 = [v8 unsignedIntValue];

    if (v9)
    {
      v10 = [v6 sagaOnDiskDatabaseRevision];
      if (v10 <= 1)
      {
        v11 = 1;
      }

      else
      {
        v11 = v10;
      }

      v42 = v11;
      v43 = [(CloudLibraryOperation *)self connection];
      v12 = ML3TrackPropertyStoreSagaID;
      if (self->_itemSagaID && ([ML3ComparisonPredicate predicateWithProperty:ML3TrackPropertyStoreSagaID equalToInt64:?], v13 = objc_claimAutoreleasedReturnValue(), [ML3Track anyInLibrary:v6 predicate:v13], v14 = objc_claimAutoreleasedReturnValue(), v13, v14))
      {
        v15 = +[ICAddToLibraryRequest requestWithDatabaseID:databaseRevision:sagaID:containerID:](ICAddToLibraryRequest, "requestWithDatabaseID:databaseRevision:sagaID:containerID:", [v43 databaseID], v42, self->_itemSagaID, v9);
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
          *&v55[10] = v9;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Appending cloud-id %lld to playlist with cloud-id %u", buf, 0x12u);
        }

        v50[0] = _NSConcreteStackBlock;
        v50[1] = 3221225472;
        v50[2] = sub_10013F180;
        v50[3] = &unk_1001DF8A8;
        v52 = &v56;
        v18 = dispatch_semaphore_create(0);
        v51 = v18;
        [v43 sendRequest:v15 withResponseHandler:v50];
        dispatch_semaphore_wait(v18, 0xFFFFFFFFFFFFFFFFLL);
        v19 = *(*(&v56 + 1) + 40);
        if (v19)
        {
          v20 = [v19 updateRequired];
          v21 = [*(*(&v56 + 1) + 40) responseCode];
        }

        else
        {
          v21 = 0;
          v20 = 0;
        }

        _Block_object_dispose(&v56, 8);
        if ((v20 & 1) == 0)
        {
LABEL_29:
          v35 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v56) = 0;
            _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Skipping library update because the response did not contain update-required flag", &v56, 2u);
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

        v28 = +[ICSetContainerPropertiesRequest requestWithDatabaseID:databaseRevision:containerID:trackList:properties:](ICSetContainerPropertiesRequest, "requestWithDatabaseID:databaseRevision:containerID:trackList:properties:", [v43 databaseID], v42, v9, v26, 0);
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
          *v55 = v9;
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
        [v43 sendRequest:v28 withResponseHandler:v45];
        dispatch_semaphore_wait(v30, 0xFFFFFFFFFFFFFFFFLL);
        v31 = *(*(&v56 + 1) + 40);
        if (v31)
        {
          v32 = [v31 updateRequired];
          v21 = [*(*(&v56 + 1) + 40) responseCode];
        }

        else
        {
          v21 = 0;
          v32 = 0;
        }

        _Block_object_dispose(&v56, 8);
        v14 = 0;
        if (!v32)
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

      v35 = [(CloudLibraryOperation *)self configuration];
      v36 = [(BaseRequestHandler *)ICDCloudMusicLibraryRequestHandler handlerForConfiguration:v35];
      v37 = [(CloudLibraryOperation *)self clientIdentity];
      [v36 updateSagaLibraryWithClientIdentity:v37 forReason:8 allowNoisyAuthPrompt:0 isExplicitUserAction:0 completionHandler:0];

LABEL_31:
      if (v21 > 399)
      {
        if (v21 == 404 || v21 == 400)
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
        if (v21 == 200 || v21 == 204)
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
  v39 = [(CloudLibraryOperation *)self musicLibrary];
  v40 = MSVTCCIdentityForCurrentProcess();
  [v39 setClientIdentity:v40];

  [v3 endTransaction];
}

- (SagaSDKAddItemToPlaylistOperation)initWithConfiguration:(id)a3 itemSagaID:(unint64_t)a4 playlistPersistentID:(int64_t)a5 clientIdentity:(id)a6 requestingBundleID:(id)a7
{
  v12 = a7;
  v18.receiver = self;
  v18.super_class = SagaSDKAddItemToPlaylistOperation;
  v13 = [(SagaAddItemToPlaylistOperation *)&v18 initWithConfiguration:a3 itemSagaID:a4 playlistPersistentID:a5 clientIdentity:a6];
  v14 = v13;
  if (v13)
  {
    v13->_itemSagaID = a4;
    v13->_playlistPersistentID = a5;
    v15 = [v12 copy];
    requestingBundleID = v14->_requestingBundleID;
    v14->_requestingBundleID = v15;
  }

  return v14;
}

@end