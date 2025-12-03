@interface ICDPlaybackPositionService
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (ICDPlaybackPositionService)init;
- (id)_connectionClientIdentity;
- (id)_supportedInterfaceForXPCConnection;
- (void)_handleImportNotification:(id)notification;
- (void)_handleUserIdentityStoreDidChangeNotification;
- (void)_performNotificationSyncForLibraryWithUID:(id)d;
- (void)_setupNotificationHandlers;
- (void)dealloc;
- (void)deletePlaybackPositionEntitiesFromLibraryWithIdentifier:(id)identifier;
- (void)deletePlaybackPositionEntity:(id)entity;
- (void)getLocalPlaybackPositionForEntityIdentifiers:(id)identifiers forDomain:(id)domain fromLibraryWithIdentifier:(id)identifier completionBlock:(id)block;
- (void)pullPlaybackPositionEntity:(id)entity completionBlock:(id)block;
- (void)pushPlaybackPositionEntity:(id)entity completionBlock:(id)block;
- (void)updateForeignDatabaseWithValuesFromPlaybackPositionEntity:(id)entity;
@end

@implementation ICDPlaybackPositionService

- (id)_connectionClientIdentity
{
  v2 = +[NSXPCConnection currentConnection];
  v3 = v2;
  if (v2)
  {
    [v2 auditToken];
    v4 = MSVTCCIdentityForAuditToken();
    if (v4)
    {
      goto LABEL_8;
    }

    v5 = os_log_create("com.apple.amp.itunescloudd", "PlaybackPosition");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [v3 description];
      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Could not create client identity from XPCConnection=%@", &v8, 0xCu);
    }
  }

  else
  {
    v5 = os_log_create("com.apple.amp.itunescloudd", "PlaybackPosition");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v8) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Could not create client identity with nil connection", &v8, 2u);
    }
  }

  v4 = 0;
LABEL_8:

  return v4;
}

- (id)_supportedInterfaceForXPCConnection
{
  if (qword_100213BF8 != -1)
  {
    dispatch_once(&qword_100213BF8, &stru_1001DB500);
  }

  v3 = qword_100213BF0;

  return v3;
}

- (void)_performNotificationSyncForLibraryWithUID:(id)d
{
  dCopy = d;
  v5 = [ICDPlaybackPositionRequestContext alloc];
  v6 = ICPlaybackPositionServiceDomainDefault;
  v7 = MSVTCCIdentityForCurrentProcess();
  v8 = [(ICDPlaybackPositionRequestContext *)v5 initWithLibraryIdentifier:dCopy domain:v6 clientIdentity:v7];

  [(ICDPlaybackPositionRequestController *)self->_requestController scheduleSyncWithContext:v8 isCheckpoint:0];
}

- (void)_handleUserIdentityStoreDidChangeNotification
{
  v3 = +[ML3MusicLibrary allLibraries];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100057F50;
  v4[3] = &unk_1001DB4E0;
  v4[4] = self;
  [v3 enumerateObjectsUsingBlock:v4];
}

- (void)_handleImportNotification:(id)notification
{
  notificationCopy = notification;
  object = [notificationCopy object];
  if (object && (v6 = object, [notificationCopy object], v7 = objc_claimAutoreleasedReturnValue(), v8 = _NSIsNSString(), v7, v6, v8))
  {
    object2 = [notificationCopy object];
    v10 = os_log_create("com.apple.amp.itunescloudd", "PlaybackPosition");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      name = [notificationCopy name];
      v13 = 138543875;
      selfCopy2 = self;
      v15 = 2114;
      v16 = name;
      v17 = 2113;
      v18 = object2;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ Received %{public}@ notification for library %{private}@. Performing sync.", &v13, 0x20u);
    }

    [(ICDPlaybackPositionService *)self _performNotificationSyncForLibraryWithUID:object2];
  }

  else
  {
    object2 = os_log_create("com.apple.amp.itunescloudd", "PlaybackPosition");
    if (os_log_type_enabled(object2, OS_LOG_TYPE_ERROR))
    {
      name2 = [notificationCopy name];
      v13 = 138543618;
      selfCopy2 = self;
      v15 = 2114;
      v16 = name2;
      _os_log_impl(&_mh_execute_header, object2, OS_LOG_TYPE_ERROR, "%{public}@ Received %{public}@ notification without libraryUID", &v13, 0x16u);
    }
  }
}

