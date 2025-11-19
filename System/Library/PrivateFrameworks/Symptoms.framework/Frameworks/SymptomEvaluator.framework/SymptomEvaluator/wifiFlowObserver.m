@interface wifiFlowObserver
- (BOOL)addClassification:(id)a3 context:(wifiPropertyCounts *)a4;
- (BOOL)removeClassification:(id)a3 context:(wifiPropertyCounts *)a4;
- (NSString)description;
- (id)infoDir;
- (unsigned)noteFlow:(id)a3 snapshot:(id)a4 present:(BOOL)a5 trackedBy:(id)a6;
- (void)_noteNewUsage;
- (void)configurePolicies:(id)a3;
- (void)noteForegroundState:(BOOL)a3 forApp:(id)a4 hasForegroundApps:(BOOL)a5;
- (void)setEnabled:(BOOL)a3;
- (wifiFlowObserver)init;
@end

@implementation wifiFlowObserver

- (void)_noteNewUsage
{
  v43 = *MEMORY[0x277D85DE8];
  if (self->_dampening || !self->_enabled)
  {
    v15 = flowLogHandle;
    if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_INFO))
    {
      classFlags = self->_foregroundCounts.classFlags;
      v17 = self->_backgroundCounts.classFlags;
      currentCombinedFlags = self->_backgroundCounts.currentCombinedFlags;
      lastReportedClassFlags = self->_foregroundCounts.lastReportedClassFlags;
      v20 = self->_foregroundCounts.currentCombinedFlags;
      lastReportedCombinedFlags = self->_foregroundCounts.lastReportedCombinedFlags;
      v22 = self->_backgroundCounts.lastReportedClassFlags;
      v23 = self->_backgroundCounts.lastReportedCombinedFlags;
      *buf = 67110912;
      v28 = classFlags;
      v29 = 2048;
      v30 = v20;
      v31 = 1024;
      v32 = v17;
      v33 = 2048;
      v34 = currentCombinedFlags;
      v35 = 1024;
      v36 = lastReportedClassFlags;
      v37 = 2048;
      v38 = lastReportedCombinedFlags;
      v39 = 1024;
      v40 = v22;
      v41 = 2048;
      v42 = v23;
      _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_INFO, "WiFi Observer: New flags fg 0x%x 0x%llx bg 0x%x 0x%llx  during suppression / dampening, initial value 0x%x 0x%llx 0x%x 0x%llx", buf, 0x42u);
    }
  }

  else if (self->_foregroundCounts.classFlags != self->_foregroundCounts.lastReportedClassFlags || self->_foregroundCounts.currentCombinedFlags != self->_foregroundCounts.lastReportedCombinedFlags || self->_backgroundCounts.classFlags != self->_backgroundCounts.lastReportedClassFlags || self->_backgroundCounts.currentCombinedFlags != self->_backgroundCounts.lastReportedCombinedFlags)
  {
    [(ManagedEventHandler *)self->_managedEventHandler sendNotificationWithId:11];
    v3 = flowLogHandle;
    if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_INFO))
    {
      v4 = self->_foregroundCounts.classFlags;
      v5 = self->_backgroundCounts.classFlags;
      v6 = self->_backgroundCounts.currentCombinedFlags;
      v7 = self->_foregroundCounts.lastReportedClassFlags;
      v8 = self->_foregroundCounts.currentCombinedFlags;
      v9 = self->_foregroundCounts.lastReportedCombinedFlags;
      v10 = self->_backgroundCounts.lastReportedClassFlags;
      v11 = self->_backgroundCounts.lastReportedCombinedFlags;
      *buf = 67110912;
      v28 = v4;
      v29 = 2048;
      v30 = v8;
      v31 = 1024;
      v32 = v5;
      v33 = 2048;
      v34 = v6;
      v35 = 1024;
      v36 = v7;
      v37 = 2048;
      v38 = v9;
      v39 = 1024;
      v40 = v10;
      v41 = 2048;
      v42 = v11;
      _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_INFO, "WiFi Observer: Sent notification when new flags fg 0x%x 0x%llx bg 0x%x 0x%llx,  initial value 0x%x 0x%llx 0x%x 0x%llx", buf, 0x42u);
    }

    v12 = self->_seqno + 1;
    self->_seqno = v12;
    self->_dampening = 1;
    v13 = dispatch_time(0, 1000000 * self->_dampeningMsecs);
    v14 = +[FlowAnalyticsEngine queue];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __33__wifiFlowObserver__noteNewUsage__block_invoke;
    v25[3] = &unk_27898CAB8;
    v25[4] = self;
    v26 = v12;
    dispatch_after(v13, v14, v25);
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (id)infoDir
{
  v98 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_foregroundCounts.currentCombinedFlags];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:kManagedEventKeyForegroundCombinedFlowProperties];
  [v3 setObject:v4 forKeyedSubscript:v5];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_foregroundCounts.classFlags];
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:kManagedEventKeyForegroundSpecificFlowClassifications];
  [v3 setObject:v6 forKeyedSubscript:v7];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_backgroundCounts.currentCombinedFlags];
  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:kManagedEventKeyBackgroundCombinedFlowProperties];
  [v3 setObject:v8 forKeyedSubscript:v9];

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_backgroundCounts.classFlags];
  v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:kManagedEventKeyBackgroundSpecificFlowClassifications];
  [v3 setObject:v10 forKeyedSubscript:v11];

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:0];
  v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:kManagedEventKeyRelevantState];
  [v3 setObject:v12 forKeyedSubscript:v13];

  v14 = [FlowClassification classFlagsToString:self->_foregroundCounts.classFlags];
  v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:kManagedEventKeyHumanReadableForegroundSpecificFlowClassifications];
  [v3 setObject:v14 forKeyedSubscript:v15];

  v16 = [FlowClassification classFlagsToString:self->_backgroundCounts.classFlags];
  v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:kManagedEventKeyHumanReadableBackgroundSpecificFlowClassifications];
  [v3 setObject:v16 forKeyedSubscript:v17];

  v18 = [FlowClassification propertyFlagsToString:LOBYTE(self->_foregroundCounts.currentCombinedFlags)];
  v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:kManagedEventKeyHumanReadableForegroundLatencyValues];
  [v3 setObject:v18 forKeyedSubscript:v19];

  v20 = [FlowClassification propertyFlagsToString:BYTE1(self->_foregroundCounts.currentCombinedFlags)];
  v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:kManagedEventKeyHumanReadableForegroundJitterValues];
  [v3 setObject:v20 forKeyedSubscript:v21];

  v22 = [FlowClassification propertyFlagsToString:BYTE3(self->_foregroundCounts.currentCombinedFlags)];
  v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:kManagedEventKeyHumanReadableForegroundDurationValues];
  [v3 setObject:v22 forKeyedSubscript:v23];

  v24 = [FlowClassification propertyFlagsToString:BYTE2(self->_foregroundCounts.currentCombinedFlags)];
  v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:kManagedEventKeyHumanReadableForegroundLossToleranceValues];
  [v3 setObject:v24 forKeyedSubscript:v25];

  v26 = [FlowClassification propertyFlagsToString:BYTE4(self->_foregroundCounts.currentCombinedFlags)];
  v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:kManagedEventKeyHumanReadableForegroundReqdBandwidthValues];
  [v3 setObject:v26 forKeyedSubscript:v27];

  v28 = [FlowClassification propertyFlagsToString:(WORD2(self->_foregroundCounts.currentCombinedFlags) >> 8)];
  v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:kManagedEventKeyHumanReadableForegroundPrefBandwidthValues];
  [v3 setObject:v28 forKeyedSubscript:v29];

  v30 = [FlowClassification propertyFlagsToString:LOBYTE(self->_backgroundCounts.currentCombinedFlags)];
  v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:kManagedEventKeyHumanReadableBackgroundLatencyValues];
  [v3 setObject:v30 forKeyedSubscript:v31];

  v32 = [FlowClassification propertyFlagsToString:BYTE1(self->_backgroundCounts.currentCombinedFlags)];
  v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:kManagedEventKeyHumanReadableBackgroundJitterValues];
  [v3 setObject:v32 forKeyedSubscript:v33];

  v34 = [FlowClassification propertyFlagsToString:BYTE3(self->_backgroundCounts.currentCombinedFlags)];
  v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:kManagedEventKeyHumanReadableBackgroundDurationValues];
  [v3 setObject:v34 forKeyedSubscript:v35];

  v36 = [FlowClassification propertyFlagsToString:BYTE2(self->_backgroundCounts.currentCombinedFlags)];
  v37 = [MEMORY[0x277CCACA8] stringWithUTF8String:kManagedEventKeyHumanReadableBackgroundLossToleranceValues];
  [v3 setObject:v36 forKeyedSubscript:v37];

  v38 = [FlowClassification propertyFlagsToString:BYTE4(self->_backgroundCounts.currentCombinedFlags)];
  v39 = [MEMORY[0x277CCACA8] stringWithUTF8String:kManagedEventKeyHumanReadableBackgroundReqdBandwidthValues];
  [v3 setObject:v38 forKeyedSubscript:v39];

  v40 = [FlowClassification propertyFlagsToString:(WORD2(self->_backgroundCounts.currentCombinedFlags) >> 8)];
  v41 = [MEMORY[0x277CCACA8] stringWithUTF8String:kManagedEventKeyHumanReadableBackgroundPrefBandwidthValues];
  [v3 setObject:v40 forKeyedSubscript:v41];

  v42 = +[AppStateMonitor foregroundAppKeys];
  v43 = v42;
  if (v42 && [v42 count])
  {
    v44 = [MEMORY[0x277CCACA8] stringWithUTF8String:kManagedEventKeyForegroundApps];
    [v3 setObject:v43 forKeyedSubscript:v44];
  }

  classFlags = self->_foregroundCounts.classFlags;
  self->_foregroundCounts.everReportedClassFlags |= classFlags;
  self->_foregroundCounts.lastReportedClassFlags = classFlags;
  currentCombinedFlags = self->_foregroundCounts.currentCombinedFlags;
  self->_foregroundCounts.lastReportedCombinedFlags = currentCombinedFlags;
  self->_foregroundCounts.everReportedCombinedFlags |= currentCombinedFlags;
  LODWORD(currentCombinedFlags) = self->_backgroundCounts.classFlags;
  self->_backgroundCounts.lastReportedClassFlags = currentCombinedFlags;
  self->_backgroundCounts.everReportedClassFlags |= currentCombinedFlags;
  v47 = self->_backgroundCounts.currentCombinedFlags;
  self->_backgroundCounts.lastReportedCombinedFlags = v47;
  self->_backgroundCounts.everReportedCombinedFlags |= v47;
  v48 = flowLogHandle;
  if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v49 = self->_foregroundCounts.currentCombinedFlags;
    v84 = 134217984;
    *v85 = v49;
    _os_log_impl(&dword_23255B000, v48, OS_LOG_TYPE_DEFAULT, "WiFi observer _foregroundCounts.currentCombinedFlags is 0x%llx", &v84, 0xCu);
  }

  v50 = flowLogHandle;
  if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v51 = self->_backgroundCounts.currentCombinedFlags;
    v84 = 134217984;
    *v85 = v51;
    _os_log_impl(&dword_23255B000, v50, OS_LOG_TYPE_DEFAULT, "WiFi observer _backgroundCounts.currentCombinedFlags is 0x%llx", &v84, 0xCu);
  }

  v52 = flowLogHandle;
  if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v53 = self->_backgroundCounts.latencyPropertyCounter[0];
    v54 = self->_backgroundCounts.latencyPropertyCounter[1];
    v55 = self->_backgroundCounts.latencyPropertyCounter[2];
    v56 = self->_backgroundCounts.latencyPropertyCounter[3];
    v57 = self->_backgroundCounts.latencyPropertyCounter[4];
    v58 = self->_backgroundCounts.latencyPropertyCounter[5];
    v59 = self->_backgroundCounts.latencyPropertyCounter[6];
    v60 = self->_backgroundCounts.latencyPropertyCounter[7];
    v84 = 67110912;
    *v85 = v53;
    *&v85[4] = 1024;
    *&v85[6] = v54;
    v86 = 1024;
    v87 = v55;
    v88 = 1024;
    v89 = v56;
    v90 = 1024;
    v91 = v57;
    v92 = 1024;
    v93 = v58;
    v94 = 1024;
    v95 = v59;
    v96 = 1024;
    v97 = v60;
    _os_log_impl(&dword_23255B000, v52, OS_LOG_TYPE_DEBUG, "WiFi observer _backgroundCounts latency counts %d %d %d %d %d %d %d %d", &v84, 0x32u);
  }

  v61 = flowLogHandle;
  if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v62 = self->_backgroundCounts.jitterPropertyCounter[0];
    v63 = self->_backgroundCounts.jitterPropertyCounter[1];
    v64 = self->_backgroundCounts.jitterPropertyCounter[2];
    v65 = self->_backgroundCounts.jitterPropertyCounter[3];
    v66 = self->_backgroundCounts.jitterPropertyCounter[4];
    v67 = self->_backgroundCounts.jitterPropertyCounter[5];
    v68 = self->_backgroundCounts.jitterPropertyCounter[6];
    v69 = self->_backgroundCounts.jitterPropertyCounter[7];
    v84 = 67110912;
    *v85 = v62;
    *&v85[4] = 1024;
    *&v85[6] = v63;
    v86 = 1024;
    v87 = v64;
    v88 = 1024;
    v89 = v65;
    v90 = 1024;
    v91 = v66;
    v92 = 1024;
    v93 = v67;
    v94 = 1024;
    v95 = v68;
    v96 = 1024;
    v97 = v69;
    _os_log_impl(&dword_23255B000, v61, OS_LOG_TYPE_DEBUG, "WiFi observer _backgroundCounts jitter counts %d %d %d %d %d %d %d %d", &v84, 0x32u);
  }

  v70 = flowLogHandle;
  if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v71 = self->_backgroundCounts.lossTolerancePropertyCounter[0];
    v72 = self->_backgroundCounts.lossTolerancePropertyCounter[1];
    v73 = self->_backgroundCounts.lossTolerancePropertyCounter[2];
    v74 = self->_backgroundCounts.lossTolerancePropertyCounter[3];
    v75 = self->_backgroundCounts.lossTolerancePropertyCounter[4];
    v76 = self->_backgroundCounts.lossTolerancePropertyCounter[5];
    v77 = self->_backgroundCounts.lossTolerancePropertyCounter[6];
    v78 = self->_backgroundCounts.lossTolerancePropertyCounter[7];
    v84 = 67110912;
    *v85 = v71;
    *&v85[4] = 1024;
    *&v85[6] = v72;
    v86 = 1024;
    v87 = v73;
    v88 = 1024;
    v89 = v74;
    v90 = 1024;
    v91 = v75;
    v92 = 1024;
    v93 = v76;
    v94 = 1024;
    v95 = v77;
    v96 = 1024;
    v97 = v78;
    _os_log_impl(&dword_23255B000, v70, OS_LOG_TYPE_DEBUG, "WiFi observer _backgroundCounts loss tolerance counts %d %d %d %d %d %d %d %d", &v84, 0x32u);
  }

  v79 = flowLogHandle;
  if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_INFO))
  {
    v84 = 138543362;
    *v85 = v3;
    _os_log_impl(&dword_23255B000, v79, OS_LOG_TYPE_INFO, "WiFi observer Info dir %{public}@", &v84, 0xCu);
  }

  v80 = [MEMORY[0x277CBEAA8] date];
  lastReportTimestamp = self->_lastReportTimestamp;
  self->_lastReportTimestamp = v80;

  v82 = *MEMORY[0x277D85DE8];

  return v3;
}

