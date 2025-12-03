@interface BMSyncDatabase
+ (id)createDatabaseForAccount:(id)account queue:(id)queue;
+ (id)createPrimaryDatabaseWithQueue:(id)queue;
+ (id)primaryDatabasePath;
+ (id)primaryDatabaseWALPath;
+ (void)enumerateAccountSpecificDatabasesWithBlock:(id)block;
- (BMSyncDatabase)initWithPath:(id)path options:(unint64_t)options queue:(id)queue;
- (BMSyncDatabase)initWithQueue:(id)queue;
- (BOOL)_tryOpen:(unint64_t)open;
- (BOOL)addAtomBatchFileNameToAtomBatchFiles:(id)files sessionContext:(id)context locationRow:(id)row;
- (BOOL)addCKAtomRow:(id)row inStream:(id)stream;
- (BOOL)areAtomBatchFileNameRowsPresent;
- (BOOL)ckRecordExists:(id)exists zoneName:(id)name recordType:(unint64_t)type;
- (BOOL)ckZoneExists:(id)exists;
- (BOOL)ckZoneSetZoneVersionUUID:(id)d forZoneName:(id)name;
- (BOOL)clearCKMergeableRecordValueServerMergeableValuesForRecordName:(id)name zoneName:(id)zoneName;
- (BOOL)clearCKMergeableRecordValueServerMergeableValuesForZoneName:(id)name;
- (BOOL)clearCKRecordLocalMergeableValueAndSetToSyncForZone:(id)zone;
- (BOOL)containsCKAtomRowWithSegment:(id)segment inStream:(id)stream;
- (BOOL)containsCKAtomRowWithTimestamp:(id)timestamp inStream:(id)stream;
- (BOOL)containsCKAtomRowWithTimestamp:(id)timestamp inStream:(id)stream onDisk:(BOOL)disk;
- (BOOL)deleteAllAtomsAtOrBeforeLocation:(id)location;
- (BOOL)deleteAtomBatchFilesTableRowsNotReferencedInCKAtomForStream:(id)stream;
- (BOOL)deleteAtomsFromCKAtomWithNonExistentAtomBatchFilesForStream:(id)stream;
- (BOOL)deleteRowsWithAtomBatchFilename:(id)filename;
- (BOOL)disableAllCKSyncRecordsForSite:(id)site stream:(id)stream;
- (BOOL)enableAllCKSyncRecordsPreviouslyDisabledForSite:(id)site stream:(id)stream;
- (BOOL)getLatestTombstoneBookmarkForSiteIdentifier:(id)identifier inStream:(id)stream segmentName:(id *)name segmentOffset:(unint64_t *)offset;
- (BOOL)isAtomBatchFileNamePresent:(id)present;
- (BOOL)migration_Schema20ToSchema21;
- (BOOL)migration_Schema31ToSchema32;
- (BOOL)migration_StarSkySchema11ToSydRoSchema12;
- (BOOL)open;
- (BOOL)removeAllDeletedLocationsBeforeHighestDeletedLocation:(id)location;
- (BOOL)resetCKRecordsMetaDataAndSetToSyncForZone:(id)zone;
- (BOOL)saveCKMergeableRecordValueRecordName:(id)name zoneName:(id)zoneName mergeableRecordValueData:(id)data;
- (BOOL)saveCKRecordHighestDeletedLocationRow:(id)row recordName:(id)name zoneName:(id)zoneName recordExists:(BOOL)exists;
- (BOOL)saveCKRecordLocalMergeableValue:(id)value recordName:(id)name zoneName:(id)zoneName locationRow:(id)row;
- (BOOL)saveCKRecordServerMergeableValue:(id)value recordName:(id)name zoneName:(id)zoneName locationRow:(id)row;
- (BOOL)saveLatestTombstoneBookmark:(id)bookmark forSiteIdentifier:(id)identifier inStream:(id)stream;
- (BOOL)setLastSyncDate:(id)date forDeviceWithIdentifier:(id)identifier;
- (BOOL)updateAllLocationsAtOrBefore:(id)before state:(unint64_t)state;
- (BOOL)updateCKAtomRow:(id)row inStream:(id)stream;
- (BOOL)updateLocationState:(unint64_t)state forLocation:(id)location;
- (BOOL)upsertCKRecordWithLocation:(id)location inStream:(id)stream;
- (BOOL)upsertLocation:(id)location;
- (BOOL)vacuumWithShouldContinueBlock:(id)block;
- (NSDate)dateOfLastVacuum;
- (NSDate)lastCloudKitSyncAttemptDate;
- (NSDate)lastCloudKitSyncDate;
- (NSDate)lastRapportSyncAttemptDate;
- (NSDate)lastRapportSyncDate;
- (NSUUID)sharedSyncGeneration;
- (id)CKAtomRowSiteIdentifiers;
- (id)CKAtomRowSiteIdentifiersForStreamIdentifier:(id)identifier;
- (id)activeLocationsInClockVector:(id)vector inStream:(id)stream error:(id *)error;
- (id)allPeers;
- (id)ckAtomRowForAtomWithBookmark:(id)bookmark type:(unint64_t)type forSiteIdentifier:(id)identifier inStream:(id)stream;
- (id)ckAtomRowWithTimestamp:(id)timestamp inStream:(id)stream;
- (id)ckRecordForRecordName:(id)name zoneName:(id)zoneName recordType:(unint64_t)type;
- (id)ckRecordsToSyncToCloudKitForZone:(id)zone;
- (id)ckZoneForZoneName:(id)name;
- (id)computeHighestLocationToDeleteUpToBookmark:(id)bookmark forSiteIdentifier:(id)identifier inStream:(id)stream offsetsIncrease:(BOOL)increase;
- (id)createCKRecordFromRecordID:(id)d newRecord:(BOOL *)record recordType:(unint64_t)type;
- (id)deviceWithIdentifier:(id)identifier;
- (id)gatherAllCKSyncRecordRecordsToBeDeleted;
- (id)getSystemFieldsDataForRecordName:(id)name zoneName:(id)zoneName recordType:(unint64_t)type;
- (id)highestDeletedLocationForSiteIdentifier:(id)identifier inStream:(id)stream;
- (id)highestDeletedLocationsForStream:(id)stream;
- (id)highestLocationWithBufferedAtomsOlderThan:(double)than forSiteIdentifier:(id)identifier inStream:(id)stream;
- (id)insertLocationIfNotExists:(id)exists withState:(unint64_t)state;
- (id)lastSyncDateFromAnyDevice;
- (id)lastSyncDateOfDeviceWithIdentifier:(id)identifier;
- (id)latestCKAtomRowForSiteIdentifier:(id)identifier inStream:(id)stream;
- (id)latestCKAtomRowOfType:(unint64_t)type forSiteIdentifier:(id)identifier inStream:(id)stream;
- (id)latestDistributedTimestampForSiteIdentifier:(id)identifier inStream:(id)stream;
- (id)legacyTimestampClockVectorForStreamName:(id)name;
- (id)localDevice;
- (id)locationRowWithLocation:(id)location;
- (id)locationRowWithLocationID:(id)d;
- (id)locationsWithState:(unint64_t)state;
- (id)locationsWithState:(unint64_t)state stream:(id)stream;
- (id)previousLocationRowBeforeLocationRow:(id)row;
- (id)rangeClockVectorForStreamName:(id)name;
- (id)recordFromSystemFieldsData:(id)data;
- (id)stateVectorForLocationRow:(id)row;
- (id)valueForMetadataKey:(id)key;
- (int)CRDTLocationCount;
- (int)ckAtomCount;
- (unint64_t)_numPagesToVacuum;
- (unint64_t)_sizeOfFileInKilobytes:(id)kilobytes;
- (unint64_t)ckRecordCountForRecordType:(unint64_t)type;
- (unint64_t)countAtomMergeResultRecords;
- (unint64_t)databaseSizeInKilobytes;
- (unint64_t)numRowsInTable:(id)table;
- (unint64_t)sizeOfTableInKilobytes:(id)kilobytes;
- (unint64_t)state;
- (unint64_t)walSizeInKilobytes;
- (void)atomRowsInTimestampClockVector:(id)vector forLocation:(id)location inStream:(id)stream enumerateWithBlock:(id)block;
- (void)atomRowsNotOnDiskReferencingSiteIdentifier:(id)identifier inStream:(id)stream enumerateWithBlock:(id)block;
- (void)atomsAtOrBeforeLocation:(id)location ofType:(unint64_t)type enumerateWithBlock:(id)block;
- (void)clearCKSyncEngineMetaData;
- (void)clearCachedStatements;
- (void)close;
- (void)compactAndDeleteSessionLogs;
- (void)computeAggregatedSessionLogsWithHandlerBlock:(id)block;
- (void)deleteAllCKRecordsInZone:(id)zone;
- (void)deleteCKRecordAtLocation:(id)location;
- (void)deleteCKRecordsAtOrBeforeLocation:(id)location;
- (void)deleteCKRecordsForStreamName:(id)name;
- (void)disableStatementCachingForBlock:(id)block;
- (void)enforceMaxSessionLogPrunePolicy;
- (void)enumerateAtomBatchFilesNotReferencedInCKAtomForStream:(id)stream withBlock:(id)block;
- (void)enumerateAtomBatchFilesReferencedInCKAtomForStream:(id)stream withBlock:(id)block;
- (void)enumerateCKSyncRecordRecordsSetForDeletingUsingBlock:(id)block;
- (void)enumerateMergeableRecordValuesForRecordName:(id)name zoneName:(id)zoneName withBlock:(id)block;
- (void)enumerateRecordsWithBlock:(id)block;
- (void)enumerateZonesWithBlock:(id)block;
- (void)markCKRecordsAtOrBeforeLocationToBeDeletedOnSync:(id)sync;
- (void)recordAtomMergeResult:(unint64_t)result inStream:(id)stream sessionID:(id)d messageID:(unint64_t)iD ownerSite:(id)site originatingSite:(id)originatingSite eventCreatedAt:(double)at;
- (void)recordSessionEnd:(id)end timeSincePreviousSync:(double)sync;
- (void)resetMetadataForRecord:(id)record zoneName:(id)name;
- (void)runMetricsCollectionTask:(id)task;
- (void)runVacuumingTask:(id)task;
- (void)saveSystemFieldsDataForRecord:(id)record syncToCloudKit:(id)kit recordType:(unint64_t)type crdtDeleted:(id)deleted;
- (void)setDateOfLastVacuum:(id)vacuum;
- (void)setLastCloudKitSyncAttemptDate:(id)date;
- (void)setLastCloudKitSyncDate:(id)date;
- (void)setLastRapportSyncAttemptDate:(id)date;
- (void)setLastRapportSyncDate:(id)date;
- (void)setName:(id)name;
- (void)setSharedSyncGeneration:(id)generation;
- (void)setState:(unint64_t)state error:(id)error;
- (void)setState:(unint64_t)state errorFormat:(id)format;
- (void)updateAllCKRecordsAtOrBeforeLocationToBeDeletedOnSync:(id)sync;
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
  next = [v4 next];
  [v4 close];

  return next;
}

- (id)locationRowWithLocation:(id)location
{
  if (location)
  {
    fmdb = self->_fmdb;
    v13[0] = @"stream = ?";
    locationCopy = location;
    streamName = [locationCopy streamName];
    v13[1] = streamName;
    v13[2] = @" AND site = ?";
    siteIdentifier = [locationCopy siteIdentifier];
    v13[3] = siteIdentifier;
    v13[4] = @" AND day = ?";
    v7 = [locationCopy day];

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

- (id)locationRowWithLocationID:(id)d
{
  dCopy = d;
  v5 = dCopy;
  if (dCopy)
  {
    fmdb = self->_fmdb;
    v11[0] = @"id = ?";
    v11[1] = dCopy;
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

- (BOOL)updateLocationState:(unint64_t)state forLocation:(id)location
{
  locationCopy = location;
  v7 = __biome_log_for_category();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 134218242;
    stateCopy = state;
    v15 = 2112;
    v16 = locationCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "updateLocationState: %lu forLocation:%@", &v13, 0x16u);
  }

  v8 = [BMSyncCRDTLocationRow alloc];
  location = [locationCopy location];
  v10 = -[BMSyncCRDTLocationRow initWithLocation:state:primaryKey:](v8, "initWithLocation:state:primaryKey:", location, state, [locationCopy primaryKey]);

  v11 = [(BMSyncDatabase *)self upsertLocation:v10];
  return v11;
}

- (BOOL)updateAllLocationsAtOrBefore:(id)before state:(unint64_t)state
{
  beforeCopy = before;
  v7 = __biome_log_for_category();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v24 = beforeCopy;
    v25 = 2048;
    stateCopy = state;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "updateAllLocationsAtOrBefore:%@ to state %lu", buf, 0x16u);
  }

  fmdb = self->_fmdb;
  v21 = @"state";
  v19 = [NSNumber numberWithUnsignedInteger:state];
  v22 = v19;
  v9 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
  v20[0] = @"stream = ?";
  location = [beforeCopy location];
  streamName = [location streamName];
  v20[1] = streamName;
  v20[2] = @" AND site = ?";
  location2 = [beforeCopy location];
  siteIdentifier = [location2 siteIdentifier];
  v20[3] = siteIdentifier;
  v20[4] = @" AND day <= ?";
  location3 = [beforeCopy location];
  v14 = [location3 day];
  [v14 timeIntervalSinceReferenceDate];
  v15 = [NSNumber numberWithDouble:?];
  v20[5] = v15;
  v16 = [NSArray arrayWithObjects:v20 count:6];
  LOBYTE(fmdb) = [(_bmFMDatabase *)fmdb UPDATE:@"CRDTLocation" SET:v9 WHERE:v16];

  return fmdb;
}

