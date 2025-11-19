@interface BMRapportSyncEngine
- (BMRapportSyncEngine)initWithQueue:(id)a3 primarySyncManager:(id)a4 primaryDatabase:(id)a5;
- (BMRapportSyncEngine)initWithQueue:(id)a3 primarySyncManager:(id)a4 rapportManager:(id)a5 atomBatchChunkerPolicy:(id)a6 primaryDatabase:(id)a7;
- (BOOL)rapportManager:(id)a3 isDeviceSupported:(id)a4;
- (id)accountFromRapportOptions:(id)a3;
- (id)fetchAtomBatchesRequestHandler;
- (void)_startServerWithCompletion:(id)a3;
- (void)completeRequest:(id)a3 deliveredToDevices:(id)a4 withErrors:(id)a5;
- (void)completeRequestIfDeliveredToAllNearbyDevices:(id)a3;
- (void)finishRequest:(id)a3 toDevice:(id)a4 withError:(id)a5 peerInfo:(id)a6 peerStatusTracker:(id)a7;
- (void)handleFetchAtomBatchesResponse:(id)a3 options:(id)a4 error:(id)a5 fromDevice:(id)a6 forRequest:(id)a7 isReciprocal:(BOOL)a8;
- (void)rapportManager:(id)a3 didDiscoverBMRapportDevice:(id)a4;
- (void)rapportManagerDiscoveryTimedOut:(id)a3;
- (void)registerRequests;
- (void)runRequest:(id)a3 onDevice:(id)a4;
- (void)sendFetchAtomBatchesRequest:(id)a3 toDevice:(id)a4 forRequest:(id)a5;
- (void)startClient;
- (void)startServerWithCompletion:(id)a3;
- (void)syncNowWithDevices:(id)a3 reason:(unint64_t)a4 activity:(id)a5 completionHandler:(id)a6;
- (void)syncNowWithReason:(unint64_t)a3 activity:(id)a4 completionHandler:(id)a5;
@end

@implementation BMRapportSyncEngine

- (BMRapportSyncEngine)initWithQueue:(id)a3 primarySyncManager:(id)a4 primaryDatabase:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v27.receiver = self;
  v27.super_class = BMRapportSyncEngine;
  v12 = [(BMRapportSyncEngine *)&v27 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_primarySyncManager, a4);
    v14 = [v10 peerStatusTracker];
    peerStatusTracker = v13->_peerStatusTracker;
    v13->_peerStatusTracker = v14;

    v16 = [v10 metricsCollector];
    metricsCollector = v13->_metricsCollector;
    v13->_metricsCollector = v16;

    objc_storeStrong(&v13->_queue, a3);
    v18 = [[BMRapportManager alloc] initWithQueue:v9];
    rapportManager = v13->_rapportManager;
    v13->_rapportManager = v18;

    [(BMRapportManager *)v13->_rapportManager setDelegate:v13];
    v20 = [v10 peerStatusTracker];
    v21 = [v20 localDeviceIdentifierCreatingIfNecessary];
    v22 = [v21 copy];
    localDeviceIdentifier = v13->_localDeviceIdentifier;
    v13->_localDeviceIdentifier = v22;

    v24 = [[BMAtomBatchMaxBytes alloc] initWithMaxBytes:0x200000];
    atomBatchChunkerPolicy = v13->_atomBatchChunkerPolicy;
    v13->_atomBatchChunkerPolicy = v24;

    objc_storeStrong(&v13->_primaryDatabase, a5);
  }

  return v13;
}

- (BMRapportSyncEngine)initWithQueue:(id)a3 primarySyncManager:(id)a4 rapportManager:(id)a5 atomBatchChunkerPolicy:(id)a6 primaryDatabase:(id)a7
{
  v28 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v29.receiver = self;
  v29.super_class = BMRapportSyncEngine;
  v17 = [(BMRapportSyncEngine *)&v29 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_primarySyncManager, a4);
    v19 = [v13 peerStatusTracker];
    peerStatusTracker = v18->_peerStatusTracker;
    v18->_peerStatusTracker = v19;

    v21 = [v13 metricsCollector];
    metricsCollector = v18->_metricsCollector;
    v18->_metricsCollector = v21;

    objc_storeStrong(&v18->_queue, a3);
    objc_storeStrong(&v18->_rapportManager, a5);
    [(BMRapportManager *)v18->_rapportManager setDelegate:v18];
    objc_storeStrong(&v18->_atomBatchChunkerPolicy, a6);
    v23 = [v13 peerStatusTracker];
    v24 = [v23 localDeviceIdentifierCreatingIfNecessary];
    v25 = [v24 copy];
    localDeviceIdentifier = v18->_localDeviceIdentifier;
    v18->_localDeviceIdentifier = v25;

    objc_storeStrong(&v18->_primaryDatabase, a7);
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

- (void)startServerWithCompletion:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000096B4;
  v7[3] = &unk_100078B98;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)_startServerWithCompletion:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  [(BMRapportSyncEngine *)self registerRequests];
  rapportManager = self->_rapportManager;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000976C;
  v7[3] = &unk_100078BC0;
  v8 = v4;
  v6 = v4;
  [(BMRapportManager *)rapportManager startWithCompletion:v7];
}

