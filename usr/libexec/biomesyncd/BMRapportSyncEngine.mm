@interface BMRapportSyncEngine
- (BMRapportSyncEngine)initWithQueue:(id)queue primarySyncManager:(id)manager primaryDatabase:(id)database;
- (BMRapportSyncEngine)initWithQueue:(id)queue primarySyncManager:(id)manager rapportManager:(id)rapportManager atomBatchChunkerPolicy:(id)policy primaryDatabase:(id)database;
- (BOOL)rapportManager:(id)manager isDeviceSupported:(id)supported;
- (id)accountFromRapportOptions:(id)options;
- (id)fetchAtomBatchesRequestHandler;
- (void)_startServerWithCompletion:(id)completion;
- (void)completeRequest:(id)request deliveredToDevices:(id)devices withErrors:(id)errors;
- (void)completeRequestIfDeliveredToAllNearbyDevices:(id)devices;
- (void)finishRequest:(id)request toDevice:(id)device withError:(id)error peerInfo:(id)info peerStatusTracker:(id)tracker;
- (void)handleFetchAtomBatchesResponse:(id)response options:(id)options error:(id)error fromDevice:(id)device forRequest:(id)request isReciprocal:(BOOL)reciprocal;
- (void)rapportManager:(id)manager didDiscoverBMRapportDevice:(id)device;
- (void)rapportManagerDiscoveryTimedOut:(id)out;
- (void)registerRequests;
- (void)runRequest:(id)request onDevice:(id)device;
- (void)sendFetchAtomBatchesRequest:(id)request toDevice:(id)device forRequest:(id)forRequest;
- (void)startClient;
- (void)startServerWithCompletion:(id)completion;
- (void)syncNowWithDevices:(id)devices reason:(unint64_t)reason activity:(id)activity completionHandler:(id)handler;
- (void)syncNowWithReason:(unint64_t)reason activity:(id)activity completionHandler:(id)handler;
@end

@implementation BMRapportSyncEngine

- (BMRapportSyncEngine)initWithQueue:(id)queue primarySyncManager:(id)manager primaryDatabase:(id)database
{
  queueCopy = queue;
  managerCopy = manager;
  databaseCopy = database;
  v27.receiver = self;
  v27.super_class = BMRapportSyncEngine;
  v12 = [(BMRapportSyncEngine *)&v27 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_primarySyncManager, manager);
    peerStatusTracker = [managerCopy peerStatusTracker];
    peerStatusTracker = v13->_peerStatusTracker;
    v13->_peerStatusTracker = peerStatusTracker;

    metricsCollector = [managerCopy metricsCollector];
    metricsCollector = v13->_metricsCollector;
    v13->_metricsCollector = metricsCollector;

    objc_storeStrong(&v13->_queue, queue);
    v18 = [[BMRapportManager alloc] initWithQueue:queueCopy];
    rapportManager = v13->_rapportManager;
    v13->_rapportManager = v18;

    [(BMRapportManager *)v13->_rapportManager setDelegate:v13];
    peerStatusTracker2 = [managerCopy peerStatusTracker];
    localDeviceIdentifierCreatingIfNecessary = [peerStatusTracker2 localDeviceIdentifierCreatingIfNecessary];
    v22 = [localDeviceIdentifierCreatingIfNecessary copy];
    localDeviceIdentifier = v13->_localDeviceIdentifier;
    v13->_localDeviceIdentifier = v22;

    v24 = [[BMAtomBatchMaxBytes alloc] initWithMaxBytes:0x200000];
    atomBatchChunkerPolicy = v13->_atomBatchChunkerPolicy;
    v13->_atomBatchChunkerPolicy = v24;

    objc_storeStrong(&v13->_primaryDatabase, database);
  }

  return v13;
}

