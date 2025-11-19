@interface BMCoreAnalyticsEvents
+ (id)dictionaryWithSyncDatabase:(id)a3;
+ (void)sendSyncDatabaseSummaryWithDatabase:(id)a3;
@end

@implementation BMCoreAnalyticsEvents

+ (void)sendSyncDatabaseSummaryWithDatabase:(id)a3
{
  v3 = [a1 dictionaryWithSyncDatabase:a3];
  [BMCoreAnalyticsEvents sendEvent:@"com.apple.biome.syncdatabase" payload:v3];
}

+ (id)dictionaryWithSyncDatabase:(id)a3
{
  v3 = a3;
  v4 = [v3 dateOfLastVacuum];
  if (v4)
  {
    v5 = objc_opt_new();
    v6 = [v3 dateOfLastVacuum];
    [v5 timeIntervalSinceDate:v6];
    v18 = v7;
  }

  else
  {
    v18 = -1;
  }

  v20[0] = @"database_size";
  v19 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v3 databaseSizeInKilobytes]);
  v21[0] = v19;
  v20[1] = @"wal_size";
  v8 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v3 walSizeInKilobytes]);
  v21[1] = v8;
  v20[2] = @"num_rows_CKAtom";
  v9 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v3 numRowsInTable:@"CKAtom"]);
  v21[2] = v9;
  v20[3] = @"table_size_CKAtom";
  v10 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v3 sizeOfTableInKilobytes:@"CKAtom"]);
  v21[3] = v10;
  v20[4] = @"num_rows_CKRecord";
  v11 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v3 numRowsInTable:@"CKRecord"]);
  v21[4] = v11;
  v20[5] = @"table_size_CKRecord";
  v12 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v3 sizeOfTableInKilobytes:@"CKRecord"]);
  v21[5] = v12;
  v20[6] = @"num_rows_CRDTLocation";
  v13 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v3 numRowsInTable:@"CRDTLocation"]);
  v21[6] = v13;
  v20[7] = @"time_since_vacuum";
  v14 = [NSNumber numberWithInteger:v18];
  v21[7] = v14;
  v20[8] = @"table_size_CRDTLocation";
  v15 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v3 sizeOfTableInKilobytes:@"CRDTLocation"]);
  v21[8] = v15;
  v16 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:9];

  return v16;
}

@end