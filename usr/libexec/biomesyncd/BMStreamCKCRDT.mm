@interface BMStreamCKCRDT
- (BMStreamCKCRDT)initWithStreamConfiguration:(id)configuration locationAssignerPolicy:(id)policy localSiteIdentifier:(id)identifier database:(id)database changeReporter:(id)reporter account:(id)account;
- (BOOL)deleteAtOrBeforeHighestDeletedLocation:(id)location;
- (BOOL)deleteLocationsUpToTTLAtTombstone:(id)tombstone siteIdentifier:(id)identifier;
- (BOOL)deletedExpiredBufferedLocationsForSiteIdentifier:(id)identifier;
- (BOOL)handleDeleteAtomRow:(id)row usingPruner:(id)pruner outBookmark:(id *)bookmark outTombstoneBookmark:(id *)tombstoneBookmark;
- (BOOL)mergePhase1StoreAtomBatches:(id)batches atomBatchFilenames:(id)filenames sessionContext:(id)context forLocation:(id)location;
- (BOOL)mergePhase4RemoveProcessedAtomBatchFilesForStream:(id)stream outAtomBatchFilesRemoved:(unint64_t *)removed;
- (BOOL)writeAtomValue:(id)value fromAtomRow:(id)row usingWriter:(id)writer outBookmark:(id *)bookmark;
- (id)atomValueFromAtomRow:(id)row;
- (id)atomValueFromEvent:(id)event ofType:(unint64_t)type version:(int64_t)version;
- (id)bookmarkForAtomRow:(id)row;
- (id)ckAtomTableRecordForEvent:(id)event ofType:(unint64_t)type atBookmark:(id)bookmark previousTableRecord:(id)record siteIdentifier:(id)identifier;
- (id)newEnumeratorStartingAfterBookmark:(id)bookmark reader:(id)reader;
- (id)readerForSiteIdentifier:(id)identifier;
- (id)tombstoneEnumeratorFromStoredBookmarkForSiteIdentifier:(id)identifier fromDatastore:(id)datastore;
- (void)addAtomWithValueData:(id)data toAtomBatch:(id)batch fromAtomTableRecord:(id)record version:(unsigned __int8)version atomValueVersion:(int64_t)valueVersion;
- (void)atomsForChangesSinceClockVector:(id)vector ckFormatVersion:(unsigned __int8)version chunker:(id)chunker transportType:(unint64_t)type enumerateWithBlock:(id)block;
- (void)clearMemoryMappedAtomBatch;
- (void)handleDeletedLocation:(id)location deleteCKRecord:(BOOL)record;
- (void)ingestNewChangesForSite:(id)site transportType:(unint64_t)type;
- (void)ingestNewChangesFromAllSitesInVectorClock:(id)clock transportType:(unint64_t)type;
- (void)mergeAtomBatches:(id)batches atomBatchFilenames:(id)filenames sessionContext:(id)context forLocation:(id)location;
- (void)mergeFileBasedPhaseswithSessionContext:(id)context forLocation:(id)location;
- (void)mergePhase2PerformRecoveryForLocation:(id)location;
- (void)mergePhase3ApplyAtomsToDiskForLocation:(id)location sessionContext:(id)context;
- (void)populateAtomBatch:(id)batch withAtomsInClockVector:(id)vector forLocation:(id)location ckFormatVersion:(unsigned __int8)version valueVersion:(int64_t)valueVersion chunker:(id)chunker;
- (void)setupMemoryMappedAtomBatch:(id)batch atomBatchFilePath:(id)path;
@end

@implementation BMStreamCKCRDT

