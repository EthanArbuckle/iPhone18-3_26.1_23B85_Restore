@interface BMDistributedSyncManager
+ (id)writeAtomBatchData:(id)data atomBatchVectors:(id)vectors forLocation:(id)location protectionClass:(unint64_t)class sessionContext:(id)context db:(id)db;
- (BMDistributedSyncManager)initWithStreamConfiguration:(id)configuration streamCRDT:(id)t database:(id)database localSiteIdentifier:(id)identifier changeReporter:(id)reporter;
- (id)deletedLocations;
- (unint64_t)handleDeferredDeletedLocationsForStream:(id)stream;
- (void)mergeAtomBatch:(id)batch deletedLocations:(id)locations sessionContext:(id)context;
- (void)updateClockVectorByUnionWithUnseenSiteIdentifiers:(id)identifiers;
@end

@implementation BMDistributedSyncManager

- (BMDistributedSyncManager)initWithStreamConfiguration:(id)configuration streamCRDT:(id)t database:(id)database localSiteIdentifier:(id)identifier changeReporter:(id)reporter
{
  configurationCopy = configuration;
  tCopy = t;
  databaseCopy = database;
  identifierCopy = identifier;
  reporterCopy = reporter;
  v23.receiver = self;
  v23.super_class = BMDistributedSyncManager;
  v18 = [(BMDistributedSyncManager *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_streamConfiguration, configuration);
    objc_storeStrong(&v19->_streamCRDT, t);
    objc_storeStrong(&v19->_db, database);
    v20 = [identifierCopy copy];
    localSiteIdentifier = v19->_localSiteIdentifier;
    v19->_localSiteIdentifier = v20;

    objc_storeStrong(&v19->_changeReporter, reporter);
  }

  return v19;
}

- (void)updateClockVectorByUnionWithUnseenSiteIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v7 = [CKDistributedSiteIdentifier alloc];
  v8 = [(NSString *)self->_localSiteIdentifier dataUsingEncoding:4];
  v9 = [v7 initWithIdentifier:v8];

  v30 = v9;
  [v5 addObject:v9];
  db = self->_db;
  syncIdentifier = [(BMStreamConfiguration *)self->_streamConfiguration syncIdentifier];
  v12 = [(BMSyncDatabase *)db CKAtomRowSiteIdentifiersForStreamIdentifier:syncIdentifier];

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

  allSiteIdentifiers = [identifiersCopy allSiteIdentifiers];
  [v6 unionSet:allSiteIdentifiers];

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
        [identifiersCopy addClockValuesInIndexSet:v29 forSiteIdentifier:v28];

        v27 = v27 + 1;
      }

      while (v25 != v27);
      v25 = [v23 countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v25);
  }
}

+ (id)writeAtomBatchData:(id)data atomBatchVectors:(id)vectors forLocation:(id)location protectionClass:(unint64_t)class sessionContext:(id)context db:(id)db
{
  dataCopy = data;
  vectorsCopy = vectors;
  locationCopy = location;
  contextCopy = context;
  dbCopy = db;
  v18 = [BMDistributedSyncManager atomFileHandleForLocation:locationCopy flags:514 protectionClass:class fileName:0 suffix:@".ORC"];
  attributes = [v18 attributes];
  path = [attributes path];

  if (!v18 || !path)
  {
    v21 = __biome_log_for_category();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_10004BB5C(locationCopy, v21, v24, v25, v26, v27, v28, v29);
    }

    goto LABEL_13;
  }

  v21 = [dbCopy insertLocationIfNotExists:locationCopy withState:2];
  if (([dbCopy addAtomBatchFileNameToAtomBatchFiles:path sessionContext:contextCopy locationRow:v21] & 1) == 0)
  {
    v30 = __biome_log_for_category();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      sub_10004BBC8(path, v30, v31, v32, v33, v34, v35, v36);
    }

    v37 = +[BMPaths syncDirectory];
    v23 = [BMFileManager fileManagerWithDirectAccessToDirectory:v37 cachingOptions:0];

    v63 = 0;
    [v23 removeFileAtPath:path error:&v63];
    goto LABEL_12;
  }

  v58 = vectorsCopy;

  nsFileHandle = [v18 nsFileHandle];
  v62 = 0;
  [nsFileHandle writeData:dataCopy error:&v62];
  v21 = v62;

  if (v21)
  {
    v23 = __biome_log_for_category();
    vectorsCopy = v58;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_10004BC34();
    }

LABEL_12:

LABEL_13:
    v38 = 0;
    goto LABEL_14;
  }

  vectorsCopy = v58;
  if (!v58)
  {
    v21 = 0;
    goto LABEL_33;
  }

  v40 = [BMDistributedSyncManager vectorFileNameFromORCFileName:path];
  v41 = [self atomFileHandleForLocation:locationCopy flags:514 protectionClass:class fileName:v40 suffix:0];
  if (!v41)
  {
    v47 = __biome_log_for_category();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      sub_10004BDC0(locationCopy, v47, v48, v49, v50, v51, v52, v53);
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

  nsFileHandle2 = [v42 nsFileHandle];
  v60 = 0;
  [nsFileHandle2 writeData:v57 error:&v60];
  v21 = v60;

  if (v21)
  {
    v55 = v43;
    v46 = __biome_log_for_category();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      sub_10004BCA0(v42, v21, v46);
    }

    vectorsCopy = v58;
LABEL_31:

    v54 = 0;
    v43 = v55;
    goto LABEL_32;
  }

  v54 = 1;
  vectorsCopy = v58;
