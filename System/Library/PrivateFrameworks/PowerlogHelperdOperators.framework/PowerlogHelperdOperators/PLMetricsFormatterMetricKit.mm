@interface PLMetricsFormatterMetricKit
+ (id)categorizeAppExits:(id)exits;
+ (id)decodeExitWithDomain:(unsigned int)domain withCode:(unint64_t)code;
- (BOOL)hangtracerEnabled:(id)enabled;
- (PLMetricsFormatterMetricKit)init;
- (id)constructCellularData:(id)data;
- (id)constructCellularHistogram:(id)histogram;
- (id)constructPayloadWithMetrics:(id)metrics andSignpostData:(id)data forDate:(id)date;
- (id)constructSignpostIntervalDataWithDurations:(id)durations withMetrics:(id)metrics;
- (void)addBucketWithDuration:(int)duration WithEnd:(int)end andCount:(unint64_t)count toList:(id)list;
- (void)addBucketWithSignalBar:(signed __int16)bar withTime:(id)time toList:(id)list;
- (void)addPerfMetrics:(id)metrics toAppData:(id)data;
- (void)addPowerMetrics:(id)metrics toAppData:(id)data;
- (void)addSignpostData:(id)data forApp:(id)app toAppData:(id)appData;
- (void)addTelemetryForMetricInconsistencies:(id)inconsistencies;
- (void)analyticsLogSignpostsWithBundleId:(id)id withName:(id)name withCategory:(id)category withMetrics:(id)metrics;
- (void)normalizeCellularData:(id)data;
- (void)publishMetrics:(id)metrics andSignpostData:(id)data forDate:(id)date;
@end

@implementation PLMetricsFormatterMetricKit

- (PLMetricsFormatterMetricKit)init
{
  v3.receiver = self;
  v3.super_class = PLMetricsFormatterMetricKit;
  return [(PLMetricsFormatterMetricKit *)&v3 init];
}

- (void)publishMetrics:(id)metrics andSignpostData:(id)data forDate:(id)date
{
  dateCopy = date;
  v10 = [(PLMetricsFormatterMetricKit *)self constructPayloadWithMetrics:metrics andSignpostData:data forDate:dateCopy];
  mEMORY[0x277D28738] = [MEMORY[0x277D28738] sharedManager];
  [mEMORY[0x277D28738] sendMetrics:v10 forDate:dateCopy andSourceID:2];
}

- (void)addTelemetryForMetricInconsistencies:(id)inconsistencies
{
  v66 = *MEMORY[0x277D85DE8];
  inconsistenciesCopy = inconsistencies;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v54 = [inconsistenciesCopy countByEnumeratingWithState:&v60 objects:v65 count:16];
  if (v54)
  {
    v4 = 0;
    v51 = 0;
    v52 = 0;
    v53 = *v61;
    v49 = inconsistenciesCopy;
    do
    {
      for (i = 0; i != v54; ++i)
      {
        if (*v61 != v53)
        {
          objc_enumerationMutation(inconsistenciesCopy);
        }

        v6 = [inconsistenciesCopy objectForKeyedSubscript:*(*(&v60 + 1) + 8 * i)];
        signpostMetrics = [v6 signpostMetrics];
        if (signpostMetrics)
        {
          v8 = signpostMetrics;
          v55 = i;
          cpuMetrics = [v6 cpuMetrics];
          if (cpuMetrics)
          {
            v10 = cpuMetrics;
            diskIOMetrics = [v6 diskIOMetrics];

            if (diskIOMetrics)
            {
              v50 = v4;
              cpuMetrics2 = [v6 cpuMetrics];
              cumulativeCPUTime = [cpuMetrics2 cumulativeCPUTime];
              milliseconds = [MEMORY[0x277CCADD0] milliseconds];
              v15 = [cumulativeCPUTime measurementByConvertingToUnit:milliseconds];
              [v15 doubleValue];
              v17 = v16;

              diskIOMetrics2 = [v6 diskIOMetrics];
              cumulativeLogicalWrites = [diskIOMetrics2 cumulativeLogicalWrites];
              kilobytes = [MEMORY[0x277CCAE18] kilobytes];
              v21 = [cumulativeLogicalWrites measurementByConvertingToUnit:kilobytes];
              [v21 doubleValue];
              v23 = v22;

              v58 = 0u;
              v59 = 0u;
              v56 = 0u;
              v57 = 0u;
              signpostMetrics2 = [v6 signpostMetrics];
              v25 = [signpostMetrics2 countByEnumeratingWithState:&v56 objects:v64 count:16];
              if (v25)
              {
                v26 = v25;
                v27 = *v57;
                v28 = 0.0;
                v29 = 0.0;
                do
                {
                  for (j = 0; j != v26; ++j)
                  {
                    if (*v57 != v27)
                    {
                      objc_enumerationMutation(signpostMetrics2);
                    }

                    v31 = *(*(&v56 + 1) + 8 * j);
                    signpostIntervalData = [v31 signpostIntervalData];

                    if (signpostIntervalData)
                    {
                      signpostIntervalData2 = [v31 signpostIntervalData];
                      cumulativeCPUTime2 = [signpostIntervalData2 cumulativeCPUTime];

                      if (cumulativeCPUTime2)
                      {
                        signpostIntervalData3 = [v31 signpostIntervalData];
                        cumulativeCPUTime3 = [signpostIntervalData3 cumulativeCPUTime];
                        milliseconds2 = [MEMORY[0x277CCADD0] milliseconds];
                        v38 = [cumulativeCPUTime3 measurementByConvertingToUnit:milliseconds2];
                        [v38 doubleValue];
                        v28 = v28 + v39;
                      }

                      signpostIntervalData4 = [v31 signpostIntervalData];
                      cumulativeLogicalWrites2 = [signpostIntervalData4 cumulativeLogicalWrites];

                      if (cumulativeLogicalWrites2)
                      {
                        signpostIntervalData5 = [v31 signpostIntervalData];
                        cumulativeLogicalWrites3 = [signpostIntervalData5 cumulativeLogicalWrites];
                        kilobytes2 = [MEMORY[0x277CCAE18] kilobytes];
                        v45 = [cumulativeLogicalWrites3 measurementByConvertingToUnit:kilobytes2];
                        [v45 doubleValue];
                        v29 = v29 + v46;
                      }
                    }
                  }

                  v26 = [signpostMetrics2 countByEnumeratingWithState:&v56 objects:v64 count:16];
                }

                while (v26);
              }

              else
              {
                v28 = 0.0;
                v29 = 0.0;
              }

              ++v52;

              if (v17 >= v28)
              {
                v47 = v51;
              }

              else
              {
                v47 = v51 + 1;
              }

              v51 = v47;
              if (v23 >= v29)
              {
                v4 = v50;
              }

              else
              {
                v4 = v50 + 1;
              }

              inconsistenciesCopy = v49;
            }
          }

          else
          {
          }

          i = v55;
        }
      }

      v54 = [inconsistenciesCopy countByEnumeratingWithState:&v60 objects:v65 count:16];
    }

    while (v54);
    if (v52 >= 1)
    {
      ADClientSetValueForScalarKey();
      ADClientSetValueForScalarKey();
      ADClientSetValueForScalarKey();
    }
  }

  v48 = *MEMORY[0x277D85DE8];
}

