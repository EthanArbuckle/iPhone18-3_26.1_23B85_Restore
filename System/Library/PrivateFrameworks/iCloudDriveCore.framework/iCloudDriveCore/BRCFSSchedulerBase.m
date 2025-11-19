@interface BRCFSSchedulerBase
- (BOOL)closed;
- (BOOL)haveActiveJobsMatching:(id)a3;
- (BOOL)setState:(int)a3 forJobsMatching:(id)a4;
- (BRCFSSchedulerBase)initWithSession:(id)a3 name:(id)a4 tableName:(id)a5;
- (id)aggregateDescriptionForJobsMatching:(id)a3 context:(id)a4;
- (id)descriptionForJobsMatching:(id)a3 ordering:(id)a4 additionalColumns:(id)a5 additionalValuesHandler:(id)a6 context:(id)a7;
- (int)jobStateFor:(id)a3;
- (int64_t)timeToRetryFor:(id)a3;
- (int64_t)updateStamps:(throttle_stamps *)a3 throttle:(id)a4 now:(int64_t)a5;
- (unint64_t)postponeJobID:(id)a3 withThrottle:(id)a4;
- (void)_close;
- (void)cancel;
- (void)checkIfHasWork;
- (void)close;
- (void)computeStamps:(throttle_stamps *)a3 forJobID:(id)a4 throttle:(id)a5 shouldBackoff:(BOOL)a6;
- (void)deleteExpiredJobs;
- (void)deleteJobsMatching:(id)a3;
- (void)describeInBuffer:(id)a3 aggregateOfJobsMatching:(id)a4 context:(id)a5;
- (void)recoverAndReportMissingJobsWithCompletion:(id)a3 recoveryTask:(id)a4;
- (void)resetBackoffForJobWithID:(id)a3;
- (void)resume;
- (void)schedule;
- (void)setHasActiveWork:(BOOL)a3;
- (void)setHasWork:(BOOL)a3;
- (void)signalWithDeadline:(int64_t)a3;
- (void)suspend;
@end

@implementation BRCFSSchedulerBase

- (BOOL)closed
{
  v2 = [(BRCFSSchedulerBase *)self hasWorkGroup];
  v3 = v2 == 0;

  return v3;
}

- (void)checkIfHasWork
{
  v15 = *MEMORY[0x277D85DE8];
  if (![(BRCFSSchedulerBase *)self hasActiveWork]&& [(BRCFSSchedulerBase *)self hasWork])
  {
    v3 = [(BRCAccountSession *)self->_session clientDB];
    v4 = [v3 numberWithSQL:{@"SELECT throttle_id FROM %@ WHERE throttle_state > 0 LIMIT 1", self->_tableName}];

    if (v4)
    {
      v5 = brc_bread_crumbs();
      v6 = brc_default_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        name = self->_name;
        *buf = 138412802;
        v10 = name;
        v11 = 2112;
        v12 = v4;
        v13 = 2112;
        v14 = v5;
        _os_log_debug_impl(&dword_223E7A000, v6, OS_LOG_TYPE_DEBUG, "[DEBUG] %@: Throttle id %@ has work%@", buf, 0x20u);
      }
    }

    [(BRCFSSchedulerBase *)self setHasWork:v4 != 0];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)setHasWork:(BOOL)a3
{
  v3 = a3;
  if (![(BRCFSSchedulerBase *)self closed]&& self->_hasWork != v3)
  {
    hasWorkGroup = self->_hasWorkGroup;
    if (v3)
    {
      dispatch_group_enter(hasWorkGroup);
    }

    else
    {
      dispatch_group_leave(hasWorkGroup);
    }

    self->_hasWork = v3;
    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    [v6 postNotificationName:@"BRCFSSchedulerBaseDidUpdateHasWorkNotification" object:0];
  }
}