- (NSString)description
{
  v15 = MEMORY[0x277CCACA8];
  classFlags = self->_backgroundCounts.classFlags;
  v4 = self->_foregroundCounts.classFlags;
  everSetClassFlags = self->_foregroundCounts.everSetClassFlags;
  v6 = self->_backgroundCounts.everSetClassFlags;
  everReportedClassFlags = self->_backgroundCounts.everReportedClassFlags;
  v8 = self->_foregroundCounts.everReportedClassFlags;
  lastReportedClassFlags = self->_foregroundCounts.lastReportedClassFlags;
  v10 = self->_backgroundCounts.lastReportedClassFlags;
  [(NSDate *)self->_lastReportTimestamp timeIntervalSince1970];
  v12 = formattedDateStringForTimeInterval(v11);
  v13 = [v15 stringWithFormat:@"wifiFlowObserver at %p, fg / bg current flags 0x%x 0x%x ever set 0x%x 0x%x reported 0x%x 0x%x last report 0x%x 0x%x at %@, enabled %d", self, v4, classFlags, everSetClassFlags, v6, v8, everReportedClassFlags, lastReportedClassFlags, v10, v12, self->_enabled];

  return v13;
}

- (wifiFlowObserver)init
{
  v7.receiver = self;
  v7.super_class = wifiFlowObserver;
  v2 = [(wifiFlowObserver *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_dampeningMsecs = 300;
    v4 = [ManagedEventHandler getHandlerByName:@"wifi-app-aware"];
    managedEventHandler = v3->_managedEventHandler;
    v3->_managedEventHandler = v4;

    v3->_enabled = 1;
  }

  return v3;
}

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  v11 = *MEMORY[0x277D85DE8];
  v5 = scoringLogHandle;
  if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
  {
    enabled = self->_enabled;
    v8[0] = 67109376;
    v8[1] = enabled;
    v9 = 1024;
    v10 = v3;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEBUG, "Entry, _enabled = %d new value %d", v8, 0xEu);
  }

  self->_enabled = v3;
  v7 = *MEMORY[0x277D85DE8];
}

