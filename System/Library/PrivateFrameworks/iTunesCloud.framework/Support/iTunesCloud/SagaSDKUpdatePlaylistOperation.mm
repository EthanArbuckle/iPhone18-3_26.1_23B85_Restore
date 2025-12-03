@interface SagaSDKUpdatePlaylistOperation
- (SagaSDKUpdatePlaylistOperation)initWithCoder:(id)coder;
- (SagaSDKUpdatePlaylistOperation)initWithConfiguration:(id)configuration clientIdentity:(id)identity playlistPersistentID:(int64_t)d properties:(id)properties trackList:(id)list requestingBundleID:(id)iD;
- (void)encodeWithCoder:(id)coder;
- (void)main;
@end

@implementation SagaSDKUpdatePlaylistOperation

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = SagaSDKUpdatePlaylistOperation;
  coderCopy = coder;
  [(SagaUpdatePlaylistOperation *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:*(&self->super._libraryUpdateRequired + 1) forKey:{@"SagaSDKUpdatePlaylistOperationRequestingBundleKey", v5.receiver, v5.super_class}];
}

- (SagaSDKUpdatePlaylistOperation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = SagaSDKUpdatePlaylistOperation;
  v5 = [(SagaUpdatePlaylistOperation *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SagaSDKUpdatePlaylistOperationRequestingBundleKey"];
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
  musicLibrary = [(CloudLibraryOperation *)self musicLibrary];
  clientIdentity = [(CloudLibraryOperation *)self clientIdentity];
  [musicLibrary setClientIdentity:clientIdentity];

  musicLibrary2 = [(CloudLibraryOperation *)self musicLibrary];
  v7 = [ML3Container newWithPersistentID:*(&self->_requestingBundleID + 1) inLibrary:musicLibrary2];
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
    unsignedIntValue = [v11 unsignedIntValue];

    v49 = unsignedIntValue;
    if (!unsignedIntValue)
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
      musicLibrary3 = [(CloudLibraryOperation *)self musicLibrary];
      sagaOnDiskDatabaseRevision = [musicLibrary3 sagaOnDiskDatabaseRevision];

      if (sagaOnDiskDatabaseRevision <= 1)
      {
        v36 = 1;
      }

      else
      {
        v36 = sagaOnDiskDatabaseRevision;
      }

      connection = [(CloudLibraryOperation *)self connection];
      v38 = +[ICSetContainerPropertiesRequest requestWithDatabaseID:databaseRevision:containerID:trackList:properties:](ICSetContainerPropertiesRequest, "requestWithDatabaseID:databaseRevision:containerID:trackList:properties:", [connection databaseID], v36, v49, *(&self->_properties + 1), *(&self->_playlistPersistentID + 1));
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
      [connection sendRequest:v38 withResponseHandler:v53];
      dispatch_semaphore_wait(v43, 0xFFFFFFFFFFFFFFFFLL);
      responseCode = [*(*&buf[8] + 40) responseCode];
      if (responseCode > 399)
      {
        if (responseCode == 404 || responseCode == 400)
        {
          v45 = 3;
LABEL_39:
          [(CloudLibraryOperation *)self setStatus:v45];

          _Block_object_dispose(buf, 8);
LABEL_40:
          musicLibrary4 = [(CloudLibraryOperation *)self musicLibrary];
          v47 = MSVTCCIdentityForCurrentProcess();
          [musicLibrary4 setClientIdentity:v47];

          [v4 endTransaction];
          goto LABEL_41;
        }
      }

      else
      {
        v45 = 1;
        if (responseCode == 200 || responseCode == 204)
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

    v48 = +[ML3Container newWithPersistentID:inLibrary:](ML3Container, "newWithPersistentID:inLibrary:", [v50 longLongValue], musicLibrary2);
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
  musicLibrary5 = [(CloudLibraryOperation *)self musicLibrary];
  v27 = MSVTCCIdentityForCurrentProcess();
  [musicLibrary5 setClientIdentity:v27];

  [v4 endTransaction];
LABEL_41:

  objc_autoreleasePoolPop(context);
}

- (SagaSDKUpdatePlaylistOperation)initWithConfiguration:(id)configuration clientIdentity:(id)identity playlistPersistentID:(int64_t)d properties:(id)properties trackList:(id)list requestingBundleID:(id)iD
{
  propertiesCopy = properties;
  listCopy = list;
  iDCopy = iD;
  v25.receiver = self;
  v25.super_class = SagaSDKUpdatePlaylistOperation;
  v16 = [(SagaUpdatePlaylistOperation *)&v25 initWithClientIdentity:identity playlistPersistentID:d properties:propertiesCopy trackList:listCopy];
  v17 = v16;
  if (v16)
  {
    *(v16 + 121) = d;
    v18 = [propertiesCopy copy];
    v19 = *(v17 + 129);
    *(v17 + 129) = v18;

    v20 = [listCopy copy];
    v21 = *(v17 + 137);
    *(v17 + 137) = v20;

    v22 = [iDCopy copy];
    v23 = *(v17 + 113);
    *(v17 + 113) = v22;
  }

  return v17;
}

@end