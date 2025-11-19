@interface UARPAssetManagerServiceMobileAsset
- (BOOL)isBusy;
- (BOOL)saveSubscriptionAndCheckIfRunnable:(id)a3 asyncUpdate:(BOOL)a4;
- (UARPAssetManagerServiceMobileAsset)initWithDelegate:(id)a3;
- (id)buildAssetTypeForSubscription:(id)a3;
- (id)checkCacheForSubscription:(id)a3;
- (id)copyCache;
- (id)copySubscriptions;
- (void)checkForUpdate;
- (void)clearAssetCacheForDomain:(id)a3;
- (void)overrideMobileAssetURL:(id)a3 forAssetType:(id)a4;
- (void)overridePallasAudience:(id)a3 forAssetType:(id)a4;
- (void)performQuery:(id)a3 assetType:(id)a4 asyncUpdate:(BOOL)a5;
- (void)primeCacheForSubscription:(id)a3 assetVersion:(id)a4 filePath:(id)a5;
- (void)subscribeForAsset:(id)a3;
@end

@implementation UARPAssetManagerServiceMobileAsset

- (UARPAssetManagerServiceMobileAsset)initWithDelegate:(id)a3
{
  v5 = a3;
  v18.receiver = self;
  v18.super_class = UARPAssetManagerServiceMobileAsset;
  v6 = [(UARPAssetManagerServiceMobileAsset *)&v18 init];
  if (v6)
  {
    v7 = dispatch_queue_create("com.apple.accessoryupdater.UARPAssetManagerServiceMA.queue", 0);
    serviceQueue = v6->_serviceQueue;
    v6->_serviceQueue = v7;

    v9 = os_log_create("com.apple.uarpassetmanager.uarp", "assetManagerService");
    log = v6->_log;
    v6->_log = v9;

    v11 = objc_alloc_init(UARPAssetManagerServiceMobileAssetCache);
    assetCache = v6->_assetCache;
    v6->_assetCache = &v11->super;

    objc_storeStrong(&v6->_delegate, a3);
    v13 = objc_opt_new();
    outstandingAssetSubscriptions = v6->_outstandingAssetSubscriptions;
    v6->_outstandingAssetSubscriptions = v13;

    v15 = objc_opt_new();
    outstandingAsyncAssetSubscriptions = v6->_outstandingAsyncAssetSubscriptions;
    v6->_outstandingAsyncAssetSubscriptions = v15;
  }

  return v6;
}

- (BOOL)isBusy
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  serviceQueue = self->_serviceQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100002264;
  v5[3] = &unk_100014360;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serviceQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)buildAssetTypeForSubscription:(id)a3
{
  v4 = a3;
  v5 = [v4 appleModelNumber];
  v6 = mobileAssetPrefixForAppleModelNumber(v5);

  v7 = [v4 appleModelNumber];
  v8 = [NSMutableString stringWithFormat:@"%@%@", v6, v7];

  v9 = [v4 hwFusing];
  if (v9)
  {
    v10 = v9;
    v11 = [v4 softwareUpdateAsset];

    if ((v11 & 1) == 0)
    {
      v12 = [v4 hwFusing];
      v13 = [v12 caseInsensitiveCompare:@"prod"];

      if (v13)
      {
        v14 = self->_log;
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v15 = [v4 hwFusing];
          v16 = [v4 assetAudience];
          if (v16)
          {
            [v4 assetAudience];
          }

          else
          {
            [v4 assetURL];
          }
          v17 = ;
          *buf = 138412802;
          v21 = v15;
          v22 = 2112;
          v23 = v8;
          v24 = 2112;
          v25 = v17;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Appending hwFusingType:%@ to assetType:%@ at location:%@", buf, 0x20u);
        }

        v18 = [v4 hwFusing];
        [v8 appendFormat:@"-%@", v18];
      }
    }
  }

  return v8;
}

- (BOOL)saveSubscriptionAndCheckIfRunnable:(id)a3 asyncUpdate:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = self->_outstandingAssetSubscriptions;
  if (v4)
  {
    v8 = self->_outstandingAsyncAssetSubscriptions;

    v7 = v8;
  }

  v9 = [(UARPAssetManagerServiceMobileAsset *)self buildAssetTypeForSubscription:v6];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = v7;
  v11 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    while (2)
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [(UARPAssetManagerServiceMobileAsset *)self buildAssetTypeForSubscription:*(*(&v19 + 1) + 8 * i), v19];
        v16 = [v9 isEqualToString:v15];

        if (v16)
        {
          v17 = 0;
          goto LABEL_13;
        }
      }

      v12 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v17 = 1;
LABEL_13:

  [(NSMutableSet *)v10 addObject:v6];
  return v17;
}

- (void)checkForUpdate
{
  serviceQueue = self->_serviceQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002860;
  block[3] = &unk_100014388;
  block[4] = self;
  dispatch_sync(serviceQueue, block);
}

