@interface BAAgentCore
+ (id)sharedCore;
- (BAAgentCore)init;
- (BOOL)__schedulingPermittedWithIdentifier:(id)identifier downloadQueue:(id *)queue appInfo:(id *)info error:(id *)error;
- (BOOL)_applicationIdentifierAllowsBackgroundActivity:(id)activity;
- (BOOL)_checkConnection:(id)connection hasAllowedTeamIDForIdentifier:(id)identifier;
- (BOOL)_checkIdentifierHasExtension:(id)extension;
- (BOOL)downloadQueue:(id)queue permittedToStartDownloadsWithNecessity:(int64_t)necessity;
- (BOOL)listener:(id)listener shouldAcceptNewClientConnection:(id)connection;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (BOOL)listener:(id)listener shouldAcceptNewSPIConnection:(id)connection;
- (BOOL)removeAppWithAppInfo:(id)info error:(id *)error;
- (id)_appReviewManifestDownloadForApplicationRecord:(id)record applicationEvent:(int64_t)event applicationGroupIdentifier:(id)identifier applicationInfo:(id)info;
- (id)_appStoreManifestDownloadForApplicationRecord:(id)record applicationEvent:(int64_t)event applicationGroupIdentifier:(id)identifier applicationInfo:(id)info;
- (id)_connectionReplyQueueForIdentifier:(id)identifier;
- (id)_connectionsForApplicationIdentifier:(id)identifier;
- (id)_developmentOverrideManifestDownloadForApplicationRecord:(id)record applicationEvent:(int64_t)event applicationGroupIdentifier:(id)identifier applicationInfo:(id)info;
- (id)_downloadQueueForIdentifier:(id)identifier create:(BOOL)create error:(id *)error;
- (id)_downloaderExtensionForApplicationIdentifier:(id)identifier cacheOnly:(BOOL)only;
- (id)_essentialAssetsProgressDescriptorWithAppInfo:(id)info essentialAssetState:(int64_t)state sizeDownloaded:(int64_t)downloaded totalDownloadSize:(int64_t)size;
- (id)_localCacheManifestDownloadForApplicationRecord:(id)record applicationEvent:(int64_t)event applicationGroupIdentifier:(id)identifier applicationInfo:(id)info;
- (id)_systemConnections;
- (id)_testFlightManifestDownloadForApplicationRecord:(id)record applicationEvent:(int64_t)event applicationGroupIdentifier:(id)identifier applicationInfo:(id)info;
- (id)applicationInfoForIdentifier:(id)identifier;
- (id)applicationInfoIfExistsForIdentifier:(id)identifier;
- (id)downloadForIdentifier:(id)identifier forClientIdentifier:(id)clientIdentifier;
- (id)downloaderExtensionForApplicationIdentifier:(id)identifier cacheOnly:(BOOL)only;
- (id)downloadsForIdentifier:(id)identifier;
- (id)essentialAssetsProgressDescriptorWithIdentifier:(id)identifier;
- (id)updateApplicationInformationForIdentifier:(id)identifier bundleURLPath:(id)path;
- (int64_t)applicationExtensionStateForIdentifier:(id)identifier;
- (int64_t)applicationStateForIdentifier:(id)identifier;
- (unint64_t)_downloadsInProgress;
- (unint64_t)_downloadsInProgressForIdentifier:(id)identifier;
- (void)__handleApplicationLaunchedWithInfo:(id)info;
- (void)_asyncAwaitLockdownClientMessage:(_lockdown_connection *)message waitQueue:(id)queue;
- (void)_backgroundActivityStateDidChange;
- (void)_clearState;
- (void)_debugDownloadTime:(BOOL)time clear:(BOOL)clear;
- (void)_debugShutdown;
- (void)_deleteDownloadQueueForIdentifier:(id)identifier;
- (void)_deserializeApplicationList;
- (void)_deserializeDownloadQueues;
- (void)_deserializeState;
- (void)_deserializeUndeliveredEvents;
- (void)_pauseDownloads;
- (void)_pokeScheduler;
- (void)_printDebugState;
- (void)_processLockdownClientMessage:(id)message withConnection:(_lockdown_connection *)connection withQueue:(id)queue;
- (void)_processRunningBoardStateUpdate:(id)update forProcess:(id)process;
- (void)_requestNetworkConsentWithApplication:(id)application userInitiated:(BOOL)initiated;
- (void)_scheduleDownloads;
- (void)_serializeApplicationState;
- (void)_serializeDownloadQueues;
- (void)_serializeState;
- (void)_serializeUndeliveredEvents;
- (void)_shutdownAgent;
- (void)_updateProcessMonitor;
- (void)_updateStateForAppBundleIdentifier:(id)identifier state:(int64_t)state;
- (void)_updateStateForAppExtensionBundleIdentifier:(id)identifier appBundleIdentifier:(id)bundleIdentifier state:(int64_t)state;
- (void)applicationInstallCanceledWithIdentifier:(id)identifier userInitiated:(BOOL)initiated;
- (void)applicationPlaceholderReadyWithIdentifier:(id)identifier placeholderBundleURL:(id)l userInitiated:(BOOL)initiated;
- (void)applicationPrepareWithDescriptor:(id)descriptor;
- (void)cancelDownload:(id)download forClientIdentifier:(id)identifier completionBlock:(id)block;
- (void)connectionDisconnected:(id)disconnected;
- (void)doPeriodicUpdateCheck;
- (void)download:(id)download didReceiveChallenge:(id)challenge completionHandler:(id)handler;
- (void)download:(id)download didWriteBytes:(int64_t)bytes totalBytesWritten:(int64_t)written totalBytesExpectedToWrite:(int64_t)write;
- (void)download:(id)download failedWithError:(id)error;
- (void)download:(id)download finishedWithFileURL:(id)l;
- (void)downloadDidBegin:(id)begin;
- (void)downloadDidPause:(id)pause;
- (void)downloadQueue:(id)queue essentialAssetState:(int64_t)state bytesWritten:(int64_t)written totalBytes:(int64_t)bytes;
- (void)downloadQueue:(id)queue manifest:(id)manifest finishedWithFileURL:(id)l;
- (void)downloadTimeValidityDidChange;
- (void)extensionDisconnectedWithIdentifier:(id)identifier connectionProxy:(id)proxy;
- (void)handleApplicationLaunched:(id)launched;
- (void)invalidateExtensionWithAppInfo:(id)info;
- (void)pauseQueueWithIdentifier:(id)identifier completionBlock:(id)block;
- (void)resumeQueueWithIdentifier:(id)identifier completionBlock:(id)block;
- (void)saveApplicationState;
- (void)scheduleDownload:(id)download forClientIdentifier:(id)identifier notifyQueue:(id)queue completionBlock:(id)block;
- (void)setContentRequestTelemetry:(id)telemetry forDownloads:(id)downloads;
- (void)startForegroundDownload:(id)download forClientIdentifier:(id)identifier completionBlock:(id)block;
- (void)updateContentRequestTelemetryForCompletedDownload:(id)download error:(id)error;
@end

@implementation BAAgentCore

+ (id)sharedCore
{
  if (qword_100089C70 != -1)
  {
    sub_100049624();
  }

  v3 = qword_100089C68;

  return v3;
}

- (BAAgentCore)init
{
  v46.receiver = self;
  v46.super_class = BAAgentCore;
  v2 = [(BAAgentCore *)&v46 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.backgroundassets.agentcore.clientnotification.async", &_dispatch_queue_attr_concurrent);
    [(BAAgentCore *)v2 setAsyncClientNotificationQueue:v3];

    v4 = dispatch_queue_create("com.apple.backgroundassets.agentcore.connectionqueue", 0);
    [(BAAgentCore *)v2 setConnectionQueue:v4];

    v5 = dispatch_queue_create("com.apple.backgroundassets.agentcore.workqueue", 0);
    [(BAAgentCore *)v2 setWorkQueue:v5];

    v6 = dispatch_queue_create("com.apple.backgroundassets.agentcore.telemetryQueue", 0);
    [(BAAgentCore *)v2 setTelemetryQueue:v6];

    v7 = dispatch_queue_create("com.apple.backgroundassets.agentcore.lockdown", 0);
    [(BAAgentCore *)v2 setLockDownQueue:v7];

    v8 = [[NSMutableArray alloc] initWithCapacity:32];
    [(BAAgentCore *)v2 setConnections:v8];

    v9 = objc_alloc_init(NSMutableDictionary);
    [(BAAgentCore *)v2 setExtensionConnections:v9];

    v10 = objc_alloc_init(NSMutableDictionary);
    [(BAAgentCore *)v2 setDownloadQueuesByClientIdentifier:v10];

    v11 = objc_alloc_init(NSMutableDictionary);
    [(BAAgentCore *)v2 setTelemetryByDownloadUniqueIdentifier:v11];

    v12 = objc_alloc_init(NSMutableArray);
    [(BAAgentCore *)v2 setApplicationState:v12];

    v13 = objc_alloc_init(NSMutableDictionary);
    [(BAAgentCore *)v2 setConnectionReplyQueue:v13];

    v14 = objc_alloc_init(NSMutableArray);
    [(BAAgentCore *)v2 setUnhandledDownloadEvents:v14];

    v15 = [[BAAgentDownloadRulesEngine alloc] initWithDelegate:v2];
    [(BAAgentCore *)v2 setRulesEngine:v15];

    v16 = [[CoreTelephonyClient alloc] initWithQueue:0];
    [(BAAgentCore *)v2 setTelephonyClient:v16];

    workQueue = [(BAAgentCore *)v2 workQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100017024;
    block[3] = &unk_100079260;
    v18 = v2;
    v45 = v18;
    dispatch_async(workQueue, block);

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, sub_100017060, @"kKeepAppsUpToDateEnabledChangedNotification", 0, CFNotificationSuspensionBehaviorCoalesce);
    v20 = +[NSNotificationCenter defaultCenter];
    [v20 addObserver:v18 selector:"_backgroundActivityStateDidChange" name:NSProcessInfoPowerStateDidChangeNotification object:0];

    v21 = [NSXPCListener alloc];
    v22 = [v21 initWithMachServiceName:off_100089350[0]];
    [(BAAgentCore *)v18 setListener:v22];

    listener = [(BAAgentCore *)v18 listener];
    connectionQueue = [(BAAgentCore *)v18 connectionQueue];
    [listener _setQueue:connectionQueue];

    listener2 = [(BAAgentCore *)v18 listener];
    [listener2 setDelegate:v18];

    listener3 = [(BAAgentCore *)v18 listener];
    [listener3 resume];

    v27 = [NSXPCListener alloc];
    v28 = [v27 initWithMachServiceName:off_100089348[0]];
    [(BAAgentCore *)v18 setSpiListener:v28];

    spiListener = [(BAAgentCore *)v18 spiListener];
    connectionQueue2 = [(BAAgentCore *)v18 connectionQueue];
    [spiListener _setQueue:connectionQueue2];

    spiListener2 = [(BAAgentCore *)v18 spiListener];
    [spiListener2 setDelegate:v18];

    spiListener3 = [(BAAgentCore *)v18 spiListener];
    [spiListener3 resume];

    v33 = sub_1000104FC();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "Started listening for clients.", buf, 2u);
    }

    lockDownQueue = [(BAAgentCore *)v18 lockDownQueue];
    v35 = v18;
    v42 = v35;
    v36 = lockdown_checkin_xpc();

    v37 = sub_1000104FC();
    v38 = v37;
    if (v36)
    {
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        sub_100049638();
      }
    }

    else if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, "Started listening for lockdown clients.", buf, 2u);
    }

    rulesEngine = [(BAAgentCore *)v35 rulesEngine];
    [rulesEngine resume];

    v40 = sub_1000104FC();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "Started listening for xpc activity.", buf, 2u);
    }
  }

  return v2;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  serviceName = [listenerCopy serviceName];
  v9 = [serviceName isEqualToString:off_100089350[0]];

  if (v9)
  {
    v10 = [(BAAgentCore *)self listener:listenerCopy shouldAcceptNewClientConnection:connectionCopy];
LABEL_5:
    v13 = v10;
    goto LABEL_9;
  }

  serviceName2 = [listenerCopy serviceName];
  v12 = [serviceName2 isEqualToString:off_100089348[0]];

  if (v12)
  {
    v10 = [(BAAgentCore *)self listener:listenerCopy shouldAcceptNewSPIConnection:connectionCopy];
    goto LABEL_5;
  }

  v14 = sub_10001060C();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    sub_1000496AC(connectionCopy, v14);
  }

  v13 = 0;
LABEL_9:

  return v13;
}

