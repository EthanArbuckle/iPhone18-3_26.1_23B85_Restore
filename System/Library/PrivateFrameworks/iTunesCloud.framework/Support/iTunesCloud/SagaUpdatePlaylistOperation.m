@interface SagaUpdatePlaylistOperation
- (SagaUpdatePlaylistOperation)initWithClientIdentity:(id)a3 playlistPersistentID:(int64_t)a4 properties:(id)a5 trackList:(id)a6;
- (SagaUpdatePlaylistOperation)initWithCoder:(id)a3;
- (SagaUpdatePlaylistOperation)initWithConfiguration:(id)a3 clientIdentity:(id)a4 playlistPersistentID:(int64_t)a5 properties:(id)a6 trackList:(id)a7;
- (void)encodeWithCoder:(id)a3;
- (void)main;
@end

@implementation SagaUpdatePlaylistOperation

- (void)main
{
  context = objc_autoreleasePoolPush();
  v3 = [NSString stringWithFormat:@"SagaUpdatePlaylistOperation - (playlist_persistent_id = %lld)", self->_playlistPersistentID];
  v4 = [[MSVXPCTransaction alloc] initWithName:v3];
  [v4 beginTransaction];
  v5 = [(CloudLibraryOperation *)self musicLibrary];
  v6 = [(CloudLibraryOperation *)self clientIdentity];
  [v5 setClientIdentity:v6];

  v7 = [(CloudLibraryOperation *)self musicLibrary];
  v8 = [ML3Container newWithPersistentID:self->_playlistPersistentID inLibrary:v7];
  if (![v8 existsInLibrary])
  {
    v22 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      playlistPersistentID = self->_playlistPersistentID;
      *buf = 134217984;
      *&buf[4] = playlistPersistentID;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Playlist with pid = %lld is not in the database, skipping save to cloud library.", buf, 0xCu);
    }

    [(CloudLibraryOperation *)self setStatus:1];
    goto LABEL_68;
  }

  v9 = ML3ContainerPropertyStoreCloudID;
  v10 = [v8 valueForProperty:ML3ContainerPropertyStoreCloudID];
  v11 = [v10 unsignedIntValue];

  v79 = v11;
  if (!v11)
  {
    v24 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = self->_playlistPersistentID;
      *buf = 134217984;
      *&buf[4] = v25;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Playlist with pid = %lld does not have a cloud_id in the database, marking the operation as failed.", buf, 0xCu);
    }

    [(CloudLibraryOperation *)self setStatus:2];
    goto LABEL_68;
  }

  obj = [(NSDictionary *)self->_properties mutableCopy];
  v76 = ML3ContainerPropertyParentPersistentID;
  v12 = [(NSDictionary *)self->_properties objectForKey:?];
  v81 = v12;
  v13 = v12;
  if (!v12)
  {
LABEL_28:
    v32 = [(CloudLibraryOperation *)self musicLibrary];
    v33 = [v32 sagaOnDiskDatabaseRevision];

    if (v33 <= 1)
    {
      v34 = 1;
    }

    else
    {
      v34 = v33;
    }

    v77 = v34;
    v83 = [(CloudLibraryOperation *)self connection];
    v35 = +[ICSetContainerPropertiesRequest requestWithDatabaseID:databaseRevision:containerID:trackList:properties:](ICSetContainerPropertiesRequest, "requestWithDatabaseID:databaseRevision:containerID:trackList:properties:", [v83 databaseID], v77, v79, self->_trackList, obj);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v107 = sub_1000C0224;
    v108 = sub_1000C0234;
    v109 = 0;
    v97 = 0;
    v98 = &v97;
    v99 = 0x3032000000;
    v100 = sub_1000C0224;
    v101 = sub_1000C0234;
    v102 = 0;
    v36 = dispatch_semaphore_create(0);
    v37 = os_log_create("com.apple.amp.itunescloudd", "CloudSync_Oversize");
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      trackList = self->_trackList;
      *v104 = 67109634;
      *v105 = v79;
      *&v105[4] = 2114;
      *&v105[6] = trackList;
      *&v105[14] = 2114;
      *&v105[16] = obj;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Updating playlist with cloud-id %u, setting trackList: %{public}@ properties: %{public}@", v104, 0x1Cu);
    }

    v93[0] = _NSConcreteStackBlock;
    v93[1] = 3221225472;
    v93[2] = sub_1000C023C;
    v93[3] = &unk_1001DDC90;
    v95 = buf;
    v96 = &v97;
    v93[4] = self;
    v39 = v36;
    v94 = v39;
    [v83 sendRequest:v35 withResponseHandler:v93];
    dispatch_semaphore_wait(v39, 0xFFFFFFFFFFFFFFFFLL);
    if (v98[5] || (v41 = *(*&buf[8] + 40)) == 0)
    {
      v40 = v35;
      v78 = v81;
    }

    else
    {
      v75 = v41;
      v74 = [NSMutableDictionary dictionaryWithCapacity:2];
      v42 = [v75 globalPlaylistID];
      v43 = [v42 length] == 0;

      if (!v43)
      {
        v44 = [v75 globalPlaylistID];
        [v74 setObject:v44 forKey:ML3ContainerPropertyCloudGlobalID];
      }

      v45 = [v75 subscribedContainerURL];
      v46 = [v45 length] == 0;

      if (!v46)
      {
        v47 = [v75 subscribedContainerURL];
        [v74 setObject:v47 forKey:ML3ContainerPropertyCloudShareURL];
      }

      if ([v74 count] && (objc_msgSend(v8, "setValuesForPropertiesWithDictionary:", v74) & 1) == 0)
      {
        v48 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          *v104 = 138543362;
          *v105 = v8;
          _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "Failed to set updated properties on container %{public}@", v104, 0xCu);
        }
      }

      v49 = [v75 failedItems];
      v73 = v49;
      if (v49 && [v49 count])
      {
        v78 = [(NSDictionary *)self->_properties objectForKey:v76];

        if (v78 && [v78 longLongValue])
        {
          v50 = sub_10010275C();
          if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
          {
            v51 = self->_playlistPersistentID;
            v52 = [v78 longLongValue];
            *v104 = 134218240;
            *v105 = v51;
            *&v105[8] = 2048;
            *&v105[10] = v52;
            _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_ERROR, "Failed to move playlist with persistent-id %lld to folder with persistent-id %lld, moving to root level.", v104, 0x16u);
          }

          [obj setObject:&off_1001ED6F0 forKey:v76];
          objc_storeStrong(&self->_properties, obj);
          v90[0] = _NSConcreteStackBlock;
          v90[1] = 3221225472;
          v90[2] = sub_1000C0330;
          v90[3] = &unk_1001DEE70;
          v91 = v73;
          v92 = self;
          [v7 databaseConnectionAllowingWrites:1 withBlock:v90];
          v40 = +[ICSetContainerPropertiesRequest requestWithDatabaseID:databaseRevision:containerID:trackList:properties:](ICSetContainerPropertiesRequest, "requestWithDatabaseID:databaseRevision:containerID:trackList:properties:", [v83 databaseID], v77, v79, self->_trackList, obj);

          v53 = sub_100102794();
          if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
          {
            v54 = self->_trackList;
            properties = self->_properties;
            *v104 = 67109634;
            *v105 = v79;
            *&v105[4] = 2114;
            *&v105[6] = v54;
            *&v105[14] = 2114;
            *&v105[16] = properties;
            _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "Updating playlist with cloud-id %u, setting trackList: %{public}@ properties: %{public}@", v104, 0x1Cu);
          }

          v86[0] = _NSConcreteStackBlock;
          v86[1] = 3221225472;
          v86[2] = sub_1000C03C8;
          v86[3] = &unk_1001DDC90;
          v88 = buf;
          v89 = &v97;
          v86[4] = self;
          v56 = v39;
          v87 = v56;
          [v83 sendRequest:v40 withResponseHandler:v86];
          dispatch_semaphore_wait(v56, 0xFFFFFFFFFFFFFFFFLL);
          if (v98[5] || (v68 = *(*&buf[8] + 40)) == 0)
          {
            v82 = v75;
          }

          else
          {
            v82 = v68;

            v69 = [v82 failedItems];
            if (v69)
            {
              v70 = [v82 failedItems];
              v80 = [v70 count] == 0;

              if (!v80)
              {
                v71 = sub_10010275C();
                if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
                {
                  v72 = self->_playlistPersistentID;
                  *v104 = 134217984;
                  *v105 = v72;
                  _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_ERROR, "Failed to move playlist with persistent-id %lld to root level, permanently failing the operation.", v104, 0xCu);
                }

                [(CloudLibraryOperation *)self setStatus:3];
              }
            }
          }

          v57 = v91;
        }

        else
        {
          v57 = sub_10010275C();
          if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
          {
            v59 = self->_playlistPersistentID;
            *v104 = 134217984;
            *v105 = v59;
            _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_ERROR, "Failed to update playlist with persistent-id %lld.", v104, 0xCu);
          }

          v82 = v75;
          v40 = v35;
        }

        v58 = v82;
      }

      else
      {
        v58 = v75;
        v40 = v35;
        v78 = v81;
      }

      v60 = [v58 updateRequired];
      v61 = v73;
      if (v60)
      {
        self->_libraryUpdateRequired = 1;
      }

      else
      {
        v62 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
        if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
        {
          *v104 = 0;
          _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "Skipping library update because the response did not contain update-required flag", v104, 2u);
        }

        v61 = v73;
      }
    }

    _Block_object_dispose(&v97, 8);
    _Block_object_dispose(buf, 8);