- (id)constructPayloadWithMetrics:(id)metrics andSignpostData:(id)data forDate:(id)date
{
  v43 = *MEMORY[0x277D85DE8];
  metricsCopy = metrics;
  dataCopy = data;
  dateCopy = date;
  v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
  selfCopy = self;
  self->_processHangs = [(PLMetricsFormatterMetricKit *)self hangtracerEnabled:dataCopy];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v11 = metricsCopy;
  v12 = [v11 countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v39;
    v15 = 0x277D28000uLL;
    v33 = v11;
    v34 = v10;
    v32 = *v39;
    do
    {
      v16 = 0;
      v36 = v13;
      do
      {
        if (*v39 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v38 + 1) + 8 * v16);
        if ([*(v15 + 1856) isMetricKitClient:{v17, v32}])
        {
          v18 = dataCopy;
          v19 = [v11 objectForKeyedSubscript:v17];
          v20 = [v19 objectForKeyedSubscript:&unk_287146150];

          v21 = [v11 objectForKeyedSubscript:v17];
          v22 = [v21 objectForKeyedSubscript:&unk_287146168];

          v23 = [v11 objectForKeyedSubscript:v17];
          v24 = [v23 objectForKeyedSubscript:&unk_287146180];

          if (v20)
          {
            v25 = [v20 objectForKeyedSubscript:@"app_multiple_versions"];
            bOOLValue = [v25 BOOLValue];
          }

          else
          {
            bOOLValue = 0;
          }

          v27 = objc_alloc(MEMORY[0x277D28718]);
          v28 = [dateCopy dateByAddingTimeInterval:86400.0];
          v29 = [v27 initPayloadDataWithMutipleAppVersions:bOOLValue withTimeStampBegin:dateCopy withTimeStampEnd:v28 withMetrics:MEMORY[0x277CBEC10]];

          if (v22)
          {
            [(PLMetricsFormatterMetricKit *)selfCopy addPowerMetrics:v22 toAppData:v29];
          }

          dataCopy = v18;
          v15 = 0x277D28000;
          if (v24)
          {
            [(PLMetricsFormatterMetricKit *)selfCopy addPerfMetrics:v24 toAppData:v29];
          }

          v11 = v33;
          v10 = v34;
          if (dataCopy)
          {
            [(PLMetricsFormatterMetricKit *)selfCopy addSignpostData:dataCopy forApp:v17 toAppData:v29];
          }

          [v34 setObject:v29 forKey:v17];

          v14 = v32;
          v13 = v36;
        }

        ++v16;
      }

      while (v13 != v16);
      v13 = [v11 countByEnumeratingWithState:&v38 objects:v42 count:16];
    }

    while (v13);
  }

  [(PLMetricsFormatterMetricKit *)selfCopy addTelemetryForMetricInconsistencies:v10];
  v30 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)addPowerMetrics:(id)metrics toAppData:(id)data
{
  v5 = MEMORY[0x277CCAB10];
  dataCopy = data;
  metricsCopy = metrics;
  v8 = [v5 alloc];
  v9 = [metricsCopy objectForKeyedSubscript:@"fgTime_Total"];
  [v9 doubleValue];
  v11 = v10;
  seconds = [MEMORY[0x277CCADD0] seconds];
  v123 = [v8 initWithDoubleValue:seconds unit:v11];

  v13 = objc_alloc(MEMORY[0x277CCAB10]);
  v14 = [metricsCopy objectForKeyedSubscript:@"bgTime_Total"];
  [v14 doubleValue];
  v16 = v15;
  seconds2 = [MEMORY[0x277CCADD0] seconds];
  v122 = [v13 initWithDoubleValue:seconds2 unit:v16];

  v18 = objc_alloc(MEMORY[0x277CCAB10]);
  v19 = [metricsCopy objectForKeyedSubscript:@"bgTime_Audio"];
  [v19 doubleValue];
  v21 = v20;
  seconds3 = [MEMORY[0x277CCADD0] seconds];
  v120 = [v18 initWithDoubleValue:seconds3 unit:v21];

  v23 = objc_alloc(MEMORY[0x277CCAB10]);
  v24 = [metricsCopy objectForKeyedSubscript:@"bgTime_Location"];
  [v24 doubleValue];
  v26 = v25;
  seconds4 = [MEMORY[0x277CCADD0] seconds];
  v119 = [v23 initWithDoubleValue:seconds4 unit:v26];

  v121 = [objc_alloc(MEMORY[0x277CD78F0]) initWithCumulativeForegroundTimeMeasurement:v123 cumulativeBackgroundTimeMeasurement:v122 cumulativeBackgroundAudioTimeMeasurement:v120 cumulativeBackgroundLocationTimeMeasurement:v119];
  [dataCopy setApplicationTimeMetrics:v121];
  v28 = objc_alloc(MEMORY[0x277CCAB10]);
  v29 = [metricsCopy objectForKeyedSubscript:@"CPUTime"];
  [v29 doubleValue];
  v31 = v30;
  seconds5 = [MEMORY[0x277CCADD0] seconds];
  v118 = [v28 initWithDoubleValue:seconds5 unit:v31];

  v33 = [metricsCopy objectForKeyedSubscript:@"CPUInstructions"];
  v34 = [v33 unsignedIntegerValue] / 0x3E8uLL;

  v35 = objc_alloc(MEMORY[0x277CCAB10]);
  v36 = v34;
  v37 = [objc_alloc(MEMORY[0x277CCAD98]) initWithSymbol:@"kiloinstructions"];
  v116 = [v35 initWithDoubleValue:v37 unit:v36];

  v117 = [objc_alloc(MEMORY[0x277CD7920]) initWithCumulativeCPUTimeMeasurement:v118 withCumulativeCPUInstructions:v116];
  v125 = dataCopy;
  [dataCopy setCpuMetrics:v117];
  v38 = objc_alloc(MEMORY[0x277CCAB10]);
  v39 = [metricsCopy objectForKeyedSubscript:@"GPUTime"];
  [v39 doubleValue];
  v41 = v40;
  seconds6 = [MEMORY[0x277CCADD0] seconds];
  v115 = [v38 initWithDoubleValue:seconds6 unit:v41];

  v114 = [objc_alloc(MEMORY[0x277CD79B8]) initWithCumulativeGPUTimeMeasurement:v115];
  [dataCopy setGpuMetrics:v114];
  v43 = objc_alloc(MEMORY[0x277CCAB10]);
  v44 = [metricsCopy objectForKeyedSubscript:@"bytesWifiOut"];
  v45 = ([v44 unsignedIntegerValue] >> 10);
  kilobytes = [MEMORY[0x277CCAE18] kilobytes];
  v113 = [v43 initWithDoubleValue:kilobytes unit:v45];

  v47 = objc_alloc(MEMORY[0x277CCAB10]);
  v48 = [metricsCopy objectForKeyedSubscript:@"bytesWifiIn"];
  v49 = ([v48 unsignedIntegerValue] >> 10);
  kilobytes2 = [MEMORY[0x277CCAE18] kilobytes];
  v112 = [v47 initWithDoubleValue:kilobytes2 unit:v49];

  v51 = objc_alloc(MEMORY[0x277CCAB10]);
  v52 = [metricsCopy objectForKeyedSubscript:@"bytesCellularOut"];
  v53 = ([v52 unsignedIntegerValue] >> 10);
  kilobytes3 = [MEMORY[0x277CCAE18] kilobytes];
  v110 = [v51 initWithDoubleValue:kilobytes3 unit:v53];

  v55 = objc_alloc(MEMORY[0x277CCAB10]);
  v56 = [metricsCopy objectForKeyedSubscript:@"bytesCellularIn"];
  v57 = ([v56 unsignedIntegerValue] >> 10);
  kilobytes4 = [MEMORY[0x277CCAE18] kilobytes];
  v109 = [v55 initWithDoubleValue:kilobytes4 unit:v57];

  v111 = [objc_alloc(MEMORY[0x277CD7A10]) initWithCumulativeWifiUploadMeasurement:v113 cumulativeWifiDownloadMeasurement:v112 cumulativeCellularUploadMeasurement:v110 cumulativeCellularDownloadMeasurement:v109];
  [dataCopy setNetworkTransferMetrics:v111];
  v59 = objc_alloc(MEMORY[0x277CCAB10]);
  v60 = [metricsCopy objectForKeyedSubscript:@"BestAccuracy"];
  [v60 doubleValue];
  v62 = v61;
  seconds7 = [MEMORY[0x277CCADD0] seconds];
  v108 = [v59 initWithDoubleValue:seconds7 unit:v62];

  v64 = objc_alloc(MEMORY[0x277CCAB10]);
  v65 = [metricsCopy objectForKeyedSubscript:@"BestAccuracyForNavigation"];
  [v65 doubleValue];
  v67 = v66;
  seconds8 = [MEMORY[0x277CCADD0] seconds];
  v107 = [v64 initWithDoubleValue:seconds8 unit:v67];

  v69 = objc_alloc(MEMORY[0x277CCAB10]);
  v70 = [metricsCopy objectForKeyedSubscript:@"NearestTenMetersAccuracy"];
  [v70 doubleValue];
  v72 = v71;
  seconds9 = [MEMORY[0x277CCADD0] seconds];
  v106 = [v69 initWithDoubleValue:seconds9 unit:v72];

  v74 = objc_alloc(MEMORY[0x277CCAB10]);
  v75 = [metricsCopy objectForKeyedSubscript:@"HundredMetersAccuracy"];
  [v75 doubleValue];
  v77 = v76;
  seconds10 = [MEMORY[0x277CCADD0] seconds];
  v105 = [v74 initWithDoubleValue:seconds10 unit:v77];

  v79 = objc_alloc(MEMORY[0x277CCAB10]);
  v80 = [metricsCopy objectForKeyedSubscript:@"KilometerAccuracy"];
  [v80 doubleValue];
  v82 = v81;
  seconds11 = [MEMORY[0x277CCADD0] seconds];
  v104 = [v79 initWithDoubleValue:seconds11 unit:v82];

  v84 = objc_alloc(MEMORY[0x277CCAB10]);
  v85 = [metricsCopy objectForKeyedSubscript:@"ThreeKilometersAccuracy"];
  [v85 doubleValue];
  v87 = v86;
  seconds12 = [MEMORY[0x277CCADD0] seconds];
  v89 = [v84 initWithDoubleValue:seconds12 unit:v87];

  v90 = [objc_alloc(MEMORY[0x277CD79E0]) initWithCumulativeBestAccuracyTimeMeasurement:v108 cumulativeBestAccuracyForNavigationTimeMeasurement:v107 nearestTenMetersAccuracyTimeMeasurement:v106 hundredMetersAccuracyTimeMeasurement:v105 kilometerAccuracyTimeMeasurement:v104 threeKilometerAccuracyTimeMeasurement:v89];
  [v125 setLocationActivityMetrics:v90];
  v91 = objc_alloc(MEMORY[0x277CCAB10]);
  v92 = [metricsCopy objectForKeyedSubscript:@"AveragePictureLevel"];
  [v92 doubleValue];
  v94 = v93;
  v95 = [MEMORY[0x277CD7A48] apl];
  v96 = [v91 initWithDoubleValue:v95 unit:v94];

  v97 = objc_alloc(MEMORY[0x277CD7900]);
  v98 = [metricsCopy objectForKeyedSubscript:@"TotalFrameCount"];
  v99 = [v97 initWithMeasurement:v96 sampleCount:objc_msgSend(v98 standardDeviation:{"unsignedIntegerValue"), -1.0}];

  v100 = [objc_alloc(MEMORY[0x277CD7990]) initWithAveragePictureLevel:v99];
  [v125 setDisplayMetrics:v100];
  v101 = objc_alloc(MEMORY[0x277CD7950]);
  v102 = [(PLMetricsFormatterMetricKit *)self constructCellularHistogram:metricsCopy];

  v103 = [v101 initWithCellularConditionTime:v102];
  [v125 setCellularConditionMetrics:v103];
}

