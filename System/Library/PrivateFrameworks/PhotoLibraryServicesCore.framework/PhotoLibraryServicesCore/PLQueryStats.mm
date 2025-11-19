@interface PLQueryStats
+ (BOOL)allowedToTrack;
+ (id)byteCountFormatter;
+ (id)startedQueryStatsWithContext:(id)a3;
- (PLQueryStats)initWithContext:(id)a3;
- (id)stopRecordingDescriptionWithFetchCount:(int64_t)a3;
@end

@implementation PLQueryStats

- (id)stopRecordingDescriptionWithFetchCount:(int64_t)a3
{
  v5 = [(NSManagedObjectContext *)self->_context databaseStatistics];
  [(NSManagedObjectContext *)self->_context setTrackSQLiteDatabaseStatistics:1];
  v6 = [v5 databaseStatisticsBySubtracting:self->_preStats];
  v7 = +[PLQueryStats byteCountFormatter];
  v8 = [v7 stringFromByteCount:{objc_msgSend(v6, "totalCachePages") * objc_msgSend(v6, "pageSize")}];

  v9 = +[PLQueryStats byteCountFormatter];
  if (a3 < 1)
  {
    v11 = 0;
  }

  else
  {
    v10 = [v6 pageSize];
    v11 = (([v6 totalCachePages] * v10) / a3);
  }

  v12 = [v9 stringFromByteCount:v11];

  v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Total I/O=%@, rows=%td [%@ / row]", v8, a3, v12];

  return v13;
}

- (PLQueryStats)initWithContext:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PLQueryStats.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"context"}];
  }

  v13.receiver = self;
  v13.super_class = PLQueryStats;
  v7 = [(PLQueryStats *)&v13 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_context, a3);
    [(NSManagedObjectContext *)v8->_context setTrackSQLiteDatabaseStatistics:1];
    v9 = [(NSManagedObjectContext *)v8->_context databaseStatistics];
    preStats = v8->_preStats;
    v8->_preStats = v9;
  }

  return v8;
}

+ (id)byteCountFormatter
{
  if (byteCountFormatter_sOnceToken != -1)
  {
    dispatch_once(&byteCountFormatter_sOnceToken, &__block_literal_global_1258);
  }

  v3 = byteCountFormatter_sByteCountFormatter;

  return v3;
}

uint64_t __34__PLQueryStats_byteCountFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AAF0]);
  v1 = byteCountFormatter_sByteCountFormatter;
  byteCountFormatter_sByteCountFormatter = v0;

  [byteCountFormatter_sByteCountFormatter setCountStyle:3];
  v2 = byteCountFormatter_sByteCountFormatter;

  return [v2 setAllowsNonnumericFormatting:0];
}

+ (BOOL)allowedToTrack
{
  HasInternalDiagnostics = PFOSVariantHasInternalDiagnostics();
  if (HasInternalDiagnostics)
  {
    v3 = [MEMORY[0x1E695E000] standardUserDefaults];
    v4 = [v3 BOOLForKey:@"enableSQLStatisticTracking"];

    LOBYTE(HasInternalDiagnostics) = v4;
  }

  return HasInternalDiagnostics;
}

+ (id)startedQueryStatsWithContext:(id)a3
{
  v4 = a3;
  if (v4 && [a1 allowedToTrack])
  {
    v5 = [[PLQueryStats alloc] initWithContext:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end