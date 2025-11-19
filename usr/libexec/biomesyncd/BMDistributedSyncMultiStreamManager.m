@interface BMDistributedSyncMultiStreamManager
+ (BMDistributedSyncMultiStreamManager)multiStreamManagerWithPrimaryDatabase:(id)a3 account:(id)a4 queue:(id)a5;
- (BMDistributedSyncMultiStreamManager)initWithDistributedSyncManagers:(id)a3 peerStatusTracker:(id)a4 accountDatabase:(id)a5;
- (BOOL)supportsSyncingWithPlatform:(int64_t)a3 overTransport:(unint64_t)a4 inDirection:(unint64_t)a5;
- (id)atomBatchesForChangesSinceClockVector:(id)a3 targetPlatform:(int64_t)a4 transportType:(unint64_t)a5 direction:(unint64_t)a6 ckFormatVersion:(unsigned __int8)a7 chunker:(id)a8;
- (id)clockVectorForStreamsSupportingTransportType:(unint64_t)a3 direction:(unint64_t)a4 device:(id)a5;
- (id)deletedLocationsForTransportType:(unint64_t)a3;
- (id)rangeClockVectorForStreamsSupportingTransportType:(unint64_t)a3 direction:(unint64_t)a4 device:(id)a5;
- (unint64_t)mergeDeferredAtomBatchesForLocation:(id)a3 sessionContext:(id)a4;
- (unint64_t)mergeDeferredAtomBatchesForStreamIdentifier:(id)a3 block:(id)a4;
- (unint64_t)mergeDeferredAtomBatchesWithShouldDefer:(id)a3;
- (unint64_t)mergeDeferredMergeForDistributedSyncManager:(id)a3 shouldCancel:(id)a4;
- (void)dealloc;
- (void)mergeAtomBatches:(id)a3 deletedLocations:(id)a4 sessionContext:(id)a5;
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
  v4 = [(BMDistributedSyncMultiStreamManager *)self distributedSyncManagers];
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v20 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * v8);
        v10 = [(BMDistributedSyncMultiStreamManager *)self distributedSyncManagers];
        v11 = [v10 objectForKeyedSubscript:v9];

        v12 = [v11 db];
        v13 = [v12 areAtomBatchFileNameRowsPresent];

        if (v13)
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
      v6 = [v4 countByEnumeratingWithState:&v15 objects:v20 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }
}