- (BOOL)listener:(id)listener shouldAcceptNewClientConnection:(id)connection
{
  connectionCopy = connection;
  v16 = 0;
  v6 = [[BAAgentClientConnection alloc] initWithNSXPCConnection:connectionCopy error:&v16];
  v7 = v16;
  workQueue = [(BAAgentCore *)self workQueue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000173A8;
  v12[3] = &unk_100079720;
  v13 = v6;
  v14 = connectionCopy;
  selfCopy = self;
  v9 = connectionCopy;
  v10 = v6;
  dispatch_async(workQueue, v12);

  return v10 != 0;
}

- (BOOL)listener:(id)listener shouldAcceptNewSPIConnection:(id)connection
{
  connectionCopy = connection;
  v6 = sub_10001060C();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67240192;
    processIdentifier = [connectionCopy processIdentifier];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "New SPI connection from pid:%{public}d", buf, 8u);
  }

  v7 = [connectionCopy valueForEntitlement:@"com.apple.backgroundassets.system"];
  if ([v7 BOOLValue])
  {

LABEL_6:
    v22 = 0;
    v10 = [[BAAgentSystemConnection alloc] initWithNSXPCConnection:connectionCopy error:&v22];
    v11 = v22;
    workQueue = [(BAAgentCore *)self workQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001786C;
    block[3] = &unk_100079940;
    v18 = v10;
    selfCopy = self;
    v20 = connectionCopy;
    v21 = v11;
    v13 = v11;
    v14 = v10;
    dispatch_async(workQueue, block);

    v15 = v14 != 0;
    goto LABEL_10;
  }

  v8 = [connectionCopy valueForEntitlement:@"com.apple.backgroundassets.appstore"];
  bOOLValue = [v8 BOOLValue];

  if (bOOLValue)
  {
    goto LABEL_6;
  }

  v14 = sub_10001060C();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    sub_10004978C(connectionCopy);
  }

  v15 = 0;
LABEL_10:

  return v15;
}

- (void)connectionDisconnected:(id)disconnected
{
  disconnectedCopy = disconnected;
  if (disconnectedCopy)
  {
    workQueue = [(BAAgentCore *)self workQueue];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100017A34;
    v6[3] = &unk_100079300;
    v6[4] = self;
    v7 = disconnectedCopy;
    dispatch_async(workQueue, v6);
  }
}

- (void)extensionDisconnectedWithIdentifier:(id)identifier connectionProxy:(id)proxy
{
  identifierCopy = identifier;
  proxyCopy = proxy;
  if (identifierCopy)
  {
    v7 = [(BAAgentCore *)self applicationInfoForIdentifier:?];
    extensionConnections = [(BAAgentCore *)self extensionConnections];
    objc_sync_enter(extensionConnections);
    extensionConnections2 = [(BAAgentCore *)self extensionConnections];
    v10 = [extensionConnections2 objectForKey:identifierCopy];

    if (v10 == proxyCopy)
    {
      extensionConnections3 = [(BAAgentCore *)self extensionConnections];
      [extensionConnections3 removeObjectForKey:identifierCopy];

      [v7 extensionExited];
    }

    objc_sync_exit(extensionConnections);
  }
}

- (id)downloaderExtensionForApplicationIdentifier:(id)identifier cacheOnly:(BOOL)only
{
  identifierCopy = identifier;
  v7 = [(BAAgentCore *)self _connectionReplyQueueForIdentifier:identifierCopy];
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_100017E34;
  v19 = sub_100017E44;
  v20 = 0;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100017E4C;
  v11[3] = &unk_100079968;
  v12 = identifierCopy;
  v13 = &v15;
  v11[4] = self;
  onlyCopy = only;
  v8 = identifierCopy;
  dispatch_sync(v7, v11);
  v9 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v9;
}

- (id)_downloaderExtensionForApplicationIdentifier:(id)identifier cacheOnly:(BOOL)only
{
  identifierCopy = identifier;
  v7 = [(BAAgentCore *)self applicationInfoForIdentifier:identifierCopy];
  if (([v7 allowsBackgroundActivity] & 1) == 0)
  {
    v11 = sub_100010584();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1000498C8();
    }

LABEL_6:
    v12 = 0;
    goto LABEL_7;
  }

  extensionConnections = [(BAAgentCore *)self extensionConnections];
  objc_sync_enter(extensionConnections);
  extensionConnections2 = [(BAAgentCore *)self extensionConnections];
  v10 = [extensionConnections2 objectForKey:identifierCopy];

  if (v10)
  {
    v11 = v10;
    objc_sync_exit(extensionConnections);

    v12 = v11;
LABEL_7:

    goto LABEL_8;
  }

  objc_sync_exit(extensionConnections);

  if (!only)
  {
    if ([v7 shouldLaunchExtension])
    {
      v31 = 0;
      v14 = [v7 extensionIdentityWithParentAppRecordPtr:&v31];
      v15 = v31;
      if (v14)
      {
        v16 = objc_opt_new();
        [v16 setExtensionIdentity:v14];
        v30 = 0;
        v17 = [_EXExtensionProcess extensionProcessWithConfiguration:v16 error:&v30];
        v18 = v30;
        v19 = v18;
        if (v17)
        {
          v28 = v15;
          v29 = v18;
          v20 = [v17 makeXPCConnectionWithError:&v29];
          v11 = v29;

          if (v20)
          {
            v21 = [[BADownloaderExtensionProxy alloc] initWithExtension:v17 xpcConnection:v20 parentAppRecord:v28 applicationInfo:v7];
            v22 = [(BAAgentCore *)self _checkConnection:v20 hasAllowedTeamIDForIdentifier:identifierCopy];
            if (v21 && v22)
            {
              p_super = [(BAAgentCore *)self extensionConnections];
              objc_sync_enter(p_super);
              extensionConnections3 = [(BAAgentCore *)self extensionConnections];
              [extensionConnections3 setObject:v21 forKey:identifierCopy];

              objc_sync_exit(p_super);
            }

            else
            {
              p_super = sub_100010584();
              v27 = os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR);
              if (v21)
              {
                if (v27)
                {
                  sub_100049A28(v20);
                }

                [(BADownloaderExtensionProxy *)v21 invalidate];
                p_super = &v21->super;
              }

              else if (v27)
              {
                sub_100049998(v20);
              }

              v21 = 0;
            }

            v25 = v21;
            v12 = v25;
            v15 = v28;
          }

          else
          {
            v25 = sub_100010584();
            v26 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);
            if (v11)
            {
              v15 = v28;
              if (v26)
              {
                sub_100049AB8(v11);
              }

              v12 = 0;
            }

            else
            {
              v15 = v28;
              if (v26)
              {
                sub_100049B54();
              }

              v12 = 0;
              v11 = 0;
            }
          }
        }

        else
        {
          v25 = sub_100010584();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            sub_100049B94(v19);
          }

          v12 = 0;
          v11 = v19;
        }
      }

      else
      {
        v16 = sub_100010584();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          sub_100049C30();
        }

        v12 = 0;
        v11 = 0;
      }

      goto LABEL_7;
    }

    v11 = sub_100010584();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100049930();
    }

    goto LABEL_6;
  }

  v12 = 0;
LABEL_8:

  return v12;
}

- (int64_t)applicationExtensionStateForIdentifier:(id)identifier
{
  v3 = [(BAAgentCore *)self applicationInfoForIdentifier:identifier];
  applicationExtensionState = [v3 applicationExtensionState];

  return applicationExtensionState;
}

- (int64_t)applicationStateForIdentifier:(id)identifier
{
  v3 = [(BAAgentCore *)self applicationInfoForIdentifier:identifier];
  applicationState = [v3 applicationState];

  return applicationState;
}

- (void)saveApplicationState
{
  workQueue = [(BAAgentCore *)self workQueue];
  dispatch_assert_queue_not_V2(workQueue);

  workQueue2 = [(BAAgentCore *)self workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100018388;
  block[3] = &unk_100079260;
  block[4] = self;
  dispatch_sync(workQueue2, block);
}

- (void)_deleteDownloadQueueForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  workQueue = [(BAAgentCore *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  downloadQueuesByClientIdentifier = [(BAAgentCore *)self downloadQueuesByClientIdentifier];
  [downloadQueuesByClientIdentifier removeObjectForKey:identifierCopy];
}

- (id)_downloadQueueForIdentifier:(id)identifier create:(BOOL)create error:(id *)error
{
  identifierCopy = identifier;
  workQueue = [(BAAgentCore *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  downloadQueuesByClientIdentifier = [(BAAgentCore *)self downloadQueuesByClientIdentifier];
  v11 = [downloadQueuesByClientIdentifier objectForKey:identifierCopy];

  if (!v11)
  {
    if (create)
    {
      v12 = [[BADownloadQueue alloc] initWithApplicationIdentifier:identifierCopy delegate:self];
      if (v12)
      {
        v11 = v12;
        downloadQueuesByClientIdentifier2 = [(BAAgentCore *)self downloadQueuesByClientIdentifier];
        [downloadQueuesByClientIdentifier2 setObject:v11 forKey:identifierCopy];

        goto LABEL_11;
      }

      if (error)
      {
        v14 = -104;
        goto LABEL_9;
      }
    }

    else if (error)
    {
      v14 = -105;
LABEL_9:
      sub_100027BE4(v14);
      *error = v11 = 0;
      goto LABEL_11;
    }

    v11 = 0;
  }

LABEL_11:

  return v11;
}

- (id)applicationInfoForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  applicationState = [(BAAgentCore *)self applicationState];
  objc_sync_enter(applicationState);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  applicationState2 = [(BAAgentCore *)self applicationState];
  v7 = [applicationState2 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = *v17;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v17 != v8)
      {
        objc_enumerationMutation(applicationState2);
      }

      v10 = *(*(&v16 + 1) + 8 * v9);
      applicationIdentifier = [v10 applicationIdentifier];
      v12 = [applicationIdentifier isEqualToString:identifierCopy];

      if (v12)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [applicationState2 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v13 = v10;

    if (v13)
    {
      goto LABEL_12;
    }
  }

  else
  {
LABEL_9:
  }

  v13 = [[BAApplicationInfo alloc] initWithIdentifier:identifierCopy];
  applicationState3 = [(BAAgentCore *)self applicationState];
  [applicationState3 addObject:v13];

  [(BAAgentCore *)self _updateProcessMonitor];
  [(BAAgentCore *)self _serializeApplicationState];
LABEL_12:
  objc_sync_exit(applicationState);

  return v13;
}

- (id)applicationInfoIfExistsForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  applicationState = [(BAAgentCore *)self applicationState];
  objc_sync_enter(applicationState);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  applicationState2 = [(BAAgentCore *)self applicationState];
  v7 = [applicationState2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(applicationState2);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        applicationIdentifier = [v10 applicationIdentifier];
        v12 = [applicationIdentifier isEqualToString:identifierCopy];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [applicationState2 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  objc_sync_exit(applicationState);

  return v7;
}

- (void)applicationPrepareWithDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  workQueue = [(BAAgentCore *)self workQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001894C;
  v7[3] = &unk_100079300;
  v7[4] = self;
  v8 = descriptorCopy;
  v6 = descriptorCopy;
  dispatch_async(workQueue, v7);
}

- (void)applicationPlaceholderReadyWithIdentifier:(id)identifier placeholderBundleURL:(id)l userInitiated:(BOOL)initiated
{
  identifierCopy = identifier;
  lCopy = l;
  workQueue = [(BAAgentCore *)self workQueue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100018ADC;
  v13[3] = &unk_100079990;
  initiatedCopy = initiated;
  v14 = identifierCopy;
  v15 = lCopy;
  selfCopy = self;
  v11 = lCopy;
  v12 = identifierCopy;
  dispatch_async(workQueue, v13);
}

- (void)applicationInstallCanceledWithIdentifier:(id)identifier userInitiated:(BOOL)initiated
{
  identifierCopy = identifier;
  v6 = sub_100010584();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    uTF8String = [identifierCopy UTF8String];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Event (Canceled) received for client (%{public}s)", buf, 0xCu);
  }

  v7 = [(BAAgentCore *)self applicationInfoIfExistsForIdentifier:identifierCopy];
  if (v7)
  {
    v14 = 0;
    v8 = [(BAAgentCore *)self removeAppWithAppInfo:v7 error:&v14];
    v9 = v14;
    if (v8)
    {
      v10 = dispatch_time(0, 5000000000);
      workQueue = [(BAAgentCore *)self workQueue];
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_100018E5C;
      v13[3] = &unk_100079260;
      v13[4] = self;
      dispatch_after(v10, workQueue, v13);
    }

    else
    {
      v12 = sub_100010584();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_100049C98();
      }
    }
  }

  else
  {
    v9 = sub_100010584();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100049D1C();
    }
  }
}

- (void)_requestNetworkConsentWithApplication:(id)application userInitiated:(BOOL)initiated
{
  initiatedCopy = initiated;
  applicationCopy = application;
  v7 = applicationCopy;
  if (initiatedCopy)
  {
    applicationIdentifier = [applicationCopy applicationIdentifier];
    if ([v7 setAwaitingNetworkConsent:1])
    {
      telephonyClient = [(BAAgentCore *)self telephonyClient];
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_100018F5C;
      v10[3] = &unk_1000799B8;
      v11 = applicationIdentifier;
      v12 = v7;
      [telephonyClient performNetworkAccessFlowIfAllowed:v11 ignoreForeground:1 completion:v10];
    }
  }
}

- (id)updateApplicationInformationForIdentifier:(id)identifier bundleURLPath:(id)path
{
  identifierCopy = identifier;
  pathCopy = path;
  if (pathCopy)
  {
    v8 = [[NSBundle alloc] _initUniqueWithURL:pathCopy];
    v9 = v8;
    if (v8)
    {
      infoDictionary = [v8 infoDictionary];
      if (infoDictionary)
      {
        v11 = infoDictionary;
        v12 = [LSApplicationRecord alloc];
        bundleURL = [v9 bundleURL];
        v33 = 0;
        persistentIdentifier = [v12 initWithURL:bundleURL allowPlaceholder:1 error:&v33];
        v15 = v33;

        if (persistentIdentifier)
        {
          [(BAAgentCore *)self applicationInfoForIdentifier:identifierCopy];
          v11 = v16 = v11;
LABEL_15:

          v23 = sub_100010584();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            v24 = @"N/A";
            if (pathCopy)
            {
              v24 = pathCopy;
            }

            *buf = 138543618;
            v35 = identifierCopy;
            v36 = 2114;
            v37 = v24;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Application info for (%{public}@) is being updated based on URL:(%{public}@)", buf, 0x16u);
          }

          v25 = [BAApplicationConfigurationOverrides overridesForAppBundleIdentifier:identifierCopy];
          [v11 updateApplicationWithInfoDictionary:v16 applicationRecord:persistentIdentifier overrides:v25];
          [(BAAgentCore *)self _serializeApplicationState];
          v11 = v11;

          v26 = v11;
          goto LABEL_36;
        }

        v27 = sub_100010584();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          bundleURL2 = [v9 bundleURL];
          *buf = 138543874;
          v35 = identifierCopy;
          v36 = 2114;
          v37 = bundleURL2;
          v38 = 2114;
          v39 = v15;
          _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Unable to update application info. LSApplicationRecord from URL failed (bundle identifier: %{public}@, URL: %{public}@) %{public}@", buf, 0x20u);
        }

        v26 = 0;
        persistentIdentifier = v9;
        goto LABEL_36;
      }

      persistentIdentifier = sub_100010584();
      if (os_log_type_enabled(persistentIdentifier, OS_LOG_TYPE_ERROR))
      {
        sub_100049D84();
      }
    }

    else
    {
      persistentIdentifier = sub_100010584();
      if (os_log_type_enabled(persistentIdentifier, OS_LOG_TYPE_ERROR))
      {
        sub_100049DF0();
      }
    }

    v26 = 0;
    v11 = v9;
    goto LABEL_36;
  }

  v11 = [(BAAgentCore *)self applicationInfoForIdentifier:identifierCopy];
  persistentIdentifier = [v11 persistentIdentifier];
  if (!persistentIdentifier || (v17 = [[LSApplicationRecord alloc] initWithPersistentIdentifier:persistentIdentifier]) == 0)
  {
    v18 = sub_100010584();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v35 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Unable to use persistent identifier to update application info. Falling back to bundle identifier lookup. (bundle identifier: %{public}@)", buf, 0xCu);
    }

    v32 = 0;
    v17 = [LSBundleRecord bundleRecordWithBundleIdentifier:identifierCopy allowPlaceholder:0 error:&v32];
    v19 = v32;
    if (v17)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {

        goto LABEL_13;
      }

      v28 = sub_100010584();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        sub_100049E5C();
      }
    }

    else
    {
      v28 = sub_100010584();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        sub_100049F2C();
      }
    }

    v26 = 0;
    goto LABEL_36;
  }

