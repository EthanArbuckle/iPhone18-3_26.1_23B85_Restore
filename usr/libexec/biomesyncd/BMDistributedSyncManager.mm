@interface BMDistributedSyncManager
+ (id)writeAtomBatchData:(id)a3 atomBatchVectors:(id)a4 forLocation:(id)a5 protectionClass:(unint64_t)a6 sessionContext:(id)a7 db:(id)a8;
- (BMDistributedSyncManager)initWithStreamConfiguration:(id)a3 streamCRDT:(id)a4 database:(id)a5 localSiteIdentifier:(id)a6 changeReporter:(id)a7;
- (id)deletedLocations;
- (unint64_t)handleDeferredDeletedLocationsForStream:(id)a3;
- (void)mergeAtomBatch:(id)a3 deletedLocations:(id)a4 sessionContext:(id)a5;
- (void)updateClockVectorByUnionWithUnseenSiteIdentifiers:(id)a3;
@end

@implementation BMDistributedSyncManager

- (BMDistributedSyncManager)initWithStreamConfiguration:(id)a3 streamCRDT:(id)a4 database:(id)a5 localSiteIdentifier:(id)a6 changeReporter:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v23.receiver = self;
  v23.super_class = BMDistributedSyncManager;
  v18 = [(BMDistributedSyncManager *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_streamConfiguration, a3);
    objc_storeStrong(&v19->_streamCRDT, a4);
    objc_storeStrong(&v19->_db, a5);
    v20 = [v16 copy];
    localSiteIdentifier = v19->_localSiteIdentifier;
    v19->_localSiteIdentifier = v20;

    objc_storeStrong(&v19->_changeReporter, a7);
  }

  return v19;
}

- (void)updateClockVectorByUnionWithUnseenSiteIdentifiers:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v7 = [CKDistributedSiteIdentifier alloc];
  v8 = [(NSString *)self->_localSiteIdentifier dataUsingEncoding:4];
  v9 = [v7 initWithIdentifier:v8];

  v30 = v9;
  [v5 addObject:v9];
  db = self->_db;
  v11 = [(BMStreamConfiguration *)self->_streamConfiguration syncIdentifier];
  v12 = [(BMSyncDatabase *)db CKAtomRowSiteIdentifiersForStreamIdentifier:v11];

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v13 = v12;
  v14 = [v13 countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v36;
    do
    {
      v17 = 0;
      do
      {
        if (*v36 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v35 + 1) + 8 * v17);
        v19 = [CKDistributedSiteIdentifier alloc];
        v20 = [v18 dataUsingEncoding:4];
        v21 = [v19 initWithIdentifier:v20];
        [v5 addObject:v21];

        v17 = v17 + 1;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v15);
  }

  v22 = [v4 allSiteIdentifiers];
  [v6 unionSet:v22];

  [v5 minusSet:v6];
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v23 = v5;
  v24 = [v23 countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v32;
    do
    {
      v27 = 0;
      do
      {
        if (*v32 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v31 + 1) + 8 * v27);
        v29 = sub_100005BD4(0);
        [v4 addClockValuesInIndexSet:v29 forSiteIdentifier:v28];

        v27 = v27 + 1;
      }

      while (v25 != v27);
      v25 = [v23 countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v25);
  }
}

+ (id)writeAtomBatchData:(id)a3 atomBatchVectors:(id)a4 forLocation:(id)a5 protectionClass:(unint64_t)a6 sessionContext:(id)a7 db:(id)a8
{
  v59 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a7;
  v17 = a8;
  v18 = [BMDistributedSyncManager atomFileHandleForLocation:v15 flags:514 protectionClass:a6 fileName:0 suffix:@".ORC"];
  v19 = [v18 attributes];
  v20 = [v19 path];

  if (!v18 || !v20)
  {
    v21 = __biome_log_for_category();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_10004BB5C(v15, v21, v24, v25, v26, v27, v28, v29);
    }

    goto LABEL_13;
  }

  v21 = [v17 insertLocationIfNotExists:v15 withState:2];
  if (([v17 addAtomBatchFileNameToAtomBatchFiles:v20 sessionContext:v16 locationRow:v21] & 1) == 0)
  {
    v30 = __biome_log_for_category();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      sub_10004BBC8(v20, v30, v31, v32, v33, v34, v35, v36);
    }

    v37 = +[BMPaths syncDirectory];
    v23 = [BMFileManager fileManagerWithDirectAccessToDirectory:v37 cachingOptions:0];

    v63 = 0;
    [v23 removeFileAtPath:v20 error:&v63];
    goto LABEL_12;
  }

  v58 = v14;

  v22 = [v18 nsFileHandle];
  v62 = 0;
  [v22 writeData:v59 error:&v62];
  v21 = v62;

  if (v21)
  {
    v23 = __biome_log_for_category();
    v14 = v58;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_10004BC34();
    }

