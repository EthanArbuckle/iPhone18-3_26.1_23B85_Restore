@interface PRFindMyCoreAnalytics
+ (BOOL)isInternalBuild;
- (BOOL)isRunning;
- (PRFindMyCoreAnalytics)init;
- (id)eventDictionaryWithEvent:(id)event;
- (void)addLatestTarget:(id)target;
- (void)configureComplete;
- (void)configureSessionWithProductUUID:(id)d withOwner:(id)owner;
- (void)deinit;
- (void)firstArrowFromAoA;
- (void)firstArrowFromRange;
- (void)invalidPoseDetected;
- (void)rangingFailedWithError:(id)error;
- (void)resetState;
- (void)revokeRangeEstimate;
- (void)sendAnalyticsEvent:(id)event;
- (void)sendLiveOnAnalytics:(id)analytics;
- (void)start;
- (void)stop;
- (void)targetComputed:(id)computed;
- (void)targetMovingStateChanged:(BOOL)changed;
- (void)targetRevokedWithReason:(unint64_t)reason;
- (void)torchButtonPresented;
- (void)torchChangedState:(BOOL)state;
- (void)updateSOIRSSI:(double)i;
- (void)updateTravelDistanceWithPose:(id)pose;
- (void)updateWithRangeEstimate:(id)estimate;
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
    defaultSessionConfiguration = [MEMORY[0x277CCAD38] defaultSessionConfiguration];
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];

    v21 = bundleIdentifier;
    v6 = [objc_alloc(MEMORY[0x277CF0188]) initWithIdentifier:bundleIdentifier];
    [(PRFindMyCoreAnalytics *)v3 setAuthSession:v6];

    authSession = [(PRFindMyCoreAnalytics *)v3 authSession];
    [defaultSessionConfiguration set_appleIDContext:authSession];

    v8 = [MEMORY[0x277CCAD30] sessionWithConfiguration:defaultSessionConfiguration];
    [(PRFindMyCoreAnalytics *)v3 setUrlSession:v8];

    v9 = objc_alloc_init(MEMORY[0x277CB8F48]);
    aa_primaryAppleAccount = [v9 aa_primaryAppleAccount];
    aa_personID = [aa_primaryAppleAccount aa_personID];
    credential = [aa_primaryAppleAccount credential];
    v13 = [credential credentialItemForKey:*MEMORY[0x277CB8F00]];
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", aa_personID, v13];
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

