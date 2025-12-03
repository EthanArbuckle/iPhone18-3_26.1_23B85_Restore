@interface RCAudioFutureSyncManager
- (BOOL)___pushAudioFutureIntoBatch:(id)batch;
- (BOOL)_shouldRetryFutureDownloadForError:(id)error;
- (BOOL)_transactionHasAudioFutureChange:(id)change;
- (RCAudioFutureSyncManager)initWithScheduler:(id)scheduler;
- (RCAudioFutureSyncManagerDelegate)delegate;
- (id)___popAudioFutureBatch;
- (id)_audioFutureEntityToAttributesDict;
- (id)_mostRecentAudioFutureTransactionForObjectID:(id)d model:(id)model;
- (id)_newBackgroundMirroringModel;
- (void)___fetchAudioFuturesWithCompletionBlock:(id)block;
- (void)___fetchNextAudioFutureBatch:(id)batch;
- (void)__fetchAudioFuture:(id)future completionBlock:(id)block;
- (void)_checkProgressAndUpdateIfNeeded:(id)needed latestToken:(id)token model:(id)model;
- (void)_checkProgressOfExportingRecordings:(id)recordings;
- (void)_fetchProgressAndUpdateIfNeeded:(id)needed mirroringModel:(id)model;
- (void)_handleCloudKitContainerEvent:(id)event;
- (void)_handleCloudKitContainerEventChangedNotification:(id)notification;
- (void)_performOnSchedulerQueue:(id)queue;
- (void)_processExportProgressResult:(id)result mirroringModel:(id)model;
- (void)_updateRecordingOnAssetExportCompletion:(id)completion model:(id)model;
- (void)_validateCorrectStore:(id)store;
- (void)importAudioFuture:(id)future mirroringModel:(id)model;
- (void)markRecordingAsNeedingExport:(id)export model:(id)model;
- (void)markRecordingsAsNeedingExportAndCheckProgress:(id)progress mirroringModel:(id)model;
- (void)setPersistentStore:(id)store;
@end

@implementation RCAudioFutureSyncManager

- (RCAudioFutureSyncManager)initWithScheduler:(id)scheduler
{
  schedulerCopy = scheduler;
  v11.receiver = self;
  v11.super_class = RCAudioFutureSyncManager;
  v6 = [(RCAudioFutureSyncManager *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_scheduler, scheduler);
    v8 = dispatch_queue_create("com.apple.voicememod.RCAudioFutureSyncManager", 0);
    serialQueue = v7->_serialQueue;
    v7->_serialQueue = v8;
  }

  return v7;
}

- (void)markRecordingsAsNeedingExportAndCheckProgress:(id)progress mirroringModel:(id)model
{
  progressCopy = progress;
  modelCopy = model;
  if ([progressCopy count])
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10000EFC0;
    v8[3] = &unk_1000556A0;
    v9 = progressCopy;
    v10 = modelCopy;
    selfCopy = self;
    [v10 performBlockAndWait:v8];
  }
}

- (void)markRecordingAsNeedingExport:(id)export model:(id)model
{
  exportCopy = export;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000F1B0;
  v9[3] = &unk_1000556A0;
  modelCopy = model;
  v11 = exportCopy;
  selfCopy = self;
  v7 = exportCopy;
  v8 = modelCopy;
  [v8 performBlockAndWait:v9];
}

- (void)setPersistentStore:(id)store
{
  storeCopy = store;
  v5 = storeCopy;
  if (storeCopy)
  {
    rc_mirroringDelegate = [(NSPersistentStore *)storeCopy rc_mirroringDelegate];
    v7 = +[NSNotificationCenter defaultCenter];
    [v7 addObserver:self selector:"_handleCloudKitContainerEventChangedNotification:" name:NSPersistentCloudKitContainerEventChangedNotification object:rc_mirroringDelegate];
  }

  else
  {
    rc_mirroringDelegate = [(NSPersistentStore *)self->_persistentStore rc_mirroringDelegate];
    v7 = +[NSNotificationCenter defaultCenter];
    [v7 removeObserver:self name:NSPersistentCloudKitContainerEventChangedNotification object:rc_mirroringDelegate];
  }

  persistentStore = self->_persistentStore;
  self->_persistentStore = v5;
  v9 = v5;

  persistentStoreCoordinator = [(NSPersistentStore *)v9 persistentStoreCoordinator];
  managedObjectModel = [persistentStoreCoordinator managedObjectModel];
  entitiesByName = [managedObjectModel entitiesByName];
  v22 = [entitiesByName objectForKeyedSubscript:RCCloudRecording_EntityName];

  attributesByName = [v22 attributesByName];
  v14 = [attributesByName objectForKeyedSubscript:RCCloudRecording_AudioFuture];
  audioFutureDescription = self->_audioFutureDescription;
  self->_audioFutureDescription = v14;

  attributesByName2 = [v22 attributesByName];
  v17 = [attributesByName2 objectForKeyedSubscript:RCCloudRecording_MtAudioFuture];
  mtAudioFutureDescription = self->_mtAudioFutureDescription;
  self->_mtAudioFutureDescription = v17;

  attributesByName3 = [v22 attributesByName];
  v20 = [attributesByName3 objectForKeyedSubscript:RCCloudRecording_VersionedAudioFuture];
  versionedAudioFutureDescription = self->_versionedAudioFutureDescription;
  self->_versionedAudioFutureDescription = v20;
}

