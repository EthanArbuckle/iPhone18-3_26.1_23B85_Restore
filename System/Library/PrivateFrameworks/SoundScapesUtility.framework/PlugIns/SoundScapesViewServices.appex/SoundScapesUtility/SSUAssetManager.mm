@interface SSUAssetManager
+ (id)sharedInstance;
- (SSUAssetManager)init;
- (id)_getAssetURLFuture:(id)future;
- (id)combineAllFutures:(id)futures;
- (unint64_t)getAssetVersion:(id)version forKey:(id)key;
- (void)_downloadAssetForCompabilityVersions:(id)versions withCompleteHandler:(id)handler;
- (void)_fetchAssetCatalog:(id)catalog;
- (void)_getSystemVersionsMappingWithCompleteHandler:(id)handler;
- (void)downloadAssetForCompabilityVersions:(id)versions withCompleteHandler:(id)handler;
- (void)downloadCatalogWithCompleteHandler:(id)handler;
- (void)getSystemVersionsMappingWithCompleteHandler:(id)handler;
@end

@implementation SSUAssetManager

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100001E10;
  block[3] = &unk_100035338;
  block[4] = self;
  if (qword_10003A268[0] != -1)
  {
    dispatch_once(qword_10003A268, block);
  }

  v2 = qword_10003A260;

  return v2;
}

- (SSUAssetManager)init
{
  v8.receiver = self;
  v8.super_class = SSUAssetManager;
  v2 = [(SSUAssetManager *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v2->_catalogFailCount = 0;
    v4 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v5 = dispatch_queue_create("com.apple.soundscapes.catalogDownload", v4);
    catalogDownloadQueue = v3->_catalogDownloadQueue;
    v3->_catalogDownloadQueue = v5;

    v3->_isCatalogDownloaded = 0;
  }

  return v3;
}

- (void)downloadCatalogWithCompleteHandler:(id)handler
{
  handlerCopy = handler;
  objc_initWeak(&location, self);
  v5 = objc_alloc_init(MADownloadOptions);
  [v5 setTimeoutIntervalForResource:5];
  [v5 setDiscretionary:0];
  v6 = sub_100001CE8();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_10002944C();
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100002038;
  v8[3] = &unk_100035388;
  objc_copyWeak(&v10, &location);
  v7 = handlerCopy;
  v9 = v7;
  [MAAsset startCatalogDownload:@"com.apple.MobileAsset.SoundScapesPickerAssets" options:v5 completionWithError:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)_fetchAssetCatalog:(id)catalog
{
  catalogCopy = catalog;
  v5 = sub_100001CE8();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100029564();
  }

  objc_initWeak(&location, self);
  if (self->_isCatalogDownloaded)
  {
    v6 = sub_100001CE8();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_1000295DC();
    }

    catalogCopy[2](catalogCopy, 1, 0);
  }

  else
  {
    v7 = sub_100001CE8();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_1000295A0();
    }

    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100002484;
    v8[3] = &unk_1000353B0;
    objc_copyWeak(&v10, &location);
    v9 = catalogCopy;
    [(SSUAssetManager *)self downloadCatalogWithCompleteHandler:v8];

    objc_destroyWeak(&v10);
  }

  objc_destroyWeak(&location);
}

- (void)_getSystemVersionsMappingWithCompleteHandler:(id)handler
{
  handlerCopy = handler;
  v5 = sub_100001CE8();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100029700();
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100002648;
  v8[3] = &unk_100035400;
  selfCopy = self;
  v11 = handlerCopy;
  v9 = [[MAAssetQuery alloc] initWithType:@"com.apple.MobileAsset.SoundScapesPickerAssets"];
  v6 = v9;
  v7 = handlerCopy;
  [v6 queryMetaDataWithError:v8];
}

- (void)getSystemVersionsMappingWithCompleteHandler:(id)handler
{
  handlerCopy = handler;
  v5 = sub_100001CE8();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1000298B4();
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100002B04;
  v7[3] = &unk_100035428;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [(SSUAssetManager *)self _fetchAssetCatalog:v7];
}

