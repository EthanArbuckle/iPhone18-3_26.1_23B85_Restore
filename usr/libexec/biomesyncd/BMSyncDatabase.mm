@interface BMSyncDatabase
+ (id)createDatabaseForAccount:(id)a3 queue:(id)a4;
+ (id)createPrimaryDatabaseWithQueue:(id)a3;
+ (id)primaryDatabasePath;
+ (id)primaryDatabaseWALPath;
+ (void)enumerateAccountSpecificDatabasesWithBlock:(id)a3;
- (BMSyncDatabase)initWithPath:(id)a3 options:(unint64_t)a4 queue:(id)a5;
- (BMSyncDatabase)initWithQueue:(id)a3;
- (BOOL)_tryOpen:(unint64_t)a3;
- (BOOL)addAtomBatchFileNameToAtomBatchFiles:(id)a3 sessionContext:(id)a4 locationRow:(id)a5;
- (BOOL)addCKAtomRow:(id)a3 inStream:(id)a4;
- (BOOL)areAtomBatchFileNameRowsPresent;
- (BOOL)ckRecordExists:(id)a3 zoneName:(id)a4 recordType:(unint64_t)a5;
- (BOOL)ckZoneExists:(id)a3;
- (BOOL)ckZoneSetZoneVersionUUID:(id)a3 forZoneName:(id)a4;
- (BOOL)clearCKMergeableRecordValueServerMergeableValuesForRecordName:(id)a3 zoneName:(id)a4;
- (BOOL)clearCKMergeableRecordValueServerMergeableValuesForZoneName:(id)a3;
- (BOOL)clearCKRecordLocalMergeableValueAndSetToSyncForZone:(id)a3;
- (BOOL)containsCKAtomRowWithSegment:(id)a3 inStream:(id)a4;
- (BOOL)containsCKAtomRowWithTimestamp:(id)a3 inStream:(id)a4;
- (BOOL)containsCKAtomRowWithTimestamp:(id)a3 inStream:(id)a4 onDisk:(BOOL)a5;
- (BOOL)deleteAllAtomsAtOrBeforeLocation:(id)a3;
- (BOOL)deleteAtomBatchFilesTableRowsNotReferencedInCKAtomForStream:(id)a3;
- (BOOL)deleteAtomsFromCKAtomWithNonExistentAtomBatchFilesForStream:(id)a3;
- (BOOL)deleteRowsWithAtomBatchFilename:(id)a3;
- (BOOL)disableAllCKSyncRecordsForSite:(id)a3 stream:(id)a4;
- (BOOL)enableAllCKSyncRecordsPreviouslyDisabledForSite:(id)a3 stream:(id)a4;
- (BOOL)getLatestTombstoneBookmarkForSiteIdentifier:(id)a3 inStream:(id)a4 segmentName:(id *)a5 segmentOffset:(unint64_t *)a6;
- (BOOL)isAtomBatchFileNamePresent:(id)a3;
- (BOOL)migration_Schema20ToSchema21;
- (BOOL)migration_Schema31ToSchema32;
- (BOOL)migration_StarSkySchema11ToSydRoSchema12;
- (BOOL)open;
- (BOOL)removeAllDeletedLocationsBeforeHighestDeletedLocation:(id)a3;
- (BOOL)resetCKRecordsMetaDataAndSetToSyncForZone:(id)a3;
- (BOOL)saveCKMergeableRecordValueRecordName:(id)a3 zoneName:(id)a4 mergeableRecordValueData:(id)a5;
- (BOOL)saveCKRecordHighestDeletedLocationRow:(id)a3 recordName:(id)a4 zoneName:(id)a5 recordExists:(BOOL)a6;
- (BOOL)saveCKRecordLocalMergeableValue:(id)a3 recordName:(id)a4 zoneName:(id)a5 locationRow:(id)a6;
- (BOOL)saveCKRecordServerMergeableValue:(id)a3 recordName:(id)a4 zoneName:(id)a5 locationRow:(id)a6;
- (BOOL)saveLatestTombstoneBookmark:(id)a3 forSiteIdentifier:(id)a4 inStream:(id)a5;
- (BOOL)setLastSyncDate:(id)a3 forDeviceWithIdentifier:(id)a4;
- (BOOL)updateAllLocationsAtOrBefore:(id)a3 state:(unint64_t)a4;
- (BOOL)updateCKAtomRow:(id)a3 inStream:(id)a4;
- (BOOL)updateLocationState:(unint64_t)a3 forLocation:(id)a4;
- (BOOL)upsertCKRecordWithLocation:(id)a3 inStream:(id)a4;
- (BOOL)upsertLocation:(id)a3;
- (BOOL)vacuumWithShouldContinueBlock:(id)a3;
- (NSDate)dateOfLastVacuum;
- (NSDate)lastCloudKitSyncAttemptDate;
- (NSDate)lastCloudKitSyncDate;
- (NSDate)lastRapportSyncAttemptDate;
- (NSDate)lastRapportSyncDate;
- (NSUUID)sharedSyncGeneration;
- (id)CKAtomRowSiteIdentifiers;
- (id)CKAtomRowSiteIdentifiersForStreamIdentifier:(id)a3;
- (id)activeLocationsInClockVector:(id)a3 inStream:(id)a4 error:(id *)a5;
- (id)allPeers;
- (id)ckAtomRowForAtomWithBookmark:(id)a3 type:(unint64_t)a4 forSiteIdentifier:(id)a5 inStream:(id)a6;
- (id)ckAtomRowWithTimestamp:(id)a3 inStream:(id)a4;
- (id)ckRecordForRecordName:(id)a3 zoneName:(id)a4 recordType:(unint64_t)a5;
- (id)ckRecordsToSyncToCloudKitForZone:(id)a3;
- (id)ckZoneForZoneName:(id)a3;
- (id)computeHighestLocationToDeleteUpToBookmark:(id)a3 forSiteIdentifier:(id)a4 inStream:(id)a5 offsetsIncrease:(BOOL)a6;
- (id)createCKRecordFromRecordID:(id)a3 newRecord:(BOOL *)a4 recordType:(unint64_t)a5;
- (id)deviceWithIdentifier:(id)a3;
- (id)gatherAllCKSyncRecordRecordsToBeDeleted;
- (id)getSystemFieldsDataForRecordName:(id)a3 zoneName:(id)a4 recordType:(unint64_t)a5;
- (id)highestDeletedLocationForSiteIdentifier:(id)a3 inStream:(id)a4;
- (id)highestDeletedLocationsForStream:(id)a3;
- (id)highestLocationWithBufferedAtomsOlderThan:(double)a3 forSiteIdentifier:(id)a4 inStream:(id)a5;
- (id)insertLocationIfNotExists:(id)a3 withState:(unint64_t)a4;
- (id)lastSyncDateFromAnyDevice;
- (id)lastSyncDateOfDeviceWithIdentifier:(id)a3;
- (id)latestCKAtomRowForSiteIdentifier:(id)a3 inStream:(id)a4;
- (id)latestCKAtomRowOfType:(unint64_t)a3 forSiteIdentifier:(id)a4 inStream:(id)a5;
- (id)latestDistributedTimestampForSiteIdentifier:(id)a3 inStream:(id)a4;
- (id)legacyTimestampClockVectorForStreamName:(id)a3;
- (id)localDevice;
- (id)locationRowWithLocation:(id)a3;
- (id)locationRowWithLocationID:(id)a3;
- (id)locationsWithState:(unint64_t)a3;
- (id)locationsWithState:(unint64_t)a3 stream:(id)a4;
- (id)previousLocationRowBeforeLocationRow:(id)a3;
- (id)rangeClockVectorForStreamName:(id)a3;
- (id)recordFromSystemFieldsData:(id)a3;
- (id)stateVectorForLocationRow:(id)a3;
- (id)valueForMetadataKey:(id)a3;
- (int)CRDTLocationCount;
- (int)ckAtomCount;
- (unint64_t)_numPagesToVacuum;
- (unint64_t)_sizeOfFileInKilobytes:(id)a3;
- (unint64_t)ckRecordCountForRecordType:(unint64_t)a3;
- (unint64_t)countAtomMergeResultRecords;
- (unint64_t)databaseSizeInKilobytes;
- (unint64_t)numRowsInTable:(id)a3;
- (unint64_t)sizeOfTableInKilobytes:(id)a3;
- (unint64_t)state;
- (unint64_t)walSizeInKilobytes;
- (void)atomRowsInTimestampClockVector:(id)a3 forLocation:(id)a4 inStream:(id)a5 enumerateWithBlock:(id)a6;
- (void)atomRowsNotOnDiskReferencingSiteIdentifier:(id)a3 inStream:(id)a4 enumerateWithBlock:(id)a5;
- (void)atomsAtOrBeforeLocation:(id)a3 ofType:(unint64_t)a4 enumerateWithBlock:(id)a5;
- (void)clearCKSyncEngineMetaData;
- (void)clearCachedStatements;
- (void)close;
- (void)compactAndDeleteSessionLogs;
- (void)computeAggregatedSessionLogsWithHandlerBlock:(id)a3;
- (void)deleteAllCKRecordsInZone:(id)a3;
- (void)deleteCKRecordAtLocation:(id)a3;
- (void)deleteCKRecordsAtOrBeforeLocation:(id)a3;
- (void)deleteCKRecordsForStreamName:(id)a3;
- (void)disableStatementCachingForBlock:(id)a3;
- (void)enforceMaxSessionLogPrunePolicy;
- (void)enumerateAtomBatchFilesNotReferencedInCKAtomForStream:(id)a3 withBlock:(id)a4;
- (void)enumerateAtomBatchFilesReferencedInCKAtomForStream:(id)a3 withBlock:(id)a4;
- (void)enumerateCKSyncRecordRecordsSetForDeletingUsingBlock:(id)a3;
- (void)enumerateMergeableRecordValuesForRecordName:(id)a3 zoneName:(id)a4 withBlock:(id)a5;
- (void)enumerateRecordsWithBlock:(id)a3;
- (void)enumerateZonesWithBlock:(id)a3;
- (void)markCKRecordsAtOrBeforeLocationToBeDeletedOnSync:(id)a3;
- (void)recordAtomMergeResult:(unint64_t)a3 inStream:(id)a4 sessionID:(id)a5 messageID:(unint64_t)a6 ownerSite:(id)a7 originatingSite:(id)a8 eventCreatedAt:(double)a9;
- (void)recordSessionEnd:(id)a3 timeSincePreviousSync:(double)a4;
- (void)resetMetadataForRecord:(id)a3 zoneName:(id)a4;
- (void)runMetricsCollectionTask:(id)a3;
- (void)runVacuumingTask:(id)a3;
- (void)saveSystemFieldsDataForRecord:(id)a3 syncToCloudKit:(id)a4 recordType:(unint64_t)a5 crdtDeleted:(id)a6;
- (void)setDateOfLastVacuum:(id)a3;
- (void)setLastCloudKitSyncAttemptDate:(id)a3;
- (void)setLastCloudKitSyncDate:(id)a3;
- (void)setLastRapportSyncAttemptDate:(id)a3;
- (void)setLastRapportSyncDate:(id)a3;
- (void)setName:(id)a3;
- (void)setSharedSyncGeneration:(id)a3;
- (void)setState:(unint64_t)a3 error:(id)a4;
- (void)setState:(unint64_t)a3 errorFormat:(id)a4;
- (void)updateAllCKRecordsAtOrBeforeLocationToBeDeletedOnSync:(id)a3;
@end

@implementation BMSyncDatabase

- (id)localDevice
{
  queue = self->_queue;
  if (queue)
  {
    dispatch_assert_queue_V2(queue);
  }

  v4 = [(_bmFMDatabase *)self->_fmdb SELECT_FROM:@"DevicePeer" COLUMNS:&off_10007EC58 WHERE:&off_10007EC70];
  if ([v4 next])
  {
    v5 = [[BMSyncDevicePeer alloc] initWithFMResultSet:v4];
  }

  else
  {
    v5 = 0;
  }

  [v4 close];

  return v5;
}

- (id)allPeers
{
  queue = self->_queue;
  if (queue)
  {
    dispatch_assert_queue_V2(queue);
  }

  v4 = objc_opt_new();
  v5 = [(_bmFMDatabase *)self->_fmdb SELECT_FROM:@"DevicePeer" COLUMNS:&off_10007ECD0 WHERE:0];
  if ([v5 next])
  {
    do
    {
      v6 = [[BMSyncDevicePeer alloc] initWithFMResultSet:v5];
      [v4 addObject:v6];
    }

    while (([v5 next] & 1) != 0);
  }

  [v5 close];

  return v4;
}

- (BOOL)areAtomBatchFileNameRowsPresent
{
  queue = self->_queue;
  if (queue)
  {
    dispatch_assert_queue_V2(queue);
  }

  v4 = [(_bmFMDatabase *)self->_fmdb SELECT_FROM:@"AtomBatchFiles" COLUMNS:&off_10007EBF8 WHERE:0 ORDER_BY:0 LIMIT:&off_10007F360];
  v5 = [v4 next];
  [v4 close];

  return v5;
}

- (id)locationRowWithLocation:(id)a3
{
  if (a3)
  {
    fmdb = self->_fmdb;
    v13[0] = @"stream = ?";
    v4 = a3;
    v5 = [v4 streamName];
    v13[1] = v5;
    v13[2] = @" AND site = ?";
    v6 = [v4 siteIdentifier];
    v13[3] = v6;
    v13[4] = @" AND day = ?";
    v7 = [v4 day];

    [v7 timeIntervalSinceReferenceDate];
    v8 = [NSNumber numberWithDouble:?];
    v13[5] = v8;
    v9 = [NSArray arrayWithObjects:v13 count:6];
    v10 = [(_bmFMDatabase *)fmdb SELECT_FROM:@"CRDTLocation" COLUMNS:&off_10007EAC0 WHERE:v9];

    if ([v10 next])
    {
      v11 = [[BMSyncCRDTLocationRow alloc] initWithFMResultSet:v10 modifier:0];
    }

    else
    {
      v11 = 0;
    }

    [v10 close];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)locationRowWithLocationID:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    fmdb = self->_fmdb;
    v11[0] = @"id = ?";
    v11[1] = v4;
    v7 = [NSArray arrayWithObjects:v11 count:2];
    v8 = [(_bmFMDatabase *)fmdb SELECT_FROM:@"CRDTLocation" COLUMNS:&off_10007EAD8 WHERE:v7];

    if ([v8 next])
    {
      v9 = [[BMSyncCRDTLocationRow alloc] initWithFMResultSet:v8 modifier:0];
    }

    else
    {
      v9 = 0;
    }

    [v8 close];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)updateLocationState:(unint64_t)a3 forLocation:(id)a4
{
  v6 = a4;
  v7 = __biome_log_for_category();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 134218242;
    v14 = a3;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "updateLocationState: %lu forLocation:%@", &v13, 0x16u);
  }

  v8 = [BMSyncCRDTLocationRow alloc];
  v9 = [v6 location];
  v10 = -[BMSyncCRDTLocationRow initWithLocation:state:primaryKey:](v8, "initWithLocation:state:primaryKey:", v9, a3, [v6 primaryKey]);

  v11 = [(BMSyncDatabase *)self upsertLocation:v10];
  return v11;
}

- (BOOL)updateAllLocationsAtOrBefore:(id)a3 state:(unint64_t)a4
{
  v6 = a3;
  v7 = __biome_log_for_category();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v24 = v6;
    v25 = 2048;
    v26 = a4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "updateAllLocationsAtOrBefore:%@ to state %lu", buf, 0x16u);
  }

  fmdb = self->_fmdb;
  v21 = @"state";
  v19 = [NSNumber numberWithUnsignedInteger:a4];
  v22 = v19;
  v9 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
  v20[0] = @"stream = ?";
  v18 = [v6 location];
  v10 = [v18 streamName];
  v20[1] = v10;
  v20[2] = @" AND site = ?";
  v11 = [v6 location];
  v12 = [v11 siteIdentifier];
  v20[3] = v12;
  v20[4] = @" AND day <= ?";
  v13 = [v6 location];
  v14 = [v13 day];
  [v14 timeIntervalSinceReferenceDate];
  v15 = [NSNumber numberWithDouble:?];
  v20[5] = v15;
  v16 = [NSArray arrayWithObjects:v20 count:6];
  LOBYTE(fmdb) = [(_bmFMDatabase *)fmdb UPDATE:@"CRDTLocation" SET:v9 WHERE:v16];

  return fmdb;
}

- (id)insertLocationIfNotExists:(id)a3 withState:(unint64_t)a4
{
  v6 = a3;
  v7 = [(BMSyncDatabase *)self locationRowWithLocation:v6];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    fmdb = self->_fmdb;
    v19[0] = @"stream";
    v10 = [v6 streamName];
    v20[0] = v10;
    v19[1] = @"site";
    v11 = [v6 siteIdentifier];
    v20[1] = v11;
    v19[2] = @"day";
    v12 = [v6 day];
    [v12 timeIntervalSinceReferenceDate];
    v13 = [NSNumber numberWithDouble:?];
    v20[2] = v13;
    v19[3] = @"state";
    v14 = [NSNumber numberWithUnsignedInteger:a4];
    v20[3] = v14;
    v15 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:4];
    [(_bmFMDatabase *)fmdb INSERT_INTO:@"CRDTLocation" VALUES:v15];

    v9 = [[BMSyncCRDTLocationRow alloc] initWithLocation:v6 state:a4 primaryKey:[(_bmFMDatabase *)self->_fmdb lastInsertRowId]];
  }

  v16 = v9;

  return v16;
}

- (BOOL)upsertLocation:(id)a3
{
  v4 = a3;
  v5 = [v4 location];
  v6 = [(BMSyncDatabase *)self locationRowWithLocation:v5];
  fmdb = self->_fmdb;
  if (v6)
  {
    v25[0] = @"stream";
    [v5 streamName];
    v8 = v21 = v6;
    v26[0] = v8;
    v25[1] = @"site";
    v9 = [v5 siteIdentifier];
    v26[1] = v9;
    v25[2] = @"day";
    v10 = [v5 day];
    [v10 timeIntervalSinceReferenceDate];
    v11 = [NSNumber numberWithDouble:?];
    v26[2] = v11;
    v25[3] = @"state";
    v12 = [v4 state];

    v13 = [NSNumber numberWithUnsignedInteger:v12];
    v26[3] = v13;
    v14 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:4];
    v24[0] = @"id = ?";
    v15 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v21 primaryKey]);
    v24[1] = v15;
    v16 = [NSArray arrayWithObjects:v24 count:2];
    v17 = [(_bmFMDatabase *)fmdb UPDATE:@"CRDTLocation" SET:v14 WHERE:v16];

    v18 = v8;
    v6 = v21;
  }

  else
  {
    v22[0] = @"stream";
    v18 = [v5 streamName];
    v23[0] = v18;
    v22[1] = @"site";
    v9 = [v5 siteIdentifier];
    v23[1] = v9;
    v22[2] = @"day";
    v10 = [v5 day];
    [v10 timeIntervalSinceReferenceDate];
    v11 = [NSNumber numberWithDouble:?];
    v23[2] = v11;
    v22[3] = @"state";
    v19 = [v4 state];

    v13 = [NSNumber numberWithUnsignedInteger:v19];
    v23[3] = v13;
    v14 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:4];
    v17 = [(_bmFMDatabase *)fmdb INSERT_INTO:@"CRDTLocation" VALUES:v14];
  }

  return v17;
}