LABEL_13:
  v20 = [NSBundle alloc];
  v21 = [v17 URL];
  v15 = [v20 _initUniqueWithURL:v21];

  infoDictionary2 = [v15 infoDictionary];
  if (infoDictionary2)
  {
    v16 = infoDictionary2;
    v9 = persistentIdentifier;
    persistentIdentifier = v17;
    goto LABEL_15;
  }

  v29 = sub_100010584();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    sub_100049EC4();
  }

  v26 = 0;
  persistentIdentifier = v17;
LABEL_36:

  return v26;
}

- (id)_appStoreManifestDownloadForApplicationRecord:(id)record applicationEvent:(int64_t)event applicationGroupIdentifier:(id)identifier applicationInfo:(id)info
{
  recordCopy = record;
  identifierCopy = identifier;
  infoCopy = info;
  v12 = sub_1000104FC();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    bundleIdentifier = [recordCopy bundleIdentifier];
    *buf = 138543362;
    v24 = bundleIdentifier;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Using an App Store manifest request for the application with the bundle identifier “%{public}@”…", buf, 0xCu);
  }

  v14 = +[BAManagedBackgroundAssetsInterface sharedInterface];
  bundleIdentifier2 = [recordCopy bundleIdentifier];
  v22 = 0;
  v16 = [v14 manifestRequestForAppStoreApplicationWithBundleIdentifier:bundleIdentifier2 error:&v22];
  v17 = v22;

  if (v16)
  {
    v18 = sub_100048254([BAManifestDownload alloc], v16, event, identifierCopy, infoCopy);
  }

  else
  {
    v19 = sub_1000104FC();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
    if (v17)
    {
      if (v20)
      {
        sub_10004A538();
      }
    }

    else if (v20)
    {
      sub_10004A5CC(recordCopy);
    }

    v18 = 0;
  }

  return v18;
}

- (id)_testFlightManifestDownloadForApplicationRecord:(id)record applicationEvent:(int64_t)event applicationGroupIdentifier:(id)identifier applicationInfo:(id)info
{
  recordCopy = record;
  identifierCopy = identifier;
  infoCopy = info;
  v12 = sub_1000104FC();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    bundleIdentifier = [recordCopy bundleIdentifier];
    LODWORD(buf) = 138543362;
    *(&buf + 4) = bundleIdentifier;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Using a TestFlight manifest request for the application with the bundle identifier “%{public}@”…", &buf, 0xCu);
  }

  iTunesMetadata = [recordCopy iTunesMetadata];
  v15 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [iTunesMetadata storeItemIdentifier]);

  v27 = 0;
  v28 = &v27;
  v29 = 0x2050000000;
  v16 = qword_100089C88;
  v30 = qword_100089C88;
  if (!qword_100089C88)
  {
    *&buf = _NSConcreteStackBlock;
    *(&buf + 1) = 3221225472;
    v32 = sub_100027988;
    v33 = &unk_100079F10;
    v34 = &v27;
    sub_100027988(&buf);
    v16 = v28[3];
  }

  v17 = v16;
  _Block_object_dispose(&v27, 8);
  v18 = objc_opt_class();
  bundleIdentifier2 = [recordCopy bundleIdentifier];
  v26 = 0;
  v20 = [v18 testFlightDownloadManifestRequestForStoreItemIdentifier:v15 bundleIdentifier:bundleIdentifier2 error:&v26];
  v21 = v26;

  if (v20)
  {
    v22 = sub_100048254([BAManifestDownload alloc], v20, event, identifierCopy, infoCopy);
  }

  else
  {
    v23 = sub_1000104FC();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
    if (v21)
    {
      if (v24)
      {
        sub_10004A658(recordCopy);
      }
    }

    else if (v24)
    {
      sub_10004A6F8(recordCopy);
    }

    v22 = 0;
  }

  return v22;
}

- (id)_localCacheManifestDownloadForApplicationRecord:(id)record applicationEvent:(int64_t)event applicationGroupIdentifier:(id)identifier applicationInfo:(id)info
{
  recordCopy = record;
  identifierCopy = identifier;
  infoCopy = info;
  v12 = sub_1000104FC();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    bundleIdentifier = [recordCopy bundleIdentifier];
    *buf = 138543362;
    v37 = bundleIdentifier;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Using a local-cache manifest URL for the application with the bundle identifier “%{public}@”…", buf, 0xCu);
  }

  v14 = +[BAManagedBackgroundAssetsInterface sharedInterface];
  bundleIdentifier2 = [recordCopy bundleIdentifier];
  v35 = 0;
  v16 = [v14 manifestDataFromLocalCacheForApplicationWithBundleIdentifier:bundleIdentifier2 error:&v35];
  v17 = v35;

  if (v16)
  {
    eventCopy = event;
    v32 = infoCopy;
    v33 = identifierCopy;
    preferredFilenameExtension = [UTTypeJSON preferredFilenameExtension];
    v19 = +[NSFileManager defaultManager];
    temporaryDirectory = [v19 temporaryDirectory];
    v21 = +[NSUUID UUID];
    uUIDString = [v21 UUIDString];
    v23 = [temporaryDirectory URLByAppendingPathComponent:uUIDString isDirectory:0];
    v24 = [v23 URLByAppendingPathExtension:preferredFilenameExtension];

    v34 = v17;
    LOBYTE(uUIDString) = [v16 writeToURL:v24 options:0 error:&v34];
    v25 = v34;

    if (uUIDString)
    {
      v26 = [NSURLRequest requestWithURL:v24 cachePolicy:4 timeoutInterval:60.0];
      infoCopy = v32;
      identifierCopy = v33;
      v27 = sub_100048254([BAManifestDownload alloc], v26, eventCopy, v33, v32);
    }

    else
    {
      v26 = sub_1000104FC();
      v29 = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);
      infoCopy = v32;
      if (v25)
      {
        if (v29)
        {
          sub_10004A788();
        }
      }

      else if (v29)
      {
        sub_10004A7F4();
      }

      v27 = 0;
      identifierCopy = v33;
    }
  }

  else
  {
    v25 = sub_1000104FC();
    v28 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);
    if (v17)
    {
      if (v28)
      {
        sub_10004A85C();
      }

      v27 = 0;
      v25 = v17;
    }

    else
    {
      if (v28)
      {
        sub_10004A8F0(recordCopy);
      }

      v27 = 0;
    }
  }

  return v27;
}

- (id)_appReviewManifestDownloadForApplicationRecord:(id)record applicationEvent:(int64_t)event applicationGroupIdentifier:(id)identifier applicationInfo:(id)info
{
  recordCopy = record;
  identifierCopy = identifier;
  infoCopy = info;
  v12 = sub_1000104FC();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    bundleIdentifier = [recordCopy bundleIdentifier];
    *buf = 138543362;
    v37 = bundleIdentifier;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Using an App Review manifest URL for the application with the bundle identifier “%{public}@”…", buf, 0xCu);
  }

  v14 = +[BAManagedBackgroundAssetsInterface sharedInterface];
  bundleIdentifier2 = [recordCopy bundleIdentifier];
  v35 = 0;
  v16 = [v14 manifestDataFromLocalCacheForApplicationWithBundleIdentifier:bundleIdentifier2 error:&v35];
  v17 = v35;

  if (v16)
  {
    eventCopy = event;
    v32 = infoCopy;
    v33 = identifierCopy;
    preferredFilenameExtension = [UTTypeJSON preferredFilenameExtension];
    v19 = +[NSFileManager defaultManager];
    temporaryDirectory = [v19 temporaryDirectory];
    v21 = +[NSUUID UUID];
    uUIDString = [v21 UUIDString];
    v23 = [temporaryDirectory URLByAppendingPathComponent:uUIDString isDirectory:0];
    v24 = [v23 URLByAppendingPathExtension:preferredFilenameExtension];

    v34 = v17;
    LOBYTE(uUIDString) = [v16 writeToURL:v24 options:0 error:&v34];
    v25 = v34;

    if (uUIDString)
    {
      v26 = [NSURLRequest requestWithURL:v24 cachePolicy:4 timeoutInterval:60.0];
      infoCopy = v32;
      identifierCopy = v33;
      v27 = sub_100048254([BAManifestDownload alloc], v26, eventCopy, v33, v32);
    }

    else
    {
      v26 = sub_1000104FC();
      v29 = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);
      infoCopy = v32;
      if (v25)
      {
        if (v29)
        {
          sub_10004A97C();
        }
      }

      else if (v29)
      {
        sub_10004A9E8();
      }

      v27 = 0;
      identifierCopy = v33;
    }
  }

  else
  {
    v25 = sub_1000104FC();
    v28 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);
    if (v17)
    {
      if (v28)
      {
        sub_10004AA50();
      }

      v27 = 0;
      v25 = v17;
    }

    else
    {
      if (v28)
      {
        sub_10004AAE4(recordCopy);
      }

      v27 = 0;
    }
  }

  return v27;
}

- (id)_developmentOverrideManifestDownloadForApplicationRecord:(id)record applicationEvent:(int64_t)event applicationGroupIdentifier:(id)identifier applicationInfo:(id)info
{
  recordCopy = record;
  identifierCopy = identifier;
  infoCopy = info;
  v12 = sub_1000104FC();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    bundleIdentifier = [recordCopy bundleIdentifier];
    v19 = 138543362;
    v20 = bundleIdentifier;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Using a development-override manifest request for the application with the bundle identifier “%{public}@”…", &v19, 0xCu);
  }

  v14 = [BADevelopmentOverrides URLForApplicationRecord:recordCopy];
  if (v14)
  {
    v15 = [NSURLRequest requestWithURL:v14 cachePolicy:4 timeoutInterval:60.0];
    v16 = sub_100048254([BAManifestDownload alloc], v15, event, identifierCopy, infoCopy);
  }

  else
  {
    v15 = sub_1000104FC();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      bundleIdentifier2 = [recordCopy bundleIdentifier];
      v19 = 138543362;
      v20 = bundleIdentifier2;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "No development-override URL was found for the application with the bundle identifier “%{public}@”.", &v19, 0xCu);
    }

    v16 = 0;
  }

  return v16;
}

