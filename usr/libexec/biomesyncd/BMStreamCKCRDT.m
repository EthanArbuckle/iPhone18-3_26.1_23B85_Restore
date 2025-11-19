@interface BMStreamCKCRDT
- (BMStreamCKCRDT)initWithStreamConfiguration:(id)a3 locationAssignerPolicy:(id)a4 localSiteIdentifier:(id)a5 database:(id)a6 changeReporter:(id)a7 account:(id)a8;
- (BOOL)deleteAtOrBeforeHighestDeletedLocation:(id)a3;
- (BOOL)deleteLocationsUpToTTLAtTombstone:(id)a3 siteIdentifier:(id)a4;
- (BOOL)deletedExpiredBufferedLocationsForSiteIdentifier:(id)a3;
- (BOOL)handleDeleteAtomRow:(id)a3 usingPruner:(id)a4 outBookmark:(id *)a5 outTombstoneBookmark:(id *)a6;
- (BOOL)mergePhase1StoreAtomBatches:(id)a3 atomBatchFilenames:(id)a4 sessionContext:(id)a5 forLocation:(id)a6;
- (BOOL)mergePhase4RemoveProcessedAtomBatchFilesForStream:(id)a3 outAtomBatchFilesRemoved:(unint64_t *)a4;
- (BOOL)writeAtomValue:(id)a3 fromAtomRow:(id)a4 usingWriter:(id)a5 outBookmark:(id *)a6;
- (id)atomValueFromAtomRow:(id)a3;
- (id)atomValueFromEvent:(id)a3 ofType:(unint64_t)a4 version:(int64_t)a5;
- (id)bookmarkForAtomRow:(id)a3;
- (id)ckAtomTableRecordForEvent:(id)a3 ofType:(unint64_t)a4 atBookmark:(id)a5 previousTableRecord:(id)a6 siteIdentifier:(id)a7;
- (id)newEnumeratorStartingAfterBookmark:(id)a3 reader:(id)a4;
- (id)readerForSiteIdentifier:(id)a3;
- (id)tombstoneEnumeratorFromStoredBookmarkForSiteIdentifier:(id)a3 fromDatastore:(id)a4;
- (void)addAtomWithValueData:(id)a3 toAtomBatch:(id)a4 fromAtomTableRecord:(id)a5 version:(unsigned __int8)a6 atomValueVersion:(int64_t)a7;
- (void)atomsForChangesSinceClockVector:(id)a3 ckFormatVersion:(unsigned __int8)a4 chunker:(id)a5 transportType:(unint64_t)a6 enumerateWithBlock:(id)a7;
- (void)clearMemoryMappedAtomBatch;
- (void)handleDeletedLocation:(id)a3 deleteCKRecord:(BOOL)a4;
- (void)ingestNewChangesForSite:(id)a3 transportType:(unint64_t)a4;
- (void)ingestNewChangesFromAllSitesInVectorClock:(id)a3 transportType:(unint64_t)a4;
- (void)mergeAtomBatches:(id)a3 atomBatchFilenames:(id)a4 sessionContext:(id)a5 forLocation:(id)a6;
- (void)mergeFileBasedPhaseswithSessionContext:(id)a3 forLocation:(id)a4;
- (void)mergePhase2PerformRecoveryForLocation:(id)a3;
- (void)mergePhase3ApplyAtomsToDiskForLocation:(id)a3 sessionContext:(id)a4;
- (void)populateAtomBatch:(id)a3 withAtomsInClockVector:(id)a4 forLocation:(id)a5 ckFormatVersion:(unsigned __int8)a6 valueVersion:(int64_t)a7 chunker:(id)a8;
- (void)setupMemoryMappedAtomBatch:(id)a3 atomBatchFilePath:(id)a4;
@end

@implementation BMStreamCKCRDT

- (BMStreamCKCRDT)initWithStreamConfiguration:(id)a3 locationAssignerPolicy:(id)a4 localSiteIdentifier:(id)a5 database:(id)a6 changeReporter:(id)a7 account:(id)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v38 = a7;
  v36 = a8;
  if (v15)
  {
    if (v18)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_100048418();
    if (v18)
    {
      goto LABEL_3;
    }
  }

  sub_100048490();
LABEL_3:
  v39.receiver = self;
  v39.super_class = BMStreamCKCRDT;
  v19 = [(BMStreamCKCRDT *)&v39 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_streamConfiguration, a3);
    v21 = [v15 syncIdentifier];
    syncIdentifier = v20->_syncIdentifier;
    v20->_syncIdentifier = v21;

    v23 = [v15 streamIdentifier];
    streamIdentifier = v20->_streamIdentifier;
    v20->_streamIdentifier = v23;

    v25 = [v17 copy];
    localSiteIdentifier = v20->_localSiteIdentifier;
    v20->_localSiteIdentifier = v25;

    objc_storeStrong(&v20->_db, a6);
    v27 = [[BMStreamCRDTLocationBuilder alloc] initWithAssignerPolicy:v16];
    locationBuilder = v20->_locationBuilder;
    v20->_locationBuilder = v27;

    v29 = objc_opt_new();
    locationRowCache = v20->_locationRowCache;
    v20->_locationRowCache = v29;

    objc_storeStrong(&v20->_changeReporter, a7);
    objc_storeStrong(&v20->_account, a8);
    v31 = objc_opt_new();
    readerCache = v20->_readerCache;
    v20->_readerCache = v31;

    v33 = objc_opt_new();
    enumeratorCache = v20->_enumeratorCache;
    v20->_enumeratorCache = v33;
  }

  return v20;
}

- (id)bookmarkForAtomRow:(id)a3
{
  v4 = a3;
  v5 = [v4 segmentName];

  if (v5)
  {
    v6 = [BMStoreBookmark alloc];
    streamIdentifier = self->_streamIdentifier;
    v8 = [v4 segmentName];
    v9 = [v6 initWithStream:streamIdentifier segment:v8 iterationStartTime:objc_msgSend(v4 offset:{"segmentOffset"), 1.79769313e308}];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)newEnumeratorStartingAfterBookmark:(id)a3 reader:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5)
  {
    v17 = 0;
    v8 = [v6 newEnumeratorFromBookmark:v5 options:7 error:&v17];
    v9 = v17;
    if (v8)
    {
      v10 = [v8 nextEvent];
    }

    else if (BMStorageErrorGetErrno() == 2)
    {
      v11 = [v5 segmentName];
      [v7 timestampFromSegmentName:v11];
      v13 = v12;
      v14 = +[NSDate distantFuture];
      [v14 timeIntervalSinceReferenceDate];
      v8 = [v7 newEnumeratorFromStartTime:-1 endTime:-1 maxEvents:7 lastN:v13 options:v15];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = [v6 newEnumeratorFromStartTime:7 options:0.0];
  }

  return v8;
}

