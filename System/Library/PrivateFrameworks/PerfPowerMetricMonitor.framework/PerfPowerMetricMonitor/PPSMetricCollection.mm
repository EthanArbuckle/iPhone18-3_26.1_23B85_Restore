@interface PPSMetricCollection
+ (id)_metricSamplePropertyKeys;
+ (id)allPropertyKeys;
- (PPSMetricCollection)init;
- (PPSMetricCollection)initWithCoder:(id)coder;
- (id)_stringFromInducedThermalPressure:(int64_t)pressure;
- (id)_stringFromThermalPressure:(int64_t)pressure;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)clearMetrics:(id)metrics;
- (void)combineWithMetricCollection:(id)collection trackedPids:(id)pids;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PPSMetricCollection

+ (id)allPropertyKeys
{
  if (allPropertyKeys_onceToken != -1)
  {
    +[PPSMetricCollection allPropertyKeys];
  }

  v3 = allPropertyKeys_keys;

  return v3;
}

void __38__PPSMetricCollection_allPropertyKeys__block_invoke()
{
  v7[4] = *MEMORY[0x277D85DE8];
  v0 = +[PPSMetricCollection _metricSamplePropertyKeys];
  v1 = MEMORY[0x277CBEB98];
  v7[0] = @"isSystemPowerAvailableWhileCharging";
  v7[1] = @"thermalPressure";
  v7[2] = @"inducedThermalPressure";
  v7[3] = @"sampleTime";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:4];
  v3 = [v1 setWithArray:v2];
  v4 = [v0 setByAddingObjectsFromSet:v3];
  v5 = allPropertyKeys_keys;
  allPropertyKeys_keys = v4;

  v6 = *MEMORY[0x277D85DE8];
}

+ (id)_metricSamplePropertyKeys
{
  if (_metricSamplePropertyKeys_onceToken != -1)
  {
    +[PPSMetricCollection _metricSamplePropertyKeys];
  }

  v3 = _metricSamplePropertyKeys_keys;

  return v3;
}

uint64_t __48__PPSMetricCollection__metricSamplePropertyKeys__block_invoke()
{
  _metricSamplePropertyKeys_keys = [MEMORY[0x277CBEB98] setWithArray:&unk_284300938];

  return MEMORY[0x2821F96F8]();
}

