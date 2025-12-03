@interface BMStreamCKRecordCRDT
- (BMStreamCKRecordCRDT)initWithStreamCRDT:(id)t locationRow:(id)row database:(id)database queue:(id)queue maxDeltaSize:(int64_t)size sessionContext:(id)context;
- (BOOL)mergeDeltas:(id)deltas error:(id *)error;
- (id)mergeableDeltasForMetadata:(id)metadata error:(id *)error;
- (id)stateVector;
@end

@implementation BMStreamCKRecordCRDT

- (BMStreamCKRecordCRDT)initWithStreamCRDT:(id)t locationRow:(id)row database:(id)database queue:(id)queue maxDeltaSize:(int64_t)size sessionContext:(id)context
{
  tCopy = t;
  rowCopy = row;
  databaseCopy = database;
  queueCopy = queue;
  contextCopy = context;
  v23.receiver = self;
  v23.super_class = BMStreamCKRecordCRDT;
  v18 = [(BMStreamCKRecordCRDT *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_streamCRDT, t);
    objc_storeStrong(&v19->_locationRow, row);
    objc_storeStrong(&v19->_db, database);
    objc_storeStrong(&v19->_queue, queue);
    v19->_maxDeltaSize = size;
    objc_storeStrong(&v19->_sessionContext, context);
  }

  return v19;
}

- (id)stateVector
{
  dispatch_assert_queue_V2(self->_queue);
  if (self->_locationRow)
  {
    db = self->_db;
    locationRow = [(BMStreamCKRecordCRDT *)self locationRow];
    v5 = [(BMSyncDatabase *)db stateVectorForLocationRow:locationRow];
  }

  else
  {
    v6 = __biome_log_for_category();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100047484(v6);
    }

    v5 = objc_opt_new();
  }

  return v5;
}

- (BOOL)mergeDeltas:(id)deltas error:(id *)error
{
  deltasCopy = deltas;
  dispatch_assert_queue_V2(self->_queue);
  v6 = objc_alloc_init(NSMutableArray);
  v7 = objc_alloc_init(NSMutableArray);
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v8 = deltasCopy;
  v51 = [v8 countByEnumeratingWithState:&v55 objects:v63 count:16];
  v9 = 0;
  if (!v51)
  {
    goto LABEL_25;
  }

  v50 = *v56;
  v48 = v6;
  v49 = v8;
  v47 = v7;
  do
  {
    v10 = 0;
    do
    {
      if (*v56 != v50)
      {
        objc_enumerationMutation(v8);
      }

      v11 = *(*(&v55 + 1) + 8 * v10);
      v12 = objc_autoreleasePoolPush();
      v13 = __biome_log_for_category();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v62 = v11;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "mergeDeltas delta: %@", buf, 0xCu);
      }

      v14 = [CKAtomBatch alloc];
      v54 = 0;
      v15 = [v14 initWithMergeableDelta:v11 error:&v54];
      v16 = v54;
      if (v15)
      {
        v17 = v16 == 0;
      }

      else
      {
        v17 = 0;
      }

      if (!v17)
      {
        v9 = v16;
        mergeableValueID = __biome_log_for_category();
        v52 = v12;
        if (os_log_type_enabled(mergeableValueID, OS_LOG_TYPE_FAULT))
        {
          *buf = 138412290;
          v62 = v9;
          _os_log_fault_impl(&_mh_execute_header, mergeableValueID, OS_LOG_TYPE_FAULT, "Failed to initWithMergeableDelta with error %@", buf, 0xCu);
        }

        goto LABEL_18;
      }

      v53 = 0;
      mergeableValueID = [v15 dataWithError:&v53];
      v9 = v53;
      if (v9)
      {
        v33 = __biome_log_for_category();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          sub_1000474C8(v9, v33, v34, v35, v36, v37, v38, v39);
        }

        goto LABEL_31;
      }

      location = [(BMSyncCRDTLocationRow *)self->_locationRow location];

      if (location)
      {
        v52 = v12;
        vectors = [v15 vectors];
        location2 = [(BMSyncCRDTLocationRow *)self->_locationRow location];
        streamConfiguration = [(BMStreamCKCRDT *)self->_streamCRDT streamConfiguration];
        storeConfig = [streamConfiguration storeConfig];
        v24 = +[BMDistributedSyncManager writeAtomBatchData:atomBatchVectors:forLocation:protectionClass:sessionContext:db:](BMDistributedSyncManager, "writeAtomBatchData:atomBatchVectors:forLocation:protectionClass:sessionContext:db:", mergeableValueID, vectors, location2, [storeConfig protectionClass], self->_sessionContext, self->_db);

        if (v24)
        {
          v7 = v47;
          [v47 addObject:v24];
          v6 = v48;
          [v48 addObject:v15];

          v8 = v49;
          v9 = 0;
LABEL_18:

          v25 = [NSString alloc];
          mergeableValueID = [v15 mergeableValueID];
          identifier = [mergeableValueID identifier];
          v27 = [v25 initWithData:identifier encoding:4];
          [(BMSyncSessionContext *)self->_sessionContext setOriginatingSiteIdentifier:v27];

          v12 = v52;
          goto LABEL_19;
        }

        v33 = __biome_log_for_category();
        v6 = v48;
        v8 = v49;
        v7 = v47;
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          sub_100047534(&self->_locationRow, v33, v40, v41, v42, v43, v44, v45);
        }

        v12 = v52;