- (id)ckAtomTableRecordForEvent:(id)a3 ofType:(unint64_t)a4 atBookmark:(id)a5 previousTableRecord:(id)a6 siteIdentifier:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = [(NSString *)self->_localSiteIdentifier dataUsingEncoding:4];
  v17 = [[CKDistributedSiteIdentifier alloc] initWithIdentifier:v16];
  v18 = [(BMSyncDatabase *)self->_db latestDistributedTimestampForSiteIdentifier:self->_localSiteIdentifier inStream:self->_syncIdentifier];
  if (!v18)
  {
    v18 = [[CKDistributedTimestamp alloc] initWithSiteIdentifierObject:v17 clockValue:0];
  }

  v65 = v17;
  v19 = [CKDistributedTimestamp alloc];
  v20 = [v18 clockValue] + 1;
  v21 = v19;
  v22 = v65;
  v23 = [v21 initWithSiteIdentifierObject:v65 clockValue:v20];
  if (a4 != 2)
  {
    if (!a4)
    {
      v59 = v16;
      locationBuilder = self->_locationBuilder;
      syncIdentifier = self->_syncIdentifier;
      [v12 timestamp];
      v26 = [(BMStreamCRDTLocationBuilder *)locationBuilder locationWithStreamName:syncIdentifier siteIdentifier:v15 timestamp:?];
      v27 = [(NSCache *)self->_locationRowCache objectForKey:v26];
      if (!v27)
      {
        v27 = [(BMSyncDatabase *)self->_db insertLocationIfNotExists:v26 withState:2];
        [(NSCache *)self->_locationRowCache setObject:v27 forKey:v26];
      }

      v57 = v15;
      v61 = v12;
      v63 = v23;
      if (v14)
      {
        v28 = [v14 location];
        v29 = [v28 location];
        [v29 ckMergeableValueIDWithFormatVersion:0];
        v31 = v30 = v14;

        v32 = [CKAtomReference alloc];
        v33 = [v30 timestamp];
        v34 = [v32 initWithMergeableValueID:v31 timestamp:v33 type:0];
      }

      else
      {
        v34 = 0;
        v30 = 0;
      }

      v37 = [BMSyncCKAtomRow alloc];
      v38 = [v30 location];
      v39 = [v13 segmentName];
      v36 = -[BMSyncCKAtomRow initWithLocation:timestamp:referenceLocation:causalReference:type:segmentName:segmentOffset:](v37, "initWithLocation:timestamp:referenceLocation:causalReference:type:segmentName:segmentOffset:", v27, v63, v38, v34, 0, v39, [v13 offset]);

      v23 = v63;
      v16 = v59;
      v12 = v61;
      v14 = v30;
      v15 = v57;
LABEL_14:
      v22 = v65;
      goto LABEL_15;
    }

LABEL_11:
    v36 = 0;
    goto LABEL_15;
  }

  v35 = [(BMSyncDatabase *)self->_db ckAtomRowForAtomWithBookmark:v13 type:2 forSiteIdentifier:self->_localSiteIdentifier inStream:self->_syncIdentifier];
  if (v35)
  {

    goto LABEL_11;
  }

  v64 = v23;
  v41 = [(BMSyncDatabase *)self->_db ckAtomRowForAtomWithBookmark:v13 type:0 forSiteIdentifier:v15 inStream:self->_syncIdentifier];
  if (v41)
  {
    v42 = v41;
    v43 = [v41 location];
    v44 = [v43 location];
    v58 = [v44 ckMergeableValueIDWithFormatVersion:0];

    v45 = [CKAtomReference alloc];
    v46 = [v42 timestamp];
    v56 = [v45 initWithMergeableValueID:v58 timestamp:v46 type:0];

    v47 = [BMSyncCKAtomRow alloc];
    v48 = [v42 location];
    [v42 location];
    v49 = v62 = v12;
    [v13 segmentName];
    v60 = v16;
    v51 = v50 = v14;
    v23 = v64;
    v36 = -[BMSyncCKAtomRow initWithLocation:timestamp:referenceLocation:causalReference:type:segmentName:segmentOffset:](v47, "initWithLocation:timestamp:referenceLocation:causalReference:type:segmentName:segmentOffset:", v48, v64, v49, v56, 2, v51, [v13 offset]);

    v14 = v50;
    v16 = v60;

    v12 = v62;
    v22 = v65;
  }

  else
  {
    db = self->_db;
    v53 = [v13 segmentName];
    LODWORD(db) = [(BMSyncDatabase *)db containsCKAtomRowWithSegment:v53 inStream:self->_syncIdentifier];

    if (db)
    {
      v54 = __biome_log_for_category();
      *buf = 0;
      v68 = buf;
      v69 = 0x2020000000;
      v70 = 16;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100012734;
      block[3] = &unk_100078AD8;
      block[4] = buf;
      v23 = v64;
      if (qword_10008BD10 != -1)
      {
        dispatch_once(&qword_10008BD10, block);
      }

      v55 = v68[24];
      _Block_object_dispose(buf, 8);
      if (os_log_type_enabled(v54, v55))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v54, v55, "delete must reference a corresponding append", buf, 2u);
      }

      v36 = 0;
      goto LABEL_14;
    }

    v36 = 0;
    v23 = v64;
  }

LABEL_15:

  return v36;
}

