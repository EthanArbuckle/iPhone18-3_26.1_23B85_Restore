@interface _BRCOperation
- (BOOL)_finishIfCancelled;
- (BOOL)finishIfCancelled;
- (BOOL)shouldRetryForError:(id)a3;
- (NSError)error;
- (NSUUID)operationID;
- (_BRCOperation)init;
- (_BRCOperation)initWithName:(id)a3 syncContext:(id)a4 sessionContext:(id)a5 group:(id)a6;
- (double)executionTimeInSec;
- (id)createActivity;
- (id)descriptionWithContext:(id)a3;
- (id)lastErrorDescription;
- (id)stateWithContext:(id)a3;
- (void)_addSubOperation:(id)a3 overrideContext:(id)a4 allowsCellularAccess:(id)a5 asCompletionOf:(id)a6;
- (void)_completedWithResult:(id)a3 error:(id)a4;
- (void)_executeWithPreviousError:(id)a3;
- (void)_main;
- (void)_scheduleExecutionWithPreviousError:(id)a3;
- (void)_setDeviceConfigurationHeaderOnCKOp:(id)a3;
- (void)addDependency:(id)a3;
- (void)addSubOperation:(id)a3;
- (void)addSubOperation:(id)a3 asCompletionOf:(id)a4;
- (void)associateCKOperationsToEventMetric:(id)a3;
- (void)blockOnHighPriorityOperation:(id)a3;
- (void)cancel;
- (void)cancelAfterDelay:(double)a3;
- (void)completedWithResult:(id)a3 error:(id)a4;
- (void)dealloc;
- (void)error;
- (void)finishWithResult:(id)a3 error:(id)a4;
- (void)main;
- (void)schedule;
- (void)setExecuting:(BOOL)a3;
- (void)setFinished:(BOOL)a3;
- (void)setGroup:(id)a3;
- (void)start;
@end

@implementation _BRCOperation

- (void)dealloc
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_6_1(&dword_223E7A000, v0, v1, "[CRIT] UNREACHABLE: %@ deallocated while executing%@");
  v2 = *MEMORY[0x277D85DE8];
}

- (NSUUID)operationID
{
  v2 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:self->_operationUUID];

  return v2;
}

- (void)start
{
  v3 = [(_BRCOperation *)self createActivity];
  Activity = self->_Activity;
  self->_Activity = v3;

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(self->_Activity, &state);
  v5 = [(_BRCOperation *)self name];
  [v5 hash];
  [(_BRCOperation *)self hash];
  kdebug_trace();

  dispatch_activate(self->_callbackQueue);
  if (![(_BRCOperation *)self finishIfCancelled])
  {
    v6 = [(_BRCOperation *)self operationThrottle];
    if (v6)
    {
      callbackQueue = self->_callbackQueue;
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __22___BRCOperation_start__block_invoke;
      v10[3] = &unk_2784FF450;
      v10[4] = self;
      v8 = v10;
    }

    else
    {
      [(_BRCOperation *)self cancelAfterDelay:self->_timeout];
      callbackQueue = self->_callbackQueue;
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __22___BRCOperation_start__block_invoke_96;
      v9[3] = &unk_2784FF450;
      v9[4] = self;
      v8 = v9;
    }

    dispatch_async(callbackQueue, v8);
  }

  os_activity_scope_leave(&state);
}

- (BOOL)finishIfCancelled
{
  v3 = [(_BRCOperation *)self isCancelled];
  if (v3)
  {
    callbackQueue = self->_callbackQueue;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __34___BRCOperation_finishIfCancelled__block_invoke;
    v6[3] = &unk_2784FF450;
    v6[4] = self;
    dispatch_async_with_logs(callbackQueue, v6);
  }

  return v3;
}

- (void)_main
{
  dispatch_assert_queue_V2(self->_callbackQueue);
  [(_BRCOperation *)self setExecuting:1];
  internalQueue = self->_internalQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __22___BRCOperation__main__block_invoke;
  v4[3] = &unk_2784FF450;
  v4[4] = self;
  dispatch_async_with_logs(internalQueue, v4);
}

- (id)lastErrorDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(NSError *)self->_lastError domain];
  v5 = [v3 stringWithFormat:@"%@:%ld", v4, -[NSError code](self->_lastError, "code")];

  return v5;
}

- (BOOL)_finishIfCancelled
{
  dispatch_assert_queue_V2(self->_callbackQueue);
  if ([(_BRCOperation *)self isFinished])
  {
    goto LABEL_4;
  }

  v3 = [(_BRCOperation *)self isCancelled];
  if (v3)
  {
    [(_BRCOperation *)self isExecuting];
    v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CBBF50] code:20 userInfo:0];
    v5 = objc_autoreleasePoolPush();
    [(_BRCOperation *)self finishWithResult:0 error:v4];
    objc_autoreleasePoolPop(v5);

LABEL_4:
    LOBYTE(v3) = 1;
  }

  return v3;
}

- (void)schedule
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_6_1(&dword_223E7A000, v0, v1, "[CRIT] UNREACHABLE: there should be a group created for %@%@");
  v2 = *MEMORY[0x277D85DE8];
}

- (_BRCOperation)init
{
  [MEMORY[0x277CBEAD8] raise:@"UNIMPLEMENTED" format:&stru_2837504F0];

  return 0;
}

