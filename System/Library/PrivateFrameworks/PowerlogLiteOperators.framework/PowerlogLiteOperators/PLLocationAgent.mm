@interface PLLocationAgent
+ (id)entryEventBackwardDefinitions;
+ (id)entryEventForwardDefinitionClientStatus;
+ (id)entryEventForwardDefinitionGPSSubscription;
+ (id)entryEventForwardDefinitionGnssSession;
+ (id)entryEventForwardDefinitionLogLevel;
+ (id)entryEventForwardDefinitionOdometry;
+ (id)entryEventForwardDefinitionStatusBar;
+ (id)entryEventForwardDefinitionSuppressionManagerClient;
+ (id)entryEventForwardDefinitionTechStatus;
+ (id)entryEventForwardDefinitionViewObstructed;
+ (id)entryEventForwardDefinitions;
+ (id)entryEventIntervalDefinitionMapsBusyness;
+ (id)entryEventIntervalDefinitionPDR;
+ (id)entryEventIntervalDefinitionSeparationAlert;
+ (id)entryEventIntervalDefinitions;
+ (id)entryEventNoneDefinitionClientStatusDebug;
+ (id)entryEventNoneDefinitions;
+ (id)entryEventPointDefinitionClientStatus;
+ (id)entryEventPointDefinitionMiLo;
+ (id)entryEventPointDefinitionMotionPacket;
+ (id)entryEventPointDefinitionWifiLocationScanRequesters;
+ (id)entryEventPointDefinitions;
+ (void)load;
- (BOOL)shouldRateLimitTechStatus;
- (PLLocationAgent)init;
- (id)getOpenEntryForClientSettings:(id)a3 withTimeStarted:(id)a4 withClient:(id)a5 withType:(id)a6 withEntryKey:(id)a7;
- (id)humanReadableNameForTechnology:(id)a3;
- (id)lastEntryWithClient:(id)a3 withType:(id)a4 withBundleID:(id)a5 withEntryKey:(id)a6;
- (unint64_t)convertCheckInEvent:(id)a3;
- (unint64_t)convertClientEvent:(id)a3;
- (unint64_t)convertOdometryEvent:(id)a3;
- (unint64_t)convertViewObstructedEvent:(id)a3;
- (void)closeOpenEntryForClient:(id)a3 withOpenEntry:(id)a4 withTimeStopped:(id)a5;
- (void)initOperatorDependancies;
- (void)logEventForwardCheckInSession:(id)a3;
- (void)logEventForwardClientStatuswithPayload:(id)a3;
- (void)logEventForwardGnssSession:(id)a3;
- (void)logEventForwardOdometry:(id)a3;
- (void)logEventForwardSuppressionManagerClient:(id)a3;
- (void)logEventForwardTechStatus;
- (void)logEventForwardTechStatus_withLimiter;
- (void)logEventForwardViewObstructed:(id)a3;
- (void)logEventFowardGPSSubscription:(id)a3;
- (void)logEventIntervalMapsBusynessState:(id)a3;
- (void)logEventIntervalPDR:(id)a3;
- (void)logEventIntervalSeparationAlert:(id)a3;
- (void)logEventNoneClientStatus;
- (void)logEventNoneClientStatusDebugWithClients:(id)a3;
- (void)logEventPointClientStatus;
- (void)logEventPointGeofenceTrigger:(id)a3;
- (void)logEventPointMiLoScans:(id)a3;
- (void)logEventPointMotionPacket:(id)a3;
- (void)logEventPointWifiLocationScanRequesters:(id)a3;
- (void)logPredictedContextInferenceEvent:(id)a3;
- (void)logPredictedContextTrainingEvent:(id)a3;
- (void)modelGpsSegmentPower:(id)a3 withGpsPower:(double)a4 withTotalDuration:(double)a5;
- (void)processesOfInterest:(id)a3;
- (void)resyncActiveClients;
- (void)updateClientsLocationInfo:(id)a3;
- (void)updateGnssPowerMetric:(id)a3;
- (void)updateLocalCacheWithClient:(id)a3 withType:(id)a4 withBundleID:(id)a5 withEntry:(id)a6;
- (void)updateLocationDistributionEvents;
- (void)updateLocationQualificationEvents;
- (void)writeModeledPower;
@end

@implementation PLLocationAgent

- (void)logEventForwardTechStatus
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = PLLogLocation();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_21A4C6000, v3, OS_LOG_TYPE_DEBUG, "begin", buf, 2u);
  }

  v23 = [(PLOperator *)PLLocationAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"TechStatus"];
  v4 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v23];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v5 = [v4 definedKeys];
  v6 = [v5 countByEnumeratingWithState:&v28 objects:v35 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v29;
    v9 = MEMORY[0x277CBEC28];
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v29 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [v4 setObject:v9 forKeyedSubscript:*(*(&v28 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v28 objects:v35 count:16];
    }

    while (v7);
  }

  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v11 = CLCopyTechnologiesInUse();
  v12 = [v11 countByEnumeratingWithState:&v24 objects:v34 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v25;
    v15 = MEMORY[0x277CBEC38];
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v25 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v24 + 1) + 8 * j);
        v18 = [(PLLocationAgent *)self humanReadableNameForTechnology:v17];
        [v4 setObject:v15 forKeyedSubscript:v18];

        v19 = PLLogLocation();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          v20 = [(PLLocationAgent *)self humanReadableNameForTechnology:v17];
          *buf = 138412290;
          v33 = v20;
          _os_log_debug_impl(&dword_21A4C6000, v19, OS_LOG_TYPE_DEBUG, "Technology in use=%@", buf, 0xCu);
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v24 objects:v34 count:16];
    }

    while (v13);
  }

  [(PLOperator *)self logEntry:v4];
  v21 = PLLogLocation();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_21A4C6000, v21, OS_LOG_TYPE_DEBUG, "end", buf, 2u);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldRateLimitTechStatus
{
  if (([MEMORY[0x277D3F258] isPowerlogHelperd] & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F258], "isPerfPowerMetricd") & 1) != 0 || !objc_msgSend(MEMORY[0x277D3F180], "liteMode"))
  {
    return 0;
  }

  v3 = [(PLLocationAgent *)self lastTechStatusNotificationDate];

  if (v3)
  {
    v4 = [(PLLocationAgent *)self lastTechStatusNotificationDate];
    [v4 timeIntervalSinceNow];
    v6 = v5 >= -2.0;
  }

  else
  {
    v4 = [MEMORY[0x277CBEAA8] monotonicDate];
    [(PLLocationAgent *)self setLastTechStatusNotificationDate:v4];
    v6 = 0;
  }

  return v6;
}

- (void)logEventForwardTechStatus_withLimiter
{
  v3 = [(PLLocationAgent *)self techStatusLimiterIsActive];
  objc_sync_enter(v3);
  v4 = [(PLLocationAgent *)self techStatusLimiterIsActive];
  v5 = [v4 BOOLValue];

  if ((v5 & 1) == 0)
  {
    if ([(PLLocationAgent *)self shouldRateLimitTechStatus])
    {
      v6 = PLLogLocation();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_21A4C6000, v6, OS_LOG_TYPE_DEBUG, "Rate-limiting CLTechStatusChangedNotification", buf, 2u);
      }

      [(PLLocationAgent *)self setTechStatusLimiterIsActive:MEMORY[0x277CBEC38]];
      v7 = [(PLLocationAgent *)self lastTechStatusNotificationDate];
      [v7 timeIntervalSinceNow];
      v9 = dispatch_time(1000000000 * v8, 2000000000);
      v10 = [(PLOperator *)self workQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __56__PLLocationAgent_logEventForwardTechStatus_withLimiter__block_invoke;
      block[3] = &unk_2782591D0;
      block[4] = self;
      dispatch_after(v9, v10, block);
    }

    else
    {
      [(PLLocationAgent *)self logEventForwardTechStatus];
      v7 = [MEMORY[0x277CBEAA8] monotonicDate];
      [(PLLocationAgent *)self setLastTechStatusNotificationDate:v7];
    }
  }

  objc_sync_exit(v3);
}

uint64_t __23__PLLocationAgent_init__block_invoke(uint64_t a1)
{
  v2 = PLLogLocation();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_debug_impl(&dword_21A4C6000, v2, OS_LOG_TYPE_DEBUG, "techStatusChanged callback", v4, 2u);
  }

  return [*(a1 + 32) logEventForwardTechStatus_withLimiter];
}

uint64_t __43__PLLocationAgent_initOperatorDependancies__block_invoke_434(uint64_t a1)
{
  if (notify_post("com.apple.powerlog.gpslogtrigger"))
  {
    v2 = PLLogLocation();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      *v4 = 0;
      _os_log_debug_impl(&dword_21A4C6000, v2, OS_LOG_TYPE_DEBUG, "GPS Notification failed.", v4, 2u);
    }
  }

  return [*(a1 + 32) writeModeledPower];
}

- (void)writeModeledPower
{
  if (([MEMORY[0x277D3F208] isHomePod] & 1) == 0 && self->_gps_segment_timestamp != self->_gps_segment_lastWrittenTimestamp)
  {
    if (self->_gps_segment_power > 1000.0)
    {
      self->_gps_segment_power = 1000.0;
    }

    v3 = [MEMORY[0x277D3F0C0] sharedInstance];
    [v3 createPowerEventBackwardWithRootNodeID:48 withPower:self->_gps_segment_date withEndDate:self->_gps_segment_power];

    objc_storeStrong(&self->_gps_segment_lastWrittenDate, self->_gps_segment_date);
    self->_gps_segment_lastWrittenTimestamp = self->_gps_segment_timestamp;
  }
}

void __43__PLLocationAgent_initOperatorDependancies__block_invoke_432(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogLocation();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "Received GnssPowerMetric XPC with payload=%@", &v9, 0xCu);
  }

  [*(a1 + 32) updateGnssPowerMetric:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __43__PLLocationAgent_initOperatorDependancies__block_invoke_484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogLocation();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "Received gpsactivation XPC with payload=%@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventFowardGPSSubscription:v6];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)updateLocationDistributionEvents
{
  v76 = *MEMORY[0x277D85DE8];
  if (([MEMORY[0x277D3F208] isHomePod] & 1) == 0)
  {
    v52 = self;
    v3 = [(PLLocationAgent *)self activeClients];
    v4 = PLLogLocation();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v72 = v3;
      _os_log_debug_impl(&dword_21A4C6000, v4, OS_LOG_TYPE_DEBUG, "clientToOpenEntry=%@", buf, 0xCu);
    }

    v56 = [MEMORY[0x277CBEB38] dictionary];
    v5 = [MEMORY[0x277CBEB38] dictionary];
    v53 = [MEMORY[0x277CBEB38] dictionary];
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v6 = v3;
    v7 = [v6 countByEnumeratingWithState:&v65 objects:v75 count:16];
    v55 = v6;
    if (v7)
    {
      v8 = v7;
      v9 = *v66;
      do
      {
        v10 = 0;
        do
        {
          if (*v66 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v65 + 1) + 8 * v10);
          if (objc_opt_respondsToSelector())
          {
            v12 = objc_autoreleasePoolPush();
            v13 = [v6 objectForKeyedSubscript:v11];
            v14 = PLLogLocation();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412546;
              v72 = v11;
              v73 = 2112;
              v74 = v13;
              _os_log_debug_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_DEBUG, "clientID=%@, openEntry=%@", buf, 0x16u);
            }

            v15 = [v13 objectForKeyedSubscript:@"LocationDesiredAccuracy"];
            v16 = v15;
            if (v15)
            {
              [v15 doubleValue];
              if (v17 < 1000.0)
              {
                v18 = [v13 entryDate];

                if (v18)
                {
                  v19 = [v13 objectForKeyedSubscript:@"BundleId"];
                  if (v19)
                  {
                    v20 = v19;
                    goto LABEL_17;
                  }

                  if ([v11 hasPrefix:@"com.apple.locationd.bundle-"])
                  {
                    v54 = [v11 substringFromIndex:{objc_msgSend(@"com.apple.locationd.bundle-", "length")}];
                    v24 = MEMORY[0x277D3F258];
                    v25 = [MEMORY[0x277CBEBC0] fileURLWithPath:v54];
                    v20 = [v24 bundleIDFromURL:v25];

                    if (v20)
                    {
LABEL_17:
                      v21 = PLLogLocation();
                      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
                      {
                        *buf = 138412290;
                        v72 = v20;
                        _os_log_debug_impl(&dword_21A4C6000, v21, OS_LOG_TYPE_DEBUG, "bundleID=%@", buf, 0xCu);
                      }

                      [v16 doubleValue];
                      if (v22 >= 100.0)
                      {
                        v23 = v5;
                      }

                      else
                      {
                        v23 = v56;
                      }

                      [v23 setObject:&unk_282C13500 forKeyedSubscript:v20];
                    }
                  }
                }
              }
            }

            objc_autoreleasePoolPop(v12);
            v6 = v55;
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v65 objects:v75 count:16];
      }

      while (v8);
    }

    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v26 = [v56 allKeys];
    v27 = [v26 countByEnumeratingWithState:&v61 objects:v70 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v62;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v62 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = *(*(&v61 + 1) + 8 * i);
          v32 = [MEMORY[0x277CCABB0] numberWithDouble:{1.0 / objc_msgSend(v56, "count")}];
          [v56 setObject:v32 forKeyedSubscript:v31];
        }

        v28 = [v26 countByEnumeratingWithState:&v61 objects:v70 count:16];
      }

      while (v28);
    }

    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v33 = [v5 allKeys];
    v34 = [v33 countByEnumeratingWithState:&v57 objects:v69 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v58;
      do
      {
        for (j = 0; j != v35; ++j)
        {
          if (*v58 != v36)
          {
            objc_enumerationMutation(v33);
          }

          v38 = *(*(&v57 + 1) + 8 * j);
          v39 = [MEMORY[0x277CCABB0] numberWithDouble:{1.0 / objc_msgSend(v5, "count")}];
          [v5 setObject:v39 forKeyedSubscript:v38];
        }

        v35 = [v33 countByEnumeratingWithState:&v57 objects:v69 count:16];
      }

      while (v35);
    }

    if ([v56 count])
    {
      v40 = v56;
    }

    else
    {
      v40 = v5;
    }

    [v53 setValuesForKeysWithDictionary:v40];
    v41 = [v56 isEqualToDictionary:v52->_bundleIDToWeightUsingGPSCache];
    v42 = [v5 isEqualToDictionary:v52->_bundleIDToWeightUsingWiFiCache];
    v43 = [v53 isEqualToDictionary:v52->_bundleIDToWeightUsingLocationCache];
    v44 = v43;
    if (v41)
    {
      v45 = v42 == 0;
    }

    else
    {
      v45 = 1;
    }

    if (!v45 && (v43 & 1) != 0)
    {
      goto LABEL_55;
    }

    v46 = [MEMORY[0x277CBEAA8] monotonicDate];
    if (v41)
    {
      if (v42)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v49 = [MEMORY[0x277D3F0C0] sharedInstance];
      [v49 createDistributionEventForwardWithDistributionID:23 withChildNodeNameToWeight:v56 withStartDate:v46];

      v50 = [MEMORY[0x277D3F0C0] sharedInstance];
      [v50 createDistributionEventForwardWithDistributionID:24 withChildNodeNameToWeight:v56 withStartDate:v46];

      objc_storeStrong(&v52->_bundleIDToWeightUsingGPSCache, v56);
      if (v42)
      {
LABEL_52:
        if (v44)
        {
LABEL_54:

LABEL_55:
          goto LABEL_56;
        }

LABEL_53:
        v47 = [MEMORY[0x277D3F0C0] sharedInstance];
        [v47 createDistributionEventForwardWithDistributionID:30 withChildNodeNameToWeight:v53 withStartDate:v46];

        objc_storeStrong(&v52->_bundleIDToWeightUsingLocationCache, v53);
        goto LABEL_54;
      }
    }

    v51 = [MEMORY[0x277D3F0C0] sharedInstance];
    [v51 createDistributionEventForwardWithDistributionID:25 withChildNodeNameToWeight:v5 withStartDate:v46];

    objc_storeStrong(&v52->_bundleIDToWeightUsingWiFiCache, v5);
    if (v44)
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }

LABEL_56:
  v48 = *MEMORY[0x277D85DE8];
}

void __43__PLLocationAgent_initOperatorDependancies__block_invoke_440(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = PLLogLocation();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_debug_impl(&dword_21A4C6000, v4, OS_LOG_TYPE_DEBUG, "Notification from ThermalMonitor: %@", &v7, 0xCu);
  }

  if (notify_post("com.apple.powerlog.gpslogtrigger"))
  {
    v5 = PLLogLocation();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v7) = 0;
      _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "GPS Notification failed.", &v7, 2u);
    }
  }

  [*(a1 + 32) writeModeledPower];

  v6 = *MEMORY[0x277D85DE8];
}

void __43__PLLocationAgent_initOperatorDependancies__block_invoke_409(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogLocation();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "clientStatus XPC with payload=%@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventForwardClientStatuswithPayload:v6];
  v8 = *MEMORY[0x277D85DE8];
}

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___PLLocationAgent;
  objc_msgSendSuper2(&v2, sel_load);
}

+ (id)entryEventPointDefinitions
{
  v12[5] = *MEMORY[0x277D85DE8];
  v11[0] = @"ClientStatus";
  v3 = [a1 entryEventPointDefinitionClientStatus];
  v12[0] = v3;
  v11[1] = @"GeoFenceHandoff";
  v4 = [a1 entryEventPointDefinitionGeoFenceHandoff];
  v12[1] = v4;
  v11[2] = @"WifiLocationScanRequesters";
  v5 = [a1 entryEventPointDefinitionWifiLocationScanRequesters];
  v12[2] = v5;
  v11[3] = @"MiLoScanEvent";
  v6 = [a1 entryEventPointDefinitionMiLo];
  v12[3] = v6;
  v11[4] = @"MotionPacket";
  v7 = [a1 entryEventPointDefinitionMotionPacket];
  v12[4] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:5];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)entryEventPointDefinitionClientStatus
{
  v30[2] = *MEMORY[0x277D85DE8];
  v29[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F498];
  v27[0] = *MEMORY[0x277D3F568];
  v27[1] = v2;
  v28[0] = &unk_282C1CDA8;
  v28[1] = MEMORY[0x277CBEC38];
  v3 = *MEMORY[0x277D3F4A0];
  v27[2] = *MEMORY[0x277D3F558];
  v27[3] = v3;
  v28[2] = MEMORY[0x277CBEC38];
  v28[3] = MEMORY[0x277CBEC38];
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:4];
  v30[0] = v24;
  v29[1] = *MEMORY[0x277D3F540];
  v25[0] = @"timestampEnd";
  v23 = [MEMORY[0x277D3F198] sharedInstance];
  v22 = [v23 commonTypeDict_DateFormat];
  v26[0] = v22;
  v25[1] = @"Type";
  v21 = [MEMORY[0x277D3F198] sharedInstance];
  v20 = [v21 commonTypeDict_StringFormat];
  v26[1] = v20;
  v25[2] = @"Client";
  v19 = [MEMORY[0x277D3F198] sharedInstance];
  v18 = [v19 commonTypeDict_StringFormat_withBundleID];
  v26[2] = v18;
  v25[3] = @"BundleId";
  v17 = [MEMORY[0x277D3F198] sharedInstance];
  v16 = [v17 commonTypeDict_StringFormat_withBundleID];
  v26[3] = v16;
  v25[4] = @"Executable";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_StringFormat_withProcessName];
  v26[4] = v5;
  v25[5] = @"Authorized";
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_BoolFormat];
  v26[5] = v7;
  v25[6] = @"LocationDesiredAccuracy";
  v8 = [MEMORY[0x277D3F198] sharedInstance];
  v9 = [v8 commonTypeDict_RealFormat];
  v26[6] = v9;
  v25[7] = @"LocationDistanceFilter";
  v10 = [MEMORY[0x277D3F198] sharedInstance];
  v11 = [v10 commonTypeDict_RealFormat];
  v26[7] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:8];
  v30[1] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:2];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)entryEventPointDefinitionWifiLocationScanRequesters
{
  v17[2] = *MEMORY[0x277D85DE8];
  v16[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4A0];
  v14[0] = *MEMORY[0x277D3F568];
  v14[1] = v2;
  v15[0] = &unk_282C1CDB8;
  v15[1] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
  v17[0] = v3;
  v16[1] = *MEMORY[0x277D3F540];
  v12[0] = @"scanRequester";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_StringFormat_withBundleID];
  v12[1] = @"numRequests";
  v13[0] = v5;
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_IntegerFormat];
  v13[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v17[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)entryEventPointDefinitionMiLo
{
  v24[2] = *MEMORY[0x277D85DE8];
  v23[0] = *MEMORY[0x277D3F4E8];
  v21 = *MEMORY[0x277D3F568];
  v22 = &unk_282C1CDC8;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
  v24[0] = v18;
  v23[1] = *MEMORY[0x277D3F540];
  v19[0] = @"BTScanDuration";
  v17 = [MEMORY[0x277D3F198] sharedInstance];
  v16 = [v17 commonTypeDict_RealFormat];
  v20[0] = v16;
  v19[1] = @"BleActiveScanRate";
  v15 = [MEMORY[0x277D3F198] sharedInstance];
  v14 = [v15 commonTypeDict_IntegerFormat];
  v20[1] = v14;
  v19[2] = @"NumLocalizations";
  v2 = [MEMORY[0x277D3F198] sharedInstance];
  v3 = [v2 commonTypeDict_IntegerFormat];
  v20[2] = v3;
  v19[3] = @"NumRecordings";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_IntegerFormat];
  v20[3] = v5;
  v19[4] = @"TriggerType";
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_IntegerFormat];
  v20[4] = v7;
  v19[5] = @"WiFiScanDuration";
  v8 = [MEMORY[0x277D3F198] sharedInstance];
  v9 = [v8 commonTypeDict_RealFormat];
  v20[5] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:6];
  v24[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)entryEventPointDefinitionMotionPacket
{
  v18[2] = *MEMORY[0x277D85DE8];
  v17[0] = *MEMORY[0x277D3F4E8];
  v15 = *MEMORY[0x277D3F568];
  v16 = &unk_282C1CDB8;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  v18[0] = v2;
  v17[1] = *MEMORY[0x277D3F540];
  v13[0] = @"action";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_IntegerFormat];
  v14[0] = v4;
  v13[1] = @"nonWaking";
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_BoolFormat];
  v14[1] = v6;
  v13[2] = @"type";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_IntegerFormat];
  v14[2] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:3];
  v18[1] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)entryEventForwardDefinitions
{
  v18[9] = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277D3F208] internalBuild])
  {
    v17[0] = @"TechStatus";
    v3 = [a1 entryEventForwardDefinitionTechStatus];
    v18[0] = v3;
    v17[1] = @"ClientStatus";
    v4 = [a1 entryEventForwardDefinitionClientStatus];
    v18[1] = v4;
    v17[2] = @"LogLevel";
    v5 = [a1 entryEventForwardDefinitionLogLevel];
    v18[2] = v5;
    v17[3] = @"StatusBar";
    v6 = [a1 entryEventForwardDefinitionStatusBar];
    v18[3] = v6;
    v17[4] = @"GnssSession";
    v7 = [a1 entryEventForwardDefinitionGnssSession];
    v18[4] = v7;
    v17[5] = @"GPSActivation";
    v8 = [a1 entryEventForwardDefinitionGPSSubscription];
    v18[5] = v8;
    v17[6] = @"Odometry";
    v9 = [a1 entryEventForwardDefinitionOdometry];
    v18[6] = v9;
    v17[7] = @"ViewObstructed";
    v10 = [a1 entryEventForwardDefinitionViewObstructed];
    v18[7] = v10;
    v17[8] = @"SuppressionManagerClient";
    v11 = [a1 entryEventForwardDefinitionSuppressionManagerClient];
    v18[8] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:9];
  }

  else
  {
    v3 = [a1 entryEventForwardDefinitionTechStatus];
    v16[0] = v3;
    v15[1] = @"ClientStatus";
    v4 = [a1 entryEventForwardDefinitionClientStatus];
    v16[1] = v4;
    v15[2] = @"StatusBar";
    v5 = [a1 entryEventForwardDefinitionStatusBar];
    v16[2] = v5;
    v15[3] = @"GnssSession";
    v6 = [a1 entryEventForwardDefinitionGnssSession];
    v16[3] = v6;
    v15[4] = @"GPSActivation";
    v7 = [a1 entryEventForwardDefinitionGPSSubscription];
    v16[4] = v7;
    v15[5] = @"Odometry";
    v8 = [a1 entryEventForwardDefinitionOdometry];
    v16[5] = v8;
    v15[6] = @"ViewObstructed";
    v9 = [a1 entryEventForwardDefinitionViewObstructed];
    v16[6] = v9;
    v15[7] = @"SuppressionManagerClient";
    v10 = [a1 entryEventForwardDefinitionSuppressionManagerClient];
    v16[7] = v10;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:8];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventForwardDefinitionTechStatus
{
  v35[2] = *MEMORY[0x277D85DE8];
  v34[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F508];
  v32[0] = *MEMORY[0x277D3F568];
  v32[1] = v2;
  v33[0] = &unk_282C1CDC8;
  v33[1] = MEMORY[0x277CBEC38];
  v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:2];
  v35[0] = v29;
  v34[1] = *MEMORY[0x277D3F540];
  v30[0] = @"gps";
  v28 = [MEMORY[0x277D3F198] sharedInstance];
  v27 = [v28 commonTypeDict_BoolFormat];
  v31[0] = v27;
  v30[1] = @"nmea";
  v26 = [MEMORY[0x277D3F198] sharedInstance];
  v25 = [v26 commonTypeDict_BoolFormat];
  v31[1] = v25;
  v30[2] = @"accessory";
  v24 = [MEMORY[0x277D3F198] sharedInstance];
  v23 = [v24 commonTypeDict_BoolFormat];
  v31[2] = v23;
  v30[3] = @"wifi";
  v22 = [MEMORY[0x277D3F198] sharedInstance];
  v21 = [v22 commonTypeDict_BoolFormat];
  v31[3] = v21;
  v30[4] = @"skyhook";
  v20 = [MEMORY[0x277D3F198] sharedInstance];
  v19 = [v20 commonTypeDict_BoolFormat];
  v31[4] = v19;
  v30[5] = @"cell";
  v18 = [MEMORY[0x277D3F198] sharedInstance];
  v17 = [v18 commonTypeDict_BoolFormat];
  v31[5] = v17;
  v30[6] = @"lac";
  v16 = [MEMORY[0x277D3F198] sharedInstance];
  v15 = [v16 commonTypeDict_BoolFormat];
  v31[6] = v15;
  v30[7] = @"mcc";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_BoolFormat];
  v31[7] = v4;
  v30[8] = @"gps_coarse";
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_BoolFormat];
  v31[8] = v6;
  v30[9] = @"pipeline";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_BoolFormat];
  v31[9] = v8;
  v30[10] = @"wifi2";
  v9 = [MEMORY[0x277D3F198] sharedInstance];
  v10 = [v9 commonTypeDict_BoolFormat];
  v31[10] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:11];
  v35[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventForwardDefinitionClientStatus
{
  v31[2] = *MEMORY[0x277D85DE8];
  v30[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F498];
  v28[0] = *MEMORY[0x277D3F568];
  v28[1] = v2;
  v29[0] = &unk_282C1CDD8;
  v29[1] = MEMORY[0x277CBEC38];
  v3 = *MEMORY[0x277D3F590];
  v28[2] = *MEMORY[0x277D3F558];
  v28[3] = v3;
  v29[2] = MEMORY[0x277CBEC38];
  v29[3] = &unk_282C13488;
  v4 = *MEMORY[0x277D3F4A0];
  v28[4] = *MEMORY[0x277D3F588];
  v28[5] = v4;
  v29[4] = &unk_282C1CDE8;
  v29[5] = MEMORY[0x277CBEC38];
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:6];
  v31[0] = v25;
  v30[1] = *MEMORY[0x277D3F540];
  v26[0] = @"timestampEnd";
  v24 = [MEMORY[0x277D3F198] sharedInstance];
  v23 = [v24 commonTypeDict_DateFormat];
  v27[0] = v23;
  v26[1] = @"Type";
  v22 = [MEMORY[0x277D3F198] sharedInstance];
  v21 = [v22 commonTypeDict_StringFormat];
  v27[1] = v21;
  v26[2] = @"Client";
  v20 = [MEMORY[0x277D3F198] sharedInstance];
  v19 = [v20 commonTypeDict_StringFormat_withBundleID];
  v27[2] = v19;
  v26[3] = @"BundleId";
  v18 = [MEMORY[0x277D3F198] sharedInstance];
  v17 = [v18 commonTypeDict_StringFormat_withBundleID];
  v27[3] = v17;
  v26[4] = @"Executable";
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_StringFormat_withProcessName];
  v27[4] = v6;
  v26[5] = @"LocationDesiredAccuracy";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_RealFormat];
  v27[5] = v8;
  v26[6] = @"LocationDistanceFilter";
  v9 = [MEMORY[0x277D3F198] sharedInstance];
  v10 = [v9 commonTypeDict_RealFormat];
  v27[6] = v10;
  v26[7] = @"InUseLevel";
  v11 = [MEMORY[0x277D3F198] sharedInstance];
  v12 = [v11 commonTypeDict_IntegerFormat];
  v27[7] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:8];
  v31[1] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:2];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)entryEventForwardDefinitionLogLevel
{
  v16[2] = *MEMORY[0x277D85DE8];
  v15[0] = *MEMORY[0x277D3F4E8];
  v13 = *MEMORY[0x277D3F568];
  v14 = &unk_282C1CDB8;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v16[0] = v2;
  v15[1] = *MEMORY[0x277D3F540];
  v11[0] = @"Level";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_IntegerFormat];
  v11[1] = @"RotationEnabled";
  v12[0] = v4;
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_BoolFormat];
  v12[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v16[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)entryEventForwardDefinitionStatusBar
{
  v17[2] = *MEMORY[0x277D85DE8];
  v16[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4A0];
  v14[0] = *MEMORY[0x277D3F568];
  v14[1] = v2;
  v15[0] = &unk_282C1CDB8;
  v15[1] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
  v17[0] = v3;
  v16[1] = *MEMORY[0x277D3F540];
  v12[0] = @"Status";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_IntegerFormat];
  v12[1] = @"BundleID";
  v13[0] = v5;
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_StringFormat_withBundleID];
  v13[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v17[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)entryEventForwardDefinitionGnssSession
{
  v16[2] = *MEMORY[0x277D85DE8];
  v15[0] = *MEMORY[0x277D3F4E8];
  v13 = *MEMORY[0x277D3F568];
  v14 = &unk_282C1CDA8;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v16[0] = v2;
  v15[1] = *MEMORY[0x277D3F540];
  v11[0] = @"eventType";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_IntegerFormat];
  v11[1] = @"eventStatus";
  v12[0] = v4;
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_IntegerFormat];
  v12[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v16[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)entryEventForwardDefinitionGPSSubscription
{
  v17[2] = *MEMORY[0x277D85DE8];
  v16[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4A0];
  v14[0] = *MEMORY[0x277D3F568];
  v14[1] = v2;
  v15[0] = &unk_282C1CDB8;
  v15[1] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
  v17[0] = v3;
  v16[1] = *MEMORY[0x277D3F540];
  v12[0] = @"ServiceName";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_StringFormat];
  v12[1] = @"Register";
  v13[0] = v5;
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_BoolFormat];
  v13[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v17[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)entryEventForwardDefinitionOdometry
{
  v19[2] = *MEMORY[0x277D85DE8];
  v18[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4A0];
  v16[0] = *MEMORY[0x277D3F568];
  v16[1] = v2;
  v17[0] = &unk_282C1CDB8;
  v17[1] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
  v19[0] = v3;
  v18[1] = *MEMORY[0x277D3F540];
  v14[0] = @"odometryEvent";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_IntegerFormat];
  v15[0] = v5;
  v14[1] = @"updateInterval";
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_RealFormat];
  v15[1] = v7;
  v14[2] = @"identifier";
  v8 = [MEMORY[0x277D3F198] sharedInstance];
  v9 = [v8 commonTypeDict_StringFormat];
  v15[2] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];
  v19[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)entryEventForwardDefinitionSuppressionManagerClient
{
  v18[2] = *MEMORY[0x277D85DE8];
  v17[0] = *MEMORY[0x277D3F4E8];
  v15 = *MEMORY[0x277D3F568];
  v16 = &unk_282C1CDB8;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  v18[0] = v2;
  v17[1] = *MEMORY[0x277D3F540];
  v13[0] = @"clientEvent";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_IntegerFormat];
  v14[0] = v4;
  v13[1] = @"clientType";
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_IntegerFormat];
  v14[1] = v6;
  v13[2] = @"clientNumbers";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_IntegerFormat];
  v14[2] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:3];
  v18[1] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)entryEventForwardDefinitionViewObstructed
{
  v14[2] = *MEMORY[0x277D85DE8];
  v13[0] = *MEMORY[0x277D3F4E8];
  v11 = *MEMORY[0x277D3F568];
  v12 = &unk_282C1CDB8;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  v14[0] = v2;
  v13[1] = *MEMORY[0x277D3F540];
  v9 = @"VOEvent";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_IntegerFormat];
  v10 = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v14[1] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)entryEventBackwardDefinitions
{
  v26[1] = *MEMORY[0x277D85DE8];
  if (([MEMORY[0x277D3F208] isGPSClass:1008002] & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "isGPSClass:", 1008003) & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "isGPSClass:", 1008005) & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "isGPSClass:", 1008004) & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "isGPSClass:", 1008006))
  {
    v25 = @"GPSPower";
    v23[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F548];
    v21[0] = *MEMORY[0x277D3F568];
    v21[1] = v2;
    v22[0] = &unk_282C1CDA8;
    v22[1] = @"log";
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];
    v24[0] = v18;
    v23[1] = *MEMORY[0x277D3F540];
    v19[0] = @"startTime";
    v17 = [MEMORY[0x277D3F198] sharedInstance];
    v16 = [v17 commonTypeDict_IntegerFormat];
    v20[0] = v16;
    v19[1] = @"measuredInterval";
    v15 = [MEMORY[0x277D3F198] sharedInstance];
    v3 = [v15 commonTypeDict_IntegerFormat];
    v20[1] = v3;
    v19[2] = @"activeInterval";
    v4 = [MEMORY[0x277D3F198] sharedInstance];
    v5 = [v4 commonTypeDict_IntegerFormat];
    v20[2] = v5;
    v19[3] = @"averagePower";
    v6 = [MEMORY[0x277D3F198] sharedInstance];
    v7 = [v6 commonTypeDict_IntegerFormat];
    v20[3] = v7;
    v19[4] = @"activeL5IntervalSec";
    v8 = [MEMORY[0x277D3F198] sharedInstance];
    v9 = [v8 commonTypeDict_IntegerFormat];
    v20[4] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:5];
    v24[1] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];
    v26[0] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];
  }

  else
  {
    v12 = MEMORY[0x277CBEC10];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventIntervalDefinitions
{
  v10[3] = *MEMORY[0x277D85DE8];
  v9[0] = @"MapsBusyness";
  v3 = [a1 entryEventIntervalDefinitionMapsBusyness];
  v10[0] = v3;
  v9[1] = @"SeparationAlert";
  v4 = [a1 entryEventIntervalDefinitionSeparationAlert];
  v10[1] = v4;
  v9[2] = @"PDR";
  v5 = [a1 entryEventIntervalDefinitionPDR];
  v10[2] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:3];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)entryEventIntervalDefinitionMapsBusyness
{
  v30[2] = *MEMORY[0x277D85DE8];
  v29[0] = *MEMORY[0x277D3F4E8];
  v27 = *MEMORY[0x277D3F568];
  v28 = &unk_282C1CDA8;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
  v30[0] = v24;
  v29[1] = *MEMORY[0x277D3F540];
  v25[0] = @"timestampEnd";
  v23 = [MEMORY[0x277D3F198] sharedInstance];
  v22 = [v23 commonTypeDict_DateFormat];
  v26[0] = v22;
  v25[1] = @"Launched";
  v21 = [MEMORY[0x277D3F198] sharedInstance];
  v20 = [v21 commonTypeDict_IntegerFormat];
  v26[1] = v20;
  v25[2] = @"HarvestedRealTimeOnPower";
  v19 = [MEMORY[0x277D3F198] sharedInstance];
  v18 = [v19 commonTypeDict_IntegerFormat];
  v26[2] = v18;
  v25[3] = @"HarvestedRealTimeOnBattery";
  v17 = [MEMORY[0x277D3F198] sharedInstance];
  v16 = [v17 commonTypeDict_IntegerFormat];
  v26[3] = v16;
  v25[4] = @"HarvestedDifferential";
  v15 = [MEMORY[0x277D3F198] sharedInstance];
  v14 = [v15 commonTypeDict_IntegerFormat];
  v26[4] = v14;
  v25[5] = @"RateLimit";
  v2 = [MEMORY[0x277D3F198] sharedInstance];
  v3 = [v2 commonTypeDict_IntegerFormat];
  v26[5] = v3;
  v25[6] = @"LocationNotUsable";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_IntegerFormat];
  v26[6] = v5;
  v25[7] = @"LocationNoAuth";
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_IntegerFormat];
  v26[7] = v7;
  v25[8] = @"LocationUnavailable";
  v8 = [MEMORY[0x277D3F198] sharedInstance];
  v9 = [v8 commonTypeDict_IntegerFormat];
  v26[8] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:9];
  v30[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:2];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)entryEventIntervalDefinitionSeparationAlert
{
  v30[2] = *MEMORY[0x277D85DE8];
  v29[0] = *MEMORY[0x277D3F4E8];
  v27 = *MEMORY[0x277D3F568];
  v28 = &unk_282C1CDB8;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
  v30[0] = v24;
  v29[1] = *MEMORY[0x277D3F540];
  v25[0] = @"timestampEnd";
  v23 = [MEMORY[0x277D3F198] sharedInstance];
  v22 = [v23 commonTypeDict_DateFormat];
  v26[0] = v22;
  v25[1] = @"DurationOfVisits";
  v21 = [MEMORY[0x277D3F198] sharedInstance];
  v20 = [v21 commonTypeDict_RealFormat];
  v26[1] = v20;
  v25[2] = @"NumberOfVisits";
  v19 = [MEMORY[0x277D3F198] sharedInstance];
  v18 = [v19 commonTypeDict_IntegerFormat];
  v26[2] = v18;
  v25[3] = @"TotalGeoFence";
  v17 = [MEMORY[0x277D3F198] sharedInstance];
  v16 = [v17 commonTypeDict_IntegerFormat];
  v26[3] = v16;
  v25[4] = @"GPSAttribution";
  v15 = [MEMORY[0x277D3F198] sharedInstance];
  v14 = [v15 commonTypeDict_IntegerFormat];
  v26[4] = v14;
  v25[5] = @"BTScanCount";
  v2 = [MEMORY[0x277D3F198] sharedInstance];
  v3 = [v2 commonTypeDict_IntegerFormat];
  v26[5] = v3;
  v25[6] = @"WifiScanCount";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_IntegerFormat];
  v26[6] = v5;
  v25[7] = @"Notifications";
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_IntegerFormat];
  v26[7] = v7;
  v25[8] = @"DevicesMonitored";
  v8 = [MEMORY[0x277D3F198] sharedInstance];
  v9 = [v8 commonTypeDict_IntegerFormat];
  v26[8] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:9];
  v30[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:2];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)entryEventIntervalDefinitionPDR
{
  v20[2] = *MEMORY[0x277D85DE8];
  v19[0] = *MEMORY[0x277D3F4E8];
  v17 = *MEMORY[0x277D3F568];
  v18 = &unk_282C1CDB8;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  v20[0] = v14;
  v19[1] = *MEMORY[0x277D3F540];
  v15[0] = @"sessionEndTime";
  v2 = [MEMORY[0x277D3F198] sharedInstance];
  v3 = [v2 commonTypeDict_RealFormat];
  v16[0] = v3;
  v15[1] = @"numFences";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_IntegerFormat];
  v16[1] = v5;
  v15[2] = @"identifier";
  v6 = [MEMORY[0x277D3F198] sharedInstance];
  v7 = [v6 commonTypeDict_StringFormat];
  v16[2] = v7;
  v15[3] = @"sessionStartTime";
  v8 = [MEMORY[0x277D3F198] sharedInstance];
  v9 = [v8 commonTypeDict_RealFormat];
  v16[3] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:4];
  v20[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)entryEventNoneDefinitions
{
  v8[1] = *MEMORY[0x277D85DE8];
  if ([a1 isDebugEnabled])
  {
    v7 = @"ClientStatusDebug";
    v3 = [a1 entryEventNoneDefinitionClientStatusDebug];
    v8[0] = v3;
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  }

  else
  {
    v4 = MEMORY[0x277CBEC10];
  }

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)entryEventNoneDefinitionClientStatusDebug
{
  v49[2] = *MEMORY[0x277D85DE8];
  v48[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4A0];
  v46[0] = *MEMORY[0x277D3F568];
  v46[1] = v2;
  v47[0] = &unk_282C1CDB8;
  v47[1] = MEMORY[0x277CBEC38];
  v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:v46 count:2];
  v49[0] = v43;
  v48[1] = *MEMORY[0x277D3F540];
  v44[0] = @"Client";
  v42 = [MEMORY[0x277D3F198] sharedInstance];
  v41 = [v42 commonTypeDict_StringFormat];
  v45[0] = v41;
  v44[1] = @"BundleId";
  v40 = [MEMORY[0x277D3F198] sharedInstance];
  v39 = [v40 commonTypeDict_StringFormat_withBundleID];
  v45[1] = v39;
  v44[2] = @"Executable";
  v38 = [MEMORY[0x277D3F198] sharedInstance];
  v37 = [v38 commonTypeDict_StringFormat];
  v45[2] = v37;
  v44[3] = @"Authorized";
  v36 = [MEMORY[0x277D3F198] sharedInstance];
  v35 = [v36 commonTypeDict_BoolFormat];
  v45[3] = v35;
  v44[4] = @"LocationDesiredAccuracy";
  v34 = [MEMORY[0x277D3F198] sharedInstance];
  v33 = [v34 commonTypeDict_RealFormat];
  v45[4] = v33;
  v44[5] = @"LocationDistanceFilter";
  v32 = [MEMORY[0x277D3F198] sharedInstance];
  v31 = [v32 commonTypeDict_RealFormat];
  v45[5] = v31;
  v44[6] = @"LocationTimeStarted";
  v30 = [MEMORY[0x277D3F198] sharedInstance];
  v29 = [v30 commonTypeDict_DateFormat_isCFAbsoluteTime];
  v45[6] = v29;
  v44[7] = @"LocationTimeStopped";
  v28 = [MEMORY[0x277D3F198] sharedInstance];
  v27 = [v28 commonTypeDict_DateFormat_isCFAbsoluteTime];
  v45[7] = v27;
  v44[8] = @"FenceTimeStarted";
  v26 = [MEMORY[0x277D3F198] sharedInstance];
  v25 = [v26 commonTypeDict_DateFormat_isCFAbsoluteTime];
  v45[8] = v25;
  v44[9] = @"FenceTimeStopped";
  v24 = [MEMORY[0x277D3F198] sharedInstance];
  v23 = [v24 commonTypeDict_DateFormat_isCFAbsoluteTime];
  v45[9] = v23;
  v44[10] = @"SignificantTimeStarted";
  v22 = [MEMORY[0x277D3F198] sharedInstance];
  v21 = [v22 commonTypeDict_DateFormat_isCFAbsoluteTime];
  v45[10] = v21;
  v44[11] = @"SignificantTimeStopped";
  v20 = [MEMORY[0x277D3F198] sharedInstance];
  v19 = [v20 commonTypeDict_DateFormat_isCFAbsoluteTime];
  v45[11] = v19;
  v44[12] = @"BeaconRegionTimeStarted";
  v18 = [MEMORY[0x277D3F198] sharedInstance];
  v17 = [v18 commonTypeDict_DateFormat_isCFAbsoluteTime];
  v45[12] = v17;
  v44[13] = @"BeaconRegionTimeStopped";
  v16 = [MEMORY[0x277D3F198] sharedInstance];
  v15 = [v16 commonTypeDict_DateFormat_isCFAbsoluteTime];
  v45[13] = v15;
  v44[14] = @"RangeTimeStarted";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_DateFormat_isCFAbsoluteTime];
  v45[14] = v4;
  v44[15] = @"RangeTimeStopped";
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_DateFormat_isCFAbsoluteTime];
  v45[15] = v6;
  v44[16] = @"VisitTimeStarted";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_DateFormat_isCFAbsoluteTime];
  v45[16] = v8;
  v44[17] = @"VisitTimeStopped";
  v9 = [MEMORY[0x277D3F198] sharedInstance];
  v10 = [v9 commonTypeDict_DateFormat_isCFAbsoluteTime];
  v45[17] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v44 count:18];
  v49[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:v48 count:2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (PLLocationAgent)init
{
  v44 = *MEMORY[0x277D85DE8];
  v41.receiver = self;
  v41.super_class = PLLocationAgent;
  v2 = [(PLAgent *)&v41 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    clientStatusTypeStrings = v2->_clientStatusTypeStrings;
    v2->_clientStatusTypeStrings = v3;

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v29 = [&unk_282C16B90 countByEnumeratingWithState:&v37 objects:v43 count:16];
    if (v29)
    {
      v28 = *v38;
      do
      {
        v5 = 0;
        do
        {
          if (*v38 != v28)
          {
            objc_enumerationMutation(&unk_282C16B90);
          }

          v30 = v5;
          v6 = *(*(&v37 + 1) + 8 * v5);
          v7 = [MEMORY[0x277CBEB38] dictionary];
          [(NSMutableDictionary *)v2->_clientStatusTypeStrings setObject:v7 forKeyedSubscript:v6];

          v35 = 0u;
          v36 = 0u;
          v33 = 0u;
          v34 = 0u;
          v8 = [&unk_282C16BA8 countByEnumeratingWithState:&v33 objects:v42 count:16];
          if (v8)
          {
            v9 = v8;
            v10 = *v34;
            do
            {
              for (i = 0; i != v9; ++i)
              {
                if (*v34 != v10)
                {
                  objc_enumerationMutation(&unk_282C16BA8);
                }

                v12 = *(*(&v33 + 1) + 8 * i);
                v13 = [v6 stringByAppendingString:v12];
                v14 = [(NSMutableDictionary *)v2->_clientStatusTypeStrings objectForKeyedSubscript:v6];
                [v14 setObject:v13 forKeyedSubscript:v12];
              }

              v9 = [&unk_282C16BA8 countByEnumeratingWithState:&v33 objects:v42 count:16];
            }

            while (v9);
          }

          v5 = v30 + 1;
        }

        while (v30 + 1 != v29);
        v29 = [&unk_282C16B90 countByEnumeratingWithState:&v37 objects:v43 count:16];
      }

      while (v29);
    }

    v15 = [MEMORY[0x277CBEB38] dictionary];
    localCache = v2->_localCache;
    v2->_localCache = v15;

    techStatusLimiterIsActive = v2->_techStatusLimiterIsActive;
    v2->_techStatusLimiterIsActive = MEMORY[0x277CBEC28];

    v18 = objc_alloc(MEMORY[0x277D3F160]);
    v19 = *MEMORY[0x277CBFB88];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __23__PLLocationAgent_init__block_invoke;
    v31[3] = &unk_2782597E8;
    v20 = v2;
    v32 = v20;
    v21 = [v18 initWithOperator:v20 forNotification:v19 requireState:0 withBlock:v31];
    techStatusChangedNotification = v20->_techStatusChangedNotification;
    v20->_techStatusChangedNotification = v21;

    v23 = objc_opt_new();
    processes = v20->_processes;
    v20->_processes = v23;

    v25 = [MEMORY[0x277CCAB98] defaultCenter];
    [v25 addObserver:v20 selector:sel_processesOfInterest_ name:@"PLLocationAgent.addProcessesOfInterest" object:0];
  }

  v26 = *MEMORY[0x277D85DE8];
  return v2;
}

- (void)processesOfInterest:(id)a3
{
  v4 = [a3 userInfo];
  if (v4)
  {
    v8 = v4;
    v5 = [v4 objectForKeyedSubscript:@"entry"];
    if (v5)
    {
      v6 = [(PLLocationAgent *)self processes];
      v7 = [v8 objectForKeyedSubscript:@"entry"];
      [v6 unionSet:v7];
    }

    v4 = v8;
  }
}

- (void)initOperatorDependancies
{
  bundleIDToWeightUsingGPSCache = self->_bundleIDToWeightUsingGPSCache;
  self->_bundleIDToWeightUsingGPSCache = 0;

  bundleIDToWeightUsingWiFiCache = self->_bundleIDToWeightUsingWiFiCache;
  self->_bundleIDToWeightUsingWiFiCache = 0;

  bundleIDToWeightUsingLocationCache = self->_bundleIDToWeightUsingLocationCache;
  self->_bundleIDToWeightUsingLocationCache = 0;

  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  activeClients = self->_activeClients;
  self->_activeClients = v6;

  v8 = [MEMORY[0x277CBEB58] set];
  activeBackgroundLocationClients = self->_activeBackgroundLocationClients;
  self->_activeBackgroundLocationClients = v8;

  if (([MEMORY[0x277D3F258] isPowerlogHelperd] & 1) == 0 && (objc_msgSend(MEMORY[0x277D3F258], "isPerfPowerMetricd") & 1) == 0)
  {
    if ([MEMORY[0x277D3F208] internalBuild])
    {
      v10 = objc_alloc(MEMORY[0x277D3F270]);
      v91[0] = MEMORY[0x277D85DD0];
      v91[1] = 3221225472;
      v91[2] = __43__PLLocationAgent_initOperatorDependancies__block_invoke;
      v91[3] = &unk_27825A1D8;
      v91[4] = self;
      v11 = [v10 initWithOperator:self withRegistration:&unk_282C1A100 withBlock:v91];
      logLevelNotification = self->_logLevelNotification;
      self->_logLevelNotification = v11;
    }

    [(PLLocationAgent *)self logEventForwardClientStatuswithPayload:0];
    v13 = objc_alloc(MEMORY[0x277D3F270]);
    v90[0] = MEMORY[0x277D85DD0];
    v90[1] = 3221225472;
    v90[2] = __43__PLLocationAgent_initOperatorDependancies__block_invoke_398;
    v90[3] = &unk_27825A1D8;
    v90[4] = self;
    v14 = [v13 initWithOperator:self withRegistration:&unk_282C1A128 withBlock:v90];
    statusBarNotification = self->_statusBarNotification;
    self->_statusBarNotification = v14;

    v16 = objc_alloc(MEMORY[0x277D3F270]);
    v89[0] = MEMORY[0x277D85DD0];
    v89[1] = 3221225472;
    v89[2] = __43__PLLocationAgent_initOperatorDependancies__block_invoke_409;
    v89[3] = &unk_27825A1D8;
    v89[4] = self;
    v17 = [v16 initWithOperator:self withRegistration:&unk_282C1A150 withBlock:v89];
    clientStatusNotification = self->_clientStatusNotification;
    self->_clientStatusNotification = v17;

    v19 = objc_alloc(MEMORY[0x277D3F270]);
    v88[0] = MEMORY[0x277D85DD0];
    v88[1] = 3221225472;
    v88[2] = __43__PLLocationAgent_initOperatorDependancies__block_invoke_414;
    v88[3] = &unk_27825A1D8;
    v88[4] = self;
    v20 = [v19 initWithOperator:self withRegistration:&unk_282C1A178 withBlock:v88];
    separationAlertListener = self->_separationAlertListener;
    self->_separationAlertListener = v20;

    v22 = objc_alloc(MEMORY[0x277D3F270]);
    v87[0] = MEMORY[0x277D85DD0];
    v87[1] = 3221225472;
    v87[2] = __43__PLLocationAgent_initOperatorDependancies__block_invoke_424;
    v87[3] = &unk_27825A1D8;
    v87[4] = self;
    v23 = [v22 initWithOperator:self withRegistration:&unk_282C1A1A0 withBlock:v87];
    mapsBusynessStateListener = self->_mapsBusynessStateListener;
    self->_mapsBusynessStateListener = v23;

    if (([MEMORY[0x277D3F208] isGPSClass:1008002] & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "isGPSClass:", 1008003) & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "isGPSClass:", 1008005) & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F208], "isGPSClass:", 1008004) & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "isGPSClass:", 1008006))
    {
      v25 = objc_alloc(MEMORY[0x277D3F270]);
      v86[0] = MEMORY[0x277D85DD0];
      v86[1] = 3221225472;
      v86[2] = __43__PLLocationAgent_initOperatorDependancies__block_invoke_432;
      v86[3] = &unk_27825A1D8;
      v86[4] = self;
      v26 = [v25 initWithOperator:self withRegistration:&unk_282C1A1C8 withBlock:v86];
      locationGPSListener = self->_locationGPSListener;
      self->_locationGPSListener = v26;

      v85[0] = MEMORY[0x277D85DD0];
      v85[1] = 3221225472;
      v85[2] = __43__PLLocationAgent_initOperatorDependancies__block_invoke_434;
      v85[3] = &unk_2782597E8;
      v85[4] = self;
      v28 = [MEMORY[0x277D3F1A8] significantBatteryChangeNotificationWithOperator:self withBlock:v85];
      sbcLevelChanged = self->_sbcLevelChanged;
      self->_sbcLevelChanged = v28;

      v30 = objc_alloc(MEMORY[0x277D3F1F0]);
      v84[0] = MEMORY[0x277D85DD0];
      v84[1] = 3221225472;
      v84[2] = __43__PLLocationAgent_initOperatorDependancies__block_invoke_440;
      v84[3] = &unk_2782597E8;
      v84[4] = self;
      v31 = [v30 initWithOperator:self forNotification:@"PLThermalMonitorNotification" withBlock:v84];
      thermalMonitorListener = self->_thermalMonitorListener;
      self->_thermalMonitorListener = v31;
    }

    v33 = objc_alloc(MEMORY[0x277D3F270]);
    v83[0] = MEMORY[0x277D85DD0];
    v83[1] = 3221225472;
    v83[2] = __43__PLLocationAgent_initOperatorDependancies__block_invoke_445;
    v83[3] = &unk_27825A1D8;
    v83[4] = self;
    v34 = [v33 initWithOperator:self withRegistration:&unk_282C1A1F0 withBlock:v83];
    wifiLocationScanRequestersListener = self->_wifiLocationScanRequestersListener;
    self->_wifiLocationScanRequestersListener = v34;

    v36 = objc_alloc(MEMORY[0x277D3F270]);
    v82[0] = MEMORY[0x277D85DD0];
    v82[1] = 3221225472;
    v82[2] = __43__PLLocationAgent_initOperatorDependancies__block_invoke_453;
    v82[3] = &unk_27825A1D8;
    v82[4] = self;
    v37 = [v36 initWithOperator:self withRegistration:&unk_282C1A218 withBlock:v82];
    odometryListener = self->_odometryListener;
    self->_odometryListener = v37;

    v39 = objc_alloc(MEMORY[0x277D3F270]);
    v81[0] = MEMORY[0x277D85DD0];
    v81[1] = 3221225472;
    v81[2] = __43__PLLocationAgent_initOperatorDependancies__block_invoke_461;
    v81[3] = &unk_27825A1D8;
    v81[4] = self;
    v40 = [v39 initWithOperator:self withRegistration:&unk_282C1A240 withBlock:v81];
    pdrListener = self->_pdrListener;
    self->_pdrListener = v40;

    v42 = objc_alloc(MEMORY[0x277D3F270]);
    v80[0] = MEMORY[0x277D85DD0];
    v80[1] = 3221225472;
    v80[2] = __43__PLLocationAgent_initOperatorDependancies__block_invoke_471;
    v80[3] = &unk_27825A1D8;
    v80[4] = self;
    v43 = [v42 initWithOperator:self withRegistration:&unk_282C1A268 withBlock:v80];
    [(PLLocationAgent *)self setCheckInSessionXPCListener:v43];

    v44 = objc_alloc(MEMORY[0x277D3F270]);
    v79[0] = MEMORY[0x277D85DD0];
    v79[1] = 3221225472;
    v79[2] = __43__PLLocationAgent_initOperatorDependancies__block_invoke_476;
    v79[3] = &unk_27825A1D8;
    v79[4] = self;
    v45 = [v44 initWithOperator:self withRegistration:&unk_282C1A290 withBlock:v79];
    miLoScansListener = self->_miLoScansListener;
    self->_miLoScansListener = v45;

    v47 = objc_alloc(MEMORY[0x277D3F270]);
    v78[0] = MEMORY[0x277D85DD0];
    v78[1] = 3221225472;
    v78[2] = __43__PLLocationAgent_initOperatorDependancies__block_invoke_484;
    v78[3] = &unk_27825A1D8;
    v78[4] = self;
    v48 = [v47 initWithOperator:self withRegistration:&unk_282C1A2B8 withBlock:v78];
    gpsSubscriptionListener = self->_gpsSubscriptionListener;
    self->_gpsSubscriptionListener = v48;

    v50 = objc_alloc(MEMORY[0x277D3F270]);
    v77[0] = MEMORY[0x277D85DD0];
    v77[1] = 3221225472;
    v77[2] = __43__PLLocationAgent_initOperatorDependancies__block_invoke_489;
    v77[3] = &unk_27825A1D8;
    v77[4] = self;
    v51 = [v50 initWithOperator:self withRegistration:&unk_282C1A2E0 withBlock:v77];
    gnssSessionListener = self->_gnssSessionListener;
    self->_gnssSessionListener = v51;

    v53 = objc_alloc(MEMORY[0x277D3F270]);
    v76[0] = MEMORY[0x277D85DD0];
    v76[1] = 3221225472;
    v76[2] = __43__PLLocationAgent_initOperatorDependancies__block_invoke_494;
    v76[3] = &unk_27825A1D8;
    v76[4] = self;
    v54 = [v53 initWithOperator:self withRegistration:&unk_282C1A308 withBlock:v76];
    motionPacketListener = self->_motionPacketListener;
    self->_motionPacketListener = v54;

    v56 = objc_alloc(MEMORY[0x277D3F270]);
    v75[0] = MEMORY[0x277D85DD0];
    v75[1] = 3221225472;
    v75[2] = __43__PLLocationAgent_initOperatorDependancies__block_invoke_502;
    v75[3] = &unk_27825A1D8;
    v75[4] = self;
    v57 = [v56 initWithOperator:self withRegistration:&unk_282C1A330 withBlock:v75];
    viewObstructedListener = self->_viewObstructedListener;
    self->_viewObstructedListener = v57;

    v59 = objc_alloc(MEMORY[0x277D3F270]);
    v74[0] = MEMORY[0x277D85DD0];
    v74[1] = 3221225472;
    v74[2] = __43__PLLocationAgent_initOperatorDependancies__block_invoke_510;
    v74[3] = &unk_27825A1D8;
    v74[4] = self;
    v60 = [v59 initWithOperator:self withRegistration:&unk_282C1A358 withBlock:v74];
    suppressionManagerClientListener = self->_suppressionManagerClientListener;
    self->_suppressionManagerClientListener = v60;

    v62 = objc_alloc(MEMORY[0x277D3F270]);
    v73[0] = MEMORY[0x277D85DD0];
    v73[1] = 3221225472;
    v73[2] = __43__PLLocationAgent_initOperatorDependancies__block_invoke_518;
    v73[3] = &unk_27825A1D8;
    v73[4] = self;
    v63 = [v62 initWithOperator:self withRegistration:&unk_282C1A380 withBlock:v73];
    predictedContextInferenceListener = self->_predictedContextInferenceListener;
    self->_predictedContextInferenceListener = v63;

    v65 = objc_alloc(MEMORY[0x277D3F270]);
    v72[0] = MEMORY[0x277D85DD0];
    v72[1] = 3221225472;
    v72[2] = __43__PLLocationAgent_initOperatorDependancies__block_invoke_526;
    v72[3] = &unk_27825A1D8;
    v72[4] = self;
    v66 = [v65 initWithOperator:self withRegistration:&unk_282C1A3A8 withBlock:v72];
    predictedContextTrainingMetrics = self->_predictedContextTrainingMetrics;
    self->_predictedContextTrainingMetrics = v66;

    v68 = objc_alloc(MEMORY[0x277D3F270]);
    v71[0] = MEMORY[0x277D85DD0];
    v71[1] = 3221225472;
    v71[2] = __43__PLLocationAgent_initOperatorDependancies__block_invoke_534;
    v71[3] = &unk_27825A1D8;
    v71[4] = self;
    v69 = [v68 initWithOperator:self withRegistration:&unk_282C1A3D0 withBlock:v71];
    geoFenceTriggerListener = self->_geoFenceTriggerListener;
    self->_geoFenceTriggerListener = v69;
  }
}

