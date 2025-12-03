@interface CloudArtistHeroImageImporter
+ (id)allArtistImagesMapCacheFilePathURL;
- (CloudArtistHeroImageImporter)initWithConfiguration:(id)configuration;
- (CloudArtworkImporter)artworkImporter;
- (id)userIdentity;
- (int64_t)_synchronouslyLoadArtistUpdatePollingFrequencyFromBag;
- (void)_artistHeroImageUpdateFinished;
- (void)_importHeroImageForArtistType:(int64_t)type withPersistentID:(int64_t)d clientIdentity:(id)identity completionHandler:(id)handler;
- (void)deprioritizeAlbumArtistHeroImageForPersistentID:(int64_t)d;
- (void)deprioritizeArtistHeroImageForPersistentID:(int64_t)d;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)updateArtistHeroImagesForArtistsAddedSinceLastUpdateUsingClientIdentity:(id)identity;
- (void)updateArtistHeroImagesWithClientIdentity:(id)identity;
@end

@implementation CloudArtistHeroImageImporter

- (int64_t)_synchronouslyLoadArtistUpdatePollingFrequencyFromBag
{
  v3 = dispatch_semaphore_create(0);
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_10006FB34;
  v25 = sub_10006FB44;
  v26 = 0;
  v4 = [ICStoreRequestContext alloc];
  userIdentity = [(CloudArtistHeroImageImporter *)self userIdentity];
  v6 = [v4 initWithIdentity:userIdentity];

  v7 = +[ICURLBagProvider sharedBagProvider];
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_100005624;
  v18 = &unk_1001DBEB0;
  v20 = &v21;
  v8 = v3;
  v19 = v8;
  [v7 getBagForRequestContext:v6 withCompletionHandler:&v15];

  dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
  v9 = v22[5];
  if (v9)
  {
    v10 = [v9 numberForBagKey:{@"min-artist-update-polling-frequency-secs", v15, v16, v17, v18}];
    if (objc_opt_respondsToSelector())
    {
      integerValue = [v10 integerValue];
      v12 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v28 = integerValue;
        v13 = "Using polling frequency from bag: %ld";
LABEL_10:
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v13, buf, 0xCu);
      }
    }

    else
    {
      integerValue = 604800;
      v12 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v28 = 604800;
        v13 = "Failed to get polling frequency from the URL bag, using default polling frequency: %ld";
        goto LABEL_10;
      }
    }
  }

  else
  {
    integerValue = 604800;
    v12 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v28 = 604800;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Failed to receive response for URL bag, using default polling frequency: %ld", buf, 0xCu);
    }

    v10 = 0;
  }

  _Block_object_dispose(&v21, 8);
  return integerValue;
}

- (id)userIdentity
{
  configuration = [(CloudArtistHeroImageImporter *)self configuration];
  userIdentity = [configuration userIdentity];

  return userIdentity;
}

- (void)_importHeroImageForArtistType:(int64_t)type withPersistentID:(int64_t)d clientIdentity:(id)identity completionHandler:(id)handler
{
  identityCopy = identity;
  handlerCopy = handler;
  v12 = +[ICCloudAvailabilityController sharedController];
  v13 = [v12 isCellularDataRestrictedForMusic] ^ 1;

  musicLibrary = [(CloudArtistHeroImageImporter *)self musicLibrary];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10006F7AC;
  v17[3] = &unk_1001DBED8;
  typeCopy = type;
  dCopy = d;
  selfCopy = self;
  v20 = handlerCopy;
  v23 = v13;
  v18 = identityCopy;
  v15 = handlerCopy;
  v16 = identityCopy;
  [musicLibrary databaseConnectionAllowingWrites:0 withBlock:v17];
}