- (BOOL)__schedulingPermittedWithIdentifier:(id)identifier downloadQueue:(id *)queue appInfo:(id *)info error:(id *)error
{
  identifierCopy = identifier;
  workQueue = [(BAAgentCore *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v12 = [(BAAgentCore *)self _downloadQueueForIdentifier:identifierCopy create:1 error:error];
  v13 = v12;
  if (v12)
  {
    if (queue)
    {
      v14 = v12;
      *queue = v13;
    }

    v15 = [(BAAgentCore *)self applicationInfoForIdentifier:identifierCopy];
    v16 = v15;
    if (info)
    {
      v17 = v15;
      *info = v16;
    }

    if ([v16 hasLaunchedApplication] & 1) != 0 || (objc_msgSend(v16, "permittedForInitialBackgroundActivity"))
    {
      v18 = 1;
    }

    else if (error)
    {
      sub_100027BE4(206);
      *error = v18 = 0;
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    if (queue)
    {
      *queue = 0;
    }

    v18 = 0;
    if (info)
    {
      *info = 0;
    }
  }

  return v18;
}

- (void)scheduleDownload:(id)download forClientIdentifier:(id)identifier notifyQueue:(id)queue completionBlock:(id)block
{
  downloadCopy = download;
  identifierCopy = identifier;
  queueCopy = queue;
  blockCopy = block;
  workQueue = [(BAAgentCore *)self workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001B364;
  block[3] = &unk_100079A58;
  block[4] = self;
  v20 = identifierCopy;
  v22 = downloadCopy;
  v23 = blockCopy;
  v21 = queueCopy;
  v15 = downloadCopy;
  v16 = blockCopy;
  v17 = queueCopy;
  v18 = identifierCopy;
  dispatch_async(workQueue, block);
}

- (void)startForegroundDownload:(id)download forClientIdentifier:(id)identifier completionBlock:(id)block
{
  downloadCopy = download;
  identifierCopy = identifier;
  blockCopy = block;
  workQueue = [(BAAgentCore *)self workQueue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10001B960;
  v15[3] = &unk_100079AF8;
  v15[4] = self;
  v16 = identifierCopy;
  v17 = downloadCopy;
  v18 = blockCopy;
  v12 = downloadCopy;
  v13 = blockCopy;
  v14 = identifierCopy;
  dispatch_async(workQueue, v15);
}

- (void)pauseQueueWithIdentifier:(id)identifier completionBlock:(id)block
{
  identifierCopy = identifier;
  blockCopy = block;
  workQueue = [(BAAgentCore *)self workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001BE7C;
  block[3] = &unk_100079AA8;
  block[4] = self;
  v12 = identifierCopy;
  v13 = blockCopy;
  v9 = blockCopy;
  v10 = identifierCopy;
  dispatch_async(workQueue, block);
}

- (void)resumeQueueWithIdentifier:(id)identifier completionBlock:(id)block
{
  identifierCopy = identifier;
  blockCopy = block;
  workQueue = [(BAAgentCore *)self workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001BFFC;
  block[3] = &unk_100079AA8;
  block[4] = self;
  v12 = identifierCopy;
  v13 = blockCopy;
  v9 = blockCopy;
  v10 = identifierCopy;
  dispatch_async(workQueue, block);
}

- (BOOL)removeAppWithAppInfo:(id)info error:(id *)error
{
  infoCopy = info;
  workQueue = [(BAAgentCore *)self workQueue];
  dispatch_assert_queue_not_V2(workQueue);

  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_100017E34;
  v24 = sub_100017E44;
  v25 = 0;
  workQueue2 = [(BAAgentCore *)self workQueue];
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_10001C24C;
  v15 = &unk_100079B20;
  v9 = infoCopy;
  v16 = v9;
  selfCopy = self;
  v18 = &v20;
  v19 = &v26;
  dispatch_async_and_wait(workQueue2, &v12);

  [(BAAgentCore *)self invalidateExtensionWithAppInfo:v9, v12, v13, v14, v15];
  if (error)
  {
    *error = v21[5];
  }

  v10 = *(v27 + 24);

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);

  return v10;
}

- (void)cancelDownload:(id)download forClientIdentifier:(id)identifier completionBlock:(id)block
{
  downloadCopy = download;
  identifierCopy = identifier;
  blockCopy = block;
  workQueue = [(BAAgentCore *)self workQueue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10001C5B0;
  v15[3] = &unk_100079AF8;
  v15[4] = self;
  v16 = identifierCopy;
  v17 = downloadCopy;
  v18 = blockCopy;
  v12 = downloadCopy;
  v13 = blockCopy;
  v14 = identifierCopy;
  dispatch_sync(workQueue, v15);
}

- (id)downloadForIdentifier:(id)identifier forClientIdentifier:(id)clientIdentifier
{
  identifierCopy = identifier;
  clientIdentifierCopy = clientIdentifier;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_100017E34;
  v20 = sub_100017E44;
  v21 = 0;
  workQueue = [(BAAgentCore *)self workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001C800;
  block[3] = &unk_100079B48;
  v15 = &v16;
  block[4] = self;
  v9 = clientIdentifierCopy;
  v14 = v9;
  dispatch_sync(workQueue, block);

  v10 = v17[5];
  if (v10)
  {
    v11 = [v10 downloadWithUniqueIdentifier:identifierCopy];
  }

  else
  {
    v11 = 0;
  }

  _Block_object_dispose(&v16, 8);

  return v11;
}

- (id)downloadsForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100017E34;
  v16 = sub_100017E44;
  v17 = &__NSArray0__struct;
  workQueue = [(BAAgentCore *)self workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001C9A4;
  block[3] = &unk_100079B70;
  block[4] = self;
  v10 = identifierCopy;
  v11 = &v12;
  v6 = identifierCopy;
  dispatch_sync(workQueue, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (void)_updateProcessMonitor
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001CEBC;
  block[3] = &unk_100079260;
  block[4] = self;
  if (qword_100089C80 != -1)
  {
    dispatch_once(&qword_100089C80, block);
  }

  v3 = +[NSMutableSet set];
  applicationState = [(BAAgentCore *)self applicationState];
  objc_sync_enter(applicationState);
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  applicationState2 = [(BAAgentCore *)self applicationState];
  v6 = [applicationState2 countByEnumeratingWithState:&v36 objects:v48 count:16];
  if (v6)
  {
    v7 = *v37;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v37 != v7)
        {
          objc_enumerationMutation(applicationState2);
        }

        [v3 addObject:*(*(&v36 + 1) + 8 * i)];
      }

      v6 = [applicationState2 countByEnumeratingWithState:&v36 objects:v48 count:16];
    }

    while (v6);
  }

  objc_sync_exit(applicationState);
  v9 = +[NSMutableArray array];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v3;
  v10 = [obj countByEnumeratingWithState:&v32 objects:v47 count:16];
  if (v10)
  {
    v12 = *v33;
    *&v11 = 138543618;
    v27 = v11;
    do
    {
      for (j = 0; j != v10; j = j + 1)
      {
        if (*v33 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v32 + 1) + 8 * j);
        applicationIdentifier = [v14 applicationIdentifier];
        v31 = 0;
        v16 = [LSBundleRecord bundleRecordWithBundleIdentifier:applicationIdentifier allowPlaceholder:1 error:&v31];
        v17 = v31;

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          applicationIdentifier2 = [v14 applicationIdentifier];
          v19 = [RBSProcessPredicate predicateMatchingBundleIdentifier:applicationIdentifier2];

          [v9 addObject:v19];
          extensionIdentity = [v14 extensionIdentity];
          v21 = extensionIdentity;
          if (extensionIdentity)
          {
            bundleIdentifier = [extensionIdentity bundleIdentifier];
            v23 = [RBSProcessPredicate predicateMatchingBundleIdentifier:bundleIdentifier];

            [v9 addObject:v23];
          }

          else
          {
            v23 = sub_1000104FC();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              sub_10004AB70(v41, v14, &v42, v23);
            }
          }
        }

        else
        {
          v19 = sub_1000104FC();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            applicationIdentifier3 = [v14 applicationIdentifier];
            *buf = v27;
            v44 = applicationIdentifier3;
            v45 = 2112;
            v46 = v17;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Cannot observe app with identifier (%{public}@), because the app is not installed. %@", buf, 0x16u);
          }
        }
      }

      v10 = [obj countByEnumeratingWithState:&v32 objects:v47 count:16];
    }

    while (v10);
  }

  v25 = qword_100089C78;
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_10001D040;
  v29[3] = &unk_100079BC0;
  v30 = v9;
  v26 = v9;
  [v25 updateConfiguration:v29];
}

- (void)_processRunningBoardStateUpdate:(id)update forProcess:(id)process
{
  updateCopy = update;
  bundle = [process bundle];
  if (bundle)
  {
    state = [updateCopy state];
    v9 = state;
    if (state)
    {
      endowmentNamespaces = [state endowmentNamespaces];
      v11 = [endowmentNamespaces containsObject:@"com.apple.frontboard.visibility"];

      taskState = [v9 taskState];
      v13 = 0;
      if (taskState > 2)
      {
        if (taskState == 3)
        {
          v13 = 3;
        }

        else if (taskState == 4)
        {
          goto LABEL_11;
        }
      }

      else
      {
        if (taskState != 1)
        {
          if (taskState != 2)
          {
            goto LABEL_16;
          }

LABEL_11:
          if (v11)
          {
            v13 = 5;
          }

          else
          {
            v13 = 4;
          }

          goto LABEL_16;
        }

        v13 = 1;
      }
    }

    else
    {
      exitEvent = [updateCopy exitEvent];
      context = [exitEvent context];
      status = [context status];
      code = [status code];

      if (code != 3735943697)
      {
LABEL_29:

        goto LABEL_30;
      }

      v13 = 2;
    }

LABEL_16:
    identifier = [bundle identifier];
    v33 = 0;
    v19 = [LSBundleRecord bundleRecordWithBundleIdentifier:identifier allowPlaceholder:0 error:&v33];
    v20 = v33;

    if (v19)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        containingBundleRecord = [v19 containingBundleRecord];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          workQueue = [(BAAgentCore *)self workQueue];
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_10001D3AC;
          block[3] = &unk_100079538;
          block[4] = self;
          v30 = bundle;
          v31 = containingBundleRecord;
          v32 = v13;
          dispatch_async(workQueue, block);
        }

        else
        {
          v25 = sub_100010584();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            sub_10004ABE8();
          }
        }
      }

      else
      {
        workQueue2 = [(BAAgentCore *)self workQueue];
        v26[0] = _NSConcreteStackBlock;
        v26[1] = 3221225472;
        v26[2] = sub_10001D428;
        v26[3] = &unk_100079BE8;
        v26[4] = self;
        v27 = bundle;
        v28 = v13;
        dispatch_async(workQueue2, v26);
      }
    }

    else
    {
      v23 = sub_1000104FC();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_10004ACA0();
      }
    }

    goto LABEL_29;
  }

LABEL_30:
}

- (void)_updateStateForAppExtensionBundleIdentifier:(id)identifier appBundleIdentifier:(id)bundleIdentifier state:(int64_t)state
{
  v6 = [(BAAgentCore *)self applicationInfoForIdentifier:bundleIdentifier];
  [v6 setApplicationExtensionState:state];
}

- (void)_updateStateForAppBundleIdentifier:(id)identifier state:(int64_t)state
{
  identifierCopy = identifier;
  v7 = [(BAAgentCore *)self applicationInfoForIdentifier:identifierCopy];
  applicationState = [v7 applicationState];
  [v7 setApplicationState:state];
  if (applicationState != state)
  {
    if ((state - 1) > 1)
    {
      if (state == 3)
      {
        if (applicationState)
        {
          v11 = sub_1000104FC();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            v22 = 138543362;
            v23 = identifierCopy;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Application (%{public}@) is backgrounded.", &v22, 0xCu);
          }

          allowsBackgroundActivity = [v7 allowsBackgroundActivity];
          v13 = [(BAAgentCore *)self _downloadQueueForIdentifier:identifierCopy create:0 error:0];
          allDownloads = [v13 allDownloads];
          v15 = [allDownloads count];

          if (allowsBackgroundActivity)
          {
            if (v15)
            {
              v16 = sub_1000104FC();
              if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
              {
                v22 = 138543362;
                v23 = identifierCopy;
                _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Application (%{public}@) allows BG activity, pausing any foreground downloads for background demotion.", &v22, 0xCu);
              }

              [v13 demoteAllForegroundDownloads];
            }

            goto LABEL_35;
          }

          if (!v15)
          {
LABEL_35:

            goto LABEL_36;
          }

          v21 = sub_1000104FC();
          if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
LABEL_34:

            [v13 cancelAllDownloads];
            goto LABEL_35;
          }

          v22 = 138543362;
          v23 = identifierCopy;
LABEL_33:
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Application (%{public}@) does NOT allow BG activity, canceling all active downloads.", &v22, 0xCu);
          goto LABEL_34;
        }
      }

      else if ((state & 0xFFFFFFFFFFFFFFFELL) == 4)
      {
        v17 = sub_1000104FC();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = @"NO";
          if (state == 5)
          {
            v18 = @"YES";
          }

          v22 = 138543618;
          v23 = identifierCopy;
          v24 = 2114;
          v25 = v18;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Application (%{public}@) is active. (Foreground = %{public}@)", &v22, 0x16u);
        }

        [(BAAgentCore *)self __handleApplicationLaunchedWithInfo:v7];
      }
    }

    else if (applicationState)
    {
      v9 = sub_1000104FC();
      v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
      if (state == 2)
      {
        if (v10)
        {
          v22 = 138543362;
          v23 = identifierCopy;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Application (%{public}@) was quit by the user.", &v22, 0xCu);
        }

        [v7 setUserForceQuitApp:1];
      }

      else
      {
        if (v10)
        {
          v22 = 138543362;
          v23 = identifierCopy;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Application (%{public}@) has terminated.", &v22, 0xCu);
        }
      }

      v13 = [(BAAgentCore *)self _downloadQueueForIdentifier:identifierCopy create:0 error:0];
      allDownloads2 = [v13 allDownloads];
      v20 = [allDownloads2 count];

      if (!v20 || ([v7 allowsBackgroundActivity] & 1) != 0)
      {
        goto LABEL_35;
      }

      v21 = sub_1000104FC();
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_34;
      }

      v22 = 138543362;
      v23 = identifierCopy;
      goto LABEL_33;
    }
  }