void __43__PLLocationAgent_initOperatorDependancies__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogLocation();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v11 = 138412290;
    v12 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "LogLevel changed with payload=%@", &v11, 0xCu);
  }

  v8 = [(PLOperator *)PLLocationAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"LogLevel"];
  v9 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v8 withRawData:v6];
  [*(a1 + 32) logEntry:v9];

  v10 = *MEMORY[0x277D85DE8];
}

void __43__PLLocationAgent_initOperatorDependancies__block_invoke_398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogLocation();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v15 = 138412290;
    v16 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "StatusBarOverride changed with payload=%@", &v15, 0xCu);
  }

  v8 = [(PLOperator *)PLLocationAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"StatusBar"];
  v9 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v8];
  v10 = [v6 objectForKeyedSubscript:@"Status"];
  [v9 setObject:v10 forKeyedSubscript:@"Status"];

  v11 = MEMORY[0x277D3F258];
  v12 = [v6 objectForKeyedSubscript:@"Pid"];
  v13 = [v11 bundleIDFromPid:{objc_msgSend(v12, "intValue")}];
  [v9 setObject:v13 forKeyedSubscript:@"BundleID"];

  [*(a1 + 32) logEntry:v9];
  v14 = *MEMORY[0x277D85DE8];
}

void __43__PLLocationAgent_initOperatorDependancies__block_invoke_414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogLocation();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "SeparationAlert XPC with payload=%@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventIntervalSeparationAlert:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __43__PLLocationAgent_initOperatorDependancies__block_invoke_424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogLocation();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "Received Maps BusynessState XPC with payload=%@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventIntervalMapsBusynessState:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __43__PLLocationAgent_initOperatorDependancies__block_invoke_445(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogLocation();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "Received WifiLocationScanRequesters XPC with payload=%@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventPointWifiLocationScanRequesters:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __43__PLLocationAgent_initOperatorDependancies__block_invoke_453(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogLocation();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "Received InertialOdometryPowerMetric XPC with payload=%@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventForwardOdometry:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __43__PLLocationAgent_initOperatorDependancies__block_invoke_461(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogLocation();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "Received PedestrianFencePowerMetric XPC with payload=%@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventIntervalPDR:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __43__PLLocationAgent_initOperatorDependancies__block_invoke_471(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogLocation();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "CoreRoutine::CheckInSession callback %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventForwardCheckInSession:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __43__PLLocationAgent_initOperatorDependancies__block_invoke_476(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogLocation();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "Received MiLoScanEvent XPC with payload=%@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventPointMiLoScans:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __43__PLLocationAgent_initOperatorDependancies__block_invoke_489(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogLocation();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "Received GnssSession XPC with payload=%@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventForwardGnssSession:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __43__PLLocationAgent_initOperatorDependancies__block_invoke_494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogLocation();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "Received MotionPacket XPC with payload=%@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventPointMotionPacket:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __43__PLLocationAgent_initOperatorDependancies__block_invoke_502(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogLocation();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "ViewObstructedStateChange XPC with payload=%@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventForwardViewObstructed:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __43__PLLocationAgent_initOperatorDependancies__block_invoke_510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogLocation();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "SuppressionManagerClientStateChange XPC with payload=%@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventForwardSuppressionManagerClient:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __43__PLLocationAgent_initOperatorDependancies__block_invoke_518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogLocation();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "CoreRoutine PredictedContextInferenceEvent XPC with payload=%@", &v9, 0xCu);
  }

  [*(a1 + 32) logPredictedContextInferenceEvent:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __43__PLLocationAgent_initOperatorDependancies__block_invoke_526(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogLocation();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "CoreRoutine PredictedContextTrainingEvent XPC with payload=%@", &v9, 0xCu);
  }

  [*(a1 + 32) logPredictedContextTrainingEvent:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __43__PLLocationAgent_initOperatorDependancies__block_invoke_534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogLocation();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "CoreLocation GeofenceTrigger XPC with payload=%@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventPointGeofenceTrigger:v6];
  v8 = *MEMORY[0x277D85DE8];
}

- (id)humanReadableNameForTechnology:(id)a3
{
  v3 = [a3 intValue] - 1;
  if (v3 > 0xA)
  {
    return @"unknown";
  }

  else
  {
    return off_278262438[v3];
  }
}

- (void)logEventPointClientStatus
{
  v24[1] = *MEMORY[0x277D85DE8];
  v3 = PLLogLocation();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_21A4C6000, v3, OS_LOG_TYPE_DEBUG, "begin", buf, 2u);
  }

  v4 = CLCopyAppsUsingLocation();
  v5 = [(PLOperator *)PLLocationAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"ClientStatus"];
  v6 = [MEMORY[0x277CBEB18] array];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __44__PLLocationAgent_logEventPointClientStatus__block_invoke;
  v14[3] = &unk_27825B638;
  v14[4] = self;
  v7 = v5;
  v15 = v7;
  v8 = v6;
  v16 = v8;
  [v4 enumerateKeysAndObjectsUsingBlock:v14];
  if ([v8 count])
  {
    v9 = PLLogLocation();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v18 = v8;
      _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "logging newOpenEntries=%@", buf, 0xCu);
    }

    v23 = v7;
    v24[0] = v8;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    [(PLOperator *)self logEntries:v10 withGroupID:v7];

    v11 = PLLogLocation();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v18 = "[PLLocationAgent logEventPointClientStatus]";
      v19 = 1024;
      v20 = 1270;
      v21 = 2112;
      v22 = v8;
      _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "!!! %s/%d: location start signal; newOpenEntries=%@", buf, 0x1Cu);
    }
  }

  else
  {
    v11 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7];
    [v11 setIsErrorEntry:1];
    [(PLOperator *)self logEntry:v11];
  }

  v12 = PLLogLocation();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_DEBUG, "end", buf, 2u);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __44__PLLocationAgent_logEventPointClientStatus__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = PLLogLocation();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v35 = v5;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "client=%@", buf, 0xCu);
  }

  v8 = [*(a1 + 32) processes];
  if (([v8 containsObject:v5] & 1) != 0 || !objc_msgSend(MEMORY[0x277D3F258], "isPowerlogHelperd"))
  {
  }

  else
  {
    v9 = [MEMORY[0x277D3F258] isPerfPowerMetricd];

    if (v9)
    {
      goto LABEL_20;
    }
  }

  v27 = v5;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = [*(a1 + 32) clientStatusTypeStrings];
  v10 = [obj countByEnumeratingWithState:&v30 objects:v40 count:16];
  if (v10)
  {
    v12 = v10;
    v29 = *v31;
    *&v11 = 138412802;
    v26 = v11;
    do
    {
      v13 = 0;
      do
      {
        if (*v31 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v30 + 1) + 8 * v13);
        v15 = [*(a1 + 32) clientStatusTypeStrings];
        v16 = [v15 objectForKeyedSubscript:v14];
        v17 = [v16 objectForKeyedSubscript:@"TimeStarted"];
        v18 = [v6 objectForKeyedSubscript:v17];

        v19 = [*(a1 + 32) clientStatusTypeStrings];
        v20 = [v19 objectForKeyedSubscript:v14];
        v21 = [v20 objectForKeyedSubscript:@"TimeStopped"];
        v22 = [v6 objectForKeyedSubscript:v21];

        if (v18 | v22)
        {
          v23 = PLLogLocation();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
          {
            *buf = v26;
            v35 = v14;
            v36 = 2112;
            v37 = v18;
            v38 = 2112;
            v39 = v22;
            _os_log_debug_impl(&dword_21A4C6000, v23, OS_LOG_TYPE_DEBUG, "type=%@, timeStarted=%@, timeStopped=%@", buf, 0x20u);
          }

          v24 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:*(a1 + 40) withRawData:v6];
          [v24 setObject:v27 forKeyedSubscript:@"Client"];
          [v24 setObject:v14 forKeyedSubscript:@"Type"];
          [*(a1 + 48) addObject:v24];
        }

        ++v13;
      }

      while (v12 != v13);
      v12 = [obj countByEnumeratingWithState:&v30 objects:v40 count:16];
    }

    while (v12);
  }

  v5 = v27;
