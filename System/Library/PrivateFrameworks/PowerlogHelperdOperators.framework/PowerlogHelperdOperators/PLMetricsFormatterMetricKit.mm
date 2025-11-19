@interface PLMetricsFormatterMetricKit
+ (id)categorizeAppExits:(id)a3;
+ (id)decodeExitWithDomain:(unsigned int)a3 withCode:(unint64_t)a4;
- (BOOL)hangtracerEnabled:(id)a3;
- (PLMetricsFormatterMetricKit)init;
- (id)constructCellularData:(id)a3;
- (id)constructCellularHistogram:(id)a3;
- (id)constructPayloadWithMetrics:(id)a3 andSignpostData:(id)a4 forDate:(id)a5;
- (id)constructSignpostIntervalDataWithDurations:(id)a3 withMetrics:(id)a4;
- (void)addBucketWithDuration:(int)a3 WithEnd:(int)a4 andCount:(unint64_t)a5 toList:(id)a6;
- (void)addBucketWithSignalBar:(signed __int16)a3 withTime:(id)a4 toList:(id)a5;
- (void)addPerfMetrics:(id)a3 toAppData:(id)a4;
- (void)addPowerMetrics:(id)a3 toAppData:(id)a4;
- (void)addSignpostData:(id)a3 forApp:(id)a4 toAppData:(id)a5;
- (void)addTelemetryForMetricInconsistencies:(id)a3;
- (void)analyticsLogSignpostsWithBundleId:(id)a3 withName:(id)a4 withCategory:(id)a5 withMetrics:(id)a6;
- (void)normalizeCellularData:(id)a3;
- (void)publishMetrics:(id)a3 andSignpostData:(id)a4 forDate:(id)a5;
@end

@implementation PLMetricsFormatterMetricKit

- (PLMetricsFormatterMetricKit)init
{
  v3.receiver = self;
  v3.super_class = PLMetricsFormatterMetricKit;
  return [(PLMetricsFormatterMetricKit *)&v3 init];
}

- (void)publishMetrics:(id)a3 andSignpostData:(id)a4 forDate:(id)a5
{
  v8 = a5;
  v10 = [(PLMetricsFormatterMetricKit *)self constructPayloadWithMetrics:a3 andSignpostData:a4 forDate:v8];
  v9 = [MEMORY[0x277D28738] sharedManager];
  [v9 sendMetrics:v10 forDate:v8 andSourceID:2];
}

