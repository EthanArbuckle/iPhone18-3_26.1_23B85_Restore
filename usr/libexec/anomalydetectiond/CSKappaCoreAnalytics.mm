@interface CSKappaCoreAnalytics
+ (int)binValueForAge:(char)age bins:()array<float;
- (CSKappaCoreAnalytics)initWithSilo:(id)silo vendor:(id)vendor aopService:(void *)service;
- (id).cxx_construct;
- (id)sendUserInfoToCoreAnalytics;
- (void)clearSessionInfo;
- (void)clearUserInfo;
- (void)onCompanionMessage:(int)message data:(id)data receivedTimestamp:(double)timestamp;
- (void)onKappaSessionUpdate:(int)update data:(id)data;
- (void)processSessionDetails:(KappaSessionDetails *)details;
- (void)sendLocalKappaSessionInfoToCompanion;
- (void)sendSessionInfoToCoreAnalytics;
- (void)startTimer:(double)timer;
- (void)stopTimer;
- (void)updatePersistedUserInfo;
- (void)updateUserInfoSettings;
- (void)updateUserStats;
- (void)uploadUserInfoWithHandler:(id)handler;
@end

@implementation CSKappaCoreAnalytics

- (void)uploadUserInfoWithHandler:(id)handler
{
  handlerCopy = handler;
  +[CSCoreAnalyticsUtils getSecondsSinceReboot];
  isSessionActive = self->_isSessionActive;
  if (isSessionActive)
  {
    if (handlerCopy)
    {
      cachedUploadedResults = 0;
LABEL_8:
      (handlerCopy)[2](handlerCopy, !isSessionActive, cachedUploadedResults);
    }
  }

  else if ([CSCoreAnalyticsUtils shouldAttemptCoreAnalyticsUploadWithInterval:@"CSKappaCoreAnalyticsLastSuccessfulUpload" persistentKey:self->_userInfoCadence])
  {
    v7 = +[CSPersistentConfiguration sharedConfiguration];
    v8 = [v7 objectForKey:@"CSKappaCoreAnalyticsDailyInfo"];

    [v8 getBytes:&self->_kappaUserInfo length:84];
    [(CSKappaCoreAnalytics *)self updateUserInfoSettings];
    [(CSKappaCoreAnalytics *)self updateUserStats];
    v9 = [NSData dataWithBytes:&self->_kappaUserInfo length:84];

    [(NSUserDefaults *)self->_defaults setObject:v9 forKey:@"CSKappaCoreAnalyticsDailyInfo"];
    objc_initWeak(&location, self);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000362C4;
    v14[3] = &unk_100417988;
    objc_copyWeak(&v16, &location);
    v10 = handlerCopy;
    v15 = v10;
    [(CLTimer *)self->_queryCompanionTimer setHandler:v14];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000364C0;
    v11[3] = &unk_1004179B0;
    objc_copyWeak(&v13, &location);
    v12 = v10;
    [(CSKappaCoreAnalytics *)self queryCompanion:1 completion:v11];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  else if (handlerCopy)
  {
    cachedUploadedResults = self->_cachedUploadedResults;
    goto LABEL_8;
  }
}

- (CSKappaCoreAnalytics)initWithSilo:(id)silo vendor:(id)vendor aopService:(void *)service
{
  siloCopy = silo;
  vendorCopy = vendor;
  if (qword_1004568A8 != -1)
  {
    sub_10003A44C();
  }

  v10 = qword_1004568B0;
  if (os_log_type_enabled(qword_1004568B0, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "initWithSilo", buf, 2u);
  }

  self->_valid = 1;
  objc_storeStrong(&self->_vendor, vendor);
  self->_aopSvc = service;
  v11 = +[NSUserDefaults standardUserDefaults];
  defaults = self->_defaults;
  self->_defaults = v11;

  v13 = +[NSNull null];
  v14 = +[NSNull null];
  v15 = [NSMutableArray arrayWithObjects:v13, v14, 0];
  queryCompletions = self->_queryCompletions;
  self->_queryCompletions = v15;

  v17 = [vendorCopy proxyForService:@"CSCompanionService"];
  companion = self->_companion;
  self->_companion = v17;

  [(CSCompanionServiceProtocol *)self->_companion registerDelegate:self inSilo:siloCopy];
  [(CSCompanionServiceProtocol *)self->_companion registerClient:self];
  self->_isSessionActive = 0;
  [(CSKappaCoreAnalytics *)self clearUserInfo];
  [(CSKappaCoreAnalytics *)self clearSessionInfo];
  v19 = +[CSPersistentConfiguration sharedConfiguration];
  v20 = [v19 objectForKey:@"CSKappaCoreAnalyticsDailyInfo"];

  if (!v20)
  {
    if (qword_1004568A8 != -1)
    {
      sub_10003A460();
    }

    v21 = qword_1004568B0;
    if (os_log_type_enabled(qword_1004568B0, OS_LOG_TYPE_INFO))
    {
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "First time tracking daily aggregates", v26, 2u);
    }

    v20 = [NSData dataWithBytes:&self->_kappaUserInfo length:84];
    [NSUserDefaults setObject:"setObject:forKey:" forKey:?];
  }

  newTimer = [siloCopy newTimer];
  queryCompanionTimer = self->_queryCompanionTimer;
  self->_queryCompanionTimer = newTimer;

  v24 = +[CSPersistentConfiguration sharedConfiguration];
  self->_userInfoCadence = [v24 integerForKey:@"CoreAnalyticsUserInfoCadence"];

  if (!self->_userInfoCadence)
  {
    self->_userInfoCadence = 86400;
  }

  return self;
}

- (void)startTimer:(double)timer
{
  if (qword_1004568A8 != -1)
  {
    sub_10003A44C();
  }

  v5 = qword_1004568B0;
  if (os_log_type_enabled(qword_1004568B0, OS_LOG_TYPE_DEBUG))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "startTimer", v6, 2u);
  }

  [(CLTimer *)self->_queryCompanionTimer setNextFireDelay:timer interval:1.79769313e308];
}

- (void)stopTimer
{
  if (qword_1004568A8 != -1)
  {
    sub_10003A44C();
  }

  v3 = qword_1004568B0;
  if (os_log_type_enabled(qword_1004568B0, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "stopTimer", v4, 2u);
  }

  [(CLTimer *)self->_queryCompanionTimer setNextFireDelay:1.79769313e308 interval:1.79769313e308];
}

- (void)clearUserInfo
{
  if (qword_1004568A8 != -1)
  {
    sub_10003A44C();
  }

  v3 = qword_1004568B0;
  if (os_log_type_enabled(qword_1004568B0, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "clearUserInfo", v4, 2u);
  }

  *&self->_kappaUserInfo.isCompanionPaired = 0;
  self->_kappaUserInfo.userAgeBin = -1;
  *&self->_kappaUserInfo.firstPartyEnabled = 0u;
  *&self->_kappaUserInfo.numKappaEvents = 0u;
  *&self->_kappaUserInfo.numUISurfaced = 0u;
  *&self->_kappaUserInfo.numUserRequestedSOS = 0u;
  *&self->_kappaUserInfo.numPlacedCalls = 0;
}

