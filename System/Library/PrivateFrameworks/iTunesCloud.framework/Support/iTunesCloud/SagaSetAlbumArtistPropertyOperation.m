@interface SagaSetAlbumArtistPropertyOperation
- (SagaSetAlbumArtistPropertyOperation)initWithCoder:(id)a3;
- (SagaSetAlbumArtistPropertyOperation)initWithConfiguration:(id)a3 clientIdentity:(id)a4 persistentID:(int64_t)a5 properties:(id)a6;
- (void)encodeWithCoder:(id)a3;
- (void)main;
@end

@implementation SagaSetAlbumArtistPropertyOperation

- (void)main
{
  v3 = objc_autoreleasePoolPush();
  if ([(NSString *)self->_albumArtistCloudLibraryID length])
  {
    v4 = self->_albumArtistProperties;
    v5 = ML3AlbumArtistPropertyLikedState;
    v6 = [(NSDictionary *)v4 objectForKeyedSubscript:ML3AlbumArtistPropertyLikedState];
    if (v6)
    {
      v7 = +[NSMutableDictionary dictionary];
      [v7 setObject:v6 forKeyedSubscript:v5];
      v8 = ML3AlbumArtistPropertyLikedStateChangedDate;
      v9 = [(NSDictionary *)v4 objectForKeyedSubscript:ML3AlbumArtistPropertyLikedStateChangedDate];
      if (v9)
      {
        [v7 setObject:v9 forKeyedSubscript:v8];
      }
    }

    else
    {
      v7 = 0;
    }

    if ([v7 count])
    {
      albumArtistPersistentID = self->_albumArtistPersistentID;
      v14 = [(CloudLibraryOperation *)self musicLibrary];
      v15 = [ML3AlbumArtist newWithPersistentID:albumArtistPersistentID inLibrary:v14];

      v36 = v15;
      if (([v15 existsInLibrary] & 1) == 0)
      {
        v16 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v17 = self->_albumArtistPersistentID;
          albumArtistCloudLibraryID = self->_albumArtistCloudLibraryID;
          *buf = 134218242;
          v44 = v17;
          v45 = 2114;
          v46 = albumArtistCloudLibraryID;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Album Artist with pid = %lld, cloudLibraryID = %{public}@ does not exist locally", buf, 0x16u);
        }
      }

      v37 = v3;
      v19 = [NSString stringWithFormat:@"SagaSetAlbumArtistPropertyOperation - (album_artist_persistent_id = %lld)", self->_albumArtistPersistentID];
      v20 = [[MSVXPCTransaction alloc] initWithName:v19];
      [v20 beginTransaction];
      v21 = [(CloudLibraryOperation *)self musicLibrary];
      v22 = [(CloudLibraryOperation *)self clientIdentity];
      [v21 setClientIdentity:v22];

      v23 = [(CloudLibraryOperation *)self connection];
      v24 = [v23 databaseID];
      v42 = self->_albumArtistCloudLibraryID;
      v25 = [NSArray arrayWithObjects:&v42 count:1];
      v41 = v7;
      v26 = [NSArray arrayWithObjects:&v41 count:1];
      v27 = [ICBulkSetItemPropertyRequest requestWithDatabaseID:v24 albumArtistCloudLibraryIDs:v25 properties:v26];

      [v27 setVerificationInteractionLevel:2];
      v39[0] = _NSConcreteStackBlock;
      v39[1] = 3221225472;
      v39[2] = sub_10002DE58;
      v39[3] = &unk_1001DF838;
      v39[4] = self;
      v28 = dispatch_semaphore_create(0);
      v40 = v28;
      [v23 sendRequest:v27 withResponseHandler:v39];
      v29 = [v7 objectForKey:v5];
      v30 = v29;
      if (!v29 || [v29 integerValue] != 2)
      {
        v31 = [(CloudLibraryOperation *)self musicLibrary];
        v38[0] = _NSConcreteStackBlock;
        v38[1] = 3221225472;
        v38[2] = sub_10002E024;
        v38[3] = &unk_1001DCC68;
        v38[4] = self;
        [v31 databaseConnectionAllowingWrites:1 withBlock:v38];
      }

      dispatch_semaphore_wait(v28, 0xFFFFFFFFFFFFFFFFLL);
      v32 = [(CloudLibraryOperation *)self musicLibrary];
      v33 = MSVTCCIdentityForCurrentProcess();
      [v32 setClientIdentity:v33];

      [v20 endTransaction];
      v3 = v37;
    }

    else
    {
      v34 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        albumArtistProperties = self->_albumArtistProperties;
        *buf = 138543362;
        v44 = albumArtistProperties;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "No valid album artist properties to set, skipping updates to cloud library. properties=%{public}@", buf, 0xCu);
      }

      [(CloudLibraryOperation *)self setStatus:1];
    }
  }

  else
  {
    v10 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = self->_albumArtistPersistentID;
      v12 = self->_albumArtistProperties;
      *buf = 134218242;
      v44 = v11;
      v45 = 2114;
      v46 = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Album Artist with persistentID=%lld does not have a cloud library id. Not setting properties=%{public}@", buf, 0x16u);
    }

    [(CloudLibraryOperation *)self setStatus:1];
  }

  objc_autoreleasePoolPop(v3);
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = SagaSetAlbumArtistPropertyOperation;
  v4 = a3;
  [(CloudLibraryOperation *)&v5 encodeWithCoder:v4];
  [v4 encodeInt64:self->_albumArtistPersistentID forKey:{@"SagaSetAlbumArtistItemPropertyOperationAlbumArtistPersistentIDKey", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_albumArtistProperties forKey:@"SagaSetAlbumArtistItemPropertyOperationAlbumArtistPropertiesKey"];
}