- (void)setHasActiveWork:(BOOL)a3
{
  v3 = a3;
  if (![(BRCFSSchedulerBase *)self closed]&& self->_hasActiveWork != v3)
  {
    hasWorkGroup = self->_hasWorkGroup;
    if (v3)
    {
      dispatch_group_enter(hasWorkGroup);
      dispatch_group_enter(self->_hasActiveWorkGroup);
    }

    else
    {
      dispatch_group_leave(hasWorkGroup);
      dispatch_group_leave(self->_hasActiveWorkGroup);
    }

    self->_hasActiveWork = v3;
  }
}

- (BRCFSSchedulerBase)initWithSession:(id)a3 name:(id)a4 tableName:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v35.receiver = self;
  v35.super_class = BRCFSSchedulerBase;
  v12 = [(BRCFSSchedulerBase *)&v35 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_session, a3);
    objc_storeStrong(&v13->_name, a4);
    v14 = [MEMORY[0x277D82C10] nameWithString:v11];
    tableName = v13->_tableName;
    v13->_tableName = v14;

    v16 = dispatch_group_create();
    hasWorkGroup = v13->_hasWorkGroup;
    v13->_hasWorkGroup = v16;

    v18 = dispatch_group_create();
    hasActiveWorkGroup = v13->_hasActiveWorkGroup;
    v13->_hasActiveWorkGroup = v18;

    v20 = [v9 clientTruthWorkloop];
    schedulerWorkloop = v13->_schedulerWorkloop;
    v13->_schedulerWorkloop = v20;

    v22 = [BRCDeadlineSource alloc];
    v23 = [(BRCAccountSession *)v13->_session defaultScheduler];
    v24 = [(BRCDeadlineSource *)v22 initWithScheduler:v23 name:v13->_name];
    schedulerSource = v13->_schedulerSource;
    v13->_schedulerSource = v24;

    v26 = [v9 clientTruthWorkloop];
    [(BRCDeadlineSource *)v13->_schedulerSource setWorkloop:v26];

    objc_initWeak(&location, v13);
    v27 = v13->_schedulerSource;
    v29 = MEMORY[0x277D85DD0];
    v30 = 3221225472;
    v31 = __53__BRCFSSchedulerBase_initWithSession_name_tableName___block_invoke;
    v32 = &unk_2784FF400;
    objc_copyWeak(&v33, &location);
    [(BRCDeadlineSource *)v27 setEventHandler:&v29];
    [(BRCFSSchedulerBase *)v13 signal:v29];
    objc_destroyWeak(&v33);
    objc_destroyWeak(&location);
  }

  return v13;
}

void __53__BRCFSSchedulerBase_initWithSession_name_tableName___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  memset(v10, 0, sizeof(v10));
  __brc_create_section(0, "[BRCFSSchedulerBase initWithSession:name:tableName:]_block_invoke", 181, 0, v10);
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    if (WeakRetained)
    {
      v9 = WeakRetained[4];
    }

    else
    {
      v9 = 0;
    }

    *buf = 134218498;
    v12 = v10[0];
    v13 = 2112;
    v14 = v9;
    v15 = 2112;
    v16 = v4;
    _os_log_debug_impl(&dword_223E7A000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx %@: scheduling%@", buf, 0x20u);
  }

  if ([WeakRetained isCancelled])
  {
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __53__BRCFSSchedulerBase_initWithSession_name_tableName___block_invoke_cold_1(v6, v7);
    }
  }

  else
  {
    [WeakRetained schedule];
  }

  __brc_leave_section(v10);

  objc_autoreleasePoolPop(v2);
  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)haveActiveJobsMatching:(id)a3
{
  session = self->_session;
  v5 = a3;
  v6 = [(BRCAccountSession *)session clientDB];
  tableName = self->_tableName;
  v8 = [v5 matchingJobsWhereSQLClause];

  v9 = [v6 numberWithSQL:{@"SELECT 1 FROM %@ WHERE %@ AND throttle_state = 1 LIMIT 1", tableName, v8}];
  LOBYTE(v8) = [v9 BOOLValue];

  return v8;
}

