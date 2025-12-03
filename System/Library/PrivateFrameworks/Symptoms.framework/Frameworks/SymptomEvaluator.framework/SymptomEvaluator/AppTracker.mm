@interface AppTracker
+ (id)configureClass:(id)class;
+ (id)ifTrackerForFlow:(id)flow;
+ (id)sharedInstance;
+ (void)beginTrafficClassFlowSnapshot;
+ (void)dumpState;
+ (void)endTrafficClassFlowSnapshot:(id)snapshot periodUsecs:(unint64_t)usecs reply:(id)reply;
+ (void)getWifiNetworkActivity:(id)activity;
+ (void)initialize;
+ (void)noteFlow:(id)flow withDelegatee:(id)delegatee snapshot:(id)snapshot;
+ (void)noteFlow:(id)flow withOwner:(id)owner snapshot:(id)snapshot;
+ (void)noteFlowEnding:(id)ending withSnapshot:(id)snapshot;
+ (void)pruneCache:(id)cache;
+ (void)resetTrafficClassFlowSnapshot;
+ (void)setInternalQueue:(id)queue;
+ (void)startFlowPeriodTimer;
+ (void)stopFlowPeriodTimer;
- (AppTracker)initWithUserName:(id)name interfaceType:(unsigned __int8)type;
- (NSString)description;
- (int)configureInstance:(id)instance;
- (void)_generateInfoForId:(unint64_t)id context:(const char *)context uuid:(id)uuid completionBlock:(id)block;
- (void)addFlow:(id)flow;
- (void)addImmediateFlow:(id)flow;
- (void)adjustFlowLinkages:(id)linkages;
- (void)adjustImmediateFlowLinkages:(id)linkages;
- (void)checkForFlowCountPolicyViolation;
- (void)generateInfoForId:(unint64_t)id context:(const char *)context uuid:(id)uuid completionBlock:(id)block;
- (void)removeFlow:(id)flow;
- (void)removeImmediateFlow:(id)flow;
- (void)resetFlowCountPolicyInfo;
- (void)sendFlowCount:(unint64_t)count exceededPolicyThreshold:(unint64_t)threshold isLikelyThunderingHerd:(BOOL)herd;
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
  userName = [(AppTracker *)self userName];
  v7 = [v5 maxConnectionPolicyForTarget:userName];

  if (v7)
  {
    integerValue = [v7 integerValue];
    if (integerValue)
    {
      v9 = integerValue;
    }

    else
    {
      v9 = 0x7FFFFFFFFFFFFFFFLL;
    }

LABEL_18:
    madePrimaryDate = [v4 madePrimaryDate];
    v14 = madePrimaryDate;
    if (madePrimaryDate)
    {
      if (!self->_sentThunderingHerdFlowCountExceededPolicySymptom)
      {
        [madePrimaryDate timeIntervalSinceNow];
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
              userName2 = [(AppTracker *)self userName];
              v22 = userName2;
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

              *&v28[4] = userName2;
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

  specificPolicy = [(AppTracker *)self specificPolicy];
  if (specificPolicy)
  {
    defaultPolicy = specificPolicy;
    [specificPolicy maximumConnectionsPerHour];
LABEL_14:
    maximumConnectionsPerHour = [defaultPolicy maximumConnectionsPerHour];
    if (maximumConnectionsPerHour)
    {
      v9 = maximumConnectionsPerHour;
    }

    else
    {
      v9 = 0x7FFFFFFFFFFFFFFFLL;
    }

    goto LABEL_18;
  }

  if (v4)
  {
    defaultPolicy = [v4 defaultPolicy];
    if (defaultPolicy)
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

- (AppTracker)initWithUserName:(id)name interfaceType:(unsigned __int8)type
{
  nameCopy = name;
  v11.receiver = self;
  v11.super_class = AppTracker;
  v8 = [(AppTracker *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_userName, name);
    v9->_functionalInterfaceType = type;
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

+ (void)noteFlowEnding:(id)ending withSnapshot:(id)snapshot
{
  v32 = *MEMORY[0x277D85DE8];
  endingCopy = ending;
  snapshotCopy = snapshot;
  ultimateUser = [endingCopy ultimateUser];

  if (ultimateUser)
  {
    ultimateUser2 = [endingCopy ultimateUser];
    [ultimateUser2 removeFlow:endingCopy];
  }

  immediateUser = [endingCopy immediateUser];

  if (immediateUser)
  {
    immediateUser2 = [endingCopy immediateUser];
    [immediateUser2 removeImmediateFlow:endingCopy];
  }

  trackerForStatistics = [endingCopy trackerForStatistics];

  if (trackerForStatistics)
  {
    trackerForStatistics2 = [endingCopy trackerForStatistics];
    [trackerForStatistics2 setPrevFlows:{objc_msgSend(trackerForStatistics2, "prevFlows") + 1}];

    trackerForStatistics3 = [endingCopy trackerForStatistics];
    [snapshotCopy flowDuration];
    v15 = v14;
    [trackerForStatistics3 prevFlowDurations];
    [trackerForStatistics3 setPrevFlowDurations:v15 + v16];

    if ([endingCopy ifType] == 1)
    {
      trackerForStatistics4 = [endingCopy trackerForStatistics];
      [trackerForStatistics4 setPrevFlowRxBytes:{objc_msgSend(trackerForStatistics4, "prevFlowRxBytes") + objc_msgSend(snapshotCopy, "rxWiFiBytes")}];

      trackerForStatistics5 = [endingCopy trackerForStatistics];
      txWiFiBytes = [snapshotCopy txWiFiBytes];
LABEL_10:
      [trackerForStatistics5 setPrevFlowTxBytes:[trackerForStatistics5 prevFlowTxBytes]+ txWiFiBytes];
LABEL_11:

      goto LABEL_12;
    }

    if ([endingCopy ifType] == 2)
    {
      trackerForStatistics6 = [endingCopy trackerForStatistics];
      [trackerForStatistics6 setPrevFlowRxBytes:{objc_msgSend(trackerForStatistics6, "prevFlowRxBytes") + objc_msgSend(snapshotCopy, "rxCellularBytes")}];

      trackerForStatistics5 = [endingCopy trackerForStatistics];
      txWiFiBytes = [snapshotCopy txCellularBytes];
      goto LABEL_10;
    }

    v29 = flowLogHandle;
    if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_ERROR))
    {
      trackerForStatistics5 = v29;
      v30 = 134217984;
      ifType = [endingCopy ifType];
      _os_log_impl(&dword_23255B000, trackerForStatistics5, OS_LOG_TYPE_ERROR, "noteFlowEnding called for unexpected interface %ld", &v30, 0xCu);
      goto LABEL_11;
    }
  }

LABEL_12:
  v21 = [AppTracker ifTrackerForFlow:endingCopy];
  if (v21)
  {
    if ([endingCopy classificationChangeTimer])
    {
      v22 = flowLogHandle;
      if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_DEBUG))
      {
        v23 = v22;
        flowId = [endingCopy flowId];
        v30 = 134217984;
        ifType = flowId;
        _os_log_impl(&dword_23255B000, v23, OS_LOG_TYPE_DEBUG, "Flow %lld cancel lw timer on close", &v30, 0xCu);
      }

      lwTimer = [v21 lwTimer];
      [lwTimer cancel:{objc_msgSend(endingCopy, "classificationChangeTimer")}];
    }

    observer = [v21 observer];
    v27 = observer;
    if (observer)
    {
      [observer noteFlow:endingCopy snapshot:0 present:0 trackedBy:0];
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)sendFlowCount:(unint64_t)count exceededPolicyThreshold:(unint64_t)threshold isLikelyThunderingHerd:(BOOL)herd
{
  herdCopy = herd;
  userName = [(AppTracker *)self userName];
  uTF8String = [userName UTF8String];

  internal_symptom_new(405506);
  internal_symptom_set_qualifier();
  internal_symptom_set_qualifier();
  internal_symptom_set_qualifier();
  [MEMORY[0x277D6B3E0] nwInterfaceTypeForNWFunctionalInterfaceType:self->_functionalInterfaceType];
  internal_symptom_set_qualifier();
  internal_symptom_set_qualifier();
  if (uTF8String)
  {
    strlen(uTF8String);
    internal_symptom_set_additional_qualifier();
  }

  internal_symptom_set_qualifier();
  internal_symptom_send();
  v9 = 9;
  if (herdCopy)
  {
    v9 = 10;
  }

  *(&self->super.isa + v9) = 1;
}

- (void)addFlow:(id)flow
{
  flowCopy = flow;
  ++self->_flowsForSelf;
  *&self->_flowsPerPeriod = vadd_s32(*&self->_flowsPerPeriod, 0x100000001);
  if (self->_isADaemon)
  {
    [(AppTracker *)self checkForFlowCountPolicyViolation];
  }

  [flowCopy setUltimateUser:self];
}

- (void)removeFlow:(id)flow
{
  --self->_flowsForSelf;
  [flow setUltimateUser:0];
  date = [MEMORY[0x277CBEAA8] date];
  timestamp = self->_timestamp;
  self->_timestamp = date;

  MEMORY[0x2821F96F8](date, timestamp);
}

- (void)adjustFlowLinkages:(id)linkages
{
  linkagesCopy = linkages;
  ultimateUser = [linkagesCopy ultimateUser];

  if (ultimateUser != self)
  {
    ultimateUser2 = [linkagesCopy ultimateUser];

    if (ultimateUser2)
    {
      ultimateUser3 = [linkagesCopy ultimateUser];
      [ultimateUser3 removeFlow:linkagesCopy];
    }

    [(AppTracker *)self addFlow:linkagesCopy];
  }
}

- (void)addImmediateFlow:(id)flow
{
  flowCopy = flow;
  *&self->_flowsForOthers = vadd_s32(*&self->_flowsForOthers, 0x100000001);
  ++self->_flowsPerPeriodAfterMadePrimary;
  if (self->_isADaemon)
  {
    [(AppTracker *)self checkForFlowCountPolicyViolation];
  }

  [flowCopy setImmediateUser:self];
}

- (void)removeImmediateFlow:(id)flow
{
  --self->_flowsForOthers;
  ++self->_prevFlowsForOthers;
  [flow setImmediateUser:0];
}

- (void)adjustImmediateFlowLinkages:(id)linkages
{
  v17 = *MEMORY[0x277D85DE8];
  linkagesCopy = linkages;
  immediateUser = [linkagesCopy immediateUser];

  if (immediateUser != self)
  {
    immediateUser2 = [linkagesCopy immediateUser];

    if (immediateUser2)
    {
      v7 = flowLogHandle;
      if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v8 = v7;
        flowId = [linkagesCopy flowId];
        ultimateUser = [linkagesCopy ultimateUser];
        v13 = 134218242;
        v14 = flowId;
        v15 = 2112;
        v16 = ultimateUser;
        _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEFAULT, "Flow %llu, remove from previous AppTracker %@", &v13, 0x16u);
      }

      immediateUser3 = [linkagesCopy immediateUser];
      [immediateUser3 removeImmediateFlow:linkagesCopy];
    }

    [(AppTracker *)self addImmediateFlow:linkagesCopy];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_generateInfoForId:(unint64_t)id context:(const char *)context uuid:(id)uuid completionBlock:(id)block
{
  v19 = *MEMORY[0x277D85DE8];
  uuidCopy = uuid;
  blockCopy = block;
  if (id > 8)
  {
    switch(id)
    {
      case 9uLL:
        date = [MEMORY[0x277CBEAA8] date];
        infoDir = [wifiTracker infoDir];
        (*(blockCopy + 2))(blockCopy, 0, "WiFi AppTracker details", date, "collected on demand", 0, infoDir);
        break;
      case 0xAuLL:
        date = [MEMORY[0x277CBEAA8] date];
        infoDir = [companionLinkTracker infoDir];
        (*(blockCopy + 2))(blockCopy, 0, "CompanionLink AppTracker details", date, "collected on demand", 0, infoDir);
        break;
      case 0xBuLL:
        date = [MEMORY[0x277CBEAA8] date];
        infoDir = [wifiTracker observer];
        v11InfoDir = [infoDir infoDir];
        (*(blockCopy + 2))(blockCopy, 0, "WiFi AppAware data", date, "collected on demand", 0, v11InfoDir);

        break;
      default:
        goto LABEL_12;
    }

LABEL_17:

    goto LABEL_18;
  }

  switch(id)
  {
    case 3uLL:
      date = [MEMORY[0x277CBEAA8] date];
      infoDir = [cellTracker infoDir];
      (*(blockCopy + 2))(blockCopy, 0, "AppTracker details", date, "collected on demand", 0, infoDir);
      goto LABEL_17;
    case 4uLL:
      +[AppTracker beginTrafficClassFlowSnapshot];
      date = [MEMORY[0x277CBEAA8] date];
      (*(blockCopy + 2))(blockCopy, 0, "Snapshot started", date, "on demand", 0, MEMORY[0x277CBEC10]);
      goto LABEL_18;
    case 5uLL:
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __62__AppTracker__generateInfoForId_context_uuid_completionBlock___block_invoke;
      v16[3] = &__block_descriptor_40_e26_v32__0I8Q12__NSArray_20B28l;
      v16[4] = 5;
      [AppTracker endTrafficClassFlowSnapshot:MEMORY[0x277D85CD0] periodUsecs:-1 reply:v16];
      date = [MEMORY[0x277CBEAA8] date];
      (*(blockCopy + 2))(blockCopy, 0, "Snapshot details requested", date, "on demand", 0, MEMORY[0x277CBEC10]);
LABEL_18:

      goto LABEL_19;
  }

LABEL_12:
  date2 = [MEMORY[0x277CBEAA8] date];
  (*(blockCopy + 2))(blockCopy, 0, "Unrecognized managed event request", date2, "on demand", 0, MEMORY[0x277CBEC10]);

  v14 = scoringLogHandle;
  if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    idCopy = id;
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

- (void)generateInfoForId:(unint64_t)id context:(const char *)context uuid:(id)uuid completionBlock:(id)block
{
  uuidCopy = uuid;
  blockCopy = block;
  v12 = internalQueue;
  if (internalQueue)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __61__AppTracker_generateInfoForId_context_uuid_completionBlock___block_invoke;
    block[3] = &unk_27898AFB8;
    block[4] = self;
    idCopy = id;
    contextCopy = context;
    v15 = uuidCopy;
    v16 = blockCopy;
    dispatch_async(v12, block);
  }

  else
  {
    date = [MEMORY[0x277CBEAA8] date];
    (*(blockCopy + 2))(blockCopy, 0, "No AppTracker queue to handle request", date, "on demand", 0, MEMORY[0x277CBEC10]);
  }
}

+ (id)ifTrackerForFlow:(id)flow
{
  v13 = *MEMORY[0x277D85DE8];
  flowCopy = flow;
  if (([flowCopy flags] & 0x400) != 0)
  {
    v4 = companionLinkTracker;
    goto LABEL_5;
  }

  if ([flowCopy ifType] == 1)
  {
    v4 = wifiTracker;
LABEL_5:
    v5 = v4;
    goto LABEL_6;
  }

  if ([flowCopy ifType] == 2)
  {
    v4 = cellTracker;
    goto LABEL_5;
  }

  ifType = [flowCopy ifType];
  v9 = flowLogHandle;
  if (ifType == 3)
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
    ifType2 = [flowCopy ifType];
    _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_ERROR, "Don't have a tracker for this flow's interface type: %ld", &v11, 0xCu);
  }

  v5 = 0;
LABEL_6:

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (void)pruneCache:(id)cache
{
  v21 = *MEMORY[0x277D85DE8];
  cacheCopy = cache;
  allKeys = [cacheCopy allKeys];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [allKeys countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(allKeys);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = [cacheCopy objectForKey:v9];
        if (![v10 flowsForSelf] && !objc_msgSend(v10, "flowsForOthers"))
        {
          specificPolicy = [v10 specificPolicy];

          if (!specificPolicy)
          {
            v12 = v10[9];
            v13 = v12;
            if (v12)
            {
              [v12 timeIntervalSinceNow];
              if (v14 <= -86400.0)
              {
                [cacheCopy removeObjectForKey:v9];
              }
            }
          }
        }
      }

      v6 = [allKeys countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  v15 = *MEMORY[0x277D85DE8];
}

+ (void)noteFlow:(id)flow withDelegatee:(id)delegatee snapshot:(id)snapshot
{
  flowCopy = flow;
  delegateeCopy = delegatee;
  snapshotCopy = snapshot;
  v9 = [AppTracker ifTrackerForFlow:flowCopy];
  v10 = v9;
  if (v9)
  {
    [v9 noteFlow:flowCopy withDelegatee:delegateeCopy snapshot:snapshotCopy];
  }
}

+ (void)noteFlow:(id)flow withOwner:(id)owner snapshot:(id)snapshot
{
  flowCopy = flow;
  ownerCopy = owner;
  snapshotCopy = snapshot;
  v9 = [AppTracker ifTrackerForFlow:flowCopy];
  v10 = v9;
  if (v9)
  {
    [v9 noteFlow:flowCopy withOwner:ownerCopy snapshot:snapshotCopy];
  }
}

+ (void)getWifiNetworkActivity:(id)activity
{
  if (wifiTracker)
  {
    [wifiTracker getNetworkActivity:activity];
  }

  else
  {
    (*(activity + 2))(activity, 0x8000, 0, @"Couldn't kick off data refresh, no wifi tracking", 0.0);
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

+ (void)endTrafficClassFlowSnapshot:(id)snapshot periodUsecs:(unint64_t)usecs reply:(id)reply
{
  snapshotCopy = snapshot;
  replyCopy = reply;
  v9 = internalQueue;
  if (internalQueue)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60__AppTracker_endTrafficClassFlowSnapshot_periodUsecs_reply___block_invoke;
    block[3] = &unk_27898E858;
    v10 = &v16;
    v16 = snapshotCopy;
    usecsCopy = usecs;
    v17 = replyCopy;
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
    v13 = replyCopy;
    dispatch_async(snapshotCopy, v12);
  }
}

+ (void)resetTrafficClassFlowSnapshot
{
  if (internalQueue)
  {
    dispatch_async(internalQueue, &__block_literal_global_323);
  }
}

+ (void)setInternalQueue:(id)queue
{
  queueCopy = queue;
  if (internalQueue != queueCopy)
  {
    objc_storeStrong(&internalQueue, queue);
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

- (int)configureInstance:(id)instance
{
  instanceCopy = instance;
  v4 = [instanceCopy objectForKeyedSubscript:@"CELL_POLICIES"];
  v5 = [instanceCopy objectForKeyedSubscript:@"WIFI_POLICIES"];
  v6 = [instanceCopy objectForKeyedSubscript:@"COMPANION_LINK_POLICIES"];

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
  block[4] = self;
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

+ (id)configureClass:(id)class
{
  classCopy = class;
  v4 = +[AppTracker sharedInstance];
  [v4 configureInstance:classCopy];

  return v4;
}

@end