+ (BMDistributedSyncMultiStreamManager)multiStreamManagerWithPrimaryDatabase:(id)a3 account:(id)a4 queue:(id)a5
{
  v6 = a3;
  v31 = a4;
  v7 = v6;
  v29 = objc_opt_new();
  v25 = [[BMSyncDevicePeerStatusTracker alloc] initWithDatabase:v7];
  v28 = [(BMSyncDevicePeerStatusTracker *)v25 localDeviceIdentifierCreatingIfNecessary];
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
        v13 = v31;
        v14 = v7;
        v15 = [v12 streamIdentifier];
        v16 = [&off_10007F060 containsObject:v15];

        if (v16)
        {

          v13 = 0;
        }

        if (v7)
        {
          v17 = [BMStreamCKCRDT alloc];
          v18 = objc_opt_new();
          v19 = [(BMStreamCKCRDT *)v17 initWithStreamConfiguration:v12 locationAssignerPolicy:v18 localSiteIdentifier:v28 database:v14 changeReporter:v8 account:v13];

          [v19 setMetricsCollector:v27];
          v20 = [[BMDistributedSyncManager alloc] initWithStreamConfiguration:v12 streamCRDT:v19 database:v14 localSiteIdentifier:v28 changeReporter:v8];
          v21 = [v12 syncIdentifier];
          [v29 setObject:v20 forKeyedSubscript:v21];
        }

        else
        {
          v19 = __biome_log_for_category();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            v22 = [v12 streamIdentifier];
            *buf = 138543362;
            v37 = v22;
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

- (BMDistributedSyncMultiStreamManager)initWithDistributedSyncManagers:(id)a3 peerStatusTracker:(id)a4 accountDatabase:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = BMDistributedSyncMultiStreamManager;
  v11 = [(BMDistributedSyncMultiStreamManager *)&v15 init];
  if (v11)
  {
    v12 = [v8 copy];
    distributedSyncManagers = v11->_distributedSyncManagers;
    v11->_distributedSyncManagers = v12;

    objc_storeStrong(&v11->_peerStatusTracker, a4);
    objc_storeStrong(&v11->_accountDatabase, a5);
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

- (id)clockVectorForStreamsSupportingTransportType:(unint64_t)a3 direction:(unint64_t)a4 device:(id)a5
{
  v25 = a5;
  v27 = self;
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
    v26 = a3;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v31 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v30 + 1) + 8 * i);
        v13 = [v12 streamConfiguration];
        v14 = [v13 syncPolicy];
        v15 = [v14 supportsTransport:a3 direction:a4];

        if (v15)
        {
          v16 = [v12 clockVector];
          if (![v16 timestampCount])
          {
            v17 = [(BMSyncDevicePeerStatusTracker *)v27->_peerStatusTracker localDeviceIdentifierCreatingIfNecessary];
            v18 = [v17 dataUsingEncoding:4];
            v19 = a4;
            v20 = [[CKDistributedSiteIdentifier alloc] initWithIdentifier:v18];
            v21 = [NSIndexSet indexSetWithIndex:0];
            [v16 addClockValuesInIndexSet:v21 forSiteIdentifier:v20];

            a4 = v19;
            a3 = v26;
          }

          v22 = [v12 streamConfiguration];
          v23 = [v22 syncIdentifierForTransport:a3];

          [v28 setVectorClockTo:v16 forStreamIdentifier:v23];
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

- (id)rangeClockVectorForStreamsSupportingTransportType:(unint64_t)a3 direction:(unint64_t)a4 device:(id)a5
{
  v25 = a5;
  v27 = self;
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
    v26 = a3;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v31 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v30 + 1) + 8 * i);
        v13 = [v12 streamConfiguration];
        v14 = [v13 syncPolicy];
        v15 = [v14 supportsTransport:a3 direction:a4];

        if (v15)
        {
          v16 = [v12 rangeClockVector];
          if (![v16 timestampCount])
          {
            v17 = [(BMSyncDevicePeerStatusTracker *)v27->_peerStatusTracker localDeviceIdentifierCreatingIfNecessary];
            v18 = [v17 dataUsingEncoding:4];
            v19 = a4;
            v20 = [[CKDistributedSiteIdentifier alloc] initWithIdentifier:v18];
            v21 = [NSIndexSet indexSetWithIndex:0];
            [v16 addClockValuesInIndexSet:v21 forSiteIdentifier:v20];

            a4 = v19;
            a3 = v26;
          }

          v22 = [v12 streamConfiguration];
          v23 = [v22 syncIdentifierForTransport:a3];

          [v28 setVectorClockTo:v16 forStreamIdentifier:v23];
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

- (id)atomBatchesForChangesSinceClockVector:(id)a3 targetPlatform:(int64_t)a4 transportType:(unint64_t)a5 direction:(unint64_t)a6 ckFormatVersion:(unsigned __int8)a7 chunker:(id)a8
{
  v37 = a7;
  v40 = a3;
  v39 = a8;
  v42 = a6;
  if (a6 != 2)
  {
    sub_10004C024(a2, self);
  }

  v13 = __biome_log_for_category();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = BMDevicePlatformGetDescription();
    v15 = [NSNumber numberWithUnsignedChar:v37];
    v16 = [v40 description];
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
        v23 = [v21 streamConfiguration];
        v24 = [v23 syncPolicy];
        v25 = [v24 supportsSyncingWithPlatform:a4 overTransport:a5 inDirection:v42];

        if (v25)
        {
          v26 = [v21 streamConfiguration];
          v27 = [v26 storeConfig];
          v28 = [v27 protectionClass];

          v29 = [v21 streamConfiguration];
          v30 = [v29 storeConfig];
          v31 = [v30 currentDevice];

          if ([v31 canOpenFilesForProtectionClass:v28])
          {
            v32 = [v21 streamConfiguration];
            v33 = [v32 syncIdentifierForTransport:a5];

            v34 = [v40 timestampClockVectorForStreamIdentifier:v33];
            v35 = [v21 atomBatchesForChangesSinceClockVector:v34 ckFormatVersion:v37 chunker:v39 transportType:a5];
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

- (void)mergeAtomBatches:(id)a3 deletedLocations:(id)a4 sessionContext:(id)a5
{
  v7 = a3;
  v27 = a4;
  v26 = a5;
  v28 = v7;
  v8 = [v7 allKeys];
  v9 = __biome_log_for_category();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v42 = [v8 count];
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Merging %llu atom batches", buf, 0xCu);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v8;
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
        v13 = [v11 lastPathComponent];
        v14 = [(NSDictionary *)distributedSyncManagers objectForKeyedSubscript:v13];

        v15 = [v28 objectForKeyedSubscript:v11];
        v16 = objc_opt_new();
        v17 = [v27 objectForKeyedSubscript:v11];
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

        [v14 mergeAtomBatch:v15 deletedLocations:v16 sessionContext:v26];

        objc_autoreleasePoolPop(context);
        v10 = v10 + 1;
      }

      while (v10 != v29);
      v29 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v29);
  }
}

- (unint64_t)mergeDeferredMergeForDistributedSyncManager:(id)a3 shouldCancel:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BMDistributedSyncMultiStreamManager *)self distributedSyncManagers];
  v9 = [v8 objectForKeyedSubscript:v6];

  v10 = [v9 handleDeferredDeletedLocationsForStream:v6];
  if (v10 == 1)
  {
    v10 = [(BMDistributedSyncMultiStreamManager *)self mergeDeferredAtomBatchesForStreamIdentifier:v6 block:v7];
  }

  return v10;
}