- (id)sendUserInfoToCoreAnalytics
{
  if (qword_1004568A8 != -1)
  {
    sub_10003A44C();
  }

  v3 = qword_1004568B0;
  if (os_log_type_enabled(qword_1004568B0, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "sendUserInfoToCoreAnalytics", buf, 2u);
  }

  v4 = +[CSPermissions sharedInstance];
  isAuthorizedForIS = [v4 isAuthorizedForIS];

  +[CSCoreAnalyticsUtils getSecondsSinceReboot];
  v6 = v5;
  if (v5 > self->_userInfoCadence)
  {
    if (qword_1004568A8 != -1)
    {
      sub_10003A460();
    }

    v7 = qword_1004568B0;
    if (os_log_type_enabled(qword_1004568B0, OS_LOG_TYPE_DEBUG))
    {
      userInfoCadence = self->_userInfoCadence;
      *buf = 134217984;
      v51 = userInfoCadence;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "secondsSinceReboot exceeds UserInfo cadence. Capping at cadence pd:%llu", buf, 0xCu);
    }

    v6 = self->_userInfoCadence;
  }

  v9 = +[CSPersistentConfiguration sharedConfiguration];
  v48 = [v9 objectForKey:@"CSKappaCoreAnalyticsLastSuccessfulUpload"];

  if (v48)
  {
    v10 = v48;
    v11 = +[NSDate date];
    [v11 timeIntervalSinceDate:v10];
    v13 = v12;

    v14 = (v13 / 60.0);
  }

  else
  {
    v14 = 0xFFFFFFFFLL;
  }

  if (qword_1004568A8 != -1)
  {
    sub_10003A460();
  }

  v15 = qword_1004568B0;
  if (os_log_type_enabled(qword_1004568B0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v51) = v14;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Sending %d mins of Kappa userinfo to CA", buf, 8u);
  }

  if (isAuthorizedForIS)
  {
    v56[0] = @"didEnableKappaDetection";
    v46 = [NSNumber numberWithBool:self->_kappaUserInfo.didEnableKappaDetection];
    v57[0] = v46;
    v56[1] = @"didEnableKappaDetection_companion";
    v45 = [NSNumber numberWithBool:self->_kappaUserInfo.didEnableKappaDetection_companion];
    v57[1] = v45;
    v56[2] = @"isImproveSafetyEnabled";
    v44 = [NSNumber numberWithBool:self->_kappaUserInfo.isImproveSafetyEnabled];
    v57[2] = v44;
    v56[3] = @"isImproveSafetyEnabled_companion";
    v43 = [NSNumber numberWithBool:self->_kappaUserInfo.isImproveSafetyEnabled_companion];
    v57[3] = v43;
    v56[4] = @"userAgeBin";
    v42 = [NSNumber numberWithInt:self->_kappaUserInfo.userAgeBin];
    v57[4] = v42;
    v56[5] = @"firstPartyEnabled";
    v41 = [NSNumber numberWithBool:self->_kappaUserInfo.firstPartyEnabled];
    v57[5] = v41;
    v56[6] = @"thirdPartyEnabled";
    v40 = [NSNumber numberWithBool:self->_kappaUserInfo.thirdPartyEnabled];
    v57[6] = v40;
    v56[7] = @"firstPartyEnabled_companion";
    v39 = [NSNumber numberWithBool:self->_kappaUserInfo.firstPartyEnabled_companion];
    v57[7] = v39;
    v56[8] = @"thirdPartyEnabled_companion";
    v38 = [NSNumber numberWithBool:self->_kappaUserInfo.thirdPartyEnabled_companion];
    v57[8] = v38;
    v56[9] = @"totalDrivingTime";
    v37 = [NSNumber numberWithInt:self->_kappaUserInfo.totalDrivingTime];
    v57[9] = v37;
    v56[10] = @"numKappaSessions";
    v36 = [NSNumber numberWithInt:self->_kappaUserInfo.numKappaSessions];
    v57[10] = v36;
    v56[11] = @"numKappaEvents";
    v35 = [NSNumber numberWithInt:self->_kappaUserInfo.numKappaEvents];
    v57[11] = v35;
    v56[12] = @"numTriggersAllSessions";
    v34 = [NSNumber numberWithInt:self->_kappaUserInfo.numTriggersAllSessions];
    v57[12] = v34;
    v56[13] = @"numUISurfaced";
    v33 = [NSNumber numberWithInt:self->_kappaUserInfo.numUISurfaced];
    v57[13] = v33;
    v56[14] = @"numCancelledUI";
    v32 = [NSNumber numberWithInt:self->_kappaUserInfo.numCancelledUI];
    v57[14] = v32;
    v56[15] = @"numUserRequestedSOS";
    v31 = [NSNumber numberWithInt:self->_kappaUserInfo.numUserRequestedSOS];
    v57[15] = v31;
    v56[16] = @"numAutoRequestedSOS";
    v30 = [NSNumber numberWithInt:self->_kappaUserInfo.numAutoRequestedSOS];
    v57[16] = v30;
    v56[17] = @"numPlacedCalls";
    v29 = [NSNumber numberWithInt:self->_kappaUserInfo.numPlacedCalls];
    v57[17] = v29;
    v56[18] = @"numKappaSessions_companion";
    v28 = [NSNumber numberWithInt:self->_kappaUserInfo.numKappaSessions_companion];
    v57[18] = v28;
    v56[19] = @"numKappaEvents_companion";
    v27 = [NSNumber numberWithInt:self->_kappaUserInfo.numKappaEvents_companion];
    v57[19] = v27;
    v56[20] = @"numTriggersAllSessions_companion";
    v16 = [NSNumber numberWithInt:self->_kappaUserInfo.numTriggersAllSessions_companion];
    v57[20] = v16;
    v56[21] = @"numUISurfaced_companion";
    v17 = [NSNumber numberWithInt:self->_kappaUserInfo.numUISurfaced_companion];
    v57[21] = v17;
    v56[22] = @"numCancelledUI_companion";
    v18 = [NSNumber numberWithInt:self->_kappaUserInfo.numCancelledUI_companion];
    v57[22] = v18;
    v56[23] = @"numUserRequestedSOS_companion";
    v19 = [NSNumber numberWithInt:self->_kappaUserInfo.numUserRequestedSOS_companion];
    v57[23] = v19;
    v56[24] = @"numAutoRequestedSOS_companion";
    v20 = [NSNumber numberWithInt:self->_kappaUserInfo.numAutoRequestedSOS_companion];
    v57[24] = v20;
    v56[25] = @"numPlacedCalls_companion";
    v21 = [NSNumber numberWithInt:self->_kappaUserInfo.numPlacedCalls_companion];
    v57[25] = v21;
    v56[26] = @"minutesSinceReboot_capped";
    v22 = [NSNumber numberWithDouble:v6 / 60.0];
    v57[26] = v22;
    v56[27] = @"eventDurationMinutes";
    v23 = [NSNumber numberWithInt:v14];
    v57[27] = v23;
    v24 = [NSDictionary dictionaryWithObjects:v57 forKeys:v56 count:28];
  }

  else
  {
    v54[0] = @"didEnableKappaDetection";
    v46 = [NSNumber numberWithBool:self->_kappaUserInfo.didEnableKappaDetection];
    v55[0] = v46;
    v54[1] = @"didEnableKappaDetection_companion";
    v45 = [NSNumber numberWithBool:self->_kappaUserInfo.didEnableKappaDetection_companion];
    v55[1] = v45;
    v54[2] = @"isImproveSafetyEnabled";
    v44 = [NSNumber numberWithBool:self->_kappaUserInfo.isImproveSafetyEnabled];
    v55[2] = v44;
    v54[3] = @"isImproveSafetyEnabled_companion";
    v43 = [NSNumber numberWithBool:self->_kappaUserInfo.isImproveSafetyEnabled_companion];
    v55[3] = v43;
    v54[4] = @"firstPartyEnabled";
    v42 = [NSNumber numberWithBool:self->_kappaUserInfo.firstPartyEnabled];
    v55[4] = v42;
    v54[5] = @"thirdPartyEnabled";
    v41 = [NSNumber numberWithBool:self->_kappaUserInfo.thirdPartyEnabled];
    v55[5] = v41;
    v54[6] = @"firstPartyEnabled_companion";
    v40 = [NSNumber numberWithBool:self->_kappaUserInfo.firstPartyEnabled_companion];
    v55[6] = v40;
    v54[7] = @"thirdPartyEnabled_companion";
    v39 = [NSNumber numberWithBool:self->_kappaUserInfo.thirdPartyEnabled_companion];
    v55[7] = v39;
    v54[8] = @"eventDurationMinutes";
    v38 = [NSNumber numberWithInt:v14];
    v55[8] = v38;
    v24 = [NSDictionary dictionaryWithObjects:v55 forKeys:v54 count:9];
  }

  if (qword_1004568A8 != -1)
  {
    sub_10003A460();
  }

  v25 = qword_1004568B0;
  if (os_log_type_enabled(qword_1004568B0, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v51 = v24;
    v52 = 1024;
    v53 = isAuthorizedForIS;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "Kappa UserInfo:%@, ImproveSafety:%d", buf, 0x12u);
  }

  v49 = v24;
  AnalyticsSendEventLazy();
  objc_storeStrong(&self->_cachedUploadedResults, v24);

  return v49;
}