LABEL_12:

LABEL_13:
    v38 = 0;
    goto LABEL_14;
  }

  v14 = v58;
  if (!v58)
  {
    v21 = 0;
    goto LABEL_33;
  }

  v40 = [BMDistributedSyncManager vectorFileNameFromORCFileName:v20];
  v41 = [a1 atomFileHandleForLocation:v15 flags:514 protectionClass:a6 fileName:v40 suffix:0];
  if (!v41)
  {
    v47 = __biome_log_for_category();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      sub_10004BDC0(v15, v47, v48, v49, v50, v51, v52, v53);
    }

    v21 = 0;
    goto LABEL_13;
  }

  v42 = v41;
  v43 = [[CKMergeableDeltaMetadata alloc] initWithVectors:v58];
  v61 = 0;
  v57 = [NSKeyedArchiver archivedDataWithRootObject:v43 requiringSecureCoding:1 error:&v61];
  v44 = v61;
  v21 = v44;
  v56 = v40;
  if (!v43 || v44)
  {
    v55 = v43;
    v46 = __biome_log_for_category();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      sub_10004BD54();
    }

    goto LABEL_31;
  }

  v45 = [v42 nsFileHandle];
  v60 = 0;
  [v45 writeData:v57 error:&v60];
  v21 = v60;

  if (v21)
  {
    v55 = v43;
    v46 = __biome_log_for_category();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      sub_10004BCA0(v42, v21, v46);
    }

    v14 = v58;
LABEL_31:

    v54 = 0;
    v43 = v55;
    goto LABEL_32;
  }

  v54 = 1;
  v14 = v58;
LABEL_32:

  if (!v54)
  {
    goto LABEL_13;
  }

LABEL_33:
  v38 = v20;
LABEL_14:

  return v38;
}

- (void)mergeAtomBatch:(id)a3 deletedLocations:(id)a4 sessionContext:(id)a5
{
  v8 = a3;
  v9 = a4;
  v55 = a5;
  v10 = __biome_log_for_category();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    *&buf[4] = [v8 count];
    *&buf[12] = 2112;
    *&buf[14] = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "mergeAtomBatches: %lu deletedLocations: %@", buf, 0x16u);
  }

  v57 = v8;

  v11 = [(BMStreamConfiguration *)self->_streamConfiguration storeConfig];
  v12 = [v11 protectionClass];

  v13 = self;
  v14 = [(BMStreamConfiguration *)self->_streamConfiguration storeConfig];
  v54 = [v14 currentDevice];

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  obj = v9;
  v15 = [obj countByEnumeratingWithState:&v67 objects:v78 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v68;
    v18 = 1;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v68 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v67 + 1) + 8 * i);
        v21 = objc_autoreleasePoolPush();
        if ((v18 & 1) != 0 && [v54 canOpenFilesForProtectionClass:v12])
        {
          [(BMStreamCKCRDT *)v13->_streamCRDT handleDeletedLocation:v20 deleteCKRecord:0];
          changeReporter = v13->_changeReporter;
          v23 = [v20 streamName];
          v24 = [v20 siteIdentifier];
          [(BMSyncChangeReporter *)changeReporter streamUpdatedForStreamName:v23 deviceIdentifier:v24 error:0];
          v18 = 1;
        }

        else
        {
          v23 = [[BMSyncCRDTLocationRow alloc] initWithLocation:v20 state:5];
          if ([(BMSyncDatabase *)v13->_db upsertLocation:v23])
          {
            v18 = 0;
            goto LABEL_17;
          }

          v24 = __biome_log_for_category();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *&buf[4] = v20;
            _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "unable to update deleted location: %@ to BMSyncCRDTLocationStatePendingMergeDelete", buf, 0xCu);
          }

          v18 = 0;
        }