LABEL_31:

        objc_autoreleasePoolPop(v12);
        v32 = 0;
        location3 = v8;
        goto LABEL_32;
      }

      identifier = __biome_log_for_category();
      if (os_log_type_enabled(identifier, OS_LOG_TYPE_FAULT))
      {
        sub_1000475A4(v59, self, &v60, identifier);
      }

      v9 = 0;
LABEL_19:

      objc_autoreleasePoolPop(v12);
      v10 = v10 + 1;
    }

    while (v51 != v10);
    v28 = [v8 countByEnumeratingWithState:&v55 objects:v63 count:16];
    v51 = v28;
  }

  while (v28);
LABEL_25:

  sessionContext = self->_sessionContext;
  streamCRDT = self->_streamCRDT;
  location3 = [(BMSyncCRDTLocationRow *)self->_locationRow location];
  [(BMStreamCKCRDT *)streamCRDT mergeAtomBatches:v6 atomBatchFilenames:v7 sessionContext:sessionContext forLocation:location3];
  v32 = 1;
LABEL_32:

  return v32;
}

- (id)mergeableDeltasForMetadata:(id)metadata error:(id *)error
{
  metadataCopy = metadata;
  dispatch_assert_queue_V2(self->_queue);
  location = [(BMSyncCRDTLocationRow *)self->_locationRow location];
  ckMergeableValueID = [location ckMergeableValueID];

  v69 = 0;
  v9 = [[CKAtomBatch alloc] initWriterWithMergeableValueID:ckMergeableValueID metadata:metadataCopy formatVersion:3 error:&v69];
  v10 = v69;
  if (v10)
  {
    v11 = v10;
    v12 = __biome_log_for_category();
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v74 = 16;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000040F0;
    block[3] = &unk_100078AD8;
    block[4] = buf;
    if (qword_10008BCC8 != -1)
    {
      dispatch_once(&qword_10008BCC8, block);
    }

    v13 = *(*&buf[8] + 24);
    _Block_object_dispose(buf, 8);
    if (!os_log_type_enabled(v12, v13))
    {
      goto LABEL_12;
    }

    *buf = 138412546;
    *&buf[4] = ckMergeableValueID;
    *&buf[12] = 2112;
    *&buf[14] = v11;
    v14 = "BMStreamCKRecordCRDT: unable to init a CKAtomBatch with initWriterWithMergeableValueID:%@ error:%@";
LABEL_11:
    _os_log_impl(&_mh_execute_header, v12, v13, v14, buf, 0x16u);
LABEL_12:

    if (error)
    {
      v18 = v11;
      v19 = 0;
      *error = v11;
    }

    else
    {
      v19 = 0;
    }

    goto LABEL_46;
  }

  streamCRDT = self->_streamCRDT;
  contentsVector = [metadataCopy contentsVector];
  [(BMStreamCKCRDT *)streamCRDT populateAtomBatch:v9 withAtomsInClockVector:contentsVector forLocation:self->_locationRow ckFormatVersion:3 valueVersion:1 chunker:0];

  v67 = 0;
  [v9 finishWritingWithError:&v67];
  v17 = v67;
  if (v17)
  {
    v11 = v17;
    v12 = __biome_log_for_category();
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v74 = 16;
    v66[0] = _NSConcreteStackBlock;
    v66[1] = 3221225472;
    v66[2] = sub_100004104;
    v66[3] = &unk_100078AD8;
    v66[4] = buf;
    if (qword_10008BCD0 != -1)
    {
      dispatch_once(&qword_10008BCD0, v66);
    }

    v13 = *(*&buf[8] + 24);
    _Block_object_dispose(buf, 8);
    if (!os_log_type_enabled(v12, v13))
    {
      goto LABEL_12;
    }

    *buf = 138412546;
    *&buf[4] = ckMergeableValueID;
    *&buf[12] = 2112;
    *&buf[14] = v11;
    v14 = "BMStreamCKRecordCRDT: unable to complete a CKAtomBatch with finishWritingWithError:%@ error:%@";
    goto LABEL_11;
  }

  maxDeltaSize = self->_maxDeltaSize;
  v65 = 0;
  v21 = [v9 splitWithMaximumSize:maxDeltaSize error:&v65];
  v22 = v65;
  if (v22)
  {
    v23 = __biome_log_for_category();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_10004761C(v23, v24, v25, v26, v27, v28, v29, v30);
    }

    if (error)
    {
      v31 = v22;
      v19 = 0;
      *error = v22;
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v54 = v9;
    errorCopy = error;
    v32 = objc_opt_new();
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v55 = v21;
    obj = v21;
    v33 = [obj countByEnumeratingWithState:&v61 objects:v72 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v62;
      while (2)
      {
        for (i = 0; i != v34; i = i + 1)
        {
          v37 = v32;
          if (*v62 != v35)
          {
            objc_enumerationMutation(obj);
          }

          v38 = *(*(&v61 + 1) + 8 * i);
          v59 = 0;
          v60 = 0;
          [v38 size:&v60 error:{&v59, errorCopy}];
          v39 = v59;
          v40 = __biome_log_for_category();
          v41 = v40;
          if (v39)
          {
            if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
            {
              sub_10004768C(v70, &v71, v41);
            }
          }

          else if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
          {
            v42 = [NSNumber numberWithUnsignedInteger:v60];
            *buf = 138412290;
            *&buf[4] = v42;
            _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_INFO, "BMStreamCKRecordCRDT: split into batch of size %@", buf, 0xCu);
          }

          v43 = [CKMergeableDelta alloc];
          v58 = 0;
          v44 = [v43 initWithAtomBatch:v38 error:&v58];
          v45 = v58;
          if (v45)
          {
            v47 = v45;
            v48 = __biome_log_for_category();
            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x2020000000;
            v74 = 16;
            v57[0] = _NSConcreteStackBlock;
            v57[1] = 3221225472;
            v57[2] = sub_100004118;
            v57[3] = &unk_100078AD8;
            v57[4] = buf;
            v49 = v48;
            if (qword_10008BCD8 != -1)
            {
              dispatch_once(&qword_10008BCD8, v57);
            }

            v21 = v55;
            v50 = *(*&buf[8] + 24);
            _Block_object_dispose(buf, 8);
            if (os_log_type_enabled(v49, v50))
            {
              *buf = 138412546;
              *&buf[4] = v38;
              *&buf[12] = 2112;
              *&buf[14] = v47;
              _os_log_impl(&_mh_execute_header, v49, v50, "BMStreamCKRecordCRDT: unable to init a CKMergeableDelta with initWithAtomBatch:%@ error:%@", buf, 0x16u);
            }

            if (errorCopy)
            {
              v51 = v47;
              *errorCopy = v47;
            }

            v19 = 0;
            v22 = 0;
            v32 = v37;
            goto LABEL_44;
          }

          v32 = v37;
          [v37 addObject:v44];
        }

        v34 = [obj countByEnumeratingWithState:&v61 objects:v72 count:16];
        if (v34)
        {
          continue;
        }

        break;
      }
    }

    v46 = __biome_log_for_category();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *&buf[4] = v32;
      _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_INFO, "*** deltas: %@", buf, 0xCu);
    }

    v19 = v32;
    v22 = 0;
    v21 = v55;
LABEL_44:
    v9 = v54;
  }

  v11 = 0;
LABEL_46:

  return v19;
}

@end