- (id)atomValueFromEvent:(id)a3 ofType:(unint64_t)a4 version:(int64_t)a5
{
  v7 = a3;
  v8 = v7;
  if (!v7)
  {
    goto LABEL_5;
  }

  v9 = [v7 frame];
  if ([v9 state]== 3)
  {
    goto LABEL_3;
  }

  v10 = [v8 frame];
  v11 = [v10 state];

  if (v11 == 2)
  {
    goto LABEL_5;
  }

  v19 = [v8 frame];
  v12 = [v19 data];

  if (!v12)
  {
    v9 = __biome_log_for_category();
    *&buf = 0;
    *(&buf + 1) = &buf;
    v30 = 0x2020000000;
    v31 = 16;
    block = _NSConcreteStackBlock;
    v25 = 3221225472;
    v26 = sub_100012A10;
    v27 = &unk_100078AD8;
    p_buf = &buf;
    if (qword_10008BD18 != -1)
    {
      dispatch_once(&qword_10008BD18, &block);
    }

    v20 = *(*(&buf + 1) + 24);
    _Block_object_dispose(&buf, 8);
    if (os_log_type_enabled(v9, v20))
    {
      v21 = [v8 frame];
      v22 = [v21 state];
      if (v22 >= 6)
      {
        v23 = [NSString stringWithFormat:@"BMFrameStateUnknown(%lu)", v22, block, v25, v26, v27, p_buf, buf];
      }

      else
      {
        v23 = off_100079168[v22];
      }

      LODWORD(buf) = 138543362;
      *(&buf + 4) = v23;
      _os_log_impl(&_mh_execute_header, v9, v20, "Expected no-data frame to be delete or pre-delete, but frame was %{public}@", &buf, 0xCu);
    }

LABEL_3:

LABEL_5:
    v12 = 0;
  }

  v13 = [BMStoreEventAtomValue alloc];
  v14 = [v8 frame];
  v15 = [v14 dataVersion];
  [v8 timestamp];
  v16 = [(BMStoreEventAtomValue *)v13 initWithEventData:v12 dataVersion:v15 dataTimestamp:?];

  v17 = [[BMSyncAtomValue alloc] initWithAtomType:a4 value:v16 version:a5];

  return v17;
}

- (BOOL)handleDeleteAtomRow:(id)a3 usingPruner:(id)a4 outBookmark:(id *)a5 outTombstoneBookmark:(id *)a6
{
  v10 = a4;
  v11 = [a3 causalReference];
  v12 = [v11 timestamp];

  v13 = [(BMSyncDatabase *)self->_db ckAtomRowWithTimestamp:v12 inStream:self->_syncIdentifier];
  if ([v13 type])
  {
    v14 = __biome_log_for_category();
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v30 = 16;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100012D24;
    block[3] = &unk_100078AD8;
    block[4] = buf;
    if (qword_10008BD20 != -1)
    {
      dispatch_once(&qword_10008BD20, block);
    }

    v15 = *(*&buf[8] + 24);
    _Block_object_dispose(buf, 8);
    if (os_log_type_enabled(v14, v15))
    {
      v16 = [v13 type];
      *buf = 138412546;
      *&buf[4] = v13;
      *&buf[12] = 2048;
      *&buf[14] = v16;
      _os_log_impl(&_mh_execute_header, v14, v15, "appendRecord %@ is of unexpected type %lu", buf, 0x16u);
    }
  }

  v17 = [(BMStreamCKCRDT *)self bookmarkForAtomRow:v13];
  v18 = v17;
  if (!v17 || ([v17 segmentName], v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "isEqual:", @"DOA"), v19, v20))
  {
    v21 = __biome_log_for_category();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v12;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "bookmark is nil, presumably because the referenced atom was a placeholder append (dead on arrival) %@", buf, 0xCu);
    }

    if (!a5)
    {
      goto LABEL_19;
    }

    v22 = 0;
LABEL_18:
    *a5 = v22;
LABEL_19:
    v25 = 1;
    goto LABEL_20;
  }

  v23 = __biome_log_for_category();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = v18;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "deleting event at bookmark %@", buf, 0xCu);
  }

  v24 = [v10 deleteEventAtBookmark:v18 outTombstoneBookmark:a6];
  v25 = v24;
  if (a5 && v24)
  {
    v26 = v18;
    v22 = v18;
    goto LABEL_18;
  }

LABEL_20:

  return v25;
}

- (BOOL)writeAtomValue:(id)a3 fromAtomRow:(id)a4 usingWriter:(id)a5 outBookmark:(id *)a6
{
  v9 = a4;
  v10 = a5;
  v11 = [a3 value];
  v12 = [v11 eventData];

  if (v12)
  {
    v13 = [v11 eventData];
    v14 = [v11 dataVersion];
    [v11 dataTimestamp];
    if (Current == 0.0)
    {
      Current = CFAbsoluteTimeGetCurrent();
    }

    v16 = [v10 _writeEventData:v13 dataVersion:v14 timestamp:a6 outBookmark:Current];
  }

  else
  {
    v17 = __biome_log_for_category();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = [v9 timestamp];
      v19 = [v18 bm_description];
      v21 = 138412290;
      v22 = v19;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Dropping atom %@ because it is dead on arrival", &v21, 0xCu);
    }

    v16 = 1;
  }

  return v16;
}

- (void)addAtomWithValueData:(id)a3 toAtomBatch:(id)a4 fromAtomTableRecord:(id)a5 version:(unsigned __int8)a6 atomValueVersion:(int64_t)a7
{
  v8 = a6;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = __biome_log_for_category();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    sub_100048508();
  }

  if (v8 > 2)
  {
    v15 = v19;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v16 = sub_1000134B8;
  }

  else
  {
    v15 = v20;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v16 = sub_1000130CC;
  }

  v15[2] = v16;
  v15[3] = &unk_100078FE0;
  v15[4] = v13;
  v15[5] = v11;
  v15[6] = a7;
  v17 = v11;
  v18 = v13;
  [v12 appendAtomWithBlock:v15];
}

- (id)readerForSiteIdentifier:(id)a3
{
  localSiteIdentifier = self->_localSiteIdentifier;
  v5 = a3;
  if ([v5 isEqual:localSiteIdentifier])
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  streamConfiguration = self->_streamConfiguration;
  v8 = v6;
  v9 = [(BMStreamConfiguration *)streamConfiguration storeConfig];
  v10 = [v9 copyWithRemoteName:v8];

  v11 = [BMStreamDatastore alloc];
  streamIdentifier = self->_streamIdentifier;
  v13 = [(BMStreamConfiguration *)self->_streamConfiguration eventClass];
  v14 = [v11 initWithStream:streamIdentifier permission:0 config:v10 includeTombstones:1 eventDataClass:v13 useCase:BMUseCaseSync];

  return v14;
}