- (void)_handleCloudKitContainerEventChangedNotification:(id)notification
{
  userInfo = [notification userInfo];
  v5 = [userInfo objectForKeyedSubscript:NSPersistentCloudKitContainerEventUserInfoKey];

  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(RCAudioFutureSyncManager *)self _handleCloudKitContainerEvent:v5];
    }
  }
}

- (void)_handleCloudKitContainerEvent:(id)event
{
  eventCopy = event;
  if ([eventCopy type] == 2)
  {
    if ([eventCopy succeeded])
    {
      endDate = [eventCopy endDate];

      if (endDate)
      {
        _newBackgroundMirroringModel = [(RCAudioFutureSyncManager *)self _newBackgroundMirroringModel];
        [(RCAudioFutureSyncManager *)self _checkProgressOfExportingRecordings:_newBackgroundMirroringModel];
      }
    }
  }
}

- (void)_checkProgressOfExportingRecordings:(id)recordings
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000F5CC;
  v5[3] = &unk_1000556C8;
  recordingsCopy = recordings;
  selfCopy = self;
  v4 = recordingsCopy;
  [v4 performBlockAndWait:v5];
}

- (void)_fetchProgressAndUpdateIfNeeded:(id)needed mirroringModel:(id)model
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000F6C8;
  v6[3] = &unk_1000559A8;
  v6[4] = self;
  modelCopy = model;
  v5 = modelCopy;
  [v5 fetchExportProgress:needed forStore:0 completionHandler:v6];
}

- (void)_processExportProgressResult:(id)result mirroringModel:(id)model
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000F834;
  v8[3] = &unk_1000556A0;
  resultCopy = result;
  selfCopy = self;
  modelCopy = model;
  v6 = modelCopy;
  v7 = resultCopy;
  [v6 performBlockAndWait:v8];
}

- (void)_checkProgressAndUpdateIfNeeded:(id)needed latestToken:(id)token model:(id)model
{
  neededCopy = needed;
  modelCopy = model;
  tokenCopy = token;
  v10 = [(RCAudioFutureSyncManager *)self _mostRecentAudioFutureTransactionForObjectID:neededCopy model:modelCopy];
  v11 = [modelCopy transactionForToken:tokenCopy forStore:0];

  if (v11)
  {
    if (v10)
    {
      transactionNumber = [v11 transactionNumber];
      if (transactionNumber >= [v10 transactionNumber])
      {
        [(RCAudioFutureSyncManager *)self _updateRecordingOnAssetExportCompletion:neededCopy model:modelCopy];
      }
    }
  }
}

- (void)_updateRecordingOnAssetExportCompletion:(id)completion model:(id)model
{
  modelCopy = model;
  v6 = [modelCopy recordingWithID:completion];
  v7 = v6;
  if (v6)
  {
    syncedAudioFuture = [v6 syncedAudioFuture];

    if (syncedAudioFuture)
    {
      [v7 setAudioFutureNeedsExport:0];
      v9 = [v7 url];
      v16 = 0;
      v10 = [v7 markRecordingAsExported:v9 error:&v16];
      v11 = v16;
      v12 = OSLogForCategory();
      v13 = v12;
      if (v10)
      {
        if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
LABEL_8:

          [modelCopy saveIfNecessary];
          goto LABEL_9;
        }

        uuid = [v7 uuid];
        lastPathComponent = [v9 lastPathComponent];
        *buf = 136315650;
        v18 = "[RCAudioFutureSyncManager _updateRecordingOnAssetExportCompletion:model:]";
        v19 = 2112;
        v20 = uuid;
        v21 = 2112;
        v22 = lastPathComponent;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s -- Marked recording as exported, uniqueID = %@, path = %@", buf, 0x20u);
      }

      else
      {
        if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_8;
        }

        uuid = [v7 uuid];
        lastPathComponent = [v9 lastPathComponent];
        *buf = 136315906;
        v18 = "[RCAudioFutureSyncManager _updateRecordingOnAssetExportCompletion:model:]";
        v19 = 2112;
        v20 = uuid;
        v21 = 2112;
        v22 = lastPathComponent;
        v23 = 2112;
        v24 = v11;
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s -- ERROR: uniqueID = %@, path = %@, mark as exported error = %@", buf, 0x2Au);
      }

      goto LABEL_8;
    }
  }

