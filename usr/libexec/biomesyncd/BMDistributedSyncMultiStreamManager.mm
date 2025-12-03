@interface BMDistributedSyncMultiStreamManager
+ (BMDistributedSyncMultiStreamManager)multiStreamManagerWithPrimaryDatabase:(id)database account:(id)account queue:(id)queue;
- (BMDistributedSyncMultiStreamManager)initWithDistributedSyncManagers:(id)managers peerStatusTracker:(id)tracker accountDatabase:(id)database;
- (BOOL)supportsSyncingWithPlatform:(int64_t)platform overTransport:(unint64_t)transport inDirection:(unint64_t)direction;
- (id)atomBatchesForChangesSinceClockVector:(id)vector targetPlatform:(int64_t)platform transportType:(unint64_t)type direction:(unint64_t)direction ckFormatVersion:(unsigned __int8)version chunker:(id)chunker;
- (id)clockVectorForStreamsSupportingTransportType:(unint64_t)type direction:(unint64_t)direction device:(id)device;
- (id)deletedLocationsForTransportType:(unint64_t)type;
- (id)rangeClockVectorForStreamsSupportingTransportType:(unint64_t)type direction:(unint64_t)direction device:(id)device;
- (unint64_t)mergeDeferredAtomBatchesForLocation:(id)location sessionContext:(id)context;
- (unint64_t)mergeDeferredAtomBatchesForStreamIdentifier:(id)identifier block:(id)block;
- (unint64_t)mergeDeferredAtomBatchesWithShouldDefer:(id)defer;
- (unint64_t)mergeDeferredMergeForDistributedSyncManager:(id)manager shouldCancel:(id)cancel;
- (void)dealloc;
- (void)mergeAtomBatches:(id)batches deletedLocations:(id)locations sessionContext:(id)context;
- (void)scheduleBackgroundTaskIfThereAreDeferredPendingBatches;
@end

@implementation BMDistributedSyncMultiStreamManager

- (void)scheduleBackgroundTaskIfThereAreDeferredPendingBatches
{
  v3 = __biome_log_for_category();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "scheduleBackgroundTaskIfThereAreDeferredPendingBatches called", buf, 2u);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  distributedSyncManagers = [(BMDistributedSyncMultiStreamManager *)self distributedSyncManagers];
  v5 = [distributedSyncManagers countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(distributedSyncManagers);
        }

        v9 = *(*(&v15 + 1) + 8 * v8);
        distributedSyncManagers2 = [(BMDistributedSyncMultiStreamManager *)self distributedSyncManagers];
        v11 = [distributedSyncManagers2 objectForKeyedSubscript:v9];

        v12 = [v11 db];
        areAtomBatchFileNameRowsPresent = [v12 areAtomBatchFileNameRowsPresent];

        if (areAtomBatchFileNameRowsPresent)
        {

          v14 = __biome_log_for_category();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "submitting a task, having noted at least one deferred batch ", buf, 2u);
          }

          +[BMSyncBackgroundTasks submitBackgroundTaskForDeferredMerge];
          return;
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [distributedSyncManagers countByEnumeratingWithState:&v15 objects:v20 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }
}

