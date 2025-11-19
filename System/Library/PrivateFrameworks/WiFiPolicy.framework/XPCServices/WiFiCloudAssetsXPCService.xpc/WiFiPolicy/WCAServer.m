@interface WCAServer
+ (id)sharedInstance;
- (WCAServer)init;
- (WCAServer)initWithAssets:(id)a3;
- (id)_readInstalledKeys:(id)a3 ofAsset:(id)a4;
- (id)_readSQLiteDataBase:(id)a3 ofAsset:(id)a4;
- (unsigned)_getNetworkReachability;
- (void)_cancelDownload:(id)a3;
- (void)_downloadAsset:(id)a3 withLocalAsset:(id)a4 completion:(id)a5;
- (void)_fetchAssetCatalogueFromServer:(id)a3 completion:(id)a4;
- (void)_findBestVersionOfAsset:(id)a3 fromResults:(id)a4 completion:(id)a5;
- (void)_findLocallyInstalledAssetWithCompletion:(id)a3;
- (void)_loadDefaultsFromLocalFile;
- (void)_queryAndFindBestVersionOfAsset:(id)a3 completion:(id)a4;
- (void)dealloc;
- (void)executeFetchRequest:(id)a3 completion:(id)a4;
- (void)fetchWiFiAssetsFromServer;
@end

@implementation WCAServer

+ (id)sharedInstance
{
  v5 = &unk_100015408;
  location = 0;
  objc_storeStrong(&location, &stru_100010A20);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = qword_100015400;

  return v2;
}

- (WCAServer)init
{
  v24 = a2;
  v25 = 0;
  v23.receiver = self;
  v23.super_class = WCAServer;
  v25 = [(WCAServer *)&v23 init];
  objc_storeStrong(&v25, v25);
  v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v2 = dispatch_queue_create("com.apple.wificloudassets.wcaserver", v10);
  queue = v25->_queue;
  v25->_queue = v2;

  v12 = +[WCAAsset wifiBehaviorPlistAsset];
  v26[0] = v12;
  v11 = +[WCAAsset beaconsDataAsset];
  v26[1] = v11;
  v4 = [NSArray arrayWithObjects:v26 count:2];
  assets = v25->_assets;
  v25->_assets = v4;

  v6 = +[NSMutableDictionary dictionary];
  assetLocalURL = v25->_assetLocalURL;
  v25->_assetLocalURL = v6;

  signal(15, 1);
  v8 = &_dispatch_main_q;
  v13 = &_dispatch_main_q;
  v22 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, v13);

  v15 = _NSConcreteStackBlock;
  v16 = -1073741824;
  v17 = 0;
  v18 = sub_10000240C;
  v19 = &unk_100010A68;
  v20 = v25;
  v21 = objc_retainBlock(&v15);
  dispatch_source_set_event_handler(v22, v21);
  dispatch_activate(v22);
  v14 = v25;
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v25, 0);
  return v14;
}

- (void)dealloc
{
  v4 = self;
  v3 = a2;
  [(WCAServer *)self _cancelDownload:&stru_100010A88];
  v2.receiver = v4;
  v2.super_class = WCAServer;
  [(WCAServer *)&v2 dealloc];
}

- (WCAServer)initWithAssets:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v8;
  v8 = 0;
  v6.receiver = v3;
  v6.super_class = WCAServer;
  v8 = [(WCAServer *)&v6 init];
  objc_storeStrong(&v8, v8);
  objc_storeStrong(&v8->_assets, location[0]);
  v8->_didFetchLatestAssets = 1;
  v5 = v8;
  objc_storeStrong(location, 0);
  objc_storeStrong(&v8, 0);
  return v5;
}

- (void)executeFetchRequest:(id)a3 completion:(id)a4
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = 0;
  objc_storeStrong(&v14, a4);
  queue = v16->_queue;
  v6 = _NSConcreteStackBlock;
  v7 = -1073741824;
  v8 = 0;
  v9 = sub_100002758;
  v10 = &unk_100010AB0;
  v11 = v16;
  v12 = location[0];
  v13 = v14;
  dispatch_sync(queue, &v6);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