- (BMRapportSyncEngine)initWithQueue:(id)queue primarySyncManager:(id)manager rapportManager:(id)rapportManager atomBatchChunkerPolicy:(id)policy primaryDatabase:(id)database
{
  queueCopy = queue;
  managerCopy = manager;
  rapportManagerCopy = rapportManager;
  policyCopy = policy;
  databaseCopy = database;
  v29.receiver = self;
  v29.super_class = BMRapportSyncEngine;
  v17 = [(BMRapportSyncEngine *)&v29 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_primarySyncManager, manager);
    peerStatusTracker = [managerCopy peerStatusTracker];
    peerStatusTracker = v18->_peerStatusTracker;
    v18->_peerStatusTracker = peerStatusTracker;

    metricsCollector = [managerCopy metricsCollector];
    metricsCollector = v18->_metricsCollector;
    v18->_metricsCollector = metricsCollector;

    objc_storeStrong(&v18->_queue, queue);
    objc_storeStrong(&v18->_rapportManager, rapportManager);
    [(BMRapportManager *)v18->_rapportManager setDelegate:v18];
    objc_storeStrong(&v18->_atomBatchChunkerPolicy, policy);
    peerStatusTracker2 = [managerCopy peerStatusTracker];
    localDeviceIdentifierCreatingIfNecessary = [peerStatusTracker2 localDeviceIdentifierCreatingIfNecessary];
    v25 = [localDeviceIdentifierCreatingIfNecessary copy];
    localDeviceIdentifier = v18->_localDeviceIdentifier;
    v18->_localDeviceIdentifier = v25;

    objc_storeStrong(&v18->_primaryDatabase, database);
  }

  return v18;
}

- (void)startClient
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000960C;
  block[3] = &unk_100078B70;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)startServerWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000096B4;
  v7[3] = &unk_100078B98;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(queue, v7);
}

- (void)_startServerWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_queue);
  [(BMRapportSyncEngine *)self registerRequests];
  rapportManager = self->_rapportManager;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000976C;
  v7[3] = &unk_100078BC0;
  v8 = completionCopy;
  v6 = completionCopy;
  [(BMRapportManager *)rapportManager startWithCompletion:v7];
}

- (void)syncNowWithReason:(unint64_t)reason activity:(id)activity completionHandler:(id)handler
{
  activityCopy = activity;
  handlerCopy = handler;
  queue = self->_queue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000984C;
  v13[3] = &unk_100078BE8;
  v13[4] = self;
  v14 = activityCopy;
  v15 = handlerCopy;
  reasonCopy = reason;
  v11 = handlerCopy;
  v12 = activityCopy;
  dispatch_async(queue, v13);
}

- (void)syncNowWithDevices:(id)devices reason:(unint64_t)reason activity:(id)activity completionHandler:(id)handler
{
  devicesCopy = devices;
  activityCopy = activity;
  handlerCopy = handler;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100009954;
  block[3] = &unk_100078C10;
  block[4] = self;
  v18 = devicesCopy;
  v20 = handlerCopy;
  reasonCopy = reason;
  v19 = activityCopy;
  v14 = handlerCopy;
  v15 = activityCopy;
  v16 = devicesCopy;
  dispatch_async(queue, block);
}