- (unint64_t)mergeDeferredAtomBatchesWithShouldDefer:(id)a3
{
  v4 = a3;
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
  v6 = [(BMDistributedSyncMultiStreamManager *)self distributedSyncManagers];
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v23 count:16];
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
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        if (v4 && (v4[2](v4) & 1) != 0)
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

        if ([(BMDistributedSyncMultiStreamManager *)self mergeDeferredMergeForDistributedSyncManager:v12 shouldCancel:v4]== 2)
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

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v23 count:16];
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

- (unint64_t)mergeDeferredAtomBatchesForLocation:(id)a3 sessionContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [v6 streamName];
    v9 = __biome_log_for_category();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138412290;
      v21 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Merging location:%@", &v20, 0xCu);
    }

    v10 = [(NSDictionary *)self->_distributedSyncManagers objectForKeyedSubscript:v8];
    v11 = [v10 streamConfiguration];
    v12 = [v11 storeConfig];
    v13 = [v12 protectionClass];

    v14 = [v10 streamConfiguration];
    v15 = [v14 storeConfig];
    v16 = [v15 currentDevice];

    if ([v16 canOpenFilesForProtectionClass:v13])
    {
      v17 = [v10 streamCRDT];
      [v17 mergeFileBasedPhaseswithSessionContext:v7 forLocation:v6];

      v18 = 1;
    }

    else
    {
      v18 = 2;
    }
  }

  else
  {
    v8 = __biome_log_for_category();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_10004C0A0(v8);
    }

    v18 = 1;
  }

  return v18;
}

- (unint64_t)mergeDeferredAtomBatchesForStreamIdentifier:(id)a3 block:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 1;
  v8 = [(BMDistributedSyncMultiStreamManager *)self distributedSyncManagers];
  v9 = [v8 objectForKeyedSubscript:v6];

  v10 = [v9 db];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100034BF8;
  v14[3] = &unk_1000798C8;
  v11 = v7;
  v15 = v11;
  v16 = &v17;
  v14[4] = self;
  [v10 enumerateAtomBatchFilesReferencedInCKAtomForStream:v6 withBlock:v14];

  v12 = v18[3];
  _Block_object_dispose(&v17, 8);

  return v12;
}

- (id)deletedLocationsForTransportType:(unint64_t)a3
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
        v9 = [v7 streamConfiguration];
        v10 = [v9 syncIdentifierForTransport:a3];

        v11 = objc_opt_new();
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v12 = [v7 deletedLocations];
        v13 = [v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
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
                objc_enumerationMutation(v12);
              }

              v17 = [*(*(&v24 + 1) + 8 * j) dictionaryRepresentation];
              [v11 addObject:v17];
            }

            v14 = [v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
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

- (BOOL)supportsSyncingWithPlatform:(int64_t)a3 overTransport:(unint64_t)a4 inDirection:(unint64_t)a5
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
        v13 = [v12 streamConfiguration];
        v14 = [v13 syncPolicy];
        v15 = [v14 supportsSyncingWithPlatform:a3 overTransport:a4 inDirection:a5];

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