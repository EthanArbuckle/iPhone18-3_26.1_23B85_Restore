@interface BMCloudKitSyncEngine
- (BMCloudKitSyncEngine)initWithQueue:(id)a3 multiStreamManager:(id)a4 database:(id)a5;
- (BOOL)isManateeAvailable:(id)a3;
- (BOOL)isRecordNewerThanMostRecentDeleteForSiteIdentifier:(id)a3;
- (BOOL)isSiriCloudSyncEnabled;
- (BOOL)syncEngine:(id)a3 shouldFetchChangesForZoneID:(id)a4;
- (id)handleHighestDeletedLocationRecordToSaveForRecordID:(id)a3;
- (id)handleSyncRecordRecordToSaveForRecordID:(id)a3;
- (id)handleZoneVersionRecordToSaveForRecordID:(id)a3;
- (id)newHighestDeletedLocationRecordIDFor:(id)a3 stream:(id)a4;
- (id)newZoneVersionRecordIDForZone:(id)a3;
- (id)streamConfigurationForZoneID:(id)a3;
- (id)streamConfigurationFromSyncIdentifier:(id)a3;
- (id)syncEngine:(id)a3 nextRecordZoneChangeBatchForContext:(id)a4;
- (id)syncEngine:(id)a3 recordToSaveForRecordID:(id)a4;
- (void)fetchChangesWithError:(id)a3;
- (void)handleDidFetchRecordZoneChanges:(id)a3;
- (void)handleDidSaveRecordHighestDeletedLocation:(id)a3;
- (void)handleDidSaveRecordSyncRecord:(id)a3;
- (void)handleDidSaveRecordZoneVersionRecord:(id)a3;
- (void)handleFailedToSaveRecordHighestDeletedLocation:(id)a3 error:(id)a4;
- (void)handleFailedToSaveRecordSyncRecord:(id)a3 error:(id)a4;
- (void)handleFailedToSaveRecordZoneVersion:(id)a3 error:(id)a4;
- (void)handleFailedToSaveSyncRecordResaveRecord:(id)a3;
- (void)handleFailedToSaveSyncRecordServerManateeDecryptionError:(id)a3 error:(id)a4;
- (void)handleFailedToSaveSyncRecordServerRecordChanged:(id)a3 error:(id)a4;
- (void)handleFailedToSaveSyncRecordUnknownItem:(id)a3;
- (void)handleFetchedDatabaseChanges:(id)a3;
- (void)handleFetchedRecordZoneChanges:(id)a3;
- (void)handleHighestDeletedLocationDidFetchRecord:(id)a3;
- (void)handleRecordWithIDDeletedSyncRecord:(id)a3;
- (void)handleSentDatabaseChanges:(id)a3;
- (void)handleSentRecordZoneChanges:(id)a3;
- (void)handleServerRecordChangedForHighestDeletedLocationError:(id)a3;
- (void)handleStateUpdate:(id)a3;
- (void)handleSyncRecordDidFetchRecord:(id)a3;
- (void)handleTransitionToNewMergeableValueRecordValueKey;
- (void)handleZoneReset:(id)a3;
- (void)handleZoneVersionDidFetchRecord:(id)a3;
- (void)resaveRecord:(id)a3;
- (void)startWithCompletionBlock:(id)a3;
- (void)syncEngine:(id)a3 didDeleteRecordWithID:(id)a4;
- (void)syncEngine:(id)a3 didDeleteRecordZoneWithID:(id)a4;
- (void)syncEngine:(id)a3 didFetchRecord:(id)a4;
- (void)syncEngine:(id)a3 didSaveRecord:(id)a4;
- (void)syncEngine:(id)a3 didSaveRecordZone:(id)a4;
- (void)syncEngine:(id)a3 didUpdateMetadata:(id)a4;
- (void)syncEngine:(id)a3 failedToDeleteRecordWithID:(id)a4 error:(id)a5;
- (void)syncEngine:(id)a3 failedToDeleteRecordZoneWithID:(id)a4 error:(id)a5;
- (void)syncEngine:(id)a3 failedToFetchChangesForRecordZoneID:(id)a4 error:(id)a5;
- (void)syncEngine:(id)a3 failedToSaveRecord:(id)a4 error:(id)a5;
- (void)syncEngine:(id)a3 failedToSaveRecordZone:(id)a4 error:(id)a5;
- (void)syncEngine:(id)a3 handleEvent:(id)a4;
- (void)syncEngine:(id)a3 recordWithIDWasDeleted:(id)a4 recordType:(id)a5;
- (void)syncEngine:(id)a3 zoneWithIDChanged:(id)a4;
- (void)syncEngine:(id)a3 zoneWithIDWasDeleted:(id)a4;
- (void)syncEngineDidEndFetchingChanges:(id)a3;
- (void)syncEngineDidEndModifyingPendingChanges:(id)a3;
- (void)syncEngineWillBeginFetchingChanges:(id)a3;
- (void)syncEngineWillBeginModifyingPendingChanges:(id)a3;
- (void)syncNowWithReason:(unint64_t)a3 activity:(id)a4 completionHandler:(id)a5;
- (void)syncSessionDidEnd;
- (void)syncSessionDidStartWithReason:(unint64_t)a3;
- (void)uploadChangesWithError:(id)a3;
@end

@implementation BMCloudKitSyncEngine

- (BOOL)isSiriCloudSyncEnabled
{
  v2 = +[ACAccountStore defaultStore];
  v3 = [v2 aa_primaryAppleAccount];
  v4 = [v3 isEnabledForDataclass:kAccountDataclassSiri];

  return v4;
}

- (BMCloudKitSyncEngine)initWithQueue:(id)a3 multiStreamManager:(id)a4 database:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v20.receiver = self;
  v20.super_class = BMCloudKitSyncEngine;
  v12 = [(BMCloudKitSyncEngine *)&v20 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_syncManager, a4);
    v14 = [v10 metricsCollector];
    metricsCollector = v13->_metricsCollector;
    v13->_metricsCollector = v14;

    objc_storeStrong(&v13->_db, a5);
    objc_storeStrong(&v13->_queue, a3);
    v16 = objc_opt_new();
    operationQueue = v13->_operationQueue;
    v13->_operationQueue = v16;

    [(NSOperationQueue *)v13->_operationQueue setUnderlyingQueue:v9];
    [(NSOperationQueue *)v13->_operationQueue setMaxConcurrentOperationCount:1];
    mergeableRecordValueKey = v13->_mergeableRecordValueKey;
    v13->_mergeableRecordValueKey = @"streamCRDT";
  }

  return v13;
}