- (void)completeRequestIfDeliveredToAllNearbyDevices:(id)devices
{
  devicesCopy = devices;
  dispatch_assert_queue_V2(self->_queue);
  selfCopy = self;
  discoveredDevices = [(BMRapportManager *)self->_rapportManager discoveredDevices];
  v6 = [NSSet setWithArray:discoveredDevices];

  v7 = objc_opt_new();
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v44 objects:v55 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v45;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v45 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v44 + 1) + 8 * i);
        deliveredToDevices = [devicesCopy deliveredToDevices];
        v15 = [deliveredToDevices containsObject:v13];

        if (v15)
        {
          [v7 addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v44 objects:v55 count:16];
    }

    while (v10);
  }

  if ([v8 isSubsetOfSet:v7])
  {
    deliveredToDevices2 = [devicesCopy deliveredToDevices];
    [v7 unionSet:deliveredToDevices2];

    v17 = objc_opt_new();
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v18 = v7;
    v19 = [v18 countByEnumeratingWithState:&v40 objects:v54 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v41;
      do
      {
        for (j = 0; j != v20; j = j + 1)
        {
          if (*v41 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v40 + 1) + 8 * j);
          bmDeviceIdentifier = [v23 bmDeviceIdentifier];

          if (bmDeviceIdentifier)
          {
            bmDeviceIdentifier2 = [v23 bmDeviceIdentifier];
            [v17 addObject:bmDeviceIdentifier2];
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v40 objects:v54 count:16];
      }

      while (v20);
    }

    v26 = __biome_log_for_category();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      siteSuffix = [(BMRapportSyncEngine *)selfCopy siteSuffix];
      inFlightToDevices = [devicesCopy inFlightToDevices];
      *buf = 138412546;
      v49 = siteSuffix;
      v50 = 2112;
      v51 = inFlightToDevices;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "BMRapportSyncEngine%@: completing request, still inflight: %@", buf, 0x16u);
    }

    v29 = objc_opt_new();
    errorFromDevice = [devicesCopy errorFromDevice];
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_100009DEC;
    v37[3] = &unk_100078C38;
    v31 = devicesCopy;
    v38 = v31;
    v39 = v29;
    v32 = v29;
    [errorFromDevice enumerateKeysAndObjectsUsingBlock:v37];

    allObjects = [v17 allObjects];
    [(BMRapportSyncEngine *)selfCopy completeRequest:v31 deliveredToDevices:allObjects withErrors:v32];
  }

  else
  {
    v17 = [v8 mutableCopy];
    [v17 minusSet:v7];
    v32 = __biome_log_for_category();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      siteSuffix2 = [(BMRapportSyncEngine *)selfCopy siteSuffix];
      inFlightToDevices2 = [devicesCopy inFlightToDevices];
      *buf = 138412802;
      v49 = siteSuffix2;
      v50 = 2112;
      v51 = inFlightToDevices2;
      v52 = 2112;
      v53 = v17;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "BMRapportSyncEngine%@: request(s) still inflight: %@, nearbyAndNotDelivered: %@", buf, 0x20u);
    }
  }
}

- (void)completeRequest:(id)request deliveredToDevices:(id)devices withErrors:(id)errors
{
  requestCopy = request;
  devicesCopy = devices;
  errorsCopy = errors;
  dispatch_assert_queue_V2(self->_queue);
  if ([requestCopy state] == 2)
  {
    completionHandler2 = __biome_log_for_category();
    if (os_log_type_enabled(completionHandler2, OS_LOG_TYPE_DEFAULT))
    {
      siteSuffix = [(BMRapportSyncEngine *)self siteSuffix];
      v23 = 138412546;
      v24 = siteSuffix;
      v25 = 2112;
      v26 = requestCopy;
      _os_log_impl(&_mh_execute_header, completionHandler2, OS_LOG_TYPE_DEFAULT, "BMRapportSyncEngine%@: request %@ already finished running", &v23, 0x16u);
    }

LABEL_8:

    goto LABEL_9;
  }

  [requestCopy setState:2];
  metricsCollector = self->_metricsCollector;
  sessionContext = [requestCopy sessionContext];
  sessionID = [sessionContext sessionID];
  lastRapportSyncDate = [(BMSyncDatabase *)self->_primaryDatabase lastRapportSyncDate];
  [(BMSyncSessionMetricsCollector *)metricsCollector recordSessionEnd:sessionID lastSyncDate:lastRapportSyncDate];

  primaryDatabase = self->_primaryDatabase;
  v18 = objc_opt_new();
  [(BMSyncDatabase *)primaryDatabase setLastRapportSyncDate:v18];

  completionHandler = [requestCopy completionHandler];

  if (completionHandler)
  {
    v20 = __biome_log_for_category();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      siteSuffix2 = [(BMRapportSyncEngine *)self siteSuffix];
      v23 = 138412802;
      v24 = siteSuffix2;
      v25 = 2112;
      v26 = devicesCopy;
      v27 = 2112;
      v28 = errorsCopy;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "BMRapportSyncEngine%@: completeRequest:deliveredToDevices %@ withErrors:%@", &v23, 0x20u);
    }

    completionHandler2 = [requestCopy completionHandler];
    (*(completionHandler2 + 16))(completionHandler2, devicesCopy, errorsCopy);
    goto LABEL_8;
  }