- (int)jobStateFor:(id)a3
{
  session = self->_session;
  v5 = a3;
  v6 = [(BRCAccountSession *)session clientDB];
  tableName = self->_tableName;
  v8 = [v5 matchingJobsWhereSQLClause];

  v9 = [v6 numberWithSQL:{@"SELECT throttle_state FROM %@ WHERE %@ AND throttle_state != 0", tableName, v8}];
  if (v9)
  {
    v10 = [v9 intValue];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (int64_t)timeToRetryFor:(id)a3
{
  session = self->_session;
  v5 = a3;
  v6 = [(BRCAccountSession *)session clientDB];
  tableName = self->_tableName;
  v8 = [v5 matchingJobsWhereSQLClause];

  v9 = [v6 numberWithSQL:{@"SELECT next_retry_stamp FROM %@ WHERE %@ AND throttle_state != 0", tableName, v8}];
  if (v9)
  {
    v10 = [v9 longLongValue];
    v11 = brc_current_date_nsec();
    v12 = (v10 - v11) & ~((v10 - v11) >> 63);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)descriptionForJobsMatching:(id)a3 ordering:(id)a4 additionalColumns:(id)a5 additionalValuesHandler:(id)a6 context:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v44 = a6;
  v15 = a7;
  v16 = [v15 db];
  v17 = v16;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = [(BRCAccountSession *)self->_session clientDB];
  }

  v42 = v18;

  if (v14)
  {
    v19 = [MEMORY[0x277D82C18] rawInjection:" length:{", 1}];
    v20 = v14;
  }

  else
  {
    v19 = [MEMORY[0x277D82C18] rawInjection:"" length:0];
    v20 = [MEMORY[0x277D82C18] rawInjection:"" length:0];
  }

  tableName = self->_tableName;
  v22 = [v12 matchingJobsWhereSQLClause];
  v23 = v22;
  if (v13)
  {
    v24 = [v42 fetch:{@"SELECT zone_rowid, throttle_id, throttle_state, retry_count, last_try_stamp, next_retry_stamp, expire_stamp%@%@ FROM %@ WHERE %@%@", v19, v20, tableName, v22, v13}];
  }

  else
  {
    v25 = [MEMORY[0x277D82C18] rawInjection:"" length:0];
    v24 = [v42 fetch:{@"SELECT zone_rowid, throttle_id, throttle_state, retry_count, last_try_stamp, next_retry_stamp, expire_stamp%@%@ FROM %@ WHERE %@%@", v19, v20, tableName, v23, v25}];
  }

  if (!v14)
  {
  }

  v41 = v14;

  if ([v24 next])
  {
    v39 = v13;
    v40 = v12;
    v26 = 0;
    v27 = v44;
    v43 = 0;
    do
    {
      v28 = [v24 unsignedIntAtIndex:2];
      v29 = [v24 unsignedIntAtIndex:3];
      v30 = [v24 longLongAtIndex:4];
      v31 = [v24 longLongAtIndex:5];
      v32 = [v24 longLongAtIndex:6];
      if (![v15 onlyActiveStuff] || v28)
      {
        if (v28 || ([BRCDumpContext nowFromContext:v15], !brc_is_before_deadline()))
        {
          if (v26)
          {
            [v26 appendString:@" "];
          }

          else
          {
            v26 = objc_alloc_init(MEMORY[0x277CCAB68]);
          }

          [v26 appendString:@"["];
          if (v27)
          {
            (v27)[2](v27, v26, v24, 7, v28);
          }

          v33 = [BRCDumpContext stringFromThrottleState:v28 context:v15];
          [v26 appendFormat:@" %@ attempts:%d", v33, v29];

          v34 = [BRCDumpContext stringFromDueStamp:v30 allowsPast:1 context:v15];
          [v26 appendFormat:@" last:%@", v34];

          if (v28)
          {
            v35 = [BRCDumpContext stringFromDueStamp:v31 allowsPast:0 context:v15];
            [v26 appendFormat:@" next:%@", v35];
          }

          v36 = [BRCDumpContext stringFromDueStamp:v32 allowsPast:0 context:v15];
          [v26 appendFormat:@" cleanup:%@", v36];

          [v26 appendString:@"]"];
          v27 = v44;
        }

        else
        {
          ++v43;
        }
      }
    }

    while (([v24 next] & 1) != 0);
    [v24 close];
    if (v43)
    {
      v13 = v39;
      v12 = v40;
      if (v26)
      {
        [v26 appendString:@" "];
        if (v15)
        {
LABEL_31:
          v37 = [v15 highlightedString:@"old" type:6];
          [v26 appendFormat:@"[%ld %@]", v43, v37];

          goto LABEL_36;
        }
      }

      else
      {
        v26 = objc_alloc_init(MEMORY[0x277CCAB68]);
        if (v15)
        {
          goto LABEL_31;
        }
      }

      [v26 appendFormat:@"[%ld %@]", v43, @"old"];
    }

    else
    {
      v13 = v39;
      v12 = v40;
    }
  }

  else
  {
    [v24 close];
    v26 = 0;
    v27 = v44;
  }

LABEL_36:

  return v26;
}

