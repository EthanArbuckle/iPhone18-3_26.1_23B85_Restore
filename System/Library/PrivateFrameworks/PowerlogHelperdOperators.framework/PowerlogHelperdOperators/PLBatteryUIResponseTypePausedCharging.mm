@interface PLBatteryUIResponseTypePausedCharging
- (_PLTimeIntervalRange)range;
- (id)result;
- (int)configureState:(id)state;
- (void)configure:(id)configure;
- (void)configureCameraStreaming;
- (void)configureTLCWithCameraStreaming;
- (void)getCameraStreamingState;
- (void)getChargingData;
- (void)getTLCWithCameraStreamingState;
- (void)result;
- (void)run;
- (void)setChargingPausedStates;
- (void)setCurrentlyChargingStates;
- (void)setTerminatedChargingStates;
@end

@implementation PLBatteryUIResponseTypePausedCharging

- (void)getChargingData
{
  v6 = *MEMORY[0x277D85DE8];
  [self isCharging];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v1, v2, OS_LOG_TYPE_ERROR, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (int)configureState:(id)state
{
  v75 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  v5 = PLLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [PLBatteryUIResponseTypePausedCharging configureState:];
  }

  v6 = [stateCopy objectForKeyedSubscript:@"timestamp"];
  [v6 doubleValue];
  v8 = v7;

  v9 = [stateCopy objectForKeyedSubscript:@"timestampEnd"];

  if (!v9)
  {
    v31 = [stateCopy objectForKeyedSubscript:@"intervalType"];
    intValue = [v31 intValue];

    v33 = PLLogCommon();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      v74 = intValue;
      _os_log_debug_impl(&dword_25EE51000, v33, OS_LOG_TYPE_DEBUG, "Entry is open: %d", buf, 8u);
    }

    v34 = 1;
    if (intValue <= 6)
    {
      if (intValue != 2)
      {
        if (intValue == 3)
        {
          v47 = PLLogCommon();
          if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
          {
            [PLBatteryUIResponseTypePausedCharging configureState:];
          }

          monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
          entryDate = [stateCopy entryDate];
          [monotonicDate timeIntervalSinceDate:entryDate];
          v51 = v50;

          v52 = PLLogCommon();
          if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
          {
            [PLBatteryUIResponseTypePausedCharging configureState:];
          }

          if (v51 >= 960.0 || v51 <= 0.0)
          {
            v54 = 1;
          }

          else
          {
            v54 = 2;
          }

          if (v51 >= 960.0)
          {
            v34 = 3;
          }

          else
          {
            v34 = v54;
          }
        }

        goto LABEL_81;
      }

      v63 = PLLogCommon();
      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
      {
        [PLBatteryUIResponseTypePausedCharging configureState:];
      }

      [(PLBatteryUIResponseTypePausedCharging *)self setSmartChargingDeadline:0];
      v64 = objc_alloc(MEMORY[0x277D3F078]);
      v65 = [v64 initWithClientName:*MEMORY[0x277D3F080]];
      [(PLBatteryUIResponseTypePausedCharging *)self setSmartChargingClient:v65];

      smartChargingClient = [(PLBatteryUIResponseTypePausedCharging *)self smartChargingClient];
      v72 = 0;
      v59 = [smartChargingClient fullChargeDeadline:&v72];
      v60 = v72;

      if (v60)
      {
        v67 = PLLogCommon();
        if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
        {
          [PLBatteryUIResponseTypePausedCharging configureState:];
        }
      }

      else
      {
        [(PLBatteryUIResponseTypePausedCharging *)self setSmartChargingDeadline:v59];
      }

      v68 = PLLogCommon();
      if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
      {
        [PLBatteryUIResponseTypePausedCharging configureState:?];
      }
    }

    else
    {
      if (intValue != 7)
      {
        if (intValue == 9)
        {
          if (![MEMORY[0x277D3F058] supportsSlowCharging])
          {
LABEL_66:
            v34 = 1;
            goto LABEL_81;
          }

          v62 = PLLogCommon();
          if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
          {
            [PLBatteryUIResponseTypePausedCharging configureState:];
          }
        }

        else
        {
          if (intValue != 8)
          {
            goto LABEL_81;
          }

          v35 = PLLogCommon();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
          {
            [PLBatteryUIResponseTypePausedCharging configureState:];
          }

          fixedChargingLimit = [(PLBatteryUIResponseTypePausedCharging *)self fixedChargingLimit];
          if (fixedChargingLimit)
          {
            v37 = fixedChargingLimit;
            currentChargeLevel = [(PLBatteryUIResponseTypePausedCharging *)self currentChargeLevel];
            if (currentChargeLevel)
            {
              v39 = currentChargeLevel;
              fixedChargingLimit2 = [(PLBatteryUIResponseTypePausedCharging *)self fixedChargingLimit];
              [fixedChargingLimit2 doubleValue];
              v42 = v41;
              currentChargeLevel2 = [(PLBatteryUIResponseTypePausedCharging *)self currentChargeLevel];
              [currentChargeLevel2 doubleValue];
              v45 = v44;

              if (v42 < v45)
              {
                v46 = PLLogCommon();
                if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
                {
                  [PLBatteryUIResponseTypePausedCharging configureState:];
                }

                v34 = 5;
                goto LABEL_81;
              }
            }

            else
            {
            }
          }
        }

LABEL_80:
        v34 = 3;
        goto LABEL_81;
      }

      v55 = PLLogCommon();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
      {
        [PLBatteryUIResponseTypePausedCharging configureState:];
      }

      [(PLBatteryUIResponseTypePausedCharging *)self setCleanEnergyChargingDeadline:0];
      v56 = objc_alloc(MEMORY[0x277D3F078]);
      v57 = [v56 initWithClientName:*MEMORY[0x277D3F080]];
      [(PLBatteryUIResponseTypePausedCharging *)self setCleanEnergyChargingClient:v57];

      cleanEnergyChargingClient = [(PLBatteryUIResponseTypePausedCharging *)self cleanEnergyChargingClient];
      v71 = 0;
      v59 = [cleanEnergyChargingClient cecFullChargeDeadline:&v71];
      v60 = v71;

      if (v60)
      {
        v61 = PLLogCommon();
        if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
        {
          [PLBatteryUIResponseTypePausedCharging configureState:];
        }
      }

      else
      {
        [(PLBatteryUIResponseTypePausedCharging *)self setCleanEnergyChargingDeadline:v59];
      }

      v68 = PLLogCommon();
      if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
      {
        [PLBatteryUIResponseTypePausedCharging configureState:?];
      }
    }

    goto LABEL_80;
  }

  v10 = PLLogCommon();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [PLBatteryUIResponseTypePausedCharging configureState:stateCopy];
  }

  v11 = [stateCopy objectForKeyedSubscript:@"timestampEnd"];
  [v11 timeIntervalSince1970];
  v13 = v12;

  v14 = PLLogCommon();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [PLBatteryUIResponseTypePausedCharging configureState:];
  }

  lastConnectedEntry = [(PLBatteryUIResponseTypePausedCharging *)self lastConnectedEntry];

  v16 = PLLogCommon();
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG);
  if (lastConnectedEntry)
  {
    if (v17)
    {
      [PLBatteryUIResponseTypePausedCharging configureState:?];
    }

    lastConnectedEntry2 = [(PLBatteryUIResponseTypePausedCharging *)self lastConnectedEntry];
    v19 = [lastConnectedEntry2 objectForKeyedSubscript:@"timestamp"];
    [v19 doubleValue];
    v21 = v20;

    lastConnectedEntry3 = [(PLBatteryUIResponseTypePausedCharging *)self lastConnectedEntry];
    v23 = [lastConnectedEntry3 objectForKeyedSubscript:@"timestampEnd"];

    v24 = PLLogCommon();
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG);
    if (v23)
    {
      if (v25)
      {
        [PLBatteryUIResponseTypePausedCharging configureState:];
      }

      lastConnectedEntry4 = [(PLBatteryUIResponseTypePausedCharging *)self lastConnectedEntry];
      v27 = [lastConnectedEntry4 objectForKeyedSubscript:@"timestampEnd"];
      [v27 timeIntervalSince1970];
      v29 = v28;

      v30 = PLLogCommon();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        [PLBatteryUIResponseTypePausedCharging configureState:];
      }

      if (v21 > v13 || v29 < v8)
      {
        goto LABEL_66;
      }
    }

    else
    {
      if (v25)
      {
        [PLBatteryUIResponseTypePausedCharging configureState:];
      }

      if (v21 > v13)
      {
        goto LABEL_66;
      }
    }
  }

  else
  {
    if (v17)
    {
      [PLBatteryUIResponseTypePausedCharging configureState:];
    }
  }

  v34 = 4;