- (void)addPerfMetrics:(id)metrics toAppData:(id)data
{
  v5 = MEMORY[0x277CCAB10];
  dataCopy = data;
  metricsCopy = metrics;
  v8 = [v5 alloc];
  v9 = [metricsCopy objectForKeyedSubscript:@"byteswritten"];
  v10 = ([v9 unsignedIntegerValue] >> 10);
  kilobytes = [MEMORY[0x277CCAE18] kilobytes];
  v12 = [v8 initWithDoubleValue:kilobytes unit:v10];

  v30 = [objc_alloc(MEMORY[0x277CD7978]) initWithCumulativeLogicalWritesMeasurement:v12];
  [dataCopy setDiskIOMetrics:v30];
  v13 = objc_alloc(MEMORY[0x277CCAB10]);
  v14 = [metricsCopy objectForKeyedSubscript:@"PeakMemory"];
  v15 = ([v14 unsignedIntegerValue] >> 10);
  kilobytes2 = [MEMORY[0x277CCAE18] kilobytes];
  v17 = [v13 initWithDoubleValue:kilobytes2 unit:v15];

  v18 = objc_alloc(MEMORY[0x277CCAB10]);
  v19 = [metricsCopy objectForKeyedSubscript:@"AverageMemory"];
  v20 = ([v19 unsignedIntegerValue] >> 10);
  kilobytes3 = [MEMORY[0x277CCAE18] kilobytes];
  v22 = [v18 initWithDoubleValue:kilobytes3 unit:v20];

  v23 = [metricsCopy objectForKeyedSubscript:@"AverageMemoryVariance"];
  [v23 doubleValue];
  v25 = sqrt(v24) * 0.0009765625;

  v26 = objc_alloc(MEMORY[0x277CD7900]);
  v27 = [metricsCopy objectForKeyedSubscript:@"AverageMemoryCount"];

  v28 = [v26 initWithMeasurement:v22 sampleCount:objc_msgSend(v27 standardDeviation:{"integerValue"), v25}];
  v29 = [objc_alloc(MEMORY[0x277CD79E8]) initWithPeakMemoryUsageMeasurement:v17 averageMemoryUsageMeasurement:v28];
  [dataCopy setMemoryMetrics:v29];
}

