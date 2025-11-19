@interface AppTracker
+ (id)configureClass:(id)a3;
+ (id)ifTrackerForFlow:(id)a3;
+ (id)sharedInstance;
+ (void)beginTrafficClassFlowSnapshot;
+ (void)dumpState;
+ (void)endTrafficClassFlowSnapshot:(id)a3 periodUsecs:(unint64_t)a4 reply:(id)a5;
+ (void)getWifiNetworkActivity:(id)a3;
+ (void)initialize;
+ (void)noteFlow:(id)a3 withDelegatee:(id)a4 snapshot:(id)a5;
+ (void)noteFlow:(id)a3 withOwner:(id)a4 snapshot:(id)a5;
+ (void)noteFlowEnding:(id)a3 withSnapshot:(id)a4;
+ (void)pruneCache:(id)a3;
+ (void)resetTrafficClassFlowSnapshot;
+ (void)setInternalQueue:(id)a3;
+ (void)startFlowPeriodTimer;
+ (void)stopFlowPeriodTimer;
- (AppTracker)initWithUserName:(id)a3 interfaceType:(unsigned __int8)a4;
- (NSString)description;
- (int)configureInstance:(id)a3;
- (void)_generateInfoForId:(unint64_t)a3 context:(const char *)a4 uuid:(id)a5 completionBlock:(id)a6;
- (void)addFlow:(id)a3;
- (void)addImmediateFlow:(id)a3;
- (void)adjustFlowLinkages:(id)a3;
- (void)adjustImmediateFlowLinkages:(id)a3;
- (void)checkForFlowCountPolicyViolation;
- (void)generateInfoForId:(unint64_t)a3 context:(const char *)a4 uuid:(id)a5 completionBlock:(id)a6;
- (void)removeFlow:(id)a3;
- (void)removeImmediateFlow:(id)a3;
- (void)resetFlowCountPolicyInfo;
- (void)sendFlowCount:(unint64_t)a3 exceededPolicyThreshold:(unint64_t)a4 isLikelyThunderingHerd:(BOOL)a5;
@end

@implementation AppTracker

