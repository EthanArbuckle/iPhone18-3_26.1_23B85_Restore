@interface SAAnalytics
- (SAAnalytics)init;
- (SAAnalytics)initWithSettings:(id)a3;
- (void)addAggressiveScanRequest:(BOOL)a3;
- (void)addAlertWithContext:(id)a3;
- (void)addDeviceFetchResultCount:(unint64_t)a3 type1count:(unint64_t)a4 type2count:(unint64_t)a5 type3count:(unint64_t)a6 type4count:(unint64_t)a7 type5count:(unint64_t)a8 type6count:(unint64_t)a9 type7count:(unint64_t)a10 type8count:(unint64_t)a11 safeCount:(unint64_t)a12 usingSameSafe:(BOOL)a13;
- (void)addScanDuration:(double)a3;
- (void)addScanDurationForFindingRelevantItemsOnly:(double)a3;
- (void)addWakeTimerRequest;
- (void)publishAndResetAggregation;
- (void)resetAggregation;
- (void)setActiveState:(BOOL)a3;
- (void)setInSafeLocationState:(BOOL)a3;
- (void)setInTravelState:(BOOL)a3;
- (void)setInUnsafeLocationState:(BOOL)a3;
- (void)submitAlertRateEvent:(id)a3 alertType:(id)a4;
- (void)submitDefaultAlertRateEvent;
- (void)submitEvent:(id)a3 content:(id)a4;
@end

@implementation SAAnalytics

- (SAAnalytics)init
{
  v3 = objc_alloc_init(SAAnalyticsSettings);
  v4 = [(SAAnalytics *)self initWithSettings:v3];

  return v4;
}

- (SAAnalytics)initWithSettings:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = SAAnalytics;
  v6 = [(SAAnalytics *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_settings, a3);
  }

  lastActivated = v7->_lastActivated;
  v7->_lastActivated = 0;

  lastSafeEntry = v7->_lastSafeEntry;
  v7->_lastSafeEntry = 0;

  lastUnsafeEntry = v7->_lastUnsafeEntry;
  v7->_lastUnsafeEntry = 0;

  lastTravelStart = v7->_lastTravelStart;
  v7->_lastTravelStart = 0;

  [(SAAnalytics *)v7 setNumDevicesAtSafeExit:-1];
  v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [(SAAnalytics *)v7 setNumEnabledPerType:v12];

  return v7;
}