- (id)eventDictionaryWithEvent:(id)event
{
  v43[10] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  sessionId = [(PRFindMyCoreAnalytics *)self sessionId];

  if (sessionId)
  {
    v5 = MEMORY[0x277CCABB0];
    MachTimeSeconds = PRCommonGetMachTimeSeconds();
    [(PRFindMyCoreAnalytics *)self startTime];
    v39 = [v5 numberWithDouble:MachTimeSeconds - v7];
    v40 = [MEMORY[0x277CCABB0] numberWithInteger:{-[PRFindMyCoreAnalytics eventNumber](self, "eventNumber")}];
    v8 = MEMORY[0x277CCABB0];
    previousPose = [(PRFindMyCoreAnalytics *)self previousPose];
    [previousPose pose];
    v11 = vmulq_f32(v10, v10);
    v11.f32[0] = sqrtf(v11.f32[2] + vaddv_f32(*v11.f32));
    v37 = [v8 numberWithFloat:*v11.i64];

    [(PRFindMyCoreAnalytics *)self setEventNumber:[(PRFindMyCoreAnalytics *)self eventNumber]+ 1];
    v42[0] = @"sessionId";
    sessionId2 = [(PRFindMyCoreAnalytics *)self sessionId];
    uUIDString = [sessionId2 UUIDString];
    v43[0] = uUIDString;
    v42[1] = @"eventNumber";
    stringValue = [v40 stringValue];
    v43[1] = stringValue;
    v43[2] = v39;
    v42[2] = @"timeElapsed";
    v42[3] = @"traveledDistance";
    traveledDistance = [(PRFindMyCoreAnalytics *)self traveledDistance];
    v43[3] = traveledDistance;
    v42[4] = @"traveledDistanceOfUser";
    traveledDistanceOfUser = [(PRFindMyCoreAnalytics *)self traveledDistanceOfUser];
    v43[4] = traveledDistanceOfUser;
    v43[5] = v37;
    v42[5] = @"straightLineDistance";
    v42[6] = @"rangeEstimate";
    rangeEstimate = [(PRFindMyCoreAnalytics *)self rangeEstimate];
    v43[6] = rangeEstimate;
    v42[7] = @"numberOfRanges";
    numberOfRanges = [(PRFindMyCoreAnalytics *)self numberOfRanges];
    v43[7] = numberOfRanges;
    v42[8] = @"numberOfPoses";
    numberOfPoses = [(PRFindMyCoreAnalytics *)self numberOfPoses];
    v42[9] = @"eventType";
    v43[8] = numberOfPoses;
    v43[9] = eventCopy;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:10];

    v21 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v20];
    runId = [(PRFindMyCoreAnalytics *)self runId];
    LOBYTE(numberOfPoses) = runId == 0;

    if ((numberOfPoses & 1) == 0)
    {
      runId2 = [(PRFindMyCoreAnalytics *)self runId];
      uUIDString2 = [runId2 UUIDString];
      [v21 setObject:uUIDString2 forKeyedSubscript:@"runId"];
    }

    customData = [(PRFindMyCoreAnalytics *)self customData];
    v26 = customData == 0;

    if (!v26)
    {
      customData2 = [(PRFindMyCoreAnalytics *)self customData];
      [v21 addEntriesFromDictionary:customData2];
    }

    productUUID = [(PRFindMyCoreAnalytics *)self productUUID];
    v29 = productUUID == 0;

    if (!v29)
    {
      productUUID2 = [(PRFindMyCoreAnalytics *)self productUUID];
      uUIDString3 = [productUUID2 UUIDString];
      [v21 setObject:uUIDString3 forKeyedSubscript:@"ProductUUID"];
    }

    isOwner = [(PRFindMyCoreAnalytics *)self isOwner];
    v33 = isOwner == 0;

    if (!v33)
    {
      isOwner2 = [(PRFindMyCoreAnalytics *)self isOwner];
      [v21 setObject:isOwner2 forKeyedSubscript:@"IsOwner"];
    }
  }

  else
  {
    v21 = 0;
  }

  v35 = *MEMORY[0x277D85DE8];

  return v21;
}

- (void)sendAnalyticsEvent:(id)event
{
  v9 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  if (eventCopy)
  {
    logger = self->_logger;
    if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = eventCopy;
      _os_log_impl(&dword_2613DF000, logger, OS_LOG_TYPE_DEFAULT, "Logging event %@", &v7, 0xCu);
    }

    [(PRFindMyCoreAnalytics *)self sendLiveOnAnalytics:eventCopy];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)configureSessionWithProductUUID:(id)d withOwner:(id)owner
{
  dCopy = d;
  ownerCopy = owner;
  uUID = [MEMORY[0x277CCAD78] UUID];
  [(PRFindMyCoreAnalytics *)self setSessionId:uUID];

  [(PRFindMyCoreAnalytics *)self setEventNumber:0];
  [(PRFindMyCoreAnalytics *)self setStartTime:PRCommonGetMachTimeSeconds()];
  [(PRFindMyCoreAnalytics *)self setProductUUID:dCopy];
  [(PRFindMyCoreAnalytics *)self setIsOwner:ownerCopy];
  v8 = objc_alloc_init(CASessionData);
  [(PRFindMyCoreAnalytics *)self setSessionData:v8];

  sessionData = [(PRFindMyCoreAnalytics *)self sessionData];
  [sessionData setProductUUID:dCopy];

  sessionData2 = [(PRFindMyCoreAnalytics *)self sessionData];
  [sessionData2 setIsOwner:ownerCopy];

  v11 = [(PRFindMyCoreAnalytics *)self eventDictionaryWithEvent:@"Configure"];
  sessionData3 = [(PRFindMyCoreAnalytics *)self sessionData];
  [sessionData3 configure:v11];

  [(PRFindMyCoreAnalytics *)self sendAnalyticsEvent:v11];
}

