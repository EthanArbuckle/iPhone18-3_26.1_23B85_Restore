@interface SagaAddItemToPlaylistOperation
- (SagaAddItemToPlaylistOperation)initWithCoder:(id)a3;
- (SagaAddItemToPlaylistOperation)initWithConfiguration:(id)a3 itemSagaID:(unint64_t)a4 playlistPersistentID:(int64_t)a5 clientIdentity:(id)a6;
- (SagaAddItemToPlaylistOperation)initWithItemSagaID:(unint64_t)a3 playlistPersistentID:(int64_t)a4;
- (void)encodeWithCoder:(id)a3;
- (void)main;
@end

@implementation SagaAddItemToPlaylistOperation

- (void)main
{
  v43 = [NSString stringWithFormat:@"SagaAddItemToPlaylistOperation - (saga_id = %llu)", self->_itemSagaID];
  v3 = [[MSVXPCTransaction alloc] initWithName:v43];
  [v3 beginTransaction];
  v4 = [(CloudLibraryOperation *)self musicLibrary];
  v5 = [(CloudLibraryOperation *)self clientIdentity];
  [v4 setClientIdentity:v5];

  v44 = [(CloudLibraryOperation *)self musicLibrary];
  v6 = [ML3Container newWithPersistentID:self->_playlistPersistentID inLibrary:v44];
  if ([v6 existsInLibrary])
  {
    v7 = [v6 valueForProperty:ML3ContainerPropertyStoreCloudID];
    v8 = [v7 unsignedIntValue];

    if (v8)
    {
      v9 = [v44 sagaOnDiskDatabaseRevision];
      if (v9 <= 1)
      {
        v10 = 1;
      }

      else
      {
        v10 = v9;
      }

      v42 = [(CloudLibraryOperation *)self connection];
      v11 = ML3TrackPropertyStoreSagaID;
      if (self->_itemSagaID && ([ML3ComparisonPredicate predicateWithProperty:ML3TrackPropertyStoreSagaID equalToInt64:?], v12 = objc_claimAutoreleasedReturnValue(), [ML3Track anyInLibrary:v44 predicate:v12], v13 = objc_claimAutoreleasedReturnValue(), v12, v13))
      {
        v14 = +[ICAddToLibraryRequest requestWithDatabaseID:databaseRevision:sagaID:containerID:](ICAddToLibraryRequest, "requestWithDatabaseID:databaseRevision:sagaID:containerID:", [v42 databaseID], v10, self->_itemSagaID, v8);
        *&v64 = 0;
        *(&v64 + 1) = &v64;
        v65 = 0x3032000000;
        v66 = sub_10013E3A0;
        v67 = sub_10013E3B0;
        v68 = 0;
        v55 = 0;
        v56 = &v55;
        v57 = 0x3032000000;
        v58 = sub_10013E3A0;
        v59 = sub_10013E3B0;
        v60 = 0;
        v15 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          itemSagaID = self->_itemSagaID;
          *buf = 134218240;
          *v63 = itemSagaID;
          *&v63[8] = 1024;
          *&v63[10] = v8;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Appending cloud-id %lld to playlist with cloud-id %u", buf, 0x12u);
        }

        v51[0] = _NSConcreteStackBlock;
        v51[1] = 3221225472;
        v51[2] = sub_10013E3B8;
        v51[3] = &unk_1001DF880;
        v53 = &v64;
        v54 = &v55;
        v17 = dispatch_semaphore_create(0);
        v52 = v17;
        [v42 sendRequest:v14 withResponseHandler:v51];
        dispatch_semaphore_wait(v17, 0xFFFFFFFFFFFFFFFFLL);
        v18 = *(&v64 + 1);
        if (v56[5] || (v38 = *(*(&v64 + 1) + 40)) == 0)
        {
          v19 = 0;
        }

        else
        {
          v19 = [v38 updateRequired];
          v18 = *(&v64 + 1);
        }

        v33 = [*(v18 + 40) responseCode];

        _Block_object_dispose(&v55, 8);
        _Block_object_dispose(&v64, 8);

        if ((v19 & 1) == 0)
        {
LABEL_31:
          v35 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v64) = 0;
            _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Skipping library update because the response did not contain update-required flag", &v64, 2u);
          }

          goto LABEL_33;
        }
      }

      else
      {
        v22 = objc_alloc_init(ICCloudItemIDList);
        v23 = [ML3Track containerQueryWithContainer:v6];
        v61 = v11;
        v24 = [NSArray arrayWithObjects:&v61 count:1];
        v49[0] = _NSConcreteStackBlock;
        v49[1] = 3221225472;
        v49[2] = sub_10013E454;
        v49[3] = &unk_1001DF8D0;
        v25 = v22;
        v50 = v25;
        [v23 enumeratePersistentIDsAndProperties:v24 usingBlock:v49];

        v26 = +[ICSetContainerPropertiesRequest requestWithDatabaseID:databaseRevision:containerID:trackList:properties:](ICSetContainerPropertiesRequest, "requestWithDatabaseID:databaseRevision:containerID:trackList:properties:", [v42 databaseID], v10, v8, v25, 0);
        *&v64 = 0;
        *(&v64 + 1) = &v64;
        v65 = 0x3032000000;
        v66 = sub_10013E3A0;
        v67 = sub_10013E3B0;
        v68 = 0;
        v55 = 0;
        v56 = &v55;
        v57 = 0x3032000000;
        v58 = sub_10013E3A0;
        v59 = sub_10013E3B0;
        v60 = 0;
        v27 = os_log_create("com.apple.amp.itunescloudd", "CloudSync_Oversize");
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109378;
          *v63 = v8;
          *&v63[4] = 2114;
          *&v63[6] = v25;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Updating playlist with cloud-id %u, setting trackList: %{public}@", buf, 0x12u);
        }

        v45[0] = _NSConcreteStackBlock;
        v45[1] = 3221225472;
        v45[2] = sub_10013E4C0;
        v45[3] = &unk_1001DF880;
        v47 = &v64;
        v48 = &v55;
        v28 = dispatch_semaphore_create(0);
        v46 = v28;
        [v42 sendRequest:v26 withResponseHandler:v45];
        dispatch_semaphore_wait(v28, 0xFFFFFFFFFFFFFFFFLL);
        v29 = *(&v64 + 1);
        if (v56[5] || (v32 = *(*(&v64 + 1) + 40)) == 0)
        {
          v30 = 0;
        }

        else
        {
          v30 = [v32 updateRequired];
          v29 = *(&v64 + 1);
        }

        v33 = [*(v29 + 40) responseCode];

        _Block_object_dispose(&v55, 8);
        _Block_object_dispose(&v64, 8);

        v13 = 0;
        if (!v30)
        {
          goto LABEL_31;
        }
      }

      v34 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v64) = 0;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Requesting library update because the response contained update-required flag", &v64, 2u);
      }

      v35 = [(CloudLibraryOperation *)self configuration];
      v36 = [(BaseRequestHandler *)ICDCloudMusicLibraryRequestHandler handlerForConfiguration:v35];
      v37 = [(CloudLibraryOperation *)self clientIdentity];
      [v36 updateSagaLibraryWithClientIdentity:v37 forReason:8 allowNoisyAuthPrompt:0 isExplicitUserAction:0 completionHandler:0];