- (void)submitEvent:(id)a3 content:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(SAAnalyticsSettings *)self->_settings enableSubmission];
  v9 = TASALog;
  v10 = os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v10)
    {
      *buf = 68289539;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      v17 = 2113;
      v18 = v6;
      v19 = 2113;
      v20 = v7;
      _os_log_impl(&dword_2656EA000, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAAnalytics Submitting analytics event, eventName:%{private}@, content:%{private}@}", buf, 0x26u);
    }

    v12 = v7;
    AnalyticsSendEventLazy();
  }

  else if (v10)
  {
    *buf = 68289539;
    v14 = 0;
    v15 = 2082;
    v16 = "";
    v17 = 2113;
    v18 = v6;
    v19 = 2113;
    v20 = v7;
    _os_log_impl(&dword_2656EA000, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAAnalytics submission not enabled, eventName:%{private}@, content:%{private}@}", buf, 0x26u);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)publishAndResetAggregation
{
  v83[31] = *MEMORY[0x277D85DE8];
  v3 = [(SAAnalytics *)self lastActivated];

  if (v3)
  {
    v4 = [MEMORY[0x277CBEAA8] now];
    v5 = [(SAAnalytics *)self lastActivated];
    [v4 timeIntervalSinceDate:v5];
    [(SAAnalytics *)self setAggActiveDuration:[(SAAnalytics *)self aggActiveDuration]+ v6];

    v7 = [MEMORY[0x277CBEAA8] now];
    [(SAAnalytics *)self setLastActivated:v7];
  }

  v8 = [(SAAnalytics *)self lastSafeEntry];

  if (v8)
  {
    v9 = [MEMORY[0x277CBEAA8] now];
    v10 = [(SAAnalytics *)self lastSafeEntry];
    [v9 timeIntervalSinceDate:v10];
    [(SAAnalytics *)self setAggInSafeDuration:[(SAAnalytics *)self aggInSafeDuration]+ v11];

    v12 = [MEMORY[0x277CBEAA8] now];
    [(SAAnalytics *)self setLastSafeEntry:v12];
  }

  v13 = [(SAAnalytics *)self lastUnsafeEntry];

  if (v13)
  {
    v14 = [MEMORY[0x277CBEAA8] now];
    v15 = [(SAAnalytics *)self lastUnsafeEntry];
    [v14 timeIntervalSinceDate:v15];
    [(SAAnalytics *)self setAggInUnsafeDuration:[(SAAnalytics *)self aggInUnsafeDuration]+ v16];

    v17 = [MEMORY[0x277CBEAA8] now];
    [(SAAnalytics *)self setLastUnsafeEntry:v17];
  }

  v18 = [(SAAnalytics *)self lastTravelStart];

  if (v18)
  {
    v19 = [MEMORY[0x277CBEAA8] now];
    v20 = [(SAAnalytics *)self lastTravelStart];
    [v19 timeIntervalSinceDate:v20];
    [(SAAnalytics *)self setAggInTravelDuration:[(SAAnalytics *)self aggInTravelDuration]+ v21];

    v22 = [MEMORY[0x277CBEAA8] now];
    [(SAAnalytics *)self setLastTravelStart:v22];
  }

  v82[0] = @"numAlerts";
  v81 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SAAnalytics numAlerts](self, "numAlerts")}];
  v83[0] = v81;
  v82[1] = @"numAlertsLeftBehind";
  v80 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SAAnalytics numAlertsLeftBehind](self, "numAlertsLeftBehind")}];
  v83[1] = v80;
  v82[2] = @"numAlertsTraveling";
  v79 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SAAnalytics numAlertsTraveling](self, "numAlertsTraveling")}];
  v83[2] = v79;
  v82[3] = @"numEnabled";
  v78 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SAAnalytics numEnabled](self, "numEnabled")}];
  v83[3] = v78;
  v82[4] = @"numItems";
  v77 = [(SAAnalytics *)self numEnabledPerType];
  v23 = [v77 objectForKey:&unk_287710150];
  v76 = v23;
  if (v23)
  {
    v24 = v23;
  }

  else
  {
    v24 = &unk_287710168;
  }

  v83[4] = v24;
  v82[5] = @"numAccessories";
  v75 = [(SAAnalytics *)self numEnabledPerType];
  v25 = [v75 objectForKey:&unk_287710180];
  v74 = v25;
  if (v25)
  {
    v26 = v25;
  }

  else
  {
    v26 = &unk_287710168;
  }

  v83[5] = v26;
  v82[6] = @"numBTLE";
  v73 = [(SAAnalytics *)self numEnabledPerType];
  v27 = [v73 objectForKey:&unk_287710198];
  v72 = v27;
  if (v27)
  {
    v28 = v27;
  }

  else
  {
    v28 = &unk_287710168;
  }

  v83[6] = v28;
  v82[7] = @"numDevices";
  v71 = [(SAAnalytics *)self numEnabledPerType];
  v29 = [v71 objectForKey:&unk_2877101B0];
  v70 = v29;
  if (v29)
  {
    v30 = v29;
  }

  else
  {
    v30 = &unk_287710168;
  }

  v83[7] = v30;
  v82[8] = @"numiPhone";
  v69 = [(SAAnalytics *)self numEnabledPerType];
  v31 = [v69 objectForKey:&unk_2877101C8];
  v68 = v31;
  if (v31)
  {
    v32 = v31;
  }

  else
  {
    v32 = &unk_287710168;
  }

  v83[8] = v32;
  v82[9] = @"numiPad";
  v67 = [(SAAnalytics *)self numEnabledPerType];
  v33 = [v67 objectForKey:&unk_2877101E0];
  v66 = v33;
  if (v33)
  {
    v34 = v33;
  }

  else
  {
    v34 = &unk_287710168;
  }

  v83[9] = v34;
  v82[10] = @"numMacBook";
  v65 = [(SAAnalytics *)self numEnabledPerType];
  v35 = [v65 objectForKey:&unk_2877101F8];
  v64 = v35;
  if (v35)
  {
    v36 = v35;
  }

  else
  {
    v36 = &unk_287710168;
  }

  v83[10] = v36;
  v82[11] = @"numAirPods";
  v63 = [(SAAnalytics *)self numEnabledPerType];
  v37 = [v63 objectForKey:&unk_287710210];
  v62 = v37;
  if (v37)
  {
    v38 = v37;
  }

  else
  {
    v38 = &unk_287710168;
  }

  v83[11] = v38;
  v82[12] = @"numSafe";
  v61 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SAAnalytics numSafe](self, "numSafe")}];
  v83[12] = v61;
  v82[13] = @"numSafeInUse";
  v60 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SAAnalytics numSafeInUse](self, "numSafeInUse")}];
  v83[13] = v60;
  v82[14] = @"isAllUsingSameSafe";
  v59 = [MEMORY[0x277CCABB0] numberWithBool:{-[SAAnalytics isAllUsingSameSafe](self, "isAllUsingSameSafe")}];
  v83[14] = v59;
  v82[15] = @"numBTRequests";
  v58 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SAAnalytics numBTRequests](self, "numBTRequests")}];
  v83[15] = v58;
  v82[16] = @"numBTLeftBehindRequests";
  v57 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SAAnalytics numBTLeftBehindRequests](self, "numBTLeftBehindRequests")}];
  v83[16] = v57;
  v82[17] = @"numBTTravelingRequests";
  v56 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SAAnalytics numBTTravelingRequests](self, "numBTTravelingRequests")}];
  v83[17] = v56;
  v82[18] = @"numGpsRequests";
  v55 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SAAnalytics numGpsRequests](self, "numGpsRequests")}];
  v83[18] = v55;
  v82[19] = @"numWifiRequests";
  v54 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SAAnalytics numWifiRequests](self, "numWifiRequests")}];
  v83[19] = v54;
  v82[20] = @"numTimers";
  v53 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SAAnalytics numTimers](self, "numTimers")}];
  v83[20] = v53;
  v82[21] = @"numDevicesAtSafeExit";
  v52 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SAAnalytics numDevicesAtSafeExit](self, "numDevicesAtSafeExit")}];
  v83[21] = v52;
  v82[22] = @"numUnsafe";
  v51 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SAAnalytics numUnsafe](self, "numUnsafe")}];
  v83[22] = v51;
  v82[23] = @"numUnsafeWithLOI";
  v50 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SAAnalytics numUnsafeWithLOI](self, "numUnsafeWithLOI")}];
  v83[23] = v50;
  v82[24] = @"numUnsafeWithoutLOI";
  v39 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SAAnalytics numUnsafeWithoutLOI](self, "numUnsafeWithoutLOI")}];
  v83[24] = v39;
  v82[25] = @"aggActiveDuration";
  v40 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SAAnalytics aggActiveDuration](self, "aggActiveDuration")}];
  v83[25] = v40;
  v82[26] = @"aggInSafeDuration";
  v41 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SAAnalytics aggInSafeDuration](self, "aggInSafeDuration")}];
  v83[26] = v41;
  v82[27] = @"aggInUnsafeDuration";
  v42 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SAAnalytics aggInUnsafeDuration](self, "aggInUnsafeDuration")}];
  v83[27] = v42;
  v82[28] = @"aggInTravelDuration";
  v43 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SAAnalytics aggInTravelDuration](self, "aggInTravelDuration")}];
  v83[28] = v43;
  v82[29] = @"totalScanDuration";
  v44 = MEMORY[0x277CCABB0];
  [(SAAnalytics *)self aggScanDuration];
  v45 = [v44 numberWithDouble:?];
  v83[29] = v45;
  v82[30] = @"totalScanDurationForFindingRelevantItemsOnly";
  v46 = MEMORY[0x277CCABB0];
  [(SAAnalytics *)self aggScanDurationForFindingRelevantItemsOnly];
  v47 = [v46 numberWithDouble:?];
  v83[30] = v47;
  v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v83 forKeys:v82 count:31];

  [(SAAnalytics *)self submitEvent:@"com.apple.clx.alert.heartbeats" content:v48];
  [(SAAnalytics *)self resetAggregation];

  v49 = *MEMORY[0x277D85DE8];
}

