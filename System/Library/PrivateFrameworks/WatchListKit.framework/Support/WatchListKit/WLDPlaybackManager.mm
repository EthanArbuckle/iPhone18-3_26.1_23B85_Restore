@interface WLDPlaybackManager
+ (id)sharedManager;
- (BOOL)_isDirectPlaybackReportingDisabled;
- (BOOL)_isDirectoryPresentAndNonEmpty:(id)empty;
- (BOOL)_offlineValidation:(id)validation;
- (BOOL)_serialize:(id)_serialize;
- (BOOL)_shouldPromptForBundleID:(id)d outAccessStatus:(unint64_t *)status;
- (WLDPlaybackManager)init;
- (id)_getLastSummaryBySessionID:(id)d;
- (id)_getReporterBySessionID:(id)d isLive:(BOOL)live;
- (id)_getSessionReporterBySessionID:(id)d;
- (id)_queueDir;
- (id)_queuePathForSummary:(id)summary;
- (id)queue;
- (id)reporter;
- (void)_catalogSummary:(id)summary;
- (void)_cleanupSummary:(id)summary;
- (void)_endSession:(id)session;
- (void)_enqueuePendingReports;
- (void)_enqueuePlaybackSummary:(id)summary sessionID:(id)d serialize:(BOOL)serialize;
- (void)_handleDirectPlaybackAppTermination:(id)termination;
- (void)_handleReporting:(id)reporting summary:(id)summary sessionIDKey:(id)key isFirstParty:(BOOL)party;
- (void)_handleReportingError:(id)error forSummary:(id)summary;
- (void)_networkReachabilityChanged:(id)changed;
- (void)_onlineValidation:(id)validation completion:(id)completion;
- (void)_promptForBundleID:(id)d completionHandler:(id)handler;
- (void)_removeLastSummaryBySessionID:(id)d;
- (void)_removeReporterBySessionID:(id)d;
- (void)_scanForPendingReports;
- (void)_setLastSummaryBySessionID:(id)d sessionID:(id)iD;
- (void)_setSessionReporter:(id)reporter sessionID:(id)d;
- (void)checkPendingReports;
- (void)dealloc;
- (void)fetchDecoratedNowPlayingSummaries:(id)summaries;
- (void)fetchNowPlayingSummaries:(id)summaries;
- (void)handleDirectPlaybackSummary:(id)summary sessionID:(id)d;
- (void)handlePlaybackSummary:(id)summary sessionID:(id)d;
- (void)handleSubscriptionRegistration;
- (void)requestToPromptForBundleID:(id)d completionHandler:(id)handler;
@end

@implementation WLDPlaybackManager

+ (id)sharedManager
{
  if (sharedManager___once != -1)
  {
    +[WLDPlaybackManager sharedManager];
  }

  v3 = sharedManager___sharedManager;

  return v3;
}

- (void)checkPendingReports
{
  NSLog(@"WLDPlaybackManager: asked to check pending reports", a2);

  [(WLDPlaybackManager *)self _enqueuePendingReports];
}

- (id)queue
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  queue = selfCopy->_queue;
  if (!queue)
  {
    v4 = objc_alloc_init(NSOperationQueue);
    v5 = selfCopy->_queue;
    selfCopy->_queue = v4;

    [(NSOperationQueue *)selfCopy->_queue setName:@"com.apple.watchlistd.PlaybackManagerQueue"];
    [(NSOperationQueue *)selfCopy->_queue setMaxConcurrentOperationCount:1];
    queue = selfCopy->_queue;
  }

  v6 = queue;
  objc_sync_exit(selfCopy);

  return v6;
}

- (void)_scanForPendingReports
{
  obj = self;
  objc_sync_enter(obj);
  if (obj->_isReportScanningHappening)
  {
    NSLog(@"WLDPlaybackManager: _scanForPendingReports currently happening. Will skip.");
    objc_sync_exit(obj);

    return;
  }

  obj->_isReportScanningHappening = 1;
  objc_sync_exit(obj);

  NSLog(@"WLDPlaybackManager: scanning for pending reports");
  _queueDir = [(WLDPlaybackManager *)obj _queueDir];
  v2 = +[NSFileManager defaultManager];
  v3 = [v2 fileExistsAtPath:_queueDir];

  if ((v3 & 1) == 0)
  {
    v45 = obj;
    objc_sync_enter(v45);
    obj->_isReportScanningHappening = 0;
    objc_sync_exit(v45);

    goto LABEL_50;
  }

  v4 = +[NSFileManager defaultManager];
  v5 = [NSURL fileURLWithPath:_queueDir];
  v77[0] = NSURLNameKey;
  v77[1] = NSURLIsDirectoryKey;
  v6 = [NSArray arrayWithObjects:v77 count:2];
  v7 = [v4 enumeratorAtURL:v5 includingPropertiesForKeys:v6 options:4 errorHandler:&__block_literal_global_287];

  v46 = +[NSMutableArray array];
  v51 = +[NSMutableArray array];
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v54 = v7;
  v8 = [v54 countByEnumeratingWithState:&v70 objects:v76 count:16];
  if (!v8)
  {
    goto LABEL_32;
  }

  v9 = *v71;
  do
  {
    v10 = 0;
    do
    {
      if (*v71 != v9)
      {
        objc_enumerationMutation(v54);
      }

      v11 = *(*(&v70 + 1) + 8 * v10);
      v69 = 0;
      [v11 getResourceValue:&v69 forKey:NSURLIsDirectoryKey error:0];
      v12 = v69;
      if (([v12 BOOLValue] & 1) == 0)
      {
        v13 = +[NSFileManager defaultManager];
        path = [v11 path];
        v68 = 0;
        v15 = [v13 attributesOfItemAtPath:path error:&v68];
        v16 = v68;

        if (v16)
        {
          NSLog(@"WLDPlaybackManager: _scanForPendingReports attributesOfItemAtPath error: %@", v16);

LABEL_14:
          goto LABEL_15;
        }

        if (!v15)
        {
          NSLog(@"WLDPlaybackManager: _scanForPendingReports attributesOfItemAtPath error: %@", 0);
          goto LABEL_14;
        }

        v17 = +[NSDate date];
        v18 = [v15 objectForKey:NSFileModificationDate];
        [v17 timeIntervalSinceDate:v18];
        v20 = v19;

        if (obj->_maximumAgeForReport < v20)
        {
          NSLog(@"WLDPlaybackManager: The last modified time (%f) is greater than max age (%lu). Will delete report.", *&v20, obj->_maximumAgeForReport);
          v21 = +[NSFileManager defaultManager];
          path2 = [v11 path];
          [v21 removeItemAtPath:path2 error:0];

          goto LABEL_14;
        }

        path3 = [v11 path];
        v24 = [NSData dataWithContentsOfFile:path3];

        v25 = [NSKeyedUnarchiver alloc];
        v67 = 0;
        v26 = [v25 initForReadingFromData:v24 error:&v67];
        v27 = v67;
        v53 = v27;
        if (v27)
        {
          NSLog(@"WLDPlaybackManager: _scanForPendingReports secure unarchiver error: %@", v27);
          goto LABEL_29;
        }

        v52 = [v26 decodeObjectOfClass:objc_opt_class() forKey:NSKeyedArchiveRootObjectKey];
        if (v52)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            accountIDAsNumber = [v52 accountIDAsNumber];
            v48 = [TVAppAccountStoreObjC accountWithDSID:accountIDAsNumber];

            if (v48)
            {
              [v46 addObject:v52];

              goto LABEL_30;
            }

            accountIDAsNumber2 = [v52 accountIDAsNumber];
            NSLog(@"WLDPlaybackManager: _scanForPendingReports no iTunes account for ID: %@", accountIDAsNumber2);
          }
        }

LABEL_29:
        [v51 addObject:v11];
LABEL_30:

        goto LABEL_14;
      }

LABEL_15:

      v10 = v10 + 1;
    }

    while (v8 != v10);
    v28 = [v54 countByEnumeratingWithState:&v70 objects:v76 count:16];
    v8 = v28;
  }

  while (v28);
