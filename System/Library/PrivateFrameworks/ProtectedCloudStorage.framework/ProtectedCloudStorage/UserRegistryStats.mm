@interface UserRegistryStats
- (UserRegistryStats)initWithCoder:(id)coder;
- (id)getUserRegistryStats;
- (void)encodeWithCoder:(id)coder;
- (void)printUserRegistryStats:(__sFILE *)stats;
@end

@implementation UserRegistryStats

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt64:-[UserRegistryStats fetchRecordZoneChanges](self forKey:{"fetchRecordZoneChanges"), @"fetchRecordZoneChanges"}];
  [coderCopy encodeInt64:-[UserRegistryStats lastfetchRecordZoneChangesAtStart](self forKey:{"lastfetchRecordZoneChangesAtStart"), @"lastfetchRecordZoneChangesAtStart"}];
  [coderCopy encodeInt64:-[UserRegistryStats pushNotifications](self forKey:{"pushNotifications"), @"pushNotifications"}];
  [coderCopy encodeInt64:-[UserRegistryStats zoneReset](self forKey:{"zoneReset"), @"zoneReset"}];
  [coderCopy encodeInt64:-[UserRegistryStats recordFetch](self forKey:{"recordFetch"), @"recordFetch"}];
  [coderCopy encodeInt64:-[UserRegistryStats recordModify](self forKey:{"recordModify"), @"recordModify"}];
}

- (UserRegistryStats)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = UserRegistryStats;
  v5 = [(UserRegistryStats *)&v7 init];
  if (v5)
  {
    -[UserRegistryStats setFetchRecordZoneChanges:](v5, "setFetchRecordZoneChanges:", [coderCopy decodeInt64ForKey:@"fetchRecordZoneChanges"]);
    -[UserRegistryStats setLastfetchRecordZoneChangesAtStart:](v5, "setLastfetchRecordZoneChangesAtStart:", [coderCopy decodeInt64ForKey:@"lastfetchRecordZoneChangesAtStart"]);
    -[UserRegistryStats setPushNotifications:](v5, "setPushNotifications:", [coderCopy decodeInt64ForKey:@"pushNotifications"]);
    -[UserRegistryStats setZoneReset:](v5, "setZoneReset:", [coderCopy decodeInt64ForKey:@"zoneReset"]);
    -[UserRegistryStats setRecordFetch:](v5, "setRecordFetch:", [coderCopy decodeInt64ForKey:@"recordFetch"]);
    -[UserRegistryStats setRecordModify:](v5, "setRecordModify:", [coderCopy decodeInt64ForKey:@"recordModify"]);
  }

  return v5;
}

- (void)printUserRegistryStats:(__sFILE *)stats
{
  v9 = *MEMORY[0x1E69E9840];
  lastfetchRecordZoneChangesAtStart = [(UserRegistryStats *)self lastfetchRecordZoneChangesAtStart];
  if (lastfetchRecordZoneChangesAtStart)
  {
    memset(&v6, 0, sizeof(v6));
    localtime_r(&lastfetchRecordZoneChangesAtStart, &v6);
    strftime(v8, 0x80uLL, "%Y-%m-%d-%H:%M:%S", &v6);
  }

  else
  {
    __strlcpy_chk();
  }

  fwrite("UserRegistryStats:\n\n", 0x14uLL, 1uLL, stats);
  fprintf(stats, "\tfetchRecordZoneChanges: %lld\n", [(UserRegistryStats *)self fetchRecordZoneChanges]);
  fprintf(stats, "\tlastfetchRecordZoneChangesAtStart: %s\n", v8);
  fprintf(stats, "\tpushNotifications: %lld\n", [(UserRegistryStats *)self pushNotifications]);
  fprintf(stats, "\tzoneReset: %lld\n", [(UserRegistryStats *)self zoneReset]);
  fprintf(stats, "\trecordFetch: %lld\n", [(UserRegistryStats *)self recordFetch]);
  fprintf(stats, "\trecordModify: %lld\n", [(UserRegistryStats *)self recordModify]);
  fputc(10, stats);
  v5 = *MEMORY[0x1E69E9840];
}

- (id)getUserRegistryStats
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  lastfetchRecordZoneChangesAtStart = [(UserRegistryStats *)self lastfetchRecordZoneChangesAtStart];
  if (lastfetchRecordZoneChangesAtStart)
  {
    memset(&v12, 0, sizeof(v12));
    localtime_r(&lastfetchRecordZoneChangesAtStart, &v12);
    strftime(v14, 0x80uLL, "%Y-%m-%d-%H:%M:%S", &v12);
  }

  else
  {
    __strlcpy_chk();
  }

  v4 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[UserRegistryStats fetchRecordZoneChanges](self, "fetchRecordZoneChanges")}];
  [v3 setObject:v4 forKeyedSubscript:@"fetch_record_zone_changes"];

  v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v14];
  [v3 setObject:v5 forKeyedSubscript:@"last_fetch_record_zone_changes_at_start"];

  v6 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[UserRegistryStats pushNotifications](self, "pushNotifications")}];
  [v3 setObject:v6 forKeyedSubscript:@"push_notifications"];

  v7 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[UserRegistryStats zoneReset](self, "zoneReset")}];
  [v3 setObject:v7 forKeyedSubscript:@"zone_reset"];

  v8 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[UserRegistryStats recordFetch](self, "recordFetch")}];
  [v3 setObject:v8 forKeyedSubscript:@"record_fetch"];

  v9 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[UserRegistryStats recordModify](self, "recordModify")}];
  [v3 setObject:v9 forKeyedSubscript:@"record_modify"];

  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

@end