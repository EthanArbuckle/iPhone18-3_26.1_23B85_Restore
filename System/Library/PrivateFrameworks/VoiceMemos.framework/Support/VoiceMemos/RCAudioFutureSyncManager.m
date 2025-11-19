@interface RCAudioFutureSyncManager
- (BOOL)___pushAudioFutureIntoBatch:(id)a3;
- (BOOL)_shouldRetryFutureDownloadForError:(id)a3;
- (BOOL)_transactionHasAudioFutureChange:(id)a3;
- (RCAudioFutureSyncManager)initWithScheduler:(id)a3;
- (RCAudioFutureSyncManagerDelegate)delegate;
- (id)___popAudioFutureBatch;
- (id)_audioFutureEntityToAttributesDict;
- (id)_mostRecentAudioFutureTransactionForObjectID:(id)a3 model:(id)a4;
- (id)_newBackgroundMirroringModel;
- (void)___fetchAudioFuturesWithCompletionBlock:(id)a3;
- (void)___fetchNextAudioFutureBatch:(id)a3;
- (void)__fetchAudioFuture:(id)a3 completionBlock:(id)a4;
- (void)_checkProgressAndUpdateIfNeeded:(id)a3 latestToken:(id)a4 model:(id)a5;
- (void)_checkProgressOfExportingRecordings:(id)a3;
- (void)_fetchProgressAndUpdateIfNeeded:(id)a3 mirroringModel:(id)a4;
- (void)_handleCloudKitContainerEvent:(id)a3;
- (void)_handleCloudKitContainerEventChangedNotification:(id)a3;
- (void)_performOnSchedulerQueue:(id)a3;
- (void)_processExportProgressResult:(id)a3 mirroringModel:(id)a4;
- (void)_updateRecordingOnAssetExportCompletion:(id)a3 model:(id)a4;
- (void)_validateCorrectStore:(id)a3;
- (void)importAudioFuture:(id)a3 mirroringModel:(id)a4;
- (void)markRecordingAsNeedingExport:(id)a3 model:(id)a4;
- (void)markRecordingsAsNeedingExportAndCheckProgress:(id)a3 mirroringModel:(id)a4;
- (void)setPersistentStore:(id)a3;
@end

@implementation RCAudioFutureSyncManager

- (RCAudioFutureSyncManager)initWithScheduler:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = RCAudioFutureSyncManager;
  v6 = [(RCAudioFutureSyncManager *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_scheduler, a3);
    v8 = dispatch_queue_create("com.apple.voicememod.RCAudioFutureSyncManager", 0);
    serialQueue = v7->_serialQueue;
    v7->_serialQueue = v8;
  }

  return v7;
}

- (void)markRecordingsAsNeedingExportAndCheckProgress:(id)a3 mirroringModel:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10000EFC0;
    v8[3] = &unk_1000556A0;
    v9 = v6;
    v10 = v7;
    v11 = self;
    [v10 performBlockAndWait:v8];
  }
}

- (void)markRecordingAsNeedingExport:(id)a3 model:(id)a4
{
  v6 = a3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000F1B0;
  v9[3] = &unk_1000556A0;
  v10 = a4;
  v11 = v6;
  v12 = self;
  v7 = v6;
  v8 = v10;
  [v8 performBlockAndWait:v9];
}

- (void)setPersistentStore:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [(NSPersistentStore *)v4 rc_mirroringDelegate];
    v7 = +[NSNotificationCenter defaultCenter];
    [v7 addObserver:self selector:"_handleCloudKitContainerEventChangedNotification:" name:NSPersistentCloudKitContainerEventChangedNotification object:v6];
  }

  else
  {
    v6 = [(NSPersistentStore *)self->_persistentStore rc_mirroringDelegate];
    v7 = +[NSNotificationCenter defaultCenter];
    [v7 removeObserver:self name:NSPersistentCloudKitContainerEventChangedNotification object:v6];
  }

  persistentStore = self->_persistentStore;
  self->_persistentStore = v5;
  v9 = v5;

  v10 = [(NSPersistentStore *)v9 persistentStoreCoordinator];
  v11 = [v10 managedObjectModel];
  v12 = [v11 entitiesByName];
  v22 = [v12 objectForKeyedSubscript:RCCloudRecording_EntityName];

  v13 = [v22 attributesByName];
  v14 = [v13 objectForKeyedSubscript:RCCloudRecording_AudioFuture];
  audioFutureDescription = self->_audioFutureDescription;
  self->_audioFutureDescription = v14;

  v16 = [v22 attributesByName];
  v17 = [v16 objectForKeyedSubscript:RCCloudRecording_MtAudioFuture];
  mtAudioFutureDescription = self->_mtAudioFutureDescription;
  self->_mtAudioFutureDescription = v17;

  v19 = [v22 attributesByName];
  v20 = [v19 objectForKeyedSubscript:RCCloudRecording_VersionedAudioFuture];
  versionedAudioFutureDescription = self->_versionedAudioFutureDescription;
  self->_versionedAudioFutureDescription = v20;
}

