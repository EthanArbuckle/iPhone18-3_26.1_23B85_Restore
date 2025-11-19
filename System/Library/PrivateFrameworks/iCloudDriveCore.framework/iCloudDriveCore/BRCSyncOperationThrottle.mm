@interface BRCSyncOperationThrottle
- (BOOL)scheduleIfPossibleWithCurrentTimestamp:(int64_t)a3 signalSourceIfFailed:(id)a4 description:(id)a5;
- (BOOL)updateForClearingOutOfQuota;
- (BRCSyncOperationThrottle)initWithCoder:(id)a3;
- (BRCSyncOperationThrottle)initWithMangledID:(id)a3 isSyncDown:(BOOL)a4;
- (double)nextTry;
- (id)description;
- (void)clear;
- (void)encodeWithCoder:(id)a3;
- (void)updateAfterSchedulingTaskWithMinimumDelay:(double)a3;
- (void)updateForError:(id)a3;
@end

@implementation BRCSyncOperationThrottle

- (double)nextTry
{
  v3 = [MEMORY[0x277CBEAA8] date];
  [v3 timeIntervalSince1970];
  v5 = v4;

  delay = 0.0;
  if (!self->_graceNextRequest)
  {
    delay = self->_delay;
  }

  result = v5 + delay;
  if (self->_nextTry < result)
  {
    result = self->_nextTry;
  }

  self->_nextTry = result;
  return result;
}

- (BRCSyncOperationThrottle)initWithMangledID:(id)a3 isSyncDown:(BOOL)a4
{
  v7 = a3;
  v8 = [(BRCSyncOperationThrottle *)self init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_mangledID, a3);
    v9->_isSyncDown = a4;
    v10 = v9;
    v11 = [(BRCSyncOperationThrottle *)v10 mangledID];
    v12 = [BRCUserDefaults defaultsForMangledID:v11];

    if (v9->_isSyncDown)
    {
      [v12 syncDownThrottle];
    }

    else
    {
      [v12 syncUpThrottle];
    }
    v13 = ;

    [v13 minWait];
    v10->_delay = v14;
  }

  return v9;
}

- (BRCSyncOperationThrottle)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(BRCSyncOperationThrottle *)self init];
  if (v5)
  {
    v5->_isSyncDown = [v4 decodeBoolForKey:@"t"];
    [v4 decodeDoubleForKey:@"d"];
    v5->_delay = v6;
    [v4 decodeDoubleForKey:@"e"];
    v5->_nextTry = v7;
    v5->_lastErrorKind = [v4 decodeIntForKey:@"k"];
    v5->_graceNextRequest = [v4 decodeBoolForKey:@"g"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  [v5 encodeBool:self->_isSyncDown forKey:@"t"];
  [v5 encodeDouble:@"d" forKey:self->_delay];
  [v5 encodeDouble:@"e" forKey:self->_nextTry];
  lastErrorKind = self->_lastErrorKind;
  if (lastErrorKind)
  {
    [v5 encodeInt:lastErrorKind forKey:@"k"];
  }

  if (self->_graceNextRequest)
  {
    [v5 encodeBool:1 forKey:@"g"];
  }
}

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x277CCAB68]) initWithFormat:@"<%@ delay:%.1fs id:%@", objc_opt_class(), *&self->_delay, self->_mangledID];
  v4 = v3;
  if (self->_graceNextRequest)
  {
    [v3 appendString:@" graced"];
  }

  v5 = [MEMORY[0x277CBEAA8] date];
  [v5 timeIntervalSince1970];
  v7 = v6;

  nextTry = self->_nextTry;
  if (nextTry >= v7)
  {
    [v4 appendFormat:@" next-try in %.1fs>", nextTry - v7];
  }

  else
  {
    [v4 appendString:@" expired>"];
  }

  return v4;
}