- (void)clearSessionInfo
{
  if (qword_1004568A8 != -1)
  {
    sub_10003A44C();
  }

  v3 = qword_1004568B0;
  if (os_log_type_enabled(qword_1004568B0, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "clearSessionInfo", v4, 2u);
  }

  self->_isSessionActive = 0;
  *&self->_kappaSessionInfo.detectionDecision = 0;
  self->_kappaSessionInfo.drivingTimeStartToFirstTrigger = 0;
  self->_kappaSessionInfo.sessionStartTimestamp = -1.0;
  *&self->_kappaSessionInfo.sessionDuration = 0;
  *&self->_kappaSessionInfo.numTriggers = 0;
  *&self->_kappaSessionInfo.numRolloverCrashes = 0;
  self->_kappaSessionInfo.numDeescalations = 0;
  *&self->_kappaSessionInfo.coarseLat = vdup_n_s32(0x447A0000u);
  self->_kappaSessionInfo.sunElevation = 1000.0;
  *&self->_kappaSessionInfo.signalEnvironment = 1000;
  self->_kappaSessionInfo.outgoingCallTimestamp = 0;
  self->_kappaSessionInfo.deescalationBitmap = 0;
  *&self->_kappaSessionInfo.maxDeltaVXYOverEpoch = 0xBF80000000000000;
  *&self->_kappaSessionInfo.didRaiseUI = 0;
  *&self->_kappaSessionInfo.isSOSResponseAlreadyActive = 0;
}

- (void)processSessionDetails:(KappaSessionDetails *)details
{
  if (qword_1004568A8 != -1)
  {
    sub_10003A44C();
  }

  v5 = qword_1004568B0;
  if (os_log_type_enabled(qword_1004568B0, OS_LOG_TYPE_DEBUG))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "processSessionDetails", v8, 2u);
  }

  self->_kappaSessionInfo.trigger_bitmap = details->trigger_bitmap;
  signalEnvironment = details->signalEnvironment;
  self->_kappaSessionInfo.gpsDuration = details->gpsCount;
  self->_kappaSessionInfo.serverConfigVersion = details->serverConfigVersion;
  self->_kappaSessionInfo.signalEnvironment = signalEnvironment;
  *&self->_kappaSessionInfo.numPlanarCrashes = *&details->numPlanarCrashes;
  v7 = *&details->maxDeltaVXYBiggestImpact;
  *&self->_kappaSessionInfo.coarseLat = *&details->coarseLat;
  self->_kappaSessionInfo.sunElevation = details->sunElevation;
  *&self->_kappaSessionInfo.maxDeltaVXYBiggestImpact = v7;
  self->_kappaSessionInfo.deescalationBitmap = details->deescalationBitmap;
}

- (void)sendLocalKappaSessionInfoToCompanion
{
  [(CSKappaCoreAnalytics *)self updateUserInfoSettings];
  didEnableKappaDetection = self->_kappaUserInfo.didEnableKappaDetection;
  v12[0] = self->_kappaUserInfo.didEnableKappaDetection;
  isImproveSafetyEnabled = self->_kappaUserInfo.isImproveSafetyEnabled;
  v12[1] = self->_kappaUserInfo.isImproveSafetyEnabled;
  firstPartyEnabled = self->_kappaUserInfo.firstPartyEnabled;
  v12[2] = self->_kappaUserInfo.firstPartyEnabled;
  thirdPartyEnabled = self->_kappaUserInfo.thirdPartyEnabled;
  v12[3] = self->_kappaUserInfo.thirdPartyEnabled;
  detectionDecision = self->_kappaSessionInfo.detectionDecision;
  numTriggers = self->_kappaSessionInfo.numTriggers;
  v14 = numTriggers;
  v13 = detectionDecision;
  if (qword_1004568A8 != -1)
  {
    sub_10003A44C();
  }

  v9 = qword_1004568B0;
  if (os_log_type_enabled(qword_1004568B0, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67110400;
    v16 = didEnableKappaDetection;
    v17 = 1024;
    v18 = isImproveSafetyEnabled;
    v19 = 1024;
    v20 = firstPartyEnabled;
    v21 = 1024;
    v22 = thirdPartyEnabled;
    v23 = 1024;
    v24 = detectionDecision;
    v25 = 1024;
    v26 = numTriggers;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "sendLocalKappaSessionInfoToCompanion %d %d %d %d %d %d", buf, 0x26u);
  }

  companion = self->_companion;
  v11 = [NSData dataWithBytes:v12 length:12];
  [(CSCompanionServiceProtocol *)companion sendData:v11 type:8];
}

