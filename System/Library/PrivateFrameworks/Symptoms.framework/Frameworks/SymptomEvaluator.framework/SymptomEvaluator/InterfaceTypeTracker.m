@interface InterfaceTypeTracker
- (id)infoDir;
- (unint64_t)scheduleExpiryCheckFor:(unint64_t)a3 delay:(double)a4;
- (void)_dumpState;
- (void)configurePolicies:(id)a3;
- (void)dealloc;
- (void)getNetworkActivity:(id)a3;
- (void)noteFlow:(id)a3 withDelegatee:(id)a4 snapshot:(id)a5;
- (void)noteFlow:(id)a3 withOwner:(id)a4 snapshot:(id)a5;
- (void)noteFlowClassificationExpiry:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)removeLinkages:(id)a3;
- (void)setupLightweightTimer;
@end

@implementation InterfaceTypeTracker

void __45__InterfaceTypeTracker_setupLightweightTimer__block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = flowLogHandle;
  if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEBUG, "Timer expiry block with %@", &v6, 0xCu);
  }

  [*(a1 + 32) noteFlowClassificationExpiry:v3];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  [(NetworkStateRelay *)self->_stateRelay removeObserver:self forKeyPath:@"primary"];
  v3.receiver = self;
  v3.super_class = InterfaceTypeTracker;
  [(InterfaceTypeTracker *)&v3 dealloc];
}

- (id)infoDir
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  trackerCache = self->_trackerCache;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __31__InterfaceTypeTracker_infoDir__block_invoke;
  v12[3] = &unk_27898B7F0;
  v6 = v4;
  v13 = v6;
  [(NSMutableDictionary *)trackerCache enumerateKeysAndObjectsUsingBlock:v12];
  [v3 setObject:v6 forKey:@"Tracked items"];
  observer = self->_observer;
  if (observer)
  {
    [(flowDispositionObserver *)observer description];
  }

  else
  {
    [MEMORY[0x277CBEB68] null];
  }
  v8 = ;
  [v3 setObject:v8 forKey:@"Observer"];

  defaultPolicy = self->_defaultPolicy;
  if (defaultPolicy)
  {
    [(TrackerPolicy *)defaultPolicy description];
  }

  else
  {
    [MEMORY[0x277CBEB68] null];
  }
  v10 = ;
  [v3 setObject:v10 forKey:@"Default policy"];

  return v3;
}

void __31__InterfaceTypeTracker_infoDir__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [a3 description];
  [v4 setObject:v6 forKey:v5];
}

- (void)_dumpState
{
  v16 = *MEMORY[0x277D85DE8];
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  if (self->_observer)
  {
    v3 = flowLogHandle;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [(flowDispositionObserver *)self->_observer description];
      *buf = 138412290;
      v15 = v4;
      _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEFAULT, "AppTracking Observer %@", buf, 0xCu);
    }
  }

  v5 = [(NSMutableDictionary *)self->_trackerCache allValues];
  v6 = [v5 sortedArrayUsingComparator:&__block_literal_global_51];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __34__InterfaceTypeTracker__dumpState__block_invoke_2;
  v9[3] = &unk_27898FE70;
  v9[4] = &v10;
  [v6 enumerateObjectsUsingBlock:v9];
  if ((v11[3] & 1) == 0)
  {
    v7 = flowLogHandle;
    if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEFAULT, "  No active AppTrackers", buf, 2u);
    }
  }

  _Block_object_dispose(&v10, 8);
  v8 = *MEMORY[0x277D85DE8];
}

uint64_t __34__InterfaceTypeTracker__dumpState__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [v5 prevFlowRxBytes];
  v7 = [v5 prevFlowTxBytes];

  v8 = v7 + v6;
  v9 = [v4 prevFlowRxBytes];
  v10 = [v4 prevFlowTxBytes];

  if (v8 > v10 + v9)
  {
    return -1;
  }

  else
  {
    return 1;
  }
}

