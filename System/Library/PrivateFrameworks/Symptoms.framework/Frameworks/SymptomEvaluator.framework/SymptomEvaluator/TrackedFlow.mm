@interface TrackedFlow
+ (id)currentCellUsers;
+ (id)getPolledFlowInfo;
+ (id)ownersOfFlowsPassingTest:(id)a3;
+ (id)startTrackingForKey:(id)a3;
+ (unint64_t)activeFlowsCountForType:(int64_t)a3;
+ (unint64_t)cellExpensiveUsageGrandTallyAfterAdding:(unint64_t)a3;
+ (unint64_t)cellUsageGrandTallyAfterAdding:(unint64_t)a3;
+ (unint64_t)countFlowsPassingTest:(id)a3;
+ (unint64_t)foregroundNonLocalUsageGrandTallyAfterAdding:(unint64_t)a3;
+ (unint64_t)reverseRnfUsageGrandTallyAfterAdding:(unint64_t)a3;
+ (unint64_t)rnfExpensiveUsageGrandTallyAfterAdding:(unint64_t)a3;
+ (unint64_t)rnfUsageGrandTallyAfterAdding:(unint64_t)a3;
+ (unint64_t)wifiNonLocalUsageGrandTallyAfterAdding:(unint64_t)a3;
+ (void)_dumpStateOfType:(int64_t)a3;
+ (void)_notifyPollingEnd;
+ (void)_wifiStallCheck;
+ (void)_wifiStallCheckStarted;
+ (void)dumpState;
+ (void)initialize;
+ (void)removeTrackingForKey:(id)a3 fromSnapshot:(id)a4;
+ (void)startPollingWifiFlows:(unsigned int)a3;
+ (void)stopPollingWifiFlows;
- (BOOL)inheritEarlyProperties:(id)a3;
- (TrackedFlow)init;
- (id)description;
- (void)_decrementCounters;
- (void)_takeSnapshot;
- (void)_updateScoreholder:(scoreHolder *)a3;
@end

@implementation TrackedFlow

- (TrackedFlow)init
{
  v6.receiver = self;
  v6.super_class = TrackedFlow;
  v2 = [(TrackedFlow *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEAA8] date];
    startingTimestamp = v2->_startingTimestamp;
    v2->_startingTimestamp = v3;
  }

  return v2;
}

- (void)_decrementCounters
{
  v11 = *MEMORY[0x277D85DE8];
  if (allFlows <= 0)
  {
    v3 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 67109120;
      v10 = allFlows;
      _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEFAULT, "allFlows would be negative, currently %d", &v9, 8u);
    }

    allFlows = 1;
  }

  atomic_fetch_add_explicit(&allFlows, 0xFFFFFFFF, memory_order_relaxed);
  if ((self->_flags & 0x200) != 0)
  {
    ifType = self->_ifType;
    if (ifType > 1)
    {
      if (ifType == 3)
      {
        v5 = &wiredFlowCount;
        goto LABEL_17;
      }

      if (ifType == 2)
      {
        v5 = &cellFlowCount;
        goto LABEL_17;
      }
    }

    else
    {
      if (!ifType)
      {
        v5 = &otherFlowCount;
        goto LABEL_17;
      }

      if (ifType == 1)
      {
        v5 = &wifiFlowCount;
LABEL_17:
        atomic_fetch_add(v5, 0xFFFFFFFFFFFFFFFFLL);
        goto LABEL_18;
      }
    }

    v6 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
    {
      v7 = self->_ifType;
      v9 = 67109120;
      v10 = v7;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_ERROR, "Unexpected interface type %d when decrementing counters", &v9, 8u);
    }
  }

LABEL_18:
  v8 = *MEMORY[0x277D85DE8];
}

+ (void)initialize
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = liveSocketCache;
  liveSocketCache = v2;

  MEMORY[0x2821F96F8](v2, v3);
}

- (id)description
{
  v3 = [(TrackedFlow *)self immediateUser];
  v4 = [(TrackedFlow *)self ultimateUser];
  flags = self->_flags;
  if (flags)
  {
    v6 = "?";
    v7 = "udp4";
    v8 = "udp6";
    if ((flags & 0x40) == 0)
    {
      v8 = "udp?";
    }

    if ((flags & 0x10) == 0)
    {
      v7 = v8;
    }

    if (flags)
    {
      v6 = v7;
    }

    v9 = "tcp4";
    v10 = "tcp6";
    if ((flags & 0x40) == 0)
    {
      v10 = "tcp?";
    }

    if ((flags & 0x10) == 0)
    {
      v9 = v10;
    }

    if ((flags & 2) != 0)
    {
      v11 = v9;
    }

    else
    {
      v11 = v6;
    }

    v31 = v11;
    v12 = self->_ifType - 1;
    if (v12 > 2)
    {
      v13 = "unknown";
    }

    else
    {
      v13 = off_278990028[v12];
    }

    v30 = v13;
    v20 = MEMORY[0x277CCACA8];
    flowId = self->_flowId;
    ownerKey = self->_ownerKey;
    [(NSDate *)self->_startingTimestamp timeIntervalSince1970];
    v17 = timeStringMillisecondsFromTimeInterval(v23);
    [(NSDate *)self->_startingTimestamp timeIntervalSinceNow];
    v25 = v24;
    if (v3)
    {
      v26 = [v3 userName];
    }

    else
    {
      v26 = @"-";
    }

    v27 = -v25;
    if (v4)
    {
      v28 = [v4 userName];
    }

    else
    {
      v28 = @"-";
    }

    v19 = [v20 stringWithFormat:@"TrackedFlow %llu %s %s flow owner %@ start %@ duration %.3f trackers: self %p %@ other %p %@ rx pkts %lld tx pkts %lld", flowId, v30, v31, ownerKey, v17, *&v27, v3, v26, v4, v28, -[TrackedFlowCounts rxPkts](self, "rxPkts"), -[TrackedFlowCounts txPkts](self, "txPkts")];
    if (v4)
    {
    }

    if (v3)
    {
    }
  }

  else
  {
    v14 = MEMORY[0x277CCACA8];
    v15 = [(TrackedFlow *)self flowId];
    [(NSDate *)self->_startingTimestamp timeIntervalSince1970];
    v17 = formattedDateStringForTimeInterval(v16);
    [(NSDate *)self->_startingTimestamp timeIntervalSinceNow];
    v19 = [v14 stringWithFormat:@"TrackedFlow %llu uninitialized, created %@ duration %f", v15, v17, -v18];
  }

  return v19;
}