+ (BMDistributedSyncMultiStreamManager)multiStreamManagerWithPrimaryDatabase:(id)database account:(id)account queue:(id)queue
{
  databaseCopy = database;
  accountCopy = account;
  v7 = databaseCopy;
  v29 = objc_opt_new();
  v25 = [[BMSyncDevicePeerStatusTracker alloc] initWithDatabase:v7];
  localDeviceIdentifierCreatingIfNecessary = [(BMSyncDevicePeerStatusTracker *)v25 localDeviceIdentifierCreatingIfNecessary];
  v27 = [[BMSyncSessionMetricsCollector alloc] initWithDatabase:v7];
  v8 = objc_opt_new();
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = +[BMStreamSyncPolicy syncableStreamConfigurations];
  v9 = [obj countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v9)
  {
    v10 = v9;
    v30 = *v33;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v33 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v32 + 1) + 8 * i);
        v13 = accountCopy;
        v14 = v7;
        streamIdentifier = [v12 streamIdentifier];
        v16 = [&off_10007F060 containsObject:streamIdentifier];

        if (v16)
        {

          v13 = 0;
        }

        if (v7)
        {
          v17 = [BMStreamCKCRDT alloc];
          v18 = objc_opt_new();
          v19 = [(BMStreamCKCRDT *)v17 initWithStreamConfiguration:v12 locationAssignerPolicy:v18 localSiteIdentifier:localDeviceIdentifierCreatingIfNecessary database:v14 changeReporter:v8 account:v13];

          [v19 setMetricsCollector:v27];
          v20 = [[BMDistributedSyncManager alloc] initWithStreamConfiguration:v12 streamCRDT:v19 database:v14 localSiteIdentifier:localDeviceIdentifierCreatingIfNecessary changeReporter:v8];
          syncIdentifier = [v12 syncIdentifier];
          [v29 setObject:v20 forKeyedSubscript:syncIdentifier];
        }

        else
        {
          v19 = __biome_log_for_category();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            streamIdentifier2 = [v12 streamIdentifier];
            *buf = 138543362;
            v37 = streamIdentifier2;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Effective database for stream %{public}@ not available for current request", buf, 0xCu);
          }
        }
      }

      v10 = [obj countByEnumeratingWithState:&v32 objects:v38 count:16];
    }

    while (v10);
  }

  v23 = [[BMDistributedSyncMultiStreamManager alloc] initWithDistributedSyncManagers:v29 peerStatusTracker:v25 accountDatabase:0];
  [(BMDistributedSyncMultiStreamManager *)v23 setMetricsCollector:v27];

  return v23;
}

- (BMDistributedSyncMultiStreamManager)initWithDistributedSyncManagers:(id)managers peerStatusTracker:(id)tracker accountDatabase:(id)database
{
  managersCopy = managers;
  trackerCopy = tracker;
  databaseCopy = database;
  v15.receiver = self;
  v15.super_class = BMDistributedSyncMultiStreamManager;
  v11 = [(BMDistributedSyncMultiStreamManager *)&v15 init];
  if (v11)
  {
    v12 = [managersCopy copy];
    distributedSyncManagers = v11->_distributedSyncManagers;
    v11->_distributedSyncManagers = v12;

    objc_storeStrong(&v11->_peerStatusTracker, tracker);
    objc_storeStrong(&v11->_accountDatabase, database);
  }

  return v11;
}

- (void)dealloc
{
  [(BMSyncDatabase *)self->_accountDatabase close];
  v3.receiver = self;
  v3.super_class = BMDistributedSyncMultiStreamManager;
  [(BMDistributedSyncMultiStreamManager *)&v3 dealloc];
}

- (id)clockVectorForStreamsSupportingTransportType:(unint64_t)type direction:(unint64_t)direction device:(id)device
{
  deviceCopy = device;
  selfCopy = self;
  v28 = objc_opt_new();
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = [(NSDictionary *)self->_distributedSyncManagers allValues];
  v8 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v31;
    typeCopy = type;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v31 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v30 + 1) + 8 * i);
        streamConfiguration = [v12 streamConfiguration];
        syncPolicy = [streamConfiguration syncPolicy];
        v15 = [syncPolicy supportsTransport:type direction:direction];

        if (v15)
        {
          clockVector = [v12 clockVector];
          if (![clockVector timestampCount])
          {
            localDeviceIdentifierCreatingIfNecessary = [(BMSyncDevicePeerStatusTracker *)selfCopy->_peerStatusTracker localDeviceIdentifierCreatingIfNecessary];
            v18 = [localDeviceIdentifierCreatingIfNecessary dataUsingEncoding:4];
            directionCopy = direction;
            v20 = [[CKDistributedSiteIdentifier alloc] initWithIdentifier:v18];
            v21 = [NSIndexSet indexSetWithIndex:0];
            [clockVector addClockValuesInIndexSet:v21 forSiteIdentifier:v20];

            direction = directionCopy;
            type = typeCopy;
          }

          streamConfiguration2 = [v12 streamConfiguration];
          v23 = [streamConfiguration2 syncIdentifierForTransport:type];

          [v28 setVectorClockTo:clockVector forStreamIdentifier:v23];
        }

        else
        {
          objc_autoreleasePoolPop(objc_autoreleasePoolPush());
        }
      }

      v9 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v9);
  }

  return v28;
}