LABEL_36:
}

- (void)handleApplicationLaunched:(id)launched
{
  launchedCopy = launched;
  workQueue = [(BAAgentCore *)self workQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001D958;
  v7[3] = &unk_100079300;
  v7[4] = self;
  v8 = launchedCopy;
  v6 = launchedCopy;
  dispatch_async(workQueue, v7);
}

- (void)__handleApplicationLaunchedWithInfo:(id)info
{
  [info applicationLaunched];

  [(BAAgentCore *)self _serializeApplicationState];
}

- (void)_pokeScheduler
{
  workQueue = [(BAAgentCore *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v31 = os_transaction_create();
  [(BAAgentCore *)self _scheduleDownloads];
  unhandledDownloadEvents = [(BAAgentCore *)self unhandledDownloadEvents];
  v34 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [unhandledDownloadEvents count]);

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = [(BAAgentCore *)self unhandledDownloadEvents];
  v5 = [obj countByEnumeratingWithState:&v44 objects:v52 count:16];
  if (v5)
  {
    v6 = v5;
    v35 = *v45;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v45 != v35)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v44 + 1) + 8 * i);
        download = [v8 download];
        applicationIdentifier = [download applicationIdentifier];
        v11 = [(BAAgentCore *)self _connectionsForApplicationIdentifier:applicationIdentifier];
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v12 = v11;
        v13 = [v12 countByEnumeratingWithState:&v40 objects:v51 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v41;
          while (2)
          {
            for (j = 0; j != v14; j = j + 1)
            {
              if (*v41 != v15)
              {
                objc_enumerationMutation(v12);
              }

              if ([*(*(&v40 + 1) + 8 * j) isActive])
              {
                v17 = 1;
                goto LABEL_16;
              }
            }

            v14 = [v12 countByEnumeratingWithState:&v40 objects:v51 count:16];
            if (v14)
            {
              continue;
            }

            break;
          }
        }

        v17 = 0;
LABEL_16:

        v18 = [(BAAgentCore *)self applicationInfoIfExistsForIdentifier:applicationIdentifier];
        if (([v18 receivedInstalledNotification] & 1) != 0 || (objc_msgSend(v18, "receivedInstallingNotification") & 1) == 0)
        {
          if ((v17 & 1) != 0 || ([(BAAgentCore *)self _downloaderExtensionForApplicationIdentifier:applicationIdentifier cacheOnly:0], v19 = objc_claimAutoreleasedReturnValue(), v19, v19))
          {
            [v34 addObject:v8];
          }
        }
      }

      v6 = [obj countByEnumeratingWithState:&v44 objects:v52 count:16];
    }

    while (v6);
  }

  obja = [v34 count];
  if (obja)
  {
    unhandledDownloadEvents2 = [(BAAgentCore *)self unhandledDownloadEvents];
    [unhandledDownloadEvents2 removeObjectsInArray:v34];
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v21 = v34;
  v22 = [v21 countByEnumeratingWithState:&v36 objects:v50 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v37;
    do
    {
      for (k = 0; k != v23; k = k + 1)
      {
        if (*v37 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v36 + 1) + 8 * k);
        if ([v26 type] == 1)
        {
          download2 = [v26 download];
          download3 = [v26 download];
          v30 = sub_10004C614(download3, v29);
          [(BAAgentCore *)self download:download2 finishedWithFileURL:v30];

LABEL_34:
          goto LABEL_37;
        }

        if ([v26 type] == 2)
        {
          download2 = [v26 download];
          download3 = [v26 eventError];
          [(BAAgentCore *)self download:download2 failedWithError:download3];
          goto LABEL_34;
        }

        download2 = sub_1000104FC();
        if (os_log_type_enabled(download2, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v49 = v26;
          _os_log_error_impl(&_mh_execute_header, download2, OS_LOG_TYPE_ERROR, "Dropping unknown unhandled event type in list: %{public}@", buf, 0xCu);
        }

LABEL_37:
      }

      v23 = [v21 countByEnumeratingWithState:&v36 objects:v50 count:16];
    }

    while (v23);
  }

  if (obja)
  {
    [(BAAgentCore *)self _serializeUndeliveredEvents];
  }
}

- (void)_scheduleDownloads
{
  workQueue = [(BAAgentCore *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  downloadQueuesByClientIdentifier = [(BAAgentCore *)self downloadQueuesByClientIdentifier];
  v5 = [downloadQueuesByClientIdentifier count];

  if (!v5)
  {
    return;
  }

  v22 = os_transaction_create();
  _downloadsInProgress = [(BAAgentCore *)self _downloadsInProgress];
  if (_downloadsInProgress >= 0x32)
  {
    v7 = sub_1000104FC();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v30 = _downloadsInProgress;
      v31 = 2048;
      v32 = 50;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Daemon has reached maximum active download limit. (Active Downloads: %lu, Daemon Limit: %lu)", buf, 0x16u);
    }

    goto LABEL_23;
  }

  downloadQueuesByClientIdentifier2 = [(BAAgentCore *)self downloadQueuesByClientIdentifier];
  allValues = [downloadQueuesByClientIdentifier2 allValues];
  v23 = [allValues sortedArrayUsingComparator:&stru_100079C28];

  v10 = 0;
  while (2)
  {
    v24 = v10;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v7 = v23;
    v11 = [v7 countByEnumeratingWithState:&v25 objects:v35 count:16];
    if (!v11)
    {
LABEL_22:

      break;
    }

    v12 = v11;
    v13 = *v26;
LABEL_8:
    v14 = 0;
    while (1)
    {
      if (*v26 != v13)
      {
        objc_enumerationMutation(v7);
      }

      v15 = *(*(&v25 + 1) + 8 * v14);
      if ([v15 numberOfWaitingDownloads] < 1)
      {
        goto LABEL_17;
      }

      numberOfActiveDownloads = [v15 numberOfActiveDownloads];
      if (numberOfActiveDownloads >= 0x19)
      {
        v17 = numberOfActiveDownloads;
        v18 = sub_1000104FC();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          identifier = [v15 identifier];
          *buf = 138543874;
          v30 = identifier;
          v31 = 2048;
          v32 = v17;
          v33 = 2048;
          v34 = 25;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Download queue (%{public}@ has reached its limit. (Active Downloads: %lu, Queue Limit: %lu)", buf, 0x20u);
        }

        goto LABEL_17;
      }

      v20 = objc_autoreleasePoolPush();
      startNextDownload = [v15 startNextDownload];
      objc_autoreleasePoolPop(v20);
      if (startNextDownload)
      {
        break;
      }

LABEL_17:
      if (v12 == ++v14)
      {
        v12 = [v7 countByEnumeratingWithState:&v25 objects:v35 count:16];
        if (v12)
        {
          goto LABEL_8;
        }

        goto LABEL_22;
      }
    }

    v10 = v24 + 1;

    if (v24 + 1 < 50 - _downloadsInProgress)
    {
      continue;
    }

    break;
  }

LABEL_23:
}

- (void)downloadDidBegin:(id)begin
{
  beginCopy = begin;
  applicationIdentifier = [beginCopy applicationIdentifier];
  v6 = [(BAAgentCore *)self _connectionReplyQueueForIdentifier:applicationIdentifier];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10001E324;
  v10[3] = &unk_100079940;
  v11 = beginCopy;
  selfCopy = self;
  v13 = applicationIdentifier;
  v14 = os_transaction_create();
  v7 = v14;
  v8 = applicationIdentifier;
  v9 = beginCopy;
  dispatch_async(v6, v10);
}

- (void)downloadDidPause:(id)pause
{
  pauseCopy = pause;
  applicationIdentifier = [pauseCopy applicationIdentifier];
  v6 = [(BAAgentCore *)self _connectionReplyQueueForIdentifier:applicationIdentifier];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10001E7EC;
  v10[3] = &unk_100079940;
  v11 = pauseCopy;
  selfCopy = self;
  v13 = applicationIdentifier;
  v14 = os_transaction_create();
  v7 = v14;
  v8 = applicationIdentifier;
  v9 = pauseCopy;
  dispatch_async(v6, v10);
}

- (void)download:(id)download didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  downloadCopy = download;
  challengeCopy = challenge;
  handlerCopy = handler;
  applicationIdentifier = [downloadCopy applicationIdentifier];
  v12 = [(BAAgentCore *)self _connectionReplyQueueForIdentifier:applicationIdentifier];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10001ED10;
  v18[3] = &unk_100079CA0;
  v18[4] = self;
  v19 = applicationIdentifier;
  v20 = downloadCopy;
  v21 = challengeCopy;
  v22 = os_transaction_create();
  v23 = handlerCopy;
  v13 = handlerCopy;
  v14 = v22;
  v15 = challengeCopy;
  v16 = downloadCopy;
  v17 = applicationIdentifier;
  dispatch_async(v12, v18);
}