- (void)fetchWiFiAssetsFromServer
{
  v21 = self;
  v20[1] = a2;
  v20[0] = dispatch_group_create();
  memset(__b, 0, sizeof(__b));
  obj = v21->_assets;
  v11 = [(NSArray *)obj countByEnumeratingWithState:__b objects:v22 count:16];
  if (v11)
  {
    v7 = *__b[2];
    v8 = 0;
    v9 = v11;
    while (1)
    {
      v6 = v8;
      if (*__b[2] != v7)
      {
        objc_enumerationMutation(obj);
      }

      v19 = *(__b[1] + 8 * v8);
      dispatch_group_enter(v20[0]);
      v5 = v21;
      v4 = v19;
      v12 = _NSConcreteStackBlock;
      v13 = -1073741824;
      v14 = 0;
      v15 = sub_100002D68;
      v16 = &unk_100010A68;
      v17 = v20[0];
      [(WCAServer *)v5 _fetchAssetCatalogueFromServer:v4 completion:&v12];
      objc_storeStrong(&v17, 0);
      ++v8;
      if (v6 + 1 >= v9)
      {
        v8 = 0;
        v9 = [(NSArray *)obj countByEnumeratingWithState:__b objects:v22 count:16];
        if (!v9)
        {
          break;
        }
      }
    }
  }

  group = v20[0];
  v2 = dispatch_time(0, 1000000000 * kMobileAssetResponseTimeout);
  dispatch_group_wait(group, v2);
  objc_storeStrong(v20, 0);
}

- (void)_fetchAssetCatalogueFromServer:(id)a3 completion:(id)a4
{
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = 0;
  objc_storeStrong(&v16, a4);
  if ([(WCAServer *)v18 _getNetworkReachability])
  {
    v15 = objc_alloc_init(MADownloadOptions);
    v4 = v15;
    v7 = _NSConcreteStackBlock;
    v8 = -1073741824;
    v9 = 0;
    v10 = sub_10000304C;
    v11 = &unk_100010B60;
    v12 = v18;
    v13 = location[0];
    v14 = v16;
    [MAAsset startCatalogDownload:@"com.apple.MobileAsset.WiFi" options:v4 then:&v7];
    objc_storeStrong(&v14, 0);
    objc_storeStrong(&v13, 0);
    objc_storeStrong(&v12, 0);
    objc_storeStrong(&v15, 0);
  }

  else
  {
    v5 = [location[0] name];
    NSLog(@"[%s][%@] No network connectivity, will use locally installed assets", "[WCAServer _fetchAssetCatalogueFromServer:completion:]", v5);

    AnalyticsSendEventLazy();
    (*(v16 + 2))();
  }

  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

- (void)_findLocallyInstalledAssetWithCompletion:(id)a3
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(WCAServer *)v14 _loadDefaultsFromLocalFile];
  v12 = [[MAAssetQuery alloc] initWithType:@"com.apple.MobileAsset.WiFi"];
  [v12 returnTypes:1];
  v3 = v12;
  v4 = _NSConcreteStackBlock;
  v5 = -1073741824;
  v6 = 0;
  v7 = sub_100003450;
  v8 = &unk_100010B60;
  v9 = v12;
  v10 = v14;
  v11 = location[0];
  [v3 queryMetaData:?];
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

- (void)_loadDefaultsFromLocalFile
{
  v24 = self;
  v23[1] = a2;
  self->_assetSource = 1;
  v23[0] = [(NSArray *)v24->_assets firstObject];
  v9 = [v23[0] name];
  v8 = [v23[0] extension];
  v22 = [v9 stringByAppendingPathExtension:?];

  v12 = +[NSBundle mainBundle];
  v11 = [(NSBundle *)v12 bundlePath];
  v10 = [NSURL fileURLWithPath:?];
  v21 = [(NSURL *)v10 URLByAppendingPathComponent:v22];

  v13 = [NSMutableDictionary alloc];
  v14 = [(NSURL *)v21 path];
  v2 = [v13 initWithContentsOfFile:?];
  wifiBehaviorData = v24->_wifiBehaviorData;
  v24->_wifiBehaviorData = v2;

  v20 = [(NSArray *)v24->_assets lastObject];
  v16 = [v20 name];
  v15 = [v20 extension];
  v4 = [v16 stringByAppendingPathExtension:?];
  v5 = v22;
  v22 = v4;

  v19 = +[NSBundle mainBundle];
  v18 = [(NSBundle *)v19 bundlePath];
  v17 = [NSURL fileURLWithPath:?];
  v6 = [(NSURL *)v17 URLByAppendingPathComponent:v22];
  beaconDBFile = v24->_beaconDBFile;
  v24->_beaconDBFile = v6;

  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(v23, 0);
}