- (id)rangeClockVectorForStreamsSupportingTransportType:(unint64_t)type direction:(unint64_t)direction device:(id)device
{
  deviceCopy = device;
  selfCopy = self;
  v28 = objc_opt_new();
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = [(NSDictionary *)self->_distributedSyncManagers allValues];
  v8 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v31;
    typeCopy = type;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v31 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v30 + 1) + 8 * i);
        streamConfiguration = [v12 streamConfiguration];
        syncPolicy = [streamConfiguration syncPolicy];
        v15 = [syncPolicy supportsTransport:type direction:direction];

        if (v15)
        {
          rangeClockVector = [v12 rangeClockVector];
          if (![rangeClockVector timestampCount])
          {
            localDeviceIdentifierCreatingIfNecessary = [(BMSyncDevicePeerStatusTracker *)selfCopy->_peerStatusTracker localDeviceIdentifierCreatingIfNecessary];
            v18 = [localDeviceIdentifierCreatingIfNecessary dataUsingEncoding:4];
            directionCopy = direction;
            v20 = [[CKDistributedSiteIdentifier alloc] initWithIdentifier:v18];
            v21 = [NSIndexSet indexSetWithIndex:0];
            [rangeClockVector addClockValuesInIndexSet:v21 forSiteIdentifier:v20];

            direction = directionCopy;
            type = typeCopy;
          }

          streamConfiguration2 = [v12 streamConfiguration];
          v23 = [streamConfiguration2 syncIdentifierForTransport:type];

          [v28 setVectorClockTo:rangeClockVector forStreamIdentifier:v23];
        }

        else
        {
          objc_autoreleasePoolPop(objc_autoreleasePoolPush());
        }
      }

      v9 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v9);
  }

  return v28;
}

- (id)atomBatchesForChangesSinceClockVector:(id)vector targetPlatform:(int64_t)platform transportType:(unint64_t)type direction:(unint64_t)direction ckFormatVersion:(unsigned __int8)version chunker:(id)chunker
{
  versionCopy = version;
  vectorCopy = vector;
  chunkerCopy = chunker;
  directionCopy = direction;
  if (direction != 2)
  {
    sub_10004C024(a2, self);
  }

  v13 = __biome_log_for_category();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = BMDevicePlatformGetDescription();
    v15 = [NSNumber numberWithUnsignedChar:versionCopy];
    v16 = [vectorCopy description];
    *buf = 138412802;
    v50 = v14;
    v51 = 2112;
    v52 = v15;
    v53 = 2112;
    v54 = v16;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "atomBatchesForChangesSinceClockVector platform: %@, version: %@, clock: %@", buf, 0x20u);
  }

  v38 = objc_opt_new();
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = [(NSDictionary *)self->_distributedSyncManagers allValues];
  v17 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v45;
    do
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v45 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v44 + 1) + 8 * i);
        v22 = objc_autoreleasePoolPush();
        streamConfiguration = [v21 streamConfiguration];
        syncPolicy = [streamConfiguration syncPolicy];
        v25 = [syncPolicy supportsSyncingWithPlatform:platform overTransport:type inDirection:directionCopy];

        if (v25)
        {
          streamConfiguration2 = [v21 streamConfiguration];
          storeConfig = [streamConfiguration2 storeConfig];
          protectionClass = [storeConfig protectionClass];

          streamConfiguration3 = [v21 streamConfiguration];
          storeConfig2 = [streamConfiguration3 storeConfig];
          currentDevice = [storeConfig2 currentDevice];

          if ([currentDevice canOpenFilesForProtectionClass:protectionClass])
          {
            streamConfiguration4 = [v21 streamConfiguration];
            v33 = [streamConfiguration4 syncIdentifierForTransport:type];

            v34 = [vectorCopy timestampClockVectorForStreamIdentifier:v33];
            v35 = [v21 atomBatchesForChangesSinceClockVector:v34 ckFormatVersion:versionCopy chunker:chunkerCopy transportType:type];
            [v38 setObject:v35 forKeyedSubscript:v33];
          }
        }

        objc_autoreleasePoolPop(v22);
      }

      v18 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
    }

    while (v18);
  }

  return v38;
}