LABEL_81:

  v69 = *MEMORY[0x277D85DE8];
  return v34;
}

- (void)getCameraStreamingState
{
  v23[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCACA8];
  [(PLBatteryUIResponseTypePausedCharging *)self range];
  v5 = v4;
  [(PLBatteryUIResponseTypePausedCharging *)self range];
  v8 = v6 + v7;
  [(PLBatteryUIResponseTypePausedCharging *)self range];
  v10 = v9;
  [(PLBatteryUIResponseTypePausedCharging *)self range];
  v13 = [v3 stringWithFormat:@"((timestamp BETWEEN %f AND %f) AND (%@ BETWEEN %f AND %f)) AND %@=%hd", v5, *&v8, @"timestampEnd", v10, v11 + v12, @"intervalType", 4];
  storage = [(PLBatteryUIResponseTypePausedCharging *)self storage];
  chargingStateIntervalsEntryKey = [(PLBatteryUIResponseTypePausedCharging *)self chargingStateIntervalsEntryKey];
  v23[0] = v13;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
  v17 = [storage lastEntryForKey:chargingStateIntervalsEntryKey withFilters:v16];
  [(PLBatteryUIResponseTypePausedCharging *)self setLastCameraStreamingEntry:v17];

  lastCameraStreamingEntry = [(PLBatteryUIResponseTypePausedCharging *)self lastCameraStreamingEntry];

  v19 = PLLogCommon();
  v20 = os_log_type_enabled(v19, OS_LOG_TYPE_INFO);
  if (lastCameraStreamingEntry)
  {
    if (v20)
    {
      *buf = 0;
      _os_log_impl(&dword_25EE51000, v19, OS_LOG_TYPE_INFO, "Camera Streaming Entry exists in last 24hrs.", buf, 2u);
    }

    [(PLBatteryUIResponseTypePausedCharging *)self configureCameraStreaming];
  }

  else
  {
    if (v20)
    {
      *buf = 0;
      _os_log_impl(&dword_25EE51000, v19, OS_LOG_TYPE_INFO, "No Camera Streaming entries in 24hr time range", buf, 2u);
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)configureCameraStreaming
{
  v47 = *MEMORY[0x277D85DE8];
  [(PLBatteryUIResponseTypePausedCharging *)self setWasCameraStreaming:0];
  v3 = PLLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    lastCameraStreamingEntry = [(PLBatteryUIResponseTypePausedCharging *)self lastCameraStreamingEntry];
    v43 = 138412290;
    v44 = *&lastCameraStreamingEntry;
    _os_log_impl(&dword_25EE51000, v3, OS_LOG_TYPE_INFO, "Camera Entry:%@", &v43, 0xCu);
  }

  lastCameraStreamingEntry2 = [(PLBatteryUIResponseTypePausedCharging *)self lastCameraStreamingEntry];
  v6 = [lastCameraStreamingEntry2 objectForKeyedSubscript:@"timestampEnd"];

  if (!v6)
  {
    goto LABEL_19;
  }

  v7 = PLLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    lastCameraStreamingEntry3 = [(PLBatteryUIResponseTypePausedCharging *)self lastCameraStreamingEntry];
    v9 = [lastCameraStreamingEntry3 objectForKeyedSubscript:@"timestamp"];
    lastCameraStreamingEntry4 = [(PLBatteryUIResponseTypePausedCharging *)self lastCameraStreamingEntry];
    v11 = [lastCameraStreamingEntry4 objectForKeyedSubscript:@"timestampEnd"];
    v43 = 138412546;
    v44 = *&v9;
    v45 = 2112;
    v46 = *&v11;
    _os_log_impl(&dword_25EE51000, v7, OS_LOG_TYPE_INFO, "Last Camera Streaming Entry was opened at %@ and closed at %@", &v43, 0x16u);
  }

  lastCameraStreamingEntry5 = [(PLBatteryUIResponseTypePausedCharging *)self lastCameraStreamingEntry];
  v13 = [lastCameraStreamingEntry5 objectForKeyedSubscript:@"timestamp"];
  [v13 doubleValue];
  v15 = v14;

  lastCameraStreamingEntry6 = [(PLBatteryUIResponseTypePausedCharging *)self lastCameraStreamingEntry];
  v17 = [lastCameraStreamingEntry6 objectForKeyedSubscript:@"timestampEnd"];
  [v17 timeIntervalSince1970];
  v19 = v18;

  v20 = PLLogCommon();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v43 = 134218240;
    v44 = v15;
    v45 = 2048;
    v46 = v19;
    _os_log_impl(&dword_25EE51000, v20, OS_LOG_TYPE_INFO, "Converted values to doubles: start: %f and end: %f", &v43, 0x16u);
  }

  lastConnectedEntry = [(PLBatteryUIResponseTypePausedCharging *)self lastConnectedEntry];

  v22 = PLLogCommon();
  v23 = os_log_type_enabled(v22, OS_LOG_TYPE_INFO);
  if (lastConnectedEntry)
  {
    if (v23)
    {
      lastConnectedEntry2 = [(PLBatteryUIResponseTypePausedCharging *)self lastConnectedEntry];
      v43 = 138412290;
      v44 = *&lastConnectedEntry2;
      _os_log_impl(&dword_25EE51000, v22, OS_LOG_TYPE_INFO, "Connected Entry:%@", &v43, 0xCu);
    }

    lastConnectedEntry3 = [(PLBatteryUIResponseTypePausedCharging *)self lastConnectedEntry];
    v26 = [lastConnectedEntry3 objectForKeyedSubscript:@"timestamp"];
    [v26 doubleValue];
    v28 = v27;

    lastConnectedEntry4 = [(PLBatteryUIResponseTypePausedCharging *)self lastConnectedEntry];
    v30 = [lastConnectedEntry4 objectForKeyedSubscript:@"timestampEnd"];

    v31 = PLLogCommon();
    v32 = os_log_type_enabled(v31, OS_LOG_TYPE_INFO);
    if (v30)
    {
      if (v32)
      {
        LOWORD(v43) = 0;
        _os_log_impl(&dword_25EE51000, v31, OS_LOG_TYPE_INFO, "Closed External Connected Entry", &v43, 2u);
      }

      lastConnectedEntry5 = [(PLBatteryUIResponseTypePausedCharging *)self lastConnectedEntry];
      v34 = [lastConnectedEntry5 objectForKeyedSubscript:@"timestampEnd"];
      [v34 timeIntervalSince1970];
      v36 = v35;

      v37 = PLLogCommon();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        v43 = 134218240;
        v44 = v28;
        v45 = 2048;
        v46 = v36;
        _os_log_impl(&dword_25EE51000, v37, OS_LOG_TYPE_INFO, "start: %f, end: %f", &v43, 0x16u);
      }

      if (v28 <= v19 && v36 >= v15)
      {
LABEL_18:
        [(PLBatteryUIResponseTypePausedCharging *)self setWasCameraStreaming:1];
      }
    }

    else
    {
      if (v32)
      {
        LOWORD(v43) = 0;
        _os_log_impl(&dword_25EE51000, v31, OS_LOG_TYPE_INFO, "Open External Connected Entry", &v43, 2u);
      }

      if (v28 <= v19)
      {
        goto LABEL_18;
      }
    }

