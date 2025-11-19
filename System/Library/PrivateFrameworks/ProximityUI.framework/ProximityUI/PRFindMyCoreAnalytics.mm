@interface PRFindMyCoreAnalytics
+ (BOOL)isInternalBuild;
- (BOOL)isRunning;
- (PRFindMyCoreAnalytics)init;
- (id)eventDictionaryWithEvent:(id)a3;
- (void)addLatestTarget:(id)a3;
- (void)configureComplete;
- (void)configureSessionWithProductUUID:(id)a3 withOwner:(id)a4;
- (void)deinit;
- (void)firstArrowFromAoA;
- (void)firstArrowFromRange;
- (void)invalidPoseDetected;
- (void)rangingFailedWithError:(id)a3;
- (void)resetState;
- (void)revokeRangeEstimate;
- (void)sendAnalyticsEvent:(id)a3;
- (void)sendLiveOnAnalytics:(id)a3;
- (void)start;
- (void)stop;
- (void)targetComputed:(id)a3;
- (void)targetMovingStateChanged:(BOOL)a3;
- (void)targetRevokedWithReason:(unint64_t)a3;
- (void)torchButtonPresented;
- (void)torchChangedState:(BOOL)a3;
- (void)updateSOIRSSI:(double)a3;
- (void)updateTravelDistanceWithPose:(id)a3;
- (void)updateWithRangeEstimate:(id)a3;
@end

@implementation PRFindMyCoreAnalytics

- (PRFindMyCoreAnalytics)init
{
  v23.receiver = self;
  v23.super_class = PRFindMyCoreAnalytics;
  v2 = [(PRFindMyCoreAnalytics *)&v23 init];
  v3 = v2;
  if (v2)
  {
    [(PRFindMyCoreAnalytics *)v2 resetState];
    v22 = [MEMORY[0x277CCAD38] defaultSessionConfiguration];
    v4 = [MEMORY[0x277CCA8D8] mainBundle];
    v5 = [v4 bundleIdentifier];

    v21 = v5;
    v6 = [objc_alloc(MEMORY[0x277CF0188]) initWithIdentifier:v5];
    [(PRFindMyCoreAnalytics *)v3 setAuthSession:v6];

    v7 = [(PRFindMyCoreAnalytics *)v3 authSession];
    [v22 set_appleIDContext:v7];

    v8 = [MEMORY[0x277CCAD30] sessionWithConfiguration:v22];
    [(PRFindMyCoreAnalytics *)v3 setUrlSession:v8];

    v9 = objc_alloc_init(MEMORY[0x277CB8F48]);
    v10 = [v9 aa_primaryAppleAccount];
    v11 = [v10 aa_personID];
    v12 = [v10 credential];
    v13 = [v12 credentialItemForKey:*MEMORY[0x277CB8F00]];
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v11, v13];
    v15 = [v14 dataUsingEncoding:4];
    v16 = [v15 base64EncodedStringWithOptions:0];

    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"Basic %@", v16];
    [(PRFindMyCoreAnalytics *)v3 setAuthHeaderValue:v17];

    v18 = os_log_create("com.apple.proximity", "itemlocalizer_analytics");
    logger = v3->_logger;
    v3->_logger = v18;
  }

  return v3;
}

