@interface CARunData
- (CARunData)init;
- (void)aoaRevoke:(id)revoke;
- (void)error:(id)error;
- (void)firstPose:(id)pose;
- (void)firstRange:(id)range;
- (void)highResidualRevoke:(id)revoke;
- (void)invalidPose:(id)pose;
- (void)logData;
- (void)motion:(id)motion;
- (void)rangeRevoke:(id)revoke;
- (void)straightPathRevoke:(id)revoke;
- (void)targetFound:(id)found;
- (void)targetFoundFromAoA:(id)a;
- (void)targetFoundFromRange:(id)range;
- (void)targetMotionRevoke:(id)revoke;
- (void)targetRevoked:(id)revoked;
- (void)vioRevoke:(id)revoke;
@end

@implementation CARunData

- (CARunData)init
{
  v17.receiver = self;
  v17.super_class = CARunData;
  v2 = [(CARunData *)&v17 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCABB0] numberWithInt:0];
    [(CARunData *)v2 setNumberOfMotionEvents:v3];

    v4 = [MEMORY[0x277CCABB0] numberWithInt:0];
    [(CARunData *)v2 setNumberOfTargetFoundEvents:v4];

    v5 = [MEMORY[0x277CCABB0] numberWithInt:0];
    [(CARunData *)v2 setNumberOfTargetRevokedEvents:v5];

    v6 = [MEMORY[0x277CCABB0] numberWithInt:0];
    [(CARunData *)v2 setNumberOfInvalidPoseEvents:v6];

    v7 = [MEMORY[0x277CCABB0] numberWithInt:0];
    [(CARunData *)v2 setNumberOfErrorEvents:v7];

    v8 = [MEMORY[0x277CCABB0] numberWithInt:0];
    [(CARunData *)v2 setNumberOfVIORevokes:v8];

    v9 = [MEMORY[0x277CCABB0] numberWithInt:0];
    [(CARunData *)v2 setNumberOfTargetMotionRevokes:v9];

    v10 = [MEMORY[0x277CCABB0] numberWithInt:0];
    [(CARunData *)v2 setNumberOfRangeRevokes:v10];

    v11 = [MEMORY[0x277CCABB0] numberWithInt:0];
    [(CARunData *)v2 setNumberOfAoARevokes:v11];

    v12 = [MEMORY[0x277CCABB0] numberWithInt:0];
    [(CARunData *)v2 setNumberOfStraightPathRevokes:v12];

    v13 = [MEMORY[0x277CCABB0] numberWithInt:0];
    [(CARunData *)v2 setNumberOfHighResidualRevokes:v13];

    [(CARunData *)v2 setFirstSOIRSSI:100.0];
    [(CARunData *)v2 setTorchButtonPresented:0];
    [(CARunData *)v2 setTorchTurnedOn:0];
    [(CARunData *)v2 setTorchTurnedOff:0];
    v14 = os_log_create("com.apple.proximity", "itemlocalizer_CARunData");
    logger = v2->_logger;
    v2->_logger = v14;
  }

  return v2;
}

- (void)motion:(id)motion
{
  v4 = MEMORY[0x277CCABB0];
  numberOfMotionEvents = [(CARunData *)self numberOfMotionEvents];
  v5 = [v4 numberWithInt:{objc_msgSend(numberOfMotionEvents, "intValue") + 1}];
  [(CARunData *)self setNumberOfMotionEvents:v5];
}

- (void)targetFound:(id)found
{
  foundCopy = found;
  firstTargetFoundEvent = [(CARunData *)self firstTargetFoundEvent];

  if (!firstTargetFoundEvent)
  {
    [(CARunData *)self setFirstTargetFoundEvent:foundCopy];
  }

  v5 = MEMORY[0x277CCABB0];
  numberOfTargetFoundEvents = [(CARunData *)self numberOfTargetFoundEvents];
  v7 = [v5 numberWithInt:{objc_msgSend(numberOfTargetFoundEvents, "intValue") + 1}];
  [(CARunData *)self setNumberOfTargetFoundEvents:v7];
}

- (void)targetFoundFromRange:(id)range
{
  rangeCopy = range;
  firstTargetFoundFromRangeEvent = [(CARunData *)self firstTargetFoundFromRangeEvent];

  if (!firstTargetFoundFromRangeEvent)
  {
    [(CARunData *)self setFirstTargetFoundFromRangeEvent:rangeCopy];
  }
}