- (void)checkForFlowCountPolicyViolation
{
  v37 = *MEMORY[0x277D85DE8];
  if ([(AppTracker *)self functionalInterfaceType]== 5)
  {
    v3 = &cellTracker;
LABEL_7:
    v4 = *v3;
    goto LABEL_8;
  }

  if ([(AppTracker *)self functionalInterfaceType]== 3)
  {
    v3 = &wifiTracker;
    goto LABEL_7;
  }

  if ([(AppTracker *)self functionalInterfaceType]== 7)
  {
    v3 = &companionLinkTracker;
    goto LABEL_7;
  }

  v4 = 0;
LABEL_8:
  v5 = +[OverrideTrackerPolicy sharedInstance];
  v6 = [(AppTracker *)self userName];
  v7 = [v5 maxConnectionPolicyForTarget:v6];

  if (v7)
  {
    v8 = [v7 integerValue];
    if (v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0x7FFFFFFFFFFFFFFFLL;
    }

LABEL_18:
    v13 = [v4 madePrimaryDate];
    v14 = v13;
    if (v13)
    {
      if (!self->_sentThunderingHerdFlowCountExceededPolicySymptom)
      {
        [v13 timeIntervalSinceNow];
        if (v16 < 0.0)
        {
          v17 = v16;
          if (v16 > -180.0 && v9 / 3 < self->_flowsPerPeriodAfterMadePrimary)
          {
            v18 = flowLogHandle;
            if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_DEFAULT))
            {
              v19 = -v17;
              v20 = v18;
              v21 = [(AppTracker *)self userName];
              v22 = v21;
              flowsPerPeriodAfterMadePrimary = self->_flowsPerPeriodAfterMadePrimary;
              *v28 = 138413314;
              if (v4 == wifiTracker)
              {
                v24 = @"Wi-Fi ";
              }

              else
              {
                v24 = @"Cell";
              }

              *&v28[4] = v21;
              v29 = 1024;
              v30 = flowsPerPeriodAfterMadePrimary;
              v31 = 2048;
              v32 = v9 / 3;
              v33 = 2048;
              v34 = v19;
              v35 = 2112;
              v36 = v24;
              _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_DEFAULT, "%@ - %d _flowsPerPeriod Exceeded Maximum flow count of %lu, %f seconds after %@ was made primary interface ", v28, 0x30u);
            }

            [(AppTracker *)self sendFlowCount:self->_flowsPerPeriodAfterMadePrimary exceededPolicyThreshold:v9 / 3 isLikelyThunderingHerd:1, *v28];
          }
        }
      }
    }

    if (v9 < self->_flowsPerPeriod && !self->_sentFlowCountExceededPolicySymptom)
    {
      [AppTracker sendFlowCount:"sendFlowCount:exceededPolicyThreshold:isLikelyThunderingHerd:" exceededPolicyThreshold:? isLikelyThunderingHerd:?];
    }

    goto LABEL_24;
  }

  v10 = [(AppTracker *)self specificPolicy];
  if (v10)
  {
    v11 = v10;
    [v10 maximumConnectionsPerHour];
LABEL_14:
    v12 = [v11 maximumConnectionsPerHour];
    if (v12)
    {
      v9 = v12;
    }

    else
    {
      v9 = 0x7FFFFFFFFFFFFFFFLL;
    }

    goto LABEL_18;
  }

  if (v4)
  {
    v11 = [v4 defaultPolicy];
    if (v11)
    {
      goto LABEL_14;
    }

    v25 = configurationLogHandle;
    if (os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_ERROR))
    {
      *v28 = 0;
      _os_log_impl(&dword_23255B000, v25, OS_LOG_TYPE_ERROR, "NO policy for maximumConnectionsPerHour. This should NEVER happen", v28, 2u);
    }
  }

  else
  {
    v26 = configurationLogHandle;
    if (os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_ERROR))
    {
      v27 = v26;
      *v28 = 134217984;
      *&v28[4] = [(AppTracker *)self functionalInterfaceType];
      _os_log_impl(&dword_23255B000, v27, OS_LOG_TYPE_ERROR, "NO policy for interfaceType: %ld", v28, 0xCu);
    }
  }

LABEL_24:

  v15 = *MEMORY[0x277D85DE8];
}

+ (void)initialize
{
  v2 = [[InterfaceTypeTracker alloc] initWithInterfaceType:3];
  v3 = wifiTracker;
  wifiTracker = v2;

  v4 = [[InterfaceTypeTracker alloc] initWithInterfaceType:5];
  v5 = cellTracker;
  cellTracker = v4;

  v6 = [[InterfaceTypeTracker alloc] initWithInterfaceType:7];
  v7 = companionLinkTracker;
  companionLinkTracker = v6;

  v8 = objc_alloc_init(cellFlowObserver);
  v9 = cellObserver;
  cellObserver = v8;

  [cellTracker setObserver:cellObserver];
  v10 = objc_alloc_init(wifiFlowObserver);
  v11 = wifiObserver;
  wifiObserver = v10;

  [wifiTracker setObserver:wifiObserver];
  v12 = +[OverrideTrackerPolicy sharedInstance];
}

- (AppTracker)initWithUserName:(id)a3 interfaceType:(unsigned __int8)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = AppTracker;
  v8 = [(AppTracker *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_userName, a3);
    v9->_functionalInterfaceType = a4;
  }

  return v9;
}

- (void)resetFlowCountPolicyInfo
{
  self->_flowsPerPeriod = 0;
  self->_flowsPerPeriodAfterMadePrimary = 0;
  *&self->_sentFlowCountExceededPolicySymptom = 0;
}