- (BOOL)removeAllDeletedLocationsBeforeHighestDeletedLocation:(id)a3
{
  v4 = [a3 location];
  fmdb = self->_fmdb;
  v14[0] = @"stream = ?";
  v6 = [v4 streamName];
  v14[1] = v6;
  v14[2] = @" AND site = ?";
  v7 = [v4 siteIdentifier];
  v14[3] = v7;
  v14[4] = @" AND state = ?";
  v14[5] = &off_10007F330;
  v14[6] = @" AND day < ?";
  v8 = [v4 day];
  [v8 timeIntervalSinceReferenceDate];
  v9 = [NSNumber numberWithDouble:?];
  v14[7] = v9;
  v14[8] = CFSTR(" AND NOT EXISTS (SELECT 1 FROM CKAtom WHERE stream = ? ");
  v10 = [v4 streamName];
  v14[9] = v10;
  v14[10] = @" AND site = ?";
  v11 = [v4 siteIdentifier];
  v14[11] = v11;
  v14[12] = @" AND location_id = id");
  v14[13] = &stru_100079C10;
  v14[14] = @" AND NOT EXISTS (SELECT location_id FROM CKRecord WHERE location_id = id)";
  v14[15] = &stru_100079C10;
  v12 = [NSArray arrayWithObjects:v14 count:16];
  LOBYTE(fmdb) = [(_bmFMDatabase *)fmdb DELETE_FROM:@"CRDTLocation" WHERE:v12];

  return fmdb;
}

- (id)previousLocationRowBeforeLocationRow:(id)a3
{
  fmdb = self->_fmdb;
  v16[0] = @"stream = ?";
  v4 = a3;
  v5 = [v4 location];
  v6 = [v5 streamName];
  v16[1] = v6;
  v16[2] = @" AND site = ?";
  v7 = [v4 location];
  v8 = [v7 siteIdentifier];
  v16[3] = v8;
  v16[4] = @" AND day < ?";
  v9 = [v4 location];

  v10 = [v9 day];
  [v10 timeIntervalSinceReferenceDate];
  v11 = [NSNumber numberWithDouble:?];
  v16[5] = v11;
  v12 = [NSArray arrayWithObjects:v16 count:6];
  v13 = [(_bmFMDatabase *)fmdb SELECT_FROM:@"CRDTLocation" COLUMNS:&off_10007EAF0 WHERE:v12 ORDER_BY:&off_10007EB08 LIMIT:&off_10007F348];

  if ([v13 next])
  {
    v14 = [[BMSyncCRDTLocationRow alloc] initWithFMResultSet:v13 modifier:0];
  }

  else
  {
    v14 = 0;
  }

  [v13 close];

  return v14;
}

- (id)locationsWithState:(unint64_t)a3
{
  fmdb = self->_fmdb;
  v11[0] = @"state = ?";
  v4 = [NSNumber numberWithUnsignedInteger:a3];
  v11[1] = v4;
  v5 = [NSArray arrayWithObjects:v11 count:2];
  v6 = [(_bmFMDatabase *)fmdb SELECT_FROM:@"CRDTLocation" COLUMNS:&off_10007EB20 WHERE:v5 ORDER_BY:&off_10007EB38 LIMIT:0];

  v7 = objc_opt_new();
  if ([v6 next])
  {
    do
    {
      v8 = [[BMSyncCRDTLocationRow alloc] initWithFMResultSet:v6 modifier:0];
      v9 = [(BMSyncCRDTLocationRow *)v8 location];
      [v7 addObject:v9];
    }

    while (([v6 next] & 1) != 0);
  }

  [v6 close];

  return v7;
}

- (id)locationsWithState:(unint64_t)a3 stream:(id)a4
{
  v6 = a4;
  fmdb = self->_fmdb;
  v15[0] = @"state = ? AND ";
  v8 = [NSNumber numberWithUnsignedInteger:a3];
  v15[1] = v8;
  v15[2] = @"stream = ?";
  v15[3] = v6;
  v9 = [NSArray arrayWithObjects:v15 count:4];
  v10 = [(_bmFMDatabase *)fmdb SELECT_FROM:@"CRDTLocation" COLUMNS:&off_10007EB50 WHERE:v9 ORDER_BY:&off_10007EB68 LIMIT:0];

  v11 = objc_opt_new();
  if ([v10 next])
  {
    do
    {
      v12 = [[BMSyncCRDTLocationRow alloc] initWithFMResultSet:v10 modifier:0];
      v13 = [(BMSyncCRDTLocationRow *)v12 location];
      [v11 addObject:v13];
    }

    while (([v10 next] & 1) != 0);
  }

  [v10 close];

  return v11;
}

- (id)highestDeletedLocationsForStream:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  fmdb = self->_fmdb;
  v12[0] = CFSTR("day = (select max(day) from CRDTLocation i where i.stream = ? and i.site=CRDTLocation.site");
  v12[1] = v4;
  v12[2] = @" and state = ?");
  v12[3] = &off_10007F330;
  v12[4] = @" AND stream = ?";
  v12[5] = v4;
  v7 = [NSArray arrayWithObjects:v12 count:6];
  v8 = [(_bmFMDatabase *)fmdb SELECT_FROM:@"CRDTLocation" COLUMNS:&off_10007EB80 WHERE:v7];

  if ([v8 next])
  {
    do
    {
      v9 = [[BMSyncCRDTLocationRow alloc] initWithFMResultSet:v8 modifier:0];
      v10 = [(BMSyncCRDTLocationRow *)v9 location];
      [v5 addObject:v10];
    }

    while (([v8 next] & 1) != 0);
  }

  [v8 close];

  return v5;
}

- (id)highestDeletedLocationForSiteIdentifier:(id)a3 inStream:(id)a4
{
  v6 = a3;
  v7 = a4;
  fmdb = self->_fmdb;
  v13[0] = @"stream = ?";
  v13[1] = v7;
  v13[2] = @" AND site = ?";
  v13[3] = v6;
  v13[4] = @" AND state = ? ";
  v13[5] = &off_10007F330;
  v9 = [NSArray arrayWithObjects:v13 count:6];
  v10 = [(_bmFMDatabase *)fmdb SELECT_FROM:@"CRDTLocation" COLUMNS:&off_10007EB98 WHERE:v9 ORDER_BY:&off_10007EBB0 LIMIT:&off_10007F348];

  if ([v10 next])
  {
    v11 = [[BMSyncCRDTLocationRow alloc] initWithFMResultSet:v10 modifier:0];
  }

  else
  {
    v11 = 0;
  }

  [v10 close];

  return v11;
}

- (int)CRDTLocationCount
{
  queue = self->_queue;
  if (queue)
  {
    dispatch_assert_queue_V2(queue);
  }

  v4 = [(_bmFMDatabase *)self->_fmdb SELECT_FROM:@"CRDTLocation" COLUMNS:&off_10007EBC8 WHERE:0];
  if ([v4 next])
  {
    v5 = [v4 intForColumnIndex:0];
  }

  else
  {
    v5 = 0;
  }

  [v4 close];

  return v5;
}

- (BOOL)addAtomBatchFileNameToAtomBatchFiles:(id)a3 sessionContext:(id)a4 locationRow:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  queue = self->_queue;
  if (queue)
  {
    dispatch_assert_queue_V2(queue);
  }

  fmdb = self->_fmdb;
  v27[0] = v8;
  v13 = [v9 sessionID];
  v14 = v13;
  v15 = @"no session id";
  if (v13)
  {
    v15 = v13;
  }

  v27[1] = v15;
  v26[2] = @"message_id";
  v16 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v9 messageID]);
  v27[2] = v16;
  v26[3] = @"originating_site_identifier";
  v17 = [v9 originatingSiteIdentifier];
  v18 = v17;
  v19 = @"no siteID";
  if (v17)
  {
    v19 = v17;
  }

  v27[3] = v19;
  v26[4] = @"location_id";
  v20 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v10 primaryKey]);
  v27[4] = v20;
  v21 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:5];
  v22 = [(_bmFMDatabase *)fmdb INSERT_INTO:@"AtomBatchFiles" VALUES:v21];

  if ((v22 & 1) == 0)
  {
    v23 = __biome_log_for_category();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      sub_1000478D8((&self->super.isa + v25), v23);
    }
  }

  return v22;
}

- (BOOL)isAtomBatchFileNamePresent:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  if (queue)
  {
    dispatch_assert_queue_V2(queue);
  }

  fmdb = self->_fmdb;
  v10[0] = @"atom_batch_filename = ?";
  v10[1] = v4;
  v7 = [NSArray arrayWithObjects:v10 count:2];
  v8 = [(_bmFMDatabase *)fmdb SELECT_FROM:@"AtomBatchFiles" COLUMNS:&off_10007EBE0 WHERE:v7];

  LOBYTE(fmdb) = [v8 next];
  [v8 close];

  return fmdb;
}

- (void)enumerateAtomBatchFilesNotReferencedInCKAtomForStream:(id)a3 withBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = __biome_log_for_category();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v17 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "enumerateAtomBatchFilesNotReferencedInCKAtomForStream: %@", buf, 0xCu);
  }

  queue = self->_queue;
  if (queue)
  {
    dispatch_assert_queue_V2(queue);
  }

  fmdb = self->_fmdb;
  v15[0] = @"INSTR(atom_batch_filename, ?) > 0 ";
  v15[1] = v6;
  v15[2] = @"AND NOT EXISTS (SELECT ref_atom_batch_filename FROM CKAtom WHERE ref_atom_batch_filename = atom_batch_filename AND stream = ? LIMIT 1)";
  v15[3] = v6;
  v11 = [NSArray arrayWithObjects:v15 count:4];
  v12 = [(_bmFMDatabase *)fmdb SELECT_FROM:@"AtomBatchFiles" COLUMNS:&off_10007EC10 WHERE:v11];

  do
  {
    if (![v12 next])
    {
      break;
    }

    v13 = [v12 stringForColumnIndex:0];
    buf[0] = 0;
    v7[2](v7, v13, buf);
    v14 = buf[0];
  }

  while (v14 != 1);
  [v12 close];
}

- (void)enumerateAtomBatchFilesReferencedInCKAtomForStream:(id)a3 withBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  if (queue)
  {
    dispatch_assert_queue_V2(queue);
  }

  fmdb = self->_fmdb;
  v17[0] = @"EXISTS (SELECT DISTINCT ref_atom_batch_filename FROM CKAtom WHERE ref_atom_batch_filename = atom_batch_filename AND stream = ?)";
  v17[1] = v6;
  v10 = [NSArray arrayWithObjects:v17 count:2];
  v11 = [(_bmFMDatabase *)fmdb SELECT_FROM:@"AtomBatchFiles" COLUMNS:&off_10007EC28 WHERE:v10 ORDER_BY:&off_10007EC40 LIMIT:0];

  do
  {
    if (![v11 next])
    {
      break;
    }

    v12 = [v11 stringForColumnIndex:0];
    v13 = objc_opt_new();
    v14 = [v11 stringForColumnIndex:1];
    [v13 setSessionID:v14];

    [v13 setMessageID:{objc_msgSend(v11, "intForColumnIndex:", 2)}];
    v15 = [v11 stringForColumnIndex:3];
    [v13 setOriginatingSiteIdentifier:v15];

    v16 = 0;
    v7[2](v7, v12, v13, &v16);
    LODWORD(v15) = v16;
  }

  while (v15 != 1);
  [v11 close];
}

- (BOOL)deleteAtomBatchFilesTableRowsNotReferencedInCKAtomForStream:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  if (queue)
  {
    dispatch_assert_queue_V2(queue);
  }

  fmdb = self->_fmdb;
  v9[0] = @"INSTR(atom_batch_filename, ?) > 0 ";
  v9[1] = v4;
  v9[2] = @"AND NOT EXISTS (SELECT ref_atom_batch_filename FROM CKAtom WHERE ref_atom_batch_filename = atom_batch_filename AND stream = ? LIMIT 1)";
  v9[3] = v4;
  v7 = [NSArray arrayWithObjects:v9 count:4];
  LOBYTE(fmdb) = [(_bmFMDatabase *)fmdb DELETE_FROM:@"AtomBatchFiles" WHERE:v7];

  return fmdb;
}

- (id)deviceWithIdentifier:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  if (queue)
  {
    dispatch_assert_queue_V2(queue);
  }

  fmdb = self->_fmdb;
  v11[0] = @"device_identifier = ?";
  v11[1] = v4;
  v7 = [NSArray arrayWithObjects:v11 count:2];
  v8 = [(_bmFMDatabase *)fmdb SELECT_FROM:@"DevicePeer" COLUMNS:&off_10007EC88 WHERE:v7];

  if ([v8 next])
  {
    v9 = [[BMSyncDevicePeer alloc] initWithFMResultSet:v8];
  }

  else
  {
    v9 = 0;
  }

  [v8 close];

  return v9;
}

- (id)lastSyncDateFromAnyDevice
{
  queue = self->_queue;
  if (queue)
  {
    dispatch_assert_queue_V2(queue);
  }

  v4 = [(_bmFMDatabase *)self->_fmdb SELECT_FROM:@"DevicePeer" COLUMNS:&off_10007ECA0 WHERE:0];
  v5 = 0;
  if ([v4 next])
  {
    v5 = [v4 dateForColumnIndex:0];
  }

  [v4 close];

  return v5;
}

- (id)lastSyncDateOfDeviceWithIdentifier:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  if (queue)
  {
    dispatch_assert_queue_V2(queue);
  }

  fmdb = self->_fmdb;
  v11[0] = @"device_identifier = ?";
  v11[1] = v4;
  v7 = [NSArray arrayWithObjects:v11 count:2];
  v8 = [(_bmFMDatabase *)fmdb SELECT_FROM:@"DevicePeer" COLUMNS:&off_10007ECB8 WHERE:v7];

  if ([v8 next])
  {
    v9 = [v8 dateForColumnIndex:0];
  }

  else
  {
    v9 = 0;
  }

  [v8 close];

  return v9;
}

- (BOOL)setLastSyncDate:(id)a3 forDeviceWithIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  if (queue)
  {
    dispatch_assert_queue_V2(queue);
  }

  fmdb = self->_fmdb;
  v14 = @"last_sync_date";
  v15 = v6;
  v10 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  v13[0] = @"device_identifier = ?";
  v13[1] = v7;
  v11 = [NSArray arrayWithObjects:v13 count:2];
  LOBYTE(fmdb) = [(_bmFMDatabase *)fmdb UPDATE:@"DevicePeer" SET:v10 WHERE:v11];

  return fmdb;
}

- (void)runMetricsCollectionTask:(id)a3
{
  v4 = a3;
  v6 = [[BMSyncSessionMetricsAggregator alloc] initWithDatabase:self activity:v4];
  [(BMSyncSessionMetricsAggregator *)v6 enforceMaxSessionLogPrunePolicy];
  [(BMSyncSessionMetricsAggregator *)v6 computeAndSendAggregatedMetrics];
  [(BMSyncSessionMetricsAggregator *)v6 compactAndDeleteSessionLogs];
  v5 = [[BMStateVectorMetricsCollector alloc] initWithDatabase:self activity:v4];

  [(BMStateVectorMetricsCollector *)v5 computeAndSendStateVectorMetrics];
}

- (BOOL)ckZoneExists:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  if (queue)
  {
    dispatch_assert_queue_V2(queue);
  }

  fmdb = self->_fmdb;
  v10[0] = @"zone_name = ?";
  v10[1] = v4;
  v7 = [NSArray arrayWithObjects:v10 count:2];
  v8 = [(_bmFMDatabase *)fmdb SELECT_FROM:@"CKZone" COLUMNS:&off_10007ECE8 WHERE:v7];

  LOBYTE(fmdb) = [v8 next];
  return fmdb;
}

- (id)ckZoneForZoneName:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  if (queue)
  {
    dispatch_assert_queue_V2(queue);
  }

  fmdb = self->_fmdb;
  v11[0] = @"zone_name = ?";
  v11[1] = v4;
  v7 = [NSArray arrayWithObjects:v11 count:2];
  v8 = [(_bmFMDatabase *)fmdb SELECT_FROM:@"CKZone" COLUMNS:&off_10007ED00 WHERE:v7];

  if ([v8 next])
  {
    v9 = [[BMSyncCKZone alloc] initWithFMResultSet:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)ckZoneSetZoneVersionUUID:(id)a3 forZoneName:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  if (queue)
  {
    dispatch_assert_queue_V2(queue);
  }

  v9 = [(BMSyncDatabase *)self ckZoneExists:v7];
  fmdb = self->_fmdb;
  if (v9)
  {
    v19 = @"zone_uuid";
    v20 = v6;
    v11 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v18[0] = @"zone_name = ?";
    v18[1] = v7;
    v12 = [NSArray arrayWithObjects:v18 count:2];
    v13 = [(_bmFMDatabase *)fmdb UPDATE:@"CKZone" SET:v11 WHERE:v12];
  }

  else
  {
    v16[0] = @"zone_name";
    v16[1] = @"zone_uuid";
    v17[0] = v7;
    v17[1] = v6;
    v17[2] = &off_10007F3A8;
    v16[2] = @"recovery_state";
    v16[3] = @"attempted_recovery_date";
    v11 = +[NSDate distantPast];
    v17[3] = v11;
    v12 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:4];
    v13 = [(_bmFMDatabase *)fmdb INSERT_INTO:@"CKZone" VALUES:v12];
  }

  v14 = v13;

  return v14;
}

- (void)enumerateZonesWithBlock:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  if (queue)
  {
    dispatch_assert_queue_V2(queue);
  }

  v6 = [(_bmFMDatabase *)self->_fmdb SELECT_FROM:@"CKZone" COLUMNS:&off_10007ED18 WHERE:0];
  v9 = 0;
  do
  {
    if (![v6 next])
    {
      break;
    }

    v7 = objc_autoreleasePoolPush();
    v8 = [[BMSyncCKZone alloc] initWithFMResultSet:v6];
    v4[2](v4, v8, &v9);

    objc_autoreleasePoolPop(v7);
  }

  while (v9 != 1);
}

- (BOOL)addCKAtomRow:(id)a3 inStream:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  if (queue)
  {
    dispatch_assert_queue_V2(queue);
  }

  v9 = [NSString alloc];
  v10 = [v6 timestamp];
  v11 = [v10 siteIdentifierObject];
  v12 = [v11 identifier];
  v13 = [v9 initWithData:v12 encoding:4];

  v14 = [NSString alloc];
  v15 = [v6 causalReference];
  v16 = [v15 timestamp];
  v17 = [v16 siteIdentifierObject];
  v18 = [v17 identifier];
  v19 = [v14 initWithData:v18 encoding:4];

  fmdb = self->_fmdb;
  v66[0] = @"stream";
  v66[1] = @"site";
  v67[0] = v7;
  v67[1] = v13;
  v63 = v13;
  v66[2] = @"clock";
  v61 = [v6 timestamp];
  v60 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v61 clockValue]);
  v67[2] = v60;
  v66[3] = @"type";
  v59 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v6 type]);
  v67[3] = v59;
  v66[4] = @"location_id";
  v58 = [v6 location];
  v57 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v58 primaryKey]);
  v67[4] = v57;
  v66[5] = @"segment_name";
  v20 = [v6 segmentName];
  v21 = v20;
  if (!v20)
  {
    v20 = +[NSNull null];
  }

  v56 = v21;
  v42 = v20;
  v67[5] = v20;
  v66[6] = @"segment_offset";
  v55 = [v6 segmentName];
  if (v55)
  {
    +[NSNumber numberWithUnsignedLong:](NSNumber, "numberWithUnsignedLong:", [v6 segmentOffset]);
  }

  else
  {
    +[NSNull null];
  }
  v54 = ;
  v67[6] = v54;
  v66[7] = @"on_disk";
  v22 = [v6 segmentName];
  if (v22)
  {
    v23 = &__kCFBooleanTrue;
  }

  else
  {
    v23 = +[NSNull null];
  }

  v41 = v23;
  v67[7] = v23;
  v66[8] = @"ref_type";
  v50 = [v6 causalReference];
  if (v50)
  {
    v49 = [v6 causalReference];
    v24 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [v49 type]);
  }

  else
  {
    v24 = +[NSNull null];
    v49 = v24;
  }

  v44 = v24;
  v67[8] = v24;
  v66[9] = @"ref_location_id";
  v48 = [v6 referenceLocation];
  if (v48)
  {
    v47 = [v6 referenceLocation];
    v25 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v47 primaryKey]);
  }

  else
  {
    v25 = +[NSNull null];
    v47 = v25;
  }

  v43 = v25;
  v67[9] = v25;
  v66[10] = @"ref_site";
  v26 = [v6 causalReference];
  v27 = v19;
  if (!v26)
  {
    v27 = +[NSNull null];
  }

  v46 = v26;
  v53 = v22;
  v40 = v27;
  v67[10] = v27;
  v66[11] = @"ref_clock";
  v28 = [v6 causalReference];
  v64 = self;
  v62 = v19;
  if (v28)
  {
    v45 = [v6 causalReference];
    v39 = [v45 timestamp];
    v29 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v39 clockValue]);
  }

  else
  {
    v29 = +[NSNull null];
    v45 = v29;
  }

  v65 = v7;
  v67[11] = v29;
  v66[12] = @"value_version";
  v30 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v6 valueVersion]);
  v67[12] = v30;
  v66[13] = @"value_data";
  v31 = [v6 valueData];
  v32 = v31;
  if (!v31)
  {
    v32 = +[NSNull null];
  }

  v67[13] = v32;
  v66[14] = @"ref_atom_batch_filename";
  v33 = [v6 referenceAtomBatchFilename];
  v34 = v33;
  if (!v33)
  {
    v34 = +[NSNull null];
  }

  v67[14] = v34;
  v66[15] = @"atom_batch_file_index";
  v35 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v6 atomBatchFileIndex]);
  v67[15] = v35;
  v36 = [NSDictionary dictionaryWithObjects:v67 forKeys:v66 count:16];
  v52 = [(_bmFMDatabase *)fmdb INSERT_INTO:@"CKAtom" VALUES:v36];

  if (!v33)
  {
  }

  if (!v31)
  {
  }

  if (v28)
  {
  }

  if (!v46)
  {
  }

  if (v48)
  {
  }

  if (v50)
  {
  }

  if (!v53)
  {
  }

  if (!v56)
  {
  }

  if ((v52 & 1) == 0)
  {
    v37 = __biome_log_for_category();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
    {
      sub_100049D14(&v64->_fmdb);
    }
  }

  return v52;
}

