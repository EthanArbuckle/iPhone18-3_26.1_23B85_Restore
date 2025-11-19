@interface CloudArtworkImporter
- (CloudArtworkImporter)initWithConfiguration:(id)a3 sourceType:(int64_t)a4;
- (id)_artworkColorAnalysisOperationForArtworkAsset:(id)a3 library:(id)a4 artwork:(id)a5;
- (void)_adjustOperationQueueStatusForMediaDownloads;
- (void)cancelAllImportsAndWaitForOperationsToFinish:(BOOL)a3;
- (void)dealloc;
- (void)decreasePriorityForAllOperations;
- (void)deprioritizeImportArtworkForCloudID:(unint64_t)a3 artworkType:(int64_t)a4;
- (void)importCloudArtworkForRequests:(id)a3;
- (void)increasePriorityForAllOperations;
@end

@implementation CloudArtworkImporter

- (id)_artworkColorAnalysisOperationForArtworkAsset:(id)a3 library:(id)a4 artwork:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v24 = self;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ _artworkColorAnalysisOperationForArtworkAsset calling color analysis for artwork asset", buf, 0xCu);
  }

  v12 = [ICAsyncBlockOperation alloc];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10010A338;
  v18[3] = &unk_1001DE878;
  v19 = v9;
  v20 = v8;
  v21 = self;
  v22 = v10;
  v13 = v10;
  v14 = v8;
  v15 = v9;
  v16 = [v12 initWithStartHandler:v18];

  return v16;
}

- (void)_adjustOperationQueueStatusForMediaDownloads
{
  v3 = [(CloudArtworkImporter *)self downloadManager];
  v4 = [v3 hasActiveDownloads];

  v5 = [(CloudArtworkImporter *)self artworkDownloadOperationQueue];
  v6 = [v5 maxConcurrentOperationCount];

  if (((v4 ^ (v6 != 1)) & 1) == 0)
  {
    v7 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = "Unthrottling";
      if (v4)
      {
        v8 = "Throttling";
      }

      v12 = 138543618;
      v13 = self;
      v14 = 2080;
      v15 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ %s operations in coordination with media downloads", &v12, 0x16u);
    }

    v9 = [(CloudArtworkImporter *)self artworkDownloadOperationQueue];
    v10 = v9;
    if (v4)
    {
      v11 = 1;
    }

    else
    {
      v11 = 5;
    }

    [v9 setMaxConcurrentOperationCount:v11];
  }
}

- (void)cancelAllImportsAndWaitForOperationsToFinish:(BOOL)a3
{
  v5 = [(CloudArtworkImporter *)self artworkDownloadOperationQueue];
  v6 = [v5 progress];

  v7 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v6 totalUnitCount];
    *buf = 138543618;
    v15 = self;
    v16 = 2048;
    v17 = v8 - [v6 completedUnitCount];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Cancelling %lld artwork download operations", buf, 0x16u);
  }

  v9 = [(CloudArtworkImporter *)self artworkDownloadOperationQueue];
  [v9 setSuspended:0];

  v10 = [(CloudArtworkImporter *)self artworkDownloadOperationQueue];
  [v10 cancelAllOperations];

  v11 = [(CloudArtworkImporter *)self artworkDownloadAccessQueue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10010AE5C;
  v12[3] = &unk_1001DE650;
  v13 = a3;
  v12[4] = self;
  dispatch_sync(v11, v12);
}