- (void)sendSessionInfoToCoreAnalytics
{
  if (qword_1004568A8 != -1)
  {
    sub_10003A44C();
  }

  v3 = qword_1004568B0;
  if (os_log_type_enabled(qword_1004568B0, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "sendSessionInfoToCoreAnalytics", buf, 2u);
  }

  v4 = +[CSPermissions sharedInstance];
  isAuthorizedForIS = [v4 isAuthorizedForIS];

  if (isAuthorizedForIS)
  {
    v57[0] = @"detectionDecision";
    v53 = [NSNumber numberWithBool:self->_kappaSessionInfo.detectionDecision];
    v58[0] = v53;
    v57[1] = @"isCompanionConnected";
    v51 = [NSNumber numberWithBool:self->_kappaSessionInfo.isCompanionConnected];
    v58[1] = v51;
    v57[2] = @"didCompanionTrigger";
    v50 = [NSNumber numberWithBool:self->_kappaSessionInfo.didCompanionTrigger];
    v58[2] = v50;
    v57[3] = @"companionDetectionDecision";
    v49 = [NSNumber numberWithBool:self->_kappaSessionInfo.companionDetectionDecision];
    v58[3] = v49;
    v57[4] = @"trigger_bitmap";
    v48 = [NSNumber numberWithInt:self->_kappaSessionInfo.trigger_bitmap];
    v58[4] = v48;
    v57[5] = @"drivingTimeStartToFirstTrigger";
    v47 = [NSNumber numberWithInt:self->_kappaSessionInfo.drivingTimeStartToFirstTrigger];
    v58[5] = v47;
    v57[6] = @"sessionDuration";
    v46 = [NSNumber numberWithInt:self->_kappaSessionInfo.sessionDuration];
    v58[6] = v46;
    v57[7] = @"gpsDuration";
    v45 = [NSNumber numberWithInt:self->_kappaSessionInfo.gpsDuration];
    v58[7] = v45;
    v57[8] = @"numTriggers";
    v44 = [NSNumber numberWithInt:self->_kappaSessionInfo.numTriggers];
    v58[8] = v44;
    v57[9] = @"numPlanarCrashes";
    v43 = [NSNumber numberWithInt:self->_kappaSessionInfo.numPlanarCrashes];
    v58[9] = v43;
    v57[10] = @"numRolloverCrashes";
    v42 = [NSNumber numberWithInt:self->_kappaSessionInfo.numRolloverCrashes];
    v58[10] = v42;
    v57[11] = @"numHighSpeedCrashes";
    v41 = [NSNumber numberWithInt:self->_kappaSessionInfo.numHighSpeedCrashes];
    v58[11] = v41;
    v57[12] = @"numDeescalations";
    v40 = [NSNumber numberWithInt:self->_kappaSessionInfo.numDeescalations];
    v58[12] = v40;
    v57[13] = @"maxDeltaVXYBiggestImpact";
    v39 = [NSNumber numberWithInt:self->_kappaSessionInfo.maxDeltaVXYBiggestImpact];
    v58[13] = v39;
    v57[14] = @"maxDeltaVXYOverEpoch";
    v38 = [NSNumber numberWithInt:self->_kappaSessionInfo.maxDeltaVXYOverEpoch];
    v58[14] = v38;
    v57[15] = @"serverConfigVersion";
    *&v6 = self->_kappaSessionInfo.serverConfigVersion;
    v37 = [NSNumber numberWithFloat:v6];
    v58[15] = v37;
    v57[16] = @"didRaiseUI";
    v36 = [NSNumber numberWithBool:self->_kappaSessionInfo.didRaiseUI];
    v58[16] = v36;
    v57[17] = @"didRaiseUI_companion";
    v35 = [NSNumber numberWithBool:self->_kappaSessionInfo.didRaiseUI_companion];
    v58[17] = v35;
    v57[18] = @"didCancelUI";
    v34 = [NSNumber numberWithBool:self->_kappaSessionInfo.didCancelUI];
    v58[18] = v34;
    v57[19] = @"didCancelUI_companion";
    v33 = [NSNumber numberWithBool:self->_kappaSessionInfo.didCancelUI_companion];
    v58[19] = v33;
    v57[20] = @"isSOSResponseSuccess";
    v32 = [NSNumber numberWithBool:self->_kappaSessionInfo.isSOSResponseSuccess];
    v58[20] = v32;
    v57[21] = @"isSOSResponseSuccessPushedToCompanion";
    v31 = [NSNumber numberWithBool:self->_kappaSessionInfo.isSOSResponseSuccessPushedToCompanion];
    v58[21] = v31;
    v57[22] = @"isSOSResponseAlreadyActive";
    v30 = [NSNumber numberWithBool:self->_kappaSessionInfo.isSOSResponseAlreadyActive];
    v58[22] = v30;
    v57[23] = @"isSOSResponseFailed";
    v7 = [NSNumber numberWithBool:self->_kappaSessionInfo.isSOSResponseFailed];
    v58[23] = v7;
    v57[24] = @"isSOSResponseNotSupported";
    v8 = [NSNumber numberWithBool:self->_kappaSessionInfo.isSOSResponseNotSupported];
    v58[24] = v8;
    v57[25] = @"isSOSResponseNotEnabled";
    v9 = [NSNumber numberWithBool:self->_kappaSessionInfo.isSOSResponseNotEnabled];
    v58[25] = v9;
    v57[26] = @"isSOSUserInitiated";
    v10 = [NSNumber numberWithBool:self->_kappaSessionInfo.isSOSUserInitiated];
    v58[26] = v10;
    v57[27] = @"isSOSAutoInitiated";
    v11 = [NSNumber numberWithBool:self->_kappaSessionInfo.isSOSAutoInitiated];
    v58[27] = v11;
    v57[28] = @"didPlaceCall";
    v12 = [NSNumber numberWithBool:self->_kappaSessionInfo.didPlaceCall];
    v58[28] = v12;
    v57[29] = @"isMicBlockedDuringEscalations";
    v13 = [NSNumber numberWithBool:self->_kappaSessionInfo.isMicBlockedDuringEscalations];
    v58[29] = v13;
    v57[30] = @"deescalationPath";
    v14 = [NSNumber numberWithUnsignedInt:self->_kappaSessionInfo.deescalationBitmap];
    v58[30] = v14;
    v52 = [NSDictionary dictionaryWithObjects:v58 forKeys:v57 count:31];

    if (qword_1004568A8 != -1)
    {
      sub_10003A460();
    }

    v15 = qword_1004568B0;
    if (os_log_type_enabled(qword_1004568B0, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v56 = *&v52;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "Kappa SessionInfo: %@", buf, 0xCu);
    }

    v16 = objc_alloc_init(NSMutableDictionary);
    [v16 setDictionary:v52];
    if (self->_kappaSessionInfo.coarseLat != 1000.0)
    {
      v17 = [NSNumber numberWithFloat:?];
      [v16 setObject:v17 forKeyedSubscript:@"coarseLat"];

      if (qword_1004568A8 != -1)
      {
        sub_10003A460();
      }

      v18 = qword_1004568B0;
      if (os_log_type_enabled(qword_1004568B0, OS_LOG_TYPE_DEBUG))
      {
        coarseLat = self->_kappaSessionInfo.coarseLat;
        *buf = 134545665;
        v56 = coarseLat;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "Kappa sessionInfo addition: coarseLat,%{sensitive}f", buf, 0xCu);
      }
    }

    if (self->_kappaSessionInfo.coarseLong != 1000.0)
    {
      v20 = [NSNumber numberWithFloat:?];
      [v16 setObject:v20 forKeyedSubscript:@"coarseLong"];

      if (qword_1004568A8 != -1)
      {
        sub_10003A460();
      }

      v21 = qword_1004568B0;
      if (os_log_type_enabled(qword_1004568B0, OS_LOG_TYPE_DEBUG))
      {
        coarseLong = self->_kappaSessionInfo.coarseLong;
        *buf = 134545665;
        v56 = coarseLong;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "Kappa sessionInfo addition: coarseLong,%{sensitive}f", buf, 0xCu);
      }
    }

    if (self->_kappaSessionInfo.sunElevation != 1000.0)
    {
      v23 = [NSNumber numberWithFloat:?];
      [v16 setObject:v23 forKeyedSubscript:@"sunElevation"];

      if (qword_1004568A8 != -1)
      {
        sub_10003A460();
      }

      v24 = qword_1004568B0;
      if (os_log_type_enabled(qword_1004568B0, OS_LOG_TYPE_DEBUG))
      {
        sunElevation = self->_kappaSessionInfo.sunElevation;
        *buf = 134217984;
        v56 = sunElevation;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "Kappa sessionInfo addition: sunElevation,%f", buf, 0xCu);
      }
    }

    if (self->_kappaSessionInfo.signalEnvironment != 1000)
    {
      v26 = [NSNumber numberWithInt:?];
      [v16 setObject:v26 forKeyedSubscript:@"signalEnvironment"];

      if (qword_1004568A8 != -1)
      {
        sub_10003A460();
      }

      v27 = qword_1004568B0;
      if (os_log_type_enabled(qword_1004568B0, OS_LOG_TYPE_DEBUG))
      {
        signalEnvironment = self->_kappaSessionInfo.signalEnvironment;
        *buf = 67109120;
        LODWORD(v56) = signalEnvironment;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "Kappa sessionInfo addition: signalEnvironment,%d", buf, 8u);
      }
    }

    v54 = v16;
    AnalyticsSendEventLazy();
  }

  else
  {
    if (qword_1004568A8 != -1)
    {
      sub_10003A460();
    }

    v29 = qword_1004568B0;
    if (os_log_type_enabled(qword_1004568B0, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "Not authorized to collect data, discarding session info", buf, 2u);
    }
  }
}

