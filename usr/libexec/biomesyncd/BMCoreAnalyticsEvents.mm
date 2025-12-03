@interface BMCoreAnalyticsEvents
+ (id)dictionaryWithSyncDatabase:(id)database;
+ (void)sendSyncDatabaseSummaryWithDatabase:(id)database;
@end

@implementation BMCoreAnalyticsEvents

+ (void)sendSyncDatabaseSummaryWithDatabase:(id)database
{
  v3 = [self dictionaryWithSyncDatabase:database];
  [BMCoreAnalyticsEvents sendEvent:@"com.apple.biome.syncdatabase" payload:v3];
}

+ (id)dictionaryWithSyncDatabase:(id)database
{
  databaseCopy = database;
  dateOfLastVacuum = [databaseCopy dateOfLastVacuum];
  if (dateOfLastVacuum)
  {
    v5 = objc_opt_new();
    dateOfLastVacuum2 = [databaseCopy dateOfLastVacuum];
    [v5 timeIntervalSinceDate:dateOfLastVacuum2];
    v18 = v7;
  }

  else
  {
    v18 = -1;
  }

  v20[0] = @"database_size";
  v19 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [databaseCopy databaseSizeInKilobytes]);
  v21[0] = v19;
  v20[1] = @"wal_size";
  v8 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [databaseCopy walSizeInKilobytes]);
  v21[1] = v8;
  v20[2] = @"num_rows_CKAtom";
  v9 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [databaseCopy numRowsInTable:@"CKAtom"]);
  v21[2] = v9;
  v20[3] = @"table_size_CKAtom";
  v10 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [databaseCopy sizeOfTableInKilobytes:@"CKAtom"]);
  v21[3] = v10;
  v20[4] = @"num_rows_CKRecord";
  v11 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [databaseCopy numRowsInTable:@"CKRecord"]);
  v21[4] = v11;
  v20[5] = @"table_size_CKRecord";
  v12 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [databaseCopy sizeOfTableInKilobytes:@"CKRecord"]);
  v21[5] = v12;
  v20[6] = @"num_rows_CRDTLocation";
  v13 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [databaseCopy numRowsInTable:@"CRDTLocation"]);
  v21[6] = v13;
  v20[7] = @"time_since_vacuum";
  v14 = [NSNumber numberWithInteger:v18];
  v21[7] = v14;
  v20[8] = @"table_size_CRDTLocation";
  v15 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [databaseCopy sizeOfTableInKilobytes:@"CRDTLocation"]);
  v21[8] = v15;
  v16 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:9];

  return v16;
}

@end