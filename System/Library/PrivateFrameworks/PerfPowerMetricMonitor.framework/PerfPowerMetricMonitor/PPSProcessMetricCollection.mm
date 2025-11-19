@interface PPSProcessMetricCollection
+ (id)_metricSamplePropertyKeys;
- (PPSProcessMetricCollection)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)clearMetrics;
- (void)combineWithProcessMetricCollection:(id)a3;
- (void)encodeWithCoder:(id)a3;
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

- (PPSProcessMetricCollection)initWithCoder:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
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
          v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:v11];
          [(PPSProcessMetricCollection *)v5 setValue:v12 forKey:v11];

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v8);
    }

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"__pid__"];
    v5->_pid = [v13 intValue];

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"__coalitionID__"];
    coalitionID = v5->_coalitionID;
    v5->_coalitionID = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"__processName__"];
    processName = v5->_processName;
    v5->_processName = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"__bundleID__"];
    bundleID = v5->_bundleID;
    v5->_bundleID = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"__sampleTime__"];
    sampleTime = v5->_sampleTime;
    v5->_sampleTime = v20;
  }

  v22 = *MEMORY[0x277D85DE8];
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
        [v4 encodeObject:v11 forKey:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  v12 = [MEMORY[0x277CCABB0] numberWithInt:{-[PPSProcessMetricCollection pid](self, "pid")}];
  [v4 encodeObject:v12 forKey:@"__pid__"];

  v13 = [(PPSProcessMetricCollection *)self coalitionID];
  [v4 encodeObject:v13 forKey:@"__coalitionID__"];

  v14 = [(PPSProcessMetricCollection *)self processName];
  [v4 encodeObject:v14 forKey:@"__processName__"];

  v15 = [(PPSProcessMetricCollection *)self bundleID];
  [v4 encodeObject:v15 forKey:@"__bundleID__"];

  v16 = [(PPSProcessMetricCollection *)self sampleTime];
  [v4 encodeObject:v16 forKey:@"__sampleTime__"];

  v17 = *MEMORY[0x277D85DE8];
}

