@interface FlowBasedIconAdviser
- (FlowBasedIconAdviser)initWithQueue:(id)a3;
- (id)getState:(BOOL)a3;
- (void)_initializeOutrankFlowMonitor;
- (void)didSampleFlows;
- (void)restoreDefaults;
- (void)setActive:(BOOL)a3;
- (void)setConfiguration:(id)a3;
- (void)setInternalState:(unsigned int)a3;
- (void)setNePolicyCount:(int)a3;
@end

@implementation FlowBasedIconAdviser

- (void)didSampleFlows
{
  v34 = *MEMORY[0x277D85DE8];
  ++self->_numPollsThisAdvicePeriod;
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v4 = v3;
  internalState = self->_internalState;
  if (internalState)
  {
    v6 = internalState == 5;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v7 = outrankLogHandle;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = flowBasedStateToString(internalState);
      [(TrafficMonitor *)self->_outrankFlowMonitor currentIdleStartTime];
      v10 = v9;
      if (v9 <= 0.0)
      {
        v12 = @"<null>";
      }

      else
      {
        [(TrafficMonitor *)self->_outrankFlowMonitor currentIdleStartTime];
        v12 = dateStringMillisecondsFromReferenceInterval(v11);
      }

      v30 = 138412546;
      v31 = *&v8;
      v32 = 2112;
      v33 = v12;
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEFAULT, "COSMIcon didSampleFlows entry, %@, idle start %@", &v30, 0x16u);
      if (v10 > 0.0)
      {
      }
    }

    internalState = self->_internalState;
  }

  if (internalState <= 2)
  {
    if (internalState == 1)
    {
      if (v4 - self->_flowBasedIconAdvicePeriodStart < self->_minNoForegroundAppDelay)
      {
        goto LABEL_41;
      }

      [(FlowBasedIconAdviser *)self setInternalState:2];
      [(TrafficMonitor *)self->_outrankFlowMonitor currentIdleStartTime];
      if (v27 == 0.0)
      {
        goto LABEL_41;
      }
    }

    else if (internalState != 2)
    {
      goto LABEL_41;
    }

    [(TrafficMonitor *)self->_outrankFlowMonitor currentIdleStartTime];
    if (v18 == 0.0)
    {
      goto LABEL_27;
    }

    idleStartTime = self->_idleStartTime;
    if (idleStartTime == 0.0)
    {
      [(TrafficMonitor *)self->_outrankFlowMonitor currentIdleStartTime];
      idleStartTime = v20;
      self->_idleStartTime = v20;
    }

    [(TrafficMonitor *)self->_outrankFlowMonitor currentIdleStartTime];
    if (idleStartTime != v21)
    {
LABEL_27:
      v17 = 4;
LABEL_40:
      [(FlowBasedIconAdviser *)self setInternalState:v17];
      goto LABEL_41;
    }

    [(TrafficMonitor *)self->_outrankFlowMonitor currentIdleDuration];
    if (v29 <= self->_minIdleObservationTime)
    {
      goto LABEL_41;
    }

    goto LABEL_34;
  }

  switch(internalState)
  {
    case 3:
      v22 = self->_idleStartTime;
      [(TrafficMonitor *)self->_outrankFlowMonitor currentIdleStartTime];
      if (v22 != v23)
      {
        [(FlowBasedIconAdviser *)self setInternalState:4];
      }

      if (v4 - self->_idleStartTime <= self->_maxInitialIdleDuration)
      {
        break;
      }

      goto LABEL_39;
    case 4:
      [(TrafficMonitor *)self->_outrankFlowMonitor currentIdleDuration];
      if (v24 <= self->_minIdleObservationTime)
      {
        break;
      }

      [(TrafficMonitor *)self->_outrankFlowMonitor currentIdleStartTime];
      self->_idleStartTime = v25;
LABEL_34:
      numInterstitialIdlesThisAdvicePeriod = self->_numInterstitialIdlesThisAdvicePeriod;
      if (numInterstitialIdlesThisAdvicePeriod < self->_maxInterstitialIdles)
      {
        self->_numInterstitialIdlesThisAdvicePeriod = numInterstitialIdlesThisAdvicePeriod + 1;
        v17 = 3;
        goto LABEL_40;
      }

LABEL_39:
      v17 = 5;
      goto LABEL_40;
    case 5:
      v13 = self->_idleStartTime;
      [(TrafficMonitor *)self->_outrankFlowMonitor currentIdleStartTime];
      if (v13 != v14)
      {
        v15 = outrankLogHandle;
        if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_ERROR))
        {
          v16 = v4 - self->_idleStartTime;
          v30 = 134217984;
          v31 = v16;
          _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_ERROR, "COSMIcon traffic %.3f seconds after declaring idle, ignoring", &v30, 0xCu);
        }

        v17 = 6;
        goto LABEL_40;
      }

      break;
  }