- (BOOL)inheritEarlyProperties:(id)a3
{
  v55[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if ((self->_flags & 0x200) == 0)
  {
    if ([v4 interfaceWiFi])
    {
      v6 = 1;
    }

    else if ([v5 interfaceCellular])
    {
      v6 = 2;
    }

    else
    {
      v9 = [v5 interfaceWired];
      v6 = 3;
      if (!v9)
      {
        v6 = 0;
      }
    }

    self->_ifType = v6;
    if ([v5 interfaceCompanionLink])
    {
      self->_flags |= 0x400u;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      self->_flags |= 2u;
      v10 = v5;
      v11 = [v10 TCPState];
      v12 = [v11 isEqualToString:*MEMORY[0x277D2CB78]];

      if (v12)
      {
        v13 = flowLogHandle;
        if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_DEBUG))
        {
          *v51 = 134217984;
          *&v51[4] = self;
          _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_DEBUG, "Ignoring TCP LISTEN source %p", v51, 0xCu);
        }

        goto LABEL_36;
      }

      if (!self->_ifType && (self->_flags & 0x400) == 0)
      {
        v18 = flowLogHandle;
        if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_ERROR))
        {
          v19 = v18;
          v20 = [v10 verboseDescription];
          *v51 = 138412290;
          *&v51[4] = v20;
          _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_ERROR, "Ignoring TCP source of unknown interface type, not companionlink %@", v51, 0xCu);
        }

        v21 = +[SystemSettingsRelay defaultRelay];
        if (([v21 autoBugCaptureEnabled] & 1) == 0)
        {
          goto LABEL_33;
        }

        v22 = +[SystemProperties sharedInstance];
        v23 = [v22 internalBuild];

        if (v23)
        {
          v24 = objc_alloc_init(MEMORY[0x277D6AFC8]);
          v21 = v24;
          if (v24)
          {
            v25 = [v24 signatureWithDomain:*MEMORY[0x277D6B020] type:*MEMORY[0x277D6B220] subType:@"TCP Snapshot" subtypeContext:@"Unknown Interface Type" detectedProcess:@"symptomsd" triggerThresholdValues:0];
            v54 = *MEMORY[0x277D6B010];
            v52 = *MEMORY[0x277D6B008];
            v53 = &unk_2847EFD70;
            v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
            v55[0] = v26;
            v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v55 forKeys:&v54 count:1];
            [v21 snapshotWithSignature:v25 duration:0 events:0 payload:v27 actions:&__block_literal_global_54 reply:0.0];
          }

LABEL_33:
        }

LABEL_36:

        goto LABEL_37;
      }

      [(TrackedFlow *)self setTrafficMgtFlags:[v10 trafficManagementFlags]];
      [(TrackedFlow *)self setTrafficClassFlags:[v10 trafficClass]];

      goto LABEL_39;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v28 = flowLogHandle;
      if (!os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_ERROR))
      {
LABEL_37:
        v8 = 0;
        goto LABEL_66;
      }

      v10 = v28;
      v29 = objc_opt_class();
      v30 = NSStringFromClass(v29);
      *v51 = 134218242;
      *&v51[4] = self;
      *&v51[12] = 2112;
      *&v51[14] = v30;
      _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_ERROR, "Ignoring source %p with unknown snapshot type %@", v51, 0x16u);

      goto LABEL_36;
    }

    self->_flags |= 1u;
    if (self->_ifType)
    {
LABEL_39:
      if (![v5 processID])
      {
        v35 = flowLogHandle;
        if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_ERROR))
        {
          *v51 = 134218242;
          *&v51[4] = self;
          *&v51[12] = 2112;
          *&v51[14] = v5;
          _os_log_impl(&dword_23255B000, v35, OS_LOG_TYPE_ERROR, "Ignoring source %p, snapshot is from kernel %@", v51, 0x16u);
        }

        goto LABEL_37;
      }

      v31 = [v5 remoteAddress];
      v32 = [v31 bytes];
      if (v32)
      {
        v33 = *(v32 + 1);
        if (v33 == 30)
        {
          v34 = self->_flags | 0x40;
          goto LABEL_49;
        }

        if (v33 == 2)
        {
          v34 = self->_flags | 0x10;
LABEL_49:
          self->_flags = v34;
          goto LABEL_50;
        }
      }

      v36 = rnfLogHandle;
      if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
      {
        *v51 = 0;
        _os_log_impl(&dword_23255B000, v36, OS_LOG_TYPE_ERROR, "Unknown address family", v51, 2u);
      }

