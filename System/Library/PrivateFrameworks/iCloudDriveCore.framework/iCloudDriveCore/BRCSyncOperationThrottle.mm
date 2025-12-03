@interface BRCSyncOperationThrottle
- (BOOL)scheduleIfPossibleWithCurrentTimestamp:(int64_t)timestamp signalSourceIfFailed:(id)failed description:(id)description;
- (BOOL)updateForClearingOutOfQuota;
- (BRCSyncOperationThrottle)initWithCoder:(id)coder;
- (BRCSyncOperationThrottle)initWithMangledID:(id)d isSyncDown:(BOOL)down;
- (double)nextTry;
- (id)description;
- (void)clear;
- (void)encodeWithCoder:(id)coder;
- (void)updateAfterSchedulingTaskWithMinimumDelay:(double)delay;
- (void)updateForError:(id)error;
@end

@implementation BRCSyncOperationThrottle

- (double)nextTry
{
  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSince1970];
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

- (BRCSyncOperationThrottle)initWithMangledID:(id)d isSyncDown:(BOOL)down
{
  dCopy = d;
  v8 = [(BRCSyncOperationThrottle *)self init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_mangledID, d);
    v9->_isSyncDown = down;
    v10 = v9;
    mangledID = [(BRCSyncOperationThrottle *)v10 mangledID];
    v12 = [BRCUserDefaults defaultsForMangledID:mangledID];

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

- (BRCSyncOperationThrottle)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(BRCSyncOperationThrottle *)self init];
  if (v5)
  {
    v5->_isSyncDown = [coderCopy decodeBoolForKey:@"t"];
    [coderCopy decodeDoubleForKey:@"d"];
    v5->_delay = v6;
    [coderCopy decodeDoubleForKey:@"e"];
    v5->_nextTry = v7;
    v5->_lastErrorKind = [coderCopy decodeIntForKey:@"k"];
    v5->_graceNextRequest = [coderCopy decodeBoolForKey:@"g"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:self->_isSyncDown forKey:@"t"];
  [coderCopy encodeDouble:@"d" forKey:self->_delay];
  [coderCopy encodeDouble:@"e" forKey:self->_nextTry];
  lastErrorKind = self->_lastErrorKind;
  if (lastErrorKind)
  {
    [coderCopy encodeInt:lastErrorKind forKey:@"k"];
  }

  if (self->_graceNextRequest)
  {
    [coderCopy encodeBool:1 forKey:@"g"];
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

  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSince1970];
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

- (void)updateAfterSchedulingTaskWithMinimumDelay:(double)delay
{
  selfCopy = self;
  mangledID = [(BRCSyncOperationThrottle *)selfCopy mangledID];
  v6 = [BRCUserDefaults defaultsForMangledID:mangledID];

  LODWORD(mangledID) = selfCopy->_isSyncDown;
  if (mangledID == 1)
  {
    [v6 syncDownThrottle];
  }

  else
  {
    [v6 syncUpThrottle];
  }
  v24 = ;

  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSince1970];
  v9 = v8;

  v10 = v9 - selfCopy->_nextTry;
  [v24 inactivityKickbackDelay];
  v12 = v10 - v11;
  [v24 inactivityKickbackRatio];
  v14 = v12 * v13;
  [v24 minWait];
  if (v15 > delay)
  {
    [v24 minWait];
    delay = v16;
  }

  delay = selfCopy->_delay;
  if (v14 < delay || delay <= delay)
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
      delay = v20 * selfCopy->_delay;
      selfCopy->_delay = delay;
    }

    while (v14 >= delay && delay > delay);
  }

  if (delay < delay)
  {
    selfCopy->_delay = delay;
    delay = delay;
  }

  v25 = v19;
  [v19 maxWait];
  if (delay <= v22)
  {
    v23 = selfCopy->_delay;
  }

  else
  {
    [v25 maxWait];
    selfCopy->_delay = v23;
  }

  selfCopy->_nextTry = v9 + v23;
  selfCopy->_graceNextRequest = 0;
}

- (BOOL)updateForClearingOutOfQuota
{
  lastErrorKind = self->_lastErrorKind;
  if (lastErrorKind == 2)
  {
    selfCopy = self;
    mangledID = [(BRCSyncOperationThrottle *)selfCopy mangledID];
    v6 = [BRCUserDefaults defaultsForMangledID:mangledID];

    isSyncDown = selfCopy->_isSyncDown;
    if (isSyncDown)
    {
      [v6 syncDownThrottle];
    }

    else
    {
      [v6 syncUpThrottle];
    }
    v8 = ;

    selfCopy->_nextTry = selfCopy->_nextTry - selfCopy->_delay;
    [v8 ratioOnQuotaErrorClear];
    v10 = v9 * selfCopy->_delay;
    selfCopy->_delay = v10;
    [v8 minWait];
    if (v10 >= v11)
    {
      v11 = v10;
    }

    v12 = selfCopy->_nextTry + v11;
    selfCopy->_delay = v11;
    selfCopy->_nextTry = v12;
    self->_lastErrorKind = 0;
  }

  return lastErrorKind == 2;
}