- (void)resetState
{
  v3 = MEMORY[0x277D860B8];
  v4 = [PRPose poseWithTime:0.0 pose:*MEMORY[0x277D860B8], *(MEMORY[0x277D860B8] + 16), *(MEMORY[0x277D860B8] + 32), *(MEMORY[0x277D860B8] + 48)];
  [(PRFindMyCoreAnalytics *)self setPreviousPose:v4];

  v5 = [PRPose poseWithTime:0.0 pose:*v3, v3[2], v3[4], v3[6]];
  [(PRFindMyCoreAnalytics *)self setPreviousPoseOfUser:v5];

  v6 = [PRPose poseWithTime:0.0 pose:*v3, v3[2], v3[4], v3[6]];
  [(PRFindMyCoreAnalytics *)self setOldPreviousPoseOfUser:v6];

  [(PRFindMyCoreAnalytics *)self setShouldLogTargetFoundEvent:1];
  [(PRFindMyCoreAnalytics *)self setShouldLogMotionEvent:1];
  [(PRFindMyCoreAnalytics *)self setShouldLogEnteredArmsReachEvent:1];
  [(PRFindMyCoreAnalytics *)self setReceivedfirstSOIRSSI:0];
  v7 = [MEMORY[0x277CCABB0] numberWithInt:0xFFFFFFFFLL];
  [(PRFindMyCoreAnalytics *)self setRangeEstimate:v7];

  v8 = [MEMORY[0x277CCABB0] numberWithInt:0];
  [(PRFindMyCoreAnalytics *)self setTraveledDistance:v8];

  v9 = [MEMORY[0x277CCABB0] numberWithInt:0];
  [(PRFindMyCoreAnalytics *)self setTraveledDistanceOfUser:v9];

  v10 = [MEMORY[0x277CCABB0] numberWithInt:0];
  [(PRFindMyCoreAnalytics *)self setNumberOfPoses:v10];

  v11 = [MEMORY[0x277CCABB0] numberWithInt:0];
  [(PRFindMyCoreAnalytics *)self setNumberOfRanges:v11];

  [(PRFindMyCoreAnalytics *)self setLatestTarget:0];
}

- (id)eventDictionaryWithEvent:(id)a3
{
  v43[10] = *MEMORY[0x277D85DE8];
  v41 = a3;
  v4 = [(PRFindMyCoreAnalytics *)self sessionId];

  if (v4)
  {
    v5 = MEMORY[0x277CCABB0];
    MachTimeSeconds = PRCommonGetMachTimeSeconds();
    [(PRFindMyCoreAnalytics *)self startTime];
    v39 = [v5 numberWithDouble:MachTimeSeconds - v7];
    v40 = [MEMORY[0x277CCABB0] numberWithInteger:{-[PRFindMyCoreAnalytics eventNumber](self, "eventNumber")}];
    v8 = MEMORY[0x277CCABB0];
    v9 = [(PRFindMyCoreAnalytics *)self previousPose];
    [v9 pose];
    v11 = vmulq_f32(v10, v10);
    v11.f32[0] = sqrtf(v11.f32[2] + vaddv_f32(*v11.f32));
    v37 = [v8 numberWithFloat:*v11.i64];

    [(PRFindMyCoreAnalytics *)self setEventNumber:[(PRFindMyCoreAnalytics *)self eventNumber]+ 1];
    v42[0] = @"sessionId";
    v12 = [(PRFindMyCoreAnalytics *)self sessionId];
    v13 = [v12 UUIDString];
    v43[0] = v13;
    v42[1] = @"eventNumber";
    v14 = [v40 stringValue];
    v43[1] = v14;
    v43[2] = v39;
    v42[2] = @"timeElapsed";
    v42[3] = @"traveledDistance";
    v15 = [(PRFindMyCoreAnalytics *)self traveledDistance];
    v43[3] = v15;
    v42[4] = @"traveledDistanceOfUser";
    v16 = [(PRFindMyCoreAnalytics *)self traveledDistanceOfUser];
    v43[4] = v16;
    v43[5] = v37;
    v42[5] = @"straightLineDistance";
    v42[6] = @"rangeEstimate";
    v17 = [(PRFindMyCoreAnalytics *)self rangeEstimate];
    v43[6] = v17;
    v42[7] = @"numberOfRanges";
    v18 = [(PRFindMyCoreAnalytics *)self numberOfRanges];
    v43[7] = v18;
    v42[8] = @"numberOfPoses";
    v19 = [(PRFindMyCoreAnalytics *)self numberOfPoses];
    v42[9] = @"eventType";
    v43[8] = v19;
    v43[9] = v41;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:10];

    v21 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v20];
    v22 = [(PRFindMyCoreAnalytics *)self runId];
    LOBYTE(v19) = v22 == 0;

    if ((v19 & 1) == 0)
    {
      v23 = [(PRFindMyCoreAnalytics *)self runId];
      v24 = [v23 UUIDString];
      [v21 setObject:v24 forKeyedSubscript:@"runId"];
    }

    v25 = [(PRFindMyCoreAnalytics *)self customData];
    v26 = v25 == 0;

    if (!v26)
    {
      v27 = [(PRFindMyCoreAnalytics *)self customData];
      [v21 addEntriesFromDictionary:v27];
    }

    v28 = [(PRFindMyCoreAnalytics *)self productUUID];
    v29 = v28 == 0;

    if (!v29)
    {
      v30 = [(PRFindMyCoreAnalytics *)self productUUID];
      v31 = [v30 UUIDString];
      [v21 setObject:v31 forKeyedSubscript:@"ProductUUID"];
    }

    v32 = [(PRFindMyCoreAnalytics *)self isOwner];
    v33 = v32 == 0;

    if (!v33)
    {
      v34 = [(PRFindMyCoreAnalytics *)self isOwner];
      [v21 setObject:v34 forKeyedSubscript:@"IsOwner"];
    }
  }

  else
  {
    v21 = 0;
  }

  v35 = *MEMORY[0x277D85DE8];

  return v21;
}

