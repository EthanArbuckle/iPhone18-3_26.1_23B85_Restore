@interface NWActivityHandler
+ (id)configureClass:(id)class;
+ (id)sharedInstance;
+ (id)sharedMetricsQueue;
- (BOOL)_isDBSizeWithinThreshold;
- (BOOL)_saveMetricWithUUIDS:(id)s parentUUID:(id)d withData:(id)data ofType:(int)type;
- (BOOL)configuredForMetricStreaming;
- (BOOL)noteSymptom:(id)symptom;
- (BOOL)writesToDBAllowed;
- (NSString)description;
- (NWActivityHandler)init;
- (id)_createDeviceReportForActivityType:(int)type andDomain:(unsigned int)domain;
- (id)_createSFL2Report;
- (id)_getBundleNameFromPid:(int)pid;
- (id)analyticsWorkspace;
- (id)createValidJSONObject:(id)object atPath:(id)path;
- (id)dbWriteStateToString:(unsigned __int8)string;
- (id)mapperForUUID:(id)d reason:(int)reason;
- (id)serialNumberForInternalBuilds;
- (unsigned)_timestampTwoHourBucketForCurrentTime;
- (unsigned)_timestampTwoHourBucketForTime:(double)time;
- (void)_collectCellularFragment;
- (void)_convertPLMNToDecimal:(id)decimal mcc:(int *)mcc mnc:(int *)mnc;
- (void)_deliverCellularFragment:(id)fragment;
- (void)_dumpState:(int)state;
- (void)_handleCFNetworkItem:(id)item;
- (void)_handleCellularItem:(id)item;
- (void)_handleClientMetric:(id)metric forBundleID:(id)d;
- (void)_handleEpilogue:(id)epilogue;
- (void)_handleL2Start:(id)start;
- (void)_handleL2Stop:(id)stop;
- (void)_handleStartActivity:(id)activity;
- (void)_handleWiFiItem:(id)item;
- (void)_pruneActivityLists;
- (void)_pruneOldMappings;
- (void)_sendCAEvent:(id)event forReport:(id)report;
- (void)_startL2Streaming;
- (void)_stopL2Streaming;
- (void)_triggerCellMetric;
- (void)_triggerWiFiMetric;
- (void)_updateL2MetricLoggingRequests;
- (void)dealloc;
- (void)enableDBWrites;
- (void)generateInfoForId:(unint64_t)id context:(const char *)context uuid:(id)uuid completionBlock:(id)block;
- (void)handleDBEvent:(unsigned __int8)event;
- (void)handleEvent:(id)event forEventName:(id)name;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)personalHotspotClientStateChanged:(id)changed oldValue:(unsigned int)value newValue:(unsigned int)newValue;
- (void)powerStateChanged:(BOOL)changed;
- (void)processSymptom:(id)symptom;
- (void)setUpBatteryAccumulator;
- (void)streamDictionaryMetric:(id)metric additionalDictionaryItems:(id)items;
- (void)traverseObject:(id)object atPath:(id)path;
@end

@implementation NWActivityHandler

__CFString *__44__NWActivityHandler_setUpBatteryAccumulator__block_invoke_3(uint64_t a1, void *a2)
{
  if ([a2 BOOLValue])
  {
    v2 = @"on";
  }

  else
  {
    v2 = @"off";
  }

  return v2;
}

- (id)serialNumberForInternalBuilds
{
  if (serialNumberForInternalBuilds_token != -1)
  {
    [NWActivityHandler serialNumberForInternalBuilds];
  }

  v3 = serialNumberForInternalBuilds_internalSerialNumber;

  return v3;
}

- (id)_createSFL2Report
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(SFL2Report);
  if (v3)
  {
    v4 = [NetworkStateRelay getStateRelayFor:5];
    v5 = metricsLogHandle;
    if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v30 = 138412290;
      v31 = v4;
      _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEBUG, "NWACT: Got Cell state relay: %@", &v30, 0xCu);
    }

    [(SFL2Report *)v3 setCellularLQM:[(SFL2Report *)v4 linkQuality]];
    [(SFL2Report *)v3 setCellularKnownGood:[(SFL2Report *)v4 knownGood]];
    if (([(SFL2Report *)v4 isStewieActive]& 1) != 0)
    {
      radioTechnology = 64;
    }

    else if (([(SFL2Report *)v4 isNonTerrestrialNetworkActive]& 1) != 0)
    {
      radioTechnology = 65;
    }

    else
    {
      radioTechnology = [(SFL2Report *)v4 radioTechnology];
    }

    [(SFL2Report *)v3 setCellularRadioTechnology:radioTechnology];
    [(SFL2Report *)v3 setCellularBandwidth:[(SFL2Report *)v4 cellBandwidth]];
    [(SFL2Report *)v3 setCellularBandInfo:[(SFL2Report *)v4 cellBandInfo]];
    [(SFL2Report *)v3 setCellularMCC:[(SFL2Report *)v4 cellMCC]];
    [(SFL2Report *)v3 setCellularMNC:[(SFL2Report *)v4 cellMNC]];
    [(SFL2Report *)v3 setCellularPID:[(SFL2Report *)v4 cellPID]];
    [(SFL2Report *)v3 setCellularTAC:[(SFL2Report *)v4 cellTAC]];
    [(SFL2Report *)v3 setCellularUARFCN:[(SFL2Report *)v4 cellUARFCN]];
    cellType = [(SFL2Report *)v4 cellType];
    [(SFL2Report *)v3 setCellularCellType:cellType];

    [(SFL2Report *)v3 setCellularBars:[(SFL2Report *)v4 signalBars]];
    [(SFL2Report *)v3 setCellularRSRP:[(SFL2Report *)v4 cellRSRP]];
    [(SFL2Report *)v4 cellSNR];
    [(SFL2Report *)v3 setCellularSNR:?];
    networkSlicingStates = [(SFL2Report *)v4 networkSlicingStates];
    -[SFL2Report setCellularSliceActive:](v3, "setCellularSliceActive:", [networkSlicingStates indexOfObject:MEMORY[0x277CBEC38]] != 0x7FFFFFFFFFFFFFFFLL);

    [(SFL2Report *)v3 setCellularDualSimStatus:[(SFL2Report *)v4 cellDualSimStatus]];
    [(SFL2Report *)v3 setCellularSecondaryMnc:[(SFL2Report *)v4 cellNonPreferredMNC]];
    [(SFL2Report *)v3 setCellularSecondaryMcc:[(SFL2Report *)v4 cellNonPreferredMCC]];
    [(SFL2Report *)v3 setCellularBand:[(SFL2Report *)v4 nrFrequencyBand]];
    v10 = +[CellOutrankHandler sharedInstance];
    -[SFL2Report setCellularOutranksWiFi:](v3, "setCellularOutranksWiFi:", [v10 cellOutranksWiFi]);
    -[SFL2Report setCellularOutrankReasonFlags:](v3, "setCellularOutrankReasonFlags:", [v10 cellOutrankReportableTransitionFlags]);
    -[SFL2Report setCellularOutrankPrimaryReason:](v3, "setCellularOutrankPrimaryReason:", [v10 cellOutrankReportableTransitionPrimaryReason]);
    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    queueStatistics = [(SFL2Report *)v4 queueStatistics];
    [(SFL2Report *)queueStatistics update];
    v13 = metricsLogHandle;
    if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_INFO))
    {
      v30 = 138412290;
      v31 = queueStatistics;
      _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_INFO, "Got queue statistics for cellular: %@", &v30, 0xCu);
    }

    v14 = [(NWActivityHandler *)self _convertQueueStats:queueStatistics forInterfaceType:2];
    [v11 addObjectsFromArray:v14];

    v15 = +[SmartDataModeRelay sharedInstance];
    -[SFL2Report setCellularMode:](v3, "setCellularMode:", [v15 cellDataStatus]);
    v16 = [NetworkStateRelay getStateRelayFor:3];
    v17 = metricsLogHandle;
    if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v30 = 138412290;
      v31 = v16;
      _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_DEBUG, "NWACT: Got Wi-Fi state relay: %@", &v30, 0xCu);
    }

    [(SFL2Report *)v3 setWifiLQM:[(SFL2Report *)v16 linkQuality]];
    [(SFL2Report *)v3 setWifiRSSI:[(SFL2Report *)v16 lastReportedRxSignalStrength]];
    [(SFL2Report *)v3 setWifiKnownGood:[(SFL2Report *)v16 knownGood]];
    [(SFL2Report *)v3 setWifiRadioTechnology:[(SFL2Report *)v16 radioTechnology]];
    [(SFL2Report *)v3 setWifiIsHotspot:[(SFL2Report *)v16 isHotspot]];
    [(SFL2Report *)v3 setWifiIsApplePersonalHotspot:[(SFL2Report *)v16 isApplePersonalHotspot]];
    queueStatistics2 = [(SFL2Report *)v16 queueStatistics];
    [(SFL2Report *)queueStatistics2 update];
    v19 = metricsLogHandle;
    if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_INFO))
    {
      v30 = 138412290;
      v31 = queueStatistics2;
      _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_INFO, "Got queue statistics for wifi: %@", &v30, 0xCu);
    }

    v20 = [(NWActivityHandler *)self _convertQueueStats:queueStatistics2 forInterfaceType:1];
    [v11 addObjectsFromArray:v20];

    [(SFL2Report *)v3 setInterfaceQueueStats:v11];
    cellularRadioTechnology = [(SFL2Report *)v3 cellularRadioTechnology];
    wifiRadioTechnology = [(SFL2Report *)v3 wifiRadioTechnology];
    v23 = @"WiFi";
    if (!wifiRadioTechnology)
    {
      v23 = @"Unknown";
    }

    v24 = @"Cellular";
    if (wifiRadioTechnology)
    {
      v24 = @"WiFi + Cellular";
    }

    if (cellularRadioTechnology)
    {
      v25 = v24;
    }

    else
    {
      v25 = v23;
    }

    [(SFL2Report *)v3 setActiveRadio:v25];
    v26 = metricsLogHandle;
    if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v30 = 138412290;
      v31 = v3;
      _os_log_impl(&dword_23255B000, v26, OS_LOG_TYPE_DEBUG, "Created SFL2Report: %@", &v30, 0xCu);
    }

    v27 = v3;
  }

  else
  {
    v7 = metricsLogHandle;
    if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v30) = 0;
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_ERROR, "NWACT: Failed to create SFL2Report", &v30, 2u);
    }
  }

  v28 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)_getBundleNameFromPid:(int)pid
{
  v31 = *MEMORY[0x277D85DE8];
  if (_getBundleNameFromPid__hot_pid == pid)
  {
    date = [MEMORY[0x277CBEAA8] date];
    [date timeIntervalSinceDate:_getBundleNameFromPid__hotTime];
    if (v5 < 1000.0)
    {
      bundleIdentifier = _getBundleNameFromPid__hotBundle;
LABEL_20:

      goto LABEL_21;
    }

    _getBundleNameFromPid__hot_pid = 0;
    v6 = _getBundleNameFromPid__hotBundle;
    _getBundleNameFromPid__hotBundle = 0;
  }

  v7 = proc_pidpath(pid, buffer, 0x1000u);
  if (v7 - 1 <= 0xFFF)
  {
    v8 = MEMORY[0x277CBEBC0];
    v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:buffer length:v7 encoding:4];
    date = [v8 fileURLWithPath:v9];

    if (date)
    {
      v10 = _CFBundleCopyBundleURLForExecutableURL();
      v11 = [MEMORY[0x277CCA8D8] bundleWithURL:v10];
      v12 = v11;
      if (v11 && ([v11 bundleIdentifier], v13 = objc_claimAutoreleasedReturnValue(), v13, v13))
      {
        bundleIdentifier = [v12 bundleIdentifier];
        _getBundleNameFromPid__hot_pid = pid;
        objc_storeStrong(&_getBundleNameFromPid__hotBundle, bundleIdentifier);
        date2 = [MEMORY[0x277CBEAA8] date];
        v16 = _getBundleNameFromPid__hotTime;
        _getBundleNameFromPid__hotTime = date2;
      }

      else
      {
        v18 = metricsLogHandle;
        if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_INFO))
        {
          v19 = v18;
          bundleIdentifier2 = [v12 bundleIdentifier];
          v24 = 67109632;
          pidCopy3 = pid;
          v26 = 2048;
          v27 = v12;
          v28 = 2048;
          v29 = bundleIdentifier2;
          _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_INFO, "NWACT: No bundle for delegating client %d: bundle %p, bundle.bundleIdentifier %p", &v24, 0x1Cu);
        }

        bundleIdentifier = 0;
      }
    }

    else
    {
      v21 = metricsLogHandle;
      if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_INFO))
      {
        v24 = 67109120;
        pidCopy3 = pid;
        _os_log_impl(&dword_23255B000, v21, OS_LOG_TYPE_INFO, "NWACT: No bundle for delegating client %d: no executable URL", &v24, 8u);
      }

      bundleIdentifier = 0;
    }

    goto LABEL_20;
  }

  v17 = metricsLogHandle;
  if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_INFO))
  {
    v24 = 67109376;
    pidCopy3 = pid;
    v26 = 1024;
    LODWORD(v27) = v7;
    _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_INFO, "NWACT: No bundle for delegating client %d: pid_path returned invalid length %d", &v24, 0xEu);
  }

  bundleIdentifier = 0;
LABEL_21:
  v22 = *MEMORY[0x277D85DE8];

  return bundleIdentifier;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"%@ at %p", v5, self];

  return v6;
}

- (void)_dumpState:(int)state
{
  v39 = *MEMORY[0x277D85DE8];
  if (state == 1)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    mappedMetrics = [(NWActivityHandler *)self mappedMetrics];
    v5 = [mappedMetrics countByEnumeratingWithState:&v24 objects:v38 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v25;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v25 != v7)
          {
            objc_enumerationMutation(mappedMetrics);
          }

          v9 = metricsLogHandle;
          if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            v10 = *(*(&v24 + 1) + 8 * i);
            v11 = v9;
            mappedMetrics2 = [(NWActivityHandler *)self mappedMetrics];
            v13 = [mappedMetrics2 objectForKeyedSubscript:v10];
            *buf = 138412546;
            v29 = v10;
            v30 = 2112;
            v31 = v13;
            _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEFAULT, "NWACT: mapper for %@ is %@", buf, 0x16u);
          }
        }

        v6 = [mappedMetrics countByEnumeratingWithState:&v24 objects:v38 count:16];
      }

      while (v6);
    }
  }

  v14 = metricsLogHandle;
  if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218752;
    v29 = numHitLookupsNWActivity;
    v30 = 2048;
    v31 = numHitLookupsNWActivityParent;
    v32 = 2048;
    v33 = numHitLookupsNWActivityEpilogue;
    v34 = 2048;
    v35 = numHitLookupsNWActivityEpilogueParent;
    _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_DEFAULT, "NWACT Cache hits Activity %lld (parent %lld) Epilogue %lld (parent %lld)", buf, 0x2Au);
  }

  v15 = metricsLogHandle;
  if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218752;
    v29 = numHitLookupsNWActivityFromCFNetwork;
    v30 = 2048;
    v31 = numHitLookupsConnectionFromCFNetworkArray;
    v32 = 2048;
    v33 = numHitLookupsNWActivityFromLibnetcoreArray;
    v34 = 2048;
    v35 = numHitLookupsConnectionFromLibnetcore;
    _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_DEFAULT, "NWACT Cache hits CFNet activity %lld CFNet connection %lld  NWConnection activity %lld NWConnection connection %lld", buf, 0x2Au);
  }

  v16 = metricsLogHandle;
  if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v29 = numHitLookupsNWActivityFromWiFiArray;
    _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_DEFAULT, "NWACT Cache hits WiFi activity %lld", buf, 0xCu);
  }

  v17 = metricsLogHandle;
  if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v29 = numHitLookupsNWActivityFromCellArray;
    _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_DEFAULT, "NWACT Cache hits Cell activity %lld", buf, 0xCu);
  }

  v18 = metricsLogHandle;
  if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218752;
    v29 = numMissedLookupsNWActivity;
    v30 = 2048;
    v31 = numMissedLookupsNWActivityParent;
    v32 = 2048;
    v33 = numMissedLookupsNWActivityEpilogue;
    v34 = 2048;
    v35 = numMissedLookupsNWActivityEpilogueParent;
    _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_DEFAULT, "NWACT Cache misses Activity %lld (parent %lld) Epilogue %lld (parent %lld)", buf, 0x2Au);
  }

  v19 = metricsLogHandle;
  if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218752;
    v29 = numMissedLookupsNWActivityFromCFNetwork;
    v30 = 2048;
    v31 = numMissedLookupsConnectionFromCFNetworkArray;
    v32 = 2048;
    v33 = numMissedLookupsNWActivityFromLibnetcoreArray;
    v34 = 2048;
    v35 = numMissedLookupsConnectionFromLibnetcore;
    _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_DEFAULT, "NWACT Cache misses CFNet activity %lld CFNet connection %lld  NWConnection activity %lld NWConnection connection %lld", buf, 0x2Au);
  }

  v20 = metricsLogHandle;
  if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v29 = numMissedLookupsNWActivityFromWiFiArray;
    _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_DEFAULT, "NWACT Cache misses WiFi activity %lld", buf, 0xCu);
  }

  v21 = metricsLogHandle;
  if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v29 = numMissedLookupsNWActivityFromCellArray;
    _os_log_impl(&dword_23255B000, v21, OS_LOG_TYPE_DEFAULT, "NWACT Cache misses Cell activity %lld", buf, 0xCu);
  }

  v22 = metricsLogHandle;
  if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134219008;
    v29 = numPrunes;
    v30 = 2048;
    v31 = numEvictionsConnection;
    v32 = 2048;
    v33 = numEvictionsNWActivity;
    v34 = 2048;
    *&v35 = *&totalAgeAtEviction / (numEvictionsNWActivity + numEvictionsConnection);
    v36 = 2048;
    v37 = minAgeAtEviction;
    _os_log_impl(&dword_23255B000, v22, OS_LOG_TYPE_DEFAULT, "NWACT Cache prunes %lld evictions: connection %lld activity %lld (average age %.3f minimum age %.3f)", buf, 0x34u);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)generateInfoForId:(unint64_t)id context:(const char *)context uuid:(id)uuid completionBlock:(id)block
{
  v19[1] = *MEMORY[0x277D85DE8];
  metricsQueue = self->_metricsQueue;
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __68__NWActivityHandler_generateInfoForId_context_uuid_completionBlock___block_invoke;
  v16 = &unk_27898A0C8;
  selfCopy = self;
  blockCopy = block;
  dispatch_async(metricsQueue, &v13);
  date = [MEMORY[0x277CBEAA8] date];
  v18 = @"Handler";
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v19[0] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
  (*(blockCopy + 2))(blockCopy, 0, "Check syslog for more", date, "collected on demand", 0, v11);

  v12 = *MEMORY[0x277D85DE8];
}