- (id)ckAtomRowWithTimestamp:(id)a3 inStream:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  if (queue)
  {
    dispatch_assert_queue_V2(queue);
  }

  v9 = [NSString alloc];
  v10 = [v6 siteIdentifierObject];
  v11 = [v10 identifier];
  v12 = [v9 initWithData:v11 encoding:4];

  v18[0] = @"CKAtom.site = ?";
  v18[1] = v12;
  v18[2] = @" AND CKAtom.stream = ?";
  v18[3] = v7;
  v18[4] = @" AND clock = ?";
  v13 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v6 clockValue]);
  v18[5] = v13;
  v14 = [NSArray arrayWithObjects:v18 count:6];
  v15 = [(BMSyncDatabase *)self SELECT_ATOMS_WHERE:v14 ORDER_BY:0 LIMIT:0];

  v16 = 0;
  if ([v15 next])
  {
    v16 = [[BMSyncCKAtomRow alloc] initWithFMResultSet:v15];
  }

  [v15 close];

  return v16;
}

- (id)latestCKAtomRowForSiteIdentifier:(id)a3 inStream:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  if (queue)
  {
    dispatch_assert_queue_V2(queue);
  }

  v13[0] = @"CKAtom.site = ?";
  v13[1] = v6;
  v13[2] = @" AND CKAtom.stream = ?";
  v13[3] = v7;
  v13[4] = @" AND on_disk IS ?";
  v13[5] = &__kCFBooleanTrue;
  v9 = [NSArray arrayWithObjects:v13 count:6];
  v10 = [(BMSyncDatabase *)self SELECT_ATOMS_WHERE:v9 ORDER_BY:&off_10007ED30 LIMIT:&off_10007F3D8];

  if ([v10 next])
  {
    v11 = [[BMSyncCKAtomRow alloc] initWithFMResultSet:v10];
  }

  else
  {
    v11 = 0;
  }

  [v10 close];

  return v11;
}

- (id)legacyTimestampClockVectorForStreamName:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  if (queue)
  {
    dispatch_assert_queue_V2(queue);
  }

  v6 = objc_opt_new();
  fmdb = self->_fmdb;
  v17[0] = @"stream = ?";
  v17[1] = v4;
  v17[2] = @" AND on_disk IS ?";
  v17[3] = &__kCFBooleanTrue;
  v8 = [NSArray arrayWithObjects:v17 count:4];
  v9 = [(_bmFMDatabase *)fmdb SELECT_FROM:@"CKAtom" COLUMNS:&off_10007ED48 WHERE:v8 GROUP_BY:&off_10007ED60];

  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_10001DD34;
  v15 = &unk_100079240;
  v10 = v6;
  v16 = v10;
  [v9 enumerateWithBlock:&v12];
  [v9 close];

  return v10;
}

- (id)rangeClockVectorForStreamName:(id)a3
{
  v24 = a3;
  v23 = self;
  queue = self->_queue;
  if (queue)
  {
    dispatch_assert_queue_V2(queue);
  }

  v22 = objc_opt_new();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = [(BMSyncDatabase *)self CKAtomRowSiteIdentifiersForStreamIdentifier:v24];
  v5 = [obj countByEnumeratingWithState:&v27 objects:v34 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v28;
    do
    {
      v8 = 0;
      do
      {
        if (*v28 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v27 + 1) + 8 * v8);
        v10 = objc_autoreleasePoolPush();
        v11 = objc_opt_new();
        fmdb = v23->_fmdb;
        v33[0] = @"stream = ?";
        v33[1] = v24;
        v33[2] = @" AND site = ?";
        v33[3] = v9;
        v13 = [NSArray arrayWithObjects:v33 count:4];
        v14 = [(_bmFMDatabase *)fmdb SELECT_FROM:@"CKAtom" COLUMNS:&off_10007ED78 WHERE:v13 ORDER_BY:&off_10007ED90 LIMIT:0];

        v25[0] = _NSConcreteStackBlock;
        v25[1] = 3221225472;
        v25[2] = sub_10001E150;
        v25[3] = &unk_100079240;
        v15 = v11;
        v26 = v15;
        [v14 enumerateWithBlock:v25];
        [v14 close];
        v16 = [CKDistributedSiteIdentifier alloc];
        v17 = [v9 dataUsingEncoding:4];
        v18 = [v16 initWithIdentifier:v17];

        if (v18)
        {
          [v22 addClockValuesInIndexSet:v15 forSiteIdentifier:v18];
        }

        else
        {
          v19 = __biome_log_for_category();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v32 = v9;
            _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Failed to decode CKDistributedSiteIdentifier from site %@", buf, 0xCu);
          }
        }

        objc_autoreleasePoolPop(v10);
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v27 objects:v34 count:16];
    }

    while (v6);
  }

  return v22;
}

- (id)stateVectorForLocationRow:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  if (queue)
  {
    dispatch_assert_queue_V2(queue);
  }

  fmdb = self->_fmdb;
  v23[0] = @"location_id = ?";
  v7 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v4 primaryKey]);
  v23[1] = v7;
  v23[2] = @" AND on_disk IS ?";
  v23[3] = &__kCFBooleanTrue;
  v8 = [NSArray arrayWithObjects:v23 count:4];
  v9 = [(_bmFMDatabase *)fmdb SELECT_FROM:@"CKAtom" COLUMNS:&off_10007EDA8 WHERE:v8 ORDER_BY:&off_10007EDC0 LIMIT:0];

  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_10001E42C;
  v19 = sub_10001E43C;
  v20 = objc_opt_new();
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10001E444;
  v14[3] = &unk_100079268;
  v14[4] = &v15;
  [v9 enumerateWithBlock:v14];
  [v9 close];
  v10 = __biome_log_for_category();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v16[5];
    *buf = 138412290;
    v22 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "stateVector: %@", buf, 0xCu);
  }

  v12 = v16[5];
  _Block_object_dispose(&v15, 8);

  return v12;
}

- (id)latestCKAtomRowOfType:(unint64_t)a3 forSiteIdentifier:(id)a4 inStream:(id)a5
{
  v8 = a4;
  v9 = a5;
  queue = self->_queue;
  if (queue)
  {
    dispatch_assert_queue_V2(queue);
  }

  v16[0] = @"type = ?";
  v11 = [NSNumber numberWithUnsignedInteger:a3];
  v16[1] = v11;
  v16[2] = @" AND CKAtom.stream = ?";
  v16[3] = v9;
  v16[4] = @" AND CKAtom.site = ?";
  v16[5] = v8;
  v16[6] = @" AND on_disk IS ?";
  v16[7] = &__kCFBooleanTrue;
  v16[8] = @" AND segment_name IS NOT ?";
  v16[9] = @"DOA";
  v12 = [NSArray arrayWithObjects:v16 count:10];
  v13 = [(BMSyncDatabase *)self SELECT_ATOMS_WHERE:v12 ORDER_BY:&off_10007EDD8 LIMIT:&off_10007F3D8];

  if ([v13 next])
  {
    v14 = [[BMSyncCKAtomRow alloc] initWithFMResultSet:v13];
  }

  else
  {
    v14 = 0;
  }

  [v13 close];

  return v14;
}

- (int)ckAtomCount
{
  queue = self->_queue;
  if (queue)
  {
    dispatch_assert_queue_V2(queue);
  }

  v4 = [(_bmFMDatabase *)self->_fmdb SELECT_FROM:@"CKAtom" COLUMNS:&off_10007EDF0 WHERE:0];
  if ([v4 next])
  {
    v5 = [v4 intForColumnIndex:0];
  }

  else
  {
    v5 = 0;
  }

  [v4 close];

  return v5;
}

- (BOOL)containsCKAtomRowWithTimestamp:(id)a3 inStream:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  if (queue)
  {
    dispatch_assert_queue_V2(queue);
  }

  v9 = [NSString alloc];
  v10 = [v6 siteIdentifierObject];
  v11 = [v10 identifier];
  v12 = [v9 initWithData:v11 encoding:4];

  fmdb = self->_fmdb;
  v19[0] = @"clock = ?";
  v14 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v6 clockValue]);
  v19[1] = v14;
  v19[2] = @" AND stream = ?";
  v19[3] = v7;
  v19[4] = @" AND site = ?";
  v19[5] = v12;
  v15 = [NSArray arrayWithObjects:v19 count:6];
  v16 = [(_bmFMDatabase *)fmdb SELECT_FROM:@"CKAtom" COLUMNS:&off_10007EE08 WHERE:v15];

  if ([v16 next])
  {
    v17 = [v16 intForColumnIndex:0] > 0;
  }

  else
  {
    v17 = 0;
  }

  [v16 close];

  return v17;
}

- (BOOL)containsCKAtomRowWithTimestamp:(id)a3 inStream:(id)a4 onDisk:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  queue = self->_queue;
  if (queue)
  {
    dispatch_assert_queue_V2(queue);
  }

  v11 = [NSString alloc];
  v12 = [v8 siteIdentifierObject];
  v13 = [v12 identifier];
  v14 = [v11 initWithData:v13 encoding:4];

  fmdb = self->_fmdb;
  v22[0] = @"clock = ?";
  v16 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v8 clockValue]);
  v22[1] = v16;
  v22[2] = @" AND stream = ?";
  v22[3] = v9;
  v22[4] = @" AND site = ?";
  v22[5] = v14;
  v22[6] = @" AND on_disk IS ?";
  if (a5)
  {
    v17 = &__kCFBooleanTrue;
  }

  else
  {
    v17 = +[NSNull null];
  }

  v22[7] = v17;
  v18 = [NSArray arrayWithObjects:v22 count:8];
  v19 = [(_bmFMDatabase *)fmdb SELECT_FROM:@"CKAtom" COLUMNS:&off_10007EE20 WHERE:v18];

  if (!a5)
  {
  }

  if ([v19 next])
  {
    v20 = [v19 intForColumnIndex:0] > 0;
  }

  else
  {
    v20 = 0;
  }

  [v19 close];

  return v20;
}

- (BOOL)updateCKAtomRow:(id)a3 inStream:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  if (queue)
  {
    dispatch_assert_queue_V2(queue);
  }

  v9 = [NSString alloc];
  v10 = [v6 timestamp];
  v11 = [v10 siteIdentifierObject];
  v12 = [v11 identifier];
  v13 = [v9 initWithData:v12 encoding:4];

  fmdb = self->_fmdb;
  v42[0] = @"segment_name";
  v14 = [v6 segmentName];
  v15 = v14;
  if (!v14)
  {
    v14 = +[NSNull null];
  }

  v37 = v15;
  v31 = v14;
  v43[0] = v14;
  v42[1] = @"segment_offset";
  v36 = [v6 segmentName];
  if (v36)
  {
    +[NSNumber numberWithUnsignedLong:](NSNumber, "numberWithUnsignedLong:", [v6 segmentOffset]);
  }

  else
  {
    +[NSNull null];
  }
  v35 = ;
  v43[1] = v35;
  v42[2] = @"value_version";
  v33 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v6 valueVersion]);
  v43[2] = v33;
  v42[3] = @"value_data";
  v16 = [v6 valueData];
  v17 = v16;
  if (!v16)
  {
    v16 = +[NSNull null];
  }

  v30 = v16;
  v43[3] = v16;
  v42[4] = @"on_disk";
  v18 = [v6 segmentName];
  v39 = self;
  if (v18)
  {
    v19 = &__kCFBooleanTrue;
  }

  else
  {
    v19 = +[NSNull null];
  }

  v29 = v19;
  v43[4] = v19;
  v42[5] = @"ref_atom_batch_filename";
  v32 = +[NSNull null];
  v43[5] = v32;
  v42[6] = @"atom_batch_file_index";
  v20 = +[NSNull null];
  v43[6] = v20;
  v21 = [NSDictionary dictionaryWithObjects:v43 forKeys:v42 count:7];
  v40 = v7;
  v41[0] = @"stream = ?";
  v41[1] = v7;
  v41[2] = @" AND site = ?";
  v38 = v13;
  v41[3] = v13;
  v41[4] = @" AND clock = ?";
  v22 = [v6 timestamp];
  v23 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v22 clockValue]);
  v41[5] = v23;
  v41[6] = @" AND type = ?";
  v24 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v6 type]);
  v41[7] = v24;
  v25 = [NSArray arrayWithObjects:v41 count:8];
  v26 = [(_bmFMDatabase *)fmdb UPDATE:@"CKAtom" SET:v21 WHERE:v25];

  if (!v18)
  {
  }

  if (!v17)
  {
  }

  if (!v37)
  {
  }

  if ((v26 & 1) == 0)
  {
    v27 = __biome_log_for_category();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
    {
      sub_100049D9C(&v39->_fmdb);
    }
  }

  return v26;
}

- (id)ckAtomRowForAtomWithBookmark:(id)a3 type:(unint64_t)a4 forSiteIdentifier:(id)a5 inStream:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  queue = self->_queue;
  if (queue)
  {
    dispatch_assert_queue_V2(queue);
  }

  v21[0] = @"CKAtom.site = ?";
  v21[1] = v11;
  v21[2] = @" AND CKAtom.stream = ?";
  v21[3] = v12;
  v21[4] = @" AND type = ?";
  v14 = [NSNumber numberWithUnsignedInteger:a4];
  v21[5] = v14;
  v21[6] = @" AND segment_name = ?";
  v15 = [v10 segmentName];
  v21[7] = v15;
  v21[8] = @" AND segment_offset = ?";
  v16 = +[NSNumber numberWithUnsignedLong:](NSNumber, "numberWithUnsignedLong:", [v10 offset]);
  v21[9] = v16;
  v17 = [NSArray arrayWithObjects:v21 count:10];
  v18 = [(BMSyncDatabase *)self SELECT_ATOMS_WHERE:v17 ORDER_BY:0 LIMIT:0];

  v19 = 0;
  if ([v18 next])
  {
    v19 = [[BMSyncCKAtomRow alloc] initWithFMResultSet:v18];
  }

  [v18 close];

  return v19;
}

- (id)latestDistributedTimestampForSiteIdentifier:(id)a3 inStream:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  if (queue)
  {
    dispatch_assert_queue_V2(queue);
  }

  fmdb = self->_fmdb;
  v18[0] = @"site = ?";
  v18[1] = v6;
  v18[2] = @" AND stream = ?";
  v18[3] = v7;
  v10 = [NSArray arrayWithObjects:v18 count:4];
  v11 = [(_bmFMDatabase *)fmdb SELECT_FROM:@"CKAtom" COLUMNS:&off_10007EE38 WHERE:v10];

  if ([v11 next])
  {
    v12 = [v11 unsignedLongLongIntForColumnIndex:0];
    v13 = [CKDistributedSiteIdentifier alloc];
    v14 = [v6 dataUsingEncoding:4];
    v15 = [v13 initWithIdentifier:v14];

    v16 = [[CKDistributedTimestamp alloc] initWithSiteIdentifierObject:v15 clockValue:v12];
  }

  else
  {
    v16 = 0;
  }

  [v11 close];

  return v16;
}

- (BOOL)containsCKAtomRowWithSegment:(id)a3 inStream:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  if (queue)
  {
    dispatch_assert_queue_V2(queue);
  }

  fmdb = self->_fmdb;
  v13[0] = @"stream = ?";
  v13[1] = v7;
  v13[2] = @" AND segment_name = ?";
  v13[3] = v6;
  v10 = [NSArray arrayWithObjects:v13 count:4];
  v11 = [(_bmFMDatabase *)fmdb SELECT_FROM:@"CKAtom" COLUMNS:&off_10007EE50 WHERE:v10];

  LOBYTE(fmdb) = [v11 next];
  [v11 close];

  return fmdb;
}

- (id)CKAtomRowSiteIdentifiers
{
  queue = self->_queue;
  if (queue)
  {
    dispatch_assert_queue_V2(queue);
  }

  v4 = [(_bmFMDatabase *)self->_fmdb SELECT_FROM:@"CKAtom" COLUMNS:&off_10007EE68 WHERE:0];
  v5 = objc_alloc_init(NSMutableArray);
  if ([v4 next])
  {
    do
    {
      v6 = [v4 stringForColumnIndex:0];
      [v5 addObject:v6];
    }

    while (([v4 next] & 1) != 0);
  }

  [v4 close];

  return v5;
}

- (id)CKAtomRowSiteIdentifiersForStreamIdentifier:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  if (queue)
  {
    dispatch_assert_queue_V2(queue);
  }

  fmdb = self->_fmdb;
  v12[0] = @"stream = ?";
  v12[1] = v4;
  v7 = [NSArray arrayWithObjects:v12 count:2];
  v8 = [(_bmFMDatabase *)fmdb SELECT_FROM:@"CKAtom" COLUMNS:&off_10007EE80 WHERE:v7];

  v9 = objc_alloc_init(NSMutableArray);
  if ([v8 next])
  {
    do
    {
      v10 = [v8 stringForColumnIndex:0];
      [v9 addObject:v10];
    }

    while (([v8 next] & 1) != 0);
  }

  [v8 close];

  return v9;
}

- (void)atomRowsNotOnDiskReferencingSiteIdentifier:(id)a3 inStream:(id)a4 enumerateWithBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  queue = self->_queue;
  if (queue)
  {
    dispatch_assert_queue_V2(queue);
  }

  v20[0] = CFSTR("(ref_site = ?");
  v20[1] = v8;
  v20[2] = @" OR (ref_site IS NULL AND CKAtom.site = ?)");
  v20[3] = v8;
  v20[4] = @" AND CKAtom.stream = ?";
  v20[5] = v9;
  v20[6] = @" AND on_disk IS ?";
  v12 = +[NSNull null];
  v20[7] = v12;
  v13 = [NSArray arrayWithObjects:v20 count:8];
  v14 = [(BMSyncDatabase *)self SELECT_ATOMS_WHERE:v13 ORDER_BY:&off_10007EE98 LIMIT:0];

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10001F8B4;
  v17[3] = &unk_100079290;
  v18 = v14;
  v19 = v10;
  v15 = v14;
  v16 = v10;
  [v15 enumerateWithBlock:v17];
  [v15 close];
}