- (NSString)description
{
  prevFlows = self->_prevFlows;
  if (prevFlows)
  {
    v3 = self->_prevFlowDurations / prevFlows;
    v4 = self->_prevFlowRxBytes / prevFlows;
    v5 = self->_prevFlowTxBytes / prevFlows;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v3 = 0.0;
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"AppTracker at %p user %@  flows: self %d  others %d prevs %d %d  avg duration %f rx %lld tx %lld everset 0x%x policy %@", self, self->_userName, self->_flowsForSelf, self->_flowsForOthers, prevFlows, self->_prevFlowsForOthers, *&v3, v4, v5, self->_eversetClassFlags, self->_specificPolicy];
}

+ (void)noteFlowEnding:(id)a3 withSnapshot:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v5 ultimateUser];

  if (v7)
  {
    v8 = [v5 ultimateUser];
    [v8 removeFlow:v5];
  }

  v9 = [v5 immediateUser];

  if (v9)
  {
    v10 = [v5 immediateUser];
    [v10 removeImmediateFlow:v5];
  }

  v11 = [v5 trackerForStatistics];

  if (v11)
  {
    v12 = [v5 trackerForStatistics];
    [v12 setPrevFlows:{objc_msgSend(v12, "prevFlows") + 1}];

    v13 = [v5 trackerForStatistics];
    [v6 flowDuration];
    v15 = v14;
    [v13 prevFlowDurations];
    [v13 setPrevFlowDurations:v15 + v16];

    if ([v5 ifType] == 1)
    {
      v17 = [v5 trackerForStatistics];
      [v17 setPrevFlowRxBytes:{objc_msgSend(v17, "prevFlowRxBytes") + objc_msgSend(v6, "rxWiFiBytes")}];

      v18 = [v5 trackerForStatistics];
      v19 = [v6 txWiFiBytes];
LABEL_10:
      [v18 setPrevFlowTxBytes:[v18 prevFlowTxBytes]+ v19];
LABEL_11:

      goto LABEL_12;
    }

    if ([v5 ifType] == 2)
    {
      v20 = [v5 trackerForStatistics];
      [v20 setPrevFlowRxBytes:{objc_msgSend(v20, "prevFlowRxBytes") + objc_msgSend(v6, "rxCellularBytes")}];

      v18 = [v5 trackerForStatistics];
      v19 = [v6 txCellularBytes];
      goto LABEL_10;
    }

    v29 = flowLogHandle;
    if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_ERROR))
    {
      v18 = v29;
      v30 = 134217984;
      v31 = [v5 ifType];
      _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_ERROR, "noteFlowEnding called for unexpected interface %ld", &v30, 0xCu);
      goto LABEL_11;
    }
  }

LABEL_12:
  v21 = [AppTracker ifTrackerForFlow:v5];
  if (v21)
  {
    if ([v5 classificationChangeTimer])
    {
      v22 = flowLogHandle;
      if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_DEBUG))
      {
        v23 = v22;
        v24 = [v5 flowId];
        v30 = 134217984;
        v31 = v24;
        _os_log_impl(&dword_23255B000, v23, OS_LOG_TYPE_DEBUG, "Flow %lld cancel lw timer on close", &v30, 0xCu);
      }

      v25 = [v21 lwTimer];
      [v25 cancel:{objc_msgSend(v5, "classificationChangeTimer")}];
    }

    v26 = [v21 observer];
    v27 = v26;
    if (v26)
    {
      [v26 noteFlow:v5 snapshot:0 present:0 trackedBy:0];
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)sendFlowCount:(unint64_t)a3 exceededPolicyThreshold:(unint64_t)a4 isLikelyThunderingHerd:(BOOL)a5
{
  v5 = a5;
  v7 = [(AppTracker *)self userName];
  v8 = [v7 UTF8String];

  internal_symptom_new(405506);
  internal_symptom_set_qualifier();
  internal_symptom_set_qualifier();
  internal_symptom_set_qualifier();
  [MEMORY[0x277D6B3E0] nwInterfaceTypeForNWFunctionalInterfaceType:self->_functionalInterfaceType];
  internal_symptom_set_qualifier();
  internal_symptom_set_qualifier();
  if (v8)
  {
    strlen(v8);
    internal_symptom_set_additional_qualifier();
  }

  internal_symptom_set_qualifier();
  internal_symptom_send();
  v9 = 9;
  if (v5)
  {
    v9 = 10;
  }

  *(&self->super.isa + v9) = 1;
}