- (void)_queryAndFindBestVersionOfAsset:(id)a3 completion:(id)a4
{
  obj = a4;
  v25 = self;
  location[1] = a2;
  v19 = location;
  v20 = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v18 = &v23;
  v23 = 0;
  objc_storeStrong(&v23, obj);
  v10 = [location[0] name];
  NSLog(@"[%s][%@] ", "[WCAServer _queryAndFindBestVersionOfAsset:completion:]", v10);

  v4 = [[MAAssetQuery alloc] initWithType:@"com.apple.MobileAsset.WiFi"];
  v17 = &v22;
  v22 = v4;
  [v4 returnTypes:2];
  v12 = v22;
  v11 = v21;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100003C88;
  v21[3] = &unk_100010B88;
  v5 = v23;
  v16 = v11 + 7;
  v21[7] = v5;
  v6 = v22;
  v15 = v11 + 4;
  v21[4] = v6;
  v7 = v25;
  v14 = v11 + 5;
  v21[5] = v7;
  v8 = location[0];
  v13 = v11 + 6;
  v21[6] = v8;
  [v12 queryMetaData:?];
  objc_storeStrong(v13, v20);
  objc_storeStrong(v14, v20);
  objc_storeStrong(v15, v20);
  objc_storeStrong(v16, v20);
  objc_storeStrong(v17, v20);
  objc_storeStrong(v18, v20);
  objc_storeStrong(v19, v20);
}

