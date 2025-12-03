@interface PRBTCoreAnalytics
+ (BOOL)isInternalBuild;
- (BOOL)isRunning;
- (PRBTCoreAnalytics)init;
- (id)eventDictionaryWithEvent:(id)event;
- (void)addLatestProximityLevel:(id)level;
- (void)deinit;
- (void)invalidPoseDetected;
- (void)rangingFailedWithError:(id)error;
- (void)resetState;
- (void)revokeProximityLevel;
- (void)sendAnalyticsEvent:(id)event;
- (void)sendLiveOnAnalytics:(id)analytics;
- (void)start;
- (void)stop;
- (void)targetMovingStateChanged:(BOOL)changed;
- (void)updateWithProximityLevel:(id)level;
- (void)updateWithRssiMeasurement:(id)measurement;
@end

@implementation PRBTCoreAnalytics

- (PRBTCoreAnalytics)init
{
  v23.receiver = self;
  v23.super_class = PRBTCoreAnalytics;
  v2 = [(PRBTCoreAnalytics *)&v23 init];
  v3 = v2;
  if (v2)
  {
    [(PRBTCoreAnalytics *)v2 resetState];
    defaultSessionConfiguration = [MEMORY[0x277CCAD38] defaultSessionConfiguration];
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];

    v21 = bundleIdentifier;
    v6 = [objc_alloc(MEMORY[0x277CF0188]) initWithIdentifier:bundleIdentifier];
    [(PRBTCoreAnalytics *)v3 setAuthSession:v6];

    authSession = [(PRBTCoreAnalytics *)v3 authSession];
    [defaultSessionConfiguration set_appleIDContext:authSession];

    v8 = [MEMORY[0x277CCAD30] sessionWithConfiguration:defaultSessionConfiguration];
    [(PRBTCoreAnalytics *)v3 setUrlSession:v8];

    v9 = objc_alloc_init(MEMORY[0x277CB8F48]);
    aa_primaryAppleAccount = [v9 aa_primaryAppleAccount];
    aa_personID = [aa_primaryAppleAccount aa_personID];
    credential = [aa_primaryAppleAccount credential];
    v13 = [credential credentialItemForKey:*MEMORY[0x277CB8F00]];
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", aa_personID, v13];
    v15 = [v14 dataUsingEncoding:4];
    v16 = [v15 base64EncodedStringWithOptions:0];

    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"Basic %@", v16];
    [(PRBTCoreAnalytics *)v3 setAuthHeaderValue:v17];

    v18 = os_log_create("com.apple.proximity", "btlocalizer_analytics");
    logger = v3->_logger;
    v3->_logger = v18;
  }

  return v3;
}

- (void)resetState
{
  [(PRBTCoreAnalytics *)self setShouldLogProximityLevelFoundEvent:1];
  [(PRBTCoreAnalytics *)self setShouldLogMotionEvent:1];
  [(PRBTCoreAnalytics *)self setShouldLogEnteredArmsReachEvent:1];
  v3 = [MEMORY[0x277CCABB0] numberWithDouble:-200.0];
  [(PRBTCoreAnalytics *)self setBtRssiEstimate:v3];

  v4 = [MEMORY[0x277CCABB0] numberWithInt:0];
  [(PRBTCoreAnalytics *)self setTraveledDistance:v4];

  v5 = [MEMORY[0x277CCABB0] numberWithInt:0];
  [(PRBTCoreAnalytics *)self setNumberOfPoses:v5];

  v6 = [MEMORY[0x277CCABB0] numberWithInt:0];
  [(PRBTCoreAnalytics *)self setNumberOfMeasurements:v6];

  [(PRBTCoreAnalytics *)self setLatestProximityLevel:0];
}