LABEL_50:
      v37 = analyticsLogHandle;
      if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
      {
        v38 = v37;
        v39 = [v5 flowStartTimestamp];
        v40 = [(TrackedFlow *)self startingTimestamp];
        [v39 timeIntervalSinceDate:v40];
        *v51 = 134218240;
        *&v51[4] = self;
        *&v51[12] = 2048;
        *&v51[14] = v41;
        _os_log_impl(&dword_23255B000, v38, OS_LOG_TYPE_DEBUG, "Adjusting flow start time for %p, delta: %f", v51, 0x16u);
      }

      v42 = [v5 flowStartTimestamp];
      [(TrackedFlow *)self setStartingTimestamp:v42];

      self->_flags |= 0x200u;
      ifType = self->_ifType;
      if (ifType > 1)
      {
        if (ifType == 3)
        {
          v44 = &wiredFlowCount;
          goto LABEL_64;
        }

        if (ifType == 2)
        {
          v8 = 1;
          atomic_fetch_add(&cellFlowCount, 1uLL);
LABEL_65:

          goto LABEL_66;
        }
      }

      else
      {
        if (!ifType)
        {
          v44 = &otherFlowCount;
          goto LABEL_64;
        }

        if (ifType == 1)
        {
          v44 = &wifiFlowCount;
LABEL_64:
          v8 = 1;
          atomic_fetch_add(v44, 1uLL);
          goto LABEL_65;
        }
      }

      v45 = analyticsLogHandle;
      if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
      {
        v46 = self->_ifType;
        *v51 = 67109120;
        *&v51[4] = v46;
        _os_log_impl(&dword_23255B000, v45, OS_LOG_TYPE_ERROR, "Unexpected interface type %d when inheriting properties", v51, 8u);
      }

      v8 = 0;
      goto LABEL_65;
    }

    if ([v5 rxCellularBytes] || objc_msgSend(v5, "txCellularBytes"))
    {
      self->_ifType = 2;
      v14 = flowLogHandle;
      if (!os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_INFO))
      {
        goto LABEL_39;
      }

      *v51 = 138412290;
      *&v51[4] = v5;
      v15 = "UDP TrackedFlow has inferred interface type cell from snapshot %@";
    }

    else if ([v5 rxWiFiBytes] || objc_msgSend(v5, "txWiFiBytes"))
    {
      self->_ifType = 1;
      v14 = flowLogHandle;
      if (!os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_INFO))
      {
        goto LABEL_39;
      }

      *v51 = 138412290;
      *&v51[4] = v5;
      v15 = "UDP TrackedFlow has inferred interface type wifi from snapshot %@";
    }

    else
    {
      if (![v5 rxWiredBytes] && !objc_msgSend(v5, "txWiredBytes"))
      {
        if (([v5 interfaceCompanionLinkBluetooth] & 1) != 0 || objc_msgSend(v5, "rxCompanionLinkBluetoothBytes") || objc_msgSend(v5, "txCompanionLinkBluetoothBytes"))
        {
          v49 = flowLogHandle;
          if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_INFO))
          {
            *v51 = 138412290;
            *&v51[4] = v5;
            _os_log_impl(&dword_23255B000, v49, OS_LOG_TYPE_INFO, "UDP TrackedFlow has interface type Bluetooth from snapshot %@", v51, 0xCu);
          }

          self->_ifType = 0;
          goto LABEL_39;
        }

        v50 = flowLogHandle;
        if (!os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_39;
        }

        *v51 = 138412290;
        *&v51[4] = v5;
        v15 = "UDP TrackedFlow cannot infer interface type from snapshot %@";
        v16 = v50;
        v17 = OS_LOG_TYPE_DEFAULT;
LABEL_24:
        _os_log_impl(&dword_23255B000, v16, v17, v15, v51, 0xCu);
        goto LABEL_39;
      }

      self->_ifType = 3;
      v14 = flowLogHandle;
      if (!os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_INFO))
      {
        goto LABEL_39;
      }

      *v51 = 138412290;
      *&v51[4] = v5;
      v15 = "UDP TrackedFlow has inferred interface type wired from snapshot %@";
    }

    v16 = v14;
    v17 = OS_LOG_TYPE_INFO;
    goto LABEL_24;
  }

  v7 = flowLogHandle;
  if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_ERROR))
  {
    *v51 = 134217984;
    *&v51[4] = v5;
    _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_ERROR, "Double call to inheritEarlyProperties for snapshot %p", v51, 0xCu);
  }

  v8 = 1;
LABEL_66:

  v47 = *MEMORY[0x277D85DE8];
  return v8;
}

void __38__TrackedFlow_inheritEarlyProperties___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_INFO, "TCP Snapshot Unknown Interface Type response: %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

+ (unint64_t)activeFlowsCountForType:(int64_t)a3
{
  v3 = a3;
  v9 = *MEMORY[0x277D85DE8];
  if (a3 > 1)
  {
    if (a3 == 3)
    {
      v4 = &wiredFlowCount;
      goto LABEL_13;
    }

    if (a3 == 2)
    {
      v4 = &cellFlowCount;
      goto LABEL_13;
    }
  }

  else
  {
    if (!a3)
    {
      v4 = &otherFlowCount;
      goto LABEL_13;
    }

    if (a3 == 1)
    {
      v4 = &wifiFlowCount;
LABEL_13:
      result = atomic_load(v4);
      goto LABEL_14;
    }
  }

  v5 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
  {
    v8[0] = 67109120;
    v8[1] = v3;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_ERROR, "Unexpected interface type %d when requesting current flow counts", v8, 8u);
  }

  result = 0;
LABEL_14:
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

+ (unint64_t)cellUsageGrandTallyAfterAdding:(unint64_t)a3
{
  if (a3)
  {
    atomic_fetch_add(&cellUsageGrandTally, a3);
  }

  return atomic_load(&cellUsageGrandTally);
}

+ (unint64_t)cellExpensiveUsageGrandTallyAfterAdding:(unint64_t)a3
{
  if (a3)
  {
    atomic_fetch_add(&cellExpensiveUsageGrandTally, a3);
  }

  return atomic_load(&cellExpensiveUsageGrandTally);
}

