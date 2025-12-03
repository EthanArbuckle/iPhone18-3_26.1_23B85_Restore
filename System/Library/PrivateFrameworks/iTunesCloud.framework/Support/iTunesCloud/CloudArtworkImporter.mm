@interface CloudArtworkImporter
- (CloudArtworkImporter)initWithConfiguration:(id)configuration sourceType:(int64_t)type;
- (id)_artworkColorAnalysisOperationForArtworkAsset:(id)asset library:(id)library artwork:(id)artwork;
- (void)_adjustOperationQueueStatusForMediaDownloads;
- (void)cancelAllImportsAndWaitForOperationsToFinish:(BOOL)finish;
- (void)dealloc;
- (void)decreasePriorityForAllOperations;
- (void)deprioritizeImportArtworkForCloudID:(unint64_t)d artworkType:(int64_t)type;
- (void)importCloudArtworkForRequests:(id)requests;
- (void)increasePriorityForAllOperations;
@end

@implementation CloudArtworkImporter

- (id)_artworkColorAnalysisOperationForArtworkAsset:(id)asset library:(id)library artwork:(id)artwork
{
  assetCopy = asset;
  libraryCopy = library;
  artworkCopy = artwork;
  v11 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ _artworkColorAnalysisOperationForArtworkAsset calling color analysis for artwork asset", buf, 0xCu);
  }

  v12 = [ICAsyncBlockOperation alloc];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10010A338;
  v18[3] = &unk_1001DE878;
  v19 = libraryCopy;
  v20 = assetCopy;
  selfCopy2 = self;
  v22 = artworkCopy;
  v13 = artworkCopy;
  v14 = assetCopy;
  v15 = libraryCopy;
  v16 = [v12 initWithStartHandler:v18];

  return v16;
}

- (void)_adjustOperationQueueStatusForMediaDownloads
{
  downloadManager = [(CloudArtworkImporter *)self downloadManager];
  hasActiveDownloads = [downloadManager hasActiveDownloads];

  artworkDownloadOperationQueue = [(CloudArtworkImporter *)self artworkDownloadOperationQueue];
  maxConcurrentOperationCount = [artworkDownloadOperationQueue maxConcurrentOperationCount];

  if (((hasActiveDownloads ^ (maxConcurrentOperationCount != 1)) & 1) == 0)
  {
    v7 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = "Unthrottling";
      if (hasActiveDownloads)
      {
        v8 = "Throttling";
      }

      v12 = 138543618;
      selfCopy = self;
      v14 = 2080;
      v15 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ %s operations in coordination with media downloads", &v12, 0x16u);
    }

    artworkDownloadOperationQueue2 = [(CloudArtworkImporter *)self artworkDownloadOperationQueue];
    v10 = artworkDownloadOperationQueue2;
    if (hasActiveDownloads)
    {
      v11 = 1;
    }

    else
    {
      v11 = 5;
    }

    [artworkDownloadOperationQueue2 setMaxConcurrentOperationCount:v11];
  }
}

- (void)cancelAllImportsAndWaitForOperationsToFinish:(BOOL)finish
{
  artworkDownloadOperationQueue = [(CloudArtworkImporter *)self artworkDownloadOperationQueue];
  progress = [artworkDownloadOperationQueue progress];

  v7 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    totalUnitCount = [progress totalUnitCount];
    *buf = 138543618;
    selfCopy = self;
    v16 = 2048;
    v17 = totalUnitCount - [progress completedUnitCount];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Cancelling %lld artwork download operations", buf, 0x16u);
  }

  artworkDownloadOperationQueue2 = [(CloudArtworkImporter *)self artworkDownloadOperationQueue];
  [artworkDownloadOperationQueue2 setSuspended:0];

  artworkDownloadOperationQueue3 = [(CloudArtworkImporter *)self artworkDownloadOperationQueue];
  [artworkDownloadOperationQueue3 cancelAllOperations];

  artworkDownloadAccessQueue = [(CloudArtworkImporter *)self artworkDownloadAccessQueue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10010AE5C;
  v12[3] = &unk_1001DE650;
  finishCopy = finish;
  v12[4] = self;
  dispatch_sync(artworkDownloadAccessQueue, v12);
}

