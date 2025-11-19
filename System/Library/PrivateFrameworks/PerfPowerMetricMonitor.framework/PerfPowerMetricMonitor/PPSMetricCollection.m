@interface PPSMetricCollection
+ (id)_metricSamplePropertyKeys;
+ (id)allPropertyKeys;
- (PPSMetricCollection)init;
- (PPSMetricCollection)initWithCoder:(id)a3;
- (id)_stringFromInducedThermalPressure:(int64_t)a3;
- (id)_stringFromThermalPressure:(int64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)clearMetrics:(id)a3;
- (void)combineWithMetricCollection:(id)a3 trackedPids:(id)a4;
- (void)encodeWithCoder:(id)a3;
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
    v3 = [MEMORY[0x277CBEB38] dictionary];
    processMetrics = v2->_processMetrics;
    v2->_processMetrics = v3;
  }

  return v2;
}

- (PPSMetricCollection)initWithCoder:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
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
          v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:v11];
          [(PPSMetricCollection *)v5 setValue:v12 forKey:v11];

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v8);
    }

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"isSystemPowerAvailableWhileCharging"];
    v5->_isSystemPowerAvailableWhileCharging = [v13 BOOLValue];

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"thermalPressure"];
    v5->_thermalPressure = [v14 intValue];

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"inducedThermalPressure"];
    v5->_inducedThermalPressure = [v15 intValue];

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sampleTime"];
    sampleTime = v5->_sampleTime;
    v5->_sampleTime = v16;

    v18 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
    v19 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
    v20 = [v4 decodeDictionaryWithKeysOfClasses:v18 objectsOfClasses:v19 forKey:@"processMetrics"];
    v21 = [v20 mutableCopy];
    processMetrics = v5->_processMetrics;
    v5->_processMetrics = v21;
  }

  v23 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
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
        [v4 encodeObject:v11 forKey:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  v12 = [MEMORY[0x277CCABB0] numberWithBool:{-[PPSMetricCollection isSystemPowerAvailableWhileCharging](self, "isSystemPowerAvailableWhileCharging")}];
  [v4 encodeObject:v12 forKey:@"isSystemPowerAvailableWhileCharging"];

  v13 = [MEMORY[0x277CCABB0] numberWithInteger:{-[PPSMetricCollection thermalPressure](self, "thermalPressure")}];
  [v4 encodeObject:v13 forKey:@"thermalPressure"];

  v14 = [MEMORY[0x277CCABB0] numberWithInteger:{-[PPSMetricCollection inducedThermalPressure](self, "inducedThermalPressure")}];
  [v4 encodeObject:v14 forKey:@"inducedThermalPressure"];

  v15 = [(PPSMetricCollection *)self sampleTime];
  [v4 encodeObject:v15 forKey:@"sampleTime"];

  v16 = [(PPSMetricCollection *)self processMetrics];
  [v4 encodeObject:v16 forKey:@"processMetrics"];

  v17 = *MEMORY[0x277D85DE8];
}