LABEL_19:
    v22 = PLLogCommon();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      wasCameraStreaming = [(PLBatteryUIResponseTypePausedCharging *)self wasCameraStreaming];
      v43 = 67109120;
      LODWORD(v44) = wasCameraStreaming;
      v39 = "Was Camera Streaming: %d";
      v40 = v22;
      v41 = 8;
LABEL_23:
      _os_log_impl(&dword_25EE51000, v40, OS_LOG_TYPE_INFO, v39, &v43, v41);
      goto LABEL_24;
    }

    goto LABEL_24;
  }

  if (v23)
  {
    LOWORD(v43) = 0;
    v39 = "No External Connected Entry exists in last 24hrs";
    v40 = v22;
    v41 = 2;
    goto LABEL_23;
  }

LABEL_24:

  v42 = *MEMORY[0x277D85DE8];
}

- (void)getTLCWithCameraStreamingState
{
  v23[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCACA8];
  [(PLBatteryUIResponseTypePausedCharging *)self range];
  v5 = v4;
  [(PLBatteryUIResponseTypePausedCharging *)self range];
  v8 = v6 + v7;
  [(PLBatteryUIResponseTypePausedCharging *)self range];
  v10 = v9;
  [(PLBatteryUIResponseTypePausedCharging *)self range];
  v13 = [v3 stringWithFormat:@"((timestamp BETWEEN %f AND %f) AND (%@ BETWEEN %f AND %f)) AND %@=%hd", v5, *&v8, @"timestampEnd", v10, v11 + v12, @"intervalType", 6];
  storage = [(PLBatteryUIResponseTypePausedCharging *)self storage];
  chargingStateIntervalsEntryKey = [(PLBatteryUIResponseTypePausedCharging *)self chargingStateIntervalsEntryKey];
  v23[0] = v13;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
  v17 = [storage lastEntryForKey:chargingStateIntervalsEntryKey withFilters:v16];
  [(PLBatteryUIResponseTypePausedCharging *)self setLastTLCWithCameraStreamingEntry:v17];

  lastTLCWithCameraStreamingEntry = [(PLBatteryUIResponseTypePausedCharging *)self lastTLCWithCameraStreamingEntry];

  v19 = PLLogCommon();
  v20 = os_log_type_enabled(v19, OS_LOG_TYPE_INFO);
  if (lastTLCWithCameraStreamingEntry)
  {
    if (v20)
    {
      *buf = 0;
      _os_log_impl(&dword_25EE51000, v19, OS_LOG_TYPE_INFO, "TLC with Camera Streaming Entry exists in last 24hrs.", buf, 2u);
    }

    [(PLBatteryUIResponseTypePausedCharging *)self configureTLCWithCameraStreaming];
  }

  else
  {
    if (v20)
    {
      *buf = 0;
      _os_log_impl(&dword_25EE51000, v19, OS_LOG_TYPE_INFO, "No TLC with Camera Streaming entries in 24hr time range", buf, 2u);
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)configureTLCWithCameraStreaming
{
  v47 = *MEMORY[0x277D85DE8];
  [(PLBatteryUIResponseTypePausedCharging *)self setWasTLCWithCameraStreaming:0];
  v3 = PLLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    lastTLCWithCameraStreamingEntry = [(PLBatteryUIResponseTypePausedCharging *)self lastTLCWithCameraStreamingEntry];
    v43 = 138412290;
    v44 = *&lastTLCWithCameraStreamingEntry;
    _os_log_impl(&dword_25EE51000, v3, OS_LOG_TYPE_INFO, "TLC with Camera Entry:%@", &v43, 0xCu);
  }

  lastTLCWithCameraStreamingEntry2 = [(PLBatteryUIResponseTypePausedCharging *)self lastTLCWithCameraStreamingEntry];
  v6 = [lastTLCWithCameraStreamingEntry2 objectForKeyedSubscript:@"timestampEnd"];

  if (!v6)
  {
    goto LABEL_19;
  }

  v7 = PLLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    lastTLCWithCameraStreamingEntry3 = [(PLBatteryUIResponseTypePausedCharging *)self lastTLCWithCameraStreamingEntry];
    v9 = [lastTLCWithCameraStreamingEntry3 objectForKeyedSubscript:@"timestamp"];
    lastTLCWithCameraStreamingEntry4 = [(PLBatteryUIResponseTypePausedCharging *)self lastTLCWithCameraStreamingEntry];
    v11 = [lastTLCWithCameraStreamingEntry4 objectForKeyedSubscript:@"timestampEnd"];
    v43 = 138412546;
    v44 = *&v9;
    v45 = 2112;
    v46 = *&v11;
    _os_log_impl(&dword_25EE51000, v7, OS_LOG_TYPE_INFO, "Last TLC with Camera Streaming Entry was opened at %@ and closed at %@", &v43, 0x16u);
  }

  lastTLCWithCameraStreamingEntry5 = [(PLBatteryUIResponseTypePausedCharging *)self lastTLCWithCameraStreamingEntry];
  v13 = [lastTLCWithCameraStreamingEntry5 objectForKeyedSubscript:@"timestamp"];
  [v13 doubleValue];
  v15 = v14;

  lastTLCWithCameraStreamingEntry6 = [(PLBatteryUIResponseTypePausedCharging *)self lastTLCWithCameraStreamingEntry];
  v17 = [lastTLCWithCameraStreamingEntry6 objectForKeyedSubscript:@"timestampEnd"];
  [v17 timeIntervalSince1970];
  v19 = v18;

  v20 = PLLogCommon();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v43 = 134218240;
    v44 = v15;
    v45 = 2048;
    v46 = v19;
    _os_log_impl(&dword_25EE51000, v20, OS_LOG_TYPE_INFO, "Converted values to doubles: start: %f and end: %f", &v43, 0x16u);
  }

  lastConnectedEntry = [(PLBatteryUIResponseTypePausedCharging *)self lastConnectedEntry];

  v22 = PLLogCommon();
  v23 = os_log_type_enabled(v22, OS_LOG_TYPE_INFO);
  if (lastConnectedEntry)
  {
    if (v23)
    {
      lastConnectedEntry2 = [(PLBatteryUIResponseTypePausedCharging *)self lastConnectedEntry];
      v43 = 138412290;
      v44 = *&lastConnectedEntry2;
      _os_log_impl(&dword_25EE51000, v22, OS_LOG_TYPE_INFO, "Connected Entry:%@", &v43, 0xCu);
    }

    lastConnectedEntry3 = [(PLBatteryUIResponseTypePausedCharging *)self lastConnectedEntry];
    v26 = [lastConnectedEntry3 objectForKeyedSubscript:@"timestamp"];
    [v26 doubleValue];
    v28 = v27;

    lastConnectedEntry4 = [(PLBatteryUIResponseTypePausedCharging *)self lastConnectedEntry];
    v30 = [lastConnectedEntry4 objectForKeyedSubscript:@"timestampEnd"];

    v31 = PLLogCommon();
    v32 = os_log_type_enabled(v31, OS_LOG_TYPE_INFO);
    if (v30)
    {
      if (v32)
      {
        LOWORD(v43) = 0;
        _os_log_impl(&dword_25EE51000, v31, OS_LOG_TYPE_INFO, "Closed External Connected Entry", &v43, 2u);
      }

      lastConnectedEntry5 = [(PLBatteryUIResponseTypePausedCharging *)self lastConnectedEntry];
      v34 = [lastConnectedEntry5 objectForKeyedSubscript:@"timestampEnd"];
      [v34 timeIntervalSince1970];
      v36 = v35;

      v37 = PLLogCommon();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        v43 = 134218240;
        v44 = v28;
        v45 = 2048;
        v46 = v36;
        _os_log_impl(&dword_25EE51000, v37, OS_LOG_TYPE_INFO, "start: %f, end: %f", &v43, 0x16u);
      }

      if (v28 <= v19 && v36 >= v15)
      {
LABEL_18:
        [(PLBatteryUIResponseTypePausedCharging *)self setWasTLCWithCameraStreaming:1];
      }
    }

    else
    {
      if (v32)
      {
        LOWORD(v43) = 0;
        _os_log_impl(&dword_25EE51000, v31, OS_LOG_TYPE_INFO, "Open External Connected Entry", &v43, 2u);
      }

      if (v28 <= v19)
      {
        goto LABEL_18;
      }
    }