- (PPSMetricCollection)init
{
  v6.receiver = self;
  v6.super_class = PPSMetricCollection;
  v2 = [(PPSMetricCollection *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    processMetrics = v2->_processMetrics;
    v2->_processMetrics = dictionary;
  }

  return v2;
}

- (PPSMetricCollection)initWithCoder:(id)coder
{
  v31 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v29.receiver = self;
  v29.super_class = PPSMetricCollection;
  v5 = [(PPSMetricCollection *)&v29 init];
  if (v5)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v6 = +[PPSMetricCollection _metricSamplePropertyKeys];
    v7 = [v6 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v26;
      do
      {
        v10 = 0;
        do
        {
          if (*v26 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v25 + 1) + 8 * v10);
          v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:v11];
          [(PPSMetricCollection *)v5 setValue:v12 forKey:v11];

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v8);
    }

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"isSystemPowerAvailableWhileCharging"];
    v5->_isSystemPowerAvailableWhileCharging = [v13 BOOLValue];

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"thermalPressure"];
    v5->_thermalPressure = [v14 intValue];

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"inducedThermalPressure"];
    v5->_inducedThermalPressure = [v15 intValue];

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sampleTime"];
    sampleTime = v5->_sampleTime;
    v5->_sampleTime = v16;

    v18 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
    v19 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
    v20 = [coderCopy decodeDictionaryWithKeysOfClasses:v18 objectsOfClasses:v19 forKey:@"processMetrics"];
    v21 = [v20 mutableCopy];
    processMetrics = v5->_processMetrics;
    v5->_processMetrics = v21;
  }

  v23 = *MEMORY[0x277D85DE8];
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
  v5 = +[PPSMetricCollection _metricSamplePropertyKeys];
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
        v11 = [(PPSMetricCollection *)self valueForKey:v10];
        [coderCopy encodeObject:v11 forKey:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  v12 = [MEMORY[0x277CCABB0] numberWithBool:{-[PPSMetricCollection isSystemPowerAvailableWhileCharging](self, "isSystemPowerAvailableWhileCharging")}];
  [coderCopy encodeObject:v12 forKey:@"isSystemPowerAvailableWhileCharging"];

  v13 = [MEMORY[0x277CCABB0] numberWithInteger:{-[PPSMetricCollection thermalPressure](self, "thermalPressure")}];
  [coderCopy encodeObject:v13 forKey:@"thermalPressure"];

  v14 = [MEMORY[0x277CCABB0] numberWithInteger:{-[PPSMetricCollection inducedThermalPressure](self, "inducedThermalPressure")}];
  [coderCopy encodeObject:v14 forKey:@"inducedThermalPressure"];

  sampleTime = [(PPSMetricCollection *)self sampleTime];
  [coderCopy encodeObject:sampleTime forKey:@"sampleTime"];

  processMetrics = [(PPSMetricCollection *)self processMetrics];
  [coderCopy encodeObject:processMetrics forKey:@"processMetrics"];

  v17 = *MEMORY[0x277D85DE8];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = [+[PPSMetricCollection allocWithZone:](PPSMetricCollection init];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = +[PPSMetricCollection _metricSamplePropertyKeys];
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = [(PPSMetricCollection *)self valueForKey:v11];
        v13 = [v12 copyWithZone:zone];
        [(PPSMetricCollection *)v5 setValue:v13 forKey:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  v5->_isSystemPowerAvailableWhileCharging = self->_isSystemPowerAvailableWhileCharging;
  v5->_thermalPressure = self->_thermalPressure;
  v5->_inducedThermalPressure = self->_inducedThermalPressure;
  objc_storeStrong(&v5->_sampleTime, self->_sampleTime);
  v14 = [(NSMutableDictionary *)self->_processMetrics copyWithZone:zone];
  processMetrics = v5->_processMetrics;
  v5->_processMetrics = v14;

  v16 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)description
{
  v156 = 0;
  v157 = &v156;
  v158 = 0x3032000000;
  v159 = __Block_byref_object_copy__2;
  v160 = __Block_byref_object_dispose__2;
  v161 = 0;
  v61 = MEMORY[0x277CCACA8];
  systemLoadPower = [(PPSMetricCollection *)self systemLoadPower];
  value = [systemLoadPower value];
  [value doubleValue];
  v60 = v3;
  systemLoadPower2 = [(PPSMetricCollection *)self systemLoadPower];
  timestamp = [systemLoadPower2 timestamp];
  v110 = PPSTimeStringFromDate(timestamp);
  batteryPower = [(PPSMetricCollection *)self batteryPower];
  value2 = [batteryPower value];
  [value2 doubleValue];
  v59 = v4;
  batteryPower2 = [(PPSMetricCollection *)self batteryPower];
  timestamp2 = [batteryPower2 timestamp];
  v107 = PPSTimeStringFromDate(timestamp2);
  dcInputPower = [(PPSMetricCollection *)self dcInputPower];
  value3 = [dcInputPower value];
  [value3 doubleValue];
  v58 = v5;
  dcInputPower2 = [(PPSMetricCollection *)self dcInputPower];
  timestamp3 = [dcInputPower2 timestamp];
  v104 = PPSTimeStringFromDate(timestamp3);
  cpuPower = [(PPSMetricCollection *)self cpuPower];
  value4 = [cpuPower value];
  [value4 doubleValue];
  v57 = v6;
  cpuPower2 = [(PPSMetricCollection *)self cpuPower];
  timestamp4 = [cpuPower2 timestamp];
  v101 = PPSTimeStringFromDate(timestamp4);
  gpuPower = [(PPSMetricCollection *)self gpuPower];
  value5 = [gpuPower value];
  [value5 doubleValue];
  v56 = v7;
  gpuPower2 = [(PPSMetricCollection *)self gpuPower];
  timestamp5 = [gpuPower2 timestamp];
  v98 = PPSTimeStringFromDate(timestamp5);
  dramPower = [(PPSMetricCollection *)self dramPower];
  value6 = [dramPower value];
  [value6 doubleValue];
  v55 = v8;
  dramPower2 = [(PPSMetricCollection *)self dramPower];
  timestamp6 = [dramPower2 timestamp];
  v96 = PPSTimeStringFromDate(timestamp6);
  otherSocPower = [(PPSMetricCollection *)self otherSocPower];
  value7 = [otherSocPower value];
  [value7 doubleValue];
  v54 = v9;
  otherSocPower2 = [(PPSMetricCollection *)self otherSocPower];
  timestamp7 = [otherSocPower2 timestamp];
  v94 = PPSTimeStringFromDate(timestamp7);
  wifiPower = [(PPSMetricCollection *)self wifiPower];
  value8 = [wifiPower value];
  [value8 doubleValue];
  v53 = v10;
  wifiPower2 = [(PPSMetricCollection *)self wifiPower];
  timestamp8 = [wifiPower2 timestamp];
  v91 = PPSTimeStringFromDate(timestamp8);
  cellularPower = [(PPSMetricCollection *)self cellularPower];
  value9 = [cellularPower value];
  [value9 doubleValue];
  v52 = v11;
  cellularPower2 = [(PPSMetricCollection *)self cellularPower];
  timestamp9 = [cellularPower2 timestamp];
  v88 = PPSTimeStringFromDate(timestamp9);
  displayPower = [(PPSMetricCollection *)self displayPower];
  value10 = [displayPower value];
  [value10 doubleValue];
  v51 = v12;
  displayPower2 = [(PPSMetricCollection *)self displayPower];
  timestamp10 = [displayPower2 timestamp];
  v85 = PPSTimeStringFromDate(timestamp10);
  chargingRate = [(PPSMetricCollection *)self chargingRate];
  value11 = [chargingRate value];
  intValue = [value11 intValue];
  chargingRate2 = [(PPSMetricCollection *)self chargingRate];
  timestamp11 = [chargingRate2 timestamp];
  v82 = PPSTimeStringFromDate(timestamp11);
  isSystemPowerAvailableWhileCharging = [(PPSMetricCollection *)self isSystemPowerAvailableWhileCharging];
  v14 = "NO";
  if (isSystemPowerAvailableWhileCharging)
  {
    v14 = "YES";
  }

  v49 = v14;
  batteryTemperature = [(PPSMetricCollection *)self batteryTemperature];
  value12 = [batteryTemperature value];
  [value12 doubleValue];
  v48 = v15;
  batteryTemperature2 = [(PPSMetricCollection *)self batteryTemperature];
  timestamp12 = [batteryTemperature2 timestamp];
  v79 = PPSTimeStringFromDate(timestamp12);
  skinTemperature = [(PPSMetricCollection *)self skinTemperature];
  value13 = [skinTemperature value];
  [value13 doubleValue];
  v17 = v16;
  skinTemperature2 = [(PPSMetricCollection *)self skinTemperature];
  timestamp13 = [skinTemperature2 timestamp];
  v76 = PPSTimeStringFromDate(timestamp13);
  v97 = [(PPSMetricCollection *)self _stringFromThermalPressure:[(PPSMetricCollection *)self thermalPressure]];
  uTF8String = [v97 UTF8String];
  v95 = [(PPSMetricCollection *)self _stringFromInducedThermalPressure:[(PPSMetricCollection *)self inducedThermalPressure]];
  uTF8String2 = [v95 UTF8String];
  displayAPL = [(PPSMetricCollection *)self displayAPL];
  value14 = [displayAPL value];
  [value14 doubleValue];
  v19 = v18;
  displayAPL2 = [(PPSMetricCollection *)self displayAPL];
  timestamp14 = [displayAPL2 timestamp];
  v71 = PPSTimeStringFromDate(timestamp14);
  displayAZL = [(PPSMetricCollection *)self displayAZL];
  value15 = [displayAZL value];
  [value15 doubleValue];
  v21 = v20;
  displayAZL2 = [(PPSMetricCollection *)self displayAZL];
  timestamp15 = [displayAZL2 timestamp];
  v68 = PPSTimeStringFromDate(timestamp15);
  displayCost = [(PPSMetricCollection *)self displayCost];
  value16 = [displayCost value];
  [value16 doubleValue];
  v23 = v22;
  displayCost2 = [(PPSMetricCollection *)self displayCost];
  timestamp16 = [displayCost2 timestamp];
  v65 = PPSTimeStringFromDate(timestamp16);
  displayFPS = [(PPSMetricCollection *)self displayFPS];
  value17 = [displayFPS value];
  [value17 doubleValue];
  v25 = v24;
  displayFPS2 = [(PPSMetricCollection *)self displayFPS];
  timestamp17 = [displayFPS2 timestamp];
  v63 = PPSTimeStringFromDate(timestamp17);
  scanoutFPS = [(PPSMetricCollection *)self scanoutFPS];
  value18 = [scanoutFPS value];
  [value18 doubleValue];
  v27 = v26;
  scanoutFPS2 = [(PPSMetricCollection *)self scanoutFPS];
  timestamp18 = [scanoutFPS2 timestamp];
  v62 = PPSTimeStringFromDate(timestamp18);
  brightness = [(PPSMetricCollection *)self brightness];
  value19 = [brightness value];
  [value19 doubleValue];
  v30 = v29;
  brightness2 = [(PPSMetricCollection *)self brightness];
  timestamp19 = [brightness2 timestamp];
  v33 = PPSTimeStringFromDate(timestamp19);
  edrHeadroom = [(PPSMetricCollection *)self edrHeadroom];
  value20 = [edrHeadroom value];
  [value20 doubleValue];
  v37 = v36;
  edrHeadroom2 = [(PPSMetricCollection *)self edrHeadroom];
  timestamp20 = [edrHeadroom2 timestamp];
  v40 = PPSTimeStringFromDate(timestamp20);
  v41 = [v61 stringWithFormat:@"------------------ Power -------------------\nSystem Load        %8.3f W   %@\nBattery            %8.3f W   %@\nDC Input           %8.3f W   %@\n\nCPU                %8.3f W   %@\nGPU                %8.3f W   %@\nDRAM               %8.3f W   %@\nOther SoC          %8.3f W   %@\nWiFi               %8.3f W   %@\nCellular           %8.3f W   %@\nDisplay            %8.3f W   %@\n\nCharging Rate      %8d mA  %@\n\nSystem Power Available While Charging: %s\n\n----------------- Thermal ------------------\nBattery            %8.3f °C  %@\nSkin               %8.3f °C  %@\n\nThermal Pressure   %8s\nInduced Pressure   %8s\n\n----------------- Display ------------------\nDisplay APL        %8.3f     %@\nDisplay AZL        %8.3f     %@\nDisplay Cost       %8.3f     %@\nDisplay Avg FPS    %8.3f     %@\nScanout Avg FPS    %8.3f     %@\nBrightness nits    %8.3f     %@\nEDR Headroom    %8.3f     %@", v60, v110, v59, v107, v58, v104, v57, v101, v56, v98, v55, v96, v54, v94, v53, v91, v52, v88, v51, v85, intValue, v82, v49, v48, v79, v17, v76, uTF8String, uTF8String2, v19, v71, v21, v68, v23, v65, v25, v63, v27, v62, v30, v33, v37, v40];
  v42 = v157[5];
  v157[5] = v41;

  processMetrics = [(PPSMetricCollection *)self processMetrics];
  v155[0] = MEMORY[0x277D85DD0];
  v155[1] = 3221225472;
  v155[2] = __34__PPSMetricCollection_description__block_invoke;
  v155[3] = &unk_278847E48;
  v155[4] = &v156;
  [processMetrics enumerateKeysAndObjectsUsingBlock:v155];

  v44 = v157[5];
  _Block_object_dispose(&v156, 8);

  return v44;
}

void __34__PPSMetricCollection_description__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(*(*(a1 + 32) + 8) + 40);
  v6 = a3;
  v7 = [v5 stringByAppendingFormat:@"\n\n-------------- Process %-5d ---------------\n%@", objc_msgSend(a2, "intValue"), v6];

  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

- (void)clearMetrics:(id)metrics
{
  metricsCopy = metrics;
  v5 = PPSMetricMonitorLogHandleForCategory(2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [PPSMetricCollection clearMetrics:v5];
  }

  date = [MEMORY[0x277CBEAA8] date];
  [(PPSMetricCollection *)self setSampleTime:&unk_2843008B8];
  v7 = [PPSMetricSample sampleWithValue:&unk_2843008B8 timestamp:date];
  [(PPSMetricCollection *)self setCpuEnergy:v7];

  v8 = [PPSMetricSample sampleWithValue:&unk_2843008B8 timestamp:date];
  [(PPSMetricCollection *)self setPackageEnergy:v8];

  v9 = [PPSMetricSample sampleWithValue:&unk_2843008B8 timestamp:date];
  [(PPSMetricCollection *)self setGpuEnergy:v9];

  v10 = [PPSMetricSample sampleWithValue:&unk_2843008B8 timestamp:date];
  [(PPSMetricCollection *)self setGpuSRAMEnergy:v10];

  v11 = [PPSMetricSample sampleWithValue:&unk_2843008B8 timestamp:date];
  [(PPSMetricCollection *)self setDisplayEnergy:v11];

  v12 = [PPSMetricSample sampleWithValue:&unk_2843008B8 timestamp:date];
  [(PPSMetricCollection *)self setSystemLoadPower:v12];

  v13 = [PPSMetricSample sampleWithValue:&unk_2843008B8 timestamp:date];
  [(PPSMetricCollection *)self setAccumSystemLoad:v13];

  v14 = [PPSMetricSample sampleWithValue:&unk_2843008B8 timestamp:date];
  [(PPSMetricCollection *)self setBatteryPower:v14];

  v15 = [PPSMetricSample sampleWithValue:&unk_2843008B8 timestamp:date];
  [(PPSMetricCollection *)self setDcInputPower:v15];

  v16 = [PPSMetricSample sampleWithValue:&unk_2843008B8 timestamp:date];
  [(PPSMetricCollection *)self setCpuPower:v16];

  v17 = [PPSMetricSample sampleWithValue:&unk_2843008B8 timestamp:date];
  [(PPSMetricCollection *)self setGpuPower:v17];

  v18 = [PPSMetricSample sampleWithValue:&unk_2843008B8 timestamp:date];
  [(PPSMetricCollection *)self setDramPower:v18];

  v19 = [PPSMetricSample sampleWithValue:&unk_2843008B8 timestamp:date];
  [(PPSMetricCollection *)self setAnePower:v19];

  v20 = [PPSMetricSample sampleWithValue:&unk_2843008B8 timestamp:date];
  [(PPSMetricCollection *)self setOtherSocPower:v20];

  v21 = [PPSMetricSample sampleWithValue:&unk_2843008B8 timestamp:date];
  [(PPSMetricCollection *)self setWifiPower:v21];

  v22 = [PPSMetricSample sampleWithValue:&unk_2843008B8 timestamp:date];
  [(PPSMetricCollection *)self setCellularPower:v22];

  v23 = [PPSMetricSample sampleWithValue:&unk_2843008B8 timestamp:date];
  [(PPSMetricCollection *)self setDisplayPower:v23];

  v24 = [PPSMetricSample sampleWithValue:&unk_2843008B8 timestamp:date];
  [(PPSMetricCollection *)self setDisplayFPS:v24];

  v25 = [PPSMetricSample sampleWithValue:&unk_2843008B8 timestamp:date];
  [(PPSMetricCollection *)self setWifiAWDLRange:v25];

  v26 = [PPSMetricSample sampleWithValue:&unk_2843008B8 timestamp:date];
  [(PPSMetricCollection *)self setChargingRate:v26];

  v27 = [PPSMetricSample sampleWithValue:&unk_2843008B8 timestamp:date];
  [(PPSMetricCollection *)self setDisplayAPL:v27];

  v28 = [PPSMetricSample sampleWithValue:&unk_2843008B8 timestamp:date];
  [(PPSMetricCollection *)self setDisplayCost:v28];

  v29 = [PPSMetricSample sampleWithValue:&unk_2843008B8 timestamp:date];
  [(PPSMetricCollection *)self setAneEnergy:v29];

  v30 = [PPSMetricSample sampleWithValue:&unk_2843008B8 timestamp:date];
  [(PPSMetricCollection *)self setDcsEnergy:v30];

  v31 = [PPSMetricSample sampleWithValue:&unk_2843008B8 timestamp:date];
  [(PPSMetricCollection *)self setDramEnergy:v31];

  v32 = [PPSMetricSample sampleWithValue:&unk_2843008B8 timestamp:date];
  [(PPSMetricCollection *)self setPcieEnergy:v32];

  v33 = [PPSMetricSample sampleWithValue:&unk_2843008B8 timestamp:date];
  [(PPSMetricCollection *)self setDramBytes:v33];

  v34 = [PPSMetricSample sampleWithValue:&unk_2843008B8 timestamp:date];
  [(PPSMetricCollection *)self setAneDCSBytes:v34];

  v35 = [PPSMetricSample sampleWithValue:&unk_2843008B8 timestamp:date];
  [(PPSMetricCollection *)self setAneFabricBytes:v35];

  v36 = [PPSMetricSample sampleWithValue:&unk_2843008B8 timestamp:date];
  [(PPSMetricCollection *)self setWifiAWDLStatus:v36];

  v37 = [PPSMetricSample sampleWithValue:&unk_2843008B8 timestamp:date];
  [(PPSMetricCollection *)self setScanoutFPS:v37];

  v38 = [PPSMetricSample sampleWithValue:&unk_2843008B8 timestamp:date];
  [(PPSMetricCollection *)self setBatteryTemperature:v38];

  v39 = [PPSMetricSample sampleWithValue:&unk_2843008B8 timestamp:date];
  [(PPSMetricCollection *)self setSkinTemperature:v39];

  v40 = [PPSMetricSample sampleWithValue:&unk_2843008B8 timestamp:date];
  [(PPSMetricCollection *)self setSkinTemperature:v40];

  v41 = [PPSMetricSample sampleWithValue:&unk_2843008B8 timestamp:date];
  [(PPSMetricCollection *)self setBrightness:v41];

  v42 = [PPSMetricSample sampleWithValue:&unk_2843008B8 timestamp:date];
  [(PPSMetricCollection *)self setEdrHeadroom:v42];

  v43 = [PPSMetricSample sampleWithValue:&unk_2843008B8 timestamp:date];
  [(PPSMetricCollection *)self setDisplayAZL:v43];

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [(PPSMetricCollection *)self setProcessMetrics:dictionary];

  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __36__PPSMetricCollection_clearMetrics___block_invoke;
  v45[3] = &unk_278847E70;
  v45[4] = self;
  [metricsCopy enumerateObjectsUsingBlock:v45];
}

void __36__PPSMetricCollection_clearMetrics___block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [*(a1 + 32) processMetrics];
  v4 = [v3 objectForKeyedSubscript:v10];

  if (!v4)
  {
    v5 = [*(a1 + 32) processMetrics];
    v6 = [v5 mutableCopy];

    v7 = objc_alloc_init(PPSProcessMetricCollection);
    [v6 setObject:v7 forKeyedSubscript:v10];

    [*(a1 + 32) setProcessMetrics:v6];
  }

  v8 = [*(a1 + 32) processMetrics];
  v9 = [v8 objectForKeyedSubscript:v10];
  [v9 clearMetrics];
}

- (void)combineWithMetricCollection:(id)collection trackedPids:(id)pids
{
  collectionCopy = collection;
  pidsCopy = pids;
  v8 = PPSMetricMonitorLogHandleForCategory(2);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [PPSMetricCollection combineWithMetricCollection:v8 trackedPids:?];
  }

  sampleTime = [collectionCopy sampleTime];
  if (sampleTime)
  {
    v10 = sampleTime;
    sampleTime2 = [(PPSMetricCollection *)self sampleTime];

    if (sampleTime2)
    {
      v12 = MEMORY[0x277CCABB0];
      sampleTime3 = [collectionCopy sampleTime];
      [sampleTime3 doubleValue];
      v15 = v14;
      sampleTime4 = [(PPSMetricCollection *)self sampleTime];
      [sampleTime4 doubleValue];
      v18 = [v12 numberWithDouble:v15 + v17];
      [(PPSMetricCollection *)self setSampleTime:v18];
    }
  }

  cpuEnergy = [collectionCopy cpuEnergy];
  if (cpuEnergy)
  {
    v20 = cpuEnergy;
    cpuEnergy2 = [(PPSMetricCollection *)self cpuEnergy];

    if (cpuEnergy2)
    {
      v22 = MEMORY[0x277CCABB0];
      cpuEnergy3 = [(PPSMetricCollection *)self cpuEnergy];
      [cpuEnergy3 doubleValue];
      v25 = v24;
      cpuEnergy4 = [collectionCopy cpuEnergy];
      [cpuEnergy4 doubleValue];
      v28 = [v22 numberWithDouble:v25 + v27];
      cpuEnergy5 = [(PPSMetricCollection *)self cpuEnergy];
      timestamp = [cpuEnergy5 timestamp];
      v31 = [PPSMetricSample sampleWithValue:v28 timestamp:timestamp];
      [(PPSMetricCollection *)self setCpuEnergy:v31];
    }
  }

  packageEnergy = [collectionCopy packageEnergy];
  if (packageEnergy)
  {
    v33 = packageEnergy;
    packageEnergy2 = [(PPSMetricCollection *)self packageEnergy];

    if (packageEnergy2)
    {
      v35 = MEMORY[0x277CCABB0];
      packageEnergy3 = [(PPSMetricCollection *)self packageEnergy];
      [packageEnergy3 doubleValue];
      v38 = v37;
      packageEnergy4 = [collectionCopy packageEnergy];
      [packageEnergy4 doubleValue];
      v41 = [v35 numberWithDouble:v38 + v40];
      packageEnergy5 = [(PPSMetricCollection *)self packageEnergy];
      timestamp2 = [packageEnergy5 timestamp];
      v44 = [PPSMetricSample sampleWithValue:v41 timestamp:timestamp2];
      [(PPSMetricCollection *)self setPackageEnergy:v44];
    }
  }

  gpuEnergy = [collectionCopy gpuEnergy];
  if (gpuEnergy)
  {
    v46 = gpuEnergy;
    gpuEnergy2 = [(PPSMetricCollection *)self gpuEnergy];

    if (gpuEnergy2)
    {
      v48 = MEMORY[0x277CCABB0];
      gpuEnergy3 = [(PPSMetricCollection *)self gpuEnergy];
      [gpuEnergy3 doubleValue];
      v51 = v50;
      gpuEnergy4 = [collectionCopy gpuEnergy];
      [gpuEnergy4 doubleValue];
      v54 = [v48 numberWithDouble:v51 + v53];
      gpuEnergy5 = [(PPSMetricCollection *)self gpuEnergy];
      timestamp3 = [gpuEnergy5 timestamp];
      v57 = [PPSMetricSample sampleWithValue:v54 timestamp:timestamp3];
      [(PPSMetricCollection *)self setGpuEnergy:v57];
    }
  }

  gpuSRAMEnergy = [collectionCopy gpuSRAMEnergy];
  if (gpuSRAMEnergy)
  {
    v59 = gpuSRAMEnergy;
    gpuSRAMEnergy2 = [(PPSMetricCollection *)self gpuSRAMEnergy];

    if (gpuSRAMEnergy2)
    {
      v61 = MEMORY[0x277CCABB0];
      gpuSRAMEnergy3 = [(PPSMetricCollection *)self gpuSRAMEnergy];
      [gpuSRAMEnergy3 doubleValue];
      v64 = v63;
      gpuSRAMEnergy4 = [collectionCopy gpuSRAMEnergy];
      [gpuSRAMEnergy4 doubleValue];
      v67 = [v61 numberWithDouble:v64 + v66];
      gpuSRAMEnergy5 = [(PPSMetricCollection *)self gpuSRAMEnergy];
      timestamp4 = [gpuSRAMEnergy5 timestamp];
      v70 = [PPSMetricSample sampleWithValue:v67 timestamp:timestamp4];
      [(PPSMetricCollection *)self setGpuSRAMEnergy:v70];
    }
  }

  aneEnergy = [collectionCopy aneEnergy];
  if (aneEnergy)
  {
    v72 = aneEnergy;
    aneEnergy2 = [(PPSMetricCollection *)self aneEnergy];

    if (aneEnergy2)
    {
      v74 = MEMORY[0x277CCABB0];
      aneEnergy3 = [(PPSMetricCollection *)self aneEnergy];
      [aneEnergy3 doubleValue];
      v77 = v76;
      aneEnergy4 = [collectionCopy aneEnergy];
      [aneEnergy4 doubleValue];
      v80 = [v74 numberWithDouble:v77 + v79];
      aneEnergy5 = [(PPSMetricCollection *)self aneEnergy];
      timestamp5 = [aneEnergy5 timestamp];
      v83 = [PPSMetricSample sampleWithValue:v80 timestamp:timestamp5];
      [(PPSMetricCollection *)self setAneEnergy:v83];
    }
  }

  dcsEnergy = [collectionCopy dcsEnergy];
  if (dcsEnergy)
  {
    v85 = dcsEnergy;
    dcsEnergy2 = [(PPSMetricCollection *)self dcsEnergy];

    if (dcsEnergy2)
    {
      v87 = MEMORY[0x277CCABB0];
      dcsEnergy3 = [(PPSMetricCollection *)self dcsEnergy];
      [dcsEnergy3 doubleValue];
      v90 = v89;
      dcsEnergy4 = [collectionCopy dcsEnergy];
      [dcsEnergy4 doubleValue];
      v93 = [v87 numberWithDouble:v90 + v92];
      dcsEnergy5 = [(PPSMetricCollection *)self dcsEnergy];
      timestamp6 = [dcsEnergy5 timestamp];
      v96 = [PPSMetricSample sampleWithValue:v93 timestamp:timestamp6];
      [(PPSMetricCollection *)self setDcsEnergy:v96];
    }
  }

  dramEnergy = [collectionCopy dramEnergy];
  if (dramEnergy)
  {
    v98 = dramEnergy;
    dramEnergy2 = [(PPSMetricCollection *)self dramEnergy];

    if (dramEnergy2)
    {
      v100 = MEMORY[0x277CCABB0];
      dramEnergy3 = [(PPSMetricCollection *)self dramEnergy];
      [dramEnergy3 doubleValue];
      v103 = v102;
      dramEnergy4 = [collectionCopy dramEnergy];
      [dramEnergy4 doubleValue];
      v105 = [v100 numberWithDouble:v103 + v105];
      dramEnergy5 = [(PPSMetricCollection *)self dramEnergy];
      timestamp7 = [dramEnergy5 timestamp];
      v109 = [PPSMetricSample sampleWithValue:v105 timestamp:timestamp7];
      [(PPSMetricCollection *)self setDramEnergy:v109];
    }
  }

  pcieEnergy = [collectionCopy pcieEnergy];
  if (pcieEnergy)
  {
    v111 = pcieEnergy;
    pcieEnergy2 = [(PPSMetricCollection *)self pcieEnergy];

    if (pcieEnergy2)
    {
      v113 = MEMORY[0x277CCABB0];
      pcieEnergy3 = [(PPSMetricCollection *)self pcieEnergy];
      [pcieEnergy3 doubleValue];
      v116 = v115;
      pcieEnergy4 = [collectionCopy pcieEnergy];
      [pcieEnergy4 doubleValue];
      v118 = [v113 numberWithDouble:v116 + v118];
      pcieEnergy5 = [(PPSMetricCollection *)self pcieEnergy];
      timestamp8 = [pcieEnergy5 timestamp];
      v122 = [PPSMetricSample sampleWithValue:v118 timestamp:timestamp8];
      [(PPSMetricCollection *)self setPcieEnergy:v122];
    }
  }

  dramBytes = [collectionCopy dramBytes];
  if (dramBytes)
  {
    v124 = dramBytes;
    dramBytes2 = [(PPSMetricCollection *)self dramBytes];

    if (dramBytes2)
    {
      v126 = MEMORY[0x277CCABB0];
      dramBytes3 = [(PPSMetricCollection *)self dramBytes];
      [dramBytes3 doubleValue];
      v129 = v128;
      dramBytes4 = [collectionCopy dramBytes];
      [dramBytes4 doubleValue];
      v131 = [v126 numberWithDouble:v129 + v131];
      dramBytes5 = [(PPSMetricCollection *)self dramBytes];
      timestamp9 = [dramBytes5 timestamp];
      v135 = [PPSMetricSample sampleWithValue:v131 timestamp:timestamp9];
      [(PPSMetricCollection *)self setDramBytes:v135];
    }
  }

  aneDCSBytes = [collectionCopy aneDCSBytes];
  if (aneDCSBytes)
  {
    v137 = aneDCSBytes;
    aneDCSBytes2 = [(PPSMetricCollection *)self aneDCSBytes];

    if (aneDCSBytes2)
    {
      v139 = MEMORY[0x277CCABB0];
      aneDCSBytes3 = [(PPSMetricCollection *)self aneDCSBytes];
      [aneDCSBytes3 doubleValue];
      v142 = v141;
      aneDCSBytes4 = [collectionCopy aneDCSBytes];
      [aneDCSBytes4 doubleValue];
      v144 = [v139 numberWithDouble:v142 + v144];
      aneDCSBytes5 = [(PPSMetricCollection *)self aneDCSBytes];
      timestamp10 = [aneDCSBytes5 timestamp];
      v148 = [PPSMetricSample sampleWithValue:v144 timestamp:timestamp10];
      [(PPSMetricCollection *)self setAneDCSBytes:v148];
    }
  }

  aneFabricBytes = [collectionCopy aneFabricBytes];
  if (aneFabricBytes)
  {
    v150 = aneFabricBytes;
    aneFabricBytes2 = [(PPSMetricCollection *)self aneFabricBytes];

    if (aneFabricBytes2)
    {
      v152 = MEMORY[0x277CCABB0];
      aneFabricBytes3 = [(PPSMetricCollection *)self aneFabricBytes];
      [aneFabricBytes3 doubleValue];
      v155 = v154;
      aneFabricBytes4 = [collectionCopy aneFabricBytes];
      [aneFabricBytes4 doubleValue];
      v157 = [v152 numberWithDouble:v155 + v157];
      aneFabricBytes5 = [(PPSMetricCollection *)self aneFabricBytes];
      timestamp11 = [aneFabricBytes5 timestamp];
      v161 = [PPSMetricSample sampleWithValue:v157 timestamp:timestamp11];
      [(PPSMetricCollection *)self setAneFabricBytes:v161];
    }
  }

  displayEnergy = [collectionCopy displayEnergy];
  if (displayEnergy)
  {
    v163 = displayEnergy;
    displayEnergy2 = [(PPSMetricCollection *)self displayEnergy];

    if (displayEnergy2)
    {
      v165 = MEMORY[0x277CCABB0];
      displayEnergy3 = [(PPSMetricCollection *)self displayEnergy];
      [displayEnergy3 doubleValue];
      v168 = v167;
      displayEnergy4 = [collectionCopy displayEnergy];
      [displayEnergy4 doubleValue];
      v170 = [v165 numberWithDouble:v168 + v170];
      displayEnergy5 = [(PPSMetricCollection *)self displayEnergy];
      timestamp12 = [displayEnergy5 timestamp];
      v174 = [PPSMetricSample sampleWithValue:v170 timestamp:timestamp12];
      [(PPSMetricCollection *)self setDisplayEnergy:v174];
    }
  }

  accumSystemLoad = [collectionCopy accumSystemLoad];
  if (accumSystemLoad)
  {
    v176 = accumSystemLoad;
    accumSystemLoad2 = [(PPSMetricCollection *)self accumSystemLoad];

    if (accumSystemLoad2)
    {
      v178 = MEMORY[0x277CCABB0];
      accumSystemLoad3 = [(PPSMetricCollection *)self accumSystemLoad];
      [accumSystemLoad3 doubleValue];
      v181 = v180;
      accumSystemLoad4 = [collectionCopy accumSystemLoad];
      [accumSystemLoad4 doubleValue];
      v183 = [v178 numberWithDouble:v181 + v183];
      accumSystemLoad5 = [(PPSMetricCollection *)self accumSystemLoad];
      timestamp13 = [accumSystemLoad5 timestamp];
      v187 = [PPSMetricSample sampleWithValue:v183 timestamp:timestamp13];
      [(PPSMetricCollection *)self setAccumSystemLoad:v187];
    }
  }

  systemLoadPower = [collectionCopy systemLoadPower];
  if (systemLoadPower)
  {
    v189 = systemLoadPower;
    systemLoadPower2 = [(PPSMetricCollection *)self systemLoadPower];

    if (systemLoadPower2)
    {
      systemLoadPower3 = [collectionCopy systemLoadPower];
      [(PPSMetricCollection *)self setSystemLoadPower:systemLoadPower3];
    }
  }

  batteryPower = [collectionCopy batteryPower];
  if (batteryPower)
  {
    v193 = batteryPower;
    batteryPower2 = [(PPSMetricCollection *)self batteryPower];

    if (batteryPower2)
    {
      batteryPower3 = [collectionCopy batteryPower];
      [(PPSMetricCollection *)self setBatteryPower:batteryPower3];
    }
  }

  dcInputPower = [collectionCopy dcInputPower];
  if (dcInputPower)
  {
    v197 = dcInputPower;
    dcInputPower2 = [(PPSMetricCollection *)self dcInputPower];

    if (dcInputPower2)
    {
      dcInputPower3 = [collectionCopy dcInputPower];
      [(PPSMetricCollection *)self setDcInputPower:dcInputPower3];
    }
  }

  cpuPower = [collectionCopy cpuPower];
  if (cpuPower)
  {
    v201 = cpuPower;
    cpuPower2 = [(PPSMetricCollection *)self cpuPower];

    if (cpuPower2)
    {
      cpuPower3 = [collectionCopy cpuPower];
      [(PPSMetricCollection *)self setCpuPower:cpuPower3];
    }
  }

  gpuPower = [collectionCopy gpuPower];
  if (gpuPower)
  {
    v205 = gpuPower;
    gpuPower2 = [(PPSMetricCollection *)self gpuPower];

    if (gpuPower2)
    {
      gpuPower3 = [collectionCopy gpuPower];
      [(PPSMetricCollection *)self setGpuPower:gpuPower3];
    }
  }

  dramPower = [collectionCopy dramPower];
  if (dramPower)
  {
    v209 = dramPower;
    dramPower2 = [(PPSMetricCollection *)self dramPower];

    if (dramPower2)
    {
      dramPower3 = [collectionCopy dramPower];
      [(PPSMetricCollection *)self setDramPower:dramPower3];
    }
  }

  anePower = [collectionCopy anePower];
  if (anePower)
  {
    v213 = anePower;
    anePower2 = [(PPSMetricCollection *)self anePower];

    if (anePower2)
    {
      anePower3 = [collectionCopy anePower];
      [(PPSMetricCollection *)self setAnePower:anePower3];
    }
  }

  otherSocPower = [collectionCopy otherSocPower];
  if (otherSocPower)
  {
    v217 = otherSocPower;
    otherSocPower2 = [(PPSMetricCollection *)self otherSocPower];

    if (otherSocPower2)
    {
      otherSocPower3 = [collectionCopy otherSocPower];
      [(PPSMetricCollection *)self setOtherSocPower:otherSocPower3];
    }
  }

  wifiPower = [collectionCopy wifiPower];
  if (wifiPower)
  {
    v221 = wifiPower;
    wifiPower2 = [(PPSMetricCollection *)self wifiPower];

    if (wifiPower2)
    {
      wifiPower3 = [collectionCopy wifiPower];
      [(PPSMetricCollection *)self setWifiPower:wifiPower3];
    }
  }

  cellularPower = [collectionCopy cellularPower];
  if (cellularPower)
  {
    v225 = cellularPower;
    cellularPower2 = [(PPSMetricCollection *)self cellularPower];

    if (cellularPower2)
    {
      cellularPower3 = [collectionCopy cellularPower];
      [(PPSMetricCollection *)self setCellularPower:cellularPower3];
    }
  }

  displayPower = [collectionCopy displayPower];
  if (displayPower)
  {
    v229 = displayPower;
    displayPower2 = [(PPSMetricCollection *)self displayPower];

    if (displayPower2)
    {
      displayPower3 = [collectionCopy displayPower];
      [(PPSMetricCollection *)self setDisplayPower:displayPower3];
    }
  }

  displayFPS = [collectionCopy displayFPS];
  if (displayFPS)
  {
    v233 = displayFPS;
    displayFPS2 = [(PPSMetricCollection *)self displayFPS];

    if (displayFPS2)
    {
      displayFPS3 = [collectionCopy displayFPS];
      [(PPSMetricCollection *)self setDisplayFPS:displayFPS3];
    }
  }

  scanoutFPS = [collectionCopy scanoutFPS];
  if (scanoutFPS)
  {
    v237 = scanoutFPS;
    scanoutFPS2 = [(PPSMetricCollection *)self scanoutFPS];

    if (scanoutFPS2)
    {
      scanoutFPS3 = [collectionCopy scanoutFPS];
      [(PPSMetricCollection *)self setScanoutFPS:scanoutFPS3];
    }
  }

  wifiAWDLStatus = [collectionCopy wifiAWDLStatus];
  if (wifiAWDLStatus)
  {
    v241 = wifiAWDLStatus;
    wifiAWDLStatus2 = [(PPSMetricCollection *)self wifiAWDLStatus];

    if (wifiAWDLStatus2)
    {
      wifiAWDLStatus3 = [collectionCopy wifiAWDLStatus];
      [(PPSMetricCollection *)self setWifiAWDLStatus:wifiAWDLStatus3];
    }
  }

  wifiAWDLRange = [collectionCopy wifiAWDLRange];
  if (wifiAWDLRange)
  {
    v245 = wifiAWDLRange;
    wifiAWDLRange2 = [(PPSMetricCollection *)self wifiAWDLRange];

    if (wifiAWDLRange2)
    {
      wifiAWDLRange3 = [collectionCopy wifiAWDLRange];
      [(PPSMetricCollection *)self setWifiAWDLRange:wifiAWDLRange3];
    }
  }

  chargingRate = [collectionCopy chargingRate];
  if (chargingRate)
  {
    v249 = chargingRate;
    chargingRate2 = [(PPSMetricCollection *)self chargingRate];

    if (chargingRate2)
    {
      chargingRate3 = [collectionCopy chargingRate];
      [(PPSMetricCollection *)self setChargingRate:chargingRate3];
    }
  }

  batteryTemperature = [collectionCopy batteryTemperature];
  if (batteryTemperature)
  {
    v253 = batteryTemperature;
    batteryTemperature2 = [(PPSMetricCollection *)self batteryTemperature];

    if (batteryTemperature2)
    {
      batteryTemperature3 = [collectionCopy batteryTemperature];
      [(PPSMetricCollection *)self setBatteryTemperature:batteryTemperature3];
    }
  }

  skinTemperature = [collectionCopy skinTemperature];
  if (skinTemperature)
  {
    v257 = skinTemperature;
    skinTemperature2 = [(PPSMetricCollection *)self skinTemperature];

    if (skinTemperature2)
    {
      skinTemperature3 = [collectionCopy skinTemperature];
      [(PPSMetricCollection *)self setSkinTemperature:skinTemperature3];
    }
  }

  displayAPL = [collectionCopy displayAPL];
  if (displayAPL)
  {
    v261 = displayAPL;
    displayAPL2 = [(PPSMetricCollection *)self displayAPL];

    if (displayAPL2)
    {
      displayAPL3 = [collectionCopy displayAPL];
      [(PPSMetricCollection *)self setDisplayAPL:displayAPL3];
    }
  }

  displayAZL = [collectionCopy displayAZL];
  if (displayAZL)
  {
    v265 = displayAZL;
    displayAZL2 = [(PPSMetricCollection *)self displayAZL];

    if (displayAZL2)
    {
      displayAZL3 = [collectionCopy displayAZL];
      [(PPSMetricCollection *)self setDisplayAZL:displayAZL3];
    }
  }

  displayCost = [collectionCopy displayCost];
  if (displayCost)
  {
    v269 = displayCost;
    displayCost2 = [(PPSMetricCollection *)self displayCost];

    if (displayCost2)
    {
      displayCost3 = [collectionCopy displayCost];
      [(PPSMetricCollection *)self setDisplayCost:displayCost3];
    }
  }

  edrHeadroom = [collectionCopy edrHeadroom];
  if (edrHeadroom)
  {
    v273 = edrHeadroom;
    edrHeadroom2 = [(PPSMetricCollection *)self edrHeadroom];

    if (edrHeadroom2)
    {
      edrHeadroom3 = [collectionCopy edrHeadroom];
      [(PPSMetricCollection *)self setEdrHeadroom:edrHeadroom3];
    }
  }

  brightness = [collectionCopy brightness];
  if (brightness)
  {
    v277 = brightness;
    brightness2 = [(PPSMetricCollection *)self brightness];

    if (brightness2)
    {
      brightness3 = [collectionCopy brightness];
      [(PPSMetricCollection *)self setBrightness:brightness3];
    }
  }

  -[PPSMetricCollection setIsSystemPowerAvailableWhileCharging:](self, "setIsSystemPowerAvailableWhileCharging:", [collectionCopy isSystemPowerAvailableWhileCharging]);
  -[PPSMetricCollection setThermalPressure:](self, "setThermalPressure:", [collectionCopy thermalPressure]);
  -[PPSMetricCollection setInducedThermalPressure:](self, "setInducedThermalPressure:", [collectionCopy inducedThermalPressure]);
  v281[0] = MEMORY[0x277D85DD0];
  v281[1] = 3221225472;
  v281[2] = __63__PPSMetricCollection_combineWithMetricCollection_trackedPids___block_invoke;
  v281[3] = &unk_278847E98;
  v281[4] = self;
  v280 = collectionCopy;
  v282 = v280;
  [pidsCopy enumerateObjectsUsingBlock:v281];
}