- (void)describeInBuffer:(id)a3 aggregateOfJobsMatching:(id)a4 context:(id)a5
{
  v20 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v9 db];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = [(BRCAccountSession *)self->_session clientDB];
  }

  v13 = v12;

  tableName = self->_tableName;
  v15 = [v8 matchingJobsWhereSQLClause];
  v16 = [v13 fetch:{@"SELECT throttle_state, COUNT(*) FROM %@ WHERE %@ GROUP BY throttle_state", tableName, v15}];

  if ([v16 next])
  {
    do
    {
      v17 = [v16 unsignedIntAtIndex:0];
      v18 = [v16 unsignedLongAtIndex:1];
      v19 = [BRCDumpContext stringFromThrottleState:v17 context:v9];
      [v20 appendFormat:@" %@:%lld", v19, v18];
    }

    while (([v16 next] & 1) != 0);
  }
}

- (id)aggregateDescriptionForJobsMatching:(id)a3 context:(id)a4
{
  v6 = MEMORY[0x277CCAB68];
  v7 = a4;
  v8 = a3;
  v9 = objc_alloc_init(v6);
  [(BRCFSSchedulerBase *)self describeInBuffer:v9 aggregateOfJobsMatching:v8 context:v7];

  if ([v9 length])
  {
    v10 = v9;
  }

  else
  {
    v10 = @" idle";
  }

  return v10;
}

- (unint64_t)postponeJobID:(id)a3 withThrottle:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  memset(v21, 0, sizeof(v21));
  [(BRCFSSchedulerBase *)self computeStamps:v21 forJobID:v6 throttle:a4 shouldBackoff:1];
  if (DWORD1(v21[0]) == -1)
  {
    [BRCFSSchedulerBase postponeJobID:withThrottle:];
  }

  v7 = brc_bread_crumbs();
  v8 = brc_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    name = self->_name;
    *buf = 138412802;
    v23 = name;
    v24 = 2112;
    v25 = v6;
    v26 = 2112;
    v27 = v7;
    _os_log_debug_impl(&dword_223E7A000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] %@[%@]: post-poning job%@", buf, 0x20u);
  }

  v9 = [(BRCAccountSession *)self->_session clientDB];
  tableName = self->_tableName;
  v20 = *(v21 + 8);
  v11 = *(&v21[1] + 1);
  v12 = LODWORD(v21[0]);
  v13 = [v6 matchingJobsWhereSQLClause];
  [v9 execute:{@"UPDATE %@ SET   throttle_state = 1, retry_count = %u, last_try_stamp = %llu, next_retry_stamp = %llu, expire_stamp = %llu WHERE %@", tableName, v12, v20, v11, v13}];

  [(BRCFSSchedulerBase *)self signalWithDeadline:*&v21[1]];
  v14 = [(BRCAccountSession *)self->_session clientDB];
  v15 = [v14 changes];

  if (v15 >= 2)
  {
    [BRCFSSchedulerBase postponeJobID:withThrottle:];
  }

  v16 = LODWORD(v21[0]);

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