- (void)download:(id)download didWriteBytes:(int64_t)bytes totalBytesWritten:(int64_t)written totalBytesExpectedToWrite:(int64_t)write
{
  downloadCopy = download;
  applicationIdentifier = [downloadCopy applicationIdentifier];
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x3032000000;
  v28[3] = sub_100017E34;
  v28[4] = sub_100017E44;
  v29 = 0;
  workQueue = [(BAAgentCore *)self workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001F748;
  block[3] = &unk_100079B48;
  v27 = v28;
  block[4] = self;
  v13 = applicationIdentifier;
  v26 = v13;
  dispatch_async_and_wait(workQueue, block);

  v14 = os_transaction_create();
  v15 = [(BAAgentCore *)self _connectionReplyQueueForIdentifier:v13];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10001F798;
  v18[3] = &unk_100079CC8;
  v21 = v28;
  bytesCopy = bytes;
  writtenCopy = written;
  writeCopy = write;
  v19 = downloadCopy;
  v20 = v14;
  v16 = v14;
  v17 = downloadCopy;
  dispatch_async(v15, v18);

  _Block_object_dispose(v28, 8);
}

- (void)download:(id)download failedWithError:(id)error
{
  downloadCopy = download;
  errorCopy = error;
  telemetryQueue = [(BAAgentCore *)self telemetryQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001FB7C;
  block[3] = &unk_100079720;
  block[4] = self;
  v9 = downloadCopy;
  v35 = v9;
  v10 = errorCopy;
  v36 = v10;
  dispatch_async(telemetryQueue, block);

  applicationIdentifier = [v9 applicationIdentifier];
  v12 = [(BAAgentCore *)self _connectionReplyQueueForIdentifier:applicationIdentifier];
  v13 = [(BAAgentCore *)self applicationInfoForIdentifier:applicationIdentifier];
  v14 = os_transaction_create();
  if ([v13 receivedInstallingNotification] && (objc_msgSend(v13, "receivedInstalledNotification") & 1) == 0)
  {
    v18 = [[BAUnhandledDownloadEvent alloc] initWithEventType:2 download:v9 error:v10];
    workQueue = [(BAAgentCore *)self workQueue];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_10001FB8C;
    v29[3] = &unk_100079940;
    v30 = applicationIdentifier;
    v31 = v18;
    selfCopy = self;
    v33 = v14;
    v20 = v14;
    v17 = v18;
    v21 = applicationIdentifier;
    dispatch_async(workQueue, v29);
  }

  else
  {
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10001FC6C;
    v22[3] = &unk_100079560;
    v23 = v9;
    v24 = v10;
    selfCopy2 = self;
    v26 = applicationIdentifier;
    v27 = v14;
    v28 = v13;
    v15 = v14;
    v16 = applicationIdentifier;
    dispatch_async(v12, v22);

    v17 = v23;
  }
}

- (void)download:(id)download finishedWithFileURL:(id)l
{
  downloadCopy = download;
  lCopy = l;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      sub_10004AF48();
    }

    qword_100089A98 = "BUG IN BackgroundAssets: BAAgentCore received a finished file that was a BAManifestDownload. This is invalid.";
    __break(0xB001u);
  }

  else
  {
    telemetryQueue = [(BAAgentCore *)self telemetryQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100020928;
    block[3] = &unk_100079300;
    block[4] = self;
    v9 = downloadCopy;
    v32 = v9;
    dispatch_async(telemetryQueue, block);

    v10 = os_transaction_create();
    applicationIdentifier = [v9 applicationIdentifier];
    v12 = [(BAAgentCore *)self applicationInfoForIdentifier:applicationIdentifier];

    if ([(BAUnhandledDownloadEvent *)v12 receivedInstallingNotification]&& ([(BAUnhandledDownloadEvent *)v12 receivedInstalledNotification]& 1) == 0)
    {
      v19 = [[BAUnhandledDownloadEvent alloc] initWithEventType:1 download:v9 error:0];
      workQueue = [(BAAgentCore *)self workQueue];
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_100020938;
      v26[3] = &unk_100079940;
      v15 = &v27;
      v27 = v12;
      v28 = v19;
      selfCopy = self;
      v30 = v10;
      v21 = v10;
      v17 = v19;
      v14 = v12;
      dispatch_async(workQueue, v26);

      v18 = v28;
    }

    else
    {
      applicationIdentifier2 = [(BAUnhandledDownloadEvent *)v12 applicationIdentifier];
      v14 = [(BAAgentCore *)self _connectionReplyQueueForIdentifier:applicationIdentifier2];

      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_100020A34;
      v22[3] = &unk_100079940;
      v15 = v23;
      v23[0] = v9;
      v23[1] = self;
      v24 = v12;
      v25 = v10;
      v16 = v10;
      v17 = v12;
      dispatch_async(v14, v22);

      v18 = v24;
    }
  }
}

- (id)_essentialAssetsProgressDescriptorWithAppInfo:(id)info essentialAssetState:(int64_t)state sizeDownloaded:(int64_t)downloaded totalDownloadSize:(int64_t)size
{
  infoCopy = info;
  v10 = infoCopy;
  essentialAssetDownloadAllowance = -1;
  v12 = 1;
  if (state > 2)
  {
    v13 = 5;
    v14 = 6;
    if (state == 5)
    {
      sizeCopy = size;
    }

    else
    {
      v14 = 1;
      sizeCopy = -1;
    }

    if (state == 5)
    {
      downloadedCopy = downloaded;
    }

    else
    {
      downloadedCopy = -1;
    }

    if (state == 4)
    {
      sizeCopy2 = size;
    }

    else
    {
      v13 = v14;
      sizeCopy2 = sizeCopy;
    }

    if (state == 4)
    {
      downloadedCopy2 = downloaded;
    }

    else
    {
      downloadedCopy2 = downloadedCopy;
    }

    if (state == 3)
    {
      v12 = 4;
    }

    else
    {
      v12 = v13;
    }

    if (state == 3)
    {
      essentialAssetDownloadAllowance = -1;
    }

    else
    {
      essentialAssetDownloadAllowance = sizeCopy2;
    }

    if (state != 3)
    {
      downloaded = downloadedCopy2;
    }

    goto LABEL_30;
  }

  if (state == 1)
  {
    v12 = 2;
    goto LABEL_29;
  }

  if (state != 2)
  {
LABEL_29:
    downloaded = -1;
    goto LABEL_30;
  }

  essentialAssetDownloadAllowance = [infoCopy essentialAssetDownloadAllowance];
  optionalAssetDownloadAllowance = [v10 optionalAssetDownloadAllowance];
  if (optionalAssetDownloadAllowance > essentialAssetDownloadAllowance)
  {
    essentialAssetDownloadAllowance = optionalAssetDownloadAllowance;
  }

  v12 = 3;
LABEL_30:
  v20 = sub_1000484F4([BAAppStoreProgressInfoDescriptor alloc], v12, downloaded, essentialAssetDownloadAllowance);

  return v20;
}

- (id)essentialAssetsProgressDescriptorWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100017E34;
  v16 = sub_100017E44;
  v17 = 0;
  workQueue = [(BAAgentCore *)self workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100021C70;
  block[3] = &unk_100079B70;
  block[4] = self;
  v10 = identifierCopy;
  v11 = &v12;
  v6 = identifierCopy;
  dispatch_sync(workQueue, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (void)downloadQueue:(id)queue manifest:(id)manifest finishedWithFileURL:(id)l
{
  queueCopy = queue;
  manifestCopy = manifest;
  identifier = [queueCopy identifier];
  v10 = [(BAAgentCore *)self applicationInfoForIdentifier:identifier];

  identifier2 = [queueCopy identifier];
  v12 = [(BAAgentCore *)self _connectionReplyQueueForIdentifier:identifier2];

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100021EDC;
  v18[3] = &unk_100079560;
  v19 = manifestCopy;
  v20 = queueCopy;
  selfCopy = self;
  v22 = os_transaction_create();
  v23 = v10;
  v24 = v12;
  v13 = v12;
  v14 = v10;
  v15 = v22;
  v16 = queueCopy;
  v17 = manifestCopy;
  dispatch_async(v13, v18);
}

- (void)downloadQueue:(id)queue essentialAssetState:(int64_t)state bytesWritten:(int64_t)written totalBytes:(int64_t)bytes
{
  queueCopy = queue;
  v11 = os_transaction_create();
  workQueue = [(BAAgentCore *)self workQueue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100023368;
  v15[3] = &unk_100079E80;
  v15[4] = self;
  v16 = queueCopy;
  writtenCopy = written;
  bytesCopy = bytes;
  v17 = v11;
  stateCopy = state;
  v13 = v11;
  v14 = queueCopy;
  dispatch_async(workQueue, v15);
}

- (BOOL)downloadQueue:(id)queue permittedToStartDownloadsWithNecessity:(int64_t)necessity
{
  identifier = [queue identifier];
  v7 = [(BAAgentCore *)self applicationInfoIfExistsForIdentifier:identifier];

  if (v7 && ([v7 awaitingNetworkConsent] & 1) == 0)
  {
    if (([v7 receivedInstallingNotification] & 1) != 0 || objc_msgSend(v7, "receivedInstalledNotification"))
    {
      if (necessity == 1)
      {
        receivedInstallingNotification = [v7 receivedInstallingNotification];
      }

      else
      {
        receivedInstallingNotification = [v7 receivedInstalledNotification];
      }

      v8 = receivedInstallingNotification;
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)setContentRequestTelemetry:(id)telemetry forDownloads:(id)downloads
{
  telemetryCopy = telemetry;
  downloadsCopy = downloads;
  telemetryQueue = [(BAAgentCore *)self telemetryQueue];
  dispatch_assert_queue_V2(telemetryQueue);

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = downloadsCopy;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      v13 = 0;
      do
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v17 + 1) + 8 * v13);
        telemetryByDownloadUniqueIdentifier = [(BAAgentCore *)self telemetryByDownloadUniqueIdentifier];
        uniqueIdentifier = [v14 uniqueIdentifier];
        [telemetryByDownloadUniqueIdentifier setObject:telemetryCopy forKey:uniqueIdentifier];

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }
}

- (void)updateContentRequestTelemetryForCompletedDownload:(id)download error:(id)error
{
  downloadCopy = download;
  errorCopy = error;
  telemetryQueue = [(BAAgentCore *)self telemetryQueue];
  dispatch_assert_queue_V2(telemetryQueue);

  telemetryByDownloadUniqueIdentifier = [(BAAgentCore *)self telemetryByDownloadUniqueIdentifier];
  uniqueIdentifier = [downloadCopy uniqueIdentifier];
  v10 = [telemetryByDownloadUniqueIdentifier objectForKey:uniqueIdentifier];

  if (v10)
  {
    [v10 recordDownloadCompletion:downloadCopy error:errorCopy];
    if ([v10 allDownloadsCompleted])
    {
      [BATelemetrySender sendContentRequestTelemetryEvent:v10];
    }

    telemetryByDownloadUniqueIdentifier2 = [(BAAgentCore *)self telemetryByDownloadUniqueIdentifier];
    uniqueIdentifier2 = [downloadCopy uniqueIdentifier];
    [telemetryByDownloadUniqueIdentifier2 removeObjectForKey:uniqueIdentifier2];
  }
}

- (void)downloadTimeValidityDidChange
{
  connectionQueue = [(BAAgentCore *)self connectionQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000238CC;
  block[3] = &unk_100079260;
  block[4] = self;
  dispatch_async(connectionQueue, block);
}

- (void)doPeriodicUpdateCheck
{
  applicationState = [(BAAgentCore *)self applicationState];
  objc_sync_enter(applicationState);
  applicationState2 = [(BAAgentCore *)self applicationState];
  v5 = [applicationState2 copy];

  objc_sync_exit(applicationState);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if ([v10 shouldDoPeriodicCheck])
        {
          applicationIdentifier = [v10 applicationIdentifier];
          [(BAAgentCore *)self handleApplicationEvent:7 identifier:applicationIdentifier bundleURLPath:0 userInitiated:0];
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (BOOL)_checkIdentifierHasExtension:(id)extension
{
  extensionCopy = extension;
  v26 = 0;
  v4 = [LSBundleRecord bundleRecordWithBundleIdentifier:extensionCopy allowPlaceholder:0 error:&v26];
  v5 = v26;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      applicationExtensionRecords = [v4 applicationExtensionRecords];
      if ([applicationExtensionRecords count])
      {
        v20 = v5;
        v21 = extensionCopy;
        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        identifier2 = applicationExtensionRecords;
        v8 = [identifier2 countByEnumeratingWithState:&v22 objects:v27 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v23;
          while (2)
          {
            for (i = 0; i != v9; i = i + 1)
            {
              if (*v23 != v10)
              {
                objc_enumerationMutation(identifier2);
              }

              extensionPointRecord = [*(*(&v22 + 1) + 8 * i) extensionPointRecord];
              identifier = [extensionPointRecord identifier];
              v14 = [identifier isEqualToString:@"com.apple.background-asset-downloader-extension"];

              if (v14)
              {
                v15 = 1;
                goto LABEL_27;
              }
            }

            v9 = [identifier2 countByEnumeratingWithState:&v22 objects:v27 count:16];
            if (v9)
            {
              continue;
            }

            break;
          }
        }

        identifier2 = sub_1000104FC();
        if (os_log_type_enabled(identifier2, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          extensionCopy = v21;
          v29 = v21;
          _os_log_impl(&_mh_execute_header, identifier2, OS_LOG_TYPE_DEFAULT, "Bundle for %{public}@ does not have a downloader extension. Blocking.", buf, 0xCu);
          v15 = 0;
        }

        else
        {
          v15 = 0;
LABEL_27:
          extensionCopy = v21;
        }

        v5 = v20;
      }

      else
      {
        identifier2 = sub_1000104FC();
        if (os_log_type_enabled(identifier2, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v29 = extensionCopy;
          _os_log_impl(&_mh_execute_header, identifier2, OS_LOG_TYPE_DEFAULT, "Bundle for %{public}@ does not have a extension record. Blocking.", buf, 0xCu);
        }

        v15 = 0;
      }

      goto LABEL_29;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      applicationExtensionRecords = [v4 extensionPointRecord];
      identifier2 = [applicationExtensionRecords identifier];
      v15 = [identifier2 isEqualToString:@"com.apple.background-asset-downloader-extension"];
LABEL_29:

      goto LABEL_30;
    }

    applicationExtensionRecords = sub_1000104FC();
    if (os_log_type_enabled(applicationExtensionRecords, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v29 = extensionCopy;
      v16 = "Bundle for %{public}@ is not application or extension. Blocking.";
      v17 = applicationExtensionRecords;
      v18 = 12;
      goto LABEL_20;
    }
  }

  else
  {
    applicationExtensionRecords = sub_1000104FC();
    if (os_log_type_enabled(applicationExtensionRecords, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v29 = extensionCopy;
      v30 = 2114;
      v31 = v5;
      v16 = "Failed to get bundle record for identifier: %{public}@ error: %{public}@";
      v17 = applicationExtensionRecords;
      v18 = 22;
LABEL_20:
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, v16, buf, v18);
    }
  }

  v15 = 0;
LABEL_30:

  return v15;
}

- (BOOL)_checkConnection:(id)connection hasAllowedTeamIDForIdentifier:(id)identifier
{
  connectionCopy = connection;
  identifierCopy = identifier;
  v8 = [connectionCopy valueForEntitlement:off_100089360[0]];

  if (os_variant_has_internal_content() && v8)
  {
    [(BAAgentCore *)self _serializeApplicationState];
    v9 = 1;
  }

  else
  {
    v10 = [(BAAgentCore *)self applicationInfoForIdentifier:identifierCopy];
    v11 = [connectionCopy valueForEntitlement:off_100089358[0]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      applicationTeamIdentifier = [v10 applicationTeamIdentifier];

      if (applicationTeamIdentifier)
      {
        applicationTeamIdentifier2 = [v10 applicationTeamIdentifier];
        v9 = [applicationTeamIdentifier2 isEqualToString:v11];
      }

      else
      {
        [v10 setApplicationTeamIdentifier:v11];
        [(BAAgentCore *)self _serializeApplicationState];
        v9 = 1;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (void)_clearState
{
  v2 = +[NSFileManager defaultManager];
  v3 = [v2 URLForDirectory:14 inDomain:1 appropriateForURL:0 create:1 error:0];

  if (v3)
  {
    v4 = [v3 URLByAppendingPathComponent:off_100089350[0]];
    v5 = [v4 URLByAppendingPathComponent:@"ApplicationState.bin"];
    v6 = [v4 URLByAppendingPathComponent:@"DownloadQueues.bin"];
    v7 = [v4 URLByAppendingPathComponent:@"UndeliveredEvents.bin"];
    v8 = +[NSFileManager defaultManager];
    [v8 removeItemAtURL:v5 error:0];

    v9 = +[NSFileManager defaultManager];
    [v9 removeItemAtURL:v6 error:0];

    v10 = +[NSFileManager defaultManager];
    [v10 removeItemAtURL:v7 error:0];
  }

  if (!+[BAApplicationConfigurationOverrides clearAllOverrides])
  {
    v11 = sub_1000104FC();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10004B3E0();
    }
  }
}

- (void)_debugShutdown
{
  v3 = sub_1000104FC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Debug shutdown called. Preparing to exit", v4, 2u);
  }

  [(BAAgentCore *)self _shutdownAgent];
}

- (void)_printDebugState
{
  workQueue = [(BAAgentCore *)self workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100024284;
  block[3] = &unk_100079260;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (id)_systemConnections
{
  v3 = +[NSMutableArray array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  connections = [(BAAgentCore *)self connections];
  v5 = [connections countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(connections);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v3 addObject:v9];
        }
      }

      v6 = [connections countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)invalidateExtensionWithAppInfo:(id)info
{
  infoCopy = info;
  workQueue = [(BAAgentCore *)self workQueue];
  dispatch_assert_queue_not_V2(workQueue);

  applicationIdentifier = [infoCopy applicationIdentifier];
  v7 = [(BAAgentCore *)self downloaderExtensionForApplicationIdentifier:applicationIdentifier cacheOnly:1];
  v8 = v7;
  if (v7)
  {
    [v7 extensionWillTerminate];
    [v8 invalidate];
    [(BAAgentCore *)self extensionDisconnectedWithIdentifier:applicationIdentifier connectionProxy:v8];
  }

  extensionIdentity = [infoCopy extensionIdentity];
  v10 = extensionIdentity;
  v11 = &off_100059000;
  if (extensionIdentity)
  {
    bundleIdentifier = [extensionIdentity bundleIdentifier];
    v13 = [[BATerminationAssertion alloc] initWithBundleIdentifier:bundleIdentifier];
    v14 = sub_1000104FC();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v35 = bundleIdentifier;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Acquiring termination assertion for extension: %{public}@", buf, 0xCu);
    }

    v33 = 0;
    v15 = [(BATerminationAssertion *)v13 acquireAssertionSync:&v33];
    v24 = v33;
    if ((v15 & 1) == 0)
    {
      v16 = sub_1000104FC();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_10004B420();
      }
    }

    v17 = dispatch_semaphore_create(0);
    v18 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v19 = dispatch_queue_create("com.apple.BackgroundAssets.launch_removal_queue", v18);

    [bundleIdentifier UTF8String];
    v27 = _NSConcreteStackBlock;
    v28 = 3221225472;
    v29 = sub_10002515C;
    v30 = &unk_100079EA8;
    v31 = bundleIdentifier;
    v32 = v17;
    v20 = v17;
    v21 = bundleIdentifier;
    launch_remove_external_service();
    dispatch_semaphore_wait(v20, 0xFFFFFFFFFFFFFFFFLL);
    [(BATerminationAssertion *)v13 invalidate];

    v11 = &off_100059000;
  }

  workQueue2 = [(BAAgentCore *)self workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = *(v11 + 135);
  block[2] = sub_100025244;
  block[3] = &unk_100079300;
  block[4] = self;
  v26 = applicationIdentifier;
  v23 = applicationIdentifier;
  dispatch_async(workQueue2, block);
}

- (id)_connectionsForApplicationIdentifier:(id)identifier
{
  identifierCopy = identifier;
  workQueue = [(BAAgentCore *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = [NSMutableArray arrayWithCapacity:1];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  connections = [(BAAgentCore *)self connections];
  v8 = [connections countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(connections);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          applicationBundleIdentifier = [v12 applicationBundleIdentifier];
          v14 = [applicationBundleIdentifier isEqual:identifierCopy];

          if (v14)
          {
            [v6 addObject:v12];
          }
        }
      }

      v9 = [connections countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  [v6 sortUsingComparator:&stru_100079EE8];

  return v6;
}

- (void)_pauseDownloads
{
  downloadQueuesByClientIdentifier = [(BAAgentCore *)self downloadQueuesByClientIdentifier];
  allValues = [downloadQueuesByClientIdentifier allValues];

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = allValues;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8) pauseAllDownloads];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)_deserializeState
{
  v3 = os_transaction_create();
  [(BAAgentCore *)self _deserializeApplicationList];
  [(BAAgentCore *)self _deserializeDownloadQueues];
  [(BAAgentCore *)self _deserializeUndeliveredEvents];
}

- (void)_deserializeApplicationList
{
  v35 = +[BAApplicationInfo extensionContainingApplicationList];
  v2 = +[NSFileManager defaultManager];
  v57 = 0;
  v37 = [v2 URLForDirectory:14 inDomain:1 appropriateForURL:0 create:1 error:&v57];
  v3 = v57;

  v36 = [v37 URLByAppendingPathComponent:off_100089350[0]];
  v38 = [v36 URLByAppendingPathComponent:@"ApplicationState.bin"];
  if (!v38)
  {
    v26 = sub_1000104FC();
    v27 = v26;
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_41;
    }

    sub_10004B5B0();
LABEL_36:
    v27 = v26;
    goto LABEL_41;
  }

  v34 = [NSMutableData dataWithContentsOfURL:?];
  if (!v34)
  {
    v26 = sub_1000104FC();
    v27 = v26;
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_41;
    }

    sub_10004B548();
    goto LABEL_36;
  }

  v56 = v3;
  v33 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v34 error:&v56];
  v31 = v56;

  [v33 setDecodingFailurePolicy:1];
  v4 = +[BAApplicationInfo classesForSerialization];
  v41 = [v33 decodeObjectOfClasses:v4 forKey:@"Application State"];

  obj = [(BAAgentCore *)self applicationState];
  objc_sync_enter(obj);
  applicationState = [(BAAgentCore *)self applicationState];
  [applicationState removeAllObjects];

  if (v41)
  {
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v39 = v35;
    v6 = [v39 countByEnumeratingWithState:&v52 objects:v61 count:16];
    if (v6)
    {
      v40 = *v53;
      do
      {
        v42 = v6;
        for (i = 0; i != v42; i = i + 1)
        {
          if (*v53 != v40)
          {
            objc_enumerationMutation(v39);
          }

          v8 = *(*(&v52 + 1) + 8 * i);
          v48 = 0u;
          v49 = 0u;
          v50 = 0u;
          v51 = 0u;
          applicationState3 = v41;
          v10 = [applicationState3 countByEnumeratingWithState:&v48 objects:v60 count:16];
          if (v10)
          {
            v11 = *v49;
            while (2)
            {
              for (j = 0; j != v10; j = j + 1)
              {
                if (*v49 != v11)
                {
                  objc_enumerationMutation(applicationState3);
                }

                v13 = *(*(&v48 + 1) + 8 * j);
                applicationIdentifier = [v8 applicationIdentifier];
                applicationIdentifier2 = [v13 applicationIdentifier];
                v16 = [applicationIdentifier isEqualToString:applicationIdentifier2];

                if (v16)
                {
                  applicationState2 = [(BAAgentCore *)self applicationState];
                  [applicationState2 addObject:v13];

                  goto LABEL_19;
                }
              }

              v10 = [applicationState3 countByEnumeratingWithState:&v48 objects:v60 count:16];
              if (v10)
              {
                continue;
              }

              break;
            }
          }

          applicationState3 = [(BAAgentCore *)self applicationState];
          [applicationState3 addObject:v8];
LABEL_19:
        }

        v6 = [v39 countByEnumeratingWithState:&v52 objects:v61 count:16];
      }

      while (v6);
    }

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    applicationState6 = v41;
    v19 = [applicationState6 countByEnumeratingWithState:&v44 objects:v59 count:16];
    if (v19)
    {
      v20 = *v45;
      do
      {
        for (k = 0; k != v19; k = k + 1)
        {
          if (*v45 != v20)
          {
            objc_enumerationMutation(applicationState6);
          }

          v22 = *(*(&v44 + 1) + 8 * k);
          if (([v22 receivedInstallingNotification] & 1) == 0)
          {
            applicationState4 = [(BAAgentCore *)self applicationState];
            v24 = [applicationState4 containsObject:v22];

            if ((v24 & 1) == 0)
            {
              applicationState5 = [(BAAgentCore *)self applicationState];
              [applicationState5 addObject:v22];
            }
          }
        }

        v19 = [applicationState6 countByEnumeratingWithState:&v44 objects:v59 count:16];
      }

      while (v19);
    }
  }

  else
  {
    v28 = sub_1000104FC();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      error = [v33 error];
      sub_10004B4F0(error, buf, v28);
    }

    applicationState6 = [(BAAgentCore *)self applicationState];
    v30 = [v35 mutableCopy];
    [applicationState6 addObjectsFromArray:v30];
  }

  objc_sync_exit(obj);
  [(BAAgentCore *)self _updateProcessMonitor];

  v3 = v31;
  v27 = v34;
LABEL_41:
}

- (void)_deserializeDownloadQueues
{
  downloadQueuesByClientIdentifier = [(BAAgentCore *)self downloadQueuesByClientIdentifier];
  [downloadQueuesByClientIdentifier removeAllObjects];

  v4 = +[NSFileManager defaultManager];
  v28 = 0;
  v5 = [v4 URLForDirectory:14 inDomain:1 appropriateForURL:0 create:1 error:&v28];
  v6 = v28;

  v7 = [v5 URLByAppendingPathComponent:off_100089350[0]];
  v8 = [v7 URLByAppendingPathComponent:@"DownloadQueues.bin"];
  if (v8)
  {
    v9 = [NSMutableData dataWithContentsOfURL:v8];
    if (v9)
    {
      v10 = v9;
      v27 = v6;
      v11 = [[BAAgentKeyedUnarchiver alloc] initForReadingFromData:v9 error:&v27];
      v12 = v27;

      [v11 setAgentCore:self];
      [v11 setDecodingFailurePolicy:1];
      v13 = +[BADownloadQueue classesForSerialization];
      v14 = [v11 decodeObjectOfClasses:v13 forKey:@"Queues"];

      if (v14)
      {
        v21 = v12;
        v22 = v5;
        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        allValues = [v14 allValues];
        v16 = [allValues countByEnumeratingWithState:&v23 objects:v29 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v24;
          do
          {
            for (i = 0; i != v17; i = i + 1)
            {
              if (*v24 != v18)
              {
                objc_enumerationMutation(allValues);
              }

              [*(*(&v23 + 1) + 8 * i) setDelegate:self];
            }

            v17 = [allValues countByEnumeratingWithState:&v23 objects:v29 count:16];
          }

          while (v17);
        }

        downloadQueuesByClientIdentifier2 = [(BAAgentCore *)self downloadQueuesByClientIdentifier];
        [downloadQueuesByClientIdentifier2 addEntriesFromDictionary:v14];
        v12 = v21;
        v5 = v22;
      }

      else
      {
        downloadQueuesByClientIdentifier2 = sub_1000104FC();
        if (os_log_type_enabled(downloadQueuesByClientIdentifier2, OS_LOG_TYPE_ERROR))
        {
          sub_10004B618(v11);
        }
      }

      v6 = v12;
    }

    else
    {
      v10 = sub_1000104FC();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10004B6A4();
      }
    }
  }

  else
  {
    v10 = sub_1000104FC();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10004B70C();
    }
  }
}

- (void)_deserializeUndeliveredEvents
{
  unhandledDownloadEvents = [(BAAgentCore *)self unhandledDownloadEvents];
  [unhandledDownloadEvents removeAllObjects];

  v4 = +[NSFileManager defaultManager];
  v19 = 0;
  v5 = [v4 URLForDirectory:14 inDomain:1 appropriateForURL:0 create:1 error:&v19];
  v6 = v19;

  v7 = [v5 URLByAppendingPathComponent:off_100089350[0]];
  v8 = [v7 URLByAppendingPathComponent:@"UndeliveredEvents.bin"];
  if (v8)
  {
    v9 = [NSMutableData dataWithContentsOfURL:v8];
    if (v9)
    {
      v10 = v9;
      v18 = v6;
      v11 = [[BAAgentKeyedUnarchiver alloc] initForReadingFromData:v9 error:&v18];
      v12 = v18;

      [v11 setAgentCore:self];
      [v11 setDecodingFailurePolicy:1];
      v13 = [NSSet setWithObject:objc_opt_class()];
      v14 = +[BAUnhandledDownloadEvent classesForSerialization];
      v15 = [v13 setByAddingObjectsFromSet:v14];

      v16 = [v11 decodeObjectOfClasses:v15 forKey:@"Undelivered Events"];
      if (v16)
      {
        unhandledDownloadEvents2 = [(BAAgentCore *)self unhandledDownloadEvents];
        [unhandledDownloadEvents2 addObjectsFromArray:v16];
      }

      else
      {
        unhandledDownloadEvents2 = sub_1000104FC();
        if (os_log_type_enabled(unhandledDownloadEvents2, OS_LOG_TYPE_ERROR))
        {
          sub_10004B774(v11);
        }
      }

      v6 = v12;
    }

    else
    {
      v10 = sub_1000104FC();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10004B800();
      }
    }
  }

  else
  {
    v10 = sub_1000104FC();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10004B868();
    }
  }
}

- (void)_serializeState
{
  v3 = os_transaction_create();
  [(BAAgentCore *)self _serializeApplicationState];
  [(BAAgentCore *)self _serializeDownloadQueues];
  [(BAAgentCore *)self _serializeUndeliveredEvents];
}

- (void)_serializeDownloadQueues
{
  v3 = os_transaction_create();
  downloadQueuesByClientIdentifier = [(BAAgentCore *)self downloadQueuesByClientIdentifier];

  if (downloadQueuesByClientIdentifier)
  {
    v5 = [[BAAgentKeyedArchiver alloc] initRequiringSecureCoding:1];
    downloadQueuesByClientIdentifier2 = [(BAAgentCore *)self downloadQueuesByClientIdentifier];
    [v5 encodeObject:downloadQueuesByClientIdentifier2 forKey:@"Queues"];

    v7 = +[NSFileManager defaultManager];
    v20 = 0;
    v8 = [v7 URLForDirectory:14 inDomain:1 appropriateForURL:0 create:1 error:&v20];
    v9 = v20;

    v10 = [v8 URLByAppendingPathComponent:off_100089350[0]];
    v11 = +[NSFileManager defaultManager];
    v19 = v9;
    [v11 createDirectoryAtURL:v10 withIntermediateDirectories:1 attributes:0 error:&v19];
    v12 = v19;

    v13 = [v10 URLByAppendingPathComponent:@"DownloadQueues.bin"];
    encodedData = [v5 encodedData];
    v18 = v12;
    v15 = [encodedData writeToURL:v13 options:1 error:&v18];
    v16 = v18;

    if ((v15 & 1) == 0)
    {
      v17 = sub_1000104FC();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_10004B8D0();
      }
    }

    v3 = 0;
  }
}

- (void)_serializeApplicationState
{
  v3 = os_transaction_create();
  v4 = [[BAAgentKeyedArchiver alloc] initRequiringSecureCoding:1];
  applicationState = [(BAAgentCore *)self applicationState];
  objc_sync_enter(applicationState);
  applicationState2 = [(BAAgentCore *)self applicationState];

  if (applicationState2)
  {
    applicationState3 = [(BAAgentCore *)self applicationState];
    [v4 encodeObject:applicationState3 forKey:@"Application State"];

    objc_sync_exit(applicationState);
    v8 = +[NSFileManager defaultManager];
    v21 = 0;
    v9 = [v8 URLForDirectory:14 inDomain:1 appropriateForURL:0 create:1 error:&v21];
    v10 = v21;

    v11 = [v9 URLByAppendingPathComponent:off_100089350[0]];
    v12 = +[NSFileManager defaultManager];
    v20 = v10;
    [v12 createDirectoryAtURL:v11 withIntermediateDirectories:1 attributes:0 error:&v20];
    v13 = v20;

    v14 = [v11 URLByAppendingPathComponent:@"ApplicationState.bin"];
    encodedData = [v4 encodedData];
    v19 = v13;
    v16 = [encodedData writeToURL:v14 options:1 error:&v19];
    v17 = v19;

    if ((v16 & 1) == 0)
    {
      v18 = sub_1000104FC();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_10004B938();
      }
    }
  }

  else
  {

    objc_sync_exit(applicationState);
  }
}

