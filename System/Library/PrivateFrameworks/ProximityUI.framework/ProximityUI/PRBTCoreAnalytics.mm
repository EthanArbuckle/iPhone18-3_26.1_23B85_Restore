@interface PRBTCoreAnalytics
+ (BOOL)isInternalBuild;
- (BOOL)isRunning;
- (PRBTCoreAnalytics)init;
- (id)eventDictionaryWithEvent:(id)a3;
- (void)addLatestProximityLevel:(id)a3;
- (void)deinit;
- (void)invalidPoseDetected;
- (void)rangingFailedWithError:(id)a3;
- (void)resetState;
- (void)revokeProximityLevel;
- (void)sendAnalyticsEvent:(id)a3;
- (void)sendLiveOnAnalytics:(id)a3;
- (void)start;
- (void)stop;
- (void)targetMovingStateChanged:(BOOL)a3;
- (void)updateWithProximityLevel:(id)a3;
- (void)updateWithRssiMeasurement:(id)a3;
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
    v22 = [MEMORY[0x277CCAD38] defaultSessionConfiguration];
    v4 = [MEMORY[0x277CCA8D8] mainBundle];
    v5 = [v4 bundleIdentifier];

    v21 = v5;
    v6 = [objc_alloc(MEMORY[0x277CF0188]) initWithIdentifier:v5];
    [(PRBTCoreAnalytics *)v3 setAuthSession:v6];

    v7 = [(PRBTCoreAnalytics *)v3 authSession];
    [v22 set_appleIDContext:v7];

    v8 = [MEMORY[0x277CCAD30] sessionWithConfiguration:v22];
    [(PRBTCoreAnalytics *)v3 setUrlSession:v8];

    v9 = objc_alloc_init(MEMORY[0x277CB8F48]);
    v10 = [v9 aa_primaryAppleAccount];
    v11 = [v10 aa_personID];
    v12 = [v10 credential];
    v13 = [v12 credentialItemForKey:*MEMORY[0x277CB8F00]];
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v11, v13];
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

- (id)eventDictionaryWithEvent:(id)a3
{
  v34[9] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PRBTCoreAnalytics *)self sessionId];

  if (v5)
  {
    v6 = MEMORY[0x277CCABB0];
    MachTimeSeconds = PRCommonGetMachTimeSeconds();
    [(PRBTCoreAnalytics *)self startTime];
    v32 = [v6 numberWithDouble:MachTimeSeconds - v8];
    v31 = [MEMORY[0x277CCABB0] numberWithInteger:{-[PRBTCoreAnalytics eventNumber](self, "eventNumber")}];
    v30 = [MEMORY[0x277CCABB0] numberWithFloat:0.0];
    [(PRBTCoreAnalytics *)self setEventNumber:[(PRBTCoreAnalytics *)self eventNumber]+ 1];
    v33[0] = @"sessionId";
    v9 = [(PRBTCoreAnalytics *)self sessionId];
    v10 = [v9 UUIDString];
    v34[0] = v10;
    v33[1] = @"eventNumber";
    v11 = [v31 stringValue];
    v34[1] = v11;
    v34[2] = v32;
    v33[2] = @"timeElapsed";
    v33[3] = @"traveledDistance";
    v12 = [(PRBTCoreAnalytics *)self traveledDistance];
    v34[3] = v12;
    v34[4] = v30;
    v33[4] = @"straightLineDistance";
    v33[5] = @"btRssiEstimate";
    v13 = [(PRBTCoreAnalytics *)self btRssiEstimate];
    v34[5] = v13;
    v33[6] = @"numberOfMeasurements";
    v14 = [(PRBTCoreAnalytics *)self numberOfMeasurements];
    v34[6] = v14;
    v33[7] = @"numberOfPoses";
    v15 = [(PRBTCoreAnalytics *)self numberOfPoses];
    v33[8] = @"eventType";
    v34[7] = v15;
    v34[8] = v4;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:9];

    v17 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v16];
    v18 = [(PRBTCoreAnalytics *)self runId];
    LOBYTE(v13) = v18 == 0;

    if ((v13 & 1) == 0)
    {
      v19 = [(PRBTCoreAnalytics *)self runId];
      v20 = [v19 UUIDString];
      [v17 setObject:v20 forKeyedSubscript:@"runId"];
    }

    v21 = [(PRBTCoreAnalytics *)self customData];
    v22 = v21 == 0;

    if (!v22)
    {
      v23 = [(PRBTCoreAnalytics *)self customData];
      [v17 addEntriesFromDictionary:v23];
    }

    v24 = [(PRBTCoreAnalytics *)self productUUID];
    v25 = v24 == 0;

    if (!v25)
    {
      v26 = [(PRBTCoreAnalytics *)self productUUID];
      v27 = [v26 UUIDString];
      [v17 setObject:v27 forKeyedSubscript:@"ProductUUID"];
    }
  }

  else
  {
    v17 = 0;
  }

  v28 = *MEMORY[0x277D85DE8];

  return v17;
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

    [(PRBTCoreAnalytics *)self sendLiveOnAnalytics:v4];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (BOOL)isRunning
{
  v2 = [(PRBTCoreAnalytics *)self runId];
  v3 = v2 != 0;

  return v3;
}

