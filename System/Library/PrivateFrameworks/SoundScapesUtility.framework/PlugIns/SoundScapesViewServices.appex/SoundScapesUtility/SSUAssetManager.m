@interface SSUAssetManager
+ (id)sharedInstance;
- (SSUAssetManager)init;
- (id)_getAssetURLFuture:(id)a3;
- (id)combineAllFutures:(id)a3;
- (unint64_t)getAssetVersion:(id)a3 forKey:(id)a4;
- (void)_downloadAssetForCompabilityVersions:(id)a3 withCompleteHandler:(id)a4;
- (void)_fetchAssetCatalog:(id)a3;
- (void)_getSystemVersionsMappingWithCompleteHandler:(id)a3;
- (void)downloadAssetForCompabilityVersions:(id)a3 withCompleteHandler:(id)a4;
- (void)downloadCatalogWithCompleteHandler:(id)a3;
- (void)getSystemVersionsMappingWithCompleteHandler:(id)a3;
@end

@implementation SSUAssetManager

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100001E10;
  block[3] = &unk_100035338;
  block[4] = a1;
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

- (void)downloadCatalogWithCompleteHandler:(id)a3
{
  v4 = a3;
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
  v7 = v4;
  v9 = v7;
  [MAAsset startCatalogDownload:@"com.apple.MobileAsset.SoundScapesPickerAssets" options:v5 completionWithError:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)_fetchAssetCatalog:(id)a3
{
  v4 = a3;
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

    v4[2](v4, 1, 0);
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
    v9 = v4;
    [(SSUAssetManager *)self downloadCatalogWithCompleteHandler:v8];

    objc_destroyWeak(&v10);
  }

  objc_destroyWeak(&location);
}

- (void)_getSystemVersionsMappingWithCompleteHandler:(id)a3
{
  v4 = a3;
  v5 = sub_100001CE8();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100029700();
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100002648;
  v8[3] = &unk_100035400;
  v10 = self;
  v11 = v4;
  v9 = [[MAAssetQuery alloc] initWithType:@"com.apple.MobileAsset.SoundScapesPickerAssets"];
  v6 = v9;
  v7 = v4;
  [v6 queryMetaDataWithError:v8];
}

- (void)getSystemVersionsMappingWithCompleteHandler:(id)a3
{
  v4 = a3;
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
  v8 = v4;
  v6 = v4;
  [(SSUAssetManager *)self _fetchAssetCatalog:v7];
}

- (id)_getAssetURLFuture:(id)a3
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100002C28;
  v6[3] = &unk_100035478;
  v7 = a3;
  v3 = v7;
  v4 = [NAFuture futureWithBlock:v6];

  return v4;
}

- (void)downloadAssetForCompabilityVersions:(id)a3 withCompleteHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
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
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [(SSUAssetManager *)self _fetchAssetCatalog:v11];
}

- (void)_downloadAssetForCompabilityVersions:(id)a3 withCompleteHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
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
  v14 = self;
  v15 = v6;
  v16 = v7;
  v9 = v6;
  v10 = v13;
  v11 = v7;
  [v10 queryMetaDataWithError:v12];
}

- (id)combineAllFutures:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    v4 = objc_alloc_init(NAFuture);
    v5 = [v3 count];
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
    [v3 enumerateObjectsUsingBlock:v14];
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

- (unint64_t)getAssetVersion:(id)a3 forKey:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    v7 = [v5 attributes];
    v8 = [v7 objectForKey:v6];

    if (v8)
    {
      v9 = [v5 attributes];
      v10 = [v9 objectForKey:v6];
      v11 = [v10 integerValue];
    }

    else
    {
      v12 = sub_100001CE8();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_100029D28();
      }

      v11 = -1;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end