- (void)addSignpostData:(id)data forApp:(id)app toAppData:(id)appData
{
  v194 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  appCopy = app;
  appDataCopy = appData;
  v10 = [dataCopy objectForKeyedSubscript:@"resumeDurations"];
  v171 = dataCopy;
  v172 = appDataCopy;
  if (v10)
  {
    array = v10;
    v12 = [dataCopy objectForKeyedSubscript:@"activationDurations"];
    if (!v12)
    {
      v23 = 0;
LABEL_24:

      goto LABEL_25;
    }

    v13 = v12;
    v14 = [dataCopy objectForKeyedSubscript:@"extendedLaunchDurations"];

    if (v14)
    {
      v15 = [dataCopy objectForKeyedSubscript:@"activationDurations"];
      v16 = [v15 objectForKeyedSubscript:appCopy];
      v17 = [v16 objectForKeyedSubscript:&unk_287146198];
      v18 = [v17 objectForKeyedSubscript:&unk_2871461B0];
      if (v18)
      {
        v19 = [dataCopy objectForKeyedSubscript:@"activationDurations"];
        v20 = [v19 objectForKeyedSubscript:appCopy];
        v21 = [v20 objectForKeyedSubscript:&unk_287146198];
        array = [v21 objectForKeyedSubscript:&unk_2871461B0];

        dataCopy = v171;
        v22 = 0x277CBE000;
      }

      else
      {
        v22 = 0x277CBE000uLL;
        array = [MEMORY[0x277CBEA60] array];
      }

      v24 = [dataCopy objectForKeyedSubscript:@"resumeDurations"];
      v25 = [v24 objectForKeyedSubscript:appCopy];
      if (v25)
      {
        v26 = [dataCopy objectForKeyedSubscript:@"resumeDurations"];
        array2 = [v26 objectForKeyedSubscript:appCopy];
      }

      else
      {
        array2 = [*(v22 + 2656) array];
      }

      v181 = array2;

      v28 = [dataCopy objectForKeyedSubscript:@"activationDurations"];
      v29 = [v28 objectForKeyedSubscript:appCopy];
      v30 = [v29 objectForKeyedSubscript:&unk_287146198];
      v31 = [v30 objectForKeyedSubscript:&unk_2871461C8];
      if (v31)
      {
        v32 = [dataCopy objectForKeyedSubscript:@"activationDurations"];
        v33 = [v32 objectForKeyedSubscript:appCopy];
        v34 = [v33 objectForKeyedSubscript:&unk_287146198];
        array3 = [v34 objectForKeyedSubscript:&unk_2871461C8];

        dataCopy = v171;
      }

      else
      {
        array3 = [*(v22 + 2656) array];
      }

      v35 = [dataCopy objectForKeyedSubscript:@"extendedLaunchDurations"];
      v36 = [v35 objectForKeyedSubscript:appCopy];
      v37 = [v36 objectForKeyedSubscript:&unk_287146198];
      if (v37)
      {
        v38 = [dataCopy objectForKeyedSubscript:@"extendedLaunchDurations"];
        v39 = [v38 objectForKeyedSubscript:appCopy];
        array4 = [v39 objectForKeyedSubscript:&unk_287146198];
      }

      else
      {
        array4 = [*(v22 + 2656) array];
      }

      v41 = v181;
      v42 = array3;

      v23 = 0;
      if (array)
      {
        appDataCopy = v172;
        if (v181 && array3 && array4)
        {
          v43 = [(PLMetricsFormatterMetricKit *)self constructHistogramBucketsWithDuration:10 andData:array];
          v44 = [(PLMetricsFormatterMetricKit *)self constructHistogramBucketsWithDuration:10 andData:v181];
          v45 = [(PLMetricsFormatterMetricKit *)self constructHistogramBucketsWithDuration:10 andData:array3];
          v46 = [(PLMetricsFormatterMetricKit *)self constructHistogramBucketsWithDuration:10 andData:array4];
          v23 = [objc_alloc(MEMORY[0x277CD78D0]) initWithLaunchTimeData:v43 withResumeTimeData:v44 withActivationTimeData:v45 withExtendedLaunchTimeData:v46];

          appDataCopy = v172;
          v42 = array3;

          v41 = v181;
        }
      }

      else
      {
        appDataCopy = v172;
      }

      goto LABEL_24;
    }
  }

  v23 = 0;
LABEL_25:
  v170 = v23;
  [appDataCopy setApplicationLaunchMetrics:v23];
  v47 = [dataCopy objectForKeyedSubscript:@"hangDurations"];
  if (!v47)
  {
    goto LABEL_29;
  }

  v48 = v47;
  processHangs = [(PLMetricsFormatterMetricKit *)self processHangs];

  if (!processHangs)
  {
    goto LABEL_29;
  }

  v50 = [dataCopy objectForKeyedSubscript:@"hangDurations"];
  v51 = [v50 objectForKeyedSubscript:appCopy];

  if (v51)
  {
    v52 = [(PLMetricsFormatterMetricKit *)self constructHistogramBucketsWithDuration:10 andData:v51];

    v169 = v52;
    v53 = [objc_alloc(MEMORY[0x277CD78E0]) initWithAppResponsivenessData:v52];
  }

  else
  {
LABEL_29:
    v53 = 0;
    v169 = MEMORY[0x277CBEBF8];
  }

  v168 = v53;
  [appDataCopy setApplicationResponsivenessMetrics:v53];
  v54 = [dataCopy objectForKeyedSubscript:@"scrollGlitches"];

  if (v54)
  {
    v55 = [dataCopy objectForKeyedSubscript:@"scrollGlitches"];
    v56 = [v55 objectForKeyedSubscript:appCopy];

    if (v56 && ([v56 objectForKeyedSubscript:@"glitchDuration"], (v57 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v58 = v57;
      v59 = [v56 objectForKeyedSubscript:@"scrollDuration"];
      if (!v59)
      {
        v61 = 0;
        goto LABEL_39;
      }

      v60 = v59;
      v61 = [v56 objectForKeyedSubscript:@"glitchTimeRatio"];

      if (v61)
      {
        v62 = [v56 objectForKeyedSubscript:@"glitchDuration"];
        [v62 doubleValue];
        v64 = v63;

        v65 = [v56 objectForKeyedSubscript:@"scrollDuration"];
        [v65 doubleValue];
        v67 = v66 / 1000.0;

        v68 = [v56 objectForKeyedSubscript:@"glitchTimeRatio"];
        [v68 doubleValue];
        v70 = v69;

        v71 = objc_alloc(MEMORY[0x277CCAB10]);
        v72 = [objc_alloc(MEMORY[0x277CCAD98]) initWithSymbol:@"ms per s"];
        v58 = [v71 initWithDoubleValue:v72 unit:v64 / v67];

        v73 = objc_alloc(MEMORY[0x277CCAB10]);
        appDataCopy = v172;
        v74 = [objc_alloc(MEMORY[0x277CCAD98]) initWithSymbol:@"ms per s"];
        v75 = [v73 initWithDoubleValue:v74 unit:v70];

        v61 = [objc_alloc(MEMORY[0x277CD78A0]) initWithHitchTimeRatio:v58 perceivedHitchTimeRatio:v75];
LABEL_39:
      }
    }

    else
    {
      v61 = 0;
    }

    goto LABEL_41;
  }

  v61 = 0;
LABEL_41:
  v167 = v61;
  [appDataCopy setAnimationMetrics:v61];
  v76 = [dataCopy objectForKeyedSubscript:@"processExits"];
  if (!v76)
  {
    goto LABEL_44;
  }

  v77 = v76;
  v78 = [dataCopy objectForKeyedSubscript:@"processExits"];
  v79 = [v78 objectForKeyedSubscript:appCopy];

  if (v79)
  {
    v80 = [dataCopy objectForKeyedSubscript:@"processExits"];
    v81 = [v80 objectForKeyedSubscript:appCopy];
    v182 = [v81 objectForKeyedSubscript:&unk_287146198];

    v82 = [dataCopy objectForKeyedSubscript:@"processExits"];
    v83 = [v82 objectForKeyedSubscript:appCopy];
    v164 = [v83 objectForKeyedSubscript:&unk_2871461E0];

    v84 = [PLMetricsFormatterMetricKit categorizeAppExits:v182];
    v173 = objc_alloc(MEMORY[0x277CD79A0]);
    v161 = [v84 objectForKeyedSubscript:@"cumulativeNormalAppExitCount"];
    unsignedIntegerValue = [v161 unsignedIntegerValue];
    v159 = [v84 objectForKeyedSubscript:@"cumulativeMemoryResourceLimitExitCount"];
    unsignedIntegerValue2 = [v159 unsignedIntegerValue];
    v85 = [v84 objectForKeyedSubscript:@"cumulativeCPUResourceLimitExitCount"];
    unsignedIntegerValue3 = [v85 unsignedIntegerValue];
    v86 = [v84 objectForKeyedSubscript:@"cumulativeBadAccessExitCount"];
    unsignedIntegerValue4 = [v86 unsignedIntegerValue];
    v88 = [v84 objectForKeyedSubscript:@"cumulativeAbnormalExitCount"];
    unsignedIntegerValue5 = [v88 unsignedIntegerValue];
    v177 = v84;
    v90 = [v84 objectForKeyedSubscript:@"cumulativeIllegalInstructionExitCount"];
    unsignedIntegerValue6 = [v90 unsignedIntegerValue];
    v92 = [v84 objectForKeyedSubscript:@"cumulativeAppWatchdogExitCount"];
    v174 = [v173 initWithNormalAppExitCount:unsignedIntegerValue withMemoryResourceLimitExitCount:unsignedIntegerValue2 withCPUResourceLimitExitCount:unsignedIntegerValue3 withBadAccessExitCount:unsignedIntegerValue4 withAbnormalExitCount:unsignedIntegerValue5 withIllegalInstructionExitCount:unsignedIntegerValue6 withAppWatchDogExitCount:{objc_msgSend(v92, "unsignedIntegerValue")}];

    v93 = [PLMetricsFormatterMetricKit categorizeAppExits:v164];
    v94 = objc_alloc(MEMORY[0x277CD7908]);
    v162 = [v93 objectForKeyedSubscript:@"cumulativeNormalAppExitCount"];
    unsignedIntegerValue7 = [v162 unsignedIntegerValue];
    v160 = [v93 objectForKeyedSubscript:@"cumulativeMemoryResourceLimitExitCount"];
    unsignedIntegerValue8 = [v160 unsignedIntegerValue];
    v158 = [v93 objectForKeyedSubscript:@"cumulativeCPUResourceLimitExitCount"];
    unsignedIntegerValue9 = [v158 unsignedIntegerValue];
    v156 = [v93 objectForKeyedSubscript:@"cumulativeMemoryPressureExitCount"];
    unsignedIntegerValue10 = [v156 unsignedIntegerValue];
    v152 = [v93 objectForKeyedSubscript:@"cumulativeBadAccessExitCount"];
    unsignedIntegerValue11 = [v152 unsignedIntegerValue];
    v150 = [v93 objectForKeyedSubscript:@"cumulativeAbnormalExitCount"];
    unsignedIntegerValue12 = [v150 unsignedIntegerValue];
    v147 = [v93 objectForKeyedSubscript:@"cumulativeIllegalInstructionExitCount"];
    unsignedIntegerValue13 = [v147 unsignedIntegerValue];
    v145 = [v93 objectForKeyedSubscript:@"cumulativeAppWatchdogExitCount"];
    unsignedIntegerValue14 = [v145 unsignedIntegerValue];
    v95 = [v93 objectForKeyedSubscript:@"cumulativeSuspendedWithLockedFileExitCount"];
    unsignedIntegerValue15 = [v95 unsignedIntegerValue];
    v97 = [v93 objectForKeyedSubscript:@"cumulativeBackgroundTaskAssertionTimeoutExitCount"];
    unsignedIntegerValue16 = [v97 unsignedIntegerValue];
    v99 = [v93 objectForKeyedSubscript:@"cumulativeBackgroundURLSessionCompletionTimeoutExitCount"];
    unsignedIntegerValue17 = [v99 unsignedIntegerValue];
    v101 = [v93 objectForKeyedSubscript:@"cumulativeBackgroundFetchCompletionTimeoutExitCount"];
    v102 = [v94 initWithNormalAppExitCount:unsignedIntegerValue7 memoryResourceLimitExitCount:unsignedIntegerValue8 cpuResourceLimitExitCount:unsignedIntegerValue9 memoryPressureExitCount:unsignedIntegerValue10 badAccessExitCount:unsignedIntegerValue11 abnormalExitCount:unsignedIntegerValue12 illegalInstructionExitCount:unsignedIntegerValue13 appWatchDogExitCount:unsignedIntegerValue14 cumulativeSuspendedWithLockedFileExitCount:unsignedIntegerValue15 cumulativeBackgroundTaskAssertionTimeoutExitCount:unsignedIntegerValue16 cumulativeBackgroundURLSessionCompletionTimeoutExitCount:unsignedIntegerValue17 cumulativeBackgroundFetchCompletionTimeoutExitCount:{objc_msgSend(v101, "unsignedIntegerValue")}];

    appDataCopy = v172;
    v103 = [objc_alloc(MEMORY[0x277CD78B0]) initWithForegroundExitData:v174 backgroundExitData:v102];

    dataCopy = v171;
  }

  else
  {
LABEL_44:
    v103 = 0;
  }

  [appDataCopy setApplicationExitMetrics:v103];
  v183 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v104 = [dataCopy objectForKeyedSubscript:@"signpostIntervals"];

  if (v104)
  {
    v105 = [dataCopy objectForKeyedSubscript:@"signpostIntervals"];
    v106 = [v105 objectForKeyedSubscript:appCopy];

    if (v106)
    {
      v165 = v103;
      v107 = [v106 objectForKeyedSubscript:@"appSignpostDurations"];
      v163 = v106;
      v108 = [v106 objectForKeyedSubscript:@"appSignpostMetrics"];
      v109 = MEMORY[0x277CBEC10];
      if (v108)
      {
        v109 = v108;
      }

      v178 = v109;
      v188 = 0u;
      v189 = 0u;
      v190 = 0u;
      v191 = 0u;
      v110 = v107;
      v111 = [v110 countByEnumeratingWithState:&v188 objects:v193 count:16];
      v112 = 0x277CBE000uLL;
      if (v111)
      {
        v113 = v111;
        v114 = *v189;
        v175 = *v189;
        do
        {
          for (i = 0; i != v113; ++i)
          {
            if (*v189 != v114)
            {
              objc_enumerationMutation(v110);
            }

            v116 = *(*(&v188 + 1) + 8 * i);
            v117 = *(v112 + 2656);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && [v116 count] == 2)
            {
              v118 = [v116 objectAtIndexedSubscript:0];
              v119 = [v116 objectAtIndexedSubscript:1];
              v120 = [v110 objectForKeyedSubscript:v116];
              v121 = [v178 objectForKeyedSubscript:v116];
              [(PLMetricsFormatterMetricKit *)self analyticsLogSignpostsWithBundleId:appCopy withName:v119 withCategory:v118 withMetrics:v121];
              v122 = [(PLMetricsFormatterMetricKit *)self constructSignpostIntervalDataWithDurations:v120 withMetrics:v121];
              v123 = appCopy;
              v124 = [objc_alloc(MEMORY[0x277CD7A28]) initWithSignpostName:v119 withSignpostCategory:v118 withTotalCount:objc_msgSend(v120 withSignpostIntervalData:{"count"), v122}];
              [v183 addObject:v124];

              appCopy = v123;
              v112 = 0x277CBE000;

              v114 = v175;
            }
          }

          v113 = [v110 countByEnumeratingWithState:&v188 objects:v193 count:16];
        }

        while (v113);
      }

      dataCopy = v171;
      appDataCopy = v172;
      v106 = v163;
      v103 = v165;
    }
  }

  v125 = [dataCopy objectForKeyedSubscript:@"signpostEvents"];

  if (v125)
  {
    v126 = [dataCopy objectForKeyedSubscript:@"signpostEvents"];
    v180 = appCopy;
    v127 = [v126 objectForKeyedSubscript:appCopy];

    if (v127)
    {
      v166 = v103;
      v186 = 0u;
      v187 = 0u;
      v184 = 0u;
      v185 = 0u;
      v128 = v127;
      v129 = [v128 countByEnumeratingWithState:&v184 objects:v192 count:16];
      v130 = 0x277CBE000uLL;
      if (v129)
      {
        v131 = v129;
        v132 = *v185;
        do
        {
          for (j = 0; j != v131; ++j)
          {
            if (*v185 != v132)
            {
              objc_enumerationMutation(v128);
            }

            v134 = *(*(&v184 + 1) + 8 * j);
            v135 = *(v130 + 2656);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && [v134 count] == 2)
            {
              v136 = [v134 objectAtIndexedSubscript:0];
              v137 = [v134 objectAtIndexedSubscript:1];
              v138 = [v128 objectForKeyedSubscript:v134];
              if ([v138 integerValue] >= 1)
              {
                v139 = [objc_alloc(MEMORY[0x277CD7A28]) initWithSignpostName:v137 withSignpostCategory:v136 withTotalCount:objc_msgSend(v138 withSignpostIntervalData:{"unsignedIntegerValue"), 0}];
                [v183 addObject:v139];

                v130 = 0x277CBE000;
              }
            }
          }

          v131 = [v128 countByEnumeratingWithState:&v184 objects:v192 count:16];
        }

        while (v131);
      }

      dataCopy = v171;
      appDataCopy = v172;
      v103 = v166;
    }

    appCopy = v180;
  }

  v140 = [MEMORY[0x277CBEA60] arrayWithArray:v183];
  [appDataCopy setSignpostMetrics:v140];

  v141 = *MEMORY[0x277D85DE8];
}