- (void)updatePersistedUserInfo
{
  if (qword_1004568A8 != -1)
  {
    sub_10003A44C();
  }

  v2 = qword_1004568B0;
  if (os_log_type_enabled(qword_1004568B0, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "updatePersistedUserInfo", buf, 2u);
  }

  v46 = 0;
  *buf = 0;
  v47 = -1;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0;
  v3 = +[CSPersistentConfiguration sharedConfiguration];
  v44 = [v3 objectForKey:@"CSKappaCoreAnalyticsDailyInfo"];

  if (v44)
  {
    if (qword_1004568A8 != -1)
    {
      sub_10003A460();
    }

    v4 = qword_1004568B0;
    if (os_log_type_enabled(qword_1004568B0, OS_LOG_TYPE_DEBUG))
    {
      *v55 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Valid persisted UserInfo found", v55, 2u);
    }

    [v44 getBytes:buf length:84];
  }

  v57[0] = @"numKappaSessions";
  v40 = [NSNumber numberWithInt:DWORD2(v48)];
  v58[0] = v40;
  v57[1] = @"numKappaEvents";
  v38 = [NSNumber numberWithInt:v49];
  v58[1] = v38;
  v57[2] = @"numTriggersAllSessions";
  v36 = [NSNumber numberWithInt:DWORD2(v49)];
  v58[2] = v36;
  v57[3] = @"numUISurfaced";
  v34 = [NSNumber numberWithInt:v50.u32[0]];
  v58[3] = v34;
  v57[4] = @"numCancelledUI";
  v32 = [NSNumber numberWithInt:v50.u32[2]];
  v58[4] = v32;
  v57[5] = @"numUserRequestedSOS";
  v30 = [NSNumber numberWithInt:v51.u32[0]];
  v58[5] = v30;
  v57[6] = @"numAutoRequestedSOS";
  v28 = [NSNumber numberWithInt:v51.u32[2]];
  v58[6] = v28;
  v57[7] = @"numPlacedCalls";
  v5 = [NSNumber numberWithInt:v52.u32[0]];
  v58[7] = v5;
  v57[8] = @"numKappaSessions_companion";
  v6 = [NSNumber numberWithInt:HIDWORD(v48)];
  v58[8] = v6;
  v57[9] = @"numKappaEvents_companion";
  v7 = [NSNumber numberWithInt:DWORD1(v49)];
  v58[9] = v7;
  v57[10] = @"numTriggersAllSessions_companion";
  v8 = [NSNumber numberWithInt:HIDWORD(v49)];
  v58[10] = v8;
  v57[11] = @"numUISurfaced_companion";
  v9 = [NSNumber numberWithInt:v50.u32[1]];
  v58[11] = v9;
  v57[12] = @"numCancelledUI_companion";
  v10 = [NSNumber numberWithInt:v50.u32[3]];
  v58[12] = v10;
  v57[13] = @"numUserRequestedSOS_companion";
  v11 = [NSNumber numberWithInt:v51.u32[1]];
  v58[13] = v11;
  v57[14] = @"numAutoRequestedSOS_companion";
  v12 = [NSNumber numberWithInt:v51.u32[3]];
  v58[14] = v12;
  v57[15] = @"numPlacedCalls_companion";
  v13 = [NSNumber numberWithInt:v52.u32[1]];
  v58[15] = v13;
  v42 = [NSDictionary dictionaryWithObjects:v58 forKeys:v57 count:16];

  if (qword_1004568A8 != -1)
  {
    sub_10003A460();
  }

  v14 = qword_1004568B0;
  if (os_log_type_enabled(qword_1004568B0, OS_LOG_TYPE_DEBUG))
  {
    *v55 = 138412290;
    v56 = v42;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "Persisted UserInfo:%@", v55, 0xCu);
  }

  v15 = v49 + self->_kappaUserInfo.numKappaEvents;
  DWORD2(v48) += self->_kappaUserInfo.numKappaSessions;
  LODWORD(v49) = v15;
  DWORD2(v49) += self->_kappaUserInfo.numTriggersAllSessions;
  v50 = vaddq_s32(v50, *&self->_kappaUserInfo.numUISurfaced);
  v51 = vaddq_s32(v51, *&self->_kappaUserInfo.numUserRequestedSOS);
  v52 = vadd_s32(v52, *&self->_kappaUserInfo.numPlacedCalls);
  v53[0] = @"numKappaSessions";
  v54[0] = [NSNumber numberWithInt:?];
  v53[1] = @"numKappaEvents";
  v41 = v54[0];
  v39 = [NSNumber numberWithInt:v49];
  v54[1] = v39;
  v53[2] = @"numTriggersAllSessions";
  v37 = [NSNumber numberWithInt:DWORD2(v49)];
  v54[2] = v37;
  v53[3] = @"numUISurfaced";
  v35 = [NSNumber numberWithInt:v50.u32[0]];
  v54[3] = v35;
  v53[4] = @"numCancelledUI";
  v33 = [NSNumber numberWithInt:v50.u32[2]];
  v54[4] = v33;
  v53[5] = @"numUserRequestedSOS";
  v31 = [NSNumber numberWithInt:v51.u32[0]];
  v54[5] = v31;
  v53[6] = @"numAutoRequestedSOS";
  v29 = [NSNumber numberWithInt:v51.u32[2]];
  v54[6] = v29;
  v53[7] = @"numPlacedCalls";
  v16 = [NSNumber numberWithInt:v52.u32[0]];
  v54[7] = v16;
  v53[8] = @"numKappaSessions_companion";
  v17 = [NSNumber numberWithInt:HIDWORD(v48)];
  v54[8] = v17;
  v53[9] = @"numKappaEvents_companion";
  v18 = [NSNumber numberWithInt:DWORD1(v49)];
  v54[9] = v18;
  v53[10] = @"numTriggersAllSessions_companion";
  v19 = [NSNumber numberWithInt:HIDWORD(v49)];
  v54[10] = v19;
  v53[11] = @"numUISurfaced_companion";
  v20 = [NSNumber numberWithInt:v50.u32[1]];
  v54[11] = v20;
  v53[12] = @"numCancelledUI_companion";
  v21 = [NSNumber numberWithInt:v50.u32[3]];
  v54[12] = v21;
  v53[13] = @"numUserRequestedSOS_companion";
  v22 = [NSNumber numberWithInt:v51.u32[1]];
  v54[13] = v22;
  v53[14] = @"numAutoRequestedSOS_companion";
  v23 = [NSNumber numberWithInt:v51.u32[3]];
  v54[14] = v23;
  v53[15] = @"numPlacedCalls_companion";
  v24 = [NSNumber numberWithInt:v52.u32[1]];
  v54[15] = v24;
  v25 = [NSDictionary dictionaryWithObjects:v54 forKeys:v53 count:16];

  if (qword_1004568A8 != -1)
  {
    sub_10003A460();
  }

  v26 = qword_1004568B0;
  if (os_log_type_enabled(qword_1004568B0, OS_LOG_TYPE_DEBUG))
  {
    *v55 = 138412290;
    v56 = v25;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "Updated - UserInfo:%@", v55, 0xCu);
  }

  v27 = [[NSData alloc] initWithBytes:buf length:84];
  [(NSUserDefaults *)self->_defaults setObject:v27 forKey:@"CSKappaCoreAnalyticsDailyInfo"];
  [(CSKappaCoreAnalytics *)self clearUserInfo];
}