LABEL_19:
    v22 = PLLogCommon();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      wasTLCWithCameraStreaming = [(PLBatteryUIResponseTypePausedCharging *)self wasTLCWithCameraStreaming];
      v43 = 67109120;
      LODWORD(v44) = wasTLCWithCameraStreaming;
      v39 = "Was TLC with Camera Streaming: %d";
      v40 = v22;
      v41 = 8;
LABEL_23:
      _os_log_impl(&dword_25EE51000, v40, OS_LOG_TYPE_INFO, v39, &v43, v41);
      goto LABEL_24;
    }

    goto LABEL_24;
  }

  if (v23)
  {
    LOWORD(v43) = 0;
    v39 = "No External Connected Entry exists in last 24hrs";
    v40 = v22;
    v41 = 2;
    goto LABEL_23;
  }

LABEL_24:

  v42 = *MEMORY[0x277D85DE8];
}

- (void)configure:(id)configure
{
  [(PLBatteryUIResponseTypePausedCharging *)self setPausedChargingState:100];
  [(PLBatteryUIResponseTypePausedCharging *)self setIntervalStateTLC:1];
  [(PLBatteryUIResponseTypePausedCharging *)self setIntervalStateSmartCharging:1];
  [(PLBatteryUIResponseTypePausedCharging *)self getChargingData];
  [(PLBatteryUIResponseTypePausedCharging *)self getCameraStreamingState];
  [(PLBatteryUIResponseTypePausedCharging *)self getTLCWithCameraStreamingState];
  [(PLBatteryUIResponseTypePausedCharging *)self setIntervalStateFixedCharging:[(PLBatteryUIResponseTypePausedCharging *)self getState:8]];
  v4 = PLLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [PLBatteryUIResponseTypePausedCharging configure:?];
  }

  if ([MEMORY[0x277D3F058] supportsSlowCharging])
  {
    [(PLBatteryUIResponseTypePausedCharging *)self setIntervalStateChargingSpeed:[(PLBatteryUIResponseTypePausedCharging *)self getState:9]];
    v5 = PLLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [PLBatteryUIResponseTypePausedCharging configure:?];
    }
  }

  [(PLBatteryUIResponseTypePausedCharging *)self setIntervalStateSmartCharging:[(PLBatteryUIResponseTypePausedCharging *)self getState:2]];
  v6 = PLLogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [PLBatteryUIResponseTypePausedCharging configure:?];
  }

  [(PLBatteryUIResponseTypePausedCharging *)self setIntervalStateCEC:[(PLBatteryUIResponseTypePausedCharging *)self getState:7]];
  v7 = PLLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [PLBatteryUIResponseTypePausedCharging configure:?];
  }

  [(PLBatteryUIResponseTypePausedCharging *)self setIntervalStateTLC:[(PLBatteryUIResponseTypePausedCharging *)self getState:3]];
  v8 = PLLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [PLBatteryUIResponseTypePausedCharging configure:?];
  }
}