LABEL_68:
    v63 = [(CloudLibraryOperation *)self musicLibrary];
    v64 = MSVTCCIdentityForCurrentProcess();
    [v63 setClientIdentity:v64];

    [v4 endTransaction];
    goto LABEL_69;
  }

  if (![v12 longLongValue])
  {
    v14 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v26 = self->_playlistPersistentID;
      *buf = 134217984;
      *&buf[4] = v26;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Moving playlist with persistent-id %lld to root level.", buf, 0xCu);
    }

    goto LABEL_27;
  }

  v14 = +[ML3Container newWithPersistentID:inLibrary:](ML3Container, "newWithPersistentID:inLibrary:", [v13 longLongValue], v7);
  if (![v14 existsInLibrary])
  {
    v27 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      *&buf[4] = [v13 longLongValue];
      v28 = "Container with persistent-id %llu doesn't exist in library.";
LABEL_23:
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, v28, buf, 0xCu);
    }

LABEL_24:

    [obj setObject:&off_1001ED6F0 forKey:v76];
    objc_storeStrong(&self->_properties, obj);
    v29 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = [v81 longLongValue];
      v31 = self->_playlistPersistentID;
      *buf = 134218240;
      *&buf[4] = v30;
      *&buf[12] = 2048;
      *&buf[14] = v31;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Folder with persistent-id %llu doesn't exist, moving playlist with persistent-id %lld to root level.", buf, 0x16u);
    }

    v103[0] = _NSConcreteStackBlock;
    v103[1] = 3221225472;
    v103[2] = sub_1000C00B4;
    v103[3] = &unk_1001DCC68;
    v103[4] = self;
    [v7 databaseConnectionAllowingWrites:1 withBlock:v103];
    goto LABEL_27;
  }

  v15 = [v14 valueForProperty:ML3ContainerPropertySmartIsFolder];
  v16 = [v15 BOOLValue];

  v17 = [v14 valueForProperty:v9];
  v18 = [v17 longLongValue];

  if (!v16)
  {
    v27 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      *&buf[4] = [v81 longLongValue];
      v28 = "Container with persistent-id %llu isn't a folder.";
      goto LABEL_23;
    }

    goto LABEL_24;
  }

  if (v18)
  {
    v19 = [NSNumber numberWithUnsignedLongLong:v18];
    [obj setObject:v19 forKey:v76];

    v20 = sub_10010275C();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = self->_playlistPersistentID;
      *buf = 134218496;
      *&buf[4] = v21;
      *&buf[12] = 2048;
      *&buf[14] = [v81 longLongValue];
      *&buf[22] = 2048;
      v107 = v18;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Moving playlist with persistent-id %lld to folder with persistent-id %lld and cloud-id %llu.", buf, 0x20u);
    }