- (void)atomsAtOrBeforeLocation:(id)a3 ofType:(unint64_t)a4 enumerateWithBlock:(id)a5
{
  v8 = a3;
  v22 = a5;
  queue = self->_queue;
  if (queue)
  {
    dispatch_assert_queue_V2(queue);
  }

  v26[0] = @"location.stream = ?";
  v21 = [v8 location];
  v10 = [v21 streamName];
  v26[1] = v10;
  v26[2] = @" AND location.site = ?";
  v11 = [v8 location];
  v12 = [v11 siteIdentifier];
  v26[3] = v12;
  v26[4] = @" AND location.day <= ?";
  v13 = [v8 location];
  v14 = [v13 day];
  [v14 timeIntervalSinceReferenceDate];
  v15 = [NSNumber numberWithDouble:?];
  v26[5] = v15;
  v26[6] = @" AND type = ?";
  v16 = [NSNumber numberWithUnsignedInteger:a4];
  v26[7] = v16;
  v17 = [NSArray arrayWithObjects:v26 count:8];
  v18 = [(BMSyncDatabase *)self SELECT_ATOMS_WHERE:v17 ORDER_BY:&off_10007EEB0 LIMIT:0];

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10001FB7C;
  v23[3] = &unk_100079290;
  v24 = v18;
  v25 = v22;
  v19 = v18;
  v20 = v22;
  [v19 enumerateWithBlock:v23];
  [v19 close];
}

- (BOOL)deleteAllAtomsAtOrBeforeLocation:(id)a3
{
  v4 = a3;
  fmdb = self->_fmdb;
  v29[0] = @"site = ?";
  v6 = [v4 location];
  v7 = [v6 siteIdentifier];
  v29[1] = v7;
  v29[2] = @" AND stream = ?";
  v8 = [v4 location];
  v9 = [v8 streamName];
  v29[3] = v9;
  v10 = [NSArray arrayWithObjects:v29 count:4];
  v11 = [(_bmFMDatabase *)fmdb SELECT_FROM:@"CKAtom" COLUMNS:&off_10007EEC8 WHERE:v10 ORDER_BY:&off_10007EEE0 LIMIT:&off_10007F3D8];

  if ([v11 next])
  {
    v21 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v11 intForColumnIndex:0]);
    [v11 close];
    v23 = self->_fmdb;
    v28[0] = CFSTR("location_id IN (SELECT id from CRDTLocation where stream = ?");
    v27 = [v4 location];
    v26 = [v27 streamName];
    v28[1] = v26;
    v28[2] = @" AND site = ?";
    v25 = [v4 location];
    v24 = [v25 siteIdentifier];
    v28[3] = v24;
    v28[4] = @" AND day <= ?");
    v22 = [v4 location];
    v12 = [v22 day];
    [v12 timeIntervalSinceReferenceDate];
    v13 = [NSNumber numberWithDouble:?];
    v28[5] = v13;
    v28[6] = @" AND clock != ?";
    v28[7] = v21;
    v28[8] = CFSTR(" AND clock != (SELECT MAX(clock) FROM CKAtom WHERE stream = ?");
    v14 = [v4 location];
    v15 = [v14 streamName];
    v28[9] = v15;
    v28[10] = @" AND site = ?");
    v16 = [v4 location];
    v17 = [v16 siteIdentifier];
    v28[11] = v17;
    v18 = [NSArray arrayWithObjects:v28 count:12];
    v19 = [(_bmFMDatabase *)v23 DELETE_FROM:@"CKAtom" WHERE:v18];
  }

  else
  {
    [v11 close];
    v19 = 0;
  }

  return v19;
}

- (id)activeLocationsInClockVector:(id)a3 inStream:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  if ([v7 timestampCount])
  {
    v26 = self;
    v9 = objc_opt_new();
    [v9 addObject:@"CKAtom.stream = ? "];
    [v9 addObject:v8];
    v48[0] = 0;
    v48[1] = v48;
    v48[2] = 0x2020000000;
    v48[3] = 0;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v10 = [v7 allSiteIdentifiers];
    v11 = [v10 countByEnumeratingWithState:&v44 objects:v49 count:16];
    if (v11)
    {
      v12 = *v45;
      v13 = CFSTR(" AND ((CKAtom.site = ? ");
      obj = v10;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v45 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v44 + 1) + 8 * i);
          v16 = [NSString alloc];
          v17 = [v15 identifier];
          v18 = [v16 initWithData:v17 encoding:4];

          [v9 addObject:v13];
          [v9 addObject:v18];
          v19 = [v7 clockValuesForSiteIdentifier:v15];
          v34 = 0;
          v35 = &v34;
          v36 = 0x2020000000;
          LOBYTE(v37) = 1;
          v40[0] = _NSConcreteStackBlock;
          v40[1] = 3221225472;
          v40[2] = sub_1000203B0;
          v40[3] = &unk_1000792B8;
          v42 = v48;
          v43 = &v34;
          v41 = v9;
          [v19 enumerateRangesUsingBlock:v40];

          _Block_object_dispose(&v34, 8);
          v13 = @" OR (CKAtom.site = ? ");
        }

        v10 = obj;
        v11 = [obj countByEnumeratingWithState:&v44 objects:v49 count:16];
      }

      while (v11);
    }

    [v9 addObject:@"] AND on_disk IS ?"));
    [v9 addObject:&__kCFBooleanTrue];
    [v9 addObject:@" AND location.state = ?"];
    [v9 addObject:&off_10007F3F0];
    v34 = 0;
    v35 = &v34;
    v36 = 0x3032000000;
    v37 = sub_10001E42C;
    v38 = sub_10001E43C;
    v39 = 0;
    v20 = objc_opt_new();
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_100020568;
    v29[3] = &unk_100079308;
    v29[4] = v26;
    v21 = v9;
    v30 = v21;
    v22 = v20;
    v31 = v22;
    v33 = &v34;
    v32 = v8;
    [(BMSyncDatabase *)v26 disableStatementCachingForBlock:v29];
    if (a5)
    {
      v23 = v35[5];
      if (v23)
      {
        *a5 = v23;
      }
    }

    v24 = [v22 copy];

    _Block_object_dispose(&v34, 8);
    _Block_object_dispose(v48, 8);
  }

  else
  {
    v21 = __biome_log_for_category();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_100049E24();
    }

    v24 = &__NSArray0__struct;
  }

  return v24;
}

- (void)atomRowsInTimestampClockVector:(id)a3 forLocation:(id)a4 inStream:(id)a5 enumerateWithBlock:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v28 = a6;
  v27 = v12;
  if ([v10 timestampCount])
  {
    v13 = objc_opt_new();
    [v13 addObject:@"CKAtom.stream = ? "];
    [v13 addObject:v12];
    if (v11)
    {
      [v13 addObject:@" AND CKAtom.location_id = ? "];
      v14 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v11 primaryKey]);
      [v13 addObject:v14];
    }

    v43[0] = 0;
    v43[1] = v43;
    v43[2] = 0x2020000000;
    v43[3] = 0;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v15 = [v10 allSiteIdentifiers];
    v16 = [v15 countByEnumeratingWithState:&v39 objects:v44 count:16];
    if (v16)
    {
      v17 = *v40;
      v18 = CFSTR(" AND ((CKAtom.site = ? ");
      obj = v15;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v40 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v39 + 1) + 8 * i);
          v21 = [NSString alloc];
          v22 = [v20 identifier];
          v23 = [v21 initWithData:v22 encoding:4];

          [v13 addObject:v18];
          [v13 addObject:v23];
          v24 = [v10 clockValuesForSiteIdentifier:v20];
          v37[0] = 0;
          v37[1] = v37;
          v37[2] = 0x2020000000;
          v38 = 1;
          v33[0] = _NSConcreteStackBlock;
          v33[1] = 3221225472;
          v33[2] = sub_100020BF0;
          v33[3] = &unk_1000792B8;
          v35 = v43;
          v36 = v37;
          v34 = v13;
          [v24 enumerateRangesUsingBlock:v33];

          _Block_object_dispose(v37, 8);
          v18 = @" OR (CKAtom.site = ? ");
        }

        v15 = obj;
        v16 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
      }

      while (v16);
    }

    [v13 addObject:@"] AND on_disk IS ?"));
    [v13 addObject:&__kCFBooleanTrue];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_100020DA8;
    v30[3] = &unk_100078DF0;
    v30[4] = v26;
    v25 = v13;
    v31 = v25;
    v32 = v28;
    [v26 disableStatementCachingForBlock:v30];

    _Block_object_dispose(v43, 8);
  }

  else
  {
    v25 = __biome_log_for_category();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_100049E24();
    }
  }
}

- (id)computeHighestLocationToDeleteUpToBookmark:(id)a3 forSiteIdentifier:(id)a4 inStream:(id)a5 offsetsIncrease:(BOOL)a6
{
  v6 = a6;
  v10 = a4;
  v11 = a5;
  v12 = @" AND segment_offset < ? OR NULL) == 0");
  if (v6)
  {
    v12 = @" AND segment_offset > ? OR NULL) == 0");
  }

  v13 = v12;
  fmdb = self->_fmdb;
  v28[0] = @"CKAtom.stream = ?";
  v28[1] = v11;
  v26 = v10;
  v28[2] = @" AND CKAtom.site = ?";
  v28[3] = v10;
  v15 = a3;
  v16 = [NSArray arrayWithObjects:v28 count:4];
  v27[0] = CFSTR("COUNT ((CAST(segment_name AS INT) > ?");
  v17 = [v15 segmentName];
  v18 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v17 longLongValue]);
  v27[1] = v18;
  v27[2] = @" OR segment_name = ?";
  v19 = [v15 segmentName];
  v27[3] = v19;
  v27[4] = v13;
  v20 = [v15 offset];

  v21 = [NSNumber numberWithUnsignedLong:v20];
  v27[5] = v21;
  v22 = [NSArray arrayWithObjects:v27 count:6];
  v23 = [(_bmFMDatabase *)fmdb SELECT_FROM:@"CKAtom" COLUMNS:&off_10007EF70 JOIN:&off_10007EF88 WHERE:v16 GROUP_BY:&off_10007EFA0 HAVING:v22 ORDER_BY:&off_10007EFB8 LIMIT:&off_10007F3D8];

  if ([v23 next])
  {
    v24 = [[BMSyncCRDTLocationRow alloc] initWithFMResultSet:v23 modifier:1];
  }

  else
  {
    v24 = 0;
  }

  [v23 close];

  return v24;
}

- (id)highestLocationWithBufferedAtomsOlderThan:(double)a3 forSiteIdentifier:(id)a4 inStream:(id)a5
{
  v8 = a4;
  v9 = a5;
  v15[0] = @"CKAtom.stream = ?";
  v15[1] = v9;
  v15[2] = @" AND CKAtom.site = ?";
  v15[3] = v8;
  v15[4] = @" AND on_disk IS NOT ?";
  v15[5] = &__kCFBooleanTrue;
  v15[6] = @" AND location.day <= ?";
  v10 = [NSNumber numberWithDouble:a3];
  v15[7] = v10;
  v11 = [NSArray arrayWithObjects:v15 count:8];
  v12 = [(BMSyncDatabase *)self SELECT_ATOMS_WHERE:v11 ORDER_BY:&off_10007EFD0 LIMIT:&off_10007F3D8];

  if ([v12 next])
  {
    v13 = [[BMSyncCRDTLocationRow alloc] initWithFMResultSet:v12 modifier:1];
  }

  else
  {
    v13 = 0;
  }

  [v12 close];

  return v13;
}

- (BOOL)deleteRowsWithAtomBatchFilename:(id)a3
{
  v4 = a3;
  fmdb = self->_fmdb;
  v10[0] = @"ref_atom_batch_filename = ?";
  v10[1] = v4;
  v6 = [NSArray arrayWithObjects:v10 count:2];
  v7 = [(_bmFMDatabase *)fmdb DELETE_FROM:@"CKAtom" WHERE:v6];

  if ((v7 & 1) == 0)
  {
    v8 = __biome_log_for_category();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_100049ED4();
    }
  }

  return v7;
}

- (BOOL)deleteAtomsFromCKAtomWithNonExistentAtomBatchFilesForStream:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  if (queue)
  {
    dispatch_assert_queue_V2(queue);
  }

  fmdb = self->_fmdb;
  v9[0] = @"ref_atom_batch_filename IS NOT NULL AND stream = ? AND NOT EXISTS (SELECT DISTINCT atom_batch_filename from AtomBatchFiles WHERE atom_batch_filename = ref_atom_batch_filename)";
  v9[1] = v4;
  v7 = [NSArray arrayWithObjects:v9 count:2];
  LOBYTE(fmdb) = [(_bmFMDatabase *)fmdb DELETE_FROM:@"CKAtom" WHERE:v7];

  return fmdb;
}

- (NSUUID)sharedSyncGeneration
{
  v2 = [(BMSyncDatabase *)self valueForMetadataKey:@"SharedSyncGeneration"];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5[0] = 0;
    v5[1] = 0;
    v3 = 0;
    if ([v2 length] == 16)
    {
      [v2 getBytes:v5 length:16];
      v3 = [[NSUUID alloc] initWithUUIDBytes:v5];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSharedSyncGeneration:(id)a3
{
  v5[0] = 0;
  v5[1] = 0;
  [a3 getUUIDBytes:v5];
  v4 = [NSData dataWithBytes:v5 length:16];
  [(BMSyncDatabase *)self setValue:v4 forMetadataKey:@"SharedSyncGeneration"];
}

- (NSDate)lastRapportSyncAttemptDate
{
  v2 = [(BMSyncDatabase *)self valueForMetadataKey:@"LastSyncAttemptDate"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v4 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setLastRapportSyncAttemptDate:(id)a3
{
  if (a3)
  {
    [a3 timeIntervalSinceReferenceDate];
    v4 = [NSNumber numberWithDouble:?];
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [(BMSyncDatabase *)self setValue:v4 forMetadataKey:@"LastSyncAttemptDate"];
}

- (NSDate)lastRapportSyncDate
{
  v2 = [(BMSyncDatabase *)self valueForMetadataKey:@"LastSyncDate"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v4 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setLastRapportSyncDate:(id)a3
{
  if (a3)
  {
    [a3 timeIntervalSinceReferenceDate];
    v4 = [NSNumber numberWithDouble:?];
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [(BMSyncDatabase *)self setValue:v4 forMetadataKey:@"LastSyncDate"];
}

- (NSDate)lastCloudKitSyncAttemptDate
{
  v2 = [(BMSyncDatabase *)self valueForMetadataKey:@"LastCloudKitAttemptDate"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v4 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setLastCloudKitSyncAttemptDate:(id)a3
{
  if (a3)
  {
    [a3 timeIntervalSinceReferenceDate];
    v4 = [NSNumber numberWithDouble:?];
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [(BMSyncDatabase *)self setValue:v4 forMetadataKey:@"LastCloudKitAttemptDate"];
}

- (NSDate)lastCloudKitSyncDate
{
  v2 = [(BMSyncDatabase *)self valueForMetadataKey:@"LastCloudKitSyncDate"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v4 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setLastCloudKitSyncDate:(id)a3
{
  if (a3)
  {
    [a3 timeIntervalSinceReferenceDate];
    v4 = [NSNumber numberWithDouble:?];
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [(BMSyncDatabase *)self setValue:v4 forMetadataKey:@"LastCloudKitSyncDate"];
}

- (void)clearCKSyncEngineMetaData
{
  v3 = +[NSNull null];
  [(BMSyncDatabase *)self setValue:v3 forMetadataKey:@"com.apple.biome.sync.ckMetaData"];
}

- (BOOL)saveCKMergeableRecordValueRecordName:(id)a3 zoneName:(id)a4 mergeableRecordValueData:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  queue = self->_queue;
  if (queue)
  {
    dispatch_assert_queue_V2(queue);
  }

  fmdb = self->_fmdb;
  v15[0] = @"stream_name";
  v15[1] = @"record_name";
  v16[0] = v9;
  v16[1] = v8;
  v15[2] = @"server_mergeable_value";
  v16[2] = v10;
  v13 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:3];
  LOBYTE(fmdb) = [(_bmFMDatabase *)fmdb INSERT_INTO:@"CKMergeableRecordValue" VALUES:v13];

  return fmdb;
}

- (BOOL)clearCKMergeableRecordValueServerMergeableValuesForRecordName:(id)a3 zoneName:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  if (queue)
  {
    dispatch_assert_queue_V2(queue);
  }

  fmdb = self->_fmdb;
  v12[0] = @"stream_name = ?";
  v12[1] = v7;
  v12[2] = @" AND record_name = ?";
  v12[3] = v6;
  v10 = [NSArray arrayWithObjects:v12 count:4];
  LOBYTE(fmdb) = [(_bmFMDatabase *)fmdb DELETE_FROM:@"CKMergeableRecordValue" WHERE:v10];

  return fmdb;
}

- (BOOL)clearCKMergeableRecordValueServerMergeableValuesForZoneName:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  if (queue)
  {
    dispatch_assert_queue_V2(queue);
  }

  fmdb = self->_fmdb;
  v9[0] = @"stream_name = ?";
  v9[1] = v4;
  v7 = [NSArray arrayWithObjects:v9 count:2];
  LOBYTE(fmdb) = [(_bmFMDatabase *)fmdb DELETE_FROM:@"CKMergeableRecordValue" WHERE:v7];

  return fmdb;
}

- (void)enumerateMergeableRecordValuesForRecordName:(id)a3 zoneName:(id)a4 withBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  fmdb = self->_fmdb;
  v17[0] = @"stream_name = ?";
  v17[1] = v9;
  v17[2] = @" AND record_name = ?";
  v17[3] = v8;
  v12 = [NSArray arrayWithObjects:v17 count:4];
  v13 = [(_bmFMDatabase *)fmdb SELECT_FROM:@"CKMergeableRecordValue" COLUMNS:&off_10007F018 WHERE:v12 ORDER_BY:&off_10007F030 LIMIT:0];

  v16 = 0;
  do
  {
    if (![v13 next])
    {
      break;
    }

    v14 = objc_autoreleasePoolPush();
    v15 = [v13 dataForColumn:@"server_mergeable_value"];
    v10[2](v10, v15, &v16);

    objc_autoreleasePoolPop(v14);
  }

  while (v16 != 1);
}

- (BOOL)getLatestTombstoneBookmarkForSiteIdentifier:(id)a3 inStream:(id)a4 segmentName:(id *)a5 segmentOffset:(unint64_t *)a6
{
  fmdb = self->_fmdb;
  v16[0] = @"stream = ?";
  v16[1] = a4;
  v16[2] = @"AND site = ?";
  v16[3] = a3;
  v10 = a4;
  v11 = a3;
  v12 = [NSArray arrayWithObjects:v16 count:4];
  v13 = [(_bmFMDatabase *)fmdb SELECT_FROM:@"TombstoneBookmark" COLUMNS:&off_10007F048 WHERE:v12];

  v14 = [v13 next];
  if (v14)
  {
    if (a5)
    {
      *a5 = [v13 stringForColumn:@"segment_name"];
    }

    if (a6)
    {
      *a6 = [v13 longForColumn:@"segment_offset"];
    }
  }

  return v14;
}

- (BOOL)saveLatestTombstoneBookmark:(id)a3 forSiteIdentifier:(id)a4 inStream:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8)
  {
    v11 = [(BMSyncDatabase *)self getLatestTombstoneBookmarkForSiteIdentifier:v9 inStream:v10 segmentName:0 segmentOffset:0];
    fmdb = self->_fmdb;
    if (v11)
    {
      v22[0] = @"segment_name";
      v13 = [v8 segmentName];
      v23[0] = v13;
      v22[1] = @"segment_offset";
      v14 = +[NSNumber numberWithUnsignedLong:](NSNumber, "numberWithUnsignedLong:", [v8 offset]);
      v23[1] = v14;
      v15 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:2];
      v21[0] = @"stream = ?";
      v21[1] = v10;
      v21[2] = @" AND site = ?";
      v21[3] = v9;
      v16 = [NSArray arrayWithObjects:v21 count:4];
      v17 = [(_bmFMDatabase *)fmdb UPDATE:@"TombstoneBookmark" SET:v15 WHERE:v16];
    }

    else
    {
      v19[0] = @"stream";
      v19[1] = @"site";
      v20[0] = v10;
      v20[1] = v9;
      v19[2] = @"segment_name";
      v13 = [v8 segmentName];
      v20[2] = v13;
      v19[3] = @"segment_offset";
      v14 = +[NSNumber numberWithUnsignedLong:](NSNumber, "numberWithUnsignedLong:", [v8 offset]);
      v20[3] = v14;
      v15 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:4];
      v17 = [(_bmFMDatabase *)fmdb INSERT_INTO:@"TombstoneBookmark" VALUES:v15];
    }
  }

  else
  {
    v17 = 1;
  }

  return v17;
}

+ (id)createPrimaryDatabaseWithQueue:(id)a3
{
  v3 = a3;
  v4 = [[BMSyncDatabase alloc] initWithQueue:v3];

  [(BMSyncDatabase *)v4 setName:@"primary"];
  [(BMSyncDatabase *)v4 setCorruptionHandler:&stru_100079530];

  return v4;
}

+ (id)createDatabaseForAccount:(id)a3 queue:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [BMPaths pathForSharedSyncWithAccount:v5 domain:0];
  v8 = [v7 stringByAppendingPathComponent:@"sync.db"];

  v9 = [[BMSyncDatabase alloc] initWithPath:v8 options:0 queue:v6];
  v10 = [v5 identifier];
  v11 = [v10 length];
  v12 = [v5 identifier];
  v13 = v12;
  if (v11 > 7)
  {
    v14 = [v12 substringToIndex:8];
    [(BMSyncDatabase *)v9 setName:v14];
  }

  else
  {
    [(BMSyncDatabase *)v9 setName:v12];
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100027140;
  v17[3] = &unk_100078B70;
  v18 = v5;
  v15 = v5;
  [(BMSyncDatabase *)v9 setCorruptionHandler:v17];

  return v9;
}

+ (void)enumerateAccountSpecificDatabasesWithBlock:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    sub_10004A5A0(a2, a1);
  }

  v6 = dispatch_get_current_queue();
  v7 = [BMAccountManager alloc];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v15 = [v7 initWithUseCase:BMUseCaseNotApplicable];
  obj = [v15 accounts];
  v8 = [obj countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v13 = [BMSyncDatabase createDatabaseForAccount:v12 queue:v6];
        if ([v13 open])
        {
          v5[2](v5, v13, v12);
          [v13 close];
        }

        else
        {
          v14 = __biome_log_for_category();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            sub_10004A61C(v21, v12, &v22, v14);
          }
        }
      }

      v9 = [obj countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v9);
  }
}

- (id)ckRecordsToSyncToCloudKitForZone:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableArray);
  [v5 addObjectsFromArray:&off_10007F078];
  if (v4)
  {
    v15[0] = @" AND stream_identifier = ?";
    v15[1] = v4;
    v6 = [NSArray arrayWithObjects:v15 count:2];
    [v5 addObjectsFromArray:v6];
  }

  v7 = [(_bmFMDatabase *)self->_fmdb SELECT_FROM:@"CKRecord" COLUMNS:&off_10007F090 WHERE:v5];
  v8 = 0;
  if ([v7 next])
  {
    do
    {
      if (!v8)
      {
        v8 = objc_opt_new();
      }

      v9 = [v7 stringForColumnIndex:0];
      v10 = [v7 stringForColumnIndex:1];
      v11 = [[CKRecordZoneID alloc] initWithZoneName:v10 ownerName:CKCurrentUserDefaultName];
      v12 = [[CKRecordID alloc] initWithRecordName:v9 zoneID:v11];
      [v8 addObject:v12];
    }

    while (([v7 next] & 1) != 0);
  }

  v13 = [v8 allObjects];

  return v13;
}