- (_BRCOperation)initWithName:(id)a3 syncContext:(id)a4 sessionContext:(id)a5 group:(id)a6
{
  v55 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v48.receiver = self;
  v48.super_class = _BRCOperation;
  v14 = [(_BRCOperation *)&v48 init];
  v15 = v14;
  if (v14)
  {
    v45 = v11;
    [(_BRCOperation *)v14 setName:v10];
    uuid_generate_random(v15->_operationUUID);
    objc_storeStrong(&v15->_sessionContext, a5);
    v16 = [MEMORY[0x277CBEAA8] date];
    startDate = v15->_startDate;
    v15->_startDate = v16;

    v18 = [v10 UTF8String];
    v19 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UNSPECIFIED, 0);
    v20 = dispatch_queue_attr_make_initially_inactive(v19);
    v21 = dispatch_queue_attr_make_with_autorelease_frequency(v20, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v22 = dispatch_queue_create(v18, v21);

    callbackQueue = v15->_callbackQueue;
    v15->_callbackQueue = v22;

    v24 = [v10 UTF8String];
    v25 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UNSPECIFIED, 0);
    v26 = dispatch_queue_attr_make_with_autorelease_frequency(v25, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v27 = dispatch_queue_create(v24, v26);

    internalQueue = v15->_internalQueue;
    v15->_internalQueue = v27;

    objc_storeStrong(&v15->_group, a6);
    objc_storeStrong(&v15->_syncContext, a4);
    v29 = [(BRCSessionContext *)v15->_sessionContext throttleProvider];
    v15->_operationFailureThrottle = [v29 operationFailureThrottle];

    v30 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    subOperations = v15->_subOperations;
    v15->_subOperations = v30;

    v32 = objc_opt_new();
    associatedEventMetrics = v15->_associatedEventMetrics;
    v15->_associatedEventMetrics = v32;

    group = v15->_group;
    if (group)
    {
      dispatch_group_enter(group);
    }

    [(_BRCOperation *)v15 setQualityOfService:17];
    v46 = 0uLL;
    v47 = 0;
    __brc_create_section(0, "[_BRCOperation initWithName:syncContext:sessionContext:group:]", 146, 0, &v46);
    v35 = brc_bread_crumbs();
    v36 = brc_default_log();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218498;
      v50 = v46;
      v51 = 2112;
      v52 = v15;
      v53 = 2112;
      v54 = v35;
      _os_log_debug_impl(&dword_223E7A000, v36, OS_LOG_TYPE_DEBUG, "[DEBUG] ┣%llx creating operation %@%@", buf, 0x20u);
    }

    v37 = v46;
    *&v15->_logSections.line = v47;
    *&v15->_logSections.sectionID = v37;
    v38 = [MEMORY[0x277D77BF8] sharedManager];
    v39 = [v38 br_currentPersonaID];
    personaID = v15->_personaID;
    v15->_personaID = v39;

    v41 = [BRCUserDefaults defaultsForMangledID:0];
    [v41 operationTimeout];
    v15->_timeout = v42;

    v15->_maxBackoff = 1.79769313e308;
    v11 = v45;
  }

  v43 = *MEMORY[0x277D85DE8];
  return v15;
}

- (id)createActivity
{
  v2 = _os_activity_create(&dword_223E7A000, "BRCOperation/? (subclass activity missing)", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

- (void)setGroup:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  logSections = self->_logSections;
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218498;
    sectionID = logSections.sectionID;
    v12 = 2112;
    v13 = v4;
    v14 = 2112;
    v15 = v5;
    _os_log_debug_impl(&dword_223E7A000, v6, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx now using group: %@%@", buf, 0x20u);
  }

  operationGroup = self->_operationGroup;
  self->_operationGroup = v4;

  __brc_leave_section(&logSections);
  v8 = *MEMORY[0x277D85DE8];
}

- (id)stateWithContext:(id)a3
{
  v4 = a3;
  if ([(_BRCOperation *)self isCancelled])
  {
    v5 = @"cancelled";
  }

  else if ([(_BRCOperation *)self isExecuting])
  {
    v5 = @"executing";
  }

  else if ([(_BRCOperation *)self isFinished])
  {
    v5 = @"finished";
  }

  else
  {
    v5 = @"idle";
  }

  v6 = [BRCDumpContext highlightedString:v5 type:7 context:v4];

  return v6;
}

- (double)executionTimeInSec
{
  finishDate = self->_finishDate;
  if (finishDate)
  {
    v4 = finishDate;
  }

  else
  {
    v4 = [MEMORY[0x277CBEAA8] date];
  }

  v5 = v4;
  [(NSDate *)v4 timeIntervalSinceDate:self->_startDate];
  v7 = v6;

  return v7;
}

- (id)descriptionWithContext:(id)a3
{
  v53 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v39 = [BRCDumpContext nowDateFromContext:v4];
  v5 = objc_alloc(MEMORY[0x277CCAB68]);
  v6 = [BRCDumpContext stringFromOperationUUID:self->_operationUUID context:v4];
  v7 = [(_BRCOperation *)self name];
  v8 = [v5 initWithFormat:@"%p %@ %@", self, v6, v7];

  v9 = self;
  objc_sync_enter(v9);
  obj = v9;
  v40 = [(_BRCOperation *)v9 subclassableDescriptionWithContext:v4];
  if ([v40 length])
  {
    [v8 appendString:@" "];
    [v8 appendString:v40];
  }

  v10 = [(_BRCOperation *)v9 stateWithContext:v4];
  [v8 appendFormat:@" %@", v10];

  finishDate = v9->_finishDate;
  if (!finishDate)
  {
    finishDate = v39;
  }

  v37 = finishDate;
  [(NSDate *)v37 timeIntervalSinceDate:v9->_startDate];
  v12 = [BRCDumpContext stringFromInterval:v4 context:?];
  [v8 appendFormat:@" duration:%@", v12];

  nextTryDate = v9->_nextTryDate;
  if (nextTryDate)
  {
    v14 = [BRCDumpContext stringFromDueDate:nextTryDate allowsPast:0 context:v4];
    [v8 appendFormat:@" next-try:%@", v14];
  }

  lastError = v9->_lastError;
  if (lastError)
  {
    v16 = [BRCDumpContext stringFromError:lastError context:v4];
    [v8 appendFormat:@" last-error:%@", v16];
  }

  lastTryDate = v9->_lastTryDate;
  if (lastTryDate)
  {
    v18 = [BRCDumpContext stringFromDueDate:lastTryDate allowsPast:1 context:v4];
    [v8 appendFormat:@" last-try:%@", v18];
  }

  v19 = [(_BRCOperation *)v9 dependencies];
  v42 = [v19 mutableCopy];

  v20 = v9->_subOperations;
  objc_sync_enter(v20);
  v21 = [(NSHashTable *)v9->_subOperations allObjects];
  objc_sync_exit(v20);

  v38 = v21;
  if ([v21 count])
  {
    [v8 appendString:@" sub {\n"];
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v22 = v21;
    v23 = [v22 countByEnumeratingWithState:&v47 objects:v52 count:16];
    if (v23)
    {
      v24 = *v48;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v48 != v24)
          {
            objc_enumerationMutation(v22);
          }

          v26 = *(*(&v47 + 1) + 8 * i);
          [v42 removeObject:v26];
          v27 = [v26 lightweightDescription];
          v28 = [BRCDumpContext highlightedString:v27 type:2 context:v4];
          [v8 appendFormat:@"    %@, \n", v28];
        }

        v23 = [v22 countByEnumeratingWithState:&v47 objects:v52 count:16];
      }

      while (v23);
    }

    [v8 appendString:@"}"];
  }

  if ([v42 count])
  {
    [v8 appendString:@" dep {\n"];
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v29 = v42;
    v30 = [v29 countByEnumeratingWithState:&v43 objects:v51 count:16];
    if (v30)
    {
      v31 = *v44;
      do
      {
        for (j = 0; j != v30; ++j)
        {
          if (*v44 != v31)
          {
            objc_enumerationMutation(v29);
          }

          v33 = [*(*(&v43 + 1) + 8 * j) lightweightDescription];
          v34 = [BRCDumpContext highlightedString:v33 type:2 context:v4];
          [v8 appendFormat:@"    %@, \n", v34];
        }

        v30 = [v29 countByEnumeratingWithState:&v43 objects:v51 count:16];
      }

      while (v30);
    }

    [v8 appendString:@"}"];
  }

  objc_sync_exit(obj);
  v35 = *MEMORY[0x277D85DE8];

  return v8;
}