void __34__InterfaceTypeTracker__dumpState__block_invoke_2(uint64_t a1, void *a2)
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 prevFlows] || objc_msgSend(v3, "flowsForSelf") || objc_msgSend(v3, "flowsForOthers") || objc_msgSend(v3, "prevFlowsForOthers"))
  {
    v4 = flowLogHandle;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [v3 userName];
      v18 = [v3 flowsForSelf];
      v17 = [v3 flowsForOthers];
      v6 = [v3 prevFlows];
      v7 = [v3 prevFlowsForOthers];
      v8 = [v3 prevFlowRxBytes];
      v9 = [v3 prevFlowTxBytes];
      if ([v3 prevFlows])
      {
        [v3 prevFlowDurations];
        v11 = v10 / [v3 prevFlows];
      }

      else
      {
        v11 = 0.0;
      }

      if ([v3 prevFlows])
      {
        v12 = [v3 prevFlowRxBytes];
        v13 = v12 / [v3 prevFlows];
      }

      else
      {
        v13 = 0;
      }

      if ([v3 prevFlows])
      {
        v14 = [v3 prevFlowTxBytes];
        v15 = v14 / [v3 prevFlows];
      }

      else
      {
        v15 = 0;
      }

      *buf = 138414850;
      v20 = v5;
      v21 = 1024;
      v22 = v18;
      v23 = 1024;
      v24 = v17;
      v25 = 1024;
      v26 = v6;
      v27 = 1024;
      v28 = v7;
      v29 = 2048;
      v30 = v8;
      v31 = 2048;
      v32 = v9;
      v33 = 2048;
      v34 = v11;
      v35 = 2048;
      v36 = v13;
      v37 = 2048;
      v38 = v15;
      v39 = 1024;
      v40 = [v3 eversetClassFlags];
      _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "AppTracker for %@ flows: self %d others %d prev %d %d traffic rx %lld tx %lld avg duration %f rx %lld tx %lld everset 0x%x", buf, 0x5Cu);
    }

    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v9 = a4;
  v10 = a5;
  if ([a3 isEqualToString:@"primary"])
  {
    v11 = v9;
    if ([v11 functionalInterfaceType] == 3)
    {
      v12 = [v10 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v13 = internalQueue;
        if (internalQueue)
        {
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __71__InterfaceTypeTracker_observeValueForKeyPath_ofObject_change_context___block_invoke;
          block[3] = &unk_27898A328;
          v16 = v12;
          v17 = self;
          v18 = v11;
          dispatch_async(v13, block);
        }

        else if ([v12 BOOLValue])
        {
          v14 = [v11 madePrimaryDate];
          [(InterfaceTypeTracker *)self setMadePrimaryDate:v14];
        }

        else
        {
          [(InterfaceTypeTracker *)self setMadePrimaryDate:0];
        }
      }
    }
  }
}

void __71__InterfaceTypeTracker_observeValueForKeyPath_ofObject_change_context___block_invoke(id *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  if ([a1[4] BOOLValue])
  {
    v2 = [a1[6] madePrimaryDate];
    [a1[5] setMadePrimaryDate:v2];

    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v3 = [a1[5] trackerCache];
    v4 = [v3 allValues];

    v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v12 + 1) + 8 * i) resetFlowCountAfterMadePrimary];
        }

        v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }

    v9 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v10 = a1[5];
    v11 = *MEMORY[0x277D85DE8];

    [v10 setMadePrimaryDate:0];
  }
}

- (void)removeLinkages:(id)a3
{
  v7 = a3;
  v3 = [v7 ultimateUser];

  if (v3)
  {
    v4 = [v7 ultimateUser];
    [v4 removeFlow:v7];
  }

  v5 = [v7 immediateUser];

  if (v5)
  {
    v6 = [v7 immediateUser];
    [v6 removeImmediateFlow:v7];
  }
}