LABEL_33:
      if (v33 > 399)
      {
        if (v33 == 404 || v33 == 400)
        {
          v39 = 3;
LABEL_41:
          [(CloudLibraryOperation *)self setStatus:v39];

          goto LABEL_42;
        }
      }

      else
      {
        v39 = 1;
        if (v33 == 200 || v33 == 204)
        {
          goto LABEL_41;
        }
      }

      v39 = 2;
      goto LABEL_41;
    }

    v20 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      playlistPersistentID = self->_playlistPersistentID;
      LODWORD(v64) = 134217984;
      *(&v64 + 4) = playlistPersistentID;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Playlist with pid = %lld does not have a cloud_id in the database, skipping save to cloud library.", &v64, 0xCu);
    }
  }

  else
  {
    v20 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = self->_playlistPersistentID;
      LODWORD(v64) = 134217984;
      *(&v64 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Playlist with pid = %lld is not in the database, skipping save to cloud library.", &v64, 0xCu);
    }
  }

  [(CloudLibraryOperation *)self setStatus:1];
LABEL_42:
  v40 = [(CloudLibraryOperation *)self musicLibrary];
  v41 = MSVTCCIdentityForCurrentProcess();
  [v40 setClientIdentity:v41];

  [v3 endTransaction];
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = SagaAddItemToPlaylistOperation;
  v4 = a3;
  [(CloudLibraryOperation *)&v5 encodeWithCoder:v4];
  [v4 encodeInt64:self->_itemSagaID forKey:{@"ItemSagaIDKey", v5.receiver, v5.super_class}];
  [v4 encodeInt64:self->_playlistPersistentID forKey:@"PlaylistPersistentIDKey"];
}

- (SagaAddItemToPlaylistOperation)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = SagaAddItemToPlaylistOperation;
  v5 = [(CloudLibraryOperation *)&v7 initWithCoder:v4];
  if (v5)
  {
    v5->_itemSagaID = [v4 decodeInt64ForKey:@"ItemSagaIDKey"];
    v5->_playlistPersistentID = [v4 decodeInt64ForKey:@"PlaylistPersistentIDKey"];
  }

  return v5;
}

- (SagaAddItemToPlaylistOperation)initWithConfiguration:(id)a3 itemSagaID:(unint64_t)a4 playlistPersistentID:(int64_t)a5 clientIdentity:(id)a6
{
  v9.receiver = self;
  v9.super_class = SagaAddItemToPlaylistOperation;
  result = [(CloudLibraryOperation *)&v9 initWithConfiguration:a3 clientIdentity:a6];
  if (result)
  {
    result->_itemSagaID = a4;
    result->_playlistPersistentID = a5;
  }

  return result;
}

- (SagaAddItemToPlaylistOperation)initWithItemSagaID:(unint64_t)a3 playlistPersistentID:(int64_t)a4
{
  v7 = objc_opt_new();
  v8 = MSVTCCIdentityForCurrentProcess();
  v9 = [(SagaAddItemToPlaylistOperation *)self initWithConfiguration:v7 itemSagaID:a3 playlistPersistentID:a4 clientIdentity:v8];

  return v9;
}

@end