- (void)configureComplete
{
  v4 = [(PRFindMyCoreAnalytics *)self eventDictionaryWithEvent:@"ConfigureComplete"];
  sessionData = [(PRFindMyCoreAnalytics *)self sessionData];
  [sessionData configureComplete:v4];

  [(PRFindMyCoreAnalytics *)self sendAnalyticsEvent:v4];
}

- (BOOL)isRunning
{
  runId = [(PRFindMyCoreAnalytics *)self runId];
  v3 = runId != 0;

  return v3;
}

- (void)start
{
  [(PRFindMyCoreAnalytics *)self resetState];
  uUID = [MEMORY[0x277CCAD78] UUID];
  [(PRFindMyCoreAnalytics *)self setRunId:?];

  v7 = objc_alloc_init(CARunData);
  [(PRFindMyCoreAnalytics *)self setRunData:?];

  productUUID = [(PRFindMyCoreAnalytics *)self productUUID];
  runData = [(PRFindMyCoreAnalytics *)self runData];
  [runData setProductUUID:productUUID];

  isOwner = [(PRFindMyCoreAnalytics *)self isOwner];
  runData2 = [(PRFindMyCoreAnalytics *)self runData];
  [runData2 setIsOwner:isOwner];

  v10 = [(PRFindMyCoreAnalytics *)self eventDictionaryWithEvent:@"Start"];
  runData3 = [(PRFindMyCoreAnalytics *)self runData];
  [runData3 start:v10];

  [(PRFindMyCoreAnalytics *)self sendAnalyticsEvent:v10];
}

