@interface SagaCreatePlaylistOperation
- (SagaCreatePlaylistOperation)initWithCoder:(id)a3;
- (SagaCreatePlaylistOperation)initWithConfiguration:(id)a3 playlistPersistentID:(int64_t)a4 properties:(id)a5 trackList:(id)a6 clientIdentity:(id)a7;
- (void)encodeWithCoder:(id)a3;
- (void)main;
@end

@implementation SagaCreatePlaylistOperation

- (void)main
{
  context = objc_autoreleasePoolPush();
  v51 = [NSString stringWithFormat:@"SagaCreatePlaylistOperation - (playlist persistent-id = %lld)", self->_playlistPersistentID];
  v3 = [[MSVXPCTransaction alloc] initWithName:v51];
  [v3 beginTransaction];
  v4 = [(CloudLibraryOperation *)self musicLibrary];
  v5 = [(CloudLibraryOperation *)self clientIdentity];
  [v4 setClientIdentity:v5];

  v52 = [(CloudLibraryOperation *)self musicLibrary];
  v6 = [ML3Container newWithPersistentID:self->_playlistPersistentID inLibrary:v52];
  if ([v6 existsInLibrary])
  {
    obj = [(NSDictionary *)self->_properties mutableCopy];
    v7 = ML3ContainerPropertyDateCreated;
    v8 = [(NSDictionary *)self->_properties objectForKey:ML3ContainerPropertyDateCreated];

    if (!v8)
    {
      v9 = [v6 valueForProperty:v7];
      v10 = v9;
      if (v9)
      {
        [v9 doubleValue];
        v11 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
        [obj setObject:v11 forKey:v7];
      }
    }

    v12 = ML3ContainerPropertyParentPersistentID;
    v48 = [(NSDictionary *)self->_properties objectForKey:ML3ContainerPropertyParentPersistentID];
    if (!v48)
    {
LABEL_21:
      v21 = ML3ContainerPropertyCoverArtworkRecipe;
      v47 = [(NSDictionary *)self->_properties objectForKey:ML3ContainerPropertyCoverArtworkRecipe];
      if (![v47 length])
      {
        [obj setObject:@"{version:0.1}" forKey:v21];
        [v6 setValue:@"{version:0.1}" forProperty:v21];
      }

      objc_storeStrong(&self->_properties, obj);
      v22 = [(CloudLibraryOperation *)self musicLibrary];
      v23 = [v22 sagaOnDiskDatabaseRevision];

      if (v23 <= 1)
      {
        v24 = 1;
      }

      else
      {
        v24 = v23;
      }

      v25 = [(CloudLibraryOperation *)self connection];
      v26 = -[SagaCreatePlaylistOperation requestWithDatabaseID:databaseRevision:playlistProperties:trackList:](self, "requestWithDatabaseID:databaseRevision:playlistProperties:trackList:", [v25 databaseID], v24, self->_properties, self->_trackList);
      [v26 setVerificationInteractionLevel:2];
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v68 = sub_10002EE88;
      v69 = sub_10002EE98;
      v70 = 0;
      v57 = 0;
      v58 = &v57;
      v59 = 0x3032000000;
      v60 = sub_10002EE88;
      v61 = sub_10002EE98;
      v62 = 0;
      v53[0] = _NSConcreteStackBlock;
      v53[1] = 3221225472;
      v53[2] = sub_10002EEA0;
      v53[3] = &unk_1001DF880;
      v55 = buf;
      v56 = &v57;
      v27 = dispatch_semaphore_create(0);
      v54 = v27;
      [v25 sendRequest:v26 withResponseHandler:v53];
      dispatch_semaphore_wait(v27, 0xFFFFFFFFFFFFFFFFLL);
      if (!v58[5])
      {
        v28 = *(*&buf[8] + 40);
        if (v28)
        {
          v29 = [v28 containerID];
          self->_playlistSagaID = v29;
          if (v29)
          {
            v30 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
            {
              playlistPersistentID = self->_playlistPersistentID;
              playlistSagaID = self->_playlistSagaID;
              *v63 = 134218240;
              v64 = playlistPersistentID;
              v65 = 2048;
              v66 = playlistSagaID;
              _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Updating playlist with persistent-id %lld, setting cloud-id to %llu", v63, 0x16u);
            }

            v33 = [NSNumber numberWithUnsignedLongLong:self->_playlistSagaID];
            [v6 setValue:v33 forProperty:ML3ContainerPropertyStoreCloudID];

            v34 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
            {
              *v63 = 0;
              _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Triggering playlist artwork upload in case this playlist has user artwork.", v63, 2u);
            }

            v35 = [(CloudLibraryOperation *)self configuration];
            v36 = [(BaseRequestHandler *)ICDCloudMusicLibraryRequestHandler handlerForConfiguration:v35];
            v37 = self->_playlistPersistentID;
            v38 = [(CloudLibraryOperation *)self clientIdentity];
            [v36 uploadArtworkForPlaylistWithPersistentID:v37 clientIdentity:v38 completionHandler:&stru_1001DA710];
          }

          if ([*(*&buf[8] + 40) updateRequired])
          {
            if ([(SagaCreatePlaylistOperation *)self waitForLibraryUpdate])
            {
              goto LABEL_42;
            }

            v39 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
            if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
            {
              *v63 = 0;
              _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Requesting library update because the response contained update-required flag", v63, 2u);
            }

            v40 = [(CloudLibraryOperation *)self configuration];
            v41 = [(BaseRequestHandler *)ICDCloudMusicLibraryRequestHandler handlerForConfiguration:v40];
            v42 = [(CloudLibraryOperation *)self clientIdentity];
            [v41 updateSagaLibraryWithClientIdentity:v42 forReason:8 allowNoisyAuthPrompt:0 isExplicitUserAction:0 completionHandler:0];
          }

          else
          {
            v40 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
            if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
            {
              *v63 = 0;
              _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Skipping library update because the response did not contain update-required flag", v63, 2u);
            }
          }
        }
      }

LABEL_42:
      v43 = [*(*&buf[8] + 40) responseCode];
      if (v43 > 399)
      {
        v44 = 3;
        if (v43 == 400 || v43 == 404)
        {
          goto LABEL_51;
        }
      }

      else if (v43 == 200 || v43 == 204)
      {
        if (self->_playlistSagaID)
        {
          v44 = 1;
        }

        else
        {
          v44 = 2;
        }

        goto LABEL_51;
      }

      v44 = 2;
LABEL_51:
      [(CloudLibraryOperation *)self setStatus:v44];

      _Block_object_dispose(&v57, 8);
      _Block_object_dispose(buf, 8);

      goto LABEL_52;
    }

    if (![v48 longLongValue])
    {
      [obj setObject:v48 forKey:v12];
      v13 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Resetting parent persistent-id to 0 (default root level)", buf, 2u);
      }

      goto LABEL_20;
    }

    v13 = +[ML3Container newWithPersistentID:inLibrary:](ML3Container, "newWithPersistentID:inLibrary:", [v48 longLongValue], v52);
    v14 = [v13 valueForProperty:ML3ContainerPropertyStoreCloudID];
    if ([v14 longLongValue] < 1)
    {
      [obj removeObjectForKey:v12];
      v15 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *&buf[4] = [v48 longLongValue];
        v16 = "Failed to find parent cloud-id for persistent-id %lld";
        v17 = v15;
        v18 = 12;
        goto LABEL_18;
      }
    }

    else
    {
      [obj setObject:v14 forKey:v12];
      v15 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        *&buf[4] = [v48 longLongValue];
        *&buf[12] = 2048;
        *&buf[14] = [v14 unsignedLongValue];
        v16 = "Translated parent persistent-id %lld to cloud-id %lu";
        v17 = v15;
        v18 = 22;
LABEL_18:
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, v16, buf, v18);
      }
    }