- (void)resetAggregation
{
  [(SAAnalytics *)self setNumAlerts:0];
  [(SAAnalytics *)self setNumAlertsLeftBehind:0];
  [(SAAnalytics *)self setNumAlertsTraveling:0];
  [(SAAnalytics *)self setNumBTRequests:0];
  [(SAAnalytics *)self setNumBTLeftBehindRequests:0];
  [(SAAnalytics *)self setNumBTTravelingRequests:0];
  [(SAAnalytics *)self setNumGpsRequests:0];
  [(SAAnalytics *)self setNumWifiRequests:0];
  [(SAAnalytics *)self setNumTimers:0];
  [(SAAnalytics *)self setNumDevicesAtSafeExit:-1];
  [(SAAnalytics *)self setNumUnsafe:0];
  [(SAAnalytics *)self setNumUnsafeWithLOI:0];
  [(SAAnalytics *)self setNumUnsafeWithoutLOI:0];
  [(SAAnalytics *)self setAggActiveDuration:0];
  [(SAAnalytics *)self setAggInSafeDuration:0];
  [(SAAnalytics *)self setAggInUnsafeDuration:0];
  [(SAAnalytics *)self setAggInTravelDuration:0];
  [(SAAnalytics *)self setAggScanDuration:0.0];

  [(SAAnalytics *)self setAggScanDurationForFindingRelevantItemsOnly:0.0];
}

