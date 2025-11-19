@interface USApplicationUsageMonitor
- (USApplicationUsageMonitor)init;
- (void)clearAppWebAndMediaUsageInContextStoreMatchingBundleIDs:(id)a3 clearAll:(BOOL)a4;
- (void)displayMonitor:(id)a3 didConnectIdentity:(id)a4 withConfiguration:(id)a5;
- (void)invalidateInstantState;
- (void)obtainCurrentValue;
- (void)platformSpecificStart;
- (void)platformSpecificStop;
- (void)start;
- (void)stop;
- (void)updateActiveApplicationsWithLayout:(id)a3 displayType:(unint64_t)a4;
- (void)updateAppDataInContextStore;
- (void)updateInUseApplications:(id)a3 activeApplications:(id)a4;
@end

@implementation USApplicationUsageMonitor

- (void)updateAppDataInContextStore
{
  v52 = *MEMORY[0x277D85DE8];
  v36 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v39 = self;
  obj = [(USApplicationUsageMonitor *)self inUseApplicationEvents];
  v40 = [obj countByEnumeratingWithState:&v45 objects:v51 count:16];
  if (v40)
  {
    v38 = *v46;
    do
    {
      for (i = 0; i != v40; ++i)
      {
        if (*v46 != v38)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v45 + 1) + 8 * i);
        v5 = [(USApplicationUsageMonitor *)v39 inUseApplicationEvents];
        v6 = [v5 objectForKeyedSubscript:v4];

        v7 = [v6 startDate];
        if (v7)
        {
          v8 = [v6 metadata];
          v9 = [MEMORY[0x277CFE158] appBundleID];
          v10 = [v8 objectForKeyedSubscript:v9];

          v11 = [v6 stringValue];
          if (v10)
          {
            v42 = v11;
            v44 = v4;
          }

          else
          {
            if (!v11)
            {
              goto LABEL_20;
            }

            v44 = v4;
            v10 = v11;
            v42 = 0;
          }

          v12 = [v6 metadata];
          v13 = [MEMORY[0x277CFE1D0] usageType];
          v14 = [v12 objectForKeyedSubscript:v13];
          v15 = v14;
          v16 = &unk_2880871E0;
          if (v14)
          {
            v16 = v14;
          }

          v17 = v16;

          v18 = [v6 metadata];
          v19 = [MEMORY[0x277CFE1D0] isUsageTrusted];
          v20 = [v18 objectForKeyedSubscript:v19];
          v21 = v20;
          v22 = MEMORY[0x277CBEC38];
          if (v20)
          {
            v22 = v20;
          }

          v23 = v22;

          v24 = [MEMORY[0x277CFE338] appUsageBundleID];
          v49[0] = v24;
          v43 = v10;
          v50[0] = v10;
          v25 = [MEMORY[0x277CFE338] appUsageStartDate];
          v49[1] = v25;
          v50[1] = v7;
          v26 = [MEMORY[0x277CFE338] appUsageType];
          v49[2] = v26;
          v41 = v17;
          v50[2] = v17;
          v27 = [MEMORY[0x277CFE338] isUsageTrusted];
          v49[3] = v27;
          v50[3] = v23;
          v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:v49 count:4];
          v29 = [v28 mutableCopy];

          if (v42)
          {
            v30 = [MEMORY[0x277CFE338] clipBundleIDKey];
            [v29 setObject:v42 forKeyedSubscript:v30];
          }

          if (([v44 isEqualToString:@"com.apple.springboard.stand-by"] & 1) == 0)
          {
            v31 = [v29 copy];
            [v36 addObject:v31];
          }
        }

LABEL_20:
      }

      v40 = [obj countByEnumeratingWithState:&v45 objects:v51 count:16];
    }

    while (v40);
  }

  v32 = [MEMORY[0x277CFE338] keyPathForAppUsageDataDictionaries];
  v33 = [v36 copy];
  v34 = [MEMORY[0x277CFE318] userContext];
  [v34 setObject:v33 forKeyedSubscript:v32];

  v35 = *MEMORY[0x277D85DE8];
}