- (void)sendAnalyticsEvent:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    logger = self->_logger;
    if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v4;
      _os_log_impl(&dword_2613DF000, logger, OS_LOG_TYPE_DEFAULT, "Logging event %@", &v7, 0xCu);
    }

    [(PRFindMyCoreAnalytics *)self sendLiveOnAnalytics:v4];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)configureSessionWithProductUUID:(id)a3 withOwner:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CCAD78] UUID];
  [(PRFindMyCoreAnalytics *)self setSessionId:v7];

  [(PRFindMyCoreAnalytics *)self setEventNumber:0];
  [(PRFindMyCoreAnalytics *)self setStartTime:PRCommonGetMachTimeSeconds()];
  [(PRFindMyCoreAnalytics *)self setProductUUID:v13];
  [(PRFindMyCoreAnalytics *)self setIsOwner:v6];
  v8 = objc_alloc_init(CASessionData);
  [(PRFindMyCoreAnalytics *)self setSessionData:v8];

  v9 = [(PRFindMyCoreAnalytics *)self sessionData];
  [v9 setProductUUID:v13];

  v10 = [(PRFindMyCoreAnalytics *)self sessionData];
  [v10 setIsOwner:v6];

  v11 = [(PRFindMyCoreAnalytics *)self eventDictionaryWithEvent:@"Configure"];
  v12 = [(PRFindMyCoreAnalytics *)self sessionData];
  [v12 configure:v11];

  [(PRFindMyCoreAnalytics *)self sendAnalyticsEvent:v11];
}

- (void)configureComplete
{
  v4 = [(PRFindMyCoreAnalytics *)self eventDictionaryWithEvent:@"ConfigureComplete"];
  v3 = [(PRFindMyCoreAnalytics *)self sessionData];
  [v3 configureComplete:v4];

  [(PRFindMyCoreAnalytics *)self sendAnalyticsEvent:v4];
}

- (BOOL)isRunning
{
  v2 = [(PRFindMyCoreAnalytics *)self runId];
  v3 = v2 != 0;

  return v3;
}

- (void)start
{
  [(PRFindMyCoreAnalytics *)self resetState];
  v6 = [MEMORY[0x277CCAD78] UUID];
  [(PRFindMyCoreAnalytics *)self setRunId:?];

  v7 = objc_alloc_init(CARunData);
  [(PRFindMyCoreAnalytics *)self setRunData:?];

  v8 = [(PRFindMyCoreAnalytics *)self productUUID];
  v3 = [(PRFindMyCoreAnalytics *)self runData];
  [v3 setProductUUID:v8];

  v9 = [(PRFindMyCoreAnalytics *)self isOwner];
  v4 = [(PRFindMyCoreAnalytics *)self runData];
  [v4 setIsOwner:v9];

  v10 = [(PRFindMyCoreAnalytics *)self eventDictionaryWithEvent:@"Start"];
  v5 = [(PRFindMyCoreAnalytics *)self runData];
  [v5 start:v10];

  [(PRFindMyCoreAnalytics *)self sendAnalyticsEvent:v10];
}

