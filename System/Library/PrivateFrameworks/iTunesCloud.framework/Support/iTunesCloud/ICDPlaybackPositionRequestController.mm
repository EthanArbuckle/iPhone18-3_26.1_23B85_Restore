@interface ICDPlaybackPositionRequestController
- (ICDPlaybackPositionRequestController)init;
- (void)deletePlaybackPositionEntitiesFromLibraryWithIdentifier:(id)a3 clientIdentity:(id)a4;
- (void)deletePlaybackPositionWithRequestContext:(id)a3;
- (void)getLocalPlaybackPositionForEntityIdentifiers:(id)a3 forDomain:(id)a4 fromLibraryWithIdentifier:(id)a5 clientIdentity:(id)a6 completionBlock:(id)a7;
- (void)pullPlaybackPositionWithRequestContext:(id)a3 completionBlock:(id)a4;
- (void)pushPlaybackPositionWithContext:(id)a3 completionHandler:(id)a4;
- (void)updateForeignDatabaseWithRequestContext:(id)a3;
@end

@implementation ICDPlaybackPositionRequestController

- (void)updateForeignDatabaseWithRequestContext:(id)a3
{
  v4 = a3;
  v5 = [v4 entity];
  v6 = [v5 itemPersistentIdentifier];
  v7 = [v6 longLongValue];

  if (v7)
  {
    v8 = [v4 library];
    v9 = [v4 clientIdentity];
    v10 = [v8 updateMusicLibraryWithClientIdentity:v9 applyUbiquitousBookmarkMetadataToTrackWithPersistentID:v7];

    v11 = os_log_create("com.apple.amp.itunescloudd", "PlaybackPosition");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v4 entity];
      v14 = 138543874;
      v15 = self;
      v16 = 2114;
      v17 = v12;
      v18 = 1024;
      v19 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ updateForeignDatabaseWithRequestContext: Completed for entity %{public}@. success=%{BOOL}u", &v14, 0x1Cu);
    }
  }

  else
  {
    v11 = os_log_create("com.apple.amp.itunescloudd", "PlaybackPosition");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = [v4 entity];
      v14 = 138543618;
      v15 = self;
      v16 = 2114;
      v17 = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%{public}@ updateForeignDatabaseWithRequestContext: Invalid entity pid for entity %{public}@", &v14, 0x16u);
    }
  }
}

- (void)pushPlaybackPositionWithContext:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[ICDPlaybackPositionRequestOperationPut alloc] initWithRequestContext:v7 completionBlock:v6];

  [(NSOperationQueue *)self->_requestQueue addOperation:v8];
}

- (void)pullPlaybackPositionWithRequestContext:(id)a3 completionBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[ICDPlaybackPositionRequestOperationPull alloc] initWithRequestContext:v7 completionHandler:v6];

  [(NSOperationQueue *)self->_requestQueue addOperation:v8];
}

- (void)getLocalPlaybackPositionForEntityIdentifiers:(id)a3 forDomain:(id)a4 fromLibraryWithIdentifier:(id)a5 clientIdentity:(id)a6 completionBlock:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = sub_1000DD980;
  v34 = sub_1000DD990;
  v35 = 0;
  v17 = +[ML3MusicLibrary allLibraries];
  v24 = _NSConcreteStackBlock;
  v25 = 3221225472;
  v26 = sub_1000DD998;
  v27 = &unk_1001DD830;
  v18 = v14;
  v28 = v18;
  v29 = &v30;
  [v17 enumerateObjectsUsingBlock:&v24];

  v19 = v31[5];
  if (v19)
  {
    v20 = [v19 readUbiquitousDatabaseMetadataValuesForIdentifiers:v12 forDomain:v13 clientIdentity:{v15, v24, v25, v26, v27}];
    v21 = os_log_create("com.apple.amp.itunescloudd", "PlaybackPosition");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [v20 count];
      *buf = 138543618;
      v37 = self;
      v38 = 2048;
      v39 = v22;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ getLocalPlaybackPositionForEntityIdentifiers:fromLibraryWithPath:clientIdentity - Found %llu entities in default library.", buf, 0x16u);
    }

    v16[2](v16, 1, 0, v20);
  }

  else
  {
    v23 = os_log_create("com.apple.amp.itunescloudd", "PlaybackPosition");
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v37 = self;
      v38 = 2114;
      v39 = v18;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%{public}@ getLocalPlaybackPositionForEntityIdentifiers: could not find library with UID %{public}@", buf, 0x16u);
    }

    v20 = [NSError errorWithDomain:ICErrorDomain code:-7101 userInfo:0, v24, v25, v26, v27];
    (v16)[2](v16, 0, v20, &__NSArray0__struct);
  }

  _Block_object_dispose(&v30, 8);
}