- (void)obtainCurrentValue
{
  v3 = [(USApplicationUsageMonitor *)self monitor];
  v4 = [v3 currentLayout];
  [(USApplicationUsageMonitor *)self updateActiveApplicationsWithLayout:v4 displayType:0];

  v5 = [(USApplicationUsageMonitor *)self carPlayMonitor];
  v6 = [v5 currentLayout];
  [(USApplicationUsageMonitor *)self updateActiveApplicationsWithLayout:v6 displayType:1];

  v8 = [(USApplicationUsageMonitor *)self externalMonitor];
  v7 = [v8 currentLayout];
  [(USApplicationUsageMonitor *)self updateActiveApplicationsWithLayout:v7 displayType:2];
}

- (USApplicationUsageMonitor)init
{
  v11.receiver = self;
  v11.super_class = USApplicationUsageMonitor;
  v2 = [(_DKMonitor *)&v11 init];
  v3 = v2;
  if (v2)
  {
    inUseApplicationEvents = v2->_inUseApplicationEvents;
    v2->_inUseApplicationEvents = MEMORY[0x277CBEC10];

    v5 = BiomeLibrary();
    v6 = [v5 ScreenTime];
    v7 = [v6 AppUsage];
    v8 = [v7 source];
    appUsageSource = v3->_appUsageSource;
    v3->_appUsageSource = v8;
  }

  return v3;
}

- (void)clearAppWebAndMediaUsageInContextStoreMatchingBundleIDs:(id)a3 clearAll:(BOOL)a4
{
  v4 = a4;
  v65 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [MEMORY[0x277CFE0C8] knowledgeChannel];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [USApplicationUsageMonitor clearAppWebAndMediaUsageInContextStoreMatchingBundleIDs:v6 clearAll:v7];
  }

  v53 = [MEMORY[0x277CBEAA8] date];
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v9 = [MEMORY[0x277CFE338] keyPathForAppWebUsageDataDictionaries];
  v10 = MEMORY[0x277CCAC30];
  v11 = [MEMORY[0x277CFE338] appWebUsageBundleID];
  v12 = v11;
  v50 = v6;
  v51 = v8;
  v47 = self;
  if (v4)
  {
    [v10 predicateWithFormat:@"SELF.%K != %@", v11, 0];
  }

  else
  {
    [v10 predicateWithFormat:@"SELF.%K IN %@", v11, v6];
  }
  v13 = ;

  v14 = [MEMORY[0x277CFE318] userContext];
  v48 = v13;
  v49 = v9;
  v15 = [v14 removeObjectsMatchingPredicate:v13 fromArrayAtKeyPath:v9];

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = v15;
  v16 = [obj countByEnumeratingWithState:&v56 objects:v64 count:16];
  v17 = 0x277CFE000uLL;
  if (v16)
  {
    v18 = v16;
    v19 = *v57;
    v52 = *v57;
    do
    {
      v20 = 0;
      v54 = v18;
      do
      {
        if (*v57 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v56 + 1) + 8 * v20);
        v22 = [*(v17 + 824) appWebUsageStartDate];
        v23 = [v21 objectForKeyedSubscript:v22];

        v24 = [*(v17 + 824) appWebUsageBundleID];
        v25 = [v21 objectForKeyedSubscript:v24];

        if (v23)
        {
          v26 = v25 == 0;
        }

        else
        {
          v26 = 1;
        }

        if (!v26)
        {
          v27 = objc_alloc_init(MEMORY[0x277CBEB38]);
          v28 = [*(v17 + 824) appWebUsageWepageURL];
          v29 = [v21 objectForKeyedSubscript:v28];

          if (v29)
          {
            v30 = [MEMORY[0x277CFE1D0] webpageURL];
            [v27 setObject:v29 forKeyedSubscript:v30];
          }

          v31 = [*(v17 + 824) appWebUsageWebDomain];
          v32 = [v21 objectForKeyedSubscript:v31];

          if (v32)
          {
            v33 = [MEMORY[0x277CFE1D0] webDomain];
            [v27 setObject:v32 forKeyedSubscript:v33];
          }

          v34 = [*(v17 + 824) isUsageTrusted];
          v35 = [v21 objectForKeyedSubscript:v34];

          if (v35)
          {
            v36 = [MEMORY[0x277CFE1D0] isUsageTrusted];
            [v27 setObject:v35 forKeyedSubscript:v36];
          }

          v37 = [*(v17 + 824) appWebUsageType];
          v38 = [v21 objectForKeyedSubscript:v37];

          if (v38)
          {
            v39 = [MEMORY[0x277CFE1D0] usageType];
            [v27 setObject:v38 forKeyedSubscript:v39];
          }

          v40 = MEMORY[0x277CFE1D8];
          v41 = [MEMORY[0x277CFE298] appWebUsageStream];
          v42 = [v40 eventWithStream:v41 source:0 startDate:v23 endDate:v53 identifierStringValue:v25 metadata:v27];

          if (v42)
          {
            [v51 addObject:v42];
          }

          v17 = 0x277CFE000;
          v19 = v52;
          v18 = v54;
        }

        ++v20;
      }

      while (v18 != v20);
      v18 = [obj countByEnumeratingWithState:&v56 objects:v64 count:16];
    }

    while (v18);
  }

  if ([v51 count])
  {
    v43 = [MEMORY[0x277CFE0C8] knowledgeChannel];
    if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
    {
      v44 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v51, "count")}];
      *buf = 138412546;
      v61 = v44;
      v62 = 2112;
      v63 = v50;
      _os_log_impl(&dword_2707F8000, v43, OS_LOG_TYPE_INFO, "Cleared %@ events from bundleIDs: %@", buf, 0x16u);
    }

    v45 = [(_DKMonitor *)v47 historicalHandler];
    (v45)[2](v45, v51);
  }

  v46 = *MEMORY[0x277D85DE8];
}