LABEL_20:
    goto LABEL_21;
  }

  v19 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = self->_playlistPersistentID;
    *buf = 134217984;
    *&buf[4] = v20;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Playlist with pid = %lld is not in the database, skipping save to cloud library.", buf, 0xCu);
  }

  [(CloudLibraryOperation *)self setStatus:1];
LABEL_52:
  v45 = [(CloudLibraryOperation *)self musicLibrary];
  v46 = MSVTCCIdentityForCurrentProcess();
  [v45 setClientIdentity:v46];

  [v3 endTransaction];
  objc_autoreleasePoolPop(context);
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = SagaCreatePlaylistOperation;
  v4 = a3;
  [(CloudLibraryOperation *)&v5 encodeWithCoder:v4];
  [v4 encodeInt64:self->_playlistPersistentID forKey:{@"SagaCreatePlaylistOperationPlaylistPersistentIDKey", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_properties forKey:@"SagaCreatePlaylistOperationProperties"];
  [v4 encodeObject:self->_trackList forKey:@"SagaCreatePlaylistOperationTrackListKey"];
}

- (SagaCreatePlaylistOperation)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = SagaCreatePlaylistOperation;
  v5 = [(CloudLibraryOperation *)&v15 initWithCoder:v4];
  if (v5)
  {
    v5->_playlistPersistentID = [v4 decodeInt64ForKey:@"SagaCreatePlaylistOperationPlaylistPersistentIDKey"];
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [NSSet setWithObjects:v6, v7, v8, objc_opt_class(), 0];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"SagaCreatePlaylistOperationProperties"];
    properties = v5->_properties;
    v5->_properties = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SagaCreatePlaylistOperationTrackListKey"];
    trackList = v5->_trackList;
    v5->_trackList = v12;
  }

  return v5;
}

- (SagaCreatePlaylistOperation)initWithConfiguration:(id)a3 playlistPersistentID:(int64_t)a4 properties:(id)a5 trackList:(id)a6 clientIdentity:(id)a7
{
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = SagaCreatePlaylistOperation;
  v15 = [(CloudLibraryOperation *)&v18 initWithConfiguration:a3 clientIdentity:a7];
  v16 = v15;
  if (v15)
  {
    v15->_playlistPersistentID = a4;
    objc_storeStrong(&v15->_properties, a5);
    objc_storeStrong(&v16->_trackList, a6);
  }

  return v16;
}

@end