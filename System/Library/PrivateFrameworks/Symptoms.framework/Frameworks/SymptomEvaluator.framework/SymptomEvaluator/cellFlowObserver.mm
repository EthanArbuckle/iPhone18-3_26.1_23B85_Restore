@interface cellFlowObserver
- (BOOL)performDisposition:(unsigned int)a3 present:(BOOL)a4;
- (cellFlowObserver)init;
- (id)infoDir;
- (void)beginTrafficClassFlowSnapshot;
- (void)configurePolicies:(id)a3;
- (void)endTrafficClassFlowSnapshot:(id)a3 periodUsecs:(unint64_t)a4 reply:(id)a5;
- (void)noteNewUsage:(unsigned int)a3;
- (void)resetTrafficClassFlowSnapshot:(BOOL)a3;
- (void)setEnabled:(BOOL)a3;
@end

@implementation cellFlowObserver

- (cellFlowObserver)init
{
  v14.receiver = self;
  v14.super_class = cellFlowObserver;
  v2 = [(cellFlowObserver *)&v14 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    foregroundAppObservelist = v2->_foregroundAppObservelist;
    v2->_foregroundAppObservelist = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    perAppMaxRRCTimeSecs = v2->_perAppMaxRRCTimeSecs;
    v2->_perAppMaxRRCTimeSecs = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
    flowSnapshotApps = v2->_flowSnapshotApps;
    v2->_flowSnapshotApps = v7;

    v2->_dampeningMsecs = 300;
    shared_prefs_store = get_shared_prefs_store();
    if (shared_prefs_store)
    {
      v10 = shared_prefs_store;
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __24__cellFlowObserver_init__block_invoke;
      v12[3] = &unk_27898A0A0;
      v13 = v2;
      prefs_add_client(v10, "appaware_dampening_time", v12);
    }
  }

  return v2;
}

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  v14 = *MEMORY[0x277D85DE8];
  v5 = scoringLogHandle;
  if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
  {
    enabled = self->_enabled;
    v11[0] = 67109376;
    v11[1] = enabled;
    v12 = 1024;
    v13 = v3;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEBUG, "Entry, _enabled = %d new value %d", v11, 0xEu);
  }

  if (self->_enabled != v3)
  {
    if (v3)
    {
      [NetworkAnalyticsEngine sendTrafficInfoFlags:self->_classFlags changeFlags:0xFFFFFFFFLL foreground:self->_foreground];
      if (self->_flowSnapshotActive)
      {
        v8 = [MEMORY[0x277CBEAA8] date];
        flowSnapshotTCEnabledStartTime = self->_flowSnapshotTCEnabledStartTime;
        self->_flowSnapshotTCEnabledStartTime = v8;
      }
    }

    else if (self->_flowSnapshotActive)
    {
      [(NSDate *)self->_flowSnapshotTCEnabledStartTime timeIntervalSinceNow];
      self->_flowSnapshotAccumulatedTCEnabledTime = self->_flowSnapshotAccumulatedTCEnabledTime - v10;
    }
  }

  self->_enabled = v3;
  v7 = *MEMORY[0x277D85DE8];
}