- (void)_serializeUndeliveredEvents
{
  workQueue = [(BAAgentCore *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v19 = os_transaction_create();
  unhandledDownloadEvents = [(BAAgentCore *)self unhandledDownloadEvents];

  if (unhandledDownloadEvents)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = [[BAAgentKeyedArchiver alloc] initRequiringSecureCoding:1];
    unhandledDownloadEvents2 = [(BAAgentCore *)self unhandledDownloadEvents];
    [v6 encodeObject:unhandledDownloadEvents2 forKey:@"Undelivered Events"];

    v8 = +[NSFileManager defaultManager];
    v22 = 0;
    v9 = [v8 URLForDirectory:14 inDomain:1 appropriateForURL:0 create:1 error:&v22];
    v10 = v22;

    v11 = [v9 URLByAppendingPathComponent:off_100089350[0]];
    v12 = +[NSFileManager defaultManager];
    v21 = v10;
    [v12 createDirectoryAtURL:v11 withIntermediateDirectories:1 attributes:0 error:&v21];
    v13 = v21;

    v14 = [v11 URLByAppendingPathComponent:@"UndeliveredEvents.bin"];
    encodedData = [v6 encodedData];
    v20 = v13;
    v16 = [encodedData writeToURL:v14 options:1 error:&v20];
    v17 = v20;

    if ((v16 & 1) == 0)
    {
      v18 = sub_1000104FC();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_10004B938();
      }
    }

    objc_autoreleasePoolPop(v5);
  }

  else
  {
  }
}