- (id)insertLocationIfNotExists:(id)exists withState:(unint64_t)state
{
  existsCopy = exists;
  v7 = [(BMSyncDatabase *)self locationRowWithLocation:existsCopy];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    fmdb = self->_fmdb;
    v19[0] = @"stream";
    streamName = [existsCopy streamName];
    v20[0] = streamName;
    v19[1] = @"site";
    siteIdentifier = [existsCopy siteIdentifier];
    v20[1] = siteIdentifier;
    v19[2] = @"day";
    v12 = [existsCopy day];
    [v12 timeIntervalSinceReferenceDate];
    v13 = [NSNumber numberWithDouble:?];
    v20[2] = v13;
    v19[3] = @"state";
    v14 = [NSNumber numberWithUnsignedInteger:state];
    v20[3] = v14;
    v15 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:4];
    [(_bmFMDatabase *)fmdb INSERT_INTO:@"CRDTLocation" VALUES:v15];

    v9 = [[BMSyncCRDTLocationRow alloc] initWithLocation:existsCopy state:state primaryKey:[(_bmFMDatabase *)self->_fmdb lastInsertRowId]];
  }

  v16 = v9;

  return v16;
}

- (BOOL)upsertLocation:(id)location
{
  locationCopy = location;
  location = [locationCopy location];
  v6 = [(BMSyncDatabase *)self locationRowWithLocation:location];
  fmdb = self->_fmdb;
  if (v6)
  {
    v25[0] = @"stream";
    [location streamName];
    v8 = v21 = v6;
    v26[0] = v8;
    v25[1] = @"site";
    siteIdentifier = [location siteIdentifier];
    v26[1] = siteIdentifier;
    v25[2] = @"day";
    v10 = [location day];
    [v10 timeIntervalSinceReferenceDate];
    v11 = [NSNumber numberWithDouble:?];
    v26[2] = v11;
    v25[3] = @"state";
    state = [locationCopy state];

    v13 = [NSNumber numberWithUnsignedInteger:state];
    v26[3] = v13;
    v14 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:4];
    v24[0] = @"id = ?";
    v15 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v21 primaryKey]);
    v24[1] = v15;
    v16 = [NSArray arrayWithObjects:v24 count:2];
    v17 = [(_bmFMDatabase *)fmdb UPDATE:@"CRDTLocation" SET:v14 WHERE:v16];

    streamName = v8;
    v6 = v21;
  }

  else
  {
    v22[0] = @"stream";
    streamName = [location streamName];
    v23[0] = streamName;
    v22[1] = @"site";
    siteIdentifier = [location siteIdentifier];
    v23[1] = siteIdentifier;
    v22[2] = @"day";
    v10 = [location day];
    [v10 timeIntervalSinceReferenceDate];
    v11 = [NSNumber numberWithDouble:?];
    v23[2] = v11;
    v22[3] = @"state";
    state2 = [locationCopy state];

    v13 = [NSNumber numberWithUnsignedInteger:state2];
    v23[3] = v13;
    v14 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:4];
    v17 = [(_bmFMDatabase *)fmdb INSERT_INTO:@"CRDTLocation" VALUES:v14];
  }

  return v17;
}

- (BOOL)removeAllDeletedLocationsBeforeHighestDeletedLocation:(id)location
{
  location = [location location];
  fmdb = self->_fmdb;
  v14[0] = @"stream = ?";
  streamName = [location streamName];
  v14[1] = streamName;
  v14[2] = @" AND site = ?";
  siteIdentifier = [location siteIdentifier];
  v14[3] = siteIdentifier;
  v14[4] = @" AND state = ?";
  v14[5] = &off_10007F330;
  v14[6] = @" AND day < ?";
  v8 = [location day];
  [v8 timeIntervalSinceReferenceDate];
  v9 = [NSNumber numberWithDouble:?];
  v14[7] = v9;
  v14[8] = CFSTR(" AND NOT EXISTS (SELECT 1 FROM CKAtom WHERE stream = ? ");
  streamName2 = [location streamName];
  v14[9] = streamName2;
  v14[10] = @" AND site = ?";
  siteIdentifier2 = [location siteIdentifier];
  v14[11] = siteIdentifier2;
  v14[12] = @" AND location_id = id");
  v14[13] = &stru_100079C10;
  v14[14] = @" AND NOT EXISTS (SELECT location_id FROM CKRecord WHERE location_id = id)";
  v14[15] = &stru_100079C10;
  v12 = [NSArray arrayWithObjects:v14 count:16];
  LOBYTE(fmdb) = [(_bmFMDatabase *)fmdb DELETE_FROM:@"CRDTLocation" WHERE:v12];

  return fmdb;
}

- (id)previousLocationRowBeforeLocationRow:(id)row
{
  fmdb = self->_fmdb;
  v16[0] = @"stream = ?";
  rowCopy = row;
  location = [rowCopy location];
  streamName = [location streamName];
  v16[1] = streamName;
  v16[2] = @" AND site = ?";
  location2 = [rowCopy location];
  siteIdentifier = [location2 siteIdentifier];
  v16[3] = siteIdentifier;
  v16[4] = @" AND day < ?";
  location3 = [rowCopy location];

  v10 = [location3 day];
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

- (id)locationsWithState:(unint64_t)state
{
  fmdb = self->_fmdb;
  v11[0] = @"state = ?";
  v4 = [NSNumber numberWithUnsignedInteger:state];
  v11[1] = v4;
  v5 = [NSArray arrayWithObjects:v11 count:2];
  v6 = [(_bmFMDatabase *)fmdb SELECT_FROM:@"CRDTLocation" COLUMNS:&off_10007EB20 WHERE:v5 ORDER_BY:&off_10007EB38 LIMIT:0];

  v7 = objc_opt_new();
  if ([v6 next])
  {
    do
    {
      v8 = [[BMSyncCRDTLocationRow alloc] initWithFMResultSet:v6 modifier:0];
      location = [(BMSyncCRDTLocationRow *)v8 location];
      [v7 addObject:location];
    }

    while (([v6 next] & 1) != 0);
  }

  [v6 close];

  return v7;
}

- (id)locationsWithState:(unint64_t)state stream:(id)stream
{
  streamCopy = stream;
  fmdb = self->_fmdb;
  v15[0] = @"state = ? AND ";
  v8 = [NSNumber numberWithUnsignedInteger:state];
  v15[1] = v8;
  v15[2] = @"stream = ?";
  v15[3] = streamCopy;
  v9 = [NSArray arrayWithObjects:v15 count:4];
  v10 = [(_bmFMDatabase *)fmdb SELECT_FROM:@"CRDTLocation" COLUMNS:&off_10007EB50 WHERE:v9 ORDER_BY:&off_10007EB68 LIMIT:0];

  v11 = objc_opt_new();
  if ([v10 next])
  {
    do
    {
      v12 = [[BMSyncCRDTLocationRow alloc] initWithFMResultSet:v10 modifier:0];
      location = [(BMSyncCRDTLocationRow *)v12 location];
      [v11 addObject:location];
    }

    while (([v10 next] & 1) != 0);
  }

  [v10 close];

  return v11;
}

- (id)highestDeletedLocationsForStream:(id)stream
{
  streamCopy = stream;
  v5 = objc_opt_new();
  fmdb = self->_fmdb;
  v12[0] = CFSTR("day = (select max(day) from CRDTLocation i where i.stream = ? and i.site=CRDTLocation.site");
  v12[1] = streamCopy;
  v12[2] = @" and state = ?");
  v12[3] = &off_10007F330;
  v12[4] = @" AND stream = ?";
  v12[5] = streamCopy;
  v7 = [NSArray arrayWithObjects:v12 count:6];
  v8 = [(_bmFMDatabase *)fmdb SELECT_FROM:@"CRDTLocation" COLUMNS:&off_10007EB80 WHERE:v7];

  if ([v8 next])
  {
    do
    {
      v9 = [[BMSyncCRDTLocationRow alloc] initWithFMResultSet:v8 modifier:0];
      location = [(BMSyncCRDTLocationRow *)v9 location];
      [v5 addObject:location];
    }

    while (([v8 next] & 1) != 0);
  }

  [v8 close];

  return v5;
}

- (id)highestDeletedLocationForSiteIdentifier:(id)identifier inStream:(id)stream
{
  identifierCopy = identifier;
  streamCopy = stream;
  fmdb = self->_fmdb;
  v13[0] = @"stream = ?";
  v13[1] = streamCopy;
  v13[2] = @" AND site = ?";
  v13[3] = identifierCopy;
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

- (BOOL)addAtomBatchFileNameToAtomBatchFiles:(id)files sessionContext:(id)context locationRow:(id)row
{
  filesCopy = files;
  contextCopy = context;
  rowCopy = row;
  queue = self->_queue;
  if (queue)
  {
    dispatch_assert_queue_V2(queue);
  }

  fmdb = self->_fmdb;
  v27[0] = filesCopy;
  sessionID = [contextCopy sessionID];
  v14 = sessionID;
  v15 = @"no session id";
  if (sessionID)
  {
    v15 = sessionID;
  }

  v27[1] = v15;
  v26[2] = @"message_id";
  v16 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [contextCopy messageID]);
  v27[2] = v16;
  v26[3] = @"originating_site_identifier";
  originatingSiteIdentifier = [contextCopy originatingSiteIdentifier];
  v18 = originatingSiteIdentifier;
  v19 = @"no siteID";
  if (originatingSiteIdentifier)
  {
    v19 = originatingSiteIdentifier;
  }

  v27[3] = v19;
  v26[4] = @"location_id";
  v20 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [rowCopy primaryKey]);
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

- (BOOL)isAtomBatchFileNamePresent:(id)present
{
  presentCopy = present;
  queue = self->_queue;
  if (queue)
  {
    dispatch_assert_queue_V2(queue);
  }

  fmdb = self->_fmdb;
  v10[0] = @"atom_batch_filename = ?";
  v10[1] = presentCopy;
  v7 = [NSArray arrayWithObjects:v10 count:2];
  v8 = [(_bmFMDatabase *)fmdb SELECT_FROM:@"AtomBatchFiles" COLUMNS:&off_10007EBE0 WHERE:v7];

  LOBYTE(fmdb) = [v8 next];
  [v8 close];

  return fmdb;
}

- (void)enumerateAtomBatchFilesNotReferencedInCKAtomForStream:(id)stream withBlock:(id)block
{
  streamCopy = stream;
  blockCopy = block;
  v8 = __biome_log_for_category();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v17 = streamCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "enumerateAtomBatchFilesNotReferencedInCKAtomForStream: %@", buf, 0xCu);
  }

  queue = self->_queue;
  if (queue)
  {
    dispatch_assert_queue_V2(queue);
  }

  fmdb = self->_fmdb;
  v15[0] = @"INSTR(atom_batch_filename, ?) > 0 ";
  v15[1] = streamCopy;
  v15[2] = @"AND NOT EXISTS (SELECT ref_atom_batch_filename FROM CKAtom WHERE ref_atom_batch_filename = atom_batch_filename AND stream = ? LIMIT 1)";
  v15[3] = streamCopy;
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
    blockCopy[2](blockCopy, v13, buf);
    v14 = buf[0];
  }

  while (v14 != 1);
  [v12 close];
}

- (void)enumerateAtomBatchFilesReferencedInCKAtomForStream:(id)stream withBlock:(id)block
{
  streamCopy = stream;
  blockCopy = block;
  queue = self->_queue;
  if (queue)
  {
    dispatch_assert_queue_V2(queue);
  }

  fmdb = self->_fmdb;
  v17[0] = @"EXISTS (SELECT DISTINCT ref_atom_batch_filename FROM CKAtom WHERE ref_atom_batch_filename = atom_batch_filename AND stream = ?)";
  v17[1] = streamCopy;
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
    blockCopy[2](blockCopy, v12, v13, &v16);
    LODWORD(v15) = v16;
  }

  while (v15 != 1);
  [v11 close];
}