LABEL_32:

  v65 = 0u;
  v66 = 0u;
  v64 = 0u;
  v63 = 0u;
  v29 = v51;
  v30 = [v29 countByEnumeratingWithState:&v63 objects:v75 count:16];
  if (v30)
  {
    v31 = *v64;
    do
    {
      for (i = 0; i != v30; i = i + 1)
      {
        if (*v64 != v31)
        {
          objc_enumerationMutation(v29);
        }

        v33 = *(*(&v63 + 1) + 8 * i);
        NSLog(@"WLDPlaybackManager: Deleting invalid item: %@", v33);
        v34 = +[NSFileManager defaultManager];
        [v34 removeItemAtURL:v33 error:0];
      }

      v30 = [v29 countByEnumeratingWithState:&v63 objects:v75 count:16];
    }

    while (v30);
  }

  v35 = +[WLKReachabilityMonitor sharedInstance];
  isNetworkReachable = [v35 isNetworkReachable];

  if (isNetworkReachable)
  {
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v37 = v46;
    v38 = [v37 countByEnumeratingWithState:&v59 objects:v74 count:16];
    if (v38)
    {
      v39 = *v60;
      do
      {
        for (j = 0; j != v38; j = j + 1)
        {
          if (*v60 != v39)
          {
            objc_enumerationMutation(v37);
          }

          v41 = *(*(&v59 + 1) + 8 * j);
          NSLog(@"WLDPlaybackManager: Found pending playback report. Enqueuing.");
          [(WLDPlaybackManager *)obj _enqueuePlaybackSummary:v41 sessionID:@"DefaultPlaybackSessionID" serialize:0];
        }

        v38 = [v37 countByEnumeratingWithState:&v59 objects:v74 count:16];
      }

      while (v38);
    }
  }

  v42 = obj;
  objc_sync_enter(v42);
  obj->_isReportScanningHappening = 0;
  objc_sync_exit(v42);

  objc_initWeak(&location, v42);
  v56[0] = _NSConcreteStackBlock;
  v56[1] = 3221225472;
  v56[2] = __44__WLDPlaybackManager__scanForPendingReports__block_invoke_2;
  v56[3] = &unk_1000456C0;
  objc_copyWeak(&v57, &location);
  v56[4] = v42;
  v43 = [NSBlockOperation blockOperationWithBlock:v56];
  queue = [(WLDPlaybackManager *)v42 queue];
  [queue addOperation:v43];

  objc_destroyWeak(&v57);
  objc_destroyWeak(&location);

LABEL_50:
}

- (id)_queueDir
{
  v3 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  firstObject = [v3 firstObject];

  v5 = [firstObject stringByAppendingPathComponent:@"com.apple.watchlistd"];

  v6 = [v5 stringByAppendingPathComponent:@"pending"];

  if ([(WLDPlaybackManager *)self _isDirectoryPresentAndNonEmpty:v6])
  {
    v7 = v6;
  }

  else
  {
    v8 = WLKDefaultSupportPath();
    v9 = [v8 stringByAppendingPathComponent:@"com.apple.watchlistd"];

    v7 = [v9 stringByAppendingPathComponent:@"pending"];

    NSLog(@"WLDPlaybackManager: _queueDir using path %@ for pending reports.", v7);
  }

  return v7;
}

- (void)_enqueuePendingReports
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __44__WLDPlaybackManager__enqueuePendingReports__block_invoke;
  v5[3] = &unk_100044DB8;
  v5[4] = self;
  v3 = [WLDTransactionBlockOperation blockOperationWithBlock:v5];
  queue = [(WLDPlaybackManager *)self queue];
  [queue addOperation:v3];
}

void __35__WLDPlaybackManager_sharedManager__block_invoke(id a1)
{
  sharedManager___sharedManager = objc_alloc_init(WLDPlaybackManager);

  _objc_release_x1();
}

- (WLDPlaybackManager)init
{
  v30.receiver = self;
  v30.super_class = WLDPlaybackManager;
  v2 = [(WLDPlaybackManager *)&v30 init];
  if (v2)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    v4 = WLKReachabilityMonitorReachabilityDidChange;
    v5 = +[WLKReachabilityMonitor sharedInstance];
    [v3 addObserver:v2 selector:"_networkReachabilityChanged:" name:v4 object:v5];

    v6 = objc_alloc_init(NSMutableDictionary);
    reporterDictionary = v2->_reporterDictionary;
    v2->_reporterDictionary = v6;

    v8 = objc_alloc_init(NSMutableDictionary);
    lastSummaryDictionary = v2->_lastSummaryDictionary;
    v2->_lastSummaryDictionary = v8;

    v10 = objc_alloc_init(NSMutableSet);
    directPlayClientList = v2->_directPlayClientList;
    v2->_directPlayClientList = v10;

    v12 = [NSUserDefaults alloc];
    v13 = [v12 initWithSuiteName:WLKDefaultsDomain];
    v2->_disableDirectPlaybackReporting = [v13 BOOLForKey:@"DisableDirectPlaybackReporting"];
    v14 = [NSUserDefaults alloc];
    v15 = WLKTVAppBundleID();
    v16 = [v14 initWithSuiteName:v15];

    v17 = [v16 integerForKey:@"PlaybackManagerUserDefaultsKeyMaximumAgeForReport"];
    v18 = 1209600;
    if (v17)
    {
      v18 = v17;
    }

    v2->_maximumAgeForReport = v18;
    v2->_isReportScanningHappening = 0;
    [(WLDPlaybackManager *)v2 _enqueuePendingReports];
    v28[0] = 0;
    v28[1] = v28;
    v28[2] = 0x3032000000;
    v28[3] = __Block_byref_object_copy__1;
    v28[4] = __Block_byref_object_dispose__1;
    v19 = v2;
    v29 = v19;
    v20 = [WLDPlaybackNowPlayingObserver alloc];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = __26__WLDPlaybackManager_init__block_invoke;
    v25[3] = &unk_1000453D0;
    v27 = v28;
    v21 = v19;
    v26 = v21;
    v22 = [(WLDPlaybackNowPlayingObserver *)v20 initWithUpdateHandler:v25];
    nowPlayingObserver = v21->_nowPlayingObserver;
    v21->_nowPlayingObserver = v22;

    _Block_object_dispose(v28, 8);
  }

  return v2;
}

void __26__WLDPlaybackManager_init__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = *(*(*(a1 + 40) + 8) + 40);
  if (v6)
  {
    v7 = [v10 bundleID];
    if ([*(*(a1 + 32) + 64) containsObject:v7])
    {
      HasBoolValueForEntitlement = 1;
    }

    else
    {
      HasBoolValueForEntitlement = WLDBundleHasBoolValueForEntitlement(v7, WLKEntitlementPlaybackReport);
    }

    if ([*(a1 + 32) _isDirectPlaybackReportingDisabled])
    {
      NSLog(@"WLDPlaybackManager:UpdateHandler Direct-reporting is disabled by user defaults");
    }

    if (HasBoolValueForEntitlement && ([*(a1 + 32) _isDirectPlaybackReportingDisabled] & 1) == 0)
    {
      if (([*(*(a1 + 32) + 64) containsObject:v7] & 1) == 0)
      {
        if ([*(*(a1 + 32) + 64) count] <= 0xA)
        {
          [*(*(a1 + 32) + 64) addObject:v7];
        }

        NSLog(@"WLDPlaybackManager: Ignoring MediaRemote NPI updates for %@; application supports direct-reporting!", v7);
      }
    }

    else
    {
      v9 = [[WLKTransactionScope alloc] initWithIdentifier:@"WLDPlaybackNowPlayingObserver.updateHandler"];
      [*(*(*(a1 + 40) + 8) + 40) handlePlaybackSummary:v10 sessionID:v5];
    }
  }
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = WLDPlaybackManager;
  [(WLDPlaybackManager *)&v4 dealloc];
}