- (void)setupLightweightTimer
{
  v14 = *MEMORY[0x277D85DE8];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __45__InterfaceTypeTracker_setupLightweightTimer__block_invoke;
  aBlock[3] = &unk_27898FE98;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  v4 = [LightweightTimer alloc];
  v5 = +[FlowAnalyticsEngine queue];
  v6 = [(LightweightTimer *)v4 initWithQueue:v5 maxDelay:v3 precision:16.0 callback:0.5];
  lwTimer = self->_lwTimer;
  self->_lwTimer = v6;

  v8 = flowLogHandle;
  if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v9 = self->_lwTimer;
    *buf = 138412290;
    v13 = v9;
    _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEFAULT, "Setup lightweight timer %@", buf, 0xCu);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (unint64_t)scheduleExpiryCheckFor:(unint64_t)a3 delay:(double)a4
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__InterfaceTypeTracker_scheduleExpiryCheckFor_delay___block_invoke;
  block[3] = &unk_27898A0C8;
  block[4] = self;
  if (scheduleExpiryCheckFor_delay__onceToken != -1)
  {
    dispatch_once(&scheduleExpiryCheckFor_delay__onceToken, block);
  }

  lwTimer = self->_lwTimer;
  v8 = [MEMORY[0x277CCABB0] numberWithLongLong:a3];
  v9 = [(LightweightTimer *)lwTimer setRelativeTimer:v8 context:a4];

  return v9;
}