- (BOOL)deleteAtomBatchFilesTableRowsNotReferencedInCKAtomForStream:(id)stream
{
  streamCopy = stream;
  queue = self->_queue;
  if (queue)
  {
    dispatch_assert_queue_V2(queue);
  }

  fmdb = self->_fmdb;
  v9[0] = @"INSTR(atom_batch_filename, ?) > 0 ";
  v9[1] = streamCopy;
  v9[2] = @"AND NOT EXISTS (SELECT ref_atom_batch_filename FROM CKAtom WHERE ref_atom_batch_filename = atom_batch_filename AND stream = ? LIMIT 1)";
  v9[3] = streamCopy;
  v7 = [NSArray arrayWithObjects:v9 count:4];
  LOBYTE(fmdb) = [(_bmFMDatabase *)fmdb DELETE_FROM:@"AtomBatchFiles" WHERE:v7];

  return fmdb;
}

- (id)deviceWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  queue = self->_queue;
  if (queue)
  {
    dispatch_assert_queue_V2(queue);
  }

  fmdb = self->_fmdb;
  v11[0] = @"device_identifier = ?";
  v11[1] = identifierCopy;
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

- (id)lastSyncDateOfDeviceWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  queue = self->_queue;
  if (queue)
  {
    dispatch_assert_queue_V2(queue);
  }

  fmdb = self->_fmdb;
  v11[0] = @"device_identifier = ?";
  v11[1] = identifierCopy;
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

- (BOOL)setLastSyncDate:(id)date forDeviceWithIdentifier:(id)identifier
{
  dateCopy = date;
  identifierCopy = identifier;
  queue = self->_queue;
  if (queue)
  {
    dispatch_assert_queue_V2(queue);
  }

  fmdb = self->_fmdb;
  v14 = @"last_sync_date";
  v15 = dateCopy;
  v10 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  v13[0] = @"device_identifier = ?";
  v13[1] = identifierCopy;
  v11 = [NSArray arrayWithObjects:v13 count:2];
  LOBYTE(fmdb) = [(_bmFMDatabase *)fmdb UPDATE:@"DevicePeer" SET:v10 WHERE:v11];

  return fmdb;
}

- (void)runMetricsCollectionTask:(id)task
{
  taskCopy = task;
  v6 = [[BMSyncSessionMetricsAggregator alloc] initWithDatabase:self activity:taskCopy];
  [(BMSyncSessionMetricsAggregator *)v6 enforceMaxSessionLogPrunePolicy];
  [(BMSyncSessionMetricsAggregator *)v6 computeAndSendAggregatedMetrics];
  [(BMSyncSessionMetricsAggregator *)v6 compactAndDeleteSessionLogs];
  v5 = [[BMStateVectorMetricsCollector alloc] initWithDatabase:self activity:taskCopy];

  [(BMStateVectorMetricsCollector *)v5 computeAndSendStateVectorMetrics];
}

- (BOOL)ckZoneExists:(id)exists
{
  existsCopy = exists;
  queue = self->_queue;
  if (queue)
  {
    dispatch_assert_queue_V2(queue);
  }

  fmdb = self->_fmdb;
  v10[0] = @"zone_name = ?";
  v10[1] = existsCopy;
  v7 = [NSArray arrayWithObjects:v10 count:2];
  v8 = [(_bmFMDatabase *)fmdb SELECT_FROM:@"CKZone" COLUMNS:&off_10007ECE8 WHERE:v7];

  LOBYTE(fmdb) = [v8 next];
  return fmdb;
}

- (id)ckZoneForZoneName:(id)name
{
  nameCopy = name;
  queue = self->_queue;
  if (queue)
  {
    dispatch_assert_queue_V2(queue);
  }

  fmdb = self->_fmdb;
  v11[0] = @"zone_name = ?";
  v11[1] = nameCopy;
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

- (BOOL)ckZoneSetZoneVersionUUID:(id)d forZoneName:(id)name
{
  dCopy = d;
  nameCopy = name;
  queue = self->_queue;
  if (queue)
  {
    dispatch_assert_queue_V2(queue);
  }

  v9 = [(BMSyncDatabase *)self ckZoneExists:nameCopy];
  fmdb = self->_fmdb;
  if (v9)
  {
    v19 = @"zone_uuid";
    v20 = dCopy;
    v11 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v18[0] = @"zone_name = ?";
    v18[1] = nameCopy;
    v12 = [NSArray arrayWithObjects:v18 count:2];
    v13 = [(_bmFMDatabase *)fmdb UPDATE:@"CKZone" SET:v11 WHERE:v12];
  }

  else
  {
    v16[0] = @"zone_name";
    v16[1] = @"zone_uuid";
    v17[0] = nameCopy;
    v17[1] = dCopy;
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

- (void)enumerateZonesWithBlock:(id)block
{
  blockCopy = block;
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
    blockCopy[2](blockCopy, v8, &v9);

    objc_autoreleasePoolPop(v7);
  }

  while (v9 != 1);
}

- (BOOL)addCKAtomRow:(id)row inStream:(id)stream
{
  rowCopy = row;
  streamCopy = stream;
  queue = self->_queue;
  if (queue)
  {
    dispatch_assert_queue_V2(queue);
  }

  v9 = [NSString alloc];
  timestamp = [rowCopy timestamp];
  siteIdentifierObject = [timestamp siteIdentifierObject];
  identifier = [siteIdentifierObject identifier];
  v13 = [v9 initWithData:identifier encoding:4];

  v14 = [NSString alloc];
  causalReference = [rowCopy causalReference];
  timestamp2 = [causalReference timestamp];
  siteIdentifierObject2 = [timestamp2 siteIdentifierObject];
  identifier2 = [siteIdentifierObject2 identifier];
  v19 = [v14 initWithData:identifier2 encoding:4];

  fmdb = self->_fmdb;
  v66[0] = @"stream";
  v66[1] = @"site";
  v67[0] = streamCopy;
  v67[1] = v13;
  v63 = v13;
  v66[2] = @"clock";
  timestamp3 = [rowCopy timestamp];
  v60 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [timestamp3 clockValue]);
  v67[2] = v60;
  v66[3] = @"type";
  v59 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [rowCopy type]);
  v67[3] = v59;
  v66[4] = @"location_id";
  location = [rowCopy location];
  v57 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [location primaryKey]);
  v67[4] = v57;
  v66[5] = @"segment_name";
  segmentName = [rowCopy segmentName];
  v21 = segmentName;
  if (!segmentName)
  {
    segmentName = +[NSNull null];
  }

  v56 = v21;
  v42 = segmentName;
  v67[5] = segmentName;
  v66[6] = @"segment_offset";
  segmentName2 = [rowCopy segmentName];
  if (segmentName2)
  {
    +[NSNumber numberWithUnsignedLong:](NSNumber, "numberWithUnsignedLong:", [rowCopy segmentOffset]);
  }

  else
  {
    +[NSNull null];
  }
  v54 = ;
  v67[6] = v54;
  v66[7] = @"on_disk";
  segmentName3 = [rowCopy segmentName];
  if (segmentName3)
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
  causalReference2 = [rowCopy causalReference];
  if (causalReference2)
  {
    causalReference3 = [rowCopy causalReference];
    v24 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [causalReference3 type]);
  }

  else
  {
    v24 = +[NSNull null];
    causalReference3 = v24;
  }

  v44 = v24;
  v67[8] = v24;
  v66[9] = @"ref_location_id";
  referenceLocation = [rowCopy referenceLocation];
  if (referenceLocation)
  {
    referenceLocation2 = [rowCopy referenceLocation];
    v25 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [referenceLocation2 primaryKey]);
  }

  else
  {
    v25 = +[NSNull null];
    referenceLocation2 = v25;
  }

  v43 = v25;
  v67[9] = v25;
  v66[10] = @"ref_site";
  causalReference4 = [rowCopy causalReference];
  v27 = v19;
  if (!causalReference4)
  {
    v27 = +[NSNull null];
  }

  v46 = causalReference4;
  v53 = segmentName3;
  v40 = v27;
  v67[10] = v27;
  v66[11] = @"ref_clock";
  causalReference5 = [rowCopy causalReference];
  selfCopy = self;
  v62 = v19;
  if (causalReference5)
  {
    causalReference6 = [rowCopy causalReference];
    timestamp4 = [causalReference6 timestamp];
    v29 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [timestamp4 clockValue]);
  }

  else
  {
    v29 = +[NSNull null];
    causalReference6 = v29;
  }

  v65 = streamCopy;
  v67[11] = v29;
  v66[12] = @"value_version";
  v30 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [rowCopy valueVersion]);
  v67[12] = v30;
  v66[13] = @"value_data";
  valueData = [rowCopy valueData];
  v32 = valueData;
  if (!valueData)
  {
    v32 = +[NSNull null];
  }

  v67[13] = v32;
  v66[14] = @"ref_atom_batch_filename";
  referenceAtomBatchFilename = [rowCopy referenceAtomBatchFilename];
  v34 = referenceAtomBatchFilename;
  if (!referenceAtomBatchFilename)
  {
    v34 = +[NSNull null];
  }

  v67[14] = v34;
  v66[15] = @"atom_batch_file_index";
  v35 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [rowCopy atomBatchFileIndex]);
  v67[15] = v35;
  v36 = [NSDictionary dictionaryWithObjects:v67 forKeys:v66 count:16];
  v52 = [(_bmFMDatabase *)fmdb INSERT_INTO:@"CKAtom" VALUES:v36];

  if (!referenceAtomBatchFilename)
  {
  }

  if (!valueData)
  {
  }

  if (causalReference5)
  {
  }

  if (!v46)
  {
  }

  if (referenceLocation)
  {
  }

  if (causalReference2)
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
      sub_100049D14(&selfCopy->_fmdb);
    }
  }

  return v52;
}

- (id)ckAtomRowWithTimestamp:(id)timestamp inStream:(id)stream
{
  timestampCopy = timestamp;
  streamCopy = stream;
  queue = self->_queue;
  if (queue)
  {
    dispatch_assert_queue_V2(queue);
  }

  v9 = [NSString alloc];
  siteIdentifierObject = [timestampCopy siteIdentifierObject];
  identifier = [siteIdentifierObject identifier];
  v12 = [v9 initWithData:identifier encoding:4];

  v18[0] = @"CKAtom.site = ?";
  v18[1] = v12;
  v18[2] = @" AND CKAtom.stream = ?";
  v18[3] = streamCopy;
  v18[4] = @" AND clock = ?";
  v13 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [timestampCopy clockValue]);
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