- (void)syncNowWithReason:(unint64_t)a3 activity:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  queue = self->_queue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000984C;
  v13[3] = &unk_100078BE8;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a3;
  v11 = v9;
  v12 = v8;
  dispatch_async(queue, v13);
}

- (void)syncNowWithDevices:(id)a3 reason:(unint64_t)a4 activity:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100009954;
  block[3] = &unk_100078C10;
  block[4] = self;
  v18 = v10;
  v20 = v12;
  v21 = a4;
  v19 = v11;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  dispatch_async(queue, block);
}

- (void)completeRequestIfDeliveredToAllNearbyDevices:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v36 = self;
  v5 = [(BMRapportManager *)self->_rapportManager discoveredDevices];
  v6 = [NSSet setWithArray:v5];

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
        v14 = [v4 deliveredToDevices];
        v15 = [v14 containsObject:v13];

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
    v16 = [v4 deliveredToDevices];
    [v7 unionSet:v16];

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
          v24 = [v23 bmDeviceIdentifier];

          if (v24)
          {
            v25 = [v23 bmDeviceIdentifier];
            [v17 addObject:v25];
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v40 objects:v54 count:16];
      }

      while (v20);
    }

    v26 = __biome_log_for_category();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = [(BMRapportSyncEngine *)v36 siteSuffix];
      v28 = [v4 inFlightToDevices];
      *buf = 138412546;
      v49 = v27;
      v50 = 2112;
      v51 = v28;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "BMRapportSyncEngine%@: completing request, still inflight: %@", buf, 0x16u);
    }

    v29 = objc_opt_new();
    v30 = [v4 errorFromDevice];
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_100009DEC;
    v37[3] = &unk_100078C38;
    v31 = v4;
    v38 = v31;
    v39 = v29;
    v32 = v29;
    [v30 enumerateKeysAndObjectsUsingBlock:v37];

    v33 = [v17 allObjects];
    [(BMRapportSyncEngine *)v36 completeRequest:v31 deliveredToDevices:v33 withErrors:v32];
  }

  else
  {
    v17 = [v8 mutableCopy];
    [v17 minusSet:v7];
    v32 = __biome_log_for_category();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v34 = [(BMRapportSyncEngine *)v36 siteSuffix];
      v35 = [v4 inFlightToDevices];
      *buf = 138412802;
      v49 = v34;
      v50 = 2112;
      v51 = v35;
      v52 = 2112;
      v53 = v17;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "BMRapportSyncEngine%@: request(s) still inflight: %@, nearbyAndNotDelivered: %@", buf, 0x20u);
    }
  }
}

- (void)completeRequest:(id)a3 deliveredToDevices:(id)a4 withErrors:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  dispatch_assert_queue_V2(self->_queue);
  if ([v8 state] == 2)
  {
    v11 = __biome_log_for_category();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(BMRapportSyncEngine *)self siteSuffix];
      v23 = 138412546;
      v24 = v12;
      v25 = 2112;
      v26 = v8;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "BMRapportSyncEngine%@: request %@ already finished running", &v23, 0x16u);
    }

LABEL_8:

    goto LABEL_9;
  }

  [v8 setState:2];
  metricsCollector = self->_metricsCollector;
  v14 = [v8 sessionContext];
  v15 = [v14 sessionID];
  v16 = [(BMSyncDatabase *)self->_primaryDatabase lastRapportSyncDate];
  [(BMSyncSessionMetricsCollector *)metricsCollector recordSessionEnd:v15 lastSyncDate:v16];

  primaryDatabase = self->_primaryDatabase;
  v18 = objc_opt_new();
  [(BMSyncDatabase *)primaryDatabase setLastRapportSyncDate:v18];

  v19 = [v8 completionHandler];

  if (v19)
  {
    v20 = __biome_log_for_category();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [(BMRapportSyncEngine *)self siteSuffix];
      v23 = 138412802;
      v24 = v21;
      v25 = 2112;
      v26 = v9;
      v27 = 2112;
      v28 = v10;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "BMRapportSyncEngine%@: completeRequest:deliveredToDevices %@ withErrors:%@", &v23, 0x20u);
    }

    v11 = [v8 completionHandler];
    (*(v11 + 16))(v11, v9, v10);
    goto LABEL_8;
  }