- (BMStreamCKCRDT)initWithStreamConfiguration:(id)configuration locationAssignerPolicy:(id)policy localSiteIdentifier:(id)identifier database:(id)database changeReporter:(id)reporter account:(id)account
{
  configurationCopy = configuration;
  policyCopy = policy;
  identifierCopy = identifier;
  databaseCopy = database;
  reporterCopy = reporter;
  accountCopy = account;
  if (configurationCopy)
  {
    if (databaseCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_100048418();
    if (databaseCopy)
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
    objc_storeStrong(&v19->_streamConfiguration, configuration);
    syncIdentifier = [configurationCopy syncIdentifier];
    syncIdentifier = v20->_syncIdentifier;
    v20->_syncIdentifier = syncIdentifier;

    streamIdentifier = [configurationCopy streamIdentifier];
    streamIdentifier = v20->_streamIdentifier;
    v20->_streamIdentifier = streamIdentifier;

    v25 = [identifierCopy copy];
    localSiteIdentifier = v20->_localSiteIdentifier;
    v20->_localSiteIdentifier = v25;

    objc_storeStrong(&v20->_db, database);
    v27 = [[BMStreamCRDTLocationBuilder alloc] initWithAssignerPolicy:policyCopy];
    locationBuilder = v20->_locationBuilder;
    v20->_locationBuilder = v27;

    v29 = objc_opt_new();
    locationRowCache = v20->_locationRowCache;
    v20->_locationRowCache = v29;

    objc_storeStrong(&v20->_changeReporter, reporter);
    objc_storeStrong(&v20->_account, account);
    v31 = objc_opt_new();
    readerCache = v20->_readerCache;
    v20->_readerCache = v31;

    v33 = objc_opt_new();
    enumeratorCache = v20->_enumeratorCache;
    v20->_enumeratorCache = v33;
  }

  return v20;
}

- (id)bookmarkForAtomRow:(id)row
{
  rowCopy = row;
  segmentName = [rowCopy segmentName];

  if (segmentName)
  {
    v6 = [BMStoreBookmark alloc];
    streamIdentifier = self->_streamIdentifier;
    segmentName2 = [rowCopy segmentName];
    v9 = [v6 initWithStream:streamIdentifier segment:segmentName2 iterationStartTime:objc_msgSend(rowCopy offset:{"segmentOffset"), 1.79769313e308}];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)newEnumeratorStartingAfterBookmark:(id)bookmark reader:(id)reader
{
  bookmarkCopy = bookmark;
  readerCopy = reader;
  v7 = readerCopy;
  if (bookmarkCopy)
  {
    v17 = 0;
    v8 = [readerCopy newEnumeratorFromBookmark:bookmarkCopy options:7 error:&v17];
    v9 = v17;
    if (v8)
    {
      nextEvent = [v8 nextEvent];
    }

    else if (BMStorageErrorGetErrno() == 2)
    {
      segmentName = [bookmarkCopy segmentName];
      [v7 timestampFromSegmentName:segmentName];
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
    v8 = [readerCopy newEnumeratorFromStartTime:7 options:0.0];
  }

  return v8;
}

- (id)ckAtomTableRecordForEvent:(id)event ofType:(unint64_t)type atBookmark:(id)bookmark previousTableRecord:(id)record siteIdentifier:(id)identifier
{
  eventCopy = event;
  bookmarkCopy = bookmark;
  recordCopy = record;
  identifierCopy = identifier;
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
  if (type != 2)
  {
    if (!type)
    {
      v59 = v16;
      locationBuilder = self->_locationBuilder;
      syncIdentifier = self->_syncIdentifier;
      [eventCopy timestamp];
      v26 = [(BMStreamCRDTLocationBuilder *)locationBuilder locationWithStreamName:syncIdentifier siteIdentifier:identifierCopy timestamp:?];
      v27 = [(NSCache *)self->_locationRowCache objectForKey:v26];
      if (!v27)
      {
        v27 = [(BMSyncDatabase *)self->_db insertLocationIfNotExists:v26 withState:2];
        [(NSCache *)self->_locationRowCache setObject:v27 forKey:v26];
      }

      v57 = identifierCopy;
      v61 = eventCopy;
      v63 = v23;
      if (recordCopy)
      {
        location = [recordCopy location];
        v28Location = [location location];
        [v28Location ckMergeableValueIDWithFormatVersion:0];
        v31 = v30 = recordCopy;

        v32 = [CKAtomReference alloc];
        timestamp = [v30 timestamp];
        v34 = [v32 initWithMergeableValueID:v31 timestamp:timestamp type:0];
      }

      else
      {
        v34 = 0;
        v30 = 0;
      }

      v37 = [BMSyncCKAtomRow alloc];
      location2 = [v30 location];
      segmentName = [bookmarkCopy segmentName];
      v36 = -[BMSyncCKAtomRow initWithLocation:timestamp:referenceLocation:causalReference:type:segmentName:segmentOffset:](v37, "initWithLocation:timestamp:referenceLocation:causalReference:type:segmentName:segmentOffset:", v27, v63, location2, v34, 0, segmentName, [bookmarkCopy offset]);

      v23 = v63;
      v16 = v59;
      eventCopy = v61;
      recordCopy = v30;
      identifierCopy = v57;
LABEL_14:
      v22 = v65;
      goto LABEL_15;
    }

LABEL_11:
    v36 = 0;
    goto LABEL_15;
  }

  v35 = [(BMSyncDatabase *)self->_db ckAtomRowForAtomWithBookmark:bookmarkCopy type:2 forSiteIdentifier:self->_localSiteIdentifier inStream:self->_syncIdentifier];
  if (v35)
  {

    goto LABEL_11;
  }

  v64 = v23;
  v41 = [(BMSyncDatabase *)self->_db ckAtomRowForAtomWithBookmark:bookmarkCopy type:0 forSiteIdentifier:identifierCopy inStream:self->_syncIdentifier];
  if (v41)
  {
    v42 = v41;
    location3 = [v41 location];
    v43Location = [location3 location];
    v58 = [v43Location ckMergeableValueIDWithFormatVersion:0];

    v45 = [CKAtomReference alloc];
    timestamp2 = [v42 timestamp];
    v56 = [v45 initWithMergeableValueID:v58 timestamp:timestamp2 type:0];

    v47 = [BMSyncCKAtomRow alloc];
    location4 = [v42 location];
    [v42 location];
    v49 = v62 = eventCopy;
    [bookmarkCopy segmentName];
    v60 = v16;
    v51 = v50 = recordCopy;
    v23 = v64;
    v36 = -[BMSyncCKAtomRow initWithLocation:timestamp:referenceLocation:causalReference:type:segmentName:segmentOffset:](v47, "initWithLocation:timestamp:referenceLocation:causalReference:type:segmentName:segmentOffset:", location4, v64, v49, v56, 2, v51, [bookmarkCopy offset]);

    recordCopy = v50;
    v16 = v60;

    eventCopy = v62;
    v22 = v65;
  }

  else
  {
    db = self->_db;
    segmentName2 = [bookmarkCopy segmentName];
    LODWORD(db) = [(BMSyncDatabase *)db containsCKAtomRowWithSegment:segmentName2 inStream:self->_syncIdentifier];

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

- (id)atomValueFromEvent:(id)event ofType:(unint64_t)type version:(int64_t)version
{
  eventCopy = event;
  v8 = eventCopy;
  if (!eventCopy)
  {
    goto LABEL_5;
  }

  frame = [eventCopy frame];
  if ([frame state]== 3)
  {
    goto LABEL_3;
  }

  frame2 = [v8 frame];
  state = [frame2 state];

  if (state == 2)
  {
    goto LABEL_5;
  }

  frame3 = [v8 frame];
  data = [frame3 data];

  if (!data)
  {
    frame = __biome_log_for_category();
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
    if (os_log_type_enabled(frame, v20))
    {
      frame4 = [v8 frame];
      state2 = [frame4 state];
      if (state2 >= 6)
      {
        v23 = [NSString stringWithFormat:@"BMFrameStateUnknown(%lu)", state2, block, v25, v26, v27, p_buf, buf];
      }

      else
      {
        v23 = off_100079168[state2];
      }

      LODWORD(buf) = 138543362;
      *(&buf + 4) = v23;
      _os_log_impl(&_mh_execute_header, frame, v20, "Expected no-data frame to be delete or pre-delete, but frame was %{public}@", &buf, 0xCu);
    }

LABEL_3:

LABEL_5:
    data = 0;
  }

  v13 = [BMStoreEventAtomValue alloc];
  frame5 = [v8 frame];
  dataVersion = [frame5 dataVersion];
  [v8 timestamp];
  v16 = [(BMStoreEventAtomValue *)v13 initWithEventData:data dataVersion:dataVersion dataTimestamp:?];

  v17 = [[BMSyncAtomValue alloc] initWithAtomType:type value:v16 version:version];

  return v17;
}

- (BOOL)handleDeleteAtomRow:(id)row usingPruner:(id)pruner outBookmark:(id *)bookmark outTombstoneBookmark:(id *)tombstoneBookmark
{
  prunerCopy = pruner;
  causalReference = [row causalReference];
  timestamp = [causalReference timestamp];

  v13 = [(BMSyncDatabase *)self->_db ckAtomRowWithTimestamp:timestamp inStream:self->_syncIdentifier];
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
      type = [v13 type];
      *buf = 138412546;
      *&buf[4] = v13;
      *&buf[12] = 2048;
      *&buf[14] = type;
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
      *&buf[4] = timestamp;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "bookmark is nil, presumably because the referenced atom was a placeholder append (dead on arrival) %@", buf, 0xCu);
    }

    if (!bookmark)
    {
      goto LABEL_19;
    }

    v22 = 0;
LABEL_18:
    *bookmark = v22;
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

  v24 = [prunerCopy deleteEventAtBookmark:v18 outTombstoneBookmark:tombstoneBookmark];
  v25 = v24;
  if (bookmark && v24)
  {
    v26 = v18;
    v22 = v18;
    goto LABEL_18;
  }

LABEL_20:

  return v25;
}

- (BOOL)writeAtomValue:(id)value fromAtomRow:(id)row usingWriter:(id)writer outBookmark:(id *)bookmark
{
  rowCopy = row;
  writerCopy = writer;
  value = [value value];
  eventData = [value eventData];

  if (eventData)
  {
    eventData2 = [value eventData];
    dataVersion = [value dataVersion];
    [value dataTimestamp];
    if (Current == 0.0)
    {
      Current = CFAbsoluteTimeGetCurrent();
    }

    v16 = [writerCopy _writeEventData:eventData2 dataVersion:dataVersion timestamp:bookmark outBookmark:Current];
  }

  else
  {
    v17 = __biome_log_for_category();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      timestamp = [rowCopy timestamp];
      bm_description = [timestamp bm_description];
      v21 = 138412290;
      v22 = bm_description;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Dropping atom %@ because it is dead on arrival", &v21, 0xCu);
    }

    v16 = 1;
  }

  return v16;
}

- (void)addAtomWithValueData:(id)data toAtomBatch:(id)batch fromAtomTableRecord:(id)record version:(unsigned __int8)version atomValueVersion:(int64_t)valueVersion
{
  versionCopy = version;
  dataCopy = data;
  batchCopy = batch;
  recordCopy = record;
  v14 = __biome_log_for_category();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    sub_100048508();
  }

  if (versionCopy > 2)
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
  v15[4] = recordCopy;
  v15[5] = dataCopy;
  v15[6] = valueVersion;
  v17 = dataCopy;
  v18 = recordCopy;
  [batchCopy appendAtomWithBlock:v15];
}

- (id)readerForSiteIdentifier:(id)identifier
{
  localSiteIdentifier = self->_localSiteIdentifier;
  identifierCopy = identifier;
  if ([identifierCopy isEqual:localSiteIdentifier])
  {
    v6 = 0;
  }

  else
  {
    v6 = identifierCopy;
  }

  streamConfiguration = self->_streamConfiguration;
  v8 = v6;
  storeConfig = [(BMStreamConfiguration *)streamConfiguration storeConfig];
  v10 = [storeConfig copyWithRemoteName:v8];

  v11 = [BMStreamDatastore alloc];
  streamIdentifier = self->_streamIdentifier;
  eventClass = [(BMStreamConfiguration *)self->_streamConfiguration eventClass];
  v14 = [v11 initWithStream:streamIdentifier permission:0 config:v10 includeTombstones:1 eventDataClass:eventClass useCase:BMUseCaseSync];

  return v14;
}

- (void)ingestNewChangesFromAllSitesInVectorClock:(id)clock transportType:(unint64_t)type
{
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  clockCopy = clock;
  allSiteIdentifiers = [clockCopy allSiteIdentifiers];
  v7 = [allSiteIdentifiers countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(allSiteIdentifiers);
        }

        v11 = *(*(&v17 + 1) + 8 * v10);
        v12 = objc_autoreleasePoolPush();
        v13 = [NSString alloc];
        identifier = [v11 identifier];
        v15 = [v13 initWithData:identifier encoding:4];

        [(BMStreamCKCRDT *)self ingestNewChangesForSite:v15 transportType:type];
        [(NSCache *)self->_locationRowCache removeAllObjects];

        objc_autoreleasePoolPop(v12);
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [allSiteIdentifiers countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }
}

- (id)tombstoneEnumeratorFromStoredBookmarkForSiteIdentifier:(id)identifier fromDatastore:(id)datastore
{
  datastoreCopy = datastore;
  v24 = 0;
  v25 = 0;
  v7 = [(BMSyncDatabase *)self->_db getLatestTombstoneBookmarkForSiteIdentifier:identifier inStream:self->_syncIdentifier segmentName:&v24 segmentOffset:&v25];
  v8 = v24;
  if (v7)
  {
    v9 = [BMStoreBookmark alloc];
    v10 = [v9 initWithStream:self->_streamIdentifier segment:v8 iterationStartTime:v25 offset:1.79769313e308];
    v11 = __biome_log_for_category();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      segmentName = [v10 segmentName];
      offset = [v10 offset];
      streamIdentifier = self->_streamIdentifier;
      config = [datastoreCopy config];
      remoteName = [config remoteName];
      *buf = 138413058;
      v27 = segmentName;
      v28 = 2048;
      v29 = offset;
      v30 = 2112;
      v31 = streamIdentifier;
      v32 = 2112;
      v33 = remoteName;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Starting tombstone enumerator from segment %@ offset %lu for stream %@ site %@", buf, 0x2Au);
    }

    v17 = [datastoreCopy newTombstoneEnumeratorFromBookmark:v10];
    nextEvent = [v17 nextEvent];
  }

  else
  {
    v19 = __biome_log_for_category();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = self->_streamIdentifier;
      config2 = [datastoreCopy config];
      remoteName2 = [config2 remoteName];
      *buf = 138412546;
      v27 = v20;
      v28 = 2112;
      v29 = remoteName2;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Starting tombstone enumerator from 0 for stream %@ site %@", buf, 0x16u);
    }

    v17 = [datastoreCopy newTombstoneEnumeratorFromStartTime:0.0];
  }

  return v17;
}