- (void)_findBestVersionOfAsset:(id)a3 fromResults:(id)a4 completion:(id)a5
{
  v59 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v57 = 0;
  objc_storeStrong(&v57, a4);
  v56 = 0;
  objc_storeStrong(&v56, a5);
  v38 = [location[0] name];
  NSLog(@"[%s][%@] ", "[WCAServer _findBestVersionOfAsset:fromResults:completion:]", v38);

  [location[0] setLatestInstalledVersion:0x7FFFFFFFFFFFFFFFLL];
  [location[0] setLatestInstalledAsset:0];
  [location[0] setLatestNotInstalledVersion:0x7FFFFFFFFFFFFFFFLL];
  [location[0] setLatestNotInstalledAsset:0];
  memset(__b, 0, sizeof(__b));
  v39 = v57;
  v40 = [v39 countByEnumeratingWithState:__b objects:v60 count:16];
  if (v40)
  {
    v33 = *__b[2];
    v34 = 0;
    v35 = v40;
    while (1)
    {
      v32 = v34;
      if (*__b[2] != v33)
      {
        objc_enumerationMutation(v39);
      }

      v55 = *(__b[1] + 8 * v34);
      v25 = [v55 attributes];
      v53 = [v25 objectForKeyedSubscript:@"WiFiCloudAssetType"];

      v27 = [v55 attributes];
      v26 = [v27 objectForKeyedSubscript:ASAttributeCompatibilityVersion];
      v28 = [v26 intValue];

      v52 = v28;
      v30 = [v55 attributes];
      v29 = [v30 objectForKeyedSubscript:ASAttributeContentVersion];
      v31 = [v29 intValue];

      v51 = v31;
      if (kMetadataCurrentSchemaVersion == v52)
      {
        v23 = [location[0] name];
        v24 = [v23 isEqualToString:v53];

        if (v24)
        {
          v22 = [location[0] name];
          NSLog(@"[%s][%@] Checking server asset w/ state: %ld", "-[WCAServer _findBestVersionOfAsset:fromResults:completion:]", v22, [v55 state]);

          if ([v55 state] == 1)
          {
            if ([location[0] latestNotInstalledVersion] == 0x7FFFFFFFFFFFFFFFLL || (v5 = objc_msgSend(location[0], "latestNotInstalledVersion"), v5 < v51))
            {
              v21 = [location[0] name];
              NSLog(@"[%s][%@] Server asset %lu is latest uninstalled version. Marking for download.", "[WCAServer _findBestVersionOfAsset:fromResults:completion:]", v21, v51);

              [location[0] setLatestNotInstalledVersion:v51];
              [location[0] setLatestNotInstalledAsset:v55];
            }

            else
            {
              v20 = [location[0] name];
              NSLog(@"[%s][%@] Server asset %lu is not latest uninstalled version. Ignoring.", "[WCAServer _findBestVersionOfAsset:fromResults:completion:]", v20, v51);
            }
          }

          else if ([v55 state] == 2)
          {
            v49 = 0;
            if ([location[0] latestInstalledVersion] == 0x7FFFFFFFFFFFFFFFLL || (v6 = objc_msgSend(location[0], "latestInstalledVersion"), v6 < v51))
            {
              v19 = [location[0] name];
              NSLog(@"[%s][%@] Server asset %lu is latest installed version. Purging older installed version if needed.", "[WCAServer _findBestVersionOfAsset:fromResults:completion:]", v19, v51);

              v7 = [location[0] latestInstalledAsset];
              v8 = v49;
              v49 = v7;

              [location[0] setLatestInstalledAsset:v55];
              [location[0] setLatestInstalledVersion:v51];
              if (v49)
              {
                v16 = [v49 attributes];
                v48 = [v16 objectForKeyedSubscript:ASAttributeContentVersion];

                v17 = [location[0] name];
                NSLog(@"[%s][%@] Purging asset version %@", "[WCAServer _findBestVersionOfAsset:fromResults:completion:]", v17, v48);

                v18 = v49;
                v41 = _NSConcreteStackBlock;
                v42 = -1073741824;
                v43 = 0;
                v44 = sub_100004834;
                v45 = &unk_100010BB0;
                v46 = location[0];
                v47 = v48;
                [v18 purge:&v41];
                objc_storeStrong(&v47, 0);
                objc_storeStrong(&v46, 0);
                objc_storeStrong(&v48, 0);
              }
            }

            else
            {
              v15 = [location[0] name];
              NSLog(@"[%s][%@] Server asset %lu is not latest installed version. Ignoring.", "[WCAServer _findBestVersionOfAsset:fromResults:completion:]", v15, v51);
            }

            objc_storeStrong(&v49, 0);
          }

          v50 = 0;
        }

        else
        {
          v50 = 3;
        }
      }

      else
      {
        v50 = 3;
      }

      objc_storeStrong(&v53, 0);
      ++v34;
      if (v32 + 1 >= v35)
      {
        v34 = 0;
        v35 = [v39 countByEnumeratingWithState:__b objects:v60 count:16];
        if (!v35)
        {
          break;
        }
      }
    }
  }

  if ([location[0] latestInstalledVersion] != 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(location[0], "latestNotInstalledVersion") != 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = [location[0] latestNotInstalledVersion];
    if (v14 < [location[0] latestInstalledVersion])
    {
      v13 = [location[0] name];
      v12 = [location[0] latestInstalledVersion];
      NSLog(@"[%s][%@] Installed asset (%lu) is newer than latest uninstalled asset (%lu) so we don't need to download", "-[WCAServer _findBestVersionOfAsset:fromResults:completion:]", v13, v12, [location[0] latestNotInstalledVersion]);

      [location[0] setLatestNotInstalledVersion:0x7FFFFFFFFFFFFFFFLL];
      [location[0] setLatestNotInstalledAsset:0];
    }
  }

  v11 = [location[0] latestNotInstalledAsset];

  if (v11)
  {
    v9 = v59;
    v10 = [location[0] latestNotInstalledAsset];
    [WCAServer _downloadAsset:v9 withLocalAsset:"_downloadAsset:withLocalAsset:completion:" completion:?];
  }

  else
  {
    (*(v56 + 2))();
  }

  objc_storeStrong(&v56, 0);
  objc_storeStrong(&v57, 0);
  objc_storeStrong(location, 0);
}

- (void)_downloadAsset:(id)a3 withLocalAsset:(id)a4 completion:(id)a5
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v17 = 0;
  objc_storeStrong(&v17, a4);
  v16 = 0;
  objc_storeStrong(&v16, a5);
  [location[0] attachProgressCallBack:&stru_100010BF0];
  v7 = location[0];
  v8 = _NSConcreteStackBlock;
  v9 = -1073741824;
  v10 = 0;
  v11 = sub_100004AE8;
  v12 = &unk_100010B60;
  v13 = location[0];
  v14 = v17;
  v15 = v16;
  [v7 startDownload:?];
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
}