- (id)constructSignpostIntervalDataWithDurations:(id)durations withMetrics:(id)metrics
{
  metricsCopy = metrics;
  v7 = [(PLMetricsFormatterMetricKit *)self constructHistogramBucketsWithDuration:100 andData:durations];
  if (metricsCopy)
  {
    v8 = [metricsCopy objectForKeyedSubscript:@"cpuTime"];
    [v8 doubleValue];
    v10 = v9 * 1000.0;

    v11 = objc_alloc(MEMORY[0x277CCAB10]);
    milliseconds = [MEMORY[0x277CCADD0] milliseconds];
    v13 = [v11 initWithDoubleValue:milliseconds unit:v10];

    v14 = objc_alloc(MEMORY[0x277CCAB10]);
    v15 = [metricsCopy objectForKeyedSubscript:@"averageMemory"];
    [v15 doubleValue];
    v17 = v16;
    kilobytes = [MEMORY[0x277CCAE18] kilobytes];
    v19 = [v14 initWithDoubleValue:kilobytes unit:v17];

    v20 = objc_alloc(MEMORY[0x277CD7900]);
    v21 = [metricsCopy objectForKeyedSubscript:@"countInstances"];
    v22 = [v20 initWithMeasurement:v19 sampleCount:objc_msgSend(v21 standardDeviation:{"intValue"), -1.0}];

    v23 = objc_alloc(MEMORY[0x277CCAB10]);
    v24 = [metricsCopy objectForKeyedSubscript:@"diskIO"];
    [v24 doubleValue];
    v26 = v25;
    kilobytes2 = [MEMORY[0x277CCAE18] kilobytes];
    v28 = [v23 initWithDoubleValue:kilobytes2 unit:v26];

    v29 = [metricsCopy objectForKeyedSubscript:@"hitchDuration"];
    [v29 doubleValue];
    v31 = v30;

    v32 = [metricsCopy objectForKeyedSubscript:@"animationDuration"];
    [v32 doubleValue];
    v34 = v33;

    v35 = 0;
    if (v31 >= 0.0)
    {
      v36 = v34 / 1000.0;
      if (v36 > 0.0)
      {
        v37 = objc_alloc(MEMORY[0x277CCAB10]);
        v38 = [objc_alloc(MEMORY[0x277CCAD98]) initWithSymbol:@"ms per s"];
        v35 = [v37 initWithDoubleValue:v38 unit:v31 / v36];
      }
    }
  }

  else
  {
    v35 = 0;
    v28 = 0;
    v22 = 0;
    v13 = 0;
  }

  v39 = [objc_alloc(MEMORY[0x277CD7A20]) initWithHistogramDurationData:v7 withCumulativeCPUTime:v13 withAverageMemory:v22 withCumulativeLogicalWrites:v28 withCumulativeHitchTimeRatio:v35];

  return v39;
}