- (void)setCurrentlyChargingStates
{
  v3 = PLLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [PLBatteryUIResponseTypePausedCharging setCurrentlyChargingStates];
  }

  if ([(PLBatteryUIResponseTypePausedCharging *)self intervalStateCEC]== 4)
  {
    v4 = PLLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [PLBatteryUIResponseTypePausedCharging setCurrentlyChargingStates];
    }

    v5 = 306;
    goto LABEL_33;
  }

  if ([MEMORY[0x277D3F058] supportsSlowCharging] && -[PLBatteryUIResponseTypePausedCharging intervalStateChargingSpeed](self, "intervalStateChargingSpeed") == 3)
  {
    v4 = PLLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [PLBatteryUIResponseTypePausedCharging setCurrentlyChargingStates];
    }

    v5 = 601;
    goto LABEL_33;
  }

  if ([(PLBatteryUIResponseTypePausedCharging *)self intervalStateSmartCharging]== 1 && [(PLBatteryUIResponseTypePausedCharging *)self intervalStateTLC]== 1)
  {
    v4 = PLLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [PLBatteryUIResponseTypePausedCharging setCurrentlyChargingStates];
    }

LABEL_32:
    v5 = 200;
    goto LABEL_33;
  }

  if ([(PLBatteryUIResponseTypePausedCharging *)self intervalStateSmartCharging]== 4 && [(PLBatteryUIResponseTypePausedCharging *)self intervalStateTLC]== 1)
  {
    v4 = PLLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [PLBatteryUIResponseTypePausedCharging setCurrentlyChargingStates];
    }

    goto LABEL_29;
  }

  if ([(PLBatteryUIResponseTypePausedCharging *)self intervalStateSmartCharging]!= 1 || [(PLBatteryUIResponseTypePausedCharging *)self intervalStateTLC]!= 4)
  {
    if ([(PLBatteryUIResponseTypePausedCharging *)self intervalStateSmartCharging]!= 4 || [(PLBatteryUIResponseTypePausedCharging *)self intervalStateTLC]!= 4)
    {
      v4 = PLLogCommon();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        [PLBatteryUIResponseTypePausedCharging setCurrentlyChargingStates];
      }

      goto LABEL_32;
    }

    v4 = PLLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [PLBatteryUIResponseTypePausedCharging setCurrentlyChargingStates];
    }

