@interface PRDataRecorder
+ (id)generateFilename;
+ (id)generateTemporaryDirectoryURL;
- (PRDataRecorder)init;
- (id)stopAndSave;
- (id)writeToURL;
- (void)discardSensorData;
- (void)recordCustomData:(id)a3 forKey:(id)a4;
- (void)recordEstimatorInput:(id)a3;
- (void)recordPoseMeasurement:(id)a3;
- (void)recordProximityMeasurement:(id)a3;
- (void)recordRangeEstimate:(id)a3;
- (void)recordTargetEstimates:(id)a3;
- (void)writeSensorDataToURL:(id)a3;
@end

@implementation PRDataRecorder

+ (id)generateFilename
{
  v2 = [MEMORY[0x277CBEAA8] date];
  v3 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v3 setDateFormat:@"dd-MM-yyyy-HH-mm-ss"];
  v4 = [v3 stringFromDate:v2];

  return v4;
}

+ (id)generateTemporaryDirectoryURL
{
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = 0;
  v3 = [v2 URLForDirectory:9 inDomain:1 appropriateForURL:0 create:1 error:&v5];

  return v3;
}

- (PRDataRecorder)init
{
  v9.receiver = self;
  v9.super_class = PRDataRecorder;
  v2 = [(PRDataRecorder *)&v9 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB18] array];
    [(PRDataRecorder *)v2 setMeasurements:v3];

    v4 = [MEMORY[0x277CBEB18] array];
    [(PRDataRecorder *)v2 setEstimatorInput:v4];

    v5 = [MEMORY[0x277CBEB18] array];
    [(PRDataRecorder *)v2 setEstimatorOutput:v5];

    v6 = [MEMORY[0x277CBEB18] array];
    [(PRDataRecorder *)v2 setRangeEstimatorOutput:v6];

    v7 = [MEMORY[0x277CBEB38] dictionary];
    [(PRDataRecorder *)v2 setCustomData:v7];
  }

  return v2;
}

- (void)discardSensorData
{
  v3 = [(PRDataRecorder *)self measurements];
  [v3 removeAllObjects];

  v4 = [(PRDataRecorder *)self estimatorInput];
  [v4 removeAllObjects];

  v5 = [(PRDataRecorder *)self estimatorOutput];
  [v5 removeAllObjects];

  v6 = [(PRDataRecorder *)self rangeEstimatorOutput];
  [v6 removeAllObjects];

  v7 = [(PRDataRecorder *)self customData];
  [v7 removeAllObjects];
}

- (void)recordProximityMeasurement:(id)a3
{
  v19[4] = *MEMORY[0x277D85DE8];
  v19[0] = @"proximity";
  v18[0] = @"type";
  v18[1] = @"range";
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  [v5 range_m];
  *&v6 = v6;
  v7 = [v4 numberWithFloat:v6];
  v19[1] = v7;
  v18[2] = @"rangeUncertainty";
  v8 = MEMORY[0x277CCABB0];
  [v5 range_unc_m];
  *&v9 = v9;
  v10 = [v8 numberWithFloat:v9];
  v19[2] = v10;
  v18[3] = @"time";
  v11 = MEMORY[0x277CCABB0];
  [v5 mach_absolute_time_sec];
  v13 = v12;

  v14 = [v11 numberWithDouble:v13];
  v19[3] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:4];

  v16 = [(PRDataRecorder *)self measurements];
  [v16 addObject:v15];

  v17 = *MEMORY[0x277D85DE8];
}

- (void)recordPoseMeasurement:(id)a3
{
  v20[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  [v4 pose];
  v18[0] = v5;
  v18[1] = v6;
  v18[2] = v7;
  v18[3] = v8;
  v9 = [MEMORY[0x277CBEA90] dataWithBytes:v18 length:64];
  v20[0] = @"pose";
  v19[0] = @"type";
  v19[1] = @"data";
  v10 = [v9 base64EncodedStringWithOptions:0];
  v20[1] = v10;
  v19[2] = @"time";
  v11 = MEMORY[0x277CCABB0];
  [v4 timestamp];
  v13 = v12;

  v14 = [v11 numberWithDouble:v13];
  v20[2] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:3];

  v16 = [(PRDataRecorder *)self measurements];
  [v16 addObject:v15];

  v17 = *MEMORY[0x277D85DE8];
}

