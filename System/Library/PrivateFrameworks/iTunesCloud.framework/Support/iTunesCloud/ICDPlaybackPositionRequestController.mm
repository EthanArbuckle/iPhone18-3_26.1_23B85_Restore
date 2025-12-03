@interface ICDPlaybackPositionRequestController
- (ICDPlaybackPositionRequestController)init;
- (void)deletePlaybackPositionEntitiesFromLibraryWithIdentifier:(id)identifier clientIdentity:(id)identity;
- (void)deletePlaybackPositionWithRequestContext:(id)context;
- (void)getLocalPlaybackPositionForEntityIdentifiers:(id)identifiers forDomain:(id)domain fromLibraryWithIdentifier:(id)identifier clientIdentity:(id)identity completionBlock:(id)block;
- (void)pullPlaybackPositionWithRequestContext:(id)context completionBlock:(id)block;
- (void)pushPlaybackPositionWithContext:(id)context completionHandler:(id)handler;
- (void)updateForeignDatabaseWithRequestContext:(id)context;
@end

@implementation ICDPlaybackPositionRequestController

- (void)updateForeignDatabaseWithRequestContext:(id)context
{
  contextCopy = context;
  entity = [contextCopy entity];
  itemPersistentIdentifier = [entity itemPersistentIdentifier];
  longLongValue = [itemPersistentIdentifier longLongValue];

  if (longLongValue)
  {
    library = [contextCopy library];
    clientIdentity = [contextCopy clientIdentity];
    v10 = [library updateMusicLibraryWithClientIdentity:clientIdentity applyUbiquitousBookmarkMetadataToTrackWithPersistentID:longLongValue];

    v11 = os_log_create("com.apple.amp.itunescloudd", "PlaybackPosition");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      entity2 = [contextCopy entity];
      v14 = 138543874;
      selfCopy2 = self;
      v16 = 2114;
      v17 = entity2;
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
      entity3 = [contextCopy entity];
      v14 = 138543618;
      selfCopy2 = self;
      v16 = 2114;
      v17 = entity3;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%{public}@ updateForeignDatabaseWithRequestContext: Invalid entity pid for entity %{public}@", &v14, 0x16u);
    }
  }
}

- (void)pushPlaybackPositionWithContext:(id)context completionHandler:(id)handler
{
  handlerCopy = handler;
  contextCopy = context;
  v8 = [[ICDPlaybackPositionRequestOperationPut alloc] initWithRequestContext:contextCopy completionBlock:handlerCopy];

  [(NSOperationQueue *)self->_requestQueue addOperation:v8];
}

- (void)pullPlaybackPositionWithRequestContext:(id)context completionBlock:(id)block
{
  blockCopy = block;
  contextCopy = context;
  v8 = [[ICDPlaybackPositionRequestOperationPull alloc] initWithRequestContext:contextCopy completionHandler:blockCopy];

  [(NSOperationQueue *)self->_requestQueue addOperation:v8];
}

- (void)getLocalPlaybackPositionForEntityIdentifiers:(id)identifiers forDomain:(id)domain fromLibraryWithIdentifier:(id)identifier clientIdentity:(id)identity completionBlock:(id)block
{
  identifiersCopy = identifiers;
  domainCopy = domain;
  identifierCopy = identifier;
  identityCopy = identity;
  blockCopy = block;
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
  v18 = identifierCopy;
  v28 = v18;
  v29 = &v30;
  [v17 enumerateObjectsUsingBlock:&v24];

  v19 = v31[5];
  if (v19)
  {
    v20 = [v19 readUbiquitousDatabaseMetadataValuesForIdentifiers:identifiersCopy forDomain:domainCopy clientIdentity:{identityCopy, v24, v25, v26, v27}];
    v21 = os_log_create("com.apple.amp.itunescloudd", "PlaybackPosition");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [v20 count];
      *buf = 138543618;
      selfCopy2 = self;
      v38 = 2048;
      v39 = v22;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ getLocalPlaybackPositionForEntityIdentifiers:fromLibraryWithPath:clientIdentity - Found %llu entities in default library.", buf, 0x16u);
    }

    blockCopy[2](blockCopy, 1, 0, v20);
  }

  else
  {
    v23 = os_log_create("com.apple.amp.itunescloudd", "PlaybackPosition");
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      selfCopy2 = self;
      v38 = 2114;
      v39 = v18;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%{public}@ getLocalPlaybackPositionForEntityIdentifiers: could not find library with UID %{public}@", buf, 0x16u);
    }

    v20 = [NSError errorWithDomain:ICErrorDomain code:-7101 userInfo:0, v24, v25, v26, v27];
    (blockCopy)[2](blockCopy, 0, v20, &__NSArray0__struct);
  }

  _Block_object_dispose(&v30, 8);
}