LABEL_9:
  currentRequest = self->_currentRequest;
  self->_currentRequest = 0;
}

- (void)runRequest:(id)a3 onDevice:(id)a4
{
  v9 = a3;
  v5 = a4;
  v6 = [v9 deliveredToDevices];
  if ([v6 containsObject:v5])
  {
  }

  else
  {
    v7 = [v9 inFlightToDevices];
    v8 = [v7 containsObject:v5];

    if ((v8 & 1) == 0)
    {
      [v9 runRequestOnDevice:v5];
    }
  }
}

- (void)sendFetchAtomBatchesRequest:(id)a3 toDevice:(id)a4 forRequest:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 dictionaryRepresentation];
  rapportManager = self->_rapportManager;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10000B380;
  v16[3] = &unk_100078CB0;
  v16[4] = self;
  v17 = v9;
  v18 = v10;
  v19 = v8;
  v13 = v8;
  v14 = v10;
  v15 = v9;
  [(BMRapportManager *)rapportManager sendRequest:@"com.apple.biomesyncd.fetchAtomBatches" request:v11 toDevice:v15 responseHandler:v16];
}

- (void)registerRequests
{
  dispatch_assert_queue_V2(self->_queue);
  v6 = RPOptionStatusFlags;
  v7 = &off_10007F378;
  v3 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  rapportManager = self->_rapportManager;
  v5 = [(BMRapportSyncEngine *)self fetchAtomBatchesRequestHandler];
  [(BMRapportManager *)rapportManager registerRequestID:@"com.apple.biomesyncd.fetchAtomBatches" options:v3 requestHandler:v5];
}

- (BOOL)rapportManager:(id)a3 isDeviceSupported:(id)a4
{
  v5 = a4;
  v6 = +[BMDeviceMetadataUtils platform];
  v7 = [v5 platform];
  if (v6 != 6)
  {
    if (v7 != 6)
    {
      goto LABEL_12;
    }

    if (v6 == 2)
    {
      v13 = [v5 device];
      v14 = [v13 statusFlags];

      if (v14)
      {
        goto LABEL_12;
      }
    }

LABEL_9:
    v10 = __biome_log_for_category();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [(BMRapportSyncEngine *)self siteSuffix];
      v17 = 138412546;
      v18 = v11;
      v19 = 2112;
      v20 = v5;
      v12 = "BMRapportSyncEngine%@: current platform disallowed from syncing with non-paired watch: %@";
      goto LABEL_16;
    }

LABEL_17:

    v15 = 0;
    goto LABEL_18;
  }

  if (v7 != 2 || ([v5 device], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "statusFlags"), v8, (v9 & 1) == 0))
  {
    v10 = __biome_log_for_category();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [(BMRapportSyncEngine *)self siteSuffix];
      v17 = 138412546;
      v18 = v11;
      v19 = 2112;
      v20 = v5;
      v12 = "BMRapportSyncEngine%@: current watch disallowed from syncing with non-paired device: %@";
LABEL_16:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, v12, &v17, 0x16u);

      goto LABEL_17;
    }

    goto LABEL_17;
  }

  if ([v5 platform] == 6)
  {
    goto LABEL_9;
  }

LABEL_12:
  if (!-[BMDistributedSyncMultiStreamManager supportsSyncingWithPlatform:overTransport:inDirection:](self->_primarySyncManager, "supportsSyncingWithPlatform:overTransport:inDirection:", [v5 platform], 2, 3))
  {
    v10 = __biome_log_for_category();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [(BMRapportSyncEngine *)self siteSuffix];
      v17 = 138412546;
      v18 = v11;
      v19 = 2112;
      v20 = v5;
      v12 = "BMRapportSyncEngine%@: syncing with device platform disallowed for device: %@";
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  v15 = 1;
LABEL_18:

  return v15;
}

- (void)rapportManager:(id)a3 didDiscoverBMRapportDevice:(id)a4
{
  queue = self->_queue;
  v6 = a4;
  dispatch_assert_queue_V2(queue);
  [(BMRapportSyncEngine *)self runRequest:self->_currentRequest onDevice:v6];
}