- (void)recordEstimatorInput:(id)a3
{
  v52[8] = *MEMORY[0x277D85DE8];
  v51[0] = @"time";
  v3 = MEMORY[0x277CCABB0];
  v4 = a3;
  [v4 timestamp];
  v47 = [v3 numberWithDouble:?];
  v52[0] = v47;
  v51[1] = @"prior_time";
  v5 = MEMORY[0x277CCABB0];
  [v4 priorTimestamp];
  v46 = [v5 numberWithDouble:?];
  v52[1] = v46;
  v51[2] = @"subsequent_time";
  v6 = MEMORY[0x277CCABB0];
  [v4 subsequentTimestamp];
  v45 = [v6 numberWithDouble:?];
  v52[2] = v45;
  v51[3] = @"quat";
  v7 = MEMORY[0x277CCABB0];
  [v4 rotation];
  v44 = [v7 numberWithFloat:?];
  v50[0] = v44;
  v8 = MEMORY[0x277CCABB0];
  [v4 rotation];
  LODWORD(v9) = HIDWORD(v9);
  v43 = [v8 numberWithFloat:v9];
  v50[1] = v43;
  v10 = MEMORY[0x277CCABB0];
  [v4 rotation];
  LODWORD(v12) = v11;
  v42 = [v10 numberWithFloat:v12];
  v50[2] = v42;
  v13 = MEMORY[0x277CCABB0];
  [v4 rotation];
  LODWORD(v15) = v14;
  v41 = [v13 numberWithFloat:v15];
  v50[3] = v41;
  v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:4];
  v52[3] = v40;
  v51[4] = @"trans";
  v16 = MEMORY[0x277CCABB0];
  [v4 translation];
  v39 = [v16 numberWithFloat:?];
  v49[0] = v39;
  v17 = MEMORY[0x277CCABB0];
  [v4 translation];
  LODWORD(v18) = HIDWORD(v18);
  v19 = [v17 numberWithFloat:v18];
  v49[1] = v19;
  v20 = MEMORY[0x277CCABB0];
  [v4 translation];
  LODWORD(v22) = v21;
  v23 = [v20 numberWithFloat:v22];
  v49[2] = v23;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:3];
  v52[4] = v24;
  v51[5] = @"range";
  v25 = MEMORY[0x277CCABB0];
  v26 = [v4 proximity];
  [v26 range_m];
  *&v27 = v27;
  v28 = [v25 numberWithFloat:v27];
  v52[5] = v28;
  v51[6] = @"rangeUncertainty";
  v29 = MEMORY[0x277CCABB0];
  v30 = [v4 proximity];
  [v30 range_unc_m];
  *&v31 = v31;
  v32 = [v29 numberWithFloat:v31];
  v52[6] = v32;
  v51[7] = @"antenna";
  v33 = MEMORY[0x277CCABB0];
  v34 = [v4 proximity];

  v35 = [v33 numberWithInteger:{objc_msgSend(v34, "antenna_type")}];
  v52[7] = v35;
  v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:v51 count:8];

  v37 = [(PRDataRecorder *)self estimatorInput];
  [v37 addObject:v36];

  v38 = *MEMORY[0x277D85DE8];
}

