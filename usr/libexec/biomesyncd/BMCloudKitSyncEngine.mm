@interface BMCloudKitSyncEngine
- (BMCloudKitSyncEngine)initWithQueue:(id)queue multiStreamManager:(id)manager database:(id)database;
- (BOOL)isManateeAvailable:(id)available;
- (BOOL)isRecordNewerThanMostRecentDeleteForSiteIdentifier:(id)identifier;
- (BOOL)isSiriCloudSyncEnabled;
- (BOOL)syncEngine:(id)engine shouldFetchChangesForZoneID:(id)d;
- (id)handleHighestDeletedLocationRecordToSaveForRecordID:(id)d;
- (id)handleSyncRecordRecordToSaveForRecordID:(id)d;
- (id)handleZoneVersionRecordToSaveForRecordID:(id)d;
- (id)newHighestDeletedLocationRecordIDFor:(id)for stream:(id)stream;
- (id)newZoneVersionRecordIDForZone:(id)zone;
- (id)streamConfigurationForZoneID:(id)d;
- (id)streamConfigurationFromSyncIdentifier:(id)identifier;
- (id)syncEngine:(id)engine nextRecordZoneChangeBatchForContext:(id)context;
- (id)syncEngine:(id)engine recordToSaveForRecordID:(id)d;
- (void)fetchChangesWithError:(id)error;
- (void)handleDidFetchRecordZoneChanges:(id)changes;
- (void)handleDidSaveRecordHighestDeletedLocation:(id)location;
- (void)handleDidSaveRecordSyncRecord:(id)record;
- (void)handleDidSaveRecordZoneVersionRecord:(id)record;
- (void)handleFailedToSaveRecordHighestDeletedLocation:(id)location error:(id)error;
- (void)handleFailedToSaveRecordSyncRecord:(id)record error:(id)error;
- (void)handleFailedToSaveRecordZoneVersion:(id)version error:(id)error;
- (void)handleFailedToSaveSyncRecordResaveRecord:(id)record;
- (void)handleFailedToSaveSyncRecordServerManateeDecryptionError:(id)error error:(id)a4;
- (void)handleFailedToSaveSyncRecordServerRecordChanged:(id)changed error:(id)error;
- (void)handleFailedToSaveSyncRecordUnknownItem:(id)item;
- (void)handleFetchedDatabaseChanges:(id)changes;
- (void)handleFetchedRecordZoneChanges:(id)changes;
- (void)handleHighestDeletedLocationDidFetchRecord:(id)record;
- (void)handleRecordWithIDDeletedSyncRecord:(id)record;
- (void)handleSentDatabaseChanges:(id)changes;
- (void)handleSentRecordZoneChanges:(id)changes;
- (void)handleServerRecordChangedForHighestDeletedLocationError:(id)error;
- (void)handleStateUpdate:(id)update;
- (void)handleSyncRecordDidFetchRecord:(id)record;
- (void)handleTransitionToNewMergeableValueRecordValueKey;
- (void)handleZoneReset:(id)reset;
- (void)handleZoneVersionDidFetchRecord:(id)record;
- (void)resaveRecord:(id)record;
- (void)startWithCompletionBlock:(id)block;
- (void)syncEngine:(id)engine didDeleteRecordWithID:(id)d;
- (void)syncEngine:(id)engine didDeleteRecordZoneWithID:(id)d;
- (void)syncEngine:(id)engine didFetchRecord:(id)record;
- (void)syncEngine:(id)engine didSaveRecord:(id)record;
- (void)syncEngine:(id)engine didSaveRecordZone:(id)zone;
- (void)syncEngine:(id)engine didUpdateMetadata:(id)metadata;
- (void)syncEngine:(id)engine failedToDeleteRecordWithID:(id)d error:(id)error;
- (void)syncEngine:(id)engine failedToDeleteRecordZoneWithID:(id)d error:(id)error;
- (void)syncEngine:(id)engine failedToFetchChangesForRecordZoneID:(id)d error:(id)error;
- (void)syncEngine:(id)engine failedToSaveRecord:(id)record error:(id)error;
- (void)syncEngine:(id)engine failedToSaveRecordZone:(id)zone error:(id)error;
- (void)syncEngine:(id)engine handleEvent:(id)event;
- (void)syncEngine:(id)engine recordWithIDWasDeleted:(id)deleted recordType:(id)type;
- (void)syncEngine:(id)engine zoneWithIDChanged:(id)changed;
- (void)syncEngine:(id)engine zoneWithIDWasDeleted:(id)deleted;
- (void)syncEngineDidEndFetchingChanges:(id)changes;
- (void)syncEngineDidEndModifyingPendingChanges:(id)changes;
- (void)syncEngineWillBeginFetchingChanges:(id)changes;
- (void)syncEngineWillBeginModifyingPendingChanges:(id)changes;
- (void)syncNowWithReason:(unint64_t)reason activity:(id)activity completionHandler:(id)handler;
- (void)syncSessionDidEnd;
- (void)syncSessionDidStartWithReason:(unint64_t)reason;
- (void)uploadChangesWithError:(id)error;
@end

@implementation BMCloudKitSyncEngine

- (BOOL)isSiriCloudSyncEnabled
{
  v2 = +[ACAccountStore defaultStore];
  aa_primaryAppleAccount = [v2 aa_primaryAppleAccount];
  v4 = [aa_primaryAppleAccount isEnabledForDataclass:kAccountDataclassSiri];

  return v4;
}

- (BMCloudKitSyncEngine)initWithQueue:(id)queue multiStreamManager:(id)manager database:(id)database
{
  queueCopy = queue;
  managerCopy = manager;
  databaseCopy = database;
  v20.receiver = self;
  v20.super_class = BMCloudKitSyncEngine;
  v12 = [(BMCloudKitSyncEngine *)&v20 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_syncManager, manager);
    metricsCollector = [managerCopy metricsCollector];
    metricsCollector = v13->_metricsCollector;
    v13->_metricsCollector = metricsCollector;

    objc_storeStrong(&v13->_db, database);
    objc_storeStrong(&v13->_queue, queue);
    v16 = objc_opt_new();
    operationQueue = v13->_operationQueue;
    v13->_operationQueue = v16;

    [(NSOperationQueue *)v13->_operationQueue setUnderlyingQueue:queueCopy];
    [(NSOperationQueue *)v13->_operationQueue setMaxConcurrentOperationCount:1];
    mergeableRecordValueKey = v13->_mergeableRecordValueKey;
    v13->_mergeableRecordValueKey = @"streamCRDT";
  }

  return v13;
}

- (id)streamConfigurationForZoneID:(id)d
{
  zoneName = [d zoneName];
  v5 = [(BMCloudKitSyncEngine *)self streamConfigurationFromSyncIdentifier:zoneName];

  return v5;
}

- (id)streamConfigurationFromSyncIdentifier:(id)identifier
{
  syncManager = self->_syncManager;
  identifierCopy = identifier;
  distributedSyncManagers = [(BMDistributedSyncMultiStreamManager *)syncManager distributedSyncManagers];
  v6 = [distributedSyncManagers objectForKeyedSubscript:identifierCopy];

  streamConfiguration = [v6 streamConfiguration];

  return streamConfiguration;
}