- (NSError)error
{
  if (![(_BRCOperation *)self isFinished])
  {
    [_BRCOperation error];
  }

  lastError = self->_lastError;

  return lastError;
}

- (void)setFinished:(BOOL)a3
{
  v3 = a3;
  dispatch_assert_queue_V2(self->_callbackQueue);
  if (self->_finished != v3)
  {
    if (v3)
    {
      v5 = [MEMORY[0x277CBEAA8] date];
    }

    else
    {
      v5 = 0;
    }

    objc_storeStrong(&self->_finishDate, v5);
    if (v3)
    {
    }

    [(_BRCOperation *)self willChangeValueForKey:@"isFinished"];
    self->_finished = v3;

    [(_BRCOperation *)self didChangeValueForKey:@"isFinished"];
  }
}

- (void)setExecuting:(BOOL)a3
{
  v3 = a3;
  dispatch_assert_queue_V2(self->_callbackQueue);
  if ((((self->_executionTransaction == 0) ^ v3) & 1) == 0)
  {
    [(_BRCOperation *)self willChangeValueForKey:@"isExecuting"];
    if (v3)
    {
      v5 = os_transaction_create();
    }

    else
    {
      v5 = 0;
    }

    executionTransaction = self->_executionTransaction;
    self->_executionTransaction = v5;

    [(_BRCOperation *)self didChangeValueForKey:@"isExecuting"];
  }
}

- (void)main
{
  v3 = [(_BRCOperation *)self mainBlock];

  if (v3)
  {
    v4 = [(_BRCOperation *)self mainBlock];
    v4[2](v4, self);
  }

  else
  {
    v5.receiver = self;
    v5.super_class = _BRCOperation;
    [(_BRCOperation *)&v5 main];
  }
}