- (void)rapportManagerDiscoveryTimedOut:(id)a3
{
  dispatch_assert_queue_V2(self->_queue);
  v4 = [NSError errorWithDomain:@"BMRapportErrorDomain" code:6 userInfo:0];
  v5 = [(BMRapportRequest *)self->_currentRequest completionHandler];

  if (v5)
  {
    v6 = [(BMRapportRequest *)self->_currentRequest completionHandler];
    v8 = v4;
    v7 = [NSArray arrayWithObjects:&v8 count:1];
    (v6)[2](v6, &__NSArray0__struct, v7);
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

- (void)handleFetchAtomBatchesResponse:(id)a3 options:(id)a4 error:(id)a5 fromDevice:(id)a6 forRequest:(id)a7 isReciprocal:(BOOL)a8
{
  v8 = a8;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v77 = a7;
  dispatch_assert_queue_V2(self->_queue);
  +[BMSyncCore resetEagerExitTimer];
  v18 = [[BMFetchAtomBatchesResponse alloc] initFromDictionary:v14];
  v19 = [v18 peer];
  v20 = [v15 objectForKeyedSubscript:RPOptionSenderIDSDeviceID];
  [v19 setIdsDeviceIdentifier:v20];

  v76 = v15;
  v75 = [(BMRapportSyncEngine *)self accountFromRapportOptions:v15];
  v21 = [(BMRapportSyncEngine *)self createDistributedSyncManagerForAccount:?];
  v22 = v21;
  if (v21)
  {
    if (v16)
    {
      v23 = v21;
      v24 = __biome_log_for_category();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [(BMRapportSyncEngine *)self siteSuffix];
        v74 = v17;
        v64 = v16;
        v66 = v65 = v14;
        *buf = 138413058;
        v79 = v66;
        v80 = 2112;
        v81 = v65;
        v82 = 2112;
        v83 = v64;
        v84 = 2112;
        v85 = v74;
        _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "BMRapportSyncEngine%@: handleFetchAtomBatchesResponse %@ error %@ fromDevice: %@", buf, 0x2Au);

        v14 = v65;
        v16 = v64;
        v17 = v74;
      }

      v22 = v23;
      v25 = [v23 peerStatusTracker];
      [(BMRapportSyncEngine *)self finishRequest:v77 toDevice:v17 withError:v16 peerInfo:v19 peerStatusTracker:v25];
      goto LABEL_32;
    }

    v68 = v8;
    v72 = v14;
    v25 = [v14 mutableCopy];
    v27 = [v25 objectForKeyedSubscript:@"deletedLocations"];
    if (v27)
    {
      v28 = @"... redacted due to size ...";
    }

    else
    {
      v28 = 0;
    }

    [v25 setObject:v28 forKeyedSubscript:@"deletedLocations"];

    v29 = __biome_log_for_category();
    v73 = v17;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = [(BMRapportSyncEngine *)self siteSuffix];
      v31 = [v17 shortenedRapportIdentifier];
      *buf = 138413058;
      v79 = v30;
      v80 = 2112;
      v81 = v31;
      v82 = 2112;
      v83 = v25;
      v84 = 2112;
      v85 = v15;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "BMRapportSyncEngine%@: received response from BMRapportDevice[%@] %@ %@", buf, 0x2Au);

      v17 = v73;
    }

    v32 = [v19 deviceIdentifier];
    if (v32)
    {
      [v17 setBmDeviceIdentifier:v32];
      metricsCollector = self->_metricsCollector;
      v34 = [v18 atomBatchBytes];
      v70 = self;
      v35 = v19;
      v36 = v25;
      v37 = v18;
      v38 = v17;
      v39 = v34;
      v40 = [v77 sessionContext];
      v41 = v39;
      v17 = v38;
      v18 = v37;
      v25 = v36;
      v19 = v35;
      self = v70;
      [(BMSyncSessionMetricsCollector *)metricsCollector recordMessageToDeviceIdentifier:v32 reachable:1 bytes:v41 isReciprocal:v68 sessionContext:v40];

      v42 = [v77 sessionContext];
      [v42 setOriginatingSiteIdentifier:v32];
    }

    v43 = [v18 atomBatches];
    v44 = [v18 deletedLocations];
    v45 = [v77 sessionContext];
    v71 = v44;
    [v22 mergeAtomBatches:v43 deletedLocations:v44 sessionContext:v45];

    if ([v18 moreComing])
    {
      v46 = [v77 activity];
      if (v46 && (v47 = v46, [v77 activity], v48 = objc_claimAutoreleasedReturnValue(), should_defer = xpc_activity_should_defer(v48), v48, v47, should_defer))
      {
        v50 = __biome_log_for_category();
        v17 = v73;
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
        {
          v51 = [(BMRapportSyncEngine *)self siteSuffix];
          *buf = 138412546;
          v79 = v51;
          v80 = 2112;
          v81 = v73;
          _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "BMRapportSyncEngine%@: asked to defer activity, won't issue more requests to device %@ even though more data is available", buf, 0x16u);
        }

        v52 = 13;
      }

      else
      {
        v56 = [v18 batchSequenceNumber] + 1;
        v16 = 0;
        if (v56 < 6)
        {
          v60 = [v18 syncReason];
          v67 = v56;
          v61 = v56;
          v17 = v73;
          v55 = [(BMRapportSyncEngine *)self buildAtomBatchRequestWithIsReciprocal:v68 syncReason:v60 sequenceNumber:v61 transportType:2 device:v73];
          v62 = __biome_log_for_category();
          v69 = v62;
          if (v55)
          {
            if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
            {
              v63 = [(BMRapportSyncEngine *)self siteSuffix];
              *buf = 138412802;
              v79 = v63;
              v80 = 2112;
              v81 = v73;
              v82 = 2048;
              v83 = v67;
              _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "BMRapportSyncEngine%@: sending request to device %@ with sequence number %lu", buf, 0x20u);

              v16 = 0;
            }

            [(BMRapportSyncEngine *)self sendFetchAtomBatchesRequest:v55 toDevice:v73 forRequest:v77];
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
        v17 = v73;
        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
        {
          v58 = [(BMRapportSyncEngine *)self siteSuffix];
          *buf = 138412802;
          v79 = v58;
          v80 = 2048;
          v81 = 5;
          v82 = 2112;
          v83 = v73;
          _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "BMRapportSyncEngine%@: max request depth %lu hit, finishing request to device %@", buf, 0x20u);
        }

        v52 = 12;
      }

      v55 = [NSError errorWithDomain:@"BMRapportErrorDomain" code:v52 userInfo:0];
      v59 = [v22 peerStatusTracker];
      [(BMRapportSyncEngine *)self finishRequest:v77 toDevice:v17 withError:v55 peerInfo:v19 peerStatusTracker:v59];
    }

    else
    {
      v53 = __biome_log_for_category();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
      {
        v54 = [(BMRapportSyncEngine *)self siteSuffix];
        *buf = 138412546;
        v79 = v54;
        v80 = 2112;
        v81 = v17;
        _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "BMRapportSyncEngine%@: no more data coming from device %@ finishing request", buf, 0x16u);
      }

      v55 = [v22 peerStatusTracker];
      [(BMRapportSyncEngine *)self finishRequest:v77 toDevice:v17 withError:0 peerInfo:v19 peerStatusTracker:v55];
    }

    v16 = 0;