- (id)mapperForUUID:(id)d reason:(int)reason
{
  v24 = *MEMORY[0x277D85DE8];
  dCopy = d;
  mappedMetrics = [(NWActivityHandler *)self mappedMetrics];
  nullUUIDMapper = [mappedMetrics objectForKeyedSubscript:dCopy];

  if (nullUUIDMapper)
  {
    if (reason > 6)
    {
      if (reason > 9)
      {
        switch(reason)
        {
          case 10:
            ++numHitLookupsNWActivityFromCellArray;
            break;
          case 11:
            ++numHitLookupsNWActivityClientMetric;
            break;
          case 12:
            ++numHitLookupsNWActivityFromTerminusArray;
            break;
        }
      }

      else if (reason == 7)
      {
        ++numHitLookupsConnectionFromCFNetworkArray;
      }

      else if (reason == 8)
      {
        ++numHitLookupsConnectionFromLibnetcore;
      }

      else
      {
        ++numHitLookupsNWActivityFromWiFiArray;
      }
    }

    else if (reason > 3)
    {
      if (reason == 4)
      {
        ++numHitLookupsNWActivityEpilogueParent;
      }

      else if (reason == 5)
      {
        ++numHitLookupsNWActivityFromLibnetcoreArray;
      }

      else
      {
        ++numHitLookupsNWActivityFromCFNetwork;
      }
    }

    else
    {
      switch(reason)
      {
        case 1:
          ++numHitLookupsNWActivity;
          break;
        case 2:
          ++numHitLookupsNWActivityParent;
          break;
        case 3:
          ++numHitLookupsNWActivityEpilogue;
          break;
      }
    }
  }

  else
  {
    if ((reason - 1) <= 0xB)
    {
      ++*off_27898FCA8[reason - 1];
    }

    mappedMetrics2 = [(NWActivityHandler *)self mappedMetrics];
    v10 = [mappedMetrics2 count];

    if (v10 >= 0x78)
    {
      [(NWActivityHandler *)self _pruneOldMappings];
    }

    if (reason == 5)
    {
      nullUUIDMapper = [(NWActivityHandler *)self nullUUIDMapper];
      v11 = metricsLogHandle;
      if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v20) = 0;
        _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEBUG, "NWACT: Use null mapper for unknown libnetcore activity uuid", &v20, 2u);
      }
    }

    else
    {
      nullUUIDMapper = objc_alloc_init(NWUUIDMapper);
      uUID = [MEMORY[0x277CCAD78] UUID];
      [(NWUUIDMapper *)nullUUIDMapper setExternalUUID:uUID];

      mappedMetrics3 = [(NWActivityHandler *)self mappedMetrics];
      [mappedMetrics3 setObject:nullUUIDMapper forKeyedSubscript:dCopy];

      v14 = metricsLogHandle;
      if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_DEBUG))
      {
        v15 = v14;
        mappedMetrics4 = [(NWActivityHandler *)self mappedMetrics];
        v20 = 134218242;
        v21 = nullUUIDMapper;
        v22 = 2112;
        v23 = mappedMetrics4;
        _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_DEBUG, "NWACT: Add mapper %p to dictionary %@", &v20, 0x16u);
      }
    }
  }

  [(NWUUIDMapper *)nullUUIDMapper setUsageFlags:[(NWUUIDMapper *)nullUUIDMapper usageFlags]| (1 << reason)];
  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSince1970];
  [(NWUUIDMapper *)nullUUIDMapper setLastAccessDate:?];

  v18 = *MEMORY[0x277D85DE8];

  return nullUUIDMapper;
}

- (void)_pruneOldMappings
{
  v35 = *MEMORY[0x277D85DE8];
  mappedMetrics = [(NWActivityHandler *)self mappedMetrics];
  v3 = [mappedMetrics count];

  if (v3 >= 0x78)
  {
    ++numPrunes;
    v4 = metricsLogHandle;
    if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v34 = numPrunes;
      _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "NWACT: Prune cache, invocation %lld", buf, 0xCu);
    }

    mappedMetrics2 = [(NWActivityHandler *)self mappedMetrics];
    v6 = [mappedMetrics2 keysSortedByValueUsingComparator:&__block_literal_global_49];

    v26 = v6;
    v7 = [v6 subarrayWithRange:{0, 20}];
    date = [MEMORY[0x277CBEAA8] date];
    [date timeIntervalSince1970];
    v10 = v9;

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v11 = v7;
    v12 = [v11 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v29;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v29 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v28 + 1) + 8 * i);
          mappedMetrics3 = [(NWActivityHandler *)self mappedMetrics];
          v18 = [mappedMetrics3 objectForKeyedSubscript:v16];

          [v18 lastAccessDate];
          v20 = v10 - v19;
          *&totalAgeAtEviction = *&totalAgeAtEviction + v10 - v19;
          if (([v18 usageFlags] & 0x180) != 0)
          {
            v21 = &numEvictionsConnection;
          }

          else
          {
            v21 = &numEvictionsNWActivity;
          }

          ++*v21;
          if (*&minAgeAtEviction == 0.0 || v20 < *&minAgeAtEviction)
          {
            minAgeAtEviction = *&v20;
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v13);
    }

    v23 = v11;

    mappedMetrics4 = [(NWActivityHandler *)self mappedMetrics];
    [mappedMetrics4 removeObjectsForKeys:v23];
  }

  v25 = *MEMORY[0x277D85DE8];
}

uint64_t __38__NWActivityHandler__pruneOldMappings__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = v4;
  v7 = v5;
  if (([v6 usageFlags] & 0x8000) != 0)
  {
    v11 = 1;
  }

  else if (([v7 usageFlags] & 0x8000) != 0 || (objc_msgSend(v6, "lastAccessDate"), v9 = v8, objc_msgSend(v7, "lastAccessDate"), v9 < v10))
  {
    v11 = -1;
  }

  else
  {
    [v6 lastAccessDate];
    v14 = v13;
    [v7 lastAccessDate];
    v11 = v14 != v15;
  }

  return v11;
}

- (void)powerStateChanged:(BOOL)changed
{
  metricsQueue = self->_metricsQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __39__NWActivityHandler_powerStateChanged___block_invoke;
  v4[3] = &unk_27898A3A0;
  v4[4] = self;
  changedCopy = changed;
  dispatch_async(metricsQueue, v4);
}

uint64_t __39__NWActivityHandler_powerStateChanged___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 192);
  if (v3)
  {
    [v3 reset];
    v2 = *(a1 + 32);
  }

  if (*(v2 + 80))
  {
    is_selected_for_reporting = nw_activity_is_selected_for_reporting();
    v5 = *(a1 + 32);
    if (is_selected_for_reporting)
    {
      v6 = [*(v5 + 192) lastSnapshot];
      v5 = *(a1 + 32);
    }

    else
    {
      v6 = 0;
    }

    v7 = *(v5 + 200);
    *(v5 + 200) = v6;

    v8 = *(*(a1 + 32) + 80);
    nw_activity_complete_with_reason();
    v9 = *(a1 + 32);
    v10 = *(v9 + 80);
    *(v9 + 80) = 0;
  }

  *(a1 + 40);
  v11 = nw_activity_create();
  v12 = *(a1 + 32);
  v13 = *(v12 + 80);
  *(v12 + 80) = v11;

  v14 = *(*(a1 + 32) + 80);

  return nw_activity_activate();
}

- (void)personalHotspotClientStateChanged:(id)changed oldValue:(unsigned int)value newValue:(unsigned int)newValue
{
  softAPClientActivity = changed;
  v9 = softAPClientActivity;
  personalHotspotActivityState = self->_personalHotspotActivityState;
  if (personalHotspotActivityState <= 1)
  {
    if (personalHotspotActivityState)
    {
      if (personalHotspotActivityState == 1)
      {
        v38 = softAPClientActivity;
        v11 = [softAPClientActivity isEqualToString:@"wifiNanClientCount"];
        if (newValue && !value && v11)
        {
          if (!self->_softAPAndWiFiNanClientActivity)
          {
            v12 = nw_activity_create();
            softAPAndWiFiNanClientActivity = self->_softAPAndWiFiNanClientActivity;
            self->_softAPAndWiFiNanClientActivity = v12;

            v14 = self->_softAPAndWiFiNanClientActivity;
            nw_activity_activate();
          }

          if (!self->_wifiNanClientActivity)
          {
            v15 = nw_activity_create();
            wifiNanClientActivity = self->_wifiNanClientActivity;
            self->_wifiNanClientActivity = v15;

            v17 = self->_wifiNanClientActivity;
            nw_activity_activate();
          }

          self->_personalHotspotActivityState = 3;
        }

        softAPClientActivity = [v38 isEqualToString:@"softAPClientCount"];
        v9 = v38;
        if (!newValue && value && softAPClientActivity)
        {
          softAPClientActivity = self->_softAPClientActivity;
          if (softAPClientActivity)
          {
            nw_activity_complete_with_reason();
            v18 = self->_softAPClientActivity;
            self->_softAPClientActivity = 0;
LABEL_49:

            v9 = v38;
            goto LABEL_50;
          }

          goto LABEL_50;
        }
      }

      goto LABEL_62;
    }

    if (value || !newValue)
    {
      goto LABEL_62;
    }

    v39 = softAPClientActivity;
    softAPClientActivity = [softAPClientActivity isEqualToString:@"softAPClientCount"];
    if (softAPClientActivity)
    {
      if (self->_softAPClientActivity)
      {
        v22 = 1;
        goto LABEL_60;
      }

      v22 = 1;
      v32 = nw_activity_create();
      v33 = self->_softAPClientActivity;
      self->_softAPClientActivity = v32;

      v34 = self->_softAPClientActivity;
    }

    else
    {
      softAPClientActivity = [v39 isEqualToString:@"wifiNanClientCount"];
      v9 = v39;
      if (!softAPClientActivity)
      {
        goto LABEL_62;
      }

      if (self->_wifiNanClientActivity)
      {
        v22 = 2;
        goto LABEL_61;
      }

      v22 = 2;
      v35 = nw_activity_create();
      v36 = self->_wifiNanClientActivity;
      self->_wifiNanClientActivity = v35;

      v37 = self->_wifiNanClientActivity;
    }

    softAPClientActivity = nw_activity_activate();
    goto LABEL_60;
  }

  if (personalHotspotActivityState != 2)
  {
    if (personalHotspotActivityState != 3 || value == 0 || newValue != 0)
    {
      goto LABEL_62;
    }

    v39 = softAPClientActivity;
    if (self->_softAPAndWiFiNanClientActivity)
    {
      nw_activity_complete_with_reason();
      v21 = self->_softAPAndWiFiNanClientActivity;
      self->_softAPAndWiFiNanClientActivity = 0;

      v9 = v39;
    }

    if (![v9 isEqualToString:@"softAPClientCount"] || !self->_softAPClientActivity)
    {
      softAPClientActivity = [v39 isEqualToString:@"wifiNanClientCount"];
      v9 = v39;
      if (softAPClientActivity)
      {
        softAPClientActivity = self->_wifiNanClientActivity;
        if (softAPClientActivity)
        {
          nw_activity_complete_with_reason();
          v31 = self->_wifiNanClientActivity;
          self->_wifiNanClientActivity = 0;

          v9 = v39;
          v22 = 1;
          goto LABEL_61;
        }
      }

      goto LABEL_62;
    }

    v22 = 2;
    nw_activity_complete_with_reason();
    v23 = self->_softAPClientActivity;
    self->_softAPClientActivity = 0;

LABEL_60:
    v9 = v39;
    goto LABEL_61;
  }

  v38 = softAPClientActivity;
  v24 = [softAPClientActivity isEqualToString:@"softAPClientCount"];
  if (newValue && !value && v24)
  {
    if (!self->_softAPAndWiFiNanClientActivity)
    {
      v25 = nw_activity_create();
      v26 = self->_softAPAndWiFiNanClientActivity;
      self->_softAPAndWiFiNanClientActivity = v25;

      v27 = self->_softAPAndWiFiNanClientActivity;
      nw_activity_activate();
    }

    if (!self->_softAPClientActivity)
    {
      v28 = nw_activity_create();
      v29 = self->_softAPClientActivity;
      self->_softAPClientActivity = v28;

      v30 = self->_softAPClientActivity;
      nw_activity_activate();
    }

    self->_personalHotspotActivityState = 3;
  }

  softAPClientActivity = [v38 isEqualToString:@"wifiNanClientCount"];
  v9 = v38;
  if (!newValue && value && softAPClientActivity)
  {
    softAPClientActivity = self->_wifiNanClientActivity;
    if (softAPClientActivity)
    {
      nw_activity_complete_with_reason();
      v18 = self->_wifiNanClientActivity;
      self->_wifiNanClientActivity = 0;
      goto LABEL_49;
    }

LABEL_50:
    v22 = 0;
LABEL_61:
    self->_personalHotspotActivityState = v22;
  }

LABEL_62:

  MEMORY[0x2821F96F8](softAPClientActivity, v9);
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v45 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  v12 = metricsLogHandle;
  v13 = os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_DEBUG);
  if (pathCopy && objectCopy && changeCopy)
  {
    if (v13)
    {
      *buf = 138412546;
      v38 = pathCopy;
      v39 = 2112;
      v40 = objectCopy;
      _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_DEBUG, "Update for keypath %@ of object %@", buf, 0x16u);
    }

    v14 = +[PowerStateRelay defaultRelay];
    if (v14 == objectCopy && [(__CFString *)pathCopy isEqualToString:@"pluggedIn"])
    {
      v15 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
      v16 = metricsLogHandle;
      if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412802;
        v38 = v15;
        v39 = 2112;
        v40 = pathCopy;
        v41 = 2112;
        v42 = objectCopy;
        _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_DEBUG, "Update to value %@ for keypath %@ of object %@", buf, 0x20u);
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        bOOLValue = [(__CFString *)v15 BOOLValue];
        v29 = metricsLogHandle;
        if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v38 = @"pluggedIn";
          v39 = 1024;
          LODWORD(v40) = bOOLValue;
          _os_log_impl(&dword_23255B000, v29, OS_LOG_TYPE_INFO, "%@ state changed: %u", buf, 0x12u);
        }

        [(NWActivityHandler *)self powerStateChanged:bOOLValue];
        goto LABEL_27;
      }

      v17 = metricsLogHandle;
      if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v38 = pathCopy;
        v39 = 2112;
        v40 = objectCopy;
        _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_ERROR, "Ignoring null value for keypath %@ of object %@", buf, 0x16u);
      }
    }

    v18 = +[PersonalHotspotRelay sharedInstance];
    v15 = v18;
    if (v18 == objectCopy && [(__CFString *)v18 isReady])
    {
      v19 = *MEMORY[0x277CCA300];
      v20 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA300]];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_21:

        goto LABEL_27;
      }

      v32 = v19;
      v31 = *MEMORY[0x277CCA2F0];
      v21 = [changeCopy objectForKeyedSubscript:?];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        v23 = [changeCopy objectForKeyedSubscript:v32];
        v24 = [changeCopy objectForKeyedSubscript:v31];
        v25 = metricsLogHandle;
        if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138413058;
          v38 = v23;
          v39 = 2112;
          v40 = v24;
          v41 = 2112;
          v42 = pathCopy;
          v43 = 2112;
          v44 = objectCopy;
          _os_log_impl(&dword_23255B000, v25, OS_LOG_TYPE_DEFAULT, "Update of value %@ to value %@ for keypath %@ of object %@", buf, 0x2Au);
        }

        metricsQueue = self->_metricsQueue;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __68__NWActivityHandler_observeValueForKeyPath_ofObject_change_context___block_invoke;
        block[3] = &unk_27898FC40;
        block[4] = self;
        v34 = pathCopy;
        v35 = v23;
        v36 = v24;
        v27 = v24;
        v20 = v23;
        dispatch_async(metricsQueue, block);

        goto LABEL_21;
      }
    }

LABEL_27:

    goto LABEL_28;
  }

  if (v13)
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_DEBUG, "Skipping observation of invalid value", buf, 2u);
  }

LABEL_28:

  v30 = *MEMORY[0x277D85DE8];
}

uint64_t __68__NWActivityHandler_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) unsignedIntValue];
  v5 = [*(a1 + 56) unsignedIntValue];

  return [v2 personalHotspotClientStateChanged:v3 oldValue:v4 newValue:v5];
}

- (void)setUpBatteryAccumulator
{
  v9 = +[PowerStateRelay defaultRelay];
  [(NWAccumulator *)self->_batteryAccumulator addAccumulation:v9 forKey:@"screenNotDark" stateCallback:&__block_literal_global_100];
  [(NWAccumulator *)self->_batteryAccumulator addAccumulation:v9 forKey:@"lowPowerModeEnabled" stateCallback:&__block_literal_global_111];
  v3 = +[LocationStateRelay sharedInstance];
  [(NWAccumulator *)self->_batteryAccumulator addAccumulation:v3 forKey:@"gpsInUse" stateCallback:&__block_literal_global_117];
  v4 = [NetworkStateRelay getStateRelayFor:3];
  [(NWAccumulator *)self->_batteryAccumulator addAccumulation:v4 withName:@"wifiLinkQuality" forKey:@"linkQuality" stateCallback:&__block_literal_global_126_0];
  v5 = [NetworkStateRelay getStateRelayFor:5];
  [(NWAccumulator *)self->_batteryAccumulator addAccumulation:v5 forKey:@"radioTechnology" stateCallback:&__block_literal_global_131];
  [(NWAccumulator *)self->_batteryAccumulator addAccumulation:v5 forKey:@"cellRrcConnected" stateCallback:&__block_literal_global_137];
  [(NWAccumulator *)self->_batteryAccumulator addAccumulation:v5 forKey:@"signalBars" stateCallback:&__block_literal_global_142_0];
  [(NWAccumulator *)self->_batteryAccumulator addAccumulation:v5 withName:@"cellLinkQuality" forKey:@"linkQuality" stateCallback:&__block_literal_global_147];
  [(NWAccumulator *)self->_batteryAccumulator addAccumulation:v5 forKey:@"cellBandwidth" stateCallback:&__block_literal_global_152];
  [(NWAccumulator *)self->_batteryAccumulator addAccumulation:v5 forKey:@"cellBandInfo" stateCallback:&__block_literal_global_157];
  [(NWAccumulator *)self->_batteryAccumulator addAccumulation:v5 forKey:@"nrFrequencyBand" stateCallback:&__block_literal_global_162_0];
  v6 = +[SystemSettingsRelay defaultRelay];
  [(NWAccumulator *)self->_batteryAccumulator addAccumulation:v6 forKey:@"smartDataModeEnabled" stateCallback:&__block_literal_global_168];
  v7 = +[SmartDataModeRelay sharedInstance];
  [(NWAccumulator *)self->_batteryAccumulator addAccumulation:v7 forKey:@"cellDataStatus" stateCallback:&__block_literal_global_174];
  v8 = +[CellOutrankHandler sharedInstance];
  [(NWAccumulator *)self->_batteryAccumulator addAccumulation:v8 forKey:@"cellOutranksWiFi" stateCallback:&__block_literal_global_180];
}