- (void)configurePolicies:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = a3;
  v3 = [obj countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v24;
    *&v4 = 138412546;
    v20 = v4;
    do
    {
      v7 = 0;
      do
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v23 + 1) + 8 * v7);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = v8;
          v10 = [v9 objectForKeyedSubscript:@"POLICY_APPLIES_TO"];
          v11 = [v9 objectForKeyedSubscript:@"DEFAULT_DISPOSITION"];
          v12 = [v9 objectForKeyedSubscript:@"MAX_RADIO_TIME_SECS"];
          if (v10)
          {
            v13 = v11 == 0;
          }

          else
          {
            v13 = 1;
          }

          if (!v13)
          {
            if ([v11 isEqualToString:@"TRACKING_DISPOSITION_IMSG_FOREGROUND"])
            {
              v14 = 18;
              goto LABEL_15;
            }

            if ([v11 isEqualToString:@"TRACKING_DISPOSITION_FACETIME_FOREGROUND"])
            {
              v14 = 19;
LABEL_15:
              v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{v14, v20}];
              [(NSMutableDictionary *)self->_foregroundAppObservelist setObject:v15 forKeyedSubscript:v10];
            }

            else
            {
              v17 = configurationLogHandle;
              if (os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_ERROR))
              {
                *buf = v20;
                v28 = v10;
                v29 = 2112;
                v30 = v11;
                _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_ERROR, "Can't handle param pair %@  %@", buf, 0x16u);
              }
            }
          }

          if (v10)
          {
            v16 = v12 == 0;
          }

          else
          {
            v16 = 1;
          }

          if (!v16)
          {
            [(NSMutableDictionary *)self->_perAppMaxRRCTimeSecs setObject:v12 forKeyedSubscript:v10];
          }
        }

        ++v7;
      }

      while (v5 != v7);
      v18 = [obj countByEnumeratingWithState:&v23 objects:v31 count:16];
      v5 = v18;
    }

    while (v18);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)noteNewUsage:(unsigned int)a3
{
  v19 = *MEMORY[0x277D85DE8];
  self->_classFlags = a3;
  if (self->_dampening || !self->_enabled)
  {
    v9 = flowLogHandle;
    if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_INFO))
    {
      intialClassFlags = self->_intialClassFlags;
      *buf = 67109376;
      v16 = a3;
      v17 = 1024;
      v18 = intialClassFlags;
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_INFO, "New flags 0x%x during suppression / dampening, initial value 0x%x", buf, 0xEu);
    }
  }

  else
  {
    v5 = flowLogHandle;
    if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v16 = a3;
      _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_INFO, "Note new usage 0x%x", buf, 8u);
    }

    v6 = self->_seqno + 1;
    self->_seqno = v6;
    self->_dampening = 1;
    v7 = dispatch_time(0, 1000000 * self->_dampeningMsecs);
    v8 = +[FlowAnalyticsEngine queue];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __33__cellFlowObserver_noteNewUsage___block_invoke;
    v12[3] = &unk_27898AFE0;
    v12[4] = self;
    v13 = v6;
    v14 = a3;
    dispatch_after(v7, v8, v12);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)performDisposition:(unsigned int)a3 present:(BOOL)a4
{
  if (a3 > 0x1F)
  {
    return 0;
  }

  classCounter = self->_classCounter;
  v5 = self->_classCounter[a3];
  if (!a4)
  {
    v7 = v5 - 1;
    classCounter[a3] = v7;
    if (!v7)
    {
      v6 = 1;
      self->_classFlags &= ~(1 << a3);
      return v6;
    }

    return 0;
  }

  classCounter[a3] = v5 + 1;
  if (v5)
  {
    return 0;
  }

  v6 = 1;
  self->_classFlags |= 1 << a3;
  self->_everSetClassFlags |= 1 << a3;
  return v6;
}