- (id)latestCKAtomRowForSiteIdentifier:(id)identifier inStream:(id)stream
{
  identifierCopy = identifier;
  streamCopy = stream;
  queue = self->_queue;
  if (queue)
  {
    dispatch_assert_queue_V2(queue);
  }

  v13[0] = @"CKAtom.site = ?";
  v13[1] = identifierCopy;
  v13[2] = @" AND CKAtom.stream = ?";
  v13[3] = streamCopy;
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

- (id)legacyTimestampClockVectorForStreamName:(id)name
{
  nameCopy = name;
  queue = self->_queue;
  if (queue)
  {
    dispatch_assert_queue_V2(queue);
  }

  v6 = objc_opt_new();
  fmdb = self->_fmdb;
  v17[0] = @"stream = ?";
  v17[1] = nameCopy;
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

- (id)rangeClockVectorForStreamName:(id)name
{
  nameCopy = name;
  selfCopy = self;
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
  obj = [(BMSyncDatabase *)self CKAtomRowSiteIdentifiersForStreamIdentifier:nameCopy];
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
        fmdb = selfCopy->_fmdb;
        v33[0] = @"stream = ?";
        v33[1] = nameCopy;
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

- (id)stateVectorForLocationRow:(id)row
{
  rowCopy = row;
  queue = self->_queue;
  if (queue)
  {
    dispatch_assert_queue_V2(queue);
  }

  fmdb = self->_fmdb;
  v23[0] = @"location_id = ?";
  v7 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [rowCopy primaryKey]);
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

- (id)latestCKAtomRowOfType:(unint64_t)type forSiteIdentifier:(id)identifier inStream:(id)stream
{
  identifierCopy = identifier;
  streamCopy = stream;
  queue = self->_queue;
  if (queue)
  {
    dispatch_assert_queue_V2(queue);
  }

  v16[0] = @"type = ?";
  v11 = [NSNumber numberWithUnsignedInteger:type];
  v16[1] = v11;
  v16[2] = @" AND CKAtom.stream = ?";
  v16[3] = streamCopy;
  v16[4] = @" AND CKAtom.site = ?";
  v16[5] = identifierCopy;
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

- (BOOL)containsCKAtomRowWithTimestamp:(id)timestamp inStream:(id)stream
{
  timestampCopy = timestamp;
  streamCopy = stream;
  queue = self->_queue;
  if (queue)
  {
    dispatch_assert_queue_V2(queue);
  }

  v9 = [NSString alloc];
  siteIdentifierObject = [timestampCopy siteIdentifierObject];
  identifier = [siteIdentifierObject identifier];
  v12 = [v9 initWithData:identifier encoding:4];

  fmdb = self->_fmdb;
  v19[0] = @"clock = ?";
  v14 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [timestampCopy clockValue]);
  v19[1] = v14;
  v19[2] = @" AND stream = ?";
  v19[3] = streamCopy;
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

- (BOOL)containsCKAtomRowWithTimestamp:(id)timestamp inStream:(id)stream onDisk:(BOOL)disk
{
  timestampCopy = timestamp;
  streamCopy = stream;
  queue = self->_queue;
  if (queue)
  {
    dispatch_assert_queue_V2(queue);
  }

  v11 = [NSString alloc];
  siteIdentifierObject = [timestampCopy siteIdentifierObject];
  identifier = [siteIdentifierObject identifier];
  v14 = [v11 initWithData:identifier encoding:4];

  fmdb = self->_fmdb;
  v22[0] = @"clock = ?";
  v16 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [timestampCopy clockValue]);
  v22[1] = v16;
  v22[2] = @" AND stream = ?";
  v22[3] = streamCopy;
  v22[4] = @" AND site = ?";
  v22[5] = v14;
  v22[6] = @" AND on_disk IS ?";
  if (disk)
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

  if (!disk)
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

- (BOOL)updateCKAtomRow:(id)row inStream:(id)stream
{
  rowCopy = row;
  streamCopy = stream;
  queue = self->_queue;
  if (queue)
  {
    dispatch_assert_queue_V2(queue);
  }

  v9 = [NSString alloc];
  timestamp = [rowCopy timestamp];
  siteIdentifierObject = [timestamp siteIdentifierObject];
  identifier = [siteIdentifierObject identifier];
  v13 = [v9 initWithData:identifier encoding:4];

  fmdb = self->_fmdb;
  v42[0] = @"segment_name";
  segmentName = [rowCopy segmentName];
  v15 = segmentName;
  if (!segmentName)
  {
    segmentName = +[NSNull null];
  }

  v37 = v15;
  v31 = segmentName;
  v43[0] = segmentName;
  v42[1] = @"segment_offset";
  segmentName2 = [rowCopy segmentName];
  if (segmentName2)
  {
    +[NSNumber numberWithUnsignedLong:](NSNumber, "numberWithUnsignedLong:", [rowCopy segmentOffset]);
  }

  else
  {
    +[NSNull null];
  }
  v35 = ;
  v43[1] = v35;
  v42[2] = @"value_version";
  v33 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [rowCopy valueVersion]);
  v43[2] = v33;
  v42[3] = @"value_data";
  valueData = [rowCopy valueData];
  v17 = valueData;
  if (!valueData)
  {
    valueData = +[NSNull null];
  }

  v30 = valueData;
  v43[3] = valueData;
  v42[4] = @"on_disk";
  segmentName3 = [rowCopy segmentName];
  selfCopy = self;
  if (segmentName3)
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
  v40 = streamCopy;
  v41[0] = @"stream = ?";
  v41[1] = streamCopy;
  v41[2] = @" AND site = ?";
  v38 = v13;
  v41[3] = v13;
  v41[4] = @" AND clock = ?";
  timestamp2 = [rowCopy timestamp];
  v23 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [timestamp2 clockValue]);
  v41[5] = v23;
  v41[6] = @" AND type = ?";
  v24 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [rowCopy type]);
  v41[7] = v24;
  v25 = [NSArray arrayWithObjects:v41 count:8];
  v26 = [(_bmFMDatabase *)fmdb UPDATE:@"CKAtom" SET:v21 WHERE:v25];

  if (!segmentName3)
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
      sub_100049D9C(&selfCopy->_fmdb);
    }
  }

  return v26;
}

