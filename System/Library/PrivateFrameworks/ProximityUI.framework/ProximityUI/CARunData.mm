@interface CARunData
- (CARunData)init;
- (void)aoaRevoke:(id)a3;
- (void)error:(id)a3;
- (void)firstPose:(id)a3;
- (void)firstRange:(id)a3;
- (void)highResidualRevoke:(id)a3;
- (void)invalidPose:(id)a3;
- (void)logData;
- (void)motion:(id)a3;
- (void)rangeRevoke:(id)a3;
- (void)straightPathRevoke:(id)a3;
- (void)targetFound:(id)a3;
- (void)targetFoundFromAoA:(id)a3;
- (void)targetFoundFromRange:(id)a3;
- (void)targetMotionRevoke:(id)a3;
- (void)targetRevoked:(id)a3;
- (void)vioRevoke:(id)a3;
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

- (void)motion:(id)a3
{
  v4 = MEMORY[0x277CCABB0];
  v6 = [(CARunData *)self numberOfMotionEvents];
  v5 = [v4 numberWithInt:{objc_msgSend(v6, "intValue") + 1}];
  [(CARunData *)self setNumberOfMotionEvents:v5];
}

- (void)targetFound:(id)a3
{
  v8 = a3;
  v4 = [(CARunData *)self firstTargetFoundEvent];

  if (!v4)
  {
    [(CARunData *)self setFirstTargetFoundEvent:v8];
  }

  v5 = MEMORY[0x277CCABB0];
  v6 = [(CARunData *)self numberOfTargetFoundEvents];
  v7 = [v5 numberWithInt:{objc_msgSend(v6, "intValue") + 1}];
  [(CARunData *)self setNumberOfTargetFoundEvents:v7];
}

- (void)targetFoundFromRange:(id)a3
{
  v5 = a3;
  v4 = [(CARunData *)self firstTargetFoundFromRangeEvent];

  if (!v4)
  {
    [(CARunData *)self setFirstTargetFoundFromRangeEvent:v5];
  }
}

- (void)targetFoundFromAoA:(id)a3
{
  v5 = a3;
  v4 = [(CARunData *)self firstTargetFoundFromAoAEvent];

  if (!v4)
  {
    [(CARunData *)self setFirstTargetFoundFromAoAEvent:v5];
  }
}

- (void)targetRevoked:(id)a3
{
  v4 = MEMORY[0x277CCABB0];
  v6 = [(CARunData *)self numberOfTargetRevokedEvents];
  v5 = [v4 numberWithInt:{objc_msgSend(v6, "intValue") + 1}];
  [(CARunData *)self setNumberOfTargetRevokedEvents:v5];
}