- (void)ingestNewChangesFromAllSitesInVectorClock:(id)a3 transportType:(unint64_t)a4
{
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v16 = a3;
  v6 = [v16 allSiteIdentifiers];
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      v10 = 0;
      do
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * v10);
        v12 = objc_autoreleasePoolPush();
        v13 = [NSString alloc];
        v14 = [v11 identifier];
        v15 = [v13 initWithData:v14 encoding:4];

        [(BMStreamCKCRDT *)self ingestNewChangesForSite:v15 transportType:a4];
        [(NSCache *)self->_locationRowCache removeAllObjects];

        objc_autoreleasePoolPop(v12);
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }
}

- (id)tombstoneEnumeratorFromStoredBookmarkForSiteIdentifier:(id)a3 fromDatastore:(id)a4
{
  v6 = a4;
  v24 = 0;
  v25 = 0;
  v7 = [(BMSyncDatabase *)self->_db getLatestTombstoneBookmarkForSiteIdentifier:a3 inStream:self->_syncIdentifier segmentName:&v24 segmentOffset:&v25];
  v8 = v24;
  if (v7)
  {
    v9 = [BMStoreBookmark alloc];
    v10 = [v9 initWithStream:self->_streamIdentifier segment:v8 iterationStartTime:v25 offset:1.79769313e308];
    v11 = __biome_log_for_category();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v10 segmentName];
      v13 = [v10 offset];
      streamIdentifier = self->_streamIdentifier;
      v15 = [v6 config];
      v16 = [v15 remoteName];
      *buf = 138413058;
      v27 = v12;
      v28 = 2048;
      v29 = v13;
      v30 = 2112;
      v31 = streamIdentifier;
      v32 = 2112;
      v33 = v16;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Starting tombstone enumerator from segment %@ offset %lu for stream %@ site %@", buf, 0x2Au);
    }

    v17 = [v6 newTombstoneEnumeratorFromBookmark:v10];
    v18 = [v17 nextEvent];
  }

  else
  {
    v19 = __biome_log_for_category();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = self->_streamIdentifier;
      v21 = [v6 config];
      v22 = [v21 remoteName];
      *buf = 138412546;
      v27 = v20;
      v28 = 2112;
      v29 = v22;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Starting tombstone enumerator from 0 for stream %@ site %@", buf, 0x16u);
    }

    v17 = [v6 newTombstoneEnumeratorFromStartTime:0.0];
  }

  return v17;
}

- (void)ingestNewChangesForSite:(id)a3 transportType:(unint64_t)a4
{
  v5 = a3;
  v6 = __biome_log_for_category();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "ingestChangesForSite: %@", &buf, 0xCu);
  }

  v7 = [(BMStreamCKCRDT *)self readerForSiteIdentifier:v5];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v57 = 0x3032000000;
  v58 = sub_1000142AC;
  v59 = sub_1000142BC;
  v60 = [(BMSyncDatabase *)self->_db latestCKAtomRowOfType:0 forSiteIdentifier:v5 inStream:self->_syncIdentifier];
  v8 = [(BMStreamCKCRDT *)self bookmarkForAtomRow:*(*(&buf + 1) + 40)];
  v9 = [(BMStreamCKCRDT *)self newEnumeratorStartingAfterBookmark:v8 reader:v7];

  v10 = [[BMSyncDatabaseTransactionBatcher alloc] initWithDatabase:self->_db transcationBatchSize:100];
  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = sub_1000142AC;
  v49 = sub_1000142BC;
  v50 = [v9 nextEvent];
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = sub_1000142AC;
  v43 = sub_1000142BC;
  v44 = 0;
  if (v46[5] && ([v5 isEqualToString:self->_localSiteIdentifier] & 1) == 0)
  {
    v13 = __biome_log_for_category();
    *&v51 = 0;
    *(&v51 + 1) = &v51;
    v52 = 0x2020000000;
    LOBYTE(v53) = 16;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000142C4;
    block[3] = &unk_100078AD8;
    block[4] = &v51;
    if (qword_10008BD28 != -1)
    {
      dispatch_once(&qword_10008BD28, block);
    }

    v14 = *(*(&v51 + 1) + 24);
    _Block_object_dispose(&v51, 8);
    if (os_log_type_enabled(v13, v14))
    {
      LODWORD(v51) = 138412290;
      *(&v51 + 4) = v5;
      _os_log_impl(&_mh_execute_header, v13, v14, "observed new data from non-local site %@", &v51, 0xCu);
    }
  }

  else
  {
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_1000142D8;
    v32[3] = &unk_100079008;
    v35 = &v45;
    p_buf = &buf;
    v32[4] = self;
    v33 = v5;
    v37 = &v39;
    v34 = v9;
    v11 = [(BMSyncDatabaseTransactionBatcher *)v10 executeOperationWithBlock:v32];

    if ((v11 & 1) == 0)
    {
      v12 = __biome_log_for_category();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10004857C();
      }

      goto LABEL_19;
    }
  }

  v15 = v40[5];
  v40[5] = 0;

  v16 = [(BMStreamCKCRDT *)self tombstoneEnumeratorFromStoredBookmarkForSiteIdentifier:v5 fromDatastore:v7];
  *&v51 = 0;
  *(&v51 + 1) = &v51;
  v52 = 0x3032000000;
  v53 = sub_1000142AC;
  v54 = sub_1000142BC;
  v55 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_1000142AC;
  v30 = sub_1000142BC;
  v31 = 0;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10001471C;
  v19[3] = &unk_100079030;
  v12 = v16;
  v20 = v12;
  v21 = self;
  v23 = &v26;
  v24 = &v51;
  v17 = v5;
  v22 = v17;
  v25 = &v39;
  if ([(BMSyncDatabaseTransactionBatcher *)v10 executeOperationWithBlock:v19])
  {
    [(BMSyncDatabase *)self->_db saveLatestTombstoneBookmark:v27[5] forSiteIdentifier:v17 inStream:self->_syncIdentifier];
    [(BMStreamCKCRDT *)self deleteLocationsUpToTTLAtTombstone:*(*(&v51 + 1) + 40) siteIdentifier:v17];
    [(BMStreamCKCRDT *)self deletedExpiredBufferedLocationsForSiteIdentifier:v17];
  }

  else
  {
    v18 = __biome_log_for_category();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_1000485B8();
    }
  }

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v51, 8);

