@interface CABTRunData
- (CABTRunData)init;
- (void)error:(id)a3;
- (void)firstPose:(id)a3;
- (void)firstRssiMeasurement:(id)a3;
- (void)invalidPose:(id)a3;
- (void)logData;
- (void)motion:(id)a3;
- (void)proximityLevelFound:(id)a3;
- (void)proximityLevelRevoked:(id)a3;
@end

@implementation CABTRunData

- (CABTRunData)init
{
  v11.receiver = self;
  v11.super_class = CABTRunData;
  v2 = [(CABTRunData *)&v11 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCABB0] numberWithInt:0];
    [(CABTRunData *)v2 setNumberOfMotionEvents:v3];

    v4 = [MEMORY[0x277CCABB0] numberWithInt:0];
    [(CABTRunData *)v2 setNumberOfProximityLevelFoundEvents:v4];

    v5 = [MEMORY[0x277CCABB0] numberWithInt:0];
    [(CABTRunData *)v2 setNumberOfProximityLevelRevokedEvents:v5];

    v6 = [MEMORY[0x277CCABB0] numberWithInt:0];
    [(CABTRunData *)v2 setNumberOfInvalidPoseEvents:v6];

    v7 = [MEMORY[0x277CCABB0] numberWithInt:0];
    [(CABTRunData *)v2 setNumberOfErrorEvents:v7];

    v8 = os_log_create("com.apple.proximity", "btlocalizer_CABTRunData");
    logger = v2->_logger;
    v2->_logger = v8;
  }

  return v2;
}

- (void)motion:(id)a3
{
  v4 = MEMORY[0x277CCABB0];
  v6 = [(CABTRunData *)self numberOfMotionEvents];
  v5 = [v4 numberWithInt:{objc_msgSend(v6, "intValue") + 1}];
  [(CABTRunData *)self setNumberOfMotionEvents:v5];
}

- (void)proximityLevelFound:(id)a3
{
  v8 = a3;
  v4 = [(CABTRunData *)self firstProximityLevelFoundEvent];

  if (!v4)
  {
    [(CABTRunData *)self setFirstProximityLevelFoundEvent:v8];
  }

  v5 = MEMORY[0x277CCABB0];
  v6 = [(CABTRunData *)self numberOfProximityLevelFoundEvents];
  v7 = [v5 numberWithInt:{objc_msgSend(v6, "intValue") + 1}];
  [(CABTRunData *)self setNumberOfProximityLevelFoundEvents:v7];
}

- (void)proximityLevelRevoked:(id)a3
{
  v4 = MEMORY[0x277CCABB0];
  v6 = [(CABTRunData *)self numberOfProximityLevelRevokedEvents];
  v5 = [v4 numberWithInt:{objc_msgSend(v6, "intValue") + 1}];
  [(CABTRunData *)self setNumberOfProximityLevelRevokedEvents:v5];
}

- (void)firstPose:(id)a3
{
  v5 = a3;
  v4 = [(CABTRunData *)self firstPoseEvent];

  if (!v4)
  {
    [(CABTRunData *)self setFirstPoseEvent:v5];
  }
}

- (void)firstRssiMeasurement:(id)a3
{
  v5 = a3;
  v4 = [(CABTRunData *)self firstRssiEvent];

  if (!v4)
  {
    [(CABTRunData *)self setFirstRssiEvent:v5];
  }
}

- (void)invalidPose:(id)a3
{
  v4 = MEMORY[0x277CCABB0];
  v6 = [(CABTRunData *)self numberOfInvalidPoseEvents];
  v5 = [v4 numberWithInt:{objc_msgSend(v6, "intValue") + 1}];
  [(CABTRunData *)self setNumberOfInvalidPoseEvents:v5];
}

- (void)error:(id)a3
{
  v18[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277CCABB0];
  v6 = [(CABTRunData *)self numberOfErrorEvents];
  v7 = [v5 numberWithInt:{objc_msgSend(v6, "intValue") + 1}];
  [(CABTRunData *)self setNumberOfErrorEvents:v7];

  v17[0] = @"status";
  v8 = [v4 objectForKeyedSubscript:?];
  v17[1] = @"errorDescription";
  v18[0] = v8;
  v9 = [v4 objectForKeyedSubscript:?];
  v18[1] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];

  v11 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v10];
  v12 = [(CABTRunData *)self productUUID];
  LOBYTE(v9) = v12 == 0;

  if ((v9 & 1) == 0)
  {
    v13 = [(CABTRunData *)self productUUID];
    v14 = [v13 UUIDString];
    [v11 setObject:v14 forKeyedSubscript:@"ProductUUID"];
  }

  v16 = v11;
  AnalyticsSendEventLazy();

  v15 = *MEMORY[0x277D85DE8];
}