LABEL_9:
}

- (id)_mostRecentAudioFutureTransactionForObjectID:(id)d model:(id)model
{
  v5 = [model transactionsAndChangesForObjectID:d];
  v6 = [v5 count];
  while (--v6 >= 0)
  {
    v7 = [v5 objectAtIndexedSubscript:v6];
    v8 = [(RCAudioFutureSyncManager *)self _transactionHasAudioFutureChange:v7];

    if (v8)
    {
      v9 = [v5 objectAtIndexedSubscript:v6];
      goto LABEL_6;
    }
  }

  v9 = 0;
LABEL_6:

  return v9;
}

- (BOOL)_transactionHasAudioFutureChange:(id)change
{
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  changes = [change changes];
  v4 = [changes countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v26;
    v20 = *v26;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v26 != v6)
        {
          objc_enumerationMutation(changes);
        }

        v8 = *(*(&v25 + 1) + 8 * i);
        if (![v8 changeType])
        {
LABEL_19:
          v18 = 1;
          goto LABEL_21;
        }

        v23 = 0u;
        v24 = 0u;
        v21 = 0u;
        v22 = 0u;
        updatedProperties = [v8 updatedProperties];
        v10 = [updatedProperties countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v22;
          while (2)
          {
            for (j = 0; j != v11; j = j + 1)
            {
              if (*v22 != v12)
              {
                objc_enumerationMutation(updatedProperties);
              }

              v14 = *(*(&v21 + 1) + 8 * j);
              v15 = RCAudioFuturePropertyNames();
              name = [v14 name];
              v17 = [v15 containsObject:name];

              if (v17)
              {

                goto LABEL_19;
              }
            }

            v11 = [updatedProperties countByEnumeratingWithState:&v21 objects:v29 count:16];
            if (v11)
            {
              continue;
            }

            break;
          }
        }

        v6 = v20;
      }

      v5 = [changes countByEnumeratingWithState:&v25 objects:v30 count:16];
      v18 = 0;
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v18 = 0;
  }

LABEL_21:

  return v18;
}

- (id)_newBackgroundMirroringModel
{
  delegate = [(RCAudioFutureSyncManager *)self delegate];
  newBackgroundMirroringModel = [delegate newBackgroundMirroringModel];

  return newBackgroundMirroringModel;
}

- (void)importAudioFuture:(id)future mirroringModel:(id)model
{
  futureCopy = future;
  modelCopy = model;
  v8 = [modelCopy recordingWithID:futureCopy];
  v9 = v8;
  if (v8)
  {
    if ([v8 isContentBeingModified])
    {
      syncedAudioFuture = OSLogForCategory();
      if (os_log_type_enabled(syncedAudioFuture, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [v9 url];
        *buf = 136315394;
        v17 = "[RCAudioFutureSyncManager importAudioFuture:mirroringModel:]";
        v18 = 2112;
        v19 = v11;
        _os_log_impl(&_mh_execute_header, syncedAudioFuture, OS_LOG_TYPE_DEFAULT, "%s -- Ignoring iCloud change for actively modified recording at URL:  %@", buf, 0x16u);
      }
    }

    else
    {
      syncedAudioFuture = [v9 syncedAudioFuture];
      if (syncedAudioFuture && ![v9 localAssetIsCurrent])
      {
        fileURL = [syncedAudioFuture fileURL];
        v13 = fileURL;
        if (fileURL && [fileURL checkResourceIsReachableAndReturnError:0] && (v15 = 0, objc_msgSend(v9, "synchronizeWithExistingAudioFuture:", &v15)))
        {
          [modelCopy saveIfNecessary];
        }

        else if ([v9 audioFutureVersionIsCompatible])
        {
          [v9 setAudioFutureNeedsDownload:1];
          [modelCopy saveIfNecessary];
          v14[0] = _NSConcreteStackBlock;
          v14[1] = 3221225472;
          v14[2] = sub_100010130;
          v14[3] = &unk_100055A20;
          v14[4] = self;
          [(RCAudioFutureSyncManager *)self __fetchAudioFuture:futureCopy completionBlock:v14];
        }
      }

      else if ([v9 audioFutureNeedsDownload])
      {
        [v9 setAudioFutureNeedsDownload:0];
        [modelCopy saveIfNecessary];
      }
    }
  }

  else
  {
    syncedAudioFuture = OSLogForCategory();
    if (os_log_type_enabled(syncedAudioFuture, OS_LOG_TYPE_ERROR))
    {
      sub_1000358E4();
    }
  }
}

- (BOOL)_shouldRetryFutureDownloadForError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  if (![domain isEqualToString:CKErrorDomain])
  {

    goto LABEL_5;
  }

  code = [errorCopy code];

  if (code != 11)
  {
LABEL_5:
    v6 = 1;
    goto LABEL_6;
  }

  v6 = 0;
LABEL_6:

  return v6;
}