+ (unint64_t)rnfUsageGrandTallyAfterAdding:(unint64_t)a3
{
  if (a3)
  {
    atomic_fetch_add(&rnfUsageGrandTally, a3);
  }

  return atomic_load(&rnfUsageGrandTally);
}

+ (unint64_t)rnfExpensiveUsageGrandTallyAfterAdding:(unint64_t)a3
{
  if (a3)
  {
    atomic_fetch_add(&rnfExpensiveUsageGrandTally, a3);
  }

  return atomic_load(&rnfExpensiveUsageGrandTally);
}

+ (unint64_t)reverseRnfUsageGrandTallyAfterAdding:(unint64_t)a3
{
  if (a3)
  {
    atomic_fetch_add(&reverseRnfUsageGrandTally, a3);
  }

  return atomic_load(&reverseRnfUsageGrandTally);
}

+ (unint64_t)wifiNonLocalUsageGrandTallyAfterAdding:(unint64_t)a3
{
  if (a3)
  {
    atomic_fetch_add(&wifiNonLocalUsageGrandTally, a3);
  }

  return atomic_load(&wifiNonLocalUsageGrandTally);
}

+ (unint64_t)foregroundNonLocalUsageGrandTallyAfterAdding:(unint64_t)a3
{
  if (a3)
  {
    atomic_fetch_add(&foregroundNonLocalUsageGrandTally, a3);
  }

  return atomic_load(&foregroundNonLocalUsageGrandTally);
}

+ (id)startTrackingForKey:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [liveSocketCache objectForKey:v3];
  if (v4)
  {
    v5 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
    {
      v6 = v5;
      v7 = [v3 description];
      v8 = [v7 UTF8String];
      v9 = [v4 description];
      v14 = 136315394;
      v15 = v8;
      v16 = 2080;
      v17 = [v9 UTF8String];
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_ERROR, "startTrackingForKey: creating flow in place of existing flow for same key: %s, flow: %s", &v14, 0x16u);
    }
  }

  v10 = objc_alloc_init(TrackedFlow);

  if (v10)
  {
    atomic_fetch_add_explicit(&allFlows, 1u, memory_order_relaxed);
    [liveSocketCache setObject:v10 forKey:v3];
    -[TrackedFlow setFlowId:](v10, "setFlowId:", [v3 unsignedLongLongValue]);
    v11 = attributionLogHandle;
    if (os_log_type_enabled(attributionLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v14 = 138412290;
      v15 = v3;
      _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEBUG, "startTrackingForKey: creating flow for %@", &v14, 0xCu);
    }
  }

  v12 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (void)removeTrackingForKey:(id)a3 fromSnapshot:(id)a4
{
  v8 = a3;
  v5 = a4;
  v6 = [liveSocketCache objectForKey:v8];
  v7 = v6;
  if (v6)
  {
    [v6 _decrementCounters];
    [AppTracker noteFlowEnding:v7 withSnapshot:v5];
    [liveSocketCache removeObjectForKey:v8];
  }
}

+ (id)currentCellUsers
{
  v23[2] = *MEMORY[0x277D85DE8];
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v2 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v3 = liveSocketCache;
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __31__TrackedFlow_currentCellUsers__block_invoke;
  v13 = &unk_27898FFC8;
  v15 = &v16;
  v4 = v2;
  v14 = v4;
  [v3 enumerateKeysAndObjectsUsingBlock:&v10];
  v22[0] = @"activeTrafficClassFlags";
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{*(v17 + 6), v10, v11, v12, v13}];
  v22[1] = @"activeProcessIdentifiers";
  v23[0] = v5;
  v23[1] = v4;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];

  v7 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = v6;
    _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEFAULT, "reply for current cell users is %@", buf, 0xCu);
  }

  _Block_object_dispose(&v16, 8);
  v8 = *MEMORY[0x277D85DE8];

  return v6;
}

void __31__TrackedFlow_currentCellUsers__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = a3;
  if ([v10 ifType] == 2)
  {
    v4 = [v10 immediateUser];
    if (v4)
    {
      v5 = v4;
    }

    else
    {
      v5 = [v10 ultimateUser];
      if (!v5)
      {
LABEL_7:

        goto LABEL_8;
      }
    }

    v6 = [v10 classification];
    v7 = [v6 disposition];

    if (v7 <= 0x1F)
    {
      *(*(*(a1 + 40) + 8) + 24) |= 1 << v7;
      v8 = *(a1 + 32);
      v9 = [v5 userName];
      [v8 addObject:v9];
    }

    goto LABEL_7;
  }

LABEL_8:
}

+ (id)ownersOfFlowsPassingTest:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = [liveSocketCache allValues];
  v6 = [v5 indexesOfObjectsPassingTest:v3];
  v7 = [v5 objectsAtIndexes:v6];
  v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v7, "count")}];
  if ([v7 count])
  {
    v20 = v4;
    v21 = v3;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v22 objects:v28 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v23;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v23 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v22 + 1) + 8 * i);
          v15 = [v14 ownerKey];

          if (v15)
          {
            v16 = [v14 ownerKey];
            [v8 addObject:v16];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v22 objects:v28 count:16];
      }

      while (v11);
    }

    v4 = v20;
    v3 = v21;
  }

  v17 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = v8;
    _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_DEFAULT, "reply for current flows is %@", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  v18 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (unint64_t)countFlowsPassingTest:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = [liveSocketCache allValues];
  v6 = [v5 indexesOfObjectsPassingTest:v3];
  v7 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v12 = 134217984;
    v13 = [v6 count];
    _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEFAULT, "count for current flows is %lu", &v12, 0xCu);
  }

  v9 = [v6 count];

  objc_autoreleasePoolPop(v4);
  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)_takeSnapshot
{
  self->_snapshotRxWiFiBytes = [(TrackedFlowCounts *)self rxWiFiBytes];
  self->_snapshotTxWiFiBytes = [(TrackedFlowCounts *)self txWiFiBytes];
  self->_snapshotRxPkts = [(TrackedFlowCounts *)self rxPkts];
  self->_snapshotTxPkts = [(TrackedFlowCounts *)self txPkts];
  self->_snapshotRxDupeBytes = [(TrackedFlowCounts *)self rxDupeBytes];
  self->_snapshotRxOOOBytes = [(TrackedFlowCounts *)self rxOOOBytes];
  self->_snapshotTxReTxBytes = [(TrackedFlowCounts *)self txReTxBytes];
  self->_snapshotTxUnacked = [(TrackedFlow *)self txUnacked];
}

