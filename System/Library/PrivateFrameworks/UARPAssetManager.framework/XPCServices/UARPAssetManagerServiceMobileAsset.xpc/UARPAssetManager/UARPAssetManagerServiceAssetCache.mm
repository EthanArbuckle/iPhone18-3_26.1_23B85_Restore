@interface UARPAssetManagerServiceAssetCache
+ (id)encodedClasses;
- (BOOL)clearAssetCacheForDomain:(id)domain;
- (BOOL)pruneExpiredRegistryEntries;
- (UARPAssetManagerServiceAssetCache)init;
- (double)assetExpirationTime;
- (id)assetCacheFileURLForAsset:(id)asset withSubscription:(id)subscription;
- (id)assetCacheRootDirectory;
- (id)cacheRecordForSubscription:(id)subscription;
- (id)copyAllSubscriptions;
- (id)copyCache;
- (id)createCacheRecordForAsset:(id)asset withSubscription:(id)subscription withPath:(id)path;
- (id)subscribeForAsset:(id)asset;
- (id)updateSubscription:(id)subscription forAsset:(id)asset withPath:(id)path;
- (void)save;
@end

@implementation UARPAssetManagerServiceAssetCache

- (UARPAssetManagerServiceAssetCache)init
{
  v34.receiver = self;
  v34.super_class = UARPAssetManagerServiceAssetCache;
  v2 = [(UARPAssetManagerServiceAssetCache *)&v34 init];
  if (v2)
  {
    v3 = +[NSFileManager defaultManager];
    v4 = os_log_create("com.apple.uarpassetmanager.uarp", "assetManagerService");
    v5 = *(v2 + 1);
    *(v2 + 1) = v4;

    v6 = dispatch_queue_create("com.apple.accessoryupdater.UARPAssetManagerCache.queue", 0);
    v7 = *(v2 + 2);
    *(v2 + 2) = v6;

    assetCacheRootDirectory = [v2 assetCacheRootDirectory];
    v9 = *(v2 + 1);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v37 = "[UARPAssetManagerServiceAssetCache init]";
      v38 = 2112;
      v39 = assetCacheRootDirectory;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s: Initializing Asset Cache at path: %@", buf, 0x16u);
    }

    v10 = [assetCacheRootDirectory stringByAppendingPathComponent:@"UARPCacheRegistry.plist"];
    if ([v3 isReadableFileAtPath:v10])
    {
      v11 = *(v2 + 1);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v37 = "[UARPAssetManagerServiceAssetCache init]";
        v38 = 2112;
        v39 = v10;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s: Loading Asset Cache Registry from file: %@", buf, 0x16u);
      }

      v12 = [NSData dataWithContentsOfFile:v10];
      if (v12)
      {
        v13 = +[UARPAssetManagerServiceAssetCache encodedClasses];
        v14 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v13 fromData:v12 error:0];

        if (v14)
        {
          v27 = v12;
          v28 = assetCacheRootDirectory;
          v29 = v3;
          v15 = [v14 mutableCopy];
          v16 = *(v2 + 3);
          *(v2 + 3) = v15;

          v32 = 0u;
          v33 = 0u;
          v30 = 0u;
          v31 = 0u;
          v17 = v14;
          v18 = [v17 countByEnumeratingWithState:&v30 objects:v35 count:16];
          if (v18)
          {
            v19 = v18;
            v20 = *v31;
            do
            {
              for (i = 0; i != v19; i = i + 1)
              {
                if (*v31 != v20)
                {
                  objc_enumerationMutation(v17);
                }

                v22 = *(v2 + 1);
                if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
                {
                  v23 = *(*(&v30 + 1) + 8 * i);
                  *buf = 138543362;
                  v37 = v23;
                  _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "Cache entry: %{public}@", buf, 0xCu);
                }
              }

              v19 = [v17 countByEnumeratingWithState:&v30 objects:v35 count:16];
            }

            while (v19);
          }

          assetCacheRootDirectory = v28;
          v3 = v29;
          v12 = v27;
        }

        else
        {
          if (os_log_type_enabled(*(v2 + 1), OS_LOG_TYPE_ERROR))
          {
            sub_10000BC20();
          }

          [v3 removeItemAtPath:v10 error:0];
        }
      }

      else if (os_log_type_enabled(*(v2 + 1), OS_LOG_TYPE_ERROR))
      {
        sub_10000BC9C();
      }
    }

    if (!*(v2 + 3))
    {
      v24 = objc_alloc_init(NSMutableArray);
      v25 = *(v2 + 3);
      *(v2 + 3) = v24;

      if (os_log_type_enabled(*(v2 + 1), OS_LOG_TYPE_ERROR))
      {
        sub_10000BD18();
      }
    }
  }

  return v2;
}