- (BOOL)___pushAudioFutureIntoBatch:(id)batch
{
  batchCopy = batch;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000108F4;
  block[3] = &unk_100055A48;
  block[4] = self;
  v9 = batchCopy;
  v10 = &v11;
  v6 = batchCopy;
  dispatch_sync(serialQueue, block);
  LOBYTE(serialQueue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return serialQueue;
}

- (id)___popAudioFutureBatch
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100001DBC;
  v10 = sub_100010AFC;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100010B04;
  v5[3] = &unk_1000558B0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)___fetchNextAudioFutureBatch:(id)batch
{
  batchCopy = batch;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  serialQueue = self->_serialQueue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100010C60;
  v6[3] = &unk_100055A70;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(serialQueue, v6);
  if (*(v8 + 24) == 1)
  {
    [(RCAudioFutureSyncManager *)self ___fetchAudioFuturesWithCompletionBlock:batchCopy];
  }

  _Block_object_dispose(&v7, 8);
}

- (id)_audioFutureEntityToAttributesDict
{
  v3 = self->_audioFutureDescription;
  v4 = self->_mtAudioFutureDescription;
  v5 = v4;
  versionedAudioFutureDescription = self->_versionedAudioFutureDescription;
  if (v3)
  {
    v7 = v4 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7 || versionedAudioFutureDescription == 0)
  {
    v11 = 0;
  }

  else
  {
    v15 = self->_versionedAudioFutureDescription;
    v16 = RCCloudRecording_EntityName;
    v13 = v3;
    v14 = v4;
    v9 = versionedAudioFutureDescription;
    v10 = [NSArray arrayWithObjects:&v13 count:3];
    v17 = v10;
    v11 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1, v13, v14, v15];
  }

  return v11;
}

- (void)___fetchAudioFuturesWithCompletionBlock:(id)block
{
  blockCopy = block;
  scheduler = self->_scheduler;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100010E7C;
  v7[3] = &unk_100055AE8;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  [(RCBlockScheduler *)scheduler scheduleBlock:v7];
}

- (void)__fetchAudioFuture:(id)future completionBlock:(id)block
{
  blockCopy = block;
  if ([(RCAudioFutureSyncManager *)self ___pushAudioFutureIntoBatch:future])
  {
    [(RCAudioFutureSyncManager *)self ___fetchAudioFuturesWithCompletionBlock:blockCopy];
  }
}

- (void)_validateCorrectStore:(id)store
{
  storeCopy = store;
  v5 = storeCopy;
  if (self->_persistentStore)
  {
    persistentStore = [storeCopy persistentStore];
    identifier = [persistentStore identifier];
    identifier2 = [(NSPersistentStore *)self->_persistentStore identifier];
    v9 = [identifier isEqual:identifier2];

    if ((v9 & 1) == 0)
    {
      v10 = OSLogForCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        sub_1000359E8(v10);
      }
    }
  }
}

- (void)_performOnSchedulerQueue:(id)queue
{
  queueCopy = queue;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x3032000000;
  v10[3] = sub_100001DBC;
  v10[4] = sub_100010AFC;
  v11 = os_transaction_create();
  queue = [(RCBlockScheduler *)self->_scheduler queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100011494;
  v7[3] = &unk_100055B38;
  v8 = queueCopy;
  v9 = v10;
  v6 = queueCopy;
  dispatch_async(queue, v7);

  _Block_object_dispose(v10, 8);
}

- (RCAudioFutureSyncManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end