- (void)mergeAtomBatches:(id)batches deletedLocations:(id)locations sessionContext:(id)context
{
  batchesCopy = batches;
  locationsCopy = locations;
  contextCopy = context;
  v28 = batchesCopy;
  allKeys = [batchesCopy allKeys];
  v9 = __biome_log_for_category();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v42 = [allKeys count];
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Merging %llu atom batches", buf, 0xCu);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = allKeys;
  v29 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v29)
  {
    v24 = *v36;
    do
    {
      v10 = 0;
      do
      {
        if (*v36 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v35 + 1) + 8 * v10);
        context = objc_autoreleasePoolPush();
        distributedSyncManagers = self->_distributedSyncManagers;
        lastPathComponent = [v11 lastPathComponent];
        v14 = [(NSDictionary *)distributedSyncManagers objectForKeyedSubscript:lastPathComponent];

        v15 = [v28 objectForKeyedSubscript:v11];
        v16 = objc_opt_new();
        v17 = [locationsCopy objectForKeyedSubscript:v11];
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v18 = [v17 countByEnumeratingWithState:&v31 objects:v39 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v32;
          do
          {
            v21 = 0;
            do
            {
              if (*v32 != v20)
              {
                objc_enumerationMutation(v17);
              }

              v22 = [[BMStreamCRDTLocation alloc] initFromDictionary:*(*(&v31 + 1) + 8 * v21)];
              [v16 addObject:v22];

              v21 = v21 + 1;
            }

            while (v19 != v21);
            v19 = [v17 countByEnumeratingWithState:&v31 objects:v39 count:16];
          }

          while (v19);
        }

        [v14 mergeAtomBatch:v15 deletedLocations:v16 sessionContext:contextCopy];

        objc_autoreleasePoolPop(context);
        v10 = v10 + 1;
      }

      while (v10 != v29);
      v29 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v29);
  }
}

- (unint64_t)mergeDeferredMergeForDistributedSyncManager:(id)manager shouldCancel:(id)cancel
{
  managerCopy = manager;
  cancelCopy = cancel;
  distributedSyncManagers = [(BMDistributedSyncMultiStreamManager *)self distributedSyncManagers];
  v9 = [distributedSyncManagers objectForKeyedSubscript:managerCopy];

  v10 = [v9 handleDeferredDeletedLocationsForStream:managerCopy];
  if (v10 == 1)
  {
    v10 = [(BMDistributedSyncMultiStreamManager *)self mergeDeferredAtomBatchesForStreamIdentifier:managerCopy block:cancelCopy];
  }

  return v10;
}

- (unint64_t)mergeDeferredAtomBatchesWithShouldDefer:(id)defer
{
  deferCopy = defer;
  v5 = __biome_log_for_category();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "mergeDeferredAtomBatchesWithShouldDefer called", buf, 2u);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  distributedSyncManagers = [(BMDistributedSyncMultiStreamManager *)self distributedSyncManagers];
  v7 = [distributedSyncManagers countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    v10 = 1;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(distributedSyncManagers);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        if (deferCopy && (deferCopy[2](deferCopy) & 1) != 0)
        {
          goto LABEL_20;
        }

        v13 = __biome_log_for_category();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v22 = v12;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "merging deferred atom batches for stream: %@", buf, 0xCu);
        }

        if ([(BMDistributedSyncMultiStreamManager *)self mergeDeferredMergeForDistributedSyncManager:v12 shouldCancel:deferCopy]== 2)
        {
          v14 = __biome_log_for_category();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v22 = v12;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "syncing did not complete for: %@", buf, 0xCu);
          }

          v10 = 2;
        }
      }

      v8 = [distributedSyncManagers countByEnumeratingWithState:&v17 objects:v23 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }

    if (v10 != 1)
    {
LABEL_20:
      v15 = 2;
      goto LABEL_21;
    }
  }

  v15 = 3;
LABEL_21:

  return v15;
}