- (void)addTelemetryForMetricInconsistencies:(id)a3
{
  v66 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v54 = [v3 countByEnumeratingWithState:&v60 objects:v65 count:16];
  if (v54)
  {
    v4 = 0;
    v51 = 0;
    v52 = 0;
    v53 = *v61;
    v49 = v3;
    do
    {
      for (i = 0; i != v54; ++i)
      {
        if (*v61 != v53)
        {
          objc_enumerationMutation(v3);
        }

        v6 = [v3 objectForKeyedSubscript:*(*(&v60 + 1) + 8 * i)];
        v7 = [v6 signpostMetrics];
        if (v7)
        {
          v8 = v7;
          v55 = i;
          v9 = [v6 cpuMetrics];
          if (v9)
          {
            v10 = v9;
            v11 = [v6 diskIOMetrics];

            if (v11)
            {
              v50 = v4;
              v12 = [v6 cpuMetrics];
              v13 = [v12 cumulativeCPUTime];
              v14 = [MEMORY[0x277CCADD0] milliseconds];
              v15 = [v13 measurementByConvertingToUnit:v14];
              [v15 doubleValue];
              v17 = v16;

              v18 = [v6 diskIOMetrics];
              v19 = [v18 cumulativeLogicalWrites];
              v20 = [MEMORY[0x277CCAE18] kilobytes];
              v21 = [v19 measurementByConvertingToUnit:v20];
              [v21 doubleValue];
              v23 = v22;

              v58 = 0u;
              v59 = 0u;
              v56 = 0u;
              v57 = 0u;
              v24 = [v6 signpostMetrics];
              v25 = [v24 countByEnumeratingWithState:&v56 objects:v64 count:16];
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
                      objc_enumerationMutation(v24);
                    }

                    v31 = *(*(&v56 + 1) + 8 * j);
                    v32 = [v31 signpostIntervalData];

                    if (v32)
                    {
                      v33 = [v31 signpostIntervalData];
                      v34 = [v33 cumulativeCPUTime];

                      if (v34)
                      {
                        v35 = [v31 signpostIntervalData];
                        v36 = [v35 cumulativeCPUTime];
                        v37 = [MEMORY[0x277CCADD0] milliseconds];
                        v38 = [v36 measurementByConvertingToUnit:v37];
                        [v38 doubleValue];
                        v28 = v28 + v39;
                      }

                      v40 = [v31 signpostIntervalData];
                      v41 = [v40 cumulativeLogicalWrites];

                      if (v41)
                      {
                        v42 = [v31 signpostIntervalData];
                        v43 = [v42 cumulativeLogicalWrites];
                        v44 = [MEMORY[0x277CCAE18] kilobytes];
                        v45 = [v43 measurementByConvertingToUnit:v44];
                        [v45 doubleValue];
                        v29 = v29 + v46;
                      }
                    }
                  }

                  v26 = [v24 countByEnumeratingWithState:&v56 objects:v64 count:16];
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

              v3 = v49;
            }
          }

          else
          {
          }

          i = v55;
        }
      }

      v54 = [v3 countByEnumeratingWithState:&v60 objects:v65 count:16];
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

- (id)constructPayloadWithMetrics:(id)a3 andSignpostData:(id)a4 forDate:(id)a5
{
  v43 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v35 = a5;
  v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v37 = self;
  self->_processHangs = [(PLMetricsFormatterMetricKit *)self hangtracerEnabled:v9];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v11 = v8;
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
          v18 = v9;
          v19 = [v11 objectForKeyedSubscript:v17];
          v20 = [v19 objectForKeyedSubscript:&unk_287146150];

          v21 = [v11 objectForKeyedSubscript:v17];
          v22 = [v21 objectForKeyedSubscript:&unk_287146168];

          v23 = [v11 objectForKeyedSubscript:v17];
          v24 = [v23 objectForKeyedSubscript:&unk_287146180];

          if (v20)
          {
            v25 = [v20 objectForKeyedSubscript:@"app_multiple_versions"];
            v26 = [v25 BOOLValue];
          }

          else
          {
            v26 = 0;
          }

          v27 = objc_alloc(MEMORY[0x277D28718]);
          v28 = [v35 dateByAddingTimeInterval:86400.0];
          v29 = [v27 initPayloadDataWithMutipleAppVersions:v26 withTimeStampBegin:v35 withTimeStampEnd:v28 withMetrics:MEMORY[0x277CBEC10]];

          if (v22)
          {
            [(PLMetricsFormatterMetricKit *)v37 addPowerMetrics:v22 toAppData:v29];
          }

          v9 = v18;
          v15 = 0x277D28000;
          if (v24)
          {
            [(PLMetricsFormatterMetricKit *)v37 addPerfMetrics:v24 toAppData:v29];
          }

          v11 = v33;
          v10 = v34;
          if (v9)
          {
            [(PLMetricsFormatterMetricKit *)v37 addSignpostData:v9 forApp:v17 toAppData:v29];
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

  [(PLMetricsFormatterMetricKit *)v37 addTelemetryForMetricInconsistencies:v10];
  v30 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)addPowerMetrics:(id)a3 toAppData:(id)a4
{
  v5 = MEMORY[0x277CCAB10];
  v6 = a4;
  v7 = a3;
  v8 = [v5 alloc];
  v9 = [v7 objectForKeyedSubscript:@"fgTime_Total"];
  [v9 doubleValue];
  v11 = v10;
  v12 = [MEMORY[0x277CCADD0] seconds];
  v123 = [v8 initWithDoubleValue:v12 unit:v11];

  v13 = objc_alloc(MEMORY[0x277CCAB10]);
  v14 = [v7 objectForKeyedSubscript:@"bgTime_Total"];
  [v14 doubleValue];
  v16 = v15;
  v17 = [MEMORY[0x277CCADD0] seconds];
  v122 = [v13 initWithDoubleValue:v17 unit:v16];

  v18 = objc_alloc(MEMORY[0x277CCAB10]);
  v19 = [v7 objectForKeyedSubscript:@"bgTime_Audio"];
  [v19 doubleValue];
  v21 = v20;
  v22 = [MEMORY[0x277CCADD0] seconds];
  v120 = [v18 initWithDoubleValue:v22 unit:v21];

  v23 = objc_alloc(MEMORY[0x277CCAB10]);
  v24 = [v7 objectForKeyedSubscript:@"bgTime_Location"];
  [v24 doubleValue];
  v26 = v25;
  v27 = [MEMORY[0x277CCADD0] seconds];
  v119 = [v23 initWithDoubleValue:v27 unit:v26];

  v121 = [objc_alloc(MEMORY[0x277CD78F0]) initWithCumulativeForegroundTimeMeasurement:v123 cumulativeBackgroundTimeMeasurement:v122 cumulativeBackgroundAudioTimeMeasurement:v120 cumulativeBackgroundLocationTimeMeasurement:v119];
  [v6 setApplicationTimeMetrics:v121];
  v28 = objc_alloc(MEMORY[0x277CCAB10]);
  v29 = [v7 objectForKeyedSubscript:@"CPUTime"];
  [v29 doubleValue];
  v31 = v30;
  v32 = [MEMORY[0x277CCADD0] seconds];
  v118 = [v28 initWithDoubleValue:v32 unit:v31];

  v33 = [v7 objectForKeyedSubscript:@"CPUInstructions"];
  v34 = [v33 unsignedIntegerValue] / 0x3E8uLL;

  v35 = objc_alloc(MEMORY[0x277CCAB10]);
  v36 = v34;
  v37 = [objc_alloc(MEMORY[0x277CCAD98]) initWithSymbol:@"kiloinstructions"];
  v116 = [v35 initWithDoubleValue:v37 unit:v36];

  v117 = [objc_alloc(MEMORY[0x277CD7920]) initWithCumulativeCPUTimeMeasurement:v118 withCumulativeCPUInstructions:v116];
  v125 = v6;
  [v6 setCpuMetrics:v117];
  v38 = objc_alloc(MEMORY[0x277CCAB10]);
  v39 = [v7 objectForKeyedSubscript:@"GPUTime"];
  [v39 doubleValue];
  v41 = v40;
  v42 = [MEMORY[0x277CCADD0] seconds];
  v115 = [v38 initWithDoubleValue:v42 unit:v41];

  v114 = [objc_alloc(MEMORY[0x277CD79B8]) initWithCumulativeGPUTimeMeasurement:v115];
  [v6 setGpuMetrics:v114];
  v43 = objc_alloc(MEMORY[0x277CCAB10]);
  v44 = [v7 objectForKeyedSubscript:@"bytesWifiOut"];
  v45 = ([v44 unsignedIntegerValue] >> 10);
  v46 = [MEMORY[0x277CCAE18] kilobytes];
  v113 = [v43 initWithDoubleValue:v46 unit:v45];

  v47 = objc_alloc(MEMORY[0x277CCAB10]);
  v48 = [v7 objectForKeyedSubscript:@"bytesWifiIn"];
  v49 = ([v48 unsignedIntegerValue] >> 10);
  v50 = [MEMORY[0x277CCAE18] kilobytes];
  v112 = [v47 initWithDoubleValue:v50 unit:v49];

  v51 = objc_alloc(MEMORY[0x277CCAB10]);
  v52 = [v7 objectForKeyedSubscript:@"bytesCellularOut"];
  v53 = ([v52 unsignedIntegerValue] >> 10);
  v54 = [MEMORY[0x277CCAE18] kilobytes];
  v110 = [v51 initWithDoubleValue:v54 unit:v53];

  v55 = objc_alloc(MEMORY[0x277CCAB10]);
  v56 = [v7 objectForKeyedSubscript:@"bytesCellularIn"];
  v57 = ([v56 unsignedIntegerValue] >> 10);
  v58 = [MEMORY[0x277CCAE18] kilobytes];
  v109 = [v55 initWithDoubleValue:v58 unit:v57];

  v111 = [objc_alloc(MEMORY[0x277CD7A10]) initWithCumulativeWifiUploadMeasurement:v113 cumulativeWifiDownloadMeasurement:v112 cumulativeCellularUploadMeasurement:v110 cumulativeCellularDownloadMeasurement:v109];
  [v6 setNetworkTransferMetrics:v111];
  v59 = objc_alloc(MEMORY[0x277CCAB10]);
  v60 = [v7 objectForKeyedSubscript:@"BestAccuracy"];
  [v60 doubleValue];
  v62 = v61;
  v63 = [MEMORY[0x277CCADD0] seconds];
  v108 = [v59 initWithDoubleValue:v63 unit:v62];

  v64 = objc_alloc(MEMORY[0x277CCAB10]);
  v65 = [v7 objectForKeyedSubscript:@"BestAccuracyForNavigation"];
  [v65 doubleValue];
  v67 = v66;
  v68 = [MEMORY[0x277CCADD0] seconds];
  v107 = [v64 initWithDoubleValue:v68 unit:v67];

  v69 = objc_alloc(MEMORY[0x277CCAB10]);
  v70 = [v7 objectForKeyedSubscript:@"NearestTenMetersAccuracy"];
  [v70 doubleValue];
  v72 = v71;
  v73 = [MEMORY[0x277CCADD0] seconds];
  v106 = [v69 initWithDoubleValue:v73 unit:v72];

  v74 = objc_alloc(MEMORY[0x277CCAB10]);
  v75 = [v7 objectForKeyedSubscript:@"HundredMetersAccuracy"];
  [v75 doubleValue];
  v77 = v76;
  v78 = [MEMORY[0x277CCADD0] seconds];
  v105 = [v74 initWithDoubleValue:v78 unit:v77];

  v79 = objc_alloc(MEMORY[0x277CCAB10]);
  v80 = [v7 objectForKeyedSubscript:@"KilometerAccuracy"];
  [v80 doubleValue];
  v82 = v81;
  v83 = [MEMORY[0x277CCADD0] seconds];
  v104 = [v79 initWithDoubleValue:v83 unit:v82];

  v84 = objc_alloc(MEMORY[0x277CCAB10]);
  v85 = [v7 objectForKeyedSubscript:@"ThreeKilometersAccuracy"];
  [v85 doubleValue];
  v87 = v86;
  v88 = [MEMORY[0x277CCADD0] seconds];
  v89 = [v84 initWithDoubleValue:v88 unit:v87];

  v90 = [objc_alloc(MEMORY[0x277CD79E0]) initWithCumulativeBestAccuracyTimeMeasurement:v108 cumulativeBestAccuracyForNavigationTimeMeasurement:v107 nearestTenMetersAccuracyTimeMeasurement:v106 hundredMetersAccuracyTimeMeasurement:v105 kilometerAccuracyTimeMeasurement:v104 threeKilometerAccuracyTimeMeasurement:v89];
  [v125 setLocationActivityMetrics:v90];
  v91 = objc_alloc(MEMORY[0x277CCAB10]);
  v92 = [v7 objectForKeyedSubscript:@"AveragePictureLevel"];
  [v92 doubleValue];
  v94 = v93;
  v95 = [MEMORY[0x277CD7A48] apl];
  v96 = [v91 initWithDoubleValue:v95 unit:v94];

  v97 = objc_alloc(MEMORY[0x277CD7900]);
  v98 = [v7 objectForKeyedSubscript:@"TotalFrameCount"];
  v99 = [v97 initWithMeasurement:v96 sampleCount:objc_msgSend(v98 standardDeviation:{"unsignedIntegerValue"), -1.0}];

  v100 = [objc_alloc(MEMORY[0x277CD7990]) initWithAveragePictureLevel:v99];
  [v125 setDisplayMetrics:v100];
  v101 = objc_alloc(MEMORY[0x277CD7950]);
  v102 = [(PLMetricsFormatterMetricKit *)self constructCellularHistogram:v7];

  v103 = [v101 initWithCellularConditionTime:v102];
  [v125 setCellularConditionMetrics:v103];
}

- (void)addPerfMetrics:(id)a3 toAppData:(id)a4
{
  v5 = MEMORY[0x277CCAB10];
  v6 = a4;
  v7 = a3;
  v8 = [v5 alloc];
  v9 = [v7 objectForKeyedSubscript:@"byteswritten"];
  v10 = ([v9 unsignedIntegerValue] >> 10);
  v11 = [MEMORY[0x277CCAE18] kilobytes];
  v12 = [v8 initWithDoubleValue:v11 unit:v10];

  v30 = [objc_alloc(MEMORY[0x277CD7978]) initWithCumulativeLogicalWritesMeasurement:v12];
  [v6 setDiskIOMetrics:v30];
  v13 = objc_alloc(MEMORY[0x277CCAB10]);
  v14 = [v7 objectForKeyedSubscript:@"PeakMemory"];
  v15 = ([v14 unsignedIntegerValue] >> 10);
  v16 = [MEMORY[0x277CCAE18] kilobytes];
  v17 = [v13 initWithDoubleValue:v16 unit:v15];

  v18 = objc_alloc(MEMORY[0x277CCAB10]);
  v19 = [v7 objectForKeyedSubscript:@"AverageMemory"];
  v20 = ([v19 unsignedIntegerValue] >> 10);
  v21 = [MEMORY[0x277CCAE18] kilobytes];
  v22 = [v18 initWithDoubleValue:v21 unit:v20];

  v23 = [v7 objectForKeyedSubscript:@"AverageMemoryVariance"];
  [v23 doubleValue];
  v25 = sqrt(v24) * 0.0009765625;

  v26 = objc_alloc(MEMORY[0x277CD7900]);
  v27 = [v7 objectForKeyedSubscript:@"AverageMemoryCount"];

  v28 = [v26 initWithMeasurement:v22 sampleCount:objc_msgSend(v27 standardDeviation:{"integerValue"), v25}];
  v29 = [objc_alloc(MEMORY[0x277CD79E8]) initWithPeakMemoryUsageMeasurement:v17 averageMemoryUsageMeasurement:v28];
  [v6 setMemoryMetrics:v29];
}

- (void)addSignpostData:(id)a3 forApp:(id)a4 toAppData:(id)a5
{
  v194 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v7 objectForKeyedSubscript:@"resumeDurations"];
  v171 = v7;
  v172 = v9;
  if (v10)
  {
    v11 = v10;
    v12 = [v7 objectForKeyedSubscript:@"activationDurations"];
    if (!v12)
    {
      v23 = 0;
LABEL_24:

      goto LABEL_25;
    }

    v13 = v12;
    v14 = [v7 objectForKeyedSubscript:@"extendedLaunchDurations"];

    if (v14)
    {
      v15 = [v7 objectForKeyedSubscript:@"activationDurations"];
      v16 = [v15 objectForKeyedSubscript:v8];
      v17 = [v16 objectForKeyedSubscript:&unk_287146198];
      v18 = [v17 objectForKeyedSubscript:&unk_2871461B0];
      if (v18)
      {
        v19 = [v7 objectForKeyedSubscript:@"activationDurations"];
        v20 = [v19 objectForKeyedSubscript:v8];
        v21 = [v20 objectForKeyedSubscript:&unk_287146198];
        v11 = [v21 objectForKeyedSubscript:&unk_2871461B0];

        v7 = v171;
        v22 = 0x277CBE000;
      }

      else
      {
        v22 = 0x277CBE000uLL;
        v11 = [MEMORY[0x277CBEA60] array];
      }

      v24 = [v7 objectForKeyedSubscript:@"resumeDurations"];
      v25 = [v24 objectForKeyedSubscript:v8];
      if (v25)
      {
        v26 = [v7 objectForKeyedSubscript:@"resumeDurations"];
        v27 = [v26 objectForKeyedSubscript:v8];
      }

      else
      {
        v27 = [*(v22 + 2656) array];
      }

      v181 = v27;

      v28 = [v7 objectForKeyedSubscript:@"activationDurations"];
      v29 = [v28 objectForKeyedSubscript:v8];
      v30 = [v29 objectForKeyedSubscript:&unk_287146198];
      v31 = [v30 objectForKeyedSubscript:&unk_2871461C8];
      if (v31)
      {
        v32 = [v7 objectForKeyedSubscript:@"activationDurations"];
        v33 = [v32 objectForKeyedSubscript:v8];
        v34 = [v33 objectForKeyedSubscript:&unk_287146198];
        v176 = [v34 objectForKeyedSubscript:&unk_2871461C8];

        v7 = v171;
      }

      else
      {
        v176 = [*(v22 + 2656) array];
      }

      v35 = [v7 objectForKeyedSubscript:@"extendedLaunchDurations"];
      v36 = [v35 objectForKeyedSubscript:v8];
      v37 = [v36 objectForKeyedSubscript:&unk_287146198];
      if (v37)
      {
        v38 = [v7 objectForKeyedSubscript:@"extendedLaunchDurations"];
        v39 = [v38 objectForKeyedSubscript:v8];
        v40 = [v39 objectForKeyedSubscript:&unk_287146198];
      }

      else
      {
        v40 = [*(v22 + 2656) array];
      }

      v41 = v181;
      v42 = v176;

      v23 = 0;
      if (v11)
      {
        v9 = v172;
        if (v181 && v176 && v40)
        {
          v43 = [(PLMetricsFormatterMetricKit *)self constructHistogramBucketsWithDuration:10 andData:v11];
          v44 = [(PLMetricsFormatterMetricKit *)self constructHistogramBucketsWithDuration:10 andData:v181];
          v45 = [(PLMetricsFormatterMetricKit *)self constructHistogramBucketsWithDuration:10 andData:v176];
          v46 = [(PLMetricsFormatterMetricKit *)self constructHistogramBucketsWithDuration:10 andData:v40];
          v23 = [objc_alloc(MEMORY[0x277CD78D0]) initWithLaunchTimeData:v43 withResumeTimeData:v44 withActivationTimeData:v45 withExtendedLaunchTimeData:v46];

          v9 = v172;
          v42 = v176;

          v41 = v181;
        }
      }

      else
      {
        v9 = v172;
      }

      goto LABEL_24;
    }
  }

  v23 = 0;
LABEL_25:
  v170 = v23;
  [v9 setApplicationLaunchMetrics:v23];
  v47 = [v7 objectForKeyedSubscript:@"hangDurations"];
  if (!v47)
  {
    goto LABEL_29;
  }

  v48 = v47;
  v49 = [(PLMetricsFormatterMetricKit *)self processHangs];

  if (!v49)
  {
    goto LABEL_29;
  }

  v50 = [v7 objectForKeyedSubscript:@"hangDurations"];
  v51 = [v50 objectForKeyedSubscript:v8];

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
  [v9 setApplicationResponsivenessMetrics:v53];
  v54 = [v7 objectForKeyedSubscript:@"scrollGlitches"];

  if (v54)
  {
    v55 = [v7 objectForKeyedSubscript:@"scrollGlitches"];
    v56 = [v55 objectForKeyedSubscript:v8];

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
        v9 = v172;
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
  [v9 setAnimationMetrics:v61];
  v76 = [v7 objectForKeyedSubscript:@"processExits"];
  if (!v76)
  {
    goto LABEL_44;
  }

  v77 = v76;
  v78 = [v7 objectForKeyedSubscript:@"processExits"];
  v79 = [v78 objectForKeyedSubscript:v8];

  if (v79)
  {
    v80 = [v7 objectForKeyedSubscript:@"processExits"];
    v81 = [v80 objectForKeyedSubscript:v8];
    v182 = [v81 objectForKeyedSubscript:&unk_287146198];

    v82 = [v7 objectForKeyedSubscript:@"processExits"];
    v83 = [v82 objectForKeyedSubscript:v8];
    v164 = [v83 objectForKeyedSubscript:&unk_2871461E0];

    v84 = [PLMetricsFormatterMetricKit categorizeAppExits:v182];
    v173 = objc_alloc(MEMORY[0x277CD79A0]);
    v161 = [v84 objectForKeyedSubscript:@"cumulativeNormalAppExitCount"];
    v157 = [v161 unsignedIntegerValue];
    v159 = [v84 objectForKeyedSubscript:@"cumulativeMemoryResourceLimitExitCount"];
    v155 = [v159 unsignedIntegerValue];
    v85 = [v84 objectForKeyedSubscript:@"cumulativeCPUResourceLimitExitCount"];
    v153 = [v85 unsignedIntegerValue];
    v86 = [v84 objectForKeyedSubscript:@"cumulativeBadAccessExitCount"];
    v87 = [v86 unsignedIntegerValue];
    v88 = [v84 objectForKeyedSubscript:@"cumulativeAbnormalExitCount"];
    v89 = [v88 unsignedIntegerValue];
    v177 = v84;
    v90 = [v84 objectForKeyedSubscript:@"cumulativeIllegalInstructionExitCount"];
    v91 = [v90 unsignedIntegerValue];
    v92 = [v84 objectForKeyedSubscript:@"cumulativeAppWatchdogExitCount"];
    v174 = [v173 initWithNormalAppExitCount:v157 withMemoryResourceLimitExitCount:v155 withCPUResourceLimitExitCount:v153 withBadAccessExitCount:v87 withAbnormalExitCount:v89 withIllegalInstructionExitCount:v91 withAppWatchDogExitCount:{objc_msgSend(v92, "unsignedIntegerValue")}];

    v93 = [PLMetricsFormatterMetricKit categorizeAppExits:v164];
    v94 = objc_alloc(MEMORY[0x277CD7908]);
    v162 = [v93 objectForKeyedSubscript:@"cumulativeNormalAppExitCount"];
    v154 = [v162 unsignedIntegerValue];
    v160 = [v93 objectForKeyedSubscript:@"cumulativeMemoryResourceLimitExitCount"];
    v151 = [v160 unsignedIntegerValue];
    v158 = [v93 objectForKeyedSubscript:@"cumulativeCPUResourceLimitExitCount"];
    v149 = [v158 unsignedIntegerValue];
    v156 = [v93 objectForKeyedSubscript:@"cumulativeMemoryPressureExitCount"];
    v148 = [v156 unsignedIntegerValue];
    v152 = [v93 objectForKeyedSubscript:@"cumulativeBadAccessExitCount"];
    v146 = [v152 unsignedIntegerValue];
    v150 = [v93 objectForKeyedSubscript:@"cumulativeAbnormalExitCount"];
    v144 = [v150 unsignedIntegerValue];
    v147 = [v93 objectForKeyedSubscript:@"cumulativeIllegalInstructionExitCount"];
    v143 = [v147 unsignedIntegerValue];
    v145 = [v93 objectForKeyedSubscript:@"cumulativeAppWatchdogExitCount"];
    v142 = [v145 unsignedIntegerValue];
    v95 = [v93 objectForKeyedSubscript:@"cumulativeSuspendedWithLockedFileExitCount"];
    v96 = [v95 unsignedIntegerValue];
    v97 = [v93 objectForKeyedSubscript:@"cumulativeBackgroundTaskAssertionTimeoutExitCount"];
    v98 = [v97 unsignedIntegerValue];
    v99 = [v93 objectForKeyedSubscript:@"cumulativeBackgroundURLSessionCompletionTimeoutExitCount"];
    v100 = [v99 unsignedIntegerValue];
    v101 = [v93 objectForKeyedSubscript:@"cumulativeBackgroundFetchCompletionTimeoutExitCount"];
    v102 = [v94 initWithNormalAppExitCount:v154 memoryResourceLimitExitCount:v151 cpuResourceLimitExitCount:v149 memoryPressureExitCount:v148 badAccessExitCount:v146 abnormalExitCount:v144 illegalInstructionExitCount:v143 appWatchDogExitCount:v142 cumulativeSuspendedWithLockedFileExitCount:v96 cumulativeBackgroundTaskAssertionTimeoutExitCount:v98 cumulativeBackgroundURLSessionCompletionTimeoutExitCount:v100 cumulativeBackgroundFetchCompletionTimeoutExitCount:{objc_msgSend(v101, "unsignedIntegerValue")}];

    v9 = v172;
    v103 = [objc_alloc(MEMORY[0x277CD78B0]) initWithForegroundExitData:v174 backgroundExitData:v102];

    v7 = v171;
  }

  else
  {
LABEL_44:
    v103 = 0;
  }

  [v9 setApplicationExitMetrics:v103];
  v183 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v104 = [v7 objectForKeyedSubscript:@"signpostIntervals"];

  if (v104)
  {
    v105 = [v7 objectForKeyedSubscript:@"signpostIntervals"];
    v106 = [v105 objectForKeyedSubscript:v8];

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
              [(PLMetricsFormatterMetricKit *)self analyticsLogSignpostsWithBundleId:v8 withName:v119 withCategory:v118 withMetrics:v121];
              v122 = [(PLMetricsFormatterMetricKit *)self constructSignpostIntervalDataWithDurations:v120 withMetrics:v121];
              v123 = v8;
              v124 = [objc_alloc(MEMORY[0x277CD7A28]) initWithSignpostName:v119 withSignpostCategory:v118 withTotalCount:objc_msgSend(v120 withSignpostIntervalData:{"count"), v122}];
              [v183 addObject:v124];

              v8 = v123;
              v112 = 0x277CBE000;

              v114 = v175;
            }
          }

          v113 = [v110 countByEnumeratingWithState:&v188 objects:v193 count:16];
        }

        while (v113);
      }

      v7 = v171;
      v9 = v172;
      v106 = v163;
      v103 = v165;
    }
  }

  v125 = [v7 objectForKeyedSubscript:@"signpostEvents"];

  if (v125)
  {
    v126 = [v7 objectForKeyedSubscript:@"signpostEvents"];
    v180 = v8;
    v127 = [v126 objectForKeyedSubscript:v8];

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

      v7 = v171;
      v9 = v172;
      v103 = v166;
    }

    v8 = v180;
  }

  v140 = [MEMORY[0x277CBEA60] arrayWithArray:v183];
  [v9 setSignpostMetrics:v140];

  v141 = *MEMORY[0x277D85DE8];
}