- (void)_updateScoreholder:(scoreHolder *)a3
{
  v63 = *MEMORY[0x277D85DE8];
  v5 = [(TrackedFlowCounts *)self rxWiFiBytes];
  snapshotRxWiFiBytes = self->_snapshotRxWiFiBytes;
  v44 = v5;
  v6 = [(TrackedFlowCounts *)self txWiFiBytes];
  snapshotTxWiFiBytes = self->_snapshotTxWiFiBytes;
  v42 = v6 - snapshotTxWiFiBytes;
  v8 = [(TrackedFlowCounts *)self rxPkts];
  snapshotRxPkts = self->_snapshotRxPkts;
  v40 = v8;
  v41 = v8 - snapshotRxPkts;
  v38 = [(TrackedFlowCounts *)self txPkts];
  snapshotTxPkts = self->_snapshotTxPkts;
  v10 = [(TrackedFlowCounts *)self rxDupeBytes];
  snapshotRxDupeBytes = self->_snapshotRxDupeBytes;
  v37 = v10 - snapshotRxDupeBytes;
  v12 = [(TrackedFlowCounts *)self rxOOOBytes];
  snapshotRxOOOBytes = self->_snapshotRxOOOBytes;
  v14 = v12 - snapshotRxOOOBytes;
  v15 = [(TrackedFlowCounts *)self txReTxBytes];
  snapshotTxReTxBytes = self->_snapshotTxReTxBytes;
  v17 = v15 - snapshotTxReTxBytes;
  v18 = v44 - snapshotRxWiFiBytes;
  v35 = snapshotTxWiFiBytes;
  v36 = v6;
  if (v44 != snapshotRxWiFiBytes || v6 != snapshotTxWiFiBytes || v40 != snapshotRxPkts || v38 != snapshotTxPkts || v10 != snapshotRxDupeBytes || v12 != snapshotRxOOOBytes || v15 != snapshotTxReTxBytes)
  {
    v25 = evaluationLogHandle;
    v26 = v15 - snapshotTxReTxBytes;
    v27 = os_log_type_enabled(evaluationLogHandle, OS_LOG_TYPE_DEBUG);
    v18 = v44 - snapshotRxWiFiBytes;
    v17 = v26;
    if (v27)
    {
      txUnacked = self->_txUnacked;
      *buf = 134220032;
      v46 = self;
      v47 = 2048;
      v48 = v44 - snapshotRxWiFiBytes;
      v49 = 2048;
      v50 = v42;
      v51 = 2048;
      v52 = v41;
      v53 = 2048;
      v54 = v38 - snapshotTxPkts;
      v55 = 2048;
      v56 = v10 - snapshotRxDupeBytes;
      v57 = 2048;
      v58 = v12 - snapshotRxOOOBytes;
      v59 = 2048;
      v60 = v26;
      v61 = 1024;
      v62 = txUnacked;
      _os_log_impl(&dword_23255B000, v25, OS_LOG_TYPE_DEBUG, "self %p bytes rx %lld tx %lld pkts rx %lld tx %lld dup %lld OOO %lld retx %lld unack %u", buf, 0x58u);
      v18 = v44 - snapshotRxWiFiBytes;
      v17 = v26;
    }
  }

  v29 = a3->var0.var1 + v42;
  a3->var0.var0 += v18;
  a3->var0.var1 = v29;
  v30 = a3->var0.var3 + v38 - snapshotTxPkts;
  v31 = self->_txUnacked;
  a3->var0.var2 += v41;
  a3->var0.var3 = v30;
  v32 = a3->var0.var5 + v37;
  a3->var0.var4 += v31;
  a3->var0.var5 = v32;
  v33 = a3->var0.var7 + v17;
  a3->var0.var6 += v14;
  a3->var0.var7 = v33;
  ++a3->var1;
  if (self->_txUnacked)
  {
    if (v44 != snapshotRxWiFiBytes || v36 != v35)
    {
      ++a3->var4;
      goto LABEL_30;
    }

LABEL_29:
    ++a3->var3;
    goto LABEL_30;
  }

  if (v18 == v14 + v37)
  {
    if (!(v18 + v42))
    {
      ++a3->var2;
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  if (v14 + v37 + v17)
  {
    ++a3->var6;
  }

  else
  {
    ++a3->var5;
  }

LABEL_30:
  if ([(TrackedFlowCounts *)self probedFlow])
  {
    ++a3->var7;
  }

  if ([(TrackedFlowCounts *)self probed3WHSStuckFlow])
  {
    ++a3->var8;
  }

  if ([(TrackedFlowCounts *)self probedReadStuckFlow])
  {
    ++a3->var9;
  }

  if ([(TrackedFlowCounts *)self probedWriteStuckFlow])
  {
    ++a3->var10;
  }

  [(TrackedFlow *)self _takeSnapshot];
  v34 = *MEMORY[0x277D85DE8];
}

+ (void)_wifiStallCheckStarted
{
  v2 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEFAULT, "wifi stallcheck started", v3, 2u);
  }

  scoreHolderId = -1;
  bzero(&openFlowScoreHolders, 0x460uLL);
  [liveSocketCache enumerateKeysAndObjectsUsingBlock:&__block_literal_global_146];
}