- (void)addFlow:(id)a3
{
  v4 = a3;
  ++self->_flowsForSelf;
  *&self->_flowsPerPeriod = vadd_s32(*&self->_flowsPerPeriod, 0x100000001);
  if (self->_isADaemon)
  {
    [(AppTracker *)self checkForFlowCountPolicyViolation];
  }

  [v4 setUltimateUser:self];
}

- (void)removeFlow:(id)a3
{
  --self->_flowsForSelf;
  [a3 setUltimateUser:0];
  v4 = [MEMORY[0x277CBEAA8] date];
  timestamp = self->_timestamp;
  self->_timestamp = v4;

  MEMORY[0x2821F96F8](v4, timestamp);
}

- (void)adjustFlowLinkages:(id)a3
{
  v7 = a3;
  v4 = [v7 ultimateUser];

  if (v4 != self)
  {
    v5 = [v7 ultimateUser];

    if (v5)
    {
      v6 = [v7 ultimateUser];
      [v6 removeFlow:v7];
    }

    [(AppTracker *)self addFlow:v7];
  }
}

- (void)addImmediateFlow:(id)a3
{
  v4 = a3;
  *&self->_flowsForOthers = vadd_s32(*&self->_flowsForOthers, 0x100000001);
  ++self->_flowsPerPeriodAfterMadePrimary;
  if (self->_isADaemon)
  {
    [(AppTracker *)self checkForFlowCountPolicyViolation];
  }

  [v4 setImmediateUser:self];
}

- (void)removeImmediateFlow:(id)a3
{
  --self->_flowsForOthers;
  ++self->_prevFlowsForOthers;
  [a3 setImmediateUser:0];
}

