@interface CloudContentTasteUpdateRequestListener
+ (id)sharedContentTasteRequestListener;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (CloudContentTasteUpdateRequestListener)init;
- (id)_adjustedContentTasteForLibraryEndpoint:(int64_t)endpoint;
- (id)_contentTasteRequestHandlerForConfiguration:(id)configuration outError:(id *)error;
- (id)_init;
- (id)_supportedInterfaceForXPCConnection;
- (void)_cancelAllContentTasteRequestHandlers;
- (void)_postContentTasteChangesForPendingItems;
- (void)handleContentTasteChangedNotification;
- (void)handleMusicAppInstalled;
- (void)handleMusicAppRemoved;
- (void)removeContentTasteOperationsForConnectionConfiguration:(id)configuration;
- (void)setContentTaste:(int64_t)taste forAlbumStoreID:(int64_t)d configuration:(id)configuration withCompletionHandler:(id)handler;
- (void)setContentTaste:(int64_t)taste forAlbumStoreID:(int64_t)d persistentID:(int64_t)iD timeStamp:(id)stamp configuration:(id)configuration withCompletionHandler:(id)handler;
- (void)setContentTaste:(int64_t)taste forArtistStoreID:(int64_t)d configuration:(id)configuration withCompletionHandler:(id)handler;
- (void)setContentTaste:(int64_t)taste forArtistStoreID:(int64_t)d persistentID:(int64_t)iD timeStamp:(id)stamp configuration:(id)configuration withCompletionHandler:(id)handler;
- (void)setContentTaste:(int64_t)taste forMediaItem:(int64_t)item storeIdentifier:(int64_t)identifier configuration:(id)configuration timeStamp:(id)stamp withCompletionHandler:(id)handler;
- (void)setContentTaste:(int64_t)taste forMediaItem:(int64_t)item storeIdentifier:(int64_t)identifier persistentID:(int64_t)d timeStamp:(id)stamp configuration:(id)configuration withCompletionHandler:(id)handler;
- (void)setContentTaste:(int64_t)taste forPlaylistGlobalID:(id)d configuration:(id)configuration withCompletionHandler:(id)handler;
- (void)setContentTaste:(int64_t)taste forPlaylistGlobalID:(id)d persistentID:(int64_t)iD timeStamp:(id)stamp configuration:(id)configuration withCompletionHandler:(id)handler;
- (void)start;
- (void)stop;
- (void)updateContentTasteForConnectionConfiguration:(id)configuration invalidateLocalCache:(BOOL)cache withCompletionHandler:(id)handler;
@end

@implementation CloudContentTasteUpdateRequestListener

- (id)_supportedInterfaceForXPCConnection
{
  if (qword_100213EA8 != -1)
  {
    dispatch_once(&qword_100213EA8, &stru_1001DF7C8);
  }

  v3 = qword_100213EA0;

  return v3;
}

- (void)_postContentTasteChangesForPendingItems
{
  dispatch_assert_queue_V2(self->_accessQueue);
  if (self->_musicAppIsInstalled)
  {
    if (MSVDeviceSupportsMultipleLibraries())
    {
      v3 = +[ICUserIdentityStore defaultIdentityStore];
      v21 = 0;
      v4 = [v3 userIdentitiesForAllStoreAccountsWithError:&v21];
      v5 = v21;
    }

    else
    {
      v3 = +[ICUserIdentity activeAccount];
      v29 = v3;
      v4 = [NSArray arrayWithObjects:&v29 count:1];
      v5 = 0;
    }

    v6 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v4 count];
      *buf = 138543874;
      selfCopy2 = self;
      v25 = 1024;
      v26 = v7;
      v27 = 2114;
      v28 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ Found %d user identities, error=%{public}@", buf, 0x1Cu);
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = v4;
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      do
      {
        v12 = 0;
        do
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v17 + 1) + 8 * v12);
          v14 = [ICConnectionConfiguration alloc];
          v15 = [v14 initWithUserIdentity:{v13, v17}];
          v16 = [(CloudContentTasteUpdateRequestListener *)self _contentTasteRequestHandlerForConfiguration:v15 outError:0];

          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v10);
    }
  }

  else
  {
    v5 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy2 = self;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ not processing pending changes as music app is not installed", buf, 0xCu);
    }
  }
}

