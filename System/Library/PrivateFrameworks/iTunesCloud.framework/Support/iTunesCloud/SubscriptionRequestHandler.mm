@interface SubscriptionRequestHandler
- (SubscriptionRequestHandler)initWithConfiguration:(id)configuration;
- (void)_importAllItemArtworkWithClientIdentity:(id)identity;
- (void)_loadArtworkInfoForSubscriptionPersistentIDs:(id)ds artworkType:(int64_t)type entityType:(int64_t)entityType clientIdentity:(id)identity completionHandler:(id)handler;
- (void)cancelOperationsWithCompletionHandler:(id)handler;
- (void)deprioritizeSubscriptionContainerArtworkForPersistentID:(int64_t)d;
- (void)deprioritizeSubscriptionItemArtworkForPersistentID:(int64_t)d;
- (void)deprioritizeSubscriptionScreenshotForPersistentID:(int64_t)d;
- (void)environmentMonitorDidChangePower:(id)power;
- (void)importContainerArtworkForPersistentID:(int64_t)d clientIdentity:(id)identity completionHandler:(id)handler;
- (void)importItemArtworkForPersistentID:(int64_t)d clientIdentity:(id)identity completionHandler:(id)handler;
- (void)importScreenshotForPersistentID:(int64_t)d clientIdentity:(id)identity completionHandler:(id)handler;
@end

@implementation SubscriptionRequestHandler

- (void)cancelOperationsWithCompletionHandler:(id)handler
{
  v4 = +[ICContentKeySession enhancedAudioSharedContentKeyPath];
  v5 = +[NSFileManager defaultManager];
  v10 = 0;
  v6 = [v5 removeItemAtPath:v4 error:&v10];
  v7 = v10;

  if ((v6 & 1) == 0)
  {
    v8 = os_log_create("com.apple.amp.itunescloudd", "Accounts");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      selfCopy = self;
      v13 = 2114;
      v14 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}@ - Failed to remove the shared enhanced audio keys. err=%{public}@", buf, 0x16u);
    }
  }

  artworkImporter = [(SubscriptionRequestHandler *)self artworkImporter];
  [artworkImporter cancelAllImportsAndWaitForOperationsToFinish:0];
}

- (void)_importAllItemArtworkWithClientIdentity:(id)identity
{
  identityCopy = identity;
  artworkImporter = [(SubscriptionRequestHandler *)self artworkImporter];
  musicLibrary = [artworkImporter musicLibrary];

  [musicLibrary setClientIdentity:identityCopy];
  v7 = +[ICCloudAvailabilityController sharedController];
  v8 = [v7 isCellularDataRestrictedForMusic] ^ 1;

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001052EC;
  v10[3] = &unk_1001DF530;
  v13 = v8;
  v11 = identityCopy;
  selfCopy = self;
  v9 = identityCopy;
  [musicLibrary databaseConnectionAllowingWrites:0 withBlock:v10];
}