- (void)handleDirectPlaybackSummary:(id)summary sessionID:(id)d
{
  summaryCopy = summary;
  dCopy = d;
  if ([(WLDPlaybackManager *)self _isDirectPlaybackReportingDisabled])
  {
    NSLog(@"WLDPlaybackManager: Direct playback reporting is disabled by user default");
  }

  else
  {
    bundleID = [summaryCopy bundleID];
    if (bundleID)
    {
      bundleID2 = [(WLDPlaybackDirectPlayObserver *)self->_directPlayObserver bundleID];
      v10 = [bundleID2 isEqualToString:bundleID];

      if ((v10 & 1) == 0)
      {
        NSLog(@"WLDPlaybackManager: Creating directPlay observer for %@", bundleID);
        v11 = [[WLDPlaybackDirectPlayObserver alloc] initWithBundleID:bundleID];
        v15[0] = _NSConcreteStackBlock;
        v15[1] = 3221225472;
        v15[2] = __60__WLDPlaybackManager_handleDirectPlaybackSummary_sessionID___block_invoke;
        v15[3] = &unk_1000453F8;
        v15[4] = self;
        v16 = bundleID;
        [(WLDPlaybackDirectPlayObserver *)v11 setUpdateHandler:v15];
        directPlayObserver = self->_directPlayObserver;
        self->_directPlayObserver = v11;
        v13 = v11;
      }

      [(WLDPlaybackManager *)self _enqueuePlaybackSummary:summaryCopy sessionID:dCopy serialize:1];
      v14 = +[WLDFederatedPunchoutReporter sharedFederatedPunchoutReporter];
      [v14 recordPlaybackSummary:summaryCopy];
    }
  }
}

id *__60__WLDPlaybackManager_handleDirectPlaybackSummary_sessionID___block_invoke(id *result, char a2)
{
  if ((a2 & 1) == 0)
  {
    return [result[4] _handleDirectPlaybackAppTermination:result[5]];
  }

  return result;
}

- (void)handlePlaybackSummary:(id)summary sessionID:(id)d
{
  summaryCopy = summary;
  dCopy = d;
  v7 = +[WLDFederatedPunchoutReporter sharedFederatedPunchoutReporter];
  [v7 recordPlaybackSummary:summaryCopy];

  v8 = +[WLKChannelUtilities sharedInstanceFiltered];
  bundleID = [summaryCopy bundleID];
  v10 = [v8 channelForBundleID:bundleID];

  rateLimit = [v10 rateLimit];
  v12 = [rateLimit objectForKey:WLKChannelDetailsKeyRateLimitRateKey];
  unsignedIntegerValue = [v12 unsignedIntegerValue];

  rateLimit2 = [v10 rateLimit];
  v15 = [rateLimit2 objectForKey:WLKChannelDetailsKeyRateLimitBurstKey];
  unsignedIntegerValue2 = [v15 unsignedIntegerValue];

  if (!unsignedIntegerValue)
  {
    goto LABEL_8;
  }

  if (!unsignedIntegerValue2)
  {
    goto LABEL_8;
  }

  v17 = [(WLDPlaybackManager *)self _getLastSummaryBySessionID:dCopy];
  v18 = [v17 isEquivalentToSummaryExcludingCursor:summaryCopy];

  if (!v18)
  {
    goto LABEL_8;
  }

  rateLimiter = self->_rateLimiter;
  if (rateLimiter)
  {
    [(WLDRateLimiter *)rateLimiter setRate:unsignedIntegerValue];
    [(WLDRateLimiter *)self->_rateLimiter setBurst:unsignedIntegerValue2];
  }

  else
  {
    v20 = [[WLDRateLimiter alloc] initWithRate:unsignedIntegerValue burst:unsignedIntegerValue2];
    v21 = self->_rateLimiter;
    self->_rateLimiter = v20;
  }

  if (![(WLDRateLimiter *)self->_rateLimiter doOperation])
  {
    rateLimit3 = [v10 rateLimit];
    NSLog(@"WLDPlaybackManager: dropping report. Exceeded rate limit %@ %@", rateLimit3, summaryCopy);
  }

  else
  {
LABEL_8:
    [(WLDPlaybackManager *)self _enqueuePlaybackSummary:summaryCopy sessionID:dCopy serialize:1];
  }
}

- (void)fetchNowPlayingSummaries:(id)summaries
{
  summariesCopy = summaries;
  v5 = dispatch_get_global_queue(0, 0);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __47__WLDPlaybackManager_fetchNowPlayingSummaries___block_invoke;
  v7[3] = &unk_100044FC8;
  v7[4] = self;
  v8 = summariesCopy;
  v6 = summariesCopy;
  dispatch_async(v5, v7);
}

void __47__WLDPlaybackManager_fetchNowPlayingSummaries___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) nowPlayingObserver];
  v4 = [v2 nowPlayingSummaries];

  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, v4);
  }
}

- (void)fetchDecoratedNowPlayingSummaries:(id)summaries
{
  summariesCopy = summaries;
  v4 = self->_lastSummaryDictionary;
  objc_sync_enter(v4);
  v20 = [(NSMutableDictionary *)self->_lastSummaryDictionary mutableCopy];
  objc_sync_exit(v4);

  nowPlayingObserver = [(WLDPlaybackManager *)self nowPlayingObserver];
  nowPlayingSummaries = [nowPlayingObserver nowPlayingSummaries];

  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__1;
  v38 = __Block_byref_object_dispose__1;
  v39 = 0;
  if (nowPlayingSummaries && [nowPlayingSummaries count])
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    obj = nowPlayingSummaries;
    v6 = [obj countByEnumeratingWithState:&v30 objects:v40 count:16];
    if (v6)
    {
      v7 = *v31;
      v8 = 1;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v31 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v30 + 1) + 8 * i);
          v29[0] = _NSConcreteStackBlock;
          v29[1] = 3221225472;
          v29[2] = __56__WLDPlaybackManager_fetchDecoratedNowPlayingSummaries___block_invoke;
          v29[3] = &unk_100045420;
          v29[4] = v10;
          v29[5] = &v34;
          [v20 enumerateKeysAndObjectsUsingBlock:v29];
          if (!v35[5])
          {
            NSLog(@"WLDPlaybackManager: Found untracked NPI. Will fetch canonical");
            v11 = [NSString stringWithFormat:@"<Untracked NPI %ld>", v8];
            [v20 setObject:v10 forKeyedSubscript:v11];

            ++v8;
          }
        }

        v6 = [obj countByEnumeratingWithState:&v30 objects:v40 count:16];
      }

      while (v6);
    }
  }

  v12 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v20 count]);
  NSLog(@"WLDPlaybackManager: retrieved (%@) decorated summaries", v12);

  v13 = dispatch_get_global_queue(0, 0);
  v14 = dispatch_group_create();
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x3032000000;
  v27[3] = __Block_byref_object_copy__1;
  v27[4] = __Block_byref_object_dispose__1;
  v28 = +[NSMutableDictionary dictionary];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = __56__WLDPlaybackManager_fetchDecoratedNowPlayingSummaries___block_invoke_2;
  v24[3] = &unk_100045470;
  v24[4] = self;
  v15 = v14;
  v25 = v15;
  v26 = v27;
  [v20 enumerateKeysAndObjectsUsingBlock:v24];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __56__WLDPlaybackManager_fetchDecoratedNowPlayingSummaries___block_invoke_4;
  block[3] = &unk_1000454D8;
  v22 = summariesCopy;
  v23 = v27;
  v16 = summariesCopy;
  dispatch_group_notify(v15, v13, block);

  _Block_object_dispose(v27, 8);
  _Block_object_dispose(&v34, 8);
}