- (id)streamConfigurationForZoneID:(id)a3
{
  v4 = [a3 zoneName];
  v5 = [(BMCloudKitSyncEngine *)self streamConfigurationFromSyncIdentifier:v4];

  return v5;
}

- (id)streamConfigurationFromSyncIdentifier:(id)a3
{
  syncManager = self->_syncManager;
  v4 = a3;
  v5 = [(BMDistributedSyncMultiStreamManager *)syncManager distributedSyncManagers];
  v6 = [v5 objectForKeyedSubscript:v4];

  v7 = [v6 streamConfiguration];

  return v7;
}

- (id)newHighestDeletedLocationRecordIDFor:(id)a3 stream:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BMSyncDatabase *)self->_db highestDeletedLocationForSiteIdentifier:v6 inStream:v7];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 location];
    v11 = [v10 day];
    [v11 timeIntervalSinceReferenceDate];
    v13 = v12;

    v14 = [(BMSyncDatabase *)self->_db ckRecordForRecordName:v6 zoneName:v7 recordType:3];
    v15 = v14;
    if (v14 && (db = self->_db, [v14 locationID], v17 = objc_claimAutoreleasedReturnValue(), -[BMSyncDatabase locationRowWithLocationID:](db, "locationRowWithLocationID:", v17), v18 = objc_claimAutoreleasedReturnValue(), v17, v18))
    {
      v19 = [v18 location];
      v20 = [v19 day];
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
      [(BMSyncDatabase *)self->_db saveCKRecordHighestDeletedLocationRow:v9 recordName:v6 zoneName:v7 recordExists:v15 != 0];
      v23 = [[CKRecordZone alloc] initWithZoneName:v7];
      v24 = [CKRecordID alloc];
      v25 = [v23 zoneID];
      v26 = [v24 initWithRecordName:v6 zoneID:v25];
    }
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

- (id)newZoneVersionRecordIDForZone:(id)a3
{
  v3 = a3;
  v4 = [[CKRecordID alloc] initWithRecordName:@"zoneVersion" zoneID:v3];

  return v4;
}

- (void)syncNowWithReason:(unint64_t)a3 activity:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = __biome_log_for_category();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "syncNowWithReason", &buf, 2u);
  }

  v11 = __biome_log_for_category();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = [(BMCloudKitSyncEngine *)self isSiriCloudSyncEnabled];
    LODWORD(buf) = 67109120;
    HIDWORD(buf) = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Sync with iCloud for Siri: %d", &buf, 8u);
  }

  objc_initWeak(&buf, self);
  v13 = [BMAsyncBlockOperation alloc];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100027DB0;
  v16[3] = &unk_1000795D8;
  objc_copyWeak(v18, &buf);
  v18[1] = a3;
  v14 = v9;
  v17 = v14;
  v15 = [(BMAsyncBlockOperation *)v13 initWithAsyncOperationBlock:v16];
  [(NSOperationQueue *)self->_operationQueue addOperation:v15];

  objc_destroyWeak(v18);
  objc_destroyWeak(&buf);
}

- (void)fetchChangesWithError:(id)a3
{
  v4 = a3;
  if ([(BMCloudKitSyncEngine *)self isSiriCloudSyncEnabled])
  {
    [(CKSyncEngine *)self->_ckSyncEngine setNeedsToFetchChanges];
    ckSyncEngine = self->_ckSyncEngine;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000281A8;
    v9[3] = &unk_100079628;
    v9[4] = self;
    v10 = v4;
    [(CKSyncEngine *)ckSyncEngine fetchChangesWithCompletionHandler:v9];
  }

  else
  {
    v6 = [NSError alloc];
    v11 = NSLocalizedDescriptionKey;
    v12 = @"Sync to iCloud for Siri disabled, no sync via iCloud performed";
    v7 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    v8 = [v6 initWithDomain:NSPOSIXErrorDomain code:-1 userInfo:v7];

    (*(v4 + 2))(v4, v8);
  }
}