- (void)addLatestTarget:(id)a3
{
  v22[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PRFindMyCoreAnalytics *)self latestTarget];

  if (v5)
  {
    v6 = MEMORY[0x277CBEB38];
    v7 = MEMORY[0x277CCABB0];
    v8 = [(PRFindMyCoreAnalytics *)self latestTarget];
    [v8 vector];
    v9 = [v7 numberWithFloat:?];
    v22[0] = v9;
    v10 = MEMORY[0x277CCABB0];
    v11 = [(PRFindMyCoreAnalytics *)self latestTarget];
    [v11 vector];
    LODWORD(v12) = HIDWORD(v12);
    v13 = [v10 numberWithFloat:v12];
    v22[1] = v13;
    v14 = MEMORY[0x277CCABB0];
    v15 = [(PRFindMyCoreAnalytics *)self latestTarget];
    [v15 vector];
    LODWORD(v17) = v16;
    v18 = [v14 numberWithFloat:v17];
    v22[2] = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:3];
    v20 = [v6 dictionaryWithObjectsAndKeys:{v19, @"target", 0}];

    [v4 addEntriesFromDictionary:v20];
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)stop
{
  if ([(PRFindMyCoreAnalytics *)self isRunning])
  {
    v5 = [(PRFindMyCoreAnalytics *)self eventDictionaryWithEvent:@"Stop"];
    [(PRFindMyCoreAnalytics *)self addLatestTarget:?];
    v3 = [(PRFindMyCoreAnalytics *)self runData];
    [v3 stop:v5];

    v4 = [(PRFindMyCoreAnalytics *)self runData];
    [v4 logData];

    [(PRFindMyCoreAnalytics *)self setRunData:0];
    [(PRFindMyCoreAnalytics *)self sendAnalyticsEvent:v5];
    [(PRFindMyCoreAnalytics *)self setRunId:0];
    [(PRFindMyCoreAnalytics *)self setRunData:0];
  }
}

- (void)deinit
{
  [(PRFindMyCoreAnalytics *)self stop];
  v5 = [(PRFindMyCoreAnalytics *)self eventDictionaryWithEvent:@"Deinit"];
  v3 = [(PRFindMyCoreAnalytics *)self sessionData];
  [v3 deinit:v5];

  v4 = [(PRFindMyCoreAnalytics *)self sessionData];
  [v4 logData];

  [(PRFindMyCoreAnalytics *)self sendAnalyticsEvent:v5];
}

- (void)invalidPoseDetected
{
  v3 = MEMORY[0x277D860B8];
  v5 = [PRPose poseWithTime:0.0 pose:*MEMORY[0x277D860B8], *(MEMORY[0x277D860B8] + 16), *(MEMORY[0x277D860B8] + 32), *(MEMORY[0x277D860B8] + 48)];
  [(PRFindMyCoreAnalytics *)self setPreviousPose:?];

  v6 = [PRPose poseWithTime:0.0 pose:*v3, v3[2], v3[4], v3[6]];
  [(PRFindMyCoreAnalytics *)self setPreviousPoseOfUser:?];

  v7 = [PRPose poseWithTime:0.0 pose:*v3, v3[2], v3[4], v3[6]];
  [(PRFindMyCoreAnalytics *)self setOldPreviousPoseOfUser:?];

  v8 = [(PRFindMyCoreAnalytics *)self eventDictionaryWithEvent:@"InvalidPose"];
  v4 = [(PRFindMyCoreAnalytics *)self runData];
  [v4 invalidPose:v8];

  [(PRFindMyCoreAnalytics *)self sendAnalyticsEvent:v8];
}

- (void)targetComputed:(id)a3
{
  v6 = a3;
  [(PRFindMyCoreAnalytics *)self setLatestTarget:?];
  if ([(PRFindMyCoreAnalytics *)self shouldLogTargetFoundEvent])
  {
    v4 = [(PRFindMyCoreAnalytics *)self eventDictionaryWithEvent:@"TargetFound"];
    [(PRFindMyCoreAnalytics *)self addLatestTarget:v4];
    v5 = [(PRFindMyCoreAnalytics *)self runData];
    [v5 targetFound:v4];

    [(PRFindMyCoreAnalytics *)self sendAnalyticsEvent:v4];
    [(PRFindMyCoreAnalytics *)self setShouldLogTargetFoundEvent:0];
  }
}