- (void)updateUserInfoSettings
{
  if (qword_1004568A8 != -1)
  {
    sub_10003A44C();
  }

  v3 = qword_1004568B0;
  if (os_log_type_enabled(qword_1004568B0, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v7) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "updateUserInfoSettings", &v7, 2u);
  }

  self->_kappaUserInfo.didEnableKappaDetection = +[SOSKappaManager isKappaEnabled];
  self->_kappaUserInfo.firstPartyEnabled = +[SOSUtilities kappaTriggersEmergencySOS];
  v4 = +[SOSUtilities getKappaThirdPartyDisplayNameForApp];
  if (qword_1004568A8 != -1)
  {
    sub_10003A460();
  }

  v5 = qword_1004568B0;
  if (os_log_type_enabled(qword_1004568B0, OS_LOG_TYPE_DEBUG))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "appName %@", &v7, 0xCu);
  }

  self->_kappaUserInfo.thirdPartyEnabled = v4 != 0;
  self->_kappaUserInfo.didEnableKappaDetection |= v4 != 0;
  v6 = +[CSPermissions sharedInstance];
  self->_kappaUserInfo.isImproveSafetyEnabled = [v6 isAuthorizedForIS];

  self->_kappaUserInfo.isCompanionPaired = [(CSCompanionServiceProtocol *)self->_companion syncget_isCompanionPaired];
}

- (void)updateUserStats
{
  if (qword_1004568A8 != -1)
  {
    sub_10003A44C();
  }

  v3 = qword_1004568B0;
  if (os_log_type_enabled(qword_1004568B0, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v13) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "updateUserStats", &v13, 2u);
  }

  v4 = objc_alloc_init(CSCAStat);
  v5 = +[CSPlatformInfo sharedInstance];
  isKappaLoggingDevice = [v5 isKappaLoggingDevice];

  if (isKappaLoggingDevice)
  {
    if (qword_1004568A8 != -1)
    {
      sub_10003A460();
    }

    v7 = qword_1004568B0;
    if (os_log_type_enabled(qword_1004568B0, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "getStat not supported", &v13, 2u);
    }

    armedSec = -1;
    self->_kappaUserInfo.userAgeBin = -1;
  }

  else
  {
    CSAOPSvc::getStat(self->_aopSvc, v4);
    userAge = [(CSCAStat *)v4 userAge];
    v14 = 1112014848;
    v13 = xmmword_10037E438;
    self->_kappaUserInfo.userAgeBin = [CSKappaCoreAnalytics binValueForAge:userAge bins:&v13];
    armedSec = [(CSCAStat *)v4 armedSec];
  }

  self->_kappaUserInfo.totalDrivingTime = armedSec;
  if (qword_1004568A8 != -1)
  {
    sub_10003A460();
  }

  v10 = qword_1004568B0;
  if (os_log_type_enabled(qword_1004568B0, OS_LOG_TYPE_DEBUG))
  {
    userAgeBin = self->_kappaUserInfo.userAgeBin;
    totalDrivingTime = self->_kappaUserInfo.totalDrivingTime;
    LODWORD(v13) = 67109376;
    DWORD1(v13) = userAgeBin;
    WORD4(v13) = 1024;
    *(&v13 + 10) = totalDrivingTime;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "age:%d, drivingTime:%d", &v13, 0xEu);
  }
}

