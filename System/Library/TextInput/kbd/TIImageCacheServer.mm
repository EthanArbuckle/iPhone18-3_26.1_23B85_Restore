@interface TIImageCacheServer
+ (id)sharedInstance;
- (BOOL)_isValidItem:(id)a3;
- (BOOL)_isValidKey:(id)a3 group:(id)a4;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (TIImageCacheServer)init;
- (id)_bundleIdForConnection:(id)a3;
- (void)_createImageCacheIfNecessary;
- (void)_logInvalidConnection;
- (void)cacheItem:(id)a3 key:(id)a4 group:(id)a5;
- (void)dealloc;
@end

@implementation TIImageCacheServer

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003864;
  block[3] = &unk_10001C810;
  block[4] = a1;
  if (qword_100026568 != -1)
  {
    dispatch_once(&qword_100026568, block);
  }

  v2 = qword_100026560;

  return v2;
}

- (TIImageCacheServer)init
{
  v10.receiver = self;
  v10.super_class = TIImageCacheServer;
  v2 = [(TIImageCacheServer *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v4 = dispatch_queue_create("com.apple.TextInput.image-cache-server", v3);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v4;

    v6 = [NSXPCListener alloc];
    v7 = [v6 initWithMachServiceName:TIImageCacheServiceName];
    listener = v2->_listener;
    v2->_listener = v7;

    [(NSXPCListener *)v2->_listener setDelegate:v2];
    [(NSXPCListener *)v2->_listener _setQueue:v2->_dispatchQueue];
    [(NSXPCListener *)v2->_listener resume];
  }

  return v2;
}

- (void)dealloc
{
  [(NSXPCListener *)self->_listener setDelegate:0];
  [(NSXPCListener *)self->_listener invalidate];
  imageCache = self->_imageCache;
  self->_imageCache = 0;

  invalidBundles = self->_invalidBundles;
  self->_invalidBundles = 0;

  v5.receiver = self;
  v5.super_class = TIImageCacheServer;
  [(TIImageCacheServer *)&v5 dealloc];
}

- (id)_bundleIdForConnection:(id)a3
{
  v3 = [a3 _xpcConnection];
  v4 = xpc_connection_copy_bundle_id();

  if (v4)
  {
    v5 = [NSString stringWithUTF8String:v4];
    free(v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  TIDispatchSync();
  v6 = 0;
  if (*(v12 + 24) == 1)
  {
    if (self->_invalidBundles)
    {
      v7 = [(TIImageCacheServer *)self _bundleIdForConnection:v5];
      if (v7 && ([(NSMutableSet *)self->_invalidBundles containsObject:v7]& 1) != 0)
      {

        v6 = 0;
        goto LABEL_8;
      }
    }

    [v5 setExportedObject:self];
    v8 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___TIImageCaching];
    [v5 setExportedInterface:v8];

    v9 = [(TIImageCacheServer *)self dispatchQueue];
    [v5 _setQueue:v9];

    [v5 resume];
    v6 = 1;
  }

LABEL_8:
  _Block_object_dispose(&v11, 8);

  return v6;
}

- (void)_createImageCacheIfNecessary
{
  if (!self->_imageCache)
  {
    v4 = [[TIImageCacheClient alloc] initWithLocalAccess:1];
    imageCache = self->_imageCache;
    self->_imageCache = v4;

    _objc_release_x1();
  }
}

- (BOOL)_isValidKey:(id)a3 group:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (![v6 isEqualToString:@"Candidates"])
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    v10 = v6;
    TIDispatchSync();
    v8 = *(v12 + 24);

    _Block_object_dispose(&v11, 8);
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  if (([v5 hasPrefix:@"KBTheme:"] & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = 1;
LABEL_6:

  return v7;
}

- (BOOL)_isValidItem:(id)a3
{
  v3 = a3;
  [v3 size];
  v7 = 0;
  if (v4 > 0.0)
  {
    [v3 size];
    if (v5 > 0.0)
    {
      [v3 scale];
      if (v6 >= 1.0)
      {
        [v3 format];
        if ([v3 format] < 6)
        {
          v7 = 1;
        }
      }
    }
  }

  return v7;
}

- (void)_logInvalidConnection
{
  if (!self->_invalidBundles)
  {
    v3 = [[NSMutableSet alloc] initWithCapacity:1];
    invalidBundles = self->_invalidBundles;
    self->_invalidBundles = v3;
  }

  v6 = +[NSXPCConnection currentConnection];
  v5 = [(TIImageCacheServer *)self _bundleIdForConnection:?];
  if (v5)
  {
    [(NSMutableSet *)self->_invalidBundles addObject:v5];
  }
}

- (void)cacheItem:(id)a3 key:(id)a4 group:(id)a5
{
  v10 = a3;
  v8 = a4;
  v9 = a5;
  if (v10)
  {
    if (v8)
    {
      if (v9)
      {
        [(TIImageCacheServer *)self _createImageCacheIfNecessary];
        if (([(TIImageCacheClient *)self->_imageCache imageExistsForKey:v8 inGroup:v9]& 1) == 0)
        {
          if ([(TIImageCacheServer *)self _isValidKey:v8 group:v9]&& [(TIImageCacheServer *)self _isValidItem:v10])
          {
            [(TIImageCacheClient *)self->_imageCache storeImageDataForKey:v8 inGroup:v9 item:v10];
          }

          else
          {
            [(TIImageCacheServer *)self _logInvalidConnection];
          }
        }
      }
    }
  }
}

@end