- (id)copyWithZone:(_NSZone *)a3
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
        v13 = [v12 copyWithZone:a3];
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
  v141 = [(PPSProcessMetricCollection *)self energyCost];
  v140 = [v141 value];
  [v140 doubleValue];
  v101 = v3;
  v139 = [(PPSProcessMetricCollection *)self energyCost];
  v138 = [v139 timestamp];
  v159 = PPSTimeStringFromDate(v138);
  v137 = [(PPSProcessMetricCollection *)self energyOverhead];
  v136 = [v137 value];
  [v136 doubleValue];
  v97 = v4;
  v135 = [(PPSProcessMetricCollection *)self energyOverhead];
  v134 = [v135 timestamp];
  v158 = PPSTimeStringFromDate(v134);
  v133 = [(PPSProcessMetricCollection *)self cpuCost];
  v132 = [v133 value];
  [v132 doubleValue];
  v93 = v5;
  v131 = [(PPSProcessMetricCollection *)self cpuCost];
  v130 = [v131 timestamp];
  v157 = PPSTimeStringFromDate(v130);
  v129 = [(PPSProcessMetricCollection *)self cpuSeconds];
  v128 = [v129 value];
  [v128 doubleValue];
  v90 = v6;
  v127 = [(PPSProcessMetricCollection *)self cpuSeconds];
  v126 = [v127 timestamp];
  v156 = PPSTimeStringFromDate(v126);
  v125 = [(PPSProcessMetricCollection *)self cpuEnergy];
  v124 = [v125 value];
  [v124 doubleValue];
  v87 = v7;
  v123 = [(PPSProcessMetricCollection *)self cpuEnergy];
  v122 = [v123 timestamp];
  v155 = PPSTimeStringFromDate(v122);
  v121 = [(PPSProcessMetricCollection *)self gpuCost];
  v120 = [v121 value];
  [v120 doubleValue];
  v83 = v8;
  v119 = [(PPSProcessMetricCollection *)self gpuCost];
  v118 = [v119 timestamp];
  v154 = PPSTimeStringFromDate(v118);
  v117 = [(PPSProcessMetricCollection *)self displayPower];
  v116 = [v117 value];
  [v116 doubleValue];
  v79 = v9;
  v115 = [(PPSProcessMetricCollection *)self displayPower];
  v114 = [v115 timestamp];
  v153 = PPSTimeStringFromDate(v114);
  v113 = [(PPSProcessMetricCollection *)self networkCost];
  v112 = [v113 value];
  v76 = [v112 intValue];
  v111 = [(PPSProcessMetricCollection *)self networkCost];
  v110 = [v111 timestamp];
  v152 = PPSTimeStringFromDate(v110);
  v109 = [(PPSProcessMetricCollection *)self wifiIn];
  v108 = [v109 value];
  v72 = [v108 intValue];
  v107 = [(PPSProcessMetricCollection *)self wifiIn];
  v106 = [v107 timestamp];
  v151 = PPSTimeStringFromDate(v106);
  v105 = [(PPSProcessMetricCollection *)self wifiOut];
  v102 = [v105 value];
  v69 = [v102 intValue];
  v100 = [(PPSProcessMetricCollection *)self wifiOut];
  v99 = [v100 timestamp];
  v150 = PPSTimeStringFromDate(v99);
  v98 = [(PPSProcessMetricCollection *)self cellIn];
  v96 = [v98 value];
  v65 = [v96 intValue];
  v95 = [(PPSProcessMetricCollection *)self cellIn];
  v94 = [v95 timestamp];
  v149 = PPSTimeStringFromDate(v94);
  v92 = [(PPSProcessMetricCollection *)self cellOut];
  v91 = [v92 value];
  v62 = [v91 intValue];
  v89 = [(PPSProcessMetricCollection *)self cellOut];
  v88 = [v89 timestamp];
  v148 = PPSTimeStringFromDate(v88);
  v86 = [(PPSProcessMetricCollection *)self locationCost];
  v85 = [v86 value];
  [v85 doubleValue];
  v58 = v10;
  v84 = [(PPSProcessMetricCollection *)self locationCost];
  v82 = [v84 timestamp];
  v147 = PPSTimeStringFromDate(v82);
  v81 = [(PPSProcessMetricCollection *)self ongoingLocation];
  v80 = [v81 value];
  v11 = [v80 BOOLValue];
  v12 = "NO";
  if (v11)
  {
    v12 = "YES";
  }

  v54 = v12;
  v78 = [(PPSProcessMetricCollection *)self ongoingLocation];
  v77 = [v78 timestamp];
  v146 = PPSTimeStringFromDate(v77);
  v75 = [(PPSProcessMetricCollection *)self locationDesiredAccuracy];
  v74 = [v75 value];
  [v74 doubleValue];
  v14 = v13;
  v73 = [(PPSProcessMetricCollection *)self locationDesiredAccuracy];
  v71 = [v73 timestamp];
  v145 = PPSTimeStringFromDate(v71);
  v70 = [(PPSProcessMetricCollection *)self qosUtility];
  v68 = [v70 value];
  [v68 doubleValue];
  v16 = v15;
  v67 = [(PPSProcessMetricCollection *)self qosUtility];
  v66 = [v67 timestamp];
  v144 = PPSTimeStringFromDate(v66);
  v64 = [(PPSProcessMetricCollection *)self qosBackground];
  v63 = [v64 value];
  [v63 doubleValue];
  v18 = v17;
  v61 = [(PPSProcessMetricCollection *)self qosBackground];
  v60 = [v61 timestamp];
  v143 = PPSTimeStringFromDate(v60);
  v59 = [(PPSProcessMetricCollection *)self qosUserInitiated];
  v57 = [v59 value];
  [v57 doubleValue];
  v20 = v19;
  v56 = [(PPSProcessMetricCollection *)self qosUserInitiated];
  v55 = [v56 timestamp];
  v41 = PPSTimeStringFromDate(v55);
  v53 = [(PPSProcessMetricCollection *)self qosUserInteractive];
  v52 = [v53 value];
  [v52 doubleValue];
  v22 = v21;
  v51 = [(PPSProcessMetricCollection *)self qosUserInteractive];
  v50 = [v51 timestamp];
  v142 = PPSTimeStringFromDate(v50);
  v49 = [(PPSProcessMetricCollection *)self qosDefault];
  v48 = [v49 value];
  [v48 doubleValue];
  v24 = v23;
  v47 = [(PPSProcessMetricCollection *)self qosDefault];
  v46 = [v47 timestamp];
  v25 = PPSTimeStringFromDate(v46);
  v45 = [(PPSProcessMetricCollection *)self qosMaintenance];
  v44 = [v45 value];
  [v44 doubleValue];
  v27 = v26;
  v43 = [(PPSProcessMetricCollection *)self qosMaintenance];
  v42 = [v43 timestamp];
  v28 = PPSTimeStringFromDate(v42);
  v40 = [(PPSProcessMetricCollection *)self qosUnspecified];
  v39 = [v40 value];
  [v39 doubleValue];
  v30 = v29;
  v31 = [(PPSProcessMetricCollection *)self qosUnspecified];
  v32 = [v31 timestamp];
  v33 = PPSTimeStringFromDate(v32);
  v34 = [(PPSProcessMetricCollection *)self applicationState];
  v35 = [v34 timestamp];
  v36 = PPSTimeStringFromDate(v35);
  v37 = [(PPSProcessMetricCollection *)self applicationState];
  v104 = [v103 stringWithFormat:@"Energy Cost        %8.3f     %@\nEnergy Overhead    %8.3f     %@\nCPU Cost           %8.3f     %@\nCPU Seconds        %8.3f s   %@\nCPU Energy         %8.3f nJ  %@\nGPU Cost           %8.3f     %@\nDisplay Power      %8.3f     %@\nNetwork Cost       %8d     %@\nWiFi In            %8d B   %@\nWiFi Out           %8d B   %@\nCell In            %8d B   %@\nCell Out           %8d B   %@\nLocation Cost      %8.3f     %@\nOngoing Location   %8s     %@\nLocation Desired Accuracy %8.3f %@\nQOS Utility %8.3f s   %@\nQOS Background %8.3f s   %@\nQOS User Initiated %8.3f s   %@\nQOS User Interactive %8.3f s   %@\nQOS Default %8.3f s   %@\nQOS Maintenance %8.3f s   %@\nQOS Unspecified %8.3f s   %@\nApplication State               %@\n%29s", v101, v159, v97, v158, v93, v157, v90, v156, v87, v155, v83, v154, v79, v153, v76, v152, v72, v151, v69, v150, v65, v149, v62, v148, v58, v147, v54, v146, v14, v145, v16, v144, v18, v143, v20, v41, v22, v142, v24, v25, v27, v28, v30, v33, v36, -[PPSProcessMetricCollection _stringForApplicationState:](self, "_stringForApplicationState:", objc_msgSend(v37, "intValue"))];

  return v104;
}