LABEL_9:
  currentRequest = self->_currentRequest;
  self->_currentRequest = 0;
}

- (void)runRequest:(id)request onDevice:(id)device
{
  requestCopy = request;
  deviceCopy = device;
  deliveredToDevices = [requestCopy deliveredToDevices];
  if ([deliveredToDevices containsObject:deviceCopy])
  {
  }

  else
  {
    inFlightToDevices = [requestCopy inFlightToDevices];
    v8 = [inFlightToDevices containsObject:deviceCopy];

    if ((v8 & 1) == 0)
    {
      [requestCopy runRequestOnDevice:deviceCopy];
    }
  }
}

- (void)sendFetchAtomBatchesRequest:(id)request toDevice:(id)device forRequest:(id)forRequest
{
  requestCopy = request;
  deviceCopy = device;
  forRequestCopy = forRequest;
  dictionaryRepresentation = [requestCopy dictionaryRepresentation];
  rapportManager = self->_rapportManager;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10000B380;
  v16[3] = &unk_100078CB0;
  v16[4] = self;
  v17 = deviceCopy;
  v18 = forRequestCopy;
  v19 = requestCopy;
  v13 = requestCopy;
  v14 = forRequestCopy;
  v15 = deviceCopy;
  [(BMRapportManager *)rapportManager sendRequest:@"com.apple.biomesyncd.fetchAtomBatches" request:dictionaryRepresentation toDevice:v15 responseHandler:v16];
}

- (void)registerRequests
{
  dispatch_assert_queue_V2(self->_queue);
  v6 = RPOptionStatusFlags;
  v7 = &off_10007F378;
  v3 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  rapportManager = self->_rapportManager;
  fetchAtomBatchesRequestHandler = [(BMRapportSyncEngine *)self fetchAtomBatchesRequestHandler];
  [(BMRapportManager *)rapportManager registerRequestID:@"com.apple.biomesyncd.fetchAtomBatches" options:v3 requestHandler:fetchAtomBatchesRequestHandler];
}

- (BOOL)rapportManager:(id)manager isDeviceSupported:(id)supported
{
  supportedCopy = supported;
  v6 = +[BMDeviceMetadataUtils platform];
  platform = [supportedCopy platform];
  if (v6 != 6)
  {
    if (platform != 6)
    {
      goto LABEL_12;
    }

    if (v6 == 2)
    {
      device = [supportedCopy device];
      statusFlags = [device statusFlags];

      if (statusFlags)
      {
        goto LABEL_12;
      }
    }

LABEL_9:
    v10 = __biome_log_for_category();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      siteSuffix = [(BMRapportSyncEngine *)self siteSuffix];
      v17 = 138412546;
      v18 = siteSuffix;
      v19 = 2112;
      v20 = supportedCopy;
      v12 = "BMRapportSyncEngine%@: current platform disallowed from syncing with non-paired watch: %@";
      goto LABEL_16;
    }

LABEL_17:

    v15 = 0;
    goto LABEL_18;
  }

  if (platform != 2 || ([supportedCopy device], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "statusFlags"), v8, (v9 & 1) == 0))
  {
    v10 = __biome_log_for_category();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      siteSuffix = [(BMRapportSyncEngine *)self siteSuffix];
      v17 = 138412546;
      v18 = siteSuffix;
      v19 = 2112;
      v20 = supportedCopy;
      v12 = "BMRapportSyncEngine%@: current watch disallowed from syncing with non-paired device: %@";
LABEL_16:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, v12, &v17, 0x16u);

      goto LABEL_17;
    }

    goto LABEL_17;
  }

  if ([supportedCopy platform] == 6)
  {
    goto LABEL_9;
  }