- (void)handleTransitionToNewMergeableValueRecordValueKey
{
  v3 = [(BMDistributedSyncMultiStreamManager *)self->_syncManager distributedSyncManagers];
  v4 = [v3 allValues];

  v5 = [(BMSyncDatabase *)self->_db mergeableRecordValueKey];
  v6 = [(BMCloudKitSyncEngine *)self mergeableRecordValueKey];
  v7 = [v5 isEqualToString:v6];

  if ((v7 & 1) == 0)
  {
    v8 = __biome_log_for_category();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [(BMCloudKitSyncEngine *)self mergeableRecordValueKey];
      *buf = 138543362;
      v28 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "transitioning records over to new CKMergeableRecordValue with key %{public}@", buf, 0xCu);
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v21 = v4;
    v10 = v4;
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
          v17 = [v15 streamConfiguration];
          v18 = [v17 syncIdentifier];

          if (![(BMSyncDatabase *)self->_db clearCKRecordLocalMergeableValueAndSetToSyncForZone:v18])
          {
            v19 = __biome_log_for_category();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
            {
              *buf = 138543362;
              v28 = v18;
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
    v20 = [(BMCloudKitSyncEngine *)self mergeableRecordValueKey];
    [(BMSyncDatabase *)self->_db setMergeableRecordValueKey:v20];

    v4 = v21;
  }
}

- (void)uploadChangesWithError:(id)a3
{
  v58 = a3;
  v67 = objc_alloc_init(NSMutableSet);
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v4 = [(BMDistributedSyncMultiStreamManager *)self->_syncManager distributedSyncManagers];
  v5 = [v4 allValues];

  v6 = [v5 countByEnumeratingWithState:&v84 objects:v95 count:16];
  v68 = self;
  if (v6)
  {
    v7 = v6;
    v8 = *v85;
    v59 = *v85;
    v60 = v5;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v85 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v84 + 1) + 8 * i);
        v11 = objc_autoreleasePoolPush();
        v12 = [v10 streamConfiguration];
        if (sub_10004A694(v12))
        {
          v13 = [v12 syncIdentifier];
          v66 = v12;
          v14 = [v12 streamIdentifier];
          v69 = v10;
          v15 = [v10 localSiteIdentifier];
          v16 = __biome_log_for_category();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            *buf = 138543362;
            v91 = v14;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "ingest events from stream: %{public}@", buf, 0xCu);
          }

          v65 = v14;

          context = objc_autoreleasePoolPush();
          v17 = [(BMCloudKitSyncEngine *)self isSiriCloudSyncEnabled];
          db = self->_db;
          if (v17)
          {
            v63 = v7;
            [(BMSyncDatabase *)db enableAllCKSyncRecordsPreviouslyDisabledForSite:v15 stream:v13];
            v19 = [v69 streamCRDT];
            [v19 ingestNewChangesForSite:v15 transportType:3];

            v20 = v13;
            v21 = [(BMCloudKitSyncEngine *)self newHighestDeletedLocationRecordIDFor:v15 stream:v13];
            if (v21)
            {
              [v67 addObject:v21];
            }

            v61 = v11;
            v62 = i;
            v22 = [(BMSyncDatabase *)self->_db CKAtomRowSiteIdentifiers];
            v80 = 0u;
            v81 = 0u;
            v82 = 0u;
            v83 = 0u;
            v23 = v22;
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
                  if (([v15 isEqual:v28] & 1) == 0)
                  {
                    v30 = [v69 streamCRDT];
                    [v30 ingestNewChangesForSite:v28 transportType:3];

                    self = v68;
                    v31 = [(BMCloudKitSyncEngine *)v68 newHighestDeletedLocationRecordIDFor:v28 stream:v20];

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
            v5 = v60;
            i = v62;
            v7 = v63;
            v11 = v61;
          }

          else
          {
            [v69 localSiteIdentifier];
            v21 = v20 = v13;
            [(BMSyncDatabase *)db disableAllCKSyncRecordsForSite:v21 stream:v20];
          }

          objc_autoreleasePoolPop(context);
          v12 = v66;
        }

        objc_autoreleasePoolPop(v11);
      }

      v7 = [v5 countByEnumeratingWithState:&v84 objects:v95 count:16];
    }

    while (v7);
  }

  v32 = objc_autoreleasePoolPush();
  v33 = [(BMSyncDatabase *)self->_db ckRecordsToSyncToCloudKitForZone:0];
  v34 = v67;
  [v67 addObjectsFromArray:v33];

  v35 = [(BMSyncDatabase *)v68->_db gatherAllCKSyncRecordRecordsToBeDeleted];
  objc_autoreleasePoolPop(v32);
  v36 = __biome_log_for_category();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
  {
    v37 = [v67 count];
    v38 = [v35 count];
    *buf = 134218240;
    v91 = v37;
    v92 = 2048;
    v93 = v38;
    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "syncNowWithReason found %lu records to sync and %lu records to delete", buf, 0x16u);
  }

  if (v35)
  {
    [v67 minusSet:v35];
  }

  if ([v67 count] || objc_msgSend(v35, "count"))
  {
    v39 = __biome_log_for_category();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      v40 = [v67 count];
      v41 = [v35 count];
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
    v49 = v35;
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

    v55 = [(CKSyncEngine *)v68->_ckSyncEngine state];
    [v55 addPendingRecordZoneChanges:v42];

    ckSyncEngine = v68->_ckSyncEngine;
    v70[0] = _NSConcreteStackBlock;
    v70[1] = 3221225472;
    v70[2] = sub_100028C7C;
    v70[3] = &unk_100079628;
    v70[4] = v68;
    v71 = v58;
    [(CKSyncEngine *)ckSyncEngine sendChangesWithCompletionHandler:v70];

    v57 = v58;
    v34 = v67;
  }

  else
  {
    v57 = v58;
    (*(v58 + 2))(v58, 0);
  }
}

- (BOOL)isManateeAvailable:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    v6 = __biome_log_for_category();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10004AA0C();
    }

    goto LABEL_21;
  }

  v5 = [v3 accountStatus];
  if (v5 > 1)
  {
    if ((v5 - 2) >= 2)
    {
      if (v5 == 4)
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

  if (!v5)
  {
    goto LABEL_17;
  }

  if (v5 != 1)
  {
    goto LABEL_19;
  }

  v7 = [v4 deviceToDeviceEncryptionAvailability];
  if ((v7 & 1) == 0)
  {
    goto LABEL_15;
  }

  v8 = __biome_log_for_category();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "This account is eligible to sync with manatee containers", buf, 2u);
  }

  if ((v7 & 2) == 0)
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

- (void)startWithCompletionBlock:(id)a3
{
  v4 = a3;
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
    v8 = v4;
    [(CKContainer *)container accountInfoWithCompletionHandler:v7];
  }

  else
  {
    (*(v4 + 2))(v4, 0, 0);
  }

  _Block_object_dispose(&v10, 8);
}

- (void)syncSessionDidStartWithReason:(unint64_t)a3
{
  v5 = [(BMSyncSessionMetricsCollector *)self->_metricsCollector sessionContext];
  [(BMCloudKitSyncEngine *)self setSessionContext:v5];

  metricsCollector = self->_metricsCollector;
  v8 = [(BMCloudKitSyncEngine *)self sessionContext];
  v7 = [v8 sessionID];
  [(BMSyncSessionMetricsCollector *)metricsCollector recordSessionStart:v7 transport:3 reason:a3 isReciprocal:0];
}

- (void)syncSessionDidEnd
{
  metricsCollector = self->_metricsCollector;
  v4 = [(BMCloudKitSyncEngine *)self sessionContext];
  v5 = [v4 sessionID];
  v6 = [(BMSyncDatabase *)self->_db lastCloudKitSyncDate];
  [(BMSyncSessionMetricsCollector *)metricsCollector recordSessionEnd:v5 lastSyncDate:v6];

  [(BMCloudKitSyncEngine *)self setSessionContext:0];
  db = self->_db;
  v8 = objc_opt_new();
  [(BMSyncDatabase *)db setLastCloudKitSyncDate:v8];
}

- (void)syncEngine:(id)a3 zoneWithIDChanged:(id)a4
{
  v4 = a4;
  v5 = __biome_log_for_category();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [v4 zoneName];
    v7 = 138543362;
    v8 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "zoneWithIDChanged: %{public}@", &v7, 0xCu);
  }
}

- (void)syncEngine:(id)a3 failedToFetchChangesForRecordZoneID:(id)a4 error:(id)a5
{
  v5 = a4;
  v6 = __biome_log_for_category();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [v5 zoneName];
    v8 = 138543362;
    v9 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "failedToFetchChangesForRecordZoneID: %{public}@", &v8, 0xCu);
  }
}