- (void)ingestNewChangesForSite:(id)site transportType:(unint64_t)type
{
  siteCopy = site;
  v6 = __biome_log_for_category();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = siteCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "ingestChangesForSite: %@", &buf, 0xCu);
  }

  v7 = [(BMStreamCKCRDT *)self readerForSiteIdentifier:siteCopy];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v57 = 0x3032000000;
  v58 = sub_1000142AC;
  v59 = sub_1000142BC;
  v60 = [(BMSyncDatabase *)self->_db latestCKAtomRowOfType:0 forSiteIdentifier:siteCopy inStream:self->_syncIdentifier];
  v8 = [(BMStreamCKCRDT *)self bookmarkForAtomRow:*(*(&buf + 1) + 40)];
  v9 = [(BMStreamCKCRDT *)self newEnumeratorStartingAfterBookmark:v8 reader:v7];

  v10 = [[BMSyncDatabaseTransactionBatcher alloc] initWithDatabase:self->_db transcationBatchSize:100];
  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = sub_1000142AC;
  v49 = sub_1000142BC;
  nextEvent = [v9 nextEvent];
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = sub_1000142AC;
  v43 = sub_1000142BC;
  v44 = 0;
  if (v46[5] && ([siteCopy isEqualToString:self->_localSiteIdentifier] & 1) == 0)
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
      *(&v51 + 4) = siteCopy;
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
    v33 = siteCopy;
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

  v16 = [(BMStreamCKCRDT *)self tombstoneEnumeratorFromStoredBookmarkForSiteIdentifier:siteCopy fromDatastore:v7];
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
  selfCopy = self;
  v23 = &v26;
  v24 = &v51;
  v17 = siteCopy;
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