- (id)recordFromSystemFieldsData:(id)a3
{
  v3 = a3;
  v10 = 0;
  v4 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v3 error:&v10];

  v5 = v10;
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 == 0;
  }

  if (v6)
  {
    v7 = __biome_log_for_category();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10004C26C();
    }

    v8 = 0;
  }

  else
  {
    v8 = [[CKRecord alloc] initWithCoder:v4];
  }

  return v8;
}

- (id)createCKRecordFromRecordID:(id)a3 newRecord:(BOOL *)a4 recordType:(unint64_t)a5
{
  v8 = a3;
  v9 = [v8 recordName];
  v10 = [v8 zoneID];
  v11 = [v10 zoneName];
  v12 = [(BMSyncDatabase *)self getSystemFieldsDataForRecordName:v9 zoneName:v11 recordType:a5];

  if (v12)
  {
    v13 = [(BMSyncDatabase *)self recordFromSystemFieldsData:v12];
    if (v13)
    {
      goto LABEL_12;
    }

    v14 = __biome_log_for_category();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      sub_10004C2D4();
    }
  }

  v15 = [CKRecord alloc];
  v16 = sub_100027674(a5);
  v13 = [v15 initWithRecordType:v16 recordID:v8];

  if (v13)
  {
    if (a4)
    {
      *a4 = 1;
    }
  }

  else
  {
    v17 = __biome_log_for_category();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      sub_10004C348();
    }

    v13 = 0;
  }

LABEL_12:

  return v13;
}

- (void)saveSystemFieldsDataForRecord:(id)a3 syncToCloudKit:(id)a4 recordType:(unint64_t)a5 crdtDeleted:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  queue = self->_queue;
  if (queue)
  {
    dispatch_assert_queue_V2(queue);
  }

  v14 = [v10 recordID];
  v15 = [v14 recordName];

  v16 = [v10 recordID];
  v17 = [v16 zoneID];
  v18 = [v17 zoneName];

  v19 = [(BMSyncDatabase *)self ckRecordExists:v15 zoneName:v18 recordType:a5];
  v20 = [v10 recordChangeTag];

  if (!v20)
  {
    if ((v19 & 1) == 0)
    {
      fmdb = self->_fmdb;
      v40[0] = @"record_metadata";
      goto LABEL_20;
    }

    v22 = 0;
LABEL_9:
    v24 = objc_alloc_init(NSMutableDictionary);
    v25 = [v10 recordChangeTag];

    if (v25)
    {
      if (!v22)
      {
        v36 = +[NSNull null];
        [v24 setObject:v36 forKey:@"record_metadata"];

        if (!v11)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }

      [v24 setObject:v22 forKey:@"record_metadata"];
    }

    if (!v11)
    {
LABEL_14:
      if (v12)
      {
        [v24 setObject:v12 forKey:@"deleted_crdt"];
      }

      if (![v24 count])
      {

        goto LABEL_34;
      }

      v26 = self->_fmdb;
      v42[0] = @"record_name = ?";
      v42[1] = v15;
      v42[2] = @" AND stream_identifier = ?";
      v42[3] = v18;
      v42[4] = @" AND record_type = ?";
      v27 = [NSNumber numberWithUnsignedInteger:a5];
      v42[5] = v27;
      v28 = [NSArray arrayWithObjects:v42 count:6];
      LOBYTE(v26) = [(_bmFMDatabase *)v26 UPDATE:@"CKRecord" SET:v24 WHERE:v28];

      if (v26)
      {
        goto LABEL_34;
      }

      goto LABEL_30;
    }

LABEL_13:
    [v24 setObject:v11 forKey:@"sync_to_cloud_kit"];
    goto LABEL_14;
  }

  v21 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:1];
  [v10 encodeSystemFieldsWithCoder:v21];
  v22 = [v21 encodedData];

  if (v19)
  {
    goto LABEL_9;
  }

  fmdb = self->_fmdb;
  v40[0] = @"record_metadata";
  if (v22)
  {
    v37 = 0;
    v23 = v22;
    goto LABEL_21;
  }

LABEL_20:
  v23 = +[NSNull null];
  v22 = 0;
  v37 = 1;
LABEL_21:
  v41[0] = v23;
  v41[1] = v15;
  v39 = v15;
  v40[1] = @"record_name";
  v40[2] = @"stream_identifier";
  v29 = &__kCFBooleanFalse;
  v30 = v11;
  if (v11)
  {
    v29 = v11;
  }

  v41[2] = v18;
  v41[3] = v29;
  v40[3] = @"sync_to_cloud_kit";
  v40[4] = @"deleted_crdt";
  v31 = v12;
  if (!v12)
  {
    v31 = +[NSNull null];
  }

  v41[4] = v31;
  v40[5] = @"record_type";
  v32 = [NSNumber numberWithUnsignedInteger:a5];
  v41[5] = v32;
  v33 = [NSDictionary dictionaryWithObjects:v41 forKeys:v40 count:6];
  v34 = [(_bmFMDatabase *)fmdb INSERT_INTO:@"CKRecord" VALUES:v33];

  if (!v12)
  {
  }

  if (v37)
  {
  }

  v11 = v30;
  v15 = v39;
  if ((v34 & 1) == 0)
  {
LABEL_30:
    v35 = __biome_log_for_category();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
    {
      sub_10004C3BC();
    }
  }

LABEL_34:
}

- (id)getSystemFieldsDataForRecordName:(id)a3 zoneName:(id)a4 recordType:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  queue = self->_queue;
  if (queue)
  {
    dispatch_assert_queue_V2(queue);
  }

  fmdb = self->_fmdb;
  v17[0] = @"record_name = ?";
  v17[1] = v8;
  v17[2] = @" AND record_type = ?";
  v12 = [NSNumber numberWithUnsignedInteger:a5];
  v17[3] = v12;
  v17[4] = @" AND stream_identifier = ?";
  v17[5] = v9;
  v13 = [NSArray arrayWithObjects:v17 count:6];
  v14 = [(_bmFMDatabase *)fmdb SELECT_FROM:@"CKRecord" COLUMNS:&off_10007F0A8 WHERE:v13];

  if ([v14 next])
  {
    v15 = [v14 dataForColumnIndex:0];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (BOOL)resetCKRecordsMetaDataAndSetToSyncForZone:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  if (queue)
  {
    dispatch_assert_queue_V2(queue);
  }

  fmdb = self->_fmdb;
  v14[0] = @"record_metadata";
  v7 = +[NSNull null];
  v15[0] = v7;
  v14[1] = @"local_mergeable_value";
  v8 = +[NSNull null];
  v14[2] = @"sync_to_cloud_kit";
  v15[1] = v8;
  v15[2] = &__kCFBooleanTrue;
  v9 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:3];
  v13[0] = @"stream_identifier = ?";
  v13[1] = v4;
  v13[2] = @" AND record_type = ?";
  v13[3] = &off_10007F408;
  v10 = [NSArray arrayWithObjects:v13 count:4];
  LOBYTE(fmdb) = [(_bmFMDatabase *)fmdb UPDATE:@"CKRecord" SET:v9 WHERE:v10];

  v11 = [(BMSyncDatabase *)self clearCKMergeableRecordValueServerMergeableValuesForZoneName:v4];
  return fmdb & v11;
}

- (void)resetMetadataForRecord:(id)a3 zoneName:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  if (queue)
  {
    dispatch_assert_queue_V2(queue);
  }

  fmdb = self->_fmdb;
  v16[0] = @"record_metadata";
  v10 = +[NSNull null];
  v16[1] = @"local_mergeable_value";
  v17[0] = v10;
  v11 = +[NSNull null];
  v17[1] = v11;
  v12 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:2];
  v15[0] = @"record_name = ?";
  v15[1] = v6;
  v15[2] = @" AND stream_identifier = ?";
  v15[3] = v7;
  v13 = [NSArray arrayWithObjects:v15 count:4];
  LOBYTE(fmdb) = [(_bmFMDatabase *)fmdb UPDATE:@"CKRecord" SET:v12 WHERE:v13];

  if ((fmdb & 1) == 0)
  {
    v14 = __biome_log_for_category();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10004C430();
    }
  }
}

- (BOOL)saveCKRecordServerMergeableValue:(id)a3 recordName:(id)a4 zoneName:(id)a5 locationRow:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  queue = self->_queue;
  if (queue)
  {
    dispatch_assert_queue_V2(queue);
  }

  v15 = 1;
  if (![(BMSyncDatabase *)self ckRecordExists:v11 zoneName:v12 recordType:1])
  {
    fmdb = self->_fmdb;
    v21[0] = @"location_id";
    v17 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v13 primaryKey]);
    v22[0] = v17;
    v22[1] = &__kCFBooleanFalse;
    v21[1] = @"sync_to_cloud_kit";
    v21[2] = @"deleting";
    v22[2] = &__kCFBooleanFalse;
    v22[3] = v11;
    v21[3] = @"record_name";
    v21[4] = @"stream_identifier";
    v21[5] = @"record_type";
    v22[4] = v12;
    v22[5] = &off_10007F408;
    v18 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:6];
    LOBYTE(fmdb) = [(_bmFMDatabase *)fmdb INSERT_INTO:@"CKRecord" VALUES:v18];

    if ((fmdb & 1) == 0)
    {
      v20 = __biome_log_for_category();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        sub_10004C498();
      }

      v15 = 0;
      if (v10)
      {
        goto LABEL_7;
      }

      goto LABEL_8;
    }

    v15 = 1;
  }

  if (v10)
  {
LABEL_7:
    v15 = [(BMSyncDatabase *)self saveCKMergeableRecordValueRecordName:v11 zoneName:v12 mergeableRecordValueData:v10];
  }

LABEL_8:

  return v15;
}

- (BOOL)saveCKRecordHighestDeletedLocationRow:(id)a3 recordName:(id)a4 zoneName:(id)a5 recordExists:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  queue = self->_queue;
  if (queue)
  {
    dispatch_assert_queue_V2(queue);
  }

  fmdb = self->_fmdb;
  if (v6)
  {
    v23 = @"location_id";
    v15 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v10 primaryKey]);
    v24 = v15;
    v16 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    v22[0] = @"record_name = ?";
    v22[1] = v11;
    v22[2] = @" AND stream_identifier = ?";
    v22[3] = v12;
    v22[4] = @" AND record_type = ?";
    v22[5] = &off_10007F420;
    v17 = [NSArray arrayWithObjects:v22 count:6];
    v18 = [(_bmFMDatabase *)fmdb UPDATE:@"CKRecord" SET:v16 WHERE:v17];
  }

  else
  {
    v20[0] = @"location_id";
    v15 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v10 primaryKey]);
    v21[0] = v15;
    v21[1] = &__kCFBooleanFalse;
    v20[1] = @"sync_to_cloud_kit";
    v20[2] = @"deleting";
    v21[2] = &__kCFBooleanFalse;
    v21[3] = v11;
    v20[3] = @"record_name";
    v20[4] = @"stream_identifier";
    v20[5] = @"record_type";
    v21[4] = v12;
    v21[5] = &off_10007F420;
    v16 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:6];
    v18 = [(_bmFMDatabase *)fmdb INSERT_INTO:@"CKRecord" VALUES:v16];
  }

  return v18;
}

- (BOOL)saveCKRecordLocalMergeableValue:(id)a3 recordName:(id)a4 zoneName:(id)a5 locationRow:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  queue = self->_queue;
  if (queue)
  {
    dispatch_assert_queue_V2(queue);
  }

  v15 = [(BMSyncDatabase *)self ckRecordExists:v11 zoneName:v12 recordType:1];
  fmdb = self->_fmdb;
  if (!v15)
  {
    v24[0] = @"location_id";
    v17 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v13 primaryKey]);
    v25[0] = v17;
    v25[1] = &__kCFBooleanFalse;
    v24[1] = @"sync_to_cloud_kit";
    v24[2] = @"deleting";
    v25[2] = &__kCFBooleanFalse;
    v25[3] = v11;
    v24[3] = @"record_name";
    v24[4] = @"stream_identifier";
    v25[4] = v12;
    v25[5] = &off_10007F408;
    v21 = v10;
    v24[5] = @"record_type";
    v24[6] = @"local_mergeable_value";
    if (!v10)
    {
      v21 = +[NSNull null];
    }

    v25[6] = v21;
    v22 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:7];
    v20 = [(_bmFMDatabase *)fmdb INSERT_INTO:@"CKRecord" VALUES:v22];

    if (!v10)
    {
    }

    goto LABEL_12;
  }

  v27 = @"local_mergeable_value";
  v17 = v10;
  if (!v10)
  {
    v17 = +[NSNull null];
  }

  v28 = v17;
  v18 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
  v26[0] = @"record_name = ?";
  v26[1] = v11;
  v26[2] = @" AND stream_identifier = ?";
  v26[3] = v12;
  v26[4] = @" AND record_type = ?";
  v26[5] = &off_10007F408;
  v19 = [NSArray arrayWithObjects:v26 count:6];
  v20 = [(_bmFMDatabase *)fmdb UPDATE:@"CKRecord" SET:v18 WHERE:v19];

  if (!v10)
  {
LABEL_12:
  }

  return v20;
}

- (BOOL)clearCKRecordLocalMergeableValueAndSetToSyncForZone:(id)a3
{
  v4 = a3;
  v5 = __biome_log_for_category();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v16 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "clearCKRecordLocalMergeableValueAndSetToSyncForZone %@", buf, 0xCu);
  }

  fmdb = self->_fmdb;
  v13[0] = @"local_mergeable_value";
  v7 = +[NSNull null];
  v13[1] = @"sync_to_cloud_kit";
  v14[0] = v7;
  v14[1] = &__kCFBooleanTrue;
  v8 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:2];
  v12[0] = @"stream_identifier = ?";
  v12[1] = v4;
  v12[2] = @" AND record_type = ?";
  v12[3] = &off_10007F408;
  v9 = [NSArray arrayWithObjects:v12 count:4];
  LOBYTE(fmdb) = [(_bmFMDatabase *)fmdb UPDATE:@"CKRecord" SET:v8 WHERE:v9];

  v10 = [(BMSyncDatabase *)self clearCKMergeableRecordValueServerMergeableValuesForZoneName:v4];
  return fmdb & v10;
}

- (id)ckRecordForRecordName:(id)a3 zoneName:(id)a4 recordType:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  queue = self->_queue;
  if (queue)
  {
    dispatch_assert_queue_V2(queue);
  }

  fmdb = self->_fmdb;
  v17[0] = @"record_name = ?";
  v17[1] = v8;
  v17[2] = @" AND record_type = ?";
  v12 = [NSNumber numberWithUnsignedInteger:a5];
  v17[3] = v12;
  v17[4] = @" AND stream_identifier = ?";
  v17[5] = v9;
  v13 = [NSArray arrayWithObjects:v17 count:6];
  v14 = [(_bmFMDatabase *)fmdb SELECT_FROM:@"CKRecord" COLUMNS:&off_10007F0C0 WHERE:v13];

  if ([v14 next])
  {
    v15 = [[BMSyncCKRecord alloc] initWithFMResultSet:v14];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (BOOL)ckRecordExists:(id)a3 zoneName:(id)a4 recordType:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  queue = self->_queue;
  if (queue)
  {
    dispatch_assert_queue_V2(queue);
  }

  fmdb = self->_fmdb;
  v16[0] = @"record_name = ?";
  v16[1] = v8;
  v16[2] = @" AND record_type = ?";
  v12 = [NSNumber numberWithUnsignedInteger:a5];
  v16[3] = v12;
  v16[4] = @" AND stream_identifier = ?";
  v16[5] = v9;
  v13 = [NSArray arrayWithObjects:v16 count:6];
  v14 = [(_bmFMDatabase *)fmdb SELECT_FROM:@"CKRecord" COLUMNS:&off_10007F0D8 WHERE:v13];

  LOBYTE(v12) = [v14 next];
  return v12;
}