- (void)syncEngine:(id)a3 didDeleteRecordWithID:(id)a4
{
  v5 = a4;
  v6 = __biome_log_for_category();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [v5 recordName];
    v8 = [v5 zoneID];
    v9 = [v8 zoneName];
    *buf = 138543618;
    v20 = v7;
    v21 = 2114;
    v22 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "didDeleteRecordWithID: %{public}@ in zone: %{public}@", buf, 0x16u);
  }

  v10 = [BMStreamCRDTLocation alloc];
  v11 = [v5 zoneID];
  v12 = [v11 zoneName];
  v13 = [v5 recordName];
  v14 = [(BMStreamCRDTLocation *)v10 initWithZoneName:v12 recordName:v13];

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

- (BOOL)isRecordNewerThanMostRecentDeleteForSiteIdentifier:(id)a3
{
  v4 = a3;
  v5 = [BMStreamCRDTLocation alloc];
  v6 = [v4 recordID];
  v7 = [v6 zoneID];
  v8 = [v7 zoneName];
  v9 = [v4 recordID];
  v10 = [v9 recordName];
  v11 = [(BMStreamCRDTLocation *)v5 initWithZoneName:v8 recordName:v10];

  if (v11)
  {
    db = self->_db;
    v13 = [(BMStreamCRDTLocation *)v11 siteIdentifier];
    v14 = [(BMStreamCRDTLocation *)v11 streamName];
    v15 = [(BMSyncDatabase *)db highestDeletedLocationForSiteIdentifier:v13 inStream:v14];

    if (v15)
    {
      v16 = [v15 location];
      v17 = [v16 day];
      v18 = [(BMStreamCRDTLocation *)v11 day];
      v19 = [v17 compare:v18];

      v20 = v19 == -1;
    }

    else
    {
      v22 = [v4 recordID];
      v23 = [v22 zoneID];
      v24 = [(BMCloudKitSyncEngine *)self streamConfigurationForZoneID:v23];

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

- (void)handleSyncRecordDidFetchRecord:(id)a3
{
  v4 = a3;
  if ([(BMCloudKitSyncEngine *)self isSiriCloudSyncEnabled])
  {
    queue = self->_queue;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100029E8C;
    v6[3] = &unk_100078E68;
    v7 = v4;
    v8 = self;
    dispatch_sync(queue, v6);
  }
}

- (void)handleZoneVersionDidFetchRecord:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002A2D4;
  v7[3] = &unk_100078E68;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_sync(queue, v7);
}

- (void)handleHighestDeletedLocationDidFetchRecord:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002A488;
  v7[3] = &unk_100078E68;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_sync(queue, v7);
}

- (void)syncEngine:(id)a3 didFetchRecord:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = __biome_log_for_category();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [v7 recordID];
    v10 = [v9 recordName];
    v14 = 138543362;
    v15 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "didFetchRecord: %{public}@", &v14, 0xCu);
  }

  v11 = [v7 recordType];
  v12 = sub_100027710(v11);

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      [(BMCloudKitSyncEngine *)self handleZoneVersionDidFetchRecord:v7];
    }

    else
    {
      [(BMCloudKitSyncEngine *)self handleHighestDeletedLocationDidFetchRecord:v7];
    }
  }

  else if (v12)
  {
    [(BMCloudKitSyncEngine *)self handleSyncRecordDidFetchRecord:v7];
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

- (void)handleDidSaveRecordZoneVersionRecord:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"zoneVersionUUID"];
  v6 = [v4 recordID];
  v7 = [v6 zoneID];
  v8 = [v7 zoneName];

  queue = self->_queue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10002A960;
  v13[3] = &unk_1000796C8;
  v13[4] = self;
  v14 = v4;
  v15 = v5;
  v16 = v8;
  v10 = v8;
  v11 = v5;
  v12 = v4;
  dispatch_sync(queue, v13);
}

- (void)handleDidSaveRecordHighestDeletedLocation:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002AA5C;
  v7[3] = &unk_100078E68;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

- (void)handleDidSaveRecordSyncRecord:(id)a3
{
  v4 = a3;
  v5 = [v4 recordID];
  v6 = [v5 zoneID];
  v7 = [v6 zoneName];

  v8 = [v4 recordID];
  v9 = [v8 recordName];

  v10 = [v4 objectForKeyedSubscript:@"crdtDeleted"];
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002AC04;
  block[3] = &unk_1000796F0;
  block[4] = self;
  v17 = v4;
  v18 = v10;
  v19 = v9;
  v20 = v7;
  v12 = v7;
  v13 = v9;
  v14 = v10;
  v15 = v4;
  dispatch_sync(queue, block);
}

- (void)syncEngine:(id)a3 didSaveRecord:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 recordID];
  v9 = [v8 zoneID];
  v10 = [v9 zoneName];

  v11 = [v7 recordID];
  v12 = [v11 recordName];

  v13 = [v7 recordType];
  v14 = sub_100027710(v13);

  v15 = __biome_log_for_category();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = [v7 recordType];
    v19 = 138543874;
    v20 = v12;
    v21 = 2114;
    v22 = v16;
    v23 = 2114;
    v24 = v10;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "didSaveRecord: %{public}@ recordType: %{public}@ zone: %{public}@", &v19, 0x20u);
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      [(BMCloudKitSyncEngine *)self handleDidSaveRecordZoneVersionRecord:v7];
    }

    else
    {
      [(BMCloudKitSyncEngine *)self handleDidSaveRecordHighestDeletedLocation:v7];
    }
  }

  else if (v14)
  {
    [(BMCloudKitSyncEngine *)self handleDidSaveRecordSyncRecord:v7];
  }

  else
  {
    v17 = __biome_log_for_category();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      v18 = [v7 recordType];
      v19 = 138543874;
      v20 = v12;
      v21 = 2114;
      v22 = v18;
      v23 = 2114;
      v24 = v10;
      _os_log_fault_impl(&_mh_execute_header, v17, OS_LOG_TYPE_FAULT, "didSaveRecord: %{public}@ unknown recordType: %{public}@ zone: %{public}@", &v19, 0x20u);
    }
  }
}

- (void)syncEngine:(id)a3 didSaveRecordZone:(id)a4
{
  v5 = [a4 zoneID];
  v6 = [v5 zoneName];

  v7 = __biome_log_for_category();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "didSaveRecordZone: %{public}@", buf, 0xCu);
  }

  queue = self->_queue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10002B414;
  v10[3] = &unk_100078E68;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  dispatch_sync(queue, v10);
}

- (void)syncEngine:(id)a3 didUpdateMetadata:(id)a4
{
  v5 = a4;
  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10002B530;
  v8[3] = &unk_100078E68;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_sync(queue, v8);
}