- (BOOL)deleteLocationsUpToTTLAtTombstone:(id)tombstone siteIdentifier:(id)identifier
{
  tombstoneCopy = tombstone;
  identifierCopy = identifier;
  if (tombstoneCopy)
  {
    v8 = __biome_log_for_category();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138412546;
      v19 = tombstoneCopy;
      v20 = 2112;
      v21 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "deleteLocationsUpToTTLAtTombstone: %@, siteIdentifier: %@", &v18, 0x16u);
    }

    v9 = [BMStoreBookmark alloc];
    streamIdentifier = self->_streamIdentifier;
    segmentName = [tombstoneCopy segmentName];
    v12 = [v9 initWithStream:streamIdentifier segment:segmentName iterationStartTime:objc_msgSend(tombstoneCopy offset:{"offset"), 1.79769313e308}];

    segmentName2 = [tombstoneCopy segmentName];
    storeConfig = [(BMStreamConfiguration *)self->_streamConfiguration storeConfig];
    LODWORD(streamIdentifier) = [BMFrameStore getSegmentVersion:segmentName2 config:storeConfig stream:self->_streamIdentifier];

    v15 = [(BMSyncDatabase *)self->_db computeHighestLocationToDeleteUpToBookmark:v12 forSiteIdentifier:identifierCopy inStream:self->_syncIdentifier offsetsIncrease:streamIdentifier == 9];
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