void __56__WLDPlaybackManager_fetchDecoratedNowPlayingSummaries___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v8 = a2;
  if ([a3 isEquivalentToSummaryExcludingCursor:*(a1 + 32)])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

void __56__WLDPlaybackManager_fetchDecoratedNowPlayingSummaries___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v6 playbackState])
  {
    v7 = [*(a1 + 32) _getSessionReporterBySessionID:v5];
    if (v7)
    {
      dispatch_group_enter(*(a1 + 40));
      NSLog(@"WLDPlaybackManager: Found cached reporter");
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = __56__WLDPlaybackManager_fetchDecoratedNowPlayingSummaries___block_invoke_3;
      v10[3] = &unk_100045448;
      v8 = v6;
      v9 = *(a1 + 48);
      v11 = v8;
      v14 = v9;
      v12 = v5;
      v13 = *(a1 + 40);
      [v7 getCachedCanonicalIDForSummary:v8 completionHandler:v10];
    }

    else
    {
      NSLog(@"WLDPlaybackManager: Found untracked NPI");
    }
  }

  else
  {
    NSLog(@"WLDPlaybackManager: Skipping stopped summary.");
  }
}

void __56__WLDPlaybackManager_fetchDecoratedNowPlayingSummaries___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (v8)
  {
    NSLog(@"WLDPlaybackManager: Found cached canonical id using cached reporter");
    v6 = [[WLKDecoratedPlaybackSummary alloc] initWithSummary:*(a1 + 32) canonicalID:v8];
    v7 = *(*(*(a1 + 56) + 8) + 40);
    objc_sync_enter(v7);
    [*(*(*(a1 + 56) + 8) + 40) setObject:v6 forKey:*(a1 + 40)];
    objc_sync_exit(v7);
  }

  else
  {
    NSLog(@"WLDPlaybackManager: Canonical id is not cached. Error:%@", v5);
  }

  dispatch_group_leave(*(a1 + 48));
}

uint64_t __56__WLDPlaybackManager_fetchDecoratedNowPlayingSummaries___block_invoke_4(uint64_t result)
{
  if (*(result + 32))
  {
    v1 = result;
    [*(*(*(result + 40) + 8) + 40) enumerateKeysAndObjectsUsingBlock:&__block_literal_global_80];
    NSLog(@"WLDPlaybackManager: done decorating summaries");
    v2 = *(v1 + 32);
    if ([*(*(*(v1 + 40) + 8) + 40) count])
    {
      v3 = *(*(*(v1 + 40) + 8) + 40);
    }

    else
    {
      v3 = 0;
    }

    v4 = *(v2 + 16);

    return v4(v2, v3);
  }

  return result;
}

void __56__WLDPlaybackManager_fetchDecoratedNowPlayingSummaries___block_invoke_5(id a1, NSString *a2, WLKDecoratedPlaybackSummary *a3, BOOL *a4)
{
  v5 = a2;
  v6 = [(WLKDecoratedPlaybackSummary *)a3 canonicalID];
  NSLog(@"WLDPlaybackManager: Decorated [%@] : %@", v5, v6);
}

- (void)handleSubscriptionRegistration
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __52__WLDPlaybackManager_handleSubscriptionRegistration__block_invoke;
  v5[3] = &unk_100044DB8;
  v5[4] = self;
  v3 = [WLDTransactionBlockOperation blockOperationWithBlock:v5];
  queue = [(WLDPlaybackManager *)self queue];
  [queue addOperation:v3];
}

void __52__WLDPlaybackManager_handleSubscriptionRegistration__block_invoke(uint64_t a1)
{
  NSLog(@"WLDPlaybackManager: handleSubscriptionRegistration");
  v2 = +[WLKAppLibrary defaultAppLibrary];
  v3 = [v2 refresh];
  v4 = [v3 objectForKeyedSubscript:WLKAppLibraryDidChangeNotificationSubscribedChangesKey];
  v8 = [v4 objectForKeyedSubscript:WLKArrayAdditionsKey];

  if (!v8)
  {
    NSLog(@"WLDPlaybackManager: handleSubscriptionRegistration: No sbid diff, considering all sbids");
    v5 = +[WLKAppLibrary defaultAppLibrary];
    v8 = [v5 subscribedAppBundleIdentifiers];
  }

  v6 = [*(a1 + 32) _offlineValidation:0];
  if ([v8 count] && (v6 & 1) != 0)
  {
    NSLog(@"WLDPlaybackManager: handleSubscriptionRegistration: done refreshing library. Will request init/config with default cache policy");
    v7 = +[WLKConfigurationManager sharedInstance];
    [v7 fetchConfigurationWithCompletionHandler:&__block_literal_global_104];
  }

  else
  {
    NSLog(@"WLDPlaybackManager: handleSubscriptionRegistration: Not continuing. sbids:%@ validation:%d", v8, v6);
  }
}

- (void)requestToPromptForBundleID:(id)d completionHandler:(id)handler
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = __67__WLDPlaybackManager_requestToPromptForBundleID_completionHandler___block_invoke;
  v10[3] = &unk_100044ED8;
  v10[4] = self;
  dCopy = d;
  handlerCopy = handler;
  v6 = handlerCopy;
  v7 = dCopy;
  v8 = [WLDTransactionBlockOperation blockOperationWithBlock:v10];
  queue = [(WLDPlaybackManager *)self queue];
  [queue addOperation:v8];
}

- (id)reporter
{
  NSLog(@"WLDPlaybackManager: invoked default session reporter", a2);

  return [(WLDPlaybackManager *)self _getReporterBySessionID:@"DefaultPlaybackSessionID" isLive:0];
}

- (id)_getLastSummaryBySessionID:(id)d
{
  dCopy = d;
  v5 = self->_lastSummaryDictionary;
  objc_sync_enter(v5);
  if (dCopy)
  {
    v6 = dCopy;
  }

  else
  {
    v6 = @"DefaultPlaybackSessionID";
  }

  v7 = [(NSMutableDictionary *)self->_lastSummaryDictionary objectForKey:v6];
  objc_sync_exit(v5);

  return v7;
}

- (void)_removeLastSummaryBySessionID:(id)d
{
  dCopy = d;
  v4 = self->_lastSummaryDictionary;
  objc_sync_enter(v4);
  if (dCopy)
  {
    v5 = dCopy;
  }

  else
  {
    v5 = @"DefaultPlaybackSessionID";
  }

  [(NSMutableDictionary *)self->_lastSummaryDictionary removeObjectForKey:v5];
  objc_sync_exit(v4);
}

- (void)_setSessionReporter:(id)reporter sessionID:(id)d
{
  reporterCopy = reporter;
  dCopy = d;
  if (reporterCopy)
  {
    v7 = self->_reporterDictionary;
    objc_sync_enter(v7);
    if (dCopy)
    {
      v8 = dCopy;
    }

    else
    {
      v8 = @"DefaultPlaybackSessionID";
    }

    [(NSMutableDictionary *)self->_reporterDictionary setObject:reporterCopy forKey:v8];
    objc_sync_exit(v7);
  }
}