- (id)newHighestDeletedLocationRecordIDFor:(id)for stream:(id)stream
{
  forCopy = for;
  streamCopy = stream;
  v8 = [(BMSyncDatabase *)self->_db highestDeletedLocationForSiteIdentifier:forCopy inStream:streamCopy];
  v9 = v8;
  if (v8)
  {
    location = [v8 location];
    v11 = [location day];
    [v11 timeIntervalSinceReferenceDate];
    v13 = v12;

    v14 = [(BMSyncDatabase *)self->_db ckRecordForRecordName:forCopy zoneName:streamCopy recordType:3];
    v15 = v14;
    if (v14 && (db = self->_db, [v14 locationID], v17 = objc_claimAutoreleasedReturnValue(), -[BMSyncDatabase locationRowWithLocationID:](db, "locationRowWithLocationID:", v17), v18 = objc_claimAutoreleasedReturnValue(), v17, v18))
    {
      location2 = [v18 location];
      v20 = [location2 day];
      [v20 timeIntervalSinceReferenceDate];
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    if (v22 >= v13)
    {
      v26 = 0;
    }

    else
    {
      [(BMSyncDatabase *)self->_db saveCKRecordHighestDeletedLocationRow:v9 recordName:forCopy zoneName:streamCopy recordExists:v15 != 0];
      v23 = [[CKRecordZone alloc] initWithZoneName:streamCopy];
      v24 = [CKRecordID alloc];
      zoneID = [v23 zoneID];
      v26 = [v24 initWithRecordName:forCopy zoneID:zoneID];
    }
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

- (id)newZoneVersionRecordIDForZone:(id)zone
{
  zoneCopy = zone;
  v4 = [[CKRecordID alloc] initWithRecordName:@"zoneVersion" zoneID:zoneCopy];

  return v4;
}

- (void)syncNowWithReason:(unint64_t)reason activity:(id)activity completionHandler:(id)handler
{
  activityCopy = activity;
  handlerCopy = handler;
  v10 = __biome_log_for_category();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "syncNowWithReason", &buf, 2u);
  }

  v11 = __biome_log_for_category();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    isSiriCloudSyncEnabled = [(BMCloudKitSyncEngine *)self isSiriCloudSyncEnabled];
    LODWORD(buf) = 67109120;
    HIDWORD(buf) = isSiriCloudSyncEnabled;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Sync with iCloud for Siri: %d", &buf, 8u);
  }

  objc_initWeak(&buf, self);
  v13 = [BMAsyncBlockOperation alloc];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100027DB0;
  v16[3] = &unk_1000795D8;
  objc_copyWeak(v18, &buf);
  v18[1] = reason;
  v14 = handlerCopy;
  v17 = v14;
  v15 = [(BMAsyncBlockOperation *)v13 initWithAsyncOperationBlock:v16];
  [(NSOperationQueue *)self->_operationQueue addOperation:v15];

  objc_destroyWeak(v18);
  objc_destroyWeak(&buf);
}

- (void)fetchChangesWithError:(id)error
{
  errorCopy = error;
  if ([(BMCloudKitSyncEngine *)self isSiriCloudSyncEnabled])
  {
    [(CKSyncEngine *)self->_ckSyncEngine setNeedsToFetchChanges];
    ckSyncEngine = self->_ckSyncEngine;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000281A8;
    v9[3] = &unk_100079628;
    v9[4] = self;
    v10 = errorCopy;
    [(CKSyncEngine *)ckSyncEngine fetchChangesWithCompletionHandler:v9];
  }

  else
  {
    v6 = [NSError alloc];
    v11 = NSLocalizedDescriptionKey;
    v12 = @"Sync to iCloud for Siri disabled, no sync via iCloud performed";
    v7 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    v8 = [v6 initWithDomain:NSPOSIXErrorDomain code:-1 userInfo:v7];

    (*(errorCopy + 2))(errorCopy, v8);
  }
}

- (void)handleTransitionToNewMergeableValueRecordValueKey
{
  distributedSyncManagers = [(BMDistributedSyncMultiStreamManager *)self->_syncManager distributedSyncManagers];
  allValues = [distributedSyncManagers allValues];

  mergeableRecordValueKey = [(BMSyncDatabase *)self->_db mergeableRecordValueKey];
  mergeableRecordValueKey2 = [(BMCloudKitSyncEngine *)self mergeableRecordValueKey];
  v7 = [mergeableRecordValueKey isEqualToString:mergeableRecordValueKey2];

  if ((v7 & 1) == 0)
  {
    v8 = __biome_log_for_category();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      mergeableRecordValueKey3 = [(BMCloudKitSyncEngine *)self mergeableRecordValueKey];
      *buf = 138543362;
      v28 = mergeableRecordValueKey3;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "transitioning records over to new CKMergeableRecordValue with key %{public}@", buf, 0xCu);
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v21 = allValues;
    v10 = allValues;
    v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v23;
      do
      {
        v14 = 0;
        do
        {
          if (*v23 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v22 + 1) + 8 * v14);
          v16 = objc_autoreleasePoolPush();
          streamConfiguration = [v15 streamConfiguration];
          syncIdentifier = [streamConfiguration syncIdentifier];

          if (![(BMSyncDatabase *)self->_db clearCKRecordLocalMergeableValueAndSetToSyncForZone:syncIdentifier])
          {
            v19 = __biome_log_for_category();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
            {
              *buf = 138543362;
              v28 = syncIdentifier;
              _os_log_fault_impl(&_mh_execute_header, v19, OS_LOG_TYPE_FAULT, "failed to reset records for stream %{public}@ when transitioning to new CKMergeableRecordValue", buf, 0xCu);
            }
          }

          objc_autoreleasePoolPop(v16);
          v14 = v14 + 1;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v12);
    }

    [(BMSyncDatabase *)self->_db clearCKSyncEngineMetaData];
    mergeableRecordValueKey4 = [(BMCloudKitSyncEngine *)self mergeableRecordValueKey];
    [(BMSyncDatabase *)self->_db setMergeableRecordValueKey:mergeableRecordValueKey4];

    allValues = v21;
  }
}