LABEL_29:
    v5 = 301;
    goto LABEL_33;
  }

  v4 = PLLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [PLBatteryUIResponseTypePausedCharging setCurrentlyChargingStates];
  }

  v5 = 302;
LABEL_33:

  [(PLBatteryUIResponseTypePausedCharging *)self setPausedChargingState:v5];
}

- (void)setChargingPausedStates
{
  v3 = PLLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_25EE51000, v3, OS_LOG_TYPE_INFO, "Setting Charging Paused States", v8, 2u);
  }

  if ([MEMORY[0x277D3F058] supportsSlowCharging] && -[PLBatteryUIResponseTypePausedCharging intervalStateChargingSpeed](self, "intervalStateChargingSpeed") == 3)
  {
    v4 = PLLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [PLBatteryUIResponseTypePausedCharging setChargingPausedStates];
    }

    v5 = 601;
    goto LABEL_34;
  }

  if ([(PLBatteryUIResponseTypePausedCharging *)self intervalStateFixedCharging]== 3)
  {
    v4 = PLLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [PLBatteryUIResponseTypePausedCharging setChargingPausedStates];
    }

    v5 = 205;
    goto LABEL_34;
  }

  if ([(PLBatteryUIResponseTypePausedCharging *)self intervalStateFixedCharging]== 5)
  {
    v4 = PLLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [PLBatteryUIResponseTypePausedCharging setChargingPausedStates];
    }

    v5 = 206;
    goto LABEL_34;
  }

  if ([(PLBatteryUIResponseTypePausedCharging *)self intervalStateSmartCharging]== 3)
  {
    v4 = PLLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [PLBatteryUIResponseTypePausedCharging setChargingPausedStates];
    }

    v5 = 401;
    goto LABEL_34;
  }

  if ([(PLBatteryUIResponseTypePausedCharging *)self intervalStateCEC]== 3)
  {
    v4 = PLLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [PLBatteryUIResponseTypePausedCharging setChargingPausedStates];
    }

    v5 = 406;
    goto LABEL_34;
  }

  if ([(PLBatteryUIResponseTypePausedCharging *)self intervalStateTLC]== 2)
  {
    v4 = PLLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [PLBatteryUIResponseTypePausedCharging setChargingPausedStates];
    }

LABEL_33:
    v5 = 200;
    goto LABEL_34;
  }

  intervalStateTLC = [(PLBatteryUIResponseTypePausedCharging *)self intervalStateTLC];
  v4 = PLLogCommon();
  v7 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
  if (intervalStateTLC != 3)
  {
    if (v7)
    {
      [PLBatteryUIResponseTypePausedCharging setChargingPausedStates];
    }

    goto LABEL_33;
  }

  if (v7)
  {
    [PLBatteryUIResponseTypePausedCharging setChargingPausedStates];
  }

  v5 = 402;
LABEL_34:

  [(PLBatteryUIResponseTypePausedCharging *)self setPausedChargingState:v5];
}

- (void)setTerminatedChargingStates
{
  v3 = PLLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v23 = 0;
    _os_log_impl(&dword_25EE51000, v3, OS_LOG_TYPE_INFO, "Setting Charging Terminated States", v23, 2u);
  }

  v4 = *MEMORY[0x277CBF040];
  v5 = *MEMORY[0x277CBF030];
  +[PLUtilities containerPath];
  v6 = _CFPreferencesCopyValueWithContainer();
  if ([v6 intValue] == 100)
  {
    v7 = PLLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [PLBatteryUIResponseTypePausedCharging setTerminatedChargingStates];
    }