- (id)_readInstalledKeys:(id)a3 ofAsset:(id)a4
{
  v71 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v69 = 0;
  objc_storeStrong(&v69, a4);
  assetLocalURL = v71->_assetLocalURL;
  v39 = [v69 name];
  v68 = [(NSMutableDictionary *)assetLocalURL objectForKey:?];

  if (v68)
  {
    AnalyticsSendEventLazy();
    v32 = [v69 name];
    v31 = [v69 extension];
    v67 = [v32 stringByAppendingPathExtension:?];

    v66 = [v68 URLByAppendingPathComponent:v67];
    v33 = [NSDictionary alloc];
    v34 = [v66 path];
    v65 = [v33 initWithContentsOfFile:?];

    v64 = [v65 objectForKey:@"Override"];
    v63 = MGCopyAnswer();
    memset(__b, 0, sizeof(__b));
    v35 = v64;
    v36 = [v35 countByEnumeratingWithState:__b objects:v75 count:16];
    if (v36)
    {
      v28 = *__b[2];
      v29 = 0;
      v30 = v36;
      while (1)
      {
        v27 = v29;
        if (*__b[2] != v28)
        {
          objc_enumerationMutation(v35);
        }

        v62 = *(__b[1] + 8 * v29);
        v26 = [v62 objectForKeyedSubscript:@"Country"];
        v59 = 0;
        v57 = 0;
        v55 = 0;
        v53 = 0;
        v51 = 0;
        if (!v26)
        {
          goto LABEL_9;
        }

        v24 = [v62 objectForKeyedSubscript:@"Country"];
        v60 = v24;
        v59 = 1;
        v58 = +[NSLocale currentLocale];
        v57 = 1;
        v56 = [v58 countryCode];
        v55 = 1;
        v25 = 0;
        if ([v24 containsObject:?])
        {
LABEL_9:
          v54 = [v62 objectForKeyedSubscript:@"Device"];
          v53 = 1;
          v23 = 1;
          if (v54)
          {
            v52 = [v62 objectForKeyedSubscript:@"Device"];
            v51 = 1;
            v23 = [v52 containsObject:v63];
          }

          v25 = v23;
        }

        if (v51)
        {
        }

        if (v53)
        {
        }

        if (v55)
        {
        }

        if (v57)
        {
        }

        if (v59)
        {
        }

        if (v25)
        {
          wifiBehaviorData = v71->_wifiBehaviorData;
          v22 = [v62 objectForKeyedSubscript:@"Value"];
          v21 = [v62 objectForKeyedSubscript:@"KeyPath"];
          [(NSMutableDictionary *)wifiBehaviorData setValue:v22 forKeyPath:?];

          v45[1] = _NSConcreteStackBlock;
          v46 = -1073741824;
          v47 = 0;
          v48 = sub_100005B28;
          v49 = &unk_100010C18;
          v50 = v62;
          AnalyticsSendEventLazy();
          objc_storeStrong(&v50, 0);
        }

        ++v29;
        if (v27 + 1 >= v30)
        {
          v29 = 0;
          v30 = [v35 countByEnumeratingWithState:__b objects:v75 count:16];
          if (!v30)
          {
            break;
          }
        }
      }
    }

    objc_storeStrong(&v64, 0);
    objc_storeStrong(&v65, 0);
    objc_storeStrong(&v66, 0);
    objc_storeStrong(&v67, 0);
  }

  else
  {
    AnalyticsSendEventLazy();
    v71->_assetSource = 1;
  }

  v45[0] = objc_opt_new();
  memset(v43, 0, sizeof(v43));
  v18 = location[0];
  v19 = [v18 countByEnumeratingWithState:v43 objects:v74 count:16];
  if (v19)
  {
    v15 = *v43[2];
    v16 = 0;
    v17 = v19;
    while (1)
    {
      v14 = v16;
      if (*v43[2] != v15)
      {
        objc_enumerationMutation(v18);
      }

      v44 = *(v43[1] + 8 * v16);
      if ([location[0] containsObject:v44])
      {
        v42 = [(NSMutableDictionary *)v71->_wifiBehaviorData objectForKeyedSubscript:v44];
        v4 = [WCAKeyValueItem alloc];
        v13 = [v4 initWithKey:v44 value:v42];
        [v45[0] setObject:? forKeyedSubscript:?];

        objc_storeStrong(&v42, 0);
      }

      else
      {
        v10 = WCAErrorDomain;
        v72 = @"Key";
        v73 = v44;
        v11 = [NSDictionary dictionaryWithObjects:&v73 forKeys:&v72 count:1];
        v41 = [NSError errorWithDomain:v10 code:-2 userInfo:?];

        v5 = [WCAKeyValueItem alloc];
        v12 = [v5 initWithKey:v44 error:v41];
        [v45[0] setObject:? forKeyedSubscript:?];

        objc_storeStrong(&v41, 0);
      }

      ++v16;
      if (v14 + 1 >= v17)
      {
        v16 = 0;
        v17 = [v18 countByEnumeratingWithState:v43 objects:v74 count:16];
        if (!v17)
        {
          break;
        }
      }
    }
  }

  v7 = [WCAFetchKeyValuesResponse alloc];
  v8 = [NSDictionary dictionaryWithDictionary:v45[0]];
  v40 = [v7 initWithKeyValues:?];

  v9 = v40;
  objc_storeStrong(&v40, 0);
  objc_storeStrong(v45, 0);
  objc_storeStrong(&v68, 0);
  objc_storeStrong(&v69, 0);
  objc_storeStrong(location, 0);

  return v9;
}