- (void)submitDefaultAlertRateEvent
{
  v28 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = [(SAAnalytics *)self numEnabledPerType];
  v18 = [obj countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v18)
  {
    v16 = *v20;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v20 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v3 = *(*(&v19 + 1) + 8 * i);
        v25[0] = @"numOfAlertsPerDay";
        v25[1] = @"deviceType";
        v26[0] = &unk_287710168;
        v26[1] = v3;
        v25[2] = @"numEnabled";
        v4 = [(SAAnalytics *)self numEnabledPerType];
        v5 = [v4 objectForKey:v3];
        v6 = v5;
        if (v5)
        {
          v7 = v5;
        }

        else
        {
          v7 = &unk_287710168;
        }

        v25[3] = @"alertType";
        v26[2] = v7;
        v26[3] = &unk_2877101B0;
        v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:4];

        [(SAAnalytics *)self submitEvent:@"com.apple.clx.sa.alertRate" content:v8];
        v23[0] = @"numOfAlertsPerDay";
        v23[1] = @"deviceType";
        v24[0] = &unk_287710168;
        v24[1] = v3;
        v23[2] = @"numEnabled";
        v9 = [(SAAnalytics *)self numEnabledPerType];
        v10 = [v9 objectForKey:v3];
        v11 = v10;
        if (v10)
        {
          v12 = v10;
        }

        else
        {
          v12 = &unk_287710168;
        }

        v23[3] = @"alertType";
        v24[2] = v12;
        v24[3] = &unk_287710150;
        v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:4];

        [(SAAnalytics *)self submitEvent:@"com.apple.clx.sa.alertRate" content:v13];
      }

      v18 = [obj countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v18);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)submitAlertRateEvent:(id)a3 alertType:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([(SAAnalyticsSettings *)self->_settings enableSubmission])
  {
    v8 = [(SAAnalytics *)self numEnabledPerType];
    v9 = [v8 objectForKey:v6];

    if (v9)
    {
      v16[0] = &unk_287710228;
      v16[1] = v6;
      v10 = [(SAAnalytics *)self numEnabledPerType:@"numOfAlertsPerDay"];
      v11 = [v10 objectForKey:v6];
      v15[3] = @"alertType";
      v16[2] = v11;
      v16[3] = v7;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:4];

      [(SAAnalytics *)self submitEvent:@"com.apple.clx.sa.alertRate" content:v12];
    }

    else
    {
      v13 = TASALog;
      if (os_log_type_enabled(TASALog, OS_LOG_TYPE_FAULT))
      {
        *buf = 68289026;
        v18 = 0;
        v19 = 2082;
        v20 = "";
        _os_log_impl(&dword_2656EA000, v13, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:surfacing alert but there is no device being monitored}", buf, 0x12u);
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)addAlertWithContext:(id)a3
{
  v4 = a3;
  [(SAAnalytics *)self setNumAlerts:[(SAAnalytics *)self numAlerts]+ 1];
  v5 = [v4 objectForKeyedSubscript:&unk_287710240];

  v6 = [v5 integerValue];
  if (v6 == 1)
  {
    v8 = [(SAAnalytics *)self numAlertsLeftBehind]+ 1;

    [(SAAnalytics *)self setNumAlertsLeftBehind:v8];
  }

  else if (v6 == 2)
  {
    v7 = [(SAAnalytics *)self numAlertsTraveling]+ 1;

    [(SAAnalytics *)self setNumAlertsTraveling:v7];
  }
}

- (void)addScanDuration:(double)a3
{
  [(SAAnalytics *)self aggScanDuration];
  v6 = v5 + a3;

  [(SAAnalytics *)self setAggScanDuration:v6];
}

- (void)addScanDurationForFindingRelevantItemsOnly:(double)a3
{
  [(SAAnalytics *)self aggScanDurationForFindingRelevantItemsOnly];
  v6 = v5 + a3;

  [(SAAnalytics *)self setAggScanDurationForFindingRelevantItemsOnly:v6];
}

- (void)addDeviceFetchResultCount:(unint64_t)a3 type1count:(unint64_t)a4 type2count:(unint64_t)a5 type3count:(unint64_t)a6 type4count:(unint64_t)a7 type5count:(unint64_t)a8 type6count:(unint64_t)a9 type7count:(unint64_t)a10 type8count:(unint64_t)a11 safeCount:(unint64_t)a12 usingSameSafe:(BOOL)a13
{
  [(SAAnalytics *)self setNumEnabled:a3];
  v19 = [(SAAnalytics *)self numEnabledPerType];
  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
  [v19 setObject:v20 forKey:&unk_287710150];

  v21 = [(SAAnalytics *)self numEnabledPerType];
  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a5];
  [v21 setObject:v22 forKey:&unk_287710180];

  v23 = [(SAAnalytics *)self numEnabledPerType];
  v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a6];
  [v23 setObject:v24 forKey:&unk_287710198];

  v25 = [(SAAnalytics *)self numEnabledPerType];
  v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a7];
  [v25 setObject:v26 forKey:&unk_2877101B0];

  v27 = [(SAAnalytics *)self numEnabledPerType];
  v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a8];
  [v27 setObject:v28 forKey:&unk_2877101C8];

  v29 = [(SAAnalytics *)self numEnabledPerType];
  v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a9];
  [v29 setObject:v30 forKey:&unk_2877101E0];

  v31 = [(SAAnalytics *)self numEnabledPerType];
  v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a10];
  [v31 setObject:v32 forKey:&unk_2877101F8];

  v33 = [(SAAnalytics *)self numEnabledPerType];
  v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a11];
  [v33 setObject:v34 forKey:&unk_287710210];

  [(SAAnalytics *)self setNumSafeInUse:a12];

  [(SAAnalytics *)self setIsAllUsingSameSafe:a13];
}