- (void)configurePolicies:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = configurationLogHandle;
  if (os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [(wifiFlowObserver *)self description];
    v9 = 138412546;
    v10 = v4;
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, "Entry with ignored params %@, self %@", &v9, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)addClassification:(id)a3 context:(wifiPropertyCounts *)a4
{
  v5 = a3;
  v6 = [v5 disposition];
  if (v6 > 0x1F || (v7 = a4->classCounter[v6], a4->classCounter[v6] = v7 + 1, v7))
  {
    v8 = 0;
  }

  else
  {
    v8 = 1;
    *&a4->classFlags = vorr_s8(*&a4->classFlags, vdup_n_s32(1 << v6));
  }

  v9 = [v5 latency];
  v10 = &a4->classCounter[v9];
  v11 = v10[36];
  v10[36] = v11 + 1;
  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = 1 << v9;
  }

  v13 = [v5 jitter];
  v14 = &a4->classCounter[v13];
  v15 = v14[44];
  v14[44] = v15 + 1;
  v16 = 1 << (v13 + 8);
  if (v15)
  {
    v16 = 0;
  }

  v17 = v16 | v12;
  v18 = [v5 duration];
  v19 = &a4->classCounter[v18];
  v20 = v19[60];
  v19[60] = v20 + 1;
  if (v20)
  {
    v21 = 0;
  }

  else
  {
    v21 = 1 << (v18 + 24);
  }

  v22 = [v5 requiredBandwidth];
  v23 = &a4->classCounter[v22];
  v24 = v23[68];
  v23[68] = v24 + 1;
  v25 = 1 << (v22 + 32);
  if (v24)
  {
    v25 = 0;
  }

  v26 = v17 | v21 | v25;
  v27 = [v5 lossTolerance];
  v28 = &a4->classCounter[v27];
  v29 = v28[52];
  v28[52] = v29 + 1;
  if (v29)
  {
    v30 = 0;
  }

  else
  {
    v30 = 1 << (v27 + 16);
  }

  v31 = [v5 preferredBandwidth];

  v32 = &a4->classCounter[v31];
  v33 = v32[76];
  v32[76] = v33 + 1;
  v34 = 1 << (v31 + 40);
  if (v33)
  {
    v34 = 0;
  }

  v35 = v26 | v30 | v34;
  if (v35)
  {
    a4->currentCombinedFlags |= v35;
    return 1;
  }

  return v8;
}