- (void)targetRevokedWithReason:(unint64_t)a3
{
  if ([(PRFindMyCoreAnalytics *)self shouldLogTargetFoundEvent])
  {
    return;
  }

  v7 = [(PRFindMyCoreAnalytics *)self eventDictionaryWithEvent:@"TargetRevoked"];
  v5 = [(PRFindMyCoreAnalytics *)self runData];
  [v5 targetRevoked:v7];

  if (a3 > 2)
  {
    switch(a3)
    {
      case 3uLL:
        v6 = [(PRFindMyCoreAnalytics *)self runData];
        [v6 aoaRevoke:v7];
        goto LABEL_15;
      case 4uLL:
        v6 = [(PRFindMyCoreAnalytics *)self runData];
        [v6 straightPathRevoke:v7];
        goto LABEL_15;
      case 5uLL:
        v6 = [(PRFindMyCoreAnalytics *)self runData];
        [v6 highResidualRevoke:v7];
        goto LABEL_15;
    }
  }

  else
  {
    switch(a3)
    {
      case 0uLL:
        v6 = [(PRFindMyCoreAnalytics *)self runData];
        [v6 vioRevoke:v7];
        goto LABEL_15;
      case 1uLL:
        v6 = [(PRFindMyCoreAnalytics *)self runData];
        [v6 targetMotionRevoke:v7];
        goto LABEL_15;
      case 2uLL:
        v6 = [(PRFindMyCoreAnalytics *)self runData];
        [v6 rangeRevoke:v7];
LABEL_15:

        break;
    }
  }

  [(PRFindMyCoreAnalytics *)self sendAnalyticsEvent:v7];
  [(PRFindMyCoreAnalytics *)self setShouldLogTargetFoundEvent:1];
}

- (void)firstArrowFromRange
{
  v4 = [(PRFindMyCoreAnalytics *)self eventDictionaryWithEvent:@"TargetFoundFromRange"];
  v3 = [(PRFindMyCoreAnalytics *)self runData];
  [v3 targetFoundFromRange:v4];
}

- (void)firstArrowFromAoA
{
  v4 = [(PRFindMyCoreAnalytics *)self eventDictionaryWithEvent:@"TargetFoundFromAoA"];
  v3 = [(PRFindMyCoreAnalytics *)self runData];
  [v3 targetFoundFromAoA:v4];
}

- (void)torchButtonPresented
{
  v2 = [(PRFindMyCoreAnalytics *)self runData];
  [v2 setTorchButtonPresented:1];
}

- (void)torchChangedState:(BOOL)a3
{
  v3 = a3;
  v4 = [(PRFindMyCoreAnalytics *)self runData];
  v5 = v4;
  if (v3)
  {
    [v4 setTorchTurnedOn:1];
  }

  else
  {
    [v4 setTorchTurnedOff:1];
  }
}

- (void)rangingFailedWithError:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CBEB38];
  v13 = v4;
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v4, "code")}];
  v7 = [v6 stringValue];
  v8 = [v13 localizedDescription];
  v9 = [v5 dictionaryWithObjectsAndKeys:{v7, @"status", v8, @"errorDescription", 0}];

  v10 = [(PRFindMyCoreAnalytics *)self eventDictionaryWithEvent:@"RangingError"];
  v11 = v10;
  if (v10)
  {
    [v10 addEntriesFromDictionary:v9];
    if ([(PRFindMyCoreAnalytics *)self isRunning])
    {
      [(PRFindMyCoreAnalytics *)self runData];
    }

    else
    {
      [(PRFindMyCoreAnalytics *)self sessionData];
    }
    v12 = ;
    [v12 error:v11];

    [(PRFindMyCoreAnalytics *)self sendAnalyticsEvent:v11];
  }
}