- (void)addLatestTarget:(id)target
{
  v22[3] = *MEMORY[0x277D85DE8];
  targetCopy = target;
  latestTarget = [(PRFindMyCoreAnalytics *)self latestTarget];

  if (latestTarget)
  {
    v6 = MEMORY[0x277CBEB38];
    v7 = MEMORY[0x277CCABB0];
    latestTarget2 = [(PRFindMyCoreAnalytics *)self latestTarget];
    [latestTarget2 vector];
    v9 = [v7 numberWithFloat:?];
    v22[0] = v9;
    v10 = MEMORY[0x277CCABB0];
    latestTarget3 = [(PRFindMyCoreAnalytics *)self latestTarget];
    [latestTarget3 vector];
    LODWORD(v12) = HIDWORD(v12);
    v13 = [v10 numberWithFloat:v12];
    v22[1] = v13;
    v14 = MEMORY[0x277CCABB0];
    latestTarget4 = [(PRFindMyCoreAnalytics *)self latestTarget];
    [latestTarget4 vector];
    LODWORD(v17) = v16;
    v18 = [v14 numberWithFloat:v17];
    v22[2] = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:3];
    v20 = [v6 dictionaryWithObjectsAndKeys:{v19, @"target", 0}];

    [targetCopy addEntriesFromDictionary:v20];
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)stop
{
  if ([(PRFindMyCoreAnalytics *)self isRunning])
  {
    v5 = [(PRFindMyCoreAnalytics *)self eventDictionaryWithEvent:@"Stop"];
    [(PRFindMyCoreAnalytics *)self addLatestTarget:?];
    runData = [(PRFindMyCoreAnalytics *)self runData];
    [runData stop:v5];

    runData2 = [(PRFindMyCoreAnalytics *)self runData];
    [runData2 logData];

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
  sessionData = [(PRFindMyCoreAnalytics *)self sessionData];
  [sessionData deinit:v5];

  sessionData2 = [(PRFindMyCoreAnalytics *)self sessionData];
  [sessionData2 logData];

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
  runData = [(PRFindMyCoreAnalytics *)self runData];
  [runData invalidPose:v8];

  [(PRFindMyCoreAnalytics *)self sendAnalyticsEvent:v8];
}

- (void)targetComputed:(id)computed
{
  computedCopy = computed;
  [(PRFindMyCoreAnalytics *)self setLatestTarget:?];
  if ([(PRFindMyCoreAnalytics *)self shouldLogTargetFoundEvent])
  {
    v4 = [(PRFindMyCoreAnalytics *)self eventDictionaryWithEvent:@"TargetFound"];
    [(PRFindMyCoreAnalytics *)self addLatestTarget:v4];
    runData = [(PRFindMyCoreAnalytics *)self runData];
    [runData targetFound:v4];

    [(PRFindMyCoreAnalytics *)self sendAnalyticsEvent:v4];
    [(PRFindMyCoreAnalytics *)self setShouldLogTargetFoundEvent:0];
  }
}

- (void)targetRevokedWithReason:(unint64_t)reason
{
  if ([(PRFindMyCoreAnalytics *)self shouldLogTargetFoundEvent])
  {
    return;
  }

  v7 = [(PRFindMyCoreAnalytics *)self eventDictionaryWithEvent:@"TargetRevoked"];
  runData = [(PRFindMyCoreAnalytics *)self runData];
  [runData targetRevoked:v7];

  if (reason > 2)
  {
    switch(reason)
    {
      case 3uLL:
        runData2 = [(PRFindMyCoreAnalytics *)self runData];
        [runData2 aoaRevoke:v7];
        goto LABEL_15;
      case 4uLL:
        runData2 = [(PRFindMyCoreAnalytics *)self runData];
        [runData2 straightPathRevoke:v7];
        goto LABEL_15;
      case 5uLL:
        runData2 = [(PRFindMyCoreAnalytics *)self runData];
        [runData2 highResidualRevoke:v7];
        goto LABEL_15;
    }
  }

  else
  {
    switch(reason)
    {
      case 0uLL:
        runData2 = [(PRFindMyCoreAnalytics *)self runData];
        [runData2 vioRevoke:v7];
        goto LABEL_15;
      case 1uLL:
        runData2 = [(PRFindMyCoreAnalytics *)self runData];
        [runData2 targetMotionRevoke:v7];
        goto LABEL_15;
      case 2uLL:
        runData2 = [(PRFindMyCoreAnalytics *)self runData];
        [runData2 rangeRevoke:v7];
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
  runData = [(PRFindMyCoreAnalytics *)self runData];
  [runData targetFoundFromRange:v4];
}

- (void)firstArrowFromAoA
{
  v4 = [(PRFindMyCoreAnalytics *)self eventDictionaryWithEvent:@"TargetFoundFromAoA"];
  runData = [(PRFindMyCoreAnalytics *)self runData];
  [runData targetFoundFromAoA:v4];
}

- (void)torchButtonPresented
{
  runData = [(PRFindMyCoreAnalytics *)self runData];
  [runData setTorchButtonPresented:1];
}

- (void)torchChangedState:(BOOL)state
{
  stateCopy = state;
  runData = [(PRFindMyCoreAnalytics *)self runData];
  v5 = runData;
  if (stateCopy)
  {
    [runData setTorchTurnedOn:1];
  }

  else
  {
    [runData setTorchTurnedOff:1];
  }
}

- (void)rangingFailedWithError:(id)error
{
  errorCopy = error;
  v5 = MEMORY[0x277CBEB38];
  v13 = errorCopy;
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(errorCopy, "code")}];
  stringValue = [v6 stringValue];
  localizedDescription = [v13 localizedDescription];
  v9 = [v5 dictionaryWithObjectsAndKeys:{stringValue, @"status", localizedDescription, @"errorDescription", 0}];

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

- (void)updateTravelDistanceWithPose:(id)pose
{
  poseCopy = pose;
  previousPose = [(PRFindMyCoreAnalytics *)self previousPose];
  [previousPose pose];
  v37 = v5;

  previousPoseOfUser = [(PRFindMyCoreAnalytics *)self previousPoseOfUser];
  [previousPoseOfUser pose];
  v36 = v7;

  oldPreviousPoseOfUser = [(PRFindMyCoreAnalytics *)self oldPreviousPoseOfUser];
  [oldPreviousPoseOfUser pose];
  v35 = v9;

  [poseCopy pose];
  v38 = v10;
  v11 = MEMORY[0x277CCABB0];
  traveledDistance = [(PRFindMyCoreAnalytics *)self traveledDistance];
  [traveledDistance floatValue];
  v13 = vsubq_f32(v37, v38);
  v14 = vmulq_f32(v13, v13);
  *&v16 = sqrtf(v14.f32[2] + vaddv_f32(*v14.f32)) + v15;
  v17 = [v11 numberWithFloat:v16];
  [(PRFindMyCoreAnalytics *)self setTraveledDistance:v17];

  [(PRFindMyCoreAnalytics *)self setPreviousPose:poseCopy];
  v18 = MEMORY[0x277CCABB0];
  numberOfPoses = [(PRFindMyCoreAnalytics *)self numberOfPoses];
  v20 = [v18 numberWithInt:{objc_msgSend(numberOfPoses, "intValue") + 1}];
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
    traveledDistanceOfUser = [(PRFindMyCoreAnalytics *)self traveledDistanceOfUser];
    [traveledDistanceOfUser floatValue];
    *&v28 = v39 + v27;
    v29 = [v25 numberWithFloat:v28];
    [(PRFindMyCoreAnalytics *)self setTraveledDistanceOfUser:v29];

    previousPoseOfUser2 = [(PRFindMyCoreAnalytics *)self previousPoseOfUser];
    [(PRFindMyCoreAnalytics *)self setOldPreviousPoseOfUser:previousPoseOfUser2];

    [(PRFindMyCoreAnalytics *)self setPreviousPoseOfUser:poseCopy];
  }

  numberOfPoses2 = [(PRFindMyCoreAnalytics *)self numberOfPoses];
  intValue = [numberOfPoses2 intValue];

  if (intValue == 1)
  {
    v33 = [(PRFindMyCoreAnalytics *)self eventDictionaryWithEvent:@"FirstPose"];
    runData = [(PRFindMyCoreAnalytics *)self runData];
    [runData firstPose:v33];

    [(PRFindMyCoreAnalytics *)self sendAnalyticsEvent:v33];
  }
}

- (void)updateWithRangeEstimate:(id)estimate
{
  estimateCopy = estimate;
  v5 = MEMORY[0x277CCABB0];
  v16 = estimateCopy;
  [estimateCopy range];
  v6 = [v5 numberWithFloat:?];
  [(PRFindMyCoreAnalytics *)self setRangeEstimate:v6];

  v7 = MEMORY[0x277CCABB0];
  numberOfRanges = [(PRFindMyCoreAnalytics *)self numberOfRanges];
  v9 = [v7 numberWithInt:{objc_msgSend(numberOfRanges, "intValue") + 1}];
  [(PRFindMyCoreAnalytics *)self setNumberOfRanges:v9];

  numberOfRanges2 = [(PRFindMyCoreAnalytics *)self numberOfRanges];
  LODWORD(v9) = [numberOfRanges2 intValue];

  if (v9 == 1)
  {
    v11 = [(PRFindMyCoreAnalytics *)self eventDictionaryWithEvent:@"FirstRange"];
    runData = [(PRFindMyCoreAnalytics *)self runData];
    [runData firstRange:v11];

    [(PRFindMyCoreAnalytics *)self sendAnalyticsEvent:v11];
  }

  [v16 range];
  if (v13 <= 0.9144 && [(PRFindMyCoreAnalytics *)self shouldLogEnteredArmsReachEvent])
  {
    v14 = [(PRFindMyCoreAnalytics *)self eventDictionaryWithEvent:@"EnteredArmsReach"];
    [(PRFindMyCoreAnalytics *)self sendAnalyticsEvent:v14];
    runData2 = [(PRFindMyCoreAnalytics *)self runData];
    [runData2 setArmsReachEvent:v14];

    [(PRFindMyCoreAnalytics *)self setShouldLogEnteredArmsReachEvent:0];
  }
}

- (void)updateSOIRSSI:(double)i
{
  if (![(PRFindMyCoreAnalytics *)self receivedfirstSOIRSSI])
  {
    [(PRFindMyCoreAnalytics *)self setReceivedfirstSOIRSSI:1];
    runData = [(PRFindMyCoreAnalytics *)self runData];
    [runData logFirstSOIRSSI:i];
  }
}

- (void)revokeRangeEstimate
{
  v3 = [MEMORY[0x277CCABB0] numberWithInt:0xFFFFFFFFLL];
  [(PRFindMyCoreAnalytics *)self setRangeEstimate:?];
}

- (void)targetMovingStateChanged:(BOOL)changed
{
  changedCopy = changed;
  v5 = MEMORY[0x277CBEB38];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:?];
  v9 = [v5 dictionaryWithObjectsAndKeys:{v6, @"status", 0}];

  v7 = [(PRFindMyCoreAnalytics *)self eventDictionaryWithEvent:@"TargetMoving"];
  if (changedCopy)
  {
    if (![(PRFindMyCoreAnalytics *)self shouldLogMotionEvent])
    {
      goto LABEL_5;
    }

    [v7 addEntriesFromDictionary:v9];
    runData = [(PRFindMyCoreAnalytics *)self runData];
    [runData motion:v7];

    [(PRFindMyCoreAnalytics *)self sendAnalyticsEvent:v7];
  }

  [(PRFindMyCoreAnalytics *)self setShouldLogMotionEvent:!changedCopy];
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

- (void)sendLiveOnAnalytics:(id)analytics
{
  analyticsCopy = analytics;
  isInternalBuild = [objc_opt_class() isInternalBuild];
  if (analyticsCopy)
  {
    v6 = isInternalBuild;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [dictionary setObject:@"com.apple.proximity.findmy.itemlocalizer.event" forKeyedSubscript:@"eventName"];
    [dictionary addEntriesFromDictionary:analyticsCopy];
    if ([MEMORY[0x277CCAAA0] isValidJSONObject:dictionary])
    {
      v8 = [MEMORY[0x277CBEBC0] URLWithString:@"https://gateway.icloud.com/acsnservice/metrics"];
      v9 = [MEMORY[0x277CCAB70] requestWithURL:v8];
      [v9 setHTTPMethod:@"POST"];
      v20 = 0;
      v10 = [MEMORY[0x277CCAAA0] dataWithJSONObject:dictionary options:1 error:&v20];
      v11 = v20;
      if (v11)
      {
        NSLog(&cfstr_LiveonAnalytic.isa);
      }

      else
      {
        [v9 setHTTPBody:v10];
        authHeaderValue = [(PRFindMyCoreAnalytics *)self authHeaderValue];
        [v9 setValue:authHeaderValue forHTTPHeaderField:@"Authorization"];

        urlSession = [(PRFindMyCoreAnalytics *)self urlSession];
        v15 = MEMORY[0x277D85DD0];
        v16 = 3221225472;
        v17 = __45__PRFindMyCoreAnalytics_sendLiveOnAnalytics___block_invoke;
        v18 = &unk_279AD6088;
        v19 = dictionary;
        v14 = [urlSession dataTaskWithRequest:v9 completionHandler:&v15];

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