- (id)copyWithZone:(_NSZone *)a3
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
        v13 = [v12 copyWithZone:a3];
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
  v14 = [(NSMutableDictionary *)self->_processMetrics copyWithZone:a3];
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
  v154 = [(PPSMetricCollection *)self systemLoadPower];
  v153 = [v154 value];
  [v153 doubleValue];
  v60 = v3;
  v152 = [(PPSMetricCollection *)self systemLoadPower];
  v151 = [v152 timestamp];
  v110 = PPSTimeStringFromDate(v151);
  v150 = [(PPSMetricCollection *)self batteryPower];
  v149 = [v150 value];
  [v149 doubleValue];
  v59 = v4;
  v148 = [(PPSMetricCollection *)self batteryPower];
  v147 = [v148 timestamp];
  v107 = PPSTimeStringFromDate(v147);
  v146 = [(PPSMetricCollection *)self dcInputPower];
  v145 = [v146 value];
  [v145 doubleValue];
  v58 = v5;
  v144 = [(PPSMetricCollection *)self dcInputPower];
  v143 = [v144 timestamp];
  v104 = PPSTimeStringFromDate(v143);
  v142 = [(PPSMetricCollection *)self cpuPower];
  v141 = [v142 value];
  [v141 doubleValue];
  v57 = v6;
  v140 = [(PPSMetricCollection *)self cpuPower];
  v139 = [v140 timestamp];
  v101 = PPSTimeStringFromDate(v139);
  v138 = [(PPSMetricCollection *)self gpuPower];
  v137 = [v138 value];
  [v137 doubleValue];
  v56 = v7;
  v136 = [(PPSMetricCollection *)self gpuPower];
  v135 = [v136 timestamp];
  v98 = PPSTimeStringFromDate(v135);
  v134 = [(PPSMetricCollection *)self dramPower];
  v133 = [v134 value];
  [v133 doubleValue];
  v55 = v8;
  v132 = [(PPSMetricCollection *)self dramPower];
  v131 = [v132 timestamp];
  v96 = PPSTimeStringFromDate(v131);
  v130 = [(PPSMetricCollection *)self otherSocPower];
  v129 = [v130 value];
  [v129 doubleValue];
  v54 = v9;
  v128 = [(PPSMetricCollection *)self otherSocPower];
  v127 = [v128 timestamp];
  v94 = PPSTimeStringFromDate(v127);
  v126 = [(PPSMetricCollection *)self wifiPower];
  v125 = [v126 value];
  [v125 doubleValue];
  v53 = v10;
  v124 = [(PPSMetricCollection *)self wifiPower];
  v123 = [v124 timestamp];
  v91 = PPSTimeStringFromDate(v123);
  v122 = [(PPSMetricCollection *)self cellularPower];
  v121 = [v122 value];
  [v121 doubleValue];
  v52 = v11;
  v120 = [(PPSMetricCollection *)self cellularPower];
  v119 = [v120 timestamp];
  v88 = PPSTimeStringFromDate(v119);
  v118 = [(PPSMetricCollection *)self displayPower];
  v117 = [v118 value];
  [v117 doubleValue];
  v51 = v12;
  v116 = [(PPSMetricCollection *)self displayPower];
  v115 = [v116 timestamp];
  v85 = PPSTimeStringFromDate(v115);
  v114 = [(PPSMetricCollection *)self chargingRate];
  v113 = [v114 value];
  v50 = [v113 intValue];
  v112 = [(PPSMetricCollection *)self chargingRate];
  v111 = [v112 timestamp];
  v82 = PPSTimeStringFromDate(v111);
  v13 = [(PPSMetricCollection *)self isSystemPowerAvailableWhileCharging];
  v14 = "NO";
  if (v13)
  {
    v14 = "YES";
  }

  v49 = v14;
  v109 = [(PPSMetricCollection *)self batteryTemperature];
  v108 = [v109 value];
  [v108 doubleValue];
  v48 = v15;
  v106 = [(PPSMetricCollection *)self batteryTemperature];
  v105 = [v106 timestamp];
  v79 = PPSTimeStringFromDate(v105);
  v103 = [(PPSMetricCollection *)self skinTemperature];
  v102 = [v103 value];
  [v102 doubleValue];
  v17 = v16;
  v100 = [(PPSMetricCollection *)self skinTemperature];
  v99 = [v100 timestamp];
  v76 = PPSTimeStringFromDate(v99);
  v97 = [(PPSMetricCollection *)self _stringFromThermalPressure:[(PPSMetricCollection *)self thermalPressure]];
  v47 = [v97 UTF8String];
  v95 = [(PPSMetricCollection *)self _stringFromInducedThermalPressure:[(PPSMetricCollection *)self inducedThermalPressure]];
  v46 = [v95 UTF8String];
  v93 = [(PPSMetricCollection *)self displayAPL];
  v92 = [v93 value];
  [v92 doubleValue];
  v19 = v18;
  v90 = [(PPSMetricCollection *)self displayAPL];
  v89 = [v90 timestamp];
  v71 = PPSTimeStringFromDate(v89);
  v87 = [(PPSMetricCollection *)self displayAZL];
  v86 = [v87 value];
  [v86 doubleValue];
  v21 = v20;
  v84 = [(PPSMetricCollection *)self displayAZL];
  v83 = [v84 timestamp];
  v68 = PPSTimeStringFromDate(v83);
  v81 = [(PPSMetricCollection *)self displayCost];
  v80 = [v81 value];
  [v80 doubleValue];
  v23 = v22;
  v78 = [(PPSMetricCollection *)self displayCost];
  v77 = [v78 timestamp];
  v65 = PPSTimeStringFromDate(v77);
  v75 = [(PPSMetricCollection *)self displayFPS];
  v74 = [v75 value];
  [v74 doubleValue];
  v25 = v24;
  v73 = [(PPSMetricCollection *)self displayFPS];
  v72 = [v73 timestamp];
  v63 = PPSTimeStringFromDate(v72);
  v70 = [(PPSMetricCollection *)self scanoutFPS];
  v69 = [v70 value];
  [v69 doubleValue];
  v27 = v26;
  v67 = [(PPSMetricCollection *)self scanoutFPS];
  v66 = [v67 timestamp];
  v62 = PPSTimeStringFromDate(v66);
  v64 = [(PPSMetricCollection *)self brightness];
  v28 = [v64 value];
  [v28 doubleValue];
  v30 = v29;
  v31 = [(PPSMetricCollection *)self brightness];
  v32 = [v31 timestamp];
  v33 = PPSTimeStringFromDate(v32);
  v34 = [(PPSMetricCollection *)self edrHeadroom];
  v35 = [v34 value];
  [v35 doubleValue];
  v37 = v36;
  v38 = [(PPSMetricCollection *)self edrHeadroom];
  v39 = [v38 timestamp];
  v40 = PPSTimeStringFromDate(v39);
  v41 = [v61 stringWithFormat:@"------------------ Power -------------------\nSystem Load        %8.3f W   %@\nBattery            %8.3f W   %@\nDC Input           %8.3f W   %@\n\nCPU                %8.3f W   %@\nGPU                %8.3f W   %@\nDRAM               %8.3f W   %@\nOther SoC          %8.3f W   %@\nWiFi               %8.3f W   %@\nCellular           %8.3f W   %@\nDisplay            %8.3f W   %@\n\nCharging Rate      %8d mA  %@\n\nSystem Power Available While Charging: %s\n\n----------------- Thermal ------------------\nBattery            %8.3f °C  %@\nSkin               %8.3f °C  %@\n\nThermal Pressure   %8s\nInduced Pressure   %8s\n\n----------------- Display ------------------\nDisplay APL        %8.3f     %@\nDisplay AZL        %8.3f     %@\nDisplay Cost       %8.3f     %@\nDisplay Avg FPS    %8.3f     %@\nScanout Avg FPS    %8.3f     %@\nBrightness nits    %8.3f     %@\nEDR Headroom    %8.3f     %@", v60, v110, v59, v107, v58, v104, v57, v101, v56, v98, v55, v96, v54, v94, v53, v91, v52, v88, v51, v85, v50, v82, v49, v48, v79, v17, v76, v47, v46, v19, v71, v21, v68, v23, v65, v25, v63, v27, v62, v30, v33, v37, v40];
  v42 = v157[5];
  v157[5] = v41;

  v43 = [(PPSMetricCollection *)self processMetrics];
  v155[0] = MEMORY[0x277D85DD0];
  v155[1] = 3221225472;
  v155[2] = __34__PPSMetricCollection_description__block_invoke;
  v155[3] = &unk_278847E48;
  v155[4] = &v156;
  [v43 enumerateKeysAndObjectsUsingBlock:v155];

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