- (void)deletePlaybackPositionWithRequestContext:(id)context
{
  contextCopy = context;
  entity = [contextCopy entity];
  itemPersistentIdentifier = [entity itemPersistentIdentifier];
  longLongValue = [itemPersistentIdentifier longLongValue];

  if (longLongValue)
  {
    library = [contextCopy library];
    clientIdentity = [contextCopy clientIdentity];
    v17 = 0;
    v10 = [library updateUbiquitousDatabaseWithClientIdentity:clientIdentity removeUbiquitousMetadataFromTrackWithPersistentID:longLongValue error:&v17];
    v11 = v17;

    v12 = os_log_create("com.apple.amp.itunescloudd", "PlaybackPosition");
    entity4 = v12;
    if (v11)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        entity2 = [contextCopy entity];
        msv_description = [v11 msv_description];
        *buf = 138544130;
        selfCopy3 = self;
        v20 = 2114;
        v21 = entity2;
        v22 = 1024;
        v23 = v10;
        v24 = 2114;
        v25 = msv_description;
        _os_log_impl(&_mh_execute_header, entity4, OS_LOG_TYPE_ERROR, "%{public}@ updateForeignDatabaseWithRequestContext: Completed for entity %{public}@. success=%{BOOL}u error=%{public}@", buf, 0x26u);
      }
    }

    else if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      entity3 = [contextCopy entity];
      *buf = 138543874;
      selfCopy3 = self;
      v20 = 2114;
      v21 = entity3;
      v22 = 1024;
      v23 = v10;
      _os_log_impl(&_mh_execute_header, entity4, OS_LOG_TYPE_DEFAULT, "%{public}@ updateForeignDatabaseWithRequestContext: Completed for entity %{public}@. success=%{BOOL}u", buf, 0x1Cu);
    }

    goto LABEL_9;
  }

  v11 = os_log_create("com.apple.amp.itunescloudd", "PlaybackPosition");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    entity4 = [contextCopy entity];
    *buf = 138543618;
    selfCopy3 = self;
    v20 = 2114;
    v21 = entity4;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%{public}@ deletePlaybackPositionWithRequestContext: Invalid entity pid for entity %{public}@", buf, 0x16u);
LABEL_9:
  }
}

- (void)deletePlaybackPositionEntitiesFromLibraryWithIdentifier:(id)identifier clientIdentity:(id)identity
{
  identifierCopy = identifier;
  identityCopy = identity;
  v8 = [ICDPlaybackPositionRequestContext libraryWithIdentifier:identifierCopy];
  v14 = 0;
  v9 = [v8 removeAllUbiquitousMetadataUsingClientIdentity:identityCopy error:&v14];

  v10 = v14;
  v11 = os_log_create("com.apple.amp.itunescloudd", "PlaybackPosition");
  v12 = v11;
  if (v10)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      msv_description = [v10 msv_description];
      *buf = 138544130;
      selfCopy2 = self;
      v17 = 2114;
      v18 = identifierCopy;
      v19 = 1024;
      v20 = v9;
      v21 = 2114;
      v22 = msv_description;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%{public}@ deletePlaybackPositionEntitiesFromLibraryWithIdentifier: Completed for library %{public}@. success=%{BOOL}u error=%{public}@", buf, 0x26u);
    }
  }

  else if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    selfCopy2 = self;
    v17 = 2114;
    v18 = identifierCopy;
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