- (void)targetFoundFromAoA:(id)a
{
  aCopy = a;
  firstTargetFoundFromAoAEvent = [(CARunData *)self firstTargetFoundFromAoAEvent];

  if (!firstTargetFoundFromAoAEvent)
  {
    [(CARunData *)self setFirstTargetFoundFromAoAEvent:aCopy];
  }
}

- (void)targetRevoked:(id)revoked
{
  v4 = MEMORY[0x277CCABB0];
  numberOfTargetRevokedEvents = [(CARunData *)self numberOfTargetRevokedEvents];
  v5 = [v4 numberWithInt:{objc_msgSend(numberOfTargetRevokedEvents, "intValue") + 1}];
  [(CARunData *)self setNumberOfTargetRevokedEvents:v5];
}

- (void)vioRevoke:(id)revoke
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCABB0];
  numberOfVIORevokes = [(CARunData *)self numberOfVIORevokes];
  v6 = [v4 numberWithInt:{objc_msgSend(numberOfVIORevokes, "intValue") + 1}];
  [(CARunData *)self setNumberOfVIORevokes:v6];

  v7 = self->_logger;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    numberOfVIORevokes2 = [(CARunData *)self numberOfVIORevokes];
    v10[0] = 67109120;
    v10[1] = [numberOfVIORevokes2 intValue];
    _os_log_impl(&dword_2613DF000, v7, OS_LOG_TYPE_DEFAULT, "VIO Revoke %d", v10, 8u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)targetMotionRevoke:(id)revoke
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCABB0];
  numberOfTargetMotionRevokes = [(CARunData *)self numberOfTargetMotionRevokes];
  v6 = [v4 numberWithInt:{objc_msgSend(numberOfTargetMotionRevokes, "intValue") + 1}];
  [(CARunData *)self setNumberOfTargetMotionRevokes:v6];

  v7 = self->_logger;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    numberOfTargetMotionRevokes2 = [(CARunData *)self numberOfTargetMotionRevokes];
    v10[0] = 67109120;
    v10[1] = [numberOfTargetMotionRevokes2 intValue];
    _os_log_impl(&dword_2613DF000, v7, OS_LOG_TYPE_DEFAULT, "Target Motion Revoke %d", v10, 8u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)rangeRevoke:(id)revoke
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCABB0];
  numberOfRangeRevokes = [(CARunData *)self numberOfRangeRevokes];
  v6 = [v4 numberWithInt:{objc_msgSend(numberOfRangeRevokes, "intValue") + 1}];
  [(CARunData *)self setNumberOfRangeRevokes:v6];

  v7 = self->_logger;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    numberOfRangeRevokes2 = [(CARunData *)self numberOfRangeRevokes];
    v10[0] = 67109120;
    v10[1] = [numberOfRangeRevokes2 intValue];
    _os_log_impl(&dword_2613DF000, v7, OS_LOG_TYPE_DEFAULT, "Range Revoke %d", v10, 8u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)aoaRevoke:(id)revoke
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCABB0];
  numberOfAoARevokes = [(CARunData *)self numberOfAoARevokes];
  v6 = [v4 numberWithInt:{objc_msgSend(numberOfAoARevokes, "intValue") + 1}];
  [(CARunData *)self setNumberOfAoARevokes:v6];

  v7 = self->_logger;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    numberOfAoARevokes2 = [(CARunData *)self numberOfAoARevokes];
    v10[0] = 67109120;
    v10[1] = [numberOfAoARevokes2 intValue];
    _os_log_impl(&dword_2613DF000, v7, OS_LOG_TYPE_DEFAULT, "AoA Revoke %d", v10, 8u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)straightPathRevoke:(id)revoke
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCABB0];
  numberOfStraightPathRevokes = [(CARunData *)self numberOfStraightPathRevokes];
  v6 = [v4 numberWithInt:{objc_msgSend(numberOfStraightPathRevokes, "intValue") + 1}];
  [(CARunData *)self setNumberOfStraightPathRevokes:v6];

  v7 = self->_logger;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    numberOfStraightPathRevokes2 = [(CARunData *)self numberOfStraightPathRevokes];
    v10[0] = 67109120;
    v10[1] = [numberOfStraightPathRevokes2 intValue];
    _os_log_impl(&dword_2613DF000, v7, OS_LOG_TYPE_DEFAULT, "Straight Path Revoke %d", v10, 8u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)highResidualRevoke:(id)revoke
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCABB0];
  numberOfHighResidualRevokes = [(CARunData *)self numberOfHighResidualRevokes];
  v6 = [v4 numberWithInt:{objc_msgSend(numberOfHighResidualRevokes, "intValue") + 1}];
  [(CARunData *)self setNumberOfHighResidualRevokes:v6];

  v7 = self->_logger;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    numberOfHighResidualRevokes2 = [(CARunData *)self numberOfHighResidualRevokes];
    v10[0] = 67109120;
    v10[1] = [numberOfHighResidualRevokes2 intValue];
    _os_log_impl(&dword_2613DF000, v7, OS_LOG_TYPE_DEFAULT, "High Residual Revoke %d", v10, 8u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)firstPose:(id)pose
{
  poseCopy = pose;
  firstPoseEvent = [(CARunData *)self firstPoseEvent];

  if (!firstPoseEvent)
  {
    [(CARunData *)self setFirstPoseEvent:poseCopy];
  }
}