- (void)_executeWithPreviousError:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_callbackQueue);
  if (![(_BRCOperation *)self _finishIfCancelled])
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = [(_BRCOperation *)self dependencies];
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = *v16;
      do
      {
        v8 = 0;
        do
        {
          if (*v16 != v7)
          {
            objc_enumerationMutation(v5);
          }

          [(_BRCOperation *)self removeDependency:*(*(&v15 + 1) + 8 * v8++)];
        }

        while (v6 != v8);
        v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v6);
    }

    v9 = self->_subOperations;
    objc_sync_enter(v9);
    [(NSHashTable *)self->_subOperations removeAllObjects];
    objc_sync_exit(v9);

    v10 = [(_BRCOperation *)self operationThrottle];
    [v10 incrementRetryCount:self->_throttleHash];

    if (v4)
    {
      v11 = [(_BRCOperation *)self operationFailureThrottle];
      [v11 incrementRetryCount:self->_throttleHash];
    }

    retryTimer = self->_retryTimer;
    if (retryTimer)
    {
      dispatch_source_cancel(retryTimer);
      v13 = self->_retryTimer;
      self->_retryTimer = 0;
    }

    [(_BRCOperation *)self _main];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_scheduleExecutionWithPreviousError:(id)a3
{
  v63 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_callbackQueue);
  [(_BRCOperation *)self setExecuting:0];
  v5 = self;
  objc_sync_enter(v5);
  v6 = [MEMORY[0x277CBEAA8] date];
  lastTryDate = v5->_lastTryDate;
  v5->_lastTryDate = v6;

  objc_sync_exit(v5);
  [v4 br_suggestedRetryTimeInterval];
  v9 = v8;
  if (!v5->_throttleHash)
  {
    v10 = [(_BRCOperation *)v5 name];
    v5->_throttleHash = [BRCThrottle throttleHashFormat:@"%@%d", v10, [(_BRCOperation *)v5 nonDiscretionary]];
  }

  v11 = [(_BRCOperation *)v5 operationThrottle];
  v12 = [v11 nsecsToNextRetry:v5->_throttleHash now:brc_current_date_nsec() increment:0];
  v13 = [(_BRCOperation *)v5 operationFailureThrottle];

  v14 = [v13 nsecsToNextRetry:v5->_throttleHash now:brc_current_date_nsec() increment:0];
  if (v14 <= v12)
  {
    v15 = v12;
  }

  else
  {
    v15 = v14;
  }

  v16 = brc_bread_crumbs();
  v17 = brc_default_log();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    throttleHash = v5->_throttleHash;
    *buf = 134218498;
    v58 = v15 / 1000000000.0;
    v59 = 2048;
    v60 = throttleHash;
    v61 = 2112;
    v62 = v16;
    _os_log_debug_impl(&dword_223E7A000, v17, OS_LOG_TYPE_DEBUG, "[DEBUG] throttle backoff: %03fs for hash:0x%016llx%@", buf, 0x20u);
  }

  v18 = ![(_BRCOperation *)v5 nonDiscretionary];
  if (!v4)
  {
    LOBYTE(v18) = 1;
  }

  if ((v18 & 1) != 0 || (+[BRCUserDefaults defaultsForMangledID:](BRCUserDefaults, "defaultsForMangledID:", 0), v19 = objc_claimAutoreleasedReturnValue(), v20 = v15 > [v19 maxBackoffToRetryUserInitiated], v19, !v20))
  {
    if (v9 <= 0.0)
    {
      v24 = 0;
    }

    else
    {
      if (v9 <= 9223372040.0)
      {
        v24 = 1000000000 * v9;
      }

      else
      {
        v24 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v25 = brc_bread_crumbs();
      v26 = brc_default_log();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        [_BRCOperation _scheduleExecutionWithPreviousError:v9];
      }
    }

    if (v24 <= v15)
    {
      v27 = v15;
    }

    else
    {
      v27 = v24;
    }

    if (v27 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v28 = brc_bread_crumbs();
      v29 = brc_default_log();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
      {
        [_BRCOperation _scheduleExecutionWithPreviousError:];
      }

      v30 = v5;
      objc_sync_enter(v30);
      v31 = [MEMORY[0x277CBEAA8] distantFuture];
      nextTryDate = v30->_nextTryDate;
      v30->_nextTryDate = v31;

      objc_sync_exit(v30);
    }

    else if (v27 / 1000000000.0 >= v5->_maxBackoff)
    {
      v48 = brc_bread_crumbs();
      v49 = brc_default_log();
      if (os_log_type_enabled(v49, 0x90u))
      {
        [_BRCOperation _scheduleExecutionWithPreviousError:];
      }

      v50 = objc_alloc(MEMORY[0x277CCA9B8]);
      v51 = [v50 initWithDomain:*MEMORY[0x277CFABD0] code:23 userInfo:0];
      v52 = objc_autoreleasePoolPush();
      [(_BRCOperation *)v5 finishWithResult:0 error:v51];
      objc_autoreleasePoolPop(v52);
    }

    else if (v27)
    {
      v33 = brc_bread_crumbs();
      v34 = brc_default_log();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
      {
        [_BRCOperation _scheduleExecutionWithPreviousError:?];
      }

      v35 = v5;
      objc_sync_enter(v35);
      v36 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:v27 / 1000000000.0];
      v37 = v35->_nextTryDate;
      v35->_nextTryDate = v36;

      objc_sync_exit(v35);
      v38 = [(_BRCOperation *)v35 callbackQueue];
      v39 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v38);
      retryTimer = v35->_retryTimer;
      v35->_retryTimer = v39;

      v41 = dispatch_time(0, v27);
      dispatch_source_set_timer(v35->_retryTimer, v41, 0xFFFFFFFFFFFFFFFFLL, v27 / 2);
      v42 = v35->_retryTimer;
      v55[0] = MEMORY[0x277D85DD0];
      v55[1] = 3221225472;
      v55[2] = __53___BRCOperation__scheduleExecutionWithPreviousError___block_invoke;
      v55[3] = &unk_2784FF478;
      v55[4] = v35;
      v56 = v4;
      v43 = v42;
      v44 = v55;
      v45 = v44;
      v46 = v44;
      if (*MEMORY[0x277CFB010])
      {
        v46 = (*MEMORY[0x277CFB010])(v44);
      }

      v47 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_UTILITY, 0, v46);
      dispatch_source_set_event_handler(v43, v47);

      dispatch_resume(v35->_retryTimer);
    }

    else
    {
      [(_BRCOperation *)v5 _executeWithPreviousError:v4];
    }
  }

  else
  {
    v21 = brc_bread_crumbs();
    v22 = brc_default_log();
    if (os_log_type_enabled(v22, 0x90u))
    {
      [_BRCOperation _scheduleExecutionWithPreviousError:];
    }

    v23 = objc_autoreleasePoolPush();
    [(_BRCOperation *)v5 finishWithResult:0 error:v4];
    objc_autoreleasePoolPop(v23);
  }

  v53 = *MEMORY[0x277D85DE8];
}