- (void)_setLastSummaryBySessionID:(id)d sessionID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v7 = self->_lastSummaryDictionary;
  objc_sync_enter(v7);
  if (iDCopy)
  {
    v8 = iDCopy;
  }

  else
  {
    v8 = @"DefaultPlaybackSessionID";
  }

  [(NSMutableDictionary *)self->_lastSummaryDictionary setObject:dCopy forKey:v8];
  objc_sync_exit(v7);
}

- (id)_getSessionReporterBySessionID:(id)d
{
  dCopy = d;
  v5 = self->_reporterDictionary;
  objc_sync_enter(v5);
  if (dCopy)
  {
    v6 = dCopy;
  }

  else
  {
    v6 = @"DefaultPlaybackSessionID";
  }

  v7 = [(NSMutableDictionary *)self->_reporterDictionary objectForKey:v6];
  objc_sync_exit(v5);

  return v7;
}

- (id)_getReporterBySessionID:(id)d isLive:(BOOL)live
{
  liveCopy = live;
  dCopy = d;
  v7 = dCopy;
  v8 = @"DefaultPlaybackSessionID";
  if (dCopy)
  {
    v8 = dCopy;
  }

  v9 = v8;
  v10 = [(WLDPlaybackManager *)self _getSessionReporterBySessionID:v9];
  v11 = [(WLDPlaybackManager *)self _getLastSummaryBySessionID:v9];
  if (![v11 playbackType] && !liveCopy)
  {
    v12 = off_1000444B8;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      NSLog(@"WLDPlaybackManager: Returning a previously created WLDPlaybackReporter");
      goto LABEL_16;
    }

    NSLog(@"WLDPlaybackManager: Creating a WLDPlaybackReporter");
LABEL_15:
    [v10 invalidate];
    v13 = [objc_alloc(*v12) initWithSessionID:v9];

    [(WLDPlaybackManager *)self _setSessionReporter:v13 sessionID:v9];
    v10 = v13;
    goto LABEL_16;
  }

  if ([v11 playbackType] == 2 || objc_msgSend(v11, "playbackType") == 1 || liveCopy)
  {
    v12 = off_1000444B0;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      NSLog(@"WLDPlaybackManager: Returning a previously created WLDLivePlaybackReporter");
      goto LABEL_16;
    }

    NSLog(@"WLDPlaybackManager: Creating a WLDLivePlaybackReporter");
    goto LABEL_15;
  }

LABEL_16:
  v14 = v10;

  return v10;
}

- (void)_removeReporterBySessionID:(id)d
{
  dCopy = d;
  v4 = self->_reporterDictionary;
  objc_sync_enter(v4);
  v5 = @"DefaultPlaybackSessionID";
  if (dCopy)
  {
    v5 = dCopy;
  }

  v6 = v5;
  v7 = [(NSMutableDictionary *)self->_reporterDictionary objectForKey:v6];
  [v7 invalidate];
  [(NSMutableDictionary *)self->_reporterDictionary removeObjectForKey:v6];

  objc_sync_exit(v4);
}

- (void)_endSession:(id)session
{
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = __34__WLDPlaybackManager__endSession___block_invoke;
  v10 = &unk_100044E38;
  sessionCopy = session;
  selfCopy = self;
  v4 = sessionCopy;
  v5 = [NSBlockOperation blockOperationWithBlock:&v7];
  v6 = [(WLDPlaybackManager *)self queue:v7];
  [v6 addOperation:v5];
}

id __34__WLDPlaybackManager__endSession___block_invoke(uint64_t a1)
{
  NSLog(@"WLDPlaybackManager: End session: %@", *(a1 + 32));
  [*(a1 + 40) _removeReporterBySessionID:*(a1 + 32)];
  [*(a1 + 40) _removeLastSummaryBySessionID:*(a1 + 32)];

  return +[WLKUpNextWidgetCacheManager requestReload];
}

- (void)_handleDirectPlaybackAppTermination:(id)termination
{
  terminationCopy = termination;
  v5 = self->_lastSummaryDictionary;
  objc_sync_enter(v5);
  lastSummaryDictionary = self->_lastSummaryDictionary;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __58__WLDPlaybackManager__handleDirectPlaybackAppTermination___block_invoke;
  v8[3] = &unk_100045540;
  v7 = terminationCopy;
  v9 = v7;
  selfCopy = self;
  [(NSMutableDictionary *)lastSummaryDictionary enumerateKeysAndObjectsUsingBlock:v8];

  objc_sync_exit(v5);
}

uint64_t __58__WLDPlaybackManager__handleDirectPlaybackAppTermination___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = [a3 bundleID];
  v6 = [v5 isEqualToString:*(a1 + 32)];

  if (v6)
  {
    v7 = [*(a1 + 40) _getLastSummaryBySessionID:v10];
    if ([v7 playbackState] == 1)
    {
      NSLog(@"WLDPlaybackManager: Generating stopped playback event due to app termination.");
      v8 = [v7 elapsedTimeSummaryWithPlaybackState:0 timerDerived:0];
      [*(a1 + 40) _enqueuePlaybackSummary:v8 sessionID:v10 serialize:1];
    }

    else if (v7)
    {
      [*(a1 + 40) endDirectPlaybackSession:v10];
    }
  }

  return _objc_release_x2();
}

- (void)_enqueuePlaybackSummary:(id)summary sessionID:(id)d serialize:(BOOL)serialize
{
  summaryCopy = summary;
  dCopy = d;
  if ((+[WLKNetworkRequestUtilities isGDPRAccepted]& 1) != 0)
  {
    v10 = @"DefaultPlaybackSessionID";
    if (dCopy)
    {
      v10 = dCopy;
    }

    v11 = v10;
    [(WLDPlaybackManager *)self _setLastSummaryBySessionID:summaryCopy sessionID:v11];
    v12 = -[WLDPlaybackManager _getReporterBySessionID:isLive:](self, "_getReporterBySessionID:isLive:", v11, [summaryCopy isLiveType]);
    shortDescription = [summaryCopy shortDescription];
    NSLog(@"WLDPlaybackManager: enqueue: %@ for sessionID %@", shortDescription, v11);

    objc_initWeak(&location, self);
    v14 = objc_alloc_init(WLDTransactionBlockOperation);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = __66__WLDPlaybackManager__enqueuePlaybackSummary_sessionID_serialize___block_invoke;
    v18[3] = &unk_1000455B8;
    objc_copyWeak(&v22, &location);
    v19 = summaryCopy;
    serializeCopy = serialize;
    v15 = v12;
    v20 = v15;
    v16 = v11;
    v21 = v16;
    [(WLDTransactionBlockOperation *)v14 addExecutionBlock:v18];
    queue = [(WLDPlaybackManager *)self queue];
    [queue addOperation:v14];

    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }

  else
  {
    NSLog(@"WLDPlaybackManager: GDPR not yet accepted, returning early");
  }
}

void __66__WLDPlaybackManager__enqueuePlaybackSummary_sessionID_serialize___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if ([WeakRetained _offlineValidation:*(a1 + 32)])
  {
    if (*(a1 + 64) == 1 && ![*(a1 + 32) playbackType])
    {
      [WeakRetained _serialize:*(a1 + 32)];
    }

    v3 = *(a1 + 32);
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = __66__WLDPlaybackManager__enqueuePlaybackSummary_sessionID_serialize___block_invoke_2;
    v4[3] = &unk_100045590;
    objc_copyWeak(&v9, (a1 + 56));
    v5 = *(a1 + 32);
    v6 = WeakRetained;
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    [WeakRetained _onlineValidation:v3 completion:v4];

    objc_destroyWeak(&v9);
  }

  else
  {
    NSLog(@"WLDPlaybackManager: _offlineValidation failed");
  }
}

