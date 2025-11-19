@interface _PASSQLTelemetryContext
- (BOOL)filterLog:(id)a3;
- (BOOL)isTargetProcess;
- (_PASSQLTelemetryContext)initWithConnectionAndSettings:(sqlite3 *)a3 sqlQuery:(id)a4 filterPii:(BOOL)a5 bloomFilter:(id)a6 bloomHashes:(id)a7 targetProcess:(id)a8;
- (id)currentProcessName;
- (id)sqlEventLogForTelemetry;
- (id)sqlEventLogRaw;
- (void)applyCallbackWithCompletion:(id)a3;
- (void)removeCallback;
- (void)resetLog;
- (void)sendTelemetry:(id)a3;
@end

@implementation _PASSQLTelemetryContext

- (void)resetLog
{
  sqlEventsLog = self->_sqlEventsLog;
  self->_sqlEventsLog = &stru_1F1B24B60;
  MEMORY[0x1EEE66BB8]();
}

- (void)removeCallback
{
  if ([(_PASSQLTelemetryContext *)self isTargetProcess])
  {
    dbConnection = self->_dbConnection;

    sqlite3_set_authorizer(dbConnection, 0, 0);
  }
}

- (BOOL)isTargetProcess
{
  if ([(NSString *)self->_targetProcess length])
  {
    v3 = [(NSString *)self->_targetProcess length];
    if (v3)
    {
      v4 = [MEMORY[0x1E696AE30] processInfo];
      v5 = [v4 processName];
      v6 = [v5 isEqualToString:self->_targetProcess];

      LOBYTE(v3) = v6;
    }
  }

  else
  {
    LOBYTE(v3) = 1;
  }

  return v3;
}

- (BOOL)filterLog:(id)a3
{
  v4 = [(_PASBloomFilter *)self->_bloomFilter computeHashesForString:a3 reuse:self->_bloomHashes];
  bloomHashes = self->_bloomHashes;
  self->_bloomHashes = v4;

  v6 = [(_PASBloomFilter *)self->_bloomFilter getWithHashes:self->_bloomHashes];
  if (!v6)
  {
    [(_PASBloomFilterForWriting *)self->_bloomFilter setWithHashes:self->_bloomHashes];
  }

  return v6;
}

- (id)sqlEventLogRaw
{
  v2 = [(NSString *)self->_sqlEventsLog copy];

  return v2;
}

- (id)sqlEventLogForTelemetry
{
  v3 = [(NSString *)self->_sqlEventsLog copy];
  sqlEventsLog = self->_sqlEventsLog;
  self->_sqlEventsLog = &stru_1F1B24B60;

  return v3;
}

- (void)applyCallbackWithCompletion:(id)a3
{
  v5 = a3;
  if ([(NSString *)self->_sql length])
  {
    if (![(_PASSQLTelemetryContext *)self isSqlConst])
    {
      if ([(_PASSQLTelemetryContext *)self isTargetProcess])
      {
        dbConnection = self->_dbConnection;
        if (dbConnection)
        {
          self->_shouldSendTelemetry = 1;
          if (v5)
          {
            [(_PASSQLTelemetryContext *)self setAuthorizerStatusBlock:?];
            dbConnection = self->_dbConnection;
          }

          sqlite3_set_authorizer(dbConnection, _PASSQLCallback, self);
        }
      }
    }
  }
}

- (id)currentProcessName
{
  v2 = [MEMORY[0x1E696AE30] processInfo];
  v3 = [v2 processName];

  return v3;
}

- (void)sendTelemetry:(id)a3
{
  v4 = a3;
  if ([(_PASSQLTelemetryContext *)self filterLog:self->_sqlEventsLog])
  {
    self->_shouldSendTelemetry = 0;
    sqlEventsLog = self->_sqlEventsLog;
    self->_sqlEventsLog = &stru_1F1B24B60;
  }

  if (self->_shouldSendTelemetry && [v4 length])
  {
    if ([v4 isEqualToString:@"SqlEventLog"] && -[NSString length](self->_sqlEventsLog, "length"))
    {
      v6 = AnalyticsSendEventLazy();
    }

    else
    {
      v6 = 0;
    }

    v7 = [(_PASSQLTelemetryContext *)self authorizerStatusBlock];

    if (v7)
    {
      v8 = [(_PASSQLTelemetryContext *)self authorizerStatusBlock];
      v8[2](v8, v6);
    }
  }
}