- (void)_loadArtworkInfoForSubscriptionPersistentIDs:(id)ds artworkType:(int64_t)type entityType:(int64_t)entityType clientIdentity:(id)identity completionHandler:(id)handler
{
  dsCopy = ds;
  identityCopy = identity;
  selfCopy = self;
  handlerCopy = handler;
  artworkImporter = [(SubscriptionRequestHandler *)self artworkImporter];
  musicLibrary = [artworkImporter musicLibrary];

  [musicLibrary setClientIdentity:identityCopy];
  v67 = 0;
  v68 = &v67;
  v69 = 0x3032000000;
  v70 = sub_100105B24;
  v71 = sub_100105B34;
  v72 = objc_alloc_init(NSMutableArray);
  v61 = 0;
  v62 = &v61;
  v63 = 0x3032000000;
  v64 = sub_100105B24;
  v65 = sub_100105B34;
  v66 = 0;
  if (entityType == 1)
  {
    v13 = objc_opt_class();
    v42 = ML3ContainerPropertyStoreCloudID;
    v14 = objc_opt_class();
    goto LABEL_5;
  }

  if (!entityType)
  {
    v13 = objc_opt_class();
    v42 = ML3TrackPropertyStoreSagaID;
    v14 = objc_opt_class();
LABEL_5:
    v36 = v14;
    goto LABEL_7;
  }

  v74 = NSLocalizedDescriptionKey;
  entityType = [NSString stringWithFormat:@"%@ Unsupported entity type %ld for subscription artwork info", self, entityType];
  v75 = entityType;
  v16 = [NSDictionary dictionaryWithObjects:&v75 forKeys:&v74 count:1];
  v17 = [NSError ic_cloudClientErrorWithCode:2021 userInfo:v16];
  v18 = v62[5];
  v62[5] = v17;

  v36 = 0;
  v42 = 0;
  v13 = 0;
LABEL_7:
  v40 = objc_alloc_init(NSMutableArray);
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = dsCopy;
  v19 = [obj countByEnumeratingWithState:&v57 objects:v73 count:16];
  if (v19)
  {
    v20 = *v58;
    do
    {
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v58 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v22 = [v13 newWithPersistentID:objc_msgSend(*(*(&v57 + 1) + 8 * i) inLibrary:{"longLongValue"), musicLibrary}];
        v23 = [[ML3ArtworkTokenSet alloc] initWithEntity:v22 artworkType:type];
        v24 = [v23 artworkTokenForSource:600];
        v25 = [NSURL URLWithString:v24];
        v26 = v25;
        if (v25 && ([v25 resourceSpecifier], v27 = objc_claimAutoreleasedReturnValue(), v28 = objc_msgSend(v27, "rangeOfString:", @"//") == 0, v27, v28))
        {
          absoluteString = [v26 absoluteString];
          v29 = ICCloudClientCreateArtworkInfoDictionary();

          [v68[5] addObject:v29];
        }

        else
        {
          v29 = [v22 valueForProperty:v42];
          if (v29)
          {
            [v40 addObject:v29];
          }
        }
      }

      v19 = [obj countByEnumeratingWithState:&v57 objects:v73 count:16];
    }

    while (v19);
  }

  v53[0] = _NSConcreteStackBlock;
  v53[1] = 3221225472;
  v53[2] = sub_100105B3C;
  v53[3] = &unk_1001DE4C0;
  v55 = &v61;
  v56 = &v67;
  v31 = handlerCopy;
  v54 = v31;
  v32 = objc_retainBlock(v53);
  if ([v40 count] && !v62[5])
  {
    v33 = [v36 alloc];
    configuration = [(SubscriptionRequestHandler *)selfCopy configuration];
    v35 = [v33 initWithConfiguration:configuration cloudIDs:v40];

    objc_initWeak(&location, v35);
    v45[0] = _NSConcreteStackBlock;
    v45[1] = 3221225472;
    v45[2] = sub_100105BBC;
    v45[3] = &unk_1001DE4E8;
    v46 = v40;
    objc_copyWeak(&v51, &location);
    v47 = selfCopy;
    v49 = &v67;
    v50 = &v61;
    v48 = v32;
    [v35 setCompletionBlock:v45];

    objc_destroyWeak(&v51);
    objc_destroyWeak(&location);
  }

  else
  {
    (v32[2])(v32);
  }

  _Block_object_dispose(&v61, 8);
  _Block_object_dispose(&v67, 8);
}

- (void)environmentMonitorDidChangePower:(id)power
{
  powerCopy = power;
  v5 = +[ICDeviceInfo currentDeviceInfo];
  isWatch = [v5 isWatch];

  if (isWatch)
  {
    isCharging = [powerCopy isCharging];
    v8 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (isCharging)
    {
      if (v9)
      {
        v11 = 138543362;
        selfCopy2 = self;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ - Device is plugged in - checking for artwork to download", &v11, 0xCu);
      }

      artworkImporter = MSVTCCIdentityForCurrentProcess();
      [(SubscriptionRequestHandler *)self _importAllItemArtworkWithClientIdentity:artworkImporter];
    }

    else
    {
      if (v9)
      {
        v11 = 138543362;
        selfCopy2 = self;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ - Device was unplugged from power - cancelling artwork downloads", &v11, 0xCu);
      }

      artworkImporter = [(SubscriptionRequestHandler *)self artworkImporter];
      [artworkImporter cancelAllImports];
    }
  }
}