- (id)_getAssetURLFuture:(id)future
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100002C28;
  v6[3] = &unk_100035478;
  futureCopy = future;
  v3 = futureCopy;
  v4 = [NAFuture futureWithBlock:v6];

  return v4;
}

- (void)downloadAssetForCompabilityVersions:(id)versions withCompleteHandler:(id)handler
{
  versionsCopy = versions;
  handlerCopy = handler;
  v8 = sub_100001CE8();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_100029AA8();
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100002FC4;
  v11[3] = &unk_1000354A0;
  v11[4] = self;
  v12 = versionsCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = versionsCopy;
  [(SSUAssetManager *)self _fetchAssetCatalog:v11];
}

- (void)_downloadAssetForCompabilityVersions:(id)versions withCompleteHandler:(id)handler
{
  versionsCopy = versions;
  handlerCopy = handler;
  v8 = sub_100001CE8();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_100029BB4();
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10000315C;
  v12[3] = &unk_100035540;
  v13 = [[MAAssetQuery alloc] initWithType:@"com.apple.MobileAsset.SoundScapesPickerAssets"];
  selfCopy = self;
  v15 = versionsCopy;
  v16 = handlerCopy;
  v9 = versionsCopy;
  v10 = v13;
  v11 = handlerCopy;
  [v10 queryMetaDataWithError:v12];
}

- (id)combineAllFutures:(id)futures
{
  futuresCopy = futures;
  if ([futuresCopy count])
  {
    v4 = objc_alloc_init(NAFuture);
    v5 = [futuresCopy count];
    v6 = +[NAScheduler mainThreadScheduler];
    v31[0] = 0;
    v31[1] = v31;
    v31[2] = 0x2020000000;
    v31[3] = v5;
    v30[0] = 0;
    v30[1] = v30;
    v30[2] = 0x2020000000;
    v30[3] = v5;
    v29[0] = 0;
    v29[1] = v29;
    v29[2] = 0x2020000000;
    v29[3] = malloc_type_calloc(8uLL, v5, 0x80040B8603338uLL);
    v27[0] = 0;
    v27[1] = v27;
    v27[2] = 0x3032000000;
    v27[3] = sub_100003798;
    v27[4] = sub_1000037A8;
    v28 = 0;
    v25[0] = 0;
    v25[1] = v25;
    v25[2] = 0x2020000000;
    v26 = 0;
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1000037B0;
    v24[3] = &unk_100035568;
    v24[4] = v29;
    v24[5] = v5;
    v7 = objc_retainBlock(v24);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100003820;
    v14[3] = &unk_100035608;
    v18 = v29;
    v19 = v27;
    v8 = v4;
    v15 = v8;
    v20 = v31;
    v21 = v30;
    v22 = v25;
    v23 = v5;
    v9 = v6;
    v16 = v9;
    v10 = v7;
    v17 = v10;
    [futuresCopy enumerateObjectsUsingBlock:v14];
    v11 = v17;
    v12 = v8;

    _Block_object_dispose(v25, 8);
    _Block_object_dispose(v27, 8);

    _Block_object_dispose(v29, 8);
    _Block_object_dispose(v30, 8);
    _Block_object_dispose(v31, 8);
  }

  else
  {
    v12 = [NAFuture futureWithResult:&__NSArray0__struct];
  }

  return v12;
}

- (unint64_t)getAssetVersion:(id)version forKey:(id)key
{
  versionCopy = version;
  keyCopy = key;
  if (versionCopy)
  {
    attributes = [versionCopy attributes];
    v8 = [attributes objectForKey:keyCopy];

    if (v8)
    {
      attributes2 = [versionCopy attributes];
      v10 = [attributes2 objectForKey:keyCopy];
      integerValue = [v10 integerValue];
    }

    else
    {
      v12 = sub_100001CE8();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_100029D28();
      }

      integerValue = -1;
    }
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

@end