- (void)clearMetrics:(id)a3
{
  v4 = a3;
  v5 = PPSMetricMonitorLogHandleForCategory(2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [PPSMetricCollection clearMetrics:v5];
  }

  v6 = [MEMORY[0x277CBEAA8] date];
  [(PPSMetricCollection *)self setSampleTime:&unk_2843008B8];
  v7 = [PPSMetricSample sampleWithValue:&unk_2843008B8 timestamp:v6];
  [(PPSMetricCollection *)self setCpuEnergy:v7];

  v8 = [PPSMetricSample sampleWithValue:&unk_2843008B8 timestamp:v6];
  [(PPSMetricCollection *)self setPackageEnergy:v8];

  v9 = [PPSMetricSample sampleWithValue:&unk_2843008B8 timestamp:v6];
  [(PPSMetricCollection *)self setGpuEnergy:v9];

  v10 = [PPSMetricSample sampleWithValue:&unk_2843008B8 timestamp:v6];
  [(PPSMetricCollection *)self setGpuSRAMEnergy:v10];

  v11 = [PPSMetricSample sampleWithValue:&unk_2843008B8 timestamp:v6];
  [(PPSMetricCollection *)self setDisplayEnergy:v11];

  v12 = [PPSMetricSample sampleWithValue:&unk_2843008B8 timestamp:v6];
  [(PPSMetricCollection *)self setSystemLoadPower:v12];

  v13 = [PPSMetricSample sampleWithValue:&unk_2843008B8 timestamp:v6];
  [(PPSMetricCollection *)self setAccumSystemLoad:v13];

  v14 = [PPSMetricSample sampleWithValue:&unk_2843008B8 timestamp:v6];
  [(PPSMetricCollection *)self setBatteryPower:v14];

  v15 = [PPSMetricSample sampleWithValue:&unk_2843008B8 timestamp:v6];
  [(PPSMetricCollection *)self setDcInputPower:v15];

  v16 = [PPSMetricSample sampleWithValue:&unk_2843008B8 timestamp:v6];
  [(PPSMetricCollection *)self setCpuPower:v16];

  v17 = [PPSMetricSample sampleWithValue:&unk_2843008B8 timestamp:v6];
  [(PPSMetricCollection *)self setGpuPower:v17];

  v18 = [PPSMetricSample sampleWithValue:&unk_2843008B8 timestamp:v6];
  [(PPSMetricCollection *)self setDramPower:v18];

  v19 = [PPSMetricSample sampleWithValue:&unk_2843008B8 timestamp:v6];
  [(PPSMetricCollection *)self setAnePower:v19];

  v20 = [PPSMetricSample sampleWithValue:&unk_2843008B8 timestamp:v6];
  [(PPSMetricCollection *)self setOtherSocPower:v20];

  v21 = [PPSMetricSample sampleWithValue:&unk_2843008B8 timestamp:v6];
  [(PPSMetricCollection *)self setWifiPower:v21];

  v22 = [PPSMetricSample sampleWithValue:&unk_2843008B8 timestamp:v6];
  [(PPSMetricCollection *)self setCellularPower:v22];

  v23 = [PPSMetricSample sampleWithValue:&unk_2843008B8 timestamp:v6];
  [(PPSMetricCollection *)self setDisplayPower:v23];

  v24 = [PPSMetricSample sampleWithValue:&unk_2843008B8 timestamp:v6];
  [(PPSMetricCollection *)self setDisplayFPS:v24];

  v25 = [PPSMetricSample sampleWithValue:&unk_2843008B8 timestamp:v6];
  [(PPSMetricCollection *)self setWifiAWDLRange:v25];

  v26 = [PPSMetricSample sampleWithValue:&unk_2843008B8 timestamp:v6];
  [(PPSMetricCollection *)self setChargingRate:v26];

  v27 = [PPSMetricSample sampleWithValue:&unk_2843008B8 timestamp:v6];
  [(PPSMetricCollection *)self setDisplayAPL:v27];

  v28 = [PPSMetricSample sampleWithValue:&unk_2843008B8 timestamp:v6];
  [(PPSMetricCollection *)self setDisplayCost:v28];

  v29 = [PPSMetricSample sampleWithValue:&unk_2843008B8 timestamp:v6];
  [(PPSMetricCollection *)self setAneEnergy:v29];

  v30 = [PPSMetricSample sampleWithValue:&unk_2843008B8 timestamp:v6];
  [(PPSMetricCollection *)self setDcsEnergy:v30];

  v31 = [PPSMetricSample sampleWithValue:&unk_2843008B8 timestamp:v6];
  [(PPSMetricCollection *)self setDramEnergy:v31];

  v32 = [PPSMetricSample sampleWithValue:&unk_2843008B8 timestamp:v6];
  [(PPSMetricCollection *)self setPcieEnergy:v32];

  v33 = [PPSMetricSample sampleWithValue:&unk_2843008B8 timestamp:v6];
  [(PPSMetricCollection *)self setDramBytes:v33];

  v34 = [PPSMetricSample sampleWithValue:&unk_2843008B8 timestamp:v6];
  [(PPSMetricCollection *)self setAneDCSBytes:v34];

  v35 = [PPSMetricSample sampleWithValue:&unk_2843008B8 timestamp:v6];
  [(PPSMetricCollection *)self setAneFabricBytes:v35];

  v36 = [PPSMetricSample sampleWithValue:&unk_2843008B8 timestamp:v6];
  [(PPSMetricCollection *)self setWifiAWDLStatus:v36];

  v37 = [PPSMetricSample sampleWithValue:&unk_2843008B8 timestamp:v6];
  [(PPSMetricCollection *)self setScanoutFPS:v37];

  v38 = [PPSMetricSample sampleWithValue:&unk_2843008B8 timestamp:v6];
  [(PPSMetricCollection *)self setBatteryTemperature:v38];

  v39 = [PPSMetricSample sampleWithValue:&unk_2843008B8 timestamp:v6];
  [(PPSMetricCollection *)self setSkinTemperature:v39];

  v40 = [PPSMetricSample sampleWithValue:&unk_2843008B8 timestamp:v6];
  [(PPSMetricCollection *)self setSkinTemperature:v40];

  v41 = [PPSMetricSample sampleWithValue:&unk_2843008B8 timestamp:v6];
  [(PPSMetricCollection *)self setBrightness:v41];

  v42 = [PPSMetricSample sampleWithValue:&unk_2843008B8 timestamp:v6];
  [(PPSMetricCollection *)self setEdrHeadroom:v42];

  v43 = [PPSMetricSample sampleWithValue:&unk_2843008B8 timestamp:v6];
  [(PPSMetricCollection *)self setDisplayAZL:v43];

  v44 = [MEMORY[0x277CBEB38] dictionary];
  [(PPSMetricCollection *)self setProcessMetrics:v44];

  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __36__PPSMetricCollection_clearMetrics___block_invoke;
  v45[3] = &unk_278847E70;
  v45[4] = self;
  [v4 enumerateObjectsUsingBlock:v45];
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

- (void)combineWithMetricCollection:(id)a3 trackedPids:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = PPSMetricMonitorLogHandleForCategory(2);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [PPSMetricCollection combineWithMetricCollection:v8 trackedPids:?];
  }

  v9 = [v6 sampleTime];
  if (v9)
  {
    v10 = v9;
    v11 = [(PPSMetricCollection *)self sampleTime];

    if (v11)
    {
      v12 = MEMORY[0x277CCABB0];
      v13 = [v6 sampleTime];
      [v13 doubleValue];
      v15 = v14;
      v16 = [(PPSMetricCollection *)self sampleTime];
      [v16 doubleValue];
      v18 = [v12 numberWithDouble:v15 + v17];
      [(PPSMetricCollection *)self setSampleTime:v18];
    }
  }

  v19 = [v6 cpuEnergy];
  if (v19)
  {
    v20 = v19;
    v21 = [(PPSMetricCollection *)self cpuEnergy];

    if (v21)
    {
      v22 = MEMORY[0x277CCABB0];
      v23 = [(PPSMetricCollection *)self cpuEnergy];
      [v23 doubleValue];
      v25 = v24;
      v26 = [v6 cpuEnergy];
      [v26 doubleValue];
      v28 = [v22 numberWithDouble:v25 + v27];
      v29 = [(PPSMetricCollection *)self cpuEnergy];
      v30 = [v29 timestamp];
      v31 = [PPSMetricSample sampleWithValue:v28 timestamp:v30];
      [(PPSMetricCollection *)self setCpuEnergy:v31];
    }
  }

  v32 = [v6 packageEnergy];
  if (v32)
  {
    v33 = v32;
    v34 = [(PPSMetricCollection *)self packageEnergy];

    if (v34)
    {
      v35 = MEMORY[0x277CCABB0];
      v36 = [(PPSMetricCollection *)self packageEnergy];
      [v36 doubleValue];
      v38 = v37;
      v39 = [v6 packageEnergy];
      [v39 doubleValue];
      v41 = [v35 numberWithDouble:v38 + v40];
      v42 = [(PPSMetricCollection *)self packageEnergy];
      v43 = [v42 timestamp];
      v44 = [PPSMetricSample sampleWithValue:v41 timestamp:v43];
      [(PPSMetricCollection *)self setPackageEnergy:v44];
    }
  }

  v45 = [v6 gpuEnergy];
  if (v45)
  {
    v46 = v45;
    v47 = [(PPSMetricCollection *)self gpuEnergy];

    if (v47)
    {
      v48 = MEMORY[0x277CCABB0];
      v49 = [(PPSMetricCollection *)self gpuEnergy];
      [v49 doubleValue];
      v51 = v50;
      v52 = [v6 gpuEnergy];
      [v52 doubleValue];
      v54 = [v48 numberWithDouble:v51 + v53];
      v55 = [(PPSMetricCollection *)self gpuEnergy];
      v56 = [v55 timestamp];
      v57 = [PPSMetricSample sampleWithValue:v54 timestamp:v56];
      [(PPSMetricCollection *)self setGpuEnergy:v57];
    }
  }

  v58 = [v6 gpuSRAMEnergy];
  if (v58)
  {
    v59 = v58;
    v60 = [(PPSMetricCollection *)self gpuSRAMEnergy];

    if (v60)
    {
      v61 = MEMORY[0x277CCABB0];
      v62 = [(PPSMetricCollection *)self gpuSRAMEnergy];
      [v62 doubleValue];
      v64 = v63;
      v65 = [v6 gpuSRAMEnergy];
      [v65 doubleValue];
      v67 = [v61 numberWithDouble:v64 + v66];
      v68 = [(PPSMetricCollection *)self gpuSRAMEnergy];
      v69 = [v68 timestamp];
      v70 = [PPSMetricSample sampleWithValue:v67 timestamp:v69];
      [(PPSMetricCollection *)self setGpuSRAMEnergy:v70];
    }
  }

  v71 = [v6 aneEnergy];
  if (v71)
  {
    v72 = v71;
    v73 = [(PPSMetricCollection *)self aneEnergy];

    if (v73)
    {
      v74 = MEMORY[0x277CCABB0];
      v75 = [(PPSMetricCollection *)self aneEnergy];
      [v75 doubleValue];
      v77 = v76;
      v78 = [v6 aneEnergy];
      [v78 doubleValue];
      v80 = [v74 numberWithDouble:v77 + v79];
      v81 = [(PPSMetricCollection *)self aneEnergy];
      v82 = [v81 timestamp];
      v83 = [PPSMetricSample sampleWithValue:v80 timestamp:v82];
      [(PPSMetricCollection *)self setAneEnergy:v83];
    }
  }

  v84 = [v6 dcsEnergy];
  if (v84)
  {
    v85 = v84;
    v86 = [(PPSMetricCollection *)self dcsEnergy];

    if (v86)
    {
      v87 = MEMORY[0x277CCABB0];
      v88 = [(PPSMetricCollection *)self dcsEnergy];
      [v88 doubleValue];
      v90 = v89;
      v91 = [v6 dcsEnergy];
      [v91 doubleValue];
      v93 = [v87 numberWithDouble:v90 + v92];
      v94 = [(PPSMetricCollection *)self dcsEnergy];
      v95 = [v94 timestamp];
      v96 = [PPSMetricSample sampleWithValue:v93 timestamp:v95];
      [(PPSMetricCollection *)self setDcsEnergy:v96];
    }
  }

  v97 = [v6 dramEnergy];
  if (v97)
  {
    v98 = v97;
    v99 = [(PPSMetricCollection *)self dramEnergy];

    if (v99)
    {
      v100 = MEMORY[0x277CCABB0];
      v101 = [(PPSMetricCollection *)self dramEnergy];
      [v101 doubleValue];
      v103 = v102;
      v104 = [v6 dramEnergy];
      [v104 doubleValue];
      v106 = [v100 numberWithDouble:v103 + v105];
      v107 = [(PPSMetricCollection *)self dramEnergy];
      v108 = [v107 timestamp];
      v109 = [PPSMetricSample sampleWithValue:v106 timestamp:v108];
      [(PPSMetricCollection *)self setDramEnergy:v109];
    }
  }

  v110 = [v6 pcieEnergy];
  if (v110)
  {
    v111 = v110;
    v112 = [(PPSMetricCollection *)self pcieEnergy];

    if (v112)
    {
      v113 = MEMORY[0x277CCABB0];
      v114 = [(PPSMetricCollection *)self pcieEnergy];
      [v114 doubleValue];
      v116 = v115;
      v117 = [v6 pcieEnergy];
      [v117 doubleValue];
      v119 = [v113 numberWithDouble:v116 + v118];
      v120 = [(PPSMetricCollection *)self pcieEnergy];
      v121 = [v120 timestamp];
      v122 = [PPSMetricSample sampleWithValue:v119 timestamp:v121];
      [(PPSMetricCollection *)self setPcieEnergy:v122];
    }
  }

  v123 = [v6 dramBytes];
  if (v123)
  {
    v124 = v123;
    v125 = [(PPSMetricCollection *)self dramBytes];

    if (v125)
    {
      v126 = MEMORY[0x277CCABB0];
      v127 = [(PPSMetricCollection *)self dramBytes];
      [v127 doubleValue];
      v129 = v128;
      v130 = [v6 dramBytes];
      [v130 doubleValue];
      v132 = [v126 numberWithDouble:v129 + v131];
      v133 = [(PPSMetricCollection *)self dramBytes];
      v134 = [v133 timestamp];
      v135 = [PPSMetricSample sampleWithValue:v132 timestamp:v134];
      [(PPSMetricCollection *)self setDramBytes:v135];
    }
  }

  v136 = [v6 aneDCSBytes];
  if (v136)
  {
    v137 = v136;
    v138 = [(PPSMetricCollection *)self aneDCSBytes];

    if (v138)
    {
      v139 = MEMORY[0x277CCABB0];
      v140 = [(PPSMetricCollection *)self aneDCSBytes];
      [v140 doubleValue];
      v142 = v141;
      v143 = [v6 aneDCSBytes];
      [v143 doubleValue];
      v145 = [v139 numberWithDouble:v142 + v144];
      v146 = [(PPSMetricCollection *)self aneDCSBytes];
      v147 = [v146 timestamp];
      v148 = [PPSMetricSample sampleWithValue:v145 timestamp:v147];
      [(PPSMetricCollection *)self setAneDCSBytes:v148];
    }
  }

  v149 = [v6 aneFabricBytes];
  if (v149)
  {
    v150 = v149;
    v151 = [(PPSMetricCollection *)self aneFabricBytes];

    if (v151)
    {
      v152 = MEMORY[0x277CCABB0];
      v153 = [(PPSMetricCollection *)self aneFabricBytes];
      [v153 doubleValue];
      v155 = v154;
      v156 = [v6 aneFabricBytes];
      [v156 doubleValue];
      v158 = [v152 numberWithDouble:v155 + v157];
      v159 = [(PPSMetricCollection *)self aneFabricBytes];
      v160 = [v159 timestamp];
      v161 = [PPSMetricSample sampleWithValue:v158 timestamp:v160];
      [(PPSMetricCollection *)self setAneFabricBytes:v161];
    }
  }

  v162 = [v6 displayEnergy];
  if (v162)
  {
    v163 = v162;
    v164 = [(PPSMetricCollection *)self displayEnergy];

    if (v164)
    {
      v165 = MEMORY[0x277CCABB0];
      v166 = [(PPSMetricCollection *)self displayEnergy];
      [v166 doubleValue];
      v168 = v167;
      v169 = [v6 displayEnergy];
      [v169 doubleValue];
      v171 = [v165 numberWithDouble:v168 + v170];
      v172 = [(PPSMetricCollection *)self displayEnergy];
      v173 = [v172 timestamp];
      v174 = [PPSMetricSample sampleWithValue:v171 timestamp:v173];
      [(PPSMetricCollection *)self setDisplayEnergy:v174];
    }
  }

  v175 = [v6 accumSystemLoad];
  if (v175)
  {
    v176 = v175;
    v177 = [(PPSMetricCollection *)self accumSystemLoad];

    if (v177)
    {
      v178 = MEMORY[0x277CCABB0];
      v179 = [(PPSMetricCollection *)self accumSystemLoad];
      [v179 doubleValue];
      v181 = v180;
      v182 = [v6 accumSystemLoad];
      [v182 doubleValue];
      v184 = [v178 numberWithDouble:v181 + v183];
      v185 = [(PPSMetricCollection *)self accumSystemLoad];
      v186 = [v185 timestamp];
      v187 = [PPSMetricSample sampleWithValue:v184 timestamp:v186];
      [(PPSMetricCollection *)self setAccumSystemLoad:v187];
    }
  }

  v188 = [v6 systemLoadPower];
  if (v188)
  {
    v189 = v188;
    v190 = [(PPSMetricCollection *)self systemLoadPower];

    if (v190)
    {
      v191 = [v6 systemLoadPower];
      [(PPSMetricCollection *)self setSystemLoadPower:v191];
    }
  }

  v192 = [v6 batteryPower];
  if (v192)
  {
    v193 = v192;
    v194 = [(PPSMetricCollection *)self batteryPower];

    if (v194)
    {
      v195 = [v6 batteryPower];
      [(PPSMetricCollection *)self setBatteryPower:v195];
    }
  }

  v196 = [v6 dcInputPower];
  if (v196)
  {
    v197 = v196;
    v198 = [(PPSMetricCollection *)self dcInputPower];

    if (v198)
    {
      v199 = [v6 dcInputPower];
      [(PPSMetricCollection *)self setDcInputPower:v199];
    }
  }

  v200 = [v6 cpuPower];
  if (v200)
  {
    v201 = v200;
    v202 = [(PPSMetricCollection *)self cpuPower];

    if (v202)
    {
      v203 = [v6 cpuPower];
      [(PPSMetricCollection *)self setCpuPower:v203];
    }
  }

  v204 = [v6 gpuPower];
  if (v204)
  {
    v205 = v204;
    v206 = [(PPSMetricCollection *)self gpuPower];

    if (v206)
    {
      v207 = [v6 gpuPower];
      [(PPSMetricCollection *)self setGpuPower:v207];
    }
  }

  v208 = [v6 dramPower];
  if (v208)
  {
    v209 = v208;
    v210 = [(PPSMetricCollection *)self dramPower];

    if (v210)
    {
      v211 = [v6 dramPower];
      [(PPSMetricCollection *)self setDramPower:v211];
    }
  }

  v212 = [v6 anePower];
  if (v212)
  {
    v213 = v212;
    v214 = [(PPSMetricCollection *)self anePower];

    if (v214)
    {
      v215 = [v6 anePower];
      [(PPSMetricCollection *)self setAnePower:v215];
    }
  }

  v216 = [v6 otherSocPower];
  if (v216)
  {
    v217 = v216;
    v218 = [(PPSMetricCollection *)self otherSocPower];

    if (v218)
    {
      v219 = [v6 otherSocPower];
      [(PPSMetricCollection *)self setOtherSocPower:v219];
    }
  }

  v220 = [v6 wifiPower];
  if (v220)
  {
    v221 = v220;
    v222 = [(PPSMetricCollection *)self wifiPower];

    if (v222)
    {
      v223 = [v6 wifiPower];
      [(PPSMetricCollection *)self setWifiPower:v223];
    }
  }

  v224 = [v6 cellularPower];
  if (v224)
  {
    v225 = v224;
    v226 = [(PPSMetricCollection *)self cellularPower];

    if (v226)
    {
      v227 = [v6 cellularPower];
      [(PPSMetricCollection *)self setCellularPower:v227];
    }
  }

  v228 = [v6 displayPower];
  if (v228)
  {
    v229 = v228;
    v230 = [(PPSMetricCollection *)self displayPower];

    if (v230)
    {
      v231 = [v6 displayPower];
      [(PPSMetricCollection *)self setDisplayPower:v231];
    }
  }

  v232 = [v6 displayFPS];
  if (v232)
  {
    v233 = v232;
    v234 = [(PPSMetricCollection *)self displayFPS];

    if (v234)
    {
      v235 = [v6 displayFPS];
      [(PPSMetricCollection *)self setDisplayFPS:v235];
    }
  }

  v236 = [v6 scanoutFPS];
  if (v236)
  {
    v237 = v236;
    v238 = [(PPSMetricCollection *)self scanoutFPS];

    if (v238)
    {
      v239 = [v6 scanoutFPS];
      [(PPSMetricCollection *)self setScanoutFPS:v239];
    }
  }

  v240 = [v6 wifiAWDLStatus];
  if (v240)
  {
    v241 = v240;
    v242 = [(PPSMetricCollection *)self wifiAWDLStatus];

    if (v242)
    {
      v243 = [v6 wifiAWDLStatus];
      [(PPSMetricCollection *)self setWifiAWDLStatus:v243];
    }
  }

  v244 = [v6 wifiAWDLRange];
  if (v244)
  {
    v245 = v244;
    v246 = [(PPSMetricCollection *)self wifiAWDLRange];

    if (v246)
    {
      v247 = [v6 wifiAWDLRange];
      [(PPSMetricCollection *)self setWifiAWDLRange:v247];
    }
  }

  v248 = [v6 chargingRate];
  if (v248)
  {
    v249 = v248;
    v250 = [(PPSMetricCollection *)self chargingRate];

    if (v250)
    {
      v251 = [v6 chargingRate];
      [(PPSMetricCollection *)self setChargingRate:v251];
    }
  }

  v252 = [v6 batteryTemperature];
  if (v252)
  {
    v253 = v252;
    v254 = [(PPSMetricCollection *)self batteryTemperature];

    if (v254)
    {
      v255 = [v6 batteryTemperature];
      [(PPSMetricCollection *)self setBatteryTemperature:v255];
    }
  }

  v256 = [v6 skinTemperature];
  if (v256)
  {
    v257 = v256;
    v258 = [(PPSMetricCollection *)self skinTemperature];

    if (v258)
    {
      v259 = [v6 skinTemperature];
      [(PPSMetricCollection *)self setSkinTemperature:v259];
    }
  }

  v260 = [v6 displayAPL];
  if (v260)
  {
    v261 = v260;
    v262 = [(PPSMetricCollection *)self displayAPL];

    if (v262)
    {
      v263 = [v6 displayAPL];
      [(PPSMetricCollection *)self setDisplayAPL:v263];
    }
  }

  v264 = [v6 displayAZL];
  if (v264)
  {
    v265 = v264;
    v266 = [(PPSMetricCollection *)self displayAZL];

    if (v266)
    {
      v267 = [v6 displayAZL];
      [(PPSMetricCollection *)self setDisplayAZL:v267];
    }
  }

  v268 = [v6 displayCost];
  if (v268)
  {
    v269 = v268;
    v270 = [(PPSMetricCollection *)self displayCost];

    if (v270)
    {
      v271 = [v6 displayCost];
      [(PPSMetricCollection *)self setDisplayCost:v271];
    }
  }

  v272 = [v6 edrHeadroom];
  if (v272)
  {
    v273 = v272;
    v274 = [(PPSMetricCollection *)self edrHeadroom];

    if (v274)
    {
      v275 = [v6 edrHeadroom];
      [(PPSMetricCollection *)self setEdrHeadroom:v275];
    }
  }

  v276 = [v6 brightness];
  if (v276)
  {
    v277 = v276;
    v278 = [(PPSMetricCollection *)self brightness];

    if (v278)
    {
      v279 = [v6 brightness];
      [(PPSMetricCollection *)self setBrightness:v279];
    }
  }

  -[PPSMetricCollection setIsSystemPowerAvailableWhileCharging:](self, "setIsSystemPowerAvailableWhileCharging:", [v6 isSystemPowerAvailableWhileCharging]);
  -[PPSMetricCollection setThermalPressure:](self, "setThermalPressure:", [v6 thermalPressure]);
  -[PPSMetricCollection setInducedThermalPressure:](self, "setInducedThermalPressure:", [v6 inducedThermalPressure]);
  v281[0] = MEMORY[0x277D85DD0];
  v281[1] = 3221225472;
  v281[2] = __63__PPSMetricCollection_combineWithMetricCollection_trackedPids___block_invoke;
  v281[3] = &unk_278847E98;
  v281[4] = self;
  v280 = v6;
  v282 = v280;
  [v7 enumerateObjectsUsingBlock:v281];
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

- (id)_stringFromThermalPressure:(int64_t)a3
{
  if (a3 > 29)
  {
    if (a3 == 30)
    {
      return @"Heavy";
    }

    if (a3 != 40)
    {
      if (a3 == 50)
      {
        return @"Sleeping";
      }

      return @"Unknown";
    }

    return @"Trapping";
  }

  else
  {
    if (!a3)
    {
      return @"Nominal";
    }

    if (a3 != 10)
    {
      if (a3 == 20)
      {
        return @"Moderate";
      }

      return @"Unknown";
    }

    return @"Light";
  }
}

- (id)_stringFromInducedThermalPressure:(int64_t)a3
{
  if (a3 <= 9)
  {
    if (a3 == -1)
    {
      return @"Not Set";
    }

    if (!a3)
    {
      return @"Nominal";
    }
  }

  else
  {
    switch(a3)
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