- (void)analyticsLogSignpostsWithBundleId:(id)id withName:(id)name withCategory:(id)category withMetrics:(id)metrics
{
  idCopy = id;
  nameCopy = name;
  categoryCopy = category;
  metricsCopy = metrics;
  v13 = metricsCopy;
  if (idCopy && nameCopy && categoryCopy && metricsCopy)
  {
    v14 = idCopy;
    v15 = nameCopy;
    v16 = categoryCopy;
    v17 = v13;
    AnalyticsSendEventLazy();
  }
}

id __99__PLMetricsFormatterMetricKit_analyticsLogSignpostsWithBundleId_withName_withCategory_withMetrics___block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v29 = *(a1 + 32);
  v28[0] = @"BundleID";
  v28[1] = @"Name";
  v3 = *(a1 + 48);
  v2 = *(a1 + 56);
  v30 = v3;
  v28[2] = @"Category";
  v28[3] = @"cpuTime";
  v4 = [v2 objectForKeyedSubscript:?];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = &unk_2871461E0;
  }

  v31 = v6;
  v28[4] = @"diskIO";
  v7 = [*(a1 + 56) objectForKeyedSubscript:?];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = &unk_2871461E0;
  }

  v32 = v9;
  v28[5] = @"peakMemory";
  v10 = [*(a1 + 56) objectForKeyedSubscript:?];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = &unk_2871461E0;
  }

  v33 = v12;
  v28[6] = @"averageMemory";
  v13 = [*(a1 + 56) objectForKeyedSubscript:?];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = &unk_2871461E0;
  }

  v34 = v15;
  v28[7] = @"countInstances";
  v16 = [*(a1 + 56) objectForKeyedSubscript:?];
  v17 = v16;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = &unk_2871461E0;
  }

  v35 = v18;
  v28[8] = @"hitchDuration";
  v19 = [*(a1 + 56) objectForKeyedSubscript:?];
  v20 = v19;
  if (v19)
  {
    v21 = v19;
  }

  else
  {
    v21 = &unk_2871461E0;
  }

  v36 = v21;
  v28[9] = @"animationDuration";
  v22 = [*(a1 + 56) objectForKeyedSubscript:?];
  v23 = v22;
  if (v22)
  {
    v24 = v22;
  }

  else
  {
    v24 = &unk_2871461E0;
  }

  v37 = v24;
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:v28 count:10];

  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