- (BOOL)deletedExpiredBufferedLocationsForSiteIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = __biome_log_for_category();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "deletedExpiredBufferedLocationsForSiteIdentifier: %@", &v9, 0xCu);
  }

  v6 = [(BMSyncDatabase *)self->_db highestLocationWithBufferedAtomsOlderThan:identifierCopy forSiteIdentifier:self->_syncIdentifier inStream:CFAbsoluteTimeGetCurrent() + -2419200.0];
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

- (BOOL)deleteAtOrBeforeHighestDeletedLocation:(id)location
{
  locationCopy = location;
  [(BMSyncDatabase *)self->_db updateAllLocationsAtOrBefore:locationCopy state:3];
  db = self->_db;
  location = [locationCopy location];
  [(BMSyncDatabase *)db updateAllCKRecordsAtOrBeforeLocationToBeDeletedOnSync:location];

  v7 = [(BMSyncDatabase *)self->_db deleteAllAtomsAtOrBeforeLocation:locationCopy];
  if (v7)
  {
    [(BMSyncDatabase *)self->_db updateAllLocationsAtOrBefore:locationCopy state:4];
    v8 = self->_db;
    location2 = [locationCopy location];
    [(BMSyncDatabase *)v8 markCKRecordsAtOrBeforeLocationToBeDeletedOnSync:location2];

    [(BMSyncDatabase *)self->_db removeAllDeletedLocationsBeforeHighestDeletedLocation:locationCopy];
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

- (void)populateAtomBatch:(id)batch withAtomsInClockVector:(id)vector forLocation:(id)location ckFormatVersion:(unsigned __int8)version valueVersion:(int64_t)valueVersion chunker:(id)chunker
{
  batchCopy = batch;
  chunkerCopy = chunker;
  db = self->_db;
  syncIdentifier = self->_syncIdentifier;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1000150C4;
  v23[3] = &unk_100079058;
  v23[4] = self;
  valueVersionCopy = valueVersion;
  v18 = batchCopy;
  v24 = v18;
  v19 = chunkerCopy;
  v25 = v19;
  versionCopy = version;
  [(BMSyncDatabase *)db atomRowsInTimestampClockVector:vector forLocation:location inStream:syncIdentifier enumerateWithBlock:v23];
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

- (void)atomsForChangesSinceClockVector:(id)vector ckFormatVersion:(unsigned __int8)version chunker:(id)chunker transportType:(unint64_t)type enumerateWithBlock:(id)block
{
  versionCopy = version;
  vectorCopy = vector;
  chunkerCopy = chunker;
  blockCopy = block;
  v15 = objc_autoreleasePoolPush();
  [(BMStreamCKCRDT *)self ingestNewChangesFromAllSitesInVectorClock:vectorCopy transportType:type];
  objc_autoreleasePoolPop(v15);
  rangeClockVector = [(BMStreamCKCRDT *)self rangeClockVector];
  v17 = __biome_log_for_category();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    sub_100048748();
  }

  [rangeClockVector minusVector:vectorCopy];
  v18 = rangeClockVector;
  v19 = __biome_log_for_category();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    streamIdentifier = self->_streamIdentifier;
    *buf = 138412802;
    v37 = v18;
    v38 = 2048;
    v39 = versionCopy;
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
  v34 = versionCopy;
  v32 = chunkerCopy;
  v33 = blockCopy;
  v25 = blockCopy;
  v26 = chunkerCopy;
  v27 = v18;
  [v22 enumerateObjectsUsingBlock:v30];
}

- (void)handleDeletedLocation:(id)location deleteCKRecord:(BOOL)record
{
  recordCopy = record;
  locationCopy = location;
  v7 = __biome_log_for_category();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = locationCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "handleDeletedLocation: %@", &buf, 0xCu);
  }

  siteIdentifier = [locationCopy siteIdentifier];
  if ([siteIdentifier isEqual:self->_localSiteIdentifier])
  {
    v9 = 0;
  }

  else
  {
    v9 = siteIdentifier;
  }

  v10 = v9;
  storeConfig = [(BMStreamConfiguration *)self->_streamConfiguration storeConfig];
  v12 = [storeConfig copyWithRemoteName:v10];

  v13 = [[BMStreamDatastorePruner alloc] initWithStream:self->_streamIdentifier config:v12 eventDataClass:{-[BMStreamConfiguration eventClass](self->_streamConfiguration, "eventClass")}];
  v14 = [(BMSyncDatabase *)self->_db locationRowWithLocation:locationCopy];
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
    [(BMSyncDatabase *)self->_db saveLatestTombstoneBookmark:*(*(&buf + 1) + 40) forSiteIdentifier:siteIdentifier inStream:self->_syncIdentifier];
    [(BMSyncDatabase *)self->_db updateAllLocationsAtOrBefore:v15 state:3];
    v18 = self->_db;
    location = [v15 location];
    [(BMSyncDatabase *)v18 updateAllCKRecordsAtOrBeforeLocationToBeDeletedOnSync:location];

    if ([(BMSyncDatabase *)self->_db deleteAllAtomsAtOrBeforeLocation:v15])
    {
      [(BMSyncDatabase *)self->_db updateAllLocationsAtOrBefore:v15 state:4];
      v20 = self->_db;
      [v15 location];
      if (recordCopy)
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
      *(&buf + 4) = locationCopy;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "location we haven't yet observed is now deleted %@", &buf, 0xCu);
    }

    v23 = [(BMSyncDatabase *)self->_db insertLocationIfNotExists:locationCopy withState:4];
  }
}