- (void)noteFlowClassificationExpiry:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [TrackedFlow flowForKey:v4];
  v6 = [v4 unsignedLongLongValue];

  if (v5)
  {
    [v5 setClassificationChangeTimer:0];
    v7 = [v5 classification];
    v8 = [v7 nextClassification];
    v9 = flowLogHandle;
    if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v17 = 134218242;
      v18 = v6;
      v19 = 2112;
      v20 = v7;
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEBUG, "noteFlowClassificationExpiry on %llu remove %@", &v17, 0x16u);
    }

    [(flowDispositionObserver *)self->_observer noteFlow:v5 snapshot:0 present:0 trackedBy:0];
    if (v8 && [v8 disposition] != 40)
    {
      [v5 setClassification:v8];
      v11 = flowLogHandle;
      if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_DEBUG))
      {
        v17 = 134218242;
        v18 = v6;
        v19 = 2112;
        v20 = v8;
        _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEBUG, "noteFlowClassificationExpiry on %llu add %@", &v17, 0x16u);
      }

      [(flowDispositionObserver *)self->_observer noteFlow:v5 snapshot:0 present:1 trackedBy:0];
      [v8 expirationTime];
      if (v12 != 0.0)
      {
        v13 = flowLogHandle;
        if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_DEBUG))
        {
          v14 = v13;
          [v8 expirationTime];
          v17 = 134218240;
          v18 = v6;
          v19 = 2048;
          v20 = v15;
          _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_DEBUG, "noteFlowClassificationExpiry on %llu schedule for %f", &v17, 0x16u);
        }

        [v8 expirationTime];
        [v5 setClassificationChangeTimer:{-[InterfaceTypeTracker scheduleExpiryCheckFor:delay:](self, "scheduleExpiryCheckFor:delay:", v6)}];
      }
    }

    else
    {
      v10 = flowLogHandle;
      if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_DEBUG))
      {
        v17 = 134217984;
        v18 = v6;
        _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEBUG, "noteFlowClassificationExpiry on %llu remove linkages", &v17, 0xCu);
      }

      [(InterfaceTypeTracker *)self removeLinkages:v5];
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)noteFlow:(id)a3 withDelegatee:(id)a4 snapshot:(id)a5
{
  v51 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 classification];

  if (!v11 || ([v8 classification], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "disposition"), v12, v13 != 40))
  {
    v14 = [(NSMutableDictionary *)self->_trackerCache objectForKeyedSubscript:v9];
    if (!v14)
    {
      [(InterfaceTypeTracker *)self _trackerCachePrune];
      v15 = [[AppTracker alloc] initWithUserName:v9 interfaceType:[(InterfaceTypeTracker *)self functionalInterfaceType]];
      if (!v15)
      {
        v14 = [v8 immediateUser];

        if (v14)
        {
          v23 = [v8 immediateUser];
          [v23 removeImmediateFlow:v8];

          v14 = 0;
        }

        goto LABEL_37;
      }

      v14 = v15;
      [(NSMutableDictionary *)self->_trackerCache setObject:v15 forKeyedSubscript:v9];
    }

    [v14 setIsADaemon:0];
    v16 = [v8 classification];

    if (v16)
    {
LABEL_24:
      v36 = [v8 classification];
      v37 = [v36 disposition];

      if (v37 == 40)
      {
        [(InterfaceTypeTracker *)self removeLinkages:v8];
      }

      else
      {
        v38 = [v8 immediateUser];

        if (v14 != v38)
        {
          v39 = [v8 immediateUser];

          if (v39)
          {
            v40 = flowLogHandle;
            if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
            {
              v41 = [v8 flowId];
              v42 = [v8 immediateUser];
              if (v42)
              {
                v43 = [v8 immediateUser];
              }

              else
              {
                v43 = @"<nil>";
              }

              v45 = 134218498;
              v46 = v41;
              v47 = 2112;
              v48 = v9;
              v49 = 2112;
              v50 = v43;
              _os_log_impl(&dword_23255B000, v40, OS_LOG_TYPE_DEFAULT, "Flow %llu delegatee %@, changed user from %@", &v45, 0x20u);
              if (v42)
              {
              }
            }
          }

          [v14 adjustImmediateFlowLinkages:v8];
        }
      }

LABEL_37:

      goto LABEL_38;
    }

    v17 = [v14 specificPolicy];
    if (v17)
    {
      if ([v8 trafficClassFlags] || objc_msgSend(v8, "trafficMgtFlags"))
      {
        v18 = [(TrackerPolicy *)v17 nonDefaultFlowClassificationFor:v8];
        [v8 setClassification:v18];

        v19 = [v8 classification];

        if (!v19)
        {
          v20 = [(TrackerPolicy *)self->_defaultPolicy nonDefaultFlowClassificationFor:v8];
          [v8 setClassification:v20];
        }
      }

      v21 = [v8 classification];

      if (v21)
      {
        goto LABEL_18;
      }

      defaultPolicy = v17;
    }

    else
    {
      defaultPolicy = self->_defaultPolicy;
    }

    v24 = [(TrackerPolicy *)defaultPolicy flowClassificationFor:v8];
    [v8 setClassification:v24];

LABEL_18:
    [v8 setTrackerForStatistics:v14];
    observer = self->_observer;
    if (observer)
    {
      [v14 setEversetClassFlags:{objc_msgSend(v14, "eversetClassFlags") | -[flowDispositionObserver noteFlow:snapshot:present:trackedBy:](observer, "noteFlow:snapshot:present:trackedBy:", v8, v10, 1, v14)}];
      v26 = [v8 classification];
      [v26 expirationTime];
      v28 = v27;

      if (v28 != 0.0)
      {
        v29 = flowLogHandle;
        if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_DEBUG))
        {
          v30 = v29;
          v31 = [v8 flowId];
          v32 = [v8 classification];
          [v32 expirationTime];
          v45 = 134218240;
          v46 = v31;
          v47 = 2048;
          v48 = v33;
          _os_log_impl(&dword_23255B000, v30, OS_LOG_TYPE_DEBUG, "noteFlow:withDelegatee %llu for %f", &v45, 0x16u);
        }

        v34 = [v8 flowId];
        v35 = [v8 classification];
        [v35 expirationTime];
        [v8 setClassificationChangeTimer:{-[InterfaceTypeTracker scheduleExpiryCheckFor:delay:](self, "scheduleExpiryCheckFor:delay:", v34)}];
      }
    }

    goto LABEL_24;
  }

LABEL_38:

  v44 = *MEMORY[0x277D85DE8];
}