__CFString *__44__NWActivityHandler_setUpBatteryAccumulator__block_invoke(uint64_t a1, void *a2)
{
  if ([a2 BOOLValue])
  {
    v2 = @"on";
  }

  else
  {
    v2 = @"off";
  }

  return v2;
}

__CFString *__44__NWActivityHandler_setUpBatteryAccumulator__block_invoke_2(uint64_t a1, void *a2)
{
  if ([a2 BOOLValue])
  {
    v2 = @"on";
  }

  else
  {
    v2 = @"off";
  }

  return v2;
}

__CFString *__44__NWActivityHandler_setUpBatteryAccumulator__block_invoke_4(uint64_t a1, void *a2)
{
  if ([a2 intValue] <= 0xFFFFFFFD)
  {
    v2 = @"on";
  }

  else
  {
    v2 = @"off";
  }

  return v2;
}

id __44__NWActivityHandler_setUpBatteryAccumulator__block_invoke_5(uint64_t a1, void *a2)
{
  v2 = [a2 intValue];

  return [NetworkAnalyticsEngine mapRadioTechnologyTypeToString:v2];
}

__CFString *__44__NWActivityHandler_setUpBatteryAccumulator__block_invoke_6(uint64_t a1, void *a2)
{
  if ([a2 BOOLValue])
  {
    v2 = @"on";
  }

  else
  {
    v2 = @"off";
  }

  return v2;
}

id __44__NWActivityHandler_setUpBatteryAccumulator__block_invoke_11(uint64_t a1, void *a2)
{
  v2 = [a2 intValue];

  return [NetworkAnalyticsEngine mapNrFrequencyBandToString:v2];
}

__CFString *__44__NWActivityHandler_setUpBatteryAccumulator__block_invoke_12(uint64_t a1, void *a2)
{
  if ([a2 BOOLValue])
  {
    v2 = @"on";
  }

  else
  {
    v2 = @"off";
  }

  return v2;
}

id __44__NWActivityHandler_setUpBatteryAccumulator__block_invoke_13(uint64_t a1, void *a2)
{
  v2 = [a2 intValue];

  return [SmartDataModeRelay cellDataStatusToString:v2];
}

__CFString *__44__NWActivityHandler_setUpBatteryAccumulator__block_invoke_14(uint64_t a1, void *a2)
{
  if ([a2 BOOLValue])
  {
    v2 = @"on";
  }

  else
  {
    v2 = @"off";
  }

  return v2;
}

- (BOOL)_saveMetricWithUUIDS:(id)s parentUUID:(id)d withData:(id)data ofType:(int)type
{
  v71 = *MEMORY[0x277D85DE8];
  sCopy = s;
  dCopy = d;
  dataCopy = data;
  if (![(NWActivityHandler *)self writesToDBAllowed])
  {
    v45 = metricsLogHandle;
    if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      dbWriteState = self->_dbWriteState;
      v47 = v45;
      v48 = [(NWActivityHandler *)self dbWriteStateToString:dbWriteState];
      *buf = 138412290;
      v67 = v48;
      _os_log_impl(&dword_23255B000, v47, OS_LOG_TYPE_DEFAULT, "NWACT: Current DB state: %@, writes throttled.", buf, 0xCu);
    }

    v38 = 0;
    goto LABEL_48;
  }

  v11 = objc_autoreleasePoolPush();
  if (![sCopy count])
  {
    v38 = 1;
    goto LABEL_47;
  }

  v12 = metricsLogHandle;
  if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v67 = sCopy;
    _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_DEBUG, "NWACT: Saving metric data for UUIDS:%@", buf, 0xCu);
  }

  analyticsWorkspace = [(NWActivityHandler *)self analyticsWorkspace];
  mainObjectContext = [analyticsWorkspace mainObjectContext];

  v59 = mainObjectContext;
  if (!mainObjectContext)
  {
    v49 = metricsLogHandle;
    if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v67 = sCopy;
      _os_log_impl(&dword_23255B000, v49, OS_LOG_TYPE_ERROR, "NWACT: Cannot save metric data without context for UUIDS:%@", buf, 0xCu);
    }

    v38 = 0;
    goto LABEL_46;
  }

  v15 = [sCopy count];
  if (dCopy && v15 >= 2)
  {
    v16 = metricsLogHandle;
    if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v67 = dCopy;
      v68 = 2112;
      v69[0] = sCopy;
      _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_ERROR, "NWACT: Parent UUID (%@) provided for more than one activity UUID, ignoring: %@", buf, 0x16u);
    }

    dCopy = 0;
  }

  v17 = MEMORY[0x277CBE408];
  entityName = [MEMORY[0x277D6B530] entityName];
  v19 = [v17 insertNewObjectForEntityForName:entityName inManagedObjectContext:v59];

  if (!v19)
  {
    v50 = metricsLogHandle;
    if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v67 = sCopy;
      _os_log_impl(&dword_23255B000, v50, OS_LOG_TYPE_ERROR, "NWACT: Failed insertNewObjectForEntityForName for metricData for UUIDS:%@", buf, 0xCu);
    }

    v38 = 0;
    goto LABEL_45;
  }

  selfCopy = self;
  v55 = v11;
  v57 = v19;
  [v19 setData:dataCopy];
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v56 = sCopy;
  v20 = sCopy;
  v21 = [v20 countByEnumeratingWithState:&v62 objects:v70 count:16];
  if (!v21)
  {
    goto LABEL_28;
  }

  v22 = v21;
  v23 = *v63;
  do
  {
    for (i = 0; i != v22; ++i)
    {
      if (*v63 != v23)
      {
        objc_enumerationMutation(v20);
      }

      v25 = *(*(&v62 + 1) + 8 * i);
      v26 = metricsLogHandle;
      if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v67 = v25;
        _os_log_impl(&dword_23255B000, v26, OS_LOG_TYPE_INFO, "NWACT: Saving metric with UUID %@", buf, 0xCu);
      }

      v27 = MEMORY[0x277CBE408];
      entityName2 = [MEMORY[0x277D6B528] entityName];
      v29 = [v27 insertNewObjectForEntityForName:entityName2 inManagedObjectContext:v59];

      if (!v29)
      {
        v37 = metricsLogHandle;
        if (!os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_26;
        }

        *buf = 138412290;
        v67 = v20;
        v33 = v37;
        v34 = OS_LOG_TYPE_ERROR;
        v35 = "NWACT: Failed insertNewObjectForEntityForName for fragment for UUIDS:%@";
        v36 = 12;
        goto LABEL_25;
      }

      date = [MEMORY[0x277CBEAA8] date];
      [v29 setDate:date];

      [v29 setUuid:v25];
      v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:type];
      [v29 setType:v31];

      [v29 setMetricData:v57];
      if (dCopy)
      {
        [v29 setParentUUID:dCopy];
        v32 = metricsLogHandle;
        if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          v67 = v25;
          v68 = 2112;
          v69[0] = dCopy;
          v33 = v32;
          v34 = OS_LOG_TYPE_DEBUG;
          v35 = "NWACT: Relating activity %@ to parent %@";
          v36 = 22;
LABEL_25:
          _os_log_impl(&dword_23255B000, v33, v34, v35, buf, v36);
        }
      }

LABEL_26:
    }

    v22 = [v20 countByEnumeratingWithState:&v62 objects:v70 count:16];
  }

  while (v22);
LABEL_28:

  v61 = 0;
  v38 = [v59 save:&v61];
  v39 = v61;
  if (v38)
  {
    [(NWActivityHandler *)selfCopy handleDBEvent:1];
    v40 = metricsLogHandle;
    sCopy = v56;
    v11 = v55;
    if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      metricsDataWritesBudget = selfCopy->_metricsDataWritesBudget;
      *buf = 138412802;
      v67 = v20;
      v68 = 1024;
      LODWORD(v69[0]) = type;
      WORD2(v69[0]) = 2048;
      *(v69 + 6) = metricsDataWritesBudget;
      v42 = "NWACT: Successfully saved metric with activity UUIDS: %@ and type: %d, writes budget remaining: %llu";
      v43 = v40;
      v44 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_43;
    }
  }

  else
  {
    v51 = metricsLogHandle;
    sCopy = v56;
    v11 = v55;
    if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v67 = v20;
      v68 = 1024;
      LODWORD(v69[0]) = type;
      WORD2(v69[0]) = 2112;
      *(v69 + 6) = v39;
      v42 = "NWACT: Failed to save metric with activity UUIDS:%@ and type:%d (error %@)";
      v43 = v51;
      v44 = OS_LOG_TYPE_ERROR;
LABEL_43:
      _os_log_impl(&dword_23255B000, v43, v44, v42, buf, 0x1Cu);
    }
  }

  [v59 reset];

  v19 = v57;
LABEL_45:

LABEL_46:
LABEL_47:
  objc_autoreleasePoolPop(v11);
LABEL_48:

  v52 = *MEMORY[0x277D85DE8];
  return v38;
}

- (id)_createDeviceReportForActivityType:(int)type andDomain:(unsigned int)domain
{
  v74 = *MEMORY[0x277D85DE8];
  v7 = objc_alloc_init(SFDeviceReport);
  if (v7)
  {
    [(SFDeviceReport *)v7 setTimestampBucket:[(NWActivityHandler *)self _timestampTwoHourBucketForCurrentTime]];
    v8 = +[PowerStateRelay defaultRelay];
    [v8 batteryPercentage];
    [(SFDeviceReport *)v7 setBatteryPercentage:v9];
    batteryCurrentCapacity = [v8 batteryCurrentCapacity];
    if ([v8 batteryCurrentCapacity])
    {
      if (batteryCurrentCapacity <= 0x3E7)
      {
        v11 = 10.0;
      }

      else
      {
        v11 = 100.0;
      }

      v12 = round([v8 batteryCurrentCapacity] / v11) * v11;
      if (v12 == 0.0)
      {
        v12 = v11;
      }

      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    [(SFDeviceReport *)v7 setBatteryCurrentCapacity:v13];
    batteryMaximumCapacity = [v8 batteryMaximumCapacity];
    if ([v8 batteryMaximumCapacity])
    {
      if (batteryMaximumCapacity <= 0x3E7)
      {
        v16 = 10.0;
      }

      else
      {
        v16 = 100.0;
      }

      v17 = round([v8 batteryMaximumCapacity] / v16) * v16;
      if (v17 == 0.0)
      {
        v17 = v16;
      }

      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    [(SFDeviceReport *)v7 setBatteryMaximumCapacity:v18];
    batteryDesignCapacity = [v8 batteryDesignCapacity];
    if ([v8 batteryDesignCapacity])
    {
      if (batteryDesignCapacity <= 0x3E7)
      {
        v20 = 10.0;
      }

      else
      {
        v20 = 100.0;
      }

      v21 = round([v8 batteryDesignCapacity] / v20) * v20;
      if (v21 == 0.0)
      {
        v21 = v20;
      }

      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    [(SFDeviceReport *)v7 setBatteryDesignCapacity:v22];
    batteryAbsoluteCapacity = [v8 batteryAbsoluteCapacity];
    if ([v8 batteryAbsoluteCapacity])
    {
      if (batteryAbsoluteCapacity <= 0x3E7)
      {
        v24 = 10.0;
      }

      else
      {
        v24 = 100.0;
      }

      v25 = round([v8 batteryAbsoluteCapacity] / v24) * v24;
      if (v25 == 0.0)
      {
        v25 = v24;
      }

      v26 = v25;
    }

    else
    {
      v26 = 0;
    }

    [(SFDeviceReport *)v7 setBatteryAbsoluteCapacity:v26];
    batteryRawCurrentCapacity = [v8 batteryRawCurrentCapacity];
    if ([v8 batteryRawCurrentCapacity])
    {
      if (batteryRawCurrentCapacity <= 0x3E7)
      {
        v28 = 10.0;
      }

      else
      {
        v28 = 100.0;
      }

      v29 = round([v8 batteryRawCurrentCapacity] / v28) * v28;
      if (v29 == 0.0)
      {
        v29 = v28;
      }

      v30 = v29;
    }

    else
    {
      v30 = 0;
    }

    [(SFDeviceReport *)v7 setBatteryRawCurrentCapacity:v30];
    batteryRawMaximumCapacity = [v8 batteryRawMaximumCapacity];
    if ([v8 batteryRawMaximumCapacity])
    {
      if (batteryRawMaximumCapacity <= 0x3E7)
      {
        v32 = 10.0;
      }

      else
      {
        v32 = 100.0;
      }

      v33 = round([v8 batteryRawMaximumCapacity] / v32) * v32;
      if (v33 == 0.0)
      {
        v33 = v32;
      }

      v34 = v33;
    }

    else
    {
      v34 = 0;
    }

    [(SFDeviceReport *)v7 setBatteryRawMaximumCapacity:v34];
    -[SFDeviceReport setBatteryDepthOfDischarge:](v7, "setBatteryDepthOfDischarge:", [v8 batteryDepthOfDischarge]);
    -[SFDeviceReport setBatteryVoltage:](v7, "setBatteryVoltage:", [v8 batteryVoltage]);
    -[SFDeviceReport setBatteryTimeRemaining:](v7, "setBatteryTimeRemaining:", [v8 batteryTimeRemaining]);
    -[SFDeviceReport setBatteryTemperature:](v7, "setBatteryTemperature:", [v8 batteryTemperature]);
    -[SFDeviceReport setBatteryExternalPowerIsConnected:](v7, "setBatteryExternalPowerIsConnected:", [v8 batteryExternalPowerIsConnected]);
    -[SFDeviceReport setBatteryIsCharging:](v7, "setBatteryIsCharging:", [v8 batteryIsCharging]);
    -[SFDeviceReport setBatteryFullyCharged:](v7, "setBatteryFullyCharged:", [v8 batteryFullyCharged]);
    -[SFDeviceReport setBatteryAtWarnLevel:](v7, "setBatteryAtWarnLevel:", [v8 batteryAtWarnLevel]);
    -[SFDeviceReport setBatteryAtCriticalLevel:](v7, "setBatteryAtCriticalLevel:", [v8 batteryAtCriticalLevel]);
    serialNumberForInternalBuilds = [(NWActivityHandler *)self serialNumberForInternalBuilds];
    [(SFDeviceReport *)v7 setSerialNumber:serialNumberForInternalBuilds];

    v36 = +[CellFallbackHandler sharedInstance];
    -[SFDeviceReport setRnfEnabled:](v7, "setRnfEnabled:", [v36 adminDisabled] ^ 1);
    -[SFDeviceReport setDevicePluggedIn:](v7, "setDevicePluggedIn:", [v8 pluggedIn]);
    -[SFDeviceReport setDeviceScreenOn:](v7, "setDeviceScreenOn:", [v8 screenNotDark]);
    -[SFDeviceReport setDeviceScreenBrightness:](v7, "setDeviceScreenBrightness:", [v8 screenBrightness]);
    v37 = +[MotionStateRelay sharedInstance];
    -[SFDeviceReport setMotionState:](v7, "setMotionState:", [v37 currentMotion]);
    -[SFDeviceReport setDeviceOrientation:](v7, "setDeviceOrientation:", [v37 deviceOrientation]);
    -[SFDeviceReport setThermalPressure:](v7, "setThermalPressure:", [v8 thermalPressure]);
    [(SFDeviceReport *)v7 setQuicExperimentallyEnabled:nw_settings_get_quic_enabled()];
    [(SFDeviceReport *)v7 setUnifiedStackExperimentallyEnabled:nw_settings_get_unified_http_enabled()];
    if (type == 2 && domain == 35 && self->_batteryAccumulatorSnapshot)
    {
      [(SFDeviceReport *)v7 setBatteryAccumulator:?];
      batteryAccumulatorSnapshot = self->_batteryAccumulatorSnapshot;
      self->_batteryAccumulatorSnapshot = 0;

      v39 = metricsLogHandle;
      if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v39, OS_LOG_TYPE_DEBUG, "Using battery accumulator snapshot for device report", buf, 2u);
      }
    }

    else
    {
      [(SFDeviceReport *)v7 setBatteryAccumulator:self->_batteryAccumulator];
    }

    v40 = +[PrivacyProxyStateRelay sharedInstance];
    -[SFDeviceReport setPrivacyProxyServiceStatus:](v7, "setPrivacyProxyServiceStatus:", [v40 serviceStatus]);
    -[SFDeviceReport setPrivacyProxyUserTier:](v7, "setPrivacyProxyUserTier:", [v40 userTier]);
    networks = [v40 networks];
    v42 = [networks count];

    if (v42)
    {
      selfCopy = self;
      v43 = v37;
      v44 = v36;
      v45 = objc_alloc_init(MEMORY[0x277CBEB18]);
      networks2 = [v40 networks];
      v67 = 0u;
      v68 = 0u;
      v69 = 0u;
      v70 = 0u;
      v47 = [networks2 countByEnumeratingWithState:&v67 objects:v73 count:16];
      if (v47)
      {
        v48 = v47;
        v49 = *v68;
        do
        {
          for (i = 0; i != v48; ++i)
          {
            if (*v68 != v49)
            {
              objc_enumerationMutation(networks2);
            }

            [v45 addObject:*(*(&v67 + 1) + 8 * i)];
          }

          v48 = [networks2 countByEnumeratingWithState:&v67 objects:v73 count:16];
        }

        while (v48);
      }

      [(SFDeviceReport *)v7 setPrivacyProxyNetworkStatus:v45];
      v36 = v44;
      v37 = v43;
      self = selfCopy;
    }

    traffic = [v40 traffic];

    if (traffic)
    {
      traffic2 = [v40 traffic];
      [(SFDeviceReport *)v7 setPrivacyProxyTraffic:traffic2];
    }

    if (self->_includeTrialTreatmentID)
    {
      if (+[CellFallbackHandler turboRNF])
      {
        v53 = +[CellFallbackHandler sharedInstance];
        trialExperimentHandler = [v53 trialExperimentHandler];
        treatmentID = [trialExperimentHandler treatmentID];
        [(SFDeviceReport *)v7 setTrialTreatmentId:treatmentID];

        trialTreatmentId = [(SFDeviceReport *)v7 trialTreatmentId];

        if (!trialTreatmentId)
        {
          [(SFDeviceReport *)v7 setTrialTreatmentId:@"turbo_rnf fflag"];
        }
      }

      else
      {
        v57 = +[CellOutrankHandler sharedInstance];
        trialExperimentHandler2 = [v57 trialExperimentHandler];
        treatmentID2 = [trialExperimentHandler2 treatmentID];
        [(SFDeviceReport *)v7 setTrialTreatmentId:treatmentID2];
      }
    }

    v60 = +[SystemSettingsRelay defaultRelay];
    packetFilterState = [v60 packetFilterState];
    [(SFDeviceReport *)v7 setPacketFilterState:packetFilterState];

    v62 = metricsLogHandle;
    if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v72 = v7;
      _os_log_impl(&dword_23255B000, v62, OS_LOG_TYPE_DEBUG, "Created SFDeviceReport: %@", buf, 0xCu);
    }

    v63 = v7;
  }

  else
  {
    v14 = metricsLogHandle;
    if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_ERROR, "NWACT: Failed to create SFDeviceReport", buf, 2u);
    }
  }

  v64 = *MEMORY[0x277D85DE8];

  return v7;
}