+ (int)binValueForAge:(char)age bins:()array<float
{
  for (i = 0; i != 5; ++i)
  {
    if (a4->var0[i] >= age)
    {
      break;
    }
  }

  return i;
}

- (void)onKappaSessionUpdate:(int)update data:(id)data
{
  dataCopy = data;
  if (qword_1004568A8 != -1)
  {
    sub_10003A44C();
  }

  v7 = qword_1004568B0;
  if (os_log_type_enabled(qword_1004568B0, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    *&buf[4] = update;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "onKappaSessionUpdate type:%d", buf, 8u);
  }

  if (update > 5)
  {
    if (update <= 7)
    {
      if (update == 6)
      {
        buf[0] = 0;
        [dataCopy getBytes:buf length:1];
        if (buf[0] == 1)
        {
          ++self->_kappaUserInfo.numCancelledUI;
          self->_kappaSessionInfo.didCancelUI = 1;
        }

        else
        {
          ++self->_kappaUserInfo.numCancelledUI_companion;
          self->_kappaSessionInfo.didCancelUI_companion = 1;
        }
      }

      else
      {
        buf[0] = 0;
        [dataCopy getBytes:buf length:1];
        v8 = 80;
        if (buf[0])
        {
          v8 = 76;
        }

        v9 = 96;
        if (buf[0])
        {
          v9 = 92;
        }

        ++*(&self->super.isa + v8);
        ++*(&self->super.isa + v9);
        self->_kappaSessionInfo.isSOSUserInitiated = 1;
        self->_kappaSessionInfo.didPlaceCall = 1;
      }
    }

    else
    {
      switch(update)
      {
        case 8:
          buf[0] = 0;
          [dataCopy getBytes:buf length:1];
          v12 = 88;
          if (buf[0])
          {
            v12 = 84;
          }

          v13 = 96;
          if (buf[0])
          {
            v13 = 92;
          }

          ++*(&self->super.isa + v12);
          ++*(&self->super.isa + v13);
          *&self->_kappaSessionInfo.isSOSAutoInitiated = 257;
          break;
        case 9:
          if (self->_isSessionActive)
          {
            *buf = -1082130432;
            buf[4] = 0;
            v16 = 0uLL;
            *&buf[8] = 0;
            *&v17 = vdup_n_s32(0x447A0000u);
            *(&v17 + 1) = 0x3E8447A0000;
            *&v21[24] = 0;
            *&v24 = 0;
            DWORD2(v24) = 0;
            v18 = 0u;
            v19 = 0u;
            v20 = 0u;
            memset(v21, 0, 21);
            *&v23 = 0;
            v22 = 0uLL;
            DWORD2(v23) = 0;
            [dataCopy getBytes:buf length:176];
            v14[8] = v22;
            v14[9] = v23;
            v14[10] = v24;
            v14[4] = v19;
            v14[5] = v20;
            v14[6] = *v21;
            v14[7] = *&v21[16];
            v14[0] = *buf;
            v14[1] = v16;
            v14[2] = v17;
            v14[3] = v18;
            [(CSKappaCoreAnalytics *)self processSessionDetails:v14];
            [(CSKappaCoreAnalytics *)self sendLocalKappaSessionInfoToCompanion];
            [(CSKappaCoreAnalytics *)self sendSessionInfoToCoreAnalytics];
          }

          [(CSKappaCoreAnalytics *)self clearSessionInfo];
          [(CSKappaCoreAnalytics *)self updatePersistedUserInfo];
          break;
        case 10:
          self->_kappaSessionInfo.isCompanionConnected = 1;
          break;
      }
    }
  }

  else if (update <= 2)
  {
    if (update == 1)
    {
      ++self->_kappaUserInfo.numKappaEvents;
      self->_kappaSessionInfo.detectionDecision = 1;
    }

    else if (update == 2)
    {
      [dataCopy getBytes:buf length:112];
      if ((buf[1] & 0x14) == 0)
      {
        if (self->_kappaSessionInfo.sessionStartTimestamp == -1.0)
        {
          ++self->_kappaUserInfo.numKappaSessions;
          self->_kappaSessionInfo.sessionStartTimestamp = CFAbsoluteTimeGetCurrent();
          self->_isSessionActive = 1;
        }

        ++self->_kappaUserInfo.numTriggersAllSessions;
        ++self->_kappaSessionInfo.numTriggers;
        self->_kappaSessionInfo.drivingTimeStartToFirstTrigger = *&buf[2];
      }
    }
  }

  else if (update == 3)
  {
    self->_kappaSessionInfo.sessionDuration = (CFAbsoluteTimeGetCurrent() - self->_kappaSessionInfo.sessionStartTimestamp);
    if (qword_1004568A8 != -1)
    {
      sub_10003A460();
    }

    v10 = qword_1004568B0;
    if (os_log_type_enabled(qword_1004568B0, OS_LOG_TYPE_DEBUG))
    {
      sessionDuration = self->_kappaSessionInfo.sessionDuration;
      *buf = 67109120;
      *&buf[4] = sessionDuration;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "onKappaSessionUpdate sessionDuration:%d", buf, 8u);
    }
  }

  else
  {
    if (update != 4)
    {
      buf[0] = 0;
      [dataCopy getBytes:buf length:1];
      if (buf[0] == 1)
      {
        ++self->_kappaUserInfo.numUISurfaced;
        self->_kappaSessionInfo.didRaiseUI = 1;
      }

      else
      {
        ++self->_kappaUserInfo.numUISurfaced_companion;
        self->_kappaSessionInfo.didRaiseUI_companion = 1;
      }

      goto LABEL_60;
    }

    *buf = 0;
    [dataCopy getBytes:buf length:8];
    if (*buf <= 2)
    {
      if (!*buf)
      {
        self->_kappaSessionInfo.isSOSResponseSuccess = 1;
        goto LABEL_60;
      }

      if (*buf == 1)
      {
        self->_kappaSessionInfo.isSOSResponseNotSupported = 1;
        goto LABEL_60;
      }

      if (*buf != 2)
      {
        goto LABEL_60;
      }

      goto LABEL_55;
    }

    if (*buf <= 4)
    {
      if (*buf == 3)
      {
        self->_kappaSessionInfo.isSOSResponseFailed = 1;
      }

      else
      {
        self->_kappaSessionInfo.isSOSResponseNotEnabled = 1;
      }

      goto LABEL_60;
    }

    if (*buf == 5)
    {
      self->_kappaSessionInfo.isSOSResponseSuccessPushedToCompanion = 1;
      goto LABEL_60;
    }

    if (*buf == 6)
    {
LABEL_55:
      self->_kappaSessionInfo.isSOSResponseAlreadyActive = 1;
    }
  }