- (void)_setupNotificationHandlers
{
  v3 = os_log_create("com.apple.amp.itunescloudd", "PlaybackPosition");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ Setting up notifications handlers.", &v6, 0xCu);
  }

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"_handleUserIdentityStoreDidChangeNotification" name:ICUserIdentityStoreDidChangeNotification object:0];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:self selector:"_handleImportNotification:" name:@"ICDPlaybackPositionImportRequiresSyncNotification" object:0];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = connectionCopy;
  if (!self->_didStart)
  {
    v12 = os_log_create("com.apple.amp.itunescloudd", "PlaybackPosition");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      selfCopy3 = self;
      v21 = 2114;
      v22 = v6;
      v13 = "%{public}@ Service has not started. Rejecting connection %{public}@";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, v13, buf, 0x16u);
    }

LABEL_11:

    v11 = 0;
    goto LABEL_12;
  }

  v7 = [connectionCopy valueForEntitlement:@"com.apple.itunescloudd.private"];

  if (!v7)
  {
    v12 = os_log_create("com.apple.amp.itunescloudd", "PlaybackPosition");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      selfCopy3 = self;
      v21 = 2114;
      v22 = v6;
      v13 = "%{public}@ Connection missing private entitlement %{public}@";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  processIdentifier = [v6 processIdentifier];
  v9 = os_log_create("com.apple.amp.itunescloudd", "PlaybackPosition");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy3 = self;
    v21 = 1024;
    LODWORD(v22) = processIdentifier;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ Got connection from pid %i", buf, 0x12u);
  }

  _supportedInterfaceForXPCConnection = [(ICDPlaybackPositionService *)self _supportedInterfaceForXPCConnection];
  [v6 setExportedInterface:_supportedInterfaceForXPCConnection];

  [v6 setExportedObject:self];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10005860C;
  v17[3] = &unk_1001DF780;
  v17[4] = self;
  v18 = processIdentifier;
  [v6 setInterruptionHandler:v17];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000586D0;
  v15[3] = &unk_1001DF780;
  v15[4] = self;
  v16 = processIdentifier;
  [v6 setInvalidationHandler:v15];
  [v6 resume];
  v11 = 1;
LABEL_12:

  return v11;
}

- (void)pushPlaybackPositionEntity:(id)entity completionBlock:(id)block
{
  entityCopy = entity;
  blockCopy = block;
  v8 = os_log_create("com.apple.amp.itunescloudd", "PlaybackPosition");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = +[NSXPCConnection currentConnection];
    libraryIdentifier = [entityCopy libraryIdentifier];
    *buf = 138543874;
    selfCopy = self;
    v22 = 2114;
    v23 = v9;
    v24 = 2114;
    v25 = libraryIdentifier;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@ pushPlaybackPositionEntity:completionBlock:] Received request from connection %{public}@. libraryUID=%{public}@", buf, 0x20u);
  }

  v11 = [ICDPlaybackPositionRequestContext alloc];
  _connectionClientIdentity = [(ICDPlaybackPositionService *)self _connectionClientIdentity];
  v13 = [(ICDPlaybackPositionRequestContext *)v11 initWithEntity:entityCopy clientIdentity:_connectionClientIdentity];

  requestController = self->_requestController;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10005896C;
  v17[3] = &unk_1001DB4B8;
  v18 = entityCopy;
  v19 = blockCopy;
  v17[4] = self;
  v15 = entityCopy;
  v16 = blockCopy;
  [(ICDPlaybackPositionRequestController *)requestController pushPlaybackPositionWithContext:v13 completionHandler:v17];
}

- (void)pullPlaybackPositionEntity:(id)entity completionBlock:(id)block
{
  entityCopy = entity;
  blockCopy = block;
  v8 = os_log_create("com.apple.amp.itunescloudd", "PlaybackPosition");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = +[NSXPCConnection currentConnection];
    libraryIdentifier = [entityCopy libraryIdentifier];
    *buf = 138543874;
    selfCopy = self;
    v20 = 2114;
    v21 = v9;
    v22 = 2114;
    v23 = libraryIdentifier;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@ pullPlaybackPositionEntity:] Received request from connection %{public}@. libraryUID=%{public}@", buf, 0x20u);
  }

  v11 = [ICDPlaybackPositionRequestContext alloc];
  _connectionClientIdentity = [(ICDPlaybackPositionService *)self _connectionClientIdentity];
  v13 = [(ICDPlaybackPositionRequestContext *)v11 initWithEntity:entityCopy clientIdentity:_connectionClientIdentity];

  requestController = self->_requestController;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100058CB4;
  v16[3] = &unk_1001DB490;
  v16[4] = self;
  v17 = blockCopy;
  v15 = blockCopy;
  [(ICDPlaybackPositionRequestController *)requestController pullPlaybackPositionWithRequestContext:v13 completionBlock:v16];
}