LABEL_20:

  v25 = *MEMORY[0x277D85DE8];
}

- (void)logEventPointGeofenceTrigger:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"timestampValue"];

  if (v5)
  {
    v6 = MEMORY[0x277CBEAA8];
    v7 = [v4 objectForKeyedSubscript:@"timestampValue"];
    [v7 doubleValue];
    v8 = [v6 dateWithTimeIntervalSinceReferenceDate:?];

    v9 = [v8 convertFromSystemToMonotonic];

    v10 = PLLogLocation();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v13 = [v4 objectForKeyedSubscript:@"timestampValue"];
      v14[0] = 67109378;
      v14[1] = [v13 intValue];
      v15 = 2112;
      v16 = v9;
      _os_log_debug_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_DEBUG, "LocationMetrics GeofenceTrigger logging absolute time %d as logging timestamp %@", v14, 0x12u);
    }

    [(PLOperator *)self logForSubsystem:@"CoreLocation" category:@"GeofenceTrigger" data:v4 date:v9];
  }

  else
  {
    v11 = PLLogLocation();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v14[0]) = 0;
      _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "LocationMetrics GeofenceTrigger timestamp is missing, logging current time as timestamp", v14, 2u);
    }

    [(PLOperator *)self logForSubsystem:@"CoreLocation" category:@"GeofenceTrigger" data:v4];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)logEventPointWifiLocationScanRequesters:(id)a3
{
  v4 = *MEMORY[0x277D3F5E8];
  v5 = a3;
  v7 = [(PLOperator *)PLLocationAgent entryKeyForType:v4 andName:@"WifiLocationScanRequesters"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:v5];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventPointMiLoScans:(id)a3
{
  v4 = *MEMORY[0x277D3F5E8];
  v5 = a3;
  v7 = [(PLOperator *)PLLocationAgent entryKeyForType:v4 andName:@"MiLoScanEvent"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:v5];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventPointMotionPacket:(id)a3
{
  v4 = *MEMORY[0x277D3F5E8];
  v5 = a3;
  v7 = [(PLOperator *)PLLocationAgent entryKeyForType:v4 andName:@"MotionPacket"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:v5];

  [(PLOperator *)self logEntry:v6];
}

void __56__PLLocationAgent_logEventForwardTechStatus_withLimiter__block_invoke(uint64_t a1)
{
  [*(a1 + 32) logEventForwardTechStatus];
  [*(a1 + 32) setTechStatusLimiterIsActive:MEMORY[0x277CBEC28]];
  v2 = [MEMORY[0x277CBEAA8] monotonicDate];
  [*(a1 + 32) setLastTechStatusNotificationDate:v2];
}

- (void)updateLocalCacheWithClient:(id)a3 withType:(id)a4 withBundleID:(id)a5 withEntry:(id)a6
{
  v36 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = PLLogLocation();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v30 = 138412802;
    v31 = v10;
    v32 = 2112;
    v33 = v11;
    v34 = 2112;
    v35 = v13;
    _os_log_debug_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_DEBUG, "client=%@, type=%@, entry=%@", &v30, 0x20u);
  }

  if (v10 && v11)
  {
    if (!v12)
    {
      v12 = &stru_282B650A0;
    }

    v15 = [(PLLocationAgent *)self localCache];
    v16 = [v15 objectForKeyedSubscript:v10];

    if (!v16)
    {
      v17 = [MEMORY[0x277CBEB38] dictionary];
      v18 = [(PLLocationAgent *)self localCache];
      [v18 setObject:v17 forKeyedSubscript:v10];
    }

    v19 = [(PLLocationAgent *)self localCache];
    v20 = [v19 objectForKeyedSubscript:v10];
    v21 = [v20 objectForKeyedSubscript:v11];

    if (!v21)
    {
      v22 = [MEMORY[0x277CBEB38] dictionary];
      v23 = [(PLLocationAgent *)self localCache];
      v24 = [v23 objectForKeyedSubscript:v10];
      [v24 setObject:v22 forKeyedSubscript:v11];
    }

    v25 = v13;
    if (!v13)
    {
      v25 = [MEMORY[0x277CBEB68] null];
    }

    v26 = [(PLLocationAgent *)self localCache];
    v27 = [v26 objectForKeyedSubscript:v10];
    v28 = [v27 objectForKeyedSubscript:v11];
    [v28 setObject:v25 forKeyedSubscript:v12];

    if (!v13)
    {
    }
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (id)lastEntryWithClient:(id)a3 withType:(id)a4 withBundleID:(id)a5 withEntryKey:(id)a6
{
  v28[3] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = 0;
  if (v10 && v11)
  {
    if (!v12)
    {
      v12 = &stru_282B650A0;
    }

    v15 = [(PLLocationAgent *)self localCache];
    v16 = [v15 objectForKeyedSubscript:v10];
    v17 = [v16 objectForKeyedSubscript:v11];
    v18 = [v17 objectForKeyedSubscript:v12];

    if (!v18)
    {
      v27 = [objc_alloc(MEMORY[0x277D3F260]) initWithKey:@"Client" withValue:v10 withComparisonOperation:0];
      v19 = [objc_alloc(MEMORY[0x277D3F260]) initWithKey:@"Type" withValue:v11 withComparisonOperation:0];
      v20 = [objc_alloc(MEMORY[0x277D3F260]) initWithKey:@"BundleId" withValue:v12 withComparisonOperation:0];
      v21 = [(PLOperator *)self storage];
      v28[0] = v27;
      v28[1] = v19;
      v28[2] = v20;
      v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:3];
      v18 = [v21 lastEntryForKey:v13 withComparisons:v22 isSingleton:0];

      [(PLLocationAgent *)self updateLocalCacheWithClient:v10 withType:v11 withBundleID:v12 withEntry:v18];
    }

    v23 = [MEMORY[0x277CBEB68] null];
    if (v18 == v23)
    {
      v24 = 0;
    }

    else
    {
      v24 = v18;
    }

    v14 = v24;
  }

  v25 = *MEMORY[0x277D85DE8];

  return v14;
}

- (void)resyncActiveClients
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = PLLogLocation();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v9) = 0;
    _os_log_debug_impl(&dword_21A4C6000, v3, OS_LOG_TYPE_DEBUG, "ResyncingActiveClients on powerlog init", &v9, 2u);
  }

  v4 = [MEMORY[0x277CBEAA8] monotonicDate];
  [(PLLocationAgent *)self setLastResyncActiveClientsDate:v4];

  v5 = PLLogLocation();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v8 = [(PLLocationAgent *)self lastResyncActiveClientsDate];
    v9 = 138412290;
    v10 = v8;
    _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "lastResyncActiveClientsDate: %@", &v9, 0xCu);
  }

  v6 = CLCopyAppsUsingLocation();
  [(PLLocationAgent *)self updateClientsLocationInfo:v6];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)logEventForwardClientStatuswithPayload:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = os_transaction_create();
  v6 = [(PLLocationAgent *)self lastResyncActiveClientsDate];

  v7 = PLLogLocation();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (v6)
  {
    if (v8)
    {
      LOWORD(v16) = 0;
      _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "Received Client status change notification", &v16, 2u);
    }

    if (v4)
    {
      v9 = [MEMORY[0x277CBEAA8] monotonicDate];
      v10 = [(PLLocationAgent *)self lastResyncActiveClientsDate];
      [v9 timeIntervalSinceDate:v10];
      v12 = v11;

      if (v12 >= 3600.0)
      {
        v14 = PLLogLocation();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          v16 = 134217984;
          v17 = v12;
          _os_log_debug_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_DEBUG, "diff: %f", &v16, 0xCu);
        }

        [(PLLocationAgent *)self resyncActiveClients];
      }

      else
      {
        [(PLLocationAgent *)self updateClientsLocationInfo:v4];
      }
    }

    else
    {
      v13 = PLLogLocation();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v16) = 0;
        _os_log_debug_impl(&dword_21A4C6000, v13, OS_LOG_TYPE_DEBUG, "No payload!", &v16, 2u);
      }
    }
  }

  else
  {
    if (v8)
    {
      LOWORD(v16) = 0;
      _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "Initializing lastResyncActiveClientsDate", &v16, 2u);
    }

    [(PLLocationAgent *)self resyncActiveClients];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (id)getOpenEntryForClientSettings:(id)a3 withTimeStarted:(id)a4 withClient:(id)a5 withType:(id)a6 withEntryKey:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = [a3 mutableCopy];
  v17 = MEMORY[0x277CBEAA8];
  [v15 doubleValue];
  v19 = v18;

  v20 = [v17 dateWithTimeIntervalSinceReferenceDate:v19];
  v21 = [v20 convertFromSystemToMonotonic];
  [v16 setObject:v21 forKeyedSubscript:@"entryDate"];

  v22 = v16;
  v23 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v12 withRawData:v22];

  [v23 setObject:v14 forKeyedSubscript:@"Client"];
  [v23 setObject:v13 forKeyedSubscript:@"Type"];
  v24 = [v23 objectForKeyedSubscript:@"BundleId"];
  [(PLLocationAgent *)self updateLocalCacheWithClient:v14 withType:v13 withBundleID:v24 withEntry:v23];

  return v23;
}