LABEL_19:
  _Block_object_dispose(&v39, 8);

  _Block_object_dispose(&v45, 8);
  _Block_object_dispose(&buf, 8);
}

- (BOOL)deleteLocationsUpToTTLAtTombstone:(id)a3 siteIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = __biome_log_for_category();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138412546;
      v19 = v6;
      v20 = 2112;
      v21 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "deleteLocationsUpToTTLAtTombstone: %@, siteIdentifier: %@", &v18, 0x16u);
    }

    v9 = [BMStoreBookmark alloc];
    streamIdentifier = self->_streamIdentifier;
    v11 = [v6 segmentName];
    v12 = [v9 initWithStream:streamIdentifier segment:v11 iterationStartTime:objc_msgSend(v6 offset:{"offset"), 1.79769313e308}];

    v13 = [v6 segmentName];
    v14 = [(BMStreamConfiguration *)self->_streamConfiguration storeConfig];
    LODWORD(streamIdentifier) = [BMFrameStore getSegmentVersion:v13 config:v14 stream:self->_streamIdentifier];

    v15 = [(BMSyncDatabase *)self->_db computeHighestLocationToDeleteUpToBookmark:v12 forSiteIdentifier:v7 inStream:self->_syncIdentifier offsetsIncrease:streamIdentifier == 9];
    if (v15)
    {
      v16 = [(BMStreamCKCRDT *)self deleteAtOrBeforeHighestDeletedLocation:v15];
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (BOOL)deletedExpiredBufferedLocationsForSiteIdentifier:(id)a3
{
  v4 = a3;
  v5 = __biome_log_for_category();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "deletedExpiredBufferedLocationsForSiteIdentifier: %@", &v9, 0xCu);
  }

  v6 = [(BMSyncDatabase *)self->_db highestLocationWithBufferedAtomsOlderThan:v4 forSiteIdentifier:self->_syncIdentifier inStream:CFAbsoluteTimeGetCurrent() + -2419200.0];
  if (v6)
  {
    v7 = [(BMStreamCKCRDT *)self deleteAtOrBeforeHighestDeletedLocation:v6];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (BOOL)deleteAtOrBeforeHighestDeletedLocation:(id)a3
{
  v4 = a3;
  [(BMSyncDatabase *)self->_db updateAllLocationsAtOrBefore:v4 state:3];
  db = self->_db;
  v6 = [v4 location];
  [(BMSyncDatabase *)db updateAllCKRecordsAtOrBeforeLocationToBeDeletedOnSync:v6];

  v7 = [(BMSyncDatabase *)self->_db deleteAllAtomsAtOrBeforeLocation:v4];
  if (v7)
  {
    [(BMSyncDatabase *)self->_db updateAllLocationsAtOrBefore:v4 state:4];
    v8 = self->_db;
    v9 = [v4 location];
    [(BMSyncDatabase *)v8 markCKRecordsAtOrBeforeLocationToBeDeletedOnSync:v9];

    [(BMSyncDatabase *)self->_db removeAllDeletedLocationsBeforeHighestDeletedLocation:v4];
  }

  else
  {
    v10 = __biome_log_for_category();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1000485F4();
    }
  }

  return v7;
}

- (void)populateAtomBatch:(id)a3 withAtomsInClockVector:(id)a4 forLocation:(id)a5 ckFormatVersion:(unsigned __int8)a6 valueVersion:(int64_t)a7 chunker:(id)a8
{
  v14 = a3;
  v15 = a8;
  db = self->_db;
  syncIdentifier = self->_syncIdentifier;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1000150C4;
  v23[3] = &unk_100079058;
  v23[4] = self;
  v26 = a7;
  v18 = v14;
  v24 = v18;
  v19 = v15;
  v25 = v19;
  v27 = a6;
  [(BMSyncDatabase *)db atomRowsInTimestampClockVector:a4 forLocation:a5 inStream:syncIdentifier enumerateWithBlock:v23];
  v22 = 0;
  [v18 finishWritingWithError:&v22];
  v20 = v22;
  if (v20)
  {
    v21 = __biome_log_for_category();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_100048664();
    }
  }

  [v19 setMoreComing:{objc_msgSend(v19, "moreComing")}];
}

- (void)atomsForChangesSinceClockVector:(id)a3 ckFormatVersion:(unsigned __int8)a4 chunker:(id)a5 transportType:(unint64_t)a6 enumerateWithBlock:(id)a7
{
  v10 = a4;
  v12 = a3;
  v13 = a5;
  v14 = a7;
  v15 = objc_autoreleasePoolPush();
  [(BMStreamCKCRDT *)self ingestNewChangesFromAllSitesInVectorClock:v12 transportType:a6];
  objc_autoreleasePoolPop(v15);
  v16 = [(BMStreamCKCRDT *)self rangeClockVector];
  v17 = __biome_log_for_category();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    sub_100048748();
  }

  [v16 minusVector:v12];
  v18 = v16;
  v19 = __biome_log_for_category();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    streamIdentifier = self->_streamIdentifier;
    *buf = 138412802;
    v37 = v18;
    v38 = 2048;
    v39 = v10;
    v40 = 2112;
    v41 = streamIdentifier;
    _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "generating atom batch with timestamps to fill for clock: %@, version: %lu, stream: %@", buf, 0x20u);
  }

  db = self->_db;
  syncIdentifier = self->_syncIdentifier;
  v35 = 0;
  v22 = [(BMSyncDatabase *)db activeLocationsInClockVector:v18 inStream:syncIdentifier error:&v35];
  v23 = v35;
  if (v23)
  {
    v24 = __biome_log_for_category();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v29 = self->_syncIdentifier;
      *buf = 138412802;
      v37 = v18;
      v38 = 2112;
      v39 = v29;
      v40 = 2112;
      v41 = v23;
      _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "error fetching active locations for clockVector: %@ stream: %@ error: %@", buf, 0x20u);
    }
  }

  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_100015CC4;
  v30[3] = &unk_100079080;
  v30[4] = self;
  v31 = v18;
  v34 = v10;
  v32 = v13;
  v33 = v14;
  v25 = v14;
  v26 = v13;
  v27 = v18;
  [v22 enumerateObjectsUsingBlock:v30];
}