LABEL_31:

    v14 = v72;
    goto LABEL_32;
  }

  v26 = __biome_log_for_category();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    sub_100047E00();
  }

  v25 = [0 peerStatusTracker];
  [(BMRapportSyncEngine *)self finishRequest:v77 toDevice:v17 withError:v16 peerInfo:v19 peerStatusTracker:v25];
  v22 = 0;
LABEL_32:
}

- (void)finishRequest:(id)a3 toDevice:(id)a4 withError:(id)a5 peerInfo:(id)a6 peerStatusTracker:(id)a7
{
  v17 = a6;
  v12 = a7;
  v13 = a3;
  [v13 markAsDeliveredToDevice:a4 withError:a5];
  [(BMRapportSyncEngine *)self completeRequestIfDeliveredToAllNearbyDevices:v13];

  if (v17)
  {
    v14 = [v17 deviceIdentifier];

    if (v14)
    {
      [v12 upsertSyncDevicePeer:v17];
      v15 = +[NSDate now];
      v16 = [v17 deviceIdentifier];
      [v12 setLastSyncDate:v15 forDeviceWithIdentifier:v16];
    }
  }
}

- (id)accountFromRapportOptions:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"senderAccountAltDSID"];
  if ([v5 length])
  {
    v6 = [[BMAccount alloc] initWithAccountIdentifier:v5];
    if (v6)
    {
LABEL_3:
      v7 = v6;
      goto LABEL_10;
    }
  }

  else
  {
    v8 = __biome_log_for_category();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [(BMRapportSyncEngine *)self siteSuffix];
      v15 = 138412546;
      v16 = v9;
      v17 = 2112;
      v18 = v4;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "BMRapportSyncEngine%@: Attempting to use discovered devices cache to identify account for %@", &v15, 0x16u);
    }

    rapportManager = self->_rapportManager;
    v11 = [v4 objectForKeyedSubscript:RPOptionSenderIDSDeviceID];
    v12 = [(BMRapportManager *)rapportManager deviceWithIdentifier:v11];

    v6 = [v12 account];

    if (v6)
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

  return v6;
}

@end