- (void)cancel
{
  v45 = *MEMORY[0x277D85DE8];
  memset(v36, 0, sizeof(v36));
  __brc_create_section(0, "[_BRCOperation cancel]", 605, 0, v36);
  v3 = brc_bread_crumbs();
  v4 = brc_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218498;
    v40 = v36[0];
    v41 = 2112;
    v42 = self;
    v43 = 2112;
    v44 = v3;
    _os_log_debug_impl(&dword_223E7A000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx cancelling %@%@", buf, 0x20u);
  }

  v35.receiver = self;
  v35.super_class = _BRCOperation;
  [(_BRCOperation *)&v35 cancel];
  v5 = self->_subOperations;
  objc_sync_enter(v5);
  v6 = [(NSHashTable *)self->_subOperations allObjects];
  objc_sync_exit(v5);

  v7 = [(_BRCOperation *)self dependencies];
  v8 = [v7 mutableCopy];

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = v6;
  v9 = [obj countByEnumeratingWithState:&v31 objects:v38 count:16];
  if (v9)
  {
    v10 = *v32;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v32 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v31 + 1) + 8 * i);
        [(BRCSyncContext *)self->_syncContext cancelOperation:v12];
        [v8 removeObject:v12];
      }

      v9 = [obj countByEnumeratingWithState:&v31 objects:v38 count:16];
    }

    while (v9);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v13 = v8;
  v14 = [v13 countByEnumeratingWithState:&v27 objects:v37 count:16];
  if (v14)
  {
    v16 = *v28;
    *&v15 = 138412802;
    v24 = v15;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v28 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v27 + 1) + 8 * j);
        [(_BRCOperation *)self removeDependency:v18, v24];
        v19 = brc_bread_crumbs();
        v20 = brc_default_log();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          v21 = [(_BRCOperation *)self operationID];
          *buf = v24;
          v40 = v18;
          v41 = 2112;
          v42 = v21;
          v43 = 2112;
          v44 = v19;
          _os_log_debug_impl(&dword_223E7A000, v20, OS_LOG_TYPE_DEBUG, "[DEBUG] Removed %@ as dependency of cancelled op %@%@", buf, 0x20u);
        }
      }

      v14 = [v13 countByEnumeratingWithState:&v27 objects:v37 count:16];
    }

    while (v14);
  }

  callbackQueue = self->_callbackQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __23___BRCOperation_cancel__block_invoke;
  block[3] = &unk_2784FF450;
  block[4] = self;
  dispatch_async(callbackQueue, block);

  __brc_leave_section(v36);
  v23 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldRetryForError:(id)a3
{
  v4 = a3;
  if ([(_BRCOperation *)self nonDiscretionary])
  {
    v5 = [v4 brc_isUserInitiatedRetriable];
  }

  else
  {
    v5 = [v4 brc_isRetriable];
  }

  v6 = v5;

  return v6;
}