- (void)syncEngine:(id)a3 failedToDeleteRecordWithID:(id)a4 error:(id)a5
{
  v5 = a4;
  v6 = __biome_log_for_category();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [v5 recordName];
    v8 = [v5 zoneID];
    v9 = [v8 zoneName];
    v10 = 138543618;
    v11 = v7;
    v12 = 2114;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "failedToDeleteRecordWithID: %{public}@, zone:%{public}@", &v10, 0x16u);
  }
}

- (void)syncEngine:(id)a3 failedToSaveRecordZone:(id)a4 error:(id)a5
{
  v7 = a5;
  v8 = [a4 zoneID];
  v9 = [v8 zoneName];

  v10 = __biome_log_for_category();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    v16 = v9;
    v17 = 2114;
    v18 = v7;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "failedToSaveRecordZone:%{public}@ error:%{public}@", buf, 0x16u);
  }

  queue = self->_queue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10002B7D4;
  v13[3] = &unk_100078E68;
  v13[4] = self;
  v14 = v9;
  v12 = v9;
  dispatch_sync(queue, v13);
}

- (void)handleZoneReset:(id)a3
{
  v11 = a3;
  queue = self->_queue;
  if (queue)
  {
    dispatch_assert_queue_V2(queue);
  }

  v5 = [(BMSyncDatabase *)self->_db ckZoneForZoneName:v11];
  v6 = [v5 attemptedRecoveryDate];
  v7 = +[NSDate now];
  v8 = v7;
  if (v6)
  {
    [v7 timeIntervalSinceDate:v6];
    v10 = v9 > 14400.0;
  }

  else
  {
    v10 = 1;
  }

  if (![v5 recoveryState] && v10)
  {
    [(BMSyncDatabase *)self->_db ckZoneSetAttemptedRecoveryDate:v8 state:1 forZoneName:v11];
  }
}

- (void)handleFailedToSaveSyncRecordUnknownItem:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002BA68;
  v7[3] = &unk_100078E68;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

- (void)handleFailedToSaveSyncRecordResaveRecord:(id)a3
{
  v4 = a3;
  v5 = [v4 recordID];
  v6 = [v5 zoneID];

  if (v6)
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10002BDE0;
    block[3] = &unk_100078E68;
    block[4] = self;
    v8 = v4;
    v24 = v8;
    dispatch_sync(queue, block);
    v9 = [[CKRecordZone alloc] initWithZoneID:v6];
    v22 = [[CKSyncEnginePendingZoneSave alloc] initWithZone:v9];
    v26 = v22;
    v10 = [NSArray arrayWithObjects:&v26 count:1];
    v11 = [(CKSyncEngine *)self->_ckSyncEngine state];
    [v11 addPendingDatabaseChanges:v10];

    v12 = [v9 zoneID];
    v13 = [(BMCloudKitSyncEngine *)self newZoneVersionRecordIDForZone:v12];

    v14 = [[CKSyncEnginePendingRecordZoneChange alloc] initWithRecordID:v13 type:0];
    v15 = [CKSyncEnginePendingRecordZoneChange alloc];
    v16 = [v8 recordID];
    v17 = [v15 initWithRecordID:v16 type:0];

    v25[0] = v14;
    v25[1] = v17;
    v18 = [NSArray arrayWithObjects:v25 count:2];
    v19 = [(CKSyncEngine *)self->_ckSyncEngine state];
    [v19 addPendingRecordZoneChanges:v18];

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
      sub_10004B280(v4);
    }
  }
}

- (void)handleFailedToSaveSyncRecordServerRecordChanged:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 recordID];
  v9 = [v8 zoneID];

  queue = self->_queue;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10002BF38;
  v14[3] = &unk_1000796C8;
  v15 = v7;
  v16 = self;
  v17 = v9;
  v18 = v6;
  v11 = v6;
  v12 = v9;
  v13 = v7;
  dispatch_sync(queue, v14);
}

- (void)handleFailedToSaveSyncRecordServerManateeDecryptionError:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 recordID];
  v9 = [v8 zoneID];

  v10 = __biome_log_for_category();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543874;
    v16 = v9;
    v17 = 2114;
    v18 = v6;
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
  v14 = v9;
  v12 = v9;
  dispatch_sync(queue, v13);
}

- (void)handleFailedToSaveRecordSyncRecord:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 code];
  if (v8 <= 25)
  {
    if (v8 == 11)
    {
      [(BMCloudKitSyncEngine *)self handleFailedToSaveSyncRecordUnknownItem:v6];
      goto LABEL_14;
    }

    if (v8 == 14)
    {
      [(BMCloudKitSyncEngine *)self handleFailedToSaveSyncRecordServerRecordChanged:v6 error:v7];
      goto LABEL_14;
    }
  }

  else
  {
    if (v8 == 26 || v8 == 28)
    {
      [(BMCloudKitSyncEngine *)self handleFailedToSaveSyncRecordResaveRecord:v6];
      goto LABEL_14;
    }

    if (v8 == 112)
    {
      [(BMCloudKitSyncEngine *)self handleFailedToSaveSyncRecordServerManateeDecryptionError:v6 error:v7];
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

- (void)handleFailedToSaveRecordZoneVersion:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_10002C878;
  v14 = &unk_100078E68;
  v15 = self;
  v9 = v6;
  v16 = v9;
  dispatch_sync(queue, &v11);
  if (-[BMCloudKitSyncEngine resaveRecordOnError:](self, "resaveRecordOnError:", [v7 code]))
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

- (void)handleFailedToSaveRecordHighestDeletedLocation:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_10002C9FC;
  v14 = &unk_100078E68;
  v15 = self;
  v9 = v6;
  v16 = v9;
  dispatch_sync(queue, &v11);
  if (-[BMCloudKitSyncEngine resaveRecordOnError:](self, "resaveRecordOnError:", [v7 code]))
  {
    [(BMCloudKitSyncEngine *)self resaveRecord:v9];
  }

  else if ([v7 code] == 14)
  {
    [(BMCloudKitSyncEngine *)self handleServerRecordChangedForHighestDeletedLocationError:v7];
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

- (void)resaveRecord:(id)a3
{
  v4 = a3;
  v5 = [v4 recordID];
  v6 = [v5 zoneID];

  if (v6)
  {
    v7 = [[CKRecordZone alloc] initWithZoneID:v6];
    v8 = [[CKSyncEnginePendingZoneSave alloc] initWithZone:v7];
    v18 = v8;
    v9 = [NSArray arrayWithObjects:&v18 count:1];
    v10 = [(CKSyncEngine *)self->_ckSyncEngine state];
    [v10 addPendingDatabaseChanges:v9];

    v11 = [CKSyncEnginePendingRecordZoneChange alloc];
    v12 = [v4 recordID];
    v13 = [v11 initWithRecordID:v12 type:0];

    v17 = v13;
    v14 = [NSArray arrayWithObjects:&v17 count:1];
    v15 = [(CKSyncEngine *)self->_ckSyncEngine state];
    [v15 addPendingRecordZoneChanges:v14];

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
      sub_10004B280(v4);
    }
  }
}

- (void)handleServerRecordChangedForHighestDeletedLocationError:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:CKRecordChangedErrorServerRecordKey];

  v7 = [v4 userInfo];

  v8 = [v7 objectForKeyedSubscript:CKRecordChangedErrorClientRecordKey];

  v9 = [v6 objectForKeyedSubscript:@"day"];
  v10 = [v8 objectForKeyedSubscript:@"day"];
  v11 = [v10 longValue];
  if (v11 > [v9 longValue])
  {
    v12 = [CKSyncEnginePendingRecordZoneChange alloc];
    v13 = [v6 recordID];
    v14 = [v12 initWithRecordID:v13 type:0];

    v17 = v14;
    v15 = [NSArray arrayWithObjects:&v17 count:1];
    v16 = [(CKSyncEngine *)self->_ckSyncEngine state];
    [v16 addPendingRecordZoneChanges:v15];
  }
}