- (void)updateForError:(id)error
{
  v34 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  selfCopy = self;
  mangledID = [(BRCSyncOperationThrottle *)selfCopy mangledID];
  v7 = [BRCUserDefaults defaultsForMangledID:mangledID];

  isSyncDown = selfCopy->_isSyncDown;
  if (isSyncDown)
  {
    [v7 syncDownThrottle];
  }

  else
  {
    [v7 syncUpThrottle];
  }
  v9 = ;

  brc_syncOperationErrorKind = [errorCopy brc_syncOperationErrorKind];
  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSince1970];
  v13 = v12;

  if (!errorCopy || brc_syncOperationErrorKind == -1)
  {
    if (selfCopy->_lastErrorKind == 2)
    {
      [v9 ratioOnQuotaErrorClear];
      selfCopy->_delay = v20 * selfCopy->_delay;
    }

    [v9 ratioOnSuccess];
    v17 = v21 * selfCopy->_delay;
    selfCopy->_delay = v17;
    [v9 minWait];
    if (v17 < v22)
    {
      v17 = v22;
    }

    goto LABEL_21;
  }

  if (brc_syncOperationErrorKind != 1)
  {
    if (selfCopy->_isSyncDown && [errorCopy br_isCloudDocsErrorCode:32])
    {
      [v9 ratioOnSuccess];
      selfCopy->_delay = selfCopy->_delay / v14;
    }

    [v9 ratioOnFailure];
    selfCopy->_delay = v15 * selfCopy->_delay;
  }

  [errorCopy br_suggestedRetryTimeInterval];
  if (v16 != 0.0)
  {
    v17 = v16;
    v18 = brc_bread_crumbs();
    v19 = brc_default_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      delay = selfCopy->_delay;
      v28 = 134218498;
      v29 = v17;
      v30 = 2048;
      v31 = delay;
      v32 = 2112;
      v33 = v18;
      _os_log_debug_impl(&dword_223E7A000, v19, OS_LOG_TYPE_DEBUG, "[DEBUG] server provided backoff %.03fs (delay %.03fs)%@", &v28, 0x20u);
    }

    if (selfCopy->_delay >= v17)
    {
      v17 = selfCopy->_delay;
    }

LABEL_21:
    selfCopy->_delay = v17;
    goto LABEL_22;
  }

  v17 = selfCopy->_delay;
LABEL_22:
  [v9 maxWait];
  if (v17 < v23)
  {
    v23 = v17;
  }

  selfCopy->_delay = v23;
  v24 = brc_bread_crumbs();
  v25 = brc_default_log();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    [(BRCSyncOperationThrottle *)selfCopy updateForError:v24, v25];
  }

  selfCopy->_lastErrorKind = brc_syncOperationErrorKind;
  selfCopy->_nextTry = v13 + selfCopy->_delay;

  v26 = *MEMORY[0x277D85DE8];
}

- (void)clear
{
  self->_graceNextRequest = 0;
  self->_delay = 0.0;
  self->_nextTry = 0.0;
}

- (BOOL)scheduleIfPossibleWithCurrentTimestamp:(int64_t)timestamp signalSourceIfFailed:(id)failed description:(id)description
{
  v35 = *MEMORY[0x277D85DE8];
  failedCopy = failed;
  descriptionCopy = description;
  [(BRCSyncOperationThrottle *)self nextTry];
  v10 = brc_interval_to_nsec();
  if (v10 - timestamp >= 0x2540BE401)
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
      v26 = descriptionCopy;
      v27 = 2112;
      v28 = v21;
      v29 = 2048;
      v30 = v22;
      v31 = 2112;
      selfCopy = self;
      v33 = 2112;
      v34 = v11;
      _os_log_debug_impl(&dword_223E7A000, v12, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ sync-%@ is throttled for more than 10s: %.1fs (%@)%@", &v25, 0x34u);
    }
  }

  if (v10 > timestamp)
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

      [failedCopy signalWithDeadline:v10];
    }
  }

  else
  {
    v13 = brc_bread_crumbs();
    v14 = brc_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      isSyncDown = [(BRCSyncOperationThrottle *)self isSyncDown];
      v24 = @"up";
      v25 = 138412802;
      if (isSyncDown)
      {
        v24 = @"down";
      }

      v26 = v24;
      v27 = 2112;
      v28 = descriptionCopy;
      v29 = 2112;
      v30 = v13;
      _os_log_debug_impl(&dword_223E7A000, v14, OS_LOG_TYPE_DEBUG, "[DEBUG] syncing %@ %@%@", &v25, 0x20u);
    }

    [(BRCSyncOperationThrottle *)self updateAfterSchedulingTask];
  }

  v19 = *MEMORY[0x277D85DE8];
  return v10 <= timestamp;
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