void __63__PPSMetricCollection_combineWithMetricCollection_trackedPids___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) processMetrics];
  v5 = [v4 objectForKeyedSubscript:v3];

  if (!v5)
  {
    v6 = [*(a1 + 32) processMetrics];
    v7 = [v6 mutableCopy];

    v8 = objc_alloc_init(PPSProcessMetricCollection);
    [v7 setObject:v8 forKeyedSubscript:v3];

    [*(a1 + 32) setProcessMetrics:v7];
    v9 = [*(a1 + 32) processMetrics];
    v10 = [v9 objectForKeyedSubscript:v3];
    [v10 clearMetrics];
  }

  v11 = [*(a1 + 40) processMetrics];
  v12 = [v11 objectForKey:v3];

  v13 = PPSMetricMonitorLogHandleForCategory(2);
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG);
  if (v12)
  {
    if (v14)
    {
      __63__PPSMetricCollection_combineWithMetricCollection_trackedPids___block_invoke_cold_1(v3);
    }

    v13 = [*(a1 + 32) processMetrics];
    v15 = [v13 objectForKeyedSubscript:v3];
    v16 = [*(a1 + 40) processMetrics];
    v17 = [v16 objectForKeyedSubscript:v3];
    [v15 combineWithProcessMetricCollection:v17];
  }

  else if (v14)
  {
    __63__PPSMetricCollection_combineWithMetricCollection_trackedPids___block_invoke_cold_2(v3);
  }
}