- (void)_cancelAllContentTasteRequestHandlers
{
  dispatch_assert_queue_V2(self->_accessQueue);
  contentTasteRequestHandlerToDSIDMap = self->_contentTasteRequestHandlerToDSIDMap;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100137B74;
  v4[3] = &unk_1001DF7A8;
  v4[4] = self;
  [(NSMutableDictionary *)contentTasteRequestHandlerToDSIDMap enumerateKeysAndObjectsUsingBlock:v4];
}

- (id)_adjustedContentTasteForLibraryEndpoint:(int64_t)endpoint
{
  if (endpoint == 1)
  {
    endpointCopy = 2;
  }

  else
  {
    endpointCopy = endpoint;
    if (endpoint)
    {
      v5 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste");
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v8 = 138543618;
        selfCopy = self;
        v10 = 1024;
        v11 = endpointCopy;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%{public}@ Unsupported content taste value=%d to send to library APIs", &v8, 0x12u);
      }
    }

    else
    {
      endpointCopy = 1;
    }
  }

  v6 = [NSNumber numberWithInteger:endpointCopy];

  return v6;
}

- (id)_contentTasteRequestHandlerForConfiguration:(id)configuration outError:(id *)error
{
  configurationCopy = configuration;
  dispatch_assert_queue_V2(self->_accessQueue);
  userIdentityStore = [configurationCopy userIdentityStore];
  userIdentity = [configurationCopy userIdentity];
  v15 = 0;
  v9 = [userIdentityStore DSIDForUserIdentity:userIdentity outError:&v15];
  v10 = v15;

  if (v9 && !v10 && [v9 longLongValue])
  {
    v11 = [(NSMutableDictionary *)self->_contentTasteRequestHandlerToDSIDMap objectForKey:v9];
    if (!v11)
    {
      v11 = [[ICContentTasteRequestHandler alloc] initWithConfiguration:configurationCopy];
      [(NSMutableDictionary *)self->_contentTasteRequestHandlerToDSIDMap setObject:v11 forKey:v9];
    }
  }

  else
  {
    v12 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      selfCopy = self;
      v18 = 2048;
      v19 = configurationCopy;
      v20 = 2114;
      v21 = v10;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%{public}@ Could not get DSID from configuration=%p, error=%{public}@", buf, 0x20u);
    }

    if (error)
    {
      v13 = v10;
      v11 = 0;
      *error = v10;
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  processIdentifier = [connectionCopy processIdentifier];
  v7 = sub_1000D1624(connectionCopy, @"com.apple.itunesstored.private");
  if (v7)
  {
    _supportedInterfaceForXPCConnection = [(CloudContentTasteUpdateRequestListener *)self _supportedInterfaceForXPCConnection];
    [connectionCopy setExportedInterface:_supportedInterfaceForXPCConnection];
    [connectionCopy setExportedObject:self];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100138324;
    v13[3] = &unk_1001DF780;
    v13[4] = self;
    v14 = processIdentifier;
    [connectionCopy setInterruptionHandler:v13];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1001383E8;
    v11[3] = &unk_1001DF780;
    v11[4] = self;
    v12 = processIdentifier;
    [connectionCopy setInvalidationHandler:v11];
    [connectionCopy resume];
    v9 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy2 = self;
      v17 = 1024;
      v18 = processIdentifier;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ got connection request from pid %i", buf, 0x12u);
    }
  }

  else
  {
    _supportedInterfaceForXPCConnection = os_log_create("com.apple.amp.itunescloudd", "ContentTaste");
    if (os_log_type_enabled(_supportedInterfaceForXPCConnection, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      selfCopy2 = self;
      v17 = 1024;
      v18 = processIdentifier;
      _os_log_impl(&_mh_execute_header, _supportedInterfaceForXPCConnection, OS_LOG_TYPE_ERROR, "%{public}@ pid %i is not entitled to connect to content taste update service", buf, 0x12u);
    }
  }

  return v7;
}

- (void)setContentTaste:(int64_t)taste forArtistStoreID:(int64_t)d persistentID:(int64_t)iD timeStamp:(id)stamp configuration:(id)configuration withCompletionHandler:(id)handler
{
  stampCopy = stamp;
  configurationCopy = configuration;
  handlerCopy = handler;
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001385C8;
  block[3] = &unk_1001DF708;
  block[4] = self;
  v22 = configurationCopy;
  dCopy = d;
  tasteCopy = taste;
  v23 = stampCopy;
  v24 = handlerCopy;
  iDCopy = iD;
  v18 = stampCopy;
  v19 = configurationCopy;
  v20 = handlerCopy;
  dispatch_async(accessQueue, block);
}

- (void)setContentTaste:(int64_t)taste forArtistStoreID:(int64_t)d configuration:(id)configuration withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  configurationCopy = configuration;
  v12 = +[NSDate date];
  [(CloudContentTasteUpdateRequestListener *)self setContentTaste:taste forMediaItem:8 storeIdentifier:d configuration:configurationCopy timeStamp:v12 withCompletionHandler:handlerCopy];
}

