@interface DownloadManager
+ (BOOL)isDeviceBeforeFirstUnlock;
+ (id)_extractCheckedNSErrorFromDict:(id)dict withKey:(id)key;
+ (id)getPallasUrl:(BOOL)url assetType:(id)type;
+ (id)pathToCatalogLookupServer:(id)server usingDownloadOptions:(id)options;
+ (void)addNWActivityToDownloadInfo:(id)info andTask:(id)task andLabel:(unsigned int)label withOptions:(id)options;
- (BOOL)_shouldLogAssetDetails:(id)details extraServerOptions:(id)options;
- (BOOL)addInFailedJobs:(id)jobs finalEvents:(id)events;
- (BOOL)checkAssetDownloadIsSkipped:(id)skipped connection:(id)connection with:(id)with autoAssetJob:(id)job;
- (BOOL)checkCatalogDownloadIsSkipped:(id)skipped connection:(id)connection with:(id)with autoAssetJob:(id)job;
- (BOOL)checkDownloadIsSyncing:(id)syncing using:(id)using with:(id)with autoAssetJob:(id)job ofJobType:(id)type;
- (BOOL)checkPmvDownloadIsSkipped:(id)skipped connection:(id)connection with:(id)with;
- (BOOL)decryptContentEncryptedAssetAtPathIfRequired:(id)required;
- (BOOL)downloadNeedsSSO:(id)o taskDescriptor:(id)descriptor url:(id)url;
- (BOOL)getPallasEnabledForAssetType:(id)type;
- (BOOL)isBuddyRunning;
- (BOOL)isValidUUID:(id)d;
- (BOOL)useBootstrapDataPathForScan:(id)scan;
- (DownloadManager)init;
- (MADAnalyticsManager)analytics;
- (id)MACopyDawToken:(id)token;
- (id)_getKeysNotLoggedForAutoResponse;
- (id)_getKeysNotLoggedForV2Response;
- (id)_parseForAssetDetailsToLog:(id)log;
- (id)addSUOptions:(id)options options:(id)a4;
- (id)currentConfig;
- (id)currentSession;
- (id)getBaseURLOverrideForAssetType:(id)type;
- (id)getUserAgentStringForClient:(id)client withAssetType:(id)type;
- (id)grabTaskID:(id)d;
- (id)lastModifiedDateFromResponse:(id)response;
- (id)newAssetAudience:(BOOL)audience assetType:(id)type logMessage:(id *)message;
- (id)newDefaultEventDictionary:(id)dictionary sessionId:(id)id nonce:(id)nonce url:(id)url statusCode:(int64_t)code assetAudience:(id)audience uuid:(id)uuid assetType:(id)self0 version:(id)self1 baseUrl:(id)self2 discretionary:(BOOL)self3 deviceCheck:(id)self4;
- (id)pallasRequestedAssetSetID:(id)d;
- (id)startDownloadTask:(id)task downloadSize:(int64_t)size for:(id)for startingAt:(id)at withLength:(id)length extractWith:(id)with options:(id)options modified:(id)self0 session:(id)self1;
- (id)startDownloadTask:(id)task downloadSize:(int64_t)size for:(id)for startingAt:(id)at withLength:(id)length extractWith:(id)with options:(id)options modified:(id)self0 session:(id)self1 isCachingServer:(BOOL)self2;
- (int)triggerVPN;
- (int64_t)massagePmvAndPersist:(id)persist from:(id)from to:(id)to postedDate:(id)date;
- (int64_t)massageXmlAndPersist:(id)persist catalogInfo:(id)info descriptor:(id)descriptor assets:(id)assets transformations:(id)transformations to:(id)to postedDate:(id)date assetSetId:(id)self0 pallasUrl:(id)self1 considerCaching:(BOOL)self2;
- (int64_t)massageXmlAndPersist:(id)persist from:(id)from to:(id)to with:(id)with postedDate:(id)date considerCaching:(BOOL)caching;
- (int64_t)processAssetDownload:(id)download with:(id)with and:(id)and shouldMove:(BOOL)move extractorExists:(BOOL)exists;
- (void)_logResponseBody:(id)body nonce:(id)nonce extraServerOptions:(id)options;
- (void)activityNotification:(id)notification ofStatusChange:(unint64_t)change withReason:(id)reason;
- (void)addLiveServerRequest:(id)request forAssetType:(id)type withPurpose:(id)purpose audience:(id)audience pallasUrl:(id)url using:(id)using with:(id)with clientName:(id)self0 autoAssetJobID:(id)self1 task:(id)self2 options:(id)self3;
- (void)allDownloading:(id)downloading;
- (void)assessDownloadCompletion:(id)completion originalUrl:(id)url taskDescription:(id)description taskId:(id)id error:(id)error moveFile:(BOOL)file extractorExists:(BOOL)exists;
- (void)augmentSplunkEvent:(id)event withResultForHTTPStatusCode:(int64_t)code;
- (void)cancelAllDownloading:(id)downloading withPurpose:(id)purpose includingAssets:(BOOL)assets includingCatalog:(BOOL)catalog includingOther:(BOOL)other clientName:(id)name then:(id)then;
- (void)cancelAssetDownloadJob:(id)job forAssetType:(id)type withPurpose:(id)purpose matchingAssetId:(id)id forAutoAssetName:(id)name;
- (void)cancelAssetDownloadTask:(id)task;
- (void)checkSplunkStatus:(id)status failureReason:(id)reason productVersion:(id)version sessionId:(id)id nonce:(id)nonce url:(id)url statusCode:(int64_t)code assetAudience:(id)self0 version:(id)self1 baseUrl:(id)self2 discretionary:(BOOL)self3 deviceCheck:(id)self4;
- (void)completeNWActivity:(id)activity withParams:(id)params andError:(id)error;
- (void)configAssetDownload:(id)download withPurpose:(id)purpose matchingAssetId:(id)id usingDownloadConfig:(id)config usingXPCConnection:(id)connection withXPCMessage:(id)message performingAutoAssetJob:(id)job asClientName:(id)self0;
- (void)configAssetDownloadJob:(id)job forAssetType:(id)type withPurpose:(id)purpose matchingAssetId:(id)id usingDownloadOptions:(id)options forAutoAssetName:(id)name;
- (void)configDownload:(id)download clientName:(id)name using:(id)using with:(id)with;
- (void)getCurrentInflightDownloads:(id)downloads;
- (void)handleDownloadCannotStartResult:(int64_t)result assetType:(id)type connection:(id)connection requestMessage:(id)message clientName:(id)name autoAssetJobID:(id)d ofJobType:(id)jobType underlyingError:(id)self0 additionalData:(id)self1 notifyingAutoAssetLayer:(BOOL)self2;
- (void)handleSplunkReportFinished:(id)finished result:(BOOL)result;
- (void)handleSuccessfulDownload:(id)download task:(id)task taskId:(id)id shouldMove:(BOOL)move extractorExists:(BOOL)exists postedDate:(id)date notModified:(BOOL)modified;
- (void)indicateAutoDownloadJobFinished:(int)finished downloadInfo:(id)info performingAutoAssetJob:(id)job ofJobType:(id)type;
- (void)indicateDownloadJobFinished:(int)finished usingXPCConnection:(id)connection withXPCMessage:(id)message performingAutoAssetJob:(id)job ofJobType:(id)type;
- (void)initializeSessionsAsync;
- (void)isBuddyRunning;
- (void)isDownloading:(id)downloading then:(id)then;
- (void)pallasRequestV2:(id)v2 normalizedType:(id)type withPurpose:(id)purpose options:(id)options using:(id)using with:(id)with autoAssetJob:(id)job clientName:(id)self0 then:(id)self1;
- (void)queryNSUrlSessiondAndUpdateState;
- (void)registerAssetDownloadJob:(id)job forAssetType:(id)type withPurpose:(id)purpose clientName:(id)name usingDownloadOptions:(id)options forAssetId:(id)id withCatalogMetadata:(id)metadata withSpaceCheckedUUID:(id)self0;
- (void)registerAssetDownloadJob:(id)job forThis:(id)this withBase:(id)base relativeTo:(id)to startingAt:(id)at withLength:(id)length extractWith:(id)with allocateExtractorIfNecessary:(BOOL)self0 connection:(id)self1 message:(id)self2 clientName:(id)self3 notify:(unint64_t)self4 withCatalogMetadata:(id)self5 withSpaceCheckedUUID:(id)self6;
- (void)registerAssetDownloadJob:(id)job withPurpose:(id)purpose usingDownloadOptions:(id)options forAssetId:(id)id withBase:(id)base relativeTo:(id)to startingAt:(id)at withLength:(id)self0 extractWith:(id)self1 allocateExtractorIfNecessary:(BOOL)self2 usingXPCConnection:(id)self3 withXPCMessage:(id)self4 clientName:(id)self5 performingAutoAssetJob:(id)self6 notify:(unint64_t)self7 withCatalogMetadata:(id)self8 withSpaceCheckedUUID:(id)self9;
- (void)registerCatalogDownloadJob:(id)job withPurpose:(id)purpose usingDownloadOptions:(id)options usingXPCConnection:(id)connection withXPCMessage:(id)message performingAutoAssetJob:(id)assetJob asClientName:(id)name;
- (void)registerPmvDownloadJob:(id)job using:(id)using with:(id)with clientName:(id)name;
- (void)registerXmlDownloadJob:(id)job using:(id)using with:(id)with clientName:(id)name;
- (void)reportDownloadAttemptResult:(id)result with:(int64_t)with;
- (void)retryTask:(id)task retryUrl:(id)url modified:(id)modified clientName:(id)name;
- (void)sendDownloadResult:(id)result with:(int64_t)with extraInfo:(id)info;
- (void)sendEvents:(id)events sessionId:(id)id;
- (void)sendMobileAssetHealthReport:(id)report commonFields:(id)fields sessionId:(id)id;
- (void)sendNotification:(id)notification;
- (void)sendNotification:(id)notification suffix:(id)suffix;
- (void)setPreviousBatchedFailureEvent:(id)event inSendEventsByUUID:(id)d;
- (void)startDownloadAndUpdateState:(id)state for:(id)for modified:(id)modified options:(id)options using:(id)using with:(id)with clientName:(id)name autoAssetJob:(id)self0 ofJobType:(id)self1;
- (void)startDownloadAndUpdateState:(id)state for:(id)for startingAt:(id)at withLength:(id)length extractWith:(id)with modified:(id)modified options:(id)options downloadSize:(int64_t)self0 using:(id)self1 with:(id)self2 clientName:(id)self3 autoAssetJob:(id)self4 ofJobType:(id)self5 notify:(unint64_t)self6 spaceCheckedUUID:(id)self7;
- (void)startDownloadTimer;
- (void)stopTimerIfNoDownloadsInProgress;
- (void)syncSplunkTasks;
- (void)taskFinishedUpdateState:(id)state with:(int64_t)with extraInfo:(id)info fromLocation:(id)location;
- (void)updateEstimateInfo:(double)info;
- (void)updateProgressIfRequired:(id)required totalWritten:(int64_t)written totalExpected:(int64_t)expected notify:(BOOL)notify;
- (void)updateStateAndNotifyIfRequired;
@end

@implementation DownloadManager

- (void)stopTimerIfNoDownloadsInProgress
{
  allKeys = [(NSMutableDictionary *)self->_downloadTasksInFlight allKeys];
  v4 = [allKeys count];

  if (!v4)
  {
    self->_timerRunning = 0;
    if (self->_timer)
    {
      v5 = _MADLog(@"Download");
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Stopping timer as there are no more downloads in flight", v6, 2u);
      }

      dispatch_suspend(self->_timer);
    }
  }
}

+ (BOOL)isDeviceBeforeFirstUnlock
{
  v2 = getDownloadManager();
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  deviceStatusQueue = [v2 deviceStatusQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __44__DownloadManager_isDeviceBeforeFirstUnlock__block_invoke;
  block[3] = &unk_4B43A0;
  v4 = v2;
  v10 = v4;
  v11 = &v13;
  v12 = &v17;
  dispatch_sync(deviceStatusQueue, block);

  if (*(v14 + 24) == 1)
  {
    v5 = _MADLog(@"Download");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "{isDeviceBeforeFirstUnlock} Performing initial NSURLSession sync on first detection of device not before first-unlock | MA_MILESTONE", v8, 2u);
    }

    [v4 queryNSUrlSessiondAndUpdateState];
    [v4 syncSplunkTasks];
  }

  v6 = *(v18 + 24);

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);

  return v6;
}

id __44__DownloadManager_isDeviceBeforeFirstUnlock__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) deviceBeforeFirstUnlock])
  {
    if (!_MAPreferencesIsInternalAllowed() || (v4 = 0, _MAPreferencesSync(@"isDeviceBeforeFirstUnlock", @"have not detected first-unlock since MA daemon startup"), AppBooleanValue = _MAPreferencesGetAppBooleanValue(@"ForceBeforeFirstUnlock", &v4), !v4) || !AppBooleanValue)
    {
      if (!MKBDeviceFormattedForContentProtection() || MKBDeviceUnlockedSinceBoot() == 1)
      {
        [*(a1 + 32) setDeviceBeforeFirstUnlock:0];
        *(*(*(a1 + 40) + 8) + 24) = 1;
      }
    }
  }

  *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) deviceBeforeFirstUnlock];
  if (([*(a1 + 32) checkMadeForBeforeFirstUnlock] & 1) == 0 && (objc_msgSend(*(a1 + 32), "deviceBeforeFirstUnlock") & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return [*(a1 + 32) setCheckMadeForBeforeFirstUnlock:1];
}

- (void)startDownloadTimer
{
  downloadStateQueue = self->_downloadStateQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __37__DownloadManager_startDownloadTimer__block_invoke;
  block[3] = &unk_4B2AA0;
  block[4] = self;
  dispatch_async(downloadStateQueue, block);
}

void __37__DownloadManager_startDownloadTimer__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) timer];

  if (v2)
  {
    if (([*(a1 + 32) timerRunning] & 1) == 0)
    {
      v3 = _MADLog(@"Download");
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Starting Download Timer", buf, 2u);
      }

      [*(a1 + 32) setTimerRunning:1];
      v4 = [*(a1 + 32) timer];
      dispatch_source_set_timer(v4, 0, 0x3B9ACA00uLL, 0);

      [*(a1 + 32) updateEstimateInfo:0.0];
      v5 = +[NSDate date];
      [*(a1 + 32) setPreviousTimeEstimatePoint:v5];

      [*(a1 + 32) setTimerRunning:1];
      v6 = [*(a1 + 32) timer];
      dispatch_resume(v6);
    }
  }

  else
  {
    v7 = _MADLog(@"Download");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Creating Download Timer", buf, 2u);
    }

    v8 = [*(a1 + 32) downloadStateQueue];
    v9 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v8);
    [*(a1 + 32) setTimer:v9];

    v10 = [*(a1 + 32) timer];
    dispatch_source_set_timer(v10, 0, 0x3B9ACA00uLL, 0);

    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = __37__DownloadManager_startDownloadTimer__block_invoke_1807;
    v16[3] = &unk_4B2AA0;
    v16[4] = *(a1 + 32);
    v11 = objc_retainBlock(v16);
    v12 = [v11 copy];
    [*(a1 + 32) setTimerHandler:v12];

    v13 = [*(a1 + 32) timer];
    v14 = [*(a1 + 32) timerHandler];
    dispatch_source_set_event_handler(v13, v14);

    [*(a1 + 32) updateEstimateInfo:0.0];
    [*(a1 + 32) setTimerRunning:1];
    v15 = [*(a1 + 32) timer];
    dispatch_activate(v15);
  }
}

- (MADAnalyticsManager)analytics
{
  v2 = getControlManager();
  analytics = [v2 analytics];

  return analytics;
}

- (int)triggerVPN
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __29__DownloadManager_triggerVPN__block_invoke;
  block[3] = &unk_4B2AA0;
  block[4] = self;
  if (triggerVPN_once != -1)
  {
    dispatch_once(&triggerVPN_once, block);
  }

  return triggerVPN_status;
}

void __29__DownloadManager_triggerVPN__block_invoke(uint64_t a1)
{
  v2 = [NSURL fileURLWithPath:@"/.nofollow/private/var/run/MobileAssetCritialDomainsUpdated.plist"];
  v24 = 0;
  v3 = [[NSMutableDictionary alloc] initWithContentsOfURL:v2 error:&v24];
  v4 = v24;
  v5 = v4;
  if (v3)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    v7 = _MADLog(@"Download");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Updating CriticalDomains(first launch since boot)", buf, 2u);
    }

    v8 = v3;
    v3 = objc_alloc_init(NSMutableDictionary);
LABEL_20:

    v18 = [*(a1 + 32) brainVersion];
    [v3 setObject:v18 forKeyedSubscript:@"BrainVersion"];

    v19 = _MADLog(@"Download");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v26 = v3;
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "Writing CriticalDomains cookie file : %@", buf, 0xCu);
    }

    v23 = 0;
    [v3 writeToURL:v2 error:&v23];
    v20 = v23;
    if (v20)
    {
      v21 = _MADLog(@"Download");
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v26 = v20;
        _os_log_impl(&dword_0, v21, OS_LOG_TYPE_ERROR, "Could not write back CriticalDomainsCookie file: %@", buf, 0xCu);
      }
    }

    v22 = xpc_array_create(0, 0);
    xpc_array_set_string(v22, 0xFFFFFFFFFFFFFFFFLL, "cheeserolling.apple.com");
    xpc_array_set_string(v22, 0xFFFFFFFFFFFFFFFFLL, "woolyjumper.sd.apple.com");
    xpc_array_set_string(v22, 0xFFFFFFFFFFFFFFFFLL, "basejumper.apple.com");
    xpc_array_set_string(v22, 0xFFFFFFFFFFFFFFFFLL, "basejumper-vip.sd.apple.com");
    xpc_array_set_string(v22, 0xFFFFFFFFFFFFFFFFLL, "basejumper.sd.apple.com");
    xpc_array_set_string(v22, 0xFFFFFFFFFFFFFFFFLL, "locksmith.apple.com");
    xpc_array_set_string(v22, 0xFFFFFFFFFFFFFFFFLL, "gdmf-staging-int.apple.com");
    xpc_array_set_string(v22, 0xFFFFFFFFFFFFFFFFLL, "pallas-uat.rno.apple.com");
    xpc_array_set_string(v22, 0xFFFFFFFFFFFFFFFFLL, "pr2-pallas-staging-int-prz.apple.com");
    xpc_array_set_string(v22, 0xFFFFFFFFFFFFFFFFLL, "livability-api.swe.apple.com");
    xpc_array_set_string(v22, 0xFFFFFFFFFFFFFFFFLL, "wkms.sd.apple.com");
    xpc_array_set_string(v22, 0xFFFFFFFFFFFFFFFFLL, "wkms-uat.sd.apple.com");
    xpc_array_set_string(v22, 0xFFFFFFFFFFFFFFFFLL, "knox.sd.apple.com");
    triggerVPN_status = NEHelperSettingsSetArray();

    goto LABEL_27;
  }

  v9 = [v3 objectForKeyedSubscript:@"BrainVersion"];
  if (!v9 || (v10 = v9, -[NSObject objectForKeyedSubscript:](v3, "objectForKeyedSubscript:", @"BrainVersion"), v11 = objc_claimAutoreleasedReturnValue(), [*(a1 + 32) brainVersion], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v11, "isEqualToString:", v12), v12, v11, v10, (v13 & 1) == 0))
  {
    v8 = _MADLog(@"Download");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [*(a1 + 32) brainVersion];
      v16 = [v3 objectForKeyedSubscript:@"BrainVersion"];
      if (v16)
      {
        v17 = [v3 objectForKeyedSubscript:@"BrainVersion"];
      }

      else
      {
        v17 = @"Unknown";
      }

      *buf = 138412546;
      v26 = v15;
      v27 = 2112;
      v28 = v17;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Updating CriticalDomains(Brain version changed: Current: %@ previous: %@)", buf, 0x16u);
      if (v16)
      {
      }
    }

    goto LABEL_20;
  }

  v14 = _MADLog(@"Download");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "Not updating CriticalDomains(already updated since boot)", buf, 2u);
  }

  triggerVPN_status = 0;
LABEL_27:
}

- (DownloadManager)init
{
  v58.receiver = self;
  v58.super_class = DownloadManager;
  v2 = [(DownloadManager *)&v58 init];
  v3 = v2;
  if (!v2)
  {
    return v3;
  }

  v2->_timerRunning = 0;
  v4 = objc_opt_new();
  currentSplunkEvent = v3->_currentSplunkEvent;
  v3->_currentSplunkEvent = v4;

  *&v3->_haveSyncedSplunkData = 0;
  v57 = 0;
  if (backgroundDownloadsPossibleWithInfo(&v57))
  {
    v3->_haveSyncedSplunkState = 0;
    v6 = _MADLog(@"Download");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      if (v57)
      {
        v7 = @"should have been forced inProc";
      }

      else
      {
        v7 = &stru_4BD3F0;
      }

      *buf = 138543362;
      v60 = v7;
      v8 = "backgroundDownloadsPossible: 1 %{public}@";
      v9 = v6;
      v10 = 12;
      goto LABEL_10;
    }
  }

  else
  {
    v3->_haveSyncedSplunkState = 1;
    v6 = _MADLog(@"Download");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v60) = v57;
      v8 = "backgroundDownloadsPossible: 1 forced inProc: %d";
      v9 = v6;
      v10 = 8;
LABEL_10:
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
    }
  }

  v11 = [[NSURL alloc] initWithString:@"https://xp.apple.com/report/2/psr_ota"];
  splunkUrl = v3->_splunkUrl;
  v3->_splunkUrl = v11;

  v13 = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US_POSIX"];
  v14 = objc_alloc_init(NSDateFormatter);
  dateFormatter = v3->_dateFormatter;
  v3->_dateFormatter = v14;

  [(NSDateFormatter *)v3->_dateFormatter setDateFormat:@"yyyy-MM-dd"];
  [(NSDateFormatter *)v3->_dateFormatter setLocale:v13];
  v16 = [NSTimeZone timeZoneForSecondsFromGMT:0];
  [(NSDateFormatter *)v3->_dateFormatter setTimeZone:v16];

  v17 = objc_opt_new();
  pallasVerifier = v3->_pallasVerifier;
  v3->_pallasVerifier = v17;

  v3->_currentState = 0;
  v3->_forceDaemonBusy = 0;
  v19 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v20 = dispatch_queue_create("com.apple.MobileAsset.daemon.download.deviceStatus", v19);
  deviceStatusQueue = v3->_deviceStatusQueue;
  v3->_deviceStatusQueue = v20;

  v22 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v23 = dispatch_queue_create("com.apple.MobileAsset.daemon.download.state", v22);
  downloadStateQueue = v3->_downloadStateQueue;
  v3->_downloadStateQueue = v23;

  v25 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v26 = dispatch_queue_create("com.apple.MobileAsset.daemon.download.dedupNSURLSessionSync", v25);
  dedupNSURLSessionSyncQueue = v3->_dedupNSURLSessionSyncQueue;
  v3->_dedupNSURLSessionSyncQueue = v26;

  v28 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v29 = dispatch_queue_create("com.apple.MobileAsset.daemon.sso", v28);
  ssoQueue = v3->_ssoQueue;
  v3->_ssoQueue = v29;

  v31 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v32 = dispatch_queue_create("com.apple.MobileAsset.daemon.splunk.state", v31);
  splunkStateQueue = v3->_splunkStateQueue;
  v3->_splunkStateQueue = v32;

  v34 = objc_opt_new();
  downloadTasksInFlight = v3->_downloadTasksInFlight;
  v3->_downloadTasksInFlight = v34;

  cachedMetaDataForAssetType = v3->_cachedMetaDataForAssetType;
  v3->_cachedMetaDataForAssetType = 0;

  backgroundDiscretionaryConfiguration = v3->_backgroundDiscretionaryConfiguration;
  v3->_backgroundDiscretionaryConfiguration = 0;

  inProcessConfig = v3->_inProcessConfig;
  v3->_inProcessConfig = 0;

  delegate = v3->_delegate;
  v3->_delegate = 0;

  splunkDelegate = v3->_splunkDelegate;
  v3->_splunkDelegate = 0;

  pallasSession = v3->_pallasSession;
  v3->_pallasSession = 0;

  inProcessSession = v3->_inProcessSession;
  v3->_inProcessSession = 0;

  backgroundSession = v3->_backgroundSession;
  v3->_backgroundSession = 0;

  splunkSession = v3->_splunkSession;
  v3->_splunkSession = 0;

  timer = v3->_timer;
  v3->_timer = 0;

  timerHandler = v3->_timerHandler;
  v3->_timerHandler = 0;

  previousTimeEstimatePoint = v3->_previousTimeEstimatePoint;
  v3->_previousTimeEstimatePoint = 0;

  if (_MAPreferencesIsInternalAllowed())
  {
    v48 = _MAPreferencesCopyValue(@"MABrainForceStartupBusy");
    if (v48)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [(__CFString *)v48 intValue]>= 1)
      {
        v49 = _MADLog(@"Brain");
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v60 = v48;
          _os_log_impl(&dword_0, v49, OS_LOG_TYPE_DEFAULT, "Forcing MA Brain to be busy during startup for %@ seconds", buf, 0xCu);
        }

        v3->_forceDaemonBusy = 1;
        v50 = dispatch_time(0, 1000000000 * [(__CFString *)v48 unsignedLongValue]);
        v51 = v3->_downloadStateQueue;
        v55[0] = _NSConcreteStackBlock;
        v55[1] = 3221225472;
        v55[2] = __23__DownloadManager_init__block_invoke;
        v55[3] = &unk_4B2AA0;
        v56 = v3;
        dispatch_after(v50, v51, v55);
      }
    }
  }

  *&v3->_checkMadeForBeforeFirstUnlock = 256;
  v3->_performingNSURLSessionSync = 0;
  v52 = objc_opt_new();
  nwActivityObjectsByJobUUID = v3->_nwActivityObjectsByJobUUID;
  v3->_nwActivityObjectsByJobUUID = v52;

  return v3;
}

void *__23__DownloadManager_init__block_invoke(uint64_t a1)
{
  v2 = _MADLog(@"Brain");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1 + 32) + 152);
    v5 = 134217984;
    v6 = v3;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "MA Brain force busy timer fired - allowing downloads now (%ld)", &v5, 0xCu);
  }

  *(*(a1 + 32) + 15) = 0;
  result = *(a1 + 32);
  if (result[19] == 3)
  {
    return [result updateStateAndNotifyIfRequired];
  }

  return result;
}

- (id)getUserAgentStringForClient:(id)client withAssetType:(id)type
{
  typeCopy = type;
  clientCopy = client;
  v8 = MGCopyAnswer();
  brainVersion = self->_brainVersion;
  if (!brainVersion)
  {
    brainVersion = @"unknownVersion";
  }

  v10 = @"unknownClient";
  if (clientCopy)
  {
    v10 = clientCopy;
  }

  v11 = @"unknownAssetType";
  if (typeCopy)
  {
    v11 = typeCopy;
  }

  v12 = @"unknownBuildVersion";
  if (v8)
  {
    v12 = v8;
  }

  v13 = [NSString stringWithFormat:@"MobileAsset/%s MAClient/%@ MABrain/%@ MAAssetType/%@ BuildVersion/%@", "1", v10, brainVersion, v11, v12];

  return v13;
}

- (void)completeNWActivity:(id)activity withParams:(id)params andError:(id)error
{
  activityCopy = activity;
  paramsCopy = params;
  errorCopy = error;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v12 = [(NSMutableDictionary *)selfCopy->_nwActivityObjectsByJobUUID safeObjectForKey:activityCopy ofClass:objc_opt_class()];
  v13 = v12;
  if (v12)
  {
    v18 = activityCopy;
    v19 = errorCopy;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v14 = v12;
    v15 = [v14 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v15)
    {
      v16 = *v21;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v21 != v16)
          {
            objc_enumerationMutation(v14);
          }

          if (paramsCopy)
          {
            nw_activity_submit_metrics();
          }

          nw_activity_complete_with_reason();
        }

        v15 = [v14 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v15);
    }

    activityCopy = v18;
    errorCopy = v19;
    [(NSMutableDictionary *)selfCopy->_nwActivityObjectsByJobUUID removeObjectForKey:v18];
  }

  objc_sync_exit(selfCopy);
}

void __37__DownloadManager_startDownloadTimer__block_invoke_1807(uint64_t a1)
{
  v8 = +[NSDate date];
  v2 = [*(a1 + 32) previousTimeEstimatePoint];

  if (v2)
  {
    [v8 timeIntervalSinceReferenceDate];
    v4 = v3;
    v5 = [*(a1 + 32) previousTimeEstimatePoint];
    [v5 timeIntervalSinceReferenceDate];
    v7 = v4 - v6;

    [*(a1 + 32) updateEstimateInfo:v7];
  }

  [*(a1 + 32) setPreviousTimeEstimatePoint:v8];
  [*(a1 + 32) stopTimerIfNoDownloadsInProgress];
}

- (void)updateEstimateInfo:(double)info
{
  downloadStateQueue = self->_downloadStateQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = __38__DownloadManager_updateEstimateInfo___block_invoke;
  v4[3] = &unk_4B36C0;
  v4[4] = self;
  *&v4[5] = info;
  dispatch_async(downloadStateQueue, v4);
}

void __38__DownloadManager_updateEstimateInfo___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) downloadTasksInFlight];

  if (v2)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v3 = [*(a1 + 32) downloadTasksInFlight];
    v4 = [v3 allValues];

    v5 = [v4 countByEnumeratingWithState:&v13 objects:v18 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v14;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v13 + 1) + 8 * i);
          v10 = objc_autoreleasePoolPush();
          if (*(a1 + 40) > 0.0)
          {
            [v9 addNewRateDataPoint:{objc_msgSend(v9, "totalBytesThisSlice") / *(a1 + 40)}];
          }

          v11 = *(a1 + 32);
          v12 = [v9 taskDescriptor];
          [v11 updateProgressIfRequired:v12 totalWritten:objc_msgSend(v9 totalExpected:"currentTotalWritten") notify:{objc_msgSend(v9, "totalExpectedBytes"), 1}];

          objc_autoreleasePoolPop(v10);
        }

        v6 = [v4 countByEnumeratingWithState:&v13 objects:v18 count:16];
      }

      while (v6);
    }
  }

  else
  {
    v4 = _MADLog(@"Download");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Cannot process interval data", buf, 2u);
    }
  }
}

- (void)initializeSessionsAsync
{
  downloadStateQueue = self->_downloadStateQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __42__DownloadManager_initializeSessionsAsync__block_invoke;
  block[3] = &unk_4B2AA0;
  block[4] = self;
  dispatch_async(downloadStateQueue, block);
}

void __42__DownloadManager_initializeSessionsAsync__block_invoke(uint64_t a1)
{
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v2 = _os_activity_create(&dword_0, "DownloadManager:initializeSessions", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v2, &state);

  v3 = [[DownloaderSessionDelegate alloc] initWithDownloadManager:*(a1 + 32)];
  [(DownloaderSessionDelegate *)v3 invalidateStaleBackgroundSessionsIfNeeded];
  v4 = +[NSURLSessionConfiguration defaultSessionConfiguration];
  [*(a1 + 32) setInProcessConfig:v4];

  v5 = [*(a1 + 32) inProcessConfig];
  [v5 setTimeoutIntervalForRequest:300.0];

  v6 = [*(a1 + 32) inProcessConfig];
  [v6 set_downloadFileProtectionType:NSFileProtectionNone];

  v7 = [*(a1 + 32) inProcessConfig];
  [v7 set_shouldSkipPreferredClientCertificateLookup:1];

  v8 = [[SplunkSessionDelegate alloc] initWithDownloadManager:*(a1 + 32)];
  [*(a1 + 32) setSplunkDelegate:v8];

  v9 = [*(a1 + 32) inProcessConfig];
  v10 = [*(a1 + 32) splunkDelegate];
  v11 = [NSURLSession sessionWithConfiguration:v9 delegate:v10 delegateQueue:0];
  [*(a1 + 32) setSplunkSession:v11];

  v12 = [[MAKeyManagerDownloadSessionDelegate alloc] initWithName:@"PallasSession" certType:0];
  [*(a1 + 32) setPallasDelegate:v12];

  v13 = [*(a1 + 32) inProcessConfig];
  v14 = [*(a1 + 32) pallasDelegate];
  v15 = [*(a1 + 32) pallasDelegate];
  v16 = [v15 queue];
  v17 = [NSURLSession sessionWithConfiguration:v13 delegate:v14 delegateQueue:v16];
  [*(a1 + 32) setPallasSession:v17];

  v18 = [MobileAssetKeyManager alloc];
  v19 = [(DownloaderSessionDelegate *)v3 keyManagerDelegate];
  v20 = [(MobileAssetKeyManager *)v18 initWithDelegate:v19];
  [*(a1 + 32) setKeyManager:v20];

  [*(a1 + 32) setDelegate:v3];
  v21 = objc_opt_new();
  [*(a1 + 32) setCachedMetaDataForAssetType:v21];

  if (!backgroundDownloadsPossibleWithInfo(0))
  {
    v32 = [*(a1 + 32) inProcessConfig];
    v33 = [(DownloaderSessionDelegate *)v3 queue];
    v34 = [NSURLSession sessionWithConfiguration:v32 delegate:v3 delegateQueue:v33];
    [*(a1 + 32) setInProcessSession:v34];

LABEL_8:
    goto LABEL_12;
  }

  v22 = [(DownloaderSessionDelegate *)v3 backgroundSessionID];
  v23 = [NSURLSessionConfiguration backgroundSessionConfigurationWithIdentifier:v22];
  [*(a1 + 32) setBackgroundDiscretionaryConfiguration:v23];

  v24 = [*(a1 + 32) backgroundDiscretionaryConfiguration];
  [v24 setDiscretionary:1];

  v25 = [*(a1 + 32) backgroundDiscretionaryConfiguration];
  [v25 setTimeoutIntervalForRequest:300.0];

  v26 = [*(a1 + 32) backgroundDiscretionaryConfiguration];
  [v26 set_downloadFileProtectionType:NSFileProtectionNone];

  v27 = [*(a1 + 32) backgroundDiscretionaryConfiguration];
  [v27 set_shouldSkipPreferredClientCertificateLookup:1];

  v28 = [*(a1 + 32) backgroundDiscretionaryConfiguration];
  v29 = [(DownloaderSessionDelegate *)v3 queue];
  v30 = [NSURLSession sessionWithConfiguration:v28 delegate:v3 delegateQueue:v29];
  [*(a1 + 32) setBackgroundSession:v30];

  v31 = _MADLog(@"Download");
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    *v36 = 0;
    _os_log_impl(&dword_0, v31, OS_LOG_TYPE_DEFAULT, "Notifying clients we are not ready for download", v36, 2u);
  }

  notify_post("com.apple.MobileAsset.DownloadsNotReady");
  if (+[DownloadManager isDeviceBeforeFirstUnlock])
  {
    v32 = _MADLog(@"Download");
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *v36 = 0;
      _os_log_impl(&dword_0, v32, OS_LOG_TYPE_DEFAULT, "{initializeSessionsAsync} Not performing initial NSURLSession sync since device is before first-unlock | MA_MILESTONE", v36, 2u);
    }

    goto LABEL_8;
  }

  v35 = _MADLog(@"Download");
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    *v36 = 0;
    _os_log_impl(&dword_0, v35, OS_LOG_TYPE_DEFAULT, "{initializeSessionsAsync} Performing initial NSURLSession sync since device is not before first-unlock | MA_MILESTONE", v36, 2u);
  }

  [*(a1 + 32) queryNSUrlSessiondAndUpdateState];
  [*(a1 + 32) syncSplunkTasks];
LABEL_12:

  os_activity_scope_leave(&state);
}

- (void)handleSplunkReportFinished:(id)finished result:(BOOL)result
{
  finishedCopy = finished;
  v7 = finishedCopy;
  if (finishedCopy)
  {
    splunkStateQueue = self->_splunkStateQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __53__DownloadManager_handleSplunkReportFinished_result___block_invoke;
    block[3] = &unk_4B3378;
    v11 = finishedCopy;
    selfCopy = self;
    resultCopy = result;
    dispatch_async(splunkStateQueue, block);
    v9 = v11;
  }

  else
  {
    v9 = _MADLog(@"Download");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Nil fileId in splunk report", buf, 2u);
    }
  }
}

void __53__DownloadManager_handleSplunkReportFinished_result___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) isEqualToString:@"bathFileForSendingEvents"];
  v3 = v2;
  if (v2)
  {
    [*(a1 + 40) setCurrentlyBatchingSplunk:0];
    if (*(a1 + 48))
    {
      v4 = @"/private/var/MobileSoftwareUpdate/MobileAsset/AssetsV2/SplunkRecords/SplunkRetry";
      goto LABEL_6;
    }
  }

  else if (*(a1 + 48) == 1)
  {
    v4 = @"/private/var/MobileSoftwareUpdate/MobileAsset/AssetsV2/SplunkRecords";
LABEL_6:
    v5 = getRepositoryPath(v4);
    v6 = [v5 stringByAppendingPathComponent:*(a1 + 32)];

    v7 = +[NSFileManager defaultManager];
    v16 = 0;
    v8 = [v7 removeItemAtPath:v6 error:&v16];
    v9 = v16;

    if ((v8 & 1) == 0)
    {
      v10 = _MADLog(@"Download");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v18 = v6;
        v19 = 2114;
        v20 = v9;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "Could not remove Splunk file: %{public}@, error: %{public}@", buf, 0x16u);
      }

LABEL_16:

      goto LABEL_17;
    }

    goto LABEL_17;
  }

  v6 = getPathToSplunkData(*(a1 + 32));
  v11 = getPathToSplunkRetry(*(a1 + 32));
  v9 = v11;
  if ((v3 & 1) == 0 && v6 && v11)
  {
    v12 = +[NSFileManager defaultManager];
    v15 = 0;
    v13 = [v12 moveItemAtURL:v6 toURL:v9 error:&v15];
    v10 = v15;

    if ((v13 & 1) == 0)
    {
      v14 = _MADLog(@"Download");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543874;
        v18 = v6;
        v19 = 2114;
        v20 = v9;
        v21 = 2114;
        v22 = v10;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "Could not move Splunk file: %{public}@ to: %{public}@ error: %{public}@", buf, 0x20u);
      }
    }

    goto LABEL_16;
  }

LABEL_17:
}

- (BOOL)addInFailedJobs:(id)jobs finalEvents:(id)events
{
  jobsCopy = jobs;
  eventsCopy = events;
  v7 = eventsCopy;
  v52 = jobsCopy;
  if (!jobsCopy || !eventsCopy)
  {
    v9 = _MADLog(@"Download");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "incoming and final events cannot be nil, skipping", buf, 2u);
    }

    goto LABEL_52;
  }

  v8 = getRepositoryPath(@"/private/var/MobileSoftwareUpdate/MobileAsset/AssetsV2/SplunkRecords/SplunkRetry");
  v9 = getFailedSplunkFiles(v8);

  if (![v9 count])
  {
    v41 = _MADLog(@"Download");
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v41, OS_LOG_TYPE_DEFAULT, "Nothing to batch", buf, 2u);
    }

LABEL_52:
    v40 = 0;
    goto LABEL_55;
  }

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v9 = v9;
  v10 = [v9 countByEnumeratingWithState:&v59 objects:v66 count:16];
  if (v10)
  {
    v11 = v10;
    v44 = v7;
    v12 = 0;
    v13 = *v60;
    p_weak_ivar_lyt = &MAAIRBMobileAssetOperationMetadata__metaData.weak_ivar_lyt;
    v15 = v52;
    v45 = *v60;
    v46 = v9;
    while (1)
    {
      v16 = 0;
      v47 = v11;
      do
      {
        if (*v60 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v50 = v16;
        v17 = *(*(&v59 + 1) + 8 * v16);
        context = objc_autoreleasePoolPush();
        v18 = getRepositoryPath(@"/private/var/MobileSoftwareUpdate/MobileAsset/AssetsV2/SplunkRecords/SplunkRetry");
        v19 = [v18 stringByAppendingPathComponent:v17];

        v20 = v19;
        v51 = dictionaryFromJsonFile(v19);
        if (!v51)
        {
          v37 = _MADLog(@"Download");
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v65 = v20;
            _os_log_impl(&dword_0, v37, OS_LOG_TYPE_DEFAULT, "Skipping file: %{public}@ as allData was nil", buf, 0xCu);
          }

          goto LABEL_37;
        }

        defaultManager = [p_weak_ivar_lyt[278] defaultManager];
        v53 = v19;
        v22 = [defaultManager removeItemAtPath:? error:?];

        if (v22)
        {
          v23 = [v51 objectForKey:@"events"];
          v48 = v12;
          if (v23)
          {
            v57 = 0u;
            v58 = 0u;
            v55 = 0u;
            v56 = 0u;
            obj = v23;
            v24 = [obj countByEnumeratingWithState:&v55 objects:v63 count:16];
            v20 = v53;
            if (v24)
            {
              v25 = v24;
              v26 = *v56;
              do
              {
                for (i = 0; i != v25; i = i + 1)
                {
                  if (*v56 != v26)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v28 = *(*(&v55 + 1) + 8 * i);
                  v29 = objc_autoreleasePoolPush();
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v30 = [[NSMutableDictionary alloc] initWithDictionary:v28];

                    v28 = v30;
                  }

                  v31 = [v28 objectForKey:@"eventUuid"];
                  if (v31)
                  {
                    v32 = [v15 objectForKey:v31];
                    v33 = _MADLog(@"Download");
                    v34 = os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);
                    if (v32)
                    {
                      if (v34)
                      {
                        *buf = 138543362;
                        v65 = v31;
                        _os_log_impl(&dword_0, v33, OS_LOG_TYPE_DEFAULT, "The event with uuid of: %{public}@ exists already, keeping one with higher error count", buf, 0xCu);
                      }

                      v35 = [v32 objectForKey:@"splunkErrorCount"];
                      if (v35)
                      {
                        v36 = [v28 objectForKey:@"splunkErrorCount"];
                        ensureAndIncrementNumberAtKey(v32, @"splunkErrorCount", v36);

                        v15 = v52;
                      }

                      else
                      {
                        ensureAndIncrementNumberAtKey(v28, @"splunkErrorCount", 0);
                        [v15 setObject:v28 forKey:v31];
                      }

                      v20 = v53;
                    }

                    else
                    {
                      if (v34)
                      {
                        *buf = 138543362;
                        v65 = v31;
                        _os_log_impl(&dword_0, v33, OS_LOG_TYPE_DEFAULT, "adding event %{public}@", buf, 0xCu);
                      }

                      [v15 setObject:v28 forKey:v31];
                    }
                  }

                  else
                  {
                    v32 = _MADLog(@"Download");
                    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 0;
                      _os_log_impl(&dword_0, v32, OS_LOG_TYPE_DEFAULT, "Skipping event, no uuid", buf, 2u);
                    }
                  }

                  objc_autoreleasePoolPop(v29);
                }

                v25 = [obj countByEnumeratingWithState:&v55 objects:v63 count:16];
              }

              while (v25);
            }

            v37 = obj;

            v12 = v48 + 1;
            v9 = v46;
            v11 = v47;
            v13 = v45;
            p_weak_ivar_lyt = (&MAAIRBMobileAssetOperationMetadata__metaData + 56);
LABEL_37:
            v38 = v50;
            goto LABEL_44;
          }

          v39 = _MADLog(@"Download");
          v20 = v53;
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v65 = v17;
            _os_log_impl(&dword_0, v39, OS_LOG_TYPE_DEFAULT, "Skipping file: %{public}@ as events was nil", buf, 0xCu);
          }

          v38 = v50;
          v37 = 0;
        }

        else
        {
          v37 = _MADLog(@"Download");
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v65 = v17;
            _os_log_impl(&dword_0, v37, OS_LOG_TYPE_DEFAULT, "Skipping file: %{public}@ as we could not delete it", buf, 0xCu);
          }

          v38 = v50;
          v20 = v53;
        }

LABEL_44:

        objc_autoreleasePoolPop(context);
        v16 = v38 + 1;
      }

      while (v16 != v11);
      v11 = [v9 countByEnumeratingWithState:&v59 objects:v66 count:16];
      if (!v11)
      {
        v40 = v12 > 0;
        v7 = v44;
        goto LABEL_54;
      }
    }
  }

  v40 = 0;
LABEL_54:

LABEL_55:
  allValues = [v52 allValues];
  [v7 addObjectsFromArray:allValues];

  return v40;
}

- (void)sendEvents:(id)events sessionId:(id)id
{
  eventsCopy = events;
  idCopy = id;
  if (eventsCopy)
  {
    if (+[DownloadManager isDeviceBeforeFirstUnlock])
    {
      v8 = _MADLog(@"Download");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "{sendEvents} unable to send SPLUNK events since device is before first-unlock", buf, 2u);
      }

      goto LABEL_48;
    }

    v9 = objc_opt_new();
    currentlyBatchingSplunk = self->_currentlyBatchingSplunk;
    v11 = _MADLog(@"Download");
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (currentlyBatchingSplunk)
    {
      if (v12)
      {
        *buf = 0;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "already batching", buf, 2u);
      }

      allValues = [eventsCopy allValues];
      [v9 addObjectsFromArray:allValues];

      v14 = 0;
    }

    else
    {
      if (v12)
      {
        *buf = 0;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "Doing batching", buf, 2u);
      }

      v14 = [(DownloadManager *)self addInFailedJobs:eventsCopy finalEvents:v9];
    }

    v48[0] = @"clientId";
    v48[1] = @"events";
    v49[0] = idCopy;
    v49[1] = v9;
    v15 = [NSDictionary dictionaryWithObjects:v49 forKeys:v48 count:2];
    if ([NSJSONSerialization isValidJSONObject:v15])
    {
      v16 = [NSJSONSerialization dataWithJSONObject:v15 options:0 error:0];
      if (v16)
      {
        v17 = v16;
        v18 = +[NSUUID UUID];
        uUIDString = [v18 UUIDString];

        v39 = uUIDString;
        if (v14)
        {
          self->_currentlyBatchingSplunk = 1;
          v20 = getPathToSplunkRetry(@"bathFileForSendingEvents");
          absoluteString = [v20 absoluteString];
          v8 = [NSURL fileURLWithPath:absoluteString];

          goto LABEL_26;
        }

        if (self->_haveSyncedSplunkState)
        {
          getPathToSplunkData(uUIDString);
        }

        else
        {
          getPathToSplunkRetry(uUIDString);
        }
        v8 = ;
        if (v8)
        {
LABEL_26:
          v41 = 0;
          v24 = [v17 writeToURL:v8 options:1 error:&v41, v39];
          v23 = v41;
          if (v24)
          {
            if (self->_haveSyncedSplunkState)
            {
              if (self->_splunkSession && self->_splunkUrl)
              {
                v25 = [NSMutableURLRequest requestWithURL:?];
                if (v25)
                {
                  v26 = v25;
                  [v25 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
                  [v26 setValue:@"MobileAsset/1.1" forHTTPHeaderField:@"User-Agent"];
                  [v26 setHTTPMethod:@"POST"];
                  v27 = [(NSURLSession *)self->_splunkSession uploadTaskWithRequest:v26 fromFile:v8];
                  if (v27)
                  {
                    v28 = v27;
                    if (v14)
                    {
                      v29 = @"bathFileForSendingEvents";
                    }

                    else
                    {
                      v29 = v40;
                    }

                    [v27 setTaskDescription:v29];
                    PreferenceLong = getPreferenceLong(@"SplunkTimeout");
                    if ((PreferenceLong & 0x8000000000000000) == 0)
                    {
                      [NSNumber numberWithLong:PreferenceLong];
                      v37 = v36 = v26;
                      [v37 doubleValue];
                      [v28 set_timeoutIntervalForResource:?];

                      v26 = v36;
                    }

                    v38 = _MADLog(@"Download");
                    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138543362;
                      v43 = v15;
                      _os_log_impl(&dword_0, v38, OS_LOG_TYPE_DEFAULT, "Sending splunk event:%{public}@", buf, 0xCu);
                    }

                    [v28 resume];
                  }

                  else
                  {
                    v28 = _MADLog(@"Download");
                    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 0;
                      _os_log_impl(&dword_0, v28, OS_LOG_TYPE_DEFAULT, "SPLUNK Failed when creating task", buf, 2u);
                    }
                  }

                  goto LABEL_46;
                }

                v30 = _MADLog(@"Download");
                if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  v31 = "SPLUNK Failed when creating request";
                  goto LABEL_43;
                }

LABEL_45:

LABEL_46:
                goto LABEL_47;
              }

              v30 = _MADLog(@"Download");
              if (!os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_45;
              }

              *buf = 0;
              v31 = "SPLUNK Failed due to nil session or url";
            }

            else
            {
              v30 = _MADLog(@"Download");
              if (!os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_45;
              }

              *buf = 0;
              v31 = "Have not synced splunk, skipping networking";
            }

LABEL_43:
            v32 = v30;
            v33 = 2;
            goto LABEL_44;
          }

          v30 = _MADLog(@"Download");
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543874;
            v43 = v8;
            v44 = 1024;
            v45 = v14;
            v46 = 2114;
            v47 = v23;
            v31 = "SPLUNK Failed due to writing data to file:%{public}@ isBatch: %d with: %{public}@";
            v32 = v30;
            v33 = 28;
LABEL_44:
            _os_log_impl(&dword_0, v32, OS_LOG_TYPE_DEFAULT, v31, buf, v33);
            goto LABEL_45;
          }

          goto LABEL_45;
        }

        v34 = _MADLog(@"Download");
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v34, OS_LOG_TYPE_DEFAULT, "SPLUNK Failed due to nil path to file", buf, 2u);
        }

LABEL_21:
        v23 = 0;
        v8 = 0;
LABEL_47:

LABEL_48:
        goto LABEL_49;
      }
    }

    else
    {
      v22 = _MADLog(@"Download");
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "SPLUNK unable to create payload", buf, 2u);
      }
    }

    v17 = _MADLog(@"Download");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "SPLUNK Failed due to nil data", buf, 2u);
    }

    goto LABEL_21;
  }

LABEL_49:
}

- (void)sendMobileAssetHealthReport:(id)report commonFields:(id)fields sessionId:(id)id
{
  reportCopy = report;
  fieldsCopy = fields;
  idCopy = id;
  if (reportCopy)
  {
    if (+[DownloadManager isDeviceBeforeFirstUnlock])
    {
      v11 = _MADLog(@"Analytics");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "{sendEvents} unable to send SPLUNK events since device is before first-unlock", buf, 2u);
      }

      goto LABEL_38;
    }

    v30[0] = @"clientId";
    v30[1] = @"events";
    v31[0] = idCopy;
    v31[1] = reportCopy;
    v12 = [NSDictionary dictionaryWithObjects:v31 forKeys:v30 count:2];
    v11 = [NSMutableDictionary dictionaryWithDictionary:v12];

    [v11 addEntriesFromDictionary:fieldsCopy];
    if ([NSJSONSerialization isValidJSONObject:v11])
    {
      v13 = [NSJSONSerialization dataWithJSONObject:v11 options:0 error:0];
      if (v13)
      {
        v14 = v13;
        if (self->_haveSyncedSplunkState)
        {
          if (self->_splunkSession && self->_splunkUrl)
          {
            v15 = [NSMutableURLRequest requestWithURL:?];
            if (v15)
            {
              v16 = v15;
              [v15 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
              [v16 setValue:@"MobileAsset/1.1" forHTTPHeaderField:@"User-Agent"];
              [v16 setHTTPMethod:@"POST"];
              v17 = [(NSURLSession *)self->_splunkSession uploadTaskWithRequest:v16 fromData:v14];
              if (!v17)
              {
                v18 = _MADLog(@"Analytics");
                if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
                {
                  *buf = 0;
                  _os_log_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "SPLUNK Failed when creating task", buf, 2u);
                }

                goto LABEL_35;
              }

              v18 = v17;
              idCopy = [NSString stringWithFormat:@"MAHR-%@", idCopy];
              [v18 setTaskDescription:idCopy];

              PreferenceLong = getPreferenceLong(@"SplunkTimeout");
              if ((PreferenceLong & 0x8000000000000000) == 0)
              {
                v21 = [NSNumber numberWithLong:PreferenceLong];
                [v21 doubleValue];
                [v18 set_timeoutIntervalForResource:?];
              }

              IsVerboseLoggingEnabled = _MAPreferencesIsVerboseLoggingEnabled();
              v23 = _MADLog(@"Analytics");
              v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
              if (IsVerboseLoggingEnabled)
              {
                if (v24)
                {
                  *buf = 138543362;
                  v29 = v11;
                  v25 = "Sending splunk event:\n%{public}@";
LABEL_33:
                  _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEFAULT, v25, buf, 0xCu);
                }
              }

              else if (v24)
              {
                *buf = 138543362;
                v29 = idCopy;
                v25 = "Sending splunk event; session id: %{public}@";
                goto LABEL_33;
              }

              [v18 resume];
LABEL_35:

              goto LABEL_36;
            }

            v16 = _MADLog(@"Analytics");
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              v27 = "SPLUNK Failed when creating request";
              goto LABEL_26;
            }

LABEL_36:

LABEL_37:
LABEL_38:

            goto LABEL_39;
          }

          v16 = _MADLog(@"Analytics");
          if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_36;
          }

          *buf = 0;
          v27 = "SPLUNK Failed due to nil session or url";
        }

        else
        {
          v16 = _MADLog(@"Analytics");
          if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_36;
          }

          *buf = 0;
          v27 = "Have not synced splunk, skipping networking";
        }

LABEL_26:
        _os_log_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, v27, buf, 2u);
        goto LABEL_36;
      }
    }

    else
    {
      v26 = _MADLog(@"Analytics");
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v26, OS_LOG_TYPE_ERROR, "SPLUNK unable to create payload", buf, 2u);
      }
    }

    v14 = _MADLog(@"Analytics");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "SPLUNK Failed due to nil data", buf, 2u);
    }

    goto LABEL_37;
  }

LABEL_39:
}

- (void)configDownload:(id)download clientName:(id)name using:(id)using with:(id)with
{
  downloadCopy = download;
  nameCopy = name;
  usingCopy = using;
  withCopy = with;
  v14 = _MADLog(@"Download");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v25 = nameCopy;
    _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "In configDownload for client: %{public}@", buf, 0xCu);
  }

  v15 = downloadManagerDecodeClasses();
  v16 = getObjectFromMessage(withCopy, "downloadConfigLength", "downloadConfig", v15);

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = [objc_opt_new() initWithPlist:v16];

    [v17 logConfig];
    v16 = v17;
    if (!v17)
    {
      goto LABEL_15;
    }

    goto LABEL_9;
  }

  if (v16)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v23 = _MADLog(@"Download");
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v25 = nameCopy;
        _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEFAULT, "No options specified for download config, wrong class, skipping configDownload for: %{public}@", buf, 0xCu);
      }

      [(DownloadManager *)self indicateDownloadJobFinished:2 usingXPCConnection:usingCopy withXPCMessage:withCopy];
      goto LABEL_24;
    }

    [v16 logConfig];
LABEL_9:
    string = xpc_dictionary_get_string(withCopy, "Purpose");
    if (string)
    {
      v19 = [NSString stringWithUTF8String:string];
      if (!isWellFormedPurpose(v19))
      {
        v20 = _MADLog(@"Download");
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v25 = nameCopy;
          _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "Supplied purpose for download config is not well formed, skipping configDownload for: %{public}@", buf, 0xCu);
        }

        [(DownloadManager *)self indicateDownloadJobFinished:2 usingXPCConnection:usingCopy withXPCMessage:withCopy];
        goto LABEL_20;
      }
    }

    else
    {
      v19 = 0;
    }

    v22 = [NSString stringWithUTF8String:xpc_dictionary_get_string(withCopy, "AssetId")];
    [(DownloadManager *)self configAssetDownload:downloadCopy withPurpose:v19 matchingAssetId:v22 usingDownloadConfig:v16 usingXPCConnection:usingCopy withXPCMessage:withCopy performingAutoAssetJob:0 asClientName:nameCopy];

LABEL_20:
LABEL_24:

    goto LABEL_25;
  }

  [0 logConfig];
LABEL_15:
  v21 = _MADLog(@"Download");
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v25 = nameCopy;
    _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "No options specified for download config, skipping configDownload for: %{public}@", buf, 0xCu);
  }

  [(DownloadManager *)self indicateDownloadJobFinished:2 usingXPCConnection:usingCopy withXPCMessage:withCopy];
LABEL_25:
}

- (void)configAssetDownloadJob:(id)job forAssetType:(id)type withPurpose:(id)purpose matchingAssetId:(id)id usingDownloadOptions:(id)options forAutoAssetName:(id)name
{
  jobCopy = job;
  typeCopy = type;
  purposeCopy = purpose;
  idCopy = id;
  optionsCopy = options;
  nameCopy = name;
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x2020000000;
  v34[3] = 2;
  v20 = normalizedAssetType(typeCopy);
  v21 = assembleTaskDescriptorWithPurposeAndAutoAssetJobID(v20, idCopy, purposeCopy, jobCopy);
  downloadStateQueue = self->_downloadStateQueue;
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = __121__DownloadManager_configAssetDownloadJob_forAssetType_withPurpose_matchingAssetId_usingDownloadOptions_forAutoAssetName___block_invoke;
  v27[3] = &unk_4B3F60;
  v28 = v21;
  selfCopy = self;
  v30 = nameCopy;
  v31 = optionsCopy;
  v32 = jobCopy;
  v33 = v34;
  v23 = jobCopy;
  v24 = optionsCopy;
  v25 = nameCopy;
  v26 = v21;
  dispatch_async(downloadStateQueue, v27);

  _Block_object_dispose(v34, 8);
}

void __121__DownloadManager_configAssetDownloadJob_forAssetType_withPurpose_matchingAssetId_usingDownloadOptions_forAutoAssetName___block_invoke(uint64_t a1)
{
  if (!*(a1 + 32))
  {
LABEL_30:
    v3 = 0;
    goto LABEL_36;
  }

  v2 = [*(a1 + 40) downloadTasksInFlight];
  v3 = [v2 objectForKey:*(a1 + 32)];

  if (!v3)
  {
    v24 = _MADLog(@"Download");
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = *(a1 + 48);
      v26 = *(a1 + 32);
      v27 = 138543618;
      v28 = v25;
      v29 = 2114;
      v30 = v26;
      _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEFAULT, "Config for client: %{public}@ and descriptor: %{public}@ failed as task could not be found", &v27, 0x16u);
    }

    goto LABEL_30;
  }

  [v3 changingConfig];
  if ([*(a1 + 56) discretionary])
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  v5 = [v3 task];
  [v5 set_discretionaryOverride:v4];

  if (__isPlatformVersionAtLeast(2, 18, 4, 0))
  {
    v6 = [v3 task];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = objc_opt_new();
      if ([*(a1 + 56) allowsCellularAccess])
      {
        v9 = _MADLog(@"Download");
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = *(a1 + 32);
          v27 = 138543362;
          v28 = v10;
          _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "[BackgroundTaskOverride]: Configuring download for task:%{public}@ overriding Cellular", &v27, 0xCu);
        }

        [v8 setAllowsCellularAccess:1];
      }

      if ([*(a1 + 56) allowsExpensiveAccess])
      {
        v11 = _MADLog(@"Download");
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = *(a1 + 32);
          v27 = 138543362;
          v28 = v12;
          _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "[BackgroundTaskOverride]: Configuring download for task:%{public}@ overriding Expensive", &v27, 0xCu);
        }

        [v8 setAllowsExpensiveNetworkAccess:1];
      }

      if ([*(a1 + 56) allowsConstrainedAccess])
      {
        v13 = _MADLog(@"Download");
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = *(a1 + 32);
          v27 = 138543362;
          v28 = v14;
          _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "[BackgroundTaskOverride]: Configuring download for task:%{public}@ overriding Constrained", &v27, 0xCu);
        }

        [v8 setAllowsConstrainedNetworkAccess:1];
      }

      if (([v8 allowsCellularAccess] & 1) != 0 || (objc_msgSend(v8, "allowsExpensiveNetworkAccess") & 1) != 0 || objc_msgSend(v8, "allowsConstrainedNetworkAccess"))
      {
        v15 = [v3 task];
        v16 = [v15 _effectiveConfiguration];
        v17 = [v16 identifier];
        v18 = v17 == 0;

        v19 = _MADLog(@"Download");
        v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
        if (v18)
        {
          if (v20)
          {
            LOWORD(v27) = 0;
            _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "[BackgroundTaskOverride]: Overriding of parameters not supported for in process downloads. Skipping", &v27, 2u);
          }
        }

        else
        {
          if (v20)
          {
            v21 = *(a1 + 32);
            v22 = [v8 description];
            v27 = 138543618;
            v28 = v21;
            v29 = 2114;
            v30 = v22;
            _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "[BackgroundTaskOverride]: Configuring download for task:%{public}@ overriding:%{public}@", &v27, 0x16u);
          }

          v23 = [v3 task];
          [v23 _applyBackgroundTaskOverrides:v8];
        }
      }
    }
  }

  *(*(*(a1 + 72) + 8) + 24) = 0;
LABEL_36:
  [*(a1 + 40) indicateAutoDownloadJobFinished:*(*(*(a1 + 72) + 8) + 24) downloadInfo:v3 performingAutoAssetJob:*(a1 + 64) ofJobType:@"config_job"];
}

- (void)configAssetDownload:(id)download withPurpose:(id)purpose matchingAssetId:(id)id usingDownloadConfig:(id)config usingXPCConnection:(id)connection withXPCMessage:(id)message performingAutoAssetJob:(id)job asClientName:(id)self0
{
  downloadCopy = download;
  purposeCopy = purpose;
  idCopy = id;
  configCopy = config;
  connectionCopy = connection;
  messageCopy = message;
  jobCopy = job;
  nameCopy = name;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v22 = _os_activity_create(&dword_0, "DownloadManager:configAssetDownload", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v22, &state);

  v44[0] = 0;
  v44[1] = v44;
  v44[2] = 0x2020000000;
  v44[3] = 2;
  v33 = downloadCopy;
  v23 = normalizedAssetType(downloadCopy);
  v24 = assembleTaskDescriptorWithPurposeAndAutoAssetJobID(v23, idCopy, purposeCopy, jobCopy);
  downloadStateQueue = self->_downloadStateQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __157__DownloadManager_configAssetDownload_withPurpose_matchingAssetId_usingDownloadConfig_usingXPCConnection_withXPCMessage_performingAutoAssetJob_asClientName___block_invoke;
  block[3] = &unk_4B3F88;
  v36 = v24;
  selfCopy = self;
  v38 = nameCopy;
  v39 = configCopy;
  v40 = jobCopy;
  v41 = connectionCopy;
  v42 = messageCopy;
  v43 = v44;
  v26 = messageCopy;
  v27 = connectionCopy;
  v28 = jobCopy;
  v29 = configCopy;
  v30 = nameCopy;
  v31 = v24;
  dispatch_async(downloadStateQueue, block);

  _Block_object_dispose(v44, 8);
  os_activity_scope_leave(&state);
}

void __157__DownloadManager_configAssetDownload_withPurpose_matchingAssetId_usingDownloadConfig_usingXPCConnection_withXPCMessage_performingAutoAssetJob_asClientName___block_invoke(uint64_t a1)
{
  if (!*(a1 + 32))
  {
LABEL_10:
    v3 = 0;
    goto LABEL_11;
  }

  v2 = [*(a1 + 40) downloadTasksInFlight];
  v3 = [v2 objectForKey:*(a1 + 32)];

  if (!v3)
  {
    v6 = _MADLog(@"Download");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 48);
      v8 = *(a1 + 32);
      v12 = 138543618;
      v13 = v7;
      v14 = 2114;
      v15 = v8;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Config for client: %{public}@ and descriptor: %{public}@ failed as task could not be found", &v12, 0x16u);
    }

    goto LABEL_10;
  }

  [v3 changingConfig];
  if ([*(a1 + 56) discretionary])
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  v5 = [v3 task];
  [v5 set_discretionaryOverride:v4];

  *(*(*(a1 + 88) + 8) + 24) = 0;
LABEL_11:
  v9 = *(a1 + 64);
  v10 = *(a1 + 40);
  v11 = *(*(*(a1 + 88) + 8) + 24);
  if (v9)
  {
    [v10 indicateAutoDownloadJobFinished:v11 downloadInfo:v3 performingAutoAssetJob:v9 ofJobType:@"config_job"];
  }

  else
  {
    [v10 indicateDownloadJobFinished:v11 usingXPCConnection:*(a1 + 72) withXPCMessage:*(a1 + 80)];
  }
}

- (void)cancelAssetDownloadJob:(id)job forAssetType:(id)type withPurpose:(id)purpose matchingAssetId:(id)id forAutoAssetName:(id)name
{
  jobCopy = job;
  typeCopy = type;
  purposeCopy = purpose;
  idCopy = id;
  nameCopy = name;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v17 = _os_activity_create(&dword_0, "DownloadManager:cancelAssetDownloadJob", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v17, &state);

  v18 = normalizedAssetType(typeCopy);
  v19 = assembleTaskDescriptorWithPurposeAndAutoAssetJobID(v18, idCopy, purposeCopy, jobCopy);
  downloadStateQueue = self->_downloadStateQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __100__DownloadManager_cancelAssetDownloadJob_forAssetType_withPurpose_matchingAssetId_forAutoAssetName___block_invoke;
  block[3] = &unk_4B3FB0;
  v28 = v19;
  v29 = jobCopy;
  v30 = typeCopy;
  v31 = purposeCopy;
  v32 = idCopy;
  v33 = nameCopy;
  selfCopy = self;
  v21 = nameCopy;
  v22 = idCopy;
  v23 = purposeCopy;
  v24 = typeCopy;
  v25 = jobCopy;
  v26 = v19;
  dispatch_async(downloadStateQueue, block);

  os_activity_scope_leave(&state);
}

void __100__DownloadManager_cancelAssetDownloadJob_forAssetType_withPurpose_matchingAssetId_forAutoAssetName___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [*(a1 + 80) downloadTasksInFlight];
    v3 = [v2 objectForKey:*(a1 + 32)];

    v4 = _MADLog(@"Download");
    v5 = v4;
    if (v3)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(a1 + 48);
        v7 = *(a1 + 56);
        v8 = *(a1 + 64);
        v9 = *(a1 + 72);
        v11 = *(a1 + 32);
        v10 = *(a1 + 40);
        v12 = errorStringForMACancelDownloadResult(0);
        v25 = 138545154;
        v26 = v10;
        v27 = 2114;
        v28 = v6;
        v29 = 2114;
        v30 = v7;
        v31 = 2114;
        v32 = v8;
        v33 = 2114;
        v34 = v9;
        v35 = 2114;
        v36 = v11;
        v37 = 2048;
        v38 = 0;
        v39 = 2114;
        v40 = v12;
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "{cancelAssetDownloadJob} cancel of overallJobInfo in downloadTasksInFlight | autoAssetJobID:%{public}@, assetType:%{public}@, purpose:%{public}@, assetId:%{public}@, autoAssetName:%{public}@ | taskDescriptor:%{public}@ | result:%ld(%{public}@)", &v25, 0x52u);
      }

      v5 = [v3 task];
      [v5 cancel];
    }

    else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v18 = *(a1 + 48);
      v19 = *(a1 + 56);
      v20 = *(a1 + 64);
      v21 = *(a1 + 72);
      v23 = *(a1 + 32);
      v22 = *(a1 + 40);
      v24 = errorStringForMACancelDownloadResult(3uLL);
      v25 = 138545154;
      v26 = v22;
      v27 = 2114;
      v28 = v18;
      v29 = 2114;
      v30 = v19;
      v31 = 2114;
      v32 = v20;
      v33 = 2114;
      v34 = v21;
      v35 = 2114;
      v36 = v23;
      v37 = 2048;
      v38 = 3;
      v39 = 2114;
      v40 = v24;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "{cancelAssetDownloadJob} unable to locate overallJobInfo in downloadTasksInFlight | autoAssetJobID:%{public}@, assetType:%{public}@, purpose:%{public}@, assetId:%{public}@, autoAssetName:%{public}@ | taskDescriptor:%{public}@ | result:%ld(%{public}@)", &v25, 0x52u);
    }

    goto LABEL_10;
  }

  v3 = _MADLog(@"Download");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v13 = *(a1 + 40);
    v14 = *(a1 + 48);
    v15 = *(a1 + 56);
    v16 = *(a1 + 64);
    v17 = *(a1 + 72);
    v5 = errorStringForMACancelDownloadResult(4uLL);
    v25 = 138544898;
    v26 = v13;
    v27 = 2114;
    v28 = v14;
    v29 = 2114;
    v30 = v15;
    v31 = 2114;
    v32 = v16;
    v33 = 2114;
    v34 = v17;
    v35 = 2048;
    v36 = 4;
    v37 = 2114;
    v38 = v5;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "{cancelAssetDownloadJob} unable to assemble taskDescriptor | autoAssetJobID:%{public}@, assetType:%{public}@, purpose:%{public}@, assetId:%{public}@, autoAssetName:%{public}@ | result:%ld(%{public}@)", &v25, 0x48u);
LABEL_10:
  }
}

- (void)cancelAssetDownloadTask:(id)task
{
  taskCopy = task;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v5 = _os_activity_create(&dword_0, "DownloadManager:cancelAssetDownloadTask", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v5, &state);

  downloadStateQueue = self->_downloadStateQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __43__DownloadManager_cancelAssetDownloadTask___block_invoke;
  v8[3] = &unk_4B2B18;
  v9 = taskCopy;
  selfCopy = self;
  v7 = taskCopy;
  dispatch_async(downloadStateQueue, v8);

  os_activity_scope_leave(&state);
}

void __43__DownloadManager_cancelAssetDownloadTask___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [*(a1 + 40) downloadTasksInFlight];
    v3 = [v2 objectForKey:*(a1 + 32)];

    v4 = _MADLog(@"Download");
    v5 = v4;
    if (v3)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(a1 + 32);
        v8 = 138543362;
        v9 = v6;
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "{cancelAssetDownloadTask} cancel of overallJobInfo in downloadTasksInFlight | taskDescriptor:%{public}@", &v8, 0xCu);
      }

      v5 = [v3 task];
      [v5 cancel];
    }

    else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = 138543362;
      v9 = v7;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "{cancelAssetDownloadTask} unable to locate overallJobInfo in downloadTasksInFlight | taskDescriptor:%{public}@", &v8, 0xCu);
    }
  }

  else
  {
    v3 = _MADLog(@"Download");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v8) = 0;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "{cancelAssetDownloadTask} nil taskDescriptor provided", &v8, 2u);
    }
  }
}

+ (id)pathToCatalogLookupServer:(id)server usingDownloadOptions:(id)options
{
  serverCopy = server;
  optionsCopy = options;
  v7 = getDownloadManager();
  IsInternalAllowed = _MAPreferencesIsInternalAllowed();
  if ([v7 getPallasEnabledForAssetType:serverCopy])
  {
    _MAPreferencesSync(@"pathToCatalogLookupServer", serverCopy);
    v9 = [DownloadManager getPallasUrl:IsInternalAllowed assetType:serverCopy];
  }

  else if (optionsCopy && ([optionsCopy liveServerCatalogOnly] & 1) != 0)
  {
    v9 = 0;
  }

  else
  {
    v10 = normalizedAssetType(serverCopy);
    v9 = getStandardUrl(serverCopy, v10);
  }

  return v9;
}

- (void)handleDownloadCannotStartResult:(int64_t)result assetType:(id)type connection:(id)connection requestMessage:(id)message clientName:(id)name autoAssetJobID:(id)d ofJobType:(id)jobType underlyingError:(id)self0 additionalData:(id)self1 notifyingAutoAssetLayer:(BOOL)self2
{
  typeCopy = type;
  connection = connection;
  original = message;
  nameCopy = name;
  dCopy = d;
  jobTypeCopy = jobType;
  errorCopy = error;
  dataCopy = data;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v16 = _os_activity_create(&dword_0, "DownloadManager:handleDownloadCannotStartResult", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v16, &state);

  v54 = self->_brainVersion;
  if (result)
  {
    v17 = [SUCore stringIsEqual:jobTypeCopy to:@"catalog_job"];
    v18 = errorStringForMADownloadResult(result);
    v19 = v18;
    v20 = @"asset";
    if (v17)
    {
      v20 = @"catalog";
    }

    result = [NSString stringWithFormat:@"Cannot start %@ download: %@(%ld)", v20, v18, result];

    v27 = MAErrorForDownloadResultWithUnderlying(result, errorCopy, @"%@", v22, v23, v24, v25, v26, result);
  }

  else
  {
    v27 = 0;
  }

  if (dCopy)
  {
    if ([SUCore stringIsEqual:jobTypeCopy to:@"catalog_job"])
    {
      if (layer)
      {
        [MADAutoAssetControlManager catalogDownloadJobFinished:dCopy withCatalog:0 error:v27];
      }

      v28 = @"XML";
    }

    else
    {
      if (layer)
      {
        [MADAutoAssetControlManager assetDownloadJobFinished:dCopy error:v27];
      }

      if (([SUCore stringIsEqual:jobTypeCopy to:@"PMV_job"]& 1) != 0)
      {
        v28 = @"PMV";
      }

      else if (([SUCore stringIsEqual:jobTypeCopy to:@"asset_job"]& 1) != 0)
      {
        v28 = @"ZIP";
      }

      else if ([SUCore stringIsEqual:jobTypeCopy to:@"config_job"])
      {
        v28 = @"CFG";
      }

      else
      {
        v28 = 0;
      }
    }
  }

  else
  {
    if (connection)
    {
      if (!original)
      {
        v28 = 0;
        goto LABEL_31;
      }

      reply = xpc_dictionary_create_reply(original);
      v30 = reply;
      if (reply)
      {
        xpc_dictionary_set_int64(reply, "Result", result);
        xpc_connection_send_message(connection, v30);
      }

      else
      {
        v31 = _MADLog(@"Download");
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v31, OS_LOG_TYPE_DEFAULT, "Skipping due to no reply", buf, 2u);
        }
      }
    }

    else
    {
      v30 = _MADLog(@"Download");
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v30, OS_LOG_TYPE_DEFAULT, "Skipping due to no connection", buf, 2u);
      }
    }

    v28 = 0;
  }

LABEL_31:
  v53 = v28;
  if (!v27)
  {
    v41 = 0;
    checkedDomain = 0;
    checkedDescription3 = 0;
LABEL_45:
    checkedDescription2 = @"No underlying errors";
    goto LABEL_46;
  }

  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  underlyingErrors = [v27 underlyingErrors];
  checkedDescription2 = 0;
  v34 = [underlyingErrors countByEnumeratingWithState:&v74 objects:v82 count:16];
  if (v34)
  {
    v35 = *v75;
    do
    {
      for (i = 0; i != v34; i = i + 1)
      {
        if (*v75 != v35)
        {
          objc_enumerationMutation(underlyingErrors);
        }

        v37 = *(*(&v74 + 1) + 8 * i);
        if (checkedDescription2)
        {
          v38 = [NSString alloc];
          checkedDescription = [v37 checkedDescription];
          v40 = [v38 initWithFormat:@"%@\n%@", checkedDescription2, checkedDescription];

          checkedDescription2 = v40;
        }

        else
        {
          checkedDescription2 = [*(*(&v74 + 1) + 8 * i) checkedDescription];
        }
      }

      v34 = [underlyingErrors countByEnumeratingWithState:&v74 objects:v82 count:16];
    }

    while (v34);
  }

  v41 = [[NSNumber alloc] initWithInteger:{objc_msgSend(v27, "checkedCode")}];
  checkedDomain = [v27 checkedDomain];
  checkedDescription3 = [v27 checkedDescription];
  if (!checkedDescription2)
  {
    goto LABEL_45;
  }

LABEL_46:
  v44 = &off_4F7F28;
  if (v41)
  {
    v44 = v41;
  }

  v80[0] = @"FailureErrorCode";
  v80[1] = @"FailureErrorDomain";
  v45 = @"com.apple.MobileAssetError.Download";
  if (checkedDomain)
  {
    v45 = checkedDomain;
  }

  v81[0] = v44;
  v81[1] = v45;
  v80[2] = @"FailureErrorMessage";
  v80[3] = @"FailureErrorUnderlying";
  v46 = @"Unknown error starting download";
  if (checkedDescription3)
  {
    v46 = checkedDescription3;
  }

  v81[2] = v46;
  v81[3] = checkedDescription2;
  v47 = [NSDictionary dictionaryWithObjects:v81 forKeys:v80 count:4];
  v48 = [NSMutableDictionary dictionaryWithDictionary:v47];

  if (dataCopy)
  {
    [v48 addEntriesFromDictionary:dataCopy];
  }

  splunkStateQueue = self->_splunkStateQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __178__DownloadManager_handleDownloadCannotStartResult_assetType_connection_requestMessage_clientName_autoAssetJobID_ofJobType_underlyingError_additionalData_notifyingAutoAssetLayer___block_invoke;
  block[3] = &unk_4B3FD8;
  block[4] = self;
  v67 = typeCopy;
  v71 = v48;
  resultCopy = result;
  v68 = nameCopy;
  v69 = v53;
  v73 = dCopy != 0;
  v70 = v54;
  valuea = v48;
  v50 = v54;
  v51 = nameCopy;
  v52 = typeCopy;
  dispatch_async(splunkStateQueue, block);

  os_activity_scope_leave(&state);
}

void __178__DownloadManager_handleDownloadCannotStartResult_assetType_connection_requestMessage_clientName_autoAssetJobID_ofJobType_underlyingError_additionalData_notifyingAutoAssetLayer___block_invoke(uint64_t a1)
{
  v7 = [*(a1 + 32) analytics];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = stringForMADownloadResult(*(a1 + 80));
  LOBYTE(v6) = 0;
  LOWORD(v5) = *(a1 + 88);
  [v7 recordDownloadAttemptForAssetType:v2 clientName:v3 baseUrl:0 relativePath:0 purpose:0 result:v4 analyticsFileType:*(a1 + 56) isAutoDownload:v5 isPallas:0 pallasAssetAudience:v6 isUserPriority:0 bytesWritten:0 bytesTransferredEst:*(a1 + 64) brainVersion:0 withTaskMetrics:0 withOptions:*(a1 + 72) additionalData:?];
}

- (void)reportDownloadAttemptResult:(id)result with:(int64_t)with
{
  resultCopy = result;
  taskDescriptor = [resultCopy taskDescriptor];
  v8 = disassembleTaskDescriptor(taskDescriptor);

  v9 = [v8 objectForKey:@"normalizedAssetType"];
  v59 = v9;
  if (v9)
  {
    v69 = assetTypeFromNormalized(v9);
  }

  else
  {
    v69 = &stru_4BD3F0;
  }

  v61 = [v8 objectForKey:@"Purpose"];
  firstClientName = [resultCopy firstClientName];
  baseUrlNoACS = [resultCopy baseUrlNoACS];
  relativePath = [resultCopy relativePath];
  withCopy = with;
  v57 = stringForMADownloadResult(with);
  v10 = [v8 objectForKey:@"isXml"];
  intValue = [v10 intValue];
  v55 = v8;
  if (intValue >= 6)
  {
    v53 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Unknown%d", [v10 intValue]);
  }

  else
  {
    v53 = *(&off_4B4420 + intValue);
  }

  currentTotalWritten = [resultCopy currentTotalWritten];
  transferredBytesEst = [resultCopy transferredBytesEst];
  v51 = [[NSNumber alloc] initWithLongLong:currentTotalWritten];
  v50 = [[NSNumber alloc] initWithLongLong:transferredBytesEst & ~(transferredBytesEst >> 63)];
  downloadStartTime = [resultCopy downloadStartTime];
  v15 = [downloadStartTime copy];

  nonDiscretionaryUpgradeTime = [resultCopy nonDiscretionaryUpgradeTime];
  v17 = [nonDiscretionaryUpgradeTime copy];

  isDiscretionary = [resultCopy isDiscretionary];
  isPallas = [resultCopy isPallas];
  isAutoDownload = [resultCopy isAutoDownload];
  assetAudience = [resultCopy assetAudience];
  v49 = [assetAudience copy];

  v48 = self->_brainVersion;
  analyticsData = [resultCopy analyticsData];

  if (analyticsData)
  {
    v22 = isPallas;
    selfCopy2 = self;
    analyticsData2 = [resultCopy analyticsData];
    v25 = [analyticsData2 copy];
  }

  else
  {
    options = [resultCopy options];
    if (!options)
    {
      v25 = 0;
      goto LABEL_10;
    }

    v37 = options;
    queue = isDiscretionary;
    v22 = isPallas;
    v38 = v15;
    selfCopy2 = self;
    options2 = [resultCopy options];
    analyticsData3 = [options2 analyticsData];

    if (!analyticsData3)
    {
      v25 = 0;
      self = selfCopy2;
      v15 = v38;
      isPallas = v22;
      isDiscretionary = queue;
      goto LABEL_10;
    }

    analyticsData2 = [resultCopy options];
    v24AnalyticsData = [analyticsData2 analyticsData];
    v25 = [v24AnalyticsData mutableCopy];

    v15 = v38;
    isDiscretionary = queue;
  }

  self = selfCopy2;
  isPallas = v22;
LABEL_10:
  v42 = v25;
  v44 = v15;
  queuea = self->_splunkStateQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __52__DownloadManager_reportDownloadAttemptResult_with___block_invoke;
  block[3] = &unk_4B4028;
  v71 = v25;
  v72 = v15;
  v91 = isDiscretionary;
  v43 = v17;
  v73 = v17;
  v74 = resultCopy;
  selfCopy3 = self;
  v76 = v69;
  v77 = firstClientName;
  v78 = baseUrlNoACS;
  v79 = relativePath;
  v80 = v61;
  v81 = v57;
  v82 = v53;
  v92 = isAutoDownload;
  v93 = isPallas;
  v83 = v49;
  v84 = v51;
  v85 = v50;
  v86 = v48;
  v87 = v55;
  v88 = v10;
  v89 = v59;
  v90 = withCopy;
  v64 = v59;
  v60 = v10;
  v56 = v55;
  v26 = v48;
  v27 = v50;
  v28 = v51;
  v52 = v49;
  v54 = v53;
  v58 = v57;
  v62 = v61;
  v67 = relativePath;
  v29 = baseUrlNoACS;
  v30 = firstClientName;
  v31 = v69;
  v32 = resultCopy;
  v33 = v43;
  v34 = v44;
  v35 = v42;
  dispatch_async(queuea, block);
}

void __52__DownloadManager_reportDownloadAttemptResult_with___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [v2 mutableCopy];
  }

  else
  {
    v3 = objc_alloc_init(NSMutableDictionary);
  }

  v4 = v3;
  if (v3)
  {
    v5 = objc_alloc_init(NSDate);
    v6 = v5;
    if (*(a1 + 40))
    {
      [v5 timeIntervalSinceDate:?];
      v7 = [NSNumber numberWithDouble:?];
      [v4 setObject:v7 forKeyedSubscript:@"DownloadTime"];
    }

    else
    {
      v7 = _MADLog(@"Download");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "Download start time not found in downloadInfo", buf, 2u);
      }
    }

    if (*(a1 + 40) && *(a1 + 48))
    {
      [v6 timeIntervalSinceDate:?];
      v9 = v8;
      [*(a1 + 48) timeIntervalSinceDate:*(a1 + 40)];
      *&v9 = v10 / v9 * 100.0;
      v11 = [NSNumber alloc];
      LODWORD(v12) = LODWORD(v9);
      v13 = [v11 initWithFloat:v12];
      [v4 setObject:v13 forKeyedSubscript:@"DiscretionaryBreakdown"];

      if (*&v9 <= 0.0)
      {
        v14 = @"NO";
      }

      else
      {
        v14 = @"YES";
      }

      [v4 setObject:v14 forKeyedSubscript:@"DiscretionaryConfigChanged"];
    }

    if (!*(a1 + 48))
    {
      [v4 setObject:@"NO" forKeyedSubscript:@"DiscretionaryConfigChanged"];
      v15 = *(a1 + 192);
      v16 = [NSNumber alloc];
      v17 = 0.0;
      if (v15)
      {
        *&v17 = 1.0;
      }

      v18 = [v16 initWithFloat:v17];
      [v4 setObject:v18 forKeyedSubscript:@"DiscretionaryBreakdown"];
    }

    if (*(a1 + 192))
    {
      v19 = @"YES";
    }

    else
    {
      v19 = @"NO";
    }

    [v4 setObject:v19 forKeyedSubscript:@"IsDiscretionary"];
  }

  else
  {
    v6 = _MADLog(@"Download");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "Could not allocate dictionary to hold additional data for analytics", buf, 2u);
    }
  }

  v20 = [*(a1 + 56) task];
  v21 = [*(a1 + 64) analytics];
  v41 = *(a1 + 80);
  v42 = *(a1 + 72);
  v39 = *(a1 + 96);
  v40 = *(a1 + 88);
  v37 = *(a1 + 112);
  v38 = *(a1 + 104);
  v22 = *(a1 + 193);
  v23 = *(a1 + 120);
  v24 = *(a1 + 128);
  v25 = *(a1 + 192) ^ 1;
  v36 = *(a1 + 136);
  v26 = *(a1 + 152);
  v43 = v20;
  v27 = [v20 _incompleteTaskMetrics];
  v28 = [*(a1 + 56) options];
  LOBYTE(v35) = v25;
  LOWORD(v34) = v22;
  [v21 recordDownloadAttemptForAssetType:v42 clientName:v41 baseUrl:v40 relativePath:v39 purpose:v38 result:v37 analyticsFileType:v23 isAutoDownload:v34 isPallas:v24 pallasAssetAudience:v35 isUserPriority:v36 bytesWritten:v26 bytesTransferredEst:v27 brainVersion:v28 withTaskMetrics:v4 withOptions:? additionalData:?];

  v29 = [*(a1 + 160) objectForKey:@"assetIdentifier"];
  if ([*(a1 + 136) integerValue] >= 1000 && (objc_msgSend(*(a1 + 168), "intValue") == 5 || objc_msgSend(*(a1 + 168), "intValue") == 2))
  {
    v30 = getControlManager();
    v31 = [v30 assetQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __52__DownloadManager_reportDownloadAttemptResult_with___block_invoke_1917;
    block[3] = &unk_4B4000;
    v45 = v29;
    v46 = *(a1 + 176);
    v47 = *(a1 + 104);
    v53 = *(a1 + 193);
    v48 = *(a1 + 72);
    v49 = *(a1 + 80);
    v50 = *(a1 + 40);
    v32 = *(a1 + 136);
    v33 = *(a1 + 184);
    v51 = v32;
    v52 = v33;
    dispatch_async(v31, block);
  }
}

void __52__DownloadManager_reportDownloadAttemptResult_with___block_invoke_1917(uint64_t a1)
{
  v18 = objc_opt_new();
  if (*(a1 + 32))
  {
    v2 = getControlManager();
    v3 = [v2 getAssetAttributes:*(a1 + 40) purpose:*(a1 + 48) assetID:*(a1 + 32)];

    v18 = v3;
  }

  v4 = *(a1 + 96);
  v5 = [MADPowerLogData alloc];
  v6 = *(a1 + 56);
  if (v4 == 1)
  {
    v7 = [v18 objectForKeyedSubscript:@"AssetSpecifier"];
    v8 = [v18 objectForKeyedSubscript:@"AssetVersion"];
    v9 = *(a1 + 64);
    v10 = *(a1 + 72);
    v11 = +[NSDate now];
    v12 = [*(a1 + 80) longLongValue];
    LOBYTE(v17) = *(a1 + 88) == 0;
    v13 = [(MADPowerLogData *)v5 initWithType:v6 withAssetSpecifier:v7 versionNumber:v8 clientName:v9 startingAt:v10 endingAt:v11 withTotalBytes:v12 andResult:v17];
    [MADPowerLogManager sendTelemetry:@"DownloadMetrics" forCategory:@"AutoAssetDownloads" withPayload:v13];
  }

  else
  {
    v14 = *(a1 + 64);
    v15 = *(a1 + 72);
    v7 = +[NSDate now];
    v16 = [*(a1 + 80) longLongValue];
    LOBYTE(v17) = *(a1 + 88) == 0;
    v8 = [(MADPowerLogData *)v5 initWithType:v6 withAssetSpecifier:&stru_4BD3F0 versionNumber:&stru_4BD3F0 clientName:v14 startingAt:v15 endingAt:v7 withTotalBytes:v16 andResult:v17];
    [MADPowerLogManager sendTelemetry:@"DownloadMetrics" forCategory:@"v2AssetDownloads" withPayload:v8];
  }
}

+ (id)_extractCheckedNSErrorFromDict:(id)dict withKey:(id)key
{
  dictCopy = dict;
  keyCopy = key;
  v7 = keyCopy;
  if (!dictCopy)
  {
    v10 = 0;
    goto LABEL_15;
  }

  if (keyCopy)
  {
    v8 = [dictCopy objectForKeyedSubscript:keyCopy];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [NSError buildCheckedError:v8];
      v10 = v9;
      if (v9)
      {
        v11 = v9;
      }

      else
      {
        v12 = _MADLog(@"Download");
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v14) = 0;
          _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "buildCheckedError returned nil for the given the NSError (may not be safe to log)", &v14, 2u);
        }
      }

      goto LABEL_14;
    }
  }

  else
  {
    v8 = _MADLog(@"Download");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v14 = 138543362;
      v15 = dictCopy;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "Can't extract NSError at nil key from dictionary: %{public}@", &v14, 0xCu);
    }
  }

  v10 = 0;
LABEL_14:

LABEL_15:

  return v10;
}

- (void)sendDownloadResult:(id)result with:(int64_t)with extraInfo:(id)info
{
  resultCopy = result;
  infoCopy = info;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v6 = _os_activity_create(&dword_0, "DownloadManager:sendDownloadResult", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v6, &state);

  v7 = _MADLog(@"Download");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = stringForMADownloadResult(with);
    task = [resultCopy task];
    _loggableDescription = [task _loggableDescription];
    v11 = [(DownloadManager *)self grabTaskID:_loggableDescription];
    *buf = 134218754;
    withCopy = with;
    v100 = 2114;
    v101 = v8;
    v102 = 2114;
    v103 = v11;
    v104 = 2114;
    v105 = resultCopy;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Sending download result %ld (%{public}@) <%{public}@> for %{public}@", buf, 0x2Au);
  }

  v12 = [objc_opt_class() _extractCheckedNSErrorFromDict:infoCopy withKey:@"CFNetworkError"];
  v84 = v12;
  if (!resultCopy)
  {
    callbacks = _MADLog(@"Download");
    if (os_log_type_enabled(callbacks, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      withCopy = v12;
      _os_log_impl(&dword_0, callbacks, OS_LOG_TYPE_DEFAULT, "Skipping due to no downloadInfo. CFNetwork error: %{public}@", buf, 0xCu);
    }

    goto LABEL_92;
  }

  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  callbacks = [resultCopy callbacks];
  v14 = [callbacks countByEnumeratingWithState:&v91 objects:v110 count:16];
  if (!v14)
  {
LABEL_92:
    v15 = 0;
    goto LABEL_93;
  }

  v15 = 0;
  v85 = *v92;
  obj = callbacks;
  do
  {
    v16 = 0;
    v17 = v15;
    v86 = v14;
    do
    {
      if (*v92 != v85)
      {
        objc_enumerationMutation(obj);
      }

      v90 = v17;
      v18 = *(*(&v91 + 1) + 8 * v16);
      context = objc_autoreleasePoolPush();
      v19 = [v18 safeObjectForKey:@"downloadManagerAutoAssetJobIDKey" ofClass:objc_opt_class()];
      if (!v19)
      {
        v20 = [v18 objectForKey:@"downloadManagerConnectionKey"];
        if (v20)
        {
          v29 = [v18 objectForKey:@"downloadManagerReplyKey"];
          v27 = v29;
          if (v29)
          {
            xpc_dictionary_set_int64(v29, "Result", with);
            if (infoCopy)
            {
              v30 = [infoCopy objectForKey:@"productMarketingVersions"];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                addObjectToMessage();
              }

              if (v84)
              {
                addObjectToMessage();
                if ([v84 code])
                {
                  v31 = [[NSNumber alloc] initWithInteger:{objc_msgSend(v84, "checkedCode")}];
                }

                else
                {
                  v31 = &off_4F7F28;
                }

                checkedDomain = [v84 checkedDomain];
                if (checkedDomain)
                {
                  checkedDomain2 = [v84 checkedDomain];
                }

                else
                {
                  checkedDomain2 = @"com.apple.MobileAssetError.Download";
                }

                checkedDescription = [v84 checkedDescription];
                if (checkedDescription)
                {
                  checkedDescription2 = [v84 checkedDescription];
                }

                else
                {
                  checkedDescription2 = @"Unknown error starting download";
                }

                analyticsData = [resultCopy analyticsData];
                v75 = analyticsData == 0;

                if (!v75)
                {
                  analyticsData2 = [resultCopy analyticsData];
                  v77 = [analyticsData2 mutableCopy];

                  [v77 setObject:v31 forKeyedSubscript:@"FailureErrorCode"];
                  [v77 setObject:checkedDomain2 forKeyedSubscript:@"FailureErrorDomain"];
                  [v77 setObject:checkedDescription2 forKeyedSubscript:@"FailureErrorMessage"];
                  [resultCopy setAnalyticsData:v77];
                  goto LABEL_86;
                }

                v108[0] = @"FailureErrorCode";
                v108[1] = @"FailureErrorDomain";
                v109[0] = v31;
                v109[1] = checkedDomain2;
                v108[2] = @"FailureErrorMessage";
                v109[2] = checkedDescription2;
                v78 = [NSDictionary dictionaryWithObjects:v109 forKeys:v108 count:3];
                [resultCopy setAnalyticsData:v78];
              }

              else
              {
                checkedDescription2 = 0;
                checkedDomain2 = 0;
                v31 = 0;
              }

              v77 = v90;
LABEL_86:

              v15 = v77;
            }

            else
            {
              checkedDescription2 = 0;
              checkedDomain2 = 0;
              v31 = 0;
              v15 = v90;
            }

            xpc_connection_send_message(v20, v27);
            goto LABEL_73;
          }

          v44 = _MADLog(@"Download");
          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_0, v44, OS_LOG_TYPE_DEFAULT, "Skipping due to no reply", buf, 2u);
          }
        }

        else
        {
          v27 = _MADLog(@"Download");
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_0, v27, OS_LOG_TYPE_DEFAULT, "Skipping due to no connection", buf, 2u);
          }
        }

LABEL_64:
        checkedDescription2 = 0;
        checkedDomain2 = 0;
        v31 = 0;
LABEL_72:
        v15 = v90;
        goto LABEL_73;
      }

      v20 = [v18 safeObjectForKey:@"downloadManagerJobTypeKey" ofClass:objc_opt_class()];
      if (![SUCore stringIsEqual:v20 to:@"catalog_job"])
      {
        if (with)
        {
          v32 = errorStringForMADownloadResult(with);
          v27 = MAErrorForDownloadResultWithUnderlying(with, v84, @"Asset download failed: %@(%ld)", v33, v34, v35, v36, v37, v32);
        }

        else
        {
          v27 = 0;
        }

        [MADAutoAssetControlManager assetDownloadJobFinished:v19 error:v27];
        goto LABEL_52;
      }

      if (!with)
      {
        taskDescriptor = [resultCopy taskDescriptor];
        v21 = getAssetTypeFromTaskDescriptor(taskDescriptor);

        taskDescriptor2 = [resultCopy taskDescriptor];
        v40 = getPurposeFromTaskDescriptor(taskDescriptor2);

        taskDescriptor3 = [resultCopy taskDescriptor];
        v42 = getAutoAssetJobIDFromTaskDescriptor(taskDescriptor3);

        if (v21 && v40 && v42)
        {
          if (([SUCore stringIsEqual:v19 to:v42]& 1) == 0)
          {
            v43 = _MADLog(@"Download");
            if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
            {
              *buf = 138544386;
              withCopy = v19;
              v100 = 2114;
              v101 = v21;
              v102 = 2114;
              v103 = v40;
              v104 = 2114;
              v105 = v42;
              v106 = 2114;
              v107 = resultCopy;
              _os_log_impl(&dword_0, v43, OS_LOG_TYPE_ERROR, "{sendDownloadResult} [SUCCESS] ANOMALY | jobID != autoAssetJobID:%{public}@ | assetType:%{public}@, purpose:%{public}@, jobID:%{public}@ | downloadInfo:%{public}@", buf, 0x34u);
            }
          }

          with = 0;
LABEL_45:
          v54 = getPathToAssetFileWithPurpose(v21, v40);
          if (v54 && (+[NSFileManager defaultManager](NSFileManager, "defaultManager"), v55 = objc_claimAutoreleasedReturnValue(), v56 = [v55 fileExistsAtPath:v54], v55, v56))
          {
            v28 = [[NSMutableDictionary alloc] initWithContentsOfFile:v54];
            v27 = 0;
          }

          else
          {
            v80 = errorStringForMADownloadResult(3uLL);
            v27 = MAErrorForDownloadResultWithUnderlying(3, v84, @"No catalog at filesystem location:%@ | %@(%ld)", v57, v58, v59, v60, v61, v54);

            v28 = 0;
          }
        }

        else
        {
          v45 = _MADLog(@"Download");
          if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
          {
            *buf = 138544386;
            withCopy = v21;
            v100 = 2114;
            v101 = v40;
            v102 = 2114;
            v103 = v42;
            v104 = 2114;
            v105 = v19;
            v106 = 2114;
            v107 = resultCopy;
            _os_log_impl(&dword_0, v45, OS_LOG_TYPE_ERROR, "{sendDownloadResult} catalog download success yet incomplete information | [session] assetType:%{public}@, purpose:%{public}@, jobID:%{public}@ | autoAssetJobID:%{public}@ | downloadInfo:%{public}@", buf, 0x34u);
          }

          v46 = errorStringForMADownloadResult(0x1EuLL);
          v27 = MAErrorForDownloadResultWithUnderlying(30, v84, @"Catalog download success with incomplete information: %@(%ld)", v47, v48, v49, v50, v51, v46);

          if (!v27)
          {
            with = 30;
            goto LABEL_45;
          }

          v28 = 0;
          with = 30;
        }

        goto LABEL_51;
      }

      v21 = errorStringForMADownloadResult(with);
      v27 = MAErrorForDownloadResultWithUnderlying(with, v84, @"Catalog download failed: %@(%ld)", v22, v23, v24, v25, v26, v21);
      v28 = 0;
LABEL_51:

      [MADAutoAssetControlManager catalogDownloadJobFinished:v19 withCatalog:v28 error:v27];
LABEL_52:
      if (!v27)
      {
        goto LABEL_64;
      }

      v31 = [[NSNumber alloc] initWithInteger:{-[NSObject checkedCode](v27, "checkedCode")}];
      checkedDomain2 = [v27 checkedDomain];
      checkedDescription2 = [v27 checkedDescription];
      analyticsData3 = [resultCopy analyticsData];
      v63 = analyticsData3 == 0;

      if (v63)
      {
        v68 = &off_4F7F28;
        if (v31)
        {
          v68 = v31;
        }

        v96[0] = @"FailureErrorCode";
        v96[1] = @"FailureErrorDomain";
        v69 = @"com.apple.MobileAssetError.Download";
        if (checkedDomain2)
        {
          v69 = checkedDomain2;
        }

        v97[0] = v68;
        v97[1] = v69;
        v96[2] = @"FailureErrorMessage";
        v70 = @"Unknown error during download";
        if (checkedDescription2)
        {
          v70 = checkedDescription2;
        }

        v97[2] = v70;
        v71 = [NSDictionary dictionaryWithObjects:v97 forKeys:v96 count:3];
        [resultCopy setAnalyticsData:v71];

        goto LABEL_72;
      }

      analyticsData4 = [resultCopy analyticsData];
      v15 = [analyticsData4 mutableCopy];

      if (v31)
      {
        v65 = v31;
      }

      else
      {
        v65 = &off_4F7F28;
      }

      [v15 setObject:v65 forKeyedSubscript:@"FailureErrorCode"];
      if (checkedDomain2)
      {
        v66 = checkedDomain2;
      }

      else
      {
        v66 = @"com.apple.MobileAssetError.Download";
      }

      [v15 setObject:v66 forKeyedSubscript:@"FailureErrorDomain"];
      if (checkedDescription2)
      {
        v67 = checkedDescription2;
      }

      else
      {
        v67 = @"Unknown error during download";
      }

      [v15 setObject:v67 forKeyedSubscript:@"FailureErrorMessage"];
      [resultCopy setAnalyticsData:v15];
LABEL_73:

      objc_autoreleasePoolPop(context);
      v16 = v16 + 1;
      v17 = v15;
    }

    while (v86 != v16);
    callbacks = obj;
    v14 = [obj countByEnumeratingWithState:&v91 objects:v110 count:16];
  }

  while (v14);
LABEL_93:

  v79 = _MADLog(@"Download");
  if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    withCopy = resultCopy;
    _os_log_impl(&dword_0, v79, OS_LOG_TYPE_DEFAULT, "reporting download attempt %{public}@", buf, 0xCu);
  }

  [(DownloadManager *)self reportDownloadAttemptResult:resultCopy with:with];
  os_activity_scope_leave(&state);
}

- (void)updateStateAndNotifyIfRequired
{
  if (self->_forceDaemonBusy)
  {
    v3 = _MADLog(@"Download");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "MA Brain not busy, but going into artificial delayed sync mode", &v9, 2u);
    }

    v4 = 3;
  }

  else
  {
    currentState = self->_currentState;
    v6 = _MADLog(@"Download");
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (currentState)
    {
      if (v7)
      {
        v8 = self->_currentState;
        v9 = 134217984;
        v10 = v8;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "No need to notify, current state is: %ld", &v9, 0xCu);
      }
    }

    else
    {
      if (v7)
      {
        LOWORD(v9) = 0;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Notifying clients we are ready for download", &v9, 2u);
      }

      notify_post("com.apple.MobileAsset.DownloadsReady");
    }

    v4 = 1;
  }

  self->_currentState = v4;
}

- (void)queryNSUrlSessiondAndUpdateState
{
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v3 = _os_activity_create(&dword_0, "DownloadManager:queryNSUrlSessiondAndUpdateState", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v3, &state);

  v17 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  if (+[DownloadManager isDeviceBeforeFirstUnlock])
  {
    v4 = _MADLog(@"Download");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "{queryNSUrlSessiondAndUpdateState} Not performing NSURLSession sync since device is before first-unlock", buf, 2u);
    }

    goto LABEL_15;
  }

  if ((backgroundDownloadsPossibleWithInfo(&v17) & 1) == 0)
  {
    v7 = _MADLog(@"Download");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v20 = v17;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "We are in foreground mode (forced: %d) so skipping sync with nsurlsession", buf, 8u);
    }

    downloadStateQueue = self->_downloadStateQueue;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = __51__DownloadManager_queryNSUrlSessiondAndUpdateState__block_invoke;
    v12[3] = &unk_4B2AA0;
    v12[4] = self;
    v9 = v12;
    goto LABEL_14;
  }

  dedupNSURLSessionSyncQueue = [(DownloadManager *)self dedupNSURLSessionSyncQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __51__DownloadManager_queryNSUrlSessiondAndUpdateState__block_invoke_2;
  block[3] = &unk_4B2AC8;
  block[4] = self;
  block[5] = &v13;
  dispatch_sync(dedupNSURLSessionSyncQueue, block);

  if (*(v14 + 24) != 1)
  {
    downloadStateQueue = self->_downloadStateQueue;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = __51__DownloadManager_queryNSUrlSessiondAndUpdateState__block_invoke_1956;
    v10[3] = &unk_4B2AA0;
    v10[4] = self;
    v9 = v10;
LABEL_14:
    dispatch_async(downloadStateQueue, v9);
    goto LABEL_15;
  }

  v6 = _MADLog(@"Download");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "{queryNSUrlSessiondAndUpdateState} Already performing NSURLSession sync - duplicate trigger ignored", buf, 2u);
  }

LABEL_15:
  _Block_object_dispose(&v13, 8);
  os_activity_scope_leave(&state);
}

id __51__DownloadManager_queryNSUrlSessiondAndUpdateState__block_invoke(uint64_t a1)
{
  +[MADAutoAssetControlManager downloadManagerStateSyncSkipped];
  v2 = *(a1 + 32);

  return [v2 updateStateAndNotifyIfRequired];
}

id __51__DownloadManager_queryNSUrlSessiondAndUpdateState__block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) performingNSURLSessionSync];
  *(*(*(a1 + 40) + 8) + 24) = result;
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    v3 = *(a1 + 32);

    return [v3 setPerformingNSURLSessionSync:1];
  }

  return result;
}

id __51__DownloadManager_queryNSUrlSessiondAndUpdateState__block_invoke_1956(uint64_t a1)
{
  v2 = [*(a1 + 32) downloadStateQueue];
  dispatch_suspend(v2);

  v3 = _MADLog(@"Download");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "_downloadStateQueue suspended", buf, 2u);
  }

  if ([*(a1 + 32) currentState] == &dword_0 + 1)
  {
    [*(a1 + 32) setCurrentState:2];
  }

  v4 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __51__DownloadManager_queryNSUrlSessiondAndUpdateState__block_invoke_1957;
  v6[3] = &unk_4B4050;
  v6[4] = v4;
  return [v4 getCurrentInflightDownloads:v6];
}

void __51__DownloadManager_queryNSUrlSessiondAndUpdateState__block_invoke_1957(uint64_t a1, void *a2)
{
  v2 = a2;
  v73 = objc_opt_new();
  v64 = v2;
  if (v2)
  {
    v3 = objc_opt_new();
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    v4 = v2;
    v5 = [v4 countByEnumeratingWithState:&v86 objects:v98 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v87;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v87 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v86 + 1) + 8 * i);
          v10 = objc_autoreleasePoolPush();
          if (v9)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v11 = [v9 taskDescription];
              if (v11)
              {
                [v3 setObject:v9 forKey:v11];
              }

              else
              {
                [v9 cancel];
              }
            }
          }

          objc_autoreleasePoolPop(v10);
        }

        v6 = [v4 countByEnumeratingWithState:&v86 objects:v98 count:16];
      }

      while (v6);
    }

    v12 = [NSSet alloc];
    v13 = [v3 allKeys];
    v76 = [v12 initWithArray:v13];

    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    v14 = a1;
    obj = [*(a1 + 32) downloadTasksInFlight];
    v15 = [obj countByEnumeratingWithState:&v82 objects:v97 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v83;
      do
      {
        for (j = 0; j != v16; j = j + 1)
        {
          if (*v83 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v82 + 1) + 8 * j);
          v20 = objc_autoreleasePoolPush();
          if ([v76 containsObject:v19])
          {
            v21 = [*(v14 + 32) downloadTasksInFlight];
            v22 = [v21 safeObjectForKey:v19 ofClass:objc_opt_class()];

            v23 = [v3 objectForKeyedSubscript:v19];
            if (v22)
            {
              v24 = [v22 task];

              v25 = _MADLog(@"Download");
              v26 = v25;
              if (v24)
              {
                if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543618;
                  v94 = v19;
                  v95 = 2114;
                  v96 = v22;
                  _os_log_impl(&dword_0, v26, OS_LOG_TYPE_DEFAULT, "Keeping task: %{public}@ info: %{public}@", buf, 0x16u);
                }

                [v73 setSafeObject:v22 forKey:v19];
                [v3 removeObjectForKey:v19];
              }

              else
              {
                if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138543362;
                  v94 = v19;
                  _os_log_impl(&dword_0, v26, OS_LOG_TYPE_ERROR, "Found download information but the NSURLSessionDownload task is nil, for task descriptor: %{public}@", buf, 0xCu);
                }

                [v23 cancel];
              }

              v14 = a1;
            }

            else
            {
              v31 = _MADLog(@"Download");
              if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543362;
                v94 = v19;
                _os_log_impl(&dword_0, v31, OS_LOG_TYPE_ERROR, "Found download information from a task descriptor not in correct format with task descriptor: %{public}@", buf, 0xCu);
              }

              [v23 cancel];
            }
          }

          else if ([(DownloadInfo *)v19 containsString:@".auto."])
          {
            if (isCatalogTaskDescriptor(v19))
            {
              v27 = [*(v14 + 32) downloadTasksInFlight];
              v22 = [v27 safeObjectForKey:v19 ofClass:objc_opt_class()];

              [v73 setSafeObject:v22 forKey:v19];
              v28 = _MADLog(@"Download");
              if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v94 = v19;
                v95 = 2112;
                v96 = v22;
                _os_log_impl(&dword_0, v28, OS_LOG_TYPE_DEFAULT, "Keeping task: %@ info: %@", buf, 0x16u);
              }

LABEL_46:

              goto LABEL_47;
            }

            v22 = _MADLog(@"Download");
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v94 = v19;
              _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "auto-asset task finished downloading during MA downtime: %@", buf, 0xCu);
            }
          }

          else
          {
            v29 = [*(v14 + 32) downloadTasksInFlight];
            v22 = [v29 safeObjectForKey:v19 ofClass:objc_opt_class()];

            v30 = _MADLog(@"Download");
            v28 = v30;
            if (!v22)
            {
              if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
              {
                v32 = [0 description];
                *buf = 138543618;
                v94 = v32;
                v95 = 2114;
                v96 = v19;
                _os_log_impl(&dword_0, v28, OS_LOG_TYPE_ERROR, "Found a lost task download information not in correct format with info: %{public}@ with task descriptor: %{public}@", buf, 0x16u);

                v14 = a1;
              }

              goto LABEL_46;
            }

            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              v94 = v19;
              v95 = 2114;
              v96 = v22;
              _os_log_impl(&dword_0, v28, OS_LOG_TYPE_DEFAULT, "Lost task: %{public}@ info: %{public}@", buf, 0x16u);
            }

            [*(v14 + 32) sendDownloadResult:v22 with:28 extraInfo:0];
          }

LABEL_47:

          objc_autoreleasePoolPop(v20);
        }

        v16 = [obj countByEnumeratingWithState:&v82 objects:v97 count:16];
      }

      while (v16);
    }

    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v33 = v3;
    v34 = [v33 countByEnumeratingWithState:&v78 objects:v92 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = 0;
      v37 = 0;
      v38 = 0;
      p_weak_ivar_lyt = &MAAIRBMobileAssetOperationMetadata__metaData.weak_ivar_lyt;
      obja = *v79;
      v65 = v33;
      do
      {
        v40 = 0;
        v66 = v35;
        do
        {
          v41 = v38;
          if (*v79 != obja)
          {
            objc_enumerationMutation(v33);
          }

          v42 = *(*(&v78 + 1) + 8 * v40);
          v38 = [v33 objectForKey:v42];

          if (v38)
          {
            v43 = p_weak_ivar_lyt[223];
            v44 = [v38 taskDescription];
            LODWORD(v43) = [v43 stringIsEqual:v42 to:v44];

            if (v43)
            {
              v45 = [v38 originalRequest];

              if (v45)
              {
                v46 = [v45 URL];

                if (v46)
                {
                  v68 = objc_opt_new();
                  v90[0] = @"allowsCellularAccess";
                  v71 = v46;
                  v69 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v45 allowsCellularAccess]);
                  v91[0] = v69;
                  v90[1] = @"allowsExpensive";
                  v67 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v45 allowsExpensiveNetworkAccess]);
                  v91[1] = v67;
                  v90[2] = @"prefersInfraWiFi";
                  v47 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v45 allowsConstrainedNetworkAccess]);
                  v91[2] = v47;
                  v90[3] = @"timeoutIntervalForResource";
                  [v45 timeoutInterval];
                  v48 = [NSNumber numberWithDouble:?];
                  v91[3] = v48;
                  v90[4] = @"canUseLocalCacheServer";
                  v49 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v45 cachePolicy] < 5);
                  v91[4] = v49;
                  v90[5] = @"allowsConstrained";
                  v50 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v45 allowsConstrainedNetworkAccess]);
                  v91[5] = v50;
                  v51 = [NSDictionary dictionaryWithObjects:v91 forKeys:v90 count:6];
                  v52 = [v68 initWithPlist:v51];

                  v70 = v52;
                  v53 = [[DownloadInfo alloc] initWithUrl:v71 clientName:@"<resume>" options:v52];
                  v54 = v53;
                  if (v53)
                  {
                    [(DownloadInfo *)v53 setTaskDescriptor:v42];
                    [(DownloadInfo *)v54 setTask:v38];
                    v55 = _MADLog(@"Download");
                    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138543618;
                      v94 = v42;
                      v95 = 2114;
                      v96 = v54;
                      _os_log_impl(&dword_0, v55, OS_LOG_TYPE_DEFAULT, "Discovered task: %{public}@ new info: %{public}@", buf, 0x16u);
                    }

                    v56 = [v38 taskDescription];
                    [v73 setSafeObject:v54 forKey:v56];
                  }

                  else
                  {
                    [v38 cancel];
                  }

                  v33 = v65;
                  v35 = v66;
                  p_weak_ivar_lyt = (&MAAIRBMobileAssetOperationMetadata__metaData + 56);

                  v36 = v71;
                }

                else
                {
                  [v38 cancel];
                  v36 = 0;
                }

                v37 = v45;
              }

              else
              {
                [v38 cancel];
                v37 = 0;
              }
            }
          }

          v40 = v40 + 1;
        }

        while (v35 != v40);
        v35 = [v33 countByEnumeratingWithState:&v78 objects:v92 count:16];
      }

      while (v35);
    }

    else
    {
      v36 = 0;
      v37 = 0;
      v38 = 0;
    }

    v57 = v33;
  }

  else
  {
    v33 = _MADLog(@"Download");
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v33, OS_LOG_TYPE_DEFAULT, "No tasks in nsurl state", buf, 2u);
    }

    v36 = 0;
    v37 = 0;
    v38 = 0;
    v76 = 0;
    v57 = 0;
  }

  [*(a1 + 32) setDownloadTasksInFlight:v73];
  v58 = [v73 allKeys];
  v59 = getControlManager();
  [v59 removeDownloadsNotRecentlyInFlight:v58];

  [MADAutoAssetControlManager downloadManagerStateSyncDetermined:v58];
  [*(a1 + 32) updateStateAndNotifyIfRequired];
  v60 = _MADLog(@"Download");
  if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
  {
    v61 = [*(a1 + 32) downloadTasksInFlight];
    *buf = 138543362;
    v94 = v61;
    _os_log_impl(&dword_0, v60, OS_LOG_TYPE_DEFAULT, "queryNSUrlSessiondAndUpdateState complete, _downloadStateQueue resumed _downloadTasksInFlight: %{public}@", buf, 0xCu);
  }

  v62 = [*(a1 + 32) dedupNSURLSessionSyncQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __51__DownloadManager_queryNSUrlSessiondAndUpdateState__block_invoke_1963;
  block[3] = &unk_4B2AA0;
  block[4] = *(a1 + 32);
  dispatch_sync(v62, block);

  v63 = [*(a1 + 32) downloadStateQueue];
  dispatch_resume(v63);
}

- (void)allDownloading:(id)downloading
{
  downloadingCopy = downloading;
  downloadStateQueue = [(DownloadManager *)self downloadStateQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __34__DownloadManager_allDownloading___block_invoke;
  v7[3] = &unk_4B4078;
  v7[4] = self;
  v8 = downloadingCopy;
  v6 = downloadingCopy;
  dispatch_async(downloadStateQueue, v7);
}

void __34__DownloadManager_allDownloading___block_invoke(uint64_t a1)
{
  v2 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [*(a1 + 32) downloadTasksInFlight];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        v9 = objc_autoreleasePoolPush();
        if (isAssetTaskDescriptor(v8))
        {
          v10 = [v8 pathExtension];
          [v2 addObject:v10];
        }

        objc_autoreleasePoolPop(v9);
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)cancelAllDownloading:(id)downloading withPurpose:(id)purpose includingAssets:(BOOL)assets includingCatalog:(BOOL)catalog includingOther:(BOOL)other clientName:(id)name then:(id)then
{
  downloadingCopy = downloading;
  purposeCopy = purpose;
  nameCopy = name;
  thenCopy = then;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v19 = _os_activity_create(&dword_0, "DownloadManager:cancelAllDownloading", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v19, &state);

  currentState = [(DownloadManager *)self currentState];
  if (currentState != 1)
  {
    v21 = _MADLog(@"Download");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138544130;
      v37 = nameCopy;
      v38 = 2048;
      v39 = currentState;
      v40 = 2114;
      v41 = downloadingCopy;
      v42 = 2114;
      v43 = purposeCopy;
      _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ proceeding before cancel happens. Cannot get in-flight downloads state: %ld for %{public}@ with purpose: %{public}@", buf, 0x2Au);
    }

    thenCopy[2](thenCopy, 0);
  }

  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = __116__DownloadManager_cancelAllDownloading_withPurpose_includingAssets_includingCatalog_includingOther_clientName_then___block_invoke;
  v26[3] = &unk_4B40A0;
  v31 = currentState != 1;
  v22 = nameCopy;
  v27 = v22;
  v23 = downloadingCopy;
  v28 = v23;
  v24 = purposeCopy;
  v29 = v24;
  catalogCopy = catalog;
  assetsCopy = assets;
  otherCopy = other;
  v25 = thenCopy;
  v30 = v25;
  [(DownloadManager *)self getCurrentInflightDownloads:v26];

  os_activity_scope_leave(&state);
}

void __116__DownloadManager_cancelAllDownloading_withPurpose_includingAssets_includingCatalog_includingOther_clientName_then___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 64))
  {
    v4 = @"async";
  }

  else
  {
    v4 = @"sync";
  }

  v5 = v4;
  v6 = _MADLog(@"Download");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    *buf = 138544130;
    v36 = v7;
    v37 = 2114;
    v38 = v5;
    v39 = 2114;
    v40 = v8;
    v41 = 2114;
    v42 = v9;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ cancel being applied: %{public}@ for %{public}@ with purpose: %{public}@", buf, 0x2Au);
  }

  v28 = v5;

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v10 = v3;
  v11 = [v10 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v31;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v31 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v30 + 1) + 8 * i);
        v16 = objc_autoreleasePoolPush();
        v17 = [v15 taskDescription];
        if (v17)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v18 = getAssetTypeFromTaskDescriptor(v17);
            v19 = getPurposeFromTaskDescriptor(v17);
            v20 = v19;
            if (*(a1 + 48))
            {
              if (!v19)
              {
                goto LABEL_40;
              }

              if (![v19 isEqualToString:?] || v18 == 0)
              {
                goto LABEL_40;
              }

LABEL_22:
              if ([*(a1 + 40) containsObject:v18])
              {
                if (!isCatalogTaskDescriptor(v17))
                {
                  if (isAssetTaskDescriptor(v17))
                  {
                    if (*(a1 + 66) != 1)
                    {
                      goto LABEL_40;
                    }

                    v29 = _MADLog(@"Download");
                    if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
                    {
                      goto LABEL_39;
                    }

                    v22 = v29;
                    v25 = *(a1 + 32);
                    *buf = 138543618;
                    v36 = v25;
                    v37 = 2114;
                    v38 = v17;
                    v24 = "%{public}@ canceling task: %{public}@ (asset)";
                  }

                  else if (isPmvTaskDescriptor(v17))
                  {
                    if (*(a1 + 65) != 1)
                    {
                      goto LABEL_40;
                    }

                    v29 = _MADLog(@"Download");
                    if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
                    {
                      goto LABEL_39;
                    }

                    v22 = v29;
                    v26 = *(a1 + 32);
                    *buf = 138543618;
                    v36 = v26;
                    v37 = 2114;
                    v38 = v17;
                    v24 = "%{public}@ canceling task: %{public}@ (pmv)";
                  }

                  else
                  {
                    if (*(a1 + 67) != 1)
                    {
                      goto LABEL_40;
                    }

                    v29 = _MADLog(@"Download");
                    if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
                    {
                      goto LABEL_39;
                    }

                    v22 = v29;
                    v27 = *(a1 + 32);
                    *buf = 138543618;
                    v36 = v27;
                    v37 = 2114;
                    v38 = v17;
                    v24 = "%{public}@ canceling task: %{public}@ (other)";
                  }

LABEL_38:
                  _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, v24, buf, 0x16u);
                  goto LABEL_39;
                }

                if (*(a1 + 65) == 1)
                {
                  v29 = _MADLog(@"Download");
                  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
                  {
                    v22 = v29;
                    v23 = *(a1 + 32);
                    *buf = 138543618;
                    v36 = v23;
                    v37 = 2114;
                    v38 = v17;
                    v24 = "%{public}@ canceling task: %{public}@ (catalog)";
                    goto LABEL_38;
                  }

LABEL_39:

                  [v15 cancel];
                }
              }
            }

            else if (v18)
            {
              goto LABEL_22;
            }

LABEL_40:
          }
        }

        objc_autoreleasePoolPop(v16);
      }

      v12 = [v10 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v12);
  }

  if ((*(a1 + 64) & 1) == 0)
  {
    (*(*(a1 + 56) + 16))();
  }
}

- (void)isDownloading:(id)downloading then:(id)then
{
  downloadingCopy = downloading;
  thenCopy = then;
  downloadStateQueue = self->_downloadStateQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __38__DownloadManager_isDownloading_then___block_invoke;
  block[3] = &unk_4B3020;
  block[4] = self;
  v12 = downloadingCopy;
  v13 = thenCopy;
  v9 = thenCopy;
  v10 = downloadingCopy;
  dispatch_async(downloadStateQueue, block);
}

uint64_t __38__DownloadManager_isDownloading_then___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) downloadTasksInFlight];
  [v2 objectForKey:*(a1 + 40)];

  v3 = *(*(a1 + 48) + 16);

  return v3();
}

- (id)newDefaultEventDictionary:(id)dictionary sessionId:(id)id nonce:(id)nonce url:(id)url statusCode:(int64_t)code assetAudience:(id)audience uuid:(id)uuid assetType:(id)self0 version:(id)self1 baseUrl:(id)self2 discretionary:(BOOL)self3 deviceCheck:(id)self4
{
  dictionaryCopy = dictionary;
  idCopy = id;
  nonceCopy = nonce;
  audienceCopy = audience;
  uuidCopy = uuid;
  typeCopy = type;
  versionCopy = version;
  baseUrlCopy = baseUrl;
  checkCopy = check;
  v26 = objc_opt_new();
  if (v26)
  {
    +[SUCoreDevice sharedDevice];
    v27 = v70 = dictionaryCopy;
    [v27 buildVersion];
    v28 = v78 = nonceCopy;
    ensureNSStringFromData(v28);
    v77 = checkCopy;
    v29 = baseUrlCopy;
    v31 = v30 = typeCopy;
    [v26 setObject:v31 forKey:@"BuildVersion"];

    hwModelString = [v27 hwModelString];
    v33 = ensureNSStringFromData(hwModelString);
    [v26 setObject:v33 forKey:@"HWModelStr"];

    releaseType = [v27 releaseType];
    v35 = ensureNSStringFromData(releaseType);
    [v26 setObject:v35 forKey:@"ReleaseType"];

    deviceClass = [v27 deviceClass];
    v37 = ensureNSStringFromData(deviceClass);
    [v26 setObject:v37 forKey:@"DeviceClass"];

    v38 = getCurrentOSType();
    [v26 setObject:v38 forKey:@"currentOSType"];

    v39 = MGCopyAnswer();
    v40 = [v39 objectForKeyedSubscript:kMGQDiskUsageTotalDiskCapacity];
    [v26 setSafeObject:v40 forKey:@"diskCapacity"];

    v41 = [v39 objectForKeyedSubscript:kMGQDiskUsageTotalSystemCapacity];
    [v26 setSafeObject:v41 forKey:@"systemCapacity"];

    v42 = [v39 objectForKeyedSubscript:kMGQDiskUsageTotalDataCapacity];
    [v26 setSafeObject:v42 forKey:@"dataCapacity"];

    v43 = [v39 objectForKeyedSubscript:kMGQDiskUsageTotalDataAvailable];
    [v26 setSafeObject:v43 forKey:@"dataAvailableSpace"];

    [v26 setObject:@"catalogLookup" forKey:@"event"];
    v74 = v30;
    v44 = ensureNSStringFromData(v30);
    [v26 setObject:v44 forKey:@"assetType"];

    if (backgroundDownloadsPossibleWithInfo(0))
    {
      v45 = @"backgroundDiscretionary";
    }

    else
    {
      v45 = @"inProcess";
    }

    [v26 setObject:v45 forKey:@"type"];
    if (discretionary)
    {
      v46 = @"true";
    }

    else
    {
      v46 = @"false";
    }

    [v26 setObject:v46 forKey:@"discretionary"];
    v72 = v29;
    v47 = ensureNSStringFromData(v29);
    [v26 setObject:v47 forKey:@"baseUrl"];

    v48 = ensureNSStringFromData(uuidCopy);
    [v26 setObject:v48 forKey:@"eventUuid"];

    v73 = versionCopy;
    v49 = ensureNSStringFromData(versionCopy);
    [v26 setObject:v49 forKey:@"reportVersion"];

    v50 = _currentTimeInMilliseconds();
    v51 = ensureNSStringFromData(v50);
    [v26 setObject:v51 forKey:@"eventTime"];

    v52 = ensureNSStringFromData(idCopy);
    [v26 setObject:v52 forKey:@"SessionId"];

    uUIDString = [v78 UUIDString];
    v54 = ensureNSStringFromData(uUIDString);
    [v26 setObject:v54 forKey:@"pallasClientNonce"];

    v55 = ensureNSStringFromData(v70);
    [v26 setObject:v55 forKey:@"currentOSVersion"];

    v56 = ensureNSStringFromData(audienceCopy);
    [v26 setObject:v56 forKey:@"MobileAssetAssetAudience"];

    v57 = ensureNSStringFromData(v77);
    [v26 setObject:v57 forKey:@"DeviceCheck"];

    if ((objc_opt_respondsToSelector() & 1) != 0 && [v27 hasSplat])
    {
      if (objc_opt_respondsToSelector())
      {
        if ([v27 hasSplat])
        {
          v58 = @"true";
        }

        else
        {
          v58 = @"false";
        }

        [v26 setSafeObject:v58 forKey:@"SplatSupported"];
      }

      if (objc_opt_respondsToSelector())
      {
        splatCryptex1BuildVersion = [v27 splatCryptex1BuildVersion];
        [v26 setSafeObject:splatCryptex1BuildVersion forKey:@"SplatBuildVersion"];
      }
    }

    v71 = v27;
    v75 = uuidCopy;
    v60 = [NSNumber numberWithLong:code];
    if (v60)
    {
      [v26 setObject:v60 forKey:@"httpCode"];
    }

    v61 = +[MABrainUpdater sharedInstance];
    info = [v61 info];
    v63 = [info objectForKeyedSubscript:@"MobileAssetProperties"];
    v64 = [v63 objectForKeyedSubscript:@"Build"];

    v65 = +[MABrainUpdater sharedInstance];
    info2 = [v65 info];
    v67 = [info2 objectForKeyedSubscript:@"MobileAssetProperties"];
    v68 = [v67 objectForKeyedSubscript:@"RestoreVersion"];

    if (v64)
    {
      [v26 setObject:v64 forKey:@"MABrainBuildVersion"];
    }

    dictionaryCopy = v70;
    uuidCopy = v75;
    versionCopy = v73;
    if (v68)
    {
      [v26 setObject:v68 forKey:@"MABrainRestoreVersion"];
    }

    checkCopy = v77;
    nonceCopy = v78;
    typeCopy = v74;
    baseUrlCopy = v72;
  }

  return v26;
}

- (void)checkSplunkStatus:(id)status failureReason:(id)reason productVersion:(id)version sessionId:(id)id nonce:(id)nonce url:(id)url statusCode:(int64_t)code assetAudience:(id)self0 version:(id)self1 baseUrl:(id)self2 discretionary:(BOOL)self3 deviceCheck:(id)self4
{
  statusCopy = status;
  reasonCopy = reason;
  versionCopy = version;
  idCopy = id;
  nonceCopy = nonce;
  urlCopy = url;
  audienceCopy = audience;
  v25 = a11;
  baseUrlCopy = baseUrl;
  checkCopy = check;
  queue = self->_splunkStateQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __153__DownloadManager_checkSplunkStatus_failureReason_productVersion_sessionId_nonce_url_statusCode_assetAudience_version_baseUrl_discretionary_deviceCheck___block_invoke;
  block[3] = &unk_4B40C8;
  v42 = statusCopy;
  selfCopy = self;
  v44 = idCopy;
  v45 = versionCopy;
  v46 = nonceCopy;
  v47 = urlCopy;
  v48 = audienceCopy;
  v49 = v25;
  discretionaryCopy = discretionary;
  v50 = baseUrlCopy;
  v51 = checkCopy;
  v52 = reasonCopy;
  codeCopy = code;
  v40 = reasonCopy;
  v39 = checkCopy;
  v28 = baseUrlCopy;
  v29 = v25;
  v30 = audienceCopy;
  v31 = urlCopy;
  v32 = nonceCopy;
  v33 = versionCopy;
  v34 = idCopy;
  v35 = statusCopy;
  dispatch_async(queue, block);
}

void __153__DownloadManager_checkSplunkStatus_failureReason_productVersion_sessionId_nonce_url_statusCode_assetAudience_version_baseUrl_discretionary_deviceCheck___block_invoke(uint64_t a1)
{
  v2 = objc_opt_new();
  if (*(a1 + 32))
  {
    v3 = [*(a1 + 40) currentSplunkEvent];
    v4 = [v3 objectForKey:*(a1 + 32)];
  }

  else
  {
    v4 = 0;
  }

  v5 = +[NSUUID UUID];
  v6 = [v5 UUIDString];

  v7 = *(a1 + 32);
  if (v7 && *(a1 + 48) && v2 && v6)
  {
    if (v4)
    {
      v8 = *(a1 + 120);
      if (v8 == 304 || v8 == 200)
      {
        LOBYTE(v38) = *(a1 + 128);
        v9 = [*(a1 + 40) newDefaultEventDictionary:*(a1 + 56) sessionId:v6 nonce:v7 url:*(a1 + 88) statusCode:*(a1 + 96) assetAudience:v38 uuid:*(a1 + 104) assetType:? version:? baseUrl:? discretionary:? deviceCheck:?];
        v10 = _MADLog(@"Download");
        v11 = v10;
        if (v9)
        {
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            v12 = *(a1 + 120);
            *buf = 134217984;
            v40 = v12;
            _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "{checkSplunkStatus} Success with a previous failure event, augment the success with the previous failure event information and send | statusCode:%ld", buf, 0xCu);
          }

          [v9 setObject:@"success" forKey:@"splunkResultKey"];
          v11 = [v4 objectForKey:@"failureReason"];
          if (v11)
          {
            [v9 setObject:v11 forKey:@"priorFailureReason"];
          }

          v13 = [v4 objectForKey:@"splunkErrorCount"];
          if (v13)
          {
            [v9 setObject:v13 forKey:@"priorErrorCount"];
          }

          v14 = [v4 objectForKey:@"httpCode"];
          if (v14)
          {
            [v9 setObject:v14 forKey:@"priorHttpCode"];
          }

          [v2 setObject:v9 forKey:v6];
          v15 = [*(a1 + 40) currentSplunkEvent];
          [v15 removeObjectForKey:*(a1 + 32)];

LABEL_21:
LABEL_22:

LABEL_67:
          [*(a1 + 40) sendEvents:v2 sessionId:*(a1 + 48)];
          v11 = v9;
          goto LABEL_68;
        }

        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          v20 = "{checkSplunkStatus} Unable to create event dictionary [for different status code] - unable to send event";
LABEL_54:
          v21 = v11;
          v22 = 2;
LABEL_34:
          _os_log_impl(&dword_0, v21, OS_LOG_TYPE_ERROR, v20, buf, v22);
        }
      }

      else
      {
        v11 = [v4 objectForKey:@"SessionId"];
        if (!v11)
        {
          v26 = _MADLog(@"Download");
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_0, v26, OS_LOG_TYPE_ERROR, "{checkSplunkStatus} No session ID for previously sent failure event", buf, 2u);
          }
        }

        if ([*(a1 + 48) isEqualToString:v11])
        {
          v13 = [v4 objectForKey:@"httpCode"];
          if ([v13 longValue] == *(a1 + 120))
          {
            v27 = _MADLog(@"Download");
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_0, v27, OS_LOG_TYPE_DEFAULT, "{checkSplunkStatus} Previous failure indication, same session, status the same, incrementing count - not sending additional event [no change to status code]", buf, 2u);
            }

            ensureAndIncrementNumberAtKey(v4, @"splunkErrorCount", 0);
          }

          else
          {
            LOBYTE(v38) = *(a1 + 128);
            v9 = [*(a1 + 40) newDefaultEventDictionary:*(a1 + 56) sessionId:*(a1 + 48) nonce:*(a1 + 64) url:*(a1 + 72) statusCode:v6 assetAudience:*(a1 + 32) uuid:*(a1 + 88) assetType:*(a1 + 96) version:v38 baseUrl:*(a1 + 104) discretionary:? deviceCheck:?];
            v34 = _MADLog(@"Download");
            v35 = v34;
            if (v9)
            {
              if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_0, v35, OS_LOG_TYPE_DEFAULT, "{checkSplunkStatus} Previous failure indication, same session, status codes different - sending event with latest failure statusCode [optionally also sending event for batched previous failures]", buf, 2u);
              }

              [*(a1 + 40) augmentSplunkEvent:v9 withResultForHTTPStatusCode:*(a1 + 120)];
              v36 = *(a1 + 112);
              if (v36)
              {
                [v9 setObject:v36 forKey:@"failureReason"];
              }

              [v2 setObject:v9 forKey:v6];
              [*(a1 + 40) setPreviousBatchedFailureEvent:v4 inSendEventsByUUID:v2];
              v14 = [*(a1 + 40) currentSplunkEvent];
              [v14 setObject:v9 forKey:*(a1 + 32)];
              goto LABEL_21;
            }

            if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(&dword_0, v35, OS_LOG_TYPE_ERROR, "{checkSplunkStatus} Unable to create event dictionary [for different status code] - unable to send event", buf, 2u);
            }
          }

          goto LABEL_68;
        }

        v28 = _MADLog(@"Download");
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v28, OS_LOG_TYPE_DEFAULT, "{checkSplunkStatus} Current event, different session - send both events", buf, 2u);
        }

        LOBYTE(v38) = *(a1 + 128);
        v29 = [*(a1 + 40) newDefaultEventDictionary:*(a1 + 56) sessionId:*(a1 + 48) nonce:*(a1 + 64) url:*(a1 + 72) statusCode:*(a1 + 120) assetAudience:*(a1 + 80) uuid:v6 assetType:*(a1 + 32) version:*(a1 + 88) baseUrl:*(a1 + 96) discretionary:v38 deviceCheck:*(a1 + 104)];
        if (v29)
        {
          v9 = v29;
          [*(a1 + 40) augmentSplunkEvent:v29 withResultForHTTPStatusCode:*(a1 + 120)];
          v30 = *(a1 + 112);
          if (v30)
          {
            [v9 setObject:v30 forKey:@"failureReason"];
          }

          [v2 setObject:v9 forKey:v6];
          [*(a1 + 40) setPreviousBatchedFailureEvent:v4 inSendEventsByUUID:v2];
          v13 = [*(a1 + 40) currentSplunkEvent];
          [v13 setObject:v9 forKey:*(a1 + 32)];
          goto LABEL_22;
        }

        v37 = _MADLog(@"Download");
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v37, OS_LOG_TYPE_ERROR, "{checkSplunkStatus} Unable to create event dictionary [different sessions] - unable to send event or track latest failure indication", buf, 2u);
        }
      }
    }

    else
    {
      LOBYTE(v38) = *(a1 + 128);
      v23 = [*(a1 + 40) newDefaultEventDictionary:*(a1 + 56) sessionId:v6 nonce:v7 url:*(a1 + 88) statusCode:*(a1 + 96) assetAudience:v38 uuid:*(a1 + 104) assetType:? version:? baseUrl:? discretionary:? deviceCheck:?];
      if (v23)
      {
        v9 = v23;
        v24 = *(a1 + 120);
        if (v24 == 200 || v24 == 304)
        {
          v25 = _MADLog(@"Download");
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_0, v25, OS_LOG_TYPE_DEFAULT, "{checkSplunkStatus} Sending success indication when no previous failure indication", buf, 2u);
          }

          [v9 setObject:@"success" forKey:@"splunkResultKey"];
        }

        else
        {
          v31 = _MADLog(@"Download");
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_0, v31, OS_LOG_TYPE_DEFAULT, "{checkSplunkStatus} Sending failure indication when no previous failure indication", buf, 2u);
          }

          [*(a1 + 40) augmentSplunkEvent:v9 withResultForHTTPStatusCode:*(a1 + 120)];
          v32 = *(a1 + 112);
          if (v32)
          {
            [v9 setObject:v32 forKey:@"failureReason"];
          }

          ensureAndIncrementNumberAtKey(v9, @"splunkErrorCount", 0);
          v33 = [*(a1 + 40) currentSplunkEvent];
          [v33 setObject:v9 forKey:*(a1 + 32)];
        }

        [v2 setObject:v9 forKey:v6];
        goto LABEL_67;
      }

      v11 = _MADLog(@"Download");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v20 = "{checkSplunkStatus} Unable to create event dictionary [no previous failure indication] - unable to send event [or track any latest failure indication]";
        goto LABEL_54;
      }
    }
  }

  else
  {
    v11 = _MADLog(@"Download");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v16 = *(a1 + 32);
      v17 = @"N";
      if (!v16)
      {
        v16 = @"N";
      }

      v18 = *(a1 + 48);
      if (!v18)
      {
        v18 = @"N";
      }

      *buf = 138544130;
      v40 = v16;
      if (v2)
      {
        v19 = @"Y";
      }

      else
      {
        v19 = @"N";
      }

      v41 = 2114;
      v42 = v18;
      if (v6)
      {
        v17 = @"Y";
      }

      v43 = 2114;
      v44 = v19;
      v45 = 2114;
      v46 = v17;
      v20 = "{checkSplunkStatus} Unable to create base-level event requirements - not sending event | assetType:%{public}@, sessionId:%{public}@, events:%{public}@, uuid:%{public}@";
      v21 = v11;
      v22 = 42;
      goto LABEL_34;
    }
  }

LABEL_68:
}

- (void)augmentSplunkEvent:(id)event withResultForHTTPStatusCode:(int64_t)code
{
  eventCopy = event;
  code = [[NSString alloc] initWithFormat:@"HTTP-%ld", code];
  if (code)
  {
    v7 = code;
  }

  else
  {
    v7 = @"fail";
  }

  v8 = v7;
  [eventCopy setObject:? forKey:?];
}

- (void)setPreviousBatchedFailureEvent:(id)event inSendEventsByUUID:(id)d
{
  eventCopy = event;
  dCopy = d;
  v7 = dCopy;
  if (eventCopy && dCopy)
  {
    v8 = [eventCopy objectForKey:@"splunkErrorCount"];
    if (v8)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [v8 longValue]>= 1)
      {
        v9 = [eventCopy objectForKey:@"eventUuid"];
        if (v9)
        {
          [v7 setObject:eventCopy forKey:v9];
        }

        else
        {
          v12 = _MADLog(@"Download");
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v13) = 0;
            _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "{setPreviousBatchedFailureEvent} Previous failure indication event without UUID - unable to [re-]send event for previous status code", &v13, 2u);
          }
        }
      }
    }
  }

  else
  {
    v8 = _MADLog(@"Download");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = @"Y";
      if (eventCopy)
      {
        v11 = @"Y";
      }

      else
      {
        v11 = @"N";
      }

      if (!v7)
      {
        v10 = @"N";
      }

      v13 = 138543618;
      v14 = v11;
      v15 = 2114;
      v16 = v10;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "{setPreviousBatchedFailureEvent} Missing required paarameter - not considering re-sending previous failure indication | previousEvent:%{public}@, sendEvents:%{public}@", &v13, 0x16u);
    }
  }
}

+ (id)getPallasUrl:(BOOL)url assetType:(id)type
{
  urlCopy = url;
  typeCopy = type;
  if (typeCopy)
  {
    v6 = [&off_4F6F08 containsObject:typeCopy];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([typeCopy isEqualToString:&stru_4BD3F0] & 1) == 0)
    {
      typeCopy = [NSString stringWithFormat:@"%@-%@", @"PallasUrlOverrideV2", typeCopy];
      v7 = _MAPreferencesCopyValue(typeCopy);

      if (v7)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = @"Asset Type Specific";
          goto LABEL_8;
        }
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v8 = _MAPreferencesCopyValue(@"PallasUrlOverrideV2");

  if (!v8)
  {
    v7 = 0;
    goto LABEL_14;
  }

  v9 = @"Asset Type Generic";
  v7 = v8;
LABEL_8:
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_14;
  }

  v10 = [NSURL URLWithString:v7];
  v11 = _MADLog(@"Download");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413314;
    v16 = @"PallasUrlOverrideV2";
    v17 = 2112;
    v18 = v9;
    v19 = 2112;
    v20 = v7;
    v21 = 2112;
    v22 = v10;
    v23 = 2112;
    v24 = typeCopy;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "%@ was in preferences (%@) and was not false ('%@'), pallasURL=%@ assetType=%@", buf, 0x34u);
  }

  if (!v10)
  {
LABEL_14:
    if (urlCopy)
    {
      if (!isExternalPreReleaseAssetType(typeCopy) || !isAppleDynamicOverridesSupportedAssetType(typeCopy))
      {
        if (!isExternalPreReleaseAssetType(typeCopy))
        {
          v12 = @"https://gdmf-staging-int.apple.com/v2/assets";
LABEL_28:
          v10 = [NSURL URLWithString:v12];
          goto LABEL_29;
        }

LABEL_27:
        v12 = @"https://gdmf.apple.com/v2/assets";
        goto LABEL_28;
      }
    }

    else if (!isAppleDynamicOverridesSupportedAssetType(typeCopy))
    {
      if (v6 && isCarrierReleaseType())
      {
        v12 = @"https://gdmf-auth.apple.com/v2/assets";
        goto LABEL_28;
      }

      goto LABEL_27;
    }

    v12 = @"https://gdmf-ados.apple.com/v2/assets";
    goto LABEL_28;
  }

LABEL_29:

  return v10;
}

- (BOOL)getPallasEnabledForAssetType:(id)type
{
  typeCopy = type;
  v4 = typeCopy;
  if (typeCopy && isXMLAssetType(typeCopy))
  {
    v5 = _MADLog(@"Download");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v14 = @"NO";
      v15 = 2112;
      v16 = v4;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Pallas not enabled by default for XML asset types, pallasEnabled=%@ assetType=%@", buf, 0x16u);
    }

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([(__CFString *)v4 isEqualToString:&stru_4BD3F0]& 1) == 0)
  {
    v12 = [NSString stringWithFormat:@"%@-%@", @"EnableLiveAssetServerV2", v4];
    v7 = _MAPreferencesCopyNSStringValue(v12);

    if (v7)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = @"Asset Type Specific";
        goto LABEL_12;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = _MAPreferencesCopyNSStringValue(@"EnableLiveAssetServerV2");

  if (!v8)
  {
    goto LABEL_21;
  }

  v9 = @"Asset Type Generic";
  v7 = v8;
LABEL_12:
  if (([v7 isEqual:@"off"] & 1) != 0 || (objc_msgSend(v7, "isEqual:", @"false") & 1) != 0 || (objc_msgSend(v7, "isEqual:", @"NO") & 1) != 0 || (objc_msgSend(v7, "isEqual:", &__kCFBooleanFalse) & 1) != 0 || objc_msgSend(v7, "isEqual:", @"0"))
  {
    v10 = _MADLog(@"Download");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413314;
      v14 = @"EnableLiveAssetServerV2";
      v15 = 2112;
      v16 = v9;
      v17 = 2112;
      v18 = v7;
      v19 = 2112;
      v20 = @"NO";
      v21 = 2112;
      v22 = v4;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "%@ was in preferences (%@) and was false ('%@'), pallasEnabled=%@ assetType=%@", buf, 0x34u);
    }

    v6 = 0;
  }

  else
  {
    v10 = _MADLog(@"Download");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413314;
      v14 = @"EnableLiveAssetServerV2";
      v15 = 2112;
      v16 = v9;
      v17 = 2112;
      v18 = v7;
      v19 = 2112;
      v20 = @"YES";
      v21 = 2112;
      v22 = v4;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "%@ was in preferences (%@) and was not false ('%@'), pallasEnabled=%@ assetType=%@", buf, 0x34u);
    }

    v6 = 1;
  }

LABEL_21:
  return v6;
}

- (id)newAssetAudience:(BOOL)audience assetType:(id)type logMessage:(id *)message
{
  audienceCopy = audience;
  typeCopy = type;
  if (typeCopy)
  {
    v8 = [&off_4F6F20 containsObject:typeCopy];
    if (v8)
    {
      v9 = @"MobileAssetAssetAudience";
    }

    else
    {
      v9 = @"MobileAssetAssetAudienceGeneric";
    }
  }

  else
  {
    v8 = 0;
    v9 = @"MobileAssetAssetAudience";
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([typeCopy isEqualToString:&stru_4BD3F0] & 1) == 0)
  {
    typeCopy = [NSString stringWithFormat:@"%@-%@", @"MobileAssetAssetAudience", typeCopy];
    v10 = _MAPreferencesCopyValue(typeCopy);

    if (v10)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = @"Asset Type Specific";
        goto LABEL_16;
      }
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = @"Asset Type Generic";
  if (v8)
  {
    v11 = @"Asset Type Software Update";
  }

  if (typeCopy)
  {
    v12 = v11;
  }

  else
  {
    v12 = @"Asset Type Nil";
  }

  v13 = _MAPreferencesCopyValue(v9);

  if (!v13)
  {
    v10 = 0;
    if (audienceCopy)
    {
      goto LABEL_18;
    }

    goto LABEL_30;
  }

  v10 = v13;
LABEL_16:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
LABEL_37:
    if (!message)
    {
      goto LABEL_39;
    }

LABEL_38:
    *message = [NSString stringWithFormat:@"Using asset audience '%@' via selection '%@' for asset type '%@'", v10, v12, typeCopy];
    goto LABEL_39;
  }

  if (!audienceCopy)
  {
LABEL_30:
    if (!v8)
    {

      v12 = @"iOS Mobile Asset Customer";
      v10 = @"0c88076f-c292-4dad-95e7-304db9d29d34";
      if (!message)
      {
        goto LABEL_39;
      }

      goto LABEL_38;
    }

    v19 = isCarrierReleaseType();

    if (v19)
    {
      v10 = @"372eb249-0e93-4789-85fb-7675dd1bfe73";
    }

    else
    {
      v10 = @"01c1d682-6e8f-4908-b724-5501fe3f5e5c";
    }

    if (v19)
    {
      v12 = @"iOS Carrier";
    }

    else
    {
      v12 = @"iOS Customer";
    }

    goto LABEL_37;
  }

LABEL_18:
  v14 = [NSString stringWithFormat:@"%s", "$RC_PALLAS_ID"];
  v15 = v14;
  if (!v14 || ([v14 isEqualToString:&stru_4BD3F0] & 1) != 0 || (objc_msgSend(v15, "isEqualToString:", @"$RC_PALLAS_ID") & 1) != 0)
  {
    v16 = isExternalPreReleaseAssetType(typeCopy);

    v17 = v16 == 0;
    if (v16)
    {
      v18 = @"0206c249-b301-46e0-9d6a-23ce9c5d875d";
    }

    else
    {
      v18 = @"ce9c2203-903b-4fb3-9f03-040dc2202694";
    }

    if (v17)
    {
      v12 = @"Internal Generic";
    }

    else
    {
      v12 = @"Internal Build with External Pre Release";
    }
  }

  else
  {
    v22 = _MADLog(@"Download");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v24 = v15;
      _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "Override of asset audience due to build variable: %{public}@", buf, 0xCu);
    }

    v18 = v15;
    v12 = @"Build Override";
  }

  v10 = v18;
  if (message)
  {
    goto LABEL_38;
  }

LABEL_39:

  return v10;
}

- (id)addSUOptions:(id)options options:(id)a4
{
  optionsCopy = options;
  v6 = a4;
  v7 = [NSNumber numberWithInt:MGGetSInt32Answer()];
  [optionsCopy setObject:v7 forKey:@"DeviceClass"];

  [optionsCopy setObject:@"true" forKey:@"IsUIBuild"];
  v8 = pallasStringParams();
  if (v8)
  {
    [optionsCopy addEntriesFromDictionary:v8];
  }

  v9 = MGGetStringAnswer();
  if (MGGetBoolAnswer())
  {
    v10 = @"true";
  }

  else
  {
    v10 = @"false";
  }

  [optionsCopy setObject:v10 forKey:@"SigningFuse"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [optionsCopy setObject:@"false" forKey:@"DelayRequested"];
    v26 = @"Supervised";
    v27 = optionsCopy;
    v28 = @"false";
LABEL_32:
    [v27 setObject:v28 forKey:v26];
    goto LABEL_33;
  }

  v11 = v6;
  requestedProductVersion = [v11 requestedProductVersion];

  if (requestedProductVersion)
  {
    requestedProductVersion2 = [v11 requestedProductVersion];
    [optionsCopy setObject:requestedProductVersion2 forKey:@"RequestedProductVersion"];
  }

  if (__isPlatformVersionAtLeast(2, 18, 4, 0))
  {
    if (objc_opt_respondsToSelector())
    {
      requestedBuildVersion = [v11 requestedBuildVersion];

      if (requestedBuildVersion)
      {
        requestedBuildVersion2 = [v11 requestedBuildVersion];
        [optionsCopy setObject:requestedBuildVersion2 forKey:@"RequestedBuildVersion"];
      }
    }
  }

  delayPeriod = [v11 delayPeriod];
  if (delayPeriod)
  {
    v17 = +[NSNumber numberWithLong:](NSNumber, "numberWithLong:", [v11 delayPeriod]);
    [optionsCopy setObject:v17 forKey:@"DelayPeriod"];
  }

  supervised = [v11 supervised];
  allowSameVersion = [v11 allowSameVersion];
  prerequisiteBuildVersion = [v11 prerequisiteBuildVersion];

  if (prerequisiteBuildVersion)
  {
    prerequisiteBuildVersion2 = [v11 prerequisiteBuildVersion];
    [optionsCopy setObject:prerequisiteBuildVersion2 forKey:@"BuildVersion"];
  }

  prerequisiteProductVersion = [v11 prerequisiteProductVersion];

  if (prerequisiteProductVersion)
  {
    prerequisiteProductVersion2 = [v11 prerequisiteProductVersion];
    [optionsCopy setObject:prerequisiteProductVersion2 forKey:@"ProductVersion"];
  }

  if ([v11 prerequisiteReleaseTypeIsOverridden])
  {
    prerequisiteReleaseType = [v11 prerequisiteReleaseType];

    if (prerequisiteReleaseType)
    {
      prerequisiteReleaseType2 = [v11 prerequisiteReleaseType];
      [optionsCopy setObject:prerequisiteReleaseType2 forKey:@"ReleaseType"];
    }

    else
    {
      [optionsCopy removeObjectForKey:@"ReleaseType"];
    }
  }

  if (delayPeriod)
  {
    v29 = @"true";
  }

  else
  {
    v29 = @"false";
  }

  [optionsCopy setObject:v29 forKey:@"DelayRequested"];
  if (supervised)
  {
    v30 = @"true";
  }

  else
  {
    v30 = @"false";
  }

  [optionsCopy setObject:v30 forKey:@"Supervised"];
  if (allowSameVersion)
  {
    v28 = @"true";
    v26 = @"InternalBuild";
    v27 = optionsCopy;
    goto LABEL_32;
  }

LABEL_33:

  return v9;
}

- (BOOL)isBuddyRunning
{
  if (isBuddyRunning_buddyDetectionSupportedDispatchToken != -1)
  {
    [DownloadManager isBuddyRunning];
  }

  if (isBuddyRunning_buddyDetectionSupported == 1)
  {
    if (!SetupAssistantLibraryCore() || !getBYSetupAssistantBundleIdentifierSymbolLoc())
    {
      goto LABEL_14;
    }

    BYSetupAssistantBundleIdentifierSymbolLoc = getBYSetupAssistantBundleIdentifierSymbolLoc();
    if (!BYSetupAssistantBundleIdentifierSymbolLoc)
    {
      [DownloadManager isBuddyRunning];
    }

    v3 = *BYSetupAssistantBundleIdentifierSymbolLoc;
    if (!v3)
    {
LABEL_14:
      v6 = _MADLog(@"Download");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "[DownloadManager-isBuddyRunning] BuddyBundleID is nil", buf, 2u);
      }

      LOBYTE(v7) = 0;
      goto LABEL_22;
    }

    v4 = v3;
    v7 = [RBSProcessPredicate predicateMatchingBundleIdentifier:v3];
    v17 = 0;
    v5 = [RBSProcessHandle handleForPredicate:v7 error:&v17];
    v6 = v17;

    LOBYTE(v7) = 0;
    if (v6 || !v5)
    {
LABEL_21:

LABEL_22:
      return v7;
    }

    currentState = [v5 currentState];
    v9 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [currentState taskState]);
    LODWORD(v7) = [&off_4F6F38 containsObject:v9];

    v10 = _MADLog(@"Download");
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (v11)
      {
        v16 = 0;
        v12 = "[DownloadManager-isBuddyRunning] Buddy is running and visible";
        v13 = &v16;
LABEL_19:
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, v12, v13, 2u);
      }
    }

    else if (v11)
    {
      v15 = 0;
      v12 = "[DownloadManager-isBuddyRunning] Buddy is running but not visible. Returning NO";
      v13 = &v15;
      goto LABEL_19;
    }

    goto LABEL_21;
  }

  LOBYTE(v7) = 0;
  return v7;
}

void __33__DownloadManager_isBuddyRunning__block_invoke(id a1)
{
  if (!SetupAssistantLibraryCore())
  {
    v1 = _MADLog(@"Download");
    if (!os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    LOWORD(v5) = 0;
    v2 = "[DownloadManager-isBuddyRunning] SetupAssistant framework not available in this environment";
LABEL_17:
    _os_log_impl(&dword_0, v1, OS_LOG_TYPE_DEFAULT, v2, &v5, 2u);
    goto LABEL_18;
  }

  if (!objc_opt_class())
  {
    v1 = _MADLog(@"Download");
    if (!os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    LOWORD(v5) = 0;
    v2 = "[DownloadManager-isBuddyRunning] RBSProcessHandle class does not exist";
    goto LABEL_17;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v1 = _MADLog(@"Download");
    if (!os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    LOWORD(v5) = 0;
    v2 = "[DownloadManager-isBuddyRunning] RBSProcessHandle class does not respond to handleForPredicate";
    goto LABEL_17;
  }

  if (!objc_opt_class())
  {
    v1 = _MADLog(@"Download");
    if (!os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    LOWORD(v5) = 0;
    v2 = "[DownloadManager-isBuddyRunning] RBSProcessPredicate class does not exist";
    goto LABEL_17;
  }

  if (objc_opt_respondsToSelector())
  {
    isBuddyRunning_buddyDetectionSupported = 1;
    goto LABEL_19;
  }

  v1 = _MADLog(@"Download");
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v5) = 0;
    v2 = "[DownloadManager-isBuddyRunning] RBSProcessPredicate class does not respond to predicateMatchingBundleIdentifier";
    goto LABEL_17;
  }

LABEL_18:

LABEL_19:
  v3 = _MADLog(@"Download");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (isBuddyRunning_buddyDetectionSupported)
    {
      v4 = @"supported";
    }

    else
    {
      v4 = @"not supported";
    }

    v5 = 138543362;
    v6 = v4;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "[DownloadManager-isBuddyRunning] BuddyDetection is %{public}@ on this platform", &v5, 0xCu);
  }
}

- (BOOL)useBootstrapDataPathForScan:(id)scan
{
  scanCopy = scan;
  if (!__isPlatformVersionAtLeast(2, 17, 0, 0))
  {
    v5 = _MADLog(@"Download");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v11 = "BootstrapDataPath check not supported in this environment. Assuming BootStrapDataPath not in use";
      v12 = v5;
      v13 = OS_LOG_TYPE_DEFAULT;
LABEL_19:
      _os_log_impl(&dword_0, v12, v13, v11, buf, 2u);
    }

LABEL_20:
    LOBYTE(bOOLValue) = 0;
LABEL_21:

    goto LABEL_22;
  }

  if (useBootstrapDataPathForScan__telephonyClientAllocToken != -1)
  {
    [DownloadManager useBootstrapDataPathForScan:];
  }

  if (!useBootstrapDataPathForScan__telephonyClient)
  {
    v5 = _MADLog(@"Download");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v11 = "Failed to allocate telephonyClient. Skipping BootstrapDataService check";
      v12 = v5;
      v13 = OS_LOG_TYPE_ERROR;
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  if ((([scanCopy isEqualToString:@"com.apple.MobileAsset.SoftwareUpdate"] & 1) != 0 || objc_msgSend(scanCopy, "isEqualToString:", @"com.apple.MobileAsset.SoftwareUpdateDocumentation")) && -[DownloadManager isBuddyRunning](self, "isBuddyRunning"))
  {
    v16 = 0;
    v5 = [useBootstrapDataPathForScan__telephonyClient usingBootstrapDataService:&v16];
    v6 = v16;
    v7 = v6;
    if (!v5 || v6)
    {
      v9 = _MADLog(@"Download");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v15 = @"Unknown Error";
        if (v7)
        {
          v15 = v7;
        }

        *buf = 138543362;
        v18 = v15;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "Got error while checking if BootstrapDataService is in use. Assuming not in use: %{public}@", buf, 0xCu);
      }

      LOBYTE(bOOLValue) = 1;
    }

    else
    {
      bOOLValue = [v5 BOOLValue];
      v9 = _MADLog(@"Download");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = @"not available";
        if (bOOLValue)
        {
          v10 = @"available";
        }

        *buf = 138543362;
        v18 = v10;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Telephony told us BootstrapDataService is %{public}@", buf, 0xCu);
      }
    }

    goto LABEL_21;
  }

  LOBYTE(bOOLValue) = 0;
LABEL_22:

  return bOOLValue;
}

void __47__DownloadManager_useBootstrapDataPathForScan___block_invoke(id a1)
{
  if (!objc_opt_class())
  {
    v5 = _MADLog(@"Download");
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    v15 = 0;
    v10 = "CoreTelephonyClient class does not exist";
    v11 = &v15;
LABEL_13:
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, v10, v11, 2u);
    goto LABEL_14;
  }

  v1 = [CoreTelephonyClient alloc];
  v2 = objc_opt_respondsToSelector();

  if ((v2 & 1) == 0)
  {
    v5 = _MADLog(@"Download");
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    v14 = 0;
    v10 = "CoreTelephonyClient class does not respond to the initWithQueue";
    v11 = &v14;
    goto LABEL_13;
  }

  v3 = [CoreTelephonyClient alloc];
  v4 = objc_opt_respondsToSelector();

  v5 = _MADLog(@"Download");
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if ((v4 & 1) == 0)
  {
    if (!v6)
    {
      goto LABEL_14;
    }

    *buf = 0;
    v10 = "CoreTelephonyClient class does not respond to usingBootstrapDataService";
    v11 = buf;
    goto LABEL_13;
  }

  if (v6)
  {
    *v12 = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Allocating CoreTelephonyClient object to check for BootstrapDataService", v12, 2u);
  }

  v7 = [CoreTelephonyClient alloc];
  v5 = dispatch_get_global_queue(2, 0);
  v8 = [v7 initWithQueue:v5];
  v9 = useBootstrapDataPathForScan__telephonyClient;
  useBootstrapDataPathForScan__telephonyClient = v8;

LABEL_14:
}

- (BOOL)isValidUUID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    v4 = [[NSUUID alloc] initWithUUIDString:dCopy];
    v5 = v4;
    if (v4)
    {
      uUIDString = [v4 UUIDString];
      v7 = [dCopy caseInsensitiveCompare:uUIDString] == 0;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)pallasRequestedAssetSetID:(id)d
{
  dCopy = d;
  dCopy = [NSString stringWithFormat:@"RequestedAssetSetID-%@", dCopy];
  v6 = _MAPreferencesCopyNSStringValue(dCopy);
  if (!v6)
  {
LABEL_9:
    v10 = 0;
    goto LABEL_10;
  }

  v7 = [(DownloadManager *)self isValidUUID:v6];
  v8 = _MADLog(@"Download");
  v9 = v8;
  if ((v7 & 1) == 0)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v13 = dCopy;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "Invalid RequestedAssetSetID for key: %{public}@", buf, 0xCu);
    }

    goto LABEL_9;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v13 = dCopy;
    v14 = 2114;
    v15 = dCopy;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Using RequestedAssetSetID %{public}@ for asset type %{public}@", buf, 0x16u);
  }

  v10 = v6;
LABEL_10:

  return v10;
}

- (void)pallasRequestV2:(id)v2 normalizedType:(id)type withPurpose:(id)purpose options:(id)options using:(id)using with:(id)with autoAssetJob:(id)job clientName:(id)self0 then:(id)self1
{
  v2Copy = v2;
  typeCopy = type;
  purposeCopy = purpose;
  optionsCopy = options;
  usingCopy = using;
  withCopy = with;
  jobCopy = job;
  nameCopy = name;
  thenCopy = then;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v17 = _os_activity_create(&dword_0, "DownloadManager:pallasRequestV2", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v17, &state);

  v18 = _MADLog(@"Download");
  spid = os_signpost_id_generate(v18);

  v19 = _MADLog(@"Download");
  v20 = v19;
  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
  {
    v21 = mach_continuous_time();
    LODWORD(buf) = 134349056;
    *(&buf + 4) = v21;
    _os_signpost_emit_with_name_impl(&dword_0, v20, OS_SIGNPOST_INTERVAL_BEGIN, spid, "Pallas", "%{public, signpost.description:begin_time}llu  enableTelemetry=YES ", &buf, 0xCu);
  }

  dispatch_assert_queue_V2(self->_downloadStateQueue);
  context = objc_autoreleasePoolPush();
  _MAPreferencesSync(@"pallasRequestV2", v2Copy);
  v152 = 0;
  v153 = &v152;
  v154 = 0x2020000000;
  v155 = 1;
  v127 = +[NSUUID UUID];
  IsInternalAllowed = _MAPreferencesIsInternalAllowed();
  *&buf = 0;
  *(&buf + 1) = &buf;
  v166 = 0x3032000000;
  v167 = __Block_byref_object_copy__11;
  v168 = __Block_byref_object_dispose__11;
  v169 = [DownloadManager getPallasUrl:IsInternalAllowed assetType:v2Copy];
  if (*(*(&buf + 1) + 40))
  {
    v23 = objc_opt_new();
    v24 = +[ASAssetMetadataUpdatePolicy policy];
    v25 = [v24 serverURLForAssetType:v2Copy];
    absoluteString = [v25 absoluteString];

    if (absoluteString)
    {
      [(__CFString *)v23 setObject:absoluteString forKey:@"BaseUrl"];
    }

    v26 = +[ASAssetMetadataUpdatePolicy policy];
    syntheticTrainName = [v26 syntheticTrainName];

    if (syntheticTrainName)
    {
      v28 = [NSString stringWithUTF8String:syntheticTrainName];
      if (v28)
      {
        [(__CFString *)v23 setObject:v28 forKey:@"TrainName"];
      }
    }

    if (IsInternalAllowed)
    {
      v29 = @"true";
    }

    else
    {
      v29 = @"false";
    }

    v30 = v29;
    [(__CFString *)v23 setObject:v30 forKey:@"InternalBuild"];

    v151 = 0;
    v123 = [(DownloadManager *)self newAssetAudience:IsInternalAllowed assetType:v2Copy logMessage:&v151];
    v109 = v151;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      liveAssetAudienceUUID = [optionsCopy liveAssetAudienceUUID];
      v32 = liveAssetAudienceUUID == 0;

      if (!v32)
      {
        [(__CFString *)v23 setObject:v123 forKey:@"OriginalAssetAudience"];
        liveAssetAudienceUUID2 = [optionsCopy liveAssetAudienceUUID];
        v34 = [liveAssetAudienceUUID2 copy];

        v123 = v34;
      }
    }

    [(__CFString *)v23 setObject:v123 forKey:@"AssetAudience"];
    [(__CFString *)v23 setObject:v2Copy forKey:@"AssetType"];
    v125 = objc_opt_new();
    [v125 setObject:nameCopy forKey:@"DeviceAccessClient"];
    if (isXMLAssetType(v2Copy))
    {
      v35 = @"true";
    }

    else
    {
      v35 = @"false";
    }

    v36 = v35;
    [v125 setObject:v36 forKey:@"AllowXmlFallback"];

    [(__CFString *)v23 setObject:v125 forKey:@"ClientData"];
    v37 = [NSNumber numberWithInt:2];
    [(__CFString *)v23 setObject:v37 forKey:@"ClientVersion"];

    uUIDString = [v127 UUIDString];
    [(__CFString *)v23 setObject:uUIDString forKey:@"Nonce"];

    sessionId = [optionsCopy sessionId];
    if (!sessionId)
    {
      v40 = +[NSUUID UUID];
      uUIDString2 = [v40 UUIDString];

      sessionId = uUIDString2;
    }

    v115 = sessionId;
    [__CFString setObject:v23 forKey:"setObject:forKey:"];
    v114 = [(DownloadManager *)self addSUOptions:v23 options:optionsCopy];
    if ([optionsCopy liveServerCatalogOnlyIsOverridden])
    {
      if ([optionsCopy liveServerCatalogOnly])
      {
        v42 = @"true";
      }

      else
      {
        v42 = @"false";
      }

      v43 = v42;
      [(__CFString *)v23 setObject:v43 forKey:@"NoFallback"];
    }

    v113 = [(DownloadManager *)self pallasRequestedAssetSetID:v2Copy];
    if (v113)
    {
      [(__CFString *)v23 setObject:v113 forKey:@"RequestedAssetSetID"];
    }

    if (!os_variant_has_internal_content())
    {
LABEL_48:
      additionalServerParams = [optionsCopy additionalServerParams];
      if (additionalServerParams && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        addAdditionalParams(v23, additionalServerParams);
        v108 = [additionalServerParams objectForKey:@"DeviceCheck"];
      }

      else
      {
        v108 = 0;
      }

      v112 = pallasStringParams();
      if (v112)
      {
        [(__CFString *)v23 setSafeObject:v112 forKey:@"DeviceOSData"];
      }

      v107 = additionalServerParams;
      if (!IsInternalAllowed)
      {
        v50 = v23;
LABEL_73:
        [(PallasResponseVerifier *)self->_pallasVerifier issuanceDate];
        v63 = v62;
        if (v62 != 0.0)
        {
          v64 = [NSDate dateWithTimeIntervalSinceReferenceDate:v62];
          if (v64)
          {
            v65 = [(NSDateFormatter *)self->_dateFormatter stringFromDate:v64];
            if (v65)
            {
              [(__CFString *)v50 setObject:v65 forKey:@"CertIssuanceDay"];
            }

            else
            {
              v66 = _MADLog(@"Download");
              if (os_log_type_enabled(v66, OS_LOG_TYPE_FAULT))
              {
                v157 = 138543874;
                v158 = v127;
                v159 = 2048;
                v160 = *&v63;
                v161 = 2112;
                v162 = v64;
                _os_log_impl(&dword_0, v66, OS_LOG_TYPE_FAULT, "[PallasNonce:%{public}@] Cannot format CertIssuanceDay. %f %@", &v157, 0x20u);
              }
            }
          }

          else
          {
            v65 = _MADLog(@"Download");
            if (os_log_type_enabled(v65, OS_LOG_TYPE_FAULT))
            {
              v157 = 138543618;
              v158 = v127;
              v159 = 2048;
              v160 = *&v63;
              _os_log_impl(&dword_0, v65, OS_LOG_TYPE_FAULT, "[PallasNonce:%{public}@] Cannot format CertIssuanceDay. %f nil", &v157, 0x16u);
            }
          }
        }

        v67 = _MADLog(@"Download");
        if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
        {
          v68 = *(*(&buf + 1) + 40);
          v157 = 138543874;
          v158 = v127;
          v159 = 2114;
          v160 = v109;
          v161 = 2114;
          v162 = v68;
          _os_log_impl(&dword_0, v67, OS_LOG_TYPE_DEFAULT, "[PallasNonce:%{public}@] %{public}@. Server URL: %{public}@", &v157, 0x20u);
        }

        if ([NSJSONSerialization isValidJSONObject:v50])
        {
          v105 = [NSJSONSerialization dataWithJSONObject:v50 options:1 error:0];
          v69 = objc_autoreleasePoolPush();
          v70 = +[NSOutputStream outputStreamToMemory];
          [v70 open];
          v150 = 0;
          [NSJSONSerialization writeJSONObject:v50 toStream:v70 options:11 error:&v150];
          v71 = v150;
          if (v71)
          {
            v72 = _MADLog(@"Download");
            if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
            {
              v73 = *(*(&buf + 1) + 40);
              v157 = 138544130;
              v158 = v127;
              v159 = 2114;
              v160 = v2Copy;
              v161 = 2114;
              v162 = v73;
              v163 = 2114;
              v164 = v50;
              _os_log_impl(&dword_0, v72, OS_LOG_TYPE_DEFAULT, "[PallasNonce:%{public}@] Params being sent to the server are (%{public}@, %{public}@): %{public}@", &v157, 0x2Au);
            }
          }

          else
          {
            v72 = [v70 propertyForKey:NSStreamDataWrittenToMemoryStreamKey];
            v75 = [[NSString alloc] initWithData:v72 encoding:4];
            v76 = _MADLog(@"Download");
            if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
            {
              v157 = 138543362;
              v158 = v75;
              _os_log_impl(&dword_0, v76, OS_LOG_TYPE_DEFAULT, "Params being sent to the server are: %{public}@", &v157, 0xCu);
            }
          }

          [v70 close];
          objc_autoreleasePoolPop(v69);
          v77 = [NSMutableURLRequest requestWithURL:*(*(&buf + 1) + 40)];
          v106 = [(DownloadManager *)self getUserAgentStringForClient:nameCopy withAssetType:typeCopy];
          [v77 setCachePolicy:4];
          [v77 setHTTPMethod:@"POST"];
          [v77 setValue:v106 forHTTPHeaderField:@"User-Agent"];
          [v77 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
          [v77 setValue:@"application/json" forHTTPHeaderField:@"Accept"];
          uUIDString3 = [v127 UUIDString];
          [v77 setValue:uUIDString3 forHTTPHeaderField:@"Nonce"];

          [v77 setHTTPBody:v105];
          if (_MAPreferencesIsVerboseLoggingEnabled())
          {
            v79 = _MADLog(@"Download");
            if (os_log_type_enabled(v79, OS_LOG_TYPE_DEBUG))
            {
              v157 = 138543618;
              v158 = v127;
              v159 = 2112;
              v160 = v106;
              _os_log_impl(&dword_0, v79, OS_LOG_TYPE_DEBUG, "[PallasNonce:%{public}@] User Agent String is: %@", &v157, 0x16u);
            }
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v80 = optionsCopy;
            purpose = [v80 purpose];
            v82 = normalizePurpose(purpose);

            if (!isWellFormedPurpose(v82))
            {
              v83 = _MADLog(@"Download");
              if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
              {
                v157 = 138543874;
                v158 = v127;
                v159 = 2114;
                v160 = v82;
                v161 = 2114;
                v162 = v2Copy;
                _os_log_impl(&dword_0, v83, OS_LOG_TYPE_ERROR, "[PallasNonce:%{public}@] The purpose for pallas v2 is: '%{public}@' which is not well formed, and type is: %{public}@", &v157, 0x20u);
              }
            }
          }

          else
          {
            v82 = 0;
          }

          v84 = assembleTaskDescriptorWithPurposeAndAutoAssetJobID(typeCopy, @"xml", v82, jobCopy);
          v131[0] = _NSConcreteStackBlock;
          v131[1] = 3221225472;
          v131[2] = __110__DownloadManager_pallasRequestV2_normalizedType_withPurpose_options_using_with_autoAssetJob_clientName_then___block_invoke;
          v131[3] = &unk_4B4158;
          v147 = &v152;
          v101 = v127;
          v132 = v101;
          selfCopy = self;
          v134 = v107;
          p_buf = &buf;
          v100 = jobCopy;
          v135 = v100;
          v85 = v2Copy;
          v136 = v85;
          v104 = v84;
          v137 = v104;
          v138 = typeCopy;
          v103 = v82;
          v139 = v103;
          v149 = spid;
          v146 = thenCopy;
          v140 = v114;
          v141 = v115;
          v99 = v123;
          v142 = v99;
          v143 = absoluteString;
          v102 = optionsCopy;
          v144 = v102;
          v145 = v108;
          spida = objc_retainBlock(v131);
          if ([(DownloadManager *)self pallasRequestRequiresAuthentication:*(*(&buf + 1) + 40) serverParams:v50])
          {
            v86 = _MADLog(@"Download");
            if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
            {
              v157 = 138543618;
              v158 = v101;
              v159 = 2114;
              v160 = v85;
              _os_log_impl(&dword_0, v86, OS_LOG_TYPE_DEFAULT, "[PallasNonce:%{public}@] Using auth pallas session for %{public}@", &v157, 0x16u);
            }

            pallasDelegate = [(DownloadManager *)self pallasDelegate];
            [pallasDelegate refreshBAACertificate];
          }

          else
          {
            pallasDelegate = _MADLog(@"Download");
            if (os_log_type_enabled(pallasDelegate, OS_LOG_TYPE_DEFAULT))
            {
              v157 = 138543618;
              v158 = v101;
              v159 = 2114;
              v160 = v85;
              _os_log_impl(&dword_0, pallasDelegate, OS_LOG_TYPE_DEFAULT, "[PallasNonce:%{public}@] Using standard pallas session for %{public}@", &v157, 0x16u);
            }
          }

          v88 = [(NSURLSession *)self->_pallasSession dataTaskWithRequest:v77 completionHandler:spida];
          PreferenceLong = getPreferenceLong(@"PallasTimeout");
          if (PreferenceLong < 0)
          {
            if ([v102 timeoutIntervalForResource] < 1)
            {
              PreferenceLong = 90;
            }

            else
            {
              PreferenceLong = [v102 timeoutIntervalForResource];
            }
          }

          v90 = [NSNumber numberWithLong:PreferenceLong];
          [v90 doubleValue];
          v92 = v91;

          v130 = 0;
          if (![(DownloadManager *)self useBootstrapDataPathForScan:v85])
          {
            goto LABEL_124;
          }

          v93 = _MADLog(@"Download");
          if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
          {
            v157 = 138543618;
            v158 = v101;
            v159 = 2114;
            v160 = v85;
            _os_log_impl(&dword_0, v93, OS_LOG_TYPE_DEFAULT, "[PallasNonce:%{public}@] Using BootstrapDataService config for pallas request for %{public}@", &v157, 0x16u);
          }

          currentConfig = [(DownloadManager *)self currentConfig];
          v95 = [currentConfig copy];

          [v95 set_sourceApplicationSecondaryIdentifier:@"com.apple.CommCenter.CellularPlanProvisioning"];
          if ((backgroundDownloadsPossibleWithInfo(&v130) & 1) == 0)
          {
            v96 = _MADLog(@"Download");
            if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
            {
              v157 = 138543874;
              v158 = v101;
              v159 = 2048;
              v160 = PreferenceLong;
              v161 = 1024;
              LODWORD(v162) = v130;
              _os_log_impl(&dword_0, v96, OS_LOG_TYPE_DEFAULT, "[PallasNonce:%{public}@] Download foreground download, timeout: %ld forced in-proc: %d", &v157, 0x1Cu);
            }

            [v95 setTimeoutIntervalForResource:v92];
            [v95 set_socketStreamProperties:&off_4F8390];
          }

          [v88 _adoptEffectiveConfiguration:v95];
          if (!v95)
          {
LABEL_124:
            if (backgroundDownloadsPossibleWithInfo(&v130))
            {
              v95 = 0;
            }

            else
            {
              v97 = _MADLog(@"Download");
              if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
              {
                v157 = 138543874;
                v158 = v101;
                v159 = 2048;
                v160 = PreferenceLong;
                v161 = 1024;
                LODWORD(v162) = v130;
                _os_log_impl(&dword_0, v97, OS_LOG_TYPE_DEFAULT, "[PallasNonce:%{public}@] Download foreground download, timeout: %ld forced in-proc: %d", &v157, 0x1Cu);
              }

              currentConfig2 = [(DownloadManager *)self currentConfig];
              v95 = [currentConfig2 copy];

              [v95 setTimeoutIntervalForResource:v92];
              [v95 set_socketStreamProperties:&off_4F83B8];
              [v88 _adoptEffectiveConfiguration:v95];
            }
          }

          [v88 set_timeoutIntervalForResource:v92];
          [(DownloadManager *)self addLiveServerRequest:v104 forAssetType:v85 withPurpose:v103 audience:v99 pallasUrl:*(*(&buf + 1) + 40) using:usingCopy with:withCopy clientName:nameCopy autoAssetJobID:v100 task:v88 options:v102];

          v74 = v105;
        }

        else
        {
          v74 = _MADLog(@"Download");
          if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
          {
            v157 = 138543362;
            v158 = v127;
            _os_log_impl(&dword_0, v74, OS_LOG_TYPE_ERROR, "[PallasNonce:%{public}@] Params are not valid", &v157, 0xCu);
          }
        }

        goto LABEL_131;
      }

      v54 = objc_autoreleasePoolPush();
      v2Copy = [NSString stringWithFormat:@"%@-%@", @"PallasOverrides", v2Copy];
      v56 = _MAPreferencesCopyNSDictionaryValue(v2Copy);
      if (v56)
      {
        v57 = _MADLog(@"Download");
        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
        {
          v157 = 138543874;
          v158 = v127;
          v159 = 2114;
          v160 = v2Copy;
          v161 = 2114;
          v162 = v56;
          v58 = "[PallasNonce:%{public}@] [PALLAS OVERRIDES]: Parsing value set in asset specific default(%{public}@) for PallasOverrides(%{public}@)";
LABEL_62:
          _os_log_impl(&dword_0, v57, OS_LOG_TYPE_DEFAULT, v58, &v157, 0x20u);
        }
      }

      else
      {
        v56 = _MAPreferencesCopyNSDictionaryValue(@"PallasOverrides");
        if (!v56)
        {
          v50 = v23;
LABEL_72:

          objc_autoreleasePoolPop(v54);
          goto LABEL_73;
        }

        v57 = _MADLog(@"Download");
        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
        {
          v157 = 138543874;
          v158 = v127;
          v159 = 2114;
          v160 = @"PallasOverrides";
          v161 = 2114;
          v162 = v56;
          v58 = "[PallasNonce:%{public}@] [PALLAS OVERRIDES]: Parsing value set in global default(%{public}@) for PallasOverrides(%{public}@)";
          goto LABEL_62;
        }
      }

      v59 = [(__CFString *)v23 mutableCopy];
      v60 = _MADLog(@"Download");
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
      {
        v157 = 138543874;
        v158 = v127;
        v159 = 2114;
        v160 = v23;
        v161 = 2114;
        v162 = v56;
        _os_log_impl(&dword_0, v60, OS_LOG_TYPE_DEFAULT, "[PallasNonce:%{public}@] [PALLAS OVERRIDES]: Merging current serverParams(%{public}@) with PallasOverrides(%{public}@)", &v157, 0x20u);
      }

      if (deepMergeDictionaries(v59, v56))
      {
        v50 = v59;

        v61 = _MADLog(@"Download");
        if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
        {
          v157 = 138543618;
          v158 = v127;
          v159 = 2114;
          v160 = v50;
          _os_log_impl(&dword_0, v61, OS_LOG_TYPE_DEFAULT, "[PallasNonce:%{public}@] [PALLAS OVERRIDES]: Merged serverParams { %{public}@ }", &v157, 0x16u);
        }
      }

      else
      {
        v61 = _MADLog(@"Download");
        if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
        {
          v157 = 138543362;
          v158 = v127;
          _os_log_impl(&dword_0, v61, OS_LOG_TYPE_ERROR, "[PallasNonce:%{public}@] [PALLAS OVERRIDES]: Failed to merge serverParams with PallasOverrides", &v157, 0xCu);
        }

        v50 = v23;
      }

      goto LABEL_72;
    }

    v44 = _MAPreferencesCopyValue(@"TimeTravelDate");
    v45 = _MAPreferencesCopyValue(@"TimeTravelDateDiff");
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v46 = v45;
      v47 = v46;
      if (!v44)
      {
        if (!v46)
        {
          v51 = 0;
          goto LABEL_47;
        }

        v44 = +[NSDate now];
        v48 = dateAfterTimeTravel(0, v44, v47);
LABEL_44:
        v51 = v48;

        if (v51)
        {
          v44 = v51;
          goto LABEL_46;
        }

LABEL_47:

        goto LABEL_48;
      }
    }

    else
    {
      v47 = 0;
      v51 = 0;
      if (!v44)
      {
        goto LABEL_47;
      }
    }

    if ([v44 rangeOfString:@"^\\d{4}-\\d{2}-\\d{2}$" options:1024] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v52 = _MADLog(@"Download");
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        v157 = 138543362;
        v158 = v127;
        _os_log_impl(&dword_0, v52, OS_LOG_TYPE_ERROR, "[PallasNonce:%{public}@] Time Travel Date has invalid format where it should be of format YYYY-MM-DD", &v157, 0xCu);
      }

      goto LABEL_46;
    }

    if (!v47)
    {
LABEL_46:
      [(__CFString *)v23 setObject:v44 forKey:@"TimeTravelDate"];
      v51 = v44;
      goto LABEL_47;
    }

    v48 = dateAfterTimeTravel(v44, 0, v47);
    goto LABEL_44;
  }

  v49 = _MADLog(@"Download");
  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v157) = 0;
    _os_log_impl(&dword_0, v49, OS_LOG_TYPE_DEFAULT, "Skipping live asset due to nil server url", &v157, 2u);
  }

  v50 = getStandardUrl(v2Copy, typeCopy);
  (*(thenCopy + 2))(thenCopy, v50, v153[3], 27);
  v114 = 0;
  v115 = 0;
LABEL_131:

  _Block_object_dispose(&buf, 8);
  _Block_object_dispose(&v152, 8);
  objc_autoreleasePoolPop(context);
  os_activity_scope_leave(&state);
}

void __110__DownloadManager_pallasRequestV2_normalizedType_withPurpose_options_using_with_autoAssetJob_clientName_then___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v152 = a2;
  v7 = a3;
  v8 = a4;
  v162 = a1;
  *(*(*(a1 + 152) + 8) + 24) = 2;
  v143 = objc_opt_new();
  v168[0] = 0;
  v168[1] = v168;
  v168[2] = 0x3032000000;
  v168[3] = __Block_byref_object_copy__11;
  v168[4] = __Block_byref_object_dispose__11;
  v169 = 0;
  v155 = v7;
  v156 = v8;
  if (!v7)
  {
    v160 = downloadResultForNetworkFailure(-16, v8, 0);
    v13 = stringForMADownloadResult(v160);
    v157 = [NSString stringWithFormat:@"V2 networking issue - %ld %@", v160, v13];

    v14 = _MADLog(@"Download");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = *(a1 + 32);
      *buf = 138543874;
      *&buf[4] = v15;
      *&buf[12] = 2114;
      *&buf[14] = v157;
      *&buf[22] = 2114;
      *&buf[24] = v156;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "[PallasNonce:%{public}@] There was a Pallas networking failure: %{public}@ error: %{public}@", buf, 0x20u);
    }

    v153 = 0;
    v154 = 0;
    v144 = 0;
    v145 = 0;
    v140 = 0;
    v142 = 0;
    v12 = 0;
    v137 = 0;
    v138 = 0;
    v147 = 0;
    v148 = 0;
    v146 = 0;
    v149 = 0;
    v150 = 0;
    v151 = 0;
    v136 = 0;
    v16 = 0;
    v158 = -16;
    goto LABEL_59;
  }

  v158 = [v7 statusCode];
  if (v8)
  {
    v159 = downloadResultForNetworkFailure(v158, v8, 0);
    v9 = stringForMADownloadResult(v159);
    v157 = [NSString stringWithFormat:@"V2 networking issue error - %ld %@", v159, v9];

    v10 = _MADLog(@"Download");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 32);
      *buf = 138544130;
      *&buf[4] = v11;
      *&buf[12] = 2114;
      *&buf[14] = v157;
      *&buf[22] = 2114;
      *&buf[24] = v156;
      *&buf[32] = 2114;
      *&buf[34] = v11;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "[PallasNonce:%{public}@] There was a Pallas networking failure: %{public}@ error: %{public}@ for the request with nonce: %{public}@", buf, 0x2Au);
    }

    v154 = 0;
    v144 = 0;
    v145 = 0;
    v140 = 0;
    v142 = 0;
    v12 = 0;
    v137 = 0;
    v138 = 0;
    v147 = 0;
    v148 = 0;
    v146 = 0;
    v149 = 0;
    v150 = 0;
    v151 = 0;
    goto LABEL_57;
  }

  if (v158 > 408)
  {
    v17 = v152;
    if (v158 == 409)
    {
      v23 = _MADLog(@"Download");
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = *(a1 + 32);
        *buf = 138543362;
        *&buf[4] = v24;
        _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEFAULT, "[PallasNonce:%{public}@] AssetVersion downgrade detected", buf, 0xCu);
      }

      *(*(*(a1 + 152) + 8) + 24) = 3;
      v18 = 1;
      v157 = @"AssetVersion downgrade detected";
      v158 = 409;
      goto LABEL_27;
    }

    if (v158 == 422)
    {
      v19 = _MADLog(@"Download");
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = *(a1 + 32);
        *buf = 138543362;
        *&buf[4] = v20;
        _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "[PallasNonce:%{public}@] There was no match for the requested product marketing version", buf, 0xCu);
      }

      *(*(*(a1 + 152) + 8) + 24) = 3;
      v157 = @"No match for the requested product marketing version";
      v158 = -19;
      v18 = 1;
      goto LABEL_27;
    }

    goto LABEL_24;
  }

  v17 = v152;
  if ((v158 - 200) >= 2)
  {
    if (v158 == 304)
    {
      *(*(*(a1 + 152) + 8) + 24) = 4;
      v21 = _MADLog(@"Download");
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = *(a1 + 32);
        *buf = 138543362;
        *&buf[4] = v22;
        _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "[PallasNonce:%{public}@] Asset set id matched so received 304 response", buf, 0xCu);
      }

      v18 = 1;
      v157 = 0;
      v158 = 304;
      goto LABEL_27;
    }

LABEL_24:
    v161 = downloadResultForNetworkFailure(v158, 0, 0);
    v25 = stringForMADownloadResult(v161);
    v157 = [NSString stringWithFormat:@"V2 networking issue status - %ld %@", v161, v25];

    v17 = v152;
    v26 = _MADLog(@"Download");
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = *(a1 + 32);
      *buf = 138543874;
      *&buf[4] = v27;
      *&buf[12] = 2114;
      *&buf[14] = v157;
      *&buf[22] = 2048;
      *&buf[24] = v158;
      _os_log_impl(&dword_0, v26, OS_LOG_TYPE_ERROR, "[PallasNonce:%{public}@] There was a Pallas networking failure: %{public}@ statusCode: %ld", buf, 0x20u);
    }

    v18 = 1;
    goto LABEL_27;
  }

  v18 = 0;
  v157 = 0;
LABEL_27:
  v28 = objc_autoreleasePoolPush();
  v29 = v17;
  v139 = v18;
  v30 = [v17 bytes];
  v31 = 0;
  v32 = 0;
  v33 = 0;
  *&buf[8] = 0;
  *&buf[24] = 0;
  *&buf[32] = 0x7FFFFFFFFFFFFFFFLL;
  *&buf[40] = 0;
  *&buf[16] = 0x7FFFFFFFFFFFFFFFLL;
  *buf = 0;
  v34 = 4;
  while (v31 < [v17 length])
  {
    v35 = v30[v31] == 46;
    if (v30[v31] == 46)
    {
      if (++v32 == 3)
      {
        goto LABEL_41;
      }
    }

    else
    {
      if (v33)
      {
        *&buf[16 * v32] = v31;
      }

      ++*&buf[16 * v32 + 8];
    }

    ++v31;
    v33 = v35;
  }

  v34 = v32 + 1;
  if (v32 != 2)
  {
LABEL_41:
    _MADLog(@"Download");
    v38 = v36 = v139;
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v39 = *(v162 + 32);
      *v172 = 138543874;
      v173 = v39;
      v174 = 2048;
      v175 = v34;
      v176 = 2082;
      v177 = v30;
      _os_log_impl(&dword_0, v38, OS_LOG_TYPE_ERROR, "[PallasNonce:%{public}@] Pallas JWS parsing did not yield 3 elements, elements: %lu bytes: %{public}s", v172, 0x20u);
    }

    v149 = 0;
    if ((v139 & 1) == 0)
    {
      v158 = -1;
      v40 = @"V2 JWS parsing did not yield 3 elements";
LABEL_46:
      v151 = 0;
      goto LABEL_47;
    }

LABEL_44:
    v37 = 0;
    v147 = 0;
    v151 = 0;
    goto LABEL_48;
  }

  v151 = [PallasResponseVerifier CopyDataFromEncodedBase64:v17 range:*buf, *&buf[8]];
  v36 = v139;
  if (!v151)
  {
    v92 = _MADLog(@"Download");
    if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
    {
      v93 = *(v162 + 32);
      *v172 = 138543362;
      v173 = v93;
      _os_log_impl(&dword_0, v92, OS_LOG_TYPE_ERROR, "[PallasNonce:%{public}@] Pallas headerData decoding base 64 failed", v172, 0xCu);
    }

    v149 = 0;
    if ((v139 & 1) == 0)
    {
      v158 = -2;
      v40 = @"V2 headerData decoding base 64 failed";
      goto LABEL_46;
    }

    goto LABEL_44;
  }

  v149 = [PallasResponseVerifier CopyDataFromEncodedBase64:v17 range:*&buf[16], *&buf[24]];
  if (v149)
  {
    v147 = [PallasResponseVerifier CopyDataFromEncodedBase64:v17 range:*&buf[32], *&buf[40]];
    if (v147)
    {
      v37 = 1;
      goto LABEL_48;
    }

    v99 = _MADLog(@"Download");
    if (os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
    {
      v100 = *(v162 + 32);
      *v172 = 138543362;
      v173 = v100;
      _os_log_impl(&dword_0, v99, OS_LOG_TYPE_ERROR, "[PallasNonce:%{public}@] Pallas signature decoding base 64 failed, skipping verification for now", v172, 0xCu);
    }

    if (v139)
    {
      goto LABEL_114;
    }

    v158 = -4;
    v40 = @"V2 signature decoding base 64 failed";
LABEL_47:

    v37 = 0;
    v147 = 0;
    v157 = v40;
    goto LABEL_48;
  }

  v94 = _MADLog(@"Download");
  if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
  {
    v95 = *(v162 + 32);
    *v172 = 138543362;
    v173 = v95;
    _os_log_impl(&dword_0, v94, OS_LOG_TYPE_ERROR, "[PallasNonce:%{public}@] Pallas responseData decoding base 64 failed", v172, 0xCu);
  }

  v149 = 0;
  if ((v139 & 1) == 0)
  {
    v158 = -3;
    v40 = @"V2 responseData decoding base 64 failed";
    goto LABEL_47;
  }

LABEL_114:
  v37 = 0;
  v147 = 0;
LABEL_48:
  objc_autoreleasePoolPop(v28);
  if (!v37)
  {
    v154 = 0;
    v144 = 0;
    v145 = 0;
    v140 = 0;
    v142 = 0;
    v12 = 0;
    v137 = 0;
    v138 = 0;
    v148 = 0;
    v146 = 0;
    v150 = 0;
LABEL_57:
    v153 = 0;
LABEL_58:
    v136 = 0;
    v16 = 0;
LABEL_59:
    v47 = v162;
    goto LABEL_60;
  }

  v41 = objc_autoreleasePoolPush();
  v167 = 0;
  v150 = [NSJSONSerialization JSONObjectWithData:v151 options:0 error:&v167];
  v153 = v167;
  v42 = _MADLog(@"Download");
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
  {
    v43 = *(v162 + 32);
    *buf = 138543618;
    *&buf[4] = v43;
    *&buf[12] = 2114;
    *&buf[14] = v150;
    _os_log_impl(&dword_0, v42, OS_LOG_TYPE_DEFAULT, "[PallasNonce:%{public}@] The pallas response header is: %{public}@", buf, 0x16u);
  }

  if (v153)
  {
    v44 = _MADLog(@"Download");
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      v45 = *(v162 + 32);
      v46 = [v153 description];
      *buf = 138543618;
      *&buf[4] = v45;
      *&buf[12] = 2114;
      *&buf[14] = v46;
      _os_log_impl(&dword_0, v44, OS_LOG_TYPE_ERROR, "[PallasNonce:%{public}@] Error in getting JSON from the headerJson of Pallas response: %{public}@", buf, 0x16u);
    }

    if (v36)
    {
      v148 = 0;
      v146 = 0;
    }

    else
    {

      v148 = 0;
      v146 = 0;
      v157 = @"V2 Error in getting JSON from the header";
      v158 = -5;
    }
  }

  else
  {
    v146 = [v150 objectForKey:@"alg"];
    v148 = [v150 objectForKey:@"x5c"];
  }

  objc_autoreleasePoolPop(v41);
  if (v153)
  {
    v154 = 0;
    v144 = 0;
    v145 = 0;
    v140 = 0;
    v142 = 0;
    v12 = 0;
    v137 = 0;
    v138 = 0;
    goto LABEL_58;
  }

  v73 = v162;
  if (v148)
  {
    v74 = _MADLog(@"Download");
    if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
    {
      v75 = *(v162 + 32);
      *buf = 138543362;
      *&buf[4] = v75;
      _os_log_impl(&dword_0, v74, OS_LOG_TYPE_DEFAULT, "[PallasNonce:%{public}@] Certs present, checking they are valid", buf, 0xCu);
    }

    v76 = [*(v162 + 40) pallasVerifier];
    v77 = [v76 determineAlg:v146];

    if ((v77 & 1) == 0)
    {
      v96 = _MADLog(@"Download");
      if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
      {
        v97 = *(v162 + 32);
        *buf = 138543362;
        *&buf[4] = v97;
        _os_log_impl(&dword_0, v96, OS_LOG_TYPE_ERROR, "[PallasNonce:%{public}@] Pallas invalid alg specified", buf, 0xCu);
      }

      if ((v36 & 1) == 0)
      {

        v153 = 0;
        v154 = 0;
        v144 = 0;
        v145 = 0;
        v140 = 0;
        v142 = 0;
        v12 = 0;
        v137 = 0;
        v138 = 0;
        v136 = 0;
        v16 = 0;
        v158 = -6;
        v98 = @"V2 invalid alg specified";
LABEL_135:
        v157 = v98;
        goto LABEL_59;
      }

      goto LABEL_122;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v78 = objc_autoreleasePoolPush();
      v164[0] = _NSConcreteStackBlock;
      v164[1] = 3221225472;
      v164[2] = __110__DownloadManager_pallasRequestV2_normalizedType_withPurpose_options_using_with_autoAssetJob_clientName_then___block_invoke_2224;
      v164[3] = &unk_4B4130;
      v166 = v168;
      v79 = v143;
      v165 = v79;
      [v148 enumerateObjectsUsingBlock:v164];
      v80 = [*(v162 + 40) pallasVerifier];
      v81 = [v80 verifyCerts:v79 error:0];

      if ((v81 & 1) == 0)
      {
        v82 = _MADLog(@"Download");
        if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
        {
          v83 = *(v162 + 32);
          *buf = 138543362;
          *&buf[4] = v83;
          _os_log_impl(&dword_0, v82, OS_LOG_TYPE_DEFAULT, "[PallasNonce:%{public}@] Pallas: Failure attempting to verify the certificates aborting", buf, 0xCu);
        }

        if ((v36 & 1) == 0)
        {

          v157 = @"V2 could not verify the certificates";
          v158 = -14;
        }
      }

      objc_autoreleasePoolPop(v78);
      if (v81)
      {
        v73 = v162;
        goto LABEL_92;
      }
    }

    else
    {
      v103 = _MADLog(@"Download");
      if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
      {
        v104 = *(v162 + 32);
        *buf = 138543362;
        *&buf[4] = v104;
        _os_log_impl(&dword_0, v103, OS_LOG_TYPE_DEFAULT, "[PallasNonce:%{public}@] Pallas Cert data was not an array, skipping", buf, 0xCu);
      }

      if ((v36 & 1) == 0)
      {

        v153 = 0;
        v154 = 0;
        v144 = 0;
        v145 = 0;
        v140 = 0;
        v142 = 0;
        v12 = 0;
        v137 = 0;
        v138 = 0;
        v136 = 0;
        v16 = 0;
        v158 = -7;
        v98 = @"V2 certs were not an array";
        goto LABEL_135;
      }
    }

LABEL_122:
    v154 = 0;
    v144 = 0;
    v145 = 0;
    v140 = 0;
    v142 = 0;
    v12 = 0;
    v137 = 0;
    v138 = 0;
    goto LABEL_57;
  }

LABEL_92:
  v84 = [*(v73 + 40) pallasVerifier];
  v85 = [v84 verifyResponse:v149 signature:v147 error:0];

  if ((v85 & 1) == 0)
  {
    v101 = _MADLog(@"Download");
    if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
    {
      v102 = *(v162 + 32);
      *buf = 138543362;
      *&buf[4] = v102;
      _os_log_impl(&dword_0, v101, OS_LOG_TYPE_DEFAULT, "[PallasNonce:%{public}@] Pallas: Unable to verify the payload, signature check failed aborting", buf, 0xCu);
    }

    if ((v36 & 1) == 0)
    {

      v153 = 0;
      v154 = 0;
      v144 = 0;
      v145 = 0;
      v140 = 0;
      v142 = 0;
      v12 = 0;
      v137 = 0;
      v138 = 0;
      v136 = 0;
      v16 = 0;
      v158 = -8;
      v98 = @"V2 signature failed verification";
      goto LABEL_135;
    }

    goto LABEL_122;
  }

  v86 = objc_autoreleasePoolPush();
  v163 = 0;
  v145 = [NSJSONSerialization JSONObjectWithData:v149 options:1 error:&v163];
  v153 = v163;
  if (v153)
  {
    v87 = _MADLog(@"Download");
    if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
    {
      v88 = *(v162 + 32);
      *buf = 138543362;
      *&buf[4] = v88;
      _os_log_impl(&dword_0, v87, OS_LOG_TYPE_ERROR, "[PallasNonce:%{public}@] Error in getting JSON from the data of Pallas response", buf, 0xCu);
    }

    if (v36)
    {
LABEL_97:
      v89 = 0;
      v154 = 0;
      v144 = 0;
      v142 = 0;
LABEL_98:
      v90 = 0;
      v138 = 0;
      v140 = 0;
      v136 = 0;
      v137 = 0;
      v16 = 0;
      v91 = 0;
      goto LABEL_138;
    }

    v89 = 0;
    v154 = 0;
    v144 = 0;
    v140 = 0;
    v142 = 0;
    v90 = 0;
    v137 = 0;
    v138 = 0;
    v136 = 0;
    v16 = 0;
    v91 = 0;
    v109 = -9;
    v110 = @"V2 could not get response JSON";
    goto LABEL_137;
  }

  v144 = [v145 objectForKey:@"Nonce"];
  if (!v144)
  {
    v111 = _MADLog(@"Download");
    if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
    {
      v112 = *(v162 + 32);
      *buf = 138543362;
      *&buf[4] = v112;
      _os_log_impl(&dword_0, v111, OS_LOG_TYPE_ERROR, "[PallasNonce:%{public}@] Pallas response contains nil nonce", buf, 0xCu);
    }

    if (v36)
    {
      goto LABEL_97;
    }

    v89 = 0;
    v154 = 0;
    v144 = 0;
    v140 = 0;
    v142 = 0;
    v90 = 0;
    v137 = 0;
    v138 = 0;
    v136 = 0;
    v16 = 0;
    v91 = 0;
    v109 = -10;
    v110 = @"V2 response contains nil nonce";
    goto LABEL_137;
  }

  v105 = [v145 objectForKey:@"PallasNonce"];
  v106 = @"Unknown";
  if (v105)
  {
    v106 = v105;
  }

  v154 = v106;
  v142 = [[NSUUID alloc] initWithUUIDString:v144];
  if (([v142 isEqual:*(v162 + 32)] & 1) == 0)
  {
    v113 = _MADLog(@"Download");
    if (os_log_type_enabled(v113, OS_LOG_TYPE_ERROR))
    {
      v114 = *(v162 + 32);
      *buf = 138543874;
      *&buf[4] = v114;
      *&buf[12] = 2114;
      *&buf[14] = v114;
      *&buf[22] = 2114;
      *&buf[24] = v142;
      _os_log_impl(&dword_0, v113, OS_LOG_TYPE_ERROR, "[PallasNonce:%{public}@] Pallas response contains nonce mismatch, original %{public}@, skipping: %{public}@", buf, 0x20u);
    }

    if (v36)
    {
      v89 = 0;
      goto LABEL_98;
    }

    v89 = 0;
    v90 = 0;
    v138 = 0;
    v140 = 0;
    v136 = 0;
    v137 = 0;
    v16 = 0;
    v91 = 0;
    v109 = -11;
    v110 = @"V2 response contains nonce mismatch";
    goto LABEL_137;
  }

  [*(v162 + 40) _logResponseBody:v145 nonce:v144 extraServerOptions:*(v162 + 48)];
  if (v158 != 201)
  {
    v136 = [v145 objectForKey:@"AssetSetId"];
    v170 = @"isLiveServer";
    v171 = &__kCFBooleanTrue;
    v137 = [NSDictionary dictionaryWithObjects:&v171 forKeys:&v170 count:1];
    v138 = [v145 objectForKey:@"PostingDate"];
    v115 = *(v162 + 40);
    v116 = *(v162 + 56);
    v135 = *(v162 + 64);
    v141 = *(v162 + 72);
    v117 = [v145 objectForKey:@"Assets"];
    v118 = [v145 objectForKey:@"Transformations"];
    v119 = *(v162 + 64);
    v120 = *(v162 + 80);
    v121 = repositoryPath(v119);
    v122 = assembleXmlPathWithPurpose(v119, v120, v121, *(v162 + 88));
    LOBYTE(v133) = v116 == 0;
    v123 = [v115 massageXmlAndPersist:v135 catalogInfo:v137 descriptor:v141 assets:v117 transformations:v118 to:v122 postedDate:v138 assetSetId:v136 pallasUrl:*(*(*(v162 + 160) + 8) + 40) considerCaching:v133];

    v90 = 0;
    v140 = 0;
    v16 = 0;
    v91 = v123 == &dword_1C + 3;
    v89 = 1;
    goto LABEL_138;
  }

  v107 = [v145 objectForKey:@"LegacyXmlUrl"];
  v90 = v107;
  if (v107)
  {
    v140 = [NSURL URLWithString:v107];
    if (v140)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v108 = [v140 scheme];
        if ([v108 isEqualToString:@"https"])
        {

LABEL_157:
          v128 = _MADLog(@"Download");
          if (os_log_type_enabled(v128, OS_LOG_TYPE_DEFAULT))
          {
            v129 = *(v162 + 32);
            v130 = [*(*(*(v162 + 160) + 8) + 40) scheme];
            *buf = 138543874;
            *&buf[4] = v129;
            *&buf[12] = 2114;
            *&buf[14] = v140;
            *&buf[22] = 2114;
            *&buf[24] = v130;
            _os_log_impl(&dword_0, v128, OS_LOG_TYPE_DEFAULT, "[PallasNonce:%{public}@] Over riding url with url from pallas: %{public}@, %{public}@", buf, 0x20u);

            v36 = v139;
          }

          v140 = v140;
          if (v36)
          {
            v89 = 0;
            v137 = 0;
            v138 = 0;
            v136 = 0;
            v91 = 0;
            v158 = 201;
            v16 = v140;
            goto LABEL_138;
          }

          v89 = 0;
          v137 = 0;
          v138 = 0;
          v136 = 0;
          v91 = 0;
          v109 = -15;
          v16 = v140;
          v110 = @"V2 Server instructed us to fallback";
LABEL_137:
          v157 = v110;
          v158 = v109;
          goto LABEL_138;
        }

        v126 = [v140 scheme];
        v127 = [v126 isEqualToString:@"http"];

        if (v127)
        {
          goto LABEL_157;
        }
      }
    }

    v131 = _MADLog(@"Download");
    if (os_log_type_enabled(v131, OS_LOG_TYPE_ERROR))
    {
      v132 = *(v162 + 32);
      *buf = 138544130;
      *&buf[4] = v132;
      *&buf[12] = 1024;
      *&buf[14] = 201;
      *&buf[18] = 2114;
      *&buf[20] = v140;
      *&buf[28] = 2114;
      *&buf[30] = 0;
      _os_log_impl(&dword_0, v131, OS_LOG_TYPE_ERROR, "[PallasNonce:%{public}@] Received %d from pallas but url is invalid: %{public}@ using: %{public}@", buf, 0x26u);
    }

    if ((v36 & 1) == 0)
    {

      v89 = 0;
      v137 = 0;
      v138 = 0;
      v136 = 0;
      v16 = 0;
      v91 = 0;
      v109 = -13;
      v110 = @"V2 invalid url from pallas";
      goto LABEL_137;
    }

    v89 = 0;
  }

  else
  {
    v124 = _MADLog(@"Download");
    if (os_log_type_enabled(v124, OS_LOG_TYPE_ERROR))
    {
      v125 = *(v162 + 32);
      *buf = 138543874;
      *&buf[4] = v125;
      *&buf[12] = 1024;
      *&buf[14] = 201;
      *&buf[18] = 2114;
      *&buf[20] = 0;
      _os_log_impl(&dword_0, v124, OS_LOG_TYPE_ERROR, "[PallasNonce:%{public}@] Received %d and nil url returned by Pallas server using: %{public}@", buf, 0x1Cu);
    }

    if ((v36 & 1) == 0)
    {

      v89 = 0;
      v90 = 0;
      v138 = 0;
      v140 = 0;
      v136 = 0;
      v137 = 0;
      v16 = 0;
      v91 = 0;
      v109 = -12;
      v110 = @"V2 Received requested legacy and nil url returned";
      goto LABEL_137;
    }

    v89 = 0;
    v90 = 0;
    v140 = 0;
  }

  v137 = 0;
  v138 = 0;
  v136 = 0;
  v16 = 0;
  v91 = 0;
  v158 = 201;
LABEL_138:
  objc_autoreleasePoolPop(v86);
  v12 = v90;
  if (!v89)
  {
    goto LABEL_59;
  }

  v47 = v162;
  if (v91)
  {
    *(*(*(v162 + 152) + 8) + 24) = 0;
  }

LABEL_60:
  v48 = _MADLog(@"Download");
  v49 = v48;
  v50 = *(v47 + 168);
  if (v50 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v48))
  {
    v51 = mach_continuous_time();
    v52 = [*(v162 + 64) UTF8String];
    v53 = [*(*(*(v162 + 160) + 8) + 40) absoluteString];
    v54 = v53;
    v55 = [v53 UTF8String];
    *buf = 134349826;
    *&buf[4] = v51;
    *&buf[12] = 2050;
    *&buf[14] = v158;
    *&buf[22] = 2082;
    *&buf[24] = v52;
    *&buf[32] = 2082;
    *&buf[34] = v55;
    _os_signpost_emit_with_name_impl(&dword_0, v49, OS_SIGNPOST_INTERVAL_END, v50, "Pallas", "%{public, signpost.description:end_time}llu Result=%{public, signpost.telemetry:number1,name=Result}lld Catalog=%{public, signpost.telemetry:string1,name=Catalog}sUrl=%{public, signpost.telemetry:string2,name=Url}s enableTelemetry=YES ", buf, 0x2Au);
  }

  v56 = _MADLog(@"Download");
  if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
  {
    v57 = *(v162 + 32);
    *buf = 138544130;
    *&buf[4] = v57;
    *&buf[12] = 2114;
    *&buf[14] = v57;
    *&buf[22] = 2114;
    *&buf[24] = v154;
    *&buf[32] = 2048;
    *&buf[34] = v158;
    _os_log_impl(&dword_0, v56, OS_LOG_TYPE_DEFAULT, "[PallasNonce:%{public}@] The pallas response was { RequestNonce: %{public}@ ResponseNonce: %{public}@ code: %ld", buf, 0x2Au);
  }

  v58 = v162;
  if (*(*(*(v162 + 152) + 8) + 24) == 2 && !v16)
  {
    v16 = getStandardUrl(*(v162 + 64), *(v162 + 80));
    v58 = v162;
  }

  (*(*(v58 + 144) + 16))();
  if (isSoftwareUpdateType(*(v162 + 64)))
  {
    v59 = _MADLog(@"Download");
    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
    {
      v60 = *(v162 + 32);
      v61 = *(v162 + 64);
      *buf = 138543874;
      *&buf[4] = v60;
      *&buf[12] = 2114;
      *&buf[14] = v61;
      *&buf[22] = 2048;
      *&buf[24] = v158;
      _os_log_impl(&dword_0, v59, OS_LOG_TYPE_DEFAULT, "[PallasNonce:%{public}@] Check splunk for %{public}@ status code: %ld", buf, 0x20u);
    }

    v62 = *(v162 + 64);
    v63 = *(v162 + 96);
    v64 = *(v162 + 104);
    v65 = *(v162 + 32);
    v66 = *(v162 + 40);
    v67 = *(*(*(v162 + 160) + 8) + 40);
    v69 = *(v162 + 112);
    v68 = *(v162 + 120);
    LOBYTE(v134) = [*(v162 + 128) discretionary];
    [v66 checkSplunkStatus:v62 failureReason:v157 productVersion:v63 sessionId:v64 nonce:v65 url:v67 statusCode:v158 assetAudience:v69 version:@"2" baseUrl:v68 discretionary:v134 deviceCheck:*(v162 + 136)];
  }

  else
  {
    v70 = _MADLog(@"Download");
    if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
    {
      v71 = *(v162 + 32);
      v72 = *(v162 + 64);
      *buf = 138543618;
      *&buf[4] = v71;
      *&buf[12] = 2114;
      *&buf[14] = v72;
      _os_log_impl(&dword_0, v70, OS_LOG_TYPE_DEFAULT, "[PallasNonce:%{public}@] Skipping splunk for %{public}@", buf, 0x16u);
    }
  }

  _Block_object_dispose(v168, 8);
}

id __110__DownloadManager_pallasRequestV2_normalizedType_withPurpose_options_using_with_autoAssetJob_clientName_then___block_invoke_2224(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[NSData alloc] initWithBase64EncodedString:v3 options:0];

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = *(a1 + 32);
  v8 = *(*(*(a1 + 40) + 8) + 40);

  return [v7 addObject:v8];
}

- (void)syncSplunkTasks
{
  v3 = _MADLog(@"Download");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Syncing Splunk session info", buf, 2u);
  }

  splunkSession = self->_splunkSession;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __34__DownloadManager_syncSplunkTasks__block_invoke;
  v5[3] = &unk_4B4050;
  v5[4] = self;
  [(NSURLSession *)splunkSession getAllTasksWithCompletionHandler:v5];
}

void __34__DownloadManager_syncSplunkTasks__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) splunkStateQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __34__DownloadManager_syncSplunkTasks__block_invoke_2;
  v7[3] = &unk_4B2B18;
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void __34__DownloadManager_syncSplunkTasks__block_invoke_2(uint64_t a1)
{
  v1 = _MADLog(@"Download");
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v1, OS_LOG_TYPE_DEFAULT, "splunk session sync call back in progress", buf, 2u);
  }

  v2 = *(a1 + 32);
  if (v2)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v3 = v2;
    v4 = [v3 countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v17;
      do
      {
        v7 = 0;
        do
        {
          if (*v17 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v16 + 1) + 8 * v7);
          v9 = objc_autoreleasePoolPush();
          if (v8)
          {
            v10 = [v8 taskDescription];
            v11 = v10;
            if (v10 && [v10 isEqualToString:@"bathFileForSendingEvents"])
            {
              v12 = _MADLog(@"Download");
              if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "We are batching", buf, 2u);
              }

              [*(a1 + 40) setCurrentlyBatchingSplunk:1];
            }

            else
            {
              v13 = _MADLog(@"Download");
              if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "Not batching", buf, 2u);
              }
            }
          }

          objc_autoreleasePoolPop(v9);
          v7 = v7 + 1;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v5);
    }
  }

  [*(a1 + 40) setHaveSyncedSplunkState:1];
  v14 = _MADLog(@"Download");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "Syncing splunk complete", buf, 2u);
  }
}

- (void)getCurrentInflightDownloads:(id)downloads
{
  downloadsCopy = downloads;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v5 = _os_activity_create(&dword_0, "DownloadManager:getCurrentInflightDownloads", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v5, &state);

  if (backgroundDownloadsPossibleWithInfo(0))
  {
    backgroundSession = self->_backgroundSession;
    if (backgroundSession)
    {
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = __47__DownloadManager_getCurrentInflightDownloads___block_invoke_2278;
      v9[3] = &unk_4B4180;
      v9[4] = self;
      v10 = downloadsCopy;
      [(NSURLSession *)backgroundSession getAllTasksWithCompletionHandler:v9];
    }

    else
    {
      v8 = _MADLog(@"Download");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446210;
        v15 = "[DownloadManager getCurrentInflightDownloads:]";
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "[%{public}s] No background session present for fetching inflight downloads", buf, 0xCu);
      }

      (*(downloadsCopy + 2))(downloadsCopy, 0);
    }
  }

  else
  {
    downloadStateQueue = self->_downloadStateQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __47__DownloadManager_getCurrentInflightDownloads___block_invoke;
    block[3] = &unk_4B4078;
    block[4] = self;
    v12 = downloadsCopy;
    dispatch_async(downloadStateQueue, block);
  }

  os_activity_scope_leave(&state);
}

void __47__DownloadManager_getCurrentInflightDownloads___block_invoke(uint64_t a1)
{
  v18 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v2 = [*(a1 + 32) downloadTasksInFlight];
  v3 = [v2 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v20;
    *&v4 = 136446466;
    v17 = v4;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v19 + 1) + 8 * i);
        v9 = [*(a1 + 32) downloadTasksInFlight];
        v10 = [v9 safeObjectForKey:v8 ofClass:objc_opt_class()];

        if (!v10)
        {
          v12 = _MADLog(@"Download");
          if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_14;
          }

          *buf = v17;
          v24 = "[DownloadManager getCurrentInflightDownloads:]_block_invoke";
          v25 = 2114;
          v26 = v8;
          v13 = v12;
          v14 = "[%{public}s] We should not have nil DownloadInfo for a task descriptor for taskDescriptor:%{public}@, skipping.";
          goto LABEL_13;
        }

        v11 = [v10 task];

        if (v11)
        {
          v12 = [v10 task];
          [v18 addObject:v12];
          goto LABEL_14;
        }

        v12 = _MADLog(@"Download");
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *buf = v17;
          v24 = "[DownloadManager getCurrentInflightDownloads:]_block_invoke";
          v25 = 2114;
          v26 = v8;
          v13 = v12;
          v14 = "[%{public}s] We should not have nil NSUrlSessionTask for a valid DownloadInfo for taskDescriptor:%{public}@, skipping.";
LABEL_13:
          _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, v14, buf, 0x16u);
        }

LABEL_14:
      }

      v5 = [v2 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v5);
  }

  v15 = _MADLog(@"Download");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [v18 count];
    *buf = 136446466;
    v24 = "[DownloadManager getCurrentInflightDownloads:]_block_invoke";
    v25 = 2048;
    v26 = v16;
    _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "[%{public}s] Sync with NSURLSession is not possible; in-process downloads found %lu tasks", buf, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
}

void __47__DownloadManager_getCurrentInflightDownloads___block_invoke_2278(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _MADLog(@"Download");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v9 = "[DownloadManager getCurrentInflightDownloads:]_block_invoke";
    v10 = 2048;
    v11 = [v3 count];
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "[%{public}s] Sync with NSURLSession is complete and found %lu tasks", buf, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
  v5 = *(a1 + 32);
  v6 = *(v5 + 128);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __47__DownloadManager_getCurrentInflightDownloads___block_invoke_2279;
  block[3] = &unk_4B2AA0;
  block[4] = v5;
  dispatch_async(v6, block);
}

void __47__DownloadManager_getCurrentInflightDownloads___block_invoke_2279(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) allKeys];
  v3 = [v2 count];

  v4 = _MADLog(@"Download");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v18 = "[DownloadManager getCurrentInflightDownloads:]_block_invoke";
    v19 = 2048;
    v20 = v3;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "[%{public}s] Size of _downloadTasksInFlight: %ld", buf, 0x16u);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = *(*(a1 + 32) + 24);
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        v11 = _MADLog(@"Download");
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446466;
          v18 = "[DownloadManager getCurrentInflightDownloads:]_block_invoke";
          v19 = 2114;
          v20 = v10;
          _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "[%{public}s] Downloading: %{public}@", buf, 0x16u);
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (id)startDownloadTask:(id)task downloadSize:(int64_t)size for:(id)for startingAt:(id)at withLength:(id)length extractWith:(id)with options:(id)options modified:(id)self0 session:(id)self1 isCachingServer:(BOOL)self2
{
  taskCopy = task;
  forCopy = for;
  atCopy = at;
  lengthCopy = length;
  withCopy = with;
  optionsCopy = options;
  modifiedCopy = modified;
  sessionCopy = session;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v19 = _os_activity_create(&dword_0, "DownloadManager:startDownloadTask", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v19, &state);

  currentConfig = [(DownloadManager *)self currentConfig];
  v83 = [currentConfig copy];

  v86 = 0;
  dispatch_assert_queue_V2(self->_downloadStateQueue);
  if (!sessionCopy)
  {
    v32 = _MADLog(@"Download");
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v33 = "Cannot download without a valid session";
      v34 = v32;
      v35 = OS_LOG_TYPE_DEFAULT;
LABEL_21:
      _os_log_impl(&dword_0, v34, v35, v33, buf, 2u);
    }

LABEL_22:
    downloadAuthorizationHeader = 0;
    v77 = 0;
    v78 = 0;
    v74 = 0;
    firstClientName = 0;
    v23 = 0;
    v37 = 0;
    v73 = 0;
    v24 = 0;
    v21 = 0;
    goto LABEL_23;
  }

  if (!taskCopy)
  {
    v32 = _MADLog(@"Download");
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v33 = "Cannot start download with nil URL";
      v34 = v32;
      v35 = OS_LOG_TYPE_ERROR;
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  v21 = [NSMutableURLRequest requestWithURL:?];
  v22 = [(NSMutableDictionary *)self->_downloadTasksInFlight objectForKey:forCopy];
  v23 = v22;
  if (!v22)
  {
    v32 = _MADLog(@"Download");
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v32, OS_LOG_TYPE_ERROR, "Cannot start download with nil DownloadInfo", buf, 2u);
    }

    downloadAuthorizationHeader = 0;
    v77 = 0;
    v78 = 0;
    v74 = 0;
    firstClientName = 0;
    v23 = 0;
    v37 = 0;
    v73 = 0;
    v24 = 0;
    goto LABEL_23;
  }

  firstClientName = [v22 firstClientName];
  v71 = downloadTypeForTaskDescriptor(forCopy);
  v24 = getAssetTypeFromTaskDescriptor(forCopy);
  v25 = repositoryPath(v24);
  v26 = ensureDirectory(v25);

  v74 = normalizedAssetType(v24);
  v78 = [(DownloadManager *)self getUserAgentStringForClient:firstClientName withAssetType:v74];
  [v21 setValue:v78 forHTTPHeaderField:@"User-Agent"];
  if (_MAPreferencesIsVerboseLoggingEnabled())
  {
    v27 = _MADLog(@"Download");
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      sizeCopy = v78;
      _os_log_impl(&dword_0, v27, OS_LOG_TYPE_DEBUG, "User Agent String is: %@", buf, 0xCu);
    }
  }

  v73 = getPathToStagedFile(v24, forCopy, 0);
  removeItem(v73);
  v77 = 0;
  if (atCopy && lengthCopy)
  {
    intValue = [atCopy intValue];
    v77 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"bytes=%d-%d", intValue, intValue + [lengthCopy intValue] - 1);
    v29 = _MADLog(@"Download");
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      sizeCopy = v77;
      _os_log_impl(&dword_0, v29, OS_LOG_TYPE_DEFAULT, "Range string is: %{public}@", buf, 0xCu);
    }

    [v21 setValue:v77 forHTTPHeaderField:@"Range"];
  }

  if (modifiedCopy)
  {
    v30 = _MADLog(@"Download");
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      sizeCopy = modifiedCopy;
      _os_log_impl(&dword_0, v30, OS_LOG_TYPE_DEFAULT, "Setting ifModified header to: %{public}@", buf, 0xCu);
    }

    v31 = ASHTTPDateStringForDate(modifiedCopy);
    [v21 setValue:v31 forHTTPHeaderField:@"If-Modified-Since"];
  }

  else
  {
    v31 = _MADLog(@"Download");
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v31, OS_LOG_TYPE_DEFAULT, "IfModified empty", buf, 2u);
    }
  }

  downloadAuthorizationHeader = [optionsCopy downloadAuthorizationHeader];
  if ([downloadAuthorizationHeader length])
  {
    v40 = _MADLog(@"Download");
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v40, OS_LOG_TYPE_DEFAULT, "Attaching downloadAuthorizationHeader to the request", buf, 2u);
    }

    [v21 setValue:downloadAuthorizationHeader forHTTPHeaderField:@"Authorization"];
  }

  else
  {
    v41 = _MADLog(@"Download");
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v41, OS_LOG_TYPE_DEFAULT, "No downloadAuthorizationHeader provided", buf, 2u);
    }
  }

  if (optionsCopy)
  {
    [optionsCopy logOptions];
    [v21 setAllowsCellularAccess:{objc_msgSend(optionsCopy, "allowsCellularAccess")}];
  }

  v32 = [sessionCopy downloadTaskWithRequest:v21];
  if (!v32)
  {
    v32 = _MADLog(@"Download");
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v32, OS_LOG_TYPE_ERROR, "Cannot start download with nil DownloadTask", buf, 2u);
    }

    v37 = 0;
    goto LABEL_23;
  }

  v42 = calculateTimeout(size);
  if (v71 == 5)
  {
    v42 = 604800;
    if (_MAPreferencesIsVerboseLoggingEnabled())
    {
      v43 = _MADLog(@"Download");
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v43, OS_LOG_TYPE_DEFAULT, "Overriding resource timeout for auto asset to max download timeout.", buf, 2u);
      }
    }
  }

  if (!optionsCopy)
  {
    [v32 set_timeoutIntervalForResource:v42];
    v50 = _MADLog(@"Download");
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      sizeCopy = forCopy;
      v90 = 2048;
      v91 = v42;
      v51 = "Setting the time out on: %{public}@ to: %ld due to nil options";
LABEL_72:
      v54 = v50;
      v55 = 22;
LABEL_73:
      _os_log_impl(&dword_0, v54, OS_LOG_TYPE_DEFAULT, v51, buf, v55);
    }

LABEL_74:

    goto LABEL_75;
  }

  if ([optionsCopy discretionary])
  {
    v44 = 1;
  }

  else
  {
    v44 = 2;
  }

  [v32 set_discretionaryOverride:v44];
  if (!server)
  {
    if ([optionsCopy timeoutIntervalForResource] < 1)
    {
      [v32 set_timeoutIntervalForResource:v42];
      v50 = _MADLog(@"Download");
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        sizeCopy = forCopy;
        v90 = 2048;
        v91 = v42;
        v51 = "Setting the time out on: %{public}@ to: %ld due to options specifying to use default";
        goto LABEL_72;
      }
    }

    else
    {
      v52 = +[NSNumber numberWithLong:](NSNumber, "numberWithLong:", [optionsCopy timeoutIntervalForResource]);
      [v52 doubleValue];
      [v32 set_timeoutIntervalForResource:?];

      v50 = _MADLog(@"Download");
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        timeoutIntervalForResource = [optionsCopy timeoutIntervalForResource];
        *buf = 138543618;
        sizeCopy = forCopy;
        v90 = 2048;
        v91 = timeoutIntervalForResource;
        v51 = "Setting the time out on: %{public}@ to: %ld due to options";
        goto LABEL_72;
      }
    }

    goto LABEL_74;
  }

  v45 = calculateTimeout(size);
  if (v45 >= 3600)
  {
    v46 = 3600;
  }

  else
  {
    v46 = v45;
  }

  v47 = [NSNumber numberWithLong:v46];
  [v47 doubleValue];
  [v32 set_timeoutIntervalForResource:?];

  v48 = _MADLog(@"Download");
  if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    sizeCopy = forCopy;
    v90 = 2048;
    v91 = v46;
    _os_log_impl(&dword_0, v48, OS_LOG_TYPE_DEFAULT, "Setting the time out on: %{public}@ to: %ld due to caching server", buf, 0x16u);
  }

  if (!__isPlatformVersionAtLeast(2, 19, 0, 0))
  {
    v50 = _MADLog(@"Download");
    if (!os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_74;
    }

    *buf = 0;
    v51 = "DisableBackgroundRetry is not supported in this environment";
    v54 = v50;
    v55 = 2;
    goto LABEL_73;
  }

  if (objc_opt_respondsToSelector())
  {
    v49 = _MADLog(@"Download");
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v49, OS_LOG_TYPE_DEFAULT, "Setting disableBackgroundRetry to YES due to content cache download", buf, 2u);
    }

    [v32 set_disableBackgroundRetry:1];
  }

LABEL_75:
  if (_MAPreferencesIsInternalAllowed())
  {
    v85 = 0;
    AppBooleanValue = _MAPreferencesGetAppBooleanValue(@"ForceNonDiscretionaryDownload", &v85);
    if (v85)
    {
      if (AppBooleanValue)
      {
        v57 = _MADLog(@"Download");
        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v57, OS_LOG_TYPE_DEFAULT, "Forcing non-discretionary download", buf, 2u);
        }

        [v32 set_discretionaryOverride:2];
      }
    }
  }

  if (withCopy)
  {
    objc_opt_class();
    if (!((forCopy == 0) | ((objc_opt_isKindOfClass() & 1) == 0)))
    {
      [withCopy setSessionID:forCopy];
    }

    [v32 set_extractor:withCopy];
  }

  [v32 setTaskDescription:forCopy];
  v58 = _MADLog(@"Download");
  if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    sizeCopy = size;
    _os_log_impl(&dword_0, v58, OS_LOG_TYPE_DEFAULT, "The download size is: %llu", buf, 0xCu);
  }

  if (size >= 1)
  {
    [v32 setCountOfBytesClientExpectsToReceive:size];
  }

  [v83 setDiscretionary:1];
  [v83 set_allowsExpensiveAccess:{objc_msgSend(optionsCopy, "allowsExpensiveAccess")}];
  [v83 set_requiresPowerPluggedIn:{objc_msgSend(optionsCopy, "requiresPowerPluggedIn")}];
  if (_MAPreferencesIsInternalAllowed())
  {
    v85 = 0;
    v59 = _MAPreferencesGetAppBooleanValue(@"ForceBatteryAllowedDownload", &v85);
    if (v85)
    {
      if (v59)
      {
        v60 = _MADLog(@"Download");
        if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v60, OS_LOG_TYPE_DEFAULT, "Forcing requiresPowerPluggedIn to false", buf, 2u);
        }

        [v83 set_requiresPowerPluggedIn:0];
      }
    }
  }

  if ((backgroundDownloadsPossibleWithInfo(&v86) & 1) == 0)
  {
    v61 = _MADLog(@"Download");
    if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      sizeCopy = forCopy;
      v90 = 1024;
      LODWORD(v91) = v86;
      _os_log_impl(&dword_0, v61, OS_LOG_TYPE_DEFAULT, "Downloading in foreground: %{public}@, removing timeout. (forced inProc: %d)", buf, 0x12u);
    }

    [v83 set_socketStreamProperties:&off_4F83E0];
  }

  if (!forCopy)
  {
    v37 = 0;
    goto LABEL_104;
  }

  v62 = getPathToTempDownloadFile(v24, forCopy, 1);
  v37 = v62;
  if (v62)
  {
    if (removeItem(v62))
    {
      path = [v37 path];
      [v32 set_pathToDownloadTaskFile:path];

      goto LABEL_104;
    }

    v70 = _MADLog(@"Download");
    if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      sizeCopy = forCopy;
      _os_log_impl(&dword_0, v70, OS_LOG_TYPE_DEFAULT, "Download failed for: %{public}@, could not remove temp file before starting", buf, 0xCu);
    }

LABEL_23:
    v32 = 0;
    goto LABEL_24;
  }

LABEL_104:
  [v32 _adoptEffectiveConfiguration:v83];
  if (__isPlatformVersionAtLeast(2, 17, 0, 0) && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v64 = [(DownloadManager *)self clientIdentifierWithName:firstClientName];
    [v32 set_sourceApplicationBundleIdentifierForMobileAsset:v64];
  }

  if (v71 <= 3)
  {
    if (v71 != 1)
    {
      if (v71 != 2)
      {
        goto LABEL_116;
      }

      goto LABEL_114;
    }

    goto LABEL_113;
  }

  if (v71 == 5)
  {
LABEL_114:
    v65 = objc_opt_class();
    v66 = 3;
    goto LABEL_115;
  }

  if (v71 == 4)
  {
LABEL_113:
    v65 = objc_opt_class();
    v66 = 2;
LABEL_115:
    [v65 addNWActivityToDownloadInfo:v23 andTask:v32 andLabel:v66 withOptions:optionsCopy];
  }

LABEL_116:
  if ([v23 signpost])
  {
    v67 = _MADLog(@"Download");
    signpost = [v23 signpost];
    if ((signpost - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v67))
    {
      v69 = mach_continuous_time();
      *buf = 134349056;
      sizeCopy = v69;
      _os_signpost_emit_with_name_impl(&dword_0, v67, OS_SIGNPOST_INTERVAL_BEGIN, signpost, "DownloadSession", "%{public, signpost.description:begin_time}llu  enableTelemetry=YES ", buf, 0xCu);
    }
  }

  [v32 resume];
LABEL_24:
  v38 = v32;

  os_activity_scope_leave(&state);

  return v38;
}

+ (void)addNWActivityToDownloadInfo:(id)info andTask:(id)task andLabel:(unsigned int)label withOptions:(id)options
{
  infoCopy = info;
  taskCopy = task;
  optionsCopy = options;
  if (!__isPlatformVersionAtLeast(2, 18, 4, 0))
  {
    goto LABEL_9;
  }

  v10 = nw_activity_create();
  [infoCopy setNwActivity:v10];
  [taskCopy set_nw_activity:v10];
  nw_activity_activate();
  v11 = xpc_dictionary_create(0, 0, 0);
  additionalServerParams = [optionsCopy additionalServerParams];
  v13 = [additionalServerParams safeObjectForKey:@"SetID" ofClass:objc_opt_class()];
  if (v13)
  {
    assetType = v13;

LABEL_5:
    xpc_dictionary_set_string(v11, [@"SetID" UTF8String], objc_msgSend(assetType, "UTF8String"));

    goto LABEL_6;
  }

  assetType = [infoCopy assetType];

  if (assetType)
  {
    goto LABEL_5;
  }

LABEL_6:
  taskDescriptor = [infoCopy taskDescriptor];

  if (taskDescriptor)
  {
    taskDescriptor2 = [infoCopy taskDescriptor];
    xpc_dictionary_set_string(v11, "taskDescriptor", [taskDescriptor2 UTF8String]);
  }

  nwActivity = [infoCopy nwActivity];
  nw_activity_submit_metrics();

LABEL_9:
}

- (id)startDownloadTask:(id)task downloadSize:(int64_t)size for:(id)for startingAt:(id)at withLength:(id)length extractWith:(id)with options:(id)options modified:(id)self0 session:(id)self1
{
  modifiedCopy = modified;
  optionsCopy = options;
  withCopy = with;
  lengthCopy = length;
  atCopy = at;
  forCopy = for;
  taskCopy = task;
  currentSession = [(DownloadManager *)self currentSession];
  LOBYTE(v28) = 0;
  v26 = [(DownloadManager *)self startDownloadTask:taskCopy downloadSize:size for:forCopy startingAt:atCopy withLength:lengthCopy extractWith:withCopy options:optionsCopy modified:modifiedCopy session:currentSession isCachingServer:v28];

  return v26;
}

- (int64_t)massageXmlAndPersist:(id)persist catalogInfo:(id)info descriptor:(id)descriptor assets:(id)assets transformations:(id)transformations to:(id)to postedDate:(id)date assetSetId:(id)self0 pallasUrl:(id)self1 considerCaching:(BOOL)self2
{
  persistCopy = persist;
  infoCopy = info;
  descriptorCopy = descriptor;
  assetsCopy = assets;
  transformationsCopy = transformations;
  toCopy = to;
  dateCopy = date;
  idCopy = id;
  urlCopy = url;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v18 = _os_activity_create(&dword_0, "DownloadManager:massageXmlAndPersist_Live", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v18, &state);

  if (!toCopy)
  {
    v26 = _MADLog(@"Download");
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_26;
    }

    *buf = 0;
    v27 = "Cannot persist xml as there is no target location";
LABEL_25:
    _os_log_impl(&dword_0, v26, OS_LOG_TYPE_DEFAULT, v27, buf, 2u);
    goto LABEL_26;
  }

  if (!assetsCopy)
  {
    v26 = _MADLog(@"Download");
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_26;
    }

    *buf = 0;
    v27 = "massageXmlAndPersist called with no assets ";
    goto LABEL_25;
  }

  v19 = _MADLog(@"Download");
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = [assetsCopy count];
    *buf = 138543618;
    v62 = persistCopy;
    v63 = 2048;
    v64 = v20;
    _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "Catalog download for: %{public}@ got: %ld assets", buf, 0x16u);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v26 = _MADLog(@"Download");
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v27 = "massageXmlAndPersist asset contents were not an array";
      goto LABEL_25;
    }

LABEL_26:
    v28 = 5;
    goto LABEL_27;
  }

  if (transformationsCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v26 = _MADLog(@"Download");
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v26, OS_LOG_TYPE_DEFAULT, "Skipping transformations due to object being incorrect type", buf, 2u);
    }

    v28 = 17;
  }

  else
  {
    v42 = objc_opt_new();
    [v42 setObject:persistCopy forKey:@"AssetType"];
    if (idCopy)
    {
      [v42 setObject:idCopy forKey:@"CachedAssetSetId"];
      if (caching)
      {
        downloadStateQueue = self->_downloadStateQueue;
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = __137__DownloadManager_massageXmlAndPersist_catalogInfo_descriptor_assets_transformations_to_postedDate_assetSetId_pallasUrl_considerCaching___block_invoke;
        block[3] = &unk_4B2AF0;
        block[4] = self;
        v57 = idCopy;
        v58 = persistCopy;
        dispatch_async(downloadStateQueue, block);
      }
    }

    v22 = +[NSDate date];
    [v42 setObject:v22 forKey:@"lastTimeChecked"];

    if (infoCopy)
    {
      v23 = infoCopy;
    }

    else
    {
      v23 = &__NSDictionary0__struct;
    }

    [v42 setObject:v23 forKey:@"catalogInfo"];
    if (urlCopy)
    {
      absoluteString = [urlCopy absoluteString];
      [v42 setObject:absoluteString forKey:@"DownloadedFromLive"];
    }

    if (dateCopy)
    {
      v25 = [(NSDateFormatter *)self->_dateFormatter dateFromString:dateCopy];
      if (v25)
      {
        [v42 setObject:v25 forKey:@"postedDate"];
      }

      else
      {
        v30 = _MADLog(@"Download");
        if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
        {
          *buf = 138412290;
          v62 = dateCopy;
          _os_log_impl(&dword_0, v30, OS_LOG_TYPE_FAULT, "Cannot parse posting date: '%@'", buf, 0xCu);
        }
      }
    }

    if ([assetsCopy count])
    {
      applyCatalogTransforms(transformationsCopy, assetsCopy);
    }

    else
    {
      v31 = _MADLog(@"Download");
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v31, OS_LOG_TYPE_DEFAULT, "massageXmlAndPersist called with no assets", buf, 2u);
      }
    }

    [v42 setObject:assetsCopy forKey:@"Assets"];
    v41 = getControlManager();
    if (v41 && v42)
    {
      updated = isSoftwareUpdateType(persistCopy);
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v33 = assetsCopy;
      v34 = [v33 countByEnumeratingWithState:&v52 objects:v60 count:16];
      if (v34)
      {
        v35 = *v53;
        do
        {
          for (i = 0; i != v34; i = i + 1)
          {
            if (*v53 != v35)
            {
              objc_enumerationMutation(v33);
            }

            v37 = *(*(&v52 + 1) + 8 * i);
            [v37 removeObjectForKey:{@"_AssetReceipt", v41}];
            if (updated)
            {
              v38 = _MADLog(@"Download");
              if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543618;
                v62 = persistCopy;
                v63 = 2114;
                v64 = v37;
                _os_log_impl(&dword_0, v38, OS_LOG_TYPE_DEFAULT, "assetType: %{public}@ asset: %{public}@", buf, 0x16u);
              }
            }
          }

          v34 = [v33 countByEnumeratingWithState:&v52 objects:v60 count:16];
        }

        while (v34);
      }

      [v41 ensureSUDownloadTempDir];
      path = [toCopy path];
      [v41 writeDictionaryToFile:v42 to:path with:descriptorCopy];

      v28 = 31;
    }

    else
    {
      v40 = _MADLog(@"Download");
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v40, OS_LOG_TYPE_DEFAULT, "Cannot write xml as control manager is nil", buf, 2u);
      }

      v28 = 5;
    }

    v26 = v42;
  }

LABEL_27:

  os_activity_scope_leave(&state);
  return v28;
}

void __137__DownloadManager_massageXmlAndPersist_catalogInfo_descriptor_assets_transformations_to_postedDate_assetSetId_pallasUrl_considerCaching___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) cachedMetaDataForAssetType];
  [v2 setObject:*(a1 + 40) forKey:*(a1 + 48)];
}

- (int64_t)massageXmlAndPersist:(id)persist from:(id)from to:(id)to with:(id)with postedDate:(id)date considerCaching:(BOOL)caching
{
  cachingCopy = caching;
  persistCopy = persist;
  fromCopy = from;
  toCopy = to;
  withCopy = with;
  dateCopy = date;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v16 = _os_activity_create(&dword_0, "DownloadManager:massageXmlAndPersist_XML", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v16, &state);

  v17 = getPathToStagedFile(persistCopy, withCopy, 0);
  v18 = _MADLog(@"Download");
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v52 = v17;
    v53 = 2114;
    v54 = fromCopy;
    v55 = 2114;
    v56 = toCopy;
    _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "The staging path is: %{public}@ from %{public}@ target %{public}@", buf, 0x20u);
  }

  if (!toCopy || !v17)
  {
    v22 = _MADLog(@"Download");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v52 = v17;
      v53 = 2114;
      v54 = toCopy;
      v55 = 2114;
      v56 = persistCopy;
      _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "Cannot persist xml as there is no target location for copying %{public}@ to %{public}@ for %{public}@", buf, 0x20u);
    }

    v19 = 0;
    goto LABEL_25;
  }

  v47 = 0;
  v19 = [NSMutableDictionary dictionaryWithContentsOfURL:v17 error:&v47];
  v20 = v47;
  if (v20 || !v19)
  {
    v23 = _MADLog(@"Download");
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      if (v20)
      {
        checkedDescription = [v20 checkedDescription];
      }

      else
      {
        checkedDescription = @"None";
      }

      *buf = 138543874;
      v52 = v17;
      v53 = 2114;
      v54 = fromCopy;
      v55 = 2114;
      v56 = checkedDescription;
      _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEFAULT, "could not load xml file after download: %{public}@ from %{public}@.  Error: %{public}@", buf, 0x20u);
      if (v20)
      {
      }
    }

    goto LABEL_25;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v21 = _MADLog(@"Download");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v52 = v17;
      v53 = 2114;
      v54 = fromCopy;
      _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "xml file contents were not a dictionary: %{public}@ from %{public}@", buf, 0x16u);
    }

    goto LABEL_11;
  }

  if (_MobileAssetVerifyAssetMapSignature(v19))
  {
    v21 = _MADLog(@"Download");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v52 = toCopy;
      v53 = 2114;
      v54 = fromCopy;
      _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "xml file failed signature check: %{public}@ from %{public}@", buf, 0x16u);
    }

LABEL_11:

LABEL_25:
    v25 = 0;
    path = 0;
    v27 = 0;
LABEL_26:
    v28 = 5;
    goto LABEL_27;
  }

  if (fromCopy)
  {
    absoluteString = [(__CFString *)fromCopy absoluteString];
    [(__CFDictionary *)v19 setObject:absoluteString forKey:@"DownloadedFromXml"];

    if (objc_opt_respondsToSelector())
    {
      uRLByDeletingLastPathComponent = [(__CFString *)fromCopy URLByDeletingLastPathComponent];
      v31URLByDeletingLastPathComponent = [uRLByDeletingLastPathComponent URLByDeletingLastPathComponent];
      absoluteString2 = [v31URLByDeletingLastPathComponent absoluteString];

      if (absoluteString2)
      {
        [(__CFDictionary *)v19 setObject:absoluteString2 forKey:@"DownloadedFrom"];
      }
    }
  }

  [(__CFDictionary *)v19 setObject:persistCopy forKey:@"AssetType", self];
  v34 = +[NSDate date];
  [(__CFDictionary *)v19 setObject:v34 forKey:@"lastTimeChecked"];

  if (dateCopy)
  {
    v35 = _MADLog(@"Download");
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v52 = dateCopy;
      v53 = 2114;
      v54 = persistCopy;
      v55 = 2114;
      v56 = fromCopy;
      _os_log_impl(&dword_0, v35, OS_LOG_TYPE_DEFAULT, "The xml posting date is: %{public}@ for %{public}@ from %{public}@", buf, 0x20u);
    }

    [(__CFDictionary *)v19 setObject:dateCopy forKey:@"postedDate"];
  }

  v49 = @"isLiveServer";
  v50 = &__kCFBooleanFalse;
  v27 = [NSDictionary dictionaryWithObjects:&v50 forKeys:&v49 count:1];
  [(__CFDictionary *)v19 setObject:v27 forKey:@"catalogInfo"];
  uRLByDeletingLastPathComponent2 = [(__CFString *)toCopy URLByDeletingLastPathComponent];
  path = [uRLByDeletingLastPathComponent2 path];

  v37 = ensureDirectory(path);
  v25 = getControlManager();
  if (!v25)
  {
    v40 = _MADLog(@"Download");
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v52 = persistCopy;
      _os_log_impl(&dword_0, v40, OS_LOG_TYPE_DEFAULT, "Cannot write xml for %{public}@ as control manager is nil", buf, 0xCu);
    }

    v25 = 0;
    goto LABEL_26;
  }

  path2 = [(__CFString *)toCopy path];
  [v25 writeDictionaryToFile:v19 to:path2 with:withCopy];

  if (cachingCopy)
  {
    v39 = *(v42 + 128);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __80__DownloadManager_massageXmlAndPersist_from_to_with_postedDate_considerCaching___block_invoke;
    block[3] = &unk_4B2B18;
    block[4] = v42;
    v46 = persistCopy;
    dispatch_async(v39, block);
  }

  v28 = 31;
LABEL_27:

  os_activity_scope_leave(&state);
  return v28;
}

void __80__DownloadManager_massageXmlAndPersist_from_to_with_postedDate_considerCaching___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) cachedMetaDataForAssetType];
  [v2 removeObjectForKey:*(a1 + 40)];
}

- (void)startDownloadAndUpdateState:(id)state for:(id)for modified:(id)modified options:(id)options using:(id)using with:(id)with clientName:(id)name autoAssetJob:(id)self0 ofJobType:(id)self1
{
  stateCopy = state;
  forCopy = for;
  modifiedCopy = modified;
  optionsCopy = options;
  usingCopy = using;
  withCopy = with;
  nameCopy = name;
  jobCopy = job;
  typeCopy = type;
  if (withCopy)
  {
    int64 = xpc_dictionary_get_int64(withCopy, "downloadSize");
  }

  else
  {
    int64 = 0;
  }

  [(DownloadManager *)self startDownloadAndUpdateState:stateCopy for:forCopy startingAt:0 withLength:0 extractWith:0 modified:modifiedCopy options:optionsCopy downloadSize:int64 using:usingCopy with:withCopy clientName:nameCopy autoAssetJob:jobCopy ofJobType:typeCopy notify:0 spaceCheckedUUID:0];
}

- (void)addLiveServerRequest:(id)request forAssetType:(id)type withPurpose:(id)purpose audience:(id)audience pallasUrl:(id)url using:(id)using with:(id)with clientName:(id)self0 autoAssetJobID:(id)self1 task:(id)self2 options:(id)self3
{
  requestCopy = request;
  typeCopy = type;
  purposeCopy = purpose;
  audienceCopy = audience;
  urlCopy = url;
  usingCopy = using;
  selfCopy = self;
  withCopy = with;
  nameCopy = name;
  dCopy = d;
  taskCopy = task;
  optionsCopy = options;
  dispatch_assert_queue_V2(self->_downloadStateQueue);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v25 = _os_activity_create(&dword_0, "DownloadManager:addLiveServerRequest", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v25, &state);

  v26 = objc_opt_new();
  v27 = v26;
  if (usingCopy && withCopy)
  {
    reply = xpc_dictionary_create_reply(withCopy);
    if (reply)
    {
      [v27 setObject:reply forKey:@"downloadManagerReplyKey"];
      [v27 setObject:usingCopy forKey:@"downloadManagerConnectionKey"];
    }
  }

  else
  {
    if (dCopy)
    {
      [v26 setObject:dCopy forKey:@"downloadManagerAutoAssetJobIDKey"];
      [v27 setObject:@"catalog_job" forKey:@"downloadManagerJobTypeKey"];
      goto LABEL_10;
    }

    reply = _MADLog(@"Download");
    if (os_log_type_enabled(reply, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_0, reply, OS_LOG_TYPE_ERROR, "{addLiveServerRequest} no reply or auto-job", buf, 2u);
    }
  }

LABEL_10:
  task = [(NSMutableDictionary *)self->_downloadTasksInFlight objectForKey:requestCopy, task];
  if (task)
  {
    v30 = _MADLog(@"Download");
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v52 = requestCopy;
      _os_log_impl(&dword_0, v30, OS_LOG_TYPE_DEFAULT, "Download already started for: %{public}@", buf, 0xCu);
    }
  }

  else
  {
    v31 = _MADLog(@"Download");
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      _loggableDescription = [taskCopy _loggableDescription];
      v33 = [(DownloadManager *)self grabTaskID:_loggableDescription];
      *buf = 138543362;
      v52 = v33;
      _os_log_impl(&dword_0, v31, OS_LOG_TYPE_DEFAULT, "Catalog Download Started with taskID: %{public}@", buf, 0xCu);
    }

    task = [[DownloadInfo alloc] initForAssetType:typeCopy withPurpose:purposeCopy clientName:nameCopy options:optionsCopy];
    [task setIsPallas:1];
    absoluteString = [urlCopy absoluteString];
    [task setPallasUrl:absoluteString];

    [task setAssetAudience:audienceCopy];
    [task setTaskDescriptor:requestCopy];
    v35 = objc_alloc_init(NSDate);
    [task setDownloadStartTime:v35];

    [task setTask:taskCopy];
    analyticsData = [optionsCopy analyticsData];

    if (analyticsData)
    {
      analyticsData2 = [optionsCopy analyticsData];
      [task setAnalyticsData:analyticsData2];

      v38 = _MADLog(@"Download");
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        analyticsData3 = [task analyticsData];
        *buf = 138543362;
        v52 = analyticsData3;
        _os_log_impl(&dword_0, v38, OS_LOG_TYPE_DEFAULT, "{addLiveServerRequest} Additional AnalyticsInfo for task : %{public}@", buf, 0xCu);
      }
    }

    [(NSMutableDictionary *)selfCopy->_downloadTasksInFlight setObject:task forKey:requestCopy];
  }

  [task addNewDownloadInfo:v27];
  if (__isPlatformVersionAtLeast(2, 17, 0, 0) && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v40 = [(DownloadManager *)selfCopy clientIdentifierWithName:nameCopy];
    [taskCopy set_sourceApplicationBundleIdentifierForMobileAsset:v40];
  }

  [objc_opt_class() addNWActivityToDownloadInfo:task andTask:taskCopy andLabel:2 withOptions:optionsCopy];
  if ([task signpost])
  {
    v41 = _MADLog(@"Download");
    signpost = [task signpost];
    if ((signpost - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v41))
    {
      v43 = mach_continuous_time();
      *buf = 134349056;
      v52 = v43;
      _os_signpost_emit_with_name_impl(&dword_0, v41, OS_SIGNPOST_INTERVAL_BEGIN, signpost, "DownloadSession", "%{public, signpost.description:begin_time}llu  enableTelemetry=YES ", buf, 0xCu);
    }
  }

  [taskCopy resume];

  os_activity_scope_leave(&state);
}

- (void)assessDownloadCompletion:(id)completion originalUrl:(id)url taskDescription:(id)description taskId:(id)id error:(id)error moveFile:(BOOL)file extractorExists:(BOOL)exists
{
  completionCopy = completion;
  urlCopy = url;
  descriptionCopy = description;
  idCopy = id;
  errorCopy = error;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v20 = _os_activity_create(&dword_0, "DownloadManager:assessDownloadCompletion", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v20, &state);

  downloadStateQueue = self->_downloadStateQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __110__DownloadManager_assessDownloadCompletion_originalUrl_taskDescription_taskId_error_moveFile_extractorExists___block_invoke;
  block[3] = &unk_4B41A8;
  v28 = completionCopy;
  v29 = descriptionCopy;
  v30 = idCopy;
  v31 = errorCopy;
  selfCopy = self;
  v33 = urlCopy;
  fileCopy = file;
  existsCopy = exists;
  v22 = urlCopy;
  v23 = errorCopy;
  v24 = idCopy;
  v25 = descriptionCopy;
  v26 = completionCopy;
  dispatch_async(downloadStateQueue, block);

  os_activity_scope_leave(&state);
}

void __110__DownloadManager_assessDownloadCompletion_originalUrl_taskDescription_taskId_error_moveFile_extractorExists___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [v2 statusCode];
  }

  else
  {
    v4 = _MADLog(@"Download");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      v6 = *(a1 + 48);
      *buf = 138543618;
      v31 = v5;
      v32 = 2114;
      v33 = v6;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "task: %{public}@ completed with no response. task %{public}@", buf, 0x16u);
    }

    v3 = (&stru_158 + 56);
  }

  v7 = _MADLog(@"Download");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    *buf = 138543874;
    v31 = v8;
    v32 = 2048;
    v33 = v3;
    v34 = 2114;
    v35 = v9;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Download process complete for: %{public}@, with %ld. task %{public}@", buf, 0x20u);
  }

  if ((v3 == stru_B8.segname || v3 == &stru_108.size || v3 == &stru_B8.segname[6]) && !*(a1 + 56))
  {
    v14 = [*(a1 + 64) lastModifiedDateFromResponse:*(a1 + 32)];
    if (!v14 && v3 != &stru_108.size)
    {
      v23 = _MADLog(@"Download");
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = *(a1 + 40);
        v25 = *(a1 + 48);
        v26 = *(a1 + 72);
        *buf = 134218754;
        v31 = v3;
        v32 = 2114;
        v33 = v24;
        v34 = 2114;
        v35 = v25;
        v36 = 2114;
        v37 = v26;
        _os_log_impl(&dword_0, v23, OS_LOG_TYPE_ERROR, "Server didn't return Last-Modified header on statusCode %lld for %{public}@ download. task %{public}@ downloaded from %{public}@", buf, 0x2Au);
      }
    }

    LOBYTE(v27) = v3 == &stru_108.size;
    [*(a1 + 64) handleSuccessfulDownload:*(a1 + 72) task:*(a1 + 40) taskId:*(a1 + 48) shouldMove:*(a1 + 80) extractorExists:*(a1 + 81) postedDate:v14 notModified:v27];
  }

  else
  {
    v10 = _MADLog(@"Download");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 48);
      v11 = *(a1 + 56);
      v13 = *(a1 + 40);
      *buf = 134218754;
      v31 = v3;
      v32 = 2114;
      v33 = v13;
      v34 = 2114;
      v35 = v11;
      v36 = 2114;
      v37 = v12;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "Error code is: %ld descriptor:%{public}@ with %{public}@ . task %{public}@", buf, 0x2Au);
    }

    v14 = getAssetTypeFromTaskDescriptor(*(a1 + 40));
    v15 = getPathToTempDownloadFile(v14, *(a1 + 40), 0);
    v16 = v15;
    if (v15)
    {
      removeItem(v15);
    }

    v17 = [*(a1 + 64) downloadTasksInFlight];
    v18 = [v17 objectForKey:*(a1 + 40)];

    v19 = downloadResultForNetworkFailure(v3, *(a1 + 56), v18);
    v20 = [NSError buildCheckedError:*(a1 + 56)];
    v21 = v20;
    if (v20)
    {
      v28 = @"CFNetworkError";
      v29 = v20;
      v22 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    }

    else
    {
      v22 = 0;
    }

    [*(a1 + 64) taskFinishedUpdateState:*(a1 + 40) with:v19 extraInfo:v22 fromLocation:@"assessDownloadCompletion"];
  }
}

- (BOOL)downloadNeedsSSO:(id)o taskDescriptor:(id)descriptor url:(id)url
{
  oCopy = o;
  descriptorCopy = descriptor;
  urlCopy = url;
  v16.opaque[0] = 0;
  v16.opaque[1] = 0;
  v10 = _os_activity_create(&dword_0, "DownloadManager:downloadNeedsSSO", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v10, &v16);

  if (!oCopy || !descriptorCopy)
  {
    v12 = _MADLog(@"Download");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v18 = "[DownloadManager downloadNeedsSSO:taskDescriptor:url:]";
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "Invalid options passed to %{public}s", buf, 0xCu);
    }

    downloadAuthorizationHeader = 0;
    goto LABEL_10;
  }

  if ((isSSONeededForURL(urlCopy) & 1) == 0)
  {
    downloadAuthorizationHeader = 0;
    goto LABEL_12;
  }

  downloadAuthorizationHeader = [oCopy downloadAuthorizationHeader];
  if (downloadAuthorizationHeader)
  {
    v12 = _MADLog(@"Download");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v18 = descriptorCopy;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "DownloadAuthorizationHeader already set in options for task (%{public}@)", buf, 0xCu);
    }

LABEL_10:

LABEL_12:
    v13 = _MADLog(@"Download");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v18 = descriptorCopy;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "SSO token does not need to be collected for this task (%{public}@)", buf, 0xCu);
    }

    v14 = 0;
    goto LABEL_15;
  }

  downloadAuthorizationHeader = _MADLog(@"Download");
  if (os_log_type_enabled(downloadAuthorizationHeader, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v18 = descriptorCopy;
    _os_log_impl(&dword_0, downloadAuthorizationHeader, OS_LOG_TYPE_DEFAULT, "SSO token needs to be collected for this task (%{public}@)", buf, 0xCu);
  }

  v14 = 1;
LABEL_15:

  os_activity_scope_leave(&v16);
  return v14;
}

- (id)MACopyDawToken:(id)token
{
  tokenCopy = token;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v5 = _os_activity_create(&dword_0, "DownloadManager:MACopyDawToken", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v5, &state);

  ssoQueue = [(DownloadManager *)self ssoQueue];
  dispatch_assert_queue_V2(ssoQueue);

  keyManager = [(DownloadManager *)self keyManager];
  v14 = 0;
  v8 = [keyManager copyDawToken:objc_msgSend(keyManager useAppleConnect:"shouldDisableUIForUsage:assetAttributes:downloadOptions:" error:{@"server auth", 0, tokenCopy), 1, &v14}];
  v9 = v14;
  v10 = _MADLog(@"Download");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = "Successfully obtained";
    if (!v8)
    {
      v11 = "*NOT* obtained";
    }

    *buf = 136446210;
    v17 = v11;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "DAW token was %{public}s", buf, 0xCu);
  }

  v12 = v8;
  os_activity_scope_leave(&state);

  return v12;
}

- (void)startDownloadAndUpdateState:(id)state for:(id)for startingAt:(id)at withLength:(id)length extractWith:(id)with modified:(id)modified options:(id)options downloadSize:(int64_t)self0 using:(id)self1 with:(id)self2 clientName:(id)self3 autoAssetJob:(id)self4 ofJobType:(id)self5 notify:(unint64_t)self6 spaceCheckedUUID:(id)self7
{
  stateCopy = state;
  forCopy = for;
  atCopy = at;
  lengthCopy = length;
  withCopy = with;
  modifiedCopy = modified;
  optionsCopy = options;
  selfCopy = self;
  usingCopy = using;
  v26 = a12;
  nameCopy = name;
  jobCopy = job;
  typeCopy = type;
  dCopy = d;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v30 = _os_activity_create(&dword_0, "DownloadManager:startDownloadAndUpdateState", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v30, &state);

  v31 = ![(DownloadManager *)selfCopy downloadNeedsSSO:optionsCopy taskDescriptor:forCopy url:?];
  if (!optionsCopy)
  {
    LOBYTE(v31) = 1;
  }

  if (v31)
  {
    if (jobCopy)
    {
      v42 = objc_opt_new();
      [v42 setSafeObject:jobCopy forKey:@"downloadManagerAutoAssetJobIDKey"];
      [v42 setSafeObject:typeCopy forKey:@"downloadManagerJobTypeKey"];
      [v42 setSafeObject:nameCopy forKey:@"firstClientName"];
    }

    else if (v26)
    {
      v57 = selfCopy;
      v43 = v26;
      reply = xpc_dictionary_create_reply(v26);
      if (reply)
      {
        v42 = objc_opt_new();
        [v42 setObject:reply forKey:@"downloadManagerReplyKey"];
        [v42 setObject:usingCopy forKey:@"downloadManagerConnectionKey"];
        [v42 setSafeObject:nameCopy forKey:@"firstClientName"];
        v45 = [NSNumber numberWithUnsignedLongLong:notify];
        [v42 setObject:v45 forKey:@"downloadManagerNotificationInterval"];
      }

      else
      {
        v42 = 0;
      }

      v26 = v43;
      selfCopy = v57;
    }

    else
    {
      v42 = 0;
    }

    queuea = selfCopy->_downloadStateQueue;
    v63[0] = _NSConcreteStackBlock;
    v63[1] = 3221225472;
    v63[2] = __184__DownloadManager_startDownloadAndUpdateState_for_startingAt_withLength_extractWith_modified_options_downloadSize_using_with_clientName_autoAssetJob_ofJobType_notify_spaceCheckedUUID___block_invoke_2314;
    v63[3] = &unk_4B4220;
    v63[4] = selfCopy;
    v64 = forCopy;
    v65 = v42;
    v66 = optionsCopy;
    v67 = dCopy;
    v68 = jobCopy;
    v69 = stateCopy;
    v70 = nameCopy;
    v46 = dCopy;
    v71 = atCopy;
    v72 = lengthCopy;
    v73 = withCopy;
    v74 = modifiedCopy;
    sizeCopy = size;
    v51 = modifiedCopy;
    v59 = withCopy;
    v58 = lengthCopy;
    v56 = atCopy;
    v55 = nameCopy;
    v35 = stateCopy;
    v37 = jobCopy;
    v38 = v46;
    v39 = optionsCopy;
    v40 = v42;
    v47 = forCopy;
    v32 = v26;
    dispatch_async(queuea, v63);

    v36 = typeCopy;
  }

  else
  {
    v32 = v26;
    v33 = _MADLog(@"Download");
    v34 = dCopy;
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v33, OS_LOG_TYPE_DEFAULT, "Download will be re-attempted after DAW token is obtained", buf, 2u);
    }

    queue = selfCopy->_ssoQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __184__DownloadManager_startDownloadAndUpdateState_for_startingAt_withLength_extractWith_modified_options_downloadSize_using_with_clientName_autoAssetJob_ofJobType_notify_spaceCheckedUUID___block_invoke;
    block[3] = &unk_4B41D0;
    block[4] = selfCopy;
    v77 = optionsCopy;
    v78 = forCopy;
    v79 = usingCopy;
    v80 = v32;
    v81 = nameCopy;
    v82 = jobCopy;
    v83 = typeCopy;
    v84 = stateCopy;
    v85 = atCopy;
    v86 = lengthCopy;
    v87 = withCopy;
    v88 = modifiedCopy;
    sizeCopy2 = size;
    notifyCopy = notify;
    v89 = dCopy;
    v59 = modifiedCopy;
    v58 = withCopy;
    v56 = lengthCopy;
    v55 = atCopy;
    v35 = nameCopy;
    v36 = typeCopy;
    v37 = stateCopy;
    v38 = jobCopy;
    v39 = v34;
    v40 = optionsCopy;
    v41 = forCopy;
    dispatch_async(queue, block);
  }

  os_activity_scope_leave(&state);
}

void __184__DownloadManager_startDownloadAndUpdateState_for_startingAt_withLength_extractWith_modified_options_downloadSize_using_with_clientName_autoAssetJob_ofJobType_notify_spaceCheckedUUID___block_invoke(uint64_t a1)
{
  v2 = _MADLog(@"Download");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Attempting to copy daw token", buf, 2u);
  }

  v3 = [*(a1 + 32) MACopyDawToken:*(a1 + 40)];
  v4 = _MADLog(@"Download");
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Successfully obtained SSO token..Relaunching download", buf, 2u);
    }

    v6 = [NSString stringWithFormat:@"Bearer %@", v3];
    [*(a1 + 40) setDownloadAuthorizationHeader:v6];
    [*(a1 + 32) startDownloadAndUpdateState:*(a1 + 96) for:*(a1 + 48) startingAt:*(a1 + 104) withLength:*(a1 + 112) extractWith:*(a1 + 120) modified:*(a1 + 128) options:*(a1 + 40) downloadSize:*(a1 + 144) using:*(a1 + 56) with:*(a1 + 64) clientName:*(a1 + 72) autoAssetJob:*(a1 + 80) ofJobType:*(a1 + 88) notify:*(a1 + 152) spaceCheckedUUID:*(a1 + 136)];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 48);
      *buf = 138543362;
      v9 = v7;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "Failed to acquire required SSO token for task(%{public}@)", buf, 0xCu);
    }

    v6 = getAssetTypeFromTaskDescriptor(*(a1 + 48));
    [*(a1 + 32) sendDownloadCannotStartResult:75 assetType:v6 connection:*(a1 + 56) requestMessage:*(a1 + 64) clientName:*(a1 + 72) autoAssetJobID:*(a1 + 80) ofJobType:*(a1 + 88) underlyingError:0];
  }
}

void __184__DownloadManager_startDownloadAndUpdateState_for_startingAt_withLength_extractWith_modified_options_downloadSize_using_with_clientName_autoAssetJob_ofJobType_notify_spaceCheckedUUID___block_invoke_2314(uint64_t a1)
{
  v2 = [*(a1 + 32) downloadTasksInFlight];
  v3 = [v2 objectForKey:*(a1 + 40)];

  if (v3)
  {
    [(DownloadInfo *)v3 addNewDownloadInfo:*(a1 + 48)];
    if (([*(a1 + 56) discretionary] & 1) != 0 || (-[DownloadInfo task](v3, "task"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "_discretionaryOverride"), v4, v5 == &dword_0 + 2))
    {
      v6 = @"options ignored:";
    }

    else
    {
      v37 = [(DownloadInfo *)v3 task];
      [v37 set_discretionaryOverride:2];

      -[DownloadInfo setIsDiscretionary:](v3, "setIsDiscretionary:", [*(a1 + 56) discretionary]);
      v38 = objc_alloc_init(NSDate);
      [(DownloadInfo *)v3 setNonDiscretionaryUpgradeTime:v38];

      v6 = @"boosted to nondiscretionary but otherwise options ignored:";
    }

    if (__isPlatformVersionAtLeast(2, 18, 4, 0))
    {
      v39 = [(DownloadInfo *)v3 task];
      v40 = objc_opt_respondsToSelector();

      if (v40)
      {
        v41 = objc_opt_new();
        if ([*(a1 + 56) allowsCellularAccess])
        {
          v42 = [(DownloadInfo *)v3 task];
          v43 = [v42 _effectiveConfiguration];
          v44 = [v43 allowsCellularAccess];

          if ((v44 & 1) == 0)
          {
            [v41 setAllowsCellularAccess:1];
          }
        }

        if ([*(a1 + 56) allowsExpensiveAccess])
        {
          v45 = [(DownloadInfo *)v3 task];
          v46 = [v45 _effectiveConfiguration];
          v47 = [v46 allowsExpensiveNetworkAccess];

          if ((v47 & 1) == 0)
          {
            [v41 setAllowsExpensiveNetworkAccess:1];
          }
        }

        if (__isPlatformVersionAtLeast(2, 18, 3, 0))
        {
          if (objc_opt_respondsToSelector())
          {
            if ([*(a1 + 56) allowsConstrainedAccess])
            {
              v48 = [(DownloadInfo *)v3 task];
              v49 = [v48 _effectiveConfiguration];
              v50 = [v49 allowsConstrainedNetworkAccess];

              if ((v50 & 1) == 0)
              {
                [v41 setAllowsConstrainedNetworkAccess:1];
              }
            }
          }
        }

        if (([v41 allowsCellularAccess] & 1) != 0 || (objc_msgSend(v41, "allowsExpensiveNetworkAccess") & 1) != 0 || objc_msgSend(v41, "allowsConstrainedNetworkAccess"))
        {
          v51 = [(DownloadInfo *)v3 task];
          v52 = [v51 _effectiveConfiguration];
          v53 = [v52 identifier];

          if (v53)
          {
            v54 = _MADLog(@"Download");
            if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
            {
              v55 = *(a1 + 40);
              if ([v41 allowsCellularAccess])
              {
                v56 = @"Y";
              }

              else
              {
                v56 = @"N";
              }

              v57 = [v41 allowsExpensiveNetworkAccess];
              v58 = [v41 allowsConstrainedNetworkAccess];
              if (v57)
              {
                v59 = @"Y";
              }

              else
              {
                v59 = @"N";
              }

              *buf = 138544130;
              if (v58)
              {
                v60 = @"Y";
              }

              else
              {
                v60 = @"N";
              }

              v81 = v55;
              v82 = 2114;
              v83 = v56;
              v84 = 2114;
              v85 = v59;
              v86 = 2114;
              v87 = v60;
              _os_log_impl(&dword_0, v54, OS_LOG_TYPE_DEFAULT, "[BackgroundTaskOverride]: Download already started for task:%{public}@ overriding Cellular:%{public}@ Expensive:%{public}@ Constrained:%{public}@", buf, 0x2Au);
            }

            v61 = [(DownloadInfo *)v3 task];
            [v61 _applyBackgroundTaskOverrides:v41];
          }

          else
          {
            v62 = _MADLog(@"Download");
            if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
            {
              v63 = *(a1 + 40);
              *buf = 138543362;
              v81 = v63;
              _os_log_impl(&dword_0, v62, OS_LOG_TYPE_DEFAULT, "[BackgroundTaskOverride]: Download already started for task:%{public}@. Overriding of download properties not supported for in process downloads", buf, 0xCu);
            }
          }
        }
      }
    }

    [(DownloadInfo *)v3 isPallas];
    [(DownloadInfo *)v3 setSpaceCheckedUUID:*(a1 + 64)];
    [(DownloadInfo *)v3 setIsAutoDownload:*(a1 + 72) != 0];
    oslog = _MADLog(@"Download");
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v64 = *(a1 + 80);
      v65 = *(a1 + 40);
      v66 = [(DownloadInfo *)v3 task];
      v67 = *(a1 + 56);
      *buf = 138544386;
      v81 = v64;
      v82 = 2114;
      v83 = v65;
      v84 = 2114;
      v85 = v66;
      v86 = 2114;
      v87 = v6;
      v88 = 2114;
      v89 = v67;
      _os_log_impl(&dword_0, oslog, OS_LOG_TYPE_DEFAULT, "Download already started for: %{public}@ and %{public}@. task %{public}@ %{public}@ %{public}@", buf, 0x34u);
    }
  }

  else
  {
    v7 = _MADLog(@"Download");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 40);
      v9 = *(a1 + 80);
      *buf = 138543618;
      v81 = v8;
      v82 = 2114;
      v83 = v9;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Creating asset download task for: %{public}@, %{public}@", buf, 0x16u);
    }

    v3 = [[DownloadInfo alloc] initWithUrl:*(a1 + 80) clientName:*(a1 + 88) options:*(a1 + 56)];
    [(DownloadInfo *)v3 addNewDownloadInfo:*(a1 + 48)];
    [(DownloadInfo *)v3 setTaskDescriptor:*(a1 + 40)];
    [(DownloadInfo *)v3 setStartingAt:*(a1 + 96)];
    [(DownloadInfo *)v3 setLengthOfRange:*(a1 + 104)];
    [(DownloadInfo *)v3 setExtractor:*(a1 + 112)];
    [(DownloadInfo *)v3 setExtractorRequired:*(a1 + 112) != 0];
    [(DownloadInfo *)v3 setDate:*(a1 + 120)];
    [(DownloadInfo *)v3 setDownloadSize:*(a1 + 128)];
    [(DownloadInfo *)v3 setSpaceCheckedUUID:*(a1 + 64)];
    [(DownloadInfo *)v3 setIsAutoDownload:*(a1 + 72) != 0];
    v10 = objc_alloc_init(NSDate);
    [(DownloadInfo *)v3 setDownloadStartTime:v10];

    v11 = [*(a1 + 56) analyticsData];

    if (v11)
    {
      v12 = [*(a1 + 56) analyticsData];
      [(DownloadInfo *)v3 setAnalyticsData:v12];
    }

    oslog = getAssetTypeFromTaskDescriptor(*(a1 + 40));
    if (oslog)
    {
      [(DownloadInfo *)v3 setAssetType:oslog];
    }

    if (([*(a1 + 56) discretionary] & 1) == 0)
    {
      v13 = _MADLog(@"Download");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "Non discretionary download. Setting nonDiscretionaryUpgradeTime to downloadStartTime", buf, 2u);
      }

      v14 = [(DownloadInfo *)v3 downloadStartTime];
      [(DownloadInfo *)v3 setNonDiscretionaryUpgradeTime:v14];
    }

    [*(*(a1 + 32) + 24) setObject:v3 forKey:*(a1 + 40)];
    v15 = backgroundDownloadsPossibleWithInfo(0);
    v16 = *(a1 + 32);
    if (v15)
    {
      v17 = [*(a1 + 32) downloadStateQueue];
      v72[0] = _NSConcreteStackBlock;
      v72[1] = 3221225472;
      v72[2] = __184__DownloadManager_startDownloadAndUpdateState_for_startingAt_withLength_extractWith_modified_options_downloadSize_using_with_clientName_autoAssetJob_ofJobType_notify_spaceCheckedUUID___block_invoke_2326;
      v72[3] = &unk_4B41F8;
      v79 = *(a1 + 128);
      v69 = *(a1 + 32);
      v18 = *(&v69 + 1);
      v19 = *(a1 + 96);
      v20 = *(a1 + 104);
      *&v21 = v19;
      *(&v21 + 1) = v20;
      v73 = v69;
      v74 = v21;
      v75 = *(a1 + 112);
      v76 = *(a1 + 56);
      v77 = *(a1 + 120);
      v3 = v3;
      v78 = v3;
      [(DownloadInfo *)v3 determineDownloadUrl:v17 callback:v72];
    }

    else
    {
      v22 = *(a1 + 120);
      v68 = *(a1 + 128);
      v70 = *(a1 + 80);
      v23 = *(a1 + 40);
      v24 = *(a1 + 96);
      v25 = *(a1 + 104);
      v26 = *(a1 + 56);
      v27 = *(a1 + 112);
      v28 = [v16 currentSession];
      v29 = [v16 startDownloadTask:v70 downloadSize:v68 for:v23 startingAt:v24 withLength:v25 extractWith:v27 options:v26 modified:v22 session:v28];

      if (!v29)
      {
        [*(a1 + 32) taskFinishedUpdateState:*(a1 + 40) with:30 fromLocation:@"startDownloadAndUpdateState"];
      }

      v30 = _MADLog(@"Download");
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v31 = *(a1 + 32);
        v32 = [(__CFString *)v29 _loggableDescription];
        v33 = [v31 grabTaskID:v32];
        v34 = *(a1 + 80);
        v35 = *(a1 + 40);
        v36 = *(a1 + 56);
        *buf = 138544386;
        v81 = v33;
        v82 = 2114;
        v83 = v34;
        v84 = 2114;
        v85 = v35;
        v86 = 2114;
        v87 = v29;
        v88 = 2114;
        v89 = v36;
        _os_log_impl(&dword_0, v30, OS_LOG_TYPE_DEFAULT, "The in process download taskID is: %{public}@ and url is: %{public}@ and %{public}@. task %{public}@ options %{public}@", buf, 0x34u);
      }

      [(DownloadInfo *)v3 setTask:v29];
    }
  }

  [*(a1 + 32) startDownloadTimer];
}

void __184__DownloadManager_startDownloadAndUpdateState_for_startingAt_withLength_extractWith_modified_options_downloadSize_using_with_clientName_autoAssetJob_ofJobType_notify_spaceCheckedUUID___block_invoke_2326(uint64_t a1, void *a2, char a3)
{
  v4 = a2;
  v23 = *(a1 + 96);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v10 = *(a1 + 64);
  v9 = *(a1 + 72);
  v11 = *(a1 + 80);
  v12 = [v5 currentSession];
  LOBYTE(v22) = a3;
  v21 = v9;
  v13 = v4;
  v14 = [v5 startDownloadTask:v4 downloadSize:v23 for:v6 startingAt:v7 withLength:v8 extractWith:v10 options:v21 modified:v11 session:v12 isCachingServer:v22];

  if (!v14)
  {
    [*(a1 + 32) taskFinishedUpdateState:*(a1 + 40) with:30 fromLocation:@"startDownloadAndUpdateState"];
  }

  v15 = _MADLog(@"Download");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *(a1 + 32);
    v17 = [v14 _loggableDescription];
    v18 = [v16 grabTaskID:v17];
    v19 = *(a1 + 40);
    v20 = *(a1 + 72);
    *buf = 138544386;
    v26 = v18;
    v27 = 2114;
    v28 = v13;
    v29 = 2114;
    v30 = v19;
    v31 = 2114;
    v32 = v14;
    v33 = 2114;
    v34 = v20;
    _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "The background download taskID is: %{public}@ and url is: %{public}@ and %{public}@. task %{public}@ options %{public}@", buf, 0x34u);
  }

  [*(a1 + 88) setTask:v14];
}

- (void)updateProgressIfRequired:(id)required totalWritten:(int64_t)written totalExpected:(int64_t)expected notify:(BOOL)notify
{
  requiredCopy = required;
  downloadStateQueue = self->_downloadStateQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __78__DownloadManager_updateProgressIfRequired_totalWritten_totalExpected_notify___block_invoke;
  block[3] = &unk_4B4248;
  block[4] = self;
  v14 = requiredCopy;
  expectedCopy = expected;
  writtenCopy = written;
  notifyCopy = notify;
  v12 = requiredCopy;
  dispatch_async(downloadStateQueue, block);
}

void __78__DownloadManager_updateProgressIfRequired_totalWritten_totalExpected_notify___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) downloadTasksInFlight];
  v3 = [v2 objectForKey:*(a1 + 40)];

  if (v3)
  {
    [v3 currentEstimate];
    v5 = v4;
    [v3 setTotalExpectedBytes:*(a1 + 48)];
    [v3 updateDownloadData:*(a1 + 56)];
    if (*(a1 + 64) == 1)
    {
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      obj = [v3 callbacks];
      v6 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v24;
        v20 = *v24;
        do
        {
          v9 = 0;
          v21 = v7;
          do
          {
            if (*v24 != v8)
            {
              objc_enumerationMutation(obj);
            }

            v10 = *(*(&v23 + 1) + 8 * v9);
            v11 = objc_autoreleasePoolPush();
            v12 = [v10 safeStringForKey:@"downloadManagerAutoAssetJobIDKey"];
            if (v12)
            {
              v13 = objc_alloc_init(MAAutoAssetProgress);
              [v13 setTotalExpectedBytes:*(a1 + 48)];
              [v13 setTotalWrittenBytes:*(a1 + 56)];
              [v13 setIsStalled:{objc_msgSend(v3, "isStalled")}];
              [v13 setExpectedTimeRemainingSecs:v5];
              [MADAutoAssetControlManager assetDownloadJob:v12 progressReport:v13];
            }

            else
            {
              v13 = [v10 objectForKey:@"downloadManagerConnectionKey"];
              v14 = xpc_dictionary_create(0, 0, 0);
              v15 = *(a1 + 40);
              if (v15)
              {
                xpc_dictionary_set_string(v14, "taskDescriptor", [v15 UTF8String]);
              }

              xpc_dictionary_set_int64(v14, "totalWritten", *(a1 + 56));
              xpc_dictionary_set_int64(v14, "TotalExpected", *(a1 + 48));
              xpc_dictionary_set_double(v14, "TimeEstimate", v5);
              xpc_dictionary_set_BOOL(v14, "IsStalled", [v3 isStalled]);
              xpc_dictionary_set_int64(v14, "messageAction", 11);
              v16 = v3;
              v17 = [v3 task];
              v18 = [v17 description];
              v19 = [v18 cStringUsingEncoding:1];

              if (v19)
              {
                xpc_dictionary_set_string(v14, "TaskID", v19);
              }

              xpc_connection_send_message(v13, v14);

              v3 = v16;
              v8 = v20;
              v7 = v21;
            }

            objc_autoreleasePoolPop(v11);
            v9 = v9 + 1;
          }

          while (v7 != v9);
          v7 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
        }

        while (v7);
      }
    }
  }
}

- (BOOL)checkDownloadIsSyncing:(id)syncing using:(id)using with:(id)with autoAssetJob:(id)job ofJobType:(id)type
{
  syncingCopy = syncing;
  usingCopy = using;
  withCopy = with;
  jobCopy = job;
  typeCopy = type;
  currentState = self->_currentState;
  if (currentState == 3 || currentState == 0)
  {
    v19 = _MADLog(@"Download");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v22 = 138543362;
      v23 = syncingCopy;
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_ERROR, "%{public}@ | Daemon not ready for download", &v22, 0xCu);
    }

    [(DownloadManager *)self indicateDownloadJobFinished:13 usingXPCConnection:usingCopy withXPCMessage:withCopy performingAutoAssetJob:jobCopy ofJobType:typeCopy];
    v20 = 1;
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (BOOL)checkAssetDownloadIsSkipped:(id)skipped connection:(id)connection with:(id)with autoAssetJob:(id)job
{
  skippedCopy = skipped;
  connectionCopy = connection;
  withCopy = with;
  jobCopy = job;
  *v19 = 3;
  v14 = isForcedResultPreferenceSetForAssetType(@"ForceAssetDownloadResult", skippedCopy, v19);
  if (v14)
  {
    v15 = *v19;
    v16 = _MADLog(@"Download");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = stringForMADownloadResult(v15);
      *v19 = 138543874;
      *&v19[4] = skippedCopy;
      v20 = 2048;
      v21 = v15;
      v22 = 2114;
      v23 = v17;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, "Skipping asset download for %{public}@ due to preferences, giving result %ld (%{public}@)", v19, 0x20u);
    }

    [(DownloadManager *)self indicateDownloadJobFinished:v15 usingXPCConnection:connectionCopy withXPCMessage:withCopy performingAutoAssetJob:jobCopy ofJobType:@"asset_job"];
  }

  return v14;
}

- (BOOL)checkCatalogDownloadIsSkipped:(id)skipped connection:(id)connection with:(id)with autoAssetJob:(id)job
{
  skippedCopy = skipped;
  connectionCopy = connection;
  withCopy = with;
  jobCopy = job;
  *v19 = 3;
  v14 = isForcedResultPreferenceSetForAssetType(@"ForceCatalogDownloadResult", skippedCopy, v19);
  if (v14)
  {
    v15 = *v19;
    v16 = _MADLog(@"Download");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = stringForMADownloadResult(v15);
      *v19 = 138543874;
      *&v19[4] = skippedCopy;
      v20 = 2048;
      v21 = v15;
      v22 = 2114;
      v23 = v17;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, "Skipping catalog download for %{public}@ due to preferences, giving result %ld (%{public}@)", v19, 0x20u);
    }

    [(DownloadManager *)self indicateDownloadJobFinished:v15 usingXPCConnection:connectionCopy withXPCMessage:withCopy performingAutoAssetJob:jobCopy ofJobType:@"catalog_job"];
  }

  return v14;
}

- (BOOL)checkPmvDownloadIsSkipped:(id)skipped connection:(id)connection with:(id)with
{
  skippedCopy = skipped;
  connectionCopy = connection;
  withCopy = with;
  *v16 = 3;
  v11 = isForcedResultPreferenceSetForAssetType(@"ForcePmvDownloadResult", skippedCopy, v16);
  if (v11)
  {
    v12 = *v16;
    v13 = _MADLog(@"Download");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = stringForMADownloadResult(v12);
      *v16 = 138543874;
      *&v16[4] = skippedCopy;
      v17 = 2048;
      v18 = v12;
      v19 = 2114;
      v20 = v14;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "Skipping catalog download for %{public}@ due to preferences, giving result %ld (%{public}@)", v16, 0x20u);
    }

    [(DownloadManager *)self indicateDownloadJobFinished:v12 usingXPCConnection:connectionCopy withXPCMessage:withCopy performingAutoAssetJob:0 ofJobType:@"asset_job"];
  }

  return v11;
}

- (void)registerAssetDownloadJob:(id)job forThis:(id)this withBase:(id)base relativeTo:(id)to startingAt:(id)at withLength:(id)length extractWith:(id)with allocateExtractorIfNecessary:(BOOL)self0 connection:(id)self1 message:(id)self2 clientName:(id)self3 notify:(unint64_t)self4 withCatalogMetadata:(id)self5 withSpaceCheckedUUID:(id)self6
{
  jobCopy = job;
  thisCopy = this;
  baseCopy = base;
  toCopy = to;
  atCopy = at;
  lengthCopy = length;
  withCopy = with;
  connectionCopy = connection;
  messageCopy = message;
  nameCopy = name;
  metadataCopy = metadata;
  dCopy = d;
  v58 = jobCopy;
  _MAPreferencesSync(@"registerAssetDownloadJob", jobCopy);
  v52 = withCopy;
  v53 = atCopy;
  v51 = toCopy;
  v48 = connectionCopy;
  if (backgroundDownloadsPossibleWithInfo(0) && [(DownloadManager *)self checkDownloadIsSyncing:@"registerAssetDownloadJob" using:connectionCopy with:messageCopy autoAssetJob:0 ofJobType:@"asset_job"])
  {
    v28 = _MADLog(@"Download");
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v60 = jobCopy;
      _os_log_impl(&dword_0, v28, OS_LOG_TYPE_DEFAULT, "Trying to create an asset download job while background sync is ongoing, bailing, %{public}@", buf, 0xCu);
    }

    v29 = 0;
    v30 = 0;
    v31 = thisCopy;
LABEL_16:
    v33 = baseCopy;
    goto LABEL_17;
  }

  v32 = [(DownloadManager *)self checkAssetDownloadIsSkipped:jobCopy connection:connectionCopy with:messageCopy autoAssetJob:0];
  v29 = 0;
  v30 = 0;
  v31 = thisCopy;
  v33 = baseCopy;
  if (v32)
  {
LABEL_17:
    v39 = nameCopy;
    v47 = connectionCopy;
    LOBYTE(v46) = necessary;
    v45 = withCopy;
    v42 = v53;
    v43 = v33;
    v40 = v51;
    [(DownloadManager *)self registerAssetDownloadJob:v58 withPurpose:v30 usingDownloadOptions:v29 forAssetId:v31 withBase:v33 relativeTo:v51 startingAt:v53 withLength:lengthCopy extractWith:v45 allocateExtractorIfNecessary:v46 usingXPCConnection:v47 withXPCMessage:messageCopy clientName:nameCopy performingAutoAssetJob:0 notify:notify withCatalogMetadata:metadataCopy withSpaceCheckedUUID:dCopy, v48];

    v38 = metadataCopy;
    v41 = dCopy;
    goto LABEL_18;
  }

  string = xpc_dictionary_get_string(messageCopy, "Purpose");
  v30 = normalizePurposeFromUtf8(string);
  if (isWellFormedPurpose(v30))
  {
    v35 = downloadManagerDecodeClasses();
    v36 = getObjectFromMessage(messageCopy, "downloadOptionsLength", "downloadOptions", v35);

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = [objc_opt_new() initWithPlist:v36];
    }

    else
    {
      v44 = _MADLog(@"Download");
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v60 = v58;
        v61 = 2114;
        v62 = thisCopy;
        _os_log_impl(&dword_0, v44, OS_LOG_TYPE_ERROR, "The asset download options for %{public}@ and %{public}@ were not a valid class, failing", buf, 0x16u);
      }

      [(DownloadManager *)self sendDownloadCannotStartResult:22 assetType:v58 connection:connectionCopy requestMessage:messageCopy clientName:nameCopy autoAssetJobID:0 ofJobType:@"asset_job" underlyingError:0];
      v29 = 0;
    }

    goto LABEL_16;
  }

  v37 = _MADLog(@"Download");
  v38 = metadataCopy;
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v60 = v58;
    _os_log_impl(&dword_0, v37, OS_LOG_TYPE_DEFAULT, "Trying to create a download job without a well formed purpose, bailing, %{public}@", buf, 0xCu);
  }

  v39 = nameCopy;
  [(DownloadManager *)self sendDownloadCannotStartResult:3 assetType:v58 connection:connectionCopy requestMessage:messageCopy clientName:nameCopy autoAssetJobID:0 ofJobType:@"asset_job" underlyingError:0];
  v41 = dCopy;
  v40 = toCopy;
  v42 = v53;
  v43 = baseCopy;
LABEL_18:
}

- (void)registerAssetDownloadJob:(id)job forAssetType:(id)type withPurpose:(id)purpose clientName:(id)name usingDownloadOptions:(id)options forAssetId:(id)id withCatalogMetadata:(id)metadata withSpaceCheckedUUID:(id)self0
{
  jobCopy = job;
  typeCopy = type;
  purposeCopy = purpose;
  nameCopy = name;
  optionsCopy = options;
  idCopy = id;
  metadataCopy = metadata;
  dCopy = d;
  v22 = [metadataCopy safeStringForKey:@"__BaseURL"];
  v23 = [metadataCopy safeStringForKey:@"__RelativePath"];
  v24 = v23;
  if (v22 && v23)
  {
    LOBYTE(v29) = 1;
    v25 = purposeCopy;
    [(DownloadManager *)self registerAssetDownloadJob:typeCopy withPurpose:purposeCopy usingDownloadOptions:optionsCopy forAssetId:idCopy withBase:v22 relativeTo:v23 startingAt:0 withLength:0 extractWith:0 allocateExtractorIfNecessary:v29 usingXPCConnection:0 withXPCMessage:0 clientName:nameCopy performingAutoAssetJob:jobCopy notify:0 withCatalogMetadata:metadataCopy withSpaceCheckedUUID:dCopy];
  }

  else
  {
    v26 = _MADLog(@"Download");
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = @"MISSING";
      *buf = 138413570;
      if (v22)
      {
        v28 = v22;
      }

      else
      {
        v28 = @"MISSING";
      }

      v33 = jobCopy;
      v34 = 2112;
      if (v24)
      {
        v27 = v24;
      }

      v35 = typeCopy;
      v36 = 2112;
      v37 = purposeCopy;
      v38 = 2112;
      v39 = idCopy;
      v40 = 2112;
      v41 = v28;
      v42 = 2112;
      v43 = v27;
      _os_log_impl(&dword_0, v26, OS_LOG_TYPE_ERROR, "Unable to register asset download job (catalog missing URLs) | autoAssetJobID:%@, assetType:%@, purpose:%@, assetId:%@ | baseURL:%@, relativeURL:%@", buf, 0x3Eu);
    }

    [(DownloadManager *)self sendDownloadCannotStartResult:5 assetType:typeCopy connection:0 requestMessage:0 clientName:nameCopy autoAssetJobID:jobCopy ofJobType:@"asset_job" underlyingError:0];
    v25 = purposeCopy;
  }
}

- (id)getBaseURLOverrideForAssetType:(id)type
{
  typeCopy = type;
  if (!__isPlatformVersionAtLeast(2, 19, 0, 0))
  {
    v10 = 0;
    goto LABEL_31;
  }

  v4 = objc_alloc_init(MIBUClient);
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v8 = _MADLog(@"Download");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "[BaseURLOverride]: Unable to check if device in 'PalletUpdateMode'.", buf, 2u);
    }

    v7 = 0;
    goto LABEL_10;
  }

  v19 = 0;
  v5 = [v4 isInPalletUpdateMode:&v19];
  v6 = v19;
  if (v6)
  {
    v7 = v6;
    v8 = _MADLog(@"Download");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      checkedDescription = [v7 checkedDescription];
      *buf = 138543362;
      v21 = checkedDescription;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "[BaseURLOverride]: Failed to determine if device in PalletUpdateMode: %{public}@", buf, 0xCu);
    }

LABEL_10:
    v10 = 0;
LABEL_11:

    goto LABEL_12;
  }

  if (v5)
  {
    v8 = _MADLog(@"Download");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v21 = typeCopy;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "[BaseURLOverride]: Using PalletUpdateMode URL for asset | Asset:%{public}@.", buf, 0xCu);
    }

    v7 = 0;
    v10 = @"http://localhost:8080";
    goto LABEL_11;
  }

  v7 = 0;
  v10 = 0;
LABEL_12:
  if (os_variant_has_internal_content())
  {
    typeCopy = [NSString stringWithFormat:@"%@-%@", @"DownloadServerBaseURLOverride", typeCopy];
    v12 = _MAPreferencesCopyValue(typeCopy);
    if (v12)
    {
      v13 = v12;
      v14 = _MADLog(@"Download");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v21 = typeCopy;
        v22 = 2114;
        v23 = typeCopy;
        v15 = "[BaseURLOverride]: Using baseURLOverride from asset specific default(%{public}@) for asset(%{public}@)";
LABEL_23:
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, v15, buf, 0x16u);
      }
    }

    else
    {
      v16 = _MAPreferencesCopyValue(@"DownloadServerBaseURLOverride");
      if (!v16)
      {
LABEL_25:

        goto LABEL_26;
      }

      v13 = v16;
      v14 = _MADLog(@"Download");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v21 = @"DownloadServerBaseURLOverride";
        v22 = 2114;
        v23 = typeCopy;
        v15 = "[BaseURLOverride]: Using baseURLOverride from global default(%{public}@) for asset(%{public}@)";
        goto LABEL_23;
      }
    }

    v10 = v13;
    goto LABEL_25;
  }

LABEL_26:
  if (v10)
  {
    v17 = _MADLog(@"Download");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v21 = typeCopy;
      v22 = 2112;
      v23 = v10;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "[BaseURLOverride]: Final baseURLOverride for asset(%@) is %@", buf, 0x16u);
    }
  }

LABEL_31:

  return v10;
}

- (void)registerAssetDownloadJob:(id)job withPurpose:(id)purpose usingDownloadOptions:(id)options forAssetId:(id)id withBase:(id)base relativeTo:(id)to startingAt:(id)at withLength:(id)self0 extractWith:(id)self1 allocateExtractorIfNecessary:(BOOL)self2 usingXPCConnection:(id)self3 withXPCMessage:(id)self4 clientName:(id)self5 performingAutoAssetJob:(id)self6 notify:(unint64_t)self7 withCatalogMetadata:(id)self8 withSpaceCheckedUUID:(id)self9
{
  jobCopy = job;
  purposeCopy = purpose;
  optionsCopy = options;
  idCopy = id;
  baseCopy = base;
  toCopy = to;
  atCopy = at;
  lengthCopy = length;
  withCopy = with;
  connectionCopy = connection;
  messageCopy = message;
  nameCopy = name;
  assetJobCopy = assetJob;
  metadataCopy = metadata;
  dCopy = d;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v27 = _os_activity_create(&dword_0, "DownloadManager:registerAssetDownloadJob", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v27, &state);

  v97 = 0;
  v98 = &v97;
  v99 = 0x3032000000;
  v100 = __Block_byref_object_copy__11;
  v101 = __Block_byref_object_dispose__11;
  v102 = 0;
  v28 = normalizedAssetType(jobCopy);
  v29 = assembleTaskDescriptorWithPurposeAndAutoAssetJobID(v28, idCopy, purposeCopy, assetJobCopy);
  v30 = v98[5];
  v98[5] = v29;

  if (!v98[5])
  {
    v34 = _MADLog(@"Download");
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&buf[4] = jobCopy;
      _os_log_impl(&dword_0, v34, OS_LOG_TYPE_DEFAULT, "Trying to create a download job with nil task descriptor, bailing, %{public}@", buf, 0xCu);
    }

    v31 = 0;
    v36 = 0;
    v38 = 3;
    goto LABEL_12;
  }

  v31 = [metadataCopy safeDictionaryForKey:@"RequiredFeatures"];
  if (v31)
  {
    v32 = _MADLog(@"Download");
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&buf[4] = v31;
      _os_log_impl(&dword_0, v32, OS_LOG_TYPE_DEFAULT, "Asset requires features: %{public}@", buf, 0xCu);
    }

    v95 = 0;
    v96 = 0;
    v33 = [v31 areRequirementsMetByBrain:&v96 error:&v95];
    v34 = v96;
    v35 = v95;
    if (v35)
    {
      v36 = v35;
      v37 = _MADLog(@"Download");
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        *&buf[4] = v36;
        _os_log_impl(&dword_0, v37, OS_LOG_TYPE_ERROR, "Got an error trying to determine if brain has features required by asset: %{public}@", buf, 0xCu);
      }

      v38 = 78;
LABEL_12:

      [(DownloadManager *)self sendDownloadCannotStartResult:v38 assetType:jobCopy connection:connectionCopy requestMessage:messageCopy clientName:nameCopy autoAssetJobID:assetJobCopy ofJobType:@"asset_job" underlyingError:v36, d, atCopy, lengthCopy];
      goto LABEL_29;
    }

    if ((v33 & 1) == 0)
    {
      v46 = _MADLog(@"Download");
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        *&buf[4] = v34;
        _os_log_impl(&dword_0, v46, OS_LOG_TYPE_ERROR, "[WARNING] Asset requires new features - need to look for a new brain that supports these features: %{public}@", buf, 0xCu);
      }

      v47 = +[NSMutableDictionary dictionary];
      [v47 setObject:v31 forKeyedSubscript:@"requiredFeatures"];
      [v47 setObject:&__kCFBooleanTrue forKeyedSubscript:@"relaunchBrain"];
      v48 = &__kCFBooleanFalse;
      if (optionsCopy && ![optionsCopy discretionary])
      {
        v48 = &__kCFBooleanTrue;
      }

      [v47 setObject:v48 forKeyedSubscript:@"nonDiscetionary"];
      downloadAuthorizationHeader = [optionsCopy downloadAuthorizationHeader];
      [v47 setObject:downloadAuthorizationHeader forKeyedSubscript:@"dawHeader"];

      v50 = +[MABrainUpdater sharedInstance];
      v89[0] = _NSConcreteStackBlock;
      v89[1] = 3221225472;
      v89[2] = __287__DownloadManager_registerAssetDownloadJob_withPurpose_usingDownloadOptions_forAssetId_withBase_relativeTo_startingAt_withLength_extractWith_allocateExtractorIfNecessary_usingXPCConnection_withXPCMessage_clientName_performingAutoAssetJob_notify_withCatalogMetadata_withSpaceCheckedUUID___block_invoke;
      v89[3] = &unk_4B4270;
      v89[4] = self;
      v90 = jobCopy;
      v91 = connectionCopy;
      v92 = messageCopy;
      v93 = nameCopy;
      v94 = assetJobCopy;
      [v50 update:v47 completion:v89];

      v36 = 0;
      goto LABEL_29;
    }
  }

  v36 = 0;
  if (withCopy || !necessary)
  {
    v42 = withCopy;
  }

  else
  {
    v39 = getControlManager();
    v40 = v98[5];
    v88 = 0;
    v41 = [v39 newExtractor:metadataCopy downloadOptions:optionsCopy sessionID:v40 error:&v88];
    v36 = v88;

    if (!v41)
    {
      v34 = _MADLog(@"Download");
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        *buf = 138413826;
        *&buf[4] = assetJobCopy;
        *&buf[12] = 2112;
        *&buf[14] = jobCopy;
        *&buf[22] = 2112;
        v105 = purposeCopy;
        *v106 = 2112;
        *&v106[2] = idCopy;
        *&v106[10] = 2112;
        *&v106[12] = baseCopy;
        v107 = 2112;
        v108 = toCopy;
        v109 = 2112;
        v110 = v36;
        _os_log_impl(&dword_0, v34, OS_LOG_TYPE_ERROR, "Unable to register asset download job (unable to create catalog-based extractor) | autoAssetJobID:%@, assetType:%@, purpose:%@, assetId:%@ | baseURL:%@, relativeURL:%@ error:%@", buf, 0x48u);
      }

      v38 = 5;
      goto LABEL_12;
    }

    v42 = v41;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v105 = __Block_byref_object_copy__11;
  *v106 = __Block_byref_object_dispose__11;
  *&v106[8] = 0;
  v84 = 0;
  v85 = &v84;
  v86 = 0x2020000000;
  v87 = 0;
  v64[0] = _NSConcreteStackBlock;
  v64[1] = 3221225472;
  v64[2] = __287__DownloadManager_registerAssetDownloadJob_withPurpose_usingDownloadOptions_forAssetId_withBase_relativeTo_startingAt_withLength_extractWith_allocateExtractorIfNecessary_usingXPCConnection_withXPCMessage_clientName_performingAutoAssetJob_notify_withCatalogMetadata_withSpaceCheckedUUID___block_invoke_2362;
  v64[3] = &unk_4B4298;
  v43 = metadataCopy;
  v65 = v43;
  v66 = v42;
  v67 = jobCopy;
  v68 = idCopy;
  v69 = baseCopy;
  v70 = toCopy;
  selfCopy = self;
  v72 = optionsCopy;
  v73 = purposeCopy;
  v80 = &v97;
  v74 = atCopy;
  v75 = lengthCopy;
  v81 = &v84;
  withCopy = v66;
  v76 = connectionCopy;
  v77 = messageCopy;
  v78 = nameCopy;
  v82 = buf;
  notifyCopy = notify;
  v79 = assetJobCopy;
  v44 = objc_retainBlock(v64);
  v45 = [v43 safeULLForKey:@"_DownloadSize"];
  v85[3] = v45;
  if (dCopy)
  {
    objc_storeStrong((*&buf[8] + 40), d);
  }

  dispatch_async(self->_downloadStateQueue, v44);

  _Block_object_dispose(&v84, 8);
  _Block_object_dispose(buf, 8);

LABEL_29:
  _Block_object_dispose(&v97, 8);

  os_activity_scope_leave(&state);
}

void __287__DownloadManager_registerAssetDownloadJob_withPurpose_usingDownloadOptions_forAssetId_withBase_relativeTo_startingAt_withLength_extractWith_allocateExtractorIfNecessary_usingXPCConnection_withXPCMessage_clientName_performingAutoAssetJob_notify_withCatalogMetadata_withSpaceCheckedUUID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _MADLog(@"Download");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v6 = v3;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "Failed to find or update brain with new features: %{public}@", buf, 0xCu);
    }

    [*(a1 + 32) sendDownloadCannotStartResult:78 assetType:*(a1 + 40) connection:*(a1 + 48) requestMessage:*(a1 + 56) clientName:*(a1 + 64) autoAssetJobID:*(a1 + 72) ofJobType:@"asset_job" underlyingError:v3];
  }
}

void __287__DownloadManager_registerAssetDownloadJob_withPurpose_usingDownloadOptions_forAssetId_withBase_relativeTo_startingAt_withLength_extractWith_allocateExtractorIfNecessary_usingXPCConnection_withXPCMessage_clientName_performingAutoAssetJob_notify_withCatalogMetadata_withSpaceCheckedUUID___block_invoke_2362(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKey:@"__KnoxURL"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = *(a1 + 40);
    v4 = [v3 symmetricDecryptionKey];
    if ([v4 length])
    {
      v5 = 1;
    }

    else
    {
      v6 = [v3 asymmetricDecryptionKey];
      v5 = [v6 length] != 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v7 = _MADLog(@"Download");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 48);
    v9 = *(a1 + 56);
    v10 = @"Absent";
    v11 = @"Present";
    if (v2)
    {
      v12 = v2;
    }

    else
    {
      v12 = @"Absent";
    }

    if (!v5)
    {
      v11 = @"Absent";
    }

    v13 = *(a1 + 64);
    v14 = *(a1 + 72);
    if (!v13)
    {
      v13 = @"Absent";
    }

    *buf = 138413570;
    if (v14)
    {
      v10 = v14;
    }

    v31 = v8;
    v32 = 2112;
    v33 = v9;
    v34 = 2112;
    v35 = v12;
    v36 = 2112;
    v37 = v11;
    v38 = 2112;
    v39 = v13;
    v40 = 2112;
    v41 = v10;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Determining URL for Asset(Type: %@ ID: %@): KnoxURL: %@ DecryptionKey: %@ BaseURL: %@ relativeURL: %@", buf, 0x3Eu);
  }

  v15 = [*(a1 + 80) getBaseURLOverrideForAssetType:*(a1 + 48)];
  if (v15)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = _MADLog(@"Download");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v31 = v15;
        _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "Using baseURL from supplied override to construct asset download URL: %{public}@", buf, 0xCu);
      }

      v17 = v15;
LABEL_31:
      v23 = [NSURL URLWithString:v17];
      v20 = [v23 URLByAppendingPathComponent:*(a1 + 72)];

      goto LABEL_39;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & v5)
  {
    v18 = _MADLog(@"Download");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v31 = v2;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "Using Knox url from asset to construct asset download URL: %{public}@", buf, 0xCu);
    }

    v19 = [NSURL URLWithString:v2];
    v20 = [v19 URLByAppendingPathComponent:@"data"];

    [*(a1 + 88) setDownloadAuthorizationHeader:0];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = _MADLog(@"Download");
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = *(a1 + 64);
        *buf = 138543362;
        v31 = v22;
        _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "Using base url from request to construct asset download URL: %{public}@", buf, 0xCu);
      }

      v17 = *(a1 + 64);
      goto LABEL_31;
    }

    v24 = getControlManager();
    v25 = [v24 getMetadataFromCatalog:*(a1 + 48) key:@"DownloadedFrom" withPurpose:*(a1 + 96)];

    if (v25 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v26 = [NSURL URLWithString:v25];
    }

    else
    {
      v27 = +[ASAssetMetadataUpdatePolicy policy];
      v26 = [v27 serverURLForAssetType:*(a1 + 48)];
    }

    v28 = _MADLog(@"Download");
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v31 = v26;
      _os_log_impl(&dword_0, v28, OS_LOG_TYPE_DEFAULT, "The base url is empty in the request, using default: %{public}@", buf, 0xCu);
    }

    v20 = [(__CFString *)v26 URLByAppendingPathComponent:*(a1 + 72)];
  }

LABEL_39:
  v29 = _MADLog(@"Download");
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v31 = v20;
    _os_log_impl(&dword_0, v29, OS_LOG_TYPE_DEFAULT, "Full URL is %{public}@", buf, 0xCu);
  }

  [*(a1 + 80) startDownloadAndUpdateState:v20 for:*(*(*(a1 + 152) + 8) + 40) startingAt:*(a1 + 104) withLength:*(a1 + 112) extractWith:*(a1 + 40) modified:0 options:*(a1 + 88) downloadSize:*(*(*(a1 + 160) + 8) + 24) using:*(a1 + 120) with:*(a1 + 128) clientName:*(a1 + 136) autoAssetJob:*(a1 + 144) ofJobType:@"asset_job" notify:*(a1 + 176) spaceCheckedUUID:*(*(*(a1 + 168) + 8) + 40)];
}

- (void)registerPmvDownloadJob:(id)job using:(id)using with:(id)with clientName:(id)name
{
  jobCopy = job;
  usingCopy = using;
  withCopy = with;
  nameCopy = name;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v14 = _os_activity_create(&dword_0, "DownloadManager:registerPmvDownloadJob", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v14, &state);

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = __64__DownloadManager_registerPmvDownloadJob_using_with_clientName___block_invoke;
  v21[3] = &unk_4B42C0;
  v15 = jobCopy;
  v22 = v15;
  v16 = withCopy;
  v23 = v16;
  selfCopy = self;
  v17 = usingCopy;
  v25 = v17;
  v18 = nameCopy;
  v26 = v18;
  v19 = objc_retainBlock(v21);
  if (backgroundDownloadsPossibleWithInfo(0) && [(DownloadManager *)self checkDownloadIsSyncing:@"registerPmvDownloadJob" using:v17 with:v16 autoAssetJob:0 ofJobType:@"asset_job"])
  {
    v20 = _MADLog(@"Download");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v29 = v15;
      _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "Trying to create a PMV download job while background sync is ongoing, bailing, %{public}@", buf, 0xCu);
    }
  }

  else if (![(DownloadManager *)self checkPmvDownloadIsSkipped:v15 connection:v17 with:v16])
  {
    dispatch_async(self->_downloadStateQueue, v19);
    goto LABEL_9;
  }

  [(DownloadManager *)self sendDownloadCannotStartResult:3 assetType:v15 connection:v17 requestMessage:v16 clientName:v18 autoAssetJobID:0 ofJobType:@"PMV_job" underlyingError:0];
LABEL_9:

  os_activity_scope_leave(&state);
}

void __64__DownloadManager_registerPmvDownloadJob_using_with_clientName___block_invoke(uint64_t a1)
{
  v2 = normalizedAssetType(@"com.apple.MobileAsset.SoftwareUpdate");
  _MAPreferencesSync(@"registerPmvDownloadJob", *(a1 + 32));
  v3 = *(a1 + 40);
  v4 = downloadManagerDecodeClasses();
  v5 = getObjectFromMessage(v3, "downloadOptionsLength", "downloadOptions", v4);

  if (!v5)
  {
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
LABEL_5:
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v5 logOptions];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v8 = 0;
        goto LABEL_16;
      }

      v7 = [v5 purpose];
      v8 = normalizePurpose(v7);

      if (isWellFormedPurpose(v8))
      {
LABEL_16:
        v12 = assembleTaskDescriptorWithPurpose(v2, @"pmv", v8);
        if (v12)
        {
          IsInternalAllowed = _MAPreferencesIsInternalAllowed();
          v14 = getPmvUrl(IsInternalAllowed, @"com.apple.MobileAsset.SoftwareUpdate");
          v15 = _MADLog(@"Download");
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v16 = *(a1 + 64);
            *buf = 138543874;
            v20 = v14;
            v21 = 2114;
            v22 = @"com.apple.MobileAsset.SoftwareUpdate";
            v23 = 2114;
            v24 = v16;
            _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "PMV download is being forced as client asked. Downloading %{public}@ for %{public}@ client: %{public}@", buf, 0x20u);
          }

          [*(a1 + 48) startDownloadAndUpdateState:v14 for:v12 modified:0 options:v5 using:*(a1 + 56) with:*(a1 + 40) clientName:*(a1 + 64) autoAssetJob:0 ofJobType:@"PMV_job"];
        }

        else
        {
          v17 = _MADLog(@"Download");
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v20 = @"com.apple.MobileAsset.SoftwareUpdate";
            _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "Trying to create a download job with nil task descriptor, bailing, %{public}@", buf, 0xCu);
          }

          [*(a1 + 48) sendDownloadCannotStartResult:3 assetType:@"com.apple.MobileAsset.SoftwareUpdate" connection:*(a1 + 56) requestMessage:*(a1 + 40) clientName:*(a1 + 64) autoAssetJobID:0 ofJobType:@"PMV_job" underlyingError:0];
        }

        goto LABEL_24;
      }

      v9 = _MADLog(@"Download");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [v5 purpose];
        *buf = 138543618;
        v20 = v10;
        v21 = 2114;
        v22 = @"com.apple.MobileAsset.SoftwareUpdate";
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "The purpose for PMV is: '%{public}@' which is not well formed, and type is: %{public}@", buf, 0x16u);
      }

LABEL_15:

      goto LABEL_16;
    }

    v9 = v5;
LABEL_12:
    v11 = _MADLog(@"Download");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "registerPmvDownloadJob options are nil", buf, 2u);
    }

    v5 = objc_alloc_init(MADownloadOptions);
    v8 = 0;
    goto LABEL_15;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [objc_opt_new() initWithPlist:v5];

    v5 = v6;
    if (v6)
    {
      goto LABEL_5;
    }

LABEL_10:
    v9 = 0;
    goto LABEL_12;
  }

  v18 = _MADLog(@"Download");
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v20 = @"com.apple.MobileAsset.SoftwareUpdate";
    _os_log_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "The asset download options for %{public}@ PMV were not a valid class, failing", buf, 0xCu);
  }

  [*(a1 + 48) sendDownloadCannotStartResult:22 assetType:@"com.apple.MobileAsset.SoftwareUpdate" connection:*(a1 + 56) requestMessage:*(a1 + 40) clientName:*(a1 + 64) autoAssetJobID:0 ofJobType:@"PMV_job" underlyingError:0];
LABEL_24:
}

- (void)registerXmlDownloadJob:(id)job using:(id)using with:(id)with clientName:(id)name
{
  jobCopy = job;
  usingCopy = using;
  withCopy = with;
  nameCopy = name;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v14 = _os_activity_create(&dword_0, "DownloadManager:registerXmlDownloadJob", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v14, &state);

  v15 = downloadManagerDecodeClasses();
  v16 = getObjectFromMessage(withCopy, "downloadOptionsLength", "downloadOptions", v15);

  _MAPreferencesSync(@"registerXmlDownloadJob", jobCopy);
  if (!v16)
  {
    goto LABEL_7;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v24 = _MADLog(@"Download");
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v27 = jobCopy;
        v28 = 2114;
        v29 = v16;
        _os_log_impl(&dword_0, v24, OS_LOG_TYPE_ERROR, "The asset download options for %{public}@ catalog were not a valid class, failing: %{public}@", buf, 0x16u);
      }

      [(DownloadManager *)self sendDownloadCannotStartResult:22 assetType:jobCopy connection:usingCopy requestMessage:withCopy clientName:nameCopy autoAssetJobID:0 ofJobType:@"catalog_job" underlyingError:0, state.opaque[0], state.opaque[1]];
      v22 = 0;
      goto LABEL_21;
    }

    v17 = [objc_opt_new() initWithPlist:v16];

    v16 = v17;
    if (!v17)
    {
      goto LABEL_7;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v16 logOptions];
  }

  else
  {
LABEL_7:
    v18 = _MADLog(@"Download");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "registerXmlDownloadJob options are nil", buf, 2u);
    }

    v19 = objc_alloc_init(MADownloadOptions);
    v16 = v19;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v22 = 0;
    goto LABEL_14;
  }

  v20 = v16;
  purpose = [v20 purpose];
  v22 = normalizePurpose(purpose);

  if (isWellFormedPurpose(v22))
  {

LABEL_14:
    [(DownloadManager *)self registerCatalogDownloadJob:jobCopy withPurpose:v22 usingDownloadOptions:v16 usingXPCConnection:usingCopy withXPCMessage:withCopy performingAutoAssetJob:0 asClientName:nameCopy];
    goto LABEL_21;
  }

  v23 = _MADLog(@"Download");
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v27 = v22;
    v28 = 2114;
    v29 = jobCopy;
    _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEFAULT, "The purpose for XML is: '%{public}@' which is not well formed, and type is: %{public}@, bailing", buf, 0x16u);
  }

  [(DownloadManager *)self sendDownloadCannotStartResult:74 assetType:jobCopy connection:usingCopy requestMessage:withCopy clientName:nameCopy autoAssetJobID:0 ofJobType:@"catalog_job" underlyingError:0, state.opaque[0], state.opaque[1]];
  v16 = v20;
LABEL_21:

  os_activity_scope_leave(&state);
}

- (void)registerCatalogDownloadJob:(id)job withPurpose:(id)purpose usingDownloadOptions:(id)options usingXPCConnection:(id)connection withXPCMessage:(id)message performingAutoAssetJob:(id)assetJob asClientName:(id)name
{
  jobCopy = job;
  purposeCopy = purpose;
  optionsCopy = options;
  connectionCopy = connection;
  messageCopy = message;
  assetJobCopy = assetJob;
  nameCopy = name;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v22 = _os_activity_create(&dword_0, "DownloadManager:registerCatalogDownloadJob", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v22, &state);

  v42[0] = 0;
  v42[1] = v42;
  v42[2] = 0x3032000000;
  v42[3] = __Block_byref_object_copy__11;
  v42[4] = __Block_byref_object_dispose__11;
  v43 = 0;
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = __149__DownloadManager_registerCatalogDownloadJob_withPurpose_usingDownloadOptions_usingXPCConnection_withXPCMessage_performingAutoAssetJob_asClientName___block_invoke;
  v32[3] = &unk_4B4310;
  v23 = jobCopy;
  v33 = v23;
  v24 = purposeCopy;
  v34 = v24;
  v25 = assetJobCopy;
  v35 = v25;
  selfCopy = self;
  v26 = connectionCopy;
  v37 = v26;
  v27 = messageCopy;
  v38 = v27;
  v28 = nameCopy;
  v39 = v28;
  v29 = optionsCopy;
  v40 = v29;
  v41 = v42;
  v30 = objc_retainBlock(v32);
  if (backgroundDownloadsPossibleWithInfo(0) && [(DownloadManager *)self checkDownloadIsSyncing:@"registerXmlDownloadJob" using:v26 with:v27 autoAssetJob:v25 ofJobType:@"catalog_job"])
  {
    v31 = _MADLog(@"Download");
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v46 = v23;
      _os_log_impl(&dword_0, v31, OS_LOG_TYPE_DEFAULT, "Trying to create a catalog download job while background sync is ongoing, bailing, %{public}@", buf, 0xCu);
    }
  }

  else if (![(DownloadManager *)self checkCatalogDownloadIsSkipped:v23 connection:v26 with:v27 autoAssetJob:v25])
  {
    dispatch_async(self->_downloadStateQueue, v30);
  }

  _Block_object_dispose(v42, 8);
  os_activity_scope_leave(&state);
}

void __149__DownloadManager_registerCatalogDownloadJob_withPurpose_usingDownloadOptions_usingXPCConnection_withXPCMessage_performingAutoAssetJob_asClientName___block_invoke(uint64_t a1)
{
  v2 = normalizedAssetType(*(a1 + 32));
  v3 = assembleTaskDescriptorWithPurposeAndAutoAssetJobID(v2, @"xml", *(a1 + 40), *(a1 + 48));
  if (v3)
  {
    if (!*(a1 + 48))
    {
      v4 = *(a1 + 72);
      v5 = downloadManagerDecodeClasses();
      v6 = getObjectFromMessage(v4, "downloadOptionsLength", "downloadOptions", v5);

      if (!v6)
      {
        goto LABEL_12;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v34 = _MADLog(@"Download");
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            v35 = *(a1 + 32);
            *buf = 138543618;
            v51 = v35;
            v52 = 2114;
            v53 = v6;
            _os_log_impl(&dword_0, v34, OS_LOG_TYPE_ERROR, "The asset download options for %{public}@ catalog were not a valid class, failing: %{public}@", buf, 0x16u);
          }

          [*(a1 + 56) indicateDownloadJobFinished:22 usingXPCConnection:*(a1 + 64) withXPCMessage:*(a1 + 72) performingAutoAssetJob:*(a1 + 48) ofJobType:@"catalog_job"];
          goto LABEL_29;
        }

        v7 = [objc_opt_new() initWithPlist:v6];

        v6 = v7;
        if (!v7)
        {
          goto LABEL_12;
        }
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v6 logOptions];
      }

      else
      {
LABEL_12:
        v10 = _MADLog(@"Download");
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "registerXmlDownloadJob options are nil", buf, 2u);
        }
      }
    }

    if (![*(a1 + 56) getPallasEnabledForAssetType:*(a1 + 32)])
    {
      v18 = _MADLog(@"Download");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = *(a1 + 32);
        v20 = *(a1 + 80);
        *buf = 138543618;
        v51 = v19;
        v52 = 2114;
        v53 = v20;
        _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "Skipping pallas route for %{public}@ client: %{public}@", buf, 0x16u);
      }

      v21 = getStandardUrl(*(a1 + 32), v2);
      v22 = *(*(a1 + 96) + 8);
      v23 = *(v22 + 40);
      *(v22 + 40) = v21;

      if (*(*(*(a1 + 96) + 8) + 40))
      {
        v24 = *(a1 + 88);
        if (!v24 || ![v24 liveServerCatalogOnly])
        {
          v29 = getControlManager();
          v30 = [v29 getCatalogLastModifiedDate:*(a1 + 32) ifFromXmlUrl:*(*(*(a1 + 96) + 8) + 40) withPurpose:*(a1 + 40)];

          [*(a1 + 56) startDownloadAndUpdateState:*(*(*(a1 + 96) + 8) + 40) for:v3 modified:v30 options:*(a1 + 88) using:*(a1 + 64) with:*(a1 + 72) clientName:*(a1 + 80) autoAssetJob:*(a1 + 48) ofJobType:@"catalog_job"];
          goto LABEL_29;
        }

        v25 = _MADLog(@"Download");
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v26 = *(*(*(a1 + 96) + 8) + 40);
          v27 = *(a1 + 32);
          v28 = *(a1 + 80);
          *buf = 138543874;
          v51 = v26;
          v52 = 2114;
          v53 = v27;
          v54 = 2114;
          v55 = v28;
          _os_log_impl(&dword_0, v25, OS_LOG_TYPE_DEFAULT, "XML catalog failed as client asked for liveServerCatalogOnly to disable fallback. Would have attempted %{public}@ after skipping on pallas for %{public}@ client: %{public}@", buf, 0x20u);
        }
      }

      else
      {
        v25 = _MADLog(@"Download");
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v31 = stringForMADownloadResult(0x19uLL);
          v32 = *(a1 + 32);
          v33 = *(a1 + 80);
          *buf = 134219010;
          v51 = 25;
          v52 = 2114;
          v53 = v31;
          v54 = 2114;
          v55 = v32;
          v56 = 2114;
          v57 = v33;
          v58 = 2114;
          v59 = v32;
          _os_log_impl(&dword_0, v25, OS_LOG_TYPE_DEFAULT, "Sending download result %ld (%{public}@) for assetType: %{public}@ XML download did not have a catalog URL. This could be for a type where liveServerCatalogOnly was set to disable XML fallback, or a lookup error for the build of SystemApps. Would have attempted the fallback URL after skipping on pallas for %{public}@ client: %{public}@", buf, 0x34u);
        }
      }

      [*(a1 + 56) indicateDownloadJobFinished:25 usingXPCConnection:*(a1 + 64) withXPCMessage:*(a1 + 72) performingAutoAssetJob:*(a1 + 48) ofJobType:@"catalog_job"];
      goto LABEL_29;
    }

    v11 = getDownloadManager();
    v12 = *(a1 + 32);
    v37 = *(a1 + 64);
    v38 = *(a1 + 40);
    v36 = *(a1 + 72);
    v13 = *(a1 + 48);
    v14 = *(a1 + 80);
    v15 = *(a1 + 88);
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = __149__DownloadManager_registerCatalogDownloadJob_withPurpose_usingDownloadOptions_usingXPCConnection_withXPCMessage_performingAutoAssetJob_asClientName___block_invoke_2381;
    v39[3] = &unk_4B42E8;
    v40 = v12;
    v16 = *(a1 + 80);
    v17 = *(a1 + 56);
    v41 = v16;
    v42 = v17;
    v43 = v3;
    v44 = v2;
    v45 = *(a1 + 40);
    v46 = *(a1 + 88);
    v47 = *(a1 + 64);
    v48 = *(a1 + 72);
    v49 = *(a1 + 48);
    [v11 pallasRequestV2:v40 normalizedType:v44 withPurpose:v38 options:v15 using:v37 with:v36 autoAssetJob:v13 clientName:v14 then:v39];
  }

  else
  {
    v8 = _MADLog(@"Download");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      *buf = 138543362;
      v51 = v9;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Trying to create a download job with nil task descriptor, bailing, %{public}@", buf, 0xCu);
    }

    [*(a1 + 56) sendDownloadCannotStartResult:3 assetType:*(a1 + 32) connection:*(a1 + 64) requestMessage:*(a1 + 72) clientName:*(a1 + 80) autoAssetJobID:*(a1 + 48) ofJobType:@"catalog_job" underlyingError:0];
  }

LABEL_29:
}

void __149__DownloadManager_registerCatalogDownloadJob_withPurpose_usingDownloadOptions_usingXPCConnection_withXPCMessage_performingAutoAssetJob_asClientName___block_invoke_2381(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  v7 = a2;
  v8 = v7;
  if (a3 > 1)
  {
    if (a3 != 2)
    {
      if (a3 == 4)
      {
        v27 = _MADLog(@"Download");
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v28 = *(a1 + 32);
          v29 = *(a1 + 40);
          *buf = 138543618;
          v64 = v28;
          v65 = 2114;
          v66 = v29;
          _os_log_impl(&dword_0, v27, OS_LOG_TYPE_DEFAULT, "Succeeded with not modified on pallas for %{public}@ client: %{public}@", buf, 0x16u);
        }

        v30 = getControlManager();
        [v30 updateLastFetchedDate:*(a1 + 64) assetType:*(a1 + 32) withPurpose:*(a1 + 72) with:*(a1 + 56)];

        v13 = *(a1 + 48);
        v14 = *(a1 + 56);
        v12 = 14;
        goto LABEL_54;
      }

      if (a3 == 3)
      {
        v9 = _MADLog(@"Download");
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v10 = *(a1 + 32);
          v11 = *(a1 + 40);
          *buf = 138543618;
          v64 = v10;
          v65 = 2114;
          v66 = v11;
          _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "Failed with no retry on pallas for %{public}@ client: %{public}@", buf, 0x16u);
        }

        if (a4 == 86)
        {
          v12 = 86;
        }

        else
        {
          v12 = 18;
        }

        v13 = *(a1 + 48);
        v14 = *(a1 + 56);
        goto LABEL_54;
      }

      goto LABEL_33;
    }

    v20 = *(a1 + 32);
    if (v20 && (isXMLAssetType(v20) & 1) == 0)
    {
      v22 = _MADLog(@"Download");
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v52 = *(a1 + 32);
        v53 = *(a1 + 40);
        v25 = stringForMADownloadResult(a4);
        *buf = 138544386;
        v64 = v8;
        v65 = 2114;
        v66 = v52;
        v67 = 2114;
        v68 = v53;
        v69 = 2048;
        v70 = a4;
        v71 = 2114;
        v72 = v25;
        v26 = "Failed MAPallasFailedRetrySame but asset type does not support XML fallback. Would have attempted retry with: %{public}@ after failing on pallas for %{public}@ client: %{public}@ with failure: %ld %{public}@";
        goto LABEL_46;
      }

LABEL_53:

      v13 = *(a1 + 48);
      v14 = *(a1 + 56);
      v12 = a4;
LABEL_54:
      [v13 taskFinishedUpdateState:v14 with:v12 fromLocation:@"registerCatalogDownloadJob"];
      goto LABEL_55;
    }

    v21 = *(a1 + 80);
    if (v21 && [v21 liveServerCatalogOnly])
    {
      v22 = _MADLog(@"Download");
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = *(a1 + 32);
        v24 = *(a1 + 40);
        v25 = stringForMADownloadResult(a4);
        *buf = 138544386;
        v64 = v8;
        v65 = 2114;
        v66 = v23;
        v67 = 2114;
        v68 = v24;
        v69 = 2048;
        v70 = a4;
        v71 = 2114;
        v72 = v25;
        v26 = "Failed MAPallasFailedRetrySame but client used liveServerCatalogOnly to disable XML fallback. Would have attempted retry with: %{public}@ after failing on pallas for %{public}@ client: %{public}@ with failure: %ld %{public}@";
LABEL_46:
        _os_log_impl(&dword_0, v22, OS_LOG_TYPE_ERROR, v26, buf, 0x34u);

        goto LABEL_53;
      }

      goto LABEL_53;
    }

    v42 = _MADLog(@"Download");
    v43 = v42;
    if (!v8)
    {
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        v60 = *(a1 + 32);
        v61 = *(a1 + 40);
        v62 = stringForMADownloadResult(a4);
        *buf = 138544130;
        v64 = v60;
        v65 = 2114;
        v66 = v61;
        v67 = 2048;
        v68 = a4;
        v69 = 2114;
        v70 = v62;
        _os_log_impl(&dword_0, v43, OS_LOG_TYPE_ERROR, "Had no fallback XML url to retry with: (nil) after failure on pallas for %{public}@ client: %{public}@ with failure: %ld %{public}@", buf, 0x2Au);
      }

      v13 = *(a1 + 48);
      v14 = *(a1 + 56);
      v12 = 27;
      goto LABEL_54;
    }

    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      v44 = *(a1 + 32);
      v45 = *(a1 + 40);
      v46 = stringForMADownloadResult(a4);
      *buf = 138544386;
      v64 = v8;
      v65 = 2114;
      v66 = v44;
      v67 = 2114;
      v68 = v45;
      v69 = 2048;
      v70 = a4;
      v71 = 2114;
      v72 = v46;
      _os_log_impl(&dword_0, v43, OS_LOG_TYPE_DEFAULT, "Falling back to XML. Retry with: %{public}@ after failure on pallas for %{public}@ client: %{public}@ with failure: %ld %{public}@", buf, 0x34u);
    }

    v47 = getControlManager();
    v48 = [v47 getCatalogLastModifiedDate:*(a1 + 32) ifFromXmlUrl:v8 withPurpose:*(a1 + 72)];

    [*(a1 + 48) retryTask:*(a1 + 56) retryUrl:v8 modified:v48 clientName:*(a1 + 40)];
LABEL_50:

    goto LABEL_55;
  }

  if (a3)
  {
    if (a3 != 1)
    {
LABEL_33:
      v34 = _MADLog(@"Download");
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v35 = *(a1 + 32);
        v36 = *(a1 + 40);
        *buf = 134218498;
        v64 = a3;
        v65 = 2114;
        v66 = v35;
        v67 = 2114;
        v68 = v36;
        _os_log_impl(&dword_0, v34, OS_LOG_TYPE_ERROR, "MADownloadFailed: Pallas result unknown! %ld on pallas for %{public}@ client: %{public}@", buf, 0x20u);
      }

      v37 = *(a1 + 48);
      v38 = *(a1 + 88);
      v39 = *(a1 + 96);
      v40 = *(a1 + 104);
      v41 = 3;
LABEL_43:
      [v37 indicateDownloadJobFinished:v41 usingXPCConnection:v38 withXPCMessage:v39 performingAutoAssetJob:v40 ofJobType:@"catalog_job"];
      goto LABEL_55;
    }

    if (!v7)
    {
      v49 = _MADLog(@"Download");
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        v50 = *(a1 + 32);
        v51 = *(a1 + 40);
        *buf = 138543618;
        v64 = v50;
        v65 = 2114;
        v66 = v51;
        _os_log_impl(&dword_0, v49, OS_LOG_TYPE_ERROR, "Failed MAPallasFailedRetryNew and had no url on pallas for %{public}@ client: %{public}@", buf, 0x16u);
      }

      v37 = *(a1 + 48);
      v38 = *(a1 + 88);
      v39 = *(a1 + 96);
      v40 = *(a1 + 104);
      v41 = 27;
      goto LABEL_43;
    }

    v15 = *(a1 + 32);
    if (v15 && (isXMLAssetType(v15) & 1) == 0)
    {
      v22 = _MADLog(@"Download");
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v58 = *(a1 + 32);
        v59 = *(a1 + 40);
        *buf = 138543874;
        v64 = v8;
        v65 = 2114;
        v66 = v58;
        v67 = 2114;
        v68 = v59;
        _os_log_impl(&dword_0, v22, OS_LOG_TYPE_ERROR, "Failed MAPallasFailedRetryNew but asset type does not support XML fallback. Would have attempted with: %{public}@ after failing on pallas for %{public}@ client: %{public}@", buf, 0x20u);
      }

      goto LABEL_53;
    }

    v16 = *(a1 + 80);
    if (v16 && [v16 liveServerCatalogOnly])
    {
      v17 = _MADLog(@"Download");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = *(a1 + 32);
        v19 = *(a1 + 40);
        *buf = 138543874;
        v64 = v8;
        v65 = 2114;
        v66 = v18;
        v67 = 2114;
        v68 = v19;
        _os_log_impl(&dword_0, v17, OS_LOG_TYPE_ERROR, "Failed MAPallasFailedRetryNew but client used liveServerCatalogOnly to disable XML fallback. Would have attempted with: %{public}@ after failing on pallas for %{public}@ client: %{public}@", buf, 0x20u);
      }

      v13 = *(a1 + 48);
      v14 = *(a1 + 56);
      v12 = 72;
      goto LABEL_54;
    }

    v54 = _MADLog(@"Download");
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
    {
      v55 = *(a1 + 32);
      v56 = *(a1 + 40);
      *buf = 138543874;
      v64 = v8;
      v65 = 2114;
      v66 = v55;
      v67 = 2114;
      v68 = v56;
      _os_log_impl(&dword_0, v54, OS_LOG_TYPE_DEFAULT, "Falling back to XML: %{public}@ after failure before pallas response for %{public}@ client: %{public}@", buf, 0x20u);
    }

    v57 = getControlManager();
    v48 = [v57 getCatalogLastModifiedDate:*(a1 + 32) ifFromXmlUrl:v8 withPurpose:*(a1 + 72)];

    [*(a1 + 48) startDownloadAndUpdateState:v8 for:*(a1 + 56) modified:v48 options:*(a1 + 80) using:*(a1 + 88) with:*(a1 + 96) clientName:*(a1 + 40) autoAssetJob:*(a1 + 104) ofJobType:@"catalog_job"];
    goto LABEL_50;
  }

  v31 = _MADLog(@"Download");
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    v32 = *(a1 + 32);
    v33 = *(a1 + 40);
    *buf = 138543618;
    v64 = v32;
    v65 = 2114;
    v66 = v33;
    _os_log_impl(&dword_0, v31, OS_LOG_TYPE_DEFAULT, "Pallas call succeeded on pallas for %{public}@ client: %{public}@", buf, 0x16u);
  }

LABEL_55:
}

- (void)sendNotification:(id)notification
{
  v4 = disassembleTaskDescriptor(notification);
  v5 = v4;
  if (v4)
  {
    v6 = [v4 objectForKey:@"isXml"];
    v7 = v6;
    if (v6)
    {
      intValue = [v6 intValue];
      v9 = [v5 objectForKey:@"normalizedAssetType"];
      v10 = assetTypeFromNormalized(v9);

      if (v10)
      {
        v11 = 0;
        v12 = 1;
        if (intValue <= 2)
        {
          if (intValue == 1)
          {
            v12 = 0;
            v13 = @"XML";
            v11 = @".ma.cached-metadata-updated";
          }

          else
          {
            v13 = 0;
            if (intValue == 2)
            {
              v12 = 0;
              v13 = @"ZIP";
              v11 = @".ma.new-asset-installed";
            }
          }
        }

        else if (intValue == 3)
        {
          v12 = 0;
          v13 = @"PMV";
          v11 = @".ma.pmv-updated";
        }

        else if (intValue == 4)
        {
          v12 = 0;
          v13 = @"XML";
          v11 = @".ma.auto-catalog";
        }

        else
        {
          v13 = 0;
          if (intValue == 5)
          {
            v12 = 0;
            v13 = @"ZIP";
            v11 = @".ma.new-auto-asset-installed";
          }
        }

        splunkStateQueue = self->_splunkStateQueue;
        v16 = _NSConcreteStackBlock;
        v17 = 3221225472;
        v18 = __36__DownloadManager_sendNotification___block_invoke;
        v19 = &unk_4B3350;
        selfCopy = self;
        v15 = v10;
        v21 = v15;
        v22 = v11;
        v23 = v13;
        dispatch_async(splunkStateQueue, &v16);
        if ((v12 & 1) == 0)
        {
          [(DownloadManager *)self sendNotification:v15 suffix:v11, v16, v17, v18, v19, selfCopy];
        }
      }
    }
  }

  else
  {
    v7 = 0;
  }
}

void __36__DownloadManager_sendNotification___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) analytics];
  [v2 recordDownloadSuccessForAssetType:*(a1 + 40) notificationSuffix:*(a1 + 48) fileType:*(a1 + 56)];
}

- (void)sendNotification:(id)notification suffix:(id)suffix
{
  v4 = [notification stringByAppendingString:suffix];
  v5 = _MADLog(@"Download");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "MA Notifying: %{public}@", &v6, 0xCu);
  }

  notify_post([v4 UTF8String]);
}

- (id)currentSession
{
  v3 = backgroundDownloadsPossibleWithInfo(0);
  v4 = 120;
  if (v3)
  {
    v4 = 88;
  }

  v5 = *(&self->super.isa + v4);

  return v5;
}

- (id)currentConfig
{
  v3 = backgroundDownloadsPossibleWithInfo(0);
  v4 = 48;
  if (v3)
  {
    v4 = 40;
  }

  v5 = *(&self->super.isa + v4);

  return v5;
}

- (void)retryTask:(id)task retryUrl:(id)url modified:(id)modified clientName:(id)name
{
  taskCopy = task;
  urlCopy = url;
  modifiedCopy = modified;
  nameCopy = name;
  downloadStateQueue = self->_downloadStateQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __58__DownloadManager_retryTask_retryUrl_modified_clientName___block_invoke;
  block[3] = &unk_4B42C0;
  block[4] = self;
  v20 = taskCopy;
  v21 = nameCopy;
  v22 = urlCopy;
  v23 = modifiedCopy;
  v15 = modifiedCopy;
  v16 = urlCopy;
  v17 = nameCopy;
  v18 = taskCopy;
  dispatch_async(downloadStateQueue, block);
}

void __58__DownloadManager_retryTask_retryUrl_modified_clientName___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) downloadTasksInFlight];
  v3 = [v2 objectForKey:*(a1 + 40)];

  if (!v3)
  {
    v14 = _MADLog(@"Download");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 40);
      *buf = 138543362;
      v20 = v15;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "We have no info about this task, cannot retry: %{public}@", buf, 0xCu);
    }

    v16 = _MADLog(@"Download");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [*(a1 + 32) downloadTasksInFlight];
      *buf = 138543362;
      v20 = v17;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "The downloads in flight are: %{public}@", buf, 0xCu);
    }

    goto LABEL_14;
  }

  if (([v3 shouldRetry] & 1) == 0)
  {
    v16 = _MADLog(@"Download");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v18 = *(a1 + 40);
      *buf = 138543362;
      v20 = v18;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "We have already retried this task, skipping: %{public}@", buf, 0xCu);
    }

LABEL_14:

    [*(a1 + 32) taskFinishedUpdateState:*(a1 + 40) with:30 fromLocation:@"retryTask"];
    goto LABEL_15;
  }

  [v3 setShouldRetry:0];
  [v3 setIsPallas:0];
  v4 = [v3 options];
  [v3 setIsDiscretionary:{objc_msgSend(v4, "discretionary")}];

  v5 = [v3 firstClientName];

  if (!v5)
  {
    [v3 setFirstClientName:*(a1 + 48)];
  }

  v6 = *(a1 + 32);
  v7 = *(a1 + 56);
  v8 = [v3 downloadSize];
  v9 = *(a1 + 40);
  v10 = [v3 options];
  v11 = *(a1 + 64);
  v12 = [*(a1 + 32) currentSession];
  v13 = [v6 startDownloadTask:v7 downloadSize:v8 for:v9 startingAt:0 withLength:0 extractWith:0 options:v10 modified:v11 session:v12];

  if (!v13)
  {
    [*(a1 + 32) taskFinishedUpdateState:*(a1 + 40) with:30 fromLocation:@"retryTask"];
  }

  [v3 setTask:v13];

LABEL_15:
}

- (void)taskFinishedUpdateState:(id)state with:(int64_t)with extraInfo:(id)info fromLocation:(id)location
{
  stateCopy = state;
  infoCopy = info;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v11 = _os_activity_create(&dword_0, "DownloadManager:taskFinishedUpdateState", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v11, &state);

  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x2020000000;
  v24[3] = with;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x2020000000;
  v23 = 0;
  downloadStateQueue = self->_downloadStateQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = __71__DownloadManager_taskFinishedUpdateState_with_extraInfo_fromLocation___block_invoke;
  v15[3] = &unk_4B4338;
  v16 = stateCopy;
  selfCopy = self;
  v20 = v22;
  withCopy = with;
  v18 = infoCopy;
  v19 = v24;
  v13 = infoCopy;
  v14 = stateCopy;
  dispatch_async(downloadStateQueue, v15);

  _Block_object_dispose(v22, 8);
  _Block_object_dispose(v24, 8);
  os_activity_scope_leave(&state);
}

void __71__DownloadManager_taskFinishedUpdateState_with_extraInfo_fromLocation___block_invoke(uint64_t a1)
{
  v3 = (a1 + 32);
  v4 = disassembleTaskDescriptor(*(a1 + 32));
  v5 = [v4 safeObjectForKey:@"AutoAssetJob" ofClass:objc_opt_class()];
  if (!*v3)
  {
    v12 = _MADLog(@"Download");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "[TaskFinished]: Task finished without a task descriptor, syncing with nsurlsession", buf, 2u);
    }

    [*(a1 + 40) queryNSUrlSessiondAndUpdateState];
    goto LABEL_14;
  }

  v6 = [*(a1 + 40) downloadTasksInFlight];
  v7 = [v6 objectForKey:*(a1 + 32)];

  if (!v7)
  {
    v13 = _MADLog(@"Download");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 32);
      v15 = [*(a1 + 40) downloadTasksInFlight];
      *buf = 138543618;
      v56 = v14;
      v57 = 2114;
      v58 = v15;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "[TaskFinished]: We have no info about this task, cannot reply: %{public}@  The downloads in flight are: %{public}@", buf, 0x16u);
    }

    if (!*(a1 + 72))
    {
      [*(a1 + 40) sendNotification:*(a1 + 32)];
    }

LABEL_14:
    v8 = 0;
    v7 = 0;
    goto LABEL_45;
  }

  v8 = [v7 nwActivity];

  if (v8)
  {
    if (v5)
    {
      v9 = *(a1 + 40);
      objc_sync_enter(v9);
      v10 = [*(a1 + 40) nwActivityObjectsByJobUUID];
      v8 = [v10 safeObjectForKey:v5 ofClass:objc_opt_class()];

      if (v8)
      {
        v11 = [v7 nwActivity];
        [v8 addObject:v11];
      }

      else
      {
        v17 = [*(a1 + 40) nwActivityObjectsByJobUUID];
        v18 = [v7 nwActivity];
        v65 = v18;
        v19 = [NSArray arrayWithObjects:&v65 count:1];
        v1 = [v19 mutableCopy];
        [v17 setSafeObject:v1 forKey:v5];
      }

      objc_sync_exit(v9);
    }

    else
    {
      v16 = [v7 nwActivity];
      nw_activity_complete_with_reason();

      v8 = 0;
    }
  }

  if (*(a1 + 72) == 14)
  {
    *(*(*(a1 + 56) + 8) + 24) = 0;
  }

  if (*(*(*(a1 + 56) + 8) + 24))
  {
    v20 = [v7 cacheServerUrl];
    if (v20)
    {
      v21 = [v7 originalUrl];
      v22 = v21 == 0;

      if (!v22)
      {
        [v7 clearCacheServerUrl];
        if (![v7 extractorRequired] || objc_msgSend(v7, "extractorRequired") && (objc_msgSend(v7, "extractor"), v23 = objc_claimAutoreleasedReturnValue(), v24 = v23 == 0, v23, !v24))
        {
          v25 = _MADLog(@"Download");
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            v26 = [v7 originalUrl];
            *buf = 138543362;
            v56 = v26;
            _os_log_impl(&dword_0, v25, OS_LOG_TYPE_DEFAULT, "[TaskFinished]: Download failed however we are going to retry at original url: %{public}@", buf, 0xCu);
          }

          v47 = *(a1 + 40);
          v53 = [v7 originalUrl];
          v45 = [v7 downloadSize];
          v27 = *(a1 + 32);
          v51 = [v7 startingAt];
          v49 = [v7 lengthOfRange];
          v1 = [v7 extractor];
          v28 = [v7 options];
          v29 = [v7 date];
          v30 = [*(a1 + 40) currentSession];
          v31 = [v47 startDownloadTask:v53 downloadSize:v45 for:v27 startingAt:v51 withLength:v49 extractWith:v1 options:v28 modified:v29 session:v30];

          if (v31)
          {
            *(*(*(a1 + 64) + 8) + 24) = 1;
          }

          [v7 setTask:v31];

          goto LABEL_45;
        }

        v32 = _MADLog(@"Download");
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          v1 = @"YES";
          if ([v7 extractorRequired])
          {
            v33 = @"YES";
          }

          else
          {
            v33 = @"NO";
          }

          v34 = [v7 extractor];
          if (v34)
          {
            v35 = @"YES";
          }

          else
          {
            v35 = @"NO";
          }

          *buf = 138412546;
          v56 = v33;
          v57 = 2112;
          v58 = v35;
          _os_log_impl(&dword_0, v32, OS_LOG_TYPE_DEFAULT, "[TaskFinished]: Download failed. Not attempting retry with original URL ExtractorRequired: %@ ExtractorPresent: %@", buf, 0x16u);
        }
      }
    }
  }

  [*(a1 + 40) sendDownloadResult:v7 with:*(*(*(a1 + 56) + 8) + 24) extraInfo:*(a1 + 48)];
  if (*(a1 + 72))
  {
    v36 = _MADLog(@"Download");
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v36, OS_LOG_TYPE_DEFAULT, "Skipping notification because of failure or no change", buf, 2u);
    }
  }

  else
  {
    [*(a1 + 40) sendNotification:*(a1 + 32)];
  }

LABEL_45:
  if (*(a1 + 32) && (*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
  {
    if (!v7 || ![v7 signpost])
    {
      goto LABEL_62;
    }

    v37 = _MADLog(@"Download");
    v38 = [v7 signpost];
    if ((v38 - 1) > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v37))
    {
LABEL_61:

LABEL_62:
      v43 = [*(a1 + 40) downloadTasksInFlight];
      [v43 removeObjectForKey:*(a1 + 32)];

      goto LABEL_63;
    }

    v52 = mach_continuous_time();
    v50 = [v7 totalExpectedBytes];
    v48 = [v7 numStalled];
    v46 = [*(a1 + 32) UTF8String];
    v39 = [v7 cacheServerUrl];
    v54 = v39 == 0;
    if (v39)
    {
      v40 = [v7 cacheServerUrl];
      v1 = [v40 absoluteString];
    }

    else
    {
      v40 = [v7 originalUrl];
      if (!v40)
      {
        v54 = 0;
        v42 = "";
        goto LABEL_56;
      }

      v44 = [v7 originalUrl];
      v1 = [v44 absoluteString];
    }

    v41 = v1;
    v42 = [(__CFString *)v1 UTF8String];
LABEL_56:
    *buf = 134350082;
    v56 = v52;
    v57 = 2050;
    v58 = v50;
    v59 = 2050;
    v60 = v48;
    v61 = 2082;
    v62 = v46;
    v63 = 2082;
    v64 = v42;
    _os_signpost_emit_with_name_impl(&dword_0, v37, OS_SIGNPOST_INTERVAL_END, v38, "DownloadSession", "%{public, signpost.description:end_time}llu Bytes=%{public, signpost.telemetry:number1,name=Bytes}lld Stalls=%{public, signpost.telemetry:number2,name=Stalls}lldDescriptor=%{public, signpost.telemetry:string1,name=Descriptor}sUrl=%{public, signpost.telemetry:string2,name=Url}s enableTelemetry=YES ", buf, 0x34u);
    if (v54)
    {
    }

    if (v39)
    {
    }

    goto LABEL_61;
  }

LABEL_63:
}

- (int64_t)massagePmvAndPersist:(id)persist from:(id)from to:(id)to postedDate:(id)date
{
  persistCopy = persist;
  fromCopy = from;
  toCopy = to;
  dateCopy = date;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v13 = _os_activity_create(&dword_0, "DownloadManager:massagePmvAndPersist", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v13, &state);

  v14 = objc_autoreleasePoolPush();
  v15 = getAssetTypeFromTaskDescriptor(persistCopy);
  v16 = getPathToStagedFile(v15, persistCopy, 0);
  v17 = _MADLog(@"Download");
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v37 = v16;
    v38 = 2114;
    v39 = fromCopy;
    _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "The PMV staging path is: %{public}@ from %{public}@", buf, 0x16u);
  }

  if (!toCopy || !v16)
  {
    v21 = _MADLog(@"Download");
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    *buf = 138543874;
    v37 = v16;
    v38 = 2114;
    v39 = toCopy;
    v40 = 2114;
    v41 = v15;
    v23 = "Cannot persist PMV as there is no target location for copying %{public}@ to %{public}@ for %{public}@";
    v24 = v21;
    v25 = OS_LOG_TYPE_ERROR;
    v26 = 32;
LABEL_14:
    _os_log_impl(&dword_0, v24, v25, v23, buf, v26);
    goto LABEL_15;
  }

  path = [v16 path];
  v19 = [NSData dataWithContentsOfFile:path];

  if (!v19)
  {
    v21 = _MADLog(@"Download");
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    *buf = 138543618;
    v37 = v16;
    v38 = 2114;
    v39 = fromCopy;
    v23 = "could not load PMV file after download: %{public}@ from %{public}@";
    v24 = v21;
    v25 = OS_LOG_TYPE_DEFAULT;
    v26 = 22;
    goto LABEL_14;
  }

  v34 = 0;
  v33 = [NSJSONSerialization JSONObjectWithData:v19 options:0 error:&v34];
  v20 = v34;
  if (!v20)
  {
    if (v33)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (dateCopy)
        {
          v29 = _MADLog(@"Download");
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v37 = dateCopy;
            v38 = 2114;
            v39 = fromCopy;
            _os_log_impl(&dword_0, v29, OS_LOG_TYPE_DEFAULT, "The PMV posting date is: %{public}@ from %{public}@", buf, 0x16u);
          }
        }

        v21 = getControlManager();
        if (v21)
        {
          path2 = [toCopy path];
          [v21 writeJsonDictionaryToFile:v33 to:path2 with:persistCopy];

          v27 = 31;
          goto LABEL_16;
        }

        v32 = _MADLog(@"Download");
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v32, OS_LOG_TYPE_DEFAULT, "Cannot write PMV as control manager is nil", buf, 2u);
        }
      }

      else
      {
        v32 = _MADLog(@"Download");
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v37 = v16;
          v38 = 2114;
          v39 = fromCopy;
          _os_log_impl(&dword_0, v32, OS_LOG_TYPE_ERROR, "PMV file contents were not JSON dictionary: %{public}@ from %{public}@", buf, 0x16u);
        }
      }
    }

    else
    {
      v31 = _MADLog(@"Download");
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v37 = v16;
        v38 = 2114;
        v39 = fromCopy;
        _os_log_impl(&dword_0, v31, OS_LOG_TYPE_ERROR, "could not load PMV JSON after download: %{public}@ from %{public}@", buf, 0x16u);
      }
    }

    v27 = 5;
    v21 = v19;
    goto LABEL_16;
  }

  v21 = v20;
  v22 = _MADLog(@"Download");
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543874;
    v37 = v16;
    v38 = 2114;
    v39 = fromCopy;
    v40 = 2114;
    v41 = v21;
    _os_log_impl(&dword_0, v22, OS_LOG_TYPE_ERROR, "could not load PMV JSON after download: %{public}@ from %{public}@ error %{public}@", buf, 0x20u);
  }

LABEL_15:
  v27 = 5;
LABEL_16:

  objc_autoreleasePoolPop(v14);
  os_activity_scope_leave(&state);

  return v27;
}

- (BOOL)decryptContentEncryptedAssetAtPathIfRequired:(id)required
{
  requiredCopy = required;
  keyManager = [(DownloadManager *)self keyManager];
  if (!requiredCopy || ([requiredCopy isFileURL] & 1) == 0)
  {
    v12 = _MADLog(@"Download");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      isFileURL = [requiredCopy isFileURL];
      v14 = @"NO";
      if (isFileURL)
      {
        v14 = @"YES";
      }

      *buf = 138412546;
      v19 = requiredCopy;
      v20 = 2112;
      v21 = v14;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "Invalid value(expected valid file url) passed in for assetPath: %@ isFileURL: %@", buf, 0x16u);
    }

    v10 = 0;
    v8 = 0;
    v7 = 0;
    v6 = 0;
    goto LABEL_11;
  }

  v6 = [requiredCopy URLByAppendingPathComponent:@"Info.plist" isDirectory:0];
  v17 = 0;
  v7 = [NSDictionary dictionaryWithContentsOfURL:v6 error:&v17];
  v8 = v17;
  if (!v7)
  {
    v12 = _MADLog(@"Download");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v19 = requiredCopy;
      v20 = 2114;
      v21 = v8;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "Info plist does not exist under location %{public}@: %{public}@", buf, 0x16u);
    }

    v10 = 0;
    v7 = 0;
    goto LABEL_11;
  }

  v16 = 0;
  v9 = [keyManager decryptContentEncryptedAssetAtURL:requiredCopy assetAttributes:v7 error:&v16];
  v10 = v16;
  if ((v9 & 1) == 0)
  {
    v12 = _MADLog(@"Download");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v19 = requiredCopy;
      v20 = 2112;
      v21 = v10;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "Failed to decrypt ContentEncrypted asset at %@ : %@", buf, 0x16u);
    }

LABEL_11:

    v11 = 0;
    goto LABEL_12;
  }

  v11 = 1;
LABEL_12:

  return v11;
}

- (int64_t)processAssetDownload:(id)download with:(id)with and:(id)and shouldMove:(BOOL)move extractorExists:(BOOL)exists
{
  moveCopy = move;
  downloadCopy = download;
  withCopy = with;
  andCopy = and;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v15 = _os_activity_create(&dword_0, "DownloadManager:processAssetDownload", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v15, &state);

  if (exists)
  {
    v16 = assetTypeFromNormalized(downloadCopy);
    v17 = getPathToStagedFile(v16, andCopy, 0);
    v18 = v17;
    if (v17)
    {
      path = [v17 path];
      aks_migrate_path([path UTF8String]);

      if ([(DownloadManager *)self decryptContentEncryptedAssetAtPathIfRequired:v18])
      {
        v20 = getControlManager();
        if (v20)
        {
          if (!moveCopy)
          {
            v23 = 0;
            goto LABEL_20;
          }

          path2 = [v18 path];
          v22 = [NSURL fileURLWithPath:path2];
          [v20 moveAssetIntoRepo:v22 forType:downloadCopy forAsset:withCopy cleanUp:v18 with:andCopy];

          v23 = 31;
        }

        else
        {
          path2 = _MADLog(@"Download");
          if (os_log_type_enabled(path2, OS_LOG_TYPE_ERROR))
          {
            *v25 = 0;
            _os_log_impl(&dword_0, path2, OS_LOG_TYPE_ERROR, "Cannot move file as control manager is nil", v25, 2u);
          }

          v20 = 0;
          v23 = 0;
        }
      }

      else
      {
        path2 = _MADLog(@"Download");
        if (os_log_type_enabled(path2, OS_LOG_TYPE_ERROR))
        {
          *v25 = 0;
          _os_log_impl(&dword_0, path2, OS_LOG_TYPE_ERROR, "Failed to decrypt asset content", v25, 2u);
        }

        v20 = 0;
        v23 = 85;
      }
    }

    else
    {
      path2 = _MADLog(@"Download");
      if (os_log_type_enabled(path2, OS_LOG_TYPE_DEFAULT))
      {
        *v25 = 0;
        _os_log_impl(&dword_0, path2, OS_LOG_TYPE_DEFAULT, "Error, download failed due to invalid staging path", v25, 2u);
      }

      v18 = 0;
      v20 = 0;
      v23 = 33;
    }
  }

  else
  {
    path2 = _MADLog(@"Download");
    v23 = 16;
    if (os_log_type_enabled(path2, OS_LOG_TYPE_ERROR))
    {
      *v25 = 0;
      v23 = 16;
      _os_log_impl(&dword_0, path2, OS_LOG_TYPE_ERROR, "Error, download failed due to nil extractor", v25, 2u);
    }

    v18 = 0;
    v16 = 0;
    v20 = 0;
  }

LABEL_20:
  os_activity_scope_leave(&state);

  return v23;
}

- (void)handleSuccessfulDownload:(id)download task:(id)task taskId:(id)id shouldMove:(BOOL)move extractorExists:(BOOL)exists postedDate:(id)date notModified:(BOOL)modified
{
  existsCopy = exists;
  moveCopy = move;
  downloadCopy = download;
  taskCopy = task;
  idCopy = id;
  dateCopy = date;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v16 = _os_activity_create(&dword_0, "DownloadManager:handleSuccessfulDownload", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v16, &state);

  if (!taskCopy)
  {
    v29 = _MADLog(@"Download");
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v45 = idCopy;
      v30 = "Task descriptor is nil, skipping. task %{public}@";
LABEL_16:
      _os_log_impl(&dword_0, v29, OS_LOG_TYPE_ERROR, v30, buf, 0xCu);
    }

LABEL_17:

    [(DownloadManager *)self queryNSUrlSessiondAndUpdateState];
    v22 = 0;
    v31 = 0;
    v26 = 0;
    v24 = 0;
    v25 = 0;
    v20 = 0;
    v41 = 0;
    v18 = 0;
    goto LABEL_18;
  }

  v17 = disassembleTaskDescriptor(taskCopy);
  v18 = v17;
  if (!v17)
  {
    v29 = _MADLog(@"Download");
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v45 = idCopy;
      v30 = "Task info is nil, skipping. task %{public}@";
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  v41 = [v17 objectForKey:@"isXml"];
  intValue = [v41 intValue];
  if (intValue)
  {
    v20 = [v18 objectForKey:@"normalizedAssetType"];
    v21 = assetTypeFromNormalized(v20);
    v22 = v21;
    if (!v20 || !v21)
    {
      v33 = _MADLog(@"Download");
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v45 = taskCopy;
        v46 = 2114;
        v47 = idCopy;
        _os_log_impl(&dword_0, v33, OS_LOG_TYPE_ERROR, "Could not create asset type from: %{public}@. task %{public}@", buf, 0x16u);
      }

      v25 = 0;
      v24 = 0;
      v26 = 0;
      v31 = 0;
      if (!v22)
      {
        v22 = 0;
        v31 = 0;
        v26 = 0;
        v24 = 0;
        goto LABEL_18;
      }

LABEL_35:
      v35 = getPathToStagedFile(v22, taskCopy, 0);
      if (v35)
      {
        v38 = +[NSFileManager defaultManager];
        path = [v35 path];
        [v38 removeItemAtPath:path error:0];
      }

      goto LABEL_18;
    }

    v23 = [v18 objectForKey:@"Purpose"];
    v24 = normalizePurpose(v23);

    v25 = repositoryPath(v22);
    if (intValue != 4)
    {
      if (intValue == 3)
      {
        v26 = getPathToPmvFile(v22);
        v34 = [(DownloadManager *)self massagePmvAndPersist:taskCopy from:downloadCopy to:v26 postedDate:dateCopy];
        goto LABEL_29;
      }

      if (intValue != 1)
      {
        v31 = [v18 objectForKey:@"assetIdentifier"];
        v28 = [(DownloadManager *)self processAssetDownload:v20 with:v31 and:taskCopy shouldMove:moveCopy extractorExists:existsCopy];
        v26 = 0;
LABEL_33:
        if (v28 == &dword_1C + 3)
        {
          goto LABEL_18;
        }

        [(DownloadManager *)self taskFinishedUpdateState:taskCopy with:v28 fromLocation:@"handleSuccessfulDownload"];
        if (!v28)
        {
          goto LABEL_18;
        }

        goto LABEL_35;
      }
    }

    v26 = assembleXmlPathWithPurpose(v22, v20, v25, v24);
    if (modified)
    {
      v27 = [v18 safeStringForKey:@"AutoAssetJob"];
      if (v27)
      {
        v28 = (&dword_C + 2);
      }

      else
      {
        v37 = getControlManager();
        v28 = [v37 updateLastFetchedDate:v20 assetType:v22 withPurpose:v24 with:taskCopy];
      }

      goto LABEL_32;
    }

    v34 = [(DownloadManager *)self massageXmlAndPersist:v22 from:downloadCopy to:v26 with:taskCopy postedDate:dateCopy considerCaching:intValue == 1];
LABEL_29:
    v28 = v34;
LABEL_32:
    v31 = 0;
    goto LABEL_33;
  }

  v32 = _MADLog(@"Download");
  if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543618;
    v45 = taskCopy;
    v46 = 2114;
    v47 = idCopy;
    _os_log_impl(&dword_0, v32, OS_LOG_TYPE_ERROR, "Could not parse the taskDescriptor of: %{public}@. task %{public}@", buf, 0x16u);
  }

  [(DownloadManager *)self queryNSUrlSessiondAndUpdateState];
  v22 = 0;
  v31 = 0;
  v26 = 0;
  v24 = 0;
  v25 = 0;
  v20 = 0;
LABEL_18:

  os_activity_scope_leave(&state);
}

- (void)indicateAutoDownloadJobFinished:(int)finished downloadInfo:(id)info performingAutoAssetJob:(id)job ofJobType:(id)type
{
  infoCopy = info;
  jobCopy = job;
  typeCopy = type;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v12 = _os_activity_create(&dword_0, "DownloadManager:indicateAutoDownloadJobFinished", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v12, &state);

  if ([SUCore stringIsEqual:typeCopy to:@"catalog_job"])
  {
    if (finished)
    {
      v13 = stringForMADownloadResult(finished);
      MAErrorForDownloadResultWithUnderlying(finished, 0, @"Catalog download failed: %@(%ld)", v14, v15, v16, v17, v18, v13);
    }

    else
    {
      v13 = stringForMADownloadResult(3uLL);
      MAErrorForDownloadResultWithUnderlying(3, 0, @"Catalog download finished indication at unexpected point - reporting as: %@(%ld)", v32, v33, v34, v35, v36, v13);
    }
    v25 = ;

    [MADAutoAssetControlManager catalogDownloadJobFinished:jobCopy withCatalog:0 error:v25];
  }

  else if ([SUCore stringIsEqual:typeCopy to:@"asset_job"])
  {
    if (finished)
    {
      v19 = stringForMADownloadResult(finished);
      v25 = MAErrorForDownloadResultWithUnderlying(finished, 0, @"Asset download failed: %@(%ld)", v20, v21, v22, v23, v24, v19);
    }

    else
    {
      v25 = 0;
    }

    [MADAutoAssetControlManager assetDownloadJobFinished:jobCopy error:v25];
  }

  else if ([SUCore stringIsEqual:typeCopy to:@"config_job"])
  {
    if (finished)
    {
      v26 = stringForMAOperationResult(finished);
      v25 = MAErrorForDownloadResultWithUnderlying(finished, 0, @"Configuration change for download failed: %@(%ld)", v27, v28, v29, v30, v31, v26);
    }

    else
    {
      v25 = 0;
    }

    [MADAutoAssetControlManager assetConfigJobFinished:jobCopy withDownloadInfo:infoCopy error:v25];
  }

  else
  {
    v37 = _MADLog(@"Download");
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v40 = typeCopy;
      v41 = 2114;
      v42 = jobCopy;
      _os_log_impl(&dword_0, v37, OS_LOG_TYPE_ERROR, "{indicateDownloadJobFinished} unknown job-type(%{public}@) for autoAssetJobID:%{public}@", buf, 0x16u);
    }

    v25 = 0;
  }

  os_activity_scope_leave(&state);
}

- (void)indicateDownloadJobFinished:(int)finished usingXPCConnection:(id)connection withXPCMessage:(id)message performingAutoAssetJob:(id)job ofJobType:(id)type
{
  if (job)
  {
    [(DownloadManager *)self indicateAutoDownloadJobFinished:*&finished downloadInfo:0 performingAutoAssetJob:job ofJobType:type];
  }

  else
  {
    [(DownloadManager *)self indicateDownloadJobFinished:*&finished usingXPCConnection:connection withXPCMessage:message, 0, type];
  }
}

- (id)lastModifiedDateFromResponse:(id)response
{
  responseCopy = response;
  allHeaderFields = [responseCopy allHeaderFields];
  allKeys = [allHeaderFields allKeys];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [allKeys countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v16;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(allKeys);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if (![@"Last-Modified" caseInsensitiveCompare:v11])
        {
          v12 = [allHeaderFields objectForKey:v11];

          v8 = v12;
        }
      }

      v7 = [allKeys countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
    if (v8)
    {
      v13 = ASDateForHTTPDateString(v8);
      goto LABEL_14;
    }
  }

  else
  {
    v8 = 0;
  }

  v13 = 0;
LABEL_14:

  return v13;
}

- (void)activityNotification:(id)notification ofStatusChange:(unint64_t)change withReason:(id)reason
{
  reasonCopy = reason;
  notificationCopy = notification;
  v9 = [NSString alloc];
  v11 = [MADActivityTracker nameOfStatus:change];
  v10 = [v9 initWithFormat:@"unexpected statusChange(%@)", v11];
  [MADActivityManager warningForActivity:notificationCopy fromMethod:@"activityNotification" leaderNote:v10 warning:reasonCopy];
}

- (BOOL)_shouldLogAssetDetails:(id)details extraServerOptions:(id)options
{
  detailsCopy = details;
  optionsCopy = options;
  v10 = 1;
  if (![(DownloadManager *)self _isAutoAsset:detailsCopy])
  {
    v8 = [detailsCopy objectForKeyedSubscript:@"AssetType"];
    updated = isSoftwareUpdateType(v8);

    if ((updated & 1) == 0 && (!optionsCopy || ![optionsCopy count]))
    {
      v10 = 0;
    }
  }

  return v10;
}

- (id)_getKeysNotLoggedForV2Response
{
  if (_getKeysNotLoggedForV2Response_v2NotLoggedKeysOnce != -1)
  {
    [DownloadManager _getKeysNotLoggedForV2Response];
  }

  v3 = _getKeysNotLoggedForV2Response_v2NotLoggedKeys;

  return v3;
}

void __49__DownloadManager__getKeysNotLoggedForV2Response__block_invoke(id a1)
{
  v1 = [NSSet alloc];
  v5 = @"_AssetReceipt";
  v2 = [NSArray arrayWithObjects:&v5 count:1];
  v3 = [v1 initWithArray:v2];
  v4 = _getKeysNotLoggedForV2Response_v2NotLoggedKeys;
  _getKeysNotLoggedForV2Response_v2NotLoggedKeys = v3;
}

- (id)_getKeysNotLoggedForAutoResponse
{
  if (_getKeysNotLoggedForAutoResponse_autoNotLoggedKeysOnce != -1)
  {
    [DownloadManager _getKeysNotLoggedForAutoResponse];
  }

  v3 = _getKeysNotLoggedForAutoResponse_autoNotLoggedKeys;

  return v3;
}

void __51__DownloadManager__getKeysNotLoggedForAutoResponse__block_invoke(id a1)
{
  v1 = [NSSet alloc];
  v5[0] = @"_AssetReceipt";
  v5[1] = @"_MeasurementAlgorithm";
  v5[2] = @"_Measurement";
  v5[3] = @"_Measurement-SHA256";
  v5[4] = @"SupportedDeviceNames";
  v5[5] = @"SupportedDevices";
  v5[6] = @"UnsupportedDevices";
  v5[7] = @"_OSVersionCompatibilities";
  v5[8] = @"version";
  v2 = [NSArray arrayWithObjects:v5 count:9];
  v3 = [v1 initWithArray:v2];
  v4 = _getKeysNotLoggedForAutoResponse_autoNotLoggedKeys;
  _getKeysNotLoggedForAutoResponse_autoNotLoggedKeys = v3;
}

- (id)_parseForAssetDetailsToLog:(id)log
{
  logCopy = log;
  if ([(DownloadManager *)self _isAutoAsset:logCopy])
  {
    [(DownloadManager *)self _getKeysNotLoggedForAutoResponse];
  }

  else
  {
    [(DownloadManager *)self _getKeysNotLoggedForV2Response];
  }
  v5 = ;
  v6 = objc_alloc_init(NSMutableDictionary);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = logCopy;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        if (([v5 containsObject:{v12, v15}] & 1) == 0)
        {
          v13 = [v7 objectForKeyedSubscript:v12];
          [v6 setSafeObject:v13 forKey:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  return v6;
}

- (void)_logResponseBody:(id)body nonce:(id)nonce extraServerOptions:(id)options
{
  bodyCopy = body;
  nonceCopy = nonce;
  optionsCopy = options;
  v9 = objc_alloc_init(NSMutableDictionary);
  v10 = objc_alloc_init(NSMutableArray);
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v11 = bodyCopy;
  v12 = [v11 countByEnumeratingWithState:&v49 objects:v62 count:16];
  v38 = v11;
  v39 = v9;
  if (!v12)
  {
    LOBYTE(v15) = 0;
    v43 = 0;
    goto LABEL_35;
  }

  v14 = v12;
  LOBYTE(v15) = 0;
  v43 = 0;
  v16 = *v50;
  *&v13 = 138543362;
  v36 = v13;
  v37 = *v50;
  do
  {
    v17 = 0;
    v41 = v14;
    do
    {
      if (*v50 != v16)
      {
        objc_enumerationMutation(v11);
      }

      v18 = *(*(&v49 + 1) + 8 * v17);
      if ([v18 isEqualToString:{@"Assets", v36}])
      {
        v42 = v17;
        v19 = [v11 objectForKeyedSubscript:@"Assets"];
        if (v19)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if ([v19 count])
            {
              v20 = [v19 objectAtIndexedSubscript:0];
              v15 = [(DownloadManager *)self _shouldLogAssetDetails:v20 extraServerOptions:optionsCopy];

              v47 = 0u;
              v48 = 0u;
              v45 = 0u;
              v46 = 0u;
              v19 = v19;
              v21 = [v19 countByEnumeratingWithState:&v45 objects:v61 count:16];
              if (v21)
              {
                v22 = v21;
                v23 = *v46;
                do
                {
                  for (i = 0; i != v22; ++i)
                  {
                    if (*v46 != v23)
                    {
                      objc_enumerationMutation(v19);
                    }

                    if (v15)
                    {
                      v25 = *(*(&v45 + 1) + 8 * i);
                      v26 = [(DownloadManager *)self _parseForAssetDetailsToLog:v25];
                      if (v26)
                      {
                        [v10 addObject:v26];
                      }

                      else
                      {
                        v27 = _MADLog(@"Download");
                        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 138543618;
                          v54 = nonceCopy;
                          v55 = 2114;
                          v56 = v25;
                          _os_log_impl(&dword_0, v27, OS_LOG_TYPE_ERROR, "[PallasNonce:%{public}@] {_logResponseBody} ANOMALY:_parseForAssetDetailsToLog returned nil for detailsToLog for the following asset meta data: %{public}@", buf, 0x16u);
                        }
                      }
                    }
                  }

                  v43 += v22;
                  v22 = [v19 countByEnumeratingWithState:&v45 objects:v61 count:16];
                }

                while (v22);
              }

              v11 = v38;
              v9 = v39;
              v16 = v37;
              v14 = v41;
            }
          }

          else
          {
            v28 = _MADLog(@"Download");
            if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
            {
              *buf = v36;
              v54 = nonceCopy;
              _os_log_impl(&dword_0, v28, OS_LOG_TYPE_ERROR, "[PallasNonce:%{public}@] {_logResponseBody} ANOMALY: list of assets is not of type NSArray", buf, 0xCu);
            }
          }
        }
      }

      else
      {
        if ([v18 isEqualToString:@"Transformations"])
        {
          goto LABEL_31;
        }

        v42 = v17;
        v19 = [v11 objectForKeyedSubscript:v18];
        [v9 setSafeObject:v19 forKey:v18];
      }

      v17 = v42;
LABEL_31:
      v17 = v17 + 1;
    }

    while (v17 != v14);
    v14 = [v11 countByEnumeratingWithState:&v49 objects:v62 count:16];
  }

  while (v14);
LABEL_35:

  v29 = _MADLog(@"Download");
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v54 = nonceCopy;
    v55 = 2048;
    v56 = v43;
    v57 = 2114;
    v58 = v9;
    _os_log_impl(&dword_0, v29, OS_LOG_TYPE_DEFAULT, "[PallasNonce:%{public}@] Total asset count: %ld. The response body is: %{public}@", buf, 0x20u);
  }

  if (((v43 > 0) & v15) == 1)
  {
    v30 = [v10 count];
    if (v43 == v30)
    {
      goto LABEL_42;
    }

    v31 = _MADLog(@"Download");
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v54 = nonceCopy;
      v55 = 2048;
      v56 = v43;
      v57 = 2048;
      v58 = v30;
      _os_log_impl(&dword_0, v31, OS_LOG_TYPE_ERROR, "[PallasNonce:%{public}@] {_logResponseBody} ANOMALY:_parseForAssetDetailsToLog: number of asset details to log do not match assets found.  Assets found: %ld.  Asset details to log: %ld", buf, 0x20u);
    }

    if (v30 >= 1)
    {
LABEL_42:
      v32 = 0;
      do
      {
        v33 = _MADLog(@"Download");
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          v34 = v32 + 1;
          v35 = [v10 objectAtIndexedSubscript:v32];
          *buf = 138544130;
          v54 = nonceCopy;
          v55 = 2048;
          v56 = v34;
          v57 = 2048;
          v58 = v43;
          v59 = 2114;
          v60 = v35;
          _os_log_impl(&dword_0, v33, OS_LOG_TYPE_DEFAULT, "[PallasNonce:%{public}@] Details for asset #%ld [of %ld] is: %{public}@", buf, 0x2Au);

          v32 = v34;
        }

        else
        {
          ++v32;
        }
      }

      while (v32 != v30);
    }
  }
}

- (id)grabTaskID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    v4 = +[NSRegularExpression regularExpressionWithPattern:options:error:](NSRegularExpression, "regularExpressionWithPattern:options:error:", @"<([0-9A-F]{8}-[0-9A-F]{4}-[0-9A-F]{4}-[0-9A-F]{4}-[0-9A-F]{12})>", 0, 0);
    v5 = [v4 firstMatchInString:dCopy options:0 range:{0, objc_msgSend(dCopy, "length")}];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 rangeAtIndex:1];
      v9 = [dCopy substringWithRange:{v7, v8}];
    }

    else
    {
      v9 = &stru_4BD3F0;
    }
  }

  else
  {
    v9 = &stru_4BD3F0;
  }

  return v9;
}

- (void)isBuddyRunning
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"NSString *getBYSetupAssistantBundleIdentifier(void)"];
  [v0 handleFailureInFunction:v1 file:@"DownloadManager.m" lineNumber:89 description:{@"%s", dlerror()}];

  __break(1u);
}

@end