- (void)addAggressiveScanRequest:(BOOL)a3
{
  v3 = a3;
  [(SAAnalytics *)self setNumBTRequests:[(SAAnalytics *)self numBTRequests]+ 1];
  if (v3)
  {
    v5 = [(SAAnalytics *)self numBTTravelingRequests]+ 1;

    [(SAAnalytics *)self setNumBTTravelingRequests:v5];
  }

  else
  {
    v6 = [(SAAnalytics *)self numBTLeftBehindRequests]+ 1;

    [(SAAnalytics *)self setNumBTLeftBehindRequests:v6];
  }
}

- (void)addWakeTimerRequest
{
  v3 = [(SAAnalytics *)self numTimers]+ 1;

  [(SAAnalytics *)self setNumTimers:v3];
}

- (void)setActiveState:(BOOL)a3
{
  v3 = a3;
  v5 = [(SAAnalytics *)self lastActivated];

  if (v3)
  {
    if (v5)
    {
      return;
    }

    v10 = [MEMORY[0x277CBEAA8] now];
    [(SAAnalytics *)self setLastActivated:v10];
    lastActivated = v10;
  }

  else
  {
    if (!v5)
    {
      return;
    }

    v7 = [MEMORY[0x277CBEAA8] now];
    v8 = [(SAAnalytics *)self lastActivated];
    [v7 timeIntervalSinceDate:v8];
    [(SAAnalytics *)self setAggActiveDuration:[(SAAnalytics *)self aggActiveDuration]+ v9];

    lastActivated = self->_lastActivated;
    self->_lastActivated = 0;
  }
}