- (void)setContentTaste:(int64_t)taste forAlbumStoreID:(int64_t)d persistentID:(int64_t)iD timeStamp:(id)stamp configuration:(id)configuration withCompletionHandler:(id)handler
{
  stampCopy = stamp;
  configurationCopy = configuration;
  handlerCopy = handler;
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100139620;
  block[3] = &unk_1001DF708;
  block[4] = self;
  v22 = configurationCopy;
  dCopy = d;
  tasteCopy = taste;
  v23 = stampCopy;
  v24 = handlerCopy;
  iDCopy = iD;
  v18 = stampCopy;
  v19 = configurationCopy;
  v20 = handlerCopy;
  dispatch_async(accessQueue, block);
}

- (void)setContentTaste:(int64_t)taste forAlbumStoreID:(int64_t)d configuration:(id)configuration withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  configurationCopy = configuration;
  v12 = +[NSDate date];
  [(CloudContentTasteUpdateRequestListener *)self setContentTaste:taste forMediaItem:3 storeIdentifier:d configuration:configurationCopy timeStamp:v12 withCompletionHandler:handlerCopy];
}

- (void)setContentTaste:(int64_t)taste forPlaylistGlobalID:(id)d persistentID:(int64_t)iD timeStamp:(id)stamp configuration:(id)configuration withCompletionHandler:(id)handler
{
  dCopy = d;
  stampCopy = stamp;
  configurationCopy = configuration;
  handlerCopy = handler;
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10013A08C;
  block[3] = &unk_1001DF6E0;
  block[4] = self;
  v24 = dCopy;
  v27 = handlerCopy;
  tasteCopy = taste;
  iDCopy = iD;
  v25 = configurationCopy;
  v26 = stampCopy;
  v19 = stampCopy;
  v20 = configurationCopy;
  v21 = handlerCopy;
  v22 = dCopy;
  dispatch_async(accessQueue, block);
}

- (void)setContentTaste:(int64_t)taste forPlaylistGlobalID:(id)d configuration:(id)configuration withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  configurationCopy = configuration;
  dCopy = d;
  v13 = +[NSDate date];
  [(CloudContentTasteUpdateRequestListener *)self setContentTaste:taste forPlaylistGlobalID:dCopy persistentID:0 timeStamp:v13 configuration:configurationCopy withCompletionHandler:handlerCopy];
}

- (void)setContentTaste:(int64_t)taste forMediaItem:(int64_t)item storeIdentifier:(int64_t)identifier persistentID:(int64_t)d timeStamp:(id)stamp configuration:(id)configuration withCompletionHandler:(id)handler
{
  stampCopy = stamp;
  configurationCopy = configuration;
  handlerCopy = handler;
  accessQueue = self->_accessQueue;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10013AB28;
  v22[3] = &unk_1001DF690;
  itemCopy = item;
  identifierCopy = identifier;
  v22[4] = self;
  v23 = configurationCopy;
  v24 = stampCopy;
  v25 = handlerCopy;
  tasteCopy = taste;
  dCopy = d;
  v19 = stampCopy;
  v20 = configurationCopy;
  v21 = handlerCopy;
  dispatch_async(accessQueue, v22);
}