- (void)uploadChangesWithError:(id)error
{
  errorCopy = error;
  v67 = objc_alloc_init(NSMutableSet);
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  distributedSyncManagers = [(BMDistributedSyncMultiStreamManager *)self->_syncManager distributedSyncManagers];
  allValues = [distributedSyncManagers allValues];

  v6 = [allValues countByEnumeratingWithState:&v84 objects:v95 count:16];
  selfCopy = self;
  if (v6)
  {
    v7 = v6;
    v8 = *v85;
    v59 = *v85;
    v60 = allValues;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v85 != v8)
        {
          objc_enumerationMutation(allValues);
        }

        v10 = *(*(&v84 + 1) + 8 * i);
        v11 = objc_autoreleasePoolPush();
        streamConfiguration = [v10 streamConfiguration];
        if (sub_10004A694(streamConfiguration))
        {
          syncIdentifier = [streamConfiguration syncIdentifier];
          v66 = streamConfiguration;
          streamIdentifier = [streamConfiguration streamIdentifier];
          v69 = v10;
          localSiteIdentifier = [v10 localSiteIdentifier];
          v16 = __biome_log_for_category();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            *buf = 138543362;
            v91 = streamIdentifier;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "ingest events from stream: %{public}@", buf, 0xCu);
          }

          v65 = streamIdentifier;

          context = objc_autoreleasePoolPush();
          isSiriCloudSyncEnabled = [(BMCloudKitSyncEngine *)self isSiriCloudSyncEnabled];
          db = self->_db;
          if (isSiriCloudSyncEnabled)
          {
            v63 = v7;
            [(BMSyncDatabase *)db enableAllCKSyncRecordsPreviouslyDisabledForSite:localSiteIdentifier stream:syncIdentifier];
            streamCRDT = [v69 streamCRDT];
            [streamCRDT ingestNewChangesForSite:localSiteIdentifier transportType:3];

            v20 = syncIdentifier;
            v21 = [(BMCloudKitSyncEngine *)self newHighestDeletedLocationRecordIDFor:localSiteIdentifier stream:syncIdentifier];
            if (v21)
            {
              [v67 addObject:v21];
            }

            v61 = v11;
            v62 = i;
            cKAtomRowSiteIdentifiers = [(BMSyncDatabase *)self->_db CKAtomRowSiteIdentifiers];
            v80 = 0u;
            v81 = 0u;
            v82 = 0u;
            v83 = 0u;
            v23 = cKAtomRowSiteIdentifiers;
            v24 = [v23 countByEnumeratingWithState:&v80 objects:v94 count:16];
            if (v24)
            {
              v25 = v24;
              v26 = *v81;
              do
              {
                for (j = 0; j != v25; j = j + 1)
                {
                  if (*v81 != v26)
                  {
                    objc_enumerationMutation(v23);
                  }

                  v28 = *(*(&v80 + 1) + 8 * j);
                  v29 = objc_autoreleasePoolPush();
                  if (([localSiteIdentifier isEqual:v28] & 1) == 0)
                  {
                    streamCRDT2 = [v69 streamCRDT];
                    [streamCRDT2 ingestNewChangesForSite:v28 transportType:3];

                    self = selfCopy;
                    v31 = [(BMCloudKitSyncEngine *)selfCopy newHighestDeletedLocationRecordIDFor:v28 stream:v20];

                    if (v31)
                    {
                      [v67 addObject:v31];
                      v21 = v31;
                    }

                    else
                    {
                      v21 = 0;
                    }
                  }

                  objc_autoreleasePoolPop(v29);
                }

                v25 = [v23 countByEnumeratingWithState:&v80 objects:v94 count:16];
              }

              while (v25);
            }

            v8 = v59;
            allValues = v60;
            i = v62;
            v7 = v63;
            v11 = v61;
          }

          else
          {
            [v69 localSiteIdentifier];
            v21 = v20 = syncIdentifier;
            [(BMSyncDatabase *)db disableAllCKSyncRecordsForSite:v21 stream:v20];
          }

          objc_autoreleasePoolPop(context);
          streamConfiguration = v66;
        }

        objc_autoreleasePoolPop(v11);
      }

      v7 = [allValues countByEnumeratingWithState:&v84 objects:v95 count:16];
    }

    while (v7);
  }

  v32 = objc_autoreleasePoolPush();
  v33 = [(BMSyncDatabase *)self->_db ckRecordsToSyncToCloudKitForZone:0];
  v34 = v67;
  [v67 addObjectsFromArray:v33];

  gatherAllCKSyncRecordRecordsToBeDeleted = [(BMSyncDatabase *)selfCopy->_db gatherAllCKSyncRecordRecordsToBeDeleted];
  objc_autoreleasePoolPop(v32);
  v36 = __biome_log_for_category();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
  {
    v37 = [v67 count];
    v38 = [gatherAllCKSyncRecordRecordsToBeDeleted count];
    *buf = 134218240;
    v91 = v37;
    v92 = 2048;
    v93 = v38;
    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "syncNowWithReason found %lu records to sync and %lu records to delete", buf, 0x16u);
  }

  if (gatherAllCKSyncRecordRecordsToBeDeleted)
  {
    [v67 minusSet:gatherAllCKSyncRecordRecordsToBeDeleted];
  }

  if ([v67 count] || objc_msgSend(gatherAllCKSyncRecordRecordsToBeDeleted, "count"))
  {
    v39 = __biome_log_for_category();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      v40 = [v67 count];
      v41 = [gatherAllCKSyncRecordRecordsToBeDeleted count];
      *buf = 134218240;
      v91 = v40;
      v92 = 2048;
      v93 = v41;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_INFO, "syncNowWithReason after removing duplicates, sending CKSyncEngine %lu records to sync and %lu records to delete", buf, 0x16u);
    }

    v42 = objc_alloc_init(NSMutableArray);
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    v43 = v67;
    v44 = [v43 countByEnumeratingWithState:&v76 objects:v89 count:16];
    if (v44)
    {
      v45 = v44;
      v46 = *v77;
      do
      {
        for (k = 0; k != v45; k = k + 1)
        {
          if (*v77 != v46)
          {
            objc_enumerationMutation(v43);
          }

          v48 = [[CKSyncEnginePendingRecordZoneChange alloc] initWithRecordID:*(*(&v76 + 1) + 8 * k) type:0];
          [v42 addObject:v48];
        }

        v45 = [v43 countByEnumeratingWithState:&v76 objects:v89 count:16];
      }

      while (v45);
    }

    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v49 = gatherAllCKSyncRecordRecordsToBeDeleted;
    v50 = [v49 countByEnumeratingWithState:&v72 objects:v88 count:16];
    if (v50)
    {
      v51 = v50;
      v52 = *v73;
      do
      {
        for (m = 0; m != v51; m = m + 1)
        {
          if (*v73 != v52)
          {
            objc_enumerationMutation(v49);
          }

          v54 = [[CKSyncEnginePendingRecordZoneChange alloc] initWithRecordID:*(*(&v72 + 1) + 8 * m) type:1];
          [v42 addObject:v54];
        }

        v51 = [v49 countByEnumeratingWithState:&v72 objects:v88 count:16];
      }

      while (v51);
    }

    state = [(CKSyncEngine *)selfCopy->_ckSyncEngine state];
    [state addPendingRecordZoneChanges:v42];

    ckSyncEngine = selfCopy->_ckSyncEngine;
    v70[0] = _NSConcreteStackBlock;
    v70[1] = 3221225472;
    v70[2] = sub_100028C7C;
    v70[3] = &unk_100079628;
    v70[4] = selfCopy;
    v71 = errorCopy;
    [(CKSyncEngine *)ckSyncEngine sendChangesWithCompletionHandler:v70];

    v57 = errorCopy;
    v34 = v67;
  }

  else
  {
    v57 = errorCopy;
    (*(errorCopy + 2))(errorCopy, 0);
  }
}

- (BOOL)isManateeAvailable:(id)available
{
  availableCopy = available;
  v4 = availableCopy;
  if (!availableCopy)
  {
    v6 = __biome_log_for_category();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10004AA0C();
    }

    goto LABEL_21;
  }

  accountStatus = [availableCopy accountStatus];
  if (accountStatus > 1)
  {
    if ((accountStatus - 2) >= 2)
    {
      if (accountStatus == 4)
      {
        v6 = __biome_log_for_category();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          sub_10004A880();
        }

LABEL_21:
        v9 = 0;
        goto LABEL_22;
      }

LABEL_19:
      v6 = __biome_log_for_category();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_10004A99C();
      }

      goto LABEL_21;
    }

LABEL_17:
    v6 = __biome_log_for_category();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10004A92C();
    }

    goto LABEL_21;
  }

  if (!accountStatus)
  {
    goto LABEL_17;
  }

  if (accountStatus != 1)
  {
    goto LABEL_19;
  }

  deviceToDeviceEncryptionAvailability = [v4 deviceToDeviceEncryptionAvailability];
  if ((deviceToDeviceEncryptionAvailability & 1) == 0)
  {
    goto LABEL_15;
  }

  v8 = __biome_log_for_category();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "This account is eligible to sync with manatee containers", buf, 2u);
  }

  if ((deviceToDeviceEncryptionAvailability & 2) == 0)
  {
LABEL_15:
    v6 = __biome_log_for_category();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10004A8BC();
    }

    goto LABEL_21;
  }

  v6 = __biome_log_for_category();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Manatee is available on the current device", v11, 2u);
  }

  v9 = 1;
LABEL_22:

  return v9;
}

- (void)startWithCompletionBlock:(id)block
{
  blockCopy = block;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 1;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000292B8;
  block[3] = &unk_100079678;
  block[4] = self;
  block[5] = &v10;
  dispatch_sync(queue, block);
  if (*(v11 + 24) == 1)
  {
    container = self->_container;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100029604;
    v7[3] = &unk_1000796A0;
    v7[4] = self;
    v8 = blockCopy;
    [(CKContainer *)container accountInfoWithCompletionHandler:v7];
  }

  else
  {
    (*(blockCopy + 2))(blockCopy, 0, 0);
  }

  _Block_object_dispose(&v10, 8);
}

- (void)syncSessionDidStartWithReason:(unint64_t)reason
{
  sessionContext = [(BMSyncSessionMetricsCollector *)self->_metricsCollector sessionContext];
  [(BMCloudKitSyncEngine *)self setSessionContext:sessionContext];

  metricsCollector = self->_metricsCollector;
  sessionContext2 = [(BMCloudKitSyncEngine *)self sessionContext];
  sessionID = [sessionContext2 sessionID];
  [(BMSyncSessionMetricsCollector *)metricsCollector recordSessionStart:sessionID transport:3 reason:reason isReciprocal:0];
}

- (void)syncSessionDidEnd
{
  metricsCollector = self->_metricsCollector;
  sessionContext = [(BMCloudKitSyncEngine *)self sessionContext];
  sessionID = [sessionContext sessionID];
  lastCloudKitSyncDate = [(BMSyncDatabase *)self->_db lastCloudKitSyncDate];
  [(BMSyncSessionMetricsCollector *)metricsCollector recordSessionEnd:sessionID lastSyncDate:lastCloudKitSyncDate];

  [(BMCloudKitSyncEngine *)self setSessionContext:0];
  db = self->_db;
  v8 = objc_opt_new();
  [(BMSyncDatabase *)db setLastCloudKitSyncDate:v8];
}

- (void)syncEngine:(id)engine zoneWithIDChanged:(id)changed
{
  changedCopy = changed;
  v5 = __biome_log_for_category();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    zoneName = [changedCopy zoneName];
    v7 = 138543362;
    v8 = zoneName;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "zoneWithIDChanged: %{public}@", &v7, 0xCu);
  }
}

- (void)syncEngine:(id)engine failedToFetchChangesForRecordZoneID:(id)d error:(id)error
{
  dCopy = d;
  v6 = __biome_log_for_category();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    zoneName = [dCopy zoneName];
    v8 = 138543362;
    v9 = zoneName;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "failedToFetchChangesForRecordZoneID: %{public}@", &v8, 0xCu);
  }
}

