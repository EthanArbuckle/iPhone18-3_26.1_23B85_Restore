@interface PPSProcessMetricCollection
+ (id)_metricSamplePropertyKeys;
- (PPSProcessMetricCollection)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)clearMetrics;
- (void)combineWithProcessMetricCollection:(id)collection;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PPSProcessMetricCollection

+ (id)_metricSamplePropertyKeys
{
  if (_metricSamplePropertyKeys_onceToken_0 != -1)
  {
    +[PPSProcessMetricCollection _metricSamplePropertyKeys];
  }

  v3 = _metricSamplePropertyKeys_keys_0;

  return v3;
}

uint64_t __55__PPSProcessMetricCollection__metricSamplePropertyKeys__block_invoke()
{
  _metricSamplePropertyKeys_keys_0 = [MEMORY[0x277CBEB98] setWithArray:&unk_284300950];

  return MEMORY[0x2821F96F8]();
}

- (PPSProcessMetricCollection)initWithCoder:(id)coder
{
  v30 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v28.receiver = self;
  v28.super_class = PPSProcessMetricCollection;
  v5 = [(PPSProcessMetricCollection *)&v28 init];
  if (v5)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v6 = +[PPSProcessMetricCollection _metricSamplePropertyKeys];
    v7 = [v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v25;
      do
      {
        v10 = 0;
        do
        {
          if (*v25 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v24 + 1) + 8 * v10);
          v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:v11];
          [(PPSProcessMetricCollection *)v5 setValue:v12 forKey:v11];

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v8);
    }

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"__pid__"];
    v5->_pid = [v13 intValue];

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"__coalitionID__"];
    coalitionID = v5->_coalitionID;
    v5->_coalitionID = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"__processName__"];
    processName = v5->_processName;
    v5->_processName = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"__bundleID__"];
    bundleID = v5->_bundleID;
    v5->_bundleID = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"__sampleTime__"];
    sampleTime = v5->_sampleTime;
    v5->_sampleTime = v20;
  }

  v22 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v23 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = +[PPSProcessMetricCollection _metricSamplePropertyKeys];
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v11 = [(PPSProcessMetricCollection *)self valueForKey:v10];
        [coderCopy encodeObject:v11 forKey:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  v12 = [MEMORY[0x277CCABB0] numberWithInt:{-[PPSProcessMetricCollection pid](self, "pid")}];
  [coderCopy encodeObject:v12 forKey:@"__pid__"];

  coalitionID = [(PPSProcessMetricCollection *)self coalitionID];
  [coderCopy encodeObject:coalitionID forKey:@"__coalitionID__"];

  processName = [(PPSProcessMetricCollection *)self processName];
  [coderCopy encodeObject:processName forKey:@"__processName__"];

  bundleID = [(PPSProcessMetricCollection *)self bundleID];
  [coderCopy encodeObject:bundleID forKey:@"__bundleID__"];

  sampleTime = [(PPSProcessMetricCollection *)self sampleTime];
  [coderCopy encodeObject:sampleTime forKey:@"__sampleTime__"];

  v17 = *MEMORY[0x277D85DE8];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(PPSProcessMetricCollection);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = +[PPSProcessMetricCollection _metricSamplePropertyKeys];
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [(PPSProcessMetricCollection *)self valueForKey:v11];
        v13 = [v12 copyWithZone:zone];
        [(PPSProcessMetricCollection *)v5 setValue:v13 forKey:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v5->_pid = self->_pid;
  objc_storeStrong(&v5->_processName, self->_processName);
  objc_storeStrong(&v5->_bundleID, self->_bundleID);
  objc_storeStrong(&v5->_sampleTime, self->_sampleTime);
  v14 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)description
{
  v103 = MEMORY[0x277CCACA8];
  energyCost = [(PPSProcessMetricCollection *)self energyCost];
  value = [energyCost value];
  [value doubleValue];
  v101 = v3;
  energyCost2 = [(PPSProcessMetricCollection *)self energyCost];
  timestamp = [energyCost2 timestamp];
  v159 = PPSTimeStringFromDate(timestamp);
  energyOverhead = [(PPSProcessMetricCollection *)self energyOverhead];
  value2 = [energyOverhead value];
  [value2 doubleValue];
  v97 = v4;
  energyOverhead2 = [(PPSProcessMetricCollection *)self energyOverhead];
  timestamp2 = [energyOverhead2 timestamp];
  v158 = PPSTimeStringFromDate(timestamp2);
  cpuCost = [(PPSProcessMetricCollection *)self cpuCost];
  value3 = [cpuCost value];
  [value3 doubleValue];
  v93 = v5;
  cpuCost2 = [(PPSProcessMetricCollection *)self cpuCost];
  timestamp3 = [cpuCost2 timestamp];
  v157 = PPSTimeStringFromDate(timestamp3);
  cpuSeconds = [(PPSProcessMetricCollection *)self cpuSeconds];
  value4 = [cpuSeconds value];
  [value4 doubleValue];
  v90 = v6;
  cpuSeconds2 = [(PPSProcessMetricCollection *)self cpuSeconds];
  timestamp4 = [cpuSeconds2 timestamp];
  v156 = PPSTimeStringFromDate(timestamp4);
  cpuEnergy = [(PPSProcessMetricCollection *)self cpuEnergy];
  value5 = [cpuEnergy value];
  [value5 doubleValue];
  v87 = v7;
  cpuEnergy2 = [(PPSProcessMetricCollection *)self cpuEnergy];
  timestamp5 = [cpuEnergy2 timestamp];
  v155 = PPSTimeStringFromDate(timestamp5);
  gpuCost = [(PPSProcessMetricCollection *)self gpuCost];
  value6 = [gpuCost value];
  [value6 doubleValue];
  v83 = v8;
  gpuCost2 = [(PPSProcessMetricCollection *)self gpuCost];
  timestamp6 = [gpuCost2 timestamp];
  v154 = PPSTimeStringFromDate(timestamp6);
  displayPower = [(PPSProcessMetricCollection *)self displayPower];
  value7 = [displayPower value];
  [value7 doubleValue];
  v79 = v9;
  displayPower2 = [(PPSProcessMetricCollection *)self displayPower];
  timestamp7 = [displayPower2 timestamp];
  v153 = PPSTimeStringFromDate(timestamp7);
  networkCost = [(PPSProcessMetricCollection *)self networkCost];
  value8 = [networkCost value];
  intValue = [value8 intValue];
  networkCost2 = [(PPSProcessMetricCollection *)self networkCost];
  timestamp8 = [networkCost2 timestamp];
  v152 = PPSTimeStringFromDate(timestamp8);
  wifiIn = [(PPSProcessMetricCollection *)self wifiIn];
  value9 = [wifiIn value];
  intValue2 = [value9 intValue];
  wifiIn2 = [(PPSProcessMetricCollection *)self wifiIn];
  timestamp9 = [wifiIn2 timestamp];
  v151 = PPSTimeStringFromDate(timestamp9);
  wifiOut = [(PPSProcessMetricCollection *)self wifiOut];
  value10 = [wifiOut value];
  intValue3 = [value10 intValue];
  wifiOut2 = [(PPSProcessMetricCollection *)self wifiOut];
  timestamp10 = [wifiOut2 timestamp];
  v150 = PPSTimeStringFromDate(timestamp10);
  cellIn = [(PPSProcessMetricCollection *)self cellIn];
  value11 = [cellIn value];
  intValue4 = [value11 intValue];
  cellIn2 = [(PPSProcessMetricCollection *)self cellIn];
  timestamp11 = [cellIn2 timestamp];
  v149 = PPSTimeStringFromDate(timestamp11);
  cellOut = [(PPSProcessMetricCollection *)self cellOut];
  value12 = [cellOut value];
  intValue5 = [value12 intValue];
  cellOut2 = [(PPSProcessMetricCollection *)self cellOut];
  timestamp12 = [cellOut2 timestamp];
  v148 = PPSTimeStringFromDate(timestamp12);
  locationCost = [(PPSProcessMetricCollection *)self locationCost];
  value13 = [locationCost value];
  [value13 doubleValue];
  v58 = v10;
  locationCost2 = [(PPSProcessMetricCollection *)self locationCost];
  timestamp13 = [locationCost2 timestamp];
  v147 = PPSTimeStringFromDate(timestamp13);
  ongoingLocation = [(PPSProcessMetricCollection *)self ongoingLocation];
  value14 = [ongoingLocation value];
  bOOLValue = [value14 BOOLValue];
  v12 = "NO";
  if (bOOLValue)
  {
    v12 = "YES";
  }

  v54 = v12;
  ongoingLocation2 = [(PPSProcessMetricCollection *)self ongoingLocation];
  timestamp14 = [ongoingLocation2 timestamp];
  v146 = PPSTimeStringFromDate(timestamp14);
  locationDesiredAccuracy = [(PPSProcessMetricCollection *)self locationDesiredAccuracy];
  value15 = [locationDesiredAccuracy value];
  [value15 doubleValue];
  v14 = v13;
  locationDesiredAccuracy2 = [(PPSProcessMetricCollection *)self locationDesiredAccuracy];
  timestamp15 = [locationDesiredAccuracy2 timestamp];
  v145 = PPSTimeStringFromDate(timestamp15);
  qosUtility = [(PPSProcessMetricCollection *)self qosUtility];
  value16 = [qosUtility value];
  [value16 doubleValue];
  v16 = v15;
  qosUtility2 = [(PPSProcessMetricCollection *)self qosUtility];
  timestamp16 = [qosUtility2 timestamp];
  v144 = PPSTimeStringFromDate(timestamp16);
  qosBackground = [(PPSProcessMetricCollection *)self qosBackground];
  value17 = [qosBackground value];
  [value17 doubleValue];
  v18 = v17;
  qosBackground2 = [(PPSProcessMetricCollection *)self qosBackground];
  timestamp17 = [qosBackground2 timestamp];
  v143 = PPSTimeStringFromDate(timestamp17);
  qosUserInitiated = [(PPSProcessMetricCollection *)self qosUserInitiated];
  value18 = [qosUserInitiated value];
  [value18 doubleValue];
  v20 = v19;
  qosUserInitiated2 = [(PPSProcessMetricCollection *)self qosUserInitiated];
  timestamp18 = [qosUserInitiated2 timestamp];
  v41 = PPSTimeStringFromDate(timestamp18);
  qosUserInteractive = [(PPSProcessMetricCollection *)self qosUserInteractive];
  value19 = [qosUserInteractive value];
  [value19 doubleValue];
  v22 = v21;
  qosUserInteractive2 = [(PPSProcessMetricCollection *)self qosUserInteractive];
  timestamp19 = [qosUserInteractive2 timestamp];
  v142 = PPSTimeStringFromDate(timestamp19);
  qosDefault = [(PPSProcessMetricCollection *)self qosDefault];
  value20 = [qosDefault value];
  [value20 doubleValue];
  v24 = v23;
  qosDefault2 = [(PPSProcessMetricCollection *)self qosDefault];
  timestamp20 = [qosDefault2 timestamp];
  v25 = PPSTimeStringFromDate(timestamp20);
  qosMaintenance = [(PPSProcessMetricCollection *)self qosMaintenance];
  value21 = [qosMaintenance value];
  [value21 doubleValue];
  v27 = v26;
  qosMaintenance2 = [(PPSProcessMetricCollection *)self qosMaintenance];
  timestamp21 = [qosMaintenance2 timestamp];
  v28 = PPSTimeStringFromDate(timestamp21);
  qosUnspecified = [(PPSProcessMetricCollection *)self qosUnspecified];
  value22 = [qosUnspecified value];
  [value22 doubleValue];
  v30 = v29;
  qosUnspecified2 = [(PPSProcessMetricCollection *)self qosUnspecified];
  timestamp22 = [qosUnspecified2 timestamp];
  v33 = PPSTimeStringFromDate(timestamp22);
  applicationState = [(PPSProcessMetricCollection *)self applicationState];
  timestamp23 = [applicationState timestamp];
  v36 = PPSTimeStringFromDate(timestamp23);
  applicationState2 = [(PPSProcessMetricCollection *)self applicationState];
  v104 = [v103 stringWithFormat:@"Energy Cost        %8.3f     %@\nEnergy Overhead    %8.3f     %@\nCPU Cost           %8.3f     %@\nCPU Seconds        %8.3f s   %@\nCPU Energy         %8.3f nJ  %@\nGPU Cost           %8.3f     %@\nDisplay Power      %8.3f     %@\nNetwork Cost       %8d     %@\nWiFi In            %8d B   %@\nWiFi Out           %8d B   %@\nCell In            %8d B   %@\nCell Out           %8d B   %@\nLocation Cost      %8.3f     %@\nOngoing Location   %8s     %@\nLocation Desired Accuracy %8.3f %@\nQOS Utility %8.3f s   %@\nQOS Background %8.3f s   %@\nQOS User Initiated %8.3f s   %@\nQOS User Interactive %8.3f s   %@\nQOS Default %8.3f s   %@\nQOS Maintenance %8.3f s   %@\nQOS Unspecified %8.3f s   %@\nApplication State               %@\n%29s", v101, v159, v97, v158, v93, v157, v90, v156, v87, v155, v83, v154, v79, v153, intValue, v152, intValue2, v151, intValue3, v150, intValue4, v149, intValue5, v148, v58, v147, v54, v146, v14, v145, v16, v144, v18, v143, v20, v41, v22, v142, v24, v25, v27, v28, v30, v33, v36, -[PPSProcessMetricCollection _stringForApplicationState:](self, "_stringForApplicationState:", objc_msgSend(applicationState2, "intValue"))];

  return v104;
}

- (void)combineWithProcessMetricCollection:(id)collection
{
  collectionCopy = collection;
  v5 = PPSMetricMonitorLogHandleForCategory(2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [PPSProcessMetricCollection combineWithProcessMetricCollection:v5];
  }

  -[PPSProcessMetricCollection setPid:](self, "setPid:", [collectionCopy pid]);
  coalitionID = [collectionCopy coalitionID];
  [(PPSProcessMetricCollection *)self setCoalitionID:coalitionID];

  processName = [collectionCopy processName];
  [(PPSProcessMetricCollection *)self setProcessName:processName];

  bundleID = [collectionCopy bundleID];
  [(PPSProcessMetricCollection *)self setBundleID:bundleID];

  sampleTime = [collectionCopy sampleTime];
  if (sampleTime)
  {
    v10 = sampleTime;
    sampleTime2 = [(PPSProcessMetricCollection *)self sampleTime];

    if (sampleTime2)
    {
      v12 = MEMORY[0x277CCABB0];
      sampleTime3 = [collectionCopy sampleTime];
      [sampleTime3 doubleValue];
      v15 = v14;
      sampleTime4 = [(PPSProcessMetricCollection *)self sampleTime];
      [sampleTime4 doubleValue];
      v18 = [v12 numberWithDouble:v15 + v17];
      [(PPSProcessMetricCollection *)self setSampleTime:v18];
    }
  }

  cpuInstructions = [collectionCopy cpuInstructions];
  if (cpuInstructions)
  {
    v20 = cpuInstructions;
    cpuInstructions2 = [(PPSProcessMetricCollection *)self cpuInstructions];

    if (cpuInstructions2)
    {
      v22 = MEMORY[0x277CCABB0];
      cpuInstructions3 = [(PPSProcessMetricCollection *)self cpuInstructions];
      [cpuInstructions3 doubleValue];
      v25 = v24;
      cpuInstructions4 = [collectionCopy cpuInstructions];
      [cpuInstructions4 doubleValue];
      v28 = [v22 numberWithDouble:v25 + v27];
      cpuInstructions5 = [collectionCopy cpuInstructions];
      timestamp = [cpuInstructions5 timestamp];
      v31 = [PPSMetricSample sampleWithValue:v28 timestamp:timestamp];
      [(PPSProcessMetricCollection *)self setCpuInstructions:v31];
    }
  }

  cpuPInstructions = [collectionCopy cpuPInstructions];
  if (cpuPInstructions)
  {
    v33 = cpuPInstructions;
    cpuPInstructions2 = [(PPSProcessMetricCollection *)self cpuPInstructions];

    if (cpuPInstructions2)
    {
      v35 = MEMORY[0x277CCABB0];
      cpuPInstructions3 = [(PPSProcessMetricCollection *)self cpuPInstructions];
      [cpuPInstructions3 doubleValue];
      v38 = v37;
      cpuPInstructions4 = [collectionCopy cpuPInstructions];
      [cpuPInstructions4 doubleValue];
      v41 = [v35 numberWithDouble:v38 + v40];
      cpuPInstructions5 = [collectionCopy cpuPInstructions];
      timestamp2 = [cpuPInstructions5 timestamp];
      v44 = [PPSMetricSample sampleWithValue:v41 timestamp:timestamp2];
      [(PPSProcessMetricCollection *)self setCpuPInstructions:v44];
    }
  }

  wifiIn = [collectionCopy wifiIn];
  if (wifiIn)
  {
    v46 = wifiIn;
    wifiIn2 = [(PPSProcessMetricCollection *)self wifiIn];

    if (wifiIn2)
    {
      v48 = MEMORY[0x277CCABB0];
      wifiIn3 = [(PPSProcessMetricCollection *)self wifiIn];
      [wifiIn3 doubleValue];
      v51 = v50;
      wifiIn4 = [collectionCopy wifiIn];
      [wifiIn4 doubleValue];
      v54 = [v48 numberWithDouble:v51 + v53];
      wifiIn5 = [collectionCopy wifiIn];
      timestamp3 = [wifiIn5 timestamp];
      v57 = [PPSMetricSample sampleWithValue:v54 timestamp:timestamp3];
      [(PPSProcessMetricCollection *)self setWifiIn:v57];
    }
  }

  wifiOut = [collectionCopy wifiOut];
  if (wifiOut)
  {
    v59 = wifiOut;
    wifiOut2 = [(PPSProcessMetricCollection *)self wifiOut];

    if (wifiOut2)
    {
      v61 = MEMORY[0x277CCABB0];
      wifiOut3 = [(PPSProcessMetricCollection *)self wifiOut];
      [wifiOut3 doubleValue];
      v64 = v63;
      wifiOut4 = [collectionCopy wifiOut];
      [wifiOut4 doubleValue];
      v67 = [v61 numberWithDouble:v64 + v66];
      wifiOut5 = [collectionCopy wifiOut];
      timestamp4 = [wifiOut5 timestamp];
      v70 = [PPSMetricSample sampleWithValue:v67 timestamp:timestamp4];
      [(PPSProcessMetricCollection *)self setWifiOut:v70];
    }
  }

  cellIn = [collectionCopy cellIn];
  if (cellIn)
  {
    v72 = cellIn;
    cellIn2 = [(PPSProcessMetricCollection *)self cellIn];

    if (cellIn2)
    {
      v74 = MEMORY[0x277CCABB0];
      cellIn3 = [(PPSProcessMetricCollection *)self cellIn];
      [cellIn3 doubleValue];
      v77 = v76;
      cellIn4 = [collectionCopy cellIn];
      [cellIn4 doubleValue];
      v80 = [v74 numberWithDouble:v77 + v79];
      cellIn5 = [collectionCopy cellIn];
      timestamp5 = [cellIn5 timestamp];
      v83 = [PPSMetricSample sampleWithValue:v80 timestamp:timestamp5];
      [(PPSProcessMetricCollection *)self setCellIn:v83];
    }
  }

  cellOut = [collectionCopy cellOut];
  if (cellOut)
  {
    v85 = cellOut;
    cellOut2 = [(PPSProcessMetricCollection *)self cellOut];

    if (cellOut2)
    {
      v87 = MEMORY[0x277CCABB0];
      cellOut3 = [(PPSProcessMetricCollection *)self cellOut];
      [cellOut3 doubleValue];
      v90 = v89;
      cellOut4 = [collectionCopy cellOut];
      [cellOut4 doubleValue];
      v93 = [v87 numberWithDouble:v90 + v92];
      cellOut5 = [collectionCopy cellOut];
      timestamp6 = [cellOut5 timestamp];
      v96 = [PPSMetricSample sampleWithValue:v93 timestamp:timestamp6];
      [(PPSProcessMetricCollection *)self setCellOut:v96];
    }
  }

  bytesRead = [collectionCopy bytesRead];
  if (bytesRead)
  {
    v98 = bytesRead;
    bytesRead2 = [(PPSProcessMetricCollection *)self bytesRead];

    if (bytesRead2)
    {
      v100 = MEMORY[0x277CCABB0];
      bytesRead3 = [(PPSProcessMetricCollection *)self bytesRead];
      [bytesRead3 doubleValue];
      v103 = v102;
      bytesRead4 = [collectionCopy bytesRead];
      [bytesRead4 doubleValue];
      v105 = [v100 numberWithDouble:v103 + v105];
      bytesRead5 = [collectionCopy bytesRead];
      timestamp7 = [bytesRead5 timestamp];
      v109 = [PPSMetricSample sampleWithValue:v105 timestamp:timestamp7];
      [(PPSProcessMetricCollection *)self setBytesRead:v109];
    }
  }

  bytesWritten = [collectionCopy bytesWritten];
  if (bytesWritten)
  {
    v111 = bytesWritten;
    bytesWritten2 = [(PPSProcessMetricCollection *)self bytesWritten];

    if (bytesWritten2)
    {
      v113 = MEMORY[0x277CCABB0];
      bytesWritten3 = [(PPSProcessMetricCollection *)self bytesWritten];
      [bytesWritten3 doubleValue];
      v116 = v115;
      bytesWritten4 = [collectionCopy bytesWritten];
      [bytesWritten4 doubleValue];
      v118 = [v113 numberWithDouble:v116 + v118];
      bytesWritten5 = [collectionCopy bytesWritten];
      timestamp8 = [bytesWritten5 timestamp];
      v122 = [PPSMetricSample sampleWithValue:v118 timestamp:timestamp8];
      [(PPSProcessMetricCollection *)self setBytesWritten:v122];
    }
  }

  aneEnergy = [collectionCopy aneEnergy];
  if (aneEnergy)
  {
    v124 = aneEnergy;
    aneEnergy2 = [(PPSProcessMetricCollection *)self aneEnergy];

    if (aneEnergy2)
    {
      v126 = MEMORY[0x277CCABB0];
      aneEnergy3 = [(PPSProcessMetricCollection *)self aneEnergy];
      [aneEnergy3 doubleValue];
      v129 = v128;
      aneEnergy4 = [collectionCopy aneEnergy];
      [aneEnergy4 doubleValue];
      v131 = [v126 numberWithDouble:v129 + v131];
      aneEnergy5 = [collectionCopy aneEnergy];
      timestamp9 = [aneEnergy5 timestamp];
      v135 = [PPSMetricSample sampleWithValue:v131 timestamp:timestamp9];
      [(PPSProcessMetricCollection *)self setAneEnergy:v135];
    }
  }

  aneTime = [collectionCopy aneTime];
  if (aneTime)
  {
    v137 = aneTime;
    aneEnergy6 = [(PPSProcessMetricCollection *)self aneEnergy];

    if (aneEnergy6)
    {
      v139 = MEMORY[0x277CCABB0];
      aneTime2 = [(PPSProcessMetricCollection *)self aneTime];
      [aneTime2 doubleValue];
      v142 = v141;
      aneTime3 = [collectionCopy aneTime];
      [aneTime3 doubleValue];
      v144 = [v139 numberWithDouble:v142 + v144];
      aneTime4 = [collectionCopy aneTime];
      timestamp10 = [aneTime4 timestamp];
      v148 = [PPSMetricSample sampleWithValue:v144 timestamp:timestamp10];
      [(PPSProcessMetricCollection *)self setAneTime:v148];
    }
  }

  gpuEnergy = [collectionCopy gpuEnergy];
  if (gpuEnergy)
  {
    v150 = gpuEnergy;
    gpuEnergy2 = [(PPSProcessMetricCollection *)self gpuEnergy];

    if (gpuEnergy2)
    {
      v152 = MEMORY[0x277CCABB0];
      gpuEnergy3 = [(PPSProcessMetricCollection *)self gpuEnergy];
      [gpuEnergy3 doubleValue];
      v155 = v154;
      gpuEnergy4 = [collectionCopy gpuEnergy];
      [gpuEnergy4 doubleValue];
      v157 = [v152 numberWithDouble:v155 + v157];
      gpuEnergy5 = [collectionCopy gpuEnergy];
      timestamp11 = [gpuEnergy5 timestamp];
      v161 = [PPSMetricSample sampleWithValue:v157 timestamp:timestamp11];
      [(PPSProcessMetricCollection *)self setGpuEnergy:v161];
    }
  }

  cpuEnergy = [collectionCopy cpuEnergy];
  if (cpuEnergy)
  {
    v163 = cpuEnergy;
    cpuEnergy2 = [(PPSProcessMetricCollection *)self cpuEnergy];

    if (cpuEnergy2)
    {
      v165 = MEMORY[0x277CCABB0];
      cpuEnergy3 = [(PPSProcessMetricCollection *)self cpuEnergy];
      [cpuEnergy3 doubleValue];
      v168 = v167;
      cpuEnergy4 = [collectionCopy cpuEnergy];
      [cpuEnergy4 doubleValue];
      v170 = [v165 numberWithDouble:v168 + v170];
      cpuEnergy5 = [collectionCopy cpuEnergy];
      timestamp12 = [cpuEnergy5 timestamp];
      v174 = [PPSMetricSample sampleWithValue:v170 timestamp:timestamp12];
      [(PPSProcessMetricCollection *)self setCpuEnergy:v174];
    }
  }

  qosUtility = [collectionCopy qosUtility];
  if (qosUtility)
  {
    v176 = qosUtility;
    qosUtility2 = [(PPSProcessMetricCollection *)self qosUtility];

    if (qosUtility2)
    {
      v178 = MEMORY[0x277CCABB0];
      qosUtility3 = [(PPSProcessMetricCollection *)self qosUtility];
      [qosUtility3 doubleValue];
      v181 = v180;
      qosUtility4 = [collectionCopy qosUtility];
      [qosUtility4 doubleValue];
      v183 = [v178 numberWithDouble:v181 + v183];
      qosUtility5 = [collectionCopy qosUtility];
      timestamp13 = [qosUtility5 timestamp];
      v187 = [PPSMetricSample sampleWithValue:v183 timestamp:timestamp13];
      [(PPSProcessMetricCollection *)self setQosUtility:v187];
    }
  }

  qosBackground = [collectionCopy qosBackground];
  if (qosBackground)
  {
    v189 = qosBackground;
    qosBackground2 = [(PPSProcessMetricCollection *)self qosBackground];

    if (qosBackground2)
    {
      v191 = MEMORY[0x277CCABB0];
      qosBackground3 = [(PPSProcessMetricCollection *)self qosBackground];
      [qosBackground3 doubleValue];
      v194 = v193;
      qosBackground4 = [collectionCopy qosBackground];
      [qosBackground4 doubleValue];
      v196 = [v191 numberWithDouble:v194 + v196];
      qosBackground5 = [collectionCopy qosBackground];
      timestamp14 = [qosBackground5 timestamp];
      v200 = [PPSMetricSample sampleWithValue:v196 timestamp:timestamp14];
      [(PPSProcessMetricCollection *)self setQosBackground:v200];
    }
  }

  qosUserInitiated = [collectionCopy qosUserInitiated];
  if (qosUserInitiated)
  {
    v202 = qosUserInitiated;
    qosUserInitiated2 = [(PPSProcessMetricCollection *)self qosUserInitiated];

    if (qosUserInitiated2)
    {
      v204 = MEMORY[0x277CCABB0];
      qosUserInitiated3 = [(PPSProcessMetricCollection *)self qosUserInitiated];
      [qosUserInitiated3 doubleValue];
      v207 = v206;
      qosUserInitiated4 = [collectionCopy qosUserInitiated];
      [qosUserInitiated4 doubleValue];
      v209 = [v204 numberWithDouble:v207 + v209];
      qosUserInitiated5 = [collectionCopy qosUserInitiated];
      timestamp15 = [qosUserInitiated5 timestamp];
      v213 = [PPSMetricSample sampleWithValue:v209 timestamp:timestamp15];
      [(PPSProcessMetricCollection *)self setQosUserInitiated:v213];
    }
  }

  qosUserInteractive = [collectionCopy qosUserInteractive];
  if (qosUserInteractive)
  {
    v215 = qosUserInteractive;
    qosUserInteractive2 = [(PPSProcessMetricCollection *)self qosUserInteractive];

    if (qosUserInteractive2)
    {
      v217 = MEMORY[0x277CCABB0];
      qosUserInteractive3 = [(PPSProcessMetricCollection *)self qosUserInteractive];
      [qosUserInteractive3 doubleValue];
      v220 = v219;
      qosUserInteractive4 = [collectionCopy qosUserInteractive];
      [qosUserInteractive4 doubleValue];
      v222 = [v217 numberWithDouble:v220 + v222];
      qosUserInteractive5 = [collectionCopy qosUserInteractive];
      timestamp16 = [qosUserInteractive5 timestamp];
      v226 = [PPSMetricSample sampleWithValue:v222 timestamp:timestamp16];
      [(PPSProcessMetricCollection *)self setQosUserInteractive:v226];
    }
  }

  qosDefault = [collectionCopy qosDefault];
  if (qosDefault)
  {
    v228 = qosDefault;
    qosDefault2 = [(PPSProcessMetricCollection *)self qosDefault];

    if (qosDefault2)
    {
      v230 = MEMORY[0x277CCABB0];
      qosDefault3 = [(PPSProcessMetricCollection *)self qosDefault];
      [qosDefault3 doubleValue];
      v233 = v232;
      qosDefault4 = [collectionCopy qosDefault];
      [qosDefault4 doubleValue];
      v235 = [v230 numberWithDouble:v233 + v235];
      qosDefault5 = [collectionCopy qosDefault];
      timestamp17 = [qosDefault5 timestamp];
      v239 = [PPSMetricSample sampleWithValue:v235 timestamp:timestamp17];
      [(PPSProcessMetricCollection *)self setQosDefault:v239];
    }
  }

  qosMaintenance = [collectionCopy qosMaintenance];
  if (qosMaintenance)
  {
    v241 = qosMaintenance;
    qosMaintenance2 = [(PPSProcessMetricCollection *)self qosMaintenance];

    if (qosMaintenance2)
    {
      v243 = MEMORY[0x277CCABB0];
      qosMaintenance3 = [(PPSProcessMetricCollection *)self qosMaintenance];
      [qosMaintenance3 doubleValue];
      v246 = v245;
      qosMaintenance4 = [collectionCopy qosMaintenance];
      [qosMaintenance4 doubleValue];
      v248 = [v243 numberWithDouble:v246 + v248];
      qosMaintenance5 = [collectionCopy qosMaintenance];
      timestamp18 = [qosMaintenance5 timestamp];
      v252 = [PPSMetricSample sampleWithValue:v248 timestamp:timestamp18];
      [(PPSProcessMetricCollection *)self setQosMaintenance:v252];
    }
  }

  qosUnspecified = [collectionCopy qosUnspecified];
  if (qosUnspecified)
  {
    v254 = qosUnspecified;
    qosUnspecified2 = [(PPSProcessMetricCollection *)self qosUnspecified];

    if (qosUnspecified2)
    {
      v256 = MEMORY[0x277CCABB0];
      qosUnspecified3 = [(PPSProcessMetricCollection *)self qosUnspecified];
      [qosUnspecified3 doubleValue];
      v259 = v258;
      qosUnspecified4 = [collectionCopy qosUnspecified];
      [qosUnspecified4 doubleValue];
      v261 = [v256 numberWithDouble:v259 + v261];
      qosUnspecified5 = [collectionCopy qosUnspecified];
      timestamp19 = [qosUnspecified5 timestamp];
      v265 = [PPSMetricSample sampleWithValue:v261 timestamp:timestamp19];
      [(PPSProcessMetricCollection *)self setQosUnspecified:v265];
    }
  }

  energyCost = [collectionCopy energyCost];
  if (energyCost)
  {
    v267 = energyCost;
    energyCost2 = [(PPSProcessMetricCollection *)self energyCost];

    if (energyCost2)
    {
      v269 = MEMORY[0x277CCABB0];
      energyCost3 = [(PPSProcessMetricCollection *)self energyCost];
      [energyCost3 doubleValue];
      v272 = v271;
      energyCost4 = [collectionCopy energyCost];
      [energyCost4 doubleValue];
      v274 = [v269 numberWithDouble:v272 + v274];
      energyCost5 = [collectionCopy energyCost];
      timestamp20 = [energyCost5 timestamp];
      v278 = [PPSMetricSample sampleWithValue:v274 timestamp:timestamp20];
      [(PPSProcessMetricCollection *)self setEnergyCost:v278];
    }
  }

  cpuCost = [collectionCopy cpuCost];
  if (cpuCost)
  {
    v280 = cpuCost;
    cpuCost2 = [(PPSProcessMetricCollection *)self cpuCost];

    if (cpuCost2)
    {
      v282 = MEMORY[0x277CCABB0];
      cpuCost3 = [(PPSProcessMetricCollection *)self cpuCost];
      [cpuCost3 doubleValue];
      v285 = v284;
      cpuCost4 = [collectionCopy cpuCost];
      [cpuCost4 doubleValue];
      v287 = [v282 numberWithDouble:v285 + v287];
      cpuCost5 = [collectionCopy cpuCost];
      timestamp21 = [cpuCost5 timestamp];
      v291 = [PPSMetricSample sampleWithValue:v287 timestamp:timestamp21];
      [(PPSProcessMetricCollection *)self setCpuCost:v291];
    }
  }

  energyOverhead = [collectionCopy energyOverhead];
  if (energyOverhead)
  {
    v293 = energyOverhead;
    energyOverhead2 = [(PPSProcessMetricCollection *)self energyOverhead];

    if (energyOverhead2)
    {
      v295 = MEMORY[0x277CCABB0];
      energyOverhead3 = [(PPSProcessMetricCollection *)self energyOverhead];
      [energyOverhead3 doubleValue];
      v298 = v297;
      energyOverhead4 = [collectionCopy energyOverhead];
      [energyOverhead4 doubleValue];
      v300 = [v295 numberWithDouble:v298 + v300];
      energyOverhead5 = [collectionCopy energyOverhead];
      timestamp22 = [energyOverhead5 timestamp];
      v304 = [PPSMetricSample sampleWithValue:v300 timestamp:timestamp22];
      [(PPSProcessMetricCollection *)self setEnergyOverhead:v304];
    }
  }

  cpuSeconds = [collectionCopy cpuSeconds];
  if (cpuSeconds)
  {
    v306 = cpuSeconds;
    cpuSeconds2 = [(PPSProcessMetricCollection *)self cpuSeconds];

    if (cpuSeconds2)
    {
      v308 = MEMORY[0x277CCABB0];
      cpuSeconds3 = [(PPSProcessMetricCollection *)self cpuSeconds];
      [cpuSeconds3 doubleValue];
      v311 = v310;
      cpuSeconds4 = [collectionCopy cpuSeconds];
      [cpuSeconds4 doubleValue];
      v313 = [v308 numberWithDouble:v311 + v313];
      cpuSeconds5 = [collectionCopy cpuSeconds];
      timestamp23 = [cpuSeconds5 timestamp];
      v317 = [PPSMetricSample sampleWithValue:v313 timestamp:timestamp23];
      [(PPSProcessMetricCollection *)self setCpuSeconds:v317];
    }
  }

  gpuCost = [collectionCopy gpuCost];
  if (gpuCost)
  {
    v319 = gpuCost;
    gpuCost2 = [(PPSProcessMetricCollection *)self gpuCost];

    if (gpuCost2)
    {
      v321 = MEMORY[0x277CCABB0];
      gpuCost3 = [(PPSProcessMetricCollection *)self gpuCost];
      [gpuCost3 doubleValue];
      v324 = v323;
      gpuCost4 = [collectionCopy gpuCost];
      [gpuCost4 doubleValue];
      v326 = [v321 numberWithDouble:v324 + v326];
      gpuCost5 = [collectionCopy gpuCost];
      timestamp24 = [gpuCost5 timestamp];
      v330 = [PPSMetricSample sampleWithValue:v326 timestamp:timestamp24];
      [(PPSProcessMetricCollection *)self setGpuCost:v330];
    }
  }

  gpuTime = [collectionCopy gpuTime];
  if (gpuTime)
  {
    v332 = gpuTime;
    gpuTime2 = [(PPSProcessMetricCollection *)self gpuTime];

    if (gpuTime2)
    {
      v334 = MEMORY[0x277CCABB0];
      gpuTime3 = [(PPSProcessMetricCollection *)self gpuTime];
      [gpuTime3 doubleValue];
      v337 = v336;
      gpuTime4 = [collectionCopy gpuTime];
      [gpuTime4 doubleValue];
      v339 = [v334 numberWithDouble:v337 + v339];
      gpuTime5 = [collectionCopy gpuTime];
      timestamp25 = [gpuTime5 timestamp];
      v343 = [PPSMetricSample sampleWithValue:v339 timestamp:timestamp25];
      [(PPSProcessMetricCollection *)self setGpuTime:v343];
    }
  }

  networkCost = [collectionCopy networkCost];
  if (networkCost)
  {
    v345 = networkCost;
    networkCost2 = [(PPSProcessMetricCollection *)self networkCost];

    if (networkCost2)
    {
      v347 = MEMORY[0x277CCABB0];
      networkCost3 = [(PPSProcessMetricCollection *)self networkCost];
      [networkCost3 doubleValue];
      v350 = v349;
      networkCost4 = [collectionCopy networkCost];
      [networkCost4 doubleValue];
      v352 = [v347 numberWithDouble:v350 + v352];
      networkCost5 = [collectionCopy networkCost];
      timestamp26 = [networkCost5 timestamp];
      v356 = [PPSMetricSample sampleWithValue:v352 timestamp:timestamp26];
      [(PPSProcessMetricCollection *)self setNetworkCost:v356];
    }
  }

  locationCost = [collectionCopy locationCost];
  if (locationCost)
  {
    v358 = locationCost;
    locationCost2 = [(PPSProcessMetricCollection *)self locationCost];

    if (locationCost2)
    {
      v360 = MEMORY[0x277CCABB0];
      locationCost3 = [(PPSProcessMetricCollection *)self locationCost];
      [locationCost3 doubleValue];
      v363 = v362;
      locationCost4 = [collectionCopy locationCost];
      [locationCost4 doubleValue];
      v365 = [v360 numberWithDouble:v363 + v365];
      locationCost5 = [collectionCopy locationCost];
      timestamp27 = [locationCost5 timestamp];
      v369 = [PPSMetricSample sampleWithValue:v365 timestamp:timestamp27];
      [(PPSProcessMetricCollection *)self setLocationCost:v369];
    }
  }

  gpuCost6 = [collectionCopy gpuCost];
  if (gpuCost6)
  {
    v371 = gpuCost6;
    gpuCost7 = [(PPSProcessMetricCollection *)self gpuCost];

    if (gpuCost7)
    {
      v373 = MEMORY[0x277CCABB0];
      gpuCost8 = [(PPSProcessMetricCollection *)self gpuCost];
      [gpuCost8 doubleValue];
      v376 = v375;
      gpuCost9 = [collectionCopy gpuCost];
      [gpuCost9 doubleValue];
      v378 = [v373 numberWithDouble:v376 + v378];
      gpuCost10 = [collectionCopy gpuCost];
      timestamp28 = [gpuCost10 timestamp];
      v382 = [PPSMetricSample sampleWithValue:v378 timestamp:timestamp28];
      [(PPSProcessMetricCollection *)self setGpuCost:v382];
    }
  }

  locationDesiredAccuracy = [collectionCopy locationDesiredAccuracy];
  if (locationDesiredAccuracy)
  {
    v384 = locationDesiredAccuracy;
    locationDesiredAccuracy2 = [(PPSProcessMetricCollection *)self locationDesiredAccuracy];

    if (locationDesiredAccuracy2)
    {
      locationDesiredAccuracy3 = [collectionCopy locationDesiredAccuracy];
      [(PPSProcessMetricCollection *)self setLocationDesiredAccuracy:locationDesiredAccuracy3];
    }
  }

  ongoingLocation = [collectionCopy ongoingLocation];
  if (ongoingLocation)
  {
    v388 = ongoingLocation;
    ongoingLocation2 = [(PPSProcessMetricCollection *)self ongoingLocation];

    if (ongoingLocation2)
    {
      ongoingLocation3 = [collectionCopy ongoingLocation];
      [(PPSProcessMetricCollection *)self setOngoingLocation:ongoingLocation3];
    }
  }

  applicationState = [collectionCopy applicationState];
  if (applicationState)
  {
    v392 = applicationState;
    applicationState2 = [(PPSProcessMetricCollection *)self applicationState];

    if (applicationState2)
    {
      applicationState3 = [collectionCopy applicationState];
      [(PPSProcessMetricCollection *)self setApplicationState:applicationState3];
    }
  }

  displayPower = [collectionCopy displayPower];
  if (displayPower)
  {
    v396 = displayPower;
    displayPower2 = [(PPSProcessMetricCollection *)self displayPower];

    if (displayPower2)
    {
      displayPower3 = [collectionCopy displayPower];
      [(PPSProcessMetricCollection *)self setDisplayPower:displayPower3];
    }
  }

  weightOnScreen = [collectionCopy weightOnScreen];
  if (weightOnScreen)
  {
    v400 = weightOnScreen;
    weightOnScreen2 = [(PPSProcessMetricCollection *)self weightOnScreen];

    if (weightOnScreen2)
    {
      weightOnScreen3 = [collectionCopy weightOnScreen];
      [(PPSProcessMetricCollection *)self setWeightOnScreen:weightOnScreen3];
    }
  }

  networkingPower = [collectionCopy networkingPower];
  [(PPSProcessMetricCollection *)self setNetworkingPower:networkingPower];

  -[PPSProcessMetricCollection setAudioActive:](self, "setAudioActive:", [collectionCopy audioActive]);
}

- (void)clearMetrics
{
  v3 = PPSMetricMonitorLogHandleForCategory(2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [PPSMetricCollection clearMetrics:v3];
  }

  date = [MEMORY[0x277CBEAA8] date];
  [(PPSProcessMetricCollection *)self setSampleTime:&unk_2843008D0];
  outCount = 0;
  v5 = objc_opt_class();
  v6 = class_copyPropertyList(v5, &outCount);
  if (outCount)
  {
    for (i = 0; i < outCount; ++i)
    {
      v8 = v6[i];
      Name = property_getName(v8);
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:property_getAttributes(v8)];
      v11 = [v10 containsString:@"PPSMetricSample"];

      if (v11)
      {
        v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:Name];
        NSSelectorFromString(v12);
        if (objc_opt_respondsToSelector())
        {
          v13 = [PPSMetricSample sampleWithValue:&unk_2843008D0 timestamp:date];
          [(PPSProcessMetricCollection *)self setValue:v13 forKey:v12];
        }
      }
    }
  }

  free(v6);
}

@end