- (void)handleDeletedLocation:(id)a3 deleteCKRecord:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = __biome_log_for_category();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "handleDeletedLocation: %@", &buf, 0xCu);
  }

  v8 = [v6 siteIdentifier];
  if ([v8 isEqual:self->_localSiteIdentifier])
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  v10 = v9;
  v11 = [(BMStreamConfiguration *)self->_streamConfiguration storeConfig];
  v12 = [v11 copyWithRemoteName:v10];

  v13 = [[BMStreamDatastorePruner alloc] initWithStream:self->_streamIdentifier config:v12 eventDataClass:{-[BMStreamConfiguration eventClass](self->_streamConfiguration, "eventClass")}];
  v14 = [(BMSyncDatabase *)self->_db locationRowWithLocation:v6];
  v15 = v14;
  if (v14 && [v14 state] != 4)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v28 = 0x3032000000;
    v29 = sub_1000142AC;
    v30 = sub_1000142BC;
    v31 = 0;
    db = self->_db;
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10001629C;
    v24[3] = &unk_1000790A8;
    v24[4] = self;
    v25 = v13;
    p_buf = &buf;
    [(BMSyncDatabase *)db atomsAtOrBeforeLocation:v15 ofType:0 enumerateWithBlock:v24];
    [(BMSyncDatabase *)self->_db saveLatestTombstoneBookmark:*(*(&buf + 1) + 40) forSiteIdentifier:v8 inStream:self->_syncIdentifier];
    [(BMSyncDatabase *)self->_db updateAllLocationsAtOrBefore:v15 state:3];
    v18 = self->_db;
    v19 = [v15 location];
    [(BMSyncDatabase *)v18 updateAllCKRecordsAtOrBeforeLocationToBeDeletedOnSync:v19];

    if ([(BMSyncDatabase *)self->_db deleteAllAtomsAtOrBeforeLocation:v15])
    {
      [(BMSyncDatabase *)self->_db updateAllLocationsAtOrBefore:v15 state:4];
      v20 = self->_db;
      [v15 location];
      if (v4)
        v21 = {;
        [(BMSyncDatabase *)v20 deleteCKRecordsAtOrBeforeLocation:v21];
      }

      else
        v21 = {;
        [(BMSyncDatabase *)v20 markCKRecordsAtOrBeforeLocationToBeDeletedOnSync:v21];
      }

      [(BMSyncDatabase *)self->_db removeAllDeletedLocationsBeforeHighestDeletedLocation:v15];
    }

    _Block_object_dispose(&buf, 8);
  }

  else if ([v15 state] == 3 || objc_msgSend(v15, "state") == 4)
  {
    v16 = __biome_log_for_category();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "deleted location already handled", &buf, 2u);
    }
  }

  else
  {
    v22 = __biome_log_for_category();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v6;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "location we haven't yet observed is now deleted %@", &buf, 0xCu);
    }

    v23 = [(BMSyncDatabase *)self->_db insertLocationIfNotExists:v6 withState:4];
  }
}

- (void)setupMemoryMappedAtomBatch:(id)a3 atomBatchFilePath:(id)a4
{
  v6 = a3;
  v7 = a4;
  currentMemoryMappedAtomBatch = self->_currentMemoryMappedAtomBatch;
  self->_currentMemoryMappedAtomBatch = v6;
  v10 = v6;

  currentMemoryMappedAtomBatchFilename = self->_currentMemoryMappedAtomBatchFilename;
  self->_currentMemoryMappedAtomBatchFilename = v7;
}

- (void)clearMemoryMappedAtomBatch
{
  currentMemoryMappedAtomBatch = self->_currentMemoryMappedAtomBatch;
  self->_currentMemoryMappedAtomBatch = 0;

  currentMemoryMappedAtomBatchFilename = self->_currentMemoryMappedAtomBatchFilename;
  self->_currentMemoryMappedAtomBatchFilename = 0;
}

- (id)atomValueFromAtomRow:(id)a3
{
  v4 = a3;
  v5 = [v4 referenceAtomBatchFilename];

  if (!v5)
  {
    v8 = [v4 valueData];
    v10 = +[BMSyncAtomValue atomValueFromData:version:](BMSyncAtomValue, "atomValueFromData:version:", v8, [v4 valueVersion]);
    goto LABEL_11;
  }

  if (self->_currentMemoryMappedAtomBatchFilename)
  {
    v6 = [v4 referenceAtomBatchFilename];
    v7 = [v6 isEqualToString:self->_currentMemoryMappedAtomBatchFilename];

    if (v7)
    {
LABEL_4:
      v8 = -[CKAtomBatch nthAtom:](self->_currentMemoryMappedAtomBatch, "nthAtom:", [v4 atomBatchFileIndex]);
      v9 = [v8 value];
      v10 = +[BMSyncAtomValue atomValueFromData:version:](BMSyncAtomValue, "atomValueFromData:version:", v9, [v8 version]);

LABEL_11:
      goto LABEL_21;
    }
  }

  v11 = [v4 referenceAtomBatchFilename];
  v35 = 0;
  v12 = [NSData dataWithContentsOfFile:v11 options:8 error:&v35];
  v13 = v35;

  if (!v12)
  {
    v22 = __biome_log_for_category();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_100048A14();
    }

    goto LABEL_20;
  }

  v14 = [v4 location];
  v15 = [v14 location];
  v16 = [v15 ckMergeableValueIDWithFormatVersion:1];

  v17 = [v4 referenceAtomBatchFilename];
  v18 = [(BMStreamCKCRDT *)self vectorFileNameFromORCFileName:v17];

  v34 = v13;
  v19 = [NSData dataWithContentsOfFile:v18 options:8 error:&v34];
  v20 = v34;

  if (v20)
  {
    v21 = __biome_log_for_category();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_1000488A4();
    }