- (void)syncEngine:(id)a3 failedToSaveRecord:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 recordID];
  v12 = [v11 zoneID];

  v13 = __biome_log_for_category();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = [v12 zoneName];
    v15 = [v9 recordID];
    v16 = [v15 recordName];
    v19 = 138543874;
    v20 = v14;
    v21 = 2114;
    v22 = v16;
    v23 = 2114;
    v24 = v10;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "failedToSaveRecord: %{public}@, %{public}@ %{public}@", &v19, 0x20u);
  }

  v17 = [v9 recordType];
  v18 = sub_100027710(v17);

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      [(BMCloudKitSyncEngine *)self handleFailedToSaveRecordZoneVersion:v9 error:v10];
    }

    else
    {
      [(BMCloudKitSyncEngine *)self handleFailedToSaveRecordHighestDeletedLocation:v9 error:v10];
    }
  }

  else if (v18)
  {
    [(BMCloudKitSyncEngine *)self handleFailedToSaveRecordSyncRecord:v9 error:v10];
  }
}

- (id)handleHighestDeletedLocationRecordToSaveForRecordID:(id)a3
{
  v4 = a3;
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
  v10 = v4;
  v11 = self;
  v12 = &v13;
  v6 = v4;
  dispatch_sync(queue, block);
  v7 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v7;
}

- (id)handleZoneVersionRecordToSaveForRecordID:(id)a3
{
  v4 = a3;
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
  v10 = v4;
  v11 = &v12;
  v6 = v4;
  dispatch_sync(queue, v9);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)handleSyncRecordRecordToSaveForRecordID:(id)a3
{
  v4 = a3;
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
  v5 = [v4 recordName];
  v6 = [v4 zoneID];
  v7 = [v6 zoneName];

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002D720;
  block[3] = &unk_100079768;
  block[4] = self;
  v15 = v7;
  v16 = v5;
  v17 = v4;
  v18 = &v25;
  v19 = v23;
  v20 = v21;
  v9 = v4;
  v10 = v5;
  v11 = v7;
  dispatch_sync(queue, block);
  v12 = v26[5];

  _Block_object_dispose(v21, 8);
  _Block_object_dispose(v23, 8);

  _Block_object_dispose(&v25, 8);

  return v12;
}

- (id)syncEngine:(id)a3 recordToSaveForRecordID:(id)a4
{
  v5 = a4;
  v6 = __biome_log_for_category();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [v5 recordName];
    v15 = 138543362;
    v16 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "recordToSaveForRecordID %{public}@", &v15, 0xCu);
  }

  v8 = [v5 recordName];
  v9 = [v8 isEqualToString:@"zoneVersion"];

  if (v9)
  {
    v10 = [(BMCloudKitSyncEngine *)self handleZoneVersionRecordToSaveForRecordID:v5];
  }

  else
  {
    v11 = [v5 recordName];
    v12 = [v11 containsString:{@", "}];

    if (v12)
    {
      [(BMCloudKitSyncEngine *)self handleSyncRecordRecordToSaveForRecordID:v5];
    }

    else
    {
      [(BMCloudKitSyncEngine *)self handleHighestDeletedLocationRecordToSaveForRecordID:v5];
    }
    v10 = ;
  }

  v13 = v10;

  return v13;
}

- (void)syncEngine:(id)a3 failedToDeleteRecordZoneWithID:(id)a4 error:(id)a5
{
  v7 = a5;
  v8 = [a4 zoneName];
  v9 = __biome_log_for_category();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    v15 = v8;
    v16 = 2114;
    v17 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "failedToDeleteRecordZoneWithID: %{public}@ error: %{public}@", buf, 0x16u);
  }

  queue = self->_queue;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10002E0D4;
  v12[3] = &unk_100078E68;
  v12[4] = self;
  v13 = v8;
  v11 = v8;
  dispatch_sync(queue, v12);
}

- (void)syncEngine:(id)a3 didDeleteRecordZoneWithID:(id)a4
{
  v5 = a4;
  v6 = [v5 zoneName];
  v7 = __biome_log_for_category();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "didDeleteRecordZoneWithID: %{public}@", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002E290;
  block[3] = &unk_100079790;
  block[4] = self;
  v12 = v6;
  v13 = v5;
  v9 = v5;
  v10 = v6;
  dispatch_sync(queue, block);
}

- (void)syncEngine:(id)a3 zoneWithIDWasDeleted:(id)a4
{
  v5 = a4;
  v6 = __biome_log_for_category();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [v5 zoneName];
    *buf = 138543362;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "zoneWithIDWasDeleted: %{public}@", buf, 0xCu);
  }

  queue = self->_queue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10002E798;
  v10[3] = &unk_100078E68;
  v10[4] = self;
  v11 = v5;
  v9 = v5;
  dispatch_sync(queue, v10);
}

- (void)handleRecordWithIDDeletedSyncRecord:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10002E8BC;
  v7[3] = &unk_100078E68;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_sync(queue, v7);
}