LABEL_27:
    goto LABEL_28;
  }

  v65 = sub_10010275C();
  if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    *&buf[4] = [v81 longLongValue];
    _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_ERROR, "Container with persistent-id %llu doesn't have a cloud-id, marking the operation as failed.", buf, 0xCu);
  }

  [(CloudLibraryOperation *)self setStatus:2];
  v66 = [(CloudLibraryOperation *)self musicLibrary];
  v67 = MSVTCCIdentityForCurrentProcess();
  [v66 setClientIdentity:v67];

  [v4 endTransaction];
LABEL_69:

  objc_autoreleasePoolPop(context);
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = SagaUpdatePlaylistOperation;
  v4 = a3;
  [(CloudLibraryOperation *)&v5 encodeWithCoder:v4];
  [v4 encodeInt32:2 forKey:{@"SagaUpdatePlaylistOperationArchiveVersionKey", v5.receiver, v5.super_class}];
  [v4 encodeInt64:self->_playlistPersistentID forKey:@"SagaUpdatePlaylistOperationPlaylistPersistentIDKey"];
  [v4 encodeObject:self->_properties forKey:@"SagaUpdatePlaylistOperationProperties"];
  [v4 encodeObject:self->_trackList forKey:@"SagaUpdatePlaylistOperationTrackListKey"];
}