- (void)noteFlow:(id)a3 withOwner:(id)a4 snapshot:(id)a5
{
  v51 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 classification];

  if (!v11 || ([v8 classification], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "disposition"), v12, v13 != 40))
  {
    v14 = [(NSMutableDictionary *)self->_trackerCache objectForKeyedSubscript:v9];
    if (!v14)
    {
      [(InterfaceTypeTracker *)self _trackerCachePrune];
      v15 = [[AppTracker alloc] initWithUserName:v9 interfaceType:[(InterfaceTypeTracker *)self functionalInterfaceType]];
      if (!v15)
      {
        v14 = [v8 ultimateUser];

        if (v14)
        {
          v23 = [v8 ultimateUser];
          [v23 removeFlow:v8];

          v14 = 0;
        }

        goto LABEL_31;
      }

      v14 = v15;
      [(NSMutableDictionary *)self->_trackerCache setObject:v15 forKeyedSubscript:v9];
    }

    [v14 setIsADaemon:{objc_msgSend(v10, "isADaemon")}];
    v16 = [v8 classification];

    if (v16)
    {
LABEL_24:
      v36 = [v8 classification];
      v37 = [v36 disposition];

      if (v37 == 40)
      {
        [(InterfaceTypeTracker *)self removeLinkages:v8];
      }

      else
      {
        v38 = [v8 ultimateUser];

        if (v14 != v38)
        {
          v39 = [v8 ultimateUser];

          if (v39)
          {
            v40 = flowLogHandle;
            if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_DEFAULT))
            {
              v41 = v40;
              v42 = [v8 flowId];
              v43 = [v8 ultimateUser];
              v45 = 134218498;
              v46 = v42;
              v47 = 2112;
              v48 = v9;
              v49 = 2112;
              v50 = v43;
              _os_log_impl(&dword_23255B000, v41, OS_LOG_TYPE_DEFAULT, "Flow %llu owner %@, changed user from %@", &v45, 0x20u);
            }
          }

          [v14 adjustFlowLinkages:v8];
        }
      }

LABEL_31:

      goto LABEL_32;
    }

    v17 = [v14 specificPolicy];
    if (v17)
    {
      if ([v8 trafficClassFlags] || objc_msgSend(v8, "trafficMgtFlags"))
      {
        v18 = [(TrackerPolicy *)v17 nonDefaultFlowClassificationFor:v8];
        [v8 setClassification:v18];

        v19 = [v8 classification];

        if (!v19)
        {
          v20 = [(TrackerPolicy *)self->_defaultPolicy nonDefaultFlowClassificationFor:v8];
          [v8 setClassification:v20];
        }
      }

      v21 = [v8 classification];

      if (v21)
      {
        goto LABEL_18;
      }

      defaultPolicy = v17;
    }

    else
    {
      defaultPolicy = self->_defaultPolicy;
    }

    v24 = [(TrackerPolicy *)defaultPolicy flowClassificationFor:v8];
    [v8 setClassification:v24];

LABEL_18:
    [v8 setTrackerForStatistics:v14];
    observer = self->_observer;
    if (observer)
    {
      [v14 setEversetClassFlags:{objc_msgSend(v14, "eversetClassFlags") | -[flowDispositionObserver noteFlow:snapshot:present:trackedBy:](observer, "noteFlow:snapshot:present:trackedBy:", v8, v10, 1, v14)}];
      v26 = [v8 classification];
      [v26 expirationTime];
      v28 = v27;

      if (v28 != 0.0)
      {
        v29 = flowLogHandle;
        if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_DEBUG))
        {
          v30 = v29;
          v31 = [v8 flowId];
          v32 = [v8 classification];
          [v32 expirationTime];
          v45 = 134218240;
          v46 = v31;
          v47 = 2048;
          v48 = v33;
          _os_log_impl(&dword_23255B000, v30, OS_LOG_TYPE_DEBUG, "noteFlow:withOwner  %llu for %f", &v45, 0x16u);
        }

        v34 = [v8 flowId];
        v35 = [v8 classification];
        [v35 expirationTime];
        [v8 setClassificationChangeTimer:{-[InterfaceTypeTracker scheduleExpiryCheckFor:delay:](self, "scheduleExpiryCheckFor:delay:", v34)}];
      }
    }

    goto LABEL_24;
  }

LABEL_32:

  v44 = *MEMORY[0x277D85DE8];
}

- (void)getNetworkActivity:(id)a3
{
  v4 = a3;
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  setApparentTime(v5);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__InterfaceTypeTracker_getNetworkActivity___block_invoke;
  v7[3] = &unk_27898FEC0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [FlowRefreshScheduler refreshDataUsageMaxStale:@"getNetworkActivity" maxDelay:v7 logAs:2.0 callback:0.0];
}