- (void)syncEngine:(id)a3 recordWithIDWasDeleted:(id)a4 recordType:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = __biome_log_for_category();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = [v7 recordName];
    v11 = 138543618;
    v12 = v10;
    v13 = 2114;
    v14 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "recordWithIDWasDeleted: %{public}@, type=%{public}@", &v11, 0x16u);
  }

  if (sub_100027710(v8) == 1)
  {
    [(BMCloudKitSyncEngine *)self handleRecordWithIDDeletedSyncRecord:v7];
  }
}

- (void)syncEngineWillBeginFetchingChanges:(id)a3
{
  v3 = __biome_log_for_category();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "syncEngineWillBeginFetchingChanges", v4, 2u);
  }
}

- (void)syncEngineDidEndFetchingChanges:(id)a3
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

- (void)syncEngineWillBeginModifyingPendingChanges:(id)a3
{
  v3 = __biome_log_for_category();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "syncEngineWillBeginModifyingPendingChanges", v4, 2u);
  }
}

- (void)syncEngineDidEndModifyingPendingChanges:(id)a3
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

- (void)handleStateUpdate:(id)a3
{
  v12 = 0;
  v4 = [NSKeyedArchiver archivedDataWithRootObject:a3 requiringSecureCoding:1 error:&v12];
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

- (void)handleFetchedDatabaseChanges:(id)a3
{
  v4 = [a3 fetchedDatabaseChangesEvent];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v5 = [v4 modifications];
  v6 = [v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v25 + 1) + 8 * v9);
        v11 = [(BMCloudKitSyncEngine *)self ckSyncEngine];
        v12 = [v10 zoneID];
        [(BMCloudKitSyncEngine *)self syncEngine:v11 zoneWithIDChanged:v12];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v7);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v13 = [v4 deletions];
  v14 = [v13 countByEnumeratingWithState:&v21 objects:v29 count:16];
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
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v21 + 1) + 8 * v17);
        v19 = [(BMCloudKitSyncEngine *)self ckSyncEngine];
        v20 = [v18 zoneID];
        [(BMCloudKitSyncEngine *)self syncEngine:v19 zoneWithIDWasDeleted:v20];

        v17 = v17 + 1;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v15);
  }
}

- (void)handleFetchedRecordZoneChanges:(id)a3
{
  v4 = [a3 fetchedRecordZoneChangesEvent];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v5 = [v4 modifications];
  v6 = [v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v25 + 1) + 8 * v9);
        v11 = [(BMCloudKitSyncEngine *)self ckSyncEngine];
        [(BMCloudKitSyncEngine *)self syncEngine:v11 didFetchRecord:v10];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v7);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v12 = [v4 deletions];
  v13 = [v12 countByEnumeratingWithState:&v21 objects:v29 count:16];
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
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v21 + 1) + 8 * v16);
        v18 = [(BMCloudKitSyncEngine *)self ckSyncEngine];
        v19 = [v17 recordID];
        v20 = [v17 recordType];
        [(BMCloudKitSyncEngine *)self syncEngine:v18 recordWithIDWasDeleted:v19 recordType:v20];

        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v14);
  }
}

- (void)handleSentDatabaseChanges:(id)a3
{
  v4 = [a3 sentDatabaseChangesEvent];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v5 = [v4 savedZones];
  v6 = [v5 countByEnumeratingWithState:&v38 objects:v44 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v38 + 1) + 8 * v9);
        v11 = [(BMCloudKitSyncEngine *)self ckSyncEngine];
        [(BMCloudKitSyncEngine *)self syncEngine:v11 didSaveRecordZone:v10];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v38 objects:v44 count:16];
    }

    while (v7);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v12 = [v4 failedZoneSaves];
  v13 = [v12 countByEnumeratingWithState:&v34 objects:v43 count:16];
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
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v34 + 1) + 8 * v16);
        v18 = [(BMCloudKitSyncEngine *)self ckSyncEngine];
        v19 = [v17 recordZone];
        v20 = [v17 error];
        [(BMCloudKitSyncEngine *)self syncEngine:v18 failedToSaveRecordZone:v19 error:v20];

        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v34 objects:v43 count:16];
    }

    while (v14);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v21 = [v4 deletedZoneIDs];
  v22 = [v21 countByEnumeratingWithState:&v30 objects:v42 count:16];
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
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v30 + 1) + 8 * v25);
        v27 = [(BMCloudKitSyncEngine *)self ckSyncEngine];
        [(BMCloudKitSyncEngine *)self syncEngine:v27 didDeleteRecordZoneWithID:v26];

        v25 = v25 + 1;
      }

      while (v23 != v25);
      v23 = [v21 countByEnumeratingWithState:&v30 objects:v42 count:16];
    }

    while (v23);
  }

  v28 = [v4 failedZoneDeletes];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_10003064C;
  v29[3] = &unk_100079830;
  v29[4] = self;
  [v28 enumerateKeysAndObjectsUsingBlock:v29];
}

- (void)handleSentRecordZoneChanges:(id)a3
{
  v4 = [a3 sentRecordZoneChangesEvent];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v5 = [v4 savedRecords];
  v6 = [v5 countByEnumeratingWithState:&v49 objects:v56 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v49 + 1) + 8 * i);
        v11 = [(BMCloudKitSyncEngine *)self ckSyncEngine];
        [(BMCloudKitSyncEngine *)self syncEngine:v11 didSaveRecord:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v49 objects:v56 count:16];
    }

    while (v7);
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v12 = [v4 failedRecordSaves];
  v13 = [v12 countByEnumeratingWithState:&v45 objects:v55 count:16];
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
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v45 + 1) + 8 * j);
        v18 = [v17 error];
        v19 = [v17 record];
        v20 = [(BMCloudKitSyncEngine *)self ckSyncEngine];
        [(BMCloudKitSyncEngine *)self syncEngine:v20 failedToSaveRecord:v19 error:v18];
      }

      v14 = [v12 countByEnumeratingWithState:&v45 objects:v55 count:16];
    }

    while (v14);
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v21 = [v4 deletedRecordIDs];
  v22 = [v21 countByEnumeratingWithState:&v41 objects:v54 count:16];
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
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v41 + 1) + 8 * k);
        v27 = [(BMCloudKitSyncEngine *)self ckSyncEngine];
        [(BMCloudKitSyncEngine *)self syncEngine:v27 didDeleteRecordWithID:v26];
      }

      v23 = [v21 countByEnumeratingWithState:&v41 objects:v54 count:16];
    }

    while (v23);
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v28 = [v4 failedRecordDeletes];
  v29 = [v28 countByEnumeratingWithState:&v37 objects:v53 count:16];
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
          objc_enumerationMutation(v28);
        }

        v33 = *(*(&v37 + 1) + 8 * m);
        v34 = [v4 failedRecordDeletes];
        v35 = [v34 objectForKeyedSubscript:v33];

        v36 = [(BMCloudKitSyncEngine *)self ckSyncEngine];
        [(BMCloudKitSyncEngine *)self syncEngine:v36 failedToDeleteRecordWithID:v33 error:v35];
      }

      v30 = [v28 countByEnumeratingWithState:&v37 objects:v53 count:16];
    }

    while (v30);
  }
}