- (void)vioRevoke:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCABB0];
  v5 = [(CARunData *)self numberOfVIORevokes];
  v6 = [v4 numberWithInt:{objc_msgSend(v5, "intValue") + 1}];
  [(CARunData *)self setNumberOfVIORevokes:v6];

  v7 = self->_logger;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(CARunData *)self numberOfVIORevokes];
    v10[0] = 67109120;
    v10[1] = [v8 intValue];
    _os_log_impl(&dword_2613DF000, v7, OS_LOG_TYPE_DEFAULT, "VIO Revoke %d", v10, 8u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)targetMotionRevoke:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCABB0];
  v5 = [(CARunData *)self numberOfTargetMotionRevokes];
  v6 = [v4 numberWithInt:{objc_msgSend(v5, "intValue") + 1}];
  [(CARunData *)self setNumberOfTargetMotionRevokes:v6];

  v7 = self->_logger;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(CARunData *)self numberOfTargetMotionRevokes];
    v10[0] = 67109120;
    v10[1] = [v8 intValue];
    _os_log_impl(&dword_2613DF000, v7, OS_LOG_TYPE_DEFAULT, "Target Motion Revoke %d", v10, 8u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)rangeRevoke:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCABB0];
  v5 = [(CARunData *)self numberOfRangeRevokes];
  v6 = [v4 numberWithInt:{objc_msgSend(v5, "intValue") + 1}];
  [(CARunData *)self setNumberOfRangeRevokes:v6];

  v7 = self->_logger;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(CARunData *)self numberOfRangeRevokes];
    v10[0] = 67109120;
    v10[1] = [v8 intValue];
    _os_log_impl(&dword_2613DF000, v7, OS_LOG_TYPE_DEFAULT, "Range Revoke %d", v10, 8u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)aoaRevoke:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCABB0];
  v5 = [(CARunData *)self numberOfAoARevokes];
  v6 = [v4 numberWithInt:{objc_msgSend(v5, "intValue") + 1}];
  [(CARunData *)self setNumberOfAoARevokes:v6];

  v7 = self->_logger;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(CARunData *)self numberOfAoARevokes];
    v10[0] = 67109120;
    v10[1] = [v8 intValue];
    _os_log_impl(&dword_2613DF000, v7, OS_LOG_TYPE_DEFAULT, "AoA Revoke %d", v10, 8u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)straightPathRevoke:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCABB0];
  v5 = [(CARunData *)self numberOfStraightPathRevokes];
  v6 = [v4 numberWithInt:{objc_msgSend(v5, "intValue") + 1}];
  [(CARunData *)self setNumberOfStraightPathRevokes:v6];

  v7 = self->_logger;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(CARunData *)self numberOfStraightPathRevokes];
    v10[0] = 67109120;
    v10[1] = [v8 intValue];
    _os_log_impl(&dword_2613DF000, v7, OS_LOG_TYPE_DEFAULT, "Straight Path Revoke %d", v10, 8u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)highResidualRevoke:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCABB0];
  v5 = [(CARunData *)self numberOfHighResidualRevokes];
  v6 = [v4 numberWithInt:{objc_msgSend(v5, "intValue") + 1}];
  [(CARunData *)self setNumberOfHighResidualRevokes:v6];

  v7 = self->_logger;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(CARunData *)self numberOfHighResidualRevokes];
    v10[0] = 67109120;
    v10[1] = [v8 intValue];
    _os_log_impl(&dword_2613DF000, v7, OS_LOG_TYPE_DEFAULT, "High Residual Revoke %d", v10, 8u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)firstPose:(id)a3
{
  v5 = a3;
  v4 = [(CARunData *)self firstPoseEvent];

  if (!v4)
  {
    [(CARunData *)self setFirstPoseEvent:v5];
  }
}

- (void)firstRange:(id)a3
{
  v5 = a3;
  v4 = [(CARunData *)self firstRangeEvent];

  if (!v4)
  {
    [(CARunData *)self setFirstRangeEvent:v5];
  }
}

- (void)invalidPose:(id)a3
{
  v4 = MEMORY[0x277CCABB0];
  v6 = [(CARunData *)self numberOfInvalidPoseEvents];
  v5 = [v4 numberWithInt:{objc_msgSend(v6, "intValue") + 1}];
  [(CARunData *)self setNumberOfInvalidPoseEvents:v5];
}

- (void)error:(id)a3
{
  v21[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277CCABB0];
  v6 = [(CARunData *)self numberOfErrorEvents];
  v7 = [v5 numberWithInt:{objc_msgSend(v6, "intValue") + 1}];
  [(CARunData *)self setNumberOfErrorEvents:v7];

  v20[0] = @"status";
  v8 = [v4 objectForKeyedSubscript:?];
  v20[1] = @"errorDescription";
  v21[0] = v8;
  v9 = [v4 objectForKeyedSubscript:?];
  v21[1] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];

  v11 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v10];
  v12 = [(CARunData *)self productUUID];
  LOBYTE(v9) = v12 == 0;

  if ((v9 & 1) == 0)
  {
    v13 = [(CARunData *)self productUUID];
    v14 = [v13 UUIDString];
    [v11 setObject:v14 forKeyedSubscript:@"ProductUUID"];
  }

  v15 = [(CARunData *)self isOwner];
  v16 = v15 == 0;

  if (!v16)
  {
    v17 = [(CARunData *)self isOwner];
    [v11 setObject:v17 forKeyedSubscript:@"IsOwner"];
  }

  v19 = v11;
  AnalyticsSendEventLazy();

  v18 = *MEMORY[0x277D85DE8];
}