LABEL_19:
    goto LABEL_20;
  }

  v23 = [NSSet setWithObjects:objc_opt_class(), 0];
  v33 = 0;
  v24 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v23 fromData:v19 error:&v33];
  v20 = v33;

  if (v20)
  {
    v25 = __biome_log_for_category();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_100048910();
    }

    goto LABEL_19;
  }

  v27 = [CKAtomBatch alloc];
  v28 = [v24 vectors];
  v32 = 0;
  v29 = [v27 initWithData:v12 mergeableValueID:v16 vectors:v28 error:&v32];
  v30 = v32;

  if (v30)
  {
    v31 = __biome_log_for_category();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      sub_10004897C();
    }
  }

  else
  {
    v31 = [v4 referenceAtomBatchFilename];
    [(BMStreamCKCRDT *)self setupMemoryMappedAtomBatch:v29 atomBatchFilePath:v31];
  }

  if (!v30)
  {
    goto LABEL_4;
  }

LABEL_20:
  v10 = 0;
LABEL_21:

  return v10;
}

- (void)mergeFileBasedPhaseswithSessionContext:(id)a3 forLocation:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(BMStreamCKCRDT *)self mergePhase2PerformRecoveryForLocation:v6];
  v8 = [v6 siteIdentifier];
  [(BMStreamCKCRDT *)self mergePhase3ApplyAtomsToDiskForLocation:v8 sessionContext:v7];

  v9 = [v6 streamName];

  [(BMStreamCKCRDT *)self mergePhase4RemoveProcessedAtomBatchFilesForStream:v9 outAtomBatchFilesRemoved:0];
}

- (void)mergeAtomBatches:(id)a3 atomBatchFilenames:(id)a4 sessionContext:(id)a5 forLocation:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v13)
  {
    if ([(BMStreamCKCRDT *)self mergePhase1StoreAtomBatches:v10 atomBatchFilenames:v11 sessionContext:v12 forLocation:v13])
    {
      v14 = [(BMStreamConfiguration *)self->_streamConfiguration storeConfig];
      v15 = [v14 protectionClass];

      v16 = [(BMStreamConfiguration *)self->_streamConfiguration storeConfig];
      v17 = [v16 currentDevice];

      if ([v17 canOpenFilesForProtectionClass:v15])
      {
        [(BMStreamCKCRDT *)self mergeFileBasedPhaseswithSessionContext:v12 forLocation:v13];
      }

      else
      {
        v20 = __biome_log_for_category();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          streamIdentifier = self->_streamIdentifier;
          v22 = 138412290;
          v23 = streamIdentifier;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "submitting a task to BGSystemTaskScheduler to handle deferred sync for %@", &v22, 0xCu);
        }

        +[BMSyncBackgroundTasks submitBackgroundTaskForDeferredMerge];
      }
    }

    else
    {
      v18 = __biome_log_for_category();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = [v13 streamName];
        v22 = 138412290;
        v23 = v19;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "mergePhase1StoreAtomBatches not successful, removing atomBatchFiles for stream: %@", &v22, 0xCu);
      }

      v17 = [v13 streamName];
      [(BMStreamCKCRDT *)self mergePhase4RemoveProcessedAtomBatchFilesForStream:v17 outAtomBatchFilesRemoved:0];
    }
  }

  else
  {
    v17 = __biome_log_for_category();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      sub_100048AAC();
    }
  }
}

- (BOOL)mergePhase1StoreAtomBatches:(id)a3 atomBatchFilenames:(id)a4 sessionContext:(id)a5 forLocation:(id)a6
{
  v10 = a3;
  v49 = a4;
  v48 = a5;
  v11 = a6;
  v12 = [(BMSyncDatabase *)self->_db locationRowWithLocation:v11];
  db = self->_db;
  v43 = v11;
  v14 = [v11 siteIdentifier];
  v15 = [(BMSyncDatabase *)db highestDeletedLocationForSiteIdentifier:v14 inStream:self->_syncIdentifier];

  if ([v12 state] != 1)
  {
    if ([v12 state] == 3 || objc_msgSend(v12, "state") == 4)
    {
      v17 = __biome_log_for_category();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v66 = v12;
        v31 = "Location is not active %@ skipping merge to not resurrect a dead location";
        v32 = v17;
        v33 = 12;
LABEL_22:
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, v31, buf, v33);
      }
    }

    else
    {
      v36 = [v15 location];
      v37 = [v36 day];
      v38 = [v43 day];
      v39 = [v37 compare:v38];

      if (v39 != 1)
      {
        if (!v12)
        {
          v40 = __biome_log_for_category();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v66 = v43;
            _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "First time observing location %@", buf, 0xCu);
          }

          v12 = [(BMSyncDatabase *)self->_db insertLocationIfNotExists:v43 withState:2];
        }

        goto LABEL_5;
      }

      v17 = __biome_log_for_category();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v66 = v15;
        v67 = 2112;
        v68 = v43;
        v31 = "Highest deleted location %@ is past incoming location %@";
        v32 = v17;
        v33 = 22;
        goto LABEL_22;
      }
    }

    v30 = 0;
    goto LABEL_30;
  }

  v16 = __biome_log_for_category();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v66 = v12;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Received missing location %@", buf, 0xCu);
  }

  [(BMSyncDatabase *)self->_db updateLocationState:2 forLocation:v12];