- (BOOL)removeClassification:(id)a3 context:(wifiPropertyCounts *)a4
{
  v5 = a3;
  v6 = [v5 disposition];
  if (v6 <= 0x1F)
  {
    v7 = a4->classCounter[v6] - 1;
    a4->classCounter[v6] = v7;
    if (!v7)
    {
      a4->classFlags &= ~(1 << v6);
    }
  }

  v8 = [v5 latency];
  v9 = &a4->classCounter[v8];
  v10 = v9[36] - 1;
  v9[36] = v10;
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = 1 << v8;
  }

  v12 = [v5 jitter];
  v13 = &a4->classCounter[v12];
  v14 = v13[44] - 1;
  v13[44] = v14;
  v15 = 1 << (v12 + 8);
  if (v14)
  {
    v15 = 0;
  }

  v16 = v15 | v11;
  v17 = [v5 lossTolerance];
  v18 = &a4->classCounter[v17];
  v19 = v18[52] - 1;
  v18[52] = v19;
  if (v19)
  {
    v20 = 0;
  }

  else
  {
    v20 = 1 << (v17 + 16);
  }

  v21 = [v5 duration];
  v22 = &a4->classCounter[v21];
  v23 = v22[60] - 1;
  v22[60] = v23;
  v24 = 1 << (v21 + 24);
  if (v23)
  {
    v24 = 0;
  }

  v25 = v16 | v20 | v24;
  v26 = [v5 requiredBandwidth];
  v27 = &a4->classCounter[v26];
  v28 = v27[68] - 1;
  v27[68] = v28;
  if (v28)
  {
    v29 = 0;
  }

  else
  {
    v29 = 1 << (v26 + 32);
  }

  v30 = [v5 preferredBandwidth];

  v31 = &a4->classCounter[v30];
  v32 = v31[76] - 1;
  v31[76] = v32;
  v33 = 1 << (v30 + 40);
  if (v32)
  {
    v33 = 0;
  }

  v34 = v25 | v29 | v33;
  if (v34)
  {
    a4->currentCombinedFlags &= ~v34;
  }

  return v34 != 0;
}