- (void)updateAllCKRecordsAtOrBeforeLocationToBeDeletedOnSync:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  if (queue)
  {
    dispatch_assert_queue_V2(queue);
  }

  fmdb = self->_fmdb;
  v13[0] = @"record_type = ?";
  v13[1] = &off_10007F408;
  v13[2] = CFSTR(" AND location_id IN(    SELECT id FROM CRDTLocation WHERE site = ?");
  v7 = [v4 siteIdentifier];
  v13[3] = v7;
  v13[4] = @"     AND stream = ?";
  v8 = [v4 streamName];
  v13[5] = v8;
  v13[6] = @"     AND day <= ?");
  v9 = [v4 day];
  [v9 timeIntervalSinceReferenceDate];
  v10 = [NSNumber numberWithDouble:?];
  v13[7] = v10;
  v11 = [NSArray arrayWithObjects:v13 count:8];
  LOBYTE(fmdb) = [(_bmFMDatabase *)fmdb UPDATE:@"CKRecord" SET:&off_10007F610 WHERE:v11];

  if ((fmdb & 1) == 0)
  {
    v12 = __biome_log_for_category();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10004C500();
    }
  }
}

- (void)markCKRecordsAtOrBeforeLocationToBeDeletedOnSync:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  if (queue)
  {
    dispatch_assert_queue_V2(queue);
  }

  fmdb = self->_fmdb;
  v16 = @"location_id";
  v7 = +[NSNull null];
  v17 = v7;
  v8 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  v15[0] = @"record_type = ?";
  v15[1] = &off_10007F408;
  v15[2] = CFSTR(" AND location_id IN(    SELECT id FROM CRDTLocation WHERE site = ?");
  v9 = [v4 siteIdentifier];
  v15[3] = v9;
  v15[4] = @"     AND stream = ?";
  v10 = [v4 streamName];
  v15[5] = v10;
  v15[6] = @"     AND day <= ?");
  v11 = [v4 day];
  [v11 timeIntervalSinceReferenceDate];
  v12 = [NSNumber numberWithDouble:?];
  v15[7] = v12;
  v13 = [NSArray arrayWithObjects:v15 count:8];
  LOBYTE(fmdb) = [(_bmFMDatabase *)fmdb UPDATE:@"CKRecord" SET:v8 WHERE:v13];

  if ((fmdb & 1) == 0)
  {
    v14 = __biome_log_for_category();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10004C500();
    }
  }
}

- (void)enumerateRecordsWithBlock:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  if (queue)
  {
    dispatch_assert_queue_V2(queue);
  }

  v6 = [(_bmFMDatabase *)self->_fmdb SELECT_FROM:@"CKRecord" COLUMNS:&off_10007F0F0 JOIN:&off_10007F108 WHERE:&off_10007F120 ORDER_BY:&off_10007F138 LIMIT:0];
  v9 = 0;
  do
  {
    if (![v6 next])
    {
      break;
    }

    v7 = objc_autoreleasePoolPush();
    v8 = [[BMSyncCKRecord alloc] initWithFMResultSet:v6];
    v4[2](v4, v8, &v9);

    objc_autoreleasePoolPop(v7);
  }

  while (v9 != 1);
}

- (void)deleteCKRecordsAtOrBeforeLocation:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  if (queue)
  {
    dispatch_assert_queue_V2(queue);
  }

  fmdb = self->_fmdb;
  v13[0] = @"record_type = ?";
  v13[1] = &off_10007F408;
  v13[2] = CFSTR(" AND location_id IN(    SELECT id FROM CRDTLocation WHERE site = ?");
  v7 = [v4 siteIdentifier];
  v13[3] = v7;
  v13[4] = @"     AND stream = ?";
  v8 = [v4 streamName];
  v13[5] = v8;
  v13[6] = @"     AND day <= ?");
  v9 = [v4 day];
  [v9 timeIntervalSinceReferenceDate];
  v10 = [NSNumber numberWithDouble:?];
  v13[7] = v10;
  v11 = [NSArray arrayWithObjects:v13 count:8];
  LOBYTE(fmdb) = [(_bmFMDatabase *)fmdb DELETE_FROM:@"CKRecord" WHERE:v11];

  if ((fmdb & 1) == 0)
  {
    v12 = __biome_log_for_category();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10004C568();
    }
  }
}

- (void)deleteCKRecordsForStreamName:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  if (queue)
  {
    dispatch_assert_queue_V2(queue);
  }

  fmdb = self->_fmdb;
  v9[0] = @"stream_identifier = ?";
  v9[1] = v4;
  v7 = [NSArray arrayWithObjects:v9 count:2];
  LOBYTE(fmdb) = [(_bmFMDatabase *)fmdb DELETE_FROM:@"CKRecord" WHERE:v7];

  if ((fmdb & 1) == 0)
  {
    v8 = __biome_log_for_category();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10004C5D0();
    }
  }
}

- (void)deleteCKRecordAtLocation:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  if (queue)
  {
    dispatch_assert_queue_V2(queue);
  }

  v6 = [v4 recordName];
  fmdb = self->_fmdb;
  v11[0] = @"record_name = ?";
  v11[1] = v6;
  v11[2] = @" AND record_type = ?";
  v11[3] = &off_10007F408;
  v11[4] = @" AND stream_identifier = ?";
  v8 = [v4 streamName];
  v11[5] = v8;
  v9 = [NSArray arrayWithObjects:v11 count:6];
  LOBYTE(fmdb) = [(_bmFMDatabase *)fmdb DELETE_FROM:@"CKRecord" WHERE:v9];

  if ((fmdb & 1) == 0)
  {
    v10 = __biome_log_for_category();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10004C638();
    }
  }
}

- (void)enumerateCKSyncRecordRecordsSetForDeletingUsingBlock:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  if (queue)
  {
    dispatch_assert_queue_V2(queue);
  }

  v6 = [(_bmFMDatabase *)self->_fmdb SELECT_FROM:@"CKRecord" COLUMNS:&off_10007F150 WHERE:&off_10007F168];
  v16 = 0;
  v15 = CKCurrentUserDefaultName;
  v7 = @"stream_identifier";
  do
  {
    if (![v6 next])
    {
      break;
    }

    v8 = objc_autoreleasePoolPush();
    v9 = [v6 stringForColumn:v7];
    v10 = [v6 stringForColumn:@"record_name"];
    v11 = v10;
    if (v9 && v10)
    {
      v12 = v7;
      v13 = [[CKRecordZoneID alloc] initWithZoneName:v9 ownerName:v15];
      v14 = [[CKRecordID alloc] initWithRecordName:v11 zoneID:v13];
      v4[2](v4, v14, &v16);

      v7 = v12;
    }

    objc_autoreleasePoolPop(v8);
  }

  while (v16 != 1);
}

- (id)gatherAllCKSyncRecordRecordsToBeDeleted
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_100037FE8;
  v9 = sub_100037FF8;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100038000;
  v4[3] = &unk_1000798F0;
  v4[4] = &v5;
  [(BMSyncDatabase *)self enumerateCKSyncRecordRecordsSetForDeletingUsingBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (void)deleteAllCKRecordsInZone:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  if (queue)
  {
    dispatch_assert_queue_V2(queue);
  }

  fmdb = self->_fmdb;
  v10[0] = @"stream_identifier = ?";
  v7 = [v4 zoneName];
  v10[1] = v7;
  v8 = [NSArray arrayWithObjects:v10 count:2];
  LOBYTE(fmdb) = [(_bmFMDatabase *)fmdb DELETE_FROM:@"CKRecord" WHERE:v8];

  if ((fmdb & 1) == 0)
  {
    v9 = __biome_log_for_category();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10004C6A0(v4, v9);
    }
  }
}

- (unint64_t)ckRecordCountForRecordType:(unint64_t)a3
{
  queue = self->_queue;
  if (queue)
  {
    dispatch_assert_queue_V2(queue);
  }

  fmdb = self->_fmdb;
  v12[0] = @"record_type = ?";
  v7 = [NSNumber numberWithUnsignedInteger:a3];
  v12[1] = v7;
  v8 = [NSArray arrayWithObjects:v12 count:2];
  v9 = [(_bmFMDatabase *)fmdb SELECT_FROM:@"CKRecord" COLUMNS:&off_10007F180 WHERE:v8];

  if ([v9 next])
  {
    v10 = [v9 unsignedLongLongIntForColumnIndex:0];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)upsertCKRecordWithLocation:(id)a3 inStream:(id)a4
{
  v6 = a3;
  v25 = a4;
  fmdb = self->_fmdb;
  v29[0] = @"location_id = ?";
  v8 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v6 primaryKey]);
  v29[1] = v8;
  v29[2] = @" AND record_type = ?";
  v29[3] = &off_10007F408;
  v9 = [NSArray arrayWithObjects:v29 count:4];
  v10 = [(_bmFMDatabase *)fmdb SELECT_FROM:@"CKRecord" COLUMNS:&off_10007F198 WHERE:v9];

  v11 = [v10 next];
  v12 = self->_fmdb;
  if (v11)
  {
    v28[0] = @"location_id =?";
    v13 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v6 primaryKey]);
    v28[1] = v13;
    v28[2] = @" AND record_type = ?";
    v28[3] = &off_10007F408;
    v14 = [NSArray arrayWithObjects:v28 count:4];
    v15 = [(_bmFMDatabase *)v12 UPDATE:@"CKRecord" SET:&off_10007F638 WHERE:v14];

    v16 = v25;
    if (v15)
    {
LABEL_3:
      v17 = 1;
      goto LABEL_8;
    }
  }

  else
  {
    v26[0] = @"location_id";
    v18 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v6 primaryKey]);
    v27[0] = v18;
    v27[1] = &__kCFBooleanTrue;
    v26[1] = @"sync_to_cloud_kit";
    v26[2] = @"deleting";
    v27[2] = &__kCFBooleanFalse;
    v26[3] = @"record_name";
    v19 = [v6 location];
    v20 = [v19 recordName];
    v16 = v25;
    v27[3] = v20;
    v27[4] = v25;
    v26[4] = @"stream_identifier";
    v26[5] = @"record_type";
    v27[5] = &off_10007F408;
    v21 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:6];
    v22 = [(_bmFMDatabase *)v12 INSERT_INTO:@"CKRecord" VALUES:v21];

    if (v22)
    {
      goto LABEL_3;
    }
  }

  v23 = __biome_log_for_category();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
  {
    sub_10004C734(&self->_fmdb, v23);
  }

  v17 = 0;
LABEL_8:

  return v17;
}

- (BOOL)disableAllCKSyncRecordsForSite:(id)a3 stream:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  if (queue)
  {
    dispatch_assert_queue_V2(queue);
  }

  fmdb = self->_fmdb;
  v18[0] = &__kCFBooleanTrue;
  v17[0] = @"sync_to_cloud_kit";
  v17[1] = @"local_mergeable_value";
  v10 = +[NSNull null];
  v18[1] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:2];
  v16[0] = CFSTR("location_id IN (SELECT id FROM CRDTLocation WHERE site = ?");
  v16[1] = v6;
  v16[2] = @" AND stream = ?");
  v16[3] = v7;
  v16[4] = @" AND deleted_crdt = ?";
  v16[5] = &__kCFBooleanFalse;
  v16[6] = @" AND record_type = ?";
  v16[7] = &off_10007F408;
  v12 = [NSArray arrayWithObjects:v16 count:8];
  v13 = [(_bmFMDatabase *)fmdb UPDATE:@"CKRecord" SET:v11 WHERE:v12];

  if ((v13 & 1) == 0)
  {
    v14 = __biome_log_for_category();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10004C7CC();
    }
  }

  return v13;
}

- (BOOL)enableAllCKSyncRecordsPreviouslyDisabledForSite:(id)a3 stream:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  if (queue)
  {
    dispatch_assert_queue_V2(queue);
  }

  fmdb = self->_fmdb;
  v14[0] = CFSTR("location_id IN (SELECT id FROM CRDTLocation WHERE site = ?");
  v14[1] = v6;
  v14[2] = @" AND stream = ?");
  v14[3] = v7;
  v14[4] = @" AND record_type = ?";
  v14[5] = &off_10007F408;
  v14[6] = @" AND deleted_crdt = ?";
  v14[7] = &__kCFBooleanTrue;
  v10 = [NSArray arrayWithObjects:v14 count:8];
  v11 = [(_bmFMDatabase *)fmdb UPDATE:@"CKRecord" SET:&off_10007F660 WHERE:v10];

  if ((v11 & 1) == 0)
  {
    v12 = __biome_log_for_category();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10004C7CC();
    }
  }

  return v11;
}

+ (id)primaryDatabasePath
{
  v2 = +[BMPaths syncDirectory];
  v3 = [v2 stringByAppendingPathComponent:@"sync.db"];

  return v3;
}

+ (id)primaryDatabaseWALPath
{
  v2 = [a1 primaryDatabasePath];
  v3 = [v2 stringByAppendingString:@"-wal"];

  return v3;
}

- (BMSyncDatabase)initWithQueue:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() primaryDatabasePath];
  v6 = [(BMSyncDatabase *)self initWithPath:v5 options:0 queue:v4];

  return v6;
}

- (BMSyncDatabase)initWithPath:(id)a3 options:(unint64_t)a4 queue:(id)a5
{
  v9 = a3;
  v10 = a5;
  v11 = v10;
  if (v9)
  {
    if (!v10)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  sub_10004CAE8(a2, self);
  if (v11)
  {
LABEL_3:
    dispatch_assert_queue_V2(v11);
  }

LABEL_4:
  v18.receiver = self;
  v18.super_class = BMSyncDatabase;
  v12 = [(BMSyncDatabase *)&v18 init];
  v13 = v12;
  if (v12)
  {
    v12->__internal_state_ivar = 0;
    v14 = [_bmFMDatabase databaseWithPath:v9];
    fmdb = v13->_fmdb;
    v13->_fmdb = v14;

    [(_bmFMDatabase *)v13->_fmdb setShouldCacheStatements:1];
    v13->_options = a4;
    objc_storeStrong(&v13->_queue, a5);
    loggingSuffix = v13->_loggingSuffix;
    v13->_loggingSuffix = &stru_100079C10;
  }

  return v13;
}

- (void)setName:(id)a3
{
  v7 = a3;
  if (([(NSString *)self->_name isEqual:?]& 1) == 0)
  {
    if (v7)
    {
      v5 = [[NSString alloc] initWithFormat:@"[%@]", v7];
    }

    else
    {
      v5 = &stru_100079C10;
    }

    loggingSuffix = self->_loggingSuffix;
    self->_loggingSuffix = &v5->isa;

    objc_storeStrong(&self->_name, a3);
  }
}

- (void)setState:(unint64_t)a3 error:(id)a4
{
  v7 = a4;
  objc_storeStrong(&self->__error_ivar, a4);
  self->__internal_state_ivar = a3;
  v8 = __biome_log_for_category();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    loggingSuffix = self->_loggingSuffix;
    if (a3 > 9)
    {
      v10 = @"Unknown";
    }

    else
    {
      v10 = off_1000799B8[a3];
    }

    v13 = 138412546;
    v14 = loggingSuffix;
    v15 = 2112;
    v16 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "BMSyncDatabase%@ transitioned to state: %@", &v13, 0x16u);
  }

  if (a3 == 7)
  {
    v11 = __biome_log_for_category();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_FAULT);
    if (v7)
    {
      if (v12)
      {
        sub_10004CB64(self);
      }
    }

    else if (v12)
    {
      sub_10004CBD0(self);
    }

    goto LABEL_18;
  }

  if (a3 == 9)
  {
    v11 = __biome_log_for_category();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      sub_10004CC48(self);
    }

LABEL_18:

    goto LABEL_19;
  }

  if (v7)
  {
    v11 = __biome_log_for_category();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10004CCC4(self);
    }

    goto LABEL_18;
  }

LABEL_19:
}

- (void)setState:(unint64_t)a3 errorFormat:(id)a4
{
  v6 = a4;
  if ([v6 length])
  {
    v7 = [[NSString alloc] initWithFormat:v6 arguments:&v8];
  }

  else
  {
    v7 = 0;
  }

  [(BMSyncDatabase *)self setState:a3 error:v7];
}