- (void)updateActiveApplicationsWithLayout:(id)a3 displayType:(unint64_t)a4
{
  v6 = a3;
  v7 = [(_DKMonitor *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__USApplicationUsageMonitor_updateActiveApplicationsWithLayout_displayType___block_invoke;
  block[3] = &unk_279E09868;
  v11 = self;
  v12 = a4;
  v10 = v6;
  v8 = v6;
  dispatch_sync(v7, block);
}

void __76__USApplicationUsageMonitor_updateActiveApplicationsWithLayout_displayType___block_invoke(uint64_t a1)
{
  v1 = a1;
  v32 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) displayBacklightLevel];
  v3 = objc_alloc_init(MEMORY[0x277CBEB98]);
  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  if (v2)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v5 = [*(v1 + 32) elements];
    v6 = [v5 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v6)
    {
      v7 = v6;
      v25 = v3;
      v26 = v1;
      v8 = *v28;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v28 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v27 + 1) + 8 * i);
          v11 = [v10 bundleIdentifier];
          if (!v11)
          {
            v12 = [v10 identifier];
            v13 = [v12 isEqualToString:@"com.apple.springboard.stand-by"];

            if (v13)
            {
              v11 = @"com.apple.springboard.stand-by";
            }

            else
            {
              v11 = 0;
            }
          }

          v14 = [v10 identifier];
          v15 = [v14 isEqualToString:@"com.apple.lock-screen"];

          if (v15)
          {
            v16 = [MEMORY[0x277CBEB58] set];

            v4 = v16;
            goto LABEL_19;
          }

          if (v11 && ([(__CFString *)v11 isEqualToString:@"com.apple.SleepLockScreen"]& 1) == 0)
          {
            [v4 addObject:v11];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }

LABEL_19:
      v3 = v25;
      v1 = v26;
    }

    v17 = [v4 copy];
    v3 = v17;
  }

  v18 = *(v1 + 48);
  if (v18 > 1)
  {
    if (v18 == 2)
    {
      [*(v1 + 40) setActiveExternalApplications:v3];
    }

    else if (v18 == 3)
    {
      [*(v1 + 40) setActiveContinuityApplications:v3];
    }
  }

  else if (v18)
  {
    if (v18 == 1)
    {
      [*(v1 + 40) setActiveCarPlayApplications:v3];
    }
  }

  else
  {
    [*(v1 + 40) setActiveApplications:v3];
  }

  v19 = [*(v1 + 40) activeApplications];
  [v4 unionSet:v19];

  v20 = [*(v1 + 40) activeCarPlayApplications];
  [v4 unionSet:v20];

  v21 = [*(v1 + 40) activeExternalApplications];
  [v4 unionSet:v21];

  v22 = [*(v1 + 40) activeContinuityApplications];
  [v4 unionSet:v22];

  v23 = [v4 copy];
  [*(v1 + 40) updateInUseApplications:v23 activeApplications:0];

  v24 = *MEMORY[0x277D85DE8];
}