- (void)syncEngine:(id)engine didDeleteRecordWithID:(id)d
{
  dCopy = d;
  v6 = __biome_log_for_category();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    recordName = [dCopy recordName];
    zoneID = [dCopy zoneID];
    zoneName = [zoneID zoneName];
    *buf = 138543618;
    v20 = recordName;
    v21 = 2114;
    v22 = zoneName;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "didDeleteRecordWithID: %{public}@ in zone: %{public}@", buf, 0x16u);
  }

  v10 = [BMStreamCRDTLocation alloc];
  zoneID2 = [dCopy zoneID];
  zoneName2 = [zoneID2 zoneName];
  recordName2 = [dCopy recordName];
  v14 = [(BMStreamCRDTLocation *)v10 initWithZoneName:zoneName2 recordName:recordName2];

  if (v14)
  {
    queue = self->_queue;
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100029BA4;
    v17[3] = &unk_100078E68;
    v17[4] = self;
    v18 = v14;
    dispatch_sync(queue, v17);
  }

  else
  {
    v16 = __biome_log_for_category();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      sub_10004ABDC();
    }
  }
}

- (BOOL)isRecordNewerThanMostRecentDeleteForSiteIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [BMStreamCRDTLocation alloc];
  recordID = [identifierCopy recordID];
  zoneID = [recordID zoneID];
  zoneName = [zoneID zoneName];
  recordID2 = [identifierCopy recordID];
  recordName = [recordID2 recordName];
  v11 = [(BMStreamCRDTLocation *)v5 initWithZoneName:zoneName recordName:recordName];

  if (v11)
  {
    db = self->_db;
    siteIdentifier = [(BMStreamCRDTLocation *)v11 siteIdentifier];
    streamName = [(BMStreamCRDTLocation *)v11 streamName];
    v15 = [(BMSyncDatabase *)db highestDeletedLocationForSiteIdentifier:siteIdentifier inStream:streamName];

    if (v15)
    {
      location = [v15 location];
      v17 = [location day];
      v18 = [(BMStreamCRDTLocation *)v11 day];
      v19 = [v17 compare:v18];

      v20 = v19 == -1;
    }

    else
    {
      recordID3 = [identifierCopy recordID];
      zoneID2 = [recordID3 zoneID];
      v24 = [(BMCloudKitSyncEngine *)self streamConfigurationForZoneID:zoneID2];

      [(BMStreamCRDTLocation *)v11 secondsUntilExpirationWithStreamConfiguration:v24];
      v20 = v25 > 0.0;
    }
  }

  else
  {
    v21 = __biome_log_for_category();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      sub_10004AC9C();
    }

    v20 = 0;
  }

  return v20;
}

- (void)handleSyncRecordDidFetchRecord:(id)record
{
  recordCopy = record;
  if ([(BMCloudKitSyncEngine *)self isSiriCloudSyncEnabled])
  {
    queue = self->_queue;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100029E8C;
    v6[3] = &unk_100078E68;
    v7 = recordCopy;
    selfCopy = self;
    dispatch_sync(queue, v6);
  }
}

- (void)handleZoneVersionDidFetchRecord:(id)record
{
  recordCopy = record;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002A2D4;
  v7[3] = &unk_100078E68;
  v8 = recordCopy;
  selfCopy = self;
  v6 = recordCopy;
  dispatch_sync(queue, v7);
}

- (void)handleHighestDeletedLocationDidFetchRecord:(id)record
{
  recordCopy = record;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002A488;
  v7[3] = &unk_100078E68;
  v8 = recordCopy;
  selfCopy = self;
  v6 = recordCopy;
  dispatch_sync(queue, v7);
}

- (void)syncEngine:(id)engine didFetchRecord:(id)record
{
  engineCopy = engine;
  recordCopy = record;
  v8 = __biome_log_for_category();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    recordID = [recordCopy recordID];
    recordName = [recordID recordName];
    v14 = 138543362;
    v15 = recordName;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "didFetchRecord: %{public}@", &v14, 0xCu);
  }

  recordType = [recordCopy recordType];
  v12 = sub_100027710(recordType);

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      [(BMCloudKitSyncEngine *)self handleZoneVersionDidFetchRecord:recordCopy];
    }

    else
    {
      [(BMCloudKitSyncEngine *)self handleHighestDeletedLocationDidFetchRecord:recordCopy];
    }
  }

  else if (v12)
  {
    [(BMCloudKitSyncEngine *)self handleSyncRecordDidFetchRecord:recordCopy];
  }

  else
  {
    v13 = __biome_log_for_category();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      sub_10004AEB8();
    }
  }
}

- (void)handleDidSaveRecordZoneVersionRecord:(id)record
{
  recordCopy = record;
  v5 = [recordCopy objectForKeyedSubscript:@"zoneVersionUUID"];
  recordID = [recordCopy recordID];
  zoneID = [recordID zoneID];
  zoneName = [zoneID zoneName];

  queue = self->_queue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10002A960;
  v13[3] = &unk_1000796C8;
  v13[4] = self;
  v14 = recordCopy;
  v15 = v5;
  v16 = zoneName;
  v10 = zoneName;
  v11 = v5;
  v12 = recordCopy;
  dispatch_sync(queue, v13);
}

- (void)handleDidSaveRecordHighestDeletedLocation:(id)location
{
  locationCopy = location;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002AA5C;
  v7[3] = &unk_100078E68;
  v7[4] = self;
  v8 = locationCopy;
  v6 = locationCopy;
  dispatch_sync(queue, v7);
}

- (void)handleDidSaveRecordSyncRecord:(id)record
{
  recordCopy = record;
  recordID = [recordCopy recordID];
  zoneID = [recordID zoneID];
  zoneName = [zoneID zoneName];

  recordID2 = [recordCopy recordID];
  recordName = [recordID2 recordName];

  v10 = [recordCopy objectForKeyedSubscript:@"crdtDeleted"];
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002AC04;
  block[3] = &unk_1000796F0;
  block[4] = self;
  v17 = recordCopy;
  v18 = v10;
  v19 = recordName;
  v20 = zoneName;
  v12 = zoneName;
  v13 = recordName;
  v14 = v10;
  v15 = recordCopy;
  dispatch_sync(queue, block);
}

- (void)syncEngine:(id)engine didSaveRecord:(id)record
{
  engineCopy = engine;
  recordCopy = record;
  recordID = [recordCopy recordID];
  zoneID = [recordID zoneID];
  zoneName = [zoneID zoneName];

  recordID2 = [recordCopy recordID];
  recordName = [recordID2 recordName];

  recordType = [recordCopy recordType];
  v14 = sub_100027710(recordType);

  v15 = __biome_log_for_category();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    recordType2 = [recordCopy recordType];
    v19 = 138543874;
    v20 = recordName;
    v21 = 2114;
    v22 = recordType2;
    v23 = 2114;
    v24 = zoneName;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "didSaveRecord: %{public}@ recordType: %{public}@ zone: %{public}@", &v19, 0x20u);
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      [(BMCloudKitSyncEngine *)self handleDidSaveRecordZoneVersionRecord:recordCopy];
    }

    else
    {
      [(BMCloudKitSyncEngine *)self handleDidSaveRecordHighestDeletedLocation:recordCopy];
    }
  }

  else if (v14)
  {
    [(BMCloudKitSyncEngine *)self handleDidSaveRecordSyncRecord:recordCopy];
  }

  else
  {
    v17 = __biome_log_for_category();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      recordType3 = [recordCopy recordType];
      v19 = 138543874;
      v20 = recordName;
      v21 = 2114;
      v22 = recordType3;
      v23 = 2114;
      v24 = zoneName;
      _os_log_fault_impl(&_mh_execute_header, v17, OS_LOG_TYPE_FAULT, "didSaveRecord: %{public}@ unknown recordType: %{public}@ zone: %{public}@", &v19, 0x20u);
    }
  }
}

- (void)syncEngine:(id)engine didSaveRecordZone:(id)zone
{
  zoneID = [zone zoneID];
  zoneName = [zoneID zoneName];

  v7 = __biome_log_for_category();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v13 = zoneName;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "didSaveRecordZone: %{public}@", buf, 0xCu);
  }

  queue = self->_queue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10002B414;
  v10[3] = &unk_100078E68;
  v10[4] = self;
  v11 = zoneName;
  v9 = zoneName;
  dispatch_sync(queue, v10);
}

- (void)syncEngine:(id)engine didUpdateMetadata:(id)metadata
{
  metadataCopy = metadata;
  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10002B530;
  v8[3] = &unk_100078E68;
  v8[4] = self;
  v9 = metadataCopy;
  v7 = metadataCopy;
  dispatch_sync(queue, v8);
}