- (BOOL)_tryOpen:(unint64_t)a3
{
  if ([(BMSyncDatabase *)self internalState]== 4)
  {
    return 1;
  }

  v7 = a3 + 1;
  if (v7 >= 0xA)
  {
    [(BMSyncDatabase *)self setState:9 error:@"recursion max"];
    return 0;
  }

  v8 = [(BMSyncDatabase *)self internalState];
  if (v8 <= 4)
  {
    if (v8 <= 2)
    {
      if (v8 >= 2)
      {
        if (v8 == 2)
        {
          v9 = [(_bmFMDatabase *)self->_fmdb databasePath];
          v10 = [v9 stringByDeletingLastPathComponent];

          v11 = +[NSFileManager defaultManager];
          v84 = 0;
          v12 = [v11 createDirectoryAtPath:v10 withIntermediateDirectories:1 attributes:0 error:&v84];
          v13 = v84;

          if (!v12 || v13)
          {
            v50 = [v13 localizedFailureReason];
            [(BMSyncDatabase *)self setState:9 errorFormat:@"failed to create path at: %@, reason: %@", v10, v50];

            goto LABEL_72;
          }

LABEL_12:
          self->_flags |= 1uLL;
          [(BMSyncDatabase *)self setState:3 errorFormat:&stru_100079C10];
LABEL_72:
          v51 = [(BMSyncDatabase *)self performSelector:a2 withObject:v7];

          goto LABEL_117;
        }

        goto LABEL_66;
      }

      goto LABEL_23;
    }

    if (v8 != 3)
    {
      return 1;
    }

    if (self->_flags)
    {
      v20 = 6;
    }

    else
    {
      v20 = 2;
    }

    if (self->_options)
    {
      v21 = v20 | 0x600000;
    }

    else
    {
      v21 = v20;
    }

    if ([(_bmFMDatabase *)self->_fmdb openWithFlags:v21])
    {
      v10 = [NSString stringWithFormat:@"PRAGMA journal_mode = WALPRAGMA foreign_keys = ON;PRAGMA cache_spill = %u;", 250];;
      if ([(_bmFMDatabase *)self->_fmdb executeStatements:v10])
      {
        if ([(_bmFMDatabase *)self->_fmdb tableExists:@"Metadata"])
        {
          v22 = [(_bmFMDatabase *)self->_fmdb userVersion];
          if (v22 >= 0x23)
          {
            v23 = @"version too new";
LABEL_124:
            v54 = self;
            v55 = 7;
            goto LABEL_125;
          }

          v69 = v22;
          has_internal_diagnostics = os_variant_has_internal_diagnostics();
          if (v69 <= 0x10 && has_internal_diagnostics)
          {
            v23 = @"internal build version < 17";
            goto LABEL_124;
          }

          if (os_variant_has_internal_diagnostics() && v69 - 17 <= 2)
          {
            v23 = @"internal build version between 17 and 19";
            goto LABEL_124;
          }

          if (v69 != 34)
          {
            v23 = &stru_100079C10;
            v54 = self;
            v55 = 8;
            goto LABEL_125;
          }

          goto LABEL_91;
        }

        self->_flags = 1;
        [(_bmFMDatabase *)self->_fmdb beginTransaction];
        fmdb = self->_fmdb;
        v61 = sub_10003AF24();
        [(_bmFMDatabase *)fmdb executeStatements:v61];

        [(_bmFMDatabase *)self->_fmdb setUserVersion:34];
        if ([(_bmFMDatabase *)self->_fmdb commit])
        {
LABEL_91:
          v23 = &stru_100079C10;
          v54 = self;
          v55 = 4;
          goto LABEL_125;
        }
      }

      else
      {
        v53 = __biome_log_for_category();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
        {
          sub_10004CD40(v53);
        }
      }

      v23 = &stru_100079C10;
      v54 = self;
      v55 = 9;
LABEL_125:
      [(BMSyncDatabase *)v54 setState:v55 errorFormat:v23];
      v73 = [(BMSyncDatabase *)self performSelector:a2 withObject:v7]== 0;
      goto LABEL_126;
    }

    v49 = [(_bmFMDatabase *)self->_fmdb lastErrorCode];
    if (v49 <= 13)
    {
      if (v49 == 5)
      {
        v17 = &stru_100079C10;
        v18 = self;
        v19 = 5;
        goto LABEL_110;
      }

      if (v49 != 11)
      {
        goto LABEL_96;
      }

LABEL_89:
      v17 = &stru_100079C10;
      v18 = self;
      v19 = 7;
      goto LABEL_110;
    }

    if (v49 == 14)
    {
      v62 = +[NSFileManager defaultManager];
      v63 = [(_bmFMDatabase *)self->_fmdb databasePath];
      v64 = [v62 fileExistsAtPath:v63];

      if ((v64 & 1) == 0)
      {
        v17 = &stru_100079C10;
        v18 = self;
        v19 = 2;
        goto LABEL_110;
      }
    }

    else if (v49 == 23)
    {
      if ((self->_options & 1) == 0)
      {
        v17 = &stru_100079C10;
        v18 = self;
        v19 = 6;
        goto LABEL_110;
      }

      goto LABEL_89;
    }

LABEL_96:
    v65 = sqlite3_system_errno([(_bmFMDatabase *)self->_fmdb sqliteHandle]);
    if (v65)
    {
      v66 = strerror(v65);
    }

    else
    {
      v66 = sqlite3_errstr([(_bmFMDatabase *)self->_fmdb lastErrorCode]);
    }

    v71 = [NSString stringWithUTF8String:v66];
    [(BMSyncDatabase *)self setState:9 error:v71];

    goto LABEL_108;
  }

  if (v8 <= 6)
  {
    if (v8 != 5)
    {
      if (v7)
      {
        return 0;
      }

      [(BMSyncDatabase *)self setState:3 errorFormat:&stru_100079C10];
      v14 = self;
      v15 = a2;
      v16 = 0;
      return [(BMSyncDatabase *)v14 performSelector:v15 withObject:v16]!= 0;
    }

LABEL_23:
    v17 = &stru_100079C10;
    v18 = self;
    v19 = 3;
LABEL_110:
    [(BMSyncDatabase *)v18 setState:v19 errorFormat:v17, v76];
    v14 = self;
    v15 = a2;
    v16 = v7;
    return [(BMSyncDatabase *)v14 performSelector:v15 withObject:v16]!= 0;
  }

  if (v8 == 7)
  {
    if (self->_flags)
    {
LABEL_108:
      v17 = &stru_100079C10;
      goto LABEL_109;
    }

    [(_bmFMDatabase *)self->_fmdb close];
    v24 = +[NSFileManager defaultManager];
    v25 = [(_bmFMDatabase *)self->_fmdb databasePath];
    v79 = 0;
    v26 = [v24 removeItemAtPath:v25 error:&v79];
    v10 = v79;

    if (v26 && !v10)
    {
LABEL_38:

      v27 = +[NSFileManager defaultManager];
      v28 = [(_bmFMDatabase *)self->_fmdb databasePath];
      v29 = [v28 stringByAppendingString:@"-wal"];
      v78 = 0;
      v30 = [v27 removeItemAtPath:v29 error:&v78];
      v10 = v78;

      if (v30 && !v10)
      {
        goto LABEL_40;
      }

      v58 = [v10 domain];
      if ([v58 isEqual:NSCocoaErrorDomain])
      {
        v59 = [v10 code];

        if (v59 == 4)
        {
LABEL_40:

          v31 = +[NSFileManager defaultManager];
          v32 = [(_bmFMDatabase *)self->_fmdb databasePath];
          v33 = [v32 stringByAppendingString:@"-shm"];
          v77 = 0;
          v34 = [v31 removeItemAtPath:v33 error:&v77];
          v10 = v77;

          if (v34 && !v10)
          {
LABEL_42:
            v35 = [(BMSyncDatabase *)self corruptionHandler];
            v13 = v35;
            if (v35)
            {
              (*(v35 + 16))(v35);
            }

            goto LABEL_12;
          }

          v67 = [v10 domain];
          if ([v67 isEqual:NSCocoaErrorDomain])
          {
            v68 = [v10 code];

            if (v68 == 4)
            {
              goto LABEL_42;
            }
          }

          else
          {
          }

          v76 = v10;
          v72 = @"failed to delete corrupt database SHM file: %@";
LABEL_115:
          [(BMSyncDatabase *)self setState:9 errorFormat:v72, v76];
LABEL_116:
          v51 = [(BMSyncDatabase *)self performSelector:a2 withObject:v7];
          goto LABEL_117;
        }
      }

      else
      {
      }

      [(BMSyncDatabase *)self setState:9 errorFormat:@"failed to delete corrupt database WAL file: %@", v10];
      goto LABEL_116;
    }

    v56 = [v10 domain];
    if ([v56 isEqual:NSCocoaErrorDomain])
    {
      v57 = [v10 code];

      if (v57 == 4)
      {
        goto LABEL_38;
      }
    }

    else
    {
    }

    [(BMSyncDatabase *)self setState:9 errorFormat:@"failed to delete corrupt database file: %@", v10];
    goto LABEL_116;
  }

  if (v8 != 8)
  {
    if (v8 == 9)
    {
      return 0;
    }

LABEL_66:
    v76 = [(BMSyncDatabase *)self internalState];
    v17 = @"unhandled state %llu";
LABEL_109:
    v18 = self;
    v19 = 9;
    goto LABEL_110;
  }

  v36 = [(_bmFMDatabase *)self->_fmdb userVersion];
  if (v36 > 0x21)
  {
LABEL_65:
    v17 = &stru_100079C10;
    v18 = self;
    v19 = 4;
    goto LABEL_110;
  }

  LODWORD(v37) = v36;
  while (1)
  {
    v37 = (v37 + 1);
    v38 = __biome_log_for_category();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
    {
      loggingSuffix = self->_loggingSuffix;
      *buf = 138412546;
      v87 = loggingSuffix;
      v88 = 1024;
      v89 = v37;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, "BMSyncDatabase%@ Migrating database to version %u", buf, 0x12u);
    }

    v40 = sub_10003AF74();
    v41 = [NSNumber numberWithUnsignedInt:v37];
    v10 = [v40 objectForKeyedSubscript:v41];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      break;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v44 = [v10 sqlStatements];
      [(_bmFMDatabase *)self->_fmdb beginTransaction];
      v80 = 0u;
      v81 = 0u;
      v82 = 0u;
      v83 = 0u;
      v42 = v44;
      v45 = [v42 countByEnumeratingWithState:&v80 objects:v85 count:16];
      if (v45)
      {
        v46 = v45;
        v47 = *v81;
        while (2)
        {
          for (i = 0; i != v46; i = i + 1)
          {
            if (*v81 != v47)
            {
              objc_enumerationMutation(v42);
            }

            if (![(_bmFMDatabase *)self->_fmdb executeStatements:*(*(&v80 + 1) + 8 * i)])
            {
              v52 = [(_bmFMDatabase *)self->_fmdb lastError];
              [(BMSyncDatabase *)self setState:7 errorFormat:@"migration to version %u failed with error %@", v37, v52];

              v51 = [(BMSyncDatabase *)self performSelector:a2 withObject:v7];
              goto LABEL_74;
            }
          }

          v46 = [v42 countByEnumeratingWithState:&v80 objects:v85 count:16];
          if (v46)
          {
            continue;
          }

          break;
        }
      }

      [(_bmFMDatabase *)self->_fmdb setUserVersion:v37];
      if (![(_bmFMDatabase *)self->_fmdb commit])
      {
LABEL_118:
        [(BMSyncDatabase *)self setState:9 errorFormat:&stru_100079C10];
        goto LABEL_120;
      }

      goto LABEL_51;
    }

    [(_bmFMDatabase *)self->_fmdb beginTransaction];
    [(_bmFMDatabase *)self->_fmdb setUserVersion:v37];
    if (![(_bmFMDatabase *)self->_fmdb commit])
    {
      v72 = &stru_100079C10;
      goto LABEL_115;
    }

LABEL_64:

    if (v37 == 34)
    {
      goto LABEL_65;
    }
  }

  v42 = [v10 customFunctionName];
  v43 = NSSelectorFromString(v42);
  if (!v43)
  {
    goto LABEL_118;
  }

  if (([(BMSyncDatabase *)self methodForSelector:v43])(self, v43))
  {
LABEL_51:

    goto LABEL_64;
  }

  v74 = [(_bmFMDatabase *)self->_fmdb lastError];
  [(BMSyncDatabase *)self setState:7 errorFormat:@"custom migration to version %u failed with error %@", v37, v74];

LABEL_120:
  v51 = [(BMSyncDatabase *)self performSelector:a2 withObject:v7];
LABEL_74:

LABEL_117:
  v73 = v51 == 0;
LABEL_126:
  v6 = !v73;

  return v6;
}

- (BOOL)open
{
  queue = self->_queue;
  if (queue)
  {
    dispatch_assert_queue_V2(queue);
  }

  return [(BMSyncDatabase *)self _tryOpen:0];
}

- (unint64_t)state
{
  v3 = [(BMSyncDatabase *)self internalState];
  if (v3 > 5)
  {
    if ((v3 - 7) < 2)
    {
      goto LABEL_12;
    }

    v4 = 3;
    if (v3 != 9)
    {
      v4 = 0;
    }

    if (v3 == 6)
    {
      return 2;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    if ((v3 - 2) < 2)
    {
      goto LABEL_12;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        return 0;
      }

LABEL_12:
      v6 = __biome_log_for_category();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        sub_10004CD84(self);
      }

      return 0;
    }

    return 1;
  }
}

- (void)close
{
  p_fmdb = &self->_fmdb;
  if ([(_bmFMDatabase *)self->_fmdb isOpen]&& ![(_bmFMDatabase *)*p_fmdb close])
  {
    v4 = __biome_log_for_category();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_10004CDFC(self, p_fmdb, v4);
    }
  }

  if ([(BMSyncDatabase *)self internalState]== 4)
  {
    [(BMSyncDatabase *)self setState:1 error:0];
  }
}

- (void)clearCachedStatements
{
  v3 = __biome_log_for_category();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    loggingSuffix = self->_loggingSuffix;
    v5 = 138412290;
    v6 = loggingSuffix;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "BMSyncDatabase%@ clearing cached statements", &v5, 0xCu);
  }

  [(_bmFMDatabase *)self->_fmdb clearCachedStatements];
}

- (void)disableStatementCachingForBlock:(id)a3
{
  v4 = a3;
  [(_bmFMDatabase *)self->_fmdb setShouldCacheStatementsWithoutClearingExistingStatements:0];
  v4[2]();
  [(_bmFMDatabase *)self->_fmdb setShouldCacheStatementsWithoutClearingExistingStatements:1];
}

- (id)valueForMetadataKey:(id)a3
{
  v3 = [(_bmFMDatabase *)self->_fmdb executeQuery:@"SELECT value FROM Metadata WHERE key=?", a3];
  if ([v3 next])
  {
    v4 = [v3 objectForColumnIndex:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)migration_StarSkySchema11ToSydRoSchema12
{
  v21 = [(_bmFMDatabase *)self->_fmdb executeStatements:@"PRAGMA foreign_keys=OFF"];
  v20 = [(_bmFMDatabase *)self->_fmdb beginTransaction];
  v3 = [[NSMutableSet alloc] initWithArray:&off_10007F300];
  v4 = objc_opt_new();
  v5 = [(_bmFMDatabase *)self->_fmdb executeQuery:@"SELECT type, name FROM sqlite_schema WHERE tbl_name = 'CRDTLocation'"];
  if ([v5 next])
  {
    do
    {
      v6 = [v5 stringForColumn:@"type"];
      v7 = [v5 stringForColumn:@"name"];
      if (![v6 isEqualToString:@"table"] || (objc_msgSend(v7, "isEqualToString:", @"CRDTLocation") & 1) == 0)
      {
        [v4 addObject:v7];
      }
    }

    while (([v5 next] & 1) != 0);
  }

  if ([v3 isEqualToSet:v4])
  {
    v8 = [(_bmFMDatabase *)self->_fmdb executeStatements:@"CREATE TABLE new_CRDTLocation (id INTEGER primary key, stream STRING NOT NULL, site STRING NOT NULL, day INTEGER NOT NULL, state INTEGER NOT NULL)"];
    v9 = v21 & v20 & v8 & [(_bmFMDatabase *)self->_fmdb executeStatements:@"INSERT INTO new_CRDTLocation SELECT * FROM CRDTLocation"];
    v10 = [(_bmFMDatabase *)self->_fmdb executeStatements:@"DROP TABLE CRDTLocation"];
    v11 = v10 & [(_bmFMDatabase *)self->_fmdb executeStatements:@"ALTER TABLE new_CRDTLocation RENAME TO CRDTLocation"];
    v12 = v9 & v11 & [(_bmFMDatabase *)self->_fmdb executeStatements:@"CREATE INDEX IF NOT EXISTS idx_crdt_location ON CRDTLocation(stream, site, day)"];
    v13 = [(_bmFMDatabase *)self->_fmdb executeStatements:@"CREATE INDEX IF NOT EXISTS idx_crdt_location_state ON CRDTLocation(stream, site, state, day DESC)"];
    v14 = v13 & [(_bmFMDatabase *)self->_fmdb executeStatements:@"CREATE TABLE IF NOT EXISTS CKRecord (location_id INTEGER, sync_to_cloud_kit BOOL, record_metadata BLOB, record_name STRING, stream_identifier STRING, mergeable_value_delta BLOB, deleting BOOL, FOREIGN KEY (location_id) REFERENCES CRDTLocation(id));"];
    v15 = v12 & v14 & [(_bmFMDatabase *)self->_fmdb executeStatements:@"CREATE INDEX IF NOT EXISTS idx_ckrecord ON CKRecord(record_name)"];
    v16 = [(_bmFMDatabase *)self->_fmdb executeQuery:@"PRAGMA foreign_key_check"];
    v17 = v15 & ~[v16 next];

    [(_bmFMDatabase *)self->_fmdb setUserVersion:12];
    LODWORD(v16) = [(_bmFMDatabase *)self->_fmdb commit];
    v18 = v17 & v16 & [(_bmFMDatabase *)self->_fmdb executeStatements:@"PRAGMA foreign_keys=ON"];
  }

  else
  {
    LOBYTE(v18) = 0;
  }

  return v18;
}

- (BOOL)migration_Schema20ToSchema21
{
  v3 = [(_bmFMDatabase *)self->_fmdb executeStatements:@"PRAGMA foreign_keys=OFF"];
  v4 = v3 & [(_bmFMDatabase *)self->_fmdb beginTransaction];
  v5 = [(_bmFMDatabase *)self->_fmdb executeStatements:@"CREATE TABLE new_CKRecord (location_id INTEGER, sync_to_cloud_kit BOOL, record_metadata BLOB, record_name STRING, stream_identifier STRING, local_mergeable_value BLOB, deleting BOOL, PRIMARY KEY (stream_identifier, record_name), FOREIGN KEY (location_id) REFERENCES CRDTLocation(id));"];
  v6 = v4 & v5 & [(_bmFMDatabase *)self->_fmdb executeStatements:@"INSERT INTO new_CKRecord SELECT location_id, sync_to_cloud_kit, record_metadata, record_name, stream_identifier, local_mergeable_value, deleting FROM CKRecord"];
  v7 = [(_bmFMDatabase *)self->_fmdb executeStatements:@"DROP TABLE CKRecord"];
  v8 = v7 & [(_bmFMDatabase *)self->_fmdb executeStatements:@"ALTER TABLE new_CKRecord RENAME TO CKRecord"];
  v9 = v6 & v8 & [(_bmFMDatabase *)self->_fmdb executeStatements:@"CREATE INDEX IF NOT EXISTS idx_ckrecord ON CKRecord(record_name)"];
  v10 = v9 & [(_bmFMDatabase *)self->_fmdb executeStatements:@"CREATE TABLE IF NOT EXISTS CKMergeableRecordValue (stream_name STRING, record_name STRING, server_mergeable_value BLOB, FOREIGN KEY (stream_name, record_name) REFERENCES CKRecord(stream_identifier, record_name))"];
  v11 = [(_bmFMDatabase *)self->_fmdb executeQuery:@"PRAGMA foreign_key_check"];
  v12 = v10 & ~[v11 next];

  [(_bmFMDatabase *)self->_fmdb setUserVersion:21];
  LOBYTE(v11) = [(_bmFMDatabase *)self->_fmdb commit];
  return v12 & v11 & [(_bmFMDatabase *)self->_fmdb executeStatements:@"PRAGMA foreign_keys=ON"];
}

- (BOOL)migration_Schema31ToSchema32
{
  v3 = [(_bmFMDatabase *)self->_fmdb executeStatements:@"PRAGMA foreign_keys=OFF"];
  v4 = v3 & [(_bmFMDatabase *)self->_fmdb beginTransaction];
  v5 = [(_bmFMDatabase *)self->_fmdb executeStatements:@"CREATE TABLE AtomBatchFiles (atom_batch_filename STRING UNIQUE NOT NULL, session_id STRING, message_id INTEGER, originating_site_identifier STRING, location_id INTEGER NOT NULL, FOREIGN KEY (location_id) REFERENCES CRDTLocation(id));"];
  v6 = v4 & v5 & [(_bmFMDatabase *)self->_fmdb executeStatements:@"CREATE INDEX idx_atom_batch_filename ON AtomBatchFiles(atom_batch_filename);"];
  v7 = [(_bmFMDatabase *)self->_fmdb executeStatements:@"CREATE TABLE new_CKAtom (stream STRING NOT NULL, site BLOB NOT NULL, clock INTEGER NOT NULL, type INTEGER NOT NULL, location_id INTEGER NOT NULL, segment_name TEXT, segment_offset INTEGER, ref_type INTEGER, ref_site BLOB, ref_clock INTEGER, ref_location_id INTEGER, value_version INTEGER, value_data BLOB, on_disk BOOLEAN, ref_atom_batch_filename STRING, atom_batch_file_index INTEGER, CONSTRAINT 'ref_type <=> (ref_site AND ref_clock)' CHECK ((ref_type IS NULL) == ((ref_site IS NULL) AND (ref_clock IS NULL))), CONSTRAINT '(ref_type, ref_site, ref_clock) != (type, site, clock)' CHECK (ref_type != type OR ref_site != site OR ref_clock != clock), CONSTRAINT 'segment_name <=> segment_offset' CHECK ((segment_name IS NULL) == (segment_offset IS NULL)), CONSTRAINT 'on_disk <=> segment_name' CHECK (CASE WHEN on_disk NOTNULL THEN segment_name NOTNULL ELSE segment_name ISNULL END), CONSTRAINT 'on_disk OR ref_atom_batch_filename <=> !data' CHECK (CASE WHEN ((on_disk NOTNULL) OR (ref_atom_batch_filename NOTNULL)) THEN value_data ISNULL ELSE value_data NOTNULL END), FOREIGN KEY (location_id) REFERENCES CRDTLocation(id), FOREIGN KEY (ref_location_id) REFERENCES CRDTLocation(id), FOREIGN KEY (ref_atom_batch_filename) REFERENCES AtomBatchFiles(atom_batch_filename), UNIQUE (stream, site, type, clock), UNIQUE (stream, site, clock, on_disk), UNIQUE (stream, site, type, clock, on_disk), UNIQUE (stream, site, type, segment_name, segment_offset));"];
  v8 = v7 & [(_bmFMDatabase *)self->_fmdb executeStatements:@"INSERT INTO new_CKAtom SELECT stream, site, clock, type, location_id, segment_name, segment_offset, ref_type, ref_site, ref_clock, ref_location_id, value_version, value_data, on_disk, location_id, ref_location_id FROM CKAtom"];
  v9 = v6 & v8 & [(_bmFMDatabase *)self->_fmdb executeStatements:@"UPDATE new_CKAtom SET ref_atom_batch_filename = NULL;"];
  v10 = [(_bmFMDatabase *)self->_fmdb executeStatements:@"DROP TABLE CKAtom"];
  v11 = v10 & [(_bmFMDatabase *)self->_fmdb executeStatements:@"ALTER TABLE new_CKAtom RENAME TO CKAtom"];
  v12 = v11 & [(_bmFMDatabase *)self->_fmdb executeStatements:@"CREATE INDEX idx_ckatom_ref_clock_type ON CKAtom(stream, ref_clock, type);"];
  v13 = v9 & v12 & [(_bmFMDatabase *)self->_fmdb executeStatements:@"CREATE INDEX idx_ckatom_segment_name ON CKAtom(stream, segment_name);"];
  v14 = v13 & [(_bmFMDatabase *)self->_fmdb executeStatements:@"CREATE INDEX idx_ckatom_location_id ON CKAtom(location_id, clock);"];
  v15 = [(_bmFMDatabase *)self->_fmdb executeQuery:@"PRAGMA foreign_key_check"];
  v16 = v14 & ~[v15 next];

  [(_bmFMDatabase *)self->_fmdb setUserVersion:32];
  LOBYTE(v15) = [(_bmFMDatabase *)self->_fmdb commit];
  return v16 & v15 & [(_bmFMDatabase *)self->_fmdb executeStatements:@"PRAGMA foreign_keys=ON"];
}

- (void)recordSessionEnd:(id)a3 timeSincePreviousSync:(double)a4
{
  v6 = a3;
  queue = self->_queue;
  if (queue)
  {
    dispatch_assert_queue_V2(queue);
  }

  v8 = __biome_log_for_category();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "recordSessionEnd: %@", buf, 0xCu);
  }

  Current = CFAbsoluteTimeGetCurrent();
  fmdb = self->_fmdb;
  v16[0] = @"end_timestamp";
  v11 = [NSNumber numberWithDouble:Current];
  v16[1] = @"time_since_previous_sync";
  v17[0] = v11;
  v12 = [NSNumber numberWithDouble:a4];
  v17[1] = v12;
  v13 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:2];
  v15[0] = @"session_id = ?";
  v15[1] = v6;
  v14 = [NSArray arrayWithObjects:v15 count:2];
  [(_bmFMDatabase *)fmdb UPDATE:@"SyncSessionLog" SET:v13 WHERE:v14];
}