- (int64_t)updateStamps:(throttle_stamps *)a3 throttle:(id)a4 now:(int64_t)a5
{
  v7 = a4;
  if (!v7)
  {
    [BRCFSSchedulerBase updateStamps:throttle:now:];
  }

  v8 = [v7 nsecsToNextRetry:a3->var2 retryCount:a3 now:a5];
  v9 = v8;
  if (!v8)
  {
    a3->var2 = a5;
    var0 = a3->var0;
    v8 = [v7 nsecsToNextRetry:a5 retryCount:&var0 now:a5];
  }

  v10 = v8 + a5;
  if (a5 < 0)
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  a3->var3 = v10;
  v11 = [v7 nsecsBeforeForgettingCounter] + a5;
  a3->var4 = v11;
  if (v11 < [v7 nsecsBeforeForgettingCounter])
  {
    a3->var4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v9;
}

- (void)computeStamps:(throttle_stamps *)a3 forJobID:(id)a4 throttle:(id)a5 shouldBackoff:(BOOL)a6
{
  v6 = a6;
  v33 = *MEMORY[0x277D85DE8];
  v10 = a4;
  v11 = a5;
  v12 = brc_current_date_nsec();
  if (!v10)
  {
    [BRCFSSchedulerBase computeStamps:forJobID:throttle:shouldBackoff:];
  }

  v13 = [(BRCAccountSession *)self->_session clientDB];
  tableName = self->_tableName;
  v15 = [v10 matchingJobsWhereSQLClause];
  v16 = [v13 fetch:{@"SELECT retry_count, last_try_stamp, next_retry_stamp, expire_stamp, throttle_state FROM %@ WHERE %@", tableName, v15}];

  if (![v16 next])
  {
    *&a3->var0 = 0u;
    *&a3->var3 = 0u;
    a3->var1 = -1;
    a3->var4 = [v11 nsecsBeforeForgettingCounter] + v12;
    if (!v6)
    {
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  a3->var0 = [v16 unsignedIntAtIndex:0];
  a3->var2 = [v16 longLongAtIndex:1];
  a3->var3 = [v16 longLongAtIndex:2];
  a3->var4 = [v16 longLongAtIndex:3];
  a3->var1 = [v16 unsignedIntAtIndex:4];
  if ([v16 next])
  {
    [BRCFSSchedulerBase computeStamps:forJobID:throttle:shouldBackoff:];
  }

  [v16 close];
  if (v6)
  {
LABEL_9:
    if ([(BRCFSSchedulerBase *)self updateStamps:a3 throttle:v11 now:v12])
    {
      v17 = brc_bread_crumbs();
      v18 = brc_default_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        name = self->_name;
        brc_interval_from_nsec();
        var0 = a3->var0;
        *buf = 138413314;
        v24 = name;
        v25 = 2112;
        v26 = v10;
        v27 = 2048;
        v28 = v22;
        v29 = 1024;
        v30 = var0;
        v31 = 2112;
        v32 = v17;
        _os_log_debug_impl(&dword_223E7A000, v18, OS_LOG_TYPE_DEBUG, "[DEBUG] %@[%@]: backing off %.3fs (count: %d)%@", buf, 0x30u);
      }
    }
  }

LABEL_13:

  v19 = *MEMORY[0x277D85DE8];
}

- (BOOL)setState:(int)a3 forJobsMatching:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(BRCAccountSession *)self->_session clientDB];
  tableName = self->_tableName;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __47__BRCFSSchedulerBase_setState_forJobsMatching___block_invoke;
  v20[3] = &unk_2785013C8;
  v21 = a3;
  v20[4] = self;
  v9 = MEMORY[0x22AA4A310](v20);
  v10 = [v6 matchingJobsWhereSQLClause];
  [v7 execute:{@"UPDATE %@   SET throttle_state = call_block(%@, next_retry_stamp) WHERE %@", tableName, v9, v10}];

  v11 = [(BRCAccountSession *)self->_session clientDB];
  v12 = [v11 changes];

  if (v12)
  {
    v13 = brc_bread_crumbs();
    v14 = brc_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      name = self->_name;
      v18 = [v6 jobsDescription];
      v19 = BRCPrettyPrintEnum();
      *buf = 138413314;
      v23 = name;
      v24 = 2112;
      v25 = v18;
      v26 = 2048;
      v27 = v12;
      v28 = 2080;
      v29 = v19;
      v30 = 2112;
      v31 = v13;
      _os_log_debug_impl(&dword_223E7A000, v14, OS_LOG_TYPE_DEBUG, "[DEBUG] %@[%@]: Updated %lld jobs to state %s%@", buf, 0x34u);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return v12 != 0;
}

void __47__BRCFSSchedulerBase_setState_forJobsMatching___block_invoke(uint64_t a1, sqlite3_context *a2, uint64_t a3, sqlite3_value **a4)
{
  v5 = *(a1 + 40);
  if (v5 == 1)
  {
    [*(a1 + 32) signalWithDeadline:sqlite3_value_int64(*a4)];
    v5 = *(a1 + 40);
  }

  sqlite3_result_int(a2, v5);
}

- (void)deleteJobsMatching:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(BRCAccountSession *)self->_session clientDB];
  tableName = self->_tableName;
  v7 = [v4 matchingJobsWhereSQLClause];
  [v5 execute:{@"DELETE FROM %@ WHERE %@", tableName, v7}];

  v8 = [(BRCAccountSession *)self->_session clientDB];
  v9 = [v8 changes];

  if (v9)
  {
    v10 = brc_bread_crumbs();
    v11 = brc_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      name = self->_name;
      v14 = [v4 jobsDescription];
      *buf = 138413058;
      v16 = name;
      v17 = 2112;
      v18 = v14;
      v19 = 2048;
      v20 = v9;
      v21 = 2112;
      v22 = v10;
      _os_log_debug_impl(&dword_223E7A000, v11, OS_LOG_TYPE_DEBUG, "[DEBUG] %@[%@]: Deleted %lld jobs%@", buf, 0x2Au);
    }

    [(BRCFSSchedulerBase *)self checkIfHasWork];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)resetBackoffForJobWithID:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    name = self->_name;
    *buf = 138412802;
    v15 = name;
    v16 = 2112;
    v17 = v4;
    v18 = 2112;
    v19 = v5;
    _os_log_debug_impl(&dword_223E7A000, v6, OS_LOG_TYPE_DEBUG, "[DEBUG] %@[%@]: resetting backoff for job%@", buf, 0x20u);
  }

  v7 = [(BRCAccountSession *)self->_session clientDB];
  tableName = self->_tableName;
  v9 = [v4 matchingJobsWhereSQLClause];
  [v7 execute:{@"UPDATE %@   SET retry_count = 0, next_retry_stamp = 0 WHERE %@", tableName, v9}];

  v10 = [(BRCAccountSession *)self->_session clientDB];
  v11 = [v10 changes];

  if (v11 >= 2)
  {
    [BRCFSSchedulerBase resetBackoffForJobWithID:];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)deleteExpiredJobs
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [(BRCAccountSession *)self->_session clientDB];
  [v3 execute:{@"DELETE FROM %@ WHERE throttle_state = 0 AND expire_stamp <= %lld", self->_tableName, brc_current_date_nsec()}];

  v4 = [(BRCAccountSession *)self->_session clientDB];
  v5 = [v4 changes];

  if (v5)
  {
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      name = self->_name;
      *buf = 138412802;
      v11 = name;
      v12 = 2048;
      v13 = v5;
      v14 = 2112;
      v15 = v6;
      _os_log_debug_impl(&dword_223E7A000, v7, OS_LOG_TYPE_DEBUG, "[DEBUG] %@: Cleaned up %lld expired jobs%@", buf, 0x20u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)recoverAndReportMissingJobsWithCompletion:(id)a3 recoveryTask:(id)a4
{
  v4 = a3;
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
  {
    [BRCFSSchedulerBase recoverAndReportMissingJobsWithCompletion:v5 recoveryTask:v6];
  }

  v4[2](v4, 0);
}

- (void)signalWithDeadline:(int64_t)a3
{
  [(BRCFSSchedulerBase *)self setHasActiveWork:1];
  [(BRCFSSchedulerBase *)self setHasWork:1];
  schedulerSource = self->_schedulerSource;

  [(BRCDeadlineSource *)schedulerSource signalWithDeadline:a3];
}

- (void)schedule
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_fault_impl(&dword_223E7A000, v3, OS_LOG_TYPE_FAULT, "[CRIT] API MISUSE: should be implemented by subclass%@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)resume
{
  OUTLINED_FUNCTION_6_2(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)suspend
{
  OUTLINED_FUNCTION_6_2(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)cancel
{
  OUTLINED_FUNCTION_6_2(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_close
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: self.isCancelled%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)close
{
  schedulerWorkloop = self->_schedulerWorkloop;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __27__BRCFSSchedulerBase_close__block_invoke;
  block[3] = &unk_2784FF450;
  block[4] = self;
  dispatch_async_and_wait(schedulerWorkloop, block);
}

void __53__BRCFSSchedulerBase_initWithSession_name_tableName___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_223E7A000, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] cancelled%@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)postponeJobID:withThrottle:.cold.1()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: stamps.state != BRCJobStateInvalid%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)postponeJobID:withThrottle:.cold.2()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: _session.clientDB.changes <= 1%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)insertOrUpdateJobID:throttle:withState:insertedSQLColumn:insertedSQLValues:updatedSQLValues:error:.cold.1()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: jobID%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)insertOrUpdateJobID:throttle:withState:insertedSQLColumn:insertedSQLValues:updatedSQLValues:error:.cold.2()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: _session.clientDB.changes <= 1%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)rescheduleSuspendedJobsMatching:inState:.cold.1()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: state >= BRCJobStateSuspendedBase%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)updateStamps:throttle:now:.cold.1()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: throttle%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)computeStamps:forJobID:throttle:shouldBackoff:.cold.1()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: jobID%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)computeStamps:forJobID:throttle:shouldBackoff:.cold.2()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: !rs.next%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)setState:forJobID:.cold.1()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: _session.clientDB.changes <= 1%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)resetBackoffForJobWithID:.cold.1()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: _session.clientDB.changes <= 1%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)recoverAndReportMissingJobsWithCompletion:(uint64_t)a1 recoveryTask:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_fault_impl(&dword_223E7A000, a2, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: must be implemented in subclass%@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)scheduleWithBatchSize:(uint64_t)a1 whereSQLClause:columns:actionHandler:.cold.1(uint64_t a1)
{
  OUTLINED_FUNCTION_6_2(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)scheduleWithBatchSize:(uint64_t)a1 whereSQLClause:columns:actionHandler:.cold.2(uint64_t a1)
{
  *(OUTLINED_FUNCTION_6_2(a1, *MEMORY[0x277D85DE8]) + 41);
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x20u);
  v6 = *MEMORY[0x277D85DE8];
}

@end