- (void)addBucketWithDuration:(int)duration WithEnd:(int)end andCount:(unint64_t)count toList:(id)list
{
  v8 = (end - duration + 1);
  v9 = MEMORY[0x277CCAB10];
  listCopy = list;
  v11 = [v9 alloc];
  milliseconds = [MEMORY[0x277CCADD0] milliseconds];
  v18 = [v11 initWithDoubleValue:milliseconds unit:v8];

  v13 = objc_alloc(MEMORY[0x277CCAB10]);
  endCopy = end;
  milliseconds2 = [MEMORY[0x277CCADD0] milliseconds];
  v16 = [v13 initWithDoubleValue:milliseconds2 unit:endCopy];

  v17 = [objc_alloc(MEMORY[0x277CD79C8]) initWithBucketStart:v18 bucketEnd:v16 bucketCount:count];
  [listCopy addObject:v17];
}

- (id)constructCellularHistogram:(id)histogram
{
  v4 = MEMORY[0x277CBEB18];
  histogramCopy = histogram;
  v6 = objc_alloc_init(v4);
  v7 = [(PLMetricsFormatterMetricKit *)self constructCellularData:histogramCopy];

  [(PLMetricsFormatterMetricKit *)self normalizeCellularData:v7];
  v8 = [v7 objectForKeyedSubscript:&unk_287146150];
  [(PLMetricsFormatterMetricKit *)self addBucketWithSignalBar:0 withTime:v8 toList:v6];

  v9 = [v7 objectForKeyedSubscript:&unk_287146168];
  [(PLMetricsFormatterMetricKit *)self addBucketWithSignalBar:1 withTime:v9 toList:v6];

  v10 = [v7 objectForKeyedSubscript:&unk_287146180];
  [(PLMetricsFormatterMetricKit *)self addBucketWithSignalBar:2 withTime:v10 toList:v6];

  v11 = [v7 objectForKeyedSubscript:&unk_2871461F8];
  [(PLMetricsFormatterMetricKit *)self addBucketWithSignalBar:3 withTime:v11 toList:v6];

  v12 = [v7 objectForKeyedSubscript:&unk_287146210];
  [(PLMetricsFormatterMetricKit *)self addBucketWithSignalBar:4 withTime:v12 toList:v6];

  return v6;
}

- (void)addBucketWithSignalBar:(signed __int16)bar withTime:(id)time toList:(id)list
{
  barCopy = bar;
  timeCopy = time;
  listCopy = list;
  if (timeCopy && [timeCopy unsignedIntegerValue])
  {
    v8 = objc_alloc(MEMORY[0x277CCAB10]);
    v9 = barCopy;
    bars = [MEMORY[0x277CD7A50] bars];
    v11 = [v8 initWithDoubleValue:bars unit:v9];

    v12 = [objc_alloc(MEMORY[0x277CD79C8]) initWithBucketStart:v11 bucketEnd:v11 bucketCount:{objc_msgSend(timeCopy, "unsignedIntegerValue")}];
    [listCopy addObject:v12];
  }
}