- (void)platformSpecificStart
{
  v3 = [MEMORY[0x277D0AD20] configurationForDefaultMainDisplayMonitor];
  [v3 setNeedsUserInteractivePriority:1];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __50__USApplicationUsageMonitor_platformSpecificStart__block_invoke;
  v13[3] = &unk_279E09890;
  v13[4] = self;
  [v3 setTransitionHandler:v13];
  v4 = [MEMORY[0x277D0AD08] monitorWithConfiguration:v3];
  [(USApplicationUsageMonitor *)self setMonitor:v4];

  v5 = [MEMORY[0x277D0AD20] configurationForCarDisplayMonitor];

  if (v5)
  {
    [v5 setNeedsUserInteractivePriority:1];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __50__USApplicationUsageMonitor_platformSpecificStart__block_invoke_2;
    v12[3] = &unk_279E09890;
    v12[4] = self;
    [v5 setTransitionHandler:v12];
    v6 = [MEMORY[0x277D0AD08] monitorWithConfiguration:v5];
    [(USApplicationUsageMonitor *)self setCarPlayMonitor:v6];
  }

  v7 = [MEMORY[0x277D0AD20] configurationForContinuityDisplay];

  if (v7)
  {
    [v7 setNeedsUserInteractivePriority:1];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __50__USApplicationUsageMonitor_platformSpecificStart__block_invoke_3;
    v11[3] = &unk_279E09890;
    v11[4] = self;
    [v7 setTransitionHandler:v11];
    v8 = [MEMORY[0x277D0AD08] monitorWithConfiguration:v7];
    [(USApplicationUsageMonitor *)self setContinuityMonitor:v8];
  }

  v9 = objc_alloc_init(MEMORY[0x277D0AD38]);
  [(USApplicationUsageMonitor *)self setDisplayMonitor:v9];

  v10 = [(USApplicationUsageMonitor *)self displayMonitor];
  [v10 addObserver:self];
}

- (void)platformSpecificStop
{
  v3 = [(USApplicationUsageMonitor *)self monitor];
  [v3 invalidate];

  [(USApplicationUsageMonitor *)self setMonitor:0];
  [(USApplicationUsageMonitor *)self setActiveApplications:0];
  v4 = [(USApplicationUsageMonitor *)self carPlayMonitor];
  [v4 invalidate];

  [(USApplicationUsageMonitor *)self setCarPlayMonitor:0];
  [(USApplicationUsageMonitor *)self setActiveCarPlayApplications:0];
  v5 = [(USApplicationUsageMonitor *)self externalMonitor];
  [v5 invalidate];

  [(USApplicationUsageMonitor *)self setExternalMonitor:0];
  [(USApplicationUsageMonitor *)self setActiveExternalApplications:0];
  v6 = [(USApplicationUsageMonitor *)self continuityMonitor];
  [v6 invalidate];

  [(USApplicationUsageMonitor *)self setContinuityMonitor:0];
  [(USApplicationUsageMonitor *)self setActiveContinuityApplications:0];
  v7 = [(USApplicationUsageMonitor *)self displayMonitor];
  [v7 removeObserver:self];

  [(USApplicationUsageMonitor *)self setDisplayMonitor:0];
}

- (void)displayMonitor:(id)a3 didConnectIdentity:(id)a4 withConfiguration:(id)a5
{
  v6 = SBSCreateLayoutServiceEndpointForExternalDisplay();
  v7 = [MEMORY[0x277D0AD20] configurationWithEndpoint:v6];
  v8 = v7;
  if (v7)
  {
    [v7 setNeedsUserInteractivePriority:1];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __81__USApplicationUsageMonitor_displayMonitor_didConnectIdentity_withConfiguration___block_invoke;
    v12[3] = &unk_279E09890;
    v12[4] = self;
    [v8 setTransitionHandler:v12];
    v9 = [MEMORY[0x277D0AD08] monitorWithConfiguration:v8];
    v10 = [(USApplicationUsageMonitor *)self externalMonitor];

    if (v10)
    {
      v11 = [(USApplicationUsageMonitor *)self externalMonitor];
      [v11 invalidate];

      [(USApplicationUsageMonitor *)self setExternalMonitor:0];
    }

    [(USApplicationUsageMonitor *)self setExternalMonitor:v9];
  }
}