LABEL_6:

LABEL_7:
    v8 = 202;
    goto LABEL_43;
  }

  if ([(PLBatteryUIResponseTypePausedCharging *)self wasTLCWithCameraStreaming])
  {
    v9 = PLLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [PLBatteryUIResponseTypePausedCharging setTerminatedChargingStates];
    }

    v8 = 505;
    goto LABEL_43;
  }

  if ([(PLBatteryUIResponseTypePausedCharging *)self wasCameraStreaming])
  {
    v10 = PLLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [PLBatteryUIResponseTypePausedCharging setTerminatedChargingStates];
    }

    v8 = 503;
    goto LABEL_43;
  }

  if ([(PLBatteryUIResponseTypePausedCharging *)self intervalStateFixedCharging]== 4)
  {
    fixedChargingLimit = [(PLBatteryUIResponseTypePausedCharging *)self fixedChargingLimit];
    if (fixedChargingLimit)
    {
      v12 = fixedChargingLimit;
      currentChargeLevel = [(PLBatteryUIResponseTypePausedCharging *)self currentChargeLevel];
      if (currentChargeLevel)
      {
        v14 = currentChargeLevel;
        fixedChargingLimit2 = [(PLBatteryUIResponseTypePausedCharging *)self fixedChargingLimit];
        intValue = [fixedChargingLimit2 intValue];
        currentChargeLevel2 = [(PLBatteryUIResponseTypePausedCharging *)self currentChargeLevel];
        intValue2 = [currentChargeLevel2 intValue];

        if (intValue < intValue2)
        {
          v8 = 508;
          goto LABEL_43;
        }
      }

      else
      {
      }
    }

    v8 = 507;
    goto LABEL_43;
  }

  if ([(PLBatteryUIResponseTypePausedCharging *)self intervalStateCEC]== 4)
  {
    v19 = PLLogCommon();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      [PLBatteryUIResponseTypePausedCharging setCurrentlyChargingStates];
    }

    v8 = 506;
    goto LABEL_43;
  }

  if ([(PLBatteryUIResponseTypePausedCharging *)self intervalStateCEC]== 1 && [(PLBatteryUIResponseTypePausedCharging *)self intervalStateSmartCharging]== 1 && [(PLBatteryUIResponseTypePausedCharging *)self intervalStateTLC]== 1)
  {
    goto LABEL_7;
  }

  if ([(PLBatteryUIResponseTypePausedCharging *)self intervalStateSmartCharging]== 1 && [(PLBatteryUIResponseTypePausedCharging *)self intervalStateTLC]== 1)
  {
    v7 = PLLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [PLBatteryUIResponseTypePausedCharging setCurrentlyChargingStates];
    }

    goto LABEL_6;
  }

  if ([(PLBatteryUIResponseTypePausedCharging *)self intervalStateSmartCharging]== 4 && [(PLBatteryUIResponseTypePausedCharging *)self intervalStateTLC]== 1)
  {
    v20 = PLLogCommon();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      [PLBatteryUIResponseTypePausedCharging setCurrentlyChargingStates];
    }

LABEL_48:

    v8 = 501;
    goto LABEL_43;
  }

  if ([(PLBatteryUIResponseTypePausedCharging *)self intervalStateSmartCharging]== 1 && [(PLBatteryUIResponseTypePausedCharging *)self intervalStateTLC]== 4)
  {
    v21 = PLLogCommon();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      [PLBatteryUIResponseTypePausedCharging setCurrentlyChargingStates];
    }

    v8 = 502;
  }

  else
  {
    if ([(PLBatteryUIResponseTypePausedCharging *)self intervalStateSmartCharging]== 4 && [(PLBatteryUIResponseTypePausedCharging *)self intervalStateTLC]== 4)
    {
      v20 = PLLogCommon();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        [PLBatteryUIResponseTypePausedCharging setCurrentlyChargingStates];
      }

      goto LABEL_48;
    }

    v22 = PLLogCommon();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      [PLBatteryUIResponseTypePausedCharging setTerminatedChargingStates];
    }

    v8 = 100;
  }

LABEL_43:
  [(PLBatteryUIResponseTypePausedCharging *)self setPausedChargingState:v8];
}