- (unsigned)_timestampTwoHourBucketForCurrentTime
{
  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSince1970];
  LOBYTE(self) = [(NWActivityHandler *)self _timestampTwoHourBucketForTime:?];

  return self;
}

- (unsigned)_timestampTwoHourBucketForTime:(double)time
{
  timeCopy = time;
  v3 = localtime(&timeCopy);
  if (v3)
  {
    return v3->tm_hour - (v3->tm_hour | 0xFE);
  }

  else
  {
    v5 = metricsLogHandle;
    if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_ERROR, "NWACT: Error while parsing input while calculating timestamp bucket", v7, 2u);
    }

    LOBYTE(v4) = 0;
  }

  return v4;
}

- (void)_handleL2Start:(id)start
{
  v29 = *MEMORY[0x277D85DE8];
  startCopy = start;
  activityUUID = [startCopy activityUUID];
  parentUUID = [startCopy parentUUID];
  if (activityUUID)
  {
    nullUUID = [(NWActivityHandler *)self nullUUID];
    v8 = [activityUUID isEqual:nullUUID];

    v9 = metricsLogHandle;
    if (v8)
    {
      if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_ERROR))
      {
        v25 = 138412290;
        v26 = startCopy;
        v10 = "NWACT: null UUID found on activityStats %@";
        v11 = v9;
LABEL_7:
        _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_ERROR, v10, &v25, 0xCu);
      }
    }

    else
    {
      if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v25 = 138412546;
        v26 = activityUUID;
        v27 = 2112;
        v28 = startCopy;
        _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEFAULT, "NWACT: L2 start activity UUID %@ from activityStats %@", &v25, 0x16u);
      }

      if (parentUUID)
      {
        nullUUID2 = [(NWActivityHandler *)self nullUUID];
        v14 = [parentUUID isEqual:nullUUID2];

        v15 = metricsLogHandle;
        if (v14)
        {
          if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_ERROR))
          {
            v25 = 138412290;
            v26 = startCopy;
            _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_ERROR, "NWACT: null UUID found for parent UUID for activityStats %@", &v25, 0xCu);
          }
        }

        else
        {
          if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_DEBUG))
          {
            v25 = 138412546;
            v26 = activityUUID;
            v27 = 2112;
            v28 = parentUUID;
            _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_DEBUG, "NWACT: L2 start activity UUID %@ has parent, moving parent UUID %@ to end of list", &v25, 0x16u);
          }

          currentActivities = [(NWActivityHandler *)self currentActivities];
          [currentActivities removeObject:parentUUID];

          currentActivities2 = [(NWActivityHandler *)self currentActivities];
          [currentActivities2 addObject:parentUUID];
        }
      }

      currentActivities3 = [(NWActivityHandler *)self currentActivities];
      v19 = [currentActivities3 containsObject:activityUUID];

      v20 = metricsLogHandle;
      v21 = os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_DEBUG);
      if (v19)
      {
        if (v21)
        {
          v25 = 138412290;
          v26 = activityUUID;
          _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_DEBUG, "NWACT: L2 activity UUID %@ is already in the list, moving to end", &v25, 0xCu);
        }

        currentActivities4 = [(NWActivityHandler *)self currentActivities];
        [currentActivities4 removeObject:activityUUID];
      }

      else if (v21)
      {
        v25 = 138412290;
        v26 = activityUUID;
        _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_DEBUG, "NWACT: L2 activity UUID %@ not in list, adding", &v25, 0xCu);
      }

      currentActivities5 = [(NWActivityHandler *)self currentActivities];
      [currentActivities5 addObject:activityUUID];

      [(NWActivityHandler *)self setLastWiFiActivity:0];
      [(NWActivityHandler *)self _pruneActivityLists];
      [(NWActivityHandler *)self _collectCellularFragment];
      [(NWActivityHandler *)self _updateL2MetricLoggingRequests];
    }
  }

  else
  {
    v12 = metricsLogHandle;
    if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_ERROR))
    {
      v25 = 138412290;
      v26 = startCopy;
      v10 = "NWACT: no activity UUID found on activityStats %@";
      v11 = v12;
      goto LABEL_7;
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)_handleL2Stop:(id)stop
{
  v25 = *MEMORY[0x277D85DE8];
  stopCopy = stop;
  activityUUID = [stopCopy activityUUID];
  parentUUID = [stopCopy parentUUID];
  if (activityUUID)
  {
    nullUUID = [(NWActivityHandler *)self nullUUID];
    v8 = [activityUUID isEqual:nullUUID];

    v9 = metricsLogHandle;
    if (v8)
    {
      if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_ERROR))
      {
        v21 = 138412290;
        v22 = stopCopy;
        v10 = "NWACT: null UUID found on activityStats %@";
        v11 = v9;
LABEL_7:
        _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_ERROR, v10, &v21, 0xCu);
      }
    }

    else
    {
      if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 138412546;
        v22 = activityUUID;
        v23 = 2112;
        v24 = stopCopy;
        _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEFAULT, "NWACT: L2 stop activity UUID %@ from activityStats %@", &v21, 0x16u);
      }

      if (parentUUID)
      {
        nullUUID2 = [(NWActivityHandler *)self nullUUID];
        v14 = [parentUUID isEqual:nullUUID2];

        v15 = metricsLogHandle;
        if (v14)
        {
          if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_ERROR))
          {
            v21 = 138412290;
            v22 = stopCopy;
            _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_ERROR, "NWACT: null UUID found for parent UUID for activityStats %@", &v21, 0xCu);
          }
        }

        else
        {
          if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_DEBUG))
          {
            v21 = 138412546;
            v22 = activityUUID;
            v23 = 2112;
            v24 = parentUUID;
            _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_DEBUG, "NWACT: L2 stop activity UUID %@ has parent, removing %@", &v21, 0x16u);
          }

          currentActivities = [(NWActivityHandler *)self currentActivities];
          [currentActivities removeObject:parentUUID];

          completeActivities = [(NWActivityHandler *)self completeActivities];
          [completeActivities addObject:parentUUID];
        }
      }

      currentActivities2 = [(NWActivityHandler *)self currentActivities];
      [currentActivities2 removeObject:activityUUID];

      completeActivities2 = [(NWActivityHandler *)self completeActivities];
      [completeActivities2 addObject:activityUUID];

      [(NWActivityHandler *)self setLastWiFiActivity:activityUUID];
      [(NWActivityHandler *)self _pruneActivityLists];
      [(NWActivityHandler *)self _collectCellularFragment];
      [(NWActivityHandler *)self _updateL2MetricLoggingRequests];
    }
  }

  else
  {
    v12 = metricsLogHandle;
    if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_ERROR))
    {
      v21 = 138412290;
      v22 = stopCopy;
      v10 = "NWACT: no activity UUID found on activityStats %@";
      v11 = v12;
      goto LABEL_7;
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_pruneActivityLists
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = metricsLogHandle;
  if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v4 = v3;
    currentActivities = [(NWActivityHandler *)self currentActivities];
    v33 = 134217984;
    v34 = [currentActivities count];
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEBUG, "NWACT: L2 pruning current activity list, started with %lu items", &v33, 0xCu);
  }

  currentActivities2 = [(NWActivityHandler *)self currentActivities];
  v7 = [currentActivities2 count];

  if (v7 >= 0x65)
  {
    currentActivities3 = [(NWActivityHandler *)self currentActivities];
    v9 = [currentActivities3 count] - 100;

    v10 = metricsLogHandle;
    if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v33 = 134217984;
      v34 = v9;
      _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEBUG, "NWACT: L2 pruning current activity list, removing %lu items", &v33, 0xCu);
    }

    v11 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{0, v9}];
    currentActivities4 = [(NWActivityHandler *)self currentActivities];
    [currentActivities4 removeObjectsAtIndexes:v11];
  }

  v13 = metricsLogHandle;
  if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_INFO))
  {
    v14 = v13;
    currentActivities5 = [(NWActivityHandler *)self currentActivities];
    v16 = [currentActivities5 count];
    v33 = 134217984;
    v34 = v16;
    _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_INFO, "NWACT: L2 pruning current activity list, finished with %lu items", &v33, 0xCu);
  }

  v17 = metricsLogHandle;
  if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v18 = v17;
    completeActivities = [(NWActivityHandler *)self completeActivities];
    v20 = [completeActivities count];
    v33 = 134217984;
    v34 = v20;
    _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_DEBUG, "NWACT: L2 pruning complete activity list, started with %lu items", &v33, 0xCu);
  }

  completeActivities2 = [(NWActivityHandler *)self completeActivities];
  v22 = [completeActivities2 count];

  if (v22 >= 0x65)
  {
    completeActivities3 = [(NWActivityHandler *)self completeActivities];
    v24 = [completeActivities3 count] - 100;

    v25 = metricsLogHandle;
    if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v33 = 134217984;
      v34 = v24;
      _os_log_impl(&dword_23255B000, v25, OS_LOG_TYPE_DEBUG, "NWACT: L2 pruning complete activity list, removing %lu items", &v33, 0xCu);
    }

    v26 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{0, v24}];
    completeActivities4 = [(NWActivityHandler *)self completeActivities];
    [completeActivities4 removeObjectsAtIndexes:v26];
  }

  v28 = metricsLogHandle;
  if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_INFO))
  {
    v29 = v28;
    completeActivities5 = [(NWActivityHandler *)self completeActivities];
    v31 = [completeActivities5 count];
    v33 = 134217984;
    v34 = v31;
    _os_log_impl(&dword_23255B000, v29, OS_LOG_TYPE_INFO, "NWACT: L2 pruning complete activity list, finished with %lu items", &v33, 0xCu);
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (void)_updateL2MetricLoggingRequests
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = metricsLogHandle;
  if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v4 = v3;
    currentActivities = [(NWActivityHandler *)self currentActivities];
    v6 = [currentActivities count];
    completeActivities = [(NWActivityHandler *)self completeActivities];
    v11 = 134218240;
    v12 = v6;
    v13 = 2048;
    v14 = [completeActivities count];
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEBUG, "NWACT: L2 update metric logging requests with %lu items in current activities, %lu items in complete activities", &v11, 0x16u);
  }

  currentActivities2 = [(NWActivityHandler *)self currentActivities];
  v9 = [currentActivities2 count];

  if (v9)
  {
    [(NWActivityHandler *)self _startL2Streaming];
  }

  else
  {
    [(NWActivityHandler *)self _stopL2Streaming];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_collectCellularFragment
{
  lastCellularTriggerTime = self->_lastCellularTriggerTime;
  if (self->_cellFragmentRequestOutstanding)
  {
    if (lastCellularTriggerTime != 0.0)
    {
      date = [MEMORY[0x277CBEAA8] date];
      [date timeIntervalSince1970];
      v6 = v5;

      v7 = self->_lastCellularTriggerTime;
      if (v6 > v7 && v6 - v7 > 70.0)
      {
        v8 = metricsLogHandle;
        if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEBUG, "NWACT: Cellular fragment request outstanding, but elapsed time greater than interval, sending new request", buf, 2u);
        }

        self->_cellFragmentRequestOutstanding = 0;
        goto LABEL_23;
      }
    }

    v18 = metricsLogHandle;
    if (!os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      return;
    }

    *v27 = 0;
    v19 = "NWACT: Cellular fragment request outstanding, coalescing...";
    v20 = v27;
    v21 = v18;
    v22 = OS_LOG_TYPE_DEBUG;
LABEL_20:
    _os_log_impl(&dword_23255B000, v21, v22, v19, v20, 2u);
    return;
  }

  if (lastCellularTriggerTime == 0.0)
  {
LABEL_23:
    [(NWActivityHandler *)self _triggerCellMetric];
    return;
  }

  date2 = [MEMORY[0x277CBEAA8] date];
  [date2 timeIntervalSince1970];
  v11 = v10;

  v12 = self->_lastCellularTriggerTime;
  v13 = metricsLogHandle;
  v14 = os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_DEBUG);
  if (v11 > v12 && v11 - v12 >= 2.0)
  {
    if (v14)
    {
      *v24 = 0;
      _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_DEBUG, "NWACT: Cellular elapsed time greater than interval, requesting new cellular fragment", v24, 2u);
    }

    goto LABEL_23;
  }

  if (v14)
  {
    *v26 = 0;
    _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_DEBUG, "NWACT: Cellular elapsed time less than interval, debouncing and sending cached metric", v26, 2u);
  }

  lastCellularFragment = [(NWActivityHandler *)self lastCellularFragment];

  if (lastCellularFragment)
  {
    lastCellularFragment2 = [(NWActivityHandler *)self lastCellularFragment];
    [(NWActivityHandler *)self _deliverCellularFragment:lastCellularFragment2];

    return;
  }

  v23 = metricsLogHandle;
  if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_ERROR))
  {
    v25 = 0;
    v19 = "NWACT: No last cellular fragment to deliver";
    v20 = &v25;
    v21 = v23;
    v22 = OS_LOG_TYPE_ERROR;
    goto LABEL_20;
  }
}

- (void)_startL2Streaming
{
  v22 = *MEMORY[0x277D85DE8];
  currentActivities = [(NWActivityHandler *)self currentActivities];
  v4 = [currentActivities count];

  if (v4)
  {
    v5 = metricsLogHandle;
    if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v6 = v5;
      currentActivities2 = [(NWActivityHandler *)self currentActivities];
      lastObject = [currentActivities2 lastObject];
      *buf = 138412290;
      v21 = lastObject;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEBUG, "NWACT: L2 triggered initial Wi-Fi fragment for activity UUID %@", buf, 0xCu);
    }

    [(NWActivityHandler *)self _triggerWiFiMetric];
  }

  self->_L2MetricCount = 0;
  v9 = metricsLogHandle;
  if (self->_metricCollectionTimer)
  {
    if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      v10 = "NWACT: L2 collection timer already exists, don't need a new one";
      v11 = v9;
LABEL_12:
      _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEBUG, v10, buf, 2u);
    }
  }

  else
  {
    if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEFAULT, "NWACT: L2 starting L2 metrics", buf, 2u);
    }

    v12 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_metricsQueue);
    metricCollectionTimer = self->_metricCollectionTimer;
    self->_metricCollectionTimer = v12;

    v14 = self->_metricCollectionTimer;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __38__NWActivityHandler__startL2Streaming__block_invoke;
    handler[3] = &unk_27898A0C8;
    handler[4] = self;
    dispatch_source_set_event_handler(v14, handler);
    v15 = self->_metricCollectionTimer;
    v16 = dispatch_time(0, 6000000000);
    dispatch_source_set_timer(v15, v16, 0x165A0BC00uLL, 0x5F5E100uLL);
    dispatch_resume(self->_metricCollectionTimer);
    v17 = metricsLogHandle;
    if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      v10 = "NWACT: L2 collection timer created and started";
      v11 = v17;
      goto LABEL_12;
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

uint64_t __38__NWActivityHandler__startL2Streaming__block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) currentActivities];
  v3 = [v2 count];

  if (v3)
  {
    ++*(*(a1 + 32) + 44);
    v4 = metricsLogHandle;
    if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v5 = *(a1 + 32);
      v6 = v4;
      v7 = [v5 currentActivities];
      v8 = [v7 count];
      v9 = *(*(a1 + 32) + 44);
      v19 = 134218240;
      v20 = v8;
      v21 = 1024;
      v22 = v9;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEBUG, "NWACT: L2 collection timer fired, %lu activities in list, metric %u", &v19, 0x12u);
    }

    v10 = *(a1 + 32);
    if (v10[22] >= 5u)
    {
      v11 = metricsLogHandle;
      if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(*(a1 + 32) + 44);
        v19 = 67109120;
        LODWORD(v20) = v12;
        _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEFAULT, "NWACT: L2 collection hit max sample count (%u), stopping", &v19, 8u);
      }

      *(*(a1 + 32) + 44) = 0;
      v13 = [*(a1 + 32) currentActivities];
      v14 = [v13 lastObject];
      [*(a1 + 32) setLastWiFiActivity:v14];

      v15 = [*(a1 + 32) currentActivities];
      [v15 removeAllObjects];

      [*(a1 + 32) _updateL2MetricLoggingRequests];
      v10 = *(a1 + 32);
    }

    result = [v10 _triggerWiFiMetric];
  }

  else
  {
    v17 = metricsLogHandle;
    if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_DEBUG, "NWACT: L2 collection timer fired, 0 activities in list, stopping", &v19, 2u);
    }

    result = [*(a1 + 32) _updateL2MetricLoggingRequests];
  }

  v18 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_stopL2Streaming
{
  v3 = metricsLogHandle;
  if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEFAULT, "NWACT: L2 stopping L2 metrics", v6, 2u);
  }

  self->_L2MetricCount = 0;
  metricCollectionTimer = self->_metricCollectionTimer;
  if (metricCollectionTimer)
  {
    dispatch_source_cancel(metricCollectionTimer);
    v5 = self->_metricCollectionTimer;
    self->_metricCollectionTimer = 0;
  }
}