- (void)updateAfterSchedulingTaskWithMinimumDelay:(double)a3
{
  v4 = self;
  v5 = [(BRCSyncOperationThrottle *)v4 mangledID];
  v6 = [BRCUserDefaults defaultsForMangledID:v5];

  LODWORD(v5) = v4->_isSyncDown;
  if (v5 == 1)
  {
    [v6 syncDownThrottle];
  }

  else
  {
    [v6 syncUpThrottle];
  }
  v24 = ;

  v7 = [MEMORY[0x277CBEAA8] date];
  [v7 timeIntervalSince1970];
  v9 = v8;

  v10 = v9 - v4->_nextTry;
  [v24 inactivityKickbackDelay];
  v12 = v10 - v11;
  [v24 inactivityKickbackRatio];
  v14 = v12 * v13;
  [v24 minWait];
  if (v15 > a3)
  {
    [v24 minWait];
    a3 = v16;
  }

  delay = v4->_delay;
  if (v14 < delay || delay <= a3)
  {
    v19 = v24;
  }

  else
  {
    do
    {
      v14 = v14 - delay;
      [v24 ratioOnSuccess];
      v19 = v24;
      delay = v20 * v4->_delay;
      v4->_delay = delay;
    }

    while (v14 >= delay && delay > a3);
  }

  if (delay < a3)
  {
    v4->_delay = a3;
    delay = a3;
  }

  v25 = v19;
  [v19 maxWait];
  if (delay <= v22)
  {
    v23 = v4->_delay;
  }

  else
  {
    [v25 maxWait];
    v4->_delay = v23;
  }

  v4->_nextTry = v9 + v23;
  v4->_graceNextRequest = 0;
}

- (BOOL)updateForClearingOutOfQuota
{
  lastErrorKind = self->_lastErrorKind;
  if (lastErrorKind == 2)
  {
    v4 = self;
    v5 = [(BRCSyncOperationThrottle *)v4 mangledID];
    v6 = [BRCUserDefaults defaultsForMangledID:v5];

    isSyncDown = v4->_isSyncDown;
    if (isSyncDown)
    {
      [v6 syncDownThrottle];
    }

    else
    {
      [v6 syncUpThrottle];
    }
    v8 = ;

    v4->_nextTry = v4->_nextTry - v4->_delay;
    [v8 ratioOnQuotaErrorClear];
    v10 = v9 * v4->_delay;
    v4->_delay = v10;
    [v8 minWait];
    if (v10 >= v11)
    {
      v11 = v10;
    }

    v12 = v4->_nextTry + v11;
    v4->_delay = v11;
    v4->_nextTry = v12;
    self->_lastErrorKind = 0;
  }

  return lastErrorKind == 2;
}

- (void)updateForError:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self;
  v6 = [(BRCSyncOperationThrottle *)v5 mangledID];
  v7 = [BRCUserDefaults defaultsForMangledID:v6];

  isSyncDown = v5->_isSyncDown;
  if (isSyncDown)
  {
    [v7 syncDownThrottle];
  }

  else
  {
    [v7 syncUpThrottle];
  }
  v9 = ;

  v10 = [v4 brc_syncOperationErrorKind];
  v11 = [MEMORY[0x277CBEAA8] date];
  [v11 timeIntervalSince1970];
  v13 = v12;

  if (!v4 || v10 == -1)
  {
    if (v5->_lastErrorKind == 2)
    {
      [v9 ratioOnQuotaErrorClear];
      v5->_delay = v20 * v5->_delay;
    }

    [v9 ratioOnSuccess];
    v17 = v21 * v5->_delay;
    v5->_delay = v17;
    [v9 minWait];
    if (v17 < v22)
    {
      v17 = v22;
    }

    goto LABEL_21;
  }

  if (v10 != 1)
  {
    if (v5->_isSyncDown && [v4 br_isCloudDocsErrorCode:32])
    {
      [v9 ratioOnSuccess];
      v5->_delay = v5->_delay / v14;
    }

    [v9 ratioOnFailure];
    v5->_delay = v15 * v5->_delay;
  }

  [v4 br_suggestedRetryTimeInterval];
  if (v16 != 0.0)
  {
    v17 = v16;
    v18 = brc_bread_crumbs();
    v19 = brc_default_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      delay = v5->_delay;
      v28 = 134218498;
      v29 = v17;
      v30 = 2048;
      v31 = delay;
      v32 = 2112;
      v33 = v18;
      _os_log_debug_impl(&dword_223E7A000, v19, OS_LOG_TYPE_DEBUG, "[DEBUG] server provided backoff %.03fs (delay %.03fs)%@", &v28, 0x20u);
    }

    if (v5->_delay >= v17)
    {
      v17 = v5->_delay;
    }