- (void)run
{
  v14 = *MEMORY[0x277D85DE8];
  currentChargeLevel = [(PLBatteryUIResponseTypePausedCharging *)self currentChargeLevel];
  [currentChargeLevel doubleValue];
  v5 = v4;

  if (v5 >= 100.0)
  {
    v9 = PLLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [PLBatteryUIResponseTypePausedCharging run];
    }

    [(PLBatteryUIResponseTypePausedCharging *)self setPausedChargingState:201];
    if ([(PLBatteryUIResponseTypePausedCharging *)self externalConnected])
    {
      [(PLBatteryUIResponseTypePausedCharging *)self setPausedChargingState:203];
    }
  }

  else if ([(PLBatteryUIResponseTypePausedCharging *)self externalConnected])
  {
    isCharging = [(PLBatteryUIResponseTypePausedCharging *)self isCharging];
    v7 = PLLogCommon();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
    if (isCharging)
    {
      if (v8)
      {
        [PLBatteryUIResponseTypePausedCharging run];
      }

      [(PLBatteryUIResponseTypePausedCharging *)self setCurrentlyChargingStates];
    }

    else
    {
      if (v8)
      {
        [PLBatteryUIResponseTypePausedCharging run];
      }

      [(PLBatteryUIResponseTypePausedCharging *)self setChargingPausedStates];
    }
  }

  else
  {
    v10 = PLLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [PLBatteryUIResponseTypePausedCharging run];
    }

    [(PLBatteryUIResponseTypePausedCharging *)self setTerminatedChargingStates];
  }

  v11 = PLLogCommon();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13[0] = 67109120;
    v13[1] = [(PLBatteryUIResponseTypePausedCharging *)self pausedChargingState];
    _os_log_impl(&dword_25EE51000, v11, OS_LOG_TYPE_DEFAULT, "Paused Charging State set to: %d", v13, 8u);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)result
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [(PLBatteryUIResponseTypePausedCharging *)self setResultDictionary:v3];

  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[PLBatteryUIResponseTypePausedCharging pausedChargingState](self, "pausedChargingState")}];
  resultDictionary = [(PLBatteryUIResponseTypePausedCharging *)self resultDictionary];
  [resultDictionary setObject:v4 forKeyedSubscript:@"PLBatteryUIPausedChargingStateKey"];

  currentChargeLevel = [(PLBatteryUIResponseTypePausedCharging *)self currentChargeLevel];
  resultDictionary2 = [(PLBatteryUIResponseTypePausedCharging *)self resultDictionary];
  [resultDictionary2 setObject:currentChargeLevel forKeyedSubscript:@"PLBatteryUIPausedChargingCurrentPercentageKey"];

  fixedChargingLimit = [(PLBatteryUIResponseTypePausedCharging *)self fixedChargingLimit];

  if (fixedChargingLimit)
  {
    fixedChargingLimit2 = [(PLBatteryUIResponseTypePausedCharging *)self fixedChargingLimit];
    resultDictionary3 = [(PLBatteryUIResponseTypePausedCharging *)self resultDictionary];
    [resultDictionary3 setObject:fixedChargingLimit2 forKeyedSubscript:@"PLBatteryUIPausedChargingFixedChargeLimitKey"];
  }

  smartChargingDeadline = [(PLBatteryUIResponseTypePausedCharging *)self smartChargingDeadline];

  smartChargingDeadline2 = PLLogCommon();
  v13 = os_log_type_enabled(smartChargingDeadline2, OS_LOG_TYPE_ERROR);
  if (smartChargingDeadline)
  {
    if (v13)
    {
      [(PLBatteryUIResponseTypePausedCharging *)self result];
    }

    smartChargingDeadline2 = [(PLBatteryUIResponseTypePausedCharging *)self smartChargingDeadline];
    resultDictionary4 = [(PLBatteryUIResponseTypePausedCharging *)self resultDictionary];
    [resultDictionary4 setObject:smartChargingDeadline2 forKeyedSubscript:@"PLBatteryUIScheduleOBCKey"];
  }

  else if (v13)
  {
    [PLBatteryUIResponseTypePausedCharging result];
  }

  cleanEnergyChargingDeadline = [(PLBatteryUIResponseTypePausedCharging *)self cleanEnergyChargingDeadline];

  cleanEnergyChargingDeadline2 = PLLogCommon();
  v17 = os_log_type_enabled(cleanEnergyChargingDeadline2, OS_LOG_TYPE_ERROR);
  if (cleanEnergyChargingDeadline)
  {
    if (v17)
    {
      [(PLBatteryUIResponseTypePausedCharging *)self result];
    }

    cleanEnergyChargingDeadline2 = [(PLBatteryUIResponseTypePausedCharging *)self cleanEnergyChargingDeadline];
    resultDictionary5 = [(PLBatteryUIResponseTypePausedCharging *)self resultDictionary];
    [resultDictionary5 setObject:cleanEnergyChargingDeadline2 forKeyedSubscript:@"PLBatteryUIScheduleCECKey"];
  }

  else if (v17)
  {
    [PLBatteryUIResponseTypePausedCharging result];
  }

  resultDictionary6 = [(PLBatteryUIResponseTypePausedCharging *)self resultDictionary];

  return resultDictionary6;
}

- (_PLTimeIntervalRange)range
{
  objc_copyStruct(v4, &self->_range, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.length = v3;
  result.location = v2;
  return result;
}

- (void)configureState:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)configureState:(void *)a1 .cold.2(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [a1 objectForKeyedSubscript:@"timestamp"];
  v3 = [a1 objectForKeyedSubscript:@"timestampEnd"];
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)configureState:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)configureState:(void *)a1 .cold.4(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 lastConnectedEntry];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)configureState:.cold.6()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)configureState:.cold.10()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)configureState:.cold.12()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_25EE51000, v0, OS_LOG_TYPE_ERROR, "Clean Energy Charge Deadline Error: %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)configureState:(void *)a1 .cold.13(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 cleanEnergyChargingDeadline];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)configureState:.cold.15()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)configureState:(void *)a1 .cold.16(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 smartChargingDeadline];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)configure:(void *)a1 .cold.1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 intervalStateFixedCharging];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)configure:(void *)a1 .cold.2(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 intervalStateChargingSpeed];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)configure:(void *)a1 .cold.3(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 intervalStateSmartCharging];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)configure:(void *)a1 .cold.4(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 intervalStateCEC];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)configure:(void *)a1 .cold.5(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 intervalStateTLC];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)result
{
  v7 = *MEMORY[0x277D85DE8];
  cleanEnergyChargingDeadline = [self cleanEnergyChargingDeadline];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

@end