- (void)closeOpenEntryForClient:(id)a3 withOpenEntry:(id)a4 withTimeStopped:(id)a5
{
  v31 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = MEMORY[0x277CBEAA8];
  [a5 doubleValue];
  v11 = [v10 dateWithTimeIntervalSinceReferenceDate:?];
  v12 = [v11 convertFromSystemToMonotonic];

  v23 = MEMORY[0x277D85DD0];
  v24 = 3221225472;
  v25 = __73__PLLocationAgent_closeOpenEntryForClient_withOpenEntry_withTimeStopped___block_invoke;
  v26 = &unk_278259658;
  v27 = v9;
  v28 = v12;
  v13 = v12;
  v14 = v9;
  [(PLOperator *)self updateEntry:v14 withBlock:&v23];
  v15 = [(PLLocationAgent *)self activeClients:v23];
  v16 = [v15 objectForKey:v8];

  if (v16)
  {
    v17 = [v16 objectForKeyedSubscript:@"BundleId"];
    v18 = [(PLLocationAgent *)self activeClients];
    [v18 removeObjectForKey:v8];

    if (v17)
    {
      v19 = [(PLLocationAgent *)self activeBackgroundLocationClients];
      [v19 removeObject:v17];
    }

    v20 = PLLogLocation();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v22 = [(PLLocationAgent *)self activeClients];
      *buf = 138412290;
      v30 = v22;
      _os_log_debug_impl(&dword_21A4C6000, v20, OS_LOG_TYPE_DEBUG, "Active clients: %@", buf, 0xCu);
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __73__PLLocationAgent_closeOpenEntryForClient_withOpenEntry_withTimeStopped___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setObject:*(a1 + 40) forKeyedSubscript:@"timestampEnd"];
  v2 = PLLogLocation();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v4 = *(a1 + 32);
    v5 = 136315650;
    v6 = "[PLLocationAgent closeOpenEntryForClient:withOpenEntry:withTimeStopped:]_block_invoke";
    v7 = 1024;
    v8 = 1556;
    v9 = 2112;
    v10 = v4;
    _os_log_debug_impl(&dword_21A4C6000, v2, OS_LOG_TYPE_DEBUG, "!!! %s/%d: location terminate signal; lastEntry=%@", &v5, 0x1Cu);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)updateClientsLocationInfo:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [(PLOperator *)PLLocationAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"ClientStatus"];
  if ([(PLOperator *)self isDebugEnabled])
  {
    [(PLLocationAgent *)self logEventNoneClientStatusDebugWithClients:v4];
  }

  v7 = [MEMORY[0x277CBEB18] array];
  v8 = [MEMORY[0x277CBEAA8] date];
  v9 = [(PLLocationAgent *)self activeBackgroundLocationClients];
  v10 = [v9 copy];

  v20 = MEMORY[0x277D85DD0];
  v21 = 3221225472;
  v22 = __45__PLLocationAgent_updateClientsLocationInfo___block_invoke;
  v23 = &unk_278262418;
  v24 = self;
  v11 = v6;
  v25 = v11;
  v12 = v7;
  v26 = v12;
  v13 = v8;
  v27 = v13;
  [v4 enumerateKeysAndObjectsUsingBlock:&v20];
  if ([v12 count])
  {
    v14 = PLLogLocation();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v31 = v12;
      _os_log_debug_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_DEBUG, "logging newOpenEntries=%@", buf, 0xCu);
    }

    v28 = v11;
    v29 = v12;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    [(PLOperator *)self logEntries:v15 withGroupID:v11];
  }

  else
  {
    v15 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v11];
    [v15 setIsErrorEntry:1];
    [(PLOperator *)self logEntry:v15];
  }

  [(PLLocationAgent *)self updateLocationDistributionEvents];
  v16 = [(PLLocationAgent *)self activeBackgroundLocationClients];
  v17 = [v10 isEqualToSet:v16];

  if ((v17 & 1) == 0)
  {
    [(PLLocationAgent *)self updateLocationQualificationEvents];
  }

  objc_autoreleasePoolPop(v5);
  v18 = PLLogLocation();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_21A4C6000, v18, OS_LOG_TYPE_DEBUG, "end", buf, 2u);
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __45__PLLocationAgent_updateClientsLocationInfo___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v67 = *MEMORY[0x277D85DE8];
  v52 = a2;
  v5 = a3;
  v6 = PLLogLocation();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v61 = v52;
    _os_log_debug_impl(&dword_21A4C6000, v6, OS_LOG_TYPE_DEBUG, "client=%@", buf, 0xCu);
  }

  if (v5 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    obj = [*(a1 + 32) clientStatusTypeStrings];
    v54 = [obj countByEnumeratingWithState:&v56 objects:v66 count:16];
    if (!v54)
    {
      goto LABEL_60;
    }

    v53 = *v57;
    *&v7 = 138412546;
    v46 = v7;
    while (1)
    {
      v8 = 0;
      do
      {
        if (*v57 != v53)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v56 + 1) + 8 * v8);
        context = objc_autoreleasePoolPush();
        v10 = [*(a1 + 32) clientStatusTypeStrings];
        v11 = [v10 objectForKeyedSubscript:v9];
        v12 = [v11 objectForKeyedSubscript:@"TimeStarted"];
        v13 = [v5 objectForKeyedSubscript:v12];

        v14 = [*(a1 + 32) clientStatusTypeStrings];
        v15 = [v14 objectForKeyedSubscript:v9];
        v16 = [v15 objectForKeyedSubscript:@"TimeStopped"];
        v17 = [v5 objectForKeyedSubscript:v16];

        v18 = [v5 objectForKeyedSubscript:@"InUseLevel"];
        v19 = PLLogLocation();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v61 = v18;
          _os_log_debug_impl(&dword_21A4C6000, v19, OS_LOG_TYPE_DEBUG, "InUseLevel = %@", buf, 0xCu);
        }

        if (v13 | v17)
        {
          if (v13)
          {
            v20 = [v5 objectForKeyedSubscript:@"LocationDesiredAccuracy"];
            v21 = v20;
            if (v20 && [v20 integerValue]>= 6378136)
            {
              if ([v21 integerValue]!= 2147483642)
              {
                [v21 integerValue];
              }

              goto LABEL_53;
            }
          }

          else
          {
            v21 = PLLogLocation();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412802;
              v61 = v9;
              v62 = 2112;
              v63 = 0;
              v64 = 2112;
              v65 = v17;
              _os_log_debug_impl(&dword_21A4C6000, v21, OS_LOG_TYPE_DEBUG, "type=%@, timeStarted=%@, timeStopped=%@", buf, 0x20u);
            }
          }

          v21 = [v5 objectForKeyedSubscript:@"BundleId"];
          v22 = [*(a1 + 32) lastEntryWithClient:v52 withType:v9 withBundleID:v21 withEntryKey:*(a1 + 40)];
          v23 = PLLogLocation();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v61 = v22;
            _os_log_debug_impl(&dword_21A4C6000, v23, OS_LOG_TYPE_DEBUG, "lastEntry=%@", buf, 0xCu);
          }

          if (!v22 || ([v22 objectForKeyedSubscript:@"timestampEnd"], v24 = objc_claimAutoreleasedReturnValue(), v24, v24))
          {
            v25 = PLLogLocation();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_debug_impl(&dword_21A4C6000, v25, OS_LOG_TYPE_DEBUG, "last entry doesn't exist or last entry stopped", buf, 2u);
            }

            if (v13)
            {
              v26 = [*(a1 + 32) getOpenEntryForClientSettings:v5 withTimeStarted:v13 withClient:v52 withType:v9 withEntryKey:*(a1 + 40)];
              [*(a1 + 48) addObject:v26];
              if (v26)
              {
                goto LABEL_28;
              }

LABEL_52:

LABEL_53:
              goto LABEL_54;
            }