void __37__TrackedFlow__wifiStallCheckStarted__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if ([v3 ifType] == 1 && (objc_msgSend(v3, "flags") & 2) != 0)
  {
    [v3 _takeSnapshot];
  }
}

+ (id)getPolledFlowInfo
{
  v56 = *MEMORY[0x277D85DE8];
  v2 = scoreHolderId;
  v3 = scoreHolderId;
  [gLastPollCollectionDate timeIntervalSinceNow];
  v5 = v4;
  v6 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v55 = v5;
    _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, "Collect info, last update was %f secs ago", buf, 0xCu);
  }

  if (v5 < -5.0)
  {
    v7 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v8 = "Poll data too old ";
LABEL_16:
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEFAULT, v8, buf, 2u);
      goto LABEL_17;
    }

    goto LABEL_17;
  }

  if (v3 <= 0)
  {
    v7 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v8 = "Insufficient samples";
      goto LABEL_16;
    }

LABEL_17:
    v12 = 0;
    v13 = 0;
    goto LABEL_39;
  }

  v51 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v9 = v2 - v3;
  while (v3 != openFlowScoreHolders[28 * (v3 % 0xAu) + 26])
  {
    v10 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v55) = v3;
      _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEFAULT, "Saved results id %d not found, wind back further", buf, 8u);
    }

    --v2;
    v11 = __OFSUB__(v3--, 1);
    if ((v3 < 0) ^ v11 | (v3 == 0))
    {
      v3 = 0;
      goto LABEL_19;
    }
  }

  v9 = v2;
LABEL_19:
  v14 = 0;
  LODWORD(v15) = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = &openFlowScoreHolders[28 * v3];
  v21 = 1;
  v22 = v3;
  do
  {
    v23 = v21;
    v24 = &v20[-1120 * (v22 / 0xA)];
    v14 = *v24 + v14 - (*(v24 + 5) + *(v24 + 6));
    v15 = (*(v24 + 18) + v15);
    v19 |= *(v24 + 7) != 0;
    v18 |= *(v24 + 23) != 0;
    v17 |= *(v24 + 24) != 0;
    v16 |= *(v24 + 25) != 0;
    v25 = v3-- != 0;
    if (!v25)
    {
      break;
    }

    v21 = 0;
    v20 -= 112;
    --v22;
  }

  while ((v23 & 1) != 0);
  v26 = v18 | v17 | v16;
  if (v14)
  {
    if (v26 & 1 | (v15 != 0))
    {
      v27 = 25;
    }

    else if (v14 <= 0x9C40)
    {
      v27 = 50;
    }

    else
    {
      v27 = 100;
    }
  }

  else if (v26 & 1 | (v15 != 0) | v19 & 1)
  {
    v27 = 0;
  }

  else
  {
    v27 = 50;
  }

  v45 = v27;
  v49 = v14;
  v28 = -5;
  do
  {
    v29 = &openFlowScoreHolders[28 * (v9 % 10)];
    v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"id %d: bytes rx %lld tx %lld  pkts rx %lld tx %lld  unacked %lld   dupe %lld OOO %lld retx %lld", *(v29 + 26), *v29, *(v29 + 1), *(v29 + 2), *(v29 + 3), *(v29 + 4), *(v29 + 5), *(v29 + 6), *(v29 + 7)];
    [v51 addObject:v30];

    v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"id %d: flows %d good %d imperfect %d stuck %d unack %d quiet %d extra-stats-flows %d 3whs-stuck %d read-stuck %d write-stuck %d", *(v29 + 26), *(v29 + 16), *(v29 + 20), *(v29 + 21), *(v29 + 18), *(v29 + 19), *(v29 + 17), *(v29 + 22), *(v29 + 23), *(v29 + 24), *(v29 + 25)];
    [v51 addObject:v31];

    if (!v9)
    {
      break;
    }

    --v9;
    v25 = __CFADD__(v28++, 1);
  }

  while (!v25);
  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"total input %llu  flows stuck %d txReTx %d TCPExtra %d", v49, v15, v19 & 1, ((v18 | v17) | v16) & 1];
  v47 = [MEMORY[0x277CCACA8] stringWithUTF8String:kSymptomManagedEventKeyTriggerScore];
  v52[0] = v47;
  v46 = [MEMORY[0x277CCABB0] numberWithInt:v45];
  v53[0] = v46;
  v44 = [MEMORY[0x277CCACA8] stringWithUTF8String:kSymptomManagedEventKeyTriggerScoreInfo];
  v52[1] = v44;
  v32 = @"no info";
  if (v13)
  {
    v32 = v13;
  }

  v53[1] = v32;
  v43 = [MEMORY[0x277CCACA8] stringWithUTF8String:kSymptomManagedEventKeyTriggerBundleInput];
  v52[2] = v43;
  v50 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v49];
  v53[2] = v50;
  v42 = [MEMORY[0x277CCACA8] stringWithUTF8String:kSymptomManagedEventKeyTriggerTCPExtraState];
  v52[3] = v42;
  v48 = [MEMORY[0x277CCABB0] numberWithBool:((v18 | v17) | v16) & 1];
  v53[3] = v48;
  v41 = [MEMORY[0x277CCACA8] stringWithUTF8String:kSymptomManagedEventKeyTriggerTCP3WHSStuck];
  v52[4] = v41;
  v33 = [MEMORY[0x277CCABB0] numberWithBool:v18 & 1];
  v53[4] = v33;
  v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:kSymptomManagedEventKeyTriggerTCPReadStuck];
  v52[5] = v34;
  v35 = [MEMORY[0x277CCABB0] numberWithBool:v17 & 1];
  v53[5] = v35;
  v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:kSymptomManagedEventKeyTriggerTCPWriteStuck];
  v52[6] = v36;
  v37 = [MEMORY[0x277CCABB0] numberWithBool:v16 & 1];
  v53[6] = v37;
  v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:kSymptomManagedEventKeyTriggerDetails];
  v52[7] = v38;
  v53[7] = v51;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:v52 count:8];