- (void)increasePriorityForAllOperations
{
  v3 = [(CloudArtworkImporter *)self artworkDownloadAccessQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10010AF58;
  block[3] = &unk_1001DF578;
  block[4] = self;
  dispatch_sync(v3, block);
}

- (void)decreasePriorityForAllOperations
{
  v3 = [(CloudArtworkImporter *)self artworkDownloadAccessQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10010B024;
  block[3] = &unk_1001DF578;
  block[4] = self;
  dispatch_sync(v3, block);
}

- (void)deprioritizeImportArtworkForCloudID:(unint64_t)a3 artworkType:(int64_t)a4
{
  v7 = [(CloudArtworkImporter *)self artworkDownloadAccessQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10010B104;
  block[3] = &unk_1001DE628;
  block[5] = a3;
  block[6] = a4;
  block[4] = self;
  dispatch_async(v7, block);
}

- (void)importCloudArtworkForRequests:(id)a3
{
  v5 = a3;
  v6 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v14 = self;
    v15 = 2050;
    v16 = [v5 count];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ import cloud artwork for %{public}lu requests.", buf, 0x16u);
  }

  v7 = [(CloudArtworkImporter *)self artworkDownloadAccessQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10010B450;
  block[3] = &unk_1001DE600;
  v11 = self;
  v12 = a2;
  v10 = v5;
  v8 = v5;
  dispatch_async(v7, block);
}

- (void)dealloc
{
  v3 = [(CloudArtworkImporter *)self downloadManager];
  [v3 unregisterObserver:self];

  v4 = [(CloudArtworkImporter *)self artworkDownloadWatchdog];
  [v4 suspend];

  v5 = [(CloudArtworkImporter *)self powerAssertionIdentifier];
  CPSetPowerAssertionWithIdentifier();

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 removeObserver:self name:ICCloudAvailabilityControllerIsCellularDataRestrictedDidChangeNotification object:0];

  v7.receiver = self;
  v7.super_class = CloudArtworkImporter;
  [(CloudArtworkImporter *)&v7 dealloc];
}

- (CloudArtworkImporter)initWithConfiguration:(id)a3 sourceType:(int64_t)a4
{
  v8 = a3;
  v9 = [v8 userIdentity];

  if (!v9)
  {
    v36 = +[NSAssertionHandler currentHandler];
    [v36 handleFailureInMethod:a2 object:self file:@"CloudArtworkImporter.m" lineNumber:111 description:{@"Invalid parameter not satisfying: %@", @"configuration.userIdentity != nil"}];
  }

  v39.receiver = self;
  v39.super_class = CloudArtworkImporter;
  v10 = [(CloudArtworkImporter *)&v39 init];
  v11 = v10;
  if (v10)
  {
    v10->_sourceType = a4;
    objc_storeStrong(&v10->_configuration, a3);
    v12 = [v8 userIdentity];
    v13 = [ML3MusicLibrary musicLibraryForUserAccount:v12];
    musicLibrary = v11->_musicLibrary;
    v11->_musicLibrary = v13;

    v15 = dispatch_queue_create("com.apple.itunescloudd.artworkimporter.artworkColorAnalysisAccessQueue", 0);
    [(CloudArtworkImporter *)v11 setArtworkColorAnalysisAccessQueue:v15];

    v16 = objc_alloc_init(NSOperationQueue);
    [(CloudArtworkImporter *)v11 setArtworkColorAnalysisOperationQueue:v16];

    v17 = [(CloudArtworkImporter *)v11 artworkColorAnalysisOperationQueue];
    [v17 setMaxConcurrentOperationCount:5];

    v18 = +[NSURLSessionConfiguration ephemeralSessionConfiguration];
    [v18 setHTTPShouldUsePipelining:1];
    v19 = [[ICURLSession alloc] initWithConfiguration:v18 maxConcurrentRequests:5 qualityOfService:-1];
    [(CloudArtworkImporter *)v11 setArtworkDownloadSession:v19];

    v20 = dispatch_queue_create("com.apple.itunescloudd.artworkimporter.artworkDownloadAccessQueue", 0);
    [(CloudArtworkImporter *)v11 setArtworkDownloadAccessQueue:v20];

    v21 = [[CloudArtworkOperationQueue alloc] initWithSourceType:[(CloudArtworkImporter *)v11 sourceType] configuration:v11->_configuration];
    [(CloudArtworkImporter *)v11 setArtworkDownloadOperationQueue:v21];

    v22 = [(CloudArtworkImporter *)v11 artworkDownloadOperationQueue];
    [v22 setMaxConcurrentOperationCount:5];

    v23 = [(CloudArtworkImporter *)v11 artworkDownloadOperationQueue];
    [v23 setQualityOfService:-1];

    v24 = +[ICDeviceInfo currentDeviceInfo];
    v25 = [v24 isWatch];

    if (v25)
    {
      v41 = 0;
      v42 = &v41;
      v43 = 0x2050000000;
      v26 = qword_100213DC0;
      v44 = qword_100213DC0;
      if (!qword_100213DC0)
      {
        location[0] = _NSConcreteStackBlock;
        location[1] = 3221225472;
        location[2] = sub_10010C944;
        location[3] = &unk_1001DF318;
        location[4] = &v41;
        sub_10010C944(location);
        v26 = v42[3];
      }

      v27 = v26;
      _Block_object_dispose(&v41, 8);
      v28 = [v26 sharedManager];
      [(CloudArtworkImporter *)v11 setDownloadManager:v28];

      v29 = [(CloudArtworkImporter *)v11 downloadManager];
      [v29 registerObserver:v11];

      [(CloudArtworkImporter *)v11 _adjustOperationQueueStatusForMediaDownloads];
    }

    v30 = +[NSMutableDictionary dictionary];
    [(CloudArtworkImporter *)v11 setArtworkDownloadOperationMap:v30];

    v31 = [NSString stringWithFormat:@"com.apple.itunescloudd.%@", objc_opt_class()];
    [(CloudArtworkImporter *)v11 setPowerAssertionIdentifier:v31];

    v32 = objc_alloc_init(MSVWatchdog);
    [(CloudArtworkImporter *)v11 setArtworkDownloadWatchdog:v32];

    v33 = [(CloudArtworkImporter *)v11 artworkDownloadWatchdog];
    [v33 setTimeoutInterval:3600.0];

    objc_initWeak(location, v11);
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_10010CB30;
    v37[3] = &unk_1001DE5B0;
    objc_copyWeak(&v38, location);
    v34 = [(CloudArtworkImporter *)v11 artworkDownloadWatchdog];
    [v34 setTimeoutCallback:v37];

    objc_destroyWeak(&v38);
    objc_destroyWeak(location);
  }

  return v11;
}

@end