LABEL_32:

  if (!v54)
  {
    goto LABEL_13;
  }

LABEL_33:
  v38 = path;
LABEL_14:

  return v38;
}

- (void)mergeAtomBatch:(id)batch deletedLocations:(id)locations sessionContext:(id)context
{
  batchCopy = batch;
  locationsCopy = locations;
  contextCopy = context;
  v10 = __biome_log_for_category();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    *&buf[4] = [batchCopy count];
    *&buf[12] = 2112;
    *&buf[14] = locationsCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "mergeAtomBatches: %lu deletedLocations: %@", buf, 0x16u);
  }

  v57 = batchCopy;

  storeConfig = [(BMStreamConfiguration *)self->_streamConfiguration storeConfig];
  protectionClass = [storeConfig protectionClass];

  selfCopy = self;
  storeConfig2 = [(BMStreamConfiguration *)self->_streamConfiguration storeConfig];
  currentDevice = [storeConfig2 currentDevice];

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  obj = locationsCopy;
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
        if ((v18 & 1) != 0 && [currentDevice canOpenFilesForProtectionClass:protectionClass])
        {
          [(BMStreamCKCRDT *)selfCopy->_streamCRDT handleDeletedLocation:v20 deleteCKRecord:0];
          changeReporter = selfCopy->_changeReporter;
          streamName = [v20 streamName];
          siteIdentifier = [v20 siteIdentifier];
          [(BMSyncChangeReporter *)changeReporter streamUpdatedForStreamName:streamName deviceIdentifier:siteIdentifier error:0];
          v18 = 1;
        }

        else
        {
          streamName = [[BMSyncCRDTLocationRow alloc] initWithLocation:v20 state:5];
          if ([(BMSyncDatabase *)selfCopy->_db upsertLocation:streamName])
          {
            v18 = 0;
            goto LABEL_17;
          }

          siteIdentifier = __biome_log_for_category();
          if (os_log_type_enabled(siteIdentifier, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *&buf[4] = v20;
            _os_log_error_impl(&_mh_execute_header, siteIdentifier, OS_LOG_TYPE_ERROR, "unable to update deleted location: %@ to BMSyncCRDTLocationStatePendingMergeDelete", buf, 0xCu);
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
    streamIdentifier = [(BMStreamConfiguration *)selfCopy->_streamConfiguration streamIdentifier];
    *buf = 134218242;
    *&buf[4] = v26;
    *&buf[12] = 2112;
    *&buf[14] = streamIdentifier;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Merging %lu atom batches into %@", buf, 0x16u);
  }

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v58 = v57;
  v28 = [v58 countByEnumeratingWithState:&v63 objects:v77 count:16];
  v29 = contextCopy;
  if (v28)
  {
    v30 = v28;
    v31 = *v64;
    v52 = selfCopy;
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
          mergeableValueID = [v35 mergeableValueID];
          v41 = [(BMStreamCRDTLocation *)v39 initWithCKMergeableValueID:mergeableValueID];

          if (v41)
          {
            vectors = [v35 vectors];
            storeConfig3 = [(BMStreamConfiguration *)selfCopy->_streamConfiguration storeConfig];
            protectionClass2 = [storeConfig3 protectionClass];
            v45 = [(BMDistributedSyncManager *)selfCopy db];
            v46 = protectionClass2;
            v29 = contextCopy;
            v47 = [BMDistributedSyncManager writeAtomBatchData:v33 atomBatchVectors:vectors forLocation:v41 protectionClass:v46 sessionContext:contextCopy db:v45];

            selfCopy = v52;
            if (v47)
            {
              streamCRDT = v52->_streamCRDT;
              v72 = v35;
              v49 = [NSArray arrayWithObjects:&v72 count:1];
              v71 = v47;
              v50 = [NSArray arrayWithObjects:&v71 count:1];
              v51 = streamCRDT;
              v29 = contextCopy;
              [(BMStreamCKCRDT *)v51 mergeAtomBatches:v49 atomBatchFilenames:v50 sessionContext:contextCopy forLocation:v41];
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

- (unint64_t)handleDeferredDeletedLocationsForStream:(id)stream
{
  streamCopy = stream;
  storeConfig = [(BMStreamConfiguration *)self->_streamConfiguration storeConfig];
  protectionClass = [storeConfig protectionClass];

  storeConfig2 = [(BMStreamConfiguration *)self->_streamConfiguration storeConfig];
  currentDevice = [storeConfig2 currentDevice];

  [(BMSyncDatabase *)self->_db locationsWithState:5 stream:streamCopy];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = v25 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v10)
  {
    v11 = v10;
    v21 = streamCopy;
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
        if (![currentDevice canOpenFilesForProtectionClass:protectionClass])
        {
          streamCopy = v21;
          v19 = 2;
          goto LABEL_12;
        }

        streamCRDT = [(BMDistributedSyncManager *)self streamCRDT];
        [streamCRDT handleDeletedLocation:v14 deleteCKRecord:0];

        changeReporter = [(BMDistributedSyncManager *)self changeReporter];
        streamName = [v14 streamName];
        siteIdentifier = [v14 siteIdentifier];
        [changeReporter streamUpdatedForStreamName:streamName deviceIdentifier:siteIdentifier error:0];
      }

      v11 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }

    v19 = 1;
    streamCopy = v21;
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
  syncIdentifier = [(BMStreamConfiguration *)self->_streamConfiguration syncIdentifier];
  v4 = [(BMSyncDatabase *)self->_db highestDeletedLocationsForStream:syncIdentifier];

  return v4;
}

@end