- (void)updateTravelDistanceWithPose:(id)a3
{
  v40 = a3;
  v4 = [(PRFindMyCoreAnalytics *)self previousPose];
  [v4 pose];
  v37 = v5;

  v6 = [(PRFindMyCoreAnalytics *)self previousPoseOfUser];
  [v6 pose];
  v36 = v7;

  v8 = [(PRFindMyCoreAnalytics *)self oldPreviousPoseOfUser];
  [v8 pose];
  v35 = v9;

  [v40 pose];
  v38 = v10;
  v11 = MEMORY[0x277CCABB0];
  v12 = [(PRFindMyCoreAnalytics *)self traveledDistance];
  [v12 floatValue];
  v13 = vsubq_f32(v37, v38);
  v14 = vmulq_f32(v13, v13);
  *&v16 = sqrtf(v14.f32[2] + vaddv_f32(*v14.f32)) + v15;
  v17 = [v11 numberWithFloat:v16];
  [(PRFindMyCoreAnalytics *)self setTraveledDistance:v17];

  [(PRFindMyCoreAnalytics *)self setPreviousPose:v40];
  v18 = MEMORY[0x277CCABB0];
  v19 = [(PRFindMyCoreAnalytics *)self numberOfPoses];
  v20 = [v18 numberWithInt:{objc_msgSend(v19, "intValue") + 1}];
  [(PRFindMyCoreAnalytics *)self setNumberOfPoses:v20];

  v21 = vsubq_f32(v36, v38);
  v22 = vmulq_f32(v21, v21);
  v23 = vsubq_f32(v35, v38);
  v24 = vmulq_f32(v23, v23);
  *v24.i8 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v24, v24, 8uLL), *&vextq_s8(v22, v22, 8uLL)), vadd_f32(vzip1_s32(*v24.i8, *v22.i8), vzip2_s32(*v24.i8, *v22.i8))));
  v39 = *&v24.i32[1];
  *v22.i8 = vcgt_f32(*v24.i8, 0x3F0000003F000000);
  if (v22.i32[1] & v22.i32[0])
  {
    v25 = MEMORY[0x277CCABB0];
    v26 = [(PRFindMyCoreAnalytics *)self traveledDistanceOfUser];
    [v26 floatValue];
    *&v28 = v39 + v27;
    v29 = [v25 numberWithFloat:v28];
    [(PRFindMyCoreAnalytics *)self setTraveledDistanceOfUser:v29];

    v30 = [(PRFindMyCoreAnalytics *)self previousPoseOfUser];
    [(PRFindMyCoreAnalytics *)self setOldPreviousPoseOfUser:v30];

    [(PRFindMyCoreAnalytics *)self setPreviousPoseOfUser:v40];
  }

  v31 = [(PRFindMyCoreAnalytics *)self numberOfPoses];
  v32 = [v31 intValue];

  if (v32 == 1)
  {
    v33 = [(PRFindMyCoreAnalytics *)self eventDictionaryWithEvent:@"FirstPose"];
    v34 = [(PRFindMyCoreAnalytics *)self runData];
    [v34 firstPose:v33];

    [(PRFindMyCoreAnalytics *)self sendAnalyticsEvent:v33];
  }
}

- (void)updateWithRangeEstimate:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CCABB0];
  v16 = v4;
  [v4 range];
  v6 = [v5 numberWithFloat:?];
  [(PRFindMyCoreAnalytics *)self setRangeEstimate:v6];

  v7 = MEMORY[0x277CCABB0];
  v8 = [(PRFindMyCoreAnalytics *)self numberOfRanges];
  v9 = [v7 numberWithInt:{objc_msgSend(v8, "intValue") + 1}];
  [(PRFindMyCoreAnalytics *)self setNumberOfRanges:v9];

  v10 = [(PRFindMyCoreAnalytics *)self numberOfRanges];
  LODWORD(v9) = [v10 intValue];

  if (v9 == 1)
  {
    v11 = [(PRFindMyCoreAnalytics *)self eventDictionaryWithEvent:@"FirstRange"];
    v12 = [(PRFindMyCoreAnalytics *)self runData];
    [v12 firstRange:v11];

    [(PRFindMyCoreAnalytics *)self sendAnalyticsEvent:v11];
  }

  [v16 range];
  if (v13 <= 0.9144 && [(PRFindMyCoreAnalytics *)self shouldLogEnteredArmsReachEvent])
  {
    v14 = [(PRFindMyCoreAnalytics *)self eventDictionaryWithEvent:@"EnteredArmsReach"];
    [(PRFindMyCoreAnalytics *)self sendAnalyticsEvent:v14];
    v15 = [(PRFindMyCoreAnalytics *)self runData];
    [v15 setArmsReachEvent:v14];

    [(PRFindMyCoreAnalytics *)self setShouldLogEnteredArmsReachEvent:0];
  }
}