LABEL_12:
  if (!-[BMDistributedSyncMultiStreamManager supportsSyncingWithPlatform:overTransport:inDirection:](self->_primarySyncManager, "supportsSyncingWithPlatform:overTransport:inDirection:", [supportedCopy platform], 2, 3))
  {
    v10 = __biome_log_for_category();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      siteSuffix = [(BMRapportSyncEngine *)self siteSuffix];
      v17 = 138412546;
      v18 = siteSuffix;
      v19 = 2112;
      v20 = supportedCopy;
      v12 = "BMRapportSyncEngine%@: syncing with device platform disallowed for device: %@";
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  v15 = 1;
LABEL_18:

  return v15;
}

- (void)rapportManager:(id)manager didDiscoverBMRapportDevice:(id)device
{
  queue = self->_queue;
  deviceCopy = device;
  dispatch_assert_queue_V2(queue);
  [(BMRapportSyncEngine *)self runRequest:self->_currentRequest onDevice:deviceCopy];
}

- (void)rapportManagerDiscoveryTimedOut:(id)out
{
  dispatch_assert_queue_V2(self->_queue);
  v4 = [NSError errorWithDomain:@"BMRapportErrorDomain" code:6 userInfo:0];
  completionHandler = [(BMRapportRequest *)self->_currentRequest completionHandler];

  if (completionHandler)
  {
    completionHandler2 = [(BMRapportRequest *)self->_currentRequest completionHandler];
    v8 = v4;
    v7 = [NSArray arrayWithObjects:&v8 count:1];
    (completionHandler2)[2](completionHandler2, &__NSArray0__struct, v7);
  }

  [(BMRapportManager *)self->_rapportManager stop];
}

- (id)fetchAtomBatchesRequestHandler
{
  objc_initWeak(&location, self);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000BB74;
  v5[3] = &unk_100078D00;
  objc_copyWeak(&v6, &location);
  v5[4] = self;
  v3 = objc_retainBlock(v5);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);

  return v3;
}