LABEL_41:
  v28 = *MEMORY[0x277D85DE8];
}

- (void)setInternalState:(unsigned int)a3
{
  v34 = *MEMORY[0x277D85DE8];
  if (self->_internalState != a3)
  {
    v5 = a3 < 7;
    v6 = v5 & (0x78u >> a3);
    v7 = v5 & (0x10u >> a3);
    v8 = v5 & (0x1Eu >> a3);
    v9 = outrankLogHandle;
    if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      internalState = self->_internalState;
      v11 = v9;
      v12 = flowBasedStateToString(internalState);
      v13 = flowBasedStateToString(a3);
      v14 = [(TrafficMonitor *)self->_outrankFlowMonitor activePolling];
      flowBasedIconRecommendation = self->_flowBasedIconRecommendation;
      flowBasedIconRecommendationValid = self->_flowBasedIconRecommendationValid;
      v18 = 138414082;
      v19 = v12;
      v20 = 2112;
      v21 = v13;
      v22 = 1024;
      v23 = v14;
      v24 = 1024;
      v25 = v8;
      v26 = 1024;
      v27 = flowBasedIconRecommendation;
      v28 = 1024;
      v29 = v7;
      v30 = 1024;
      v31 = flowBasedIconRecommendationValid;
      v32 = 1024;
      v33 = v6;
      _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEFAULT, "COSMIcon change internalState %@ -> %@    polling %d -> %d  icon-state %d -> %d  valid %d -> %d", &v18, 0x3Au);
    }

    self->_internalState = a3;
    self->_flowBasedIconRecommendation = v7;
    self->_flowBasedIconRecommendationValid = v6;
    [(TrafficMonitor *)self->_outrankFlowMonitor setActivePolling:v8];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)setNePolicyCount:(int)a3
{
  if (a3 || self->_nePolicyCount < 1)
  {
    self->_noPoliciesStartTime = 0.0;
  }

  else
  {
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v6 = v5;
    self->_noPoliciesStartTime = v5;
    v7 = dispatch_time(0, (self->_maxNoPolicyIconOnDuration * 1000000000.0));
    queue = self->_queue;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __41__FlowBasedIconAdviser_setNePolicyCount___block_invoke;
    v9[3] = &unk_27898AFE0;
    *&v9[5] = v6;
    v9[4] = self;
    dispatch_after(v7, queue, v9);
  }

  self->_nePolicyCount = a3;
}

void __41__FlowBasedIconAdviser_setNePolicyCount___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 48);
  v4 = outrankLogHandle;
  if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    v7 = flowBasedStateToString([v5 internalState]);
    v9[0] = 67109378;
    v9[1] = v2 == v3;
    v10 = 2112;
    v11 = v7;
    _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, "COSMIcon setNePolicyCount timer expiry, valid %d state %@", v9, 0x12u);
  }

  if (v2 == v3 && [*(a1 + 32) internalState])
  {
    [*(a1 + 32) setInternalState:6];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)setActive:(BOOL)a3
{
  v18 = *MEMORY[0x277D85DE8];
  if (self->_active != a3)
  {
    v3 = a3;
    v5 = outrankLogHandle;
    if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      active = self->_active;
      internalState = self->_internalState;
      v8 = v5;
      v9 = flowBasedStateToString(internalState);
      v13[0] = 67109634;
      v13[1] = active;
      v14 = 1024;
      v15 = v3;
      v16 = 2112;
      v17 = v9;
      _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEFAULT, "COSMIcon setActive %d -> %d when in %@", v13, 0x18u);
    }

    if (v3)
    {
      [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
      v11 = 1;
    }

    else
    {
      v11 = 0;
      v10 = 0.0;
    }

    self->_flowBasedIconAdvicePeriodStart = v10;
    [(FlowBasedIconAdviser *)self setInternalState:v11];
    *&self->_numPollsThisAdvicePeriod = 0;
    self->_active = v3;
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)getState:(BOOL)a3
{
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5 = objc_alloc(MEMORY[0x277CCACA8]);
  v6 = flowBasedStateToString(self->_internalState);
  flowBasedIconRecommendation = self->_flowBasedIconRecommendation;
  flowBasedIconRecommendationValid = self->_flowBasedIconRecommendationValid;
  flowBasedIconAdvicePeriodStart = self->_flowBasedIconAdvicePeriodStart;
  if (flowBasedIconAdvicePeriodStart <= 0.0)
  {
    v10 = @"<none>";
  }

  else
  {
    v10 = timeStringMillisecondsFromTimeInterval(self->_flowBasedIconAdvicePeriodStart);
  }

  idleStartTime = self->_idleStartTime;
  if (idleStartTime <= 0.0)
  {
    v12 = @"<none>";
  }

  else
  {
    v12 = timeStringMillisecondsFromTimeInterval(self->_idleStartTime);
  }

  v13 = [v5 initWithFormat:@"COSMCtrl flow-monitor internalState %@ icon %d valid %d period-start %@ idle-start %@ num-polls %d", v6, flowBasedIconRecommendation, flowBasedIconRecommendationValid, v10, v12, self->_numPollsThisAdvicePeriod];
  [v4 addObject:v13];

  if (idleStartTime > 0.0)
  {
  }

  if (flowBasedIconAdvicePeriodStart > 0.0)
  {
  }

  outrankFlowMonitor = self->_outrankFlowMonitor;
  if (outrankFlowMonitor)
  {
    v15 = [(TrafficMonitor *)outrankFlowMonitor getState];
    [v4 addObjectsFromArray:v15];
  }

  return v4;
}