- (void)syncEngine:(id)engine failedToDeleteRecordWithID:(id)d error:(id)error
{
  dCopy = d;
  v6 = __biome_log_for_category();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    recordName = [dCopy recordName];
    zoneID = [dCopy zoneID];
    zoneName = [zoneID zoneName];
    v10 = 138543618;
    v11 = recordName;
    v12 = 2114;
    v13 = zoneName;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "failedToDeleteRecordWithID: %{public}@, zone:%{public}@", &v10, 0x16u);
  }
}

- (void)syncEngine:(id)engine failedToSaveRecordZone:(id)zone error:(id)error
{
  errorCopy = error;
  zoneID = [zone zoneID];
  zoneName = [zoneID zoneName];

  v10 = __biome_log_for_category();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    v16 = zoneName;
    v17 = 2114;
    v18 = errorCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "failedToSaveRecordZone:%{public}@ error:%{public}@", buf, 0x16u);
  }

  queue = self->_queue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10002B7D4;
  v13[3] = &unk_100078E68;
  v13[4] = self;
  v14 = zoneName;
  v12 = zoneName;
  dispatch_sync(queue, v13);
}

- (void)handleZoneReset:(id)reset
{
  resetCopy = reset;
  queue = self->_queue;
  if (queue)
  {
    dispatch_assert_queue_V2(queue);
  }

  v5 = [(BMSyncDatabase *)self->_db ckZoneForZoneName:resetCopy];
  attemptedRecoveryDate = [v5 attemptedRecoveryDate];
  v7 = +[NSDate now];
  v8 = v7;
  if (attemptedRecoveryDate)
  {
    [v7 timeIntervalSinceDate:attemptedRecoveryDate];
    v10 = v9 > 14400.0;
  }

  else
  {
    v10 = 1;
  }

  if (![v5 recoveryState] && v10)
  {
    [(BMSyncDatabase *)self->_db ckZoneSetAttemptedRecoveryDate:v8 state:1 forZoneName:resetCopy];
  }
}

- (void)handleFailedToSaveSyncRecordUnknownItem:(id)item
{
  itemCopy = item;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002BA68;
  v7[3] = &unk_100078E68;
  v7[4] = self;
  v8 = itemCopy;
  v6 = itemCopy;
  dispatch_sync(queue, v7);
}

- (void)handleFailedToSaveSyncRecordResaveRecord:(id)record
{
  recordCopy = record;
  recordID = [recordCopy recordID];
  zoneID = [recordID zoneID];

  if (zoneID)
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10002BDE0;
    block[3] = &unk_100078E68;
    block[4] = self;
    v8 = recordCopy;
    v24 = v8;
    dispatch_sync(queue, block);
    v9 = [[CKRecordZone alloc] initWithZoneID:zoneID];
    v22 = [[CKSyncEnginePendingZoneSave alloc] initWithZone:v9];
    v26 = v22;
    v10 = [NSArray arrayWithObjects:&v26 count:1];
    state = [(CKSyncEngine *)self->_ckSyncEngine state];
    [state addPendingDatabaseChanges:v10];

    zoneID2 = [v9 zoneID];
    v13 = [(BMCloudKitSyncEngine *)self newZoneVersionRecordIDForZone:zoneID2];

    v14 = [[CKSyncEnginePendingRecordZoneChange alloc] initWithRecordID:v13 type:0];
    v15 = [CKSyncEnginePendingRecordZoneChange alloc];
    recordID2 = [v8 recordID];
    v17 = [v15 initWithRecordID:recordID2 type:0];

    v25[0] = v14;
    v25[1] = v17;
    v18 = [NSArray arrayWithObjects:v25 count:2];
    state2 = [(CKSyncEngine *)self->_ckSyncEngine state];
    [state2 addPendingRecordZoneChanges:v18];

    v20 = __biome_log_for_category();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_10004B1BC();
    }
  }

  else
  {
    v21 = __biome_log_for_category();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_10004B280(recordCopy);
    }
  }
}

- (void)handleFailedToSaveSyncRecordServerRecordChanged:(id)changed error:(id)error
{
  changedCopy = changed;
  errorCopy = error;
  recordID = [changedCopy recordID];
  zoneID = [recordID zoneID];

  queue = self->_queue;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10002BF38;
  v14[3] = &unk_1000796C8;
  v15 = errorCopy;
  selfCopy = self;
  v17 = zoneID;
  v18 = changedCopy;
  v11 = changedCopy;
  v12 = zoneID;
  v13 = errorCopy;
  dispatch_sync(queue, v14);
}

- (void)handleFailedToSaveSyncRecordServerManateeDecryptionError:(id)error error:(id)a4
{
  errorCopy = error;
  v7 = a4;
  recordID = [errorCopy recordID];
  zoneID = [recordID zoneID];

  v10 = __biome_log_for_category();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543874;
    v16 = zoneID;
    v17 = 2114;
    v18 = errorCopy;
    v19 = 2114;
    v20 = v7;
    _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Manatee identity loss reported: record:%{public}@, zoneID:%{public}@, error:%{public}@", buf, 0x20u);
  }

  queue = self->_queue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10002C614;
  v13[3] = &unk_100078E68;
  v13[4] = self;
  v14 = zoneID;
  v12 = zoneID;
  dispatch_sync(queue, v13);
}

- (void)handleFailedToSaveRecordSyncRecord:(id)record error:(id)error
{
  recordCopy = record;
  errorCopy = error;
  code = [errorCopy code];
  if (code <= 25)
  {
    if (code == 11)
    {
      [(BMCloudKitSyncEngine *)self handleFailedToSaveSyncRecordUnknownItem:recordCopy];
      goto LABEL_14;
    }

    if (code == 14)
    {
      [(BMCloudKitSyncEngine *)self handleFailedToSaveSyncRecordServerRecordChanged:recordCopy error:errorCopy];
      goto LABEL_14;
    }
  }

  else
  {
    if (code == 26 || code == 28)
    {
      [(BMCloudKitSyncEngine *)self handleFailedToSaveSyncRecordResaveRecord:recordCopy];
      goto LABEL_14;
    }

    if (code == 112)
    {
      [(BMCloudKitSyncEngine *)self handleFailedToSaveSyncRecordServerManateeDecryptionError:recordCopy error:errorCopy];
      goto LABEL_14;
    }
  }

  v9 = __biome_log_for_category();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
  {
    sub_10004B54C();
  }

LABEL_14:
}

- (void)handleFailedToSaveRecordZoneVersion:(id)version error:(id)error
{
  versionCopy = version;
  errorCopy = error;
  queue = self->_queue;
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_10002C878;
  v14 = &unk_100078E68;
  selfCopy = self;
  v9 = versionCopy;
  v16 = v9;
  dispatch_sync(queue, &v11);
  if (-[BMCloudKitSyncEngine resaveRecordOnError:](self, "resaveRecordOnError:", [errorCopy code]))
  {
    [(BMCloudKitSyncEngine *)self resaveRecord:v9];
  }

  else
  {
    v10 = __biome_log_for_category();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      sub_10004B5B4();
    }
  }
}

- (void)handleFailedToSaveRecordHighestDeletedLocation:(id)location error:(id)error
{
  locationCopy = location;
  errorCopy = error;
  queue = self->_queue;
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_10002C9FC;
  v14 = &unk_100078E68;
  selfCopy = self;
  v9 = locationCopy;
  v16 = v9;
  dispatch_sync(queue, &v11);
  if (-[BMCloudKitSyncEngine resaveRecordOnError:](self, "resaveRecordOnError:", [errorCopy code]))
  {
    [(BMCloudKitSyncEngine *)self resaveRecord:v9];
  }

  else if ([errorCopy code] == 14)
  {
    [(BMCloudKitSyncEngine *)self handleServerRecordChangedForHighestDeletedLocationError:errorCopy];
  }

  else
  {
    v10 = __biome_log_for_category();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      sub_10004B61C();
    }
  }
}

- (void)resaveRecord:(id)record
{
  recordCopy = record;
  recordID = [recordCopy recordID];
  zoneID = [recordID zoneID];

  if (zoneID)
  {
    v7 = [[CKRecordZone alloc] initWithZoneID:zoneID];
    v8 = [[CKSyncEnginePendingZoneSave alloc] initWithZone:v7];
    v18 = v8;
    v9 = [NSArray arrayWithObjects:&v18 count:1];
    state = [(CKSyncEngine *)self->_ckSyncEngine state];
    [state addPendingDatabaseChanges:v9];

    v11 = [CKSyncEnginePendingRecordZoneChange alloc];
    recordID2 = [recordCopy recordID];
    v13 = [v11 initWithRecordID:recordID2 type:0];

    v17 = v13;
    v14 = [NSArray arrayWithObjects:&v17 count:1];
    state2 = [(CKSyncEngine *)self->_ckSyncEngine state];
    [state2 addPendingRecordZoneChanges:v14];

    v16 = __biome_log_for_category();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10004B1BC();
    }
  }

  else
  {
    v7 = __biome_log_for_category();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10004B280(recordCopy);
    }
  }
}