- (void)firstRange:(id)range
{
  rangeCopy = range;
  firstRangeEvent = [(CARunData *)self firstRangeEvent];

  if (!firstRangeEvent)
  {
    [(CARunData *)self setFirstRangeEvent:rangeCopy];
  }
}

- (void)invalidPose:(id)pose
{
  v4 = MEMORY[0x277CCABB0];
  numberOfInvalidPoseEvents = [(CARunData *)self numberOfInvalidPoseEvents];
  v5 = [v4 numberWithInt:{objc_msgSend(numberOfInvalidPoseEvents, "intValue") + 1}];
  [(CARunData *)self setNumberOfInvalidPoseEvents:v5];
}

- (void)error:(id)error
{
  v21[2] = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = MEMORY[0x277CCABB0];
  numberOfErrorEvents = [(CARunData *)self numberOfErrorEvents];
  v7 = [v5 numberWithInt:{objc_msgSend(numberOfErrorEvents, "intValue") + 1}];
  [(CARunData *)self setNumberOfErrorEvents:v7];

  v20[0] = @"status";
  v8 = [errorCopy objectForKeyedSubscript:?];
  v20[1] = @"errorDescription";
  v21[0] = v8;
  v9 = [errorCopy objectForKeyedSubscript:?];
  v21[1] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];

  v11 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v10];
  productUUID = [(CARunData *)self productUUID];
  LOBYTE(v9) = productUUID == 0;

  if ((v9 & 1) == 0)
  {
    productUUID2 = [(CARunData *)self productUUID];
    uUIDString = [productUUID2 UUIDString];
    [v11 setObject:uUIDString forKeyedSubscript:@"ProductUUID"];
  }

  isOwner = [(CARunData *)self isOwner];
  v16 = isOwner == 0;

  if (!v16)
  {
    isOwner2 = [(CARunData *)self isOwner];
    [v11 setObject:isOwner2 forKeyedSubscript:@"IsOwner"];
  }

  v19 = v11;
  AnalyticsSendEventLazy();

  v18 = *MEMORY[0x277D85DE8];
}

