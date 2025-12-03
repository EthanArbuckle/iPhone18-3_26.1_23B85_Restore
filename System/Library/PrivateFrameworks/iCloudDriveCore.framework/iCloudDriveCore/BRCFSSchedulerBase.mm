@interface BRCFSSchedulerBase
- (BOOL)closed;
- (BOOL)haveActiveJobsMatching:(id)matching;
- (BOOL)setState:(int)state forJobsMatching:(id)matching;
- (BRCFSSchedulerBase)initWithSession:(id)session name:(id)name tableName:(id)tableName;
- (id)aggregateDescriptionForJobsMatching:(id)matching context:(id)context;
- (id)descriptionForJobsMatching:(id)matching ordering:(id)ordering additionalColumns:(id)columns additionalValuesHandler:(id)handler context:(id)context;
- (int)jobStateFor:(id)for;
- (int64_t)timeToRetryFor:(id)for;
- (int64_t)updateStamps:(throttle_stamps *)stamps throttle:(id)throttle now:(int64_t)now;
- (unint64_t)postponeJobID:(id)d withThrottle:(id)throttle;
- (void)_close;
- (void)cancel;
- (void)checkIfHasWork;
- (void)close;
- (void)computeStamps:(throttle_stamps *)stamps forJobID:(id)d throttle:(id)throttle shouldBackoff:(BOOL)backoff;
- (void)deleteExpiredJobs;
- (void)deleteJobsMatching:(id)matching;
- (void)describeInBuffer:(id)buffer aggregateOfJobsMatching:(id)matching context:(id)context;
- (void)recoverAndReportMissingJobsWithCompletion:(id)completion recoveryTask:(id)task;
- (void)resetBackoffForJobWithID:(id)d;
- (void)resume;
- (void)schedule;
- (void)setHasActiveWork:(BOOL)work;
- (void)setHasWork:(BOOL)work;
- (void)signalWithDeadline:(int64_t)deadline;
- (void)suspend;
@end

@implementation BRCFSSchedulerBase

- (BOOL)closed
{
  hasWorkGroup = [(BRCFSSchedulerBase *)self hasWorkGroup];
  v3 = hasWorkGroup == 0;

  return v3;
}