- (void)logData
{
  v82[15] = *MEMORY[0x277D85DE8];
  v3 = [(CABTRunData *)self startEvent];
  if (v3)
  {
    v4 = [(CABTRunData *)self stopEvent];

    if (v4)
    {
      v5 = [(CABTRunData *)self startEvent];
      v6 = [v5 objectForKeyedSubscript:@"timeElapsed"];
      [v6 doubleValue];
      v8 = v7;

      v9 = [(CABTRunData *)self stopEvent];
      v10 = [v9 objectForKeyedSubscript:@"timeElapsed"];
      [v10 doubleValue];
      v77 = v11;

      v12 = [(CABTRunData *)self firstRssiEvent];

      if (v12)
      {
        v13 = [(CABTRunData *)self firstRssiEvent];
        v14 = [v13 objectForKeyedSubscript:@"btRssiEstimate"];
        [v14 doubleValue];
        v76 = v15;

        v16 = [(CABTRunData *)self firstRssiEvent];
        v17 = [v16 objectForKeyedSubscript:@"timeElapsed"];
        [v17 doubleValue];
        v19 = v18 - v8;
      }

      else
      {
        v19 = -1.0;
        v76 = -200.0;
      }

      v20 = [(CABTRunData *)self firstPoseEvent];

      if (v20)
      {
        v21 = [(CABTRunData *)self firstPoseEvent];
        v22 = [v21 objectForKeyedSubscript:@"timeElapsed"];
        [v22 doubleValue];
        v24 = v23 - v8;
      }

      else
      {
        v24 = -1.0;
      }

      v25 = [(CABTRunData *)self armsReachEvent];

      if (v25)
      {
        v26 = [(CABTRunData *)self armsReachEvent];
        v27 = [v26 objectForKeyedSubscript:@"timeElapsed"];
        [v27 doubleValue];
        v29 = v28;

        v30 = [(CABTRunData *)self armsReachEvent];
        v31 = [v30 objectForKeyedSubscript:@"traveledDistance"];
        [v31 doubleValue];
        v33 = v32;
        v34 = [(CABTRunData *)self startEvent];
        v35 = [v34 objectForKeyedSubscript:@"traveledDistance"];
        [v35 doubleValue];
        v37 = v36;

        v38 = [(CABTRunData *)self armsReachEvent];
        v39 = [v38 objectForKeyedSubscript:@"straightLineDistance"];
        [v39 doubleValue];
        v41 = v40;
        v42 = v29 - v8;
        v43 = v33 - v37;
      }

      else
      {
        v42 = -1.0;
        v43 = -1.0;
        v41 = -1.0;
      }

      v44 = [(CABTRunData *)self stopEvent];
      v45 = [v44 objectForKeyedSubscript:@"traveledDistance"];
      [v45 doubleValue];
      v47 = v46;
      v48 = [(CABTRunData *)self startEvent];
      v49 = [v48 objectForKeyedSubscript:@"traveledDistance"];
      [v49 doubleValue];
      v51 = v50;

      v52 = MEMORY[0x277CBEB38];
      v81[0] = @"NumberOfMotionEvents";
      v79 = [(CABTRunData *)self numberOfMotionEvents];
      v82[0] = v79;
      v81[1] = @"NumberOfLevelFoundEvents";
      v75 = [(CABTRunData *)self numberOfProximityLevelFoundEvents];
      v82[1] = v75;
      v81[2] = @"NumberOfRevokes";
      v74 = [(CABTRunData *)self numberOfProximityLevelRevokedEvents];
      v82[2] = v74;
      v81[3] = @"NumberOfInvalidPoseEvents";
      v73 = [(CABTRunData *)self numberOfInvalidPoseEvents];
      v82[3] = v73;
      v81[4] = @"NumberOfErrorEvents";
      v72 = [(CABTRunData *)self numberOfErrorEvents];
      v82[4] = v72;
      v81[5] = @"TimeToFirstMeasurement";
      v71 = [MEMORY[0x277CCABB0] numberWithDouble:v19];
      v82[5] = v71;
      v81[6] = @"TimeToFirstPose";
      v70 = [MEMORY[0x277CCABB0] numberWithDouble:v24];
      v82[6] = v70;
      v81[7] = @"TimeToArmsReach";
      v53 = [MEMORY[0x277CCABB0] numberWithDouble:v42];
      v54 = v77 - v8;
      v78 = v53;
      v82[7] = v53;
      v81[8] = @"RunDuration";
      v69 = [MEMORY[0x277CCABB0] numberWithDouble:v54];
      v82[8] = v69;
      v81[9] = @"FirstRSSI";
      v55 = [MEMORY[0x277CCABB0] numberWithDouble:v76];
      v82[9] = v55;
      v81[10] = @"FinalRSSI";
      v56 = [(CABTRunData *)self stopEvent];
      v57 = [v56 objectForKeyedSubscript:@"btRssiEstimate"];
      v82[10] = v57;
      v81[11] = @"EnteredArmsReach";
      v58 = [MEMORY[0x277CCABB0] numberWithBool:v25 != 0];
      v82[11] = v58;
      v81[12] = @"TotalDistanceMoved";
      v59 = [MEMORY[0x277CCABB0] numberWithDouble:v47 - v51];
      v60 = v52;
      v82[12] = v59;
      v81[13] = @"DistanceMovedToArmsReach";
      v61 = [MEMORY[0x277CCABB0] numberWithDouble:v43];
      v82[13] = v61;
      v81[14] = @"StraightLineDistanceToArmsReach";
      v62 = [MEMORY[0x277CCABB0] numberWithDouble:v41];
      v82[14] = v62;
      v63 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v82 forKeys:v81 count:15];
      v64 = [v60 dictionaryWithDictionary:v63];

      v65 = [(CABTRunData *)self productUUID];
      LOBYTE(v63) = v65 == 0;

      if ((v63 & 1) == 0)
      {
        v66 = [(CABTRunData *)self productUUID];
        v67 = [v66 UUIDString];
        [v64 setObject:v67 forKeyedSubscript:@"ProductUUID"];
      }

      v80 = v64;
      AnalyticsSendEventLazy();
    }
  }

  v68 = *MEMORY[0x277D85DE8];
}

@end