- (SagaUpdatePlaylistOperation)initWithCoder:(id)a3
{
  v4 = a3;
  v29.receiver = self;
  v29.super_class = SagaUpdatePlaylistOperation;
  v5 = [(CloudLibraryOperation *)&v29 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeInt32ForKey:@"SagaUpdatePlaylistOperationArchiveVersionKey"];
    v7 = [v4 decodeInt64ForKey:@"SagaUpdatePlaylistOperationPlaylistPersistentIDKey"];
    if (v6 == 1)
    {
      v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SagaUpdatePlaylistOperationcloudItemIDListKey"];
    }

    else
    {
      if (v6)
      {
        v16 = objc_opt_class();
        v17 = objc_opt_class();
        v18 = objc_opt_class();
        v19 = [NSSet setWithObjects:v16, v17, v18, objc_opt_class(), 0];
        v15 = [v4 decodeObjectOfClasses:v19 forKey:@"SagaUpdatePlaylistOperationProperties"];

        v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SagaUpdatePlaylistOperationTrackListKey"];
        goto LABEL_15;
      }

      v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SagaUpdatePlaylistOperationItemSagaIDsKey"];
      v9 = objc_alloc_init(ICCloudItemIDList);
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v10 = v8;
      v11 = [v10 countByEnumeratingWithState:&v25 objects:v30 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v26;
        do
        {
          v14 = 0;
          do
          {
            if (*v26 != v13)
            {
              objc_enumerationMutation(v10);
            }

            [v9 addCloudItemID:objc_msgSend(*(*(&v25 + 1) + 8 * v14) idType:{"unsignedLongLongValue"), 0}];
            v14 = v14 + 1;
          }

          while (v12 != v14);
          v12 = [v10 countByEnumeratingWithState:&v25 objects:v30 count:16];
        }

        while (v12);
      }
    }

    v15 = 0;
LABEL_15:
    v5->_playlistPersistentID = v7;
    v20 = [v15 copy];
    properties = v5->_properties;
    v5->_properties = v20;

    v22 = [v9 copy];
    trackList = v5->_trackList;
    v5->_trackList = v22;
  }

  return v5;
}

- (SagaUpdatePlaylistOperation)initWithConfiguration:(id)a3 clientIdentity:(id)a4 playlistPersistentID:(int64_t)a5 properties:(id)a6 trackList:(id)a7
{
  v12 = a6;
  v13 = a7;
  v21.receiver = self;
  v21.super_class = SagaUpdatePlaylistOperation;
  v14 = [(CloudLibraryOperation *)&v21 initWithConfiguration:a3 clientIdentity:a4];
  v15 = v14;
  if (v14)
  {
    v14->_playlistPersistentID = a5;
    v16 = [v12 copy];
    properties = v15->_properties;
    v15->_properties = v16;

    v18 = [v13 copy];
    trackList = v15->_trackList;
    v15->_trackList = v18;
  }

  return v15;
}

- (SagaUpdatePlaylistOperation)initWithClientIdentity:(id)a3 playlistPersistentID:(int64_t)a4 properties:(id)a5 trackList:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a3;
  v13 = objc_opt_new();
  v14 = [(SagaUpdatePlaylistOperation *)self initWithConfiguration:v13 clientIdentity:v12 playlistPersistentID:a4 properties:v11 trackList:v10];

  return v14;
}

@end