- (id)ckAtomRowForAtomWithBookmark:(id)bookmark type:(unint64_t)type forSiteIdentifier:(id)identifier inStream:(id)stream
{
  bookmarkCopy = bookmark;
  identifierCopy = identifier;
  streamCopy = stream;
  queue = self->_queue;
  if (queue)
  {
    dispatch_assert_queue_V2(queue);
  }

  v21[0] = @"CKAtom.site = ?";
  v21[1] = identifierCopy;
  v21[2] = @" AND CKAtom.stream = ?";
  v21[3] = streamCopy;
  v21[4] = @" AND type = ?";
  v14 = [NSNumber numberWithUnsignedInteger:type];
  v21[5] = v14;
  v21[6] = @" AND segment_name = ?";
  segmentName = [bookmarkCopy segmentName];
  v21[7] = segmentName;
  v21[8] = @" AND segment_offset = ?";
  v16 = +[NSNumber numberWithUnsignedLong:](NSNumber, "numberWithUnsignedLong:", [bookmarkCopy offset]);
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

- (id)latestDistributedTimestampForSiteIdentifier:(id)identifier inStream:(id)stream
{
  identifierCopy = identifier;
  streamCopy = stream;
  queue = self->_queue;
  if (queue)
  {
    dispatch_assert_queue_V2(queue);
  }

  fmdb = self->_fmdb;
  v18[0] = @"site = ?";
  v18[1] = identifierCopy;
  v18[2] = @" AND stream = ?";
  v18[3] = streamCopy;
  v10 = [NSArray arrayWithObjects:v18 count:4];
  v11 = [(_bmFMDatabase *)fmdb SELECT_FROM:@"CKAtom" COLUMNS:&off_10007EE38 WHERE:v10];

  if ([v11 next])
  {
    v12 = [v11 unsignedLongLongIntForColumnIndex:0];
    v13 = [CKDistributedSiteIdentifier alloc];
    v14 = [identifierCopy dataUsingEncoding:4];
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

- (BOOL)containsCKAtomRowWithSegment:(id)segment inStream:(id)stream
{
  segmentCopy = segment;
  streamCopy = stream;
  queue = self->_queue;
  if (queue)
  {
    dispatch_assert_queue_V2(queue);
  }

  fmdb = self->_fmdb;
  v13[0] = @"stream = ?";
  v13[1] = streamCopy;
  v13[2] = @" AND segment_name = ?";
  v13[3] = segmentCopy;
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

- (id)CKAtomRowSiteIdentifiersForStreamIdentifier:(id)identifier
{
  identifierCopy = identifier;
  queue = self->_queue;
  if (queue)
  {
    dispatch_assert_queue_V2(queue);
  }

  fmdb = self->_fmdb;
  v12[0] = @"stream = ?";
  v12[1] = identifierCopy;
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

- (void)atomRowsNotOnDiskReferencingSiteIdentifier:(id)identifier inStream:(id)stream enumerateWithBlock:(id)block
{
  identifierCopy = identifier;
  streamCopy = stream;
  blockCopy = block;
  queue = self->_queue;
  if (queue)
  {
    dispatch_assert_queue_V2(queue);
  }

  v20[0] = CFSTR("(ref_site = ?");
  v20[1] = identifierCopy;
  v20[2] = @" OR (ref_site IS NULL AND CKAtom.site = ?)");
  v20[3] = identifierCopy;
  v20[4] = @" AND CKAtom.stream = ?";
  v20[5] = streamCopy;
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
  v19 = blockCopy;
  v15 = v14;
  v16 = blockCopy;
  [v15 enumerateWithBlock:v17];
  [v15 close];
}

- (void)atomsAtOrBeforeLocation:(id)location ofType:(unint64_t)type enumerateWithBlock:(id)block
{
  locationCopy = location;
  blockCopy = block;
  queue = self->_queue;
  if (queue)
  {
    dispatch_assert_queue_V2(queue);
  }

  v26[0] = @"location.stream = ?";
  location = [locationCopy location];
  streamName = [location streamName];
  v26[1] = streamName;
  v26[2] = @" AND location.site = ?";
  location2 = [locationCopy location];
  siteIdentifier = [location2 siteIdentifier];
  v26[3] = siteIdentifier;
  v26[4] = @" AND location.day <= ?";
  location3 = [locationCopy location];
  v14 = [location3 day];
  [v14 timeIntervalSinceReferenceDate];
  v15 = [NSNumber numberWithDouble:?];
  v26[5] = v15;
  v26[6] = @" AND type = ?";
  v16 = [NSNumber numberWithUnsignedInteger:type];
  v26[7] = v16;
  v17 = [NSArray arrayWithObjects:v26 count:8];
  v18 = [(BMSyncDatabase *)self SELECT_ATOMS_WHERE:v17 ORDER_BY:&off_10007EEB0 LIMIT:0];

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10001FB7C;
  v23[3] = &unk_100079290;
  v24 = v18;
  v25 = blockCopy;
  v19 = v18;
  v20 = blockCopy;
  [v19 enumerateWithBlock:v23];
  [v19 close];
}

- (BOOL)deleteAllAtomsAtOrBeforeLocation:(id)location
{
  locationCopy = location;
  fmdb = self->_fmdb;
  v29[0] = @"site = ?";
  location = [locationCopy location];
  siteIdentifier = [location siteIdentifier];
  v29[1] = siteIdentifier;
  v29[2] = @" AND stream = ?";
  location2 = [locationCopy location];
  streamName = [location2 streamName];
  v29[3] = streamName;
  v10 = [NSArray arrayWithObjects:v29 count:4];
  v11 = [(_bmFMDatabase *)fmdb SELECT_FROM:@"CKAtom" COLUMNS:&off_10007EEC8 WHERE:v10 ORDER_BY:&off_10007EEE0 LIMIT:&off_10007F3D8];

  if ([v11 next])
  {
    v21 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v11 intForColumnIndex:0]);
    [v11 close];
    v23 = self->_fmdb;
    v28[0] = CFSTR("location_id IN (SELECT id from CRDTLocation where stream = ?");
    location3 = [locationCopy location];
    streamName2 = [location3 streamName];
    v28[1] = streamName2;
    v28[2] = @" AND site = ?";
    location4 = [locationCopy location];
    siteIdentifier2 = [location4 siteIdentifier];
    v28[3] = siteIdentifier2;
    v28[4] = @" AND day <= ?");
    location5 = [locationCopy location];
    v12 = [location5 day];
    [v12 timeIntervalSinceReferenceDate];
    v13 = [NSNumber numberWithDouble:?];
    v28[5] = v13;
    v28[6] = @" AND clock != ?";
    v28[7] = v21;
    v28[8] = CFSTR(" AND clock != (SELECT MAX(clock) FROM CKAtom WHERE stream = ?");
    location6 = [locationCopy location];
    streamName3 = [location6 streamName];
    v28[9] = streamName3;
    v28[10] = @" AND site = ?");
    location7 = [locationCopy location];
    siteIdentifier3 = [location7 siteIdentifier];
    v28[11] = siteIdentifier3;
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

- (id)activeLocationsInClockVector:(id)vector inStream:(id)stream error:(id *)error
{
  vectorCopy = vector;
  streamCopy = stream;
  if ([vectorCopy timestampCount])
  {
    selfCopy = self;
    v9 = objc_opt_new();
    [v9 addObject:@"CKAtom.stream = ? "];
    [v9 addObject:streamCopy];
    v48[0] = 0;
    v48[1] = v48;
    v48[2] = 0x2020000000;
    v48[3] = 0;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    allSiteIdentifiers = [vectorCopy allSiteIdentifiers];
    v11 = [allSiteIdentifiers countByEnumeratingWithState:&v44 objects:v49 count:16];
    if (v11)
    {
      v12 = *v45;
      v13 = CFSTR(" AND ((CKAtom.site = ? ");
      obj = allSiteIdentifiers;
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
          identifier = [v15 identifier];
          v18 = [v16 initWithData:identifier encoding:4];

          [v9 addObject:v13];
          [v9 addObject:v18];
          v19 = [vectorCopy clockValuesForSiteIdentifier:v15];
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

        allSiteIdentifiers = obj;
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
    v29[4] = selfCopy;
    v21 = v9;
    v30 = v21;
    v22 = v20;
    v31 = v22;
    v33 = &v34;
    v32 = streamCopy;
    [(BMSyncDatabase *)selfCopy disableStatementCachingForBlock:v29];
    if (error)
    {
      v23 = v35[5];
      if (v23)
      {
        *error = v23;
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

- (void)atomRowsInTimestampClockVector:(id)vector forLocation:(id)location inStream:(id)stream enumerateWithBlock:(id)block
{
  vectorCopy = vector;
  locationCopy = location;
  streamCopy = stream;
  blockCopy = block;
  v27 = streamCopy;
  if ([vectorCopy timestampCount])
  {
    v13 = objc_opt_new();
    [v13 addObject:@"CKAtom.stream = ? "];
    [v13 addObject:streamCopy];
    if (locationCopy)
    {
      [v13 addObject:@" AND CKAtom.location_id = ? "];
      v14 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [locationCopy primaryKey]);
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
    allSiteIdentifiers = [vectorCopy allSiteIdentifiers];
    v16 = [allSiteIdentifiers countByEnumeratingWithState:&v39 objects:v44 count:16];
    if (v16)
    {
      v17 = *v40;
      v18 = CFSTR(" AND ((CKAtom.site = ? ");
      obj = allSiteIdentifiers;
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
          identifier = [v20 identifier];
          v23 = [v21 initWithData:identifier encoding:4];

          [v13 addObject:v18];
          [v13 addObject:v23];
          v24 = [vectorCopy clockValuesForSiteIdentifier:v20];
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

        allSiteIdentifiers = obj;
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
    v32 = blockCopy;
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

- (id)computeHighestLocationToDeleteUpToBookmark:(id)bookmark forSiteIdentifier:(id)identifier inStream:(id)stream offsetsIncrease:(BOOL)increase
{
  increaseCopy = increase;
  identifierCopy = identifier;
  streamCopy = stream;
  v12 = @" AND segment_offset < ? OR NULL) == 0");
  if (increaseCopy)
  {
    v12 = @" AND segment_offset > ? OR NULL) == 0");
  }

  v13 = v12;
  fmdb = self->_fmdb;
  v28[0] = @"CKAtom.stream = ?";
  v28[1] = streamCopy;
  v26 = identifierCopy;
  v28[2] = @" AND CKAtom.site = ?";
  v28[3] = identifierCopy;
  bookmarkCopy = bookmark;
  v16 = [NSArray arrayWithObjects:v28 count:4];
  v27[0] = CFSTR("COUNT ((CAST(segment_name AS INT) > ?");
  segmentName = [bookmarkCopy segmentName];
  v18 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [segmentName longLongValue]);
  v27[1] = v18;
  v27[2] = @" OR segment_name = ?";
  segmentName2 = [bookmarkCopy segmentName];
  v27[3] = segmentName2;
  v27[4] = v13;
  offset = [bookmarkCopy offset];

  v21 = [NSNumber numberWithUnsignedLong:offset];
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

- (id)highestLocationWithBufferedAtomsOlderThan:(double)than forSiteIdentifier:(id)identifier inStream:(id)stream
{
  identifierCopy = identifier;
  streamCopy = stream;
  v15[0] = @"CKAtom.stream = ?";
  v15[1] = streamCopy;
  v15[2] = @" AND CKAtom.site = ?";
  v15[3] = identifierCopy;
  v15[4] = @" AND on_disk IS NOT ?";
  v15[5] = &__kCFBooleanTrue;
  v15[6] = @" AND location.day <= ?";
  v10 = [NSNumber numberWithDouble:than];
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

- (BOOL)deleteRowsWithAtomBatchFilename:(id)filename
{
  filenameCopy = filename;
  fmdb = self->_fmdb;
  v10[0] = @"ref_atom_batch_filename = ?";
  v10[1] = filenameCopy;
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

- (BOOL)deleteAtomsFromCKAtomWithNonExistentAtomBatchFilesForStream:(id)stream
{
  streamCopy = stream;
  queue = self->_queue;
  if (queue)
  {
    dispatch_assert_queue_V2(queue);
  }

  fmdb = self->_fmdb;
  v9[0] = @"ref_atom_batch_filename IS NOT NULL AND stream = ? AND NOT EXISTS (SELECT DISTINCT atom_batch_filename from AtomBatchFiles WHERE atom_batch_filename = ref_atom_batch_filename)";
  v9[1] = streamCopy;
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

- (void)setSharedSyncGeneration:(id)generation
{
  v5[0] = 0;
  v5[1] = 0;
  [generation getUUIDBytes:v5];
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

- (void)setLastRapportSyncAttemptDate:(id)date
{
  if (date)
  {
    [date timeIntervalSinceReferenceDate];
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

- (void)setLastRapportSyncDate:(id)date
{
  if (date)
  {
    [date timeIntervalSinceReferenceDate];
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

- (void)setLastCloudKitSyncAttemptDate:(id)date
{
  if (date)
  {
    [date timeIntervalSinceReferenceDate];
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

- (void)setLastCloudKitSyncDate:(id)date
{
  if (date)
  {
    [date timeIntervalSinceReferenceDate];
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

- (BOOL)saveCKMergeableRecordValueRecordName:(id)name zoneName:(id)zoneName mergeableRecordValueData:(id)data
{
  nameCopy = name;
  zoneNameCopy = zoneName;
  dataCopy = data;
  queue = self->_queue;
  if (queue)
  {
    dispatch_assert_queue_V2(queue);
  }

  fmdb = self->_fmdb;
  v15[0] = @"stream_name";
  v15[1] = @"record_name";
  v16[0] = zoneNameCopy;
  v16[1] = nameCopy;
  v15[2] = @"server_mergeable_value";
  v16[2] = dataCopy;
  v13 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:3];
  LOBYTE(fmdb) = [(_bmFMDatabase *)fmdb INSERT_INTO:@"CKMergeableRecordValue" VALUES:v13];

  return fmdb;
}

- (BOOL)clearCKMergeableRecordValueServerMergeableValuesForRecordName:(id)name zoneName:(id)zoneName
{
  nameCopy = name;
  zoneNameCopy = zoneName;
  queue = self->_queue;
  if (queue)
  {
    dispatch_assert_queue_V2(queue);
  }

  fmdb = self->_fmdb;
  v12[0] = @"stream_name = ?";
  v12[1] = zoneNameCopy;
  v12[2] = @" AND record_name = ?";
  v12[3] = nameCopy;
  v10 = [NSArray arrayWithObjects:v12 count:4];
  LOBYTE(fmdb) = [(_bmFMDatabase *)fmdb DELETE_FROM:@"CKMergeableRecordValue" WHERE:v10];

  return fmdb;
}

- (BOOL)clearCKMergeableRecordValueServerMergeableValuesForZoneName:(id)name
{
  nameCopy = name;
  queue = self->_queue;
  if (queue)
  {
    dispatch_assert_queue_V2(queue);
  }

  fmdb = self->_fmdb;
  v9[0] = @"stream_name = ?";
  v9[1] = nameCopy;
  v7 = [NSArray arrayWithObjects:v9 count:2];
  LOBYTE(fmdb) = [(_bmFMDatabase *)fmdb DELETE_FROM:@"CKMergeableRecordValue" WHERE:v7];

  return fmdb;
}

- (void)enumerateMergeableRecordValuesForRecordName:(id)name zoneName:(id)zoneName withBlock:(id)block
{
  nameCopy = name;
  zoneNameCopy = zoneName;
  blockCopy = block;
  fmdb = self->_fmdb;
  v17[0] = @"stream_name = ?";
  v17[1] = zoneNameCopy;
  v17[2] = @" AND record_name = ?";
  v17[3] = nameCopy;
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
    blockCopy[2](blockCopy, v15, &v16);

    objc_autoreleasePoolPop(v14);
  }

  while (v16 != 1);
}

- (BOOL)getLatestTombstoneBookmarkForSiteIdentifier:(id)identifier inStream:(id)stream segmentName:(id *)name segmentOffset:(unint64_t *)offset
{
  fmdb = self->_fmdb;
  v16[0] = @"stream = ?";
  v16[1] = stream;
  v16[2] = @"AND site = ?";
  v16[3] = identifier;
  streamCopy = stream;
  identifierCopy = identifier;
  v12 = [NSArray arrayWithObjects:v16 count:4];
  v13 = [(_bmFMDatabase *)fmdb SELECT_FROM:@"TombstoneBookmark" COLUMNS:&off_10007F048 WHERE:v12];

  next = [v13 next];
  if (next)
  {
    if (name)
    {
      *name = [v13 stringForColumn:@"segment_name"];
    }

    if (offset)
    {
      *offset = [v13 longForColumn:@"segment_offset"];
    }
  }

  return next;
}

- (BOOL)saveLatestTombstoneBookmark:(id)bookmark forSiteIdentifier:(id)identifier inStream:(id)stream
{
  bookmarkCopy = bookmark;
  identifierCopy = identifier;
  streamCopy = stream;
  if (bookmarkCopy)
  {
    v11 = [(BMSyncDatabase *)self getLatestTombstoneBookmarkForSiteIdentifier:identifierCopy inStream:streamCopy segmentName:0 segmentOffset:0];
    fmdb = self->_fmdb;
    if (v11)
    {
      v22[0] = @"segment_name";
      segmentName = [bookmarkCopy segmentName];
      v23[0] = segmentName;
      v22[1] = @"segment_offset";
      v14 = +[NSNumber numberWithUnsignedLong:](NSNumber, "numberWithUnsignedLong:", [bookmarkCopy offset]);
      v23[1] = v14;
      v15 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:2];
      v21[0] = @"stream = ?";
      v21[1] = streamCopy;
      v21[2] = @" AND site = ?";
      v21[3] = identifierCopy;
      v16 = [NSArray arrayWithObjects:v21 count:4];
      v17 = [(_bmFMDatabase *)fmdb UPDATE:@"TombstoneBookmark" SET:v15 WHERE:v16];
    }

    else
    {
      v19[0] = @"stream";
      v19[1] = @"site";
      v20[0] = streamCopy;
      v20[1] = identifierCopy;
      v19[2] = @"segment_name";
      segmentName = [bookmarkCopy segmentName];
      v20[2] = segmentName;
      v19[3] = @"segment_offset";
      v14 = +[NSNumber numberWithUnsignedLong:](NSNumber, "numberWithUnsignedLong:", [bookmarkCopy offset]);
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

+ (id)createPrimaryDatabaseWithQueue:(id)queue
{
  queueCopy = queue;
  v4 = [[BMSyncDatabase alloc] initWithQueue:queueCopy];

  [(BMSyncDatabase *)v4 setName:@"primary"];
  [(BMSyncDatabase *)v4 setCorruptionHandler:&stru_100079530];

  return v4;
}

+ (id)createDatabaseForAccount:(id)account queue:(id)queue
{
  accountCopy = account;
  queueCopy = queue;
  v7 = [BMPaths pathForSharedSyncWithAccount:accountCopy domain:0];
  v8 = [v7 stringByAppendingPathComponent:@"sync.db"];

  v9 = [[BMSyncDatabase alloc] initWithPath:v8 options:0 queue:queueCopy];
  identifier = [accountCopy identifier];
  v11 = [identifier length];
  identifier2 = [accountCopy identifier];
  v13 = identifier2;
  if (v11 > 7)
  {
    v14 = [identifier2 substringToIndex:8];
    [(BMSyncDatabase *)v9 setName:v14];
  }

  else
  {
    [(BMSyncDatabase *)v9 setName:identifier2];
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100027140;
  v17[3] = &unk_100078B70;
  v18 = accountCopy;
  v15 = accountCopy;
  [(BMSyncDatabase *)v9 setCorruptionHandler:v17];

  return v9;
}

+ (void)enumerateAccountSpecificDatabasesWithBlock:(id)block
{
  blockCopy = block;
  if (!blockCopy)
  {
    sub_10004A5A0(a2, self);
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
          blockCopy[2](blockCopy, v13, v12);
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

- (id)ckRecordsToSyncToCloudKitForZone:(id)zone
{
  zoneCopy = zone;
  v5 = objc_alloc_init(NSMutableArray);
  [v5 addObjectsFromArray:&off_10007F078];
  if (zoneCopy)
  {
    v15[0] = @" AND stream_identifier = ?";
    v15[1] = zoneCopy;
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

  allObjects = [v8 allObjects];

  return allObjects;
}

- (id)recordFromSystemFieldsData:(id)data
{
  dataCopy = data;
  v10 = 0;
  v4 = [[NSKeyedUnarchiver alloc] initForReadingFromData:dataCopy error:&v10];

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

- (id)createCKRecordFromRecordID:(id)d newRecord:(BOOL *)record recordType:(unint64_t)type
{
  dCopy = d;
  recordName = [dCopy recordName];
  zoneID = [dCopy zoneID];
  zoneName = [zoneID zoneName];
  v12 = [(BMSyncDatabase *)self getSystemFieldsDataForRecordName:recordName zoneName:zoneName recordType:type];

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
  v16 = sub_100027674(type);
  v13 = [v15 initWithRecordType:v16 recordID:dCopy];

  if (v13)
  {
    if (record)
    {
      *record = 1;
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

- (void)saveSystemFieldsDataForRecord:(id)record syncToCloudKit:(id)kit recordType:(unint64_t)type crdtDeleted:(id)deleted
{
  recordCopy = record;
  kitCopy = kit;
  deletedCopy = deleted;
  queue = self->_queue;
  if (queue)
  {
    dispatch_assert_queue_V2(queue);
  }

  recordID = [recordCopy recordID];
  recordName = [recordID recordName];

  recordID2 = [recordCopy recordID];
  zoneID = [recordID2 zoneID];
  zoneName = [zoneID zoneName];

  v19 = [(BMSyncDatabase *)self ckRecordExists:recordName zoneName:zoneName recordType:type];
  recordChangeTag = [recordCopy recordChangeTag];

  if (!recordChangeTag)
  {
    if ((v19 & 1) == 0)
    {
      fmdb = self->_fmdb;
      v40[0] = @"record_metadata";
      goto LABEL_20;
    }

    encodedData = 0;
LABEL_9:
    v24 = objc_alloc_init(NSMutableDictionary);
    recordChangeTag2 = [recordCopy recordChangeTag];

    if (recordChangeTag2)
    {
      if (!encodedData)
      {
        v36 = +[NSNull null];
        [v24 setObject:v36 forKey:@"record_metadata"];

        if (!kitCopy)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }

      [v24 setObject:encodedData forKey:@"record_metadata"];
    }

    if (!kitCopy)
    {
LABEL_14:
      if (deletedCopy)
      {
        [v24 setObject:deletedCopy forKey:@"deleted_crdt"];
      }

      if (![v24 count])
      {

        goto LABEL_34;
      }

      v26 = self->_fmdb;
      v42[0] = @"record_name = ?";
      v42[1] = recordName;
      v42[2] = @" AND stream_identifier = ?";
      v42[3] = zoneName;
      v42[4] = @" AND record_type = ?";
      v27 = [NSNumber numberWithUnsignedInteger:type];
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
    [v24 setObject:kitCopy forKey:@"sync_to_cloud_kit"];
    goto LABEL_14;
  }

  v21 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:1];
  [recordCopy encodeSystemFieldsWithCoder:v21];
  encodedData = [v21 encodedData];

  if (v19)
  {
    goto LABEL_9;
  }

  fmdb = self->_fmdb;
  v40[0] = @"record_metadata";
  if (encodedData)
  {
    v37 = 0;
    v23 = encodedData;
    goto LABEL_21;
  }

LABEL_20:
  v23 = +[NSNull null];
  encodedData = 0;
  v37 = 1;
LABEL_21:
  v41[0] = v23;
  v41[1] = recordName;
  v39 = recordName;
  v40[1] = @"record_name";
  v40[2] = @"stream_identifier";
  v29 = &__kCFBooleanFalse;
  v30 = kitCopy;
  if (kitCopy)
  {
    v29 = kitCopy;
  }

  v41[2] = zoneName;
  v41[3] = v29;
  v40[3] = @"sync_to_cloud_kit";
  v40[4] = @"deleted_crdt";
  v31 = deletedCopy;
  if (!deletedCopy)
  {
    v31 = +[NSNull null];
  }

  v41[4] = v31;
  v40[5] = @"record_type";
  v32 = [NSNumber numberWithUnsignedInteger:type];
  v41[5] = v32;
  v33 = [NSDictionary dictionaryWithObjects:v41 forKeys:v40 count:6];
  v34 = [(_bmFMDatabase *)fmdb INSERT_INTO:@"CKRecord" VALUES:v33];

  if (!deletedCopy)
  {
  }

  if (v37)
  {
  }

  kitCopy = v30;
  recordName = v39;
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

- (id)getSystemFieldsDataForRecordName:(id)name zoneName:(id)zoneName recordType:(unint64_t)type
{
  nameCopy = name;
  zoneNameCopy = zoneName;
  queue = self->_queue;
  if (queue)
  {
    dispatch_assert_queue_V2(queue);
  }

  fmdb = self->_fmdb;
  v17[0] = @"record_name = ?";
  v17[1] = nameCopy;
  v17[2] = @" AND record_type = ?";
  v12 = [NSNumber numberWithUnsignedInteger:type];
  v17[3] = v12;
  v17[4] = @" AND stream_identifier = ?";
  v17[5] = zoneNameCopy;
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

- (BOOL)resetCKRecordsMetaDataAndSetToSyncForZone:(id)zone
{
  zoneCopy = zone;
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
  v13[1] = zoneCopy;
  v13[2] = @" AND record_type = ?";
  v13[3] = &off_10007F408;
  v10 = [NSArray arrayWithObjects:v13 count:4];
  LOBYTE(fmdb) = [(_bmFMDatabase *)fmdb UPDATE:@"CKRecord" SET:v9 WHERE:v10];

  v11 = [(BMSyncDatabase *)self clearCKMergeableRecordValueServerMergeableValuesForZoneName:zoneCopy];
  return fmdb & v11;
}

- (void)resetMetadataForRecord:(id)record zoneName:(id)name
{
  recordCopy = record;
  nameCopy = name;
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
  v15[1] = recordCopy;
  v15[2] = @" AND stream_identifier = ?";
  v15[3] = nameCopy;
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

- (BOOL)saveCKRecordServerMergeableValue:(id)value recordName:(id)name zoneName:(id)zoneName locationRow:(id)row
{
  valueCopy = value;
  nameCopy = name;
  zoneNameCopy = zoneName;
  rowCopy = row;
  queue = self->_queue;
  if (queue)
  {
    dispatch_assert_queue_V2(queue);
  }

  v15 = 1;
  if (![(BMSyncDatabase *)self ckRecordExists:nameCopy zoneName:zoneNameCopy recordType:1])
  {
    fmdb = self->_fmdb;
    v21[0] = @"location_id";
    v17 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [rowCopy primaryKey]);
    v22[0] = v17;
    v22[1] = &__kCFBooleanFalse;
    v21[1] = @"sync_to_cloud_kit";
    v21[2] = @"deleting";
    v22[2] = &__kCFBooleanFalse;
    v22[3] = nameCopy;
    v21[3] = @"record_name";
    v21[4] = @"stream_identifier";
    v21[5] = @"record_type";
    v22[4] = zoneNameCopy;
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
      if (valueCopy)
      {
        goto LABEL_7;
      }

      goto LABEL_8;
    }

    v15 = 1;
  }

  if (valueCopy)
  {
LABEL_7:
    v15 = [(BMSyncDatabase *)self saveCKMergeableRecordValueRecordName:nameCopy zoneName:zoneNameCopy mergeableRecordValueData:valueCopy];
  }

LABEL_8:

  return v15;
}

- (BOOL)saveCKRecordHighestDeletedLocationRow:(id)row recordName:(id)name zoneName:(id)zoneName recordExists:(BOOL)exists
{
  existsCopy = exists;
  rowCopy = row;
  nameCopy = name;
  zoneNameCopy = zoneName;
  queue = self->_queue;
  if (queue)
  {
    dispatch_assert_queue_V2(queue);
  }

  fmdb = self->_fmdb;
  if (existsCopy)
  {
    v23 = @"location_id";
    v15 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [rowCopy primaryKey]);
    v24 = v15;
    v16 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    v22[0] = @"record_name = ?";
    v22[1] = nameCopy;
    v22[2] = @" AND stream_identifier = ?";
    v22[3] = zoneNameCopy;
    v22[4] = @" AND record_type = ?";
    v22[5] = &off_10007F420;
    v17 = [NSArray arrayWithObjects:v22 count:6];
    v18 = [(_bmFMDatabase *)fmdb UPDATE:@"CKRecord" SET:v16 WHERE:v17];
  }

  else
  {
    v20[0] = @"location_id";
    v15 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [rowCopy primaryKey]);
    v21[0] = v15;
    v21[1] = &__kCFBooleanFalse;
    v20[1] = @"sync_to_cloud_kit";
    v20[2] = @"deleting";
    v21[2] = &__kCFBooleanFalse;
    v21[3] = nameCopy;
    v20[3] = @"record_name";
    v20[4] = @"stream_identifier";
    v20[5] = @"record_type";
    v21[4] = zoneNameCopy;
    v21[5] = &off_10007F420;
    v16 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:6];
    v18 = [(_bmFMDatabase *)fmdb INSERT_INTO:@"CKRecord" VALUES:v16];
  }

  return v18;
}

- (BOOL)saveCKRecordLocalMergeableValue:(id)value recordName:(id)name zoneName:(id)zoneName locationRow:(id)row
{
  valueCopy = value;
  nameCopy = name;
  zoneNameCopy = zoneName;
  rowCopy = row;
  queue = self->_queue;
  if (queue)
  {
    dispatch_assert_queue_V2(queue);
  }

  v15 = [(BMSyncDatabase *)self ckRecordExists:nameCopy zoneName:zoneNameCopy recordType:1];
  fmdb = self->_fmdb;
  if (!v15)
  {
    v24[0] = @"location_id";
    v17 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [rowCopy primaryKey]);
    v25[0] = v17;
    v25[1] = &__kCFBooleanFalse;
    v24[1] = @"sync_to_cloud_kit";
    v24[2] = @"deleting";
    v25[2] = &__kCFBooleanFalse;
    v25[3] = nameCopy;
    v24[3] = @"record_name";
    v24[4] = @"stream_identifier";
    v25[4] = zoneNameCopy;
    v25[5] = &off_10007F408;
    v21 = valueCopy;
    v24[5] = @"record_type";
    v24[6] = @"local_mergeable_value";
    if (!valueCopy)
    {
      v21 = +[NSNull null];
    }

    v25[6] = v21;
    v22 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:7];
    v20 = [(_bmFMDatabase *)fmdb INSERT_INTO:@"CKRecord" VALUES:v22];

    if (!valueCopy)
    {
    }

    goto LABEL_12;
  }

  v27 = @"local_mergeable_value";
  v17 = valueCopy;
  if (!valueCopy)
  {
    v17 = +[NSNull null];
  }

  v28 = v17;
  v18 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
  v26[0] = @"record_name = ?";
  v26[1] = nameCopy;
  v26[2] = @" AND stream_identifier = ?";
  v26[3] = zoneNameCopy;
  v26[4] = @" AND record_type = ?";
  v26[5] = &off_10007F408;
  v19 = [NSArray arrayWithObjects:v26 count:6];
  v20 = [(_bmFMDatabase *)fmdb UPDATE:@"CKRecord" SET:v18 WHERE:v19];

  if (!valueCopy)
  {
LABEL_12:
  }

  return v20;
}

- (BOOL)clearCKRecordLocalMergeableValueAndSetToSyncForZone:(id)zone
{
  zoneCopy = zone;
  v5 = __biome_log_for_category();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v16 = zoneCopy;
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
  v12[1] = zoneCopy;
  v12[2] = @" AND record_type = ?";
  v12[3] = &off_10007F408;
  v9 = [NSArray arrayWithObjects:v12 count:4];
  LOBYTE(fmdb) = [(_bmFMDatabase *)fmdb UPDATE:@"CKRecord" SET:v8 WHERE:v9];

  v10 = [(BMSyncDatabase *)self clearCKMergeableRecordValueServerMergeableValuesForZoneName:zoneCopy];
  return fmdb & v10;
}

- (id)ckRecordForRecordName:(id)name zoneName:(id)zoneName recordType:(unint64_t)type
{
  nameCopy = name;
  zoneNameCopy = zoneName;
  queue = self->_queue;
  if (queue)
  {
    dispatch_assert_queue_V2(queue);
  }

  fmdb = self->_fmdb;
  v17[0] = @"record_name = ?";
  v17[1] = nameCopy;
  v17[2] = @" AND record_type = ?";
  v12 = [NSNumber numberWithUnsignedInteger:type];
  v17[3] = v12;
  v17[4] = @" AND stream_identifier = ?";
  v17[5] = zoneNameCopy;
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

- (BOOL)ckRecordExists:(id)exists zoneName:(id)name recordType:(unint64_t)type
{
  existsCopy = exists;
  nameCopy = name;
  queue = self->_queue;
  if (queue)
  {
    dispatch_assert_queue_V2(queue);
  }

  fmdb = self->_fmdb;
  v16[0] = @"record_name = ?";
  v16[1] = existsCopy;
  v16[2] = @" AND record_type = ?";
  v12 = [NSNumber numberWithUnsignedInteger:type];
  v16[3] = v12;
  v16[4] = @" AND stream_identifier = ?";
  v16[5] = nameCopy;
  v13 = [NSArray arrayWithObjects:v16 count:6];
  v14 = [(_bmFMDatabase *)fmdb SELECT_FROM:@"CKRecord" COLUMNS:&off_10007F0D8 WHERE:v13];

  LOBYTE(v12) = [v14 next];
  return v12;
}

- (void)updateAllCKRecordsAtOrBeforeLocationToBeDeletedOnSync:(id)sync
{
  syncCopy = sync;
  queue = self->_queue;
  if (queue)
  {
    dispatch_assert_queue_V2(queue);
  }

  fmdb = self->_fmdb;
  v13[0] = @"record_type = ?";
  v13[1] = &off_10007F408;
  v13[2] = CFSTR(" AND location_id IN(    SELECT id FROM CRDTLocation WHERE site = ?");
  siteIdentifier = [syncCopy siteIdentifier];
  v13[3] = siteIdentifier;
  v13[4] = @"     AND stream = ?";
  streamName = [syncCopy streamName];
  v13[5] = streamName;
  v13[6] = @"     AND day <= ?");
  v9 = [syncCopy day];
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

- (void)markCKRecordsAtOrBeforeLocationToBeDeletedOnSync:(id)sync
{
  syncCopy = sync;
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
  siteIdentifier = [syncCopy siteIdentifier];
  v15[3] = siteIdentifier;
  v15[4] = @"     AND stream = ?";
  streamName = [syncCopy streamName];
  v15[5] = streamName;
  v15[6] = @"     AND day <= ?");
  v11 = [syncCopy day];
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

- (void)enumerateRecordsWithBlock:(id)block
{
  blockCopy = block;
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
    blockCopy[2](blockCopy, v8, &v9);

    objc_autoreleasePoolPop(v7);
  }

  while (v9 != 1);
}

- (void)deleteCKRecordsAtOrBeforeLocation:(id)location
{
  locationCopy = location;
  queue = self->_queue;
  if (queue)
  {
    dispatch_assert_queue_V2(queue);
  }

  fmdb = self->_fmdb;
  v13[0] = @"record_type = ?";
  v13[1] = &off_10007F408;
  v13[2] = CFSTR(" AND location_id IN(    SELECT id FROM CRDTLocation WHERE site = ?");
  siteIdentifier = [locationCopy siteIdentifier];
  v13[3] = siteIdentifier;
  v13[4] = @"     AND stream = ?";
  streamName = [locationCopy streamName];
  v13[5] = streamName;
  v13[6] = @"     AND day <= ?");
  v9 = [locationCopy day];
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

- (void)deleteCKRecordsForStreamName:(id)name
{
  nameCopy = name;
  queue = self->_queue;
  if (queue)
  {
    dispatch_assert_queue_V2(queue);
  }

  fmdb = self->_fmdb;
  v9[0] = @"stream_identifier = ?";
  v9[1] = nameCopy;
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

- (void)deleteCKRecordAtLocation:(id)location
{
  locationCopy = location;
  queue = self->_queue;
  if (queue)
  {
    dispatch_assert_queue_V2(queue);
  }

  recordName = [locationCopy recordName];
  fmdb = self->_fmdb;
  v11[0] = @"record_name = ?";
  v11[1] = recordName;
  v11[2] = @" AND record_type = ?";
  v11[3] = &off_10007F408;
  v11[4] = @" AND stream_identifier = ?";
  streamName = [locationCopy streamName];
  v11[5] = streamName;
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

- (void)enumerateCKSyncRecordRecordsSetForDeletingUsingBlock:(id)block
{
  blockCopy = block;
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
      blockCopy[2](blockCopy, v14, &v16);

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

- (void)deleteAllCKRecordsInZone:(id)zone
{
  zoneCopy = zone;
  queue = self->_queue;
  if (queue)
  {
    dispatch_assert_queue_V2(queue);
  }

  fmdb = self->_fmdb;
  v10[0] = @"stream_identifier = ?";
  zoneName = [zoneCopy zoneName];
  v10[1] = zoneName;
  v8 = [NSArray arrayWithObjects:v10 count:2];
  LOBYTE(fmdb) = [(_bmFMDatabase *)fmdb DELETE_FROM:@"CKRecord" WHERE:v8];

  if ((fmdb & 1) == 0)
  {
    v9 = __biome_log_for_category();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10004C6A0(zoneCopy, v9);
    }
  }
}

- (unint64_t)ckRecordCountForRecordType:(unint64_t)type
{
  queue = self->_queue;
  if (queue)
  {
    dispatch_assert_queue_V2(queue);
  }

  fmdb = self->_fmdb;
  v12[0] = @"record_type = ?";
  v7 = [NSNumber numberWithUnsignedInteger:type];
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

- (BOOL)upsertCKRecordWithLocation:(id)location inStream:(id)stream
{
  locationCopy = location;
  streamCopy = stream;
  fmdb = self->_fmdb;
  v29[0] = @"location_id = ?";
  v8 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [locationCopy primaryKey]);
  v29[1] = v8;
  v29[2] = @" AND record_type = ?";
  v29[3] = &off_10007F408;
  v9 = [NSArray arrayWithObjects:v29 count:4];
  v10 = [(_bmFMDatabase *)fmdb SELECT_FROM:@"CKRecord" COLUMNS:&off_10007F198 WHERE:v9];

  next = [v10 next];
  v12 = self->_fmdb;
  if (next)
  {
    v28[0] = @"location_id =?";
    v13 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [locationCopy primaryKey]);
    v28[1] = v13;
    v28[2] = @" AND record_type = ?";
    v28[3] = &off_10007F408;
    v14 = [NSArray arrayWithObjects:v28 count:4];
    v15 = [(_bmFMDatabase *)v12 UPDATE:@"CKRecord" SET:&off_10007F638 WHERE:v14];

    v16 = streamCopy;
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
    v18 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [locationCopy primaryKey]);
    v27[0] = v18;
    v27[1] = &__kCFBooleanTrue;
    v26[1] = @"sync_to_cloud_kit";
    v26[2] = @"deleting";
    v27[2] = &__kCFBooleanFalse;
    v26[3] = @"record_name";
    location = [locationCopy location];
    recordName = [location recordName];
    v16 = streamCopy;
    v27[3] = recordName;
    v27[4] = streamCopy;
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

- (BOOL)disableAllCKSyncRecordsForSite:(id)site stream:(id)stream
{
  siteCopy = site;
  streamCopy = stream;
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
  v16[1] = siteCopy;
  v16[2] = @" AND stream = ?");
  v16[3] = streamCopy;
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

- (BOOL)enableAllCKSyncRecordsPreviouslyDisabledForSite:(id)site stream:(id)stream
{
  siteCopy = site;
  streamCopy = stream;
  queue = self->_queue;
  if (queue)
  {
    dispatch_assert_queue_V2(queue);
  }

  fmdb = self->_fmdb;
  v14[0] = CFSTR("location_id IN (SELECT id FROM CRDTLocation WHERE site = ?");
  v14[1] = siteCopy;
  v14[2] = @" AND stream = ?");
  v14[3] = streamCopy;
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
  primaryDatabasePath = [self primaryDatabasePath];
  v3 = [primaryDatabasePath stringByAppendingString:@"-wal"];

  return v3;
}

- (BMSyncDatabase)initWithQueue:(id)queue
{
  queueCopy = queue;
  primaryDatabasePath = [objc_opt_class() primaryDatabasePath];
  v6 = [(BMSyncDatabase *)self initWithPath:primaryDatabasePath options:0 queue:queueCopy];

  return v6;
}

- (BMSyncDatabase)initWithPath:(id)path options:(unint64_t)options queue:(id)queue
{
  pathCopy = path;
  queueCopy = queue;
  v11 = queueCopy;
  if (pathCopy)
  {
    if (!queueCopy)
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
    v14 = [_bmFMDatabase databaseWithPath:pathCopy];
    fmdb = v13->_fmdb;
    v13->_fmdb = v14;

    [(_bmFMDatabase *)v13->_fmdb setShouldCacheStatements:1];
    v13->_options = options;
    objc_storeStrong(&v13->_queue, queue);
    loggingSuffix = v13->_loggingSuffix;
    v13->_loggingSuffix = &stru_100079C10;
  }

  return v13;
}

- (void)setName:(id)name
{
  nameCopy = name;
  if (([(NSString *)self->_name isEqual:?]& 1) == 0)
  {
    if (nameCopy)
    {
      nameCopy = [[NSString alloc] initWithFormat:@"[%@]", nameCopy];
    }

    else
    {
      nameCopy = &stru_100079C10;
    }

    loggingSuffix = self->_loggingSuffix;
    self->_loggingSuffix = &nameCopy->isa;

    objc_storeStrong(&self->_name, name);
  }
}

- (void)setState:(unint64_t)state error:(id)error
{
  errorCopy = error;
  objc_storeStrong(&self->__error_ivar, error);
  self->__internal_state_ivar = state;
  v8 = __biome_log_for_category();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    loggingSuffix = self->_loggingSuffix;
    if (state > 9)
    {
      v10 = @"Unknown";
    }

    else
    {
      v10 = off_1000799B8[state];
    }

    v13 = 138412546;
    v14 = loggingSuffix;
    v15 = 2112;
    v16 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "BMSyncDatabase%@ transitioned to state: %@", &v13, 0x16u);
  }

  if (state == 7)
  {
    v11 = __biome_log_for_category();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_FAULT);
    if (errorCopy)
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

  if (state == 9)
  {
    v11 = __biome_log_for_category();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      sub_10004CC48(self);
    }

LABEL_18:

    goto LABEL_19;
  }

  if (errorCopy)
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

- (void)setState:(unint64_t)state errorFormat:(id)format
{
  formatCopy = format;
  if ([formatCopy length])
  {
    v7 = [[NSString alloc] initWithFormat:formatCopy arguments:&v8];
  }

  else
  {
    v7 = 0;
  }

  [(BMSyncDatabase *)self setState:state error:v7];
}

- (BOOL)_tryOpen:(unint64_t)open
{
  if ([(BMSyncDatabase *)self internalState]== 4)
  {
    return 1;
  }

  v7 = open + 1;
  if (v7 >= 0xA)
  {
    [(BMSyncDatabase *)self setState:9 error:@"recursion max"];
    return 0;
  }

  internalState = [(BMSyncDatabase *)self internalState];
  if (internalState <= 4)
  {
    if (internalState <= 2)
    {
      if (internalState >= 2)
      {
        if (internalState == 2)
        {
          databasePath = [(_bmFMDatabase *)self->_fmdb databasePath];
          stringByDeletingLastPathComponent = [databasePath stringByDeletingLastPathComponent];

          v11 = +[NSFileManager defaultManager];
          v84 = 0;
          v12 = [v11 createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v84];
          v13 = v84;

          if (!v12 || v13)
          {
            localizedFailureReason = [v13 localizedFailureReason];
            [(BMSyncDatabase *)self setState:9 errorFormat:@"failed to create path at: %@, reason: %@", stringByDeletingLastPathComponent, localizedFailureReason];

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

    if (internalState != 3)
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
      stringByDeletingLastPathComponent = [NSString stringWithFormat:@"PRAGMA journal_mode = WALPRAGMA foreign_keys = ON;PRAGMA cache_spill = %u;", 250];;
      if ([(_bmFMDatabase *)self->_fmdb executeStatements:stringByDeletingLastPathComponent])
      {
        if ([(_bmFMDatabase *)self->_fmdb tableExists:@"Metadata"])
        {
          userVersion = [(_bmFMDatabase *)self->_fmdb userVersion];
          if (userVersion >= 0x23)
          {
            v23 = @"version too new";
LABEL_124:
            selfCopy4 = self;
            v55 = 7;
            goto LABEL_125;
          }

          v69 = userVersion;
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
            selfCopy4 = self;
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
          selfCopy4 = self;
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
      selfCopy4 = self;
      v55 = 9;
LABEL_125:
      [(BMSyncDatabase *)selfCopy4 setState:v55 errorFormat:v23];
      v73 = [(BMSyncDatabase *)self performSelector:a2 withObject:v7]== 0;
      goto LABEL_126;
    }

    lastErrorCode = [(_bmFMDatabase *)self->_fmdb lastErrorCode];
    if (lastErrorCode <= 13)
    {
      if (lastErrorCode == 5)
      {
        v17 = &stru_100079C10;
        selfCopy13 = self;
        v19 = 5;
        goto LABEL_110;
      }

      if (lastErrorCode != 11)
      {
        goto LABEL_96;
      }

LABEL_89:
      v17 = &stru_100079C10;
      selfCopy13 = self;
      v19 = 7;
      goto LABEL_110;
    }

    if (lastErrorCode == 14)
    {
      v62 = +[NSFileManager defaultManager];
      databasePath2 = [(_bmFMDatabase *)self->_fmdb databasePath];
      v64 = [v62 fileExistsAtPath:databasePath2];

      if ((v64 & 1) == 0)
      {
        v17 = &stru_100079C10;
        selfCopy13 = self;
        v19 = 2;
        goto LABEL_110;
      }
    }

    else if (lastErrorCode == 23)
    {
      if ((self->_options & 1) == 0)
      {
        v17 = &stru_100079C10;
        selfCopy13 = self;
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

  if (internalState <= 6)
  {
    if (internalState != 5)
    {
      if (v7)
      {
        return 0;
      }

      [(BMSyncDatabase *)self setState:3 errorFormat:&stru_100079C10];
      selfCopy11 = self;
      v15 = a2;
      v16 = 0;
      return [(BMSyncDatabase *)selfCopy11 performSelector:v15 withObject:v16]!= 0;
    }

LABEL_23:
    v17 = &stru_100079C10;
    selfCopy13 = self;
    v19 = 3;
LABEL_110:
    [(BMSyncDatabase *)selfCopy13 setState:v19 errorFormat:v17, internalState2];
    selfCopy11 = self;
    v15 = a2;
    v16 = v7;
    return [(BMSyncDatabase *)selfCopy11 performSelector:v15 withObject:v16]!= 0;
  }

  if (internalState == 7)
  {
    if (self->_flags)
    {
LABEL_108:
      v17 = &stru_100079C10;
      goto LABEL_109;
    }

    [(_bmFMDatabase *)self->_fmdb close];
    v24 = +[NSFileManager defaultManager];
    databasePath3 = [(_bmFMDatabase *)self->_fmdb databasePath];
    v79 = 0;
    v26 = [v24 removeItemAtPath:databasePath3 error:&v79];
    stringByDeletingLastPathComponent = v79;

    if (v26 && !stringByDeletingLastPathComponent)
    {
LABEL_38:

      v27 = +[NSFileManager defaultManager];
      databasePath4 = [(_bmFMDatabase *)self->_fmdb databasePath];
      v29 = [databasePath4 stringByAppendingString:@"-wal"];
      v78 = 0;
      v30 = [v27 removeItemAtPath:v29 error:&v78];
      stringByDeletingLastPathComponent = v78;

      if (v30 && !stringByDeletingLastPathComponent)
      {
        goto LABEL_40;
      }

      domain = [stringByDeletingLastPathComponent domain];
      if ([domain isEqual:NSCocoaErrorDomain])
      {
        code = [stringByDeletingLastPathComponent code];

        if (code == 4)
        {
LABEL_40:

          v31 = +[NSFileManager defaultManager];
          databasePath5 = [(_bmFMDatabase *)self->_fmdb databasePath];
          v33 = [databasePath5 stringByAppendingString:@"-shm"];
          v77 = 0;
          v34 = [v31 removeItemAtPath:v33 error:&v77];
          stringByDeletingLastPathComponent = v77;

          if (v34 && !stringByDeletingLastPathComponent)
          {
LABEL_42:
            corruptionHandler = [(BMSyncDatabase *)self corruptionHandler];
            v13 = corruptionHandler;
            if (corruptionHandler)
            {
              (*(corruptionHandler + 16))(corruptionHandler);
            }

            goto LABEL_12;
          }

          domain2 = [stringByDeletingLastPathComponent domain];
          if ([domain2 isEqual:NSCocoaErrorDomain])
          {
            code2 = [stringByDeletingLastPathComponent code];

            if (code2 == 4)
            {
              goto LABEL_42;
            }
          }

          else
          {
          }

          internalState2 = stringByDeletingLastPathComponent;
          v72 = @"failed to delete corrupt database SHM file: %@";
LABEL_115:
          [(BMSyncDatabase *)self setState:9 errorFormat:v72, internalState2];
LABEL_116:
          v51 = [(BMSyncDatabase *)self performSelector:a2 withObject:v7];
          goto LABEL_117;
        }
      }

      else
      {
      }

      [(BMSyncDatabase *)self setState:9 errorFormat:@"failed to delete corrupt database WAL file: %@", stringByDeletingLastPathComponent];
      goto LABEL_116;
    }

    domain3 = [stringByDeletingLastPathComponent domain];
    if ([domain3 isEqual:NSCocoaErrorDomain])
    {
      code3 = [stringByDeletingLastPathComponent code];

      if (code3 == 4)
      {
        goto LABEL_38;
      }
    }

    else
    {
    }

    [(BMSyncDatabase *)self setState:9 errorFormat:@"failed to delete corrupt database file: %@", stringByDeletingLastPathComponent];
    goto LABEL_116;
  }

  if (internalState != 8)
  {
    if (internalState == 9)
    {
      return 0;
    }

LABEL_66:
    internalState2 = [(BMSyncDatabase *)self internalState];
    v17 = @"unhandled state %llu";
LABEL_109:
    selfCopy13 = self;
    v19 = 9;
    goto LABEL_110;
  }

  userVersion2 = [(_bmFMDatabase *)self->_fmdb userVersion];
  if (userVersion2 > 0x21)
  {
LABEL_65:
    v17 = &stru_100079C10;
    selfCopy13 = self;
    v19 = 4;
    goto LABEL_110;
  }

  LODWORD(v37) = userVersion2;
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
    stringByDeletingLastPathComponent = [v40 objectForKeyedSubscript:v41];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      break;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      sqlStatements = [stringByDeletingLastPathComponent sqlStatements];
      [(_bmFMDatabase *)self->_fmdb beginTransaction];
      v80 = 0u;
      v81 = 0u;
      v82 = 0u;
      v83 = 0u;
      customFunctionName = sqlStatements;
      v45 = [customFunctionName countByEnumeratingWithState:&v80 objects:v85 count:16];
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
              objc_enumerationMutation(customFunctionName);
            }

            if (![(_bmFMDatabase *)self->_fmdb executeStatements:*(*(&v80 + 1) + 8 * i)])
            {
              lastError = [(_bmFMDatabase *)self->_fmdb lastError];
              [(BMSyncDatabase *)self setState:7 errorFormat:@"migration to version %u failed with error %@", v37, lastError];

              v51 = [(BMSyncDatabase *)self performSelector:a2 withObject:v7];
              goto LABEL_74;
            }
          }

          v46 = [customFunctionName countByEnumeratingWithState:&v80 objects:v85 count:16];
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

  customFunctionName = [stringByDeletingLastPathComponent customFunctionName];
  v43 = NSSelectorFromString(customFunctionName);
  if (!v43)
  {
    goto LABEL_118;
  }

  if (([(BMSyncDatabase *)self methodForSelector:v43])(self, v43))
  {
LABEL_51:

    goto LABEL_64;
  }

  lastError2 = [(_bmFMDatabase *)self->_fmdb lastError];
  [(BMSyncDatabase *)self setState:7 errorFormat:@"custom migration to version %u failed with error %@", v37, lastError2];

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
  internalState = [(BMSyncDatabase *)self internalState];
  if (internalState > 5)
  {
    if ((internalState - 7) < 2)
    {
      goto LABEL_12;
    }

    v4 = 3;
    if (internalState != 9)
    {
      v4 = 0;
    }

    if (internalState == 6)
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
    if ((internalState - 2) < 2)
    {
      goto LABEL_12;
    }

    if (internalState != 4)
    {
      if (internalState != 5)
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

- (void)disableStatementCachingForBlock:(id)block
{
  blockCopy = block;
  [(_bmFMDatabase *)self->_fmdb setShouldCacheStatementsWithoutClearingExistingStatements:0];
  blockCopy[2]();
  [(_bmFMDatabase *)self->_fmdb setShouldCacheStatementsWithoutClearingExistingStatements:1];
}

- (id)valueForMetadataKey:(id)key
{
  v3 = [(_bmFMDatabase *)self->_fmdb executeQuery:@"SELECT value FROM Metadata WHERE key=?", key];
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
  beginTransaction = [(_bmFMDatabase *)self->_fmdb beginTransaction];
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
    v9 = v21 & beginTransaction & v8 & [(_bmFMDatabase *)self->_fmdb executeStatements:@"INSERT INTO new_CRDTLocation SELECT * FROM CRDTLocation"];
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

- (void)recordSessionEnd:(id)end timeSincePreviousSync:(double)sync
{
  endCopy = end;
  queue = self->_queue;
  if (queue)
  {
    dispatch_assert_queue_V2(queue);
  }

  v8 = __biome_log_for_category();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = endCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "recordSessionEnd: %@", buf, 0xCu);
  }

  Current = CFAbsoluteTimeGetCurrent();
  fmdb = self->_fmdb;
  v16[0] = @"end_timestamp";
  v11 = [NSNumber numberWithDouble:Current];
  v16[1] = @"time_since_previous_sync";
  v17[0] = v11;
  v12 = [NSNumber numberWithDouble:sync];
  v17[1] = v12;
  v13 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:2];
  v15[0] = @"session_id = ?";
  v15[1] = endCopy;
  v14 = [NSArray arrayWithObjects:v15 count:2];
  [(_bmFMDatabase *)fmdb UPDATE:@"SyncSessionLog" SET:v13 WHERE:v14];
}

- (void)recordAtomMergeResult:(unint64_t)result inStream:(id)stream sessionID:(id)d messageID:(unint64_t)iD ownerSite:(id)site originatingSite:(id)originatingSite eventCreatedAt:(double)at
{
  streamCopy = stream;
  dCopy = d;
  siteCopy = site;
  originatingSiteCopy = originatingSite;
  queue = self->_queue;
  if (queue)
  {
    dispatch_assert_queue_V2(queue);
  }

  v21 = __biome_log_for_category();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    sub_10004CF74(result, v21);
  }

  Current = CFAbsoluteTimeGetCurrent();
  fmdb = self->_fmdb;
  v30[0] = dCopy;
  v24 = [NSNumber numberWithUnsignedInteger:iD, @"session_id", @"message_id"];
  v30[1] = v24;
  v30[2] = streamCopy;
  v29[2] = @"stream";
  v29[3] = @"owning_site_identifier";
  v30[3] = siteCopy;
  v30[4] = originatingSiteCopy;
  v29[4] = @"relayed_by_site_identifier";
  v29[5] = @"merge_result";
  v25 = [NSNumber numberWithUnsignedInteger:result];
  v30[5] = v25;
  v29[6] = @"event_created_at";
  v26 = [NSNumber numberWithDouble:at];
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

- (void)computeAggregatedSessionLogsWithHandlerBlock:(id)block
{
  blockCopy = block;
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
      resultDictionary = [v5 resultDictionary];
      blockCopy[2](blockCopy, resultDictionary);

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

- (void)runVacuumingTask:(id)task
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10003DFE0;
  v6[3] = &unk_100079A10;
  taskCopy = task;
  v7 = taskCopy;
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

- (void)setDateOfLastVacuum:(id)vacuum
{
  if (vacuum)
  {
    [vacuum timeIntervalSinceReferenceDate];
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

- (BOOL)vacuumWithShouldContinueBlock:(id)block
{
  blockCopy = block;
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

  if (blockCopy && !blockCopy[2](blockCopy))
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
  _numPagesToVacuum = [(BMSyncDatabase *)self _numPagesToVacuum];
  v11 = __biome_log_for_category();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v30 = _numPagesToVacuum;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "vacuumWithShouldContinueBlock calculated pages to vacuum: %lu", buf, 0xCu);
  }

  v12 = _numPagesToVacuum != 0;
  if (_numPagesToVacuum)
  {
    v13 = 0;
    while (1)
    {
      if (_numPagesToVacuum - v13 >= 0x1F4)
      {
        v14 = 500;
      }

      else
      {
        v14 = _numPagesToVacuum - v13;
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
      if (blockCopy && !blockCopy[2](blockCopy))
      {
        goto LABEL_43;
      }

      if (v13 >= _numPagesToVacuum)
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
  databasePath = [(_bmFMDatabase *)self->_fmdb databasePath];
  v4 = [(BMSyncDatabase *)self _sizeOfFileInKilobytes:databasePath];

  return v4;
}

- (unint64_t)walSizeInKilobytes
{
  databasePath = [(_bmFMDatabase *)self->_fmdb databasePath];
  v4 = [databasePath stringByAppendingString:@"-wal"];
  v5 = [(BMSyncDatabase *)self _sizeOfFileInKilobytes:v4];

  return v5;
}

- (unint64_t)_sizeOfFileInKilobytes:(id)kilobytes
{
  kilobytesCopy = kilobytes;
  v4 = +[NSFileManager defaultManager];
  v12 = 0;
  v5 = [v4 attributesOfItemAtPath:kilobytesCopy error:&v12];
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
      v16 = kilobytesCopy;
      v17 = 2112;
      v18 = v6;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%@ sizeOfFileInKilobytes error fetching attributes for filepath: %@, err: %@", buf, 0x20u);
    }
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (unint64_t)numRowsInTable:(id)table
{
  tableCopy = table;
  fmdb = self->_fmdb;
  v31 = tableCopy;
  v6 = [NSArray arrayWithObjects:&v31 count:1];
  v7 = [(_bmFMDatabase *)fmdb executeQuery:@"SELECT name FROM sqlite_schema WHERE type='table' AND name=?" withArgumentsInArray:v6];

  v24 = 0;
  v8 = [v7 nextWithError:&v24];
  v9 = v24;
  if (v8)
  {
    [v7 close];
    v10 = self->_fmdb;
    tableCopy = [[NSString alloc] initWithFormat:@"SELECT COUNT(*) FROM %@", tableCopy];
    v12 = [(_bmFMDatabase *)v10 executeQuery:tableCopy];

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
        v28 = tableCopy;
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
      v28 = tableCopy;
      v29 = 2112;
      v30 = v9;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%@ numRowsInTable table name: %@ does not exist, err: %@", buf, 0x20u);
    }

    [v7 close];
    v15 = 0;
  }

  return v15;
}

- (unint64_t)sizeOfTableInKilobytes:(id)kilobytes
{
  kilobytesCopy = kilobytes;
  fmdb = self->_fmdb;
  v22 = kilobytesCopy;
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
      v19 = kilobytesCopy;
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