- (void)_triggerWiFiMetric
{
  *&v23[5] = *MEMORY[0x277D85DE8];
  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSince1970];
  v5 = v4;

  lastWiFiTriggerTime = self->_lastWiFiTriggerTime;
  if (v5 <= lastWiFiTriggerTime)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v5 - lastWiFiTriggerTime;
  }

  if (self->_outstandingWiFiFragments < 0xA)
  {
    goto LABEL_9;
  }

  v8 = metricsLogHandle;
  v9 = os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_INFO);
  if (v7 > 60.0)
  {
    if (v9)
    {
      outstandingWiFiFragments = self->_outstandingWiFiFragments;
      v22 = 67109376;
      v23[0] = outstandingWiFiFragments;
      LOWORD(v23[1]) = 2048;
      *(&v23[1] + 2) = v7;
      _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_INFO, "NWACT: Wi-Fi fragments exceeded maximum pending interval (%u outstanding requests, %f elapsed), resetting outstanding requests", &v22, 0x12u);
    }

    self->_outstandingWiFiFragments = 0;
LABEL_9:
    v11 = metricsLogHandle;
    if (v7 >= 1.0)
    {
      if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_DEBUG))
      {
        v22 = 134217984;
        *v23 = v7;
        _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEBUG, "NWACT: Wi-Fi fragment allowed to proceed, last requested %f seconds ago", &v22, 0xCu);
      }

      ++self->_outstandingWiFiFragments;
      v15 = metricsLogHandle;
      if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_DEBUG))
      {
        v16 = self->_outstandingWiFiFragments;
        v22 = 67109120;
        v23[0] = v16;
        _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_DEBUG, "NWACT: Wi-Fi fragment requested, there are now %u outstanding Wi-Fi fragment requests", &v22, 8u);
      }

      date2 = [MEMORY[0x277CBEAA8] date];
      [date2 timeIntervalSince1970];
      self->_lastWiFiTriggerTime = v18;

      mEMORY[0x277D7B938] = [MEMORY[0x277D7B938] sharedClient];
      [mEMORY[0x277D7B938] triggerQueryForNWActivity:0 andReply:&__block_literal_global_211_0];
    }

    else if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_INFO))
    {
      LOWORD(v22) = 0;
      v12 = "NWACT: Wi-Fi fragment requested too recently, suppressing";
      v13 = v11;
      v14 = 2;
LABEL_19:
      _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_INFO, v12, &v22, v14);
      goto LABEL_20;
    }

    goto LABEL_20;
  }

  if (v9)
  {
    v20 = self->_outstandingWiFiFragments;
    v22 = 67109120;
    v23[0] = v20;
    v12 = "NWACT: Wi-Fi fragment limit reached (%u outstanding requests), skipping";
    v13 = v8;
    v14 = 8;
    goto LABEL_19;
  }

LABEL_20:
  v21 = *MEMORY[0x277D85DE8];
}

void __39__NWActivityHandler__triggerWiFiMetric__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = metricsLogHandle;
    if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_ERROR, "NWACT: L2 Received error from Wi-Fi analytics trigger: %@", &v8, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_triggerCellMetric
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = metricsLogHandle;
  if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEBUG, "NWACT: Triggering cellular metric", buf, 2u);
  }

  if (!self->_analyticsObserverConfigured)
  {
    v4 = +[SymptomsCAObserver sharedInstance];
    metricsQueue = self->_metricsQueue;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __39__NWActivityHandler__triggerCellMetric__block_invoke;
    v16[3] = &unk_27898FC88;
    v16[4] = self;
    [v4 addDelegate:self forEvents:&unk_2847EEC40 withQueue:metricsQueue completion:v16];
  }

  v6 = [objc_alloc(MEMORY[0x277CE3F30]) initWithComponentId:41];
  v7 = v6;
  if (v6)
  {
    [v6 sendTriggerForEvent:2686991 observeEventWithCallback:0];
    v8 = metricsLogHandle;
    if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      v18 = 2686991;
      v9 = "NWACT: Posted cellular metric empty trigger to WirelessInsights: %u";
      v10 = v8;
      v11 = 8;
LABEL_10:
      _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEBUG, v9, buf, v11);
    }
  }

  else
  {
    v12 = metricsLogHandle;
    if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      v9 = "NWACT: Could not initialize a WISServerConnection, cellular fragment EmptyTrigger not sent.";
      v10 = v12;
      v11 = 2;
      goto LABEL_10;
    }
  }

  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSince1970];
  self->_lastCellularTriggerTime = v14;

  self->_cellFragmentRequestOutstanding = 1;
  v15 = *MEMORY[0x277D85DE8];
}

void __39__NWActivityHandler__triggerCellMetric__block_invoke(uint64_t a1, char a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  *(*(a1 + 32) + 57) = a2;
  v6 = metricsLogHandle;
  if (a2)
  {
    if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12) = 0;
      v7 = "NWACT: Successfully registered with CAEventObserver";
      v8 = v6;
      v9 = OS_LOG_TYPE_DEFAULT;
      v10 = 2;
LABEL_6:
      _os_log_impl(&dword_23255B000, v8, v9, v7, &v12, v10);
    }
  }

  else if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_ERROR))
  {
    v12 = 138412290;
    v13 = v5;
    v7 = "NWACT: Failed to register with CAEventObserver, error: %@";
    v8 = v6;
    v9 = OS_LOG_TYPE_ERROR;
    v10 = 12;
    goto LABEL_6;
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)handleEvent:(id)event forEventName:(id)name
{
  v16 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  nameCopy = name;
  v8 = metricsLogHandle;
  if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v12 = 138412546;
    v13 = nameCopy;
    v14 = 2112;
    v15 = eventCopy;
    _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEBUG, "NWACT: Got AWD event: name %@, %@", &v12, 0x16u);
  }

  if (([nameCopy isEqualToString:@"com.apple.Baseband.kCellularLteSuperMetric"] & 1) != 0 || (objc_msgSend(nameCopy, "isEqualToString:", @"com.apple.Baseband.cellularLteConnectionStats") & 1) != 0 || (objc_msgSend(nameCopy, "isEqualToString:", @"com.apple.Baseband.cellularNrConnectionStats") & 1) != 0 || (objc_msgSend(nameCopy, "isEqualToString:", @"com.apple.Baseband.cellularPowerLogPowerEstimator") & 1) != 0 || (objc_msgSend(nameCopy, "isEqualToString:", @"com.apple.Baseband.cellularPowerLogBasebandPowerConsumption") & 1) != 0 || objc_msgSend(nameCopy, "isEqualToString:", @"com.apple.Baseband.cellularLteNrConnectionStats"))
  {
    v9 = metricsLogHandle;
    if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_INFO))
    {
      v12 = 138412546;
      v13 = nameCopy;
      v14 = 2112;
      v15 = eventCopy;
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_INFO, "NWACT: Got cellular fragment AWD event: name %@, %@", &v12, 0x16u);
    }

    self->_cellFragmentRequestOutstanding = 0;
    [(NWActivityHandler *)self _deliverCellularFragment:eventCopy];
  }

  else
  {
    v11 = metricsLogHandle;
    if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_INFO))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_INFO, "NWACT: Ignoring AWD event that isn't the cellular fragment", &v12, 2u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_deliverCellularFragment:(id)fragment
{
  fragmentCopy = fragment;
  if (fragmentCopy)
  {
    [(NWActivityHandler *)self setLastCellularFragment:fragmentCopy];
    [(NWActivityHandler *)self _handleCellularItem:fragmentCopy];
    v5 = metricsLogHandle;
    if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *v8 = 0;
      _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEBUG, "NWACT: Clearing out completeActivities", v8, 2u);
    }

    completeActivities = [(NWActivityHandler *)self completeActivities];
    [completeActivities removeAllObjects];
  }

  else
  {
    v7 = metricsLogHandle;
    if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_ERROR, "NWACT: Cannot deliver nil cellFragment", buf, 2u);
    }
  }
}

- (void)_handleStartActivity:(id)activity
{
  v36 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  activityUUID = [activityCopy activityUUID];
  if (activityUUID)
  {
    nullUUID = [(NWActivityHandler *)self nullUUID];
    v7 = [activityUUID isEqual:nullUUID];

    if (v7)
    {
      v8 = metricsLogHandle;
      if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v33 = activityCopy;
        v9 = "NWACT: null UUID in activityStats  %@";
LABEL_7:
        _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_ERROR, v9, buf, 0xCu);
      }
    }

    else
    {
      v10 = [(NWActivityHandler *)self mapperForUUID:activityUUID reason:1];
      if (v10)
      {
        if ([(NWActivityHandler *)self configuredForMetricStreaming])
        {
          [activityCopy setExternallyVisibleActivityUUID:activityUUID];
        }

        else
        {
          externalUUID = [v10 externalUUID];
          [activityCopy setExternallyVisibleActivityUUID:externalUUID];

          v13 = metricsLogHandle;
          if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_DEBUG))
          {
            v14 = v13;
            externallyVisibleActivityUUID = [activityCopy externallyVisibleActivityUUID];
            *buf = 138412547;
            v33 = activityUUID;
            v34 = 2113;
            v35 = externallyVisibleActivityUUID;
            _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_DEBUG, "NWACT: swap internal activity UUID %@ to external %{private}@", buf, 0x16u);
          }
        }

        parentUUID = [activityCopy parentUUID];
        if (parentUUID)
        {
          memset(uu, 0, sizeof(uu));
          uuid_clear(uu);
          [parentUUID getUUIDBytes:uu];
          if (!uuid_is_null(uu))
          {
            v17 = [(NWActivityHandler *)self mapperForUUID:parentUUID reason:2];
            if ([(NWActivityHandler *)self configuredForMetricStreaming])
            {
              [activityCopy setExternallyVisibleParentUUID:parentUUID];
            }

            else
            {
              externalUUID2 = [v17 externalUUID];
              [activityCopy setExternallyVisibleParentUUID:externalUUID2];

              v19 = metricsLogHandle;
              if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_DEBUG))
              {
                v20 = v19;
                externallyVisibleParentUUID = [activityCopy externallyVisibleParentUUID];
                *buf = 138412547;
                v33 = parentUUID;
                v34 = 2113;
                v35 = externallyVisibleParentUUID;
                _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_DEBUG, "NWACT: swap internal parent UUID %@ to external %{private}@", buf, 0x16u);
              }
            }
          }
        }

        v22 = -[NWActivityHandler _createDeviceReportForActivityType:andDomain:](self, "_createDeviceReportForActivityType:andDomain:", 1, [activityCopy domain]);
        v23 = v22;
        if (v22)
        {
          v24 = [v22 dictionaryReport:1];
          [activityCopy setDeviceReport:v24];
        }

        _createSFL2Report = [(NWActivityHandler *)self _createSFL2Report];
        v26 = _createSFL2Report;
        if (_createSFL2Report)
        {
          dictionaryReport = [_createSFL2Report dictionaryReport];
          [activityCopy setLayer2Report:dictionaryReport];
        }

        v30 = activityUUID;
        v28 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
        [(NWActivityHandler *)self _sendDictionaryMetric:activityCopy ofType:1 forActivities:v28 parentActivity:parentUUID additionalItems:0];
      }

      else
      {
        v11 = metricsLogHandle;
        if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v33 = activityCopy;
          _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_ERROR, "NWACT: no activity mapper for activityStats %@", buf, 0xCu);
        }
      }
    }
  }

  else
  {
    v8 = metricsLogHandle;
    if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v33 = activityCopy;
      v9 = "NWACT: no activity UUID found on activityStats %@";
      goto LABEL_7;
    }
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)_handleEpilogue:(id)epilogue
{
  v36 = *MEMORY[0x277D85DE8];
  epilogueCopy = epilogue;
  activityUUID = [epilogueCopy activityUUID];
  if (activityUUID)
  {
    nullUUID = [(NWActivityHandler *)self nullUUID];
    v7 = [activityUUID isEqual:nullUUID];

    if (v7)
    {
      v8 = metricsLogHandle;
      if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v33 = epilogueCopy;
        v9 = "NWACT: null activity UUID in epilogue  %@";
LABEL_7:
        _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_ERROR, v9, buf, 0xCu);
      }
    }

    else
    {
      v10 = [(NWActivityHandler *)self mapperForUUID:activityUUID reason:3];
      if (v10)
      {
        if ([(NWActivityHandler *)self configuredForMetricStreaming])
        {
          [epilogueCopy setExternallyVisibleActivityUUID:activityUUID];
        }

        else
        {
          externalUUID = [v10 externalUUID];
          [epilogueCopy setExternallyVisibleActivityUUID:externalUUID];

          v13 = metricsLogHandle;
          if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_DEBUG))
          {
            v14 = v13;
            externallyVisibleActivityUUID = [epilogueCopy externallyVisibleActivityUUID];
            *buf = 138412547;
            v33 = activityUUID;
            v34 = 2113;
            v35 = externallyVisibleActivityUUID;
            _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_DEBUG, "NWACT: swap epilogue internal activity UUID %@ to external %{private}@", buf, 0x16u);
          }
        }

        parentUUID = [epilogueCopy parentUUID];
        if (parentUUID)
        {
          memset(uu, 0, sizeof(uu));
          uuid_clear(uu);
          [parentUUID getUUIDBytes:uu];
          if (!uuid_is_null(uu))
          {
            v17 = [(NWActivityHandler *)self mapperForUUID:parentUUID reason:4];
            if ([(NWActivityHandler *)self configuredForMetricStreaming])
            {
              [epilogueCopy setExternallyVisibleParentUUID:parentUUID];
            }

            else
            {
              externalUUID2 = [v17 externalUUID];
              [epilogueCopy setExternallyVisibleParentUUID:externalUUID2];

              v19 = metricsLogHandle;
              if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_DEBUG))
              {
                v20 = v19;
                externallyVisibleParentUUID = [epilogueCopy externallyVisibleParentUUID];
                *buf = 138412547;
                v33 = parentUUID;
                v34 = 2113;
                v35 = externallyVisibleParentUUID;
                _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_DEBUG, "NWACT: swap epilogue internal parent UUID %@ to external %{private}@", buf, 0x16u);
              }
            }
          }
        }

        v22 = -[NWActivityHandler _createDeviceReportForActivityType:andDomain:](self, "_createDeviceReportForActivityType:andDomain:", 2, [epilogueCopy domain]);
        v23 = v22;
        if (v22)
        {
          v24 = [v22 dictionaryReport:1];
          [epilogueCopy setDeviceReport:v24];
        }

        _createSFL2Report = [(NWActivityHandler *)self _createSFL2Report];
        v26 = _createSFL2Report;
        if (_createSFL2Report)
        {
          dictionaryReport = [_createSFL2Report dictionaryReport];
          [epilogueCopy setLayer2Report:dictionaryReport];
        }

        v30 = activityUUID;
        v28 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
        [(NWActivityHandler *)self _sendDictionaryMetric:epilogueCopy ofType:2 forActivities:v28 parentActivity:parentUUID additionalItems:0];
      }

      else
      {
        v11 = metricsLogHandle;
        if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v33 = epilogueCopy;
          _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_ERROR, "NWACT: no activity mapper for epilogue %@", buf, 0xCu);
        }
      }
    }
  }

  else
  {
    v8 = metricsLogHandle;
    if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v33 = epilogueCopy;
      v9 = "NWACT: no activity UUID found on epilogue %@";
      goto LABEL_7;
    }
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)_handleCFNetworkItem:(id)item
{
  v52 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  nwActivity = [itemCopy nwActivity];
  if (!nwActivity)
  {
    v9 = metricsLogHandle;
    if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v49 = itemCopy;
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_ERROR, "NWACT: no UUID found on session stats %@", buf, 0xCu);
    }

    dictionaryReport = [itemCopy dictionaryReport];
    v11 = metricsLogHandle;
    if (!os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_42;
    }

    *buf = 138477827;
    v49 = dictionaryReport;
    v12 = "NWACT: dictionaryReport is %{private}@";
    goto LABEL_14;
  }

  nullUUID = [(NWActivityHandler *)self nullUUID];
  v7 = [nwActivity isEqual:nullUUID];

  if (!v7)
  {
    dictionaryReport = [(NWActivityHandler *)self mapperForUUID:nwActivity reason:6];
    if (dictionaryReport)
    {
      if ([(NWActivityHandler *)self configuredForMetricStreaming])
      {
        [itemCopy setExternallyVisibleNwActivity:nwActivity];
      }

      else
      {
        externalUUID = [dictionaryReport externalUUID];
        [itemCopy setExternallyVisibleNwActivity:externalUUID];

        v14 = metricsLogHandle;
        if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_DEBUG))
        {
          v15 = v14;
          externalUUID2 = [dictionaryReport externalUUID];
          *buf = 138412547;
          v49 = nwActivity;
          v50 = 2113;
          v51 = externalUUID2;
          _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_DEBUG, "NWACT: Replaced activity UUID %@ with externally visible %{private}@", buf, 0x16u);
        }
      }

      connectionUUIDS = [itemCopy connectionUUIDS];
      v18 = connectionUUIDS;
      if (connectionUUIDS && [connectionUUIDS count])
      {
        v40 = dictionaryReport;
        array = [MEMORY[0x277CBEB18] array];
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        v39 = v18;
        v20 = v18;
        v21 = [v20 countByEnumeratingWithState:&v42 objects:v47 count:16];
        if (v21)
        {
          v22 = v21;
          v23 = *v43;
          obj = v20;
          while (2)
          {
            for (i = 0; i != v22; ++i)
            {
              if (*v43 != v23)
              {
                objc_enumerationMutation(obj);
              }

              v25 = *(*(&v42 + 1) + 8 * i);
              nullUUID2 = [(NWActivityHandler *)self nullUUID];
              v27 = [v25 isEqual:nullUUID2];

              if (v27)
              {
                v28 = metricsLogHandle;
                if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v49 = nwActivity;
                  _os_log_impl(&dword_23255B000, v28, OS_LOG_TYPE_ERROR, "NWACT: CFNetwork supplies null UUID for a connection %@", buf, 0xCu);
                }
              }

              v29 = [(NWActivityHandler *)self mapperForUUID:v25 reason:7];
              if (!v29)
              {
                v33 = metricsLogHandle;
                if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v49 = v25;
                  _os_log_impl(&dword_23255B000, v33, OS_LOG_TYPE_ERROR, "NWACT: no activity mapper for connection uuid %@", buf, 0xCu);
                }

                v18 = v39;
                dictionaryReport = v40;
                v34 = obj;
                goto LABEL_41;
              }

              v30 = v29;
              externalUUID3 = [v29 externalUUID];
              [array addObject:externalUUID3];
            }

            v20 = obj;
            v22 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
            if (v22)
            {
              continue;
            }

            break;
          }
        }

        if ([(NWActivityHandler *)self configuredForMetricStreaming])
        {
          [itemCopy setExternallyVisibleConnectionUUIDs:v20];
          v18 = v39;
          dictionaryReport = v40;
        }

        else
        {
          [itemCopy setExternallyVisibleConnectionUUIDs:array];
          v35 = metricsLogHandle;
          v18 = v39;
          dictionaryReport = v40;
          if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412547;
            v49 = v20;
            v50 = 2113;
            v51 = array;
            _os_log_impl(&dword_23255B000, v35, OS_LOG_TYPE_DEBUG, "NWACT: Replaced connection statistics UUID array %@ with externally visible %{private}@", buf, 0x16u);
          }
        }
      }

      else
      {
        v32 = metricsLogHandle;
        if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v49 = itemCopy;
          _os_log_impl(&dword_23255B000, v32, OS_LOG_TYPE_DEBUG, "NWACT: No connection statistics UUID array on sessionStats %@", buf, 0xCu);
        }
      }

      array = [MEMORY[0x277CBEB38] dictionary];
      taskUUID = [itemCopy taskUUID];
      uUIDString = [taskUUID UUIDString];
      [array setObject:uUIDString forKeyedSubscript:@"taskUUID"];

      v46 = nwActivity;
      v34 = [MEMORY[0x277CBEA60] arrayWithObjects:&v46 count:1];
      [(NWActivityHandler *)self _sendDictionaryMetric:itemCopy ofType:3 forActivities:v34 parentActivity:0 additionalItems:array];