- (id)eventDictionaryWithEvent:(id)event
{
  v34[9] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  sessionId = [(PRBTCoreAnalytics *)self sessionId];

  if (sessionId)
  {
    v6 = MEMORY[0x277CCABB0];
    MachTimeSeconds = PRCommonGetMachTimeSeconds();
    [(PRBTCoreAnalytics *)self startTime];
    v32 = [v6 numberWithDouble:MachTimeSeconds - v8];
    v31 = [MEMORY[0x277CCABB0] numberWithInteger:{-[PRBTCoreAnalytics eventNumber](self, "eventNumber")}];
    v30 = [MEMORY[0x277CCABB0] numberWithFloat:0.0];
    [(PRBTCoreAnalytics *)self setEventNumber:[(PRBTCoreAnalytics *)self eventNumber]+ 1];
    v33[0] = @"sessionId";
    sessionId2 = [(PRBTCoreAnalytics *)self sessionId];
    uUIDString = [sessionId2 UUIDString];
    v34[0] = uUIDString;
    v33[1] = @"eventNumber";
    stringValue = [v31 stringValue];
    v34[1] = stringValue;
    v34[2] = v32;
    v33[2] = @"timeElapsed";
    v33[3] = @"traveledDistance";
    traveledDistance = [(PRBTCoreAnalytics *)self traveledDistance];
    v34[3] = traveledDistance;
    v34[4] = v30;
    v33[4] = @"straightLineDistance";
    v33[5] = @"btRssiEstimate";
    btRssiEstimate = [(PRBTCoreAnalytics *)self btRssiEstimate];
    v34[5] = btRssiEstimate;
    v33[6] = @"numberOfMeasurements";
    numberOfMeasurements = [(PRBTCoreAnalytics *)self numberOfMeasurements];
    v34[6] = numberOfMeasurements;
    v33[7] = @"numberOfPoses";
    numberOfPoses = [(PRBTCoreAnalytics *)self numberOfPoses];
    v33[8] = @"eventType";
    v34[7] = numberOfPoses;
    v34[8] = eventCopy;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:9];

    v17 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v16];
    runId = [(PRBTCoreAnalytics *)self runId];
    LOBYTE(btRssiEstimate) = runId == 0;

    if ((btRssiEstimate & 1) == 0)
    {
      runId2 = [(PRBTCoreAnalytics *)self runId];
      uUIDString2 = [runId2 UUIDString];
      [v17 setObject:uUIDString2 forKeyedSubscript:@"runId"];
    }

    customData = [(PRBTCoreAnalytics *)self customData];
    v22 = customData == 0;

    if (!v22)
    {
      customData2 = [(PRBTCoreAnalytics *)self customData];
      [v17 addEntriesFromDictionary:customData2];
    }

    productUUID = [(PRBTCoreAnalytics *)self productUUID];
    v25 = productUUID == 0;

    if (!v25)
    {
      productUUID2 = [(PRBTCoreAnalytics *)self productUUID];
      uUIDString3 = [productUUID2 UUIDString];
      [v17 setObject:uUIDString3 forKeyedSubscript:@"ProductUUID"];
    }
  }

  else
  {
    v17 = 0;
  }

  v28 = *MEMORY[0x277D85DE8];

  return v17;
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

    [(PRBTCoreAnalytics *)self sendLiveOnAnalytics:eventCopy];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (BOOL)isRunning
{
  runId = [(PRBTCoreAnalytics *)self runId];
  v3 = runId != 0;

  return v3;
}

- (void)start
{
  [(PRBTCoreAnalytics *)self resetState];
  uUID = [MEMORY[0x277CCAD78] UUID];
  [(PRBTCoreAnalytics *)self setRunId:?];

  v6 = objc_alloc_init(CABTRunData);
  [(PRBTCoreAnalytics *)self setRunData:?];

  productUUID = [(PRBTCoreAnalytics *)self productUUID];
  runData = [(PRBTCoreAnalytics *)self runData];
  [runData setProductUUID:productUUID];

  v8 = [(PRBTCoreAnalytics *)self eventDictionaryWithEvent:@"Start"];
  runData2 = [(PRBTCoreAnalytics *)self runData];
  [runData2 start:v8];

  [(PRBTCoreAnalytics *)self sendAnalyticsEvent:v8];
}