- (id)constructSignpostIntervalDataWithDurations:(id)a3 withMetrics:(id)a4
{
  v6 = a4;
  v7 = [(PLMetricsFormatterMetricKit *)self constructHistogramBucketsWithDuration:100 andData:a3];
  if (v6)
  {
    v8 = [v6 objectForKeyedSubscript:@"cpuTime"];
    [v8 doubleValue];
    v10 = v9 * 1000.0;

    v11 = objc_alloc(MEMORY[0x277CCAB10]);
    v12 = [MEMORY[0x277CCADD0] milliseconds];
    v13 = [v11 initWithDoubleValue:v12 unit:v10];

    v14 = objc_alloc(MEMORY[0x277CCAB10]);
    v15 = [v6 objectForKeyedSubscript:@"averageMemory"];
    [v15 doubleValue];
    v17 = v16;
    v18 = [MEMORY[0x277CCAE18] kilobytes];
    v19 = [v14 initWithDoubleValue:v18 unit:v17];

    v20 = objc_alloc(MEMORY[0x277CD7900]);
    v21 = [v6 objectForKeyedSubscript:@"countInstances"];
    v22 = [v20 initWithMeasurement:v19 sampleCount:objc_msgSend(v21 standardDeviation:{"intValue"), -1.0}];

    v23 = objc_alloc(MEMORY[0x277CCAB10]);
    v24 = [v6 objectForKeyedSubscript:@"diskIO"];
    [v24 doubleValue];
    v26 = v25;
    v27 = [MEMORY[0x277CCAE18] kilobytes];
    v28 = [v23 initWithDoubleValue:v27 unit:v26];

    v29 = [v6 objectForKeyedSubscript:@"hitchDuration"];
    [v29 doubleValue];
    v31 = v30;

    v32 = [v6 objectForKeyedSubscript:@"animationDuration"];
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

- (void)analyticsLogSignpostsWithBundleId:(id)a3 withName:(id)a4 withCategory:(id)a5 withMetrics:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = v12;
  if (v9 && v10 && v11 && v12)
  {
    v14 = v9;
    v15 = v10;
    v16 = v11;
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

- (void)addBucketWithDuration:(int)a3 WithEnd:(int)a4 andCount:(unint64_t)a5 toList:(id)a6
{
  v8 = (a4 - a3 + 1);
  v9 = MEMORY[0x277CCAB10];
  v10 = a6;
  v11 = [v9 alloc];
  v12 = [MEMORY[0x277CCADD0] milliseconds];
  v18 = [v11 initWithDoubleValue:v12 unit:v8];

  v13 = objc_alloc(MEMORY[0x277CCAB10]);
  v14 = a4;
  v15 = [MEMORY[0x277CCADD0] milliseconds];
  v16 = [v13 initWithDoubleValue:v15 unit:v14];

  v17 = [objc_alloc(MEMORY[0x277CD79C8]) initWithBucketStart:v18 bucketEnd:v16 bucketCount:a5];
  [v10 addObject:v17];
}

- (id)constructCellularHistogram:(id)a3
{
  v4 = MEMORY[0x277CBEB18];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = [(PLMetricsFormatterMetricKit *)self constructCellularData:v5];

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

- (void)addBucketWithSignalBar:(signed __int16)a3 withTime:(id)a4 toList:(id)a5
{
  v6 = a3;
  v13 = a4;
  v7 = a5;
  if (v13 && [v13 unsignedIntegerValue])
  {
    v8 = objc_alloc(MEMORY[0x277CCAB10]);
    v9 = v6;
    v10 = [MEMORY[0x277CD7A50] bars];
    v11 = [v8 initWithDoubleValue:v10 unit:v9];

    v12 = [objc_alloc(MEMORY[0x277CD79C8]) initWithBucketStart:v11 bucketEnd:v11 bucketCount:{objc_msgSend(v13, "unsignedIntegerValue")}];
    [v7 addObject:v12];
  }
}

- (void)normalizeCellularData:(id)a3
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v37 objects:v43 count:16];
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
          objc_enumerationMutation(v3);
        }

        v9 = [v3 objectForKeyedSubscript:*(*(&v37 + 1) + 8 * i)];
        v6 += [v9 unsignedIntegerValue];
      }

      v5 = [v3 countByEnumeratingWithState:&v37 objects:v43 count:16];
    }

    while (v5);
    if (v6)
    {
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v10 = [v3 copy];
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
            v17 = [v3 objectForKeyedSubscript:v15];
            v18 = [v16 numberWithUnsignedLongLong:{100 * objc_msgSend(v17, "unsignedIntegerValue") / v6}];
            [v3 setObject:v18 forKeyedSubscript:v15];
          }

          v12 = [v10 countByEnumeratingWithState:&v33 objects:v42 count:16];
        }

        while (v12);
      }

      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v19 = v3;
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