- (void)recordAtomMergeResult:(unint64_t)a3 inStream:(id)a4 sessionID:(id)a5 messageID:(unint64_t)a6 ownerSite:(id)a7 originatingSite:(id)a8 eventCreatedAt:(double)a9
{
  v16 = a4;
  v17 = a5;
  v18 = a7;
  v19 = a8;
  queue = self->_queue;
  if (queue)
  {
    dispatch_assert_queue_V2(queue);
  }

  v21 = __biome_log_for_category();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    sub_10004CF74(a3, v21);
  }

  Current = CFAbsoluteTimeGetCurrent();
  fmdb = self->_fmdb;
  v30[0] = v17;
  v24 = [NSNumber numberWithUnsignedInteger:a6, @"session_id", @"message_id"];
  v30[1] = v24;
  v30[2] = v16;
  v29[2] = @"stream";
  v29[3] = @"owning_site_identifier";
  v30[3] = v18;
  v30[4] = v19;
  v29[4] = @"relayed_by_site_identifier";
  v29[5] = @"merge_result";
  v25 = [NSNumber numberWithUnsignedInteger:a3];
  v30[5] = v25;
  v29[6] = @"event_created_at";
  v26 = [NSNumber numberWithDouble:a9];
  v30[6] = v26;
  v29[7] = @"synced_at";
  v27 = [NSNumber numberWithDouble:Current];
  v30[7] = v27;
  v28 = [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:8];
  [(_bmFMDatabase *)fmdb INSERT_INTO:@"AtomMergedLog" VALUES:v28];
}

- (unint64_t)countAtomMergeResultRecords
{
  v2 = [(_bmFMDatabase *)self->_fmdb SELECT_FROM:@"AtomMergedLog" COLUMNS:&off_10007F318 WHERE:0];
  v3 = 0;
  if ([v2 next])
  {
    do
    {
      LODWORD(v3) = [v2 intForColumnIndex:0];
    }

    while (([v2 next] & 1) != 0);
    v3 = v3;
  }

  return v3;
}

- (void)computeAggregatedSessionLogsWithHandlerBlock:(id)a3
{
  v8 = a3;
  queue = self->_queue;
  if (queue)
  {
    dispatch_assert_queue_V2(queue);
  }

  v5 = [(_bmFMDatabase *)self->_fmdb executeQuery:@"select transport as transport_type, session_duration.session_id, time_since_previous_sync, duration, reachable_peers_cnt, is_reciprocal, reason as sync_reason, cast((select count(*) from DevicePeer) as text) as known_peers_cnt_str, cast(reachable_peers_cnt as real) / (select count(*) from DevicePeer) as peer_availabilty_pct, avg_sync_latency, atoms_dropped_cnt, atoms_causality_violation_cnt, atoms_received_cnt, atoms_relayed_cnt, relay_earliness, relay_unseen_peer_atom_cnt, atom_batch_bytes from(select transport, session_id, is_reciprocal, reason, (end_timestamp - start_timestamp) as duration, time_since_previous_sync from SyncSessionLog group by session_id, is_reciprocal, reason) as session_duration left join(select session_id, count(distinct device_identifier) as reachable_peers_cnt from SyncMessageLog group by session_id) as reachable_peers on session_duration.session_id=reachable_peers.session_id left join(select session_id, avg(case when event_created_at <> 0 then synced_at - event_created_at else null end) as avg_sync_latency from AtomMergedLog group by session_id) as sync_latency on session_duration.session_id=sync_latency.session_id left join(select a.session_id, sum(case when a.merge_result=1 THEN 1 else 0 end) as atoms_dropped_cnt, sum(case when a.merge_result=2 THEN 1 else 0 end) as atoms_causality_violation_cnt, sum(case when a.merge_result=3 THEN 1 else 0 end) as atoms_received_cnt from AtomMergedLog as a group by a.session_id) as merge_results on session_duration.session_id=merge_results.session_id left join(select session_id, count(*) as atoms_relayed_cnt from AtomMergedLog as a where owning_site_identifier <> relayed_by_site_identifier and not exists(select * from SyncMessageLog as m where a.session_id=m.session_id and device_identifier=owning_site_identifier and reachable=1) group by session_id) as relay_count on session_duration.session_id=relay_count.session_id left join(select relayed.session_id, avg(timestamp - synced_at) as relay_earliness from(select atom.session_id, synced_at, timestamp from AtomMergedLog as atom, SyncMessageLog as message where owning_site_identifier <> relayed_by_site_identifier and not exists(select * from SyncMessageLog as m where atom.session_id=m.session_id and device_identifier=owning_site_identifier and reachable=1) and device_identifier=owning_site_identifier and reachable=1 and timestamp > synced_at order by timestamp asc limit 1) as relayed group by relayed.session_id) as earliness on session_duration.session_id=earliness.session_id left join(select session_id, count(*) as relay_unseen_peer_atom_cnt from AtomMergedLog as a where owning_site_identifier <> relayed_by_site_identifier and not exists(select * from SyncMessageLog as m where device_identifier=owning_site_identifier and reachable=1) group by session_id) as atom_relay_unseen_device on session_duration.session_id=atom_relay_unseen_device.session_id left join(select session_id, sum(atom_batch_bytes) as atom_batch_bytes from SyncMessageLog group by session_id) as batch_bytes on session_duration.session_id=batch_bytes.session_id"];;
  if ([v5 next])
  {
    do
    {
      v6 = objc_autoreleasePoolPush();
      v7 = [v5 resultDictionary];
      v8[2](v8, v7);

      objc_autoreleasePoolPop(v6);
    }

    while (([v5 next] & 1) != 0);
  }

  [v5 close];
}

- (void)compactAndDeleteSessionLogs
{
  queue = self->_queue;
  if (queue)
  {
    dispatch_assert_queue_V2(queue);
  }

  [(_bmFMDatabase *)self->_fmdb executeUpdate:@"DELETE FROM SyncMessageLog WHERE timestamp <> (SELECT max(timestamp) FROM SyncMessageLog message WHERE device_identifier=message.device_identifier)"];
  [(_bmFMDatabase *)self->_fmdb executeUpdate:@"DELETE FROM SyncSessionLog"];
  fmdb = self->_fmdb;

  [(_bmFMDatabase *)fmdb executeUpdate:@"DELETE FROM AtomMergedLog"];
}

- (void)enforceMaxSessionLogPrunePolicy
{
  queue = self->_queue;
  if (queue)
  {
    dispatch_assert_queue_V2(queue);
  }

  v4 = objc_autoreleasePoolPush();
  [(_bmFMDatabase *)self->_fmdb executeUpdate:@"DELETE FROM SyncSessionLog WHERE session_id NOT IN (SELECT session_id from SyncSessionLog ORDER BY start_timestamp DESC LIMIT 100)"];
  [(_bmFMDatabase *)self->_fmdb executeUpdate:@"DELETE FROM SyncMessageLog WHERE session_id NOT IN (SELECT session_id from SyncSessionLog)"];
  [(_bmFMDatabase *)self->_fmdb executeUpdate:@"DELETE FROM AtomMergedLog WHERE session_id NOT IN (SELECT session_id from SyncSessionLog)"];

  objc_autoreleasePoolPop(v4);
}

- (void)runVacuumingTask:(id)a3
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10003DFE0;
  v6[3] = &unk_100079A10;
  v4 = a3;
  v7 = v4;
  if ([(BMSyncDatabase *)self vacuumWithShouldContinueBlock:v6])
  {
    v5 = objc_opt_new();
    [(BMSyncDatabase *)self setDateOfLastVacuum:v5];
  }

  [BMCoreAnalyticsEvents sendSyncDatabaseSummaryWithDatabase:self];
}

- (NSDate)dateOfLastVacuum
{
  v2 = [(BMSyncDatabase *)self valueForMetadataKey:@"LastVacuumDate"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v4 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setDateOfLastVacuum:(id)a3
{
  if (a3)
  {
    [a3 timeIntervalSinceReferenceDate];
    v4 = [NSNumber numberWithDouble:?];
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [(BMSyncDatabase *)self setValue:v4 forMetadataKey:@"LastVacuumDate"];
}

- (unint64_t)_numPagesToVacuum
{
  v3 = [(_bmFMDatabase *)self->_fmdb executeQuery:@"PRAGMA page_count"];
  v17 = 0;
  v4 = [v3 nextWithError:&v17];
  v5 = v17;
  if (v4)
  {
    v6 = [v3 unsignedLongLongIntForColumnIndex:0];
    [v3 close];
    v7 = [(_bmFMDatabase *)self->_fmdb executeQuery:@"PRAGMA freelist_count"];
    v16 = v5;
    v8 = [v7 nextWithError:&v16];
    v9 = v16;

    if (v8)
    {
      v10 = [v7 unsignedLongLongIntForColumnIndex:0];
      [v7 close];
      v11 = __biome_log_for_category();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218496;
        v19 = v6;
        v20 = 2048;
        v21 = v10;
        v22 = 2048;
        v23 = (v6 - v10) / v6;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "vacuumWithShouldContinueBlock calculating pages to vacuum -- pageCount %tu freeCount %tu loadFactor %f", buf, 0x20u);
      }

      if ((v6 - v10) / v6 <= 0.85 || v10 > 0x3FF)
      {
        v13 = (v10 * 0.8);
        goto LABEL_18;
      }

      v12 = __biome_log_for_category();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        v19 = v6;
        v20 = 2048;
        v21 = v10;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "vacuumWithShouldContinueBlock not enough pages to vacuum: pageCount: %lu; freeCount: %lu", buf, 0x16u);
      }
    }

    else
    {
      v14 = __biome_log_for_category();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_10004D080();
      }
    }

    v13 = 0;
  }

  else
  {
    v7 = __biome_log_for_category();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10004D00C();
    }

    v13 = 0;
    v9 = v5;
  }

LABEL_18:

  return v13;
}

- (BOOL)vacuumWithShouldContinueBlock:(id)a3
{
  v4 = a3;
  v5 = [(_bmFMDatabase *)self->_fmdb executeQuery:@"PRAGMA auto_vacuum"];
  v28 = 0;
  v6 = [v5 nextWithError:&v28];
  v7 = v28;
  if ((v6 & 1) == 0)
  {
    v19 = __biome_log_for_category();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_10004D0F4();
    }

    goto LABEL_25;
  }

  v8 = [v5 intForColumnIndex:0];
  [v5 close];
  v9 = __biome_log_for_category();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v30) = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "vacuumWithShouldContinueBlock current vacuum mode is %u", buf, 8u);
  }

  if (v4 && !v4[2](v4))
  {
    goto LABEL_26;
  }

  if (v8 != 2)
  {
    v21 = [(_bmFMDatabase *)self->_fmdb executeStatements:@"PRAGMA auto_vacuum = 2"];
    v22 = __biome_log_for_category();
    v23 = v22;
    if ((v21 & 1) == 0)
    {
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_10004D168();
      }

      goto LABEL_26;
    }

    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "vacuumWithShouldContinueBlock successfully set auto_vacuum to INCREMENTAL", buf, 2u);
    }

    v24 = [(_bmFMDatabase *)self->_fmdb executeStatements:@"VACUUM"];
    v25 = __biome_log_for_category();
    v19 = v25;
    if (v24)
    {
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "vacuumWithShouldContinueBlock successfully ran initial VACUUM", buf, 2u);
      }

      v12 = 1;
      goto LABEL_27;
    }

    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_10004D1A8();
    }

LABEL_25:

LABEL_26:
    v12 = 0;
    goto LABEL_27;
  }

  v27 = v7;
  v10 = [(BMSyncDatabase *)self _numPagesToVacuum];
  v11 = __biome_log_for_category();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v30 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "vacuumWithShouldContinueBlock calculated pages to vacuum: %lu", buf, 0xCu);
  }

  v12 = v10 != 0;
  if (v10)
  {
    v13 = 0;
    while (1)
    {
      if (v10 - v13 >= 0x1F4)
      {
        v14 = 500;
      }

      else
      {
        v14 = v10 - v13;
      }

      v15 = __biome_log_for_category();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        v30 = v14;
        v31 = 2048;
        v32 = v13;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "vacuumWithShouldContinueBlock starting incremental_vacuum of batch size: %lu, pagesVacuumed: %lu", buf, 0x16u);
      }

      fmdb = self->_fmdb;
      v17 = [NSString stringWithFormat:@"PRAGMA incremental_vacuum(%lu)", v14];
      LOBYTE(fmdb) = [(_bmFMDatabase *)fmdb executeStatements:v17];

      if ((fmdb & 1) == 0)
      {
        break;
      }

      v13 += v14;
      if (v4 && !v4[2](v4))
      {
        goto LABEL_43;
      }

      if (v13 >= v10)
      {
        goto LABEL_20;
      }
    }

    v26 = __biome_log_for_category();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      sub_10004D1E8();
    }

LABEL_43:
    v12 = v13 != 0;
  }

  else
  {
LABEL_20:
    v18 = __biome_log_for_category();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "vacuumWithShouldContinueBlock successfully completed", buf, 2u);
    }
  }

  v7 = v27;
LABEL_27:

  return v12;
}

- (unint64_t)databaseSizeInKilobytes
{
  v3 = [(_bmFMDatabase *)self->_fmdb databasePath];
  v4 = [(BMSyncDatabase *)self _sizeOfFileInKilobytes:v3];

  return v4;
}

- (unint64_t)walSizeInKilobytes
{
  v3 = [(_bmFMDatabase *)self->_fmdb databasePath];
  v4 = [v3 stringByAppendingString:@"-wal"];
  v5 = [(BMSyncDatabase *)self _sizeOfFileInKilobytes:v4];

  return v5;
}

- (unint64_t)_sizeOfFileInKilobytes:(id)a3
{
  v3 = a3;
  v4 = +[NSFileManager defaultManager];
  v12 = 0;
  v5 = [v4 attributesOfItemAtPath:v3 error:&v12];
  v6 = v12;

  if (v5)
  {
    if (!v6)
    {
      v8 = [v5 fileSize] >> 10;
      goto LABEL_8;
    }

    v7 = __biome_log_for_category();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      *buf = 138412802;
      v14 = v11;
      v15 = 2112;
      v16 = v3;
      v17 = 2112;
      v18 = v6;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%@ sizeOfFileInKilobytes error fetching attributes for filepath: %@, err: %@", buf, 0x20u);
    }
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (unint64_t)numRowsInTable:(id)a3
{
  v4 = a3;
  fmdb = self->_fmdb;
  v31 = v4;
  v6 = [NSArray arrayWithObjects:&v31 count:1];
  v7 = [(_bmFMDatabase *)fmdb executeQuery:@"SELECT name FROM sqlite_schema WHERE type='table' AND name=?" withArgumentsInArray:v6];

  v24 = 0;
  v8 = [v7 nextWithError:&v24];
  v9 = v24;
  if (v8)
  {
    [v7 close];
    v10 = self->_fmdb;
    v11 = [[NSString alloc] initWithFormat:@"SELECT COUNT(*) FROM %@", v4];
    v12 = [(_bmFMDatabase *)v10 executeQuery:v11];

    v23 = v9;
    v13 = [v12 nextWithError:&v23];
    v14 = v23;

    if (v13)
    {
      v15 = [v12 unsignedLongLongIntForColumnIndex:0];
    }

    else
    {
      v17 = __biome_log_for_category();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v21 = objc_opt_class();
        v22 = NSStringFromClass(v21);
        *buf = 138412802;
        v26 = v22;
        v27 = 2112;
        v28 = v4;
        v29 = 2112;
        v30 = v14;
        _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%@ numRowsInTable error querying pgsize for table: %@, err: %@", buf, 0x20u);
      }

      v15 = 0;
    }

    [v12 close];

    v9 = v14;
  }

  else
  {
    v16 = __biome_log_for_category();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      *buf = 138412802;
      v26 = v20;
      v27 = 2112;
      v28 = v4;
      v29 = 2112;
      v30 = v9;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%@ numRowsInTable table name: %@ does not exist, err: %@", buf, 0x20u);
    }

    [v7 close];
    v15 = 0;
  }

  return v15;
}

- (unint64_t)sizeOfTableInKilobytes:(id)a3
{
  v4 = a3;
  fmdb = self->_fmdb;
  v22 = v4;
  v6 = [NSArray arrayWithObjects:&v22 count:1];
  v7 = [(_bmFMDatabase *)fmdb executeQuery:@"SELECT SUM(pgsize) FROM dbstat WHERE name = ?" withArgumentsInArray:v6];

  v15 = 0;
  v8 = [v7 nextWithError:&v15];
  v9 = v15;
  if (v8)
  {
    v10 = [v7 unsignedLongLongIntForColumnIndex:0] >> 10;
  }

  else
  {
    v11 = __biome_log_for_category();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      *buf = 138412802;
      v17 = v14;
      v18 = 2112;
      v19 = v4;
      v20 = 2112;
      v21 = v9;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%@ sizeOfTable error querying pgsize for table: %@, err: %@", buf, 0x20u);
    }

    v10 = 0;
  }

  [v7 close];

  return v10;
}

@end