void __66__WLDPlaybackManager__enqueuePlaybackSummary_sessionID_serialize___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (a2)
  {
    v7 = [*(a1 + 32) bundleID];
    v8 = +[WLKChannelUtilities sharedInstanceFiltered];
    v9 = [v8 isItunesOrFirstPartyBundleID:v7];

    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = *(a1 + 48);
      v12 = *(a1 + 56);
      v13 = WeakRetained;
      v14 = 1;
    }

    else
    {
      v23 = 0;
      if ([WeakRetained _shouldPromptForBundleID:v7 outAccessStatus:&v23])
      {
        v15 = *(a1 + 40);
        v16[0] = _NSConcreteStackBlock;
        v16[1] = 3221225472;
        v16[2] = __66__WLDPlaybackManager__enqueuePlaybackSummary_sessionID_serialize___block_invoke_3;
        v16[3] = &unk_100045568;
        v17 = v7;
        v18 = WeakRetained;
        v19 = *(a1 + 32);
        v20 = *(a1 + 48);
        v21 = *(a1 + 56);
        v22 = v9;
        [v15 _promptForBundleID:v17 completionHandler:v16];

LABEL_10:
        goto LABEL_11;
      }

      if ((v23 & 0xFFFFFFFFFFFFFFFDLL) == 0)
      {
        NSLog(@"WLDPlaybackManager: User has not granted access (2) for: %@", v7);
        [WeakRetained _cleanupSummary:*(a1 + 32)];
        goto LABEL_10;
      }

      v10 = *(a1 + 32);
      v11 = *(a1 + 48);
      v12 = *(a1 + 56);
      v13 = WeakRetained;
      v14 = 0;
    }

    [v13 _handleReporting:v11 summary:v10 sessionIDKey:v12 isFirstParty:v14];
    goto LABEL_10;
  }

  NSLog(@"WLDPlaybackManager: online validation failed with error: %@", v5);
  [WeakRetained _handleReportingError:v5 forSummary:*(a1 + 32)];
LABEL_11:
}

id __66__WLDPlaybackManager__enqueuePlaybackSummary_sessionID_serialize___block_invoke_3(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);
    v6 = *(a1 + 64);
    v7 = *(a1 + 72);

    return [v3 _handleReporting:v5 summary:v4 sessionIDKey:v6 isFirstParty:v7];
  }

  else
  {
    NSLog(@"WLDPlaybackManager: User has not granted access (1) for: %@", *(a1 + 32));
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);

    return [v9 _cleanupSummary:v10];
  }
}

- (void)_handleReporting:(id)reporting summary:(id)summary sessionIDKey:(id)key isFirstParty:(BOOL)party
{
  reportingCopy = reporting;
  summaryCopy = summary;
  keyCopy = key;
  objc_initWeak(&location, self);
  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = __73__WLDPlaybackManager__handleReporting_summary_sessionIDKey_isFirstParty___block_invoke;
  v19 = &unk_1000455E0;
  objc_copyWeak(&v22, &location);
  v13 = summaryCopy;
  v20 = v13;
  v14 = keyCopy;
  v21 = v14;
  [reportingCopy reportPlayback:v13 completion:&v16];
  if (!party && ([v13 isFromActivePlayerPath] & 1) == 0)
  {
    bundleID = [v13 bundleID];
    [VSMetricsManagerObjC recordNowPlayingBrokenEventWithBundleID:bundleID];
  }

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
}

void __73__WLDPlaybackManager__handleReporting_summary_sessionIDKey_isFirstParty___block_invoke(uint64_t a1, char a2, void *a3)
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (a2)
  {
    v6 = [*(a1 + 32) shortDescription];
    NSLog(@"WLDPlaybackManager: Successful playback report %@", v6);

    [WeakRetained _catalogSummary:*(a1 + 32)];
    [WeakRetained _cleanupSummary:*(a1 + 32)];
    if (![*(a1 + 32) playbackState])
    {
      NSLog(@"WLDPlaybackManager: Session %@ has PlaybackStateStopped", *(a1 + 40));
      [WeakRetained _endSession:*(a1 + 40)];
    }
  }

  else
  {
    NSLog(@"WLDPlaybackManager: _handleReporting failed with error: %@", v7);
    [WeakRetained _handleReportingError:v7 forSummary:*(a1 + 32)];
  }
}

- (void)_handleReportingError:(id)error forSummary:(id)summary
{
  errorCopy = error;
  summaryCopy = summary;
  domain = [errorCopy domain];
  v8 = [domain isEqualToString:WLKErrorDomain];

  if ((v8 & 1) != 0 || ([errorCopy domain], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isEqualToString:", AMSErrorDomain), v9, v10) && (WLKHTTPStatusCodeForAMSError() - 400) <= 0xC7)
  {
    NSLog(@"WLDPlaybackManager: ErrorHandler: Fatal error. Cleaning up summary: %@", errorCopy);
    [(WLDPlaybackManager *)self _cleanupSummary:summaryCopy];
  }

  else
  {
    NSLog(@"WLDPlaybackManager: ErrorHandler: Non-fatal error. Will attempt report again on reachability change and/or app launch. %@", errorCopy);
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (!selfCopy->_pendingReportsTransaction)
    {
      v12 = [[WLKTransactionScope alloc] initWithIdentifier:@"WLDPlaybackManager._handleReportingError"];
      pendingReportsTransaction = selfCopy->_pendingReportsTransaction;
      selfCopy->_pendingReportsTransaction = v12;
    }

    objc_sync_exit(selfCopy);
  }
}

- (BOOL)_offlineValidation:(id)validation
{
  validationCopy = validation;
  v4 = [LSApplicationRecord alloc];
  v5 = WLKTVAppBundleID();
  v6 = [v4 initWithBundleIdentifier:v5 allowPlaceholder:0 error:0];

  applicationState = [v6 applicationState];
  isInstalled = [applicationState isInstalled];

  if ((isInstalled & 1) == 0)
  {
    NSLog(@"WLDPlaybackManager: Feature disabled because TV app is not installed.");
    goto LABEL_5;
  }

  v9 = +[UMUserManager sharedManager];
  isMultiUser = [v9 isMultiUser];

  if (!isMultiUser)
  {
    v12 = +[WLKSystemPreferencesStore sharedPreferences];
    if ([v12 privateModeEnabled])
    {
      NSLog(@"WLDPlaybackManager: User has private mode enabled");
      v11 = 0;
LABEL_21:

      goto LABEL_22;
    }

    v13 = +[TVAppAccountStoreObjC activeAccount];
    if (validationCopy)
    {
      accountID = [validationCopy accountID];
      v15 = [accountID length];

      if (!v15)
      {
        NSLog(@"WLDPlaybackManager: Error: DSID missing.");
        goto LABEL_19;
      }

      bundleID = [validationCopy bundleID];

      if (!bundleID)
      {
        NSLog(@"WLDPlaybackManager: Error: bundleIdentifier is required.");
        goto LABEL_19;
      }

      accountIDAsNumber = [validationCopy accountIDAsNumber];
      v18 = [TVAppAccountStoreObjC accountWithDSID:accountIDAsNumber];

      v13 = v18;
    }

    if (v13)
    {
      if (![v13 ams_isManagedAppleID])
      {
        v11 = 1;
LABEL_20:

        goto LABEL_21;
      }

      NSLog(@"WLDPlaybackManager: Feature disabled for Managed Apple IDs.");
    }

    else
    {
      NSLog(@"WLDPlaybackManager: An active iTunes account is required to report play activity events.");
    }

LABEL_19:
    v11 = 0;
    goto LABEL_20;
  }

  NSLog(@"WLDPlaybackManager: Feature disabled in EDU mode.");
LABEL_5:
  v11 = 0;
LABEL_22:

  return v11;
}

- (void)_onlineValidation:(id)validation completion:(id)completion
{
  validationCopy = validation;
  completionCopy = completion;
  v7 = objc_opt_class();
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = __51__WLDPlaybackManager__onlineValidation_completion___block_invoke;
  v10[3] = &unk_100045630;
  v11 = validationCopy;
  v12 = completionCopy;
  v8 = validationCopy;
  v9 = completionCopy;
  [v7 isFullTVAppEnabledWithCompletion:v10];
}

void __51__WLDPlaybackManager__onlineValidation_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    NSLog(@"WLDPlaybackManager: Error fetching Now playing from URL bag.");
    (*(*(a1 + 40) + 16))();
  }

  else if (a2)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = __51__WLDPlaybackManager__onlineValidation_completion___block_invoke_2;
    v8[3] = &unk_100045630;
    v10 = *(a1 + 40);
    v9 = *(a1 + 32);
    [WLKSettingsCloudUtilities synchronizeSettingsFromCloudIfNeededWithCompletion:v8];
  }

  else
  {
    NSLog(@"WLDPlaybackManager: Error: Now playing not enabled in URL bag.");
    v6 = *(a1 + 40);
    v7 = WLKError();
    (*(v6 + 16))(v6, 0, v7);
  }
}