- (void)addLatestProximityLevel:(id)level
{
  v12[1] = *MEMORY[0x277D85DE8];
  levelCopy = level;
  latestProximityLevel = [(PRBTCoreAnalytics *)self latestProximityLevel];

  if (latestProximityLevel)
  {
    v11 = @"proximityLevel";
    v6 = MEMORY[0x277CCABB0];
    latestProximityLevel2 = [(PRBTCoreAnalytics *)self latestProximityLevel];
    v8 = [v6 numberWithInt:{objc_msgSend(latestProximityLevel2, "proximityLevel")}];
    v12[0] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];

    [levelCopy addEntriesFromDictionary:v9];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)stop
{
  if ([(PRBTCoreAnalytics *)self isRunning])
  {
    v5 = [(PRBTCoreAnalytics *)self eventDictionaryWithEvent:@"Stop"];
    [(PRBTCoreAnalytics *)self addLatestProximityLevel:?];
    runData = [(PRBTCoreAnalytics *)self runData];
    [runData stop:v5];

    runData2 = [(PRBTCoreAnalytics *)self runData];
    [runData2 logData];

    [(PRBTCoreAnalytics *)self setRunData:0];
    [(PRBTCoreAnalytics *)self sendAnalyticsEvent:v5];
    [(PRBTCoreAnalytics *)self setRunId:0];
    [(PRBTCoreAnalytics *)self setRunData:0];
  }
}

- (void)deinit
{
  [(PRBTCoreAnalytics *)self stop];
  v5 = [(PRBTCoreAnalytics *)self eventDictionaryWithEvent:@"Deinit"];
  sessionData = [(PRBTCoreAnalytics *)self sessionData];
  [sessionData deinit:v5];

  sessionData2 = [(PRBTCoreAnalytics *)self sessionData];
  [sessionData2 logData];

  [(PRBTCoreAnalytics *)self sendAnalyticsEvent:v5];
}

- (void)invalidPoseDetected
{
  v4 = [(PRBTCoreAnalytics *)self eventDictionaryWithEvent:@"InvalidPose"];
  runData = [(PRBTCoreAnalytics *)self runData];
  [runData invalidPose:v4];

  [(PRBTCoreAnalytics *)self sendAnalyticsEvent:v4];
}

- (void)updateWithProximityLevel:(id)level
{
  levelCopy = level;
  [(PRBTCoreAnalytics *)self setLatestProximityLevel:?];
  if ([(PRBTCoreAnalytics *)self shouldLogProximityLevelFoundEvent])
  {
    v4 = [(PRBTCoreAnalytics *)self eventDictionaryWithEvent:@"ProximityLevelFound"];
    [(PRBTCoreAnalytics *)self addLatestProximityLevel:v4];
    runData = [(PRBTCoreAnalytics *)self runData];
    [runData proximityLevelFound:v4];

    [(PRBTCoreAnalytics *)self sendAnalyticsEvent:v4];
    [(PRBTCoreAnalytics *)self setShouldLogProximityLevelFoundEvent:0];
  }

  if ([levelCopy proximityLevel] == 4 && -[PRBTCoreAnalytics shouldLogEnteredArmsReachEvent](self, "shouldLogEnteredArmsReachEvent"))
  {
    v6 = [(PRBTCoreAnalytics *)self eventDictionaryWithEvent:@"EnteredArmsReach"];
    [(PRBTCoreAnalytics *)self sendAnalyticsEvent:v6];
    runData2 = [(PRBTCoreAnalytics *)self runData];
    [runData2 setArmsReachEvent:v6];

    [(PRBTCoreAnalytics *)self setShouldLogEnteredArmsReachEvent:0];
  }
}