void __43__InterfaceTypeTracker_getNetworkActivity___block_invoke(uint64_t a1, int a2, __n128 a3)
{
  v73 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    +[AppStateMonitor foregroundAppKeys];
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    obj = v66 = 0u;
    v3 = [obj countByEnumeratingWithState:&v63 objects:v72 count:16];
    v4 = &stru_2847966D8;
    if (v3)
    {
      v5 = v3;
      v55 = 0;
      v56 = 0;
      v6 = 0;
      v7 = 0;
      v8 = *v64;
      v9 = 0.0;
      v51 = &stru_2847966D8;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v64 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v63 + 1) + 8 * i);
          if (appTrackerVerbose)
          {
            if (v56)
            {
              v12 = [(__CFString *)v56 stringByAppendingFormat:@" %@", *(*(&v63 + 1) + 8 * i)];

              v56 = v12;
            }

            else
            {
              v56 = v11;
            }
          }

          if ([*(*(a1 + 32) + 24) containsObject:v11])
          {
            v7 |= 3u;
            v4 = @"(must-ignore)";
            goto LABEL_30;
          }

          v13 = [*(*(a1 + 32) + 16) containsObject:v11];
          if (v13)
          {
            v14 = 5;
          }

          else
          {
            v14 = 1;
          }

          v7 |= v14;
          v15 = [*(*(a1 + 32) + 40) objectForKeyedSubscript:v11];
          v16 = v15;
          if (v15)
          {
            v17 = [v15 flowsForSelf] + v55;
            v18 = [v16 timestamp];
            v19 = v18;
            v55 = v17;
            if (v17)
            {
              v7 |= 8u;
            }

            if (v18)
            {
              [v18 timeIntervalSinceNow];
              v9 = -v20;
              if (v20 > -86400.0)
              {
                v7 |= 0x10u;
              }
            }
          }

          v6 |= v13;
        }

        v5 = [obj countByEnumeratingWithState:&v63 objects:v72 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v55 = 0;
      v56 = 0;
      v6 = 0;
      v7 = 0;
      v9 = 0.0;
LABEL_30:
      v51 = v4;
    }

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v53 = *(*(a1 + 32) + 32);
    v57 = [v53 countByEnumeratingWithState:&v59 objects:v71 count:16];
    if (v57)
    {
      v23 = *v60;
      while (2)
      {
        for (j = 0; j != v57; ++j)
        {
          if (*v60 != v23)
          {
            objc_enumerationMutation(v53);
          }

          v25 = *(*(&v59 + 1) + 8 * j);
          v26 = [*(*(a1 + 32) + 40) objectForKeyedSubscript:v25];
          v27 = v26;
          if (v26)
          {
            if ([v26 flowsForSelf])
            {
              v7 |= 0x20u;
              v28 = [v27 flowsForSelf];
              v29 = rnfLogHandle;
              if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
              {
                v30 = v25;
                v31 = v29;
                v32 = [v25 UTF8String];
                v33 = [v27 flowsForSelf];
                *buf = 136315394;
                v68 = v32;
                v69 = 1024;
                v70 = v33;
                _os_log_impl(&dword_23255B000, v31, OS_LOG_TYPE_DEFAULT, "Daemon %s has %d flows for self", buf, 0x12u);
              }
            }

            else
            {
              v28 = 0;
            }

            if ([v27 flowsForOthers])
            {
              v54 = v28;
              v7 |= 0x20u;
              v34 = [v27 flowsForOthers];
              v35 = rnfLogHandle;
              if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
              {
                v36 = v25;
                v37 = v35;
                v38 = [v25 UTF8String];
                v39 = [v27 flowsForOthers];
                *buf = 136315394;
                v68 = v38;
                v69 = 1024;
                v70 = v39;
                _os_log_impl(&dword_23255B000, v37, OS_LOG_TYPE_DEFAULT, "Daemon %s has %d flows for others", buf, 0x12u);
              }

              v28 = v54;
            }

            else
            {
              v34 = 0;
            }

            if (v28 | v34)
            {
              v40 = [MEMORY[0x277CCACA8] stringWithFormat:@"active daemon:%@ with %d own flows, %d delegated", v25, v28, v34];

              goto LABEL_51;
            }
          }
        }

        v57 = [v53 countByEnumeratingWithState:&v59 objects:v71 count:16];
        if (v57)
        {
          continue;
        }

        break;
      }
    }

    v40 = 0;