LABEL_51:
            v26 = 0;
            goto LABEL_52;
          }

          v32 = PLLogLocation();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_debug_impl(&dword_21A4C6000, v32, OS_LOG_TYPE_DEBUG, "last entry exists and is still open", buf, 2u);
          }

          v47 = [v18 intValue];
          v50 = v22;
          v33 = [v22 objectForKeyedSubscript:@"InUseLevel"];
          v34 = [v33 intValue];

          v35 = PLLogLocation();
          v36 = os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG);
          if (!v13 || v47 == v34)
          {
            v40 = v35;
            if (v17)
            {
              v22 = v50;
              if (v36)
              {
                *buf = 0;
                _os_log_debug_impl(&dword_21A4C6000, v40, OS_LOG_TYPE_DEBUG, "Location event stopped", buf, 2u);
              }

              [*(a1 + 32) closeOpenEntryForClient:v52 withOpenEntry:v50 withTimeStopped:v17];
              goto LABEL_51;
            }

            v22 = v50;
            if (v36)
            {
              *buf = 0;
              _os_log_debug_impl(&dword_21A4C6000, v40, OS_LOG_TYPE_DEBUG, "Location event still open", buf, 2u);
            }

            v26 = v50;
          }

          else
          {
            if (v36)
            {
              [v50 objectForKeyedSubscript:@"InUseLevel"];
              v43 = v42 = v35;
              *buf = v46;
              v61 = v43;
              v62 = 2112;
              v63 = v18;
              _os_log_debug_impl(&dword_21A4C6000, v42, OS_LOG_TYPE_DEBUG, "Inuse level changed from %@ to %@", buf, 0x16u);

              v35 = v42;
            }

            v48 = v18;

            v37 = MEMORY[0x277CCABB0];
            [*(a1 + 56) timeIntervalSinceReferenceDate];
            v38 = [v37 numberWithDouble:?];
            v39 = PLLogLocation();
            if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
            {
              *buf = v46;
              v61 = v13;
              v62 = 2112;
              v63 = v38;
              _os_log_debug_impl(&dword_21A4C6000, v39, OS_LOG_TYPE_DEBUG, "TimestampStarted: %@ TimestampInUseLevel: %@", buf, 0x16u);
            }

            [*(a1 + 32) closeOpenEntryForClient:v52 withOpenEntry:v50 withTimeStopped:v38];
            v22 = v50;
            v26 = [*(a1 + 32) getOpenEntryForClientSettings:v5 withTimeStarted:v38 withClient:v52 withType:v9 withEntryKey:*(a1 + 40)];
            [*(a1 + 48) addObject:v26];

            v18 = v48;
            if (!v26)
            {
              goto LABEL_52;
            }
          }