- (id)cacheRecordForSubscription:(id)subscription
{
  subscriptionCopy = subscription;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_1000078D0;
  v16 = sub_1000078E0;
  v17 = 0;
  cacheQueue = self->_cacheQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000078E8;
  block[3] = &unk_1000145A8;
  block[4] = self;
  v10 = subscriptionCopy;
  v11 = &v12;
  v6 = subscriptionCopy;
  dispatch_sync(cacheQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)subscribeForAsset:(id)asset
{
  assetCopy = asset;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_1000078D0;
  v16 = sub_1000078E0;
  v17 = 0;
  cacheQueue = self->_cacheQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100007B4C;
  block[3] = &unk_1000145A8;
  block[4] = self;
  v10 = assetCopy;
  v11 = &v12;
  v6 = assetCopy;
  dispatch_sync(cacheQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)updateSubscription:(id)subscription forAsset:(id)asset withPath:(id)path
{
  subscriptionCopy = subscription;
  assetCopy = asset;
  pathCopy = path;
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x2020000000;
  v27 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_1000078D0;
  v24 = sub_1000078E0;
  v25 = 0;
  if (pathCopy)
  {
    cacheQueue = self->_cacheQueue;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100007F00;
    v14[3] = &unk_1000145D0;
    v14[4] = self;
    v15 = subscriptionCopy;
    v18 = &v20;
    v16 = assetCopy;
    v17 = pathCopy;
    v19 = v26;
    dispatch_sync(cacheQueue, v14);
    v12 = v21[5];
  }

  else
  {
    v12 = 0;
  }

  _Block_object_dispose(&v20, 8);

  _Block_object_dispose(v26, 8);

  return v12;
}

- (id)copyAllSubscriptions
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_1000078D0;
  v11 = sub_1000078E0;
  v12 = +[NSMutableArray array];
  cacheQueue = self->_cacheQueue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000081DC;
  v6[3] = &unk_1000145F8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(cacheQueue, v6);
  v4 = [NSArray arrayWithArray:v8[5]];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)copyCache
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_1000078D0;
  v11 = sub_1000078E0;
  v12 = +[NSMutableDictionary dictionary];
  cacheQueue = self->_cacheQueue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100008428;
  v6[3] = &unk_1000145F8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(cacheQueue, v6);
  v4 = [NSDictionary dictionaryWithDictionary:v8[5]];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (BOOL)clearAssetCacheForDomain:(id)domain
{
  domainCopy = domain;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  cacheQueue = self->_cacheQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000868C;
  block[3] = &unk_1000145A8;
  block[4] = self;
  v6 = domainCopy;
  v10 = v6;
  v11 = &v12;
  dispatch_sync(cacheQueue, block);
  v7 = 0;
  if (*(v13 + 24) == 1)
  {
    [(UARPAssetManagerServiceAssetCache *)self pruneExpiredRegistryEntries];
    v7 = *(v13 + 24);
  }

  _Block_object_dispose(&v12, 8);
  return v7 & 1;
}

- (BOOL)pruneExpiredRegistryEntries
{
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2020000000;
  v11 = 0;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  cacheQueue = self->_cacheQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000893C;
  block[3] = &unk_100014620;
  block[4] = self;
  block[5] = v10;
  block[6] = &v6;
  dispatch_sync(cacheQueue, block);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  _Block_object_dispose(v10, 8);
  return v3;
}

- (void)save
{
  assetCacheRootDirectory = [(UARPAssetManagerServiceAssetCache *)self assetCacheRootDirectory];
  v4 = +[NSFileManager defaultManager];
  v5 = [v4 fileExistsAtPath:assetCacheRootDirectory isDirectory:0];

  v6 = 0;
  if ((v5 & 1) == 0)
  {
    v7 = +[NSFileManager defaultManager];
    v15 = 0;
    v8 = [v7 createDirectoryAtPath:assetCacheRootDirectory withIntermediateDirectories:1 attributes:0 error:&v15];
    v6 = v15;

    if ((v8 & 1) == 0 && os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_10000BE0C();
    }
  }

  cacheRegistry = self->_cacheRegistry;
  v14 = v6;
  v10 = [NSKeyedArchiver archivedDataWithRootObject:cacheRegistry requiringSecureCoding:1 error:&v14];
  v11 = v14;

  if (v10)
  {
    v12 = [assetCacheRootDirectory stringByAppendingPathComponent:@"UARPCacheRegistry.plist"];
    if (([v10 writeToFile:v12 atomically:1] & 1) == 0)
    {
      log = self->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
      {
        sub_10000BE88(log);
      }
    }
  }

  else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_10000BF0C(&self->_cacheRegistry);
  }
}

- (id)assetCacheRootDirectory
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
  {
    sub_10000BF84(log);
  }

  return 0;
}

- (id)assetCacheFileURLForAsset:(id)asset withSubscription:(id)subscription
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
  {
    sub_10000C020(log);
  }

  return 0;
}

- (double)assetExpirationTime
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
  {
    sub_10000C0BC(log);
  }

  return 0.0;
}

- (id)createCacheRecordForAsset:(id)asset withSubscription:(id)subscription withPath:(id)path
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
  {
    sub_10000C158(log);
  }

  return 0;
}

+ (id)encodedClasses
{
  v2 = objc_alloc_init(NSMutableArray);
  [v2 addObject:objc_opt_class()];
  [v2 addObject:objc_opt_class()];
  [v2 addObject:objc_opt_class()];
  [v2 addObject:objc_opt_class()];
  [v2 addObject:objc_opt_class()];
  v3 = [NSSet setWithArray:v2];

  return v3;
}

@end