- (void)finishWithResult:(id)a3 error:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  memset(v28, 0, sizeof(v28));
  __brc_create_section(0, "[_BRCOperation finishWithResult:error:]", 652, 0, v28);
  v8 = brc_bread_crumbs();
  v9 = brc_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218498;
    v31 = v28[0];
    v32 = 2112;
    v33 = self;
    v34 = 2112;
    v35 = v8;
    _os_log_debug_impl(&dword_223E7A000, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx finishing %@%@", buf, 0x20u);
  }

  dispatch_assert_queue_V2(self->_callbackQueue);
  group = self->_group;
  if (group)
  {
    dispatch_group_leave(group);
    v11 = self->_group;
    self->_group = 0;
  }

  timeoutTimer = self->_timeoutTimer;
  if (timeoutTimer)
  {
    dispatch_source_cancel(timeoutTimer);
    v13 = self->_timeoutTimer;
    self->_timeoutTimer = 0;
  }

  finishBlock = self->_finishBlock;
  if (finishBlock)
  {
    finishBlock[2](finishBlock, v6, v7);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v15 = [(_BRCOperation *)self dependencies];
  v16 = [v15 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v16)
  {
    v17 = *v25;
    do
    {
      v18 = 0;
      do
      {
        if (*v25 != v17)
        {
          objc_enumerationMutation(v15);
        }

        [(_BRCOperation *)self removeDependency:*(*(&v24 + 1) + 8 * v18++)];
      }

      while (v16 != v18);
      v16 = [v15 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v16);
  }

  v19 = self->_subOperations;
  objc_sync_enter(v19);
  [(NSHashTable *)self->_subOperations removeAllObjects];
  objc_sync_exit(v19);

  v20 = [(_BRCOperation *)self name];
  [v20 hash];
  [(_BRCOperation *)self hash];
  kdebug_trace();

  [(_BRCOperation *)self setExecuting:0];
  [(_BRCOperation *)self setFinished:1];
  v21 = self->_finishBlock;
  self->_finishBlock = 0;

  mainBlock = self->_mainBlock;
  self->_mainBlock = 0;

  __brc_leave_section(v28);
  v23 = *MEMORY[0x277D85DE8];
}

- (void)_completedWithResult:(id)a3 error:(id)a4
{
  v42 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  logSections = self->_logSections;
  v8 = brc_bread_crumbs();
  v9 = brc_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v22 = @"failed";
    *buf = 134219522;
    if (!v7)
    {
      v22 = @"completed";
    }

    sectionID = logSections.sectionID;
    v30 = 2112;
    v23 = &stru_2837504F0;
    v31 = &stru_2837504F0;
    v24 = @"\nwith error: ";
    if (!v7)
    {
      v24 = &stru_2837504F0;
    }

    v32 = 2112;
    if (v7)
    {
      v23 = v7;
    }

    v33 = v22;
    v34 = 2112;
    v35 = self;
    v36 = 2112;
    v37 = v24;
    v38 = 2112;
    v39 = v23;
    v40 = 2112;
    v41 = v8;
    _os_log_debug_impl(&dword_223E7A000, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx %@%@ %@%@%@%@", buf, 0x48u);
  }

  dispatch_assert_queue_V2(self->_callbackQueue);
  if ([(__CFString *)v7 brc_isCloudKitSchedulerActivityDeferred])
  {
    v10 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CBBF50] code:4 description:@"System conditions no longer appropriate."];

    v7 = v10;
  }

  if (![(_BRCOperation *)self _finishIfCancelled:*&logSections.sectionID])
  {
    v11 = self;
    objc_sync_enter(v11);
    objc_storeStrong(&v11->_lastError, v7);
    objc_sync_exit(v11);

    if ([(__CFString *)v7 brc_isDenylistError])
    {
      v12 = brc_bread_crumbs();
      v13 = brc_default_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        sectionID = v11;
        v30 = 2112;
        v31 = v12;
        _os_log_impl(&dword_223E7A000, v13, OS_LOG_TYPE_DEFAULT, "[WARNING] We are denylisted! Not notifying about finishing %@%@", buf, 0x16u);
      }

      goto LABEL_20;
    }

    if ([(__CFString *)v7 brc_isCloudKitAccountTemporarilyUnavailable])
    {
      v14 = brc_bread_crumbs();
      v15 = brc_default_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        [_BRCOperation _completedWithResult:error:];
      }

      v16 = [MEMORY[0x277CCAB98] defaultCenter];
      [v16 postNotificationName:@"BRC_ACCOUNT_TEMPORARILY_UNAVAILABLE" object:0];
    }

    if (v7)
    {
      if ([(_BRCOperation *)v11 shouldRetryForError:v7])
      {
        if (!v11->_operationFailureThrottle)
        {
          v25 = brc_bread_crumbs();
          v26 = brc_default_log();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
          {
            [_BRCOperation _completedWithResult:error:];
          }
        }

        [(_BRCOperation *)v11 _scheduleExecutionWithPreviousError:v7];
        goto LABEL_20;
      }

      v17 = [(_BRCOperation *)v11 operationFailureThrottle];
      v18 = v17 == 0;

      if (!v18)
      {
        v19 = [(_BRCOperation *)v11 operationFailureThrottle];
        [v19 incrementRetryCount:v11->_throttleHash];
      }
    }

    v20 = objc_autoreleasePoolPush();
    [(_BRCOperation *)v11 finishWithResult:v6 error:v7];
    objc_autoreleasePoolPop(v20);
  }

LABEL_20:
  __brc_leave_section(&logSections);

  v21 = *MEMORY[0x277D85DE8];
}

- (void)completedWithResult:(id)a3 error:(id)a4
{
  v50 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  personaID = self->_personaID;
  if ((BRCurrentPersonaMatchesID() & 1) == 0)
  {
    v12 = brc_bread_crumbs();
    v13 = brc_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      [_BRCOperation completedWithResult:error:];
    }

    if ([(NSString *)self->_personaID isEqualToString:@"__defaultPersonaID__"]|| (v14 = self->_personaID) == 0)
    {
      if (completedWithResult_error____personaOnceToken != -1)
      {
        [_BRCOperation completedWithResult:error:];
      }

      v15 = completedWithResult_error____personalPersona;
      v16 = 1;
    }

    else
    {
      v15 = v14;
      v16 = 0;
    }

    v17 = [MEMORY[0x277D77BF8] sharedManager];
    v18 = [v17 currentPersona];

    v43 = 0;
    v19 = [v18 userPersonaUniqueString];
    v20 = v19;
    if (v19 == v15 || [(NSString *)v19 isEqualToString:v15])
    {
      v21 = 0;
    }

    else
    {
      if (voucher_process_can_use_arbitrary_personas())
      {
        v42 = 0;
        v26 = [v18 copyCurrentPersonaContextWithError:&v42];
        v27 = v42;
        v28 = v43;
        v43 = v26;

        if (v27)
        {
          v29 = brc_bread_crumbs();
          v30 = brc_default_log();
          if (os_log_type_enabled(v30, 0x90u))
          {
            [_BRCOperation completedWithResult:error:];
          }
        }

        v21 = [v18 br_generateAndRestorePersonaContextWithPersonaUniqueString:v15];

        if (!v21)
        {
          goto LABEL_14;
        }

        v31 = brc_bread_crumbs();
        v32 = brc_default_log();
        if (os_log_type_enabled(v32, 0x90u))
        {
          v33 = self->_personaID;
          *buf = 138412802;
          v45 = v33;
          v46 = 2112;
          v47 = v21;
          v48 = 2112;
          v49 = v31;
          _os_log_error_impl(&dword_223E7A000, v32, 0x90u, "[ERROR] Can't adopt persona %@: %@%@", buf, 0x20u);
        }
      }

      else
      {
        if (!v16 || ([v18 isDataSeparatedPersona] & 1) != 0)
        {
          v34 = brc_bread_crumbs();
          v35 = brc_default_log();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
          {
            [_BRCOperation completedWithResult:error:];
          }

          v21 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:22 userInfo:0];
          goto LABEL_14;
        }

        v31 = brc_bread_crumbs();
        v32 = brc_default_log();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
        {
          [_BRCOperation completedWithResult:error:];
        }

        v21 = 0;
      }
    }