- (void)deprioritizeSubscriptionContainerArtworkForPersistentID:(int64_t)d
{
  artworkImporter = [(SubscriptionRequestHandler *)self artworkImporter];
  [artworkImporter deprioritizeImportArtworkForCloudID:d artworkType:5];
}

- (void)deprioritizeSubscriptionScreenshotForPersistentID:(int64_t)d
{
  artworkImporter = [(SubscriptionRequestHandler *)self artworkImporter];
  [artworkImporter deprioritizeImportArtworkForCloudID:d artworkType:2];
}

- (void)deprioritizeSubscriptionItemArtworkForPersistentID:(int64_t)d
{
  artworkImporter = [(SubscriptionRequestHandler *)self artworkImporter];
  [artworkImporter deprioritizeImportArtworkForCloudID:d artworkType:1];
}

- (void)importContainerArtworkForPersistentID:(int64_t)d clientIdentity:(id)identity completionHandler:(id)handler
{
  identityCopy = identity;
  handlerCopy = handler;
  artworkImporter = [(SubscriptionRequestHandler *)self artworkImporter];
  musicLibrary = [artworkImporter musicLibrary];

  [musicLibrary setClientIdentity:identityCopy];
  v12 = [ML3Container newWithPersistentID:d inLibrary:musicLibrary];
  v13 = [[ML3ArtworkTokenSet alloc] initWithEntity:v12 artworkType:5];
  v14 = [v13 artworkTokenForSource:600];
  if ([v14 length])
  {
    v15 = +[ICCloudAvailabilityController sharedController];
    isCellularDataRestrictedForMusic = [v15 isCellularDataRestrictedForMusic];

    artworkImporter2 = [(SubscriptionRequestHandler *)self artworkImporter];
    [artworkImporter2 importArtworkForCloudID:d artworkType:5 token:v14 mediaType:8 allowsCellularData:isCellularDataRestrictedForMusic ^ 1 clientIdentity:identityCopy completionHandler:handlerCopy];
  }

  else if (handlerCopy)
  {
    v18 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      *buf = 134217984;
      dCopy = d;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_FAULT, "No subscription artwork_token for item with persistent-id = %lld", buf, 0xCu);
    }

    v19 = [NSString stringWithFormat:@"No subscription artwork_token for item with persistent-id = %lld", d];
    v22 = NSLocalizedDescriptionKey;
    v23 = v19;
    v20 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v21 = [NSError ic_cloudClientErrorWithCode:2008 userInfo:v20];

    handlerCopy[2](handlerCopy, v21);
  }
}