- (void)logData
{
  v148 = *MEMORY[0x277D85DE8];
  startEvent = [(CARunData *)self startEvent];
  if (!startEvent)
  {
    goto LABEL_31;
  }

  stopEvent = [(CARunData *)self stopEvent];

  if (!stopEvent)
  {
    goto LABEL_31;
  }

  startEvent2 = [(CARunData *)self startEvent];
  v6 = [startEvent2 objectForKeyedSubscript:@"timeElapsed"];
  [v6 doubleValue];
  v8 = v7;

  stopEvent2 = [(CARunData *)self stopEvent];
  v10 = [stopEvent2 objectForKeyedSubscript:@"timeElapsed"];
  [v10 doubleValue];
  v141 = v11;

  firstRangeEvent = [(CARunData *)self firstRangeEvent];

  if (firstRangeEvent)
  {
    firstRangeEvent2 = [(CARunData *)self firstRangeEvent];
    v14 = [firstRangeEvent2 objectForKeyedSubscript:@"rangeEstimate"];
    [v14 doubleValue];
    v138 = v15;

    firstRangeEvent3 = [(CARunData *)self firstRangeEvent];
    v17 = [firstRangeEvent3 objectForKeyedSubscript:@"timeElapsed"];
    [v17 doubleValue];
    v19 = v18;

    firstRangeEvent4 = [(CARunData *)self firstRangeEvent];
    v21 = [firstRangeEvent4 objectForKeyedSubscript:@"traveledDistanceOfUser"];
    [v21 doubleValue];
    v23 = v22;
    startEvent3 = [(CARunData *)self startEvent];
    v25 = [startEvent3 objectForKeyedSubscript:@"traveledDistanceOfUser"];
    [v25 doubleValue];
    v136 = v19 - v8;
    v131 = v23 - v26;
  }

  else
  {
    v131 = -1.0;
    v136 = -1.0;
    v138 = -1.0;
  }

  firstPoseEvent = [(CARunData *)self firstPoseEvent];

  if (firstPoseEvent)
  {
    firstPoseEvent2 = [(CARunData *)self firstPoseEvent];
    v29 = [firstPoseEvent2 objectForKeyedSubscript:@"timeElapsed"];
    [v29 doubleValue];
    v134 = v30 - v8;
  }

  else
  {
    v134 = -1.0;
  }

  armsReachEvent = [(CARunData *)self armsReachEvent];

  if (armsReachEvent)
  {
    armsReachEvent2 = [(CARunData *)self armsReachEvent];
    v33 = [armsReachEvent2 objectForKeyedSubscript:@"timeElapsed"];
    [v33 doubleValue];
    v35 = v34;

    armsReachEvent3 = [(CARunData *)self armsReachEvent];
    v37 = [armsReachEvent3 objectForKeyedSubscript:@"traveledDistance"];
    [v37 doubleValue];
    v39 = v38;
    startEvent4 = [(CARunData *)self startEvent];
    v41 = [startEvent4 objectForKeyedSubscript:@"traveledDistance"];
    [v41 doubleValue];
    v43 = v42;

    armsReachEvent4 = [(CARunData *)self armsReachEvent];
    v45 = [armsReachEvent4 objectForKeyedSubscript:@"straightLineDistance"];
    [v45 doubleValue];
    v129 = v46;
    v132 = v35 - v8;
    v130 = v39 - v43;
  }

  else
  {
    v132 = -1.0;
    v129 = -1.0;
    v130 = -1.0;
  }

  firstTargetFoundEvent = [(CARunData *)self firstTargetFoundEvent];

  if (firstTargetFoundEvent)
  {
    firstTargetFoundEvent2 = [(CARunData *)self firstTargetFoundEvent];
    v49 = [firstTargetFoundEvent2 objectForKeyedSubscript:@"timeElapsed"];
    [v49 doubleValue];
    v51 = v50;

    firstTargetFoundEvent3 = [(CARunData *)self firstTargetFoundEvent];
    v53 = [firstTargetFoundEvent3 objectForKeyedSubscript:@"rangeEstimate"];
    [v53 doubleValue];
    v55 = v54;

    firstTargetFoundEvent4 = [(CARunData *)self firstTargetFoundEvent];
    v57 = [firstTargetFoundEvent4 objectForKeyedSubscript:@"traveledDistance"];
    [v57 doubleValue];
    v59 = v58;
    startEvent5 = [(CARunData *)self startEvent];
    v61 = [startEvent5 objectForKeyedSubscript:@"traveledDistance"];
    [v61 doubleValue];
    v63 = v62;

    firstTargetFoundEvent5 = [(CARunData *)self firstTargetFoundEvent];
    v65 = [firstTargetFoundEvent5 objectForKeyedSubscript:@"straightLineDistance"];
    [v65 doubleValue];
    v67 = v66;
    v68 = v51 - v8;
    v69 = v59 - v63;
  }

  else
  {
    v68 = -1.0;
    v55 = -1.0;
    v69 = -1.0;
    v67 = -1.0;
  }

  firstTargetFoundFromRangeEvent = [(CARunData *)self firstTargetFoundFromRangeEvent];
  if (firstTargetFoundFromRangeEvent)
  {

    goto LABEL_18;
  }

  firstTargetFoundFromAoAEvent = [(CARunData *)self firstTargetFoundFromAoAEvent];

  if (firstTargetFoundFromAoAEvent)
  {
LABEL_18:
    firstTargetFoundFromRangeEvent2 = [(CARunData *)self firstTargetFoundFromRangeEvent];

    if (firstTargetFoundFromRangeEvent2)
    {
      firstTargetFoundFromAoAEvent2 = [(CARunData *)self firstTargetFoundFromAoAEvent];

      if (firstTargetFoundFromAoAEvent2)
      {
        firstTargetFoundFromRangeEvent3 = [(CARunData *)self firstTargetFoundFromRangeEvent];
        v75 = [firstTargetFoundFromRangeEvent3 objectForKeyedSubscript:@"timeElapsed"];
        [v75 doubleValue];
        v77 = v76;
        firstTargetFoundFromAoAEvent3 = [(CARunData *)self firstTargetFoundFromAoAEvent];
        v79 = [firstTargetFoundFromAoAEvent3 objectForKeyedSubscript:@"timeElapsed"];
        [v79 doubleValue];
        v81 = v77 - v80;
      }

      else
      {
        v81 = 1000.0;
      }
    }

    else
    {
      v81 = -1000.0;
    }

    goto LABEL_24;
  }

  v81 = -10000.0;
LABEL_24:
  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v147 = v81;
    _os_log_impl(&dword_2613DF000, logger, OS_LOG_TYPE_DEFAULT, "Time between first range arrow and first aoa arrow (s) = %f", buf, 0xCu);
  }

  stopEvent3 = [(CARunData *)self stopEvent];
  v84 = [stopEvent3 objectForKeyedSubscript:@"traveledDistance"];
  [v84 doubleValue];
  v86 = v85;
  startEvent6 = [(CARunData *)self startEvent];
  v88 = [startEvent6 objectForKeyedSubscript:@"traveledDistance"];
  [v88 doubleValue];
  v90 = v89;

  v91 = MEMORY[0x277CBEB38];
  v144[0] = @"NumberOfMotionEvents";
  numberOfMotionEvents = [(CARunData *)self numberOfMotionEvents];
  v145[0] = numberOfMotionEvents;
  v144[1] = @"NumberOfTargetFoundEvents";
  numberOfTargetFoundEvents = [(CARunData *)self numberOfTargetFoundEvents];
  v145[1] = numberOfTargetFoundEvents;
  v144[2] = @"NumberOfTargetRevokedEvents";
  numberOfTargetRevokedEvents = [(CARunData *)self numberOfTargetRevokedEvents];
  v145[2] = numberOfTargetRevokedEvents;
  v144[3] = @"NumberOfInvalidPoseEvents";
  numberOfInvalidPoseEvents = [(CARunData *)self numberOfInvalidPoseEvents];
  v145[3] = numberOfInvalidPoseEvents;
  v144[4] = @"NumberOfErrorEvents";
  numberOfErrorEvents = [(CARunData *)self numberOfErrorEvents];
  v145[4] = numberOfErrorEvents;
  v144[5] = @"NumberOfVIORevokes";
  numberOfVIORevokes = [(CARunData *)self numberOfVIORevokes];
  v145[5] = numberOfVIORevokes;
  v144[6] = @"NumberOfTargetMotionRevokes";
  numberOfTargetMotionRevokes = [(CARunData *)self numberOfTargetMotionRevokes];
  v145[6] = numberOfTargetMotionRevokes;
  v144[7] = @"NumberOfRangeRevokes";
  numberOfRangeRevokes = [(CARunData *)self numberOfRangeRevokes];
  v145[7] = numberOfRangeRevokes;
  v144[8] = @"NumberOfAoARevokes";
  numberOfAoARevokes = [(CARunData *)self numberOfAoARevokes];
  v145[8] = numberOfAoARevokes;
  v144[9] = @"NumberOfStraightPathRevokes";
  numberOfStraightPathRevokes = [(CARunData *)self numberOfStraightPathRevokes];
  v145[9] = numberOfStraightPathRevokes;
  v144[10] = @"NumberOfHighResidualRevokes";
  numberOfHighResidualRevokes = [(CARunData *)self numberOfHighResidualRevokes];
  v145[10] = numberOfHighResidualRevokes;
  v144[11] = @"TorchButtonPresented";
  v126 = [MEMORY[0x277CCABB0] numberWithBool:{-[CARunData torchButtonPresented](self, "torchButtonPresented")}];
  v145[11] = v126;
  v144[12] = @"TorchTurnedOn";
  v117 = [MEMORY[0x277CCABB0] numberWithBool:{-[CARunData torchTurnedOn](self, "torchTurnedOn")}];
  v145[12] = v117;
  v144[13] = @"TorchTurnedOff";
  v116 = [MEMORY[0x277CCABB0] numberWithBool:{-[CARunData torchTurnedOff](self, "torchTurnedOff")}];
  v145[13] = v116;
  v144[14] = @"TimeToFirstRange";
  v110 = [MEMORY[0x277CCABB0] numberWithDouble:v136];
  v145[14] = v110;
  v144[15] = @"TimeToFirstPose";
  v115 = [MEMORY[0x277CCABB0] numberWithDouble:v134];
  v145[15] = v115;
  v144[16] = @"TimeToFirstArrow";
  v109 = [MEMORY[0x277CCABB0] numberWithDouble:v68];
  v145[16] = v109;
  v144[17] = @"TimeToArmsReach";
  v133 = [MEMORY[0x277CCABB0] numberWithDouble:v132];
  v145[17] = v133;
  v144[18] = @"RunDuration";
  v114 = [MEMORY[0x277CCABB0] numberWithDouble:v141 - v8];
  v145[18] = v114;
  v144[19] = @"TimeBetweenRangeAndAoAArrows";
  v137 = [MEMORY[0x277CCABB0] numberWithDouble:v81];
  v145[19] = v137;
  v144[20] = @"FirstRange";
  v113 = [MEMORY[0x277CCABB0] numberWithDouble:v138];
  v145[20] = v113;
  v144[21] = @"RangeAtFirstArrow";
  v139 = [MEMORY[0x277CCABB0] numberWithDouble:v55];
  v145[21] = v139;
  v144[22] = @"FinalRange";
  stopEvent4 = [(CARunData *)self stopEvent];
  v135 = [stopEvent4 objectForKeyedSubscript:@"rangeEstimate"];
  v145[22] = v135;
  v144[23] = @"EnteredArmsReach";
  v111 = [MEMORY[0x277CCABB0] numberWithBool:armsReachEvent != 0];
  v145[23] = v111;
  v144[24] = @"TotalDistanceMoved";
  v92 = [MEMORY[0x277CCABB0] numberWithDouble:v86 - v90];
  v145[24] = v92;
  v144[25] = @"DistanceMovedToFirstArrow";
  v93 = [MEMORY[0x277CCABB0] numberWithDouble:v69];
  v145[25] = v93;
  v144[26] = @"StraightLineDistanceToFirstArrow";
  v94 = [MEMORY[0x277CCABB0] numberWithDouble:v67];
  v145[26] = v94;
  v144[27] = @"DistanceMovedToArmsReach";
  v95 = [MEMORY[0x277CCABB0] numberWithDouble:v130];
  v145[27] = v95;
  v144[28] = @"DistanceMovedByUserToFirstRange";
  v96 = [MEMORY[0x277CCABB0] numberWithDouble:v131];
  v145[28] = v96;
  v144[29] = @"StraightLineDistanceToArmsReach";
  v97 = [MEMORY[0x277CCABB0] numberWithDouble:v129];
  v98 = v91;
  v145[29] = v97;
  v144[30] = @"FirstSOIRSSI";
  v99 = MEMORY[0x277CCABB0];
  [(CARunData *)self firstSOIRSSI];
  v100 = [v99 numberWithDouble:?];
  v145[30] = v100;
  v101 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v145 forKeys:v144 count:31];
  v142 = [v98 dictionaryWithDictionary:v101];

  productUUID = [(CARunData *)self productUUID];
  LOBYTE(v98) = productUUID == 0;

  if ((v98 & 1) == 0)
  {
    productUUID2 = [(CARunData *)self productUUID];
    uUIDString = [productUUID2 UUIDString];
    [v142 setObject:uUIDString forKeyedSubscript:@"ProductUUID"];
  }

  isOwner = [(CARunData *)self isOwner];
  v106 = isOwner == 0;

  if (!v106)
  {
    isOwner2 = [(CARunData *)self isOwner];
    [v142 setObject:isOwner2 forKeyedSubscript:@"IsOwner"];
  }

  v143 = v142;
  AnalyticsSendEventLazy();

LABEL_31:
  v108 = *MEMORY[0x277D85DE8];
}

@end