LABEL_14:
    callbackQueue = self->_callbackQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __43___BRCOperation_completedWithResult_error___block_invoke_122;
    block[3] = &unk_2784FF4A0;
    block[4] = self;
    v40 = v6;
    v41 = v7;
    v23 = v7;
    v24 = v6;
    dispatch_async(callbackQueue, block);

    _BRRestorePersona();
    goto LABEL_15;
  }

  v9 = self->_callbackQueue;
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __43___BRCOperation_completedWithResult_error___block_invoke_2;
  v36[3] = &unk_2784FF4A0;
  v36[4] = self;
  v37 = v6;
  v38 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(v9, v36);

LABEL_15:
  v25 = *MEMORY[0x277D85DE8];
}

- (void)_setDeviceConfigurationHeaderOnCKOp:(id)a3
{
  v4 = a3;
  v5 = [v4 configuration];
  v6 = [v5 additionalRequestHTTPHeaders];
  v7 = [v6 mutableCopy];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = objc_opt_new();
  }

  v15 = v9;

  v10 = [BRCDeviceConfiguration alloc];
  v11 = [(BRCSessionContext *)self->_sessionContext accountFacade];
  v12 = [(BRCDeviceConfiguration *)v10 initWithAccountFacade:v11];

  v13 = [(BRCDeviceConfiguration *)v12 getDeviceConfigurationString];
  [v15 setObject:v13 forKeyedSubscript:@"X-APPLE-BR-DEVICE-CONFIGURATION"];

  v14 = [v4 configuration];

  [v14 setAdditionalRequestHTTPHeaders:v15];
}

- (void)_addSubOperation:(id)a3 overrideContext:(id)a4 allowsCellularAccess:(id)a5 asCompletionOf:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v11)
  {
    v11 = self->_syncContext;
  }

  v26.receiver = self;
  v26.super_class = _BRCOperation;
  [(_BRCOperation *)&v26 addDependency:v10];
  v14 = self->_subOperations;
  objc_sync_enter(v14);
  [(NSHashTable *)self->_subOperations addObject:v10];
  objc_sync_exit(v14);

  [v10 setQualityOfService:{-[_BRCOperation qualityOfService](self, "qualityOfService")}];
  [v10 setQueuePriority:{-[_BRCOperation queuePriority](self, "queuePriority")}];
  internalQueue = self->_internalQueue;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __86___BRCOperation__addSubOperation_overrideContext_allowsCellularAccess_asCompletionOf___block_invoke;
  v20[3] = &unk_2784FF4F0;
  v21 = v11;
  v22 = v10;
  v23 = self;
  v24 = v12;
  v25 = v13;
  v16 = v13;
  v17 = v12;
  v18 = v10;
  v19 = v11;
  dispatch_async_with_logs(internalQueue, v20);
}

- (void)addSubOperation:(id)a3
{
  v4 = a3;
  if (!self->_syncContext)
  {
    [_BRCOperation addSubOperation:];
  }

  [(_BRCOperation *)self addSubOperation:v4 overrideContext:0 allowsCellularAccess:0];
}

- (void)addSubOperation:(id)a3 asCompletionOf:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!self->_syncContext)
  {
    [_BRCOperation addSubOperation:asCompletionOf:];
  }

  [(_BRCOperation *)self _addSubOperation:v6 overrideContext:0 allowsCellularAccess:0 asCompletionOf:v7];
}

- (void)addDependency:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(_BRCOperation *)self nonDiscretionary])
  {
    if (([v4 isCancelled] & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && ([v4 nonDiscretionary] & 1) == 0)
      {
        v5 = brc_bread_crumbs();
        v6 = brc_default_log();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412802;
          v10 = v4;
          v11 = 2112;
          v12 = self;
          v13 = 2112;
          v14 = v5;
          _os_log_impl(&dword_223E7A000, v6, OS_LOG_TYPE_DEFAULT, "[WARNING] Adding discretionary op %@ as a dependency of a non-discretionary op %@%@", buf, 0x20u);
        }
      }
    }
  }

  v8.receiver = self;
  v8.super_class = _BRCOperation;
  [(_BRCOperation *)&v8 addDependency:v4];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)blockOnHighPriorityOperation:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (([(_BRCOperation *)self isCancelled]& 1) == 0)
  {
    v5 = brc_bread_crumbs();
    v6 = brc_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v18 = [(_BRCOperation *)self operationID];
      v19 = [v4 operationID];
      *location = 138412802;
      *&location[4] = v18;
      v29 = 2112;
      v30 = v19;
      v31 = 2112;
      v32 = v5;
      _os_log_debug_impl(&dword_223E7A000, v6, OS_LOG_TYPE_DEBUG, "[DEBUG] Blocking %@ on high priority operation %@%@", location, 0x20u);
    }

    [(_BRCOperation *)self addDependency:v4];
    v7 = self->_subOperations;
    objc_sync_enter(v7);
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v8 = self->_subOperations;
    v9 = [(NSHashTable *)v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v9)
    {
      v10 = *v24;
      do
      {
        v11 = 0;
        do
        {
          if (*v24 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v23 + 1) + 8 * v11);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v12 blockOnHighPriorityOperation:v4];
          }

          else
          {
            [v12 addDependency:v4];
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [(NSHashTable *)v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v9);
    }

    if (!self->_highPriorityWaitGroup)
    {
      v13 = dispatch_group_create();
      highPriorityWaitGroup = self->_highPriorityWaitGroup;
      self->_highPriorityWaitGroup = v13;
    }

    v15 = [v4 completionBlock];
    dispatch_group_enter(self->_highPriorityWaitGroup);
    objc_initWeak(location, self);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __46___BRCOperation_blockOnHighPriorityOperation___block_invoke;
    v20[3] = &unk_2784FF518;
    objc_copyWeak(&v22, location);
    v16 = v15;
    v21 = v16;
    [v4 setCompletionBlock:v20];

    objc_destroyWeak(&v22);
    objc_destroyWeak(location);

    objc_sync_exit(v7);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)associateCKOperationsToEventMetric:(id)a3
{
  if (a3)
  {
    [(NSMutableArray *)self->_associatedEventMetrics addObject:?];
  }
}