LABEL_41:

      goto LABEL_42;
    }

    v11 = metricsLogHandle;
    if (!os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_ERROR))
    {
LABEL_42:

      goto LABEL_43;
    }

    *buf = 138412290;
    v49 = itemCopy;
    v12 = "NWACT: no activity mapper for session stats %@";
LABEL_14:
    _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_ERROR, v12, buf, 0xCu);
    goto LABEL_42;
  }

  v8 = metricsLogHandle;
  if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v49 = itemCopy;
    _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_ERROR, "NWACT: CFNetwork supplies null UUID in session stats %@", buf, 0xCu);
  }

LABEL_43:

  v38 = *MEMORY[0x277D85DE8];
}

- (void)_sendCAEvent:(id)event forReport:(id)report
{
  eventCopy = event;
  dictionaryRepresentation = [report dictionaryRepresentation];
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [NWActivitySuperMetric flattenObject:dictionaryRepresentation intoDictionary:v6 atPath:&stru_2847966D8];
  if (dictionaryRepresentation && v6)
  {
    AnalyticsSendEvent();
  }
}

- (void)_handleWiFiItem:(id)item
{
  v56 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  if (!itemCopy)
  {
    v15 = metricsLogHandle;
    if (!os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_44;
    }

    *buf = 0;
    v16 = "NWACT: Null wifiStats";
    v17 = v15;
    v18 = OS_LOG_TYPE_ERROR;
    goto LABEL_11;
  }

  outstandingWiFiFragments = self->_outstandingWiFiFragments;
  if (outstandingWiFiFragments)
  {
    self->_outstandingWiFiFragments = outstandingWiFiFragments - 1;
    v6 = metricsLogHandle;
    if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v7 = self->_outstandingWiFiFragments;
      *buf = 67109120;
      LODWORD(v52) = v7;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEBUG, "NWACT: Wi-Fi fragment arrived, there are now %u outstanding Wi-Fi fragment requests", buf, 8u);
    }
  }

  currentActivities = [(NWActivityHandler *)self currentActivities];
  v9 = [currentActivities count];

  if (!v9)
  {
    lastWiFiActivity = [(NWActivityHandler *)self lastWiFiActivity];

    v20 = metricsLogHandle;
    v21 = os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_INFO);
    if (lastWiFiActivity)
    {
      if (v21)
      {
        v22 = v20;
        lastWiFiActivity2 = [(NWActivityHandler *)self lastWiFiActivity];
        *buf = 138412290;
        v52 = lastWiFiActivity2;
        _os_log_impl(&dword_23255B000, v22, OS_LOG_TYPE_INFO, "NWACT: Using last activity for Wi-Fi fragment: %@", buf, 0xCu);
      }

      v24 = objc_alloc(MEMORY[0x277CBEA60]);
      lastWiFiActivity3 = [(NWActivityHandler *)self lastWiFiActivity];
      v14 = [v24 initWithObjects:{lastWiFiActivity3, 0}];

      [(NWActivityHandler *)self setLastWiFiActivity:0];
      goto LABEL_16;
    }

    if (!v21)
    {
      goto LABEL_44;
    }

    *buf = 0;
    v16 = "NWACT: No activities currently active, dropping Wi-Fi stats";
    v17 = v20;
    v18 = OS_LOG_TYPE_INFO;
LABEL_11:
    _os_log_impl(&dword_23255B000, v17, v18, v16, buf, 2u);
    goto LABEL_44;
  }

  v10 = metricsLogHandle;
  if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v11 = v10;
    currentActivities2 = [(NWActivityHandler *)self currentActivities];
    *buf = 138412290;
    v52 = currentActivities2;
    _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEBUG, "NWACT: Using current activities for Wi-Fi fragment: %@", buf, 0xCu);
  }

  currentActivities3 = [(NWActivityHandler *)self currentActivities];
  v14 = [currentActivities3 copy];

LABEL_16:
  [itemCopy setActivityUUIDs:v14];
  activityUUIDs = [itemCopy activityUUIDs];
  v27 = activityUUIDs;
  if (activityUUIDs && [activityUUIDs count])
  {
    v46 = v14;
    array = [MEMORY[0x277CBEB18] array];
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v45 = v27;
    v29 = v27;
    v30 = [v29 countByEnumeratingWithState:&v47 objects:v55 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v48;
      while (2)
      {
        for (i = 0; i != v31; ++i)
        {
          if (*v48 != v32)
          {
            objc_enumerationMutation(v29);
          }

          v34 = *(*(&v47 + 1) + 8 * i);
          nullUUID = [(NWActivityHandler *)self nullUUID];
          v36 = [v34 isEqual:nullUUID];

          if (v36)
          {
            v37 = metricsLogHandle;
            if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(&dword_23255B000, v37, OS_LOG_TYPE_ERROR, "NWACT: Wi-Fi supplied a null UUID in the activities array, ignoring", buf, 2u);
            }
          }

          else
          {
            v38 = [(NWActivityHandler *)self mapperForUUID:v34 reason:9];
            if (!v38)
            {
              v42 = metricsLogHandle;
              if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v52 = v34;
                _os_log_impl(&dword_23255B000, v42, OS_LOG_TYPE_ERROR, "NWACT: no activity mapper for activity uuid %@", buf, 0xCu);
              }

              v27 = v45;
              v14 = v46;
              goto LABEL_43;
            }

            v39 = v38;
            externalUUID = [v38 externalUUID];
            [array addObject:externalUUID];
          }
        }

        v31 = [v29 countByEnumeratingWithState:&v47 objects:v55 count:16];
        if (v31)
        {
          continue;
        }

        break;
      }
    }

    if ([(NWActivityHandler *)self configuredForMetricStreaming])
    {
      [itemCopy setExternallyVisibleActivityUUIDs:v29];
      v27 = v45;
    }

    else
    {
      [itemCopy setExternallyVisibleActivityUUIDs:array];
      v43 = metricsLogHandle;
      v27 = v45;
      if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412547;
        v52 = v29;
        v53 = 2113;
        v54 = array;
        _os_log_impl(&dword_23255B000, v43, OS_LOG_TYPE_DEBUG, "NWACT: Replaced Wi-Fi activity UUID array %@ with externally visible %{private}@", buf, 0x16u);
      }
    }

    v14 = v46;
  }

  else
  {
    v41 = metricsLogHandle;
    if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v52 = itemCopy;
      _os_log_impl(&dword_23255B000, v41, OS_LOG_TYPE_DEBUG, "NWACT: No Wi-Fi activity UUID array on %@", buf, 0xCu);
    }
  }

  array = [itemCopy activityUUIDs];
  [(NWActivityHandler *)self _sendMetric:itemCopy ofType:5 forActivities:array parentActivity:0 additionalItems:0];
LABEL_43:

LABEL_44:
  v44 = *MEMORY[0x277D85DE8];
}

- (void)traverseObject:(id)object atPath:(id)path
{
  v44 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  pathCopy = path;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v27 = objectCopy;
    v8 = objectCopy;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    obj = [v8 allKeys];
    v9 = [obj countByEnumeratingWithState:&v34 objects:v43 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v35;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v35 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v34 + 1) + 8 * i);
          v14 = [v8 objectForKey:v13];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v15 = metricsLogHandle;
            if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v40 = v13;
              v41 = 2112;
              v42 = pathCopy;
              _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_INFO, "Bad key %@ at path %@", buf, 0x16u);
            }
          }

          v16 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@/%@", pathCopy, v13];
          [(NWActivityHandler *)self traverseObject:v14 atPath:v16];
        }

        v10 = [obj countByEnumeratingWithState:&v34 objects:v43 count:16];
      }

      while (v10);
    }

LABEL_22:
    objectCopy = v27;
    goto LABEL_23;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v27 = objectCopy;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    obja = objectCopy;
    v17 = [obja countByEnumeratingWithState:&v30 objects:v38 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = 0;
      v20 = *v31;
      do
      {
        v21 = 0;
        v22 = v19;
        do
        {
          if (*v31 != v20)
          {
            objc_enumerationMutation(obja);
          }

          v23 = *(*(&v30 + 1) + 8 * v21);
          v19 = v22 + 1;
          v24 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@/%zu", pathCopy, v22];
          [(NWActivityHandler *)self traverseObject:v23 atPath:v24];

          ++v21;
          v22 = v19;
        }

        while (v18 != v21);
        v18 = [obja countByEnumeratingWithState:&v30 objects:v38 count:16];
      }

      while (v18);
    }

    goto LABEL_22;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v26 = metricsLogHandle;
      if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v40 = objectCopy;
        v41 = 2112;
        v42 = pathCopy;
        _os_log_impl(&dword_23255B000, v26, OS_LOG_TYPE_INFO, "Bad value %@ at path %@", buf, 0x16u);
      }
    }
  }

LABEL_23:

  v25 = *MEMORY[0x277D85DE8];
}

- (id)createValidJSONObject:(id)object atPath:(id)path
{
  v53 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  pathCopy = path;
  v6 = objectCopy;
  if (!v6)
  {
    v34 = 0;
    goto LABEL_34;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v34 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v33 = v6;
    v7 = v6;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    allKeys = [v7 allKeys];
    v9 = [allKeys countByEnumeratingWithState:&v41 objects:v52 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v42;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v42 != v11)
          {
            objc_enumerationMutation(allKeys);
          }

          v13 = *(*(&v41 + 1) + 8 * i);
          v14 = [v7 objectForKey:v13];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@/%@", pathCopy, v13];
            v16 = [(NWActivityHandler *)self createValidJSONObject:v14 atPath:v15];
            if (v16)
            {
              [v34 setObject:v16 forKey:v13];
            }

            else
            {
              v18 = metricsLogHandle;
              if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_INFO))
              {
                *buf = 138412546;
                v46 = v14;
                v47 = 2112;
                v48 = v15;
                _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_INFO, "Bad object %@ at path %@, skipping", buf, 0x16u);
              }
            }
          }

          else
          {
            v17 = metricsLogHandle;
            if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v46 = v13;
              v47 = 2112;
              v48 = pathCopy;
              _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_INFO, "Bad key %@ at path %@, skipping", buf, 0x16u);
            }
          }
        }

        v10 = [allKeys countByEnumeratingWithState:&v41 objects:v52 count:16];
      }

      while (v10);
    }

LABEL_32:
    v6 = v33;
LABEL_33:

    goto LABEL_34;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v34 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v33 = v6;
    v7 = v6;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v19 = [v7 countByEnumeratingWithState:&v37 objects:v51 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = 0;
      v22 = *v38;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v38 != v22)
          {
            objc_enumerationMutation(v7);
          }

          v24 = *(*(&v37 + 1) + 8 * j);
          v25 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@/%zu", pathCopy, v21];
          v26 = [(NWActivityHandler *)self createValidJSONObject:v24 atPath:v25];
          if (v26)
          {
            [v34 addObject:v26];
          }

          else
          {
            v27 = metricsLogHandle;
            if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v46 = v24;
              v47 = 2112;
              v48 = v25;
              _os_log_impl(&dword_23255B000, v27, OS_LOG_TYPE_INFO, "Bad object %@ at path %@, skipping", buf, 0x16u);
            }
          }

          ++v21;
        }

        v20 = [v7 countByEnumeratingWithState:&v37 objects:v51 count:16];
      }

      while (v20);
    }

    goto LABEL_32;
  }

  objc_opt_class();
  v34 = v6;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    v34 = v6;
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v30 = metricsLogHandle;
      if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_INFO))
      {
        v31 = v30;
        *buf = 138412802;
        v46 = v6;
        v47 = 2112;
        v48 = objc_opt_class();
        v49 = 2112;
        v50 = pathCopy;
        v32 = v48;
        _os_log_impl(&dword_23255B000, v31, OS_LOG_TYPE_INFO, "Bad value %@ of type %@ at path %@", buf, 0x20u);
      }

      v34 = 0;
      v7 = v6;
      goto LABEL_33;
    }
  }

LABEL_34:

  v28 = *MEMORY[0x277D85DE8];

  return v34;
}