LABEL_28:
          if ([v9 isEqualToString:{@"Location", v46}])
          {
            v49 = v22;
            v27 = PLLogLocation();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v61 = v26;
              _os_log_debug_impl(&dword_21A4C6000, v27, OS_LOG_TYPE_DEBUG, "still open location openEntry=%@", buf, 0xCu);
            }

            v28 = [*(a1 + 32) activeClients];
            [v28 setObject:v26 forKeyedSubscript:v52];

            v29 = PLLogLocation();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
            {
              v41 = [*(a1 + 32) activeClients];
              *buf = 138412290;
              v61 = v41;
              _os_log_debug_impl(&dword_21A4C6000, v29, OS_LOG_TYPE_DEBUG, "Active clients: %@", buf, 0xCu);
            }

            v30 = [v26 objectForKeyedSubscript:@"BundleId"];
            if (v30 && ![v18 intValue])
            {
              v31 = [*(a1 + 32) activeBackgroundLocationClients];
              [v31 addObject:v30];
            }

            v22 = v49;
          }

          goto LABEL_52;
        }

LABEL_54:

        objc_autoreleasePoolPop(context);
        ++v8;
      }

      while (v54 != v8);
      v44 = [obj countByEnumeratingWithState:&v56 objects:v66 count:16];
      v54 = v44;
      if (!v44)
      {
LABEL_60:

        break;
      }
    }
  }

  v45 = *MEMORY[0x277D85DE8];
}

- (unint64_t)convertClientEvent:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"enabled"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"disabled"])
  {
    v4 = 0;
  }

  else
  {
    v4 = 2;
  }

  return v4;
}

- (unint64_t)convertViewObstructedEvent:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"suppress"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"unsuppress"])
  {
    v4 = 0;
  }

  else
  {
    v4 = 2;
  }

  return v4;
}

- (void)logEventForwardSuppressionManagerClient:(id)a3
{
  v4 = *MEMORY[0x277D3F5D0];
  v5 = a3;
  v10 = [(PLOperator *)PLLocationAgent entryKeyForType:v4 andName:@"SuppressionManagerClient"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v10 withRawData:v5];
  v7 = [v5 objectForKeyedSubscript:@"clientEvent"];

  v8 = [(PLLocationAgent *)self convertClientEvent:v7];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v8];
  [v6 setObject:v9 forKeyedSubscript:@"clientEvent"];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventForwardViewObstructed:(id)a3
{
  v4 = *MEMORY[0x277D3F5D0];
  v5 = a3;
  v10 = [(PLOperator *)PLLocationAgent entryKeyForType:v4 andName:@"ViewObstructed"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v10];
  v7 = [v5 objectForKeyedSubscript:@"VOEvent"];

  v8 = [(PLLocationAgent *)self convertViewObstructedEvent:v7];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v8];
  [v6 setObject:v9 forKeyedSubscript:@"VOEvent"];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventFowardGPSSubscription:(id)a3
{
  v15 = a3;
  v4 = [(PLOperator *)PLLocationAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"GPSActivation"];
  v5 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v4];
  v6 = [v15 objectForKeyedSubscript:@"ServiceName"];
  v7 = [v6 rangeOfString:@"peer silo:"];
  v9 = v8;
  v10 = [v6 rangeOfString:@">"];
  v11 = 0;
  if (v7 != 0x7FFFFFFFFFFFFFFFLL && v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = [v6 substringWithRange:{v7 + v9, v10 - (v7 + v9)}];
  }

  [v5 setObject:v11 forKeyedSubscript:@"ServiceName"];
  v12 = MEMORY[0x277CCABB0];
  v13 = [v15 objectForKeyedSubscript:@"Register"];
  v14 = [v12 numberWithBool:{objc_msgSend(v13, "BOOLValue")}];
  [v5 setObject:v14 forKeyedSubscript:@"Register"];

  [(PLOperator *)self logEntry:v5];
}