LABEL_60:
}

- (void)onCompanionMessage:(int)message data:(id)data receivedTimestamp:(double)timestamp
{
  dataCopy = data;
  if (qword_1004568A8 != -1)
  {
    sub_10003A44C();
  }

  v8 = qword_1004568B0;
  if (os_log_type_enabled(qword_1004568B0, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    *&buf[4] = message;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "onCompanionMessage type:%d", buf, 8u);
  }

  if (message <= 7)
  {
    if (message == 3)
    {
      [dataCopy getBytes:buf length:40];
      if ((v30[1] & 4) == 0 && vabdd_f64(*buf, self->_kappaSessionInfo.sessionStartTimestamp) <= 5.0)
      {
        self->_kappaSessionInfo.didCompanionTrigger = 1;
      }
    }

    else if (message == 6 && self->_isSessionActive)
    {
      self->_kappaSessionInfo.companionDetectionDecision = 1;
    }
  }

  else
  {
    switch(message)
    {
      case 10:
        [dataCopy getBytes:buf length:8];
        if (qword_1004568A8 != -1)
        {
          sub_10003A460();
        }

        v13 = qword_1004568B0;
        if (os_log_type_enabled(qword_1004568B0, OS_LOG_TYPE_DEBUG))
        {
          *v35 = 67109120;
          v36 = *buf;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "kTypeCompanionQueryReturn queryType:%d", v35, 8u);
        }

        if (*buf == 1)
        {
          v14 = [(NSMutableArray *)self->_queryCompletions objectAtIndex:1];
          v15 = +[NSNull null];
          v16 = v14 == v15;

          if (v16)
          {
            if (qword_1004568A8 != -1)
            {
              sub_10003A460();
            }

            v27 = qword_1004568B0;
            if (os_log_type_enabled(qword_1004568B0, OS_LOG_TYPE_DEBUG))
            {
              *v35 = 67109120;
              v36 = *buf;
              _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "CoreAnalytics No completion block for type %d found, ignoring", v35, 8u);
            }
          }

          else
          {
            v17 = [(NSMutableArray *)self->_queryCompletions objectAtIndex:1];
            (v17)[2](v17, dataCopy, *buf);
            queryCompletions = self->_queryCompletions;
            v19 = +[NSNull null];
            [(NSMutableArray *)queryCompletions replaceObjectAtIndex:1 withObject:v19];
          }
        }

        break;
      case 9:
        v28 = 0;
        [dataCopy getBytes:&v28 length:4];
        if (qword_1004568A8 != -1)
        {
          sub_10003A460();
        }

        v20 = qword_1004568B0;
        if (os_log_type_enabled(qword_1004568B0, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67109120;
          *&buf[4] = v28;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "kTypeCompanionQuery queryType:%d", buf, 8u);
        }

        if (v28 == 1)
        {
          [(CSKappaCoreAnalytics *)self updateUserInfoSettings];
          *v35 = v28;
          didEnableKappaDetection = self->_kappaUserInfo.didEnableKappaDetection;
          LOBYTE(v36) = self->_kappaUserInfo.didEnableKappaDetection;
          isImproveSafetyEnabled = self->_kappaUserInfo.isImproveSafetyEnabled;
          BYTE1(v36) = self->_kappaUserInfo.isImproveSafetyEnabled;
          firstPartyEnabled = self->_kappaUserInfo.firstPartyEnabled;
          BYTE2(v36) = self->_kappaUserInfo.firstPartyEnabled;
          thirdPartyEnabled = self->_kappaUserInfo.thirdPartyEnabled;
          HIBYTE(v36) = self->_kappaUserInfo.thirdPartyEnabled;
          if (qword_1004568A8 != -1)
          {
            sub_10003A460();
          }

          v25 = qword_1004568B0;
          if (os_log_type_enabled(qword_1004568B0, OS_LOG_TYPE_DEBUG))
          {
            *buf = 67109888;
            *&buf[4] = didEnableKappaDetection;
            *v30 = 1024;
            *&v30[2] = isImproveSafetyEnabled;
            *&v30[6] = 1024;
            *&v30[8] = firstPartyEnabled;
            *&v30[12] = 1024;
            *&v30[14] = thirdPartyEnabled;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "kTypeCompanionQuery didEnableKappaDetection:%d isImproveSafetyEnabled:%d firstPartyEnabled:%d thirdPartyEnabled:%d", buf, 0x1Au);
          }

          v26 = [[NSMutableData alloc] initWithBytes:v35 length:8];
          [(CSCompanionServiceProtocol *)self->_companion returnQueryToCompanion:v26];
        }

        break;
      case 8:
        [dataCopy getBytes:v35 length:12];
        if (qword_1004568A8 != -1)
        {
          sub_10003A460();
        }

        v9 = qword_1004568B0;
        if (os_log_type_enabled(qword_1004568B0, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67110400;
          *&buf[4] = v35[0];
          *v30 = 1024;
          *&v30[2] = v35[1];
          *&v30[6] = 1024;
          *&v30[8] = v35[2];
          *&v30[12] = 1024;
          *&v30[14] = v35[3];
          *&v30[18] = 1024;
          LODWORD(v31) = v36;
          WORD2(v31) = 1024;
          *(&v31 + 6) = v37;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "receiveLocalKappaSessionInfo didEnableKappaDetection:%d isImproveSafetyEnabled:%d firstPartyEnabled:%d thirdPartyEnabled:%d didDetectKappaEvent:%d numTriggers:%d", buf, 0x26u);
        }

        buf[4] = 0;
        *buf = 0;
        *v30 = -1;
        *&v30[4] = 0u;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v34 = 0;
        v10 = +[CSPersistentConfiguration sharedConfiguration];
        v11 = [v10 objectForKey:@"CSKappaCoreAnalyticsDailyInfo"];

        [v11 getBytes:buf length:84];
        buf[2] = v35[0];
        buf[4] = v35[1];
        *&v30[6] = *&v35[2];
        ++*&v30[16];
        HIDWORD(v31) += v37;
        if (v36 == 1)
        {
          ++DWORD1(v31);
        }

        v12 = [[NSData alloc] initWithBytes:buf length:84];
        [(NSUserDefaults *)self->_defaults setObject:v12 forKey:@"CSKappaCoreAnalyticsDailyInfo"];

        break;
    }
  }
}

- (id).cxx_construct
{
  *(self + 20) = 0;
  *(self + 4) = 0;
  *(self + 6) = -1;
  *(self + 28) = 0u;
  *(self + 44) = 0u;
  *(self + 60) = 0u;
  *(self + 76) = 0u;
  *(self + 92) = 0;
  *(self + 197) = 0;
  *(self + 25) = 0;
  return self;
}

@end