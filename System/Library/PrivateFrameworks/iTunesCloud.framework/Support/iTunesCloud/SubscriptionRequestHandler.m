@interface SubscriptionRequestHandler
- (SubscriptionRequestHandler)initWithConfiguration:(id)a3;
- (void)_importAllItemArtworkWithClientIdentity:(id)a3;
- (void)_loadArtworkInfoForSubscriptionPersistentIDs:(id)a3 artworkType:(int64_t)a4 entityType:(int64_t)a5 clientIdentity:(id)a6 completionHandler:(id)a7;
- (void)cancelOperationsWithCompletionHandler:(id)a3;
- (void)deprioritizeSubscriptionContainerArtworkForPersistentID:(int64_t)a3;
- (void)deprioritizeSubscriptionItemArtworkForPersistentID:(int64_t)a3;
- (void)deprioritizeSubscriptionScreenshotForPersistentID:(int64_t)a3;
- (void)environmentMonitorDidChangePower:(id)a3;
- (void)importContainerArtworkForPersistentID:(int64_t)a3 clientIdentity:(id)a4 completionHandler:(id)a5;
- (void)importItemArtworkForPersistentID:(int64_t)a3 clientIdentity:(id)a4 completionHandler:(id)a5;
- (void)importScreenshotForPersistentID:(int64_t)a3 clientIdentity:(id)a4 completionHandler:(id)a5;
@end

@implementation SubscriptionRequestHandler

- (void)cancelOperationsWithCompletionHandler:(id)a3
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
      v12 = self;
      v13 = 2114;
      v14 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}@ - Failed to remove the shared enhanced audio keys. err=%{public}@", buf, 0x16u);
    }
  }

  v9 = [(SubscriptionRequestHandler *)self artworkImporter];
  [v9 cancelAllImportsAndWaitForOperationsToFinish:0];
}

- (void)_importAllItemArtworkWithClientIdentity:(id)a3
{
  v4 = a3;
  v5 = [(SubscriptionRequestHandler *)self artworkImporter];
  v6 = [v5 musicLibrary];

  [v6 setClientIdentity:v4];
  v7 = +[ICCloudAvailabilityController sharedController];
  v8 = [v7 isCellularDataRestrictedForMusic] ^ 1;

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001052EC;
  v10[3] = &unk_1001DF530;
  v13 = v8;
  v11 = v4;
  v12 = self;
  v9 = v4;
  [v6 databaseConnectionAllowingWrites:0 withBlock:v10];
}