- (id)constructCellularData:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v5 = [v3 objectForKeyedSubscript:@"SignalBar0"];

  if (v5)
  {
    v6 = [v3 objectForKeyedSubscript:@"SignalBar0"];
    [v4 setObject:v6 forKeyedSubscript:&unk_287146150];
  }

  v7 = [v3 objectForKeyedSubscript:@"SignalBar1"];

  if (v7)
  {
    v8 = [v3 objectForKeyedSubscript:@"SignalBar1"];
    [v4 setObject:v8 forKeyedSubscript:&unk_287146168];
  }

  v9 = [v3 objectForKeyedSubscript:@"SignalBar2"];

  if (v9)
  {
    v10 = [v3 objectForKeyedSubscript:@"SignalBar2"];
    [v4 setObject:v10 forKeyedSubscript:&unk_287146180];
  }

  v11 = [v3 objectForKeyedSubscript:@"SignalBar3"];

  if (v11)
  {
    v12 = [v3 objectForKeyedSubscript:@"SignalBar3"];
    [v4 setObject:v12 forKeyedSubscript:&unk_2871461F8];
  }

  v13 = [v3 objectForKeyedSubscript:@"SignalBar4"];

  if (v13)
  {
    v14 = [v3 objectForKeyedSubscript:@"SignalBar4"];
    [v4 setObject:v14 forKeyedSubscript:&unk_287146210];
  }

  return v4;
}