- (_PASSQLTelemetryContext)initWithConnectionAndSettings:(sqlite3 *)a3 sqlQuery:(id)a4 filterPii:(BOOL)a5 bloomFilter:(id)a6 bloomHashes:(id)a7 targetProcess:(id)a8
{
  v31[32] = *MEMORY[0x1E69E9840];
  v14 = a4;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v29.receiver = self;
  v29.super_class = _PASSQLTelemetryContext;
  v18 = [(_PASSQLTelemetryContext *)&v29 init];
  v19 = v18;
  if (v18)
  {
    v18->_dbConnection = a3;
    v20 = [v17 copy];
    targetProcess = v19->_targetProcess;
    v19->_targetProcess = v20;

    v22 = [v14 copy];
    sql = v19->_sql;
    v19->_sql = v22;

    sqlEventsLog = v19->_sqlEventsLog;
    v19->_sqlEventsLog = &stru_1F1B24B60;

    v19->_filterPii = a5;
    v19->_shouldSendTelemetry = 0;
    objc_storeStrong(&v19->_bloomFilter, a6);
    objc_storeStrong(&v19->_bloomHashes, a7);
    v30[0] = &unk_1F1B2FF28;
    v30[1] = &unk_1F1B2FF40;
    v31[0] = @"CREATE INDEX";
    v31[1] = @"CREATE TABLE";
    v30[2] = &unk_1F1B2FF58;
    v30[3] = &unk_1F1B2FF70;
    v31[2] = @"CREATE TEMP INDEX";
    v31[3] = @"CREATE TEMP TABLE";
    v30[4] = &unk_1F1B2FF88;
    v30[5] = &unk_1F1B2FFA0;
    v31[4] = @"CREATE TEMP TRIGGER";
    v31[5] = @"CREATE TEMP VIEW";
    v30[6] = &unk_1F1B2FFB8;
    v30[7] = &unk_1F1B2FFD0;
    v31[6] = @"CREATE TRIGGER";
    v31[7] = @"CREATE VIEW";
    v30[8] = &unk_1F1B2FFE8;
    v30[9] = &unk_1F1B30000;
    v31[8] = @"DELETE";
    v31[9] = @"DROP INDEX";
    v30[10] = &unk_1F1B30018;
    v30[11] = &unk_1F1B30030;
    v31[10] = @"DROP TABLE";
    v31[11] = @"DROP TEMP INDEX";
    v30[12] = &unk_1F1B30048;
    v30[13] = &unk_1F1B30060;
    v31[12] = @"DROP TEMP TRIGGER";
    v31[13] = @"DROP TEMP VIEW";
    v30[14] = &unk_1F1B30078;
    v30[15] = &unk_1F1B30090;
    v31[14] = @"DROP TRIGGER";
    v31[15] = @"DROP VIEW";
    v30[16] = &unk_1F1B300A8;
    v30[17] = &unk_1F1B300C0;
    v31[16] = @"INSERT";
    v31[17] = @"PRAGMA";
    v30[18] = &unk_1F1B300D8;
    v30[19] = &unk_1F1B300F0;
    v31[18] = @"READ";
    v31[19] = @"SELECT";
    v30[20] = &unk_1F1B30108;
    v30[21] = &unk_1F1B30120;
    v31[20] = @"TRANSACTION";
    v31[21] = @"UPDATE";
    v30[22] = &unk_1F1B30138;
    v30[23] = &unk_1F1B30150;
    v31[22] = @"ATTACH";
    v31[23] = @"DETACH";
    v30[24] = &unk_1F1B30168;
    v30[25] = &unk_1F1B30180;
    v31[24] = @"ALTER TABLE";
    v31[25] = @"REINDEX";
    v30[26] = &unk_1F1B30198;
    v30[27] = &unk_1F1B301B0;
    v31[26] = @"ANALYZE";
    v31[27] = @"CREATE VTABLE";
    v30[28] = &unk_1F1B301C8;
    v30[29] = &unk_1F1B301E0;
    v31[28] = @"DROP VTABLE";
    v31[29] = @"FUNCTION";
    v30[30] = &unk_1F1B301F8;
    v30[31] = &unk_1F1B30210;
    v31[30] = @"SAVEPOINT";
    v31[31] = @"RECURSIVE";
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:32];
    eventToStringMap = v19->_eventToStringMap;
    v19->_eventToStringMap = v25;
  }

  v27 = *MEMORY[0x1E69E9840];
  return v19;
}

@end