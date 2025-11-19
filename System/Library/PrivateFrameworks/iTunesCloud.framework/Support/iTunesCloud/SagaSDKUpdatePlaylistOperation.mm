@interface SagaSDKUpdatePlaylistOperation
- (SagaSDKUpdatePlaylistOperation)initWithCoder:(id)a3;
- (SagaSDKUpdatePlaylistOperation)initWithConfiguration:(id)a3 clientIdentity:(id)a4 playlistPersistentID:(int64_t)a5 properties:(id)a6 trackList:(id)a7 requestingBundleID:(id)a8;
- (void)encodeWithCoder:(id)a3;
- (void)main;
@end

@implementation SagaSDKUpdatePlaylistOperation

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = SagaSDKUpdatePlaylistOperation;
  v4 = a3;
  [(SagaUpdatePlaylistOperation *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:*(&self->super._libraryUpdateRequired + 1) forKey:{@"SagaSDKUpdatePlaylistOperationRequestingBundleKey", v5.receiver, v5.super_class}];
}

- (SagaSDKUpdatePlaylistOperation)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SagaSDKUpdatePlaylistOperation;
  v5 = [(SagaUpdatePlaylistOperation *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SagaSDKUpdatePlaylistOperationRequestingBundleKey"];
    v7 = *(v5 + 113);
    *(v5 + 113) = v6;
  }

  return v5;
}

- (void)main
{
  context = objc_autoreleasePoolPush();
  v3 = [NSString stringWithFormat:@"SagaUpdatePlaylistOperation - (playlist_persistent_id = %lld)", *(&self->_requestingBundleID + 1)];
  v4 = [[MSVXPCTransaction alloc] initWithName:v3];
  [v4 beginTransaction];
  v5 = [(CloudLibraryOperation *)self musicLibrary];
  v6 = [(CloudLibraryOperation *)self clientIdentity];
  [v5 setClientIdentity:v6];

  v52 = [(CloudLibraryOperation *)self musicLibrary];
  v7 = [ML3Container newWithPersistentID:*(&self->_requestingBundleID + 1) inLibrary:v52];
  v8 = [v7 valueForProperty:ML3ContainerPropertyExternalVendorIdentifier];
  v9 = v8;
  if (v8 && [v8 isEqualToString:*(&self->super._libraryUpdateRequired + 1)])
  {
    if (![v7 existsInLibrary])
    {
      v28 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = *(&self->_requestingBundleID + 1);
        *buf = 134217984;
        *&buf[4] = v29;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Playlist with pid = %lld is not in the database, skipping save to cloud library.", buf, 0xCu);
      }

      [(CloudLibraryOperation *)self setStatus:1];
      goto LABEL_40;
    }

    v10 = ML3ContainerPropertyStoreCloudID;
    v11 = [v7 valueForProperty:ML3ContainerPropertyStoreCloudID];
    v12 = v3;
    v13 = [v11 unsignedIntValue];

    v49 = v13;
    if (!v13)
    {
      v30 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v31 = *(&self->_requestingBundleID + 1);
        *buf = 134217984;
        *&buf[4] = v31;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Playlist with pid = %lld does not have a cloud_id in the database, skipping save to cloud library.", buf, 0xCu);
      }

      v3 = v12;
      [(CloudLibraryOperation *)self setStatus:1];
      goto LABEL_40;
    }

    v14 = ML3ContainerPropertyParentPersistentID;
    v50 = [*(&self->_playlistPersistentID + 1) objectForKey:ML3ContainerPropertyParentPersistentID];
    v3 = v12;
    if (!v50)
    {
LABEL_26:
      v34 = [(CloudLibraryOperation *)self musicLibrary];
      v35 = [v34 sagaOnDiskDatabaseRevision];

      if (v35 <= 1)
      {
        v36 = 1;
      }

      else
      {
        v36 = v35;
      }

      v37 = [(CloudLibraryOperation *)self connection];
      v38 = +[ICSetContainerPropertiesRequest requestWithDatabaseID:databaseRevision:containerID:trackList:properties:](ICSetContainerPropertiesRequest, "requestWithDatabaseID:databaseRevision:containerID:trackList:properties:", [v37 databaseID], v36, v49, *(&self->_properties + 1), *(&self->_playlistPersistentID + 1));
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v65 = sub_1000C0224;
      v66 = sub_1000C0234;
      v67 = 0;
      v39 = dispatch_semaphore_create(0);
      v40 = os_log_create("com.apple.amp.itunescloudd", "CloudSync_Oversize");
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        v41 = *(&self->_properties + 1);
        v42 = *(&self->_playlistPersistentID + 1);
        *v58 = 67109634;
        v59 = v49;
        v60 = 2114;
        v61 = v41;
        v62 = 2114;
        v63 = v42;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Updating playlist with cloud-id %u, setting trackList: %{public}@ properties: %{public}@", v58, 0x1Cu);
      }

      v53[0] = _NSConcreteStackBlock;
      v53[1] = 3221225472;
      v53[2] = sub_1000C14F4;
      v53[3] = &unk_1001DF8A8;
      v55 = buf;
      v43 = v39;
      v54 = v43;
      [v37 sendRequest:v38 withResponseHandler:v53];
      dispatch_semaphore_wait(v43, 0xFFFFFFFFFFFFFFFFLL);
      v44 = [*(*&buf[8] + 40) responseCode];
      if (v44 > 399)
      {
        if (v44 == 404 || v44 == 400)
        {
          v45 = 3;
LABEL_39:
          [(CloudLibraryOperation *)self setStatus:v45];

          _Block_object_dispose(buf, 8);
LABEL_40:
          v46 = [(CloudLibraryOperation *)self musicLibrary];
          v47 = MSVTCCIdentityForCurrentProcess();
          [v46 setClientIdentity:v47];

          [v4 endTransaction];
          goto LABEL_41;
        }
      }

      else
      {
        v45 = 1;
        if (v44 == 200 || v44 == 204)
        {
          goto LABEL_39;
        }
      }

      v45 = 2;
      goto LABEL_39;
    }

    v15 = [*(&self->_playlistPersistentID + 1) mutableCopy];
    if (![v50 longLongValue])
    {
      [v15 setObject:v50 forKey:v14];
      v32 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Resetting parent persistent-id to 0 (default root level)", buf, 2u);
      }

      goto LABEL_25;
    }

    v48 = +[ML3Container newWithPersistentID:inLibrary:](ML3Container, "newWithPersistentID:inLibrary:", [v50 longLongValue], v52);
    v16 = [v48 valueForProperty:v10];
    if ([v16 longLongValue] < 1)
    {
      [v15 removeObjectForKey:v14];
      v17 = sub_10010275C();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        *&buf[4] = [v50 unsignedLongLongValue];
        v18 = "Failed to find parent cloud-id for persistent-id %llu";
        v19 = v17;
        v20 = OS_LOG_TYPE_ERROR;
        v21 = 12;
        goto LABEL_23;
      }
    }

    else
    {
      [v15 setObject:v16 forKey:v14];
      v17 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        *&buf[4] = [v50 unsignedLongLongValue];
        *&buf[12] = 2048;
        *&buf[14] = [v16 unsignedLongLongValue];
        v18 = "Translated parent persistent-id %llu to cloud-id %llu";
        v19 = v17;
        v20 = OS_LOG_TYPE_DEFAULT;
        v21 = 22;
LABEL_23:
        _os_log_impl(&_mh_execute_header, v19, v20, v18, buf, v21);
      }
    }

    v32 = v48;