- (void)_artistHeroImageUpdateFinished
{
  accessQueue = [(CloudArtistHeroImageImporter *)self accessQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006FC44;
  block[3] = &unk_1001DF578;
  block[4] = self;
  dispatch_async(accessQueue, block);
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  changeCopy = change;
  if ([path isEqualToString:@"operationCount"])
  {
    v9 = [changeCopy objectForKey:NSKeyValueChangeNewKey];
    unsignedIntegerValue = [v9 unsignedIntegerValue];

    v11 = [changeCopy objectForKey:NSKeyValueChangeOldKey];
    unsignedIntegerValue2 = [v11 unsignedIntegerValue];

    accessQueue = [(CloudArtistHeroImageImporter *)self accessQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10006FE44;
    block[3] = &unk_1001DE628;
    block[4] = self;
    block[5] = unsignedIntegerValue;
    block[6] = unsignedIntegerValue2;
    dispatch_async(accessQueue, block);
  }
}

- (void)deprioritizeAlbumArtistHeroImageForPersistentID:(int64_t)d
{
  artworkImporter = [(CloudArtistHeroImageImporter *)self artworkImporter];
  [artworkImporter deprioritizeImportArtworkForCloudID:d artworkType:4];
}

- (void)deprioritizeArtistHeroImageForPersistentID:(int64_t)d
{
  artworkImporter = [(CloudArtistHeroImageImporter *)self artworkImporter];
  [artworkImporter deprioritizeImportArtworkForCloudID:d artworkType:4];
}

- (void)updateArtistHeroImagesForArtistsAddedSinceLastUpdateUsingClientIdentity:(id)identity
{
  identityCopy = identity;
  accessQueue = [(CloudArtistHeroImageImporter *)self accessQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100070314;
  v7[3] = &unk_1001DF618;
  v7[4] = self;
  v8 = identityCopy;
  v6 = identityCopy;
  dispatch_async(accessQueue, v7);
}

- (void)updateArtistHeroImagesWithClientIdentity:(id)identity
{
  identityCopy = identity;
  v5 = +[ICDeviceInfo currentDeviceInfo];
  if (([v5 isWatch] & 1) == 0)
  {

    goto LABEL_7;
  }

  v6 = +[ICEnvironmentMonitor sharedMonitor];
  isCharging = [v6 isCharging];

  if (isCharging)
  {
LABEL_7:
    _synchronouslyLoadArtistUpdatePollingFrequencyFromBag = [(CloudArtistHeroImageImporter *)self _synchronouslyLoadArtistUpdatePollingFrequencyFromBag];
    accessQueue = [(CloudArtistHeroImageImporter *)self accessQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000782A4;
    block[3] = &unk_1001DE600;
    block[4] = self;
    v13 = _synchronouslyLoadArtistUpdatePollingFrequencyFromBag;
    v12 = identityCopy;
    dispatch_async(accessQueue, block);

    goto LABEL_8;
  }

  v8 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Skipping bulk artist artwork update because its not allowed with current conditions", buf, 2u);
  }

LABEL_8:
}

- (CloudArtworkImporter)artworkImporter
{
  artworkImporter = self->_artworkImporter;
  if (!artworkImporter)
  {
    v4 = [CloudArtworkImporter alloc];
    configuration = [(CloudArtistHeroImageImporter *)self configuration];
    v6 = [(CloudArtworkImporter *)v4 initWithConfiguration:configuration sourceType:500];
    v7 = self->_artworkImporter;
    self->_artworkImporter = v6;

    artworkImporter = self->_artworkImporter;
  }

  return artworkImporter;
}

- (CloudArtistHeroImageImporter)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v24.receiver = self;
  v24.super_class = CloudArtistHeroImageImporter;
  v6 = [(CloudArtistHeroImageImporter *)&v24 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, configuration);
    userIdentity = [configurationCopy userIdentity];
    v9 = [ML3MusicLibrary musicLibraryForUserAccount:userIdentity];
    musicLibrary = v7->_musicLibrary;
    v7->_musicLibrary = v9;

    v11 = dispatch_queue_create("com.apple.itunescloudd.cloudartistheroimageimporter.accessqueue", 0);
    accessQueue = v7->_accessQueue;
    v7->_accessQueue = v11;

    v13 = objc_alloc_init(NSOperationQueue);
    operationQueue = v7->_operationQueue;
    v7->_operationQueue = v13;

    [(NSOperationQueue *)v7->_operationQueue setName:@"com.apple.itunescloudd.cloudartistheroimageimporter.operationqueue"];
    [(NSOperationQueue *)v7->_operationQueue setQualityOfService:17];
    [(NSOperationQueue *)v7->_operationQueue setMaxConcurrentOperationCount:1];
    currentUpdateOperation = v7->_currentUpdateOperation;
    v7->_currentUpdateOperation = 0;

    followupUpdateOpertion = v7->_followupUpdateOpertion;
    v7->_followupUpdateOpertion = 0;

    [(NSOperationQueue *)v7->_operationQueue addObserver:v7 forKeyPath:@"operationCount" options:3 context:0];
    powerAssertionIdentifier = v7->_powerAssertionIdentifier;
    v7->_powerAssertionIdentifier = @"com.apple.itunescloudd.cloudartistheroimageimporter";

    v18 = objc_alloc_init(MSVWatchdog);
    watchdog = v7->_watchdog;
    v7->_watchdog = v18;

    [(MSVWatchdog *)v7->_watchdog setTimeoutInterval:3600.0];
    objc_initWeak(&location, v7);
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1000788F0;
    v21[3] = &unk_1001DE5B0;
    objc_copyWeak(&v22, &location);
    [(MSVWatchdog *)v7->_watchdog setTimeoutCallback:v21];
    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }

  return v7;
}

+ (id)allArtistImagesMapCacheFilePathURL
{
  v2 = sub_1000E4DF8();
  v7[0] = v2;
  v7[1] = @"allArtistImagesMap.plist";
  v3 = [NSArray arrayWithObjects:v7 count:2];
  v4 = [NSString pathWithComponents:v3];
  v5 = [NSURL fileURLWithPath:v4];

  return v5;
}

@end