- (void)recordTargetEstimates:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v31 = [MEMORY[0x277CBEB18] array];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v3;
  v32 = [obj countByEnumeratingWithState:&v33 objects:v40 count:16];
  if (v32)
  {
    v30 = *v34;
    do
    {
      v4 = 0;
      do
      {
        if (*v34 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v33 + 1) + 8 * v4);
        v38[0] = @"target";
        v6 = MEMORY[0x277CCABB0];
        [v5 vector];
        v7 = [v6 numberWithFloat:?];
        v37[0] = v7;
        v8 = MEMORY[0x277CCABB0];
        [v5 vector];
        LODWORD(v9) = HIDWORD(v9);
        v10 = [v8 numberWithFloat:v9];
        v37[1] = v10;
        v11 = MEMORY[0x277CCABB0];
        [v5 vector];
        LODWORD(v13) = v12;
        v14 = [v11 numberWithFloat:v13];
        v37[2] = v14;
        v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:3];
        v39[0] = v15;
        v38[1] = @"uncertainty";
        v16 = MEMORY[0x277CCABB0];
        [v5 uncertainty];
        v18 = [v16 numberWithDouble:v17];
        v39[1] = v18;
        v38[2] = @"weight";
        v19 = MEMORY[0x277CCABB0];
        [v5 weight];
        v21 = [v19 numberWithDouble:v20];
        v39[2] = v21;
        v38[3] = @"time";
        v22 = MEMORY[0x277CCABB0];
        [v5 timestamp];
        v23 = [v22 numberWithDouble:?];
        v39[3] = v23;
        v38[4] = @"verticalState";
        v24 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{objc_msgSend(v5, "verticalState")}];
        v39[4] = v24;
        v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:5];

        [v31 addObject:v25];
        ++v4;
      }

      while (v32 != v4);
      v32 = [obj countByEnumeratingWithState:&v33 objects:v40 count:16];
    }

    while (v32);
  }

  v26 = [(PRDataRecorder *)self estimatorOutput];
  [v26 addObject:v31];

  v27 = *MEMORY[0x277D85DE8];
}

- (void)recordRangeEstimate:(id)a3
{
  v15[3] = *MEMORY[0x277D85DE8];
  v15[0] = @"range";
  v14[0] = @"type";
  v14[1] = @"range";
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  [v5 range];
  v6 = [v4 numberWithFloat:?];
  v15[1] = v6;
  v14[2] = @"time";
  v7 = MEMORY[0x277CCABB0];
  [v5 timestamp];
  v9 = v8;

  v10 = [v7 numberWithDouble:v9];
  v15[2] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];

  v12 = [(PRDataRecorder *)self rangeEstimatorOutput];
  [v12 addObject:v11];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)recordCustomData:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PRDataRecorder *)self customData];
  [v8 setObject:v7 forKey:v6];
}

- (void)writeSensorDataToURL:(id)a3
{
  v4 = MEMORY[0x277CBEB78];
  v5 = a3;
  v12 = [[v4 alloc] initWithURL:v5 append:0];

  [v12 open];
  v6 = [(PRDataRecorder *)self customData];
  v7 = [v6 mutableCopy];

  v8 = [(PRDataRecorder *)self measurements];
  [v7 setObject:v8 forKey:@"measurements"];

  v9 = [(PRDataRecorder *)self estimatorInput];
  [v7 setObject:v9 forKey:@"estimator_input"];

  v10 = [(PRDataRecorder *)self estimatorOutput];
  [v7 setObject:v10 forKey:@"estimator_output"];

  v11 = [(PRDataRecorder *)self rangeEstimatorOutput];
  [v7 setObject:v11 forKey:@"range_estimator_output"];

  [MEMORY[0x277CCAAA0] writeJSONObject:v7 toStream:v12 options:1 error:0];
  [v12 close];
}

- (id)stopAndSave
{
  v3 = [(PRDataRecorder *)self writeToURL];
  [(PRDataRecorder *)self stopAndDiscard];

  return v3;
}

- (id)writeToURL
{
  v3 = +[PRDataRecorder generateFilename];
  v4 = +[PRDataRecorder generateTemporaryDirectoryURL];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.json", v3];
  v6 = [v4 URLByAppendingPathComponent:v5];
  [(PRDataRecorder *)self writeSensorDataToURL:v6];

  v7 = [v4 URLByAppendingPathComponent:v3];

  return v7;
}

@end