- (void)cancelAfterDelay:(double)a3
{
  v34 = *MEMORY[0x277D85DE8];
  if (a3 != 0.0)
  {
    v4 = self;
    objc_sync_enter(v4);
    if (([(_BRCOperation *)v4 isCancelled]& 1) == 0 && !v4->_timeoutTimer)
    {
      [(NSDate *)v4->_startDate timeIntervalSinceNow];
      v6 = (v5 * 1000000000.0);
      v7 = (a3 * 1000000000.0);
      v8 = v7 - v6;
      if (v7 <= v6)
      {
        v22 = brc_bread_crumbs();
        v23 = brc_default_log();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          v24 = [(_BRCOperation *)v4 description];
          [(_BRCOperation *)v24 cancelAfterDelay:v22, buf];
        }

        [(_BRCOperation *)v4 cancel];
      }

      else
      {
        v9 = brc_bread_crumbs();
        v10 = brc_default_log();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          v26 = [(_BRCOperation *)v4 description];
          *buf = 134218498;
          v29 = v8 / 0x3B9ACA00;
          v30 = 2112;
          v31 = v26;
          v32 = 2112;
          v33 = v9;
          _os_log_debug_impl(&dword_223E7A000, v10, OS_LOG_TYPE_DEBUG, "[DEBUG] Launching timeout timer of %llu seconds for operation %@%@", buf, 0x20u);
        }

        v11 = dispatch_time(0, v8);
        v12 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, 0);
        timeoutTimer = v4->_timeoutTimer;
        v4->_timeoutTimer = v12;

        v14 = v4->_timeoutTimer;
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __34___BRCOperation_cancelAfterDelay___block_invoke;
        v27[3] = &unk_2784FF450;
        v27[4] = v4;
        v15 = v14;
        v16 = v27;
        v17 = v15;
        v18 = v16;
        v19 = v18;
        v20 = v18;
        if (*MEMORY[0x277CFB010])
        {
          v20 = (*MEMORY[0x277CFB010])(v18);
        }

        v21 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_UTILITY, 0, v20);
        dispatch_source_set_event_handler(v17, v21);

        dispatch_source_set_timer(v4->_timeoutTimer, v11, 0xFFFFFFFFFFFFFFFFLL, v7 / 10);
        dispatch_resume(v4->_timeoutTimer);
      }
    }

    objc_sync_exit(v4);
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)error
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: self.finished%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)_scheduleExecutionWithPreviousError:(double)a1 .cold.1(double a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5 = 134218242;
  v6 = a1;
  OUTLINED_FUNCTION_4_0();
  v7 = v1;
  OUTLINED_FUNCTION_8(&dword_223E7A000, v2, v3, "[DEBUG] server provided backoff: %.03fs%@", &v5);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)_scheduleExecutionWithPreviousError:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_223E7A000, v0, 0x90u, "[ERROR] cancelling operation since reached to maximal allowed backoff%@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)_scheduleExecutionWithPreviousError:(double)a1 .cold.3(double a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5 = 134218242;
  v6 = a1;
  OUTLINED_FUNCTION_4_0();
  v7 = v1;
  OUTLINED_FUNCTION_8(&dword_223E7A000, v2, v3, "[DEBUG] attempting execution again in %.03fs%@", &v5);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)_scheduleExecutionWithPreviousError:.cold.4()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_6_1(&dword_223E7A000, v0, v1, "[CRIT] %@ has been denylisted and won't be attempted again%@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_scheduleExecutionWithPreviousError:.cold.5()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_223E7A000, v0, 0x90u, "[ERROR] throttle backoff is greater than max.  Failing the operation%@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)_completedWithResult:error:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] CloudKit account is temporarily unavailable. Invalidating account status after %@%@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_completedWithResult:error:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_fault_impl(&dword_223E7A000, v0, OS_LOG_TYPE_FAULT, "[CRIT] Assertion failed: _operationFailureThrottle%@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)completedWithResult:error:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_6_1(&dword_223E7A000, v0, v1, "[CRIT] Completed operation %@ with different persona than we started with%@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)completedWithResult:error:.cold.3()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_223E7A000, v0, OS_LOG_TYPE_DEBUG, "[DEBUG] Not allowed to adopt persona but data-separatedness matches%@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)completedWithResult:error:.cold.4()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_223E7A000, v0, OS_LOG_TYPE_DEBUG, "[DEBUG] Not allowed to adopt persona - should fallback persona%@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)completedWithResult:error:.cold.5()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(&dword_223E7A000, v0, 0x90u, "[ERROR] won't restore persona: %@%@", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)addSubOperation:.cold.1()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: _syncContext%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)addSubOperation:asCompletionOf:.cold.1()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: _syncContext%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)cancelAfterDelay:(uint64_t)a3 .cold.1(void *a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_9_0(a1, a2, a3, 5.778e-34);
  OUTLINED_FUNCTION_8(&dword_223E7A000, v6, v4, "[DEBUG] Timeout already expired, cancelling operation %@%@", v5);
}

@end