- (void)handleServerRecordChangedForHighestDeletedLocationError:(id)error
{
  errorCopy = error;
  userInfo = [errorCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:CKRecordChangedErrorServerRecordKey];

  userInfo2 = [errorCopy userInfo];

  v8 = [userInfo2 objectForKeyedSubscript:CKRecordChangedErrorClientRecordKey];

  v9 = [v6 objectForKeyedSubscript:@"day"];
  v10 = [v8 objectForKeyedSubscript:@"day"];
  longValue = [v10 longValue];
  if (longValue > [v9 longValue])
  {
    v12 = [CKSyncEnginePendingRecordZoneChange alloc];
    recordID = [v6 recordID];
    v14 = [v12 initWithRecordID:recordID type:0];

    v17 = v14;
    v15 = [NSArray arrayWithObjects:&v17 count:1];
    state = [(CKSyncEngine *)self->_ckSyncEngine state];
    [state addPendingRecordZoneChanges:v15];
  }
}

- (void)syncEngine:(id)engine failedToSaveRecord:(id)record error:(id)error
{
  engineCopy = engine;
  recordCopy = record;
  errorCopy = error;
  recordID = [recordCopy recordID];
  zoneID = [recordID zoneID];

  v13 = __biome_log_for_category();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    zoneName = [zoneID zoneName];
    recordID2 = [recordCopy recordID];
    recordName = [recordID2 recordName];
    v19 = 138543874;
    v20 = zoneName;
    v21 = 2114;
    v22 = recordName;
    v23 = 2114;
    v24 = errorCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "failedToSaveRecord: %{public}@, %{public}@ %{public}@", &v19, 0x20u);
  }

  recordType = [recordCopy recordType];
  v18 = sub_100027710(recordType);

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      [(BMCloudKitSyncEngine *)self handleFailedToSaveRecordZoneVersion:recordCopy error:errorCopy];
    }

    else
    {
      [(BMCloudKitSyncEngine *)self handleFailedToSaveRecordHighestDeletedLocation:recordCopy error:errorCopy];
    }
  }

  else if (v18)
  {
    [(BMCloudKitSyncEngine *)self handleFailedToSaveRecordSyncRecord:recordCopy error:errorCopy];
  }
}

- (id)handleHighestDeletedLocationRecordToSaveForRecordID:(id)d
{
  dCopy = d;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_10002D0CC;
  v17 = sub_10002D0DC;
  v18 = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002D0E4;
  block[3] = &unk_100079718;
  v10 = dCopy;
  selfCopy = self;
  v12 = &v13;
  v6 = dCopy;
  dispatch_sync(queue, block);
  v7 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v7;
}

- (id)handleZoneVersionRecordToSaveForRecordID:(id)d
{
  dCopy = d;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_10002D0CC;
  v16 = sub_10002D0DC;
  v17 = 0;
  queue = self->_queue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10002D41C;
  v9[3] = &unk_100079740;
  v10 = dCopy;
  v11 = &v12;
  v6 = dCopy;
  dispatch_sync(queue, v9);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)handleSyncRecordRecordToSaveForRecordID:(id)d
{
  dCopy = d;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_10002D0CC;
  v29 = sub_10002D0DC;
  v30 = 0;
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x3032000000;
  v23[3] = sub_10002D0CC;
  v23[4] = sub_10002D0DC;
  v24 = 0;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3032000000;
  v21[3] = sub_10002D0CC;
  v21[4] = sub_10002D0DC;
  v22 = 0;
  recordName = [dCopy recordName];
  zoneID = [dCopy zoneID];
  zoneName = [zoneID zoneName];

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002D720;
  block[3] = &unk_100079768;
  block[4] = self;
  v15 = zoneName;
  v16 = recordName;
  v17 = dCopy;
  v18 = &v25;
  v19 = v23;
  v20 = v21;
  v9 = dCopy;
  v10 = recordName;
  v11 = zoneName;
  dispatch_sync(queue, block);
  v12 = v26[5];

  _Block_object_dispose(v21, 8);
  _Block_object_dispose(v23, 8);

  _Block_object_dispose(&v25, 8);

  return v12;
}

- (id)syncEngine:(id)engine recordToSaveForRecordID:(id)d
{
  dCopy = d;
  v6 = __biome_log_for_category();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    recordName = [dCopy recordName];
    v15 = 138543362;
    v16 = recordName;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "recordToSaveForRecordID %{public}@", &v15, 0xCu);
  }

  recordName2 = [dCopy recordName];
  v9 = [recordName2 isEqualToString:@"zoneVersion"];

  if (v9)
  {
    v10 = [(BMCloudKitSyncEngine *)self handleZoneVersionRecordToSaveForRecordID:dCopy];
  }

  else
  {
    recordName3 = [dCopy recordName];
    v12 = [recordName3 containsString:{@", "}];

    if (v12)
    {
      [(BMCloudKitSyncEngine *)self handleSyncRecordRecordToSaveForRecordID:dCopy];
    }

    else
    {
      [(BMCloudKitSyncEngine *)self handleHighestDeletedLocationRecordToSaveForRecordID:dCopy];
    }
    v10 = ;
  }

  v13 = v10;

  return v13;
}

- (void)syncEngine:(id)engine failedToDeleteRecordZoneWithID:(id)d error:(id)error
{
  errorCopy = error;
  zoneName = [d zoneName];
  v9 = __biome_log_for_category();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    v15 = zoneName;
    v16 = 2114;
    v17 = errorCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "failedToDeleteRecordZoneWithID: %{public}@ error: %{public}@", buf, 0x16u);
  }

  queue = self->_queue;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10002E0D4;
  v12[3] = &unk_100078E68;
  v12[4] = self;
  v13 = zoneName;
  v11 = zoneName;
  dispatch_sync(queue, v12);
}

- (void)syncEngine:(id)engine didDeleteRecordZoneWithID:(id)d
{
  dCopy = d;
  zoneName = [dCopy zoneName];
  v7 = __biome_log_for_category();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v15 = zoneName;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "didDeleteRecordZoneWithID: %{public}@", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002E290;
  block[3] = &unk_100079790;
  block[4] = self;
  v12 = zoneName;
  v13 = dCopy;
  v9 = dCopy;
  v10 = zoneName;
  dispatch_sync(queue, block);
}

- (void)syncEngine:(id)engine zoneWithIDWasDeleted:(id)deleted
{
  deletedCopy = deleted;
  v6 = __biome_log_for_category();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    zoneName = [deletedCopy zoneName];
    *buf = 138543362;
    v13 = zoneName;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "zoneWithIDWasDeleted: %{public}@", buf, 0xCu);
  }

  queue = self->_queue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10002E798;
  v10[3] = &unk_100078E68;
  v10[4] = self;
  v11 = deletedCopy;
  v9 = deletedCopy;
  dispatch_sync(queue, v10);
}

- (void)handleRecordWithIDDeletedSyncRecord:(id)record
{
  recordCopy = record;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002E8BC;
  v7[3] = &unk_100078E68;
  v8 = recordCopy;
  selfCopy = self;
  v6 = recordCopy;
  dispatch_sync(queue, v7);
}

- (void)syncEngine:(id)engine recordWithIDWasDeleted:(id)deleted recordType:(id)type
{
  deletedCopy = deleted;
  typeCopy = type;
  v9 = __biome_log_for_category();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    recordName = [deletedCopy recordName];
    v11 = 138543618;
    v12 = recordName;
    v13 = 2114;
    v14 = typeCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "recordWithIDWasDeleted: %{public}@, type=%{public}@", &v11, 0x16u);
  }

  if (sub_100027710(typeCopy) == 1)
  {
    [(BMCloudKitSyncEngine *)self handleRecordWithIDDeletedSyncRecord:deletedCopy];
  }
}

- (void)syncEngineWillBeginFetchingChanges:(id)changes
{
  v3 = __biome_log_for_category();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "syncEngineWillBeginFetchingChanges", v4, 2u);
  }
}

- (void)syncEngineDidEndFetchingChanges:(id)changes
{
  v4 = __biome_log_for_category();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "syncEngineDidEndFetchingChanges", buf, 2u);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002ECBC;
  block[3] = &unk_100078B70;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)syncEngineWillBeginModifyingPendingChanges:(id)changes
{
  v3 = __biome_log_for_category();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "syncEngineWillBeginModifyingPendingChanges", v4, 2u);
  }
}