LABEL_51:

    v41 = v56;
    if (!v56)
    {
      v42 = [obj count];
      v43 = @"<present>";
      if (!v42)
      {
        v43 = @"<not-present>";
      }

      v41 = v43;
    }

    v44 = MEMORY[0x277CCACA8];
    v45 = v41;
    if (v6)
    {
      v46 = @"(don't-ignore)";
    }

    else
    {
      v46 = &stru_2847966D8;
    }

    v47 = +[TrackedFlow allActiveFlowsCount];
    if (v40)
    {
      v48 = v40;
    }

    else
    {
      v48 = &stru_2847966D8;
    }

    v49 = [v44 stringWithFormat:@"Foreground app %@ %@%@ interval %f flows %d (total %d) %@", v45, v51, v46, *&v9, v55, v47, v48];
    (*(*(a1 + 40) + 16))(v9);

    v50 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v21 = *(*(a1 + 40) + 16);
    v22 = *MEMORY[0x277D85DE8];
    a3.n128_u64[0] = 0;

    v21(a3);
  }
}

- (void)configurePolicies:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v26;
    v8 = 0x277CBE000uLL;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v26 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v25 + 1) + 8 * i);
        v11 = *(v8 + 2752);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = v10;
          v13 = [v12 objectForKeyedSubscript:@"POLICY_APPLIES_TO"];
          v14 = v13;
          if (!v13)
          {
            v18 = [v12 objectForKeyedSubscript:@"OBSERVER_POLICIES"];
            if (v18)
            {
              v19 = [(InterfaceTypeTracker *)self observer];

              if (v19)
              {
                v20 = [(InterfaceTypeTracker *)self observer];
                [v20 configurePolicies:v18];
              }
            }

            goto LABEL_27;
          }

          if ([v13 isEqualToString:@"POLICY_APPLY_AS_DEFAULT"])
          {
            defaultPolicy = self->_defaultPolicy;
            v16 = defaultPolicy == 0;
            if (defaultPolicy)
            {
              v17 = 0;
            }

            else
            {
              v22 = objc_alloc_init(TrackerPolicy);
              [(TrackerPolicy *)v22 configureInstance:v12];
              v17 = [TrackerPolicy preferredInstance:v22];

              objc_storeStrong(&self->_defaultPolicy, v17);
              defaultPolicy = self->_defaultPolicy;
            }

            v18 = defaultPolicy;
LABEL_24:

            v8 = 0x277CBE000;
            if (v18 && !v16)
            {
              [(TrackerPolicy *)v18 configureInstance:v12];
            }

LABEL_27:

            continue;
          }

          v17 = [(NSMutableDictionary *)self->_trackerCache objectForKeyedSubscript:v14];
          if (v17)
          {
LABEL_17:
            v21 = [(AppTracker *)v17 specificPolicy];
            if (!v21)
            {
              v23 = objc_alloc_init(TrackerPolicy);
              [(TrackerPolicy *)v23 configureInstance:v12];
              v18 = [TrackerPolicy preferredInstance:v23];

              [(AppTracker *)v17 setSpecificPolicy:v18];
              v16 = 1;
              goto LABEL_24;
            }

            v18 = v21;
          }

          else
          {
            v17 = [[AppTracker alloc] initWithUserName:v14 interfaceType:[(InterfaceTypeTracker *)self functionalInterfaceType]];
            if (v17)
            {
              [(NSMutableDictionary *)self->_trackerCache setObject:v17 forKeyedSubscript:v14];
              goto LABEL_17;
            }

            v18 = 0;
          }

          v16 = 0;
          goto LABEL_24;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v6);
  }

  v24 = *MEMORY[0x277D85DE8];
}

@end