LABEL_5:
  v17 = [v43 siteIdentifier];
  v47 = objc_opt_new();
  v46 = objc_opt_new();
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  obj = v10;
  v18 = [obj countByEnumeratingWithState:&v60 objects:v64 count:16];
  if (v18)
  {
    v19 = v18;
    v44 = v17;
    v45 = v12;
    v41 = v15;
    v20 = *v61;
    v21 = -1;
    while (2)
    {
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v61 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v60 + 1) + 8 * i);
        v24 = objc_autoreleasePoolPush();
        v25 = __biome_log_for_category();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v26 = [v23 count];
          *buf = 134218242;
          v66 = v26;
          v67 = 2112;
          v68 = v43;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Merging %llu atoms with location %@", buf, 0x16u);
        }

        ++v21;

        if ([v23 count] >= 1)
        {
          v27 = [[BMSyncDatabaseTransactionBatcher alloc] initWithDatabase:self->_db transcationBatchSize:50];
          v50[0] = _NSConcreteStackBlock;
          v50[1] = 3221225472;
          v50[2] = sub_10001725C;
          v50[3] = &unk_1000790D0;
          v28 = v27;
          v51 = v28;
          v52 = self;
          v53 = v48;
          v54 = v44;
          v55 = v47;
          v56 = v46;
          v57 = v45;
          v58 = v49;
          v59 = v21;
          v29 = objc_retainBlock(v50);

          [v23 enumerateAtomsWithOptions:0 usingBlock:v29];
          if (![(BMSyncDatabaseTransactionBatcher *)v28 markAllOperationsComplete])
          {
            v34 = __biome_log_for_category();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
            {
              sub_100048AE8();
            }

            objc_autoreleasePoolPop(v24);
            v30 = 0;
            goto LABEL_27;
          }
        }

        objc_autoreleasePoolPop(v24);
      }

      v19 = [obj countByEnumeratingWithState:&v60 objects:v64 count:16];
      if (v19)
      {
        continue;
      }

      break;
    }

    v30 = 1;
LABEL_27:
    v15 = v41;
    v17 = v44;
    v12 = v45;
  }

  else
  {
    v30 = 1;
  }

LABEL_30:
  return v30;
}

- (void)mergePhase2PerformRecoveryForLocation:(id)a3
{
  v4 = a3;
  v5 = [v4 siteIdentifier];
  v6 = [(BMStreamCKCRDT *)self readerForSiteIdentifier:v5];
  v7 = [(BMSyncDatabase *)self->_db latestCKAtomRowOfType:0 forSiteIdentifier:v5 inStream:self->_syncIdentifier];
  v8 = [(BMStreamCKCRDT *)self bookmarkForAtomRow:v7];
  v9 = [(BMStreamCKCRDT *)self newEnumeratorStartingAfterBookmark:v8 reader:v6];

  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_1000142AC;
  v19 = sub_1000142BC;
  v20 = [v9 nextEvent];
  if (v16[5])
  {
    db = self->_db;
    syncIdentifier = self->_syncIdentifier;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100017A80;
    v12[3] = &unk_1000790F8;
    v14 = &v15;
    v12[4] = self;
    v13 = v9;
    [(BMSyncDatabase *)db atomRowsNotOnDiskReferencingSiteIdentifier:v5 inStream:syncIdentifier enumerateWithBlock:v12];
    [(BMStreamCKCRDT *)self clearMemoryMappedAtomBatch];
  }

  _Block_object_dispose(&v15, 8);
}

- (void)mergePhase3ApplyAtomsToDiskForLocation:(id)a3 sessionContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  if ([v6 isEqual:self->_localSiteIdentifier])
  {
    v8 = 0;
  }

  else
  {
    v8 = v6;
  }

  v9 = v8;
  v10 = [(BMStreamConfiguration *)self->_streamConfiguration storeConfig];
  v11 = [v10 copyWithRemoteName:v9];

  v12 = [[BMStreamDatastoreWriter alloc] initWithStream:self->_streamIdentifier config:v11 eventDataClass:{-[BMStreamConfiguration eventClass](self->_streamConfiguration, "eventClass")}];
  v13 = [[BMStreamDatastorePruner alloc] initWithStream:self->_streamIdentifier config:v11 eventDataClass:{-[BMStreamConfiguration eventClass](self->_streamConfiguration, "eventClass")}];
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x3032000000;
  v29[3] = sub_1000142AC;
  v29[4] = sub_1000142BC;
  v30 = 0;
  db = self->_db;
  syncIdentifier = self->_syncIdentifier;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100018090;
  v20[3] = &unk_100079120;
  v16 = v7;
  v21 = v16;
  v22 = self;
  v26 = v29;
  v27 = &v35;
  v17 = v12;
  v23 = v17;
  v28 = &v31;
  v18 = v13;
  v24 = v18;
  v19 = v6;
  v25 = v19;
  [(BMSyncDatabase *)db atomRowsNotOnDiskReferencingSiteIdentifier:v19 inStream:syncIdentifier enumerateWithBlock:v20];
  [(BMStreamCKCRDT *)self clearMemoryMappedAtomBatch];
  if (*(v32 + 24) == 1)
  {
    [(BMSyncChangeReporter *)self->_changeReporter userDeletesForStreamName:self->_streamIdentifier deviceIdentifier:v19 error:0];
  }

  if (*(v36 + 24) == 1)
  {
    [(BMSyncChangeReporter *)self->_changeReporter streamUpdatedForStreamName:self->_streamIdentifier deviceIdentifier:v19 error:0];
  }

  _Block_object_dispose(v29, 8);
  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v35, 8);
}

- (BOOL)mergePhase4RemoveProcessedAtomBatchFilesForStream:(id)a3 outAtomBatchFilesRemoved:(unint64_t *)a4
{
  v6 = a3;
  v7 = +[BMPaths syncDirectory];
  v8 = [BMFileManager fileManagerWithDirectAccessToDirectory:v7 cachingOptions:0];

  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  db = self->_db;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100018874;
  v16[3] = &unk_100079148;
  v19 = &v20;
  v10 = v8;
  v17 = v10;
  v18 = self;
  [(BMSyncDatabase *)db enumerateAtomBatchFilesNotReferencedInCKAtomForStream:v6 withBlock:v16];
  if (a4)
  {
    *a4 = *(v21 + 6);
  }

  v11 = [(BMSyncDatabase *)self->_db deleteAtomBatchFilesTableRowsNotReferencedInCKAtomForStream:v6];
  if ((v11 & 1) == 0)
  {
    v12 = __biome_log_for_category();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1000490F8();
    }
  }

  v13 = [(BMSyncDatabase *)self->_db deleteAtomsFromCKAtomWithNonExistentAtomBatchFilesForStream:v6];
  if ((v13 & 1) == 0)
  {
    v14 = __biome_log_for_category();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_100049134();
    }
  }

  _Block_object_dispose(&v20, 8);
  return v11 & v13;
}

@end