- (void)_loadArtworkInfoForSubscriptionPersistentIDs:(id)a3 artworkType:(int64_t)a4 entityType:(int64_t)a5 clientIdentity:(id)a6 completionHandler:(id)a7
{
  v11 = a3;
  v39 = a6;
  v37 = self;
  v38 = a7;
  v12 = [(SubscriptionRequestHandler *)self artworkImporter];
  v44 = [v12 musicLibrary];

  [v44 setClientIdentity:v39];
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
  if (a5 == 1)
  {
    v13 = objc_opt_class();
    v42 = ML3ContainerPropertyStoreCloudID;
    v14 = objc_opt_class();
    goto LABEL_5;
  }

  if (!a5)
  {
    v13 = objc_opt_class();
    v42 = ML3TrackPropertyStoreSagaID;
    v14 = objc_opt_class();
LABEL_5:
    v36 = v14;
    goto LABEL_7;
  }

  v74 = NSLocalizedDescriptionKey;
  v15 = [NSString stringWithFormat:@"%@ Unsupported entity type %ld for subscription artwork info", self, a5];
  v75 = v15;
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
  obj = v11;
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

        v22 = [v13 newWithPersistentID:objc_msgSend(*(*(&v57 + 1) + 8 * i) inLibrary:{"longLongValue"), v44}];
        v23 = [[ML3ArtworkTokenSet alloc] initWithEntity:v22 artworkType:a4];
        v24 = [v23 artworkTokenForSource:600];
        v25 = [NSURL URLWithString:v24];
        v26 = v25;
        if (v25 && ([v25 resourceSpecifier], v27 = objc_claimAutoreleasedReturnValue(), v28 = objc_msgSend(v27, "rangeOfString:", @"//") == 0, v27, v28))
        {
          v30 = [v26 absoluteString];
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
  v31 = v38;
  v54 = v31;
  v32 = objc_retainBlock(v53);
  if ([v40 count] && !v62[5])
  {
    v33 = [v36 alloc];
    v34 = [(SubscriptionRequestHandler *)v37 configuration];
    v35 = [v33 initWithConfiguration:v34 cloudIDs:v40];

    objc_initWeak(&location, v35);
    v45[0] = _NSConcreteStackBlock;
    v45[1] = 3221225472;
    v45[2] = sub_100105BBC;
    v45[3] = &unk_1001DE4E8;
    v46 = v40;
    objc_copyWeak(&v51, &location);
    v47 = v37;
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

- (void)environmentMonitorDidChangePower:(id)a3
{
  v4 = a3;
  v5 = +[ICDeviceInfo currentDeviceInfo];
  v6 = [v5 isWatch];

  if (v6)
  {
    v7 = [v4 isCharging];
    v8 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (v9)
      {
        v11 = 138543362;
        v12 = self;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ - Device is plugged in - checking for artwork to download", &v11, 0xCu);
      }

      v10 = MSVTCCIdentityForCurrentProcess();
      [(SubscriptionRequestHandler *)self _importAllItemArtworkWithClientIdentity:v10];
    }

    else
    {
      if (v9)
      {
        v11 = 138543362;
        v12 = self;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ - Device was unplugged from power - cancelling artwork downloads", &v11, 0xCu);
      }

      v10 = [(SubscriptionRequestHandler *)self artworkImporter];
      [v10 cancelAllImports];
    }
  }
}

- (void)deprioritizeSubscriptionContainerArtworkForPersistentID:(int64_t)a3
{
  v4 = [(SubscriptionRequestHandler *)self artworkImporter];
  [v4 deprioritizeImportArtworkForCloudID:a3 artworkType:5];
}

- (void)deprioritizeSubscriptionScreenshotForPersistentID:(int64_t)a3
{
  v4 = [(SubscriptionRequestHandler *)self artworkImporter];
  [v4 deprioritizeImportArtworkForCloudID:a3 artworkType:2];
}

- (void)deprioritizeSubscriptionItemArtworkForPersistentID:(int64_t)a3
{
  v4 = [(SubscriptionRequestHandler *)self artworkImporter];
  [v4 deprioritizeImportArtworkForCloudID:a3 artworkType:1];
}

- (void)importContainerArtworkForPersistentID:(int64_t)a3 clientIdentity:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(SubscriptionRequestHandler *)self artworkImporter];
  v11 = [v10 musicLibrary];

  [v11 setClientIdentity:v8];
  v12 = [ML3Container newWithPersistentID:a3 inLibrary:v11];
  v13 = [[ML3ArtworkTokenSet alloc] initWithEntity:v12 artworkType:5];
  v14 = [v13 artworkTokenForSource:600];
  if ([v14 length])
  {
    v15 = +[ICCloudAvailabilityController sharedController];
    v16 = [v15 isCellularDataRestrictedForMusic];

    v17 = [(SubscriptionRequestHandler *)self artworkImporter];
    [v17 importArtworkForCloudID:a3 artworkType:5 token:v14 mediaType:8 allowsCellularData:v16 ^ 1 clientIdentity:v8 completionHandler:v9];
  }

  else if (v9)
  {
    v18 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      *buf = 134217984;
      v25 = a3;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_FAULT, "No subscription artwork_token for item with persistent-id = %lld", buf, 0xCu);
    }

    v19 = [NSString stringWithFormat:@"No subscription artwork_token for item with persistent-id = %lld", a3];
    v22 = NSLocalizedDescriptionKey;
    v23 = v19;
    v20 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v21 = [NSError ic_cloudClientErrorWithCode:2008 userInfo:v20];

    v9[2](v9, v21);
  }
}