- (void)_handleCloudKitContainerEventChangedNotification:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:NSPersistentCloudKitContainerEventUserInfoKey];

  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(RCAudioFutureSyncManager *)self _handleCloudKitContainerEvent:v5];
    }
  }
}

- (void)_handleCloudKitContainerEvent:(id)a3
{
  v6 = a3;
  if ([v6 type] == 2)
  {
    if ([v6 succeeded])
    {
      v4 = [v6 endDate];

      if (v4)
      {
        v5 = [(RCAudioFutureSyncManager *)self _newBackgroundMirroringModel];
        [(RCAudioFutureSyncManager *)self _checkProgressOfExportingRecordings:v5];
      }
    }
  }
}

- (void)_checkProgressOfExportingRecordings:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000F5CC;
  v5[3] = &unk_1000556C8;
  v6 = a3;
  v7 = self;
  v4 = v6;
  [v4 performBlockAndWait:v5];
}

- (void)_fetchProgressAndUpdateIfNeeded:(id)a3 mirroringModel:(id)a4
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000F6C8;
  v6[3] = &unk_1000559A8;
  v6[4] = self;
  v7 = a4;
  v5 = v7;
  [v5 fetchExportProgress:a3 forStore:0 completionHandler:v6];
}

- (void)_processExportProgressResult:(id)a3 mirroringModel:(id)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000F834;
  v8[3] = &unk_1000556A0;
  v9 = a3;
  v10 = self;
  v11 = a4;
  v6 = v11;
  v7 = v9;
  [v6 performBlockAndWait:v8];
}

- (void)_checkProgressAndUpdateIfNeeded:(id)a3 latestToken:(id)a4 model:(id)a5
{
  v13 = a3;
  v8 = a5;
  v9 = a4;
  v10 = [(RCAudioFutureSyncManager *)self _mostRecentAudioFutureTransactionForObjectID:v13 model:v8];
  v11 = [v8 transactionForToken:v9 forStore:0];

  if (v11)
  {
    if (v10)
    {
      v12 = [v11 transactionNumber];
      if (v12 >= [v10 transactionNumber])
      {
        [(RCAudioFutureSyncManager *)self _updateRecordingOnAssetExportCompletion:v13 model:v8];
      }
    }
  }
}

- (void)_updateRecordingOnAssetExportCompletion:(id)a3 model:(id)a4
{
  v5 = a4;
  v6 = [v5 recordingWithID:a3];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 syncedAudioFuture];

    if (v8)
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

          [v5 saveIfNecessary];
          goto LABEL_9;
        }

        v14 = [v7 uuid];
        v15 = [v9 lastPathComponent];
        *buf = 136315650;
        v18 = "[RCAudioFutureSyncManager _updateRecordingOnAssetExportCompletion:model:]";
        v19 = 2112;
        v20 = v14;
        v21 = 2112;
        v22 = v15;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s -- Marked recording as exported, uniqueID = %@, path = %@", buf, 0x20u);
      }

      else
      {
        if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_8;
        }

        v14 = [v7 uuid];
        v15 = [v9 lastPathComponent];
        *buf = 136315906;
        v18 = "[RCAudioFutureSyncManager _updateRecordingOnAssetExportCompletion:model:]";
        v19 = 2112;
        v20 = v14;
        v21 = 2112;
        v22 = v15;
        v23 = 2112;
        v24 = v11;
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s -- ERROR: uniqueID = %@, path = %@, mark as exported error = %@", buf, 0x2Au);
      }

      goto LABEL_8;
    }
  }

LABEL_9:
}