- (BOOL)hangtracerEnabled:(id)a3
{
  v3 = a3;
  if ([MEMORY[0x277D3F208] internalBuild])
  {
    v4 = 1;
  }

  else
  {
    if (!v3)
    {
      goto LABEL_7;
    }

    v5 = [v3 objectForKeyedSubscript:@"hangtracer_enabled"];

    if (!v5 || ([v3 objectForKeyedSubscript:@"hangtracer_enabled"], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "longValue"), v6, v4 = 1, (v7 - 100) >= 2) && v7 != 1000)
    {
LABEL_7:
      v4 = 0;
    }
  }

  return v4;
}

+ (id)categorizeAppExits:(id)a3
{
  v3 = MEMORY[0x277CBEB38];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __50__PLMetricsFormatterMetricKit_categorizeAppExits___block_invoke;
  v8[3] = &unk_279A5D688;
  v6 = v5;
  v9 = v6;
  [v4 enumerateKeysAndObjectsUsingBlock:v8];

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

+ (id)decodeExitWithDomain:(unsigned int)a3 withCode:(unint64_t)a4
{
  if (a3 <= 9)
  {
    if (a3 == 1)
    {
      if (a4 <= 0x11)
      {
        if (((1 << a4) & 0x21F78) != 0)
        {
          return @"cumulativeMemoryPressureExitCount";
        }

        if (((1 << a4) & 0x84) != 0)
        {
          return @"cumulativeMemoryResourceLimitExitCount";
        }
      }

      v6 = a4 == 100;
      v5 = @"cumulativeCPUResourceLimitExitCount";
    }

    else
    {
      v4 = @"cumulativeIllegalInstructionExitCount";
      if (a4 != 4)
      {
        v4 = 0;
      }

      if (a4 == 6)
      {
        v4 = @"cumulativeAbnormalExitCount";
      }

      if ((a4 & 0xFFFFFFFFFFFFFFFELL) == 0xA)
      {
        v5 = @"cumulativeBadAccessExitCount";
      }

      else
      {
        v5 = v4;
      }

      v6 = a3 == 2;
    }

    goto LABEL_26;
  }

  if (a3 != 10)
  {
    if (a4 == 3735883980)
    {
      v7 = @"cumulativeSuspendedWithLockedFileExitCount";
    }

    else
    {
      v7 = 0;
    }

    if (a4 == 562215636)
    {
      v8 = @"cumulativeBackgroundFetchCompletionTimeoutExitCount";
    }

    else
    {
      v8 = v7;
    }

    v9 = @"cumulativeBackgroundTaskAssertionTimeoutExitCount";
    v10 = @"cumulativeBackgroundURLSessionCompletionTimeoutExitCount";
    if (a4 != 562215635)
    {
      v10 = 0;
    }

    if (a4 != 562215634)
    {
      v9 = v10;
    }

    if (a4 <= 562215635)
    {
      v5 = v9;
    }

    else
    {
      v5 = v8;
    }

    v6 = a3 == 15;
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

  if (a4 == 2343432205)
  {
    return @"cumulativeAppWatchdogExitCount";
  }

  if (a4 == 4227595259 || a4 == 3735943697)
  {
    return @"cumulativeNormalAppExitCount";
  }

  return 0;
}

@end