- (void)handleDidFetchRecordZoneChanges:(id)a3
{
  v4 = [a3 didFetchRecordZoneChangesEvent];
  v5 = [v4 error];

  if (v5)
  {
    v6 = [(BMCloudKitSyncEngine *)self ckSyncEngine];
    v7 = [v4 zoneID];
    v8 = [v4 error];
    [(BMCloudKitSyncEngine *)self syncEngine:v6 failedToFetchChangesForRecordZoneID:v7 error:v8];
  }

  v9 = __biome_log_for_category();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = [v4 zoneID];
    v11 = 138543362;
    v12 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "CKSyncEngineEventTypeDidFetchChanges for stream: %{public}@", &v11, 0xCu);
  }
}

- (void)syncEngine:(id)a3 handleEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = [v7 type];
  if (v9 > 5)
  {
    if (v9 > 8)
    {
      switch(v9)
      {
        case 9:
          v19 = __biome_log_for_category();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            *v24 = 0;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "CKSyncEngineEventTypeDidFetchChanges", v24, 2u);
          }

          v14 = [(BMCloudKitSyncEngine *)self ckSyncEngine];
          [(BMCloudKitSyncEngine *)self syncEngineDidEndFetchingChanges:v14];
          break;
        case 10:
          v23 = __biome_log_for_category();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
          {
            *v24 = 0;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "CKSyncEngineEventTypeWillSendChanges", v24, 2u);
          }

          v14 = [(BMCloudKitSyncEngine *)self ckSyncEngine];
          [(BMCloudKitSyncEngine *)self syncEngineWillBeginModifyingPendingChanges:v14];
          break;
        case 11:
          v13 = __biome_log_for_category();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            *v24 = 0;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "CKSyncEngineEventTypeDidSendChanges", v24, 2u);
          }

          v14 = [(BMCloudKitSyncEngine *)self ckSyncEngine];
          [(BMCloudKitSyncEngine *)self syncEngineDidEndModifyingPendingChanges:v14];
          break;
        default:
          goto LABEL_51;
      }

      goto LABEL_50;
    }

    if (v9 == 6)
    {
      v17 = __biome_log_for_category();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *v24 = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "CKSyncEngineEventTypeWillFetchChanges", v24, 2u);
      }

      v14 = [(BMCloudKitSyncEngine *)self ckSyncEngine];
      [(BMCloudKitSyncEngine *)self syncEngineWillBeginFetchingChanges:v14];
      goto LABEL_50;
    }

    if (v9 == 7)
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

    [(BMCloudKitSyncEngine *)self handleDidFetchRecordZoneChanges:v7];
  }

  else
  {
    if (v9 <= 2)
    {
      if (v9)
      {
        if (v9 != 1)
        {
          if (v9 == 2)
          {
            v10 = __biome_log_for_category();
            if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
            {
              *v24 = 0;
              _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "CKSyncEngineEventTypeFetchedDatabaseChanges", v24, 2u);
            }

            [(BMCloudKitSyncEngine *)self handleFetchedDatabaseChanges:v7];
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

      v14 = [v7 stateUpdateEvent];
      v16 = [v14 stateSerialization];
      [(BMCloudKitSyncEngine *)self handleStateUpdate:v16];

LABEL_50:
      goto LABEL_51;
    }

    if (v9 == 3)
    {
      v18 = __biome_log_for_category();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *v24 = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "CKSyncEngineEventTypeFetchedRecordZoneChanges", v24, 2u);
      }

      [(BMCloudKitSyncEngine *)self handleFetchedRecordZoneChanges:v7];
    }

    else if (v9 == 4)
    {
      v22 = __biome_log_for_category();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *v24 = 0;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "CKSyncEngineEventTypeSentDatabaseChanges", v24, 2u);
      }

      [(BMCloudKitSyncEngine *)self handleSentDatabaseChanges:v7];
    }

    else
    {
      v12 = __biome_log_for_category();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *v24 = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "CKSyncEngineEventTypeSentRecordZoneChanges", v24, 2u);
      }

      [(BMCloudKitSyncEngine *)self handleSentRecordZoneChanges:v7];
    }
  }

LABEL_51:
  objc_autoreleasePoolPop(v8);
}

- (id)syncEngine:(id)a3 nextRecordZoneChangeBatchForContext:(id)a4
{
  v6 = a3;
  v7 = [a4 options];
  v8 = [v7 scope];

  v9 = objc_alloc_init(NSMutableArray);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v10 = [v6 state];
  v11 = [v10 pendingRecordZoneChanges];

  v12 = [v11 countByEnumeratingWithState:&v28 objects:v32 count:16];
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
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v28 + 1) + 8 * i);
        if ([v8 containsPendingRecordZoneChange:v16])
        {
          [v9 addObject:v16];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v28 objects:v32 count:16];
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
  v26 = v6;
  v27 = v17;
  v19 = v17;
  v20 = v6;
  v21 = [v18 initWithPendingChanges:v9 recordProvider:v25];
  v22 = [(BMCloudKitSyncEngine *)self ckSyncEngine];
  v23 = [v22 state];
  [v23 removePendingRecordZoneChanges:v19];

  return v21;
}

- (BOOL)syncEngine:(id)a3 shouldFetchChangesForZoneID:(id)a4
{
  v5 = a4;
  v6 = [(BMCloudKitSyncEngine *)self streamConfigurationForZoneID:v5];
  v7 = sub_10004A694(v6);
  v8 = __biome_log_for_category();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [v5 zoneName];
    v10 = [v6 streamIdentifier];
    v11 = v10;
    v12 = @"NO";
    v14 = 138543874;
    v15 = v9;
    v16 = 2114;
    if (v7)
    {
      v12 = @"YES";
    }

    v17 = v10;
    v18 = 2114;
    v19 = v12;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "shouldFetchChangesForZoneID: %{public}@ (%{public}@) returning: %{public}@", &v14, 0x20u);
  }

  return v7;
}

@end