- (void)checkIfHasWork
{
  v15 = *MEMORY[0x277D85DE8];
  if (![(BRCFSSchedulerBase *)self hasActiveWork]&& [(BRCFSSchedulerBase *)self hasWork])
  {
    clientDB = [(BRCAccountSession *)self->_session clientDB];
    v4 = [clientDB numberWithSQL:{@"SELECT throttle_id FROM %@ WHERE throttle_state > 0 LIMIT 1", self->_tableName}];

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

- (void)setHasWork:(BOOL)work
{
  workCopy = work;
  if (![(BRCFSSchedulerBase *)self closed]&& self->_hasWork != workCopy)
  {
    hasWorkGroup = self->_hasWorkGroup;
    if (workCopy)
    {
      dispatch_group_enter(hasWorkGroup);
    }

    else
    {
      dispatch_group_leave(hasWorkGroup);
    }

    self->_hasWork = workCopy;
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"BRCFSSchedulerBaseDidUpdateHasWorkNotification" object:0];
  }
}

- (void)setHasActiveWork:(BOOL)work
{
  workCopy = work;
  if (![(BRCFSSchedulerBase *)self closed]&& self->_hasActiveWork != workCopy)
  {
    hasWorkGroup = self->_hasWorkGroup;
    if (workCopy)
    {
      dispatch_group_enter(hasWorkGroup);
      dispatch_group_enter(self->_hasActiveWorkGroup);
    }

    else
    {
      dispatch_group_leave(hasWorkGroup);
      dispatch_group_leave(self->_hasActiveWorkGroup);
    }

    self->_hasActiveWork = workCopy;
  }
}

- (BRCFSSchedulerBase)initWithSession:(id)session name:(id)name tableName:(id)tableName
{
  sessionCopy = session;
  nameCopy = name;
  tableNameCopy = tableName;
  v35.receiver = self;
  v35.super_class = BRCFSSchedulerBase;
  v12 = [(BRCFSSchedulerBase *)&v35 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_session, session);
    objc_storeStrong(&v13->_name, name);
    v14 = [MEMORY[0x277D82C10] nameWithString:tableNameCopy];
    tableName = v13->_tableName;
    v13->_tableName = v14;

    v16 = dispatch_group_create();
    hasWorkGroup = v13->_hasWorkGroup;
    v13->_hasWorkGroup = v16;

    v18 = dispatch_group_create();
    hasActiveWorkGroup = v13->_hasActiveWorkGroup;
    v13->_hasActiveWorkGroup = v18;

    clientTruthWorkloop = [sessionCopy clientTruthWorkloop];
    schedulerWorkloop = v13->_schedulerWorkloop;
    v13->_schedulerWorkloop = clientTruthWorkloop;

    v22 = [BRCDeadlineSource alloc];
    defaultScheduler = [(BRCAccountSession *)v13->_session defaultScheduler];
    v24 = [(BRCDeadlineSource *)v22 initWithScheduler:defaultScheduler name:v13->_name];
    schedulerSource = v13->_schedulerSource;
    v13->_schedulerSource = v24;

    clientTruthWorkloop2 = [sessionCopy clientTruthWorkloop];
    [(BRCDeadlineSource *)v13->_schedulerSource setWorkloop:clientTruthWorkloop2];

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

- (BOOL)haveActiveJobsMatching:(id)matching
{
  session = self->_session;
  matchingCopy = matching;
  clientDB = [(BRCAccountSession *)session clientDB];
  tableName = self->_tableName;
  matchingJobsWhereSQLClause = [matchingCopy matchingJobsWhereSQLClause];

  v9 = [clientDB numberWithSQL:{@"SELECT 1 FROM %@ WHERE %@ AND throttle_state = 1 LIMIT 1", tableName, matchingJobsWhereSQLClause}];
  LOBYTE(matchingJobsWhereSQLClause) = [v9 BOOLValue];

  return matchingJobsWhereSQLClause;
}

- (int)jobStateFor:(id)for
{
  session = self->_session;
  forCopy = for;
  clientDB = [(BRCAccountSession *)session clientDB];
  tableName = self->_tableName;
  matchingJobsWhereSQLClause = [forCopy matchingJobsWhereSQLClause];

  v9 = [clientDB numberWithSQL:{@"SELECT throttle_state FROM %@ WHERE %@ AND throttle_state != 0", tableName, matchingJobsWhereSQLClause}];
  if (v9)
  {
    intValue = [v9 intValue];
  }

  else
  {
    intValue = 0;
  }

  return intValue;
}

- (int64_t)timeToRetryFor:(id)for
{
  session = self->_session;
  forCopy = for;
  clientDB = [(BRCAccountSession *)session clientDB];
  tableName = self->_tableName;
  matchingJobsWhereSQLClause = [forCopy matchingJobsWhereSQLClause];

  v9 = [clientDB numberWithSQL:{@"SELECT next_retry_stamp FROM %@ WHERE %@ AND throttle_state != 0", tableName, matchingJobsWhereSQLClause}];
  if (v9)
  {
    longLongValue = [v9 longLongValue];
    v11 = brc_current_date_nsec();
    v12 = (longLongValue - v11) & ~((longLongValue - v11) >> 63);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)descriptionForJobsMatching:(id)matching ordering:(id)ordering additionalColumns:(id)columns additionalValuesHandler:(id)handler context:(id)context
{
  matchingCopy = matching;
  orderingCopy = ordering;
  columnsCopy = columns;
  handlerCopy = handler;
  contextCopy = context;
  v16 = [contextCopy db];
  v17 = v16;
  if (v16)
  {
    clientDB = v16;
  }

  else
  {
    clientDB = [(BRCAccountSession *)self->_session clientDB];
  }

  v42 = clientDB;

  if (columnsCopy)
  {
    v19 = [MEMORY[0x277D82C18] rawInjection:" length:{", 1}];
    v20 = columnsCopy;
  }

  else
  {
    v19 = [MEMORY[0x277D82C18] rawInjection:"" length:0];
    v20 = [MEMORY[0x277D82C18] rawInjection:"" length:0];
  }

  tableName = self->_tableName;
  matchingJobsWhereSQLClause = [matchingCopy matchingJobsWhereSQLClause];
  v23 = matchingJobsWhereSQLClause;
  if (orderingCopy)
  {
    v24 = [v42 fetch:{@"SELECT zone_rowid, throttle_id, throttle_state, retry_count, last_try_stamp, next_retry_stamp, expire_stamp%@%@ FROM %@ WHERE %@%@", v19, v20, tableName, matchingJobsWhereSQLClause, orderingCopy}];
  }

  else
  {
    v25 = [MEMORY[0x277D82C18] rawInjection:"" length:0];
    v24 = [v42 fetch:{@"SELECT zone_rowid, throttle_id, throttle_state, retry_count, last_try_stamp, next_retry_stamp, expire_stamp%@%@ FROM %@ WHERE %@%@", v19, v20, tableName, v23, v25}];
  }

  if (!columnsCopy)
  {
  }

  v41 = columnsCopy;

  if ([v24 next])
  {
    v39 = orderingCopy;
    v40 = matchingCopy;
    v26 = 0;
    v27 = handlerCopy;
    v43 = 0;
    do
    {
      v28 = [v24 unsignedIntAtIndex:2];
      v29 = [v24 unsignedIntAtIndex:3];
      v30 = [v24 longLongAtIndex:4];
      v31 = [v24 longLongAtIndex:5];
      v32 = [v24 longLongAtIndex:6];
      if (![contextCopy onlyActiveStuff] || v28)
      {
        if (v28 || ([BRCDumpContext nowFromContext:contextCopy], !brc_is_before_deadline()))
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

          v33 = [BRCDumpContext stringFromThrottleState:v28 context:contextCopy];
          [v26 appendFormat:@" %@ attempts:%d", v33, v29];

          v34 = [BRCDumpContext stringFromDueStamp:v30 allowsPast:1 context:contextCopy];
          [v26 appendFormat:@" last:%@", v34];

          if (v28)
          {
            v35 = [BRCDumpContext stringFromDueStamp:v31 allowsPast:0 context:contextCopy];
            [v26 appendFormat:@" next:%@", v35];
          }

          v36 = [BRCDumpContext stringFromDueStamp:v32 allowsPast:0 context:contextCopy];
          [v26 appendFormat:@" cleanup:%@", v36];

          [v26 appendString:@"]"];
          v27 = handlerCopy;
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
      orderingCopy = v39;
      matchingCopy = v40;
      if (v26)
      {
        [v26 appendString:@" "];
        if (contextCopy)
        {
LABEL_31:
          v37 = [contextCopy highlightedString:@"old" type:6];
          [v26 appendFormat:@"[%ld %@]", v43, v37];

          goto LABEL_36;
        }
      }

      else
      {
        v26 = objc_alloc_init(MEMORY[0x277CCAB68]);
        if (contextCopy)
        {
          goto LABEL_31;
        }
      }

      [v26 appendFormat:@"[%ld %@]", v43, @"old"];
    }

    else
    {
      orderingCopy = v39;
      matchingCopy = v40;
    }
  }

  else
  {
    [v24 close];
    v26 = 0;
    v27 = handlerCopy;
  }

LABEL_36:

  return v26;
}

- (void)describeInBuffer:(id)buffer aggregateOfJobsMatching:(id)matching context:(id)context
{
  bufferCopy = buffer;
  matchingCopy = matching;
  contextCopy = context;
  v10 = [contextCopy db];
  v11 = v10;
  if (v10)
  {
    clientDB = v10;
  }

  else
  {
    clientDB = [(BRCAccountSession *)self->_session clientDB];
  }

  v13 = clientDB;

  tableName = self->_tableName;
  matchingJobsWhereSQLClause = [matchingCopy matchingJobsWhereSQLClause];
  v16 = [v13 fetch:{@"SELECT throttle_state, COUNT(*) FROM %@ WHERE %@ GROUP BY throttle_state", tableName, matchingJobsWhereSQLClause}];

  if ([v16 next])
  {
    do
    {
      v17 = [v16 unsignedIntAtIndex:0];
      v18 = [v16 unsignedLongAtIndex:1];
      v19 = [BRCDumpContext stringFromThrottleState:v17 context:contextCopy];
      [bufferCopy appendFormat:@" %@:%lld", v19, v18];
    }

    while (([v16 next] & 1) != 0);
  }
}

- (id)aggregateDescriptionForJobsMatching:(id)matching context:(id)context
{
  v6 = MEMORY[0x277CCAB68];
  contextCopy = context;
  matchingCopy = matching;
  v9 = objc_alloc_init(v6);
  [(BRCFSSchedulerBase *)self describeInBuffer:v9 aggregateOfJobsMatching:matchingCopy context:contextCopy];

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

- (unint64_t)postponeJobID:(id)d withThrottle:(id)throttle
{
  v28 = *MEMORY[0x277D85DE8];
  dCopy = d;
  memset(v21, 0, sizeof(v21));
  [(BRCFSSchedulerBase *)self computeStamps:v21 forJobID:dCopy throttle:throttle shouldBackoff:1];
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
    v25 = dCopy;
    v26 = 2112;
    v27 = v7;
    _os_log_debug_impl(&dword_223E7A000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] %@[%@]: post-poning job%@", buf, 0x20u);
  }

  clientDB = [(BRCAccountSession *)self->_session clientDB];
  tableName = self->_tableName;
  v20 = *(v21 + 8);
  v11 = *(&v21[1] + 1);
  v12 = LODWORD(v21[0]);
  matchingJobsWhereSQLClause = [dCopy matchingJobsWhereSQLClause];
  [clientDB execute:{@"UPDATE %@ SET   throttle_state = 1, retry_count = %u, last_try_stamp = %llu, next_retry_stamp = %llu, expire_stamp = %llu WHERE %@", tableName, v12, v20, v11, matchingJobsWhereSQLClause}];

  [(BRCFSSchedulerBase *)self signalWithDeadline:*&v21[1]];
  clientDB2 = [(BRCAccountSession *)self->_session clientDB];
  changes = [clientDB2 changes];

  if (changes >= 2)
  {
    [BRCFSSchedulerBase postponeJobID:withThrottle:];
  }

  v16 = LODWORD(v21[0]);

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

- (int64_t)updateStamps:(throttle_stamps *)stamps throttle:(id)throttle now:(int64_t)now
{
  throttleCopy = throttle;
  if (!throttleCopy)
  {
    [BRCFSSchedulerBase updateStamps:throttle:now:];
  }

  v8 = [throttleCopy nsecsToNextRetry:stamps->var2 retryCount:stamps now:now];
  v9 = v8;
  if (!v8)
  {
    stamps->var2 = now;
    var0 = stamps->var0;
    v8 = [throttleCopy nsecsToNextRetry:now retryCount:&var0 now:now];
  }

  v10 = v8 + now;
  if (now < 0)
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  stamps->var3 = v10;
  v11 = [throttleCopy nsecsBeforeForgettingCounter] + now;
  stamps->var4 = v11;
  if (v11 < [throttleCopy nsecsBeforeForgettingCounter])
  {
    stamps->var4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v9;
}

- (void)computeStamps:(throttle_stamps *)stamps forJobID:(id)d throttle:(id)throttle shouldBackoff:(BOOL)backoff
{
  backoffCopy = backoff;
  v33 = *MEMORY[0x277D85DE8];
  dCopy = d;
  throttleCopy = throttle;
  v12 = brc_current_date_nsec();
  if (!dCopy)
  {
    [BRCFSSchedulerBase computeStamps:forJobID:throttle:shouldBackoff:];
  }

  clientDB = [(BRCAccountSession *)self->_session clientDB];
  tableName = self->_tableName;
  matchingJobsWhereSQLClause = [dCopy matchingJobsWhereSQLClause];
  v16 = [clientDB fetch:{@"SELECT retry_count, last_try_stamp, next_retry_stamp, expire_stamp, throttle_state FROM %@ WHERE %@", tableName, matchingJobsWhereSQLClause}];

  if (![v16 next])
  {
    *&stamps->var0 = 0u;
    *&stamps->var3 = 0u;
    stamps->var1 = -1;
    stamps->var4 = [throttleCopy nsecsBeforeForgettingCounter] + v12;
    if (!backoffCopy)
    {
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  stamps->var0 = [v16 unsignedIntAtIndex:0];
  stamps->var2 = [v16 longLongAtIndex:1];
  stamps->var3 = [v16 longLongAtIndex:2];
  stamps->var4 = [v16 longLongAtIndex:3];
  stamps->var1 = [v16 unsignedIntAtIndex:4];
  if ([v16 next])
  {
    [BRCFSSchedulerBase computeStamps:forJobID:throttle:shouldBackoff:];
  }

  [v16 close];
  if (backoffCopy)
  {
LABEL_9:
    if ([(BRCFSSchedulerBase *)self updateStamps:stamps throttle:throttleCopy now:v12])
    {
      v17 = brc_bread_crumbs();
      v18 = brc_default_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        name = self->_name;
        brc_interval_from_nsec();
        var0 = stamps->var0;
        *buf = 138413314;
        v24 = name;
        v25 = 2112;
        v26 = dCopy;
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

- (BOOL)setState:(int)state forJobsMatching:(id)matching
{
  v32 = *MEMORY[0x277D85DE8];
  matchingCopy = matching;
  clientDB = [(BRCAccountSession *)self->_session clientDB];
  tableName = self->_tableName;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __47__BRCFSSchedulerBase_setState_forJobsMatching___block_invoke;
  v20[3] = &unk_2785013C8;
  stateCopy = state;
  v20[4] = self;
  v9 = MEMORY[0x22AA4A310](v20);
  matchingJobsWhereSQLClause = [matchingCopy matchingJobsWhereSQLClause];
  [clientDB execute:{@"UPDATE %@   SET throttle_state = call_block(%@, next_retry_stamp) WHERE %@", tableName, v9, matchingJobsWhereSQLClause}];

  clientDB2 = [(BRCAccountSession *)self->_session clientDB];
  changes = [clientDB2 changes];

  if (changes)
  {
    v13 = brc_bread_crumbs();
    v14 = brc_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      name = self->_name;
      jobsDescription = [matchingCopy jobsDescription];
      v19 = BRCPrettyPrintEnum();
      *buf = 138413314;
      v23 = name;
      v24 = 2112;
      v25 = jobsDescription;
      v26 = 2048;
      v27 = changes;
      v28 = 2080;
      v29 = v19;
      v30 = 2112;
      v31 = v13;
      _os_log_debug_impl(&dword_223E7A000, v14, OS_LOG_TYPE_DEBUG, "[DEBUG] %@[%@]: Updated %lld jobs to state %s%@", buf, 0x34u);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return changes != 0;
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

- (void)deleteJobsMatching:(id)matching
{
  v23 = *MEMORY[0x277D85DE8];
  matchingCopy = matching;
  clientDB = [(BRCAccountSession *)self->_session clientDB];
  tableName = self->_tableName;
  matchingJobsWhereSQLClause = [matchingCopy matchingJobsWhereSQLClause];
  [clientDB execute:{@"DELETE FROM %@ WHERE %@", tableName, matchingJobsWhereSQLClause}];

  clientDB2 = [(BRCAccountSession *)self->_session clientDB];
  changes = [clientDB2 changes];

  if (changes)
  {
    v10 = brc_bread_crumbs();
    v11 = brc_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      name = self->_name;
      jobsDescription = [matchingCopy jobsDescription];
      *buf = 138413058;
      v16 = name;
      v17 = 2112;
      v18 = jobsDescription;
      v19 = 2048;
      v20 = changes;
      v21 = 2112;
      v22 = v10;
      _os_log_debug_impl(&dword_223E7A000, v11, OS_LOG_TYPE_DEBUG, "[DEBUG] %@[%@]: Deleted %lld jobs%@", buf, 0x2Au);
    }

    [(BRCFSSchedulerBase *)self checkIfHasWork];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)resetBackoffForJobWithID:(id)d
{
  v20 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    name = self->_name;
    *buf = 138412802;
    v15 = name;
    v16 = 2112;
    v17 = dCopy;
    v18 = 2112;
    v19 = v5;
    _os_log_debug_impl(&dword_223E7A000, v6, OS_LOG_TYPE_DEBUG, "[DEBUG] %@[%@]: resetting backoff for job%@", buf, 0x20u);
  }

  clientDB = [(BRCAccountSession *)self->_session clientDB];
  tableName = self->_tableName;
  matchingJobsWhereSQLClause = [dCopy matchingJobsWhereSQLClause];
  [clientDB execute:{@"UPDATE %@   SET retry_count = 0, next_retry_stamp = 0 WHERE %@", tableName, matchingJobsWhereSQLClause}];

  clientDB2 = [(BRCAccountSession *)self->_session clientDB];
  changes = [clientDB2 changes];

  if (changes >= 2)
  {
    [BRCFSSchedulerBase resetBackoffForJobWithID:];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)deleteExpiredJobs
{
  v16 = *MEMORY[0x277D85DE8];
  clientDB = [(BRCAccountSession *)self->_session clientDB];
  [clientDB execute:{@"DELETE FROM %@ WHERE throttle_state = 0 AND expire_stamp <= %lld", self->_tableName, brc_current_date_nsec()}];

  clientDB2 = [(BRCAccountSession *)self->_session clientDB];
  changes = [clientDB2 changes];

  if (changes)
  {
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      name = self->_name;
      *buf = 138412802;
      v11 = name;
      v12 = 2048;
      v13 = changes;
      v14 = 2112;
      v15 = v6;
      _os_log_debug_impl(&dword_223E7A000, v7, OS_LOG_TYPE_DEBUG, "[DEBUG] %@: Cleaned up %lld expired jobs%@", buf, 0x20u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)recoverAndReportMissingJobsWithCompletion:(id)completion recoveryTask:(id)task
{
  completionCopy = completion;
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
  {
    [BRCFSSchedulerBase recoverAndReportMissingJobsWithCompletion:v5 recoveryTask:v6];
  }

  completionCopy[2](completionCopy, 0);
}

- (void)signalWithDeadline:(int64_t)deadline
{
  [(BRCFSSchedulerBase *)self setHasActiveWork:1];
  [(BRCFSSchedulerBase *)self setHasWork:1];
  schedulerSource = self->_schedulerSource;

  [(BRCDeadlineSource *)schedulerSource signalWithDeadline:deadline];
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
  OUTLINED_FUNCTION_6_2(self, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)suspend
{
  OUTLINED_FUNCTION_6_2(self, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)cancel
{
  OUTLINED_FUNCTION_6_2(self, *MEMORY[0x277D85DE8]);
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