- (void)increasePriorityForAllOperations
{
  artworkDownloadAccessQueue = [(CloudArtworkImporter *)self artworkDownloadAccessQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10010AF58;
  block[3] = &unk_1001DF578;
  block[4] = self;
  dispatch_sync(artworkDownloadAccessQueue, block);
}

- (void)decreasePriorityForAllOperations
{
  artworkDownloadAccessQueue = [(CloudArtworkImporter *)self artworkDownloadAccessQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10010B024;
  block[3] = &unk_1001DF578;
  block[4] = self;
  dispatch_sync(artworkDownloadAccessQueue, block);
}

- (void)deprioritizeImportArtworkForCloudID:(unint64_t)d artworkType:(int64_t)type
{
  artworkDownloadAccessQueue = [(CloudArtworkImporter *)self artworkDownloadAccessQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10010B104;
  block[3] = &unk_1001DE628;
  block[5] = d;
  block[6] = type;
  block[4] = self;
  dispatch_async(artworkDownloadAccessQueue, block);
}

- (void)importCloudArtworkForRequests:(id)requests
{
  requestsCopy = requests;
  v6 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v15 = 2050;
    v16 = [requestsCopy count];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ import cloud artwork for %{public}lu requests.", buf, 0x16u);
  }

  artworkDownloadAccessQueue = [(CloudArtworkImporter *)self artworkDownloadAccessQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10010B450;
  block[3] = &unk_1001DE600;
  selfCopy2 = self;
  v12 = a2;
  v10 = requestsCopy;
  v8 = requestsCopy;
  dispatch_async(artworkDownloadAccessQueue, block);
}

- (void)dealloc
{
  downloadManager = [(CloudArtworkImporter *)self downloadManager];
  [downloadManager unregisterObserver:self];

  artworkDownloadWatchdog = [(CloudArtworkImporter *)self artworkDownloadWatchdog];
  [artworkDownloadWatchdog suspend];

  powerAssertionIdentifier = [(CloudArtworkImporter *)self powerAssertionIdentifier];
  CPSetPowerAssertionWithIdentifier();

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 removeObserver:self name:ICCloudAvailabilityControllerIsCellularDataRestrictedDidChangeNotification object:0];

  v7.receiver = self;
  v7.super_class = CloudArtworkImporter;
  [(CloudArtworkImporter *)&v7 dealloc];
}

- (CloudArtworkImporter)initWithConfiguration:(id)configuration sourceType:(int64_t)type
{
  configurationCopy = configuration;
  userIdentity = [configurationCopy userIdentity];

  if (!userIdentity)
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
    v10->_sourceType = type;
    objc_storeStrong(&v10->_configuration, configuration);
    userIdentity2 = [configurationCopy userIdentity];
    v13 = [ML3MusicLibrary musicLibraryForUserAccount:userIdentity2];
    musicLibrary = v11->_musicLibrary;
    v11->_musicLibrary = v13;

    v15 = dispatch_queue_create("com.apple.itunescloudd.artworkimporter.artworkColorAnalysisAccessQueue", 0);
    [(CloudArtworkImporter *)v11 setArtworkColorAnalysisAccessQueue:v15];

    v16 = objc_alloc_init(NSOperationQueue);
    [(CloudArtworkImporter *)v11 setArtworkColorAnalysisOperationQueue:v16];

    artworkColorAnalysisOperationQueue = [(CloudArtworkImporter *)v11 artworkColorAnalysisOperationQueue];
    [artworkColorAnalysisOperationQueue setMaxConcurrentOperationCount:5];

    v18 = +[NSURLSessionConfiguration ephemeralSessionConfiguration];
    [v18 setHTTPShouldUsePipelining:1];
    v19 = [[ICURLSession alloc] initWithConfiguration:v18 maxConcurrentRequests:5 qualityOfService:-1];
    [(CloudArtworkImporter *)v11 setArtworkDownloadSession:v19];

    v20 = dispatch_queue_create("com.apple.itunescloudd.artworkimporter.artworkDownloadAccessQueue", 0);
    [(CloudArtworkImporter *)v11 setArtworkDownloadAccessQueue:v20];

    v21 = [[CloudArtworkOperationQueue alloc] initWithSourceType:[(CloudArtworkImporter *)v11 sourceType] configuration:v11->_configuration];
    [(CloudArtworkImporter *)v11 setArtworkDownloadOperationQueue:v21];

    artworkDownloadOperationQueue = [(CloudArtworkImporter *)v11 artworkDownloadOperationQueue];
    [artworkDownloadOperationQueue setMaxConcurrentOperationCount:5];

    artworkDownloadOperationQueue2 = [(CloudArtworkImporter *)v11 artworkDownloadOperationQueue];
    [artworkDownloadOperationQueue2 setQualityOfService:-1];

    v24 = +[ICDeviceInfo currentDeviceInfo];
    isWatch = [v24 isWatch];

    if (isWatch)
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
      sharedManager = [v26 sharedManager];
      [(CloudArtworkImporter *)v11 setDownloadManager:sharedManager];

      downloadManager = [(CloudArtworkImporter *)v11 downloadManager];
      [downloadManager registerObserver:v11];

      [(CloudArtworkImporter *)v11 _adjustOperationQueueStatusForMediaDownloads];
    }

    v30 = +[NSMutableDictionary dictionary];
    [(CloudArtworkImporter *)v11 setArtworkDownloadOperationMap:v30];

    v31 = [NSString stringWithFormat:@"com.apple.itunescloudd.%@", objc_opt_class()];
    [(CloudArtworkImporter *)v11 setPowerAssertionIdentifier:v31];

    v32 = objc_alloc_init(MSVWatchdog);
    [(CloudArtworkImporter *)v11 setArtworkDownloadWatchdog:v32];

    artworkDownloadWatchdog = [(CloudArtworkImporter *)v11 artworkDownloadWatchdog];
    [artworkDownloadWatchdog setTimeoutInterval:3600.0];

    objc_initWeak(location, v11);
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_10010CB30;
    v37[3] = &unk_1001DE5B0;
    objc_copyWeak(&v38, location);
    artworkDownloadWatchdog2 = [(CloudArtworkImporter *)v11 artworkDownloadWatchdog];
    [artworkDownloadWatchdog2 setTimeoutCallback:v37];

    objc_destroyWeak(&v38);
    objc_destroyWeak(location);
  }

  return v11;
}

@end