- (SagaSetAlbumArtistPropertyOperation)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = SagaSetAlbumArtistPropertyOperation;
  v5 = [(CloudLibraryOperation *)&v15 initWithCoder:v4];
  if (v5)
  {
    v5->_albumArtistPersistentID = [v4 decodeInt64ForKey:@"SagaSetAlbumArtistItemPropertyOperationAlbumArtistPersistentIDKey"];
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [NSSet setWithObjects:v6, v7, v8, objc_opt_class(), 0];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"SagaSetAlbumArtistItemPropertyOperationAlbumArtistPropertiesKey"];
    albumArtistProperties = v5->_albumArtistProperties;
    v5->_albumArtistProperties = v10;

    v12 = [(NSDictionary *)v5->_albumArtistProperties objectForKey:ML3AlbumArtistPropertyCloudUniversalLibraryID];
    albumArtistCloudLibraryID = v5->_albumArtistCloudLibraryID;
    v5->_albumArtistCloudLibraryID = v12;
  }

  return v5;
}

- (SagaSetAlbumArtistPropertyOperation)initWithConfiguration:(id)a3 clientIdentity:(id)a4 persistentID:(int64_t)a5 properties:(id)a6
{
  v10 = a6;
  v18.receiver = self;
  v18.super_class = SagaSetAlbumArtistPropertyOperation;
  v11 = [(CloudLibraryOperation *)&v18 initWithConfiguration:a3 clientIdentity:a4];
  v12 = v11;
  if (v11)
  {
    v11->_albumArtistPersistentID = a5;
    v13 = [v10 copy];
    albumArtistProperties = v12->_albumArtistProperties;
    v12->_albumArtistProperties = v13;

    v15 = [(NSDictionary *)v12->_albumArtistProperties objectForKey:ML3AlbumArtistPropertyCloudUniversalLibraryID];
    albumArtistCloudLibraryID = v12->_albumArtistCloudLibraryID;
    v12->_albumArtistCloudLibraryID = v15;
  }

  return v12;
}

@end