LABEL_39:
  v39 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (void)_notifyPollingEnd
{
  v23[7] = *MEMORY[0x277D85DE8];
  v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:kSymptomManagedEventKeyTriggerScore];
  v22[0] = v19;
  v18 = [MEMORY[0x277CCABB0] numberWithInt:50];
  v23[0] = v18;
  v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:kSymptomManagedEventKeyTriggerScoreInfo];
  v22[1] = v17;
  v23[1] = @"polled flow shutdown";
  v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:kSymptomManagedEventKeyTriggerBundleInput];
  v22[2] = v16;
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:0];
  v23[2] = v2;
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:kSymptomManagedEventKeyTriggerTCP3WHSStuck];
  v22[3] = v3;
  v4 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v23[3] = v4;
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:kSymptomManagedEventKeyTriggerTCPReadStuck];
  v22[4] = v5;
  v6 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v23[4] = v6;
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:kSymptomManagedEventKeyTriggerTCPWriteStuck];
  v22[5] = v7;
  v8 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v23[5] = v8;
  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:kSymptomManagedEventKeyTriggerTCPExtraState];
  v22[6] = v9;
  v10 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v23[6] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:7];

  if (v11)
  {
    v12 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = v11;
      _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_DEFAULT, "Notify ending assessment %@", buf, 0xCu);
    }

    v13 = [MEMORY[0x277CCAB98] defaultCenter];
    [v13 postNotificationName:@"kNotificationPolledFlowAssessment" object:a1 userInfo:v11];
  }

  v14 = *MEMORY[0x277D85DE8];
}

+ (void)_dumpStateOfType:(int64_t)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __32__TrackedFlow__dumpStateOfType___block_invoke;
  v3[3] = &__block_descriptor_40_e15_v32__0_8_16_B24l;
  v3[4] = a3;
  [liveSocketCache enumerateKeysAndObjectsUsingBlock:v3];
}

void __32__TrackedFlow__dumpStateOfType___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 ifType] == *(a1 + 32))
  {
    v5 = flowLogHandle;
    if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v5;
      v7 = [v4 description];
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, "FLOW %@", &v9, 0xCu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

+ (void)dumpState
{
  [TrackedFlow _dumpStateOfType:2];
  [TrackedFlow _dumpStateOfType:1];
  [TrackedFlow _dumpStateOfType:3];

  [TrackedFlow _dumpStateOfType:0];
}

+ (void)_wifiStallCheck
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    v13 = scoreHolderId;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEBUG, "stallcheck entry, id %d", buf, 8u);
  }

  v4 = (scoreHolderId + 1) % 10;
  v5 = &openFlowScoreHolders[28 * v4];
  *v5 = 0u;
  v5[1] = 0u;
  v5[2] = 0u;
  v5[3] = 0u;
  v5[4] = 0u;
  v5[5] = 0u;
  v5[6] = 0u;
  v6 = ++scoreHolderId;
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  setApparentTime(v7);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __30__TrackedFlow__wifiStallCheck__block_invoke;
  v9[3] = &__block_descriptor_56_e8_v12__0B8l;
  v10 = v6;
  v11 = v4;
  v9[4] = v5;
  v9[5] = a1;
  [FlowRefreshScheduler refreshDataUsageMaxStale:@"WiFiStallCheck" maxDelay:v9 logAs:0.0 callback:0.0];
  v8 = *MEMORY[0x277D85DE8];
}

void __30__TrackedFlow__wifiStallCheck__block_invoke(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    if (scoreHolderId != -1)
    {
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __30__TrackedFlow__wifiStallCheck__block_invoke_2;
      v11[3] = &__block_descriptor_40_e15_v32__0_8_16_B24l;
      v11[4] = *(a1 + 32);
      [liveSocketCache enumerateKeysAndObjectsUsingBlock:v11];
      if (scoreHolderId != -1)
      {
        *(*(a1 + 32) + 104) = *(a1 + 48);
        v3 = [MEMORY[0x277CBEAA8] date];
        objc_storeStrong(&gLastPollCollectionDate, v3);
        objc_storeStrong(&openFlowScoreDate[*(a1 + 52)], v3);
        v4 = [*(a1 + 40) getPolledFlowInfo];
        if (v4)
        {
          v5 = [MEMORY[0x277CCAB98] defaultCenter];
          v6 = rnfLogHandle;
          if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v13 = v4;
            _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_INFO, "Notify assessment %@", buf, 0xCu);
          }

          [v5 postNotificationName:@"kNotificationPolledFlowAssessment" object:*(a1 + 40) userInfo:v4];
          v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:kSymptomManagedEventKeyTriggerScore];
          v8 = [v4 objectForKeyedSubscript:v7];

          if (v8 && ![v8 intValue])
          {
            v9 = rnfLogHandle;
            if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v13 = v4;
              _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_INFO, "Notify bad assessment %@", buf, 0xCu);
            }

            [v5 postNotificationName:@"kNotificationPolledFlowAssessedBad" object:*(a1 + 40) userInfo:v4];
          }
        }
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __30__TrackedFlow__wifiStallCheck__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ([v4 ifType] == 1)
  {
    [v4 _updateScoreholder:*(a1 + 32)];
  }
}