- (void)restoreDefaults
{
  self->_maxInterstitialIdles = 0;
  *&self->_minNoForegroundAppDelay = xmmword_232817030;
  *&self->_maxInitialIdleDuration = xmmword_232817040;
  *&self->_outrankFlowMonitorMinSamplePeriod = xmmword_232817050;
}

- (void)setConfiguration:(id)a3
{
  v6 = a3;
  [v6 extractKey:@"minNoFgAppDelay" toDouble:&self->_minNoForegroundAppDelay defaultTo:1.0];
  [v6 extractKey:@"minIdleObserveTime" toDouble:&self->_minIdleObservationTime defaultTo:4.0];
  [v6 extractKey:@"maxInitialIdlePeriod" toDouble:&self->_maxInitialIdleDuration defaultTo:6.0];
  [v6 extractKey:@"maxInterstitialIdles" toUint32:&self->_maxInterstitialIdles defaultTo:0];
  [v6 extractKey:@"maxNoPolicyIconOnPeriod" toDouble:&self->_maxNoPolicyIconOnDuration defaultTo:10.0];
  [v6 extractKey:@"outrankFlowSamplePeriod" toDouble:&self->_outrankFlowMonitorMinSamplePeriod defaultTo:2.0];
  [v6 extractKey:@"outrankFlowSampleThreshold" toDouble:&self->_outrankFlowMonitorSamplePeriodThroughputThreshold defaultTo:0.000001];
  outrankFlowMonitor = self->_outrankFlowMonitor;
  if (outrankFlowMonitor)
  {
    [(TrafficMonitor *)outrankFlowMonitor setMinSamplePeriod:self->_outrankFlowMonitorMinSamplePeriod];
    [(TrafficMonitor *)self->_outrankFlowMonitor setMinSamplePeriodThroughputThreshold:self->_outrankFlowMonitorSamplePeriodThroughputThreshold];
  }

  v5 = [v6 objectForKey:@"restoreDefaults"];
  if (v5)
  {
    [(FlowBasedIconAdviser *)self restoreDefaults];
  }
}

- (void)_initializeOutrankFlowMonitor
{
  v3 = [[TrafficMonitor alloc] initWithQueue:self->_queue];
  outrankFlowMonitor = self->_outrankFlowMonitor;
  self->_outrankFlowMonitor = v3;

  [(TrafficMonitor *)self->_outrankFlowMonitor setName:@"OutrankFlowMonitor"];
  [(TrafficMonitor *)self->_outrankFlowMonitor setFetchBlock:&__block_literal_global_47];
  [(TrafficMonitor *)self->_outrankFlowMonitor setMinSamplePeriod:self->_outrankFlowMonitorMinSamplePeriod];
  outrankFlowMonitorSamplePeriodThroughputThreshold = self->_outrankFlowMonitorSamplePeriodThroughputThreshold;
  v6 = self->_outrankFlowMonitor;

  [(TrafficMonitor *)v6 setMinSamplePeriodThroughputThreshold:outrankFlowMonitorSamplePeriodThroughputThreshold];
}

unint64_t __53__FlowBasedIconAdviser__initializeOutrankFlowMonitor__block_invoke()
{
  v6 = *MEMORY[0x277D85DE8];
  v0 = [TrackedFlow reverseRnfUsageGrandTallyAfterAdding:0];
  v1 = outrankLogHandle;
  if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_INFO))
  {
    v4 = 134217984;
    v5 = v0;
    _os_log_impl(&dword_23255B000, v1, OS_LOG_TYPE_INFO, "COSMIcon outrank flow monitor fetch block returns %lld", &v4, 0xCu);
  }

  v2 = *MEMORY[0x277D85DE8];
  return v0;
}

- (FlowBasedIconAdviser)initWithQueue:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = FlowBasedIconAdviser;
  v6 = [(FlowBasedIconAdviser *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, a3);
    [(FlowBasedIconAdviser *)v7 restoreDefaults];
    [(FlowBasedIconAdviser *)v7 _initializeOutrankFlowMonitor];
  }

  return v7;
}

@end