- (void)combineWithProcessMetricCollection:(id)a3
{
  v4 = a3;
  v5 = PPSMetricMonitorLogHandleForCategory(2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [PPSProcessMetricCollection combineWithProcessMetricCollection:v5];
  }

  -[PPSProcessMetricCollection setPid:](self, "setPid:", [v4 pid]);
  v6 = [v4 coalitionID];
  [(PPSProcessMetricCollection *)self setCoalitionID:v6];

  v7 = [v4 processName];
  [(PPSProcessMetricCollection *)self setProcessName:v7];

  v8 = [v4 bundleID];
  [(PPSProcessMetricCollection *)self setBundleID:v8];

  v9 = [v4 sampleTime];
  if (v9)
  {
    v10 = v9;
    v11 = [(PPSProcessMetricCollection *)self sampleTime];

    if (v11)
    {
      v12 = MEMORY[0x277CCABB0];
      v13 = [v4 sampleTime];
      [v13 doubleValue];
      v15 = v14;
      v16 = [(PPSProcessMetricCollection *)self sampleTime];
      [v16 doubleValue];
      v18 = [v12 numberWithDouble:v15 + v17];
      [(PPSProcessMetricCollection *)self setSampleTime:v18];
    }
  }

  v19 = [v4 cpuInstructions];
  if (v19)
  {
    v20 = v19;
    v21 = [(PPSProcessMetricCollection *)self cpuInstructions];

    if (v21)
    {
      v22 = MEMORY[0x277CCABB0];
      v23 = [(PPSProcessMetricCollection *)self cpuInstructions];
      [v23 doubleValue];
      v25 = v24;
      v26 = [v4 cpuInstructions];
      [v26 doubleValue];
      v28 = [v22 numberWithDouble:v25 + v27];
      v29 = [v4 cpuInstructions];
      v30 = [v29 timestamp];
      v31 = [PPSMetricSample sampleWithValue:v28 timestamp:v30];
      [(PPSProcessMetricCollection *)self setCpuInstructions:v31];
    }
  }

  v32 = [v4 cpuPInstructions];
  if (v32)
  {
    v33 = v32;
    v34 = [(PPSProcessMetricCollection *)self cpuPInstructions];

    if (v34)
    {
      v35 = MEMORY[0x277CCABB0];
      v36 = [(PPSProcessMetricCollection *)self cpuPInstructions];
      [v36 doubleValue];
      v38 = v37;
      v39 = [v4 cpuPInstructions];
      [v39 doubleValue];
      v41 = [v35 numberWithDouble:v38 + v40];
      v42 = [v4 cpuPInstructions];
      v43 = [v42 timestamp];
      v44 = [PPSMetricSample sampleWithValue:v41 timestamp:v43];
      [(PPSProcessMetricCollection *)self setCpuPInstructions:v44];
    }
  }

  v45 = [v4 wifiIn];
  if (v45)
  {
    v46 = v45;
    v47 = [(PPSProcessMetricCollection *)self wifiIn];

    if (v47)
    {
      v48 = MEMORY[0x277CCABB0];
      v49 = [(PPSProcessMetricCollection *)self wifiIn];
      [v49 doubleValue];
      v51 = v50;
      v52 = [v4 wifiIn];
      [v52 doubleValue];
      v54 = [v48 numberWithDouble:v51 + v53];
      v55 = [v4 wifiIn];
      v56 = [v55 timestamp];
      v57 = [PPSMetricSample sampleWithValue:v54 timestamp:v56];
      [(PPSProcessMetricCollection *)self setWifiIn:v57];
    }
  }

  v58 = [v4 wifiOut];
  if (v58)
  {
    v59 = v58;
    v60 = [(PPSProcessMetricCollection *)self wifiOut];

    if (v60)
    {
      v61 = MEMORY[0x277CCABB0];
      v62 = [(PPSProcessMetricCollection *)self wifiOut];
      [v62 doubleValue];
      v64 = v63;
      v65 = [v4 wifiOut];
      [v65 doubleValue];
      v67 = [v61 numberWithDouble:v64 + v66];
      v68 = [v4 wifiOut];
      v69 = [v68 timestamp];
      v70 = [PPSMetricSample sampleWithValue:v67 timestamp:v69];
      [(PPSProcessMetricCollection *)self setWifiOut:v70];
    }
  }

  v71 = [v4 cellIn];
  if (v71)
  {
    v72 = v71;
    v73 = [(PPSProcessMetricCollection *)self cellIn];

    if (v73)
    {
      v74 = MEMORY[0x277CCABB0];
      v75 = [(PPSProcessMetricCollection *)self cellIn];
      [v75 doubleValue];
      v77 = v76;
      v78 = [v4 cellIn];
      [v78 doubleValue];
      v80 = [v74 numberWithDouble:v77 + v79];
      v81 = [v4 cellIn];
      v82 = [v81 timestamp];
      v83 = [PPSMetricSample sampleWithValue:v80 timestamp:v82];
      [(PPSProcessMetricCollection *)self setCellIn:v83];
    }
  }

  v84 = [v4 cellOut];
  if (v84)
  {
    v85 = v84;
    v86 = [(PPSProcessMetricCollection *)self cellOut];

    if (v86)
    {
      v87 = MEMORY[0x277CCABB0];
      v88 = [(PPSProcessMetricCollection *)self cellOut];
      [v88 doubleValue];
      v90 = v89;
      v91 = [v4 cellOut];
      [v91 doubleValue];
      v93 = [v87 numberWithDouble:v90 + v92];
      v94 = [v4 cellOut];
      v95 = [v94 timestamp];
      v96 = [PPSMetricSample sampleWithValue:v93 timestamp:v95];
      [(PPSProcessMetricCollection *)self setCellOut:v96];
    }
  }

  v97 = [v4 bytesRead];
  if (v97)
  {
    v98 = v97;
    v99 = [(PPSProcessMetricCollection *)self bytesRead];

    if (v99)
    {
      v100 = MEMORY[0x277CCABB0];
      v101 = [(PPSProcessMetricCollection *)self bytesRead];
      [v101 doubleValue];
      v103 = v102;
      v104 = [v4 bytesRead];
      [v104 doubleValue];
      v106 = [v100 numberWithDouble:v103 + v105];
      v107 = [v4 bytesRead];
      v108 = [v107 timestamp];
      v109 = [PPSMetricSample sampleWithValue:v106 timestamp:v108];
      [(PPSProcessMetricCollection *)self setBytesRead:v109];
    }
  }

  v110 = [v4 bytesWritten];
  if (v110)
  {
    v111 = v110;
    v112 = [(PPSProcessMetricCollection *)self bytesWritten];

    if (v112)
    {
      v113 = MEMORY[0x277CCABB0];
      v114 = [(PPSProcessMetricCollection *)self bytesWritten];
      [v114 doubleValue];
      v116 = v115;
      v117 = [v4 bytesWritten];
      [v117 doubleValue];
      v119 = [v113 numberWithDouble:v116 + v118];
      v120 = [v4 bytesWritten];
      v121 = [v120 timestamp];
      v122 = [PPSMetricSample sampleWithValue:v119 timestamp:v121];
      [(PPSProcessMetricCollection *)self setBytesWritten:v122];
    }
  }

  v123 = [v4 aneEnergy];
  if (v123)
  {
    v124 = v123;
    v125 = [(PPSProcessMetricCollection *)self aneEnergy];

    if (v125)
    {
      v126 = MEMORY[0x277CCABB0];
      v127 = [(PPSProcessMetricCollection *)self aneEnergy];
      [v127 doubleValue];
      v129 = v128;
      v130 = [v4 aneEnergy];
      [v130 doubleValue];
      v132 = [v126 numberWithDouble:v129 + v131];
      v133 = [v4 aneEnergy];
      v134 = [v133 timestamp];
      v135 = [PPSMetricSample sampleWithValue:v132 timestamp:v134];
      [(PPSProcessMetricCollection *)self setAneEnergy:v135];
    }
  }

  v136 = [v4 aneTime];
  if (v136)
  {
    v137 = v136;
    v138 = [(PPSProcessMetricCollection *)self aneEnergy];

    if (v138)
    {
      v139 = MEMORY[0x277CCABB0];
      v140 = [(PPSProcessMetricCollection *)self aneTime];
      [v140 doubleValue];
      v142 = v141;
      v143 = [v4 aneTime];
      [v143 doubleValue];
      v145 = [v139 numberWithDouble:v142 + v144];
      v146 = [v4 aneTime];
      v147 = [v146 timestamp];
      v148 = [PPSMetricSample sampleWithValue:v145 timestamp:v147];
      [(PPSProcessMetricCollection *)self setAneTime:v148];
    }
  }

  v149 = [v4 gpuEnergy];
  if (v149)
  {
    v150 = v149;
    v151 = [(PPSProcessMetricCollection *)self gpuEnergy];

    if (v151)
    {
      v152 = MEMORY[0x277CCABB0];
      v153 = [(PPSProcessMetricCollection *)self gpuEnergy];
      [v153 doubleValue];
      v155 = v154;
      v156 = [v4 gpuEnergy];
      [v156 doubleValue];
      v158 = [v152 numberWithDouble:v155 + v157];
      v159 = [v4 gpuEnergy];
      v160 = [v159 timestamp];
      v161 = [PPSMetricSample sampleWithValue:v158 timestamp:v160];
      [(PPSProcessMetricCollection *)self setGpuEnergy:v161];
    }
  }

  v162 = [v4 cpuEnergy];
  if (v162)
  {
    v163 = v162;
    v164 = [(PPSProcessMetricCollection *)self cpuEnergy];

    if (v164)
    {
      v165 = MEMORY[0x277CCABB0];
      v166 = [(PPSProcessMetricCollection *)self cpuEnergy];
      [v166 doubleValue];
      v168 = v167;
      v169 = [v4 cpuEnergy];
      [v169 doubleValue];
      v171 = [v165 numberWithDouble:v168 + v170];
      v172 = [v4 cpuEnergy];
      v173 = [v172 timestamp];
      v174 = [PPSMetricSample sampleWithValue:v171 timestamp:v173];
      [(PPSProcessMetricCollection *)self setCpuEnergy:v174];
    }
  }

  v175 = [v4 qosUtility];
  if (v175)
  {
    v176 = v175;
    v177 = [(PPSProcessMetricCollection *)self qosUtility];

    if (v177)
    {
      v178 = MEMORY[0x277CCABB0];
      v179 = [(PPSProcessMetricCollection *)self qosUtility];
      [v179 doubleValue];
      v181 = v180;
      v182 = [v4 qosUtility];
      [v182 doubleValue];
      v184 = [v178 numberWithDouble:v181 + v183];
      v185 = [v4 qosUtility];
      v186 = [v185 timestamp];
      v187 = [PPSMetricSample sampleWithValue:v184 timestamp:v186];
      [(PPSProcessMetricCollection *)self setQosUtility:v187];
    }
  }

  v188 = [v4 qosBackground];
  if (v188)
  {
    v189 = v188;
    v190 = [(PPSProcessMetricCollection *)self qosBackground];

    if (v190)
    {
      v191 = MEMORY[0x277CCABB0];
      v192 = [(PPSProcessMetricCollection *)self qosBackground];
      [v192 doubleValue];
      v194 = v193;
      v195 = [v4 qosBackground];
      [v195 doubleValue];
      v197 = [v191 numberWithDouble:v194 + v196];
      v198 = [v4 qosBackground];
      v199 = [v198 timestamp];
      v200 = [PPSMetricSample sampleWithValue:v197 timestamp:v199];
      [(PPSProcessMetricCollection *)self setQosBackground:v200];
    }
  }

  v201 = [v4 qosUserInitiated];
  if (v201)
  {
    v202 = v201;
    v203 = [(PPSProcessMetricCollection *)self qosUserInitiated];

    if (v203)
    {
      v204 = MEMORY[0x277CCABB0];
      v205 = [(PPSProcessMetricCollection *)self qosUserInitiated];
      [v205 doubleValue];
      v207 = v206;
      v208 = [v4 qosUserInitiated];
      [v208 doubleValue];
      v210 = [v204 numberWithDouble:v207 + v209];
      v211 = [v4 qosUserInitiated];
      v212 = [v211 timestamp];
      v213 = [PPSMetricSample sampleWithValue:v210 timestamp:v212];
      [(PPSProcessMetricCollection *)self setQosUserInitiated:v213];
    }
  }

  v214 = [v4 qosUserInteractive];
  if (v214)
  {
    v215 = v214;
    v216 = [(PPSProcessMetricCollection *)self qosUserInteractive];

    if (v216)
    {
      v217 = MEMORY[0x277CCABB0];
      v218 = [(PPSProcessMetricCollection *)self qosUserInteractive];
      [v218 doubleValue];
      v220 = v219;
      v221 = [v4 qosUserInteractive];
      [v221 doubleValue];
      v223 = [v217 numberWithDouble:v220 + v222];
      v224 = [v4 qosUserInteractive];
      v225 = [v224 timestamp];
      v226 = [PPSMetricSample sampleWithValue:v223 timestamp:v225];
      [(PPSProcessMetricCollection *)self setQosUserInteractive:v226];
    }
  }

  v227 = [v4 qosDefault];
  if (v227)
  {
    v228 = v227;
    v229 = [(PPSProcessMetricCollection *)self qosDefault];

    if (v229)
    {
      v230 = MEMORY[0x277CCABB0];
      v231 = [(PPSProcessMetricCollection *)self qosDefault];
      [v231 doubleValue];
      v233 = v232;
      v234 = [v4 qosDefault];
      [v234 doubleValue];
      v236 = [v230 numberWithDouble:v233 + v235];
      v237 = [v4 qosDefault];
      v238 = [v237 timestamp];
      v239 = [PPSMetricSample sampleWithValue:v236 timestamp:v238];
      [(PPSProcessMetricCollection *)self setQosDefault:v239];
    }
  }

  v240 = [v4 qosMaintenance];
  if (v240)
  {
    v241 = v240;
    v242 = [(PPSProcessMetricCollection *)self qosMaintenance];

    if (v242)
    {
      v243 = MEMORY[0x277CCABB0];
      v244 = [(PPSProcessMetricCollection *)self qosMaintenance];
      [v244 doubleValue];
      v246 = v245;
      v247 = [v4 qosMaintenance];
      [v247 doubleValue];
      v249 = [v243 numberWithDouble:v246 + v248];
      v250 = [v4 qosMaintenance];
      v251 = [v250 timestamp];
      v252 = [PPSMetricSample sampleWithValue:v249 timestamp:v251];
      [(PPSProcessMetricCollection *)self setQosMaintenance:v252];
    }
  }

  v253 = [v4 qosUnspecified];
  if (v253)
  {
    v254 = v253;
    v255 = [(PPSProcessMetricCollection *)self qosUnspecified];

    if (v255)
    {
      v256 = MEMORY[0x277CCABB0];
      v257 = [(PPSProcessMetricCollection *)self qosUnspecified];
      [v257 doubleValue];
      v259 = v258;
      v260 = [v4 qosUnspecified];
      [v260 doubleValue];
      v262 = [v256 numberWithDouble:v259 + v261];
      v263 = [v4 qosUnspecified];
      v264 = [v263 timestamp];
      v265 = [PPSMetricSample sampleWithValue:v262 timestamp:v264];
      [(PPSProcessMetricCollection *)self setQosUnspecified:v265];
    }
  }

  v266 = [v4 energyCost];
  if (v266)
  {
    v267 = v266;
    v268 = [(PPSProcessMetricCollection *)self energyCost];

    if (v268)
    {
      v269 = MEMORY[0x277CCABB0];
      v270 = [(PPSProcessMetricCollection *)self energyCost];
      [v270 doubleValue];
      v272 = v271;
      v273 = [v4 energyCost];
      [v273 doubleValue];
      v275 = [v269 numberWithDouble:v272 + v274];
      v276 = [v4 energyCost];
      v277 = [v276 timestamp];
      v278 = [PPSMetricSample sampleWithValue:v275 timestamp:v277];
      [(PPSProcessMetricCollection *)self setEnergyCost:v278];
    }
  }

  v279 = [v4 cpuCost];
  if (v279)
  {
    v280 = v279;
    v281 = [(PPSProcessMetricCollection *)self cpuCost];

    if (v281)
    {
      v282 = MEMORY[0x277CCABB0];
      v283 = [(PPSProcessMetricCollection *)self cpuCost];
      [v283 doubleValue];
      v285 = v284;
      v286 = [v4 cpuCost];
      [v286 doubleValue];
      v288 = [v282 numberWithDouble:v285 + v287];
      v289 = [v4 cpuCost];
      v290 = [v289 timestamp];
      v291 = [PPSMetricSample sampleWithValue:v288 timestamp:v290];
      [(PPSProcessMetricCollection *)self setCpuCost:v291];
    }
  }

  v292 = [v4 energyOverhead];
  if (v292)
  {
    v293 = v292;
    v294 = [(PPSProcessMetricCollection *)self energyOverhead];

    if (v294)
    {
      v295 = MEMORY[0x277CCABB0];
      v296 = [(PPSProcessMetricCollection *)self energyOverhead];
      [v296 doubleValue];
      v298 = v297;
      v299 = [v4 energyOverhead];
      [v299 doubleValue];
      v301 = [v295 numberWithDouble:v298 + v300];
      v302 = [v4 energyOverhead];
      v303 = [v302 timestamp];
      v304 = [PPSMetricSample sampleWithValue:v301 timestamp:v303];
      [(PPSProcessMetricCollection *)self setEnergyOverhead:v304];
    }
  }

  v305 = [v4 cpuSeconds];
  if (v305)
  {
    v306 = v305;
    v307 = [(PPSProcessMetricCollection *)self cpuSeconds];

    if (v307)
    {
      v308 = MEMORY[0x277CCABB0];
      v309 = [(PPSProcessMetricCollection *)self cpuSeconds];
      [v309 doubleValue];
      v311 = v310;
      v312 = [v4 cpuSeconds];
      [v312 doubleValue];
      v314 = [v308 numberWithDouble:v311 + v313];
      v315 = [v4 cpuSeconds];
      v316 = [v315 timestamp];
      v317 = [PPSMetricSample sampleWithValue:v314 timestamp:v316];
      [(PPSProcessMetricCollection *)self setCpuSeconds:v317];
    }
  }

  v318 = [v4 gpuCost];
  if (v318)
  {
    v319 = v318;
    v320 = [(PPSProcessMetricCollection *)self gpuCost];

    if (v320)
    {
      v321 = MEMORY[0x277CCABB0];
      v322 = [(PPSProcessMetricCollection *)self gpuCost];
      [v322 doubleValue];
      v324 = v323;
      v325 = [v4 gpuCost];
      [v325 doubleValue];
      v327 = [v321 numberWithDouble:v324 + v326];
      v328 = [v4 gpuCost];
      v329 = [v328 timestamp];
      v330 = [PPSMetricSample sampleWithValue:v327 timestamp:v329];
      [(PPSProcessMetricCollection *)self setGpuCost:v330];
    }
  }

  v331 = [v4 gpuTime];
  if (v331)
  {
    v332 = v331;
    v333 = [(PPSProcessMetricCollection *)self gpuTime];

    if (v333)
    {
      v334 = MEMORY[0x277CCABB0];
      v335 = [(PPSProcessMetricCollection *)self gpuTime];
      [v335 doubleValue];
      v337 = v336;
      v338 = [v4 gpuTime];
      [v338 doubleValue];
      v340 = [v334 numberWithDouble:v337 + v339];
      v341 = [v4 gpuTime];
      v342 = [v341 timestamp];
      v343 = [PPSMetricSample sampleWithValue:v340 timestamp:v342];
      [(PPSProcessMetricCollection *)self setGpuTime:v343];
    }
  }

  v344 = [v4 networkCost];
  if (v344)
  {
    v345 = v344;
    v346 = [(PPSProcessMetricCollection *)self networkCost];

    if (v346)
    {
      v347 = MEMORY[0x277CCABB0];
      v348 = [(PPSProcessMetricCollection *)self networkCost];
      [v348 doubleValue];
      v350 = v349;
      v351 = [v4 networkCost];
      [v351 doubleValue];
      v353 = [v347 numberWithDouble:v350 + v352];
      v354 = [v4 networkCost];
      v355 = [v354 timestamp];
      v356 = [PPSMetricSample sampleWithValue:v353 timestamp:v355];
      [(PPSProcessMetricCollection *)self setNetworkCost:v356];
    }
  }

  v357 = [v4 locationCost];
  if (v357)
  {
    v358 = v357;
    v359 = [(PPSProcessMetricCollection *)self locationCost];

    if (v359)
    {
      v360 = MEMORY[0x277CCABB0];
      v361 = [(PPSProcessMetricCollection *)self locationCost];
      [v361 doubleValue];
      v363 = v362;
      v364 = [v4 locationCost];
      [v364 doubleValue];
      v366 = [v360 numberWithDouble:v363 + v365];
      v367 = [v4 locationCost];
      v368 = [v367 timestamp];
      v369 = [PPSMetricSample sampleWithValue:v366 timestamp:v368];
      [(PPSProcessMetricCollection *)self setLocationCost:v369];
    }
  }

  v370 = [v4 gpuCost];
  if (v370)
  {
    v371 = v370;
    v372 = [(PPSProcessMetricCollection *)self gpuCost];

    if (v372)
    {
      v373 = MEMORY[0x277CCABB0];
      v374 = [(PPSProcessMetricCollection *)self gpuCost];
      [v374 doubleValue];
      v376 = v375;
      v377 = [v4 gpuCost];
      [v377 doubleValue];
      v379 = [v373 numberWithDouble:v376 + v378];
      v380 = [v4 gpuCost];
      v381 = [v380 timestamp];
      v382 = [PPSMetricSample sampleWithValue:v379 timestamp:v381];
      [(PPSProcessMetricCollection *)self setGpuCost:v382];
    }
  }

  v383 = [v4 locationDesiredAccuracy];
  if (v383)
  {
    v384 = v383;
    v385 = [(PPSProcessMetricCollection *)self locationDesiredAccuracy];

    if (v385)
    {
      v386 = [v4 locationDesiredAccuracy];
      [(PPSProcessMetricCollection *)self setLocationDesiredAccuracy:v386];
    }
  }

  v387 = [v4 ongoingLocation];
  if (v387)
  {
    v388 = v387;
    v389 = [(PPSProcessMetricCollection *)self ongoingLocation];

    if (v389)
    {
      v390 = [v4 ongoingLocation];
      [(PPSProcessMetricCollection *)self setOngoingLocation:v390];
    }
  }

  v391 = [v4 applicationState];
  if (v391)
  {
    v392 = v391;
    v393 = [(PPSProcessMetricCollection *)self applicationState];

    if (v393)
    {
      v394 = [v4 applicationState];
      [(PPSProcessMetricCollection *)self setApplicationState:v394];
    }
  }

  v395 = [v4 displayPower];
  if (v395)
  {
    v396 = v395;
    v397 = [(PPSProcessMetricCollection *)self displayPower];

    if (v397)
    {
      v398 = [v4 displayPower];
      [(PPSProcessMetricCollection *)self setDisplayPower:v398];
    }
  }

  v399 = [v4 weightOnScreen];
  if (v399)
  {
    v400 = v399;
    v401 = [(PPSProcessMetricCollection *)self weightOnScreen];

    if (v401)
    {
      v402 = [v4 weightOnScreen];
      [(PPSProcessMetricCollection *)self setWeightOnScreen:v402];
    }
  }

  v403 = [v4 networkingPower];
  [(PPSProcessMetricCollection *)self setNetworkingPower:v403];

  -[PPSProcessMetricCollection setAudioActive:](self, "setAudioActive:", [v4 audioActive]);
}

- (void)clearMetrics
{
  v3 = PPSMetricMonitorLogHandleForCategory(2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [PPSMetricCollection clearMetrics:v3];
  }

  v4 = [MEMORY[0x277CBEAA8] date];
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
          v13 = [PPSMetricSample sampleWithValue:&unk_2843008D0 timestamp:v4];
          [(PPSProcessMetricCollection *)self setValue:v13 forKey:v12];
        }
      }
    }
  }

  free(v6);
}

@end