void __51__WLDPlaybackManager__onlineValidation_completion___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = +[WLKSettingsStore sharedSettings];
    v7 = [v6 optedIn];

    if (v7)
    {
      v8 = +[WLKChannelUtilities sharedInstanceFiltered];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = __51__WLDPlaybackManager__onlineValidation_completion___block_invoke_3;
      v12[3] = &unk_100045608;
      v15 = *(a1 + 40);
      v13 = *(a1 + 32);
      v14 = v8;
      v9 = v8;
      [v9 loadIfNeededWithCompletion:v12];
    }

    else
    {
      NSLog(@"WLDPlaybackManager: User has not opted into feature");
      v10 = *(a1 + 40);
      v11 = WLKError();
      (*(v10 + 16))(v10, 0, v11);
    }
  }

  else
  {
    NSLog(@"WLDPlaybackManager: Settings sync failed");
    (*(*(a1 + 40) + 16))();
  }
}

void __51__WLDPlaybackManager__onlineValidation_completion___block_invoke_3(uint64_t a1, char a2, void *a3)
{
  v13 = a3;
  if ((a2 & 1) == 0)
  {
    NSLog(@"WLDPlaybackManager: Failed to load channel utils");
    (*(*(a1 + 48) + 16))();
    goto LABEL_16;
  }

  v5 = [*(a1 + 32) bundleID];
  if (![*(a1 + 40) isItunesOrFirstPartyBundleID:v5])
  {
    v6 = [*(a1 + 32) channelID];
    if (!v6)
    {
      v6 = [*(a1 + 40) channelIDForBundleID:v5];
      if (!v6)
      {
        NSLog(@"WLDPlaybackManager: No channel associated with channel ID: %@. Ignoring report", 0);
        v12 = *(a1 + 48);
        v7 = WLKError();
        (*(v12 + 16))(v12, 0, v7);
        goto LABEL_14;
      }
    }

    v7 = v6;
    v8 = [*(a1 + 40) channelForID:v6];
    if ([v8 isWatchListEnabled])
    {
      if ([v8 shouldTrackPlayActivity])
      {
        (*(*(a1 + 48) + 16))();
LABEL_13:

LABEL_14:
        goto LABEL_15;
      }

      NSLog(@"WLDPlaybackManager: Channel with ID %@ does not have playback tracking enabled. Ignoring report.", v7);
      v9 = *(a1 + 48);
      [NSString stringWithFormat:@"Channel %@ does not have playback tracking enabled", v7];
    }

    else
    {
      NSLog(@"WLDPlaybackManager: Channel with ID %@ is not watchlist enabled. Ignoring report.", v7);
      v9 = *(a1 + 48);
      [NSString stringWithFormat:@"Channel %@ is not watchlist enabled", v7];
    }
    v10 = ;
    v11 = WLKError();
    (*(v9 + 16))(v9, 0, v11);

    goto LABEL_13;
  }

  (*(*(a1 + 48) + 16))();
LABEL_15:

LABEL_16:
}

- (BOOL)_shouldPromptForBundleID:(id)d outAccessStatus:(unint64_t *)status
{
  dCopy = d;
  v7 = +[WLKChannelUtilities sharedInstanceFiltered];
  v8 = [v7 channelForBundleID:dCopy];

  channelID = [v8 channelID];
  v10 = WLKSubscriptionIdentifierForBundleID();
  v11 = +[WLKSettingsStore sharedSettings];
  v12 = [v11 settingsForChannelID:channelID externalID:v10];

  if (status)
  {
    *status = [v12 accessStatus];
  }

  if (self->_isPrompting)
  {
    NSLog(@"WLDPlaybackManager: should not prompt because we are already prompting");
LABEL_17:
    v20 = 0;
    goto LABEL_18;
  }

  if (!v8)
  {
    NSLog(@"WLDPlaybackManager: No channel found for: %@", dCopy);
    goto LABEL_17;
  }

  if ([v12 accessStatus] == 2)
  {
    NSLog(@"WLDPlaybackManager: User has denied access for: %@ %@", dCopy, channelID);
    goto LABEL_17;
  }

  if ([v12 accessStatus] == 1)
  {
    NSLog(@"WLDPlaybackManager: User has allowed access for: %@ %@", dCopy, channelID);
    goto LABEL_17;
  }

  v13 = +[WLKReachabilityMonitor sharedInstance];
  isNetworkReachable = [v13 isNetworkReachable];

  if ((isNetworkReachable & 1) == 0)
  {
    NSLog(@"WLDPlaybackManager: Will not prompt due to network being unavailable");
    goto LABEL_17;
  }

  v15 = [RBSProcessPredicate predicateMatchingBundleIdentifier:dCopy];
  v22 = 0;
  v16 = [RBSProcessHandle handleForPredicate:v15 error:&v22];
  v17 = v22;

  if (v16)
  {
    currentState = [v16 currentState];
    taskState = [currentState taskState];
    v20 = taskState == 4;
    if (taskState != 4)
    {
      NSLog(@"WLDPlaybackManager: Will not prompt because application is not foregrounded");
    }
  }

  else
  {
    NSLog(@"WLDPlaybackManager: Could not get process handle %@", v17);
    v20 = 0;
  }

LABEL_18:
  return v20;
}