- (void)subscribeForAsset:(id)a3
{
  v4 = a3;
  serviceQueue = self->_serviceQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100002A9C;
  v7[3] = &unk_1000143B0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_sync(serviceQueue, v7);
}

- (id)checkCacheForSubscription:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100002E5C;
  v16 = sub_100002E6C;
  v17 = 0;
  serviceQueue = self->_serviceQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002E74;
  block[3] = &unk_1000143D8;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(serviceQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)copyCache
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100002E5C;
  v10 = sub_100002E6C;
  v11 = 0;
  serviceQueue = self->_serviceQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100002FA4;
  v5[3] = &unk_100014360;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serviceQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)copySubscriptions
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100002E5C;
  v10 = sub_100002E6C;
  v11 = 0;
  serviceQueue = self->_serviceQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000030D0;
  v5[3] = &unk_100014360;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serviceQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)clearAssetCacheForDomain:(id)a3
{
  v4 = a3;
  serviceQueue = self->_serviceQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000031B4;
  v7[3] = &unk_1000143B0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(serviceQueue, v7);
}

- (void)primeCacheForSubscription:(id)a3 assetVersion:(id)a4 filePath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(UARPAssetManagerServiceAssetCache *)self->_assetCache subscribeForAsset:v8];
  if (v11)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      v26 = 138412546;
      v27 = v11;
      v28 = 2112;
      v29 = v9;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Overwriting cache record %@ with version %@", &v26, 0x16u);
    }
  }

  v13 = self->_log;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v26 = 138412802;
    v27 = v9;
    v28 = 2112;
    v29 = v10;
    v30 = 2112;
    v31 = v8;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Moving Firmware File %@ / %@ from MobileAsset to UARP Cache for subscription:%@", &v26, 0x20u);
  }

  v14 = v8;
  v15 = [(UARPAssetManagerServiceAssetCache *)self->_assetCache assetCacheFileURLForAsset:v9 withSubscription:v14];
  v16 = [v15 path];
  v17 = copyFileToLocalPath(v10, v16);

  if (v17)
  {
    if ([v14 softwareUpdateAsset])
    {
      v18 = [v10 lastPathComponent];
      v19 = [v15 URLByAppendingPathComponent:v18];

      v15 = v19;
    }

    v20 = [v15 path];
    if (([v14 softwareUpdateAsset] & 1) == 0)
    {
      v21 = [v10 lastPathComponent];
      v22 = [v15 path];
      v23 = [v22 stringByAppendingPathComponent:v21];

      v20 = v23;
    }

    v24 = [(UARPAssetManagerServiceAssetCache *)self->_assetCache updateSubscription:v14 forAsset:v9 withPath:v20];

    v25 = self->_log;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v26 = 138412546;
      v27 = v24;
      v28 = 2112;
      v29 = v14;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Notify available record %@ for subscription %@", &v26, 0x16u);
    }

    [(UARPAssetManagerServiceMobileAsset *)self notifyFirmwareUpdateAvailability:v14 cacheRecord:v24 asyncUpdate:0];

    v11 = v24;
  }

  else
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_10000B81C();
    }

    [(UARPAssetManagerServiceMobileAsset *)self notifyFirmwareUpdateAvailability:v14 cacheRecord:0 asyncUpdate:0];
  }
}

- (void)overrideMobileAssetURL:(id)a3 forAssetType:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (MASetPallasEnabled() && os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_10000B884();
  }

  ASSetAssetServerURLForAssetType();
}

- (void)overridePallasAudience:(id)a3 forAssetType:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (MASetPallasEnabled() && os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_10000B8F8();
  }

  v8 = MASetPallasAudienceForType();
  if (v8)
  {
    v9 = v8;
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315906;
      v12 = "[UARPAssetManagerServiceMobileAsset overridePallasAudience:forAssetType:]";
      v13 = 2114;
      v14 = v7;
      v15 = 2114;
      v16 = v6;
      v17 = 2050;
      v18 = v9;
      _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s: Failed to update asset type %{public}@ to: %{public}@ with result: %{public}lld", &v11, 0x2Au);
    }
  }
}

- (void)performQuery:(id)a3 assetType:(id)a4 asyncUpdate:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [[MAAssetQuery alloc] initWithType:v9];
  v11 = objc_alloc_init(MADownloadOptions);
  v12 = [v8 assetAudience];
  [v11 setLiveServerCatalogOnly:v12 != 0];

  [v11 setLiveServerCatalogOnlyIsOverridden:1];
  [v11 setDiscretionary:0];
  [v11 setAllowsCellularAccess:allowConditionalDownloadOnCellular()];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100003A54;
  v15[3] = &unk_100014428;
  v15[4] = self;
  v16 = v8;
  v17 = v10;
  v18 = a5;
  v13 = v10;
  v14 = v8;
  [MAAsset startCatalogDownload:v9 options:v11 then:v15];
}

@end