- (void)_cancelDownload:(id)a3
{
  v20 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  NSLog(@"%s: _cancelDownload called", "[WCAServer _cancelDownload:]");
  memset(__b, 0, sizeof(__b));
  obj = v20->_assets;
  v9 = [(NSArray *)obj countByEnumeratingWithState:__b objects:v21 count:16];
  if (v9)
  {
    v5 = *__b[2];
    v6 = 0;
    v7 = v9;
    while (1)
    {
      v4 = v6;
      if (*__b[2] != v5)
      {
        objc_enumerationMutation(obj);
      }

      v18 = *(__b[1] + 8 * v6);
      v16 = [v18 latestNotInstalledAsset];
      v3 = v16;
      v10 = _NSConcreteStackBlock;
      v11 = -1073741824;
      v12 = 0;
      v13 = sub_100005EEC;
      v14 = &unk_100010CA0;
      v15 = location[0];
      [v3 cancelDownload:&v10];
      objc_storeStrong(&v15, 0);
      objc_storeStrong(&v16, 0);
      ++v6;
      if (v4 + 1 >= v7)
      {
        v6 = 0;
        v7 = [(NSArray *)obj countByEnumeratingWithState:__b objects:v21 count:16];
        if (!v7)
        {
          break;
        }
      }
    }
  }

  objc_storeStrong(location, 0);
}

- (id)_readSQLiteDataBase:(id)a3 ofAsset:(id)a4
{
  v24 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v22 = 0;
  objc_storeStrong(&v22, a4);
  assetLocalURL = v24->_assetLocalURL;
  v17 = [v22 name];
  v21 = [(NSMutableDictionary *)assetLocalURL objectForKey:?];

  if (v21)
  {
    v14 = [v22 name];
    v13 = [v22 extension];
    v20 = [v14 stringByAppendingPathExtension:?];

    v4 = [v21 URLByAppendingPathComponent:v20];
    beaconDBFile = v24->_beaconDBFile;
    v24->_beaconDBFile = v4;

    objc_storeStrong(&v20, 0);
  }

  v11 = [location[0] parameters];
  v10 = [location[0] tableName];
  v9 = [location[0] columnNames];
  v19 = WFRunSqliteQuery(v8, v11, v10, v9, [location[0] limit]);

  v6 = [WCAFetchSQLiteResponse alloc];
  v18 = [v6 initWithRecords:v19];
  v12 = v18;
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);

  return v12;
}

- (unsigned)_getNetworkReachability
{
  v7 = self;
  v6 = a2;
  address = xmmword_10000C7F0;
  target = SCNetworkReachabilityCreateWithAddress(kCFAllocatorDefault, &address);
  flags = 0;
  if (target)
  {
    SCNetworkReachabilityGetFlags(target, &flags);
    CFRelease(target);
  }

  v3 = 0;
  if ((flags & 0x40000) == 0)
  {
    return (flags & 2) != 0;
  }

  return v3;
}

@end