- (void)updateForeignDatabaseWithValuesFromPlaybackPositionEntity:(id)entity
{
  entityCopy = entity;
  v5 = os_log_create("com.apple.amp.itunescloudd", "PlaybackPosition");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = +[NSXPCConnection currentConnection];
    libraryIdentifier = [entityCopy libraryIdentifier];
    v11 = 138543874;
    selfCopy = self;
    v13 = 2114;
    v14 = v6;
    v15 = 2114;
    v16 = libraryIdentifier;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@ updateForeignDatabaseWithValuesFromPlaybackPositionEntity:] Received request from connection %{public}@. libraryUID=%{public}@", &v11, 0x20u);
  }

  v8 = [ICDPlaybackPositionRequestContext alloc];
  _connectionClientIdentity = [(ICDPlaybackPositionService *)self _connectionClientIdentity];
  v10 = [(ICDPlaybackPositionRequestContext *)v8 initWithEntity:entityCopy clientIdentity:_connectionClientIdentity];

  [(ICDPlaybackPositionRequestController *)self->_requestController updateForeignDatabaseWithRequestContext:v10];
}

- (void)getLocalPlaybackPositionForEntityIdentifiers:(id)identifiers forDomain:(id)domain fromLibraryWithIdentifier:(id)identifier completionBlock:(id)block
{
  identifiersCopy = identifiers;
  domainCopy = domain;
  identifierCopy = identifier;
  blockCopy = block;
  v14 = os_log_create("com.apple.amp.itunescloudd", "PlaybackPosition");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = +[NSXPCConnection currentConnection];
    *buf = 138544386;
    selfCopy = self;
    v25 = 2114;
    v26 = v15;
    v27 = 2114;
    v28 = domainCopy;
    v29 = 2114;
    v30 = identifierCopy;
    v31 = 2114;
    v32 = identifiersCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@ getLocalPlaybackPositionForEntityIdentifiers:] Received request from connection %{public}@ for domain %{public}@ with library (%{public}@). identifiers=%{public}@", buf, 0x34u);
  }

  requestController = self->_requestController;
  _connectionClientIdentity = [(ICDPlaybackPositionService *)self _connectionClientIdentity];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100059198;
  v20[3] = &unk_1001DB468;
  v20[4] = self;
  v21 = identifierCopy;
  v22 = blockCopy;
  v18 = blockCopy;
  v19 = identifierCopy;
  [(ICDPlaybackPositionRequestController *)requestController getLocalPlaybackPositionForEntityIdentifiers:identifiersCopy forDomain:domainCopy fromLibraryWithIdentifier:v19 clientIdentity:_connectionClientIdentity completionBlock:v20];
}

- (void)deletePlaybackPositionEntity:(id)entity
{
  entityCopy = entity;
  v5 = os_log_create("com.apple.amp.itunescloudd", "PlaybackPosition");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = +[NSXPCConnection currentConnection];
    libraryIdentifier = [entityCopy libraryIdentifier];
    v11 = 138543874;
    selfCopy = self;
    v13 = 2114;
    v14 = v6;
    v15 = 2114;
    v16 = libraryIdentifier;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@ deletePlaybackPositionEntity:] Received request from connection %{public}@. libraryUID=%{public}@", &v11, 0x20u);
  }

  v8 = [ICDPlaybackPositionRequestContext alloc];
  _connectionClientIdentity = [(ICDPlaybackPositionService *)self _connectionClientIdentity];
  v10 = [(ICDPlaybackPositionRequestContext *)v8 initWithEntity:entityCopy clientIdentity:_connectionClientIdentity];

  [(ICDPlaybackPositionRequestController *)self->_requestController deletePlaybackPositionWithRequestContext:v10];
}

- (void)deletePlaybackPositionEntitiesFromLibraryWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = os_log_create("com.apple.amp.itunescloudd", "PlaybackPosition");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = +[NSXPCConnection currentConnection];
    v9 = 138543874;
    selfCopy = self;
    v11 = 2114;
    v12 = v6;
    v13 = 2114;
    v14 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@ deletePlaybackPositionEntitiesFromLibraryWithIdentifier:] Received request from connection %{public}@ for library with identifier %{public}@.", &v9, 0x20u);
  }

  requestController = self->_requestController;
  _connectionClientIdentity = [(ICDPlaybackPositionService *)self _connectionClientIdentity];
  [(ICDPlaybackPositionRequestController *)requestController deletePlaybackPositionEntitiesFromLibraryWithIdentifier:identifierCopy clientIdentity:_connectionClientIdentity];
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = ICDPlaybackPositionService;
  [(ICDPlaybackPositionService *)&v4 dealloc];
}

- (ICDPlaybackPositionService)init
{
  v7.receiver = self;
  v7.super_class = ICDPlaybackPositionService;
  v2 = [(ICDPlaybackPositionService *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_didStart = 0;
    v4 = objc_alloc_init(ICDPlaybackPositionRequestController);
    requestController = v3->_requestController;
    v3->_requestController = v4;
  }

  return v3;
}

@end