- (void)syncEngineDidEndModifyingPendingChanges:(id)changes
{
  v4 = __biome_log_for_category();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "syncEngineDidEndModifyingPendingChanges", buf, 2u);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002FAA0;
  block[3] = &unk_100078B70;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)handleStateUpdate:(id)update
{
  v12 = 0;
  v4 = [NSKeyedArchiver archivedDataWithRootObject:update requiringSecureCoding:1 error:&v12];
  v5 = v12;
  v6 = v5;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10002FEFC;
    block[3] = &unk_100078E68;
    block[4] = self;
    v11 = v4;
    dispatch_sync(queue, block);
  }

  else
  {
    v8 = __biome_log_for_category();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10004BA80();
    }
  }
}

- (void)handleFetchedDatabaseChanges:(id)changes
{
  fetchedDatabaseChangesEvent = [changes fetchedDatabaseChangesEvent];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  modifications = [fetchedDatabaseChangesEvent modifications];
  v6 = [modifications countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v26;
    do
    {
      v9 = 0;
      do
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(modifications);
        }

        v10 = *(*(&v25 + 1) + 8 * v9);
        ckSyncEngine = [(BMCloudKitSyncEngine *)self ckSyncEngine];
        zoneID = [v10 zoneID];
        [(BMCloudKitSyncEngine *)self syncEngine:ckSyncEngine zoneWithIDChanged:zoneID];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [modifications countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v7);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  deletions = [fetchedDatabaseChangesEvent deletions];
  v14 = [deletions countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v22;
    do
    {
      v17 = 0;
      do
      {
        if (*v22 != v16)
        {
          objc_enumerationMutation(deletions);
        }

        v18 = *(*(&v21 + 1) + 8 * v17);
        ckSyncEngine2 = [(BMCloudKitSyncEngine *)self ckSyncEngine];
        zoneID2 = [v18 zoneID];
        [(BMCloudKitSyncEngine *)self syncEngine:ckSyncEngine2 zoneWithIDWasDeleted:zoneID2];

        v17 = v17 + 1;
      }

      while (v15 != v17);
      v15 = [deletions countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v15);
  }
}

- (void)handleFetchedRecordZoneChanges:(id)changes
{
  fetchedRecordZoneChangesEvent = [changes fetchedRecordZoneChangesEvent];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  modifications = [fetchedRecordZoneChangesEvent modifications];
  v6 = [modifications countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v26;
    do
    {
      v9 = 0;
      do
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(modifications);
        }

        v10 = *(*(&v25 + 1) + 8 * v9);
        ckSyncEngine = [(BMCloudKitSyncEngine *)self ckSyncEngine];
        [(BMCloudKitSyncEngine *)self syncEngine:ckSyncEngine didFetchRecord:v10];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [modifications countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v7);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  deletions = [fetchedRecordZoneChangesEvent deletions];
  v13 = [deletions countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v22;
    do
    {
      v16 = 0;
      do
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(deletions);
        }

        v17 = *(*(&v21 + 1) + 8 * v16);
        ckSyncEngine2 = [(BMCloudKitSyncEngine *)self ckSyncEngine];
        recordID = [v17 recordID];
        recordType = [v17 recordType];
        [(BMCloudKitSyncEngine *)self syncEngine:ckSyncEngine2 recordWithIDWasDeleted:recordID recordType:recordType];

        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [deletions countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v14);
  }
}

- (void)handleSentDatabaseChanges:(id)changes
{
  sentDatabaseChangesEvent = [changes sentDatabaseChangesEvent];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  savedZones = [sentDatabaseChangesEvent savedZones];
  v6 = [savedZones countByEnumeratingWithState:&v38 objects:v44 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v39;
    do
    {
      v9 = 0;
      do
      {
        if (*v39 != v8)
        {
          objc_enumerationMutation(savedZones);
        }

        v10 = *(*(&v38 + 1) + 8 * v9);
        ckSyncEngine = [(BMCloudKitSyncEngine *)self ckSyncEngine];
        [(BMCloudKitSyncEngine *)self syncEngine:ckSyncEngine didSaveRecordZone:v10];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [savedZones countByEnumeratingWithState:&v38 objects:v44 count:16];
    }

    while (v7);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  failedZoneSaves = [sentDatabaseChangesEvent failedZoneSaves];
  v13 = [failedZoneSaves countByEnumeratingWithState:&v34 objects:v43 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v35;
    do
    {
      v16 = 0;
      do
      {
        if (*v35 != v15)
        {
          objc_enumerationMutation(failedZoneSaves);
        }

        v17 = *(*(&v34 + 1) + 8 * v16);
        ckSyncEngine2 = [(BMCloudKitSyncEngine *)self ckSyncEngine];
        recordZone = [v17 recordZone];
        error = [v17 error];
        [(BMCloudKitSyncEngine *)self syncEngine:ckSyncEngine2 failedToSaveRecordZone:recordZone error:error];

        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [failedZoneSaves countByEnumeratingWithState:&v34 objects:v43 count:16];
    }

    while (v14);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  deletedZoneIDs = [sentDatabaseChangesEvent deletedZoneIDs];
  v22 = [deletedZoneIDs countByEnumeratingWithState:&v30 objects:v42 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v31;
    do
    {
      v25 = 0;
      do
      {
        if (*v31 != v24)
        {
          objc_enumerationMutation(deletedZoneIDs);
        }

        v26 = *(*(&v30 + 1) + 8 * v25);
        ckSyncEngine3 = [(BMCloudKitSyncEngine *)self ckSyncEngine];
        [(BMCloudKitSyncEngine *)self syncEngine:ckSyncEngine3 didDeleteRecordZoneWithID:v26];

        v25 = v25 + 1;
      }

      while (v23 != v25);
      v23 = [deletedZoneIDs countByEnumeratingWithState:&v30 objects:v42 count:16];
    }

    while (v23);
  }

  failedZoneDeletes = [sentDatabaseChangesEvent failedZoneDeletes];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_10003064C;
  v29[3] = &unk_100079830;
  v29[4] = self;
  [failedZoneDeletes enumerateKeysAndObjectsUsingBlock:v29];
}

- (void)handleSentRecordZoneChanges:(id)changes
{
  sentRecordZoneChangesEvent = [changes sentRecordZoneChangesEvent];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  savedRecords = [sentRecordZoneChangesEvent savedRecords];
  v6 = [savedRecords countByEnumeratingWithState:&v49 objects:v56 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v50;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v50 != v8)
        {
          objc_enumerationMutation(savedRecords);
        }

        v10 = *(*(&v49 + 1) + 8 * i);
        ckSyncEngine = [(BMCloudKitSyncEngine *)self ckSyncEngine];
        [(BMCloudKitSyncEngine *)self syncEngine:ckSyncEngine didSaveRecord:v10];
      }

      v7 = [savedRecords countByEnumeratingWithState:&v49 objects:v56 count:16];
    }

    while (v7);
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  failedRecordSaves = [sentRecordZoneChangesEvent failedRecordSaves];
  v13 = [failedRecordSaves countByEnumeratingWithState:&v45 objects:v55 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v46;
    do
    {
      for (j = 0; j != v14; j = j + 1)
      {
        if (*v46 != v15)
        {
          objc_enumerationMutation(failedRecordSaves);
        }

        v17 = *(*(&v45 + 1) + 8 * j);
        error = [v17 error];
        record = [v17 record];
        ckSyncEngine2 = [(BMCloudKitSyncEngine *)self ckSyncEngine];
        [(BMCloudKitSyncEngine *)self syncEngine:ckSyncEngine2 failedToSaveRecord:record error:error];
      }

      v14 = [failedRecordSaves countByEnumeratingWithState:&v45 objects:v55 count:16];
    }

    while (v14);
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  deletedRecordIDs = [sentRecordZoneChangesEvent deletedRecordIDs];
  v22 = [deletedRecordIDs countByEnumeratingWithState:&v41 objects:v54 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v42;
    do
    {
      for (k = 0; k != v23; k = k + 1)
      {
        if (*v42 != v24)
        {
          objc_enumerationMutation(deletedRecordIDs);
        }

        v26 = *(*(&v41 + 1) + 8 * k);
        ckSyncEngine3 = [(BMCloudKitSyncEngine *)self ckSyncEngine];
        [(BMCloudKitSyncEngine *)self syncEngine:ckSyncEngine3 didDeleteRecordWithID:v26];
      }

      v23 = [deletedRecordIDs countByEnumeratingWithState:&v41 objects:v54 count:16];
    }

    while (v23);
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  failedRecordDeletes = [sentRecordZoneChangesEvent failedRecordDeletes];
  v29 = [failedRecordDeletes countByEnumeratingWithState:&v37 objects:v53 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v38;
    do
    {
      for (m = 0; m != v30; m = m + 1)
      {
        if (*v38 != v31)
        {
          objc_enumerationMutation(failedRecordDeletes);
        }

        v33 = *(*(&v37 + 1) + 8 * m);
        failedRecordDeletes2 = [sentRecordZoneChangesEvent failedRecordDeletes];
        v35 = [failedRecordDeletes2 objectForKeyedSubscript:v33];

        ckSyncEngine4 = [(BMCloudKitSyncEngine *)self ckSyncEngine];
        [(BMCloudKitSyncEngine *)self syncEngine:ckSyncEngine4 failedToDeleteRecordWithID:v33 error:v35];
      }

      v30 = [failedRecordDeletes countByEnumeratingWithState:&v37 objects:v53 count:16];
    }

    while (v30);
  }
}

- (void)handleDidFetchRecordZoneChanges:(id)changes
{
  didFetchRecordZoneChangesEvent = [changes didFetchRecordZoneChangesEvent];
  error = [didFetchRecordZoneChangesEvent error];

  if (error)
  {
    ckSyncEngine = [(BMCloudKitSyncEngine *)self ckSyncEngine];
    zoneID = [didFetchRecordZoneChangesEvent zoneID];
    error2 = [didFetchRecordZoneChangesEvent error];
    [(BMCloudKitSyncEngine *)self syncEngine:ckSyncEngine failedToFetchChangesForRecordZoneID:zoneID error:error2];
  }

  v9 = __biome_log_for_category();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    zoneID2 = [didFetchRecordZoneChangesEvent zoneID];
    v11 = 138543362;
    v12 = zoneID2;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "CKSyncEngineEventTypeDidFetchChanges for stream: %{public}@", &v11, 0xCu);
  }
}

- (void)syncEngine:(id)engine handleEvent:(id)event
{
  engineCopy = engine;
  eventCopy = event;
  v8 = objc_autoreleasePoolPush();
  type = [eventCopy type];
  if (type > 5)
  {
    if (type > 8)
    {
      switch(type)
      {
        case 9:
          v19 = __biome_log_for_category();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            *v24 = 0;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "CKSyncEngineEventTypeDidFetchChanges", v24, 2u);
          }

          ckSyncEngine = [(BMCloudKitSyncEngine *)self ckSyncEngine];
          [(BMCloudKitSyncEngine *)self syncEngineDidEndFetchingChanges:ckSyncEngine];
          break;
        case 10:
          v23 = __biome_log_for_category();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
          {
            *v24 = 0;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "CKSyncEngineEventTypeWillSendChanges", v24, 2u);
          }

          ckSyncEngine = [(BMCloudKitSyncEngine *)self ckSyncEngine];
          [(BMCloudKitSyncEngine *)self syncEngineWillBeginModifyingPendingChanges:ckSyncEngine];
          break;
        case 11:
          v13 = __biome_log_for_category();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            *v24 = 0;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "CKSyncEngineEventTypeDidSendChanges", v24, 2u);
          }

          ckSyncEngine = [(BMCloudKitSyncEngine *)self ckSyncEngine];
          [(BMCloudKitSyncEngine *)self syncEngineDidEndModifyingPendingChanges:ckSyncEngine];
          break;
        default:
          goto LABEL_51;
      }

      goto LABEL_50;
    }

    if (type == 6)
    {
      v17 = __biome_log_for_category();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *v24 = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "CKSyncEngineEventTypeWillFetchChanges", v24, 2u);
      }

      ckSyncEngine = [(BMCloudKitSyncEngine *)self ckSyncEngine];
      [(BMCloudKitSyncEngine *)self syncEngineWillBeginFetchingChanges:ckSyncEngine];
      goto LABEL_50;
    }

    if (type == 7)
    {
      v20 = __biome_log_for_category();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *v24 = 0;
        v21 = "CKSyncEngineEventTypeWillFetchRecordZoneChanges";
        goto LABEL_42;
      }