- (void)normalizeCellularData:(id)data
{
  v44 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v4 = [dataCopy countByEnumeratingWithState:&v37 objects:v43 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v38;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v38 != v7)
        {
          objc_enumerationMutation(dataCopy);
        }

        v9 = [dataCopy objectForKeyedSubscript:*(*(&v37 + 1) + 8 * i)];
        v6 += [v9 unsignedIntegerValue];
      }

      v5 = [dataCopy countByEnumeratingWithState:&v37 objects:v43 count:16];
    }

    while (v5);
    if (v6)
    {
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v10 = [dataCopy copy];
      v11 = [v10 countByEnumeratingWithState:&v33 objects:v42 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v34;
        do
        {
          for (j = 0; j != v12; ++j)
          {
            if (*v34 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v33 + 1) + 8 * j);
            v16 = MEMORY[0x277CCABB0];
            v17 = [dataCopy objectForKeyedSubscript:v15];
            v18 = [v16 numberWithUnsignedLongLong:{100 * objc_msgSend(v17, "unsignedIntegerValue") / v6}];
            [dataCopy setObject:v18 forKeyedSubscript:v15];
          }

          v12 = [v10 countByEnumeratingWithState:&v33 objects:v42 count:16];
        }

        while (v12);
      }

      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v19 = dataCopy;
      v20 = [v19 countByEnumeratingWithState:&v29 objects:v41 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = 0;
        v23 = *v30;
        do
        {
          for (k = 0; k != v21; ++k)
          {
            if (*v30 != v23)
            {
              objc_enumerationMutation(v19);
            }

            v25 = *(*(&v29 + 1) + 8 * k);
            if ([v25 shortValue])
            {
              v26 = [v19 objectForKeyedSubscript:v25];
              v22 += [v26 unsignedIntegerValue];
            }
          }

          v21 = [v19 countByEnumeratingWithState:&v29 objects:v41 count:16];
        }

        while (v21);

        if (v22 > 0x63)
        {
          [v19 setObject:&unk_2871461E0 forKeyedSubscript:&unk_287146150];
          goto LABEL_29;
        }
      }

      else
      {

        v22 = 0;
      }

      v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{100 - v22, v29}];
      [v19 setObject:v27 forKeyedSubscript:&unk_287146150];
    }
  }

LABEL_29:

  v28 = *MEMORY[0x277D85DE8];
}

- (id)constructCellularData:(id)data
{
  dataCopy = data;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v5 = [dataCopy objectForKeyedSubscript:@"SignalBar0"];

  if (v5)
  {
    v6 = [dataCopy objectForKeyedSubscript:@"SignalBar0"];
    [v4 setObject:v6 forKeyedSubscript:&unk_287146150];
  }

  v7 = [dataCopy objectForKeyedSubscript:@"SignalBar1"];

  if (v7)
  {
    v8 = [dataCopy objectForKeyedSubscript:@"SignalBar1"];
    [v4 setObject:v8 forKeyedSubscript:&unk_287146168];
  }

  v9 = [dataCopy objectForKeyedSubscript:@"SignalBar2"];

  if (v9)
  {
    v10 = [dataCopy objectForKeyedSubscript:@"SignalBar2"];
    [v4 setObject:v10 forKeyedSubscript:&unk_287146180];
  }

  v11 = [dataCopy objectForKeyedSubscript:@"SignalBar3"];

  if (v11)
  {
    v12 = [dataCopy objectForKeyedSubscript:@"SignalBar3"];
    [v4 setObject:v12 forKeyedSubscript:&unk_2871461F8];
  }

  v13 = [dataCopy objectForKeyedSubscript:@"SignalBar4"];

  if (v13)
  {
    v14 = [dataCopy objectForKeyedSubscript:@"SignalBar4"];
    [v4 setObject:v14 forKeyedSubscript:&unk_287146210];
  }

  return v4;
}

- (BOOL)hangtracerEnabled:(id)enabled
{
  enabledCopy = enabled;
  if ([MEMORY[0x277D3F208] internalBuild])
  {
    v4 = 1;
  }

  else
  {
    if (!enabledCopy)
    {
      goto LABEL_7;
    }

    v5 = [enabledCopy objectForKeyedSubscript:@"hangtracer_enabled"];

    if (!v5 || ([enabledCopy objectForKeyedSubscript:@"hangtracer_enabled"], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "longValue"), v6, v4 = 1, (v7 - 100) >= 2) && v7 != 1000)
    {
LABEL_7:
      v4 = 0;
    }
  }

  return v4;
}

+ (id)categorizeAppExits:(id)exits
{
  v3 = MEMORY[0x277CBEB38];
  exitsCopy = exits;
  v5 = objc_alloc_init(v3);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __50__PLMetricsFormatterMetricKit_categorizeAppExits___block_invoke;
  v8[3] = &unk_279A5D688;
  v6 = v5;
  v9 = v6;
  [exitsCopy enumerateKeysAndObjectsUsingBlock:v8];

  return v6;
}

void __50__PLMetricsFormatterMetricKit_categorizeAppExits___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = a3;
  v5 = a2;
  v6 = [v5 objectAtIndexedSubscript:0];
  v7 = [v6 unsignedShortValue];

  v8 = [v5 objectAtIndexedSubscript:1];

  v9 = [v8 unsignedLongValue];
  v10 = [PLMetricsFormatterMetricKit decodeExitWithDomain:v7 withCode:v9];
  if (v10)
  {
    v11 = MEMORY[0x277CCABB0];
    v12 = [*(a1 + 32) objectForKeyedSubscript:v10];
    v13 = [v11 numberWithUnsignedInteger:{objc_msgSend(v14, "unsignedIntegerValue") + objc_msgSend(v12, "unsignedIntegerValue")}];
    [*(a1 + 32) setObject:v13 forKeyedSubscript:v10];
  }
}

+ (id)decodeExitWithDomain:(unsigned int)domain withCode:(unint64_t)code
{
  if (domain <= 9)
  {
    if (domain == 1)
    {
      if (code <= 0x11)
      {
        if (((1 << code) & 0x21F78) != 0)
        {
          return @"cumulativeMemoryPressureExitCount";
        }

        if (((1 << code) & 0x84) != 0)
        {
          return @"cumulativeMemoryResourceLimitExitCount";
        }
      }

      v6 = code == 100;
      v5 = @"cumulativeCPUResourceLimitExitCount";
    }

    else
    {
      v4 = @"cumulativeIllegalInstructionExitCount";
      if (code != 4)
      {
        v4 = 0;
      }

      if (code == 6)
      {
        v4 = @"cumulativeAbnormalExitCount";
      }

      if ((code & 0xFFFFFFFFFFFFFFFELL) == 0xA)
      {
        v5 = @"cumulativeBadAccessExitCount";
      }

      else
      {
        v5 = v4;
      }

      v6 = domain == 2;
    }

    goto LABEL_26;
  }

  if (domain != 10)
  {
    if (code == 3735883980)
    {
      v7 = @"cumulativeSuspendedWithLockedFileExitCount";
    }

    else
    {
      v7 = 0;
    }

    if (code == 562215636)
    {
      v8 = @"cumulativeBackgroundFetchCompletionTimeoutExitCount";
    }

    else
    {
      v8 = v7;
    }

    v9 = @"cumulativeBackgroundTaskAssertionTimeoutExitCount";
    v10 = @"cumulativeBackgroundURLSessionCompletionTimeoutExitCount";
    if (code != 562215635)
    {
      v10 = 0;
    }

    if (code != 562215634)
    {
      v9 = v10;
    }

    if (code <= 562215635)
    {
      v5 = v9;
    }

    else
    {
      v5 = v8;
    }

    v6 = domain == 15;
LABEL_26:
    if (v6)
    {
      return v5;
    }

    else
    {
      return 0;
    }
  }

  if (code == 2343432205)
  {
    return @"cumulativeAppWatchdogExitCount";
  }

  if (code == 4227595259 || code == 3735943697)
  {
    return @"cumulativeNormalAppExitCount";
  }

  return 0;
}

@end