- (void)setupMemoryMappedAtomBatch:(id)batch atomBatchFilePath:(id)path
{
  batchCopy = batch;
  pathCopy = path;
  currentMemoryMappedAtomBatch = self->_currentMemoryMappedAtomBatch;
  self->_currentMemoryMappedAtomBatch = batchCopy;
  v10 = batchCopy;

  currentMemoryMappedAtomBatchFilename = self->_currentMemoryMappedAtomBatchFilename;
  self->_currentMemoryMappedAtomBatchFilename = pathCopy;
}

- (void)clearMemoryMappedAtomBatch
{
  currentMemoryMappedAtomBatch = self->_currentMemoryMappedAtomBatch;
  self->_currentMemoryMappedAtomBatch = 0;

  currentMemoryMappedAtomBatchFilename = self->_currentMemoryMappedAtomBatchFilename;
  self->_currentMemoryMappedAtomBatchFilename = 0;
}

- (id)atomValueFromAtomRow:(id)row
{
  rowCopy = row;
  referenceAtomBatchFilename = [rowCopy referenceAtomBatchFilename];

  if (!referenceAtomBatchFilename)
  {
    valueData = [rowCopy valueData];
    v10 = +[BMSyncAtomValue atomValueFromData:version:](BMSyncAtomValue, "atomValueFromData:version:", valueData, [rowCopy valueVersion]);
    goto LABEL_11;
  }

  if (self->_currentMemoryMappedAtomBatchFilename)
  {
    referenceAtomBatchFilename2 = [rowCopy referenceAtomBatchFilename];
    v7 = [referenceAtomBatchFilename2 isEqualToString:self->_currentMemoryMappedAtomBatchFilename];

    if (v7)
    {
LABEL_4:
      valueData = -[CKAtomBatch nthAtom:](self->_currentMemoryMappedAtomBatch, "nthAtom:", [rowCopy atomBatchFileIndex]);
      value = [valueData value];
      v10 = +[BMSyncAtomValue atomValueFromData:version:](BMSyncAtomValue, "atomValueFromData:version:", value, [valueData version]);

LABEL_11:
      goto LABEL_21;
    }
  }

  referenceAtomBatchFilename3 = [rowCopy referenceAtomBatchFilename];
  v35 = 0;
  v12 = [NSData dataWithContentsOfFile:referenceAtomBatchFilename3 options:8 error:&v35];
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

  location = [rowCopy location];
  v14Location = [location location];
  v16 = [v14Location ckMergeableValueIDWithFormatVersion:1];

  referenceAtomBatchFilename4 = [rowCopy referenceAtomBatchFilename];
  v18 = [(BMStreamCKCRDT *)self vectorFileNameFromORCFileName:referenceAtomBatchFilename4];

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
  vectors = [v24 vectors];
  v32 = 0;
  v29 = [v27 initWithData:v12 mergeableValueID:v16 vectors:vectors error:&v32];
  v30 = v32;

  if (v30)
  {
    referenceAtomBatchFilename5 = __biome_log_for_category();
    if (os_log_type_enabled(referenceAtomBatchFilename5, OS_LOG_TYPE_ERROR))
    {
      sub_10004897C();
    }
  }

  else
  {
    referenceAtomBatchFilename5 = [rowCopy referenceAtomBatchFilename];
    [(BMStreamCKCRDT *)self setupMemoryMappedAtomBatch:v29 atomBatchFilePath:referenceAtomBatchFilename5];
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

- (void)mergeFileBasedPhaseswithSessionContext:(id)context forLocation:(id)location
{
  locationCopy = location;
  contextCopy = context;
  [(BMStreamCKCRDT *)self mergePhase2PerformRecoveryForLocation:locationCopy];
  siteIdentifier = [locationCopy siteIdentifier];
  [(BMStreamCKCRDT *)self mergePhase3ApplyAtomsToDiskForLocation:siteIdentifier sessionContext:contextCopy];

  streamName = [locationCopy streamName];

  [(BMStreamCKCRDT *)self mergePhase4RemoveProcessedAtomBatchFilesForStream:streamName outAtomBatchFilesRemoved:0];
}

- (void)mergeAtomBatches:(id)batches atomBatchFilenames:(id)filenames sessionContext:(id)context forLocation:(id)location
{
  batchesCopy = batches;
  filenamesCopy = filenames;
  contextCopy = context;
  locationCopy = location;
  if (locationCopy)
  {
    if ([(BMStreamCKCRDT *)self mergePhase1StoreAtomBatches:batchesCopy atomBatchFilenames:filenamesCopy sessionContext:contextCopy forLocation:locationCopy])
    {
      storeConfig = [(BMStreamConfiguration *)self->_streamConfiguration storeConfig];
      protectionClass = [storeConfig protectionClass];

      storeConfig2 = [(BMStreamConfiguration *)self->_streamConfiguration storeConfig];
      currentDevice = [storeConfig2 currentDevice];

      if ([currentDevice canOpenFilesForProtectionClass:protectionClass])
      {
        [(BMStreamCKCRDT *)self mergeFileBasedPhaseswithSessionContext:contextCopy forLocation:locationCopy];
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
        streamName = [locationCopy streamName];
        v22 = 138412290;
        v23 = streamName;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "mergePhase1StoreAtomBatches not successful, removing atomBatchFiles for stream: %@", &v22, 0xCu);
      }

      currentDevice = [locationCopy streamName];
      [(BMStreamCKCRDT *)self mergePhase4RemoveProcessedAtomBatchFilesForStream:currentDevice outAtomBatchFilesRemoved:0];
    }
  }

  else
  {
    currentDevice = __biome_log_for_category();
    if (os_log_type_enabled(currentDevice, OS_LOG_TYPE_FAULT))
    {
      sub_100048AAC();
    }
  }
}

- (BOOL)mergePhase1StoreAtomBatches:(id)batches atomBatchFilenames:(id)filenames sessionContext:(id)context forLocation:(id)location
{
  batchesCopy = batches;
  filenamesCopy = filenames;
  contextCopy = context;
  locationCopy = location;
  v12 = [(BMSyncDatabase *)self->_db locationRowWithLocation:locationCopy];
  db = self->_db;
  v43 = locationCopy;
  siteIdentifier = [locationCopy siteIdentifier];
  v15 = [(BMSyncDatabase *)db highestDeletedLocationForSiteIdentifier:siteIdentifier inStream:self->_syncIdentifier];

  if ([v12 state] != 1)
  {
    if ([v12 state] == 3 || objc_msgSend(v12, "state") == 4)
    {
      siteIdentifier2 = __biome_log_for_category();
      if (os_log_type_enabled(siteIdentifier2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v66 = v12;
        v31 = "Location is not active %@ skipping merge to not resurrect a dead location";
        v32 = siteIdentifier2;
        v33 = 12;
LABEL_22:
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, v31, buf, v33);
      }
    }

    else
    {
      location = [v15 location];
      v37 = [location day];
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

      siteIdentifier2 = __biome_log_for_category();
      if (os_log_type_enabled(siteIdentifier2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v66 = v15;
        v67 = 2112;
        v68 = v43;
        v31 = "Highest deleted location %@ is past incoming location %@";
        v32 = siteIdentifier2;
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
  siteIdentifier2 = [v43 siteIdentifier];
  v47 = objc_opt_new();
  v46 = objc_opt_new();
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  obj = batchesCopy;
  v18 = [obj countByEnumeratingWithState:&v60 objects:v64 count:16];
  if (v18)
  {
    v19 = v18;
    v44 = siteIdentifier2;
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
          selfCopy = self;
          v53 = contextCopy;
          v54 = v44;
          v55 = v47;
          v56 = v46;
          v57 = v45;
          v58 = filenamesCopy;
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
    siteIdentifier2 = v44;
    v12 = v45;
  }

  else
  {
    v30 = 1;
  }

LABEL_30:
  return v30;
}

- (void)mergePhase2PerformRecoveryForLocation:(id)location
{
  locationCopy = location;
  siteIdentifier = [locationCopy siteIdentifier];
  v6 = [(BMStreamCKCRDT *)self readerForSiteIdentifier:siteIdentifier];
  v7 = [(BMSyncDatabase *)self->_db latestCKAtomRowOfType:0 forSiteIdentifier:siteIdentifier inStream:self->_syncIdentifier];
  v8 = [(BMStreamCKCRDT *)self bookmarkForAtomRow:v7];
  v9 = [(BMStreamCKCRDT *)self newEnumeratorStartingAfterBookmark:v8 reader:v6];

  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_1000142AC;
  v19 = sub_1000142BC;
  nextEvent = [v9 nextEvent];
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
    [(BMSyncDatabase *)db atomRowsNotOnDiskReferencingSiteIdentifier:siteIdentifier inStream:syncIdentifier enumerateWithBlock:v12];
    [(BMStreamCKCRDT *)self clearMemoryMappedAtomBatch];
  }

  _Block_object_dispose(&v15, 8);
}

- (void)mergePhase3ApplyAtomsToDiskForLocation:(id)location sessionContext:(id)context
{
  locationCopy = location;
  contextCopy = context;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  if ([locationCopy isEqual:self->_localSiteIdentifier])
  {
    v8 = 0;
  }

  else
  {
    v8 = locationCopy;
  }

  v9 = v8;
  storeConfig = [(BMStreamConfiguration *)self->_streamConfiguration storeConfig];
  v11 = [storeConfig copyWithRemoteName:v9];

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
  v16 = contextCopy;
  v21 = v16;
  selfCopy = self;
  v26 = v29;
  v27 = &v35;
  v17 = v12;
  v23 = v17;
  v28 = &v31;
  v18 = v13;
  v24 = v18;
  v19 = locationCopy;
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

- (BOOL)mergePhase4RemoveProcessedAtomBatchFilesForStream:(id)stream outAtomBatchFilesRemoved:(unint64_t *)removed
{
  streamCopy = stream;
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
  selfCopy = self;
  [(BMSyncDatabase *)db enumerateAtomBatchFilesNotReferencedInCKAtomForStream:streamCopy withBlock:v16];
  if (removed)
  {
    *removed = *(v21 + 6);
  }

  v11 = [(BMSyncDatabase *)self->_db deleteAtomBatchFilesTableRowsNotReferencedInCKAtomForStream:streamCopy];
  if ((v11 & 1) == 0)
  {
    v12 = __biome_log_for_category();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1000490F8();
    }
  }

  v13 = [(BMSyncDatabase *)self->_db deleteAtomsFromCKAtomWithNonExistentAtomBatchFilesForStream:streamCopy];
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