LABEL_43:

      goto LABEL_51;
    }

    v11 = __biome_log_for_category();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "CKSyncEngineEventTypeDidFetchRecordZoneChanges", v24, 2u);
    }

    [(BMCloudKitSyncEngine *)self handleDidFetchRecordZoneChanges:eventCopy];
  }

  else
  {
    if (type <= 2)
    {
      if (type)
      {
        if (type != 1)
        {
          if (type == 2)
          {
            v10 = __biome_log_for_category();
            if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
            {
              *v24 = 0;
              _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "CKSyncEngineEventTypeFetchedDatabaseChanges", v24, 2u);
            }

            [(BMCloudKitSyncEngine *)self handleFetchedDatabaseChanges:eventCopy];
          }

          goto LABEL_51;
        }

        v20 = __biome_log_for_category();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          *v24 = 0;
          v21 = "CKSyncEngineEventTypeAccountChange";
LABEL_42:
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, v21, v24, 2u);
          goto LABEL_43;
        }

        goto LABEL_43;
      }

      v15 = __biome_log_for_category();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *v24 = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "CKSyncEngineEventTypeStateUpdate", v24, 2u);
      }

      ckSyncEngine = [eventCopy stateUpdateEvent];
      stateSerialization = [ckSyncEngine stateSerialization];
      [(BMCloudKitSyncEngine *)self handleStateUpdate:stateSerialization];

LABEL_50:
      goto LABEL_51;
    }

    if (type == 3)
    {
      v18 = __biome_log_for_category();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *v24 = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "CKSyncEngineEventTypeFetchedRecordZoneChanges", v24, 2u);
      }

      [(BMCloudKitSyncEngine *)self handleFetchedRecordZoneChanges:eventCopy];
    }

    else if (type == 4)
    {
      v22 = __biome_log_for_category();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *v24 = 0;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "CKSyncEngineEventTypeSentDatabaseChanges", v24, 2u);
      }

      [(BMCloudKitSyncEngine *)self handleSentDatabaseChanges:eventCopy];
    }

    else
    {
      v12 = __biome_log_for_category();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *v24 = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "CKSyncEngineEventTypeSentRecordZoneChanges", v24, 2u);
      }

      [(BMCloudKitSyncEngine *)self handleSentRecordZoneChanges:eventCopy];
    }
  }

LABEL_51:
  objc_autoreleasePoolPop(v8);
}

- (id)syncEngine:(id)engine nextRecordZoneChangeBatchForContext:(id)context
{
  engineCopy = engine;
  options = [context options];
  scope = [options scope];

  v9 = objc_alloc_init(NSMutableArray);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  state = [engineCopy state];
  pendingRecordZoneChanges = [state pendingRecordZoneChanges];

  v12 = [pendingRecordZoneChanges countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v29;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v29 != v14)
        {
          objc_enumerationMutation(pendingRecordZoneChanges);
        }

        v16 = *(*(&v28 + 1) + 8 * i);
        if ([scope containsPendingRecordZoneChange:v16])
        {
          [v9 addObject:v16];
        }
      }

      v13 = [pendingRecordZoneChanges countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v13);
  }

  v17 = objc_opt_new();
  v18 = [CKSyncEngineRecordZoneChangeBatch alloc];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100031334;
  v25[3] = &unk_100079858;
  v25[4] = self;
  v26 = engineCopy;
  v27 = v17;
  v19 = v17;
  v20 = engineCopy;
  v21 = [v18 initWithPendingChanges:v9 recordProvider:v25];
  ckSyncEngine = [(BMCloudKitSyncEngine *)self ckSyncEngine];
  state2 = [ckSyncEngine state];
  [state2 removePendingRecordZoneChanges:v19];

  return v21;
}

- (BOOL)syncEngine:(id)engine shouldFetchChangesForZoneID:(id)d
{
  dCopy = d;
  v6 = [(BMCloudKitSyncEngine *)self streamConfigurationForZoneID:dCopy];
  v7 = sub_10004A694(v6);
  v8 = __biome_log_for_category();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    zoneName = [dCopy zoneName];
    streamIdentifier = [v6 streamIdentifier];
    v11 = streamIdentifier;
    v12 = @"NO";
    v14 = 138543874;
    v15 = zoneName;
    v16 = 2114;
    if (v7)
    {
      v12 = @"YES";
    }

    v17 = streamIdentifier;
    v18 = 2114;
    v19 = v12;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "shouldFetchChangesForZoneID: %{public}@ (%{public}@) returning: %{public}@", &v14, 0x20u);
  }

  return v7;
}

@end