- (void)setContentTaste:(int64_t)taste forMediaItem:(int64_t)item storeIdentifier:(int64_t)identifier configuration:(id)configuration timeStamp:(id)stamp withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  configurationCopy = configuration;
  v15 = +[NSDate date];
  [(CloudContentTasteUpdateRequestListener *)self setContentTaste:taste forMediaItem:item storeIdentifier:identifier persistentID:0 timeStamp:v15 configuration:configurationCopy withCompletionHandler:handlerCopy];
}

- (void)removeContentTasteOperationsForConnectionConfiguration:(id)configuration
{
  configurationCopy = configuration;
  accessQueue = self->_accessQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10013B730;
  v7[3] = &unk_1001DF618;
  v8 = configurationCopy;
  selfCopy = self;
  v6 = configurationCopy;
  dispatch_sync(accessQueue, v7);
}

- (void)updateContentTasteForConnectionConfiguration:(id)configuration invalidateLocalCache:(BOOL)cache withCompletionHandler:(id)handler
{
  configurationCopy = configuration;
  handlerCopy = handler;
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10013BA60;
  block[3] = &unk_1001DF5F0;
  block[4] = self;
  v13 = configurationCopy;
  v14 = handlerCopy;
  v10 = handlerCopy;
  v11 = configurationCopy;
  dispatch_async(accessQueue, block);
}

- (void)handleContentTasteChangedNotification
{
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10013BD60;
  block[3] = &unk_1001DF578;
  block[4] = self;
  dispatch_async(accessQueue, block);
}

- (void)handleMusicAppRemoved
{
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10013BE9C;
  block[3] = &unk_1001DF578;
  block[4] = self;
  dispatch_async(accessQueue, block);
}

- (void)handleMusicAppInstalled
{
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10013BFE4;
  block[3] = &unk_1001DF578;
  block[4] = self;
  dispatch_async(accessQueue, block);
}

- (void)stop
{
  v3 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ stopping ....", buf, 0xCu);
  }

  [(NSXPCListener *)self->_listener invalidate];
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10013C1C4;
  block[3] = &unk_1001DF578;
  block[4] = self;
  dispatch_sync(accessQueue, block);
}

- (void)start
{
  v3 = os_log_create("com.apple.amp.itunescloudd", "ContentTaste");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ starting ....", buf, 0xCu);
  }

  [(NSXPCListener *)self->_listener resume];
  accessQueue = self->_accessQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10013C2D8;
  block[3] = &unk_1001DF578;
  block[4] = self;
  dispatch_async(accessQueue, block);
}

- (id)_init
{
  v12.receiver = self;
  v12.super_class = CloudContentTasteUpdateRequestListener;
  v2 = [(CloudContentTasteUpdateRequestListener *)&v12 init];
  if (v2)
  {
    v2->_musicAppIsInstalled = ICSystemApplicationIsInstalled();
    v3 = dispatch_queue_create("com.apple.amp.iTunesCloud.CloudContentTasteUpdateRequestListener.accessQueue", 0);
    accessQueue = v2->_accessQueue;
    v2->_accessQueue = v3;

    v5 = dispatch_queue_create("com.apple.amp.iTunesCloud.CloudContentTasteUpdateRequestListener.callbackQueue", &_dispatch_queue_attr_concurrent);
    callbackQueue = v2->_callbackQueue;
    v2->_callbackQueue = v5;

    v7 = +[NSMutableDictionary dictionary];
    contentTasteRequestHandlerToDSIDMap = v2->_contentTasteRequestHandlerToDSIDMap;
    v2->_contentTasteRequestHandlerToDSIDMap = v7;

    v9 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.itunescloud.contenttaste"];
    listener = v2->_listener;
    v2->_listener = v9;

    [(NSXPCListener *)v2->_listener setDelegate:v2];
  }

  return v2;
}

- (CloudContentTasteUpdateRequestListener)init
{
  [NSException raise:NSInvalidArgumentException format:@"-init is not supported, use +sharedInstance"];

  return 0;
}

+ (id)sharedContentTasteRequestListener
{
  if (qword_100213E98 != -1)
  {
    dispatch_once(&qword_100213E98, &stru_1001DF550);
  }

  v3 = qword_100213E90;

  return v3;
}

@end