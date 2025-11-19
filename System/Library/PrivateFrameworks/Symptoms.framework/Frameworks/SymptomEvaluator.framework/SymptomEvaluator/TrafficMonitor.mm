@interface TrafficMonitor
- (TrafficMonitor)initWithQueue:(id)a3;
- (double)currentIdleDuration;
- (id)fetchBlock;
- (id)getState;
- (void)_refreshValues;
- (void)_timerMaintenance;
- (void)didPollFlowsAt:(double)a3 periodic:(BOOL)a4;
- (void)setActivePolling:(BOOL)a3;
- (void)setFetchBlock:(id)a3;
- (void)setUserInitiatedFlowThreshold:(BOOL)a3;
@end

@implementation TrafficMonitor

void __35__TrafficMonitor__timerMaintenance__block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = otherLogHandle;
  if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 104);
    LODWORD(v3) = *(v3 + 26);
    *buf = 138412546;
    v18 = v4;
    v19 = 1024;
    LODWORD(v20) = v3;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEBUG, "%@  _timerMaintenance timer expiry, active polling %d", buf, 0x12u);
  }

  *(*(a1 + 32) + 25) = 0;
  if (*(*(a1 + 32) + 26) == 1)
  {
    v5 = otherLogHandle;
    if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v6 = *(*(a1 + 32) + 104);
      *buf = 138412290;
      v18 = v6;
      _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEBUG, "%@  _timerMaintenance timer expiry", buf, 0xCu);
    }

    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v7 = *(a1 + 32);
    v9 = v8 - *(v7 + 48);
    if (v9 >= *(v7 + 112))
    {
      ++*(v7 + 80);
      v12 = otherLogHandle;
      if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEBUG))
      {
        v13 = *(*(a1 + 32) + 104);
        *buf = 138412546;
        v18 = v13;
        v19 = 2048;
        v20 = v9;
        _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_DEBUG, "%@  _timerMaintenance timer expiry, gap is %f so kick off poll", buf, 0x16u);
      }

      [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
      setApparentTime(v14);
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __35__TrafficMonitor__timerMaintenance__block_invoke_27;
      v16[3] = &unk_27898BB90;
      v16[4] = *(a1 + 32);
      [FlowRefreshScheduler refreshDataUsageMaxStale:@"TrafficMonitor" maxDelay:v16 logAs:1.0 callback:1.0];
    }

    else
    {
      v10 = otherLogHandle;
      if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEBUG))
      {
        v11 = *(*(a1 + 32) + 104);
        *buf = 138412546;
        v18 = v11;
        v19 = 2048;
        v20 = v9;
        _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEBUG, "%@  _timerMaintenance timer expiry, gap is %f so reschedule", buf, 0x16u);
      }

      [*(a1 + 32) _timerMaintenance];
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_timerMaintenance
{
  *&v20[5] = *MEMORY[0x277D85DE8];
  v3 = otherLogHandle;
  if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEBUG))
  {
    name = self->_name;
    activePolling = self->_activePolling;
    hasRunningTimer = self->_hasRunningTimer;
    *buf = 138412802;
    v18 = name;
    v19 = 1024;
    *v20 = activePolling;
    v20[2] = 1024;
    *&v20[3] = hasRunningTimer;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEBUG, "%@  _timerMaintenance with polling %d active %d", buf, 0x18u);
  }

  if (self->_activePolling && !self->_hasRunningTimer)
  {
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v8 = v7 - self->_prevTrafficTimestamp;
    minSamplePeriod = self->_minSamplePeriod;
    if (v8 >= minSamplePeriod)
    {
      v10 = 1.0;
    }

    else
    {
      v10 = minSamplePeriod - v8;
    }

    v11 = otherLogHandle;
    if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v12 = self->_name;
      *buf = 138412546;
      v18 = v12;
      v19 = 2048;
      *v20 = v10;
      _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEBUG, "%@  _timerMaintenance set timer expiry to %.3f", buf, 0x16u);
    }

    self->_hasRunningTimer = 1;
    v13 = dispatch_time(0, (v10 * 1000000000.0));
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __35__TrafficMonitor__timerMaintenance__block_invoke;
    block[3] = &unk_27898A0C8;
    block[4] = self;
    dispatch_after(v13, queue, block);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __35__TrafficMonitor__timerMaintenance__block_invoke_27(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__TrafficMonitor__timerMaintenance__block_invoke_2;
  block[3] = &unk_27898A0C8;
  block[4] = v1;
  dispatch_async(v2, block);
}