- (void)logData
{
  v148 = *MEMORY[0x277D85DE8];
  v3 = [(CARunData *)self startEvent];
  if (!v3)
  {
    goto LABEL_31;
  }

  v4 = [(CARunData *)self stopEvent];

  if (!v4)
  {
    goto LABEL_31;
  }

  v5 = [(CARunData *)self startEvent];
  v6 = [v5 objectForKeyedSubscript:@"timeElapsed"];
  [v6 doubleValue];
  v8 = v7;

  v9 = [(CARunData *)self stopEvent];
  v10 = [v9 objectForKeyedSubscript:@"timeElapsed"];
  [v10 doubleValue];
  v141 = v11;

  v12 = [(CARunData *)self firstRangeEvent];

  if (v12)
  {
    v13 = [(CARunData *)self firstRangeEvent];
    v14 = [v13 objectForKeyedSubscript:@"rangeEstimate"];
    [v14 doubleValue];
    v138 = v15;

    v16 = [(CARunData *)self firstRangeEvent];
    v17 = [v16 objectForKeyedSubscript:@"timeElapsed"];
    [v17 doubleValue];
    v19 = v18;

    v20 = [(CARunData *)self firstRangeEvent];
    v21 = [v20 objectForKeyedSubscript:@"traveledDistanceOfUser"];
    [v21 doubleValue];
    v23 = v22;
    v24 = [(CARunData *)self startEvent];
    v25 = [v24 objectForKeyedSubscript:@"traveledDistanceOfUser"];
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

  v27 = [(CARunData *)self firstPoseEvent];

  if (v27)
  {
    v28 = [(CARunData *)self firstPoseEvent];
    v29 = [v28 objectForKeyedSubscript:@"timeElapsed"];
    [v29 doubleValue];
    v134 = v30 - v8;
  }

  else
  {
    v134 = -1.0;
  }

  v31 = [(CARunData *)self armsReachEvent];

  if (v31)
  {
    v32 = [(CARunData *)self armsReachEvent];
    v33 = [v32 objectForKeyedSubscript:@"timeElapsed"];
    [v33 doubleValue];
    v35 = v34;

    v36 = [(CARunData *)self armsReachEvent];
    v37 = [v36 objectForKeyedSubscript:@"traveledDistance"];
    [v37 doubleValue];
    v39 = v38;
    v40 = [(CARunData *)self startEvent];
    v41 = [v40 objectForKeyedSubscript:@"traveledDistance"];
    [v41 doubleValue];
    v43 = v42;

    v44 = [(CARunData *)self armsReachEvent];
    v45 = [v44 objectForKeyedSubscript:@"straightLineDistance"];
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

  v47 = [(CARunData *)self firstTargetFoundEvent];

  if (v47)
  {
    v48 = [(CARunData *)self firstTargetFoundEvent];
    v49 = [v48 objectForKeyedSubscript:@"timeElapsed"];
    [v49 doubleValue];
    v51 = v50;

    v52 = [(CARunData *)self firstTargetFoundEvent];
    v53 = [v52 objectForKeyedSubscript:@"rangeEstimate"];
    [v53 doubleValue];
    v55 = v54;

    v56 = [(CARunData *)self firstTargetFoundEvent];
    v57 = [v56 objectForKeyedSubscript:@"traveledDistance"];
    [v57 doubleValue];
    v59 = v58;
    v60 = [(CARunData *)self startEvent];
    v61 = [v60 objectForKeyedSubscript:@"traveledDistance"];
    [v61 doubleValue];
    v63 = v62;

    v64 = [(CARunData *)self firstTargetFoundEvent];
    v65 = [v64 objectForKeyedSubscript:@"straightLineDistance"];
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

  v70 = [(CARunData *)self firstTargetFoundFromRangeEvent];
  if (v70)
  {

    goto LABEL_18;
  }

  v71 = [(CARunData *)self firstTargetFoundFromAoAEvent];

  if (v71)
  {
LABEL_18:
    v72 = [(CARunData *)self firstTargetFoundFromRangeEvent];

    if (v72)
    {
      v73 = [(CARunData *)self firstTargetFoundFromAoAEvent];

      if (v73)
      {
        v74 = [(CARunData *)self firstTargetFoundFromRangeEvent];
        v75 = [v74 objectForKeyedSubscript:@"timeElapsed"];
        [v75 doubleValue];
        v77 = v76;
        v78 = [(CARunData *)self firstTargetFoundFromAoAEvent];
        v79 = [v78 objectForKeyedSubscript:@"timeElapsed"];
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

  v83 = [(CARunData *)self stopEvent];
  v84 = [v83 objectForKeyedSubscript:@"traveledDistance"];
  [v84 doubleValue];
  v86 = v85;
  v87 = [(CARunData *)self startEvent];
  v88 = [v87 objectForKeyedSubscript:@"traveledDistance"];
  [v88 doubleValue];
  v90 = v89;

  v91 = MEMORY[0x277CBEB38];
  v144[0] = @"NumberOfMotionEvents";
  v140 = [(CARunData *)self numberOfMotionEvents];
  v145[0] = v140;
  v144[1] = @"NumberOfTargetFoundEvents";
  v123 = [(CARunData *)self numberOfTargetFoundEvents];
  v145[1] = v123;
  v144[2] = @"NumberOfTargetRevokedEvents";
  v122 = [(CARunData *)self numberOfTargetRevokedEvents];
  v145[2] = v122;
  v144[3] = @"NumberOfInvalidPoseEvents";
  v121 = [(CARunData *)self numberOfInvalidPoseEvents];
  v145[3] = v121;
  v144[4] = @"NumberOfErrorEvents";
  v120 = [(CARunData *)self numberOfErrorEvents];
  v145[4] = v120;
  v144[5] = @"NumberOfVIORevokes";
  v119 = [(CARunData *)self numberOfVIORevokes];
  v145[5] = v119;
  v144[6] = @"NumberOfTargetMotionRevokes";
  v118 = [(CARunData *)self numberOfTargetMotionRevokes];
  v145[6] = v118;
  v144[7] = @"NumberOfRangeRevokes";
  v124 = [(CARunData *)self numberOfRangeRevokes];
  v145[7] = v124;
  v144[8] = @"NumberOfAoARevokes";
  v125 = [(CARunData *)self numberOfAoARevokes];
  v145[8] = v125;
  v144[9] = @"NumberOfStraightPathRevokes";
  v127 = [(CARunData *)self numberOfStraightPathRevokes];
  v145[9] = v127;
  v144[10] = @"NumberOfHighResidualRevokes";
  v128 = [(CARunData *)self numberOfHighResidualRevokes];
  v145[10] = v128;
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
  v112 = [(CARunData *)self stopEvent];
  v135 = [v112 objectForKeyedSubscript:@"rangeEstimate"];
  v145[22] = v135;
  v144[23] = @"EnteredArmsReach";
  v111 = [MEMORY[0x277CCABB0] numberWithBool:v31 != 0];
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

  v102 = [(CARunData *)self productUUID];
  LOBYTE(v98) = v102 == 0;

  if ((v98 & 1) == 0)
  {
    v103 = [(CARunData *)self productUUID];
    v104 = [v103 UUIDString];
    [v142 setObject:v104 forKeyedSubscript:@"ProductUUID"];
  }

  v105 = [(CARunData *)self isOwner];
  v106 = v105 == 0;

  if (!v106)
  {
    v107 = [(CARunData *)self isOwner];
    [v142 setObject:v107 forKeyedSubscript:@"IsOwner"];
  }

  v143 = v142;
  AnalyticsSendEventLazy();

LABEL_31:
  v108 = *MEMORY[0x277D85DE8];
}

@end