LABEL_17:
        objc_autoreleasePoolPop(v21);
      }

      v16 = [obj countByEnumeratingWithState:&v67 objects:v78 count:16];
    }

    while (v16);
  }

  v25 = __biome_log_for_category();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    v26 = [v57 count];
    v27 = [(BMStreamConfiguration *)v13->_streamConfiguration streamIdentifier];
    *buf = 134218242;
    *&buf[4] = v26;
    *&buf[12] = 2112;
    *&buf[14] = v27;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Merging %lu atom batches into %@", buf, 0x16u);
  }

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v58 = v57;
  v28 = [v58 countByEnumeratingWithState:&v63 objects:v77 count:16];
  v29 = v55;
  if (v28)
  {
    v30 = v28;
    v31 = *v64;
    v52 = v13;
    v53 = *v64;
    do
    {
      v32 = 0;
      v56 = v30;
      do
      {
        if (*v64 != v31)
        {
          objc_enumerationMutation(v58);
        }

        v33 = *(*(&v63 + 1) + 8 * v32);
        context = objc_autoreleasePoolPush();
        v34 = [CKAtomBatch alloc];
        v62 = 0;
        v35 = [v34 initWithData:v33 error:&v62];
        v36 = v62;
        if (v36)
        {
          v37 = 1;
        }

        else
        {
          v37 = v35 == 0;
        }

        if (v37)
        {
          v41 = __biome_log_for_category();
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x2020000000;
          v76 = 16;
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_1000326CC;
          block[3] = &unk_100078AD8;
          block[4] = buf;
          if (qword_10008BD78 != -1)
          {
            dispatch_once(&qword_10008BD78, block);
          }

          v38 = *(*&buf[8] + 24);
          _Block_object_dispose(buf, 8);
          if (os_log_type_enabled(v41, v38))
          {
            *buf = 138412546;
            *&buf[4] = v36;
            *&buf[12] = 2112;
            *&buf[14] = v33;
            _os_log_impl(&_mh_execute_header, v41, v38, "Failed to instantiate CKAtomBatch, %@, %@", buf, 0x16u);
          }
        }

        else
        {
          v39 = [BMStreamCRDTLocation alloc];
          v40 = [v35 mergeableValueID];
          v41 = [(BMStreamCRDTLocation *)v39 initWithCKMergeableValueID:v40];

          if (v41)
          {
            v42 = [v35 vectors];
            v43 = [(BMStreamConfiguration *)v13->_streamConfiguration storeConfig];
            v44 = [v43 protectionClass];
            v45 = [(BMDistributedSyncManager *)v13 db];
            v46 = v44;
            v29 = v55;
            v47 = [BMDistributedSyncManager writeAtomBatchData:v33 atomBatchVectors:v42 forLocation:v41 protectionClass:v46 sessionContext:v55 db:v45];

            v13 = v52;
            if (v47)
            {
              streamCRDT = v52->_streamCRDT;
              v72 = v35;
              v49 = [NSArray arrayWithObjects:&v72 count:1];
              v71 = v47;
              v50 = [NSArray arrayWithObjects:&v71 count:1];
              v51 = streamCRDT;
              v29 = v55;
              [(BMStreamCKCRDT *)v51 mergeAtomBatches:v49 atomBatchFilenames:v50 sessionContext:v55 forLocation:v41];
            }

            v31 = v53;
            v30 = v56;
          }

          else
          {
            v47 = __biome_log_for_category();
            v30 = v56;
            if (os_log_type_enabled(v47, OS_LOG_TYPE_FAULT))
            {
              sub_10004BE2C(v73, v35, &v74, v47);
            }
          }
        }

        objc_autoreleasePoolPop(context);
        v32 = v32 + 1;
      }

      while (v30 != v32);
      v30 = [v58 countByEnumeratingWithState:&v63 objects:v77 count:16];
    }

    while (v30);
  }
}

- (unint64_t)handleDeferredDeletedLocationsForStream:(id)a3
{
  v4 = a3;
  v5 = [(BMStreamConfiguration *)self->_streamConfiguration storeConfig];
  v6 = [v5 protectionClass];

  v7 = [(BMStreamConfiguration *)self->_streamConfiguration storeConfig];
  v8 = [v7 currentDevice];

  [(BMSyncDatabase *)self->_db locationsWithState:5 stream:v4];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = v25 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v10)
  {
    v11 = v10;
    v21 = v4;
    v12 = *v23;
    while (2)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v22 + 1) + 8 * i);
        if (![v8 canOpenFilesForProtectionClass:v6])
        {
          v4 = v21;
          v19 = 2;
          goto LABEL_12;
        }

        v15 = [(BMDistributedSyncManager *)self streamCRDT];
        [v15 handleDeletedLocation:v14 deleteCKRecord:0];

        v16 = [(BMDistributedSyncManager *)self changeReporter];
        v17 = [v14 streamName];
        v18 = [v14 siteIdentifier];
        [v16 streamUpdatedForStreamName:v17 deviceIdentifier:v18 error:0];
      }

      v11 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }

    v19 = 1;
    v4 = v21;
  }

  else
  {
    v19 = 1;
  }

LABEL_12:

  return v19;
}

- (id)deletedLocations
{
  v3 = [(BMStreamConfiguration *)self->_streamConfiguration syncIdentifier];
  v4 = [(BMSyncDatabase *)self->_db highestDeletedLocationsForStream:v3];

  return v4;
}

@end