- (void)handleFetchAtomBatchesResponse:(id)response options:(id)options error:(id)error fromDevice:(id)device forRequest:(id)request isReciprocal:(BOOL)reciprocal
{
  reciprocalCopy = reciprocal;
  responseCopy = response;
  optionsCopy = options;
  errorCopy = error;
  deviceCopy = device;
  requestCopy = request;
  dispatch_assert_queue_V2(self->_queue);
  +[BMSyncCore resetEagerExitTimer];
  v18 = [[BMFetchAtomBatchesResponse alloc] initFromDictionary:responseCopy];
  peer = [v18 peer];
  v20 = [optionsCopy objectForKeyedSubscript:RPOptionSenderIDSDeviceID];
  [peer setIdsDeviceIdentifier:v20];

  v76 = optionsCopy;
  v75 = [(BMRapportSyncEngine *)self accountFromRapportOptions:optionsCopy];
  v21 = [(BMRapportSyncEngine *)self createDistributedSyncManagerForAccount:?];
  v22 = v21;
  if (v21)
  {
    if (errorCopy)
    {
      v23 = v21;
      v24 = __biome_log_for_category();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [(BMRapportSyncEngine *)self siteSuffix];
        v74 = deviceCopy;
        v64 = errorCopy;
        v66 = v65 = responseCopy;
        *buf = 138413058;
        v79 = v66;
        v80 = 2112;
        v81 = v65;
        v82 = 2112;
        v83 = v64;
        v84 = 2112;
        v85 = v74;
        _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "BMRapportSyncEngine%@: handleFetchAtomBatchesResponse %@ error %@ fromDevice: %@", buf, 0x2Au);

        responseCopy = v65;
        errorCopy = v64;
        deviceCopy = v74;
      }

      v22 = v23;
      peerStatusTracker = [v23 peerStatusTracker];
      [(BMRapportSyncEngine *)self finishRequest:requestCopy toDevice:deviceCopy withError:errorCopy peerInfo:peer peerStatusTracker:peerStatusTracker];
      goto LABEL_32;
    }

    v68 = reciprocalCopy;
    v72 = responseCopy;
    peerStatusTracker = [responseCopy mutableCopy];
    v27 = [peerStatusTracker objectForKeyedSubscript:@"deletedLocations"];
    if (v27)
    {
      v28 = @"... redacted due to size ...";
    }

    else
    {
      v28 = 0;
    }

    [peerStatusTracker setObject:v28 forKeyedSubscript:@"deletedLocations"];

    v29 = __biome_log_for_category();
    v73 = deviceCopy;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      siteSuffix = [(BMRapportSyncEngine *)self siteSuffix];
      shortenedRapportIdentifier = [deviceCopy shortenedRapportIdentifier];
      *buf = 138413058;
      v79 = siteSuffix;
      v80 = 2112;
      v81 = shortenedRapportIdentifier;
      v82 = 2112;
      v83 = peerStatusTracker;
      v84 = 2112;
      v85 = optionsCopy;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "BMRapportSyncEngine%@: received response from BMRapportDevice[%@] %@ %@", buf, 0x2Au);

      deviceCopy = v73;
    }

    deviceIdentifier = [peer deviceIdentifier];
    if (deviceIdentifier)
    {
      [deviceCopy setBmDeviceIdentifier:deviceIdentifier];
      metricsCollector = self->_metricsCollector;
      atomBatchBytes = [v18 atomBatchBytes];
      selfCopy = self;
      v35 = peer;
      v36 = peerStatusTracker;
      v37 = v18;
      v38 = deviceCopy;
      v39 = atomBatchBytes;
      sessionContext = [requestCopy sessionContext];
      v41 = v39;
      deviceCopy = v38;
      v18 = v37;
      peerStatusTracker = v36;
      peer = v35;
      self = selfCopy;
      [(BMSyncSessionMetricsCollector *)metricsCollector recordMessageToDeviceIdentifier:deviceIdentifier reachable:1 bytes:v41 isReciprocal:v68 sessionContext:sessionContext];

      sessionContext2 = [requestCopy sessionContext];
      [sessionContext2 setOriginatingSiteIdentifier:deviceIdentifier];
    }

    atomBatches = [v18 atomBatches];
    deletedLocations = [v18 deletedLocations];
    sessionContext3 = [requestCopy sessionContext];
    v71 = deletedLocations;
    [v22 mergeAtomBatches:atomBatches deletedLocations:deletedLocations sessionContext:sessionContext3];

    if ([v18 moreComing])
    {
      activity = [requestCopy activity];
      if (activity && (v47 = activity, [requestCopy activity], v48 = objc_claimAutoreleasedReturnValue(), should_defer = xpc_activity_should_defer(v48), v48, v47, should_defer))
      {
        v50 = __biome_log_for_category();
        deviceCopy = v73;
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
        {
          siteSuffix2 = [(BMRapportSyncEngine *)self siteSuffix];
          *buf = 138412546;
          v79 = siteSuffix2;
          v80 = 2112;
          v81 = v73;
          _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "BMRapportSyncEngine%@: asked to defer activity, won't issue more requests to device %@ even though more data is available", buf, 0x16u);
        }

        v52 = 13;
      }

      else
      {
        v56 = [v18 batchSequenceNumber] + 1;
        errorCopy = 0;
        if (v56 < 6)
        {
          syncReason = [v18 syncReason];
          v67 = v56;
          v61 = v56;
          deviceCopy = v73;
          peerStatusTracker3 = [(BMRapportSyncEngine *)self buildAtomBatchRequestWithIsReciprocal:v68 syncReason:syncReason sequenceNumber:v61 transportType:2 device:v73];
          v62 = __biome_log_for_category();
          v69 = v62;
          if (peerStatusTracker3)
          {
            if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
            {
              siteSuffix3 = [(BMRapportSyncEngine *)self siteSuffix];
              *buf = 138412802;
              v79 = siteSuffix3;
              v80 = 2112;
              v81 = v73;
              v82 = 2048;
              v83 = v67;
              _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "BMRapportSyncEngine%@: sending request to device %@ with sequence number %lu", buf, 0x20u);

              errorCopy = 0;
            }

            [(BMRapportSyncEngine *)self sendFetchAtomBatchesRequest:peerStatusTracker3 toDevice:v73 forRequest:requestCopy];
          }

          else
          {
            if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
            {
              sub_100047D74();
            }
          }

          goto LABEL_31;
        }

        v57 = __biome_log_for_category();
        deviceCopy = v73;
        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
        {
          siteSuffix4 = [(BMRapportSyncEngine *)self siteSuffix];
          *buf = 138412802;
          v79 = siteSuffix4;
          v80 = 2048;
          v81 = 5;
          v82 = 2112;
          v83 = v73;
          _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "BMRapportSyncEngine%@: max request depth %lu hit, finishing request to device %@", buf, 0x20u);
        }

        v52 = 12;
      }

      peerStatusTracker3 = [NSError errorWithDomain:@"BMRapportErrorDomain" code:v52 userInfo:0];
      peerStatusTracker2 = [v22 peerStatusTracker];
      [(BMRapportSyncEngine *)self finishRequest:requestCopy toDevice:deviceCopy withError:peerStatusTracker3 peerInfo:peer peerStatusTracker:peerStatusTracker2];
    }

    else
    {
      v53 = __biome_log_for_category();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
      {
        siteSuffix5 = [(BMRapportSyncEngine *)self siteSuffix];
        *buf = 138412546;
        v79 = siteSuffix5;
        v80 = 2112;
        v81 = deviceCopy;
        _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "BMRapportSyncEngine%@: no more data coming from device %@ finishing request", buf, 0x16u);
      }

      peerStatusTracker3 = [v22 peerStatusTracker];
      [(BMRapportSyncEngine *)self finishRequest:requestCopy toDevice:deviceCopy withError:0 peerInfo:peer peerStatusTracker:peerStatusTracker3];
    }

    errorCopy = 0;