- (void)adjustImmediateFlowLinkages:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 immediateUser];

  if (v5 != self)
  {
    v6 = [v4 immediateUser];

    if (v6)
    {
      v7 = flowLogHandle;
      if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v8 = v7;
        v9 = [v4 flowId];
        v10 = [v4 ultimateUser];
        v13 = 134218242;
        v14 = v9;
        v15 = 2112;
        v16 = v10;
        _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEFAULT, "Flow %llu, remove from previous AppTracker %@", &v13, 0x16u);
      }

      v11 = [v4 immediateUser];
      [v11 removeImmediateFlow:v4];
    }

    [(AppTracker *)self addImmediateFlow:v4];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_generateInfoForId:(unint64_t)a3 context:(const char *)a4 uuid:(id)a5 completionBlock:(id)a6
{
  v19 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = a6;
  if (a3 > 8)
  {
    switch(a3)
    {
      case 9uLL:
        v10 = [MEMORY[0x277CBEAA8] date];
        v11 = [wifiTracker infoDir];
        (*(v9 + 2))(v9, 0, "WiFi AppTracker details", v10, "collected on demand", 0, v11);
        break;
      case 0xAuLL:
        v10 = [MEMORY[0x277CBEAA8] date];
        v11 = [companionLinkTracker infoDir];
        (*(v9 + 2))(v9, 0, "CompanionLink AppTracker details", v10, "collected on demand", 0, v11);
        break;
      case 0xBuLL:
        v10 = [MEMORY[0x277CBEAA8] date];
        v11 = [wifiTracker observer];
        v12 = [v11 infoDir];
        (*(v9 + 2))(v9, 0, "WiFi AppAware data", v10, "collected on demand", 0, v12);

        break;
      default:
        goto LABEL_12;
    }

LABEL_17:

    goto LABEL_18;
  }

  switch(a3)
  {
    case 3uLL:
      v10 = [MEMORY[0x277CBEAA8] date];
      v11 = [cellTracker infoDir];
      (*(v9 + 2))(v9, 0, "AppTracker details", v10, "collected on demand", 0, v11);
      goto LABEL_17;
    case 4uLL:
      +[AppTracker beginTrafficClassFlowSnapshot];
      v10 = [MEMORY[0x277CBEAA8] date];
      (*(v9 + 2))(v9, 0, "Snapshot started", v10, "on demand", 0, MEMORY[0x277CBEC10]);
      goto LABEL_18;
    case 5uLL:
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __62__AppTracker__generateInfoForId_context_uuid_completionBlock___block_invoke;
      v16[3] = &__block_descriptor_40_e26_v32__0I8Q12__NSArray_20B28l;
      v16[4] = 5;
      [AppTracker endTrafficClassFlowSnapshot:MEMORY[0x277D85CD0] periodUsecs:-1 reply:v16];
      v10 = [MEMORY[0x277CBEAA8] date];
      (*(v9 + 2))(v9, 0, "Snapshot details requested", v10, "on demand", 0, MEMORY[0x277CBEC10]);
LABEL_18:

      goto LABEL_19;
  }

LABEL_12:
  v13 = [MEMORY[0x277CBEAA8] date];
  (*(v9 + 2))(v9, 0, "Unrecognized managed event request", v13, "on demand", 0, MEMORY[0x277CBEC10]);

  v14 = scoringLogHandle;
  if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    v18 = a3;
    _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_ERROR, "Unrecognized managed event request %llu", buf, 0xCu);
  }

LABEL_19:

  v15 = *MEMORY[0x277D85DE8];
}

void __62__AppTracker__generateInfoForId_context_uuid_completionBlock___block_invoke(uint64_t a1, int a2, uint64_t a3, void *a4, int a5)
{
  v24 = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = configurationLogHandle;
  if (os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_ERROR))
  {
    v11 = *(a1 + 32);
    v12 = "no";
    v14 = 134219010;
    if (a5)
    {
      v12 = "yes";
    }

    v15 = v11;
    v16 = 1024;
    v17 = a2;
    v18 = 2048;
    v19 = a3;
    v20 = 2112;
    v21 = v9;
    v22 = 2080;
    v23 = v12;
    _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_ERROR, "handling  managed event request %llu gives tcFlag %u enabled for %lld with identifiers %@, violation: %s", &v14, 0x30u);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)generateInfoForId:(unint64_t)a3 context:(const char *)a4 uuid:(id)a5 completionBlock:(id)a6
{
  v10 = a5;
  v11 = a6;
  v12 = internalQueue;
  if (internalQueue)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __61__AppTracker_generateInfoForId_context_uuid_completionBlock___block_invoke;
    block[3] = &unk_27898AFB8;
    block[4] = self;
    v17 = a3;
    v18 = a4;
    v15 = v10;
    v16 = v11;
    dispatch_async(v12, block);
  }

  else
  {
    v13 = [MEMORY[0x277CBEAA8] date];
    (*(v11 + 2))(v11, 0, "No AppTracker queue to handle request", v13, "on demand", 0, MEMORY[0x277CBEC10]);
  }
}

+ (id)ifTrackerForFlow:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (([v3 flags] & 0x400) != 0)
  {
    v4 = companionLinkTracker;
    goto LABEL_5;
  }

  if ([v3 ifType] == 1)
  {
    v4 = wifiTracker;
LABEL_5:
    v5 = v4;
    goto LABEL_6;
  }

  if ([v3 ifType] == 2)
  {
    v4 = cellTracker;
    goto LABEL_5;
  }

  v8 = [v3 ifType];
  v9 = flowLogHandle;
  if (v8 == 3)
  {
    if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEBUG, "Don't have a tracker for WiredEthernet interface type", &v11, 2u);
    }
  }

  else if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_ERROR))
  {
    v10 = v9;
    v11 = 134217984;
    v12 = [v3 ifType];
    _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_ERROR, "Don't have a tracker for this flow's interface type: %ld", &v11, 0xCu);
  }

  v5 = 0;