- (void)_asyncAwaitLockdownClientMessage:(_lockdown_connection *)message waitQueue:(id)queue
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100026960;
  block[3] = &unk_100079BE8;
  queueCopy = queue;
  messageCopy = message;
  block[4] = self;
  v6 = queueCopy;
  dispatch_async(v6, block);
}

- (void)_processLockdownClientMessage:(id)message withConnection:(_lockdown_connection *)connection withQueue:(id)queue
{
  messageCopy = message;
  queueCopy = queue;
  messageOperation = [messageCopy messageOperation];
  if (messageOperation > 2)
  {
    if (messageOperation == 3)
    {
      v11 = messageCopy;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        appBundleIdentifier = [(BADeveloperDebugServerMessageVersionCheck *)v11 appBundleIdentifier];
        v13 = [BAAppStorePrepareDescriptor descriptorWithAppBundleIdentifier:appBundleIdentifier appStoreMetadata:&__NSDictionary0__struct client:3];

        [v13 setCellularPolicy:3];
        appBundleIdentifier2 = [v13 appBundleIdentifier];
        v15 = [(BAAgentCore *)self applicationInfoForIdentifier:appBundleIdentifier2];

        [v15 applicationPrepareWithDescriptor:v13];
        [v15 resetExtensionRuntime];
        appBundleIdentifier3 = [(BADeveloperDebugServerMessageVersionCheck *)v11 appBundleIdentifier];
        selfCopy2 = self;
        v18 = 2;
        goto LABEL_15;
      }

      goto LABEL_19;
    }

    if (messageOperation == 4)
    {
      v11 = messageCopy;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        appBundleIdentifier4 = [(BADeveloperDebugServerMessageVersionCheck *)v11 appBundleIdentifier];
        v20 = [(BAAgentCore *)self applicationInfoForIdentifier:appBundleIdentifier4];

        [v20 resetExtensionRuntime];
        appBundleIdentifier5 = [(BADeveloperDebugServerMessageVersionCheck *)v11 appBundleIdentifier];
        [(BAAgentCore *)self handleApplicationEvent:7 identifier:appBundleIdentifier5 bundleURLPath:0 userInitiated:1];

LABEL_17:
        goto LABEL_18;
      }

LABEL_19:
      lockdown_disconnect();
      goto LABEL_29;
    }
  }

  else
  {
    if (messageOperation == 1)
    {
      messageVersion = [messageCopy messageVersion];
      v23 = [BADeveloperDebugServerMessageVersionCheck alloc];
      if (messageVersion < 2)
      {
        v25 = 1;
        v24 = 0;
      }

      else
      {
        v24 = @"The tool being used to debug Background Assets is newer and unsupported on the connected device's OS version.";
        v25 = 0;
      }

      v29 = [(BADeveloperDebugServerMessageVersionCheck *)v23 initWithVersionAllowed:v25 failureExplanation:v24];
      v11 = v29;
      if (!v29)
      {
        goto LABEL_18;
      }

      v31 = 0;
      v15 = [(BADeveloperDebugMessage *)v29 archivedRepresentationWithError:&v31];
      v13 = v31;
      if (v15)
      {
        if (!lockdown_send_message())
        {
          goto LABEL_16;
        }

        lockdown_disconnect();
      }

      else
      {
        v30 = sub_1000104FC();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          sub_10004B9A0();
        }

        lockdown_disconnect();
      }

LABEL_29:
      goto LABEL_30;
    }

    if (messageOperation == 2)
    {
      v11 = messageCopy;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        appBundleIdentifier6 = [(BADeveloperDebugServerMessageVersionCheck *)v11 appBundleIdentifier];
        v13 = [BAAppStorePrepareDescriptor descriptorWithAppBundleIdentifier:appBundleIdentifier6 appStoreMetadata:&__NSDictionary0__struct client:3];

        [v13 setCellularPolicy:3];
        appBundleIdentifier7 = [v13 appBundleIdentifier];
        v15 = [(BAAgentCore *)self applicationInfoForIdentifier:appBundleIdentifier7];

        [v15 applicationPrepareWithDescriptor:v13];
        [v15 resetExtensionRuntime];
        appBundleIdentifier3 = [(BADeveloperDebugServerMessageVersionCheck *)v11 appBundleIdentifier];
        selfCopy2 = self;
        v18 = 1;
LABEL_15:
        [(BAAgentCore *)selfCopy2 handleApplicationEvent:v18 identifier:appBundleIdentifier3 bundleURLPath:0 userInitiated:1];

        appBundleIdentifier8 = [(BADeveloperDebugServerMessageVersionCheck *)v11 appBundleIdentifier];
        [(BAAgentCore *)self handleApplicationEvent:6 identifier:appBundleIdentifier8 bundleURLPath:0 userInitiated:1];

LABEL_16:
        goto LABEL_17;
      }

      goto LABEL_19;
    }
  }

  lockdown_disconnect();
LABEL_18:
  [(BAAgentCore *)self _asyncAwaitLockdownClientMessage:connection waitQueue:queueCopy];
LABEL_30:
}

- (void)_shutdownAgent
{
  v3 = sub_1000104FC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Serializing state and shutting down.", buf, 2u);
  }

  workQueue = [(BAAgentCore *)self workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100026F50;
  block[3] = &unk_100079260;
  block[4] = self;
  dispatch_sync(workQueue, block);

  if ([(BAAgentCore *)self debugClearState])
  {
    v5 = sub_1000104FC();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Clear state set, will clear state..", buf, 2u);
    }

    [(BAAgentCore *)self _clearState];
  }

  exit(0);
}

- (void)_debugDownloadTime:(BOOL)time clear:(BOOL)clear
{
  if (time)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (clear)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  rulesEngine = [(BAAgentCore *)self rulesEngine];
  [rulesEngine setDebugValidityTimeOverride:v5];
}

- (void)_backgroundActivityStateDidChange
{
  workQueue = [(BAAgentCore *)self workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100027040;
  block[3] = &unk_100079260;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (id)_connectionReplyQueueForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  connections = [(BAAgentCore *)self connections];
  objc_sync_enter(connections);
  connectionReplyQueue = [(BAAgentCore *)self connectionReplyQueue];
  v7 = [connectionReplyQueue objectForKey:identifierCopy];

  if (!v7)
  {
    identifierCopy = [NSString stringWithFormat:@"com.apple.backgroundassets.%@.reply", identifierCopy];
    v7 = dispatch_queue_create([identifierCopy UTF8String], 0);
    connectionReplyQueue2 = [(BAAgentCore *)self connectionReplyQueue];
    [connectionReplyQueue2 setObject:v7 forKey:identifierCopy];
  }

  objc_sync_exit(connections);

  return v7;
}

- (BOOL)_applicationIdentifierAllowsBackgroundActivity:(id)activity
{
  activityCopy = activity;
  applicationState = [(BAAgentCore *)self applicationState];
  objc_sync_enter(applicationState);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  applicationState2 = [(BAAgentCore *)self applicationState];
  v7 = [applicationState2 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(applicationState2);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        applicationIdentifier = [v10 applicationIdentifier];
        v12 = [applicationIdentifier isEqualToString:activityCopy];

        if (v12)
        {
          LOBYTE(v7) = [v10 allowsBackgroundActivity];
          v13 = 0;
          goto LABEL_11;
        }
      }

      v7 = [applicationState2 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v13 = 1;
LABEL_11:

  objc_sync_exit(applicationState);
  if (v13)
  {
    v14 = sub_1000104FC();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10004BA08();
    }

    LOBYTE(v7) = 0;
  }

  return v7 & 1;
}

- (unint64_t)_downloadsInProgress
{
  workQueue = [(BAAgentCore *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  downloadQueuesByClientIdentifier = [(BAAgentCore *)self downloadQueuesByClientIdentifier];
  v5 = [downloadQueuesByClientIdentifier countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v15;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(downloadQueuesByClientIdentifier);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        downloadQueuesByClientIdentifier2 = [(BAAgentCore *)self downloadQueuesByClientIdentifier];
        v12 = [downloadQueuesByClientIdentifier2 objectForKey:v10];

        if (v12)
        {
          v7 += [v12 numberOfActiveDownloads];
        }
      }

      v6 = [downloadQueuesByClientIdentifier countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)_downloadsInProgressForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  workQueue = [(BAAgentCore *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  downloadQueuesByClientIdentifier = [(BAAgentCore *)self downloadQueuesByClientIdentifier];
  v7 = [downloadQueuesByClientIdentifier objectForKey:identifierCopy];

  if (v7)
  {
    numberOfActiveDownloads = [v7 numberOfActiveDownloads];
  }

  else
  {
    numberOfActiveDownloads = 0;
  }

  return numberOfActiveDownloads;
}

@end