LABEL_31:

    responseCopy = v72;
    goto LABEL_32;
  }

  v26 = __biome_log_for_category();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    sub_100047E00();
  }

  peerStatusTracker = [0 peerStatusTracker];
  [(BMRapportSyncEngine *)self finishRequest:requestCopy toDevice:deviceCopy withError:errorCopy peerInfo:peer peerStatusTracker:peerStatusTracker];
  v22 = 0;
LABEL_32:
}

- (void)finishRequest:(id)request toDevice:(id)device withError:(id)error peerInfo:(id)info peerStatusTracker:(id)tracker
{
  infoCopy = info;
  trackerCopy = tracker;
  requestCopy = request;
  [requestCopy markAsDeliveredToDevice:device withError:error];
  [(BMRapportSyncEngine *)self completeRequestIfDeliveredToAllNearbyDevices:requestCopy];

  if (infoCopy)
  {
    deviceIdentifier = [infoCopy deviceIdentifier];

    if (deviceIdentifier)
    {
      [trackerCopy upsertSyncDevicePeer:infoCopy];
      v15 = +[NSDate now];
      deviceIdentifier2 = [infoCopy deviceIdentifier];
      [trackerCopy setLastSyncDate:v15 forDeviceWithIdentifier:deviceIdentifier2];
    }
  }
}

- (id)accountFromRapportOptions:(id)options
{
  optionsCopy = options;
  v5 = [optionsCopy objectForKeyedSubscript:@"senderAccountAltDSID"];
  if ([v5 length])
  {
    account = [[BMAccount alloc] initWithAccountIdentifier:v5];
    if (account)
    {
LABEL_3:
      v7 = account;
      goto LABEL_10;
    }
  }

  else
  {
    v8 = __biome_log_for_category();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      siteSuffix = [(BMRapportSyncEngine *)self siteSuffix];
      v15 = 138412546;
      v16 = siteSuffix;
      v17 = 2112;
      v18 = optionsCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "BMRapportSyncEngine%@: Attempting to use discovered devices cache to identify account for %@", &v15, 0x16u);
    }

    rapportManager = self->_rapportManager;
    v11 = [optionsCopy objectForKeyedSubscript:RPOptionSenderIDSDeviceID];
    v12 = [(BMRapportManager *)rapportManager deviceWithIdentifier:v11];

    account = [v12 account];

    if (account)
    {
      goto LABEL_3;
    }
  }

  v13 = __biome_log_for_category();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    sub_100047E8C();
  }

LABEL_10:

  return account;
}

@end