LABEL_25:

    v33 = *(&self->_playlistPersistentID + 1);
    *(&self->_playlistPersistentID + 1) = v15;

    goto LABEL_26;
  }

  v22 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = *(&self->super._libraryUpdateRequired + 1);
    *buf = 138543618;
    *&buf[4] = v9;
    *&buf[12] = 2114;
    *&buf[14] = v23;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Skipping library update because the vendor bundle identifier, %{public}@, did not match the request bundle identifier %{public}@", buf, 0x16u);
  }

  v56 = NSLocalizedDescriptionKey;
  v57 = @"Updating playlists are only allowed when updating a playlist that your app has created.";
  v24 = [NSDictionary dictionaryWithObjects:&v57 forKeys:&v56 count:1];
  v25 = [[NSError alloc] initWithDomain:@"ICPlaylistUpdateErrorDomain" code:-1 userInfo:v24];
  [(CloudLibraryOperation *)self setError:v25];
  [(CloudLibraryOperation *)self setStatus:2];
  v26 = [(CloudLibraryOperation *)self musicLibrary];
  v27 = MSVTCCIdentityForCurrentProcess();
  [v26 setClientIdentity:v27];

  [v4 endTransaction];
LABEL_41:

  objc_autoreleasePoolPop(context);
}

- (SagaSDKUpdatePlaylistOperation)initWithConfiguration:(id)a3 clientIdentity:(id)a4 playlistPersistentID:(int64_t)a5 properties:(id)a6 trackList:(id)a7 requestingBundleID:(id)a8
{
  v13 = a6;
  v14 = a7;
  v15 = a8;
  v25.receiver = self;
  v25.super_class = SagaSDKUpdatePlaylistOperation;
  v16 = [(SagaUpdatePlaylistOperation *)&v25 initWithClientIdentity:a4 playlistPersistentID:a5 properties:v13 trackList:v14];
  v17 = v16;
  if (v16)
  {
    *(v16 + 121) = a5;
    v18 = [v13 copy];
    v19 = *(v17 + 129);
    *(v17 + 129) = v18;

    v20 = [v14 copy];
    v21 = *(v17 + 137);
    *(v17 + 137) = v20;

    v22 = [v15 copy];
    v23 = *(v17 + 113);
    *(v17 + 113) = v22;
  }

  return v17;
}

@end