- (void)_convertPLMNToDecimal:(id)decimal mcc:(int *)mcc mnc:(int *)mnc
{
  v22 = *MEMORY[0x277D85DE8];
  decimalCopy = decimal;
  v8 = decimalCopy;
  if (!decimalCopy || [decimalCopy length] != 3)
  {
    v14 = metricsLogHandle;
    if (!os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    v20 = 138412290;
    v21 = v8;
    v15 = "Invalid NSData passed, should be 3 bytes: %@";
    v16 = v14;
    v17 = 12;
    goto LABEL_10;
  }

  bytes = [v8 bytes];
  if (!bytes)
  {
    v19 = metricsLogHandle;
    if (!os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_ERROR))
    {
LABEL_11:
      v13 = 0;
      v12 = 0;
      if (!mcc)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    LOWORD(v20) = 0;
    v15 = "Failed to extract inner data";
    v16 = v19;
    v17 = 2;
LABEL_10:
    _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_ERROR, v15, &v20, v17);
    goto LABEL_11;
  }

  v10 = bytes[1];
  v11 = v10 >> 4;
  if (v10 > 0xEF)
  {
    v11 = 0;
  }

  v12 = 100 * (*bytes & 0xF) + 10 * (*bytes >> 4) + (v10 & 0xF);
  v13 = v11 + 10 * (bytes[2] >> 4) + 100 * (bytes[2] & 0xF);
  if (mcc)
  {
LABEL_12:
    *mcc = v12;
  }

LABEL_13:
  if (mnc)
  {
    *mnc = v13;
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_handleCellularItem:(id)item
{
  v92 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  if (itemCopy)
  {
    currentActivities = [(NWActivityHandler *)self currentActivities];
    if ([currentActivities count])
    {

LABEL_8:
      v70 = [itemCopy mutableCopy];
      currentActivities2 = [(NWActivityHandler *)self currentActivities];
      v68 = [currentActivities2 mutableCopy];

      completeActivities = [(NWActivityHandler *)self completeActivities];
      v13 = v68;
      [v68 addObjectsFromArray:completeActivities];

      if (v68 && [v68 count])
      {
        v14 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v68, "count")}];
        v81 = 0u;
        v82 = 0u;
        v83 = 0u;
        v84 = 0u;
        v15 = v68;
        v16 = [v15 countByEnumeratingWithState:&v81 objects:v91 count:16];
        if (v16)
        {
          v17 = *v82;
          while (2)
          {
            for (i = 0; i != v16; ++i)
            {
              if (*v82 != v17)
              {
                objc_enumerationMutation(v15);
              }

              v19 = *(*(&v81 + 1) + 8 * i);
              nullUUID = [(NWActivityHandler *)self nullUUID];
              v21 = [v19 isEqual:nullUUID];

              if (v21)
              {
                v22 = metricsLogHandle;
                if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_ERROR))
                {
                  *buf = 0;
                  _os_log_impl(&dword_23255B000, v22, OS_LOG_TYPE_ERROR, "NWACT: Cell supplied a null UUID in the activities array, ignoring", buf, 2u);
                }
              }

              else
              {
                v23 = [(NWActivityHandler *)self mapperForUUID:v19 reason:10];
                v24 = v23;
                if (!v23)
                {
                  v32 = metricsLogHandle;
                  if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412290;
                    v86 = v19;
                    _os_log_impl(&dword_23255B000, v32, OS_LOG_TYPE_ERROR, "NWACT: no activity mapper for activity uuid %@", buf, 0xCu);
                  }

                  goto LABEL_81;
                }

                externalUUID = [v23 externalUUID];
                [v14 addObject:externalUUID];
              }
            }

            v16 = [v15 countByEnumeratingWithState:&v81 objects:v91 count:16];
            if (v16)
            {
              continue;
            }

            break;
          }
        }

        v26 = objc_alloc_init(MEMORY[0x277CBEB18]);
        if ([(NWActivityHandler *)self configuredForMetricStreaming])
        {
          v79 = 0uLL;
          v80 = 0uLL;
          v77 = 0uLL;
          v78 = 0uLL;
          v27 = v15;
          v28 = [v27 countByEnumeratingWithState:&v77 objects:v90 count:16];
          if (v28)
          {
            v29 = *v78;
            do
            {
              for (j = 0; j != v28; ++j)
              {
                if (*v78 != v29)
                {
                  objc_enumerationMutation(v27);
                }

                uUIDString = [*(*(&v77 + 1) + 8 * j) UUIDString];
                [v26 addObject:uUIDString];
              }

              v28 = [v27 countByEnumeratingWithState:&v77 objects:v90 count:16];
            }

            while (v28);
          }
        }

        else
        {
          v75 = 0uLL;
          v76 = 0uLL;
          v73 = 0uLL;
          v74 = 0uLL;
          v34 = v14;
          v35 = [v34 countByEnumeratingWithState:&v73 objects:v89 count:16];
          if (v35)
          {
            v36 = *v74;
            do
            {
              for (k = 0; k != v35; ++k)
              {
                if (*v74 != v36)
                {
                  objc_enumerationMutation(v34);
                }

                uUIDString2 = [*(*(&v73 + 1) + 8 * k) UUIDString];
                [v26 addObject:uUIDString2];
              }

              v35 = [v34 countByEnumeratingWithState:&v73 objects:v89 count:16];
            }

            while (v35);
          }

          v39 = metricsLogHandle;
          if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412547;
            v86 = v15;
            v87 = 2113;
            *v88 = v34;
            _os_log_impl(&dword_23255B000, v39, OS_LOG_TYPE_DEBUG, "NWACT: Replaced Cell activity UUID array %@ with externally visible %{private}@", buf, 0x16u);
          }
        }

        [v70 setObject:v26 forKeyedSubscript:@"activityUUIDs"];

        v13 = v68;
        if (!v70)
        {
          goto LABEL_82;
        }
      }

      else if (!v70)
      {
        goto LABEL_82;
      }

      v40 = metricsLogHandle;
      if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138477827;
        v86 = v70;
        _os_log_impl(&dword_23255B000, v40, OS_LOG_TYPE_DEBUG, "NWACT: Cellular fragment: %{private}@", buf, 0xCu);
      }

      [(NWActivityHandler *)self traverseObject:v70 atPath:@"/"];
      v41 = [v70 objectForKeyedSubscript:@"sim_hplmn"];
      if (v41)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v72 = 0;
          [(NWActivityHandler *)self _convertPLMNToDecimal:v41 mcc:&v72 + 4 mnc:&v72];
          [v70 setObject:0 forKeyedSubscript:@"sim_hplmn"];
          v42 = [MEMORY[0x277CCABB0] numberWithInt:HIDWORD(v72)];
          [v70 setObject:v42 forKeyedSubscript:@"converted_sim_mcc"];

          v43 = [MEMORY[0x277CCABB0] numberWithInt:v72];
          [v70 setObject:v43 forKeyedSubscript:@"converted_sim_mnc"];

          v44 = metricsLogHandle;
          if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412802;
            v86 = v41;
            v87 = 1024;
            *v88 = HIDWORD(v72);
            *&v88[4] = 1024;
            *&v88[6] = v72;
            _os_log_impl(&dword_23255B000, v44, OS_LOG_TYPE_DEBUG, "Converted sim_hplmn %@ to MCC: %d and MNC: %d", buf, 0x18u);
          }
        }
      }

      v45 = [v70 objectForKeyedSubscript:@"plmn"];
      if (v45)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v72 = 0;
          [(NWActivityHandler *)self _convertPLMNToDecimal:v45 mcc:&v72 + 4 mnc:&v72];
          [v70 setObject:0 forKeyedSubscript:@"plmn"];
          v46 = [MEMORY[0x277CCABB0] numberWithInt:HIDWORD(v72)];
          [v70 setObject:v46 forKeyedSubscript:@"converted_mcc"];

          v47 = [MEMORY[0x277CCABB0] numberWithInt:v72];
          [v70 setObject:v47 forKeyedSubscript:@"converted_mnc"];

          v48 = metricsLogHandle;
          if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412802;
            v86 = v45;
            v87 = 1024;
            *v88 = HIDWORD(v72);
            *&v88[4] = 1024;
            *&v88[6] = v72;
            _os_log_impl(&dword_23255B000, v48, OS_LOG_TYPE_DEBUG, "Converted plmn %@ to MCC: %d and MNC: %d", buf, 0x18u);
          }
        }
      }

      v49 = [v70 objectForKeyedSubscript:@"srv_cell_info"];
      v50 = v49;
      if (v49)
      {
        v51 = [v49 objectForKeyedSubscript:@"hplmn"];
        if (v51)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v72 = 0;
            [(NWActivityHandler *)self _convertPLMNToDecimal:v51 mcc:&v72 + 4 mnc:&v72];
            v52 = [v50 mutableCopy];
            [v52 setObject:0 forKeyedSubscript:@"hplmn"];
            v53 = [MEMORY[0x277CCABB0] numberWithInt:HIDWORD(v72)];
            [v52 setObject:v53 forKeyedSubscript:@"converted_mcc"];

            v54 = [MEMORY[0x277CCABB0] numberWithInt:v72];
            [v52 setObject:v54 forKeyedSubscript:@"converted_mnc"];

            v55 = metricsLogHandle;
            if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412802;
              v86 = v51;
              v87 = 1024;
              *v88 = HIDWORD(v72);
              *&v88[4] = 1024;
              *&v88[6] = v72;
              _os_log_impl(&dword_23255B000, v55, OS_LOG_TYPE_DEBUG, "Converted hplmn %@ to MCC: %d and MNC: %d", buf, 0x18u);
            }

            v56 = [v52 copy];
            [v70 setObject:v56 forKeyedSubscript:@"srv_cell_info"];
          }
        }
      }

      [v70 setObject:0 forKeyedSubscript:@"timestamp"];

      v57 = metricsLogHandle;
      if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138477827;
        v86 = v70;
        _os_log_impl(&dword_23255B000, v57, OS_LOG_TYPE_DEBUG, "NWACT: Cellular fragment after conversion: %{private}@", buf, 0xCu);
      }

      v14 = [(NWActivityHandler *)self createValidJSONObject:v70 atPath:@"/"];
      v58 = metricsLogHandle;
      if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v86 = v14;
        _os_log_impl(&dword_23255B000, v58, OS_LOG_TYPE_DEBUG, "NWACT: Cellular fragment converted and cleaned: %@", buf, 0xCu);
      }

      if (![MEMORY[0x277CCAAA0] isValidJSONObject:v14])
      {
        v65 = metricsLogHandle;
        if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_23255B000, v65, OS_LOG_TYPE_ERROR, "NWACT: Cell stats are not valid JSON, dropping", buf, 2u);
        }

        goto LABEL_81;
      }

      v71 = 0;
      v59 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v14 options:0 error:&v71];
      v60 = v71;
      if (v60 || !v59)
      {
        v66 = metricsLogHandle;
        if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v86 = v60;
          _os_log_impl(&dword_23255B000, v66, OS_LOG_TYPE_ERROR, "NWACT: Failed to create JSON data from metric, dropping: %@", buf, 0xCu);
        }

        if (!v59)
        {
          goto LABEL_81;
        }
      }

      else if ([(NWActivityHandler *)self configuredForMetricStreaming])
      {
        v61 = metricStreamLogHandle;
        if (os_log_type_enabled(metricStreamLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          v62 = MEMORY[0x277CCACA8];
          v63 = v61;
          v64 = [[v62 alloc] initWithData:v59 encoding:4];
          *buf = 138412290;
          v86 = v64;
          _os_log_impl(&dword_23255B000, v63, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
        }
      }

      [(NWActivityHandler *)self _saveMetricWithUUIDS:v68 parentUUID:0 withData:v59 ofType:6];

LABEL_81:
      v13 = v68;
LABEL_82:

      goto LABEL_83;
    }

    completeActivities2 = [(NWActivityHandler *)self completeActivities];
    v10 = [completeActivities2 count];

    if (v10)
    {
      goto LABEL_8;
    }

    v33 = metricsLogHandle;
    if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v6 = "NWACT: No current or complete activities, dropping cellular fragment";
      v7 = v33;
      v8 = OS_LOG_TYPE_INFO;
      goto LABEL_6;
    }
  }

  else
  {
    v5 = metricsLogHandle;
    if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v6 = "NWACT: Null cellStats";
      v7 = v5;
      v8 = OS_LOG_TYPE_ERROR;
LABEL_6:
      _os_log_impl(&dword_23255B000, v7, v8, v6, buf, 2u);
    }
  }

LABEL_83:

  v67 = *MEMORY[0x277D85DE8];
}

- (void)_handleClientMetric:(id)metric forBundleID:(id)d
{
  v32 = *MEMORY[0x277D85DE8];
  metricCopy = metric;
  dCopy = d;
  activityUUID = [metricCopy activityUUID];
  if (activityUUID)
  {
    nullUUID = [(NWActivityHandler *)self nullUUID];
    v10 = [activityUUID isEqual:nullUUID];

    if (v10)
    {
      v11 = metricsLogHandle;
      if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v29 = metricCopy;
        v12 = "NWACT: null activity UUID in client metric %@";
LABEL_7:
        _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_ERROR, v12, buf, 0xCu);
      }
    }

    else
    {
      v13 = [(NWActivityHandler *)self mapperForUUID:activityUUID reason:11];
      if (v13)
      {
        if ([(NWActivityHandler *)self configuredForMetricStreaming])
        {
          [metricCopy setExternallyVisibleActivityUUID:activityUUID];
        }

        else
        {
          externalUUID = [v13 externalUUID];
          [metricCopy setExternallyVisibleActivityUUID:externalUUID];

          v16 = metricsLogHandle;
          if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_DEBUG))
          {
            v17 = v16;
            externallyVisibleActivityUUID = [metricCopy externallyVisibleActivityUUID];
            *buf = 138412547;
            v29 = activityUUID;
            v30 = 2113;
            v31 = externallyVisibleActivityUUID;
            _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_DEBUG, "NWACT: swap client metric internal activity UUID %@ to external %{private}@", buf, 0x16u);
          }
        }

        if (dCopy)
        {
          [metricCopy setBundleID:dCopy];
        }

        metricData = [metricCopy metricData];
        if (metricData)
        {
          if ([(NWActivityHandler *)self configuredForMetricStreaming])
          {
            v20 = metricStreamLogHandle;
            if (os_log_type_enabled(metricStreamLogHandle, OS_LOG_TYPE_DEFAULT))
            {
              v21 = MEMORY[0x277CCACA8];
              v22 = v20;
              v23 = [[v21 alloc] initWithData:metricData encoding:4];
              *buf = 138412290;
              v29 = v23;
              _os_log_impl(&dword_23255B000, v22, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
            }
          }

          v27 = activityUUID;
          v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];
          [(NWActivityHandler *)self _saveMetricWithUUIDS:v24 parentUUID:0 withData:metricData ofType:7];
        }

        else
        {
          v25 = metricsLogHandle;
          if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v29 = metricCopy;
            _os_log_impl(&dword_23255B000, v25, OS_LOG_TYPE_ERROR, "NWACT: Failed to create JSON data from client metric, dropping: %@", buf, 0xCu);
          }
        }
      }

      else
      {
        v14 = metricsLogHandle;
        if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v29 = metricCopy;
          _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_ERROR, "NWACT: no activity mapper for client metric %@", buf, 0xCu);
        }
      }
    }
  }

  else
  {
    v11 = metricsLogHandle;
    if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v29 = metricCopy;
      v12 = "NWACT: no activity UUID found on client metric %@";
      goto LABEL_7;
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (BOOL)noteSymptom:(id)symptom
{
  symptomCopy = symptom;
  metricsQueue = self->_metricsQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __33__NWActivityHandler_noteSymptom___block_invoke;
  v8[3] = &unk_27898A7D0;
  v8[4] = self;
  v9 = symptomCopy;
  v6 = symptomCopy;
  dispatch_async(metricsQueue, v8);

  return 1;
}

void __33__NWActivityHandler_noteSymptom___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2[128] == 1)
  {
    v3 = *(a1 + 40);
    v4 = *MEMORY[0x277D85DE8];

    [v2 processSymptom:v3];
  }

  else
  {
    v5 = metricsLogHandle;
    if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      v8 = 138543362;
      v9 = v6;
      _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "NWACT: Not ready, dropping received event %{public}@", &v8, 0xCu);
    }

    v7 = *MEMORY[0x277D85DE8];
  }
}

- (BOOL)_isDBSizeWithinThreshold
{
  v16 = *MEMORY[0x277D85DE8];
  analyticsWorkspace = [(NWActivityHandler *)self analyticsWorkspace];
  currentDBSizeInBytes = [analyticsWorkspace currentDBSizeInBytes];

  analyticsWorkspace2 = [(NWActivityHandler *)self analyticsWorkspace];
  v6 = [analyticsWorkspace2 fileSystemSizeInBytes] * 0.01;

  v7 = 512000000.0;
  if (v6 <= 512000000.0)
  {
    v7 = v6;
  }

  v8 = v7;
  v9 = metricsLogHandle;
  if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v12 = 134218240;
    v13 = currentDBSizeInBytes;
    v14 = 2048;
    v15 = v8;
    _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEBUG, "NWACT: Current DB size = %llu, DB size threshold = %llu", &v12, 0x16u);
  }

  result = currentDBSizeInBytes <= v8;
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)handleDBEvent:(unsigned __int8)event
{
  dbWriteState = self->_dbWriteState;
  if (dbWriteState == 2)
  {
    if (event != 2)
    {
      return;
    }

    v9 = metricsLogHandle;
    if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *v21 = 0;
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEBUG, "NWACT: Current DB State: Check DB size. Received Event: Check DB size.", v21, 2u);
    }

    _isDBSizeWithinThreshold = [(NWActivityHandler *)self _isDBSizeWithinThreshold];
    v11 = metricsLogHandle;
    v12 = os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_DEFAULT);
    if (_isDBSizeWithinThreshold)
    {
      if (v12)
      {
        *v20 = 0;
        _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEFAULT, "NWACT: DB size checked, under threshold.", v20, 2u);
      }

      self->_metricsDataWritesBudget = 1000;
      v8 = 1;
      goto LABEL_20;
    }

    if (!v12)
    {
      return;
    }

    v19 = 0;
    v14 = "NWACT: DB size checked, over threshold.";
    v15 = &v19;
    v16 = v11;
    v17 = OS_LOG_TYPE_DEFAULT;
LABEL_23:
    _os_log_impl(&dword_23255B000, v16, v17, v14, v15, 2u);
    return;
  }

  if (dbWriteState == 1)
  {
    if (event == 1)
    {
      v6 = metricsLogHandle;
      if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *v22 = 0;
        _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, "NWACT: Current DB State: Ready. Received Event: Wrote metric to disk.", v22, 2u);
      }

      v7 = self->_metricsDataWritesBudget - 1;
      self->_metricsDataWritesBudget = v7;
      if (!v7)
      {
        goto LABEL_12;
      }
    }

    return;
  }

  if (self->_dbWriteState)
  {
    v13 = metricsLogHandle;
    if (!os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v18 = 0;
    v14 = "NWACT: Unexpected NWActivityDBEvent received.";
    v15 = &v18;
    v16 = v13;
    v17 = OS_LOG_TYPE_ERROR;
    goto LABEL_23;
  }

  if (!event)
  {
    v5 = metricsLogHandle;
    if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "NWACT: Current DB State: Not ready. Received Event: Initialize.", buf, 2u);
    }

    self->_metricsDataWritesBudget = 0;
LABEL_12:
    v8 = 2;
LABEL_20:
    self->_dbWriteState = v8;
  }
}

- (BOOL)writesToDBAllowed
{
  dbWriteState = self->_dbWriteState;
  if (dbWriteState == 2)
  {
    [(NWActivityHandler *)self handleDBEvent:2];
    LOBYTE(v4) = self->_dbWriteState == 1;
    return v4;
  }

  if (dbWriteState == 1)
  {
    LOBYTE(v4) = 1;
    return v4;
  }

  if (!self->_dbWriteState)
  {
    goto LABEL_6;
  }

  v3 = metricsLogHandle;
  v4 = os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_ERROR);
  if (v4)
  {
    *v7 = 0;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_ERROR, "NWACT: Unexpected NWActivityDBEvent received.", v7, 2u);
LABEL_6:
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (id)dbWriteStateToString:(unsigned __int8)string
{
  if (string > 2u)
  {
    return @"NWActivityDBWriteStateInvalid";
  }

  else
  {
    return off_27898FD08[string];
  }
}

- (void)processSymptom:(id)symptom
{
  v53 = *MEMORY[0x277D85DE8];
  symptomCopy = symptom;
  v5 = objc_autoreleasePoolPush();
  eventData = [symptomCopy eventData];
  v7 = metricsLogHandle;
  if (!eventData)
  {
    if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_ERROR))
    {
      v49 = 138412290;
      v50 = symptomCopy;
      v10 = "NWACT: No sym_basic passed in event %@";
      v11 = v7;
      goto LABEL_10;
    }

    goto LABEL_97;
  }

  v8 = eventData;
  if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v49 = 138543362;
    v50 = symptomCopy;
    _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEFAULT, "NWACT: handler received event %{public}@", &v49, 0xCu);
  }

  if (*(v8 + 4))
  {
    v13 = *(v8 + 24);
    v14 = metricsLogHandle;
    if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v49 = 134217984;
      v50 = v13;
      _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_DEBUG, "NWACT: subtype is %lld", &v49, 0xCu);
    }

    if (v13 <= 3)
    {
      switch(v13)
      {
        case 1:
          eventQualifiers = [symptomCopy eventQualifiers];
          v16 = [eventQualifiers objectForKeyedSubscript:@"0"];

          if (!v16)
          {
            v9 = metricsLogHandle;
            if (!os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_97;
            }

            v49 = 138412290;
            v50 = symptomCopy;
            v10 = "NWACT: no start activity data passed for event %@";
            goto LABEL_7;
          }

          v17 = [objc_alloc(MEMORY[0x277CD91B0]) initWithNWActivityReport:objc_msgSend(v16 length:{"bytes"), objc_msgSend(v16, "length")}];
          if (v17)
          {
            v18 = objc_autoreleasePoolPush();
            [(NWActivityHandler *)self _handleStartActivity:v17];
            [(NWActivityHandler *)self _handleL2Start:v17];
            goto LABEL_46;
          }

          v37 = metricsLogHandle;
          if (!os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_95;
          }

          v49 = 138412290;
          v50 = symptomCopy;
          v38 = "NWACT: Couldn't create start actitivty from event %@";
LABEL_88:
          _os_log_impl(&dword_23255B000, v37, OS_LOG_TYPE_ERROR, v38, &v49, 0xCu);
          goto LABEL_95;
        case 2:
          eventQualifiers2 = [symptomCopy eventQualifiers];
          v16 = [eventQualifiers2 objectForKeyedSubscript:@"0"];

          if (!v16)
          {
            v9 = metricsLogHandle;
            if (!os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_97;
            }

            v49 = 138412290;
            v50 = symptomCopy;
            v10 = "NWACT: no epilogue data passed for event %@";
            goto LABEL_7;
          }

          v17 = [objc_alloc(MEMORY[0x277CD91A8]) initWithNWActivityEpilogueReport:objc_msgSend(v16 length:{"bytes"), objc_msgSend(v16, "length")}];
          if (v17)
          {
            v18 = objc_autoreleasePoolPush();
            [(NWActivityHandler *)self _handleEpilogue:v17];
            [(NWActivityHandler *)self _handleL2Stop:v17];
            goto LABEL_46;
          }

          v37 = metricsLogHandle;
          if (!os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_95;
          }

          v49 = 138412290;
          v50 = symptomCopy;
          v38 = "NWACT: Couldn't create epilogue from event %@";
          goto LABEL_88;
        case 3:
          eventQualifiers3 = [symptomCopy eventQualifiers];
          v16 = [eventQualifiers3 objectForKeyedSubscript:@"3"];

          if (!v16)
          {
            v9 = metricsLogHandle;
            if (!os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_97;
            }

            v49 = 138412290;
            v50 = symptomCopy;
            v10 = "NWACT: No CF data subtype passed in event %@";
            goto LABEL_7;
          }

          v17 = [objc_alloc(MEMORY[0x277CBABD8]) initWithCFNetworkReport:objc_msgSend(v16 length:{"bytes"), objc_msgSend(v16, "length")}];
          if (v17)
          {
            v18 = objc_autoreleasePoolPush();
            [(NWActivityHandler *)self _handleCFNetworkItem:v17];
LABEL_46:
            objc_autoreleasePoolPop(v18);
LABEL_95:

LABEL_96:
            goto LABEL_97;
          }

          v37 = metricsLogHandle;
          if (!os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_95;
          }

          v49 = 138412290;
          v50 = symptomCopy;
          v38 = "NWACT: Couldn't create sessions stats from event %@";
          goto LABEL_88;
      }

LABEL_36:
      v27 = metricsLogHandle;
      if (!os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_97;
      }

      v49 = 134218242;
      v50 = v13;
      v51 = 2112;
      v52 = symptomCopy;
      v10 = "NWACT: Event has unknown subtype (%llu): %@";
      v11 = v27;
      v12 = 22;
      goto LABEL_11;
    }

    if (v13 != 4)
    {
      if (v13 == 5)
      {
        v29 = metricsLogHandle;
        if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_DEBUG))
        {
          v49 = 138412290;
          v50 = symptomCopy;
          _os_log_impl(&dword_23255B000, v29, OS_LOG_TYPE_DEBUG, "NWACT: handle Wi-Fi fragment for event %@", &v49, 0xCu);
        }

        eventQualifiers4 = [symptomCopy eventQualifiers];
        v16 = [eventQualifiers4 objectForKeyedSubscript:@"5"];

        if (!v16)
        {
          v9 = metricsLogHandle;
          if (!os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_97;
          }

          v49 = 138412290;
          v50 = symptomCopy;
          v10 = "NWACT: No Wi-Fi data subtype passed in event %@";
          goto LABEL_7;
        }

        v17 = [objc_alloc(MEMORY[0x277D7B950]) initWithWAActivityReport:objc_msgSend(v16 length:{"bytes"), objc_msgSend(v16, "length")}];
        if (v17)
        {
          v18 = objc_autoreleasePoolPush();
          [(NWActivityHandler *)self _handleWiFiItem:v17];
          goto LABEL_46;
        }

        v37 = metricsLogHandle;
        if (!os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_95;
        }

        v49 = 138412290;
        v50 = symptomCopy;
        v38 = "NWACT: Couldn't create Wi-Fi stats from event %@";
        goto LABEL_88;
      }

      if (v13 != 7)
      {
        goto LABEL_36;
      }

      v19 = metricsLogHandle;
      if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_DEBUG))
      {
        v49 = 138412290;
        v50 = symptomCopy;
        _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_DEBUG, "NWACT: handle client metric fragment for event %@", &v49, 0xCu);
      }

      if ([symptomCopy bundleId])
      {
        v20 = MEMORY[0x277CCACA8];
        bundleId = [symptomCopy bundleId];
      }

      else
      {
        if (![symptomCopy processName])
        {
          v31 = 0;
          goto LABEL_56;
        }

        v20 = MEMORY[0x277CCACA8];
        bundleId = [symptomCopy processName];
      }

      v31 = [v20 stringWithUTF8String:bundleId];