LABEL_21:
    v5->_delay = v17;
    goto LABEL_22;
  }

  v17 = v5->_delay;
LABEL_22:
  [v9 maxWait];
  if (v17 < v23)
  {
    v23 = v17;
  }

  v5->_delay = v23;
  v24 = brc_bread_crumbs();
  v25 = brc_default_log();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    [(BRCSyncOperationThrottle *)v5 updateForError:v24, v25];
  }

  v5->_lastErrorKind = v10;
  v5->_nextTry = v13 + v5->_delay;

  v26 = *MEMORY[0x277D85DE8];
}

- (void)clear
{
  self->_graceNextRequest = 0;
  self->_delay = 0.0;
  self->_nextTry = 0.0;
}

- (BOOL)scheduleIfPossibleWithCurrentTimestamp:(int64_t)a3 signalSourceIfFailed:(id)a4 description:(id)a5
{
  v35 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  [(BRCSyncOperationThrottle *)self nextTry];
  v10 = brc_interval_to_nsec();
  if (v10 - a3 >= 0x2540BE401)
  {
    v11 = brc_bread_crumbs();
    v12 = brc_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      if ([(BRCSyncOperationThrottle *)self isSyncDown])
      {
        v21 = @"down";
      }

      else
      {
        v21 = @"up";
      }

      brc_interval_from_nsec();
      v25 = 138413314;
      v26 = v9;
      v27 = 2112;
      v28 = v21;
      v29 = 2048;
      v30 = v22;
      v31 = 2112;
      v32 = self;
      v33 = 2112;
      v34 = v11;
      _os_log_debug_impl(&dword_223E7A000, v12, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ sync-%@ is throttled for more than 10s: %.1fs (%@)%@", &v25, 0x34u);
    }
  }

  if (v10 > a3)
  {
    if (v10 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v15 = brc_bread_crumbs();
      v16 = brc_default_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        [BRCSyncOperationThrottle(SchedulingAdditions) scheduleIfPossibleWithCurrentTimestamp:v15 signalSourceIfFailed:v16 description:?];
      }
    }

    else
    {
      v17 = brc_bread_crumbs();
      v18 = brc_default_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        [BRCSyncOperationThrottle(SchedulingAdditions) scheduleIfPossibleWithCurrentTimestamp:v17 signalSourceIfFailed:v18 description:?];
      }

      [v8 signalWithDeadline:v10];
    }
  }

  else
  {
    v13 = brc_bread_crumbs();
    v14 = brc_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v23 = [(BRCSyncOperationThrottle *)self isSyncDown];
      v24 = @"up";
      v25 = 138412802;
      if (v23)
      {
        v24 = @"down";
      }

      v26 = v24;
      v27 = 2112;
      v28 = v9;
      v29 = 2112;
      v30 = v13;
      _os_log_debug_impl(&dword_223E7A000, v14, OS_LOG_TYPE_DEBUG, "[DEBUG] syncing %@ %@%@", &v25, 0x20u);
    }

    [(BRCSyncOperationThrottle *)self updateAfterSchedulingTask];
  }

  v19 = *MEMORY[0x277D85DE8];
  return v10 <= a3;
}

- (void)updateForError:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_debug_impl(&dword_223E7A000, log, OS_LOG_TYPE_DEBUG, "[DEBUG] Sync: Updated sync throttle %@%@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end