- (void)importScreenshotForPersistentID:(int64_t)d clientIdentity:(id)identity completionHandler:(id)handler
{
  identityCopy = identity;
  handlerCopy = handler;
  artworkImporter = [(SubscriptionRequestHandler *)self artworkImporter];
  musicLibrary = [artworkImporter musicLibrary];

  [musicLibrary setClientIdentity:identityCopy];
  v12 = [ML3Track newWithPersistentID:d inLibrary:musicLibrary];
  v13 = [[ML3ArtworkTokenSet alloc] initWithEntity:v12 artworkType:2];
  v14 = [v13 artworkTokenForSource:600];
  if ([v14 length])
  {
    [v12 valueForProperty:ML3TrackPropertyMediaType];
    v31 = v14;
    v15 = musicLibrary;
    v16 = v12;
    dCopy = d;
    v18 = v13;
    v19 = identityCopy;
    v21 = v20 = handlerCopy;
    unsignedIntValue = [v21 unsignedIntValue];

    v23 = +[ICCloudAvailabilityController sharedController];
    isCellularDataRestrictedForMusic = [v23 isCellularDataRestrictedForMusic];

    handlerCopy = v20;
    identityCopy = v19;
    v13 = v18;
    artworkImporter2 = [(SubscriptionRequestHandler *)self artworkImporter];
    v26 = dCopy;
    v12 = v16;
    musicLibrary = v15;
    v14 = v31;
    [artworkImporter2 importArtworkForCloudID:v26 artworkType:2 token:v31 mediaType:unsignedIntValue allowsCellularData:isCellularDataRestrictedForMusic ^ 1 clientIdentity:identityCopy completionHandler:handlerCopy];
  }

  else if (handlerCopy)
  {
    v27 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
    if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
    {
      *buf = 134217984;
      dCopy2 = d;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_FAULT, "No subscription artwork_token for item with persistent-id = %lld", buf, 0xCu);
    }

    v28 = [NSString stringWithFormat:@"No subscription screenshot_token for item with persistent-id = %lld", d];
    v32 = NSLocalizedDescriptionKey;
    v33 = v28;
    v29 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    v30 = [NSError ic_cloudClientErrorWithCode:2008 userInfo:v29];

    handlerCopy[2](handlerCopy, v30);
  }
}

- (void)importItemArtworkForPersistentID:(int64_t)d clientIdentity:(id)identity completionHandler:(id)handler
{
  identityCopy = identity;
  handlerCopy = handler;
  artworkImporter = [(SubscriptionRequestHandler *)self artworkImporter];
  musicLibrary = [artworkImporter musicLibrary];

  [musicLibrary setClientIdentity:identityCopy];
  v12 = [ML3Track newWithPersistentID:d inLibrary:musicLibrary];
  v13 = [[ML3ArtworkTokenSet alloc] initWithEntity:v12 artworkType:1];
  v14 = [v13 artworkTokenForSource:600];
  if ([v14 length])
  {
    [v12 valueForProperty:ML3TrackPropertyMediaType];
    v31 = v14;
    v15 = musicLibrary;
    v16 = v12;
    dCopy = d;
    v18 = v13;
    v19 = identityCopy;
    v21 = v20 = handlerCopy;
    unsignedIntValue = [v21 unsignedIntValue];

    v23 = +[ICCloudAvailabilityController sharedController];
    isCellularDataRestrictedForMusic = [v23 isCellularDataRestrictedForMusic];

    handlerCopy = v20;
    identityCopy = v19;
    v13 = v18;
    artworkImporter2 = [(SubscriptionRequestHandler *)self artworkImporter];
    v26 = dCopy;
    v12 = v16;
    musicLibrary = v15;
    v14 = v31;
    [artworkImporter2 importArtworkForCloudID:v26 artworkType:1 token:v31 mediaType:unsignedIntValue allowsCellularData:isCellularDataRestrictedForMusic ^ 1 clientIdentity:identityCopy completionHandler:handlerCopy];
  }

  else if (handlerCopy)
  {
    v27 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
    if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
    {
      *buf = 134217984;
      dCopy2 = d;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_FAULT, "No subscription artwork_token for item with persistent-id = %lld", buf, 0xCu);
    }

    v28 = [NSString stringWithFormat:@"No subscription artwork_token for item with persistent-id = %lld", d];
    v32 = NSLocalizedDescriptionKey;
    v33 = v28;
    v29 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    v30 = [NSError ic_cloudClientErrorWithCode:2008 userInfo:v29];

    handlerCopy[2](handlerCopy, v30);
  }
}

- (SubscriptionRequestHandler)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v12.receiver = self;
  v12.super_class = SubscriptionRequestHandler;
  v6 = [(SubscriptionRequestHandler *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, configuration);
    v8 = [[CloudArtworkImporter alloc] initWithConfiguration:configurationCopy sourceType:600];
    artworkImporter = v7->_artworkImporter;
    v7->_artworkImporter = v8;

    v10 = +[ICEnvironmentMonitor sharedMonitor];
    [v10 registerObserver:v7];
  }

  return v7;
}

@end