LABEL_56:
      eventQualifiers5 = [symptomCopy eventQualifiers];
      v33 = [eventQualifiers5 objectForKeyedSubscript:@"0"];

      if (v33)
      {
        v34 = [objc_alloc(MEMORY[0x277CD91A0]) initWithNWActivityClientMetricReport:objc_msgSend(v33 length:{"bytes"), objc_msgSend(v33, "length")}];
        if (v34)
        {
          v35 = objc_autoreleasePoolPush();
          [(NWActivityHandler *)self _handleClientMetric:v34 forBundleID:v31];
          objc_autoreleasePoolPop(v35);
        }

        else
        {
          v45 = metricsLogHandle;
          if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_ERROR))
          {
            v49 = 138412290;
            v50 = symptomCopy;
            _os_log_impl(&dword_23255B000, v45, OS_LOG_TYPE_ERROR, "NWACT: Couldn't create client metric from event %@", &v49, 0xCu);
          }
        }
      }

      else
      {
        v36 = metricsLogHandle;
        if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_ERROR))
        {
          v49 = 138412290;
          v50 = symptomCopy;
          _os_log_impl(&dword_23255B000, v36, OS_LOG_TYPE_ERROR, "NWACT: No client metric data passed for event %@", &v49, 0xCu);
        }
      }

      goto LABEL_97;
    }

    v23 = metricsLogHandle;
    if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_INFO))
    {
      v49 = 138412290;
      v50 = symptomCopy;
      _os_log_impl(&dword_23255B000, v23, OS_LOG_TYPE_INFO, "NWACT: handle libnetcore fragment for event %@", &v49, 0xCu);
    }

    eventQualifiers6 = [symptomCopy eventQualifiers];
    v16 = [eventQualifiers6 objectForKeyedSubscript:@"1"];

    if (!v16)
    {
      v9 = metricsLogHandle;
      if (!os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_97;
      }

      v49 = 138412290;
      v50 = symptomCopy;
      v10 = "NWACT: No stats data passed in event %@";
      goto LABEL_7;
    }

    if ([symptomCopy bundleId])
    {
      v25 = MEMORY[0x277CCACA8];
      bundleId2 = [symptomCopy bundleId];
    }

    else
    {
      if (![symptomCopy processName])
      {
        goto LABEL_76;
      }

      v25 = MEMORY[0x277CCACA8];
      bundleId2 = [symptomCopy processName];
    }

    v17 = [v25 stringWithUTF8String:bundleId2];
    if (v17)
    {
      v39 = [symptomCopy eventQualifierStringForKey:@"2"];
      v40 = [objc_alloc(MEMORY[0x277CD91C0]) initWithTCPReport:objc_msgSend(v16 length:"bytes") clientIdentifier:objc_msgSend(v16 sourceIdentifier:{"length"), v17, v39}];
      v41 = v40;
      if (!v40)
      {
        v46 = metricsLogHandle;
        if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_ERROR))
        {
          v49 = 138412290;
          v50 = symptomCopy;
          _os_log_impl(&dword_23255B000, v46, OS_LOG_TYPE_ERROR, "NWACT: Unable to create NWConnectionStatistics from event %@", &v49, 0xCu);
        }

        goto LABEL_94;
      }

      if (![v40 delegated])
      {
        goto LABEL_92;
      }

      v42 = 0;
      if (![v41 fallbackEligible] || v39)
      {
        goto LABEL_93;
      }

      eventData2 = [symptomCopy eventData];
      if (eventData2)
      {
        v42 = *(eventData2 + 48);
      }

      else
      {
LABEL_92:
        v42 = 0;
      }

LABEL_93:
      v47 = objc_autoreleasePoolPush();
      [(NWActivityHandler *)self _handleNWConnectionStatistics:v41 effectivePid:v42];
      objc_autoreleasePoolPop(v47);
LABEL_94:

      goto LABEL_95;
    }

LABEL_76:
    v44 = metricsLogHandle;
    if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_ERROR))
    {
      v49 = 138412290;
      v50 = symptomCopy;
      _os_log_impl(&dword_23255B000, v44, OS_LOG_TYPE_ERROR, "NWACT: No client information found in event %@", &v49, 0xCu);
    }

    goto LABEL_96;
  }

  v9 = metricsLogHandle;
  if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_ERROR))
  {
    v49 = 138412290;
    v50 = symptomCopy;
    v10 = "NWACT: No symptom subtype passed in event %@";
LABEL_7:
    v11 = v9;
LABEL_10:
    v12 = 12;
LABEL_11:
    _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_ERROR, v10, &v49, v12);
  }

LABEL_97:
  objc_autoreleasePoolPop(v5);

  v48 = *MEMORY[0x277D85DE8];
}

- (NWActivityHandler)init
{
  v40 = *MEMORY[0x277D85DE8];
  v38.receiver = self;
  v38.super_class = NWActivityHandler;
  v2 = [(NWActivityHandler *)&v38 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v4 = dispatch_queue_create("com.apple.symptoms.metrics.queue", v3);
    metricsQueue = v2->_metricsQueue;
    v2->_metricsQueue = v4;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    mappedMetrics = v2->_mappedMetrics;
    v2->_mappedMetrics = dictionary;

    array = [MEMORY[0x277CBEB18] array];
    currentActivities = v2->_currentActivities;
    v2->_currentActivities = array;

    array2 = [MEMORY[0x277CBEB18] array];
    completeActivities = v2->_completeActivities;
    v2->_completeActivities = array2;

    lastWiFiActivity = v2->_lastWiFiActivity;
    v2->_lastWiFiActivity = 0;

    memset(uu, 0, sizeof(uu));
    uuid_clear(uu);
    v13 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:uu];
    nullUUID = v2->_nullUUID;
    v2->_nullUUID = v13;

    v15 = objc_alloc_init(NWUUIDMapper);
    nullUUIDMapper = v2->_nullUUIDMapper;
    v2->_nullUUIDMapper = v15;

    [(NWUUIDMapper *)v2->_nullUUIDMapper setExternalUUID:v2->_nullUUID];
    [(NWUUIDMapper *)v2->_nullUUIDMapper setUsageFlags:[(NWUUIDMapper *)v2->_nullUUIDMapper usageFlags]| 0x8000];
    [(NSMutableDictionary *)v2->_mappedMetrics setObject:v2->_nullUUIDMapper forKeyedSubscript:v2->_nullUUID];
    v17 = [objc_alloc(MEMORY[0x277CD9198]) initWithName:@"batteryAccumulator"];
    batteryAccumulator = v2->_batteryAccumulator;
    v2->_batteryAccumulator = v17;

    v2->_metricsDataWritesBudget = 0;
    v2->_dbWriteState = 0;
    v19 = v2->_metricsQueue;
    v33 = MEMORY[0x277D85DD0];
    v34 = 3221225472;
    v35 = __25__NWActivityHandler_init__block_invoke;
    v36 = &unk_27898A820;
    v37 = v2;
    os_state_add_handler();
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __25__NWActivityHandler_init__block_invoke_2;
    v31[3] = &unk_27898A690;
    v21 = v37;
    v32 = v21;
    v22 = [defaultCenter addObserverForName:@"stateRelay" object:0 queue:0 usingBlock:v31];
    relayReadyObserver = v21->_relayReadyObserver;
    v21->_relayReadyObserver = v22;

    v24 = +[SystemProperties sharedInstance];
    if ([v24 internalBuild] & 1) != 0 || (objc_msgSend(v24, "seedBuild"))
    {
      carrierBuild = 1;
    }

    else
    {
      carrierBuild = [v24 carrierBuild];
    }

    v21->_includeTrialTreatmentID = carrierBuild;
    v26 = v2->_metricsQueue;
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __25__NWActivityHandler_init__block_invoke_4;
    v29[3] = &unk_27898A0C8;
    v30 = v21;
    dispatch_async(v26, v29);
  }

  v27 = *MEMORY[0x277D85DE8];
  return v2;
}

void __25__NWActivityHandler_init__block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 removeObserver:*(*(a1 + 32) + 120)];

  v3 = *(a1 + 32);
  v4 = *(v3 + 120);
  *(v3 + 120) = 0;

  v5 = *(a1 + 32);
  v6 = v5[1];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __25__NWActivityHandler_init__block_invoke_3;
  block[3] = &unk_27898A0C8;
  v8 = v5;
  dispatch_async(v6, block);
}

void __25__NWActivityHandler_init__block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) _stopL2Streaming];
  v5 = +[MotionStateRelay sharedInstance];
  [v5 subscribe];
  v2 = +[PowerStateRelay defaultRelay];
  [v2 addObserver:*(a1 + 32) forKeyPath:@"pluggedIn" options:5 context:0];
  v3 = +[PersonalHotspotRelay sharedInstance];
  [v3 addObserver:*(a1 + 32) forKeyPath:@"softAPClientCount" options:7 context:0];
  [v3 addObserver:*(a1 + 32) forKeyPath:@"wifiNanClientCount" options:7 context:0];
  [*(a1 + 32) setUpBatteryAccumulator];
  v4 = +[PrivacyProxyStateRelay sharedInstance];
}

- (void)dealloc
{
  v3 = +[MotionStateRelay sharedInstance];
  [v3 unsubscribe];
  v4 = +[PowerStateRelay defaultRelay];
  [v4 removeObserver:self forKeyPath:@"pluggedIn"];
  v5 = +[PersonalHotspotRelay sharedInstance];
  [v5 removeObserver:self forKeyPath:@"softAPClientCount"];
  [v5 removeObserver:self forKeyPath:@"wifiNanClientCount"];
  if (self->_relayReadyObserver)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter removeObserver:self->_relayReadyObserver];
  }

  v7.receiver = self;
  v7.super_class = NWActivityHandler;
  [(NWActivityHandler *)&v7 dealloc];
}

- (id)analyticsWorkspace
{
  workspace = self->_workspace;
  if (!workspace)
  {
    v4 = MEMORY[0x277D6B500];
    v5 = +[SystemSettingsRelay defaultRelay];
    symptomEvaluatorDatabaseContainerPath = [v5 symptomEvaluatorDatabaseContainerPath];
    v7 = [v4 workspaceWithName:@"netusage" atPath:symptomEvaluatorDatabaseContainerPath objectModelName:*MEMORY[0x277D6B618] objectModelBundle:0 useReadOnly:0];

    v8 = [v7 copy];
    v9 = self->_workspace;
    self->_workspace = v8;

    workspace = self->_workspace;
  }

  return workspace;
}

- (void)streamDictionaryMetric:(id)metric additionalDictionaryItems:(id)items
{
  v19 = *MEMORY[0x277D85DE8];
  metricCopy = metric;
  itemsCopy = items;
  v7 = itemsCopy;
  if (metricCopy && itemsCopy)
  {
    [metricCopy addEntriesFromDictionary:itemsCopy];
  }

  if ([MEMORY[0x277CCAAA0] isValidJSONObject:metricCopy])
  {
    v16 = 0;
    v8 = [MEMORY[0x277CCAAA0] dataWithJSONObject:metricCopy options:0 error:&v16];
    v9 = v16;
    if (!v9 && v8)
    {
      v10 = metricStreamLogHandle;
      if (os_log_type_enabled(metricStreamLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v11 = MEMORY[0x277CCACA8];
        v12 = v10;
        v13 = [[v11 alloc] initWithData:v8 encoding:4];
        *buf = 138412290;
        v18 = v13;
        _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
      }

      v9 = 0;
    }
  }

  else
  {
    v14 = metricsLogHandle;
    if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_ERROR, "NWACT: Activity Report is not valid JSON, dropping", buf, 2u);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (BOOL)configuredForMetricStreaming
{
  v2 = +[SystemProperties sharedInstance];
  if ([v2 internalBuild])
  {
    has_global_investigation_identifier = nw_activity_has_global_investigation_identifier();
  }

  else
  {
    has_global_investigation_identifier = 0;
  }

  return has_global_investigation_identifier;
}

void __50__NWActivityHandler_serialNumberForInternalBuilds__block_invoke()
{
  v2 = +[SystemProperties sharedInstance];
  if ([v2 internalBuild])
  {
    v0 = [v2 serialNumber];
    v1 = serialNumberForInternalBuilds_internalSerialNumber;
    serialNumberForInternalBuilds_internalSerialNumber = v0;
  }
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__NWActivityHandler_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_pred_38 != -1)
  {
    dispatch_once(&sharedInstance_pred_38, block);
  }

  v2 = sharedInstance_sharedInstance_40;

  return v2;
}

BOOL __35__NWActivityHandler_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance_sharedInstance_40;
  sharedInstance_sharedInstance_40 = v1;

  v3 = sharedInstance_sharedInstance_40;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [ConfigurationHandler setConfigurationObject:v3 forName:v5];

  v6 = sharedInstance_sharedInstance_40;

  return [ManagedEventTransport setInfoProvider:v6 forId:8];
}

+ (id)configureClass:(id)class
{
  classCopy = class;
  v4 = +[NWActivityHandler sharedInstance];
  [v4 configureInstance:classCopy];

  return v4;
}

+ (id)sharedMetricsQueue
{
  v2 = +[NWActivityHandler sharedInstance];
  v3 = v2[1];
  v4 = v3;

  return v3;
}

- (void)enableDBWrites
{
  metricsQueue = self->_metricsQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__NWActivityHandler_enableDBWrites__block_invoke;
  block[3] = &unk_27898A0C8;
  block[4] = self;
  dispatch_async(metricsQueue, block);
}

- (void)_sendDictionaryMetric:(void *)a1 ofType:forActivities:parentActivity:additionalItems:.cold.1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = objc_begin_catch(a1);
  if (OUTLINED_FUNCTION_14())
  {
    OUTLINED_FUNCTION_0_6();
    OUTLINED_FUNCTION_1_5(&dword_23255B000, v2, v3, "NWACT: Exception while trying to encode activity report to JSON Data: %@ (error %@)", v4, v5, v6, v7, v9);
  }

  objc_end_catch();
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_handleCellularItem:(void *)a1 .cold.1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = objc_begin_catch(a1);
  if (OUTLINED_FUNCTION_14())
  {
    OUTLINED_FUNCTION_0_6();
    OUTLINED_FUNCTION_1_5(&dword_23255B000, v2, v3, "NWACT: Exception while trying to encode cellular fragment: %@ (error %@)", v4, v5, v6, v7, v9);
  }

  objc_end_catch();
  v8 = *MEMORY[0x277D85DE8];
}

- (void)streamAWDMetric:(void *)a1 withIdentifier:additionalDictionaryItems:.cold.1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = objc_begin_catch(a1);
  if (OUTLINED_FUNCTION_14())
  {
    OUTLINED_FUNCTION_0_6();
    OUTLINED_FUNCTION_1_5(&dword_23255B000, v2, v3, "Exception while trying to encode metric stream report: %@ (error %@)", v4, v5, v6, v7, v9);
  }

  objc_end_catch();
  v8 = *MEMORY[0x277D85DE8];
}

- (void)streamDictionaryMetric:(void *)a1 additionalDictionaryItems:.cold.1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = objc_begin_catch(a1);
  if (OUTLINED_FUNCTION_14())
  {
    OUTLINED_FUNCTION_0_6();
    OUTLINED_FUNCTION_1_5(&dword_23255B000, v2, v3, "Exception while trying to encode metric stream report: %@ (error %@)", v4, v5, v6, v7, v9);
  }

  objc_end_catch();
  v8 = *MEMORY[0x277D85DE8];
}

@end