- (id)_mostRecentAudioFutureTransactionForObjectID:(id)a3 model:(id)a4
{
  v5 = [a4 transactionsAndChangesForObjectID:a3];
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

- (BOOL)_transactionHasAudioFutureChange:(id)a3
{
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v3 = [a3 changes];
  v4 = [v3 countByEnumeratingWithState:&v25 objects:v30 count:16];
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
          objc_enumerationMutation(v3);
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
        v9 = [v8 updatedProperties];
        v10 = [v9 countByEnumeratingWithState:&v21 objects:v29 count:16];
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
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v21 + 1) + 8 * j);
              v15 = RCAudioFuturePropertyNames();
              v16 = [v14 name];
              v17 = [v15 containsObject:v16];

              if (v17)
              {

                goto LABEL_19;
              }
            }

            v11 = [v9 countByEnumeratingWithState:&v21 objects:v29 count:16];
            if (v11)
            {
              continue;
            }

            break;
          }
        }

        v6 = v20;
      }

      v5 = [v3 countByEnumeratingWithState:&v25 objects:v30 count:16];
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
  v2 = [(RCAudioFutureSyncManager *)self delegate];
  v3 = [v2 newBackgroundMirroringModel];

  return v3;
}

- (void)importAudioFuture:(id)a3 mirroringModel:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 recordingWithID:v6];
  v9 = v8;
  if (v8)
  {
    if ([v8 isContentBeingModified])
    {
      v10 = OSLogForCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [v9 url];
        *buf = 136315394;
        v17 = "[RCAudioFutureSyncManager importAudioFuture:mirroringModel:]";
        v18 = 2112;
        v19 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s -- Ignoring iCloud change for actively modified recording at URL:  %@", buf, 0x16u);
      }
    }

    else
    {
      v10 = [v9 syncedAudioFuture];
      if (v10 && ![v9 localAssetIsCurrent])
      {
        v12 = [v10 fileURL];
        v13 = v12;
        if (v12 && [v12 checkResourceIsReachableAndReturnError:0] && (v15 = 0, objc_msgSend(v9, "synchronizeWithExistingAudioFuture:", &v15)))
        {
          [v7 saveIfNecessary];
        }

        else if ([v9 audioFutureVersionIsCompatible])
        {
          [v9 setAudioFutureNeedsDownload:1];
          [v7 saveIfNecessary];
          v14[0] = _NSConcreteStackBlock;
          v14[1] = 3221225472;
          v14[2] = sub_100010130;
          v14[3] = &unk_100055A20;
          v14[4] = self;
          [(RCAudioFutureSyncManager *)self __fetchAudioFuture:v6 completionBlock:v14];
        }
      }

      else if ([v9 audioFutureNeedsDownload])
      {
        [v9 setAudioFutureNeedsDownload:0];
        [v7 saveIfNecessary];
      }
    }
  }

  else
  {
    v10 = OSLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1000358E4();
    }
  }
}

- (BOOL)_shouldRetryFutureDownloadForError:(id)a3
{
  v3 = a3;
  v4 = [v3 domain];
  if (![v4 isEqualToString:CKErrorDomain])
  {

    goto LABEL_5;
  }

  v5 = [v3 code];

  if (v5 != 11)
  {
LABEL_5:
    v6 = 1;
    goto LABEL_6;
  }

  v6 = 0;
LABEL_6:

  return v6;
}

- (BOOL)___pushAudioFutureIntoBatch:(id)a3
{
  v4 = a3;
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
  v9 = v4;
  v10 = &v11;
  v6 = v4;
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

- (void)___fetchNextAudioFutureBatch:(id)a3
{
  v4 = a3;
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
    [(RCAudioFutureSyncManager *)self ___fetchAudioFuturesWithCompletionBlock:v4];
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

- (void)___fetchAudioFuturesWithCompletionBlock:(id)a3
{
  v4 = a3;
  scheduler = self->_scheduler;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100010E7C;
  v7[3] = &unk_100055AE8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(RCBlockScheduler *)scheduler scheduleBlock:v7];
}

- (void)__fetchAudioFuture:(id)a3 completionBlock:(id)a4
{
  v6 = a4;
  if ([(RCAudioFutureSyncManager *)self ___pushAudioFutureIntoBatch:a3])
  {
    [(RCAudioFutureSyncManager *)self ___fetchAudioFuturesWithCompletionBlock:v6];
  }
}

- (void)_validateCorrectStore:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_persistentStore)
  {
    v6 = [v4 persistentStore];
    v7 = [v6 identifier];
    v8 = [(NSPersistentStore *)self->_persistentStore identifier];
    v9 = [v7 isEqual:v8];

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

- (void)_performOnSchedulerQueue:(id)a3
{
  v4 = a3;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x3032000000;
  v10[3] = sub_100001DBC;
  v10[4] = sub_100010AFC;
  v11 = os_transaction_create();
  v5 = [(RCBlockScheduler *)self->_scheduler queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100011494;
  v7[3] = &unk_100055B38;
  v8 = v4;
  v9 = v10;
  v6 = v4;
  dispatch_async(v5, v7);

  _Block_object_dispose(v10, 8);
}

- (RCAudioFutureSyncManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end