- (void)importScreenshotForPersistentID:(int64_t)a3 clientIdentity:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(SubscriptionRequestHandler *)self artworkImporter];
  v11 = [v10 musicLibrary];

  [v11 setClientIdentity:v8];
  v12 = [ML3Track newWithPersistentID:a3 inLibrary:v11];
  v13 = [[ML3ArtworkTokenSet alloc] initWithEntity:v12 artworkType:2];
  v14 = [v13 artworkTokenForSource:600];
  if ([v14 length])
  {
    [v12 valueForProperty:ML3TrackPropertyMediaType];
    v31 = v14;
    v15 = v11;
    v16 = v12;
    v17 = a3;
    v18 = v13;
    v19 = v8;
    v21 = v20 = v9;
    v22 = [v21 unsignedIntValue];

    v23 = +[ICCloudAvailabilityController sharedController];
    v24 = [v23 isCellularDataRestrictedForMusic];

    v9 = v20;
    v8 = v19;
    v13 = v18;
    v25 = [(SubscriptionRequestHandler *)self artworkImporter];
    v26 = v17;
    v12 = v16;
    v11 = v15;
    v14 = v31;
    [v25 importArtworkForCloudID:v26 artworkType:2 token:v31 mediaType:v22 allowsCellularData:v24 ^ 1 clientIdentity:v8 completionHandler:v9];
  }

  else if (v9)
  {
    v27 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
    if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
    {
      *buf = 134217984;
      v35 = a3;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_FAULT, "No subscription artwork_token for item with persistent-id = %lld", buf, 0xCu);
    }

    v28 = [NSString stringWithFormat:@"No subscription screenshot_token for item with persistent-id = %lld", a3];
    v32 = NSLocalizedDescriptionKey;
    v33 = v28;
    v29 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    v30 = [NSError ic_cloudClientErrorWithCode:2008 userInfo:v29];

    v9[2](v9, v30);
  }
}

- (void)importItemArtworkForPersistentID:(int64_t)a3 clientIdentity:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(SubscriptionRequestHandler *)self artworkImporter];
  v11 = [v10 musicLibrary];

  [v11 setClientIdentity:v8];
  v12 = [ML3Track newWithPersistentID:a3 inLibrary:v11];
  v13 = [[ML3ArtworkTokenSet alloc] initWithEntity:v12 artworkType:1];
  v14 = [v13 artworkTokenForSource:600];
  if ([v14 length])
  {
    [v12 valueForProperty:ML3TrackPropertyMediaType];
    v31 = v14;
    v15 = v11;
    v16 = v12;
    v17 = a3;
    v18 = v13;
    v19 = v8;
    v21 = v20 = v9;
    v22 = [v21 unsignedIntValue];

    v23 = +[ICCloudAvailabilityController sharedController];
    v24 = [v23 isCellularDataRestrictedForMusic];

    v9 = v20;
    v8 = v19;
    v13 = v18;
    v25 = [(SubscriptionRequestHandler *)self artworkImporter];
    v26 = v17;
    v12 = v16;
    v11 = v15;
    v14 = v31;
    [v25 importArtworkForCloudID:v26 artworkType:1 token:v31 mediaType:v22 allowsCellularData:v24 ^ 1 clientIdentity:v8 completionHandler:v9];
  }

  else if (v9)
  {
    v27 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
    if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
    {
      *buf = 134217984;
      v35 = a3;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_FAULT, "No subscription artwork_token for item with persistent-id = %lld", buf, 0xCu);
    }

    v28 = [NSString stringWithFormat:@"No subscription artwork_token for item with persistent-id = %lld", a3];
    v32 = NSLocalizedDescriptionKey;
    v33 = v28;
    v29 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    v30 = [NSError ic_cloudClientErrorWithCode:2008 userInfo:v29];

    v9[2](v9, v30);
  }
}

- (SubscriptionRequestHandler)initWithConfiguration:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = SubscriptionRequestHandler;
  v6 = [(SubscriptionRequestHandler *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, a3);
    v8 = [[CloudArtworkImporter alloc] initWithConfiguration:v5 sourceType:600];
    artworkImporter = v7->_artworkImporter;
    v7->_artworkImporter = v8;

    v10 = +[ICEnvironmentMonitor sharedMonitor];
    [v10 registerObserver:v7];
  }

  return v7;
}

@end