- (void)setInSafeLocationState:(BOOL)a3
{
  v3 = a3;
  v5 = [(SAAnalytics *)self lastSafeEntry];

  if (v3)
  {
    if (v5)
    {
      return;
    }

    v10 = [MEMORY[0x277CBEAA8] now];
    [(SAAnalytics *)self setLastSafeEntry:v10];
    lastSafeEntry = v10;
  }

  else
  {
    if (!v5)
    {
      return;
    }

    v7 = [MEMORY[0x277CBEAA8] now];
    v8 = [(SAAnalytics *)self lastSafeEntry];
    [v7 timeIntervalSinceDate:v8];
    [(SAAnalytics *)self setAggInSafeDuration:[(SAAnalytics *)self aggInSafeDuration]+ v9];

    lastSafeEntry = self->_lastSafeEntry;
    self->_lastSafeEntry = 0;
  }
}

- (void)setInUnsafeLocationState:(BOOL)a3
{
  v3 = a3;
  v5 = [(SAAnalytics *)self lastUnsafeEntry];

  if (v3)
  {
    if (v5)
    {
      return;
    }

    v10 = [MEMORY[0x277CBEAA8] now];
    [(SAAnalytics *)self setLastUnsafeEntry:v10];
    lastUnsafeEntry = v10;
  }

  else
  {
    if (!v5)
    {
      return;
    }

    v7 = [MEMORY[0x277CBEAA8] now];
    v8 = [(SAAnalytics *)self lastUnsafeEntry];
    [v7 timeIntervalSinceDate:v8];
    [(SAAnalytics *)self setAggInUnsafeDuration:[(SAAnalytics *)self aggInUnsafeDuration]+ v9];

    lastUnsafeEntry = self->_lastUnsafeEntry;
    self->_lastUnsafeEntry = 0;
  }
}

- (void)setInTravelState:(BOOL)a3
{
  v3 = a3;
  v5 = [(SAAnalytics *)self lastTravelStart];

  if (v3)
  {
    if (v5)
    {
      return;
    }

    v10 = [MEMORY[0x277CBEAA8] now];
    [(SAAnalytics *)self setLastTravelStart:v10];
    lastTravelStart = v10;
  }

  else
  {
    if (!v5)
    {
      return;
    }

    v7 = [MEMORY[0x277CBEAA8] now];
    v8 = [(SAAnalytics *)self lastTravelStart];
    [v7 timeIntervalSinceDate:v8];
    [(SAAnalytics *)self setAggInTravelDuration:[(SAAnalytics *)self aggInTravelDuration]+ v9];

    lastTravelStart = self->_lastTravelStart;
    self->_lastTravelStart = 0;
  }
}

@end