- (void)updateSOIRSSI:(double)a3
{
  if (![(PRFindMyCoreAnalytics *)self receivedfirstSOIRSSI])
  {
    [(PRFindMyCoreAnalytics *)self setReceivedfirstSOIRSSI:1];
    v5 = [(PRFindMyCoreAnalytics *)self runData];
    [v5 logFirstSOIRSSI:a3];
  }
}

- (void)revokeRangeEstimate
{
  v3 = [MEMORY[0x277CCABB0] numberWithInt:0xFFFFFFFFLL];
  [(PRFindMyCoreAnalytics *)self setRangeEstimate:?];
}

- (void)targetMovingStateChanged:(BOOL)a3
{
  v3 = a3;
  v5 = MEMORY[0x277CBEB38];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:?];
  v9 = [v5 dictionaryWithObjectsAndKeys:{v6, @"status", 0}];

  v7 = [(PRFindMyCoreAnalytics *)self eventDictionaryWithEvent:@"TargetMoving"];
  if (v3)
  {
    if (![(PRFindMyCoreAnalytics *)self shouldLogMotionEvent])
    {
      goto LABEL_5;
    }

    [v7 addEntriesFromDictionary:v9];
    v8 = [(PRFindMyCoreAnalytics *)self runData];
    [v8 motion:v7];

    [(PRFindMyCoreAnalytics *)self sendAnalyticsEvent:v7];
  }

  [(PRFindMyCoreAnalytics *)self setShouldLogMotionEvent:!v3];
LABEL_5:
}

+ (BOOL)isInternalBuild
{
  if (+[PRFindMyCoreAnalytics isInternalBuild]::onceToken != -1)
  {
    +[PRFindMyCoreAnalytics isInternalBuild];
  }

  return +[PRFindMyCoreAnalytics isInternalBuild]::isInternalBuild;
}

uint64_t __40__PRFindMyCoreAnalytics_isInternalBuild__block_invoke()
{
  result = MGGetBoolAnswer();
  +[PRFindMyCoreAnalytics isInternalBuild]::isInternalBuild = result;
  return result;
}

- (void)sendLiveOnAnalytics:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() isInternalBuild];
  if (v4)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v7 = [MEMORY[0x277CBEB38] dictionary];
    [v7 setObject:@"com.apple.proximity.findmy.itemlocalizer.event" forKeyedSubscript:@"eventName"];
    [v7 addEntriesFromDictionary:v4];
    if ([MEMORY[0x277CCAAA0] isValidJSONObject:v7])
    {
      v8 = [MEMORY[0x277CBEBC0] URLWithString:@"https://gateway.icloud.com/acsnservice/metrics"];
      v9 = [MEMORY[0x277CCAB70] requestWithURL:v8];
      [v9 setHTTPMethod:@"POST"];
      v20 = 0;
      v10 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v7 options:1 error:&v20];
      v11 = v20;
      if (v11)
      {
        NSLog(&cfstr_LiveonAnalytic.isa);
      }

      else
      {
        [v9 setHTTPBody:v10];
        v12 = [(PRFindMyCoreAnalytics *)self authHeaderValue];
        [v9 setValue:v12 forHTTPHeaderField:@"Authorization"];

        v13 = [(PRFindMyCoreAnalytics *)self urlSession];
        v15 = MEMORY[0x277D85DD0];
        v16 = 3221225472;
        v17 = __45__PRFindMyCoreAnalytics_sendLiveOnAnalytics___block_invoke;
        v18 = &unk_279AD6088;
        v19 = v7;
        v14 = [v13 dataTaskWithRequest:v9 completionHandler:&v15];

        [v14 resume];
      }
    }
  }
}

void __45__PRFindMyCoreAnalytics_sendLiveOnAnalytics___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v4 = [v6 statusCode];
  v5 = [*(a1 + 32) objectForKeyedSubscript:@"eventType"];
  NSLog(&cfstr_UrlRequestResp.isa, v4, v5);
}

@end