- (void)updateInUseApplications:(id)a3 activeApplications:(id)a4
{
  v84 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(_DKMonitor *)self queue];
  dispatch_assert_queue_V2(v6);

  v7 = [(USApplicationUsageMonitor *)self inUseApplicationEvents];
  v8 = objc_alloc(MEMORY[0x277CBEB98]);
  v9 = [v7 allKeys];
  v10 = [v8 initWithArray:v9];

  v11 = [MEMORY[0x277CBEAA8] date];
  if (([v5 isEqual:v10] & 1) == 0)
  {
    v59 = v10;
    v62 = [v7 mutableCopy];
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    v60 = v5;
    obj = v5;
    v12 = [obj countByEnumeratingWithState:&v77 objects:v83 count:16];
    v67 = self;
    v61 = v7;
    if (v12)
    {
      v13 = v12;
      v14 = *v78;
      v15 = MEMORY[0x277CBEC38];
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v78 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v77 + 1) + 8 * i);
          v18 = [v7 objectForKeyedSubscript:v17];
          if (!v18)
          {
            v19 = [(USApplicationUsageMonitor *)self activeCarPlayApplications];
            v20 = [v19 containsObject:v17];

            v21 = v20 ? 3 : 1;
            v18 = [USApplicationUsageMonitor _eventWithBundleIdentifier:v17 startDate:v11 usageType:v21 usageTrusted:1];
            if (v18)
            {
              [v62 setObject:v18 forKey:v17];
              v22 = [v18 metadata];
              v23 = [MEMORY[0x277CFE158] appBundleID];
              v24 = [v22 objectForKeyedSubscript:v23];

              self = v67;
              v25 = [objc_alloc(MEMORY[0x277CF1440]) initWithStarting:v15 absoluteTimestamp:v11 bundleID:v17 parentBundleID:v24 isUsageTrusted:v15];
              v26 = [(USApplicationUsageMonitor *)v67 appUsageSource];
              [v11 timeIntervalSinceReferenceDate];
              [v26 sendEvent:v25 timestamp:?];

              v7 = v61;
            }
          }
        }

        v13 = [obj countByEnumeratingWithState:&v77 objects:v83 count:16];
      }

      while (v13);
    }

    v27 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v68 = v7;
    v28 = [v68 countByEnumeratingWithState:&v73 objects:v82 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v74;
      do
      {
        for (j = 0; j != v29; ++j)
        {
          if (*v74 != v30)
          {
            objc_enumerationMutation(v68);
          }

          v32 = *(*(&v73 + 1) + 8 * j);
          if (([obj containsObject:v32] & 1) == 0)
          {
            [v27 addObject:v32];
            [v62 removeObjectForKey:v32];
          }
        }

        v29 = [v68 countByEnumeratingWithState:&v73 objects:v82 count:16];
      }

      while (v29);
    }

    v63 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v65 = v27;
    v33 = [v65 countByEnumeratingWithState:&v69 objects:v81 count:16];
    if (v33)
    {
      v34 = v33;
      v66 = *v70;
      do
      {
        for (k = 0; k != v34; ++k)
        {
          if (*v70 != v66)
          {
            objc_enumerationMutation(v65);
          }

          v36 = [v68 objectForKeyedSubscript:*(*(&v69 + 1) + 8 * k)];
          [v36 setEndDate:v11];
          v37 = [v36 metadata];
          v38 = [MEMORY[0x277CFE158] appBundleID];
          v39 = [v37 objectForKeyedSubscript:v38];

          v40 = [v36 stringValue];
          v41 = v40;
          if (v39)
          {
            v42 = v40;
            v41 = v39;
          }

          else
          {
            if (!v40)
            {
              goto LABEL_44;
            }

            v42 = 0;
          }

          if (([v41 isEqualToString:@"com.apple.springboard.stand-by"] & 1) == 0)
          {
            [v63 addObject:v36];
          }

          v43 = [v36 metadata];
          v44 = [MEMORY[0x277CFE1D0] isUsageTrusted];
          v45 = [v43 objectForKeyedSubscript:v44];
          v46 = v45;
          v47 = MEMORY[0x277CBEC38];
          if (v45)
          {
            v47 = v45;
          }

          v48 = v47;

          v49 = objc_alloc(MEMORY[0x277CF1440]);
          if (v42)
          {
            v50 = v42;
          }

          else
          {
            v50 = v41;
          }

          if (v42)
          {
            v51 = v41;
          }

          else
          {
            v51 = 0;
          }

          v52 = [v49 initWithStarting:MEMORY[0x277CBEC28] absoluteTimestamp:v11 bundleID:v50 parentBundleID:v51 isUsageTrusted:v48];

          v53 = [(USApplicationUsageMonitor *)v67 appUsageSource];
          [v11 timeIntervalSinceReferenceDate];
          [v53 sendEvent:v52 timestamp:?];

LABEL_44:
        }

        v34 = [v65 countByEnumeratingWithState:&v69 objects:v81 count:16];
      }

      while (v34);
    }

    v54 = [obj count];
    if ([v65 count] || !v54)
    {
      [(USApplicationUsageMonitor *)v67 clearAppWebAndMediaUsageInContextStoreMatchingBundleIDs:v65 clearAll:v54 == 0];
    }

    v55 = [v62 copy];
    [(USApplicationUsageMonitor *)v67 setInUseApplicationEvents:v55];

    v56 = [(_DKMonitor *)v67 historicalHandler];

    v5 = v60;
    v7 = v61;
    if (v56)
    {
      v57 = [(_DKMonitor *)v67 historicalHandler];
      (v57)[2](v57, v63);
    }

    [(USApplicationUsageMonitor *)v67 updateAppDataInContextStore];
    v10 = v59;
  }

  v58 = *MEMORY[0x277D85DE8];
}