- (void)deletePlaybackPositionWithRequestContext:(id)a3
{
  v4 = a3;
  v5 = [v4 entity];
  v6 = [v5 itemPersistentIdentifier];
  v7 = [v6 longLongValue];

  if (v7)
  {
    v8 = [v4 library];
    v9 = [v4 clientIdentity];
    v17 = 0;
    v10 = [v8 updateUbiquitousDatabaseWithClientIdentity:v9 removeUbiquitousMetadataFromTrackWithPersistentID:v7 error:&v17];
    v11 = v17;

    v12 = os_log_create("com.apple.amp.itunescloudd", "PlaybackPosition");
    v13 = v12;
    if (v11)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v14 = [v4 entity];
        v15 = [v11 msv_description];
        *buf = 138544130;
        v19 = self;
        v20 = 2114;
        v21 = v14;
        v22 = 1024;
        v23 = v10;
        v24 = 2114;
        v25 = v15;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%{public}@ updateForeignDatabaseWithRequestContext: Completed for entity %{public}@. success=%{BOOL}u error=%{public}@", buf, 0x26u);
      }
    }

    else if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [v4 entity];
      *buf = 138543874;
      v19 = self;
      v20 = 2114;
      v21 = v16;
      v22 = 1024;
      v23 = v10;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ updateForeignDatabaseWithRequestContext: Completed for entity %{public}@. success=%{BOOL}u", buf, 0x1Cu);
    }

    goto LABEL_9;
  }

  v11 = os_log_create("com.apple.amp.itunescloudd", "PlaybackPosition");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v13 = [v4 entity];
    *buf = 138543618;
    v19 = self;
    v20 = 2114;
    v21 = v13;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%{public}@ deletePlaybackPositionWithRequestContext: Invalid entity pid for entity %{public}@", buf, 0x16u);
LABEL_9:
  }
}

- (void)deletePlaybackPositionEntitiesFromLibraryWithIdentifier:(id)a3 clientIdentity:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [ICDPlaybackPositionRequestContext libraryWithIdentifier:v6];
  v14 = 0;
  v9 = [v8 removeAllUbiquitousMetadataUsingClientIdentity:v7 error:&v14];

  v10 = v14;
  v11 = os_log_create("com.apple.amp.itunescloudd", "PlaybackPosition");
  v12 = v11;
  if (v10)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = [v10 msv_description];
      *buf = 138544130;
      v16 = self;
      v17 = 2114;
      v18 = v6;
      v19 = 1024;
      v20 = v9;
      v21 = 2114;
      v22 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%{public}@ deletePlaybackPositionEntitiesFromLibraryWithIdentifier: Completed for library %{public}@. success=%{BOOL}u error=%{public}@", buf, 0x26u);
    }
  }

  else if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v16 = self;
    v17 = 2114;
    v18 = v6;
    v19 = 1024;
    v20 = v9;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ deletePlaybackPositionEntitiesFromLibraryWithIdentifier: Completed for library %{public}@. success=%{BOOL}u", buf, 0x1Cu);
  }
}

- (ICDPlaybackPositionRequestController)init
{
  v8.receiver = self;
  v8.super_class = ICDPlaybackPositionRequestController;
  v2 = [(ICDPlaybackPositionRequestController *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSOperationQueue);
    requestQueue = v2->_requestQueue;
    v2->_requestQueue = v3;

    [(NSOperationQueue *)v2->_requestQueue setName:@"com.apple.itunescloudd.ICDPlaybackPositionRequestController.operationQueue"];
    [(NSOperationQueue *)v2->_requestQueue setMaxConcurrentOperationCount:1];
    v5 = [[ICDPlaybackPositionSyncCoordinator alloc] initWithOperationQueue:v2->_requestQueue];
    syncCoordinator = v2->_syncCoordinator;
    v2->_syncCoordinator = v5;
  }

  return v2;
}

@end