- (void)start
{
  [(PRBTCoreAnalytics *)self resetState];
  v5 = [MEMORY[0x277CCAD78] UUID];
  [(PRBTCoreAnalytics *)self setRunId:?];

  v6 = objc_alloc_init(CABTRunData);
  [(PRBTCoreAnalytics *)self setRunData:?];

  v7 = [(PRBTCoreAnalytics *)self productUUID];
  v3 = [(PRBTCoreAnalytics *)self runData];
  [v3 setProductUUID:v7];

  v8 = [(PRBTCoreAnalytics *)self eventDictionaryWithEvent:@"Start"];
  v4 = [(PRBTCoreAnalytics *)self runData];
  [v4 start:v8];

  [(PRBTCoreAnalytics *)self sendAnalyticsEvent:v8];
}

- (void)addLatestProximityLevel:(id)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PRBTCoreAnalytics *)self latestProximityLevel];

  if (v5)
  {
    v11 = @"proximityLevel";
    v6 = MEMORY[0x277CCABB0];
    v7 = [(PRBTCoreAnalytics *)self latestProximityLevel];
    v8 = [v6 numberWithInt:{objc_msgSend(v7, "proximityLevel")}];
    v12[0] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];

    [v4 addEntriesFromDictionary:v9];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)stop
{
  if ([(PRBTCoreAnalytics *)self isRunning])
  {
    v5 = [(PRBTCoreAnalytics *)self eventDictionaryWithEvent:@"Stop"];
    [(PRBTCoreAnalytics *)self addLatestProximityLevel:?];
    v3 = [(PRBTCoreAnalytics *)self runData];
    [v3 stop:v5];

    v4 = [(PRBTCoreAnalytics *)self runData];
    [v4 logData];

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
  v3 = [(PRBTCoreAnalytics *)self sessionData];
  [v3 deinit:v5];

  v4 = [(PRBTCoreAnalytics *)self sessionData];
  [v4 logData];

  [(PRBTCoreAnalytics *)self sendAnalyticsEvent:v5];
}

- (void)invalidPoseDetected
{
  v4 = [(PRBTCoreAnalytics *)self eventDictionaryWithEvent:@"InvalidPose"];
  v3 = [(PRBTCoreAnalytics *)self runData];
  [v3 invalidPose:v4];

  [(PRBTCoreAnalytics *)self sendAnalyticsEvent:v4];
}

- (void)updateWithProximityLevel:(id)a3
{
  v8 = a3;
  [(PRBTCoreAnalytics *)self setLatestProximityLevel:?];
  if ([(PRBTCoreAnalytics *)self shouldLogProximityLevelFoundEvent])
  {
    v4 = [(PRBTCoreAnalytics *)self eventDictionaryWithEvent:@"ProximityLevelFound"];
    [(PRBTCoreAnalytics *)self addLatestProximityLevel:v4];
    v5 = [(PRBTCoreAnalytics *)self runData];
    [v5 proximityLevelFound:v4];

    [(PRBTCoreAnalytics *)self sendAnalyticsEvent:v4];
    [(PRBTCoreAnalytics *)self setShouldLogProximityLevelFoundEvent:0];
  }

  if ([v8 proximityLevel] == 4 && -[PRBTCoreAnalytics shouldLogEnteredArmsReachEvent](self, "shouldLogEnteredArmsReachEvent"))
  {
    v6 = [(PRBTCoreAnalytics *)self eventDictionaryWithEvent:@"EnteredArmsReach"];
    [(PRBTCoreAnalytics *)self sendAnalyticsEvent:v6];
    v7 = [(PRBTCoreAnalytics *)self runData];
    [v7 setArmsReachEvent:v6];

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
    v3 = [(PRBTCoreAnalytics *)self runData];
    [v3 proximityLevelRevoked:v5];

    [(PRBTCoreAnalytics *)self sendAnalyticsEvent:v5];
    [(PRBTCoreAnalytics *)self setShouldLogProximityLevelFoundEvent:1];
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

- (void)updateWithRssiMeasurement:(id)a3
{
  v11 = a3;
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:{objc_msgSend(v11, "rssi")}];
  [(PRBTCoreAnalytics *)self setBtRssiEstimate:v4];

  v5 = MEMORY[0x277CCABB0];
  v6 = [(PRBTCoreAnalytics *)self numberOfMeasurements];
  v7 = [v5 numberWithInt:{objc_msgSend(v6, "intValue") + 1}];
  [(PRBTCoreAnalytics *)self setNumberOfMeasurements:v7];

  v8 = [(PRBTCoreAnalytics *)self numberOfMeasurements];
  LODWORD(v7) = [v8 intValue];

  if (v7 == 1)
  {
    v9 = [(PRBTCoreAnalytics *)self eventDictionaryWithEvent:@"FirstRssiMeasurement"];
    v10 = [(PRBTCoreAnalytics *)self runData];
    [v10 firstRssiMeasurement:v9];

    [(PRBTCoreAnalytics *)self sendAnalyticsEvent:v9];
  }
}

- (void)targetMovingStateChanged:(BOOL)a3
{
  v3 = a3;
  v5 = MEMORY[0x277CBEB38];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:?];
  v9 = [v5 dictionaryWithObjectsAndKeys:{v6, @"status", 0}];

  v7 = [(PRBTCoreAnalytics *)self eventDictionaryWithEvent:@"TargetMoving"];
  if (v3)
  {
    if (![(PRBTCoreAnalytics *)self shouldLogMotionEvent])
    {
      goto LABEL_5;
    }

    [v7 addEntriesFromDictionary:v9];
    v8 = [(PRBTCoreAnalytics *)self runData];
    [v8 motion:v7];

    [(PRBTCoreAnalytics *)self sendAnalyticsEvent:v7];
  }

  [(PRBTCoreAnalytics *)self setShouldLogMotionEvent:!v3];
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
    [v7 setObject:@"com.apple.proximity.findmy.btlocalizer.event" forKeyedSubscript:@"eventName"];
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
        v12 = [(PRBTCoreAnalytics *)self authHeaderValue];
        [v9 setValue:v12 forHTTPHeaderField:@"Authorization"];

        v13 = [(PRBTCoreAnalytics *)self urlSession];
        v15 = MEMORY[0x277D85DD0];
        v16 = 3221225472;
        v17 = __41__PRBTCoreAnalytics_sendLiveOnAnalytics___block_invoke;
        v18 = &unk_279AD6088;
        v19 = v7;
        v14 = [v13 dataTaskWithRequest:v9 completionHandler:&v15];

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