@interface SagaSetAlbumPropertyOperation
- (SagaSetAlbumPropertyOperation)initWithCoder:(id)a3;
- (SagaSetAlbumPropertyOperation)initWithConfiguration:(id)a3 clientIdentity:(id)a4 albumPersistentID:(int64_t)a5 properties:(id)a6;
- (void)encodeWithCoder:(id)a3;
- (void)main;
@end

@implementation SagaSetAlbumPropertyOperation

- (void)main
{
  v3 = objc_autoreleasePoolPush();
  if ([(NSString *)self->_albumCloudLibraryID length])
  {
    v4 = self->_albumProperties;
    v5 = ML3AlbumPropertyLikedState;
    v6 = [(NSDictionary *)v4 objectForKeyedSubscript:ML3AlbumPropertyLikedState];
    if (v6)
    {
      v7 = +[NSMutableDictionary dictionary];
      [v7 setObject:v6 forKeyedSubscript:v5];
      v8 = ML3AlbumPropertyLikedStateChangedDate;
      v9 = [(NSDictionary *)v4 objectForKeyedSubscript:ML3AlbumPropertyLikedStateChangedDate];
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
      v33 = v3;
      v13 = [NSString stringWithFormat:@"SagaSetAlbumPropertyOperation - (album_persistent_id = %lld)", self->_albumPersistentID];
      v14 = [[MSVXPCTransaction alloc] initWithName:v13];
      [v14 beginTransaction];
      v15 = [(CloudLibraryOperation *)self musicLibrary];
      v16 = [(CloudLibraryOperation *)self clientIdentity];
      [v15 setClientIdentity:v16];

      albumPersistentID = self->_albumPersistentID;
      v18 = [(CloudLibraryOperation *)self musicLibrary];
      v19 = [ML3Album newWithPersistentID:albumPersistentID inLibrary:v18];

      if (([v19 existsInLibrary] & 1) == 0)
      {
        v20 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v21 = self->_albumPersistentID;
          albumCloudLibraryID = self->_albumCloudLibraryID;
          *buf = 134218242;
          v39 = v21;
          v40 = 2114;
          v41 = albumCloudLibraryID;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Album with pid = %lld, cloudLibraryID = %{public}@ does not exist locally", buf, 0x16u);
        }
      }

      v23 = [(CloudLibraryOperation *)self connection];
      v24 = [v23 databaseID];
      v37 = self->_albumCloudLibraryID;
      v25 = [NSArray arrayWithObjects:&v37 count:1];
      v36 = v7;
      v26 = [NSArray arrayWithObjects:&v36 count:1];
      v27 = [ICBulkSetItemPropertyRequest requestWithDatabaseID:v24 albumCloudLibraryIDs:v25 properties:v26];

      [v27 setVerificationInteractionLevel:2];
      v34[0] = _NSConcreteStackBlock;
      v34[1] = 3221225472;
      v34[2] = sub_1000A589C;
      v34[3] = &unk_1001DF838;
      v34[4] = self;
      v35 = dispatch_semaphore_create(0);
      v28 = v35;
      [v23 sendRequest:v27 withResponseHandler:v34];
      dispatch_semaphore_wait(v28, 0xFFFFFFFFFFFFFFFFLL);
      v29 = [(CloudLibraryOperation *)self musicLibrary];
      v30 = MSVTCCIdentityForCurrentProcess();
      [v29 setClientIdentity:v30];

      [v14 endTransaction];
      v3 = v33;
    }

    else
    {
      v31 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        albumProperties = self->_albumProperties;
        *buf = 138543362;
        v39 = albumProperties;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "No valid album properties to set, skipping updates to cloud library. properties=%{public}@", buf, 0xCu);
      }

      [(CloudLibraryOperation *)self setStatus:1];
    }
  }

  else
  {
    v10 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = self->_albumPersistentID;
      v12 = self->_albumProperties;
      *buf = 134218242;
      v39 = v11;
      v40 = 2114;
      v41 = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Album with persistentID=%lld does not have a cloud library id. Not setting properties=%{public}@", buf, 0x16u);
    }

    [(CloudLibraryOperation *)self setStatus:1];
  }

  objc_autoreleasePoolPop(v3);
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = SagaSetAlbumPropertyOperation;
  v4 = a3;
  [(CloudLibraryOperation *)&v5 encodeWithCoder:v4];
  [v4 encodeInt64:self->_albumPersistentID forKey:{@"SagaSetAlbumPropertyOperationAlbumPersistentIDKey", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_albumProperties forKey:@"SagaSetAlbumPropertyOperationAlbumPropertiesKey"];
}

- (SagaSetAlbumPropertyOperation)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = SagaSetAlbumPropertyOperation;
  v5 = [(CloudLibraryOperation *)&v17 initWithCoder:v4];
  if (v5)
  {
    v5->_albumPersistentID = [v4 decodeInt64ForKey:@"SagaSetAlbumPropertyOperationAlbumPersistentIDKey"];
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [NSSet setWithObjects:v6, v7, v8, objc_opt_class(), 0];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"SagaSetAlbumPropertyOperationAlbumPropertiesKey"];
    albumProperties = v5->_albumProperties;
    v5->_albumProperties = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SagaSetAlbumPropertyOperationAlbumCloudLibraryIDKey"];
    albumCloudLibraryID = v5->_albumCloudLibraryID;
    v5->_albumCloudLibraryID = v12;

    if (!v5->_albumCloudLibraryID)
    {
      v14 = [(NSDictionary *)v5->_albumProperties objectForKey:ML3AlbumPropertyCloudLibraryID];
      v15 = v5->_albumCloudLibraryID;
      v5->_albumCloudLibraryID = v14;
    }
  }

  return v5;
}

- (SagaSetAlbumPropertyOperation)initWithConfiguration:(id)a3 clientIdentity:(id)a4 albumPersistentID:(int64_t)a5 properties:(id)a6
{
  v10 = a6;
  v18.receiver = self;
  v18.super_class = SagaSetAlbumPropertyOperation;
  v11 = [(CloudLibraryOperation *)&v18 initWithConfiguration:a3 clientIdentity:a4];
  v12 = v11;
  if (v11)
  {
    v11->_albumPersistentID = a5;
    v13 = [v10 copy];
    albumProperties = v12->_albumProperties;
    v12->_albumProperties = v13;

    v15 = [(NSDictionary *)v12->_albumProperties objectForKey:ML3AlbumPropertyCloudLibraryID];
    albumCloudLibraryID = v12->_albumCloudLibraryID;
    v12->_albumCloudLibraryID = v15;
  }

  return v12;
}

@end