- (void)revokeProximityLevel
{
  if (![(PRBTCoreAnalytics *)self shouldLogProximityLevelFoundEvent])
  {
    v4 = [MEMORY[0x277CCABB0] numberWithDouble:-200.0];
    [(PRBTCoreAnalytics *)self setBtRssiEstimate:?];

    v5 = [(PRBTCoreAnalytics *)self eventDictionaryWithEvent:@"ProximityLevelRevoked"];
    runData = [(PRBTCoreAnalytics *)self runData];
    [runData proximityLevelRevoked:v5];

    [(PRBTCoreAnalytics *)self sendAnalyticsEvent:v5];
    [(PRBTCoreAnalytics *)self setShouldLogProximityLevelFoundEvent:1];
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

  v10 = [(PRBTCoreAnalytics *)self eventDictionaryWithEvent:@"RangingError"];
  v11 = v10;
  if (v10)
  {
    [v10 addEntriesFromDictionary:v9];
    if ([(PRBTCoreAnalytics *)self isRunning])
    {
      [(PRBTCoreAnalytics *)self runData];
    }

    else
    {
      [(PRBTCoreAnalytics *)self sessionData];
    }
    v12 = ;
    [v12 error:v11];

    [(PRBTCoreAnalytics *)self sendAnalyticsEvent:v11];
  }
}

- (void)updateWithRssiMeasurement:(id)measurement
{
  measurementCopy = measurement;
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:{objc_msgSend(measurementCopy, "rssi")}];
  [(PRBTCoreAnalytics *)self setBtRssiEstimate:v4];

  v5 = MEMORY[0x277CCABB0];
  numberOfMeasurements = [(PRBTCoreAnalytics *)self numberOfMeasurements];
  v7 = [v5 numberWithInt:{objc_msgSend(numberOfMeasurements, "intValue") + 1}];
  [(PRBTCoreAnalytics *)self setNumberOfMeasurements:v7];

  numberOfMeasurements2 = [(PRBTCoreAnalytics *)self numberOfMeasurements];
  LODWORD(v7) = [numberOfMeasurements2 intValue];

  if (v7 == 1)
  {
    v9 = [(PRBTCoreAnalytics *)self eventDictionaryWithEvent:@"FirstRssiMeasurement"];
    runData = [(PRBTCoreAnalytics *)self runData];
    [runData firstRssiMeasurement:v9];

    [(PRBTCoreAnalytics *)self sendAnalyticsEvent:v9];
  }
}

- (void)targetMovingStateChanged:(BOOL)changed
{
  changedCopy = changed;
  v5 = MEMORY[0x277CBEB38];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:?];
  v9 = [v5 dictionaryWithObjectsAndKeys:{v6, @"status", 0}];

  v7 = [(PRBTCoreAnalytics *)self eventDictionaryWithEvent:@"TargetMoving"];
  if (changedCopy)
  {
    if (![(PRBTCoreAnalytics *)self shouldLogMotionEvent])
    {
      goto LABEL_5;
    }

    [v7 addEntriesFromDictionary:v9];
    runData = [(PRBTCoreAnalytics *)self runData];
    [runData motion:v7];

    [(PRBTCoreAnalytics *)self sendAnalyticsEvent:v7];
  }

  [(PRBTCoreAnalytics *)self setShouldLogMotionEvent:!changedCopy];
LABEL_5:
}

+ (BOOL)isInternalBuild
{
  if (+[PRBTCoreAnalytics isInternalBuild]::onceToken != -1)
  {
    +[PRBTCoreAnalytics isInternalBuild];
  }

  return +[PRBTCoreAnalytics isInternalBuild]::isInternalBuild;
}

uint64_t __36__PRBTCoreAnalytics_isInternalBuild__block_invoke()
{
  result = MGGetBoolAnswer();
  +[PRBTCoreAnalytics isInternalBuild]::isInternalBuild = result;
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
    [dictionary setObject:@"com.apple.proximity.findmy.btlocalizer.event" forKeyedSubscript:@"eventName"];
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
        authHeaderValue = [(PRBTCoreAnalytics *)self authHeaderValue];
        [v9 setValue:authHeaderValue forHTTPHeaderField:@"Authorization"];

        urlSession = [(PRBTCoreAnalytics *)self urlSession];
        v15 = MEMORY[0x277D85DD0];
        v16 = 3221225472;
        v17 = __41__PRBTCoreAnalytics_sendLiveOnAnalytics___block_invoke;
        v18 = &unk_279AD6088;
        v19 = dictionary;
        v14 = [urlSession dataTaskWithRequest:v9 completionHandler:&v15];

        [v14 resume];
      }
    }
  }
}

void __41__PRBTCoreAnalytics_sendLiveOnAnalytics___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v4 = [v6 statusCode];
  v5 = [*(a1 + 32) objectForKeyedSubscript:@"eventType"];
  NSLog(&cfstr_UrlRequestResp.isa, v4, v5);
}

@end