- (void)beginTrafficClassFlowSnapshot
{
  v18 = *MEMORY[0x277D85DE8];
  [(cellFlowObserver *)self resetTrafficClassFlowSnapshot:1];
  v3 = +[TrackedFlow currentCellUsers];
  v4 = v3;
  if (v3)
  {
    v5 = [(NSMutableSet *)v3 objectForKey:@"activeTrafficClassFlags"];
    v6 = v5;
    if (v5)
    {
      self->_flowSnapshotFlags = [v5 unsignedIntValue];
    }

    v7 = [(NSMutableSet *)v4 objectForKey:@"activeProcessIdentifiers"];
    if (v7)
    {
      [(NSMutableSet *)self->_flowSnapshotApps unionSet:v7];
    }
  }

  if (self->_enabled)
  {
    v8 = [MEMORY[0x277CBEAA8] date];
    flowSnapshotTCEnabledStartTime = self->_flowSnapshotTCEnabledStartTime;
    self->_flowSnapshotTCEnabledStartTime = v8;
  }

  v10 = noiLogHandle;
  if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412290;
    v17 = v4;
    _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEFAULT, "TC Metric: currentCellUsers %@", &v16, 0xCu);
  }

  v11 = noiLogHandle;
  if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    flowSnapshotFlags = self->_flowSnapshotFlags;
    v16 = 67109120;
    LODWORD(v17) = flowSnapshotFlags;
    _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEFAULT, "TC Metric: initial snapshot flags 0x%x", &v16, 8u);
  }

  v13 = noiLogHandle;
  if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    flowSnapshotApps = self->_flowSnapshotApps;
    v16 = 138412290;
    v17 = flowSnapshotApps;
    _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_DEFAULT, "TC Metric: initial snapshot apps %@", &v16, 0xCu);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)endTrafficClassFlowSnapshot:(id)a3 periodUsecs:(unint64_t)a4 reply:(id)a5
{
  v77 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  v9 = &noiLogHandle;
  v10 = noiLogHandle;
  if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    flowSnapshotActive = self->_flowSnapshotActive;
    flowSnapshotFlags = self->_flowSnapshotFlags;
    flowSnapshotApps = self->_flowSnapshotApps;
    *buf = 67109634;
    *v69 = flowSnapshotActive;
    *&v69[4] = 1024;
    *&v69[6] = flowSnapshotFlags;
    *v70 = 2112;
    *&v70[2] = flowSnapshotApps;
    _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEFAULT, "TC Metric: take snapshot when active %d flags 0x%x set %@", buf, 0x18u);
  }

  v14 = "no";
  if (self->_flowSnapshotActive)
  {
    v15 = self->_flowSnapshotFlags;
    v16 = MEMORY[0x277CBEA60];
    v17 = [(NSMutableSet *)self->_flowSnapshotApps allObjects];
    v18 = [v16 arrayWithArray:v17];

    if (self->_enabled)
    {
      [(NSDate *)self->_flowSnapshotTCEnabledStartTime timeIntervalSinceNow];
      flowSnapshotAccumulatedTCEnabledTime = self->_flowSnapshotAccumulatedTCEnabledTime - v19;
      self->_flowSnapshotAccumulatedTCEnabledTime = flowSnapshotAccumulatedTCEnabledTime;
    }

    else
    {
      flowSnapshotAccumulatedTCEnabledTime = self->_flowSnapshotAccumulatedTCEnabledTime;
    }

    v54 = (flowSnapshotAccumulatedTCEnabledTime * 1000000.0);
    if (self->_foreground)
    {
      v21 = 0;
      v22 = 0;
    }

    else
    {
      v52 = v15;
      v23 = +[OverrideTrackerPolicy sharedInstance];
      v24 = [v23 maxRRCTimePolicyForTarget:0];
      v51 = v24;
      if (v24)
      {
        v57 = [v24 unsignedIntegerValue];
      }

      else
      {
        v57 = 60;
      }

      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      v18 = v18;
      v25 = [v18 countByEnumeratingWithState:&v64 objects:v76 count:16];
      if (v25)
      {
        v26 = v25;
        obj = v18;
        v49 = v8;
        v50 = v7;
        v27 = 0;
        v28 = *v65;
        while (2)
        {
          v29 = 0;
          v55 = v26;
          do
          {
            if (*v65 != v28)
            {
              objc_enumerationMutation(obj);
            }

            v30 = *(*(&v64 + 1) + 8 * v29);
            v31 = *v9;
            if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
            {
              v32 = v28;
              v33 = v9;
              perAppMaxRRCTimeSecs = self->_perAppMaxRRCTimeSecs;
              v35 = v31;
              v36 = [(NSMutableDictionary *)perAppMaxRRCTimeSecs objectForKeyedSubscript:v30];
              [v23 maxRRCTimePolicyForTarget:v30];
              v37 = v23;
              v39 = v38 = self;
              *buf = 138413058;
              *v69 = v30;
              *&v69[8] = 2112;
              *v70 = v36;
              *&v70[8] = 2112;
              v71 = v39;
              v72 = 2048;
              v73 = v57;
              _os_log_impl(&dword_23255B000, v35, OS_LOG_TYPE_DEFAULT, "TC Metric: app: %@ has quota in plist: %@, override: %@, default: %lu", buf, 0x2Au);

              v9 = v33;
              v28 = v32;
              v26 = v55;

              self = v38;
              v23 = v37;
            }

            v40 = [v23 maxRRCTimePolicyForTarget:{v30, v49, v50, v51}];
            if (v40 || ([(NSMutableDictionary *)self->_perAppMaxRRCTimeSecs objectForKeyedSubscript:v30], v40 = objc_claimAutoreleasedReturnValue(), v41 = v57, v40))
            {
              v42 = v40;
              if (![v40 unsignedIntegerValue])
              {
                v43 = v23;

                v18 = obj;
                v22 = 0;
                v21 = 1000000 * v27;
                v14 = "yes";
                goto LABEL_28;
              }

              v41 = [v42 unsignedIntegerValue];
            }

            v27 += v41;
            ++v29;
          }

          while (v26 != v29);
          v26 = [obj countByEnumeratingWithState:&v64 objects:v76 count:16];
          if (v26)
          {
            continue;
          }

          break;
        }

        v43 = v23;
        v18 = obj;

        v21 = 1000000 * v27;
        v22 = 1000000 * v27 < a4;
        v14 = "no";
LABEL_28:
        v8 = v49;
        v7 = v50;
      }

      else
      {
        v43 = v23;

        v21 = 0;
        v22 = a4 != 0;
        v14 = "no";
      }

      v15 = v52;
    }
  }

  else
  {
    v54 = 0;
    v21 = 0;
    v22 = 0;
    v18 = 0;
    v15 = 0;
  }

  v44 = *v9;
  if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
  {
    v45 = "yes";
    *buf = 136316162;
    if (!v22)
    {
      v45 = "no";
    }

    *v69 = v45;
    *&v69[8] = 2080;
    *v70 = v14;
    *&v70[8] = 2048;
    v71 = a4;
    v72 = 2048;
    v73 = v54;
    v74 = 2048;
    v75 = v21;
    _os_log_impl(&dword_23255B000, v44, OS_LOG_TYPE_DEFAULT, "TC Metric: policy violation %s, whitelist %s, TCenableduration (usecs) %llu  duration (usecs) %llu, budget %llu", buf, 0x34u);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__cellFlowObserver_endTrafficClassFlowSnapshot_periodUsecs_reply___block_invoke;
  block[3] = &unk_27898FE48;
  v62 = v15;
  v60 = v8;
  v61 = v54;
  v59 = v18;
  v63 = v22;
  v46 = v18;
  v47 = v8;
  dispatch_async(v7, block);
  [(cellFlowObserver *)self resetTrafficClassFlowSnapshot:0];

  v48 = *MEMORY[0x277D85DE8];
}

- (void)resetTrafficClassFlowSnapshot:(BOOL)a3
{
  v5 = noiLogHandle;
  if (os_log_type_enabled(noiLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "TC Metric: reset snapshot", v7, 2u);
  }

  self->_flowSnapshotActive = a3;
  [(NSMutableSet *)self->_flowSnapshotApps removeAllObjects];
  self->_flowSnapshotFlags = 0;
  flowSnapshotTCEnabledStartTime = self->_flowSnapshotTCEnabledStartTime;
  self->_flowSnapshotAccumulatedTCEnabledTime = 0.0;
  self->_flowSnapshotTCEnabledStartTime = 0;
}

- (id)infoDir
{
  v2 = flowLogHandle;
  if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEFAULT, "Cell observer, return empty Info dir", v5, 2u);
  }

  v3 = [MEMORY[0x277CBEB38] dictionary];

  return v3;
}

@end