- (void)logEventForwardGnssSession:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PLOperator *)PLLocationAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"GnssSession"];
  v6 = [v4 objectForKeyedSubscript:@"eventCfTimeSec"];

  if (v6)
  {
    v7 = MEMORY[0x277CBEAA8];
    v8 = [v4 objectForKeyedSubscript:@"eventCfTimeSec"];
    [v8 doubleValue];
    v9 = [v7 dateWithTimeIntervalSinceReferenceDate:?];

    v10 = [v9 convertFromSystemToMonotonic];

    v11 = PLLogLocation();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v16 = [v4 objectForKeyedSubscript:@"eventCfTimeSec"];
      v17[0] = 67109378;
      v17[1] = [v16 intValue];
      v18 = 2112;
      v19 = v10;
      _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "GnssSession logging absolute time %d as logging timestamp %@", v17, 0x12u);
    }

    v12 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v5 withDate:v10];
    v13 = [v4 objectForKeyedSubscript:@"eventType"];
    [v12 setObject:v13 forKeyedSubscript:@"eventType"];

    v14 = [v4 objectForKeyedSubscript:@"eventStatus"];
    [v12 setObject:v14 forKeyedSubscript:@"eventStatus"];

    [(PLOperator *)self logEntry:v12];
  }

  else
  {
    v10 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v5 withRawData:v4];
    [(PLOperator *)self logEntry:v10];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (unint64_t)convertOdometryEvent:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 isEqualToString:@"start"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"stop"])
  {
    v4 = 0;
  }

  else
  {
    v5 = PLLogLocation();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "Unknown odometryEvent %@", &v8, 0xCu);
    }

    v4 = 2;
  }

  v6 = *MEMORY[0x277D85DE8];
  return v4;
}

- (unint64_t)convertCheckInEvent:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"start"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"stop"])
  {
    v4 = 0;
  }

  else
  {
    v4 = 2;
  }

  return v4;
}

- (void)logEventForwardOdometry:(id)a3
{
  v4 = *MEMORY[0x277D3F5D0];
  v5 = a3;
  v12 = [(PLOperator *)PLLocationAgent entryKeyForType:v4 andName:@"Odometry"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v12];
  v7 = [v5 objectForKeyedSubscript:@"odometryEvent"];
  v8 = [(PLLocationAgent *)self convertOdometryEvent:v7];

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v8];
  [v6 setObject:v9 forKeyedSubscript:@"odometryEvent"];

  v10 = [v5 objectForKeyedSubscript:@"updateInterval"];
  [v6 setObject:v10 forKeyedSubscript:@"updateInterval"];

  v11 = [v5 objectForKeyedSubscript:@"identifier"];

  [v6 setObject:v11 forKeyedSubscript:@"identifier"];
  [(PLOperator *)self logEntry:v6];
}

- (void)logEventForwardCheckInSession:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 mutableCopy];
  v6 = [v4 objectForKeyedSubscript:@"event"];

  v7 = [(PLLocationAgent *)self convertCheckInEvent:v6];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v7];
  [v5 setObject:v8 forKeyedSubscript:@"event"];

  v9 = PLLogLocation();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v11 = 138412290;
    v12 = v5;
    _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "CheckInSession updated payload: %@", &v11, 0xCu);
  }

  [(PLOperator *)self logForSubsystem:@"CoreRoutine" category:@"CheckInSession" data:v5];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)logPredictedContextInferenceEvent:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 mutableCopy];
  v6 = [v4 objectForKeyedSubscript:@"inferenceLatency"];

  if (v6)
  {
    v7 = [v4 objectForKeyedSubscript:@"inferenceLatency"];
    [v7 doubleValue];
    v9 = v8;

    [MEMORY[0x277D3F258] roundToSigFigDouble:2 withSigFig:v9];
    v11 = v10;
    v12 = PLLogLocation();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v15 = 134218240;
      v16 = v9;
      v17 = 2048;
      v18 = v11;
      _os_log_debug_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_DEBUG, "CoreRoutine PredictedContextInferenceEvent rounded %f latency to %f", &v15, 0x16u);
    }

    v13 = [MEMORY[0x277CCABB0] numberWithDouble:v11];
    [v5 setValue:v13 forKey:@"inferenceLatency"];
  }

  [(PLOperator *)self logForSubsystem:@"CoreRoutine" category:@"PredictedContextInferenceEvent" data:v5];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)logPredictedContextTrainingEvent:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 mutableCopy];
  v6 = [v4 objectForKeyedSubscript:@"trainingDuration"];

  if (v6)
  {
    v7 = [v4 objectForKeyedSubscript:@"trainingDuration"];
    [v7 doubleValue];
    v9 = v8;

    [MEMORY[0x277D3F258] roundToSigFigDouble:2 withSigFig:v9];
    v11 = v10;
    v12 = PLLogLocation();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v15 = 134218240;
      v16 = v9;
      v17 = 2048;
      v18 = v11;
      _os_log_debug_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_DEBUG, "CoreRoutine PredictedContextTrainingEvent rounded %f latency to %f", &v15, 0x16u);
    }

    v13 = [MEMORY[0x277CCABB0] numberWithDouble:v11];
    [v5 setValue:v13 forKey:@"trainingDuration"];
  }

  [(PLOperator *)self logForSubsystem:@"CoreRoutine" category:@"PredictedContextTrainingEvent" data:v5];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)logEventIntervalSeparationAlert:(id)a3
{
  v4 = *MEMORY[0x277D3F5D8];
  v5 = a3;
  v13 = [(PLOperator *)PLLocationAgent entryKeyForType:v4 andName:@"SeparationAlert"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v13 withRawData:v5];
  v7 = [v5 objectForKeyedSubscript:@"timestamp"];

  [v7 doubleValue];
  v9 = v8;

  v10 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v9];
  v11 = [v10 convertFromSystemToMonotonic];
  [v6 setEntryDate:v11];

  v12 = [MEMORY[0x277CBEAA8] monotonicDate];
  [v6 setObject:v12 forKeyedSubscript:@"timestampEnd"];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventIntervalMapsBusynessState:(id)a3
{
  v4 = *MEMORY[0x277D3F5D8];
  v5 = a3;
  v21 = [(PLOperator *)PLLocationAgent entryKeyForType:v4 andName:@"MapsBusyness"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v21];
  v7 = [v5 objectForKeyedSubscript:&unk_282C134E8];
  [v7 doubleValue];
  v9 = v8;

  v10 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v9];
  v11 = [v10 convertFromSystemToMonotonic];
  [v6 setEntryDate:v11];

  v12 = [v5 objectForKeyedSubscript:&unk_282C13500];
  [v6 setObject:v12 forKeyedSubscript:@"Launched"];

  v13 = [v5 objectForKeyedSubscript:&unk_282C13518];
  [v6 setObject:v13 forKeyedSubscript:@"HarvestedRealTimeOnPower"];

  v14 = [v5 objectForKeyedSubscript:&unk_282C13530];
  [v6 setObject:v14 forKeyedSubscript:@"HarvestedRealTimeOnBattery"];

  v15 = [v5 objectForKeyedSubscript:&unk_282C13548];
  [v6 setObject:v15 forKeyedSubscript:@"HarvestedDifferential"];

  v16 = [v5 objectForKeyedSubscript:&unk_282C13560];
  [v6 setObject:v16 forKeyedSubscript:@"RateLimit"];

  v17 = [v5 objectForKeyedSubscript:&unk_282C13578];
  [v6 setObject:v17 forKeyedSubscript:@"LocationNotUsable"];

  v18 = [v5 objectForKeyedSubscript:&unk_282C13590];
  [v6 setObject:v18 forKeyedSubscript:@"LocationNoAuth"];

  v19 = [v5 objectForKeyedSubscript:&unk_282C135A8];

  [v6 setObject:v19 forKeyedSubscript:@"LocationUnavailable"];
  v20 = [MEMORY[0x277CBEAA8] monotonicDate];
  [v6 setObject:v20 forKeyedSubscript:@"timestampEnd"];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventIntervalPDR:(id)a3
{
  v4 = *MEMORY[0x277D3F5D8];
  v5 = a3;
  v7 = [(PLOperator *)PLLocationAgent entryKeyForType:v4 andName:@"PDR"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:v5];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventNoneClientStatus
{
  v3 = CLCopyAppsUsingLocation();
  [(PLLocationAgent *)self logEventNoneClientStatusDebugWithClients:v3];
}

- (void)logEventNoneClientStatusDebugWithClients:(id)a3
{
  v16[1] = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277D3F5E0];
  v5 = a3;
  v6 = [(PLOperator *)PLLocationAgent entryKeyForType:v4 andName:@"ClientStatusDebug"];
  v7 = objc_opt_new();
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __60__PLLocationAgent_logEventNoneClientStatusDebugWithClients___block_invoke;
  v12[3] = &unk_27825EA68;
  v13 = v6;
  v14 = v7;
  v8 = v7;
  v9 = v6;
  [v5 enumerateKeysAndObjectsUsingBlock:v12];

  v15 = v9;
  v16[0] = v8;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  [(PLOperator *)self logEntries:v10 withGroupID:v9];

  v11 = *MEMORY[0x277D85DE8];
}

void __60__PLLocationAgent_logEventNoneClientStatusDebugWithClients___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:*(a1 + 32) withRawData:v6];
  [v7 setObject:v5 forKeyedSubscript:@"Client"];
  [*(a1 + 40) addObject:v7];
  v8 = PLLogLocation();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v10 = 138412802;
    v11 = v5;
    v12 = 2112;
    v13 = v7;
    v14 = 2112;
    v15 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, "Client=%@ entry=%@ clientSettings=%@", &v10, 0x20u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)updateLocationQualificationEvents
{
  if (([MEMORY[0x277D3F208] isHomePod] & 1) == 0)
  {
    v6 = [MEMORY[0x277D3F0C0] sharedInstance];
    v3 = [(PLLocationAgent *)self activeBackgroundLocationClients];
    v4 = [v3 allObjects];
    v5 = [MEMORY[0x277CBEAA8] monotonicDate];
    [v6 createQualificationEventForwardWithQualificationID:15 withChildNodeNames:v4 withStartDate:v5];
  }
}

- (void)updateGnssPowerMetric:(id)a3
{
  v20 = a3;
  v4 = [(PLOperator *)PLLocationAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"GPSPower"];
  v5 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v4];
  v6 = [v20 objectForKey:@"intervalStartTime"];
  [v5 setObject:v6 forKeyedSubscript:@"startTime"];

  v7 = [v20 objectForKey:@"measuredInterval"];
  [v5 setObject:v7 forKeyedSubscript:@"measuredInterval"];

  v8 = [v20 objectForKey:@"activeInterval"];
  [v5 setObject:v8 forKeyedSubscript:@"activeInterval"];

  v9 = MEMORY[0x277CCABB0];
  v10 = [v20 objectForKey:@"averagePower"];
  [v10 doubleValue];
  v12 = [v9 numberWithInt:(100 * v11)];
  [v5 setObject:v12 forKeyedSubscript:@"averagePower"];

  v13 = [v20 objectForKey:@"activeL5IntervalSec"];
  [v5 setObject:v13 forKeyedSubscript:@"activeL5IntervalSec"];

  [(PLOperator *)self logEntry:v5];
  if (([MEMORY[0x277D3F208] isHomePod] & 1) == 0)
  {
    v14 = [v5 entryDate];
    v15 = [v20 objectForKey:@"averagePower"];
    [v15 doubleValue];
    v17 = v16;
    v18 = [v20 objectForKey:@"measuredInterval"];
    [v18 doubleValue];
    [(PLLocationAgent *)self modelGpsSegmentPower:v14 withGpsPower:v17 withTotalDuration:v19];
  }
}

- (void)modelGpsSegmentPower:(id)a3 withGpsPower:(double)a4 withTotalDuration:(double)a5
{
  v16 = a3;
  v9 = [MEMORY[0x277D3F208] isHomePod];
  if ((v9 & 1) == 0)
  {
    v9 = [v16 timeIntervalSince1970];
    v11 = v10;
    if (self->_gps_segment_lastWrittenDate)
    {
      gps_segment_lastWrittenTimestamp = self->_gps_segment_lastWrittenTimestamp;
      v13 = self->_gps_segment_timestamp - gps_segment_lastWrittenTimestamp;
      v14 = 0.0;
      if (v13 > 0.0)
      {
        v14 = v13 * self->_gps_segment_power;
      }

      v15 = v11 - gps_segment_lastWrittenTimestamp;
      if (v15 > 0.0)
      {
        self->_gps_segment_power = (v14 + a4 * a5) / v15;
        objc_storeStrong(&self->_gps_segment_date, a3);
        self->_gps_segment_timestamp = v11;
      }
    }

    else
    {
      objc_storeStrong(&self->_gps_segment_lastWrittenDate, a3);
      self->_gps_segment_lastWrittenTimestamp = v11;
      objc_storeStrong(&self->_gps_segment_date, a3);
      self->_gps_segment_timestamp = self->_gps_segment_lastWrittenTimestamp;
      self->_gps_segment_power = a4;
    }
  }

  MEMORY[0x2821F96F8](v9);
}

@end