uint64_t __35__TrafficMonitor__timerMaintenance__block_invoke_2(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = otherLogHandle;
  if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(*(a1 + 32) + 104);
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEBUG, "%@  _timerMaintenance timer expiry, requested poll completed", &v6, 0xCu);
  }

  result = [*(a1 + 32) _timerMaintenance];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_refreshValues
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = otherLogHandle;
  if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEBUG))
  {
    name = self->_name;
    samplePeriodThroughput = self->_samplePeriodThroughput;
    minSamplePeriodThroughputThreshold = self->_minSamplePeriodThroughputThreshold;
    v8 = 138413058;
    v9 = name;
    v10 = 2048;
    v11 = samplePeriodThroughput;
    v12 = 2048;
    v13 = minSamplePeriodThroughputThreshold;
    v14 = 1024;
    v15 = samplePeriodThroughput > minSamplePeriodThroughputThreshold;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEBUG, "%@ sample tput %.6f  threshold %.6f, over threshold = %d", &v8, 0x26u);
  }

  [(TrafficMonitor *)self setUserInitiatedFlowThreshold:self->_samplePeriodThroughput > self->_minSamplePeriodThroughputThreshold];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)setUserInitiatedFlowThreshold:(BOOL)a3
{
  if (self->_userInitiatedFlowThreshold != a3)
  {
    [(TrafficMonitor *)self willChangeValueForKey:@"userInitiatedFlowThreshold"];
    self->_userInitiatedFlowThreshold = a3;

    [(TrafficMonitor *)self didChangeValueForKey:@"userInitiatedFlowThreshold"];
  }
}