LABEL_6:

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (void)pruneCache:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 allKeys];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = [v3 objectForKey:v9];
        if (![v10 flowsForSelf] && !objc_msgSend(v10, "flowsForOthers"))
        {
          v11 = [v10 specificPolicy];

          if (!v11)
          {
            v12 = v10[9];
            v13 = v12;
            if (v12)
            {
              [v12 timeIntervalSinceNow];
              if (v14 <= -86400.0)
              {
                [v3 removeObjectForKey:v9];
              }
            }
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  v15 = *MEMORY[0x277D85DE8];
}

+ (void)noteFlow:(id)a3 withDelegatee:(id)a4 snapshot:(id)a5
{
  v11 = a3;
  v7 = a4;
  v8 = a5;
  v9 = [AppTracker ifTrackerForFlow:v11];
  v10 = v9;
  if (v9)
  {
    [v9 noteFlow:v11 withDelegatee:v7 snapshot:v8];
  }
}

+ (void)noteFlow:(id)a3 withOwner:(id)a4 snapshot:(id)a5
{
  v11 = a3;
  v7 = a4;
  v8 = a5;
  v9 = [AppTracker ifTrackerForFlow:v11];
  v10 = v9;
  if (v9)
  {
    [v9 noteFlow:v11 withOwner:v7 snapshot:v8];
  }
}

+ (void)getWifiNetworkActivity:(id)a3
{
  if (wifiTracker)
  {
    [wifiTracker getNetworkActivity:a3];
  }

  else
  {
    (*(a3 + 2))(a3, 0x8000, 0, @"Couldn't kick off data refresh, no wifi tracking", 0.0);
  }
}

+ (void)beginTrafficClassFlowSnapshot
{
  v4 = internalQueue;
  if (internalQueue)
  {

    dispatch_async(v4, &__block_literal_global_320);
  }

  else
  {
    v7 = v2;
    v8 = v3;
    v5 = configurationLogHandle;
    if (os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_ERROR, "TC Metric: internal queue not set!", v6, 2u);
    }
  }
}

+ (void)endTrafficClassFlowSnapshot:(id)a3 periodUsecs:(unint64_t)a4 reply:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = internalQueue;
  if (internalQueue)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60__AppTracker_endTrafficClassFlowSnapshot_periodUsecs_reply___block_invoke;
    block[3] = &unk_27898E858;
    v10 = &v16;
    v16 = v7;
    v18 = a4;
    v17 = v8;
    dispatch_async(v9, block);
  }

  else
  {
    v11 = configurationLogHandle;
    if (os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_ERROR, "TC Metric: internal queue not set! aborting.", buf, 2u);
    }

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __60__AppTracker_endTrafficClassFlowSnapshot_periodUsecs_reply___block_invoke_321;
    v12[3] = &unk_27898C670;
    v10 = &v13;
    v13 = v8;
    dispatch_async(v7, v12);
  }
}

+ (void)resetTrafficClassFlowSnapshot
{
  if (internalQueue)
  {
    dispatch_async(internalQueue, &__block_literal_global_323);
  }
}

+ (void)setInternalQueue:(id)a3
{
  v4 = a3;
  if (internalQueue != v4)
  {
    objc_storeStrong(&internalQueue, a3);
    if (internalQueue)
    {
      +[AppTracker stopFlowPeriodTimer];
      +[AppTracker startFlowPeriodTimer];
    }
  }
}