- (void)_promptForBundleID:(id)d completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  NSLog(@"WLDPlaybackManager: promptForBundleID: %@", dCopy);
  self->_isPrompting = 1;
  v8 = objc_alloc_init(WLDRemoteAlertPresenter);
  if ([(WLDRemoteAlertPresenter *)v8 promptForBundleID:dCopy])
  {
    v9 = +[WLKSettingsStore sharedSettings];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = __59__WLDPlaybackManager__promptForBundleID_completionHandler___block_invoke;
    v11[3] = &unk_100045658;
    v12 = dCopy;
    v13 = v9;
    selfCopy = self;
    v15 = handlerCopy;
    v10 = v9;
    [v10 refreshWithCompletion:v11];
  }

  else
  {
    self->_isPrompting = 0;
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

void __59__WLDPlaybackManager__promptForBundleID_completionHandler___block_invoke(uint64_t a1)
{
  v2 = +[WLKChannelUtilities sharedInstanceFiltered];
  v6 = [v2 channelIDForBundleID:*(a1 + 32)];

  v3 = *(a1 + 32);
  v4 = WLKSubscriptionIdentifierForBundleID();
  v5 = [*(a1 + 40) settingsForChannelID:v6 externalID:v4];
  NSLog(@"WLDPlaybackManager: Settings recall after prompting for bundle:%@ externalID:%@, settings%@, channelID:%@", *(a1 + 32), v4, v5, v6);
  *(*(a1 + 48) + 48) = 0;
  (*(*(a1 + 56) + 16))(*(a1 + 56), [v5 accessStatus] == 1);
}

BOOL __44__WLDPlaybackManager__scanForPendingReports__block_invoke(id a1, NSURL *a2, NSError *a3)
{
  if (a3)
  {
    NSLog(@"WLDPlaybackManager: [Error] scanning for pending reports %@ (%@)", a3, a2);
  }

  return a3 == 0;
}

void __44__WLDPlaybackManager__scanForPendingReports__block_invoke_2(uint64_t a1)
{
  obj = objc_loadWeakRetained((a1 + 40));
  objc_sync_enter(obj);
  NSLog(@"WLDPlaybackManager: Releasing pending reports transaction.");
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  if (v3)
  {
    *(v2 + 40) = 0;
  }

  objc_sync_exit(obj);
}

- (void)_networkReachabilityChanged:(id)changed
{
  v4 = +[WLKReachabilityMonitor sharedInstance];
  isNetworkReachable = [v4 isNetworkReachable];

  NSLog(@"WLDPlaybackManager: Network reachability changed. Network is reachable:%d", isNetworkReachable);
  if (isNetworkReachable)
  {
    [(WLDPlaybackManager *)self _enqueuePendingReports];
    +[WLKUpNextWidgetCacheManager requestInvalidation];

    +[WLKUpNextWidgetCacheManager requestReload];
  }
}

- (BOOL)_serialize:(id)_serialize
{
  _serializeCopy = _serialize;
  v5 = [(WLDPlaybackManager *)self _queuePathForSummary:_serializeCopy];
  stringByDeletingLastPathComponent = [v5 stringByDeletingLastPathComponent];
  v7 = +[NSFileManager defaultManager];
  v8 = [v7 fileExistsAtPath:stringByDeletingLastPathComponent];

  if (v8)
  {
    v9 = 0;
    goto LABEL_4;
  }

  v10 = +[NSFileManager defaultManager];
  v25 = 0;
  v11 = [v10 createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v25];
  v9 = v25;

  if (v11)
  {
LABEL_4:
    v12 = +[NSFileManager defaultManager];
    v13 = [v12 fileExistsAtPath:v5];

    if (v13)
    {
      v14 = [NSData dataWithContentsOfFile:v5];
      v24 = 0;
      v15 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v14 error:&v24];
      v16 = v24;
      v17 = v16;
      if (v16)
      {
        NSLog(@"WLDPlaybackManager: _serialize: secure unarchiver error: %@", v16);
      }

      else
      {
        v19 = [v15 decodeObjectOfClass:objc_opt_class() forKey:NSKeyedArchiveRootObjectKey];
        v20 = [_serializeCopy isEqualToSummary:v19];

        if (v20)
        {
          v18 = 1;
          v21 = v9;
          goto LABEL_13;
        }
      }
    }

    v23 = v9;
    v14 = [NSKeyedArchiver archivedDataWithRootObject:_serializeCopy requiringSecureCoding:1 error:&v23];
    v21 = v23;

    if (!v14)
    {
      v18 = 0;
      goto LABEL_15;
    }

    v15 = [(WLDPlaybackManager *)self _queuePathForSummary:_serializeCopy];
    v18 = [v14 writeToFile:v15 atomically:1];
LABEL_13:

LABEL_15:
    v9 = v21;
    goto LABEL_16;
  }

  v18 = 0;
LABEL_16:

  return v18;
}

- (void)_cleanupSummary:(id)summary
{
  v4 = [(WLDPlaybackManager *)self _queuePathForSummary:summary];
  v3 = +[NSFileManager defaultManager];
  [v3 removeItemAtPath:v4 error:0];
}

- (BOOL)_isDirectoryPresentAndNonEmpty:(id)empty
{
  emptyCopy = empty;
  v4 = +[NSFileManager defaultManager];
  if ([v4 fileExistsAtPath:emptyCopy])
  {
    v5 = +[NSFileManager defaultManager];
    v6 = [NSURL fileURLWithPath:emptyCopy];
    v16[0] = NSURLNameKey;
    v16[1] = NSURLIsDirectoryKey;
    v7 = [NSArray arrayWithObjects:v16 count:2];
    v8 = [v5 enumeratorAtURL:v6 includingPropertiesForKeys:v7 options:4 errorHandler:&__block_literal_global_325];

    allObjects = [v8 allObjects];
    v10 = [allObjects count];
    v11 = v10 != 0;

    if (v10)
    {
      NSLog(@"WLDPlaybackManager: _checkIfUserDirectoryIsEmpty old path is not empty.");
    }

    else
    {
      NSLog(@"WLDPlaybackManager: _checkIfUserDirectoryIsEmpty found empty directory. Will delete it to use group container one.");
      v15 = 0;
      [v4 removeItemAtPath:emptyCopy error:&v15];
      v12 = v15;
      v13 = v12;
      if (v12)
      {
        NSLog(@"WLDPlaybackManager: [Error] failed to remove user directory with error: %@.", v12);
      }
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

BOOL __53__WLDPlaybackManager__isDirectoryPresentAndNonEmpty___block_invoke(id a1, NSURL *a2, NSError *a3)
{
  if (a3)
  {
    NSLog(@"WLDPlaybackManager: [Error] enumerating for pending reports %@ (%@)", a3, a2);
  }

  return a3 == 0;
}

- (id)_queuePathForSummary:(id)summary
{
  summaryCopy = summary;
  _queueDir = [(WLDPlaybackManager *)self _queueDir];
  accountID = [summaryCopy accountID];
  v7 = [_queueDir stringByAppendingPathComponent:accountID];

  bundleID = [summaryCopy bundleID];
  contentID = [summaryCopy contentID];

  v10 = [NSString stringWithFormat:@"%@-%@", bundleID, contentID];

  v11 = [NSMutableString stringWithString:v10];
  v12 = [v11 length];
  [v11 replaceOccurrencesOfString:@"/" withString:@"_" options:0 range:{0, v12}];
  [v11 replaceOccurrencesOfString:@":" withString:@"_" options:0 range:{0, v12}];
  v13 = [v11 copy];
  if (v12 >= 0x100)
  {
    v14 = [v11 substringWithRange:{0, 255}];

    v13 = v14;
  }

  v15 = [v7 stringByAppendingPathComponent:v13];

  return v15;
}

- (void)_catalogSummary:(id)summary
{
  sanitizedCopy = [summary sanitizedCopy];
  v9 = 0;
  v4 = [NSKeyedArchiver archivedDataWithRootObject:sanitizedCopy requiringSecureCoding:1 error:&v9];
  v5 = v9;

  if (v4)
  {
    v10 = WLKDidReportPlaybackDistributedNotificationUserInfoDataKey;
    v6 = [v4 base64EncodedStringWithOptions:0];
    v11 = v6;
    v7 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];

    v8 = +[NSDistributedNotificationCenter defaultCenter];
    [v8 postNotificationName:WLKDidReportPlaybackDistributedNotification object:0 userInfo:v7];
  }

  else
  {
    NSLog(@"WLDPlaybackManager: Error serializing summary for notification: %@", v5);
  }

  +[WLKUpNextWidgetCacheManager requestInvalidation];
}

- (BOOL)_isDirectPlaybackReportingDisabled
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  disableDirectPlaybackReporting = selfCopy->_disableDirectPlaybackReporting;
  objc_sync_exit(selfCopy);

  return disableDirectPlaybackReporting;
}

@end