- (unsigned)noteFlow:(id)a3 snapshot:(id)a4 present:(BOOL)a5 trackedBy:(id)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if (v11 && [v11 startAppStateIsForeground])
  {
    [v10 setFlags:{objc_msgSend(v10, "flags") | 0x800}];
  }

  if (v7)
  {
    [v10 setFlags:{objc_msgSend(v10, "flags") | 0x1000}];
  }

  if (([v10 flags] & 0x800) != 0)
  {
    v13 = 8;
  }

  else
  {
    v13 = 376;
  }

  v14 = [v10 classification];
  v15 = self + v13;
  if (v7)
  {
    v16 = [(wifiFlowObserver *)self addClassification:v14 context:v15];

    if (!v16)
    {
LABEL_11:
      v17 = 0;
      goto LABEL_16;
    }
  }

  else
  {
    v18 = [(wifiFlowObserver *)self removeClassification:v14 context:v15];

    if (!v18)
    {
      goto LABEL_11;
    }
  }

  [(wifiFlowObserver *)self _noteNewUsage];
  v19 = [v10 classification];
  v20 = [v19 disposition];

  if (v7 && v20 < 0x20)
  {
    v17 = 1 << v20;
  }

  else
  {
    v17 = 0;
  }

LABEL_16:

  return v17;
}

- (void)noteForegroundState:(BOOL)a3 forApp:(id)a4 hasForegroundApps:(BOOL)a5
{
  v5 = a5;
  v15 = *MEMORY[0x277D85DE8];
  v7 = a4;
  if (!v5)
  {
    if (!self->_foreground)
    {
      goto LABEL_11;
    }

    self->_foreground = 0;
    v8 = scoringLogHandle;
    if (!os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_9;
    }

    enabled = self->_enabled;
    v13 = 67109120;
    v14 = enabled;
    v10 = "WiFi Observer going to background, enabled %d";
    goto LABEL_8;
  }

  if (self->_foreground)
  {
    goto LABEL_11;
  }

  self->_foreground = 1;
  v8 = scoringLogHandle;
  if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v9 = self->_enabled;
    v13 = 67109120;
    v14 = v9;
    v10 = "WiFi Observer going to Foreground, enabled %d";
LABEL_8:
    _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEBUG, v10, &v13, 8u);
  }

LABEL_9:
  if (self->_enabled)
  {
    [(wifiFlowObserver *)self _noteNewUsage];
  }

LABEL_11:

  v12 = *MEMORY[0x277D85DE8];
}

@end