+ (void)startPollingWifiFlows:(unsigned int)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a3 + 1;
  add = atomic_fetch_add(&gPolledFlowClientCount, 1uLL);
  v7 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    *v29 = a3;
    *&v29[4] = 2048;
    *&v29[6] = add;
    _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEFAULT, "startPollingWifiFlows, secs %u number of existing clients is %llu", buf, 0x12u);
  }

  v8 = gPolledFlowCount;
  if (add)
  {
    v9 = 1;
  }

  else
  {
    v9 = gPolledFlowCount == 0;
  }

  if (!v9)
  {
    v10 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_ERROR, "startPollingWifiFlows: Logic error, already running but client count was zero", buf, 2u);
    }

    v8 = gPolledFlowCount;
  }

  if (v8 >= v5 >> 1)
  {
    v12 = rnfLogHandle;
    if (!os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_19;
    }

    *buf = 0;
    v13 = "startPollingWifiFlows: already running";
    goto LABEL_17;
  }

  if (v8)
  {
    v11 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      *v29 = gPolledFlowCount;
      *&v29[8] = 2048;
      *&v29[10] = v5 >> 1;
      _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEFAULT, "startPollingWifiFlows: bump from %lld to %lld", buf, 0x16u);
    }

    gPolledFlowCount = v5 >> 1;
    goto LABEL_19;
  }

  if (add)
  {
    v17 = rnfLogHandle;
    if (!os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    *buf = 0;
    v13 = "startPollingWifiFlows, subsequent client finds gPolledFlowCount set to zero";
    v14 = v17;
    v15 = OS_LOG_TYPE_ERROR;
    goto LABEL_18;
  }

  if (gPolledFlowTimer)
  {
    v18 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_ERROR, "startPollingWifiFlows: need to cancel old timer", buf, 2u);
    }

    dispatch_source_cancel(gPolledFlowTimer);
    v19 = gPolledFlowTimer;
    gPolledFlowTimer = 0;
  }

  v20 = _pollingQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__TrackedFlow_startPollingWifiFlows___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  dispatch_async(v20, block);

  v21 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, MEMORY[0x277D85CD0]);
  v22 = gPolledFlowTimer;
  gPolledFlowTimer = v21;

  v23 = gPolledFlowTimer;
  v24 = dispatch_time(0, 2000000000);
  dispatch_source_set_timer(v23, v24, 0x77359400uLL, 0);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __37__TrackedFlow_startPollingWifiFlows___block_invoke_166;
  handler[3] = &__block_descriptor_40_e5_v8__0l;
  handler[4] = a1;
  dispatch_source_set_event_handler(gPolledFlowTimer, handler);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __37__TrackedFlow_startPollingWifiFlows___block_invoke_2;
  v25[3] = &__block_descriptor_40_e5_v8__0l;
  v25[4] = a1;
  dispatch_source_set_cancel_handler(gPolledFlowTimer, v25);
  dispatch_resume(gPolledFlowTimer);
  v12 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v13 = "startPollingWifiFlows: exit";
LABEL_17:
    v14 = v12;
    v15 = OS_LOG_TYPE_DEFAULT;
LABEL_18:
    _os_log_impl(&dword_23255B000, v14, v15, v13, buf, 2u);
  }

LABEL_19:
  v16 = *MEMORY[0x277D85DE8];
}

uint64_t __37__TrackedFlow_startPollingWifiFlows___block_invoke(uint64_t a1)
{
  v2 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEFAULT, "startPollingWifiFlows: async stall check start", v4, 2u);
  }

  [*(a1 + 32) _wifiStallCheckStarted];
  return [*(a1 + 32) _wifiStallCheck];
}

void __37__TrackedFlow_startPollingWifiFlows___block_invoke_166(uint64_t a1)
{
  if (--gPolledFlowCount)
  {
    v2 = _pollingQueue();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __37__TrackedFlow_startPollingWifiFlows___block_invoke_167;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = *(a1 + 32);
    dispatch_async(v2, block);
  }

  else
  {
    v3 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEFAULT, "Shut down polled flow timer", buf, 2u);
    }

    dispatch_source_cancel(gPolledFlowTimer);
    v2 = gPolledFlowTimer;
    gPolledFlowTimer = 0;
  }
}

void __37__TrackedFlow_startPollingWifiFlows___block_invoke_2(uint64_t a1)
{
  v2 = _pollingQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__TrackedFlow_startPollingWifiFlows___block_invoke_3;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = *(a1 + 32);
  dispatch_async(v2, block);
}

+ (void)stopPollingWifiFlows
{
  v10 = *MEMORY[0x277D85DE8];
  add = atomic_fetch_add(&gPolledFlowClientCount, 0xFFFFFFFFFFFFFFFFLL);
  v3 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134217984;
    v9 = add;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEFAULT, "stopPollingWifiFlows, number of clients is %llu", &v8, 0xCu);
  }

  if (add)
  {
    if (add == 1)
    {
      if (gPolledFlowTimer)
      {
        dispatch_source_cancel(gPolledFlowTimer);
        v4 = gPolledFlowTimer;
        gPolledFlowTimer = 0;
      }

      else
      {
        v6 = rnfLogHandle;
        if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v8) = 0;
          _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_ERROR, "stopPollingWifiFlows, last client but timer already nil", &v8, 2u);
        }
      }

      gPolledFlowCount = 0;
      scoreHolderId = -1;
    }
  }

  else
  {
    v5 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v8) = 0;
      _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_ERROR, "stopPollingWifiFlows, mismatched starts/stops, ignoring stop", &v8, 2u);
    }

    atomic_fetch_add(&gPolledFlowClientCount, 1uLL);
  }

  v7 = *MEMORY[0x277D85DE8];
}

@end