- (void)start
{
  v6.receiver = self;
  v6.super_class = USApplicationUsageMonitor;
  if ([(_DKMonitor *)&v6 instantMonitorNeedsActivation])
  {
    [(USApplicationUsageMonitor *)self platformSpecificStart];
    [(USApplicationUsageMonitor *)self obtainCurrentValue];
    objc_initWeak(&location, self);
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __34__USApplicationUsageMonitor_start__block_invoke;
    v3[3] = &unk_279E098E0;
    objc_copyWeak(&v4, &location);
    [(_DKMonitor *)self setShutdownHandler:v3];
    objc_destroyWeak(&v4);
    objc_destroyWeak(&location);
  }
}

void __34__USApplicationUsageMonitor_start__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CFE0C8] knowledgeChannel];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __34__USApplicationUsageMonitor_start__block_invoke_cold_1(v2);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __34__USApplicationUsageMonitor_start__block_invoke_43;
    block[3] = &unk_279E098B8;
    block[4] = v4;
    dispatch_sync(v5, block);
  }
}

void __34__USApplicationUsageMonitor_start__block_invoke_43(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = [MEMORY[0x277CBEB98] set];
  v2 = [MEMORY[0x277CBEB98] set];
  [v1 updateInUseApplications:v3 activeApplications:v2];
}

- (void)stop
{
  v3.receiver = self;
  v3.super_class = USApplicationUsageMonitor;
  if ([(_DKMonitor *)&v3 instantMonitorNeedsDeactivation])
  {
    [(USApplicationUsageMonitor *)self platformSpecificStop];
    [(_DKMonitor *)self setShutdownHandler:0];
  }
}

- (void)invalidateInstantState
{
  v3 = [(_DKMonitor *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__USApplicationUsageMonitor_invalidateInstantState__block_invoke;
  block[3] = &unk_279E098B8;
  block[4] = self;
  dispatch_sync(v3, block);
}

+ (void)_eventWithBundleIdentifier:(os_log_t)log startDate:usageType:usageTrusted:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_2707F8000, log, OS_LOG_TYPE_ERROR, "Failed to lookup LSApplicationRecord for app usage event with bundleID %@: %@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

+ (void)_eventWithBundleIdentifier:(uint64_t)a1 startDate:(NSObject *)a2 usageType:usageTrusted:.cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_fault_impl(&dword_2707F8000, a2, OS_LOG_TYPE_FAULT, "Failed to find app bundleID for app clip usage event with bundleID %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)clearAppWebAndMediaUsageInContextStoreMatchingBundleIDs:(uint64_t)a1 clearAll:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_2707F8000, a2, OS_LOG_TYPE_DEBUG, "Clearing app and media usage for bundleIDs: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end