- (double)currentIdleDuration
{
  v2 = 0.0;
  if (self->_currentIdleStartTime > 0.0)
  {
    v4 = [(TrafficMonitor *)self fetchBlock];
    v5 = v4[2]();

    if (v5 == self->_prevTrafficCount)
    {
      [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
      return v6 - self->_currentIdleStartTime;
    }
  }

  return v2;
}

- (void)setActivePolling:(BOOL)a3
{
  v3 = a3;
  v13 = *MEMORY[0x277D85DE8];
  v5 = otherLogHandle;
  if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEBUG))
  {
    name = self->_name;
    v9 = 138412546;
    v10 = name;
    v11 = 1024;
    v12 = v3;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEBUG, "%@  setActivePolling %d", &v9, 0x12u);
  }

  self->_activePolling = v3;
  if (v3)
  {
    [(TrafficMonitor *)self _timerMaintenance];
  }

  else
  {
    v7 = +[FlowRefreshScheduler sharedInstance];
    [v7 removeDelegate:self];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (id)fetchBlock
{
  v2 = _Block_copy(self->_fetchBlock);

  return v2;
}

- (void)setFetchBlock:(id)a3
{
  v4 = _Block_copy(a3);
  fetchBlock = self->_fetchBlock;
  self->_fetchBlock = v4;

  v6 = [(TrafficMonitor *)self fetchBlock];
  self->_prevTrafficCount = v6[2]();
}

- (void)didPollFlowsAt:(double)a3 periodic:(BOOL)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = otherLogHandle;
  if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEBUG))
  {
    name = self->_name;
    activePolling = self->_activePolling;
    *buf = 138412546;
    v12 = name;
    v13 = 1024;
    v14 = activePolling;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEBUG, "%@  didSampleFlows, activePolling %d", buf, 0x12u);
  }

  if (self->_activePolling)
  {
    ++self->_numPollsHandled;
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __42__TrafficMonitor_didPollFlowsAt_periodic___block_invoke;
    block[3] = &unk_27898A0C8;
    block[4] = self;
    dispatch_async(queue, block);
  }

  else
  {
    ++self->_numPollsIgnored;
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __42__TrafficMonitor_didPollFlowsAt_periodic___block_invoke(uint64_t a1)
{
  v64 = *MEMORY[0x277D85DE8];
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v3 = v2;
  v4 = *(a1 + 32);
  v5 = v2 - v4[6];
  if (v5 <= 1.0)
  {
    v20 = otherLogHandle;
    if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v21 = *(*(a1 + 32) + 104);
      *buf = 138412546;
      v59 = v21;
      v60 = 2048;
      v61 = v5;
      _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_DEBUG, "%@  didSampleFlows gap %.3f too small, skip", buf, 0x16u);
    }
  }

  else
  {
    v6 = [v4 fetchBlock];
    v7 = v6[2]();

    v51 = *(*(a1 + 32) + 64);
    v52 = v7;
    v8 = objc_alloc_init(UsageTallySample);
    [(UsageTallySample *)v8 setStartTimeIntervalSinceReferenceDate:*(*(a1 + 32) + 48)];
    [(UsageTallySample *)v8 setElapsedTime:v5];
    *&v50 = v7 - v51;
    [(UsageTallySample *)v8 setByteCount:v7 - v51];
    [*(*(a1 + 32) + 16) addObject:v8];
    v9 = otherLogHandle;
    if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v10 = *(*(a1 + 32) + 104);
      *buf = 138412802;
      v59 = v10;
      v60 = 2048;
      v61 = v5;
      v62 = 2112;
      v63 = v8;
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEBUG, "%@  didSampleFlows gap %.3f add sample %@", buf, 0x20u);
    }

    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v11 = *(*(a1 + 32) + 16);
    v12 = [v11 countByEnumeratingWithState:&v53 objects:v57 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = 0;
      v15 = *v54;
      v16 = 0.0;
      do
      {
        v17 = 0;
        v18 = v8;
        do
        {
          if (*v54 != v15)
          {
            objc_enumerationMutation(v11);
          }

          v8 = *(*(&v53 + 1) + 8 * v17);

          [(UsageTallySample *)v8 elapsedTime];
          v16 = v16 + v19;
          v14 += [(UsageTallySample *)v8 byteCount];
          ++v17;
          v18 = v8;
        }

        while (v13 != v17);
        v13 = [v11 countByEnumeratingWithState:&v53 objects:v57 count:16];
      }

      while (v13);
    }

    else
    {
      v14 = 0;
      v16 = 0.0;
    }

    if ([*(*(a1 + 32) + 16) count] >= 2)
    {
      do
      {
        v22 = [*(*(a1 + 32) + 16) objectAtIndexedSubscript:0];
        [v22 elapsedTime];
        v24 = v16 - v23;
        v25 = *(*(a1 + 32) + 112);

        if (v24 <= v25)
        {
          break;
        }

        v26 = [*(*(a1 + 32) + 16) objectAtIndexedSubscript:0];
        [v26 elapsedTime];
        v28 = v27;

        v29 = [*(*(a1 + 32) + 16) objectAtIndexedSubscript:0];
        v30 = [v29 byteCount];

        v31 = otherLogHandle;
        if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEBUG))
        {
          v32 = *(a1 + 32);
          v33 = *(v32 + 104);
          v34 = *(v32 + 16);
          v35 = v31;
          [v34 objectAtIndexedSubscript:0];
          v36 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
          *buf = 138412546;
          v59 = v33;
          v60 = 2112;
          v61 = v36;
          _os_log_impl(&dword_23255B000, v35, OS_LOG_TYPE_DEBUG, "%@  didSampleFlows remove sample %@", buf, 0x16u);
        }

        v16 = v16 - v28;
        v14 -= v30;
        [*(*(a1 + 32) + 16) removeObjectAtIndex:0];
      }

      while ([*(*(a1 + 32) + 16) count] > 1);
    }

    v37 = *(a1 + 32);
    if (v52 == v51)
    {
      if (*(v37 + 56) == 0.0)
      {
        v38 = otherLogHandle;
        if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEBUG))
        {
          v39 = *(a1 + 32);
          v40 = *(v39 + 104);
          v41 = *(v39 + 48);
          v42 = v38;
          dateStringMillisecondsFromReferenceInterval(v41);
          v43 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
          *buf = 138412546;
          v59 = v40;
          v60 = 2112;
          v61 = v43;
          _os_log_impl(&dword_23255B000, v42, OS_LOG_TYPE_DEBUG, "%@  didSampleFlows set _currentIdleStartTime to %@", buf, 0x16u);
        }

        *(*(a1 + 32) + 56) = *(*(a1 + 32) + 48);
      }
    }

    else
    {
      *(v37 + 56) = 0;
      v44 = otherLogHandle;
      if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEBUG))
      {
        v45 = *(*(a1 + 32) + 104);
        *buf = 138412546;
        v59 = v45;
        v60 = 2048;
        v61 = v50;
        _os_log_impl(&dword_23255B000, v44, OS_LOG_TYPE_DEBUG, "%@  didSampleFlows set _currentIdleStartTime to zero due to delta %llu", buf, 0x16u);
      }
    }

    *(*(a1 + 32) + 40) = mbpsThroughput(v14, v16);
    *(*(a1 + 32) + 48) = v3;
    *(*(a1 + 32) + 64) = v52;
    [*(a1 + 32) _refreshValues];
  }

  v46 = otherLogHandle;
  if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v47 = *(*(a1 + 32) + 104);
    *buf = 138412290;
    v59 = v47;
    _os_log_impl(&dword_23255B000, v46, OS_LOG_TYPE_DEBUG, "%@  didSampleFlows, call timer maintenance", buf, 0xCu);
  }

  result = [*(a1 + 32) _timerMaintenance];
  v49 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)getState
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  name = self->_name;
  userInitiatedFlowThreshold = self->_userInitiatedFlowThreshold;
  samplePeriodThroughput = self->_samplePeriodThroughput;
  [(TrafficMonitor *)self currentIdleDuration];
  v9 = v8;
  activePolling = self->_activePolling;
  hasRunningTimer = self->_hasRunningTimer;
  v12 = dateStringMillisecondsFromReferenceInterval(self->_prevTrafficTimestamp);
  v13 = [v4 initWithFormat:@"%@ thold %d  tput %.6f mbps idle-duration %.3f polling %d has timer %d last tstamp %@ last count %lld polls %lld initiated %lld ignored %lld", name, userInitiatedFlowThreshold, *&samplePeriodThroughput, v9, activePolling, hasRunningTimer, v12, self->_prevTrafficCount, self->_numPollsHandled, self->_numPollsInitiated, self->_numPollsIgnored];

  [v3 addObject:v13];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v14 = self->_samples;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v29;
    do
    {
      v18 = 0;
      v19 = v13;
      do
      {
        if (*v29 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@   sample %@", self->_name, *(*(&v28 + 1) + 8 * v18)];

        [v3 addObject:v13];
        ++v18;
        v19 = v13;
      }

      while (v16 != v18);
      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v16);
  }

  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v21 = v20 - self->_prevTrafficTimestamp;
  if (v21 > 0.5)
  {
    v22 = [(TrafficMonitor *)self fetchBlock];
    v23 = v22[2]();

    v24 = objc_alloc_init(UsageTallySample);
    [(UsageTallySample *)v24 setStartTimeIntervalSinceReferenceDate:self->_prevTrafficTimestamp];
    [(UsageTallySample *)v24 setElapsedTime:v21];
    [(UsageTallySample *)v24 setByteCount:v23 - self->_prevTrafficCount];
    v25 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@  virtual %@", self->_name, v24];

    [v3 addObject:v25];
    v13 = v25;
  }

  v26 = *MEMORY[0x277D85DE8];

  return v3;
}

- (TrafficMonitor)initWithQueue:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = TrafficMonitor;
  v6 = [(TrafficMonitor *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, a3);
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    samples = v7->_samples;
    v7->_samples = v8;

    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v7->_prevTrafficTimestamp = v10;
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v7->_currentIdleStartTime = v11;
    v12 = +[FlowRefreshScheduler sharedInstance];
    [v12 addDelegate:v7];
  }

  return v7;
}

@end