- (id)_stringFromThermalPressure:(int64_t)pressure
{
  if (pressure > 29)
  {
    if (pressure == 30)
    {
      return @"Heavy";
    }

    if (pressure != 40)
    {
      if (pressure == 50)
      {
        return @"Sleeping";
      }

      return @"Unknown";
    }

    return @"Trapping";
  }

  else
  {
    if (!pressure)
    {
      return @"Nominal";
    }

    if (pressure != 10)
    {
      if (pressure == 20)
      {
        return @"Moderate";
      }

      return @"Unknown";
    }

    return @"Light";
  }
}

- (id)_stringFromInducedThermalPressure:(int64_t)pressure
{
  if (pressure <= 9)
  {
    if (pressure == -1)
    {
      return @"Not Set";
    }

    if (!pressure)
    {
      return @"Nominal";
    }
  }

  else
  {
    switch(pressure)
    {
      case 10:
        return @"Light";
      case 20:
        return @"Moderate";
      case 30:
        return @"Heavy";
    }
  }

  return @"Unknown";
}

void __63__PPSMetricCollection_combineWithMetricCollection_trackedPids___block_invoke_cold_1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  [a1 intValue];
  OUTLINED_FUNCTION_0_1(&dword_22E4FA000, v1, v2, "Combining process metrics for monitored PID (%d)", v3, v4, v5, v6, 0);
  v7 = *MEMORY[0x277D85DE8];
}

void __63__PPSMetricCollection_combineWithMetricCollection_trackedPids___block_invoke_cold_2(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  [a1 intValue];
  OUTLINED_FUNCTION_0_1(&dword_22E4FA000, v1, v2, "No process metrics found for PID (%d).", v3, v4, v5, v6, 0);
  v7 = *MEMORY[0x277D85DE8];
}

@end