- (unint64_t)mergeDeferredAtomBatchesForLocation:(id)location sessionContext:(id)context
{
  locationCopy = location;
  contextCopy = context;
  if (locationCopy)
  {
    streamName = [locationCopy streamName];
    v9 = __biome_log_for_category();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138412290;
      v21 = locationCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Merging location:%@", &v20, 0xCu);
    }

    v10 = [(NSDictionary *)self->_distributedSyncManagers objectForKeyedSubscript:streamName];
    streamConfiguration = [v10 streamConfiguration];
    storeConfig = [streamConfiguration storeConfig];
    protectionClass = [storeConfig protectionClass];

    streamConfiguration2 = [v10 streamConfiguration];
    storeConfig2 = [streamConfiguration2 storeConfig];
    currentDevice = [storeConfig2 currentDevice];

    if ([currentDevice canOpenFilesForProtectionClass:protectionClass])
    {
      streamCRDT = [v10 streamCRDT];
      [streamCRDT mergeFileBasedPhaseswithSessionContext:contextCopy forLocation:locationCopy];

      v18 = 1;
    }

    else
    {
      v18 = 2;
    }
  }

  else
  {
    streamName = __biome_log_for_category();
    if (os_log_type_enabled(streamName, OS_LOG_TYPE_FAULT))
    {
      sub_10004C0A0(streamName);
    }

    v18 = 1;
  }

  return v18;
}

- (unint64_t)mergeDeferredAtomBatchesForStreamIdentifier:(id)identifier block:(id)block
{
  identifierCopy = identifier;
  blockCopy = block;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 1;
  distributedSyncManagers = [(BMDistributedSyncMultiStreamManager *)self distributedSyncManagers];
  v9 = [distributedSyncManagers objectForKeyedSubscript:identifierCopy];

  v10 = [v9 db];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100034BF8;
  v14[3] = &unk_1000798C8;
  v11 = blockCopy;
  v15 = v11;
  v16 = &v17;
  v14[4] = self;
  [v10 enumerateAtomBatchFilesReferencedInCKAtomForStream:identifierCopy withBlock:v14];

  v12 = v18[3];
  _Block_object_dispose(&v17, 8);

  return v12;
}

- (id)deletedLocationsForTransportType:(unint64_t)type
{
  v23 = objc_opt_new();
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = [(NSDictionary *)self->_distributedSyncManagers allValues];
  v4 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v4)
  {
    v5 = v4;
    v21 = *v29;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v29 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v28 + 1) + 8 * i);
        v8 = objc_autoreleasePoolPush();
        streamConfiguration = [v7 streamConfiguration];
        v10 = [streamConfiguration syncIdentifierForTransport:type];

        v11 = objc_opt_new();
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        deletedLocations = [v7 deletedLocations];
        v13 = [deletedLocations countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v25;
          do
          {
            for (j = 0; j != v14; j = j + 1)
            {
              if (*v25 != v15)
              {
                objc_enumerationMutation(deletedLocations);
              }

              dictionaryRepresentation = [*(*(&v24 + 1) + 8 * j) dictionaryRepresentation];
              [v11 addObject:dictionaryRepresentation];
            }

            v14 = [deletedLocations countByEnumeratingWithState:&v24 objects:v32 count:16];
          }

          while (v14);
        }

        v18 = [NSArray arrayWithArray:v11];
        [v23 setObject:v18 forKeyedSubscript:v10];

        objc_autoreleasePoolPop(v8);
      }

      v5 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v5);
  }

  return v23;
}

- (BOOL)supportsSyncingWithPlatform:(int64_t)platform overTransport:(unint64_t)transport inDirection:(unint64_t)direction
{
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = self->_distributedSyncManagers;
  v8 = [(NSDictionary *)obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = [(NSDictionary *)self->_distributedSyncManagers objectForKeyedSubscript:*(*(&v20 + 1) + 8 * i)];
        streamConfiguration = [v12 streamConfiguration];
        syncPolicy = [streamConfiguration syncPolicy];
        v15 = [syncPolicy supportsSyncingWithPlatform:platform overTransport:transport inDirection:direction];

        if (v15)
        {
          v16 = 1;
          goto LABEL_11;
        }
      }

      v9 = [(NSDictionary *)obj countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v16 = 0;
LABEL_11:

  return v16;
}

@end