+ (void)stopFlowPeriodTimer
{
  if (flowPeriodTimer)
  {
    dispatch_source_cancel(flowPeriodTimer);
    v2 = flowPeriodTimer;
    flowPeriodTimer = 0;
  }
}

+ (void)startFlowPeriodTimer
{
  if (internalQueue)
  {
    v2 = flowPeriodTimer == 0;
  }

  else
  {
    v2 = 0;
  }

  if (v2)
  {
    v3 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, internalQueue);
    v4 = flowPeriodTimer;
    flowPeriodTimer = v3;

    dispatch_source_set_timer(flowPeriodTimer, 0, 0x34630B8A000uLL, 0);
    dispatch_source_set_event_handler(flowPeriodTimer, &__block_literal_global_325);
    v5 = flowPeriodTimer;

    dispatch_resume(v5);
  }
}

void __34__AppTracker_startFlowPeriodTimer__block_invoke()
{
  v23 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v0 = [cellTracker trackerCache];
  v1 = [v0 allValues];

  v2 = [v1 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v18;
    do
    {
      v5 = 0;
      do
      {
        if (*v18 != v4)
        {
          objc_enumerationMutation(v1);
        }

        [*(*(&v17 + 1) + 8 * v5++) resetFlowCountPolicyInfo];
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v3);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [wifiTracker trackerCache];
  v7 = [v6 allValues];

  v8 = [v7 countByEnumeratingWithState:&v13 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v13 + 1) + 8 * v11++) resetFlowCountPolicyInfo];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v21 count:16];
    }

    while (v9);
  }

  v12 = *MEMORY[0x277D85DE8];
}

+ (void)dumpState
{
  v2 = flowLogHandle;
  if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEFAULT, "InterfaceTypeTracker for cellular:", buf, 2u);
  }

  [cellTracker _dumpState];
  v3 = flowLogHandle;
  if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEFAULT, "InterfaceTypeTracker for wifi:", v6, 2u);
  }

  [wifiTracker _dumpState];
  v4 = flowLogHandle;
  if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "InterfaceTypeTracker for companion link:", v5, 2u);
  }

  [companionLinkTracker _dumpState];
}

- (int)configureInstance:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"CELL_POLICIES"];
  v5 = [v3 objectForKeyedSubscript:@"WIFI_POLICIES"];
  v6 = [v3 objectForKeyedSubscript:@"COMPANION_LINK_POLICIES"];

  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [AppTracker configureCellPolicies:v4];
    }
  }

  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [AppTracker configureWifiPolicies:v5];
    }
  }

  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [AppTracker configureCompanionLinkPolicies:v6];
    }
  }

  return 0;
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __28__AppTracker_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_pred_41 != -1)
  {
    dispatch_once(&sharedInstance_pred_41, block);
  }

  v2 = sharedInstance_sharedInstance_43;

  return v2;
}

BOOL __28__AppTracker_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance_sharedInstance_43;
  sharedInstance_sharedInstance_43 = v1;

  v3 = sharedInstance_sharedInstance_43;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [ConfigurationHandler setConfigurationObject:v3 forName:v5];

  [ManagedEventTransport setInfoProvider:sharedInstance_sharedInstance_43 forId:3];
  [ManagedEventTransport setInfoProvider:sharedInstance_sharedInstance_43 forId:4];
  [ManagedEventTransport setInfoProvider:sharedInstance_sharedInstance_43 forId:5];
  [ManagedEventTransport setInfoProvider:sharedInstance_sharedInstance_43 forId:9];
  [ManagedEventTransport setInfoProvider:sharedInstance_sharedInstance_43 forId:10];
  v6 = sharedInstance_sharedInstance_43;

  return [ManagedEventTransport setInfoProvider:v6 forId:11];
}

+ (id)configureClass:(id)a3
{
  v3 = a3;
  v4 = +[AppTracker sharedInstance];
  [v4 configureInstance:v3];

  return v4;
}

@end