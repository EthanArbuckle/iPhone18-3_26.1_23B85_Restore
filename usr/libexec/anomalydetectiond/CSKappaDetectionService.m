@interface CSKappaDetectionService
- (BOOL)coinflip:(double)a3;
- (BOOL)curationSampling;
- (BOOL)isArmedForKappa;
- (BOOL)performanceSampling;
- (BOOL)shouldKeepEarlyCrashTTR;
- (BOOL)shouldUploadRecording;
- (CSKappaDetectionService)initWithSilo:(id)a3 vendor:(id)a4 aopService:(void *)a5 sosStateMachine:(id)a6;
- (float)querySamplingBin:(id)a3 atIndex:(int)a4 withDefault:(float)a5;
- (float)querySamplingRate:(id)a3 withDefault:(float)a4;
- (id).cxx_construct;
- (id)userInfoUploader;
- (int64_t)daysSinceTimestamp:(double)a3;
- (int64_t)getMaxTriggerSessionInSecondsDefault;
- (shared_ptr<CLKappaEstimatesAlgCrash>)getCrashBlock;
- (shared_ptr<CLKappaFeaturesAlgDataIntegrity>)getDataIntegrityBlock;
- (void)companionConnectedAckHandler:(int)a3 data:(id)a4 receivedTimestamp:(double)a5;
- (void)companionConnectedAckHandler_Deprecated:(int)a3 data:(id)a4 receivedTimestamp:(double)a5;
- (void)companionDecidedToUploadHandler:(int)a3 data:(id)a4 receivedTimestamp:(double)a5;
- (void)companionTriggerHandler:(int)a3 data:(id)a4 receivedTimestamp:(double)a5;
- (void)consumeSampleArray:(id)a3;
- (void)decideToShowTTR;
- (void)didReceiveSOSAck:(int64_t)a3 forMode:(unsigned __int8)a4;
- (void)didReceiveSOSStatusUpdate:(id)a3 forMode:(unsigned __int8)a4;
- (void)dumpSample:(id)a3;
- (void)escalateCrashDecision;
- (void)evaluateCrashWithPOI;
- (void)evaluatePossibleCrashDetectorDecision;
- (void)evaluateSamplingAlgFeatures;
- (void)feedAccel800:(id)a3;
- (void)feedAccel:(id)a3;
- (void)feedCompanionStatus:(id)a3;
- (void)feedDeviceMotion:(id)a3;
- (void)feedGPS:(id)a3;
- (void)feedHertzSample:(id)a3;
- (void)feedHgAccel:(id)a3;
- (void)feedKappaTrigger:(id)a3;
- (void)feedLocationManagerResults:(id)a3;
- (void)feedMag:(id)a3;
- (void)feedPressure:(id)a3;
- (void)feedRemoteSample:(id)a3;
- (void)feedRoads:(id)a3;
- (void)feedSoundPressureLevel:(id)a3;
- (void)feedSteps:(id)a3;
- (void)feedTrustedAudioResult:(id)a3;
- (void)finishAnomalyEvent;
- (void)forceBehavior:(int)a3 withValue:(int)a4;
- (void)forceCompanionTrigger:(id)a3;
- (void)initFlowController;
- (void)initSession;
- (void)kappaSessionCompanionHandler:(int)a3 data:(id)a4 receivedTimestamp:(double)a5;
- (void)logAudioStats;
- (void)messageReceived:(id)a3 fromConnection:(id)a4;
- (void)notifyCompanionOfUploadedCompanionUUID;
- (void)onCompanionMessage:(int)a3 data:(id)a4 receivedTimestamp:(double)a5;
- (void)onCompanionStatusUpdate:(BOOL)a3 pairedDevice:(id)a4 updatedTimestamp:(double)a5;
- (void)onCompanionTestTrigger:(double)a3;
- (void)populateSessionDetails;
- (void)printSamplingDefaults;
- (void)queryIfNearAmusementPark;
- (void)receiveForceTriggerProtobuf:(id)a3;
- (void)resetSession;
- (void)saveForceState:(int)a3 withValue:(int)a4;
- (void)sendCompanionUUID:(id)a3;
- (void)sendDeviceInfoProtobuf;
- (void)sendForceTriggerProtobuf:(id)a3;
- (void)sendLocalAudioToWatch;
- (void)sendRemoteSampleToCompanion:(unint64_t)a3 epochTs:(unint64_t)a4 epochNumber:(int)a5;
- (void)setRecording:(id)a3 withUUID:(id)a4;
- (void)sosActivated;
- (void)start;
- (void)stop:(unint64_t)a3;
- (void)stopSession;
- (void)triggered:(id)a3;
- (void)updateCompanion;
- (void)updateTrustedAudioMetadata;
@end

@implementation CSKappaDetectionService

- (void)start
{
  if (qword_100456818 != -1)
  {
    sub_1003061F8();
  }

  v3 = qword_100456820;
  if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v22) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "start", &v22, 2u);
  }

  [(CSPower *)self->_powerAssertion createPowerAssertion:@"Kappa Detection"];
  v4 = [(CSPower *)self->_powerAssertion powerlogActivity:6 event:1 isActive:CFAbsoluteTimeGetCurrent()];
  if (!self->_uuid)
  {
    sub_100306234(v4);
  }

  [(CSKappaDetectionService *)self updateCompanion];
  [(CSKappaDetectionService *)self sendCompanionUUID:self->_uuid];
  self->_triggerTime = 0.0;
  v5 = +[CSPermissions sharedInstance];
  self->_canCollectData = [v5 isAuthorizedToCollectData];

  if (qword_100456818 != -1)
  {
    sub_10030620C();
  }

  v6 = qword_100456820;
  if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEBUG))
  {
    canCollectData = self->_canCollectData;
    v22 = 67109120;
    LODWORD(v23) = canCollectData;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "can collect data %d", &v22, 8u);
  }

  if (!self->_canCollectData)
  {
    if (qword_100456818 != -1)
    {
      sub_10030620C();
    }

    v8 = qword_100456820;
    if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v22) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "device cannot collect data", &v22, 2u);
    }

    mslRecording = self->_mslRecording;
    self->_mslRecording = 0;
  }

  detectionEvent = self->_detectionEvent;
  self->_detectionEvent = detectionEvent + 1;
  if (detectionEvent >= 1)
  {
    if (qword_100456818 != -1)
    {
      sub_10030620C();
    }

    v11 = qword_100456820;
    if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v22) = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "multiple detection events cannot be recorded", &v22, 2u);
    }

    v12 = self->_mslRecording;
    self->_mslRecording = 0;
  }

  v13 = +[CSPlatformInfo sharedInstance];
  v14 = [v13 getSystemHardware];
  if (qword_100456818 != -1)
  {
    sub_10030620C();
  }

  v15 = qword_100456820;
  if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 134349056;
    v23 = v14;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "start hw = %{public}lu", &v22, 0xCu);
  }

  [(CSMSLDataRecording *)self->_mslRecording updateMetadata:&off_10043F2F0];
  [(CSKappaDetectionService *)self initSession];
  v16 = +[CSPersistentConfiguration sharedConfiguration];
  v17 = [v16 getBooleanDefault:@"KappaShouldFeedAccessoryGPS"];
  if ((v17 & 0x100) != 0)
  {
    v18 = v17;
  }

  else
  {
    v18 = 1;
  }

  self->_shouldFeedAccessoryGPS = v18;
  if (qword_100456818 != -1)
  {
    sub_10030620C();
  }

  v19 = qword_100456820;
  if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEBUG))
  {
    shouldFeedAccessoryGPS = self->_shouldFeedAccessoryGPS;
    v22 = 67109120;
    LODWORD(v23) = shouldFeedAccessoryGPS;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "should feed accessory gps %d", &v22, 8u);
  }

  companionUUIDPreSession = self->_companionUUIDPreSession;
  if (companionUUIDPreSession)
  {
    objc_storeStrong(&self->_companionUUID, companionUUIDPreSession);
  }

  self->_inSession = 1;
  [(CSKappaDetectionService *)self updateKappaSessionClients:0 data:0];
}

- (CSKappaDetectionService)initWithSilo:(id)a3 vendor:(id)a4 aopService:(void *)a5 sosStateMachine:(id)a6
{
  v64 = a3;
  v11 = a4;
  v65 = a6;
  v12 = objc_initWeak(&location, self);
  if (qword_100456818 != -1)
  {
    sub_10030620C();
  }

  v13 = qword_100456820;
  if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "beginService", buf, 2u);
  }

  objc_storeStrong(&self->_silo, a3);
  objc_storeStrong(&self->_vendor, a4);
  objc_storeStrong(&self->_silo, a3);
  mslRecording = self->_mslRecording;
  self->_mslRecording = 0;

  self->_detectionEvent = 0;
  objc_storeStrong(&self->_sosSM, a6);
  v15 = [v11 proxyForService:@"CSInjectionService"];
  v16 = [objc_alloc(objc_msgSend(v15 syncgetClassForName:{@"CSKappaConnectionServer", "initWithDispatchSilo:andDelegate:", self->_silo, self}];
  kappaConnectionServer = self->_kappaConnectionServer;
  self->_kappaConnectionServer = v16;

  v18 = [v11 proxyForService:@"CSCompanionService"];
  companionProxy = self->_companionProxy;
  self->_companionProxy = v18;

  [(CSCompanionServiceProtocol *)self->_companionProxy registerDelegate:self inSilo:self->_silo];
  [(CSCompanionServiceProtocol *)self->_companionProxy registerClient:self];
  v20 = +[CSPower sharedInstance];
  powerAssertion = self->_powerAssertion;
  self->_powerAssertion = v20;

  v22 = [[CSKappaCoreAnalytics alloc] initWithSilo:self->_silo vendor:v11 aopService:a5];
  coreAnalytics = self->_coreAnalytics;
  self->_coreAnalytics = v22;

  v24 = +[CSPlatformInfo sharedInstance];
  v25 = [v24 isInternalInstall];

  if (v25)
  {
    v26 = NSTemporaryDirectory();
    v27 = [v26 stringByAppendingPathComponent:@"kappaTTRSpooler"];

    v28 = +[NSFileManager defaultManager];
    [v28 createDirectoryAtPath:v27 withIntermediateDirectories:1 attributes:0 error:0];

    v29 = [CSKappaTap2Radar alloc];
    v30 = +[CSKappaTap2RadarConfiguration tap2RadarUserConfiguration];
    v31 = [(CSKappaTap2Radar *)v29 initWithSpoolerFolder:v27 andConfiguration:v30];
    ttr = self->_ttr;
    self->_ttr = v31;

    v33 = self->_ttr;
    v76 = 0;
    [(CSKappaTap2Radar *)v33 startMonitoringWithError:&v76];
    v34 = v76;
    if (v34)
    {
      if (qword_100456818 != -1)
      {
        sub_10030620C();
      }

      v35 = qword_100456820;
      if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        *&buf[4] = v34;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEBUG, "[TTR] Error starting TTR monitoring: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v27 = self->_ttr;
    self->_ttr = 0;
  }

  v36 = +[CSPlatformInfo sharedInstance];
  self->_isLoggingDevice = [v36 isKappaLoggingDevice];
  v37 = [v36 isKappaDetectionDevice];
  self->_isDetectionDevice = v37;
  if (self->_isLoggingDevice & v37)
  {
    sub_10030635C(buf);

    abort_report_np();
    __break(1u);
  }

  v74[0] = _NSConcreteStackBlock;
  v74[1] = 3221225472;
  v74[2] = sub_1002F7B88;
  v74[3] = &unk_1004316E0;
  v38 = self;
  v75 = v38;
  v39 = objc_retainBlock(v74);
  idleState = v38->_idleState;
  v38->_idleState = v39;

  v72[0] = _NSConcreteStackBlock;
  v72[1] = 3221225472;
  v72[2] = sub_1002F7C00;
  v72[3] = &unk_1004316E0;
  v41 = v38;
  v73 = v41;
  v42 = objc_retainBlock(v72);
  readingState = v41->_readingState;
  v41->_readingState = v42;

  v70[0] = _NSConcreteStackBlock;
  v70[1] = 3221225472;
  v70[2] = sub_1002F7D7C;
  v70[3] = &unk_1004316E0;
  v44 = v41;
  v71 = v44;
  v45 = objc_retainBlock(v70);
  waitForPOIState = v44->_waitForPOIState;
  v44->_waitForPOIState = v45;

  v68[0] = _NSConcreteStackBlock;
  v68[1] = 3221225472;
  v68[2] = sub_1002F7FA4;
  v68[3] = &unk_1004316E0;
  v47 = v44;
  v69 = v47;
  v48 = objc_retainBlock(v68);
  waitForSOSState = v47->_waitForSOSState;
  v47->_waitForSOSState = v48;

  v50 = [CSHSMObjc alloc];
  if (qword_100456818 != -1)
  {
    sub_10030620C();
  }

  v51 = qword_100456820;
  v52 = [(CSHSMObjc *)v50 initWithCategory:v51 state:v38->_idleState];
  hsm = v47->_hsm;
  v47->_hsm = v52;

  v54 = [(CLSilo *)self->_silo newTimer];
  triggerTimer = v47->_triggerTimer;
  v47->_triggerTimer = v54;

  v66[0] = _NSConcreteStackBlock;
  v66[1] = 3221225472;
  v66[2] = sub_1002F81EC;
  v66[3] = &unk_100431708;
  v56 = v47;
  v67 = v56;
  [(CLTimer *)v47->_triggerTimer setHandler:v66];
  companionUUIDPreSession = v56->_companionUUIDPreSession;
  v56->_companionUUIDPreSession = 0;

  v56->_inSession = 0;
  v56->_forceFeatureBitmap = 0;
  v56->_savedForceState[5] = -1;
  v56->_savedForceState[9] = -1;
  v58 = +[GEOMapService sharedService];
  geoMapSvc = v56->_geoMapSvc;
  v56->_geoMapSvc = v58;

  if (!v56->_geoMapSvc)
  {
    if (qword_100456818 != -1)
    {
      sub_10030620C();
    }

    v60 = qword_100456820;
    if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_FAULT, "unable to get geo map service", buf, 2u);
    }
  }

  v56->_aop = a5;
  v61 = v67;
  v62 = v56;

  objc_destroyWeak(&location);
  return v62;
}

- (void)queryIfNearAmusementPark
{
  if (self->_poiGpsSample)
  {
    v3 = +[CSPersistentConfiguration sharedConfiguration];
    [v3 doubleForKey:@"CSRollerCoasterProxyPOIRadius"];
    v5 = v4;

    if (v5 == 0.0)
    {
      v5 = 100.0;
    }

    if (qword_100456818 != -1)
    {
      sub_1003061F8();
    }

    v6 = qword_100456820;
    if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      v24 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "querying for radius %{public}f", buf, 0xCu);
    }

    v7 = *([(CSSPUGps *)self->_poiGpsSample c_struct]+ 4);
    v8 = *([(CSSPUGps *)self->_poiGpsSample c_struct]+ 5);
    v9 = [NSMutableArray arrayWithCapacity:1];
    v22 = GEOSpatialPlaceLookupCategoryAmusementParkRide;
    v10 = [NSArray arrayWithObjects:&v22 count:1];
    v11 = v7;
    v12 = v8;
    v13 = [[GEOSpatialPlaceLookupParameters alloc] initWithCoordinate:v10 radius:10 categories:v11 maxResultCount:{v12, v5}];
    [v9 addObject:v13];
    v14 = [(GEOMapService *)self->_geoMapSvc ticketForSpatialPlaceLookupParameters:v9 traits:0];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1002F85B4;
    v18[3] = &unk_1004341A8;
    v18[4] = self;
    v15 = v9;
    v19 = v15;
    v20 = v11;
    v21 = v12;
    v16 = [(CLSilo *)self->_silo queue];
    [v14 submitWithHandler:v18 queue:v16];
  }

  else
  {
    if (qword_100456818 != -1)
    {
      sub_1003061F8();
    }

    v17 = qword_100456820;
    if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "no gps sample to resolve LOI", buf, 2u);
    }

    self->_POIResolutionComplete = 0;
    [(CSHSMObjc *)self->_hsm signal:6 data:0];
  }
}

- (void)escalateCrashDecision
{
  ptr = self->fFlowControl.__ptr_;
  v5 = *(ptr + 54);
  v4 = *(ptr + 55);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v53 = v5;
  v54 = v4;
  sub_1002F8F1C(&v53, &v55);
  if (v54)
  {
    sub_100009A48(v54);
  }

  (*v55)[20](&v49);
  sub_10003B98C(&v49, &v51);
  if (v50)
  {
    sub_100009A48(v50);
  }

  v6 = *(v51 + 48);
  mslRecording = self->_mslRecording;
  v121 = @"highSensitivityBitmap";
  v8 = [NSNumber numberWithUnsignedInt:*(v51 + 38)];
  v122 = v8;
  v9 = [NSDictionary dictionaryWithObjects:&v122 forKeys:&v121 count:1];
  [(CSMSLDataRecording *)mslRecording updateMetadata:v9];

  if (qword_100456818 != -1)
  {
    sub_10030620C();
  }

  v10 = qword_100456820;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
  {
    v48 = v6;
    v11 = [(NSUUID *)self->_uuid UUIDString];
    canCollectData = self->_canCollectData;
    companionConnected = self->_companionConnected;
    fractionalAudio = self->_trustedAudioStats.fractionalAudio;
    triggerPathBitmap = self->_triggerPathBitmap;
    isCrashDetected = self->_isCrashDetected;
    isRolloverCrashDetected = self->_isRolloverCrashDetected;
    isHighSpeedCrashDetected = self->_isHighSpeedCrashDetected;
    v19 = *(v51 + 40);
    v20 = *(v51 + 41);
    v22 = *(v51 + 42);
    v21 = *(v51 + 43);
    v24 = *(v51 + 44);
    v23 = *(v51 + 45);
    v25 = *(v51 + 56);
    v26 = *(v51 + 57);
    v27 = *(v51 + 58);
    v28 = *(v51 + 241);
    v29 = *(v51 + 61);
    v30 = *(v51 + 62);
    v31 = *(v51 + 252);
    v32 = v51[32];
    v33 = *(v51 + 66);
    v34 = *(v51 + 67);
    v35 = *(v51 + 68);
    v36 = *(v51 + 69);
    v37 = *(v51 + 70);
    v38 = *(v51 + 71);
    v39 = *(v51 + 72);
    isAirbagDetectedOverWindow = self->_isAirbagDetectedOverWindow;
    possibleRollerCoaster = self->_possibleRollerCoaster;
    v42 = *(v51 + 59);
    *buf = 138551298;
    v58 = v11;
    v59 = 1026;
    v60 = canCollectData;
    v61 = 1026;
    v62 = companionConnected;
    v63 = 2050;
    v64 = fractionalAudio;
    v65 = 1026;
    v66 = triggerPathBitmap;
    v67 = 1026;
    v68 = isCrashDetected;
    v69 = 1026;
    v70 = isRolloverCrashDetected;
    v71 = 1026;
    v72 = isHighSpeedCrashDetected;
    v73 = 1026;
    v74 = v19;
    v75 = 1026;
    v76 = v20;
    v77 = 1026;
    v78 = v22;
    v79 = 1026;
    v80 = v21;
    v81 = 1026;
    v82 = v24;
    v83 = 1026;
    v84 = v23;
    v85 = 1026;
    v86 = v25;
    v87 = 2050;
    v88 = v26;
    v89 = 2050;
    v90 = v27;
    v91 = 1026;
    v92 = v28;
    v93 = 1026;
    v94 = v29;
    v95 = 2050;
    v96 = v30;
    v97 = 1026;
    v98 = v31;
    v99 = 2050;
    v100 = v32;
    v101 = 1026;
    v102 = v33;
    v103 = 1026;
    v104 = v34;
    v105 = 2050;
    v106 = v35;
    v107 = 2050;
    v108 = v36;
    v109 = 2050;
    v110 = v37;
    v111 = 2050;
    v112 = v38;
    v113 = 1026;
    v114 = v39;
    v115 = 1026;
    v116 = isAirbagDetectedOverWindow;
    v117 = 1026;
    v118 = possibleRollerCoaster;
    v119 = 1026;
    v120 = v42;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_FAULT, "Crash context: %{public}@ %{public}d %{public}d %{public}0.3f %{public}d %{public}d %{public}d %{public}d %{public}d %{public}d %{public}d %{public}d %{public}d %{public}d %{public}d %{public}0.3f %{public}0.3f %{public}d %{public}d %{public}0.3f %{public}d %{public}llu %{public}d %{public}d %{public}0.3f %{public}0.3f %{public}0.3f %{public}0.3f %{public}d %{public}d %{public}d %{public}d ", buf, 0xEAu);

    v6 = v48;
  }

  self->_SOSInProgress = 1;
  if (qword_100456818 != -1)
  {
    sub_10030620C();
  }

  v43 = qword_100456820;
  if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEBUG, "[TTR] Setting severe crash", buf, 2u);
  }

  self->_sessionDetails.ttrType = 4;
  v44 = +[CSPersistentConfiguration sharedConfiguration];
  v45 = [v44 getBooleanDefault:@"KappaShouldEscalateUI"];
  if ((v45 & 0x100) != 0 && (v45 & 1) == 0)
  {
    if (qword_100456818 != -1)
    {
      sub_10030620C();
    }

    v47 = qword_100456820;
    if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "refusing to escalate UI", buf, 2u);
    }
  }

  else
  {
    if (qword_100456818 != -1)
    {
      sub_10030620C();
    }

    v46 = qword_100456820;
    if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "escalating UI", buf, 2u);
    }

    [(CSKappaDetectionService *)self collectSensorControlTelemetry];
    [(CSSafetySOSStateMachine *)self->_sosSM feedDetectionDecision:v6 & 1 uuid:self->_uuid forMode:1];
  }

  [(CSKappaDetectionService *)self updateKappaSessionClients:1 data:0];

  if (v52)
  {
    sub_100009A48(v52);
  }

  if (v56)
  {
    sub_100009A48(v56);
  }
}

- (void)evaluateCrashWithPOI
{
  if (qword_100456818 != -1)
  {
    sub_1003061F8();
  }

  v3 = qword_100456820;
  if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEBUG))
  {
    POIResolutionComplete = self->_POIResolutionComplete;
    isNearAmusementParkPOI = self->_isNearAmusementParkPOI;
    *buf = 67109376;
    *v52 = POIResolutionComplete;
    *&v52[4] = 1024;
    *&v52[6] = isNearAmusementParkPOI;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "evaluate crash with POI resolved %d poi %d", buf, 0xEu);
  }

  if (self->_POIResolutionComplete && self->_isNearAmusementParkPOI)
  {
    ptr = self->fFlowControl.__ptr_;
    v8 = *(ptr + 54);
    v7 = *(ptr + 55);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v47 = v8;
    v48 = v7;
    sub_1002F8F1C(&v47, &v49);
    if (v48)
    {
      sub_100009A48(v48);
    }

    (*v49)[20](&v43);
    sub_10003B98C(&v43, &v45);
    if (v44)
    {
      sub_100009A48(v44);
    }

    if (qword_100456818 != -1)
    {
      sub_10030620C();
    }

    v9 = qword_100456820;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = [(NSUUID *)self->_uuid UUIDString];
      canCollectData = self->_canCollectData;
      companionConnected = self->_companionConnected;
      fractionalAudio = self->_trustedAudioStats.fractionalAudio;
      triggerPathBitmap = self->_triggerPathBitmap;
      isCrashDetected = self->_isCrashDetected;
      isRolloverCrashDetected = self->_isRolloverCrashDetected;
      isHighSpeedCrashDetected = self->_isHighSpeedCrashDetected;
      v18 = *(v45 + 40);
      v19 = *(v45 + 41);
      v20 = *(v45 + 42);
      v21 = *(v45 + 43);
      v23 = *(v45 + 44);
      v22 = *(v45 + 45);
      v24 = *(v45 + 56);
      v25 = *(v45 + 57);
      v26 = *(v45 + 58);
      v27 = *(v45 + 241);
      v28 = *(v45 + 61);
      v29 = *(v45 + 62);
      v30 = *(v45 + 252);
      v31 = v45[32];
      v32 = *(v45 + 66);
      v33 = *(v45 + 67);
      v34 = *(v45 + 68);
      v35 = *(v45 + 69);
      v36 = *(v45 + 70);
      v37 = *(v45 + 71);
      v38 = *(v45 + 72);
      isAirbagDetectedOverWindow = self->_isAirbagDetectedOverWindow;
      possibleRollerCoaster = self->_possibleRollerCoaster;
      v41 = *(v45 + 59);
      *buf = 138551298;
      *v52 = v10;
      *&v52[8] = 1026;
      v53 = canCollectData;
      v54 = 1026;
      v55 = companionConnected;
      v56 = 2050;
      v57 = fractionalAudio;
      v58 = 1026;
      v59 = triggerPathBitmap;
      v60 = 1026;
      v61 = isCrashDetected;
      v62 = 1026;
      v63 = isRolloverCrashDetected;
      v64 = 1026;
      v65 = isHighSpeedCrashDetected;
      v66 = 1026;
      v67 = v18;
      v68 = 1026;
      v69 = v19;
      v70 = 1026;
      v71 = v20;
      v72 = 1026;
      v73 = v21;
      v74 = 1026;
      v75 = v23;
      v76 = 1026;
      v77 = v22;
      v78 = 1026;
      v79 = v24;
      v80 = 2050;
      v81 = v25;
      v82 = 2050;
      v83 = v26;
      v84 = 1026;
      v85 = v27;
      v86 = 1026;
      v87 = v28;
      v88 = 2050;
      v89 = v29;
      v90 = 1026;
      v91 = v30;
      v92 = 2050;
      v93 = v31;
      v94 = 1026;
      v95 = v32;
      v96 = 1026;
      v97 = v33;
      v98 = 2050;
      v99 = v34;
      v100 = 2050;
      v101 = v35;
      v102 = 2050;
      v103 = v36;
      v104 = 2050;
      v105 = v37;
      v106 = 1026;
      v107 = v38;
      v108 = 1026;
      v109 = isAirbagDetectedOverWindow;
      v110 = 1026;
      v111 = possibleRollerCoaster;
      v112 = 1026;
      v113 = v41;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Non escalated crash context: %{public}@ %{public}d %{public}d %{public}0.3f %{public}d %{public}d %{public}d %{public}d %{public}d %{public}d %{public}d %{public}d %{public}d %{public}d %{public}d %{public}0.3f %{public}0.3f %{public}d %{public}d %{public}0.3f %{public}d %{public}llu %{public}d %{public}d %{public}0.3f %{public}0.3f %{public}0.3f %{public}0.3f %{public}d %{public}d %{public}d %{public}d ", buf, 0xEAu);
    }

    [(CSHSMObjc *)self->_hsm signal:3 data:0];
    if (v46)
    {
      sub_100009A48(v46);
    }

    if (v50)
    {
      sub_100009A48(v50);
    }
  }

  else
  {
    [(CSKappaDetectionService *)self escalateCrashDecision];
    if (qword_100456818 != -1)
    {
      sub_10030620C();
    }

    v42 = qword_100456820;
    if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_INFO, "sos active", buf, 2u);
    }

    [(CSHSMObjc *)self->_hsm signal:4 data:0];
  }
}

- (void)updateCompanion
{
  if (qword_100456818 != -1)
  {
    sub_1003061F8();
  }

  v3 = qword_100456820;
  if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEFAULT))
  {
    uuid = self->_uuid;
    LODWORD(v7) = 138543362;
    *(&v7 + 4) = uuid;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Forward trigger UUID %{public}@ to companion", &v7, 0xCu);
  }

  v7 = 0uLL;
  [(NSUUID *)self->_uuid getUUIDBytes:&v7];
  companionProxy = self->_companionProxy;
  v6 = [NSData dataWithBytes:&v7 length:16];
  [(CSCompanionServiceProtocol *)companionProxy sendData:v6 type:1];
}

- (void)sendCompanionUUID:(id)a3
{
  v4 = [a3 UUIDString];
  sub_10029F5A0(&__p, [v4 UTF8String]);

  v6 = KappaCompanion::serializeCompanionUUID(&__p, v5);
  [(CSCompanionServiceProtocol *)self->_companionProxy sendData:v6 type:203];

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

- (void)forceCompanionTrigger:(id)a3
{
  v4 = a3;
  if (qword_100456818 != -1)
  {
    sub_1003061F8();
  }

  v5 = qword_100456820;
  if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_INFO))
  {
    LOWORD(triggerTime) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "forcing companion to trigger", &triggerTime, 2u);
  }

  triggerTime = self->_triggerTime;
  v6 = [v4 c_struct];
  v7 = *v6;
  v12 = v6[1];
  v11 = v7;
  companionProxy = self->_companionProxy;
  v9 = [NSData dataWithBytes:&triggerTime length:40];
  [(CSCompanionServiceProtocol *)companionProxy sendData:v9 type:3];
}

- (void)companionConnectedAckHandler:(int)a3 data:(id)a4 receivedTimestamp:(double)a5
{
  v9 = a4;
  if (qword_100456818 != -1)
  {
    sub_1003061F8();
  }

  v10 = qword_100456820;
  if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "companionConnectedAckHandler", buf, 2u);
  }

  *buf = 1;
  [v9 getBytes:buf length:40];
  if (self->_inSession)
  {
    if (*buf < 1)
    {
      v11 = 0;
    }

    else
    {
      v38 = v44;
      v11 = v43;
      v6 = v46;
      v37 = v43;
      v39 = v45;
      v40 = v46;
      v5 = HIDWORD(v46);
      v7 = v47;
      v41 = v47;
    }

    if (qword_100456818 != -1)
    {
      sub_10030620C();
    }

    v13 = qword_100456820;
    if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEFAULT))
    {
      *v27 = 134350082;
      v28 = v11;
      v29 = 2082;
      v30 = &v38;
      v31 = 1026;
      v32 = v6;
      v33 = 1026;
      v34 = v5;
      v35 = 1026;
      v36 = v7;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "received companion device info %{public}lu %{public}s %{public}d %{public}d %{public}d", v27, 0x28u);
    }

    mslRecording = self->_mslRecording;
    v26[0] = &__kCFBooleanTrue;
    v15 = [NSString stringWithUTF8String:&v38, @"companionConnected", @"companionDeviceModel"];
    v26[1] = v15;
    v25[2] = @"companionDeviceType";
    v16 = [NSNumber numberWithInt:v40];
    v26[2] = v16;
    v25[3] = @"companionTokenCount";
    v17 = [NSNumber numberWithInt:HIDWORD(v40)];
    v26[3] = v17;
    v25[4] = @"companionArmedStatus";
    v18 = [NSNumber numberWithInt:v41];
    v26[4] = v18;
    v19 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:5];
    [(CSMSLDataRecording *)mslRecording updateMetadata:v19];

    self->_companionDeviceType = v40;
    [(CSKappaDetectionService *)self updateKappaSessionClients:10 data:0];
    ptr = self->fFlowControl.__ptr_;
    v21 = *(ptr + 40);
    v22 = *(ptr + 41);
    if (v22)
    {
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      ptr = self->fFlowControl.__ptr_;
    }

    *(v21 + 82) = 1;
    v24 = *(ptr + 42);
    v23 = *(ptr + 43);
    if (!v23)
    {
      *(v24 + 81) = 1;
      self->_companionConnected = 1;
      if (!v22)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }

    atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
    *(v24 + 81) = 1;
    self->_companionConnected = 1;
    sub_100009A48(v23);
    if (v22)
    {
LABEL_21:
      sub_100009A48(v22);
    }
  }

  else
  {
    if (qword_100456818 != -1)
    {
      sub_10030620C();
    }

    v12 = qword_100456820;
    if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEBUG))
    {
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "companion out of sync, session not in progress", v27, 2u);
    }
  }

LABEL_22:
}

- (void)companionDecidedToUploadHandler:(int)a3 data:(id)a4 receivedTimestamp:(double)a5
{
  v6 = a4;
  if (qword_100456818 != -1)
  {
    sub_1003061F8();
  }

  v7 = qword_100456820;
  if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Companion decided to upload", buf, 2u);
  }

  if ([v6 length] == 16)
  {
    mslRecording = self->_mslRecording;
    if (mslRecording)
    {
      [(CSMSLDataRecording *)mslRecording updateMetadata:&off_10043F318];
    }

    else
    {
      *buf = 0;
      v19 = 0;
      v10 = v6;
      memcpy(buf, [v6 bytes], objc_msgSend(v6, "length"));
      v11 = [[NSUUID alloc] initWithUUIDBytes:buf];
      v12 = [v11 UUIDString];

      v13 = [CSStudiesServerUploadOutOfBandMetadata alloc];
      v16 = v12;
      v17 = @"companionUploaded";
      v14 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
      v15 = [(CSStudiesServerUploadOutOfBandMetadata *)v13 initWithLookingBack:v14 keyValuePairs:300.0];

      [(CSStudiesServerUploader *)self->_uploader addOutOfBandMetadata:v15 error:0];
    }
  }

  else
  {
    if (qword_100456818 != -1)
    {
      sub_10030620C();
    }

    v9 = qword_100456820;
    if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "incorrect number of bytes for uuid", buf, 2u);
    }
  }
}

- (void)triggered:(id)a3
{
  v4 = a3;
  [(CSHSMObjc *)self->_hsm signal:1 data:0];
  v5 = [v4 c_struct];
  self->_triggerPathBitmap |= *([v4 c_struct] + 1);
  if (qword_100456818 != -1)
  {
    sub_1003061F8();
  }

  v6 = qword_100456820;
  if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_INFO))
  {
    triggerPathBitmap = self->_triggerPathBitmap;
    *buf = 67109120;
    LODWORD(v24) = triggerPathBitmap;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "_triggerPathBitmap %x", buf, 8u);
  }

  if (self->_triggerTime == 0.0)
  {
    self->_triggerTime = CFAbsoluteTimeGetCurrent();
    self->_triggerAOPTime = *([v4 c_struct] + 1);
    self->_triggerAOPArmedSec = *([v4 c_struct] + 1);
    self->_triggerAOPHasBTCarplay = *([v4 c_struct] + 28) == 1;
    if (qword_100456818 != -1)
    {
      sub_10030620C();
    }

    v8 = qword_100456820;
    if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_INFO))
    {
      triggerAOPTime = self->_triggerAOPTime;
      triggerAOPArmedSec = self->_triggerAOPArmedSec;
      triggerAOPHasBTCarplay = self->_triggerAOPHasBTCarplay;
      *buf = 134218496;
      v24 = *&triggerAOPTime;
      v25 = 1024;
      v26 = triggerAOPArmedSec;
      v27 = 1024;
      v28 = triggerAOPHasBTCarplay;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "logging trigger %llu %d %d", buf, 0x18u);
    }

    if (qword_100456818 != -1)
    {
      sub_10030620C();
    }

    v12 = qword_100456820;
    if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_INFO))
    {
      companionTriggerTime = self->_companionTriggerTime;
      *buf = 134217984;
      v24 = companionTriggerTime;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "_companionTriggerTime %f", buf, 0xCu);
    }

    v14 = self->_companionTriggerTime;
    if (v14 != 0.0)
    {
      v15 = [NSNumber numberWithDouble:self->_triggerTime - v14];
      v16 = [v15 stringValue];

      mslRecording = self->_mslRecording;
      v21 = @"deltaTrigger";
      v22 = v16;
      v18 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
      [(CSMSLDataRecording *)mslRecording updateMetadata:v18];
    }

    [(CSKappaDetectionService *)self companionConnectedAck:101];
    [(CSKappaDetectionService *)self sendDeviceInfoProtobuf];
  }

  if ((*([v4 c_struct] + 1) & 0xB) != 0)
  {
    [(CSKappaDetectionService *)self forceCompanionTrigger:v4];
    [(CSKappaDetectionService *)self sendForceTriggerProtobuf:v4];
  }

  [(CSSafetySOSStateMachine *)self->_sosSM feedPotentialEventWithTimestamp:v5[1] forMode:1];
  v19 = +[NSData dataWithBytes:length:](NSData, "dataWithBytes:length:", [v4 c_struct], 112);
  [(CSKappaDetectionService *)self updateKappaSessionClients:2 data:v19];

  if (qword_100456818 != -1)
  {
    sub_10030620C();
  }

  v20 = qword_100456820;
  if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "(re)start the flow controller", buf, 2u);
  }

  CLKappaAlgFlowController::start(self->fFlowControl.__ptr_, *([v4 c_struct] + 1));
}

- (void)sendDeviceInfoProtobuf
{
  v3 = +[CSPlatformInfo sharedInstance];
  v4 = [v3 getSystemHardware];
  v5 = [v3 getSystemModel];
  v6 = [v5 UTF8String];

  if ([v3 isKappaLoggingDevice])
  {
    v7 = 0;
  }

  else if ([v3 isKappaDetectionDevice])
  {
    v7 = 1;
  }

  else
  {
    if (qword_1004567D8 != -1)
    {
      sub_100306470();
    }

    v8 = qword_1004567E0;
    if (os_log_type_enabled(qword_1004567E0, OS_LOG_TYPE_FAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_FAULT, "invalid kappa device type detected", &v13, 2u);
    }

    v7 = -1;
  }

  v9 = objc_alloc_init(CSArmedClients);
  if ((CSAOPSvc::getArmedClients(self->_aop, v9) & 1) == 0)
  {
    if (qword_1004567D8 != -1)
    {
      sub_100306484();
    }

    v10 = qword_1004567E0;
    if (os_log_type_enabled(qword_1004567E0, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "failed to get armed clients state", &v13, 2u);
    }
  }

  v13 = v4;
  sub_10029F5A0(&__p, v6);
  v16 = v7;
  v17 = 0;
  KappaToken = getKappaToken(0);
  MartyToken = getMartyToken(0);
  v20 = [(CSArmedClients *)v9 kappaArmedSeconds];
  v21 = [(CSArmedClients *)v9 martyArmedSecondsLocal];
  v22 = [(CSArmedClients *)v9 enableMode];
  v12 = KappaCompanion::serializeDeviceInfo(&v13, v11);
  [(CSCompanionServiceProtocol *)self->_companionProxy sendData:v12 type:201];

  if (v15 < 0)
  {
    operator delete(__p);
  }
}

- (void)sendForceTriggerProtobuf:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    sub_1003064AC(&Current);

    abort_report_np();
    __break(1u);
  }

  Current = CFAbsoluteTimeGetCurrent();
  v5 = [v4 c_struct];
  v6 = *v5;
  v7 = v5[1];
  v16 = v5[2];
  v15 = v7;
  v14 = v6;
  v8 = v5[3];
  v9 = v5[4];
  v10 = v5[5];
  v20 = v5[6];
  v19 = v10;
  v18 = v9;
  v17 = v8;
  v12 = KappaCompanion::serializeTrigger(&Current, v11);
  [(CSCompanionServiceProtocol *)self->_companionProxy sendData:v12 type:202];
}

- (void)receiveForceTriggerProtobuf:(id)a3
{
  KappaCompanion::deserializeTrigger(a3, a2);
  if ((*(v8 + 9) & 4) != 0)
  {
    v8 = 0;
LABEL_5:
    operator delete();
  }

  *v5 = 1027;
  v6 = 0;
  v7 = *(v8 + 16);
  CSAOPSvc::sendCommand(self->_aop, v5, 0x10u);
  v4 = v8;
  v8 = 0;
  if (v4)
  {
    goto LABEL_5;
  }
}

- (int64_t)getMaxTriggerSessionInSecondsDefault
{
  v2 = +[CSPersistentConfiguration sharedConfiguration];
  v3 = [v2 objectForKey:@"MaxSessionTimeInSeconds"];
  if (v3)
  {
    v4 = [v2 integerForKey:@"MaxSessionTimeInSeconds"];
    if (v4 >= 600)
    {
      v5 = 600;
    }

    else
    {
      v5 = v4;
    }
  }

  else
  {
    v5 = 120;
  }

  return v5;
}

- (void)initFlowController
{
  v2 = [(CSKappaDetectionService *)self getMaxTriggerSessionInSecondsDefault];
  if (qword_100456818 != -1)
  {
    sub_1003061F8();
  }

  v3 = qword_100456820;
  if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEBUG))
  {
    v4 = 134217984;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "configuring flow controller to have a max session of %llu seconds", &v4, 0xCu);
  }

  operator new();
}

- (void)initSession
{
  [(CSKappaDetectionService *)self initFlowController];
  self->_SOSInProgress = 0;
  self->_gpsCount = 0;
  self->_epochTimestamp = 0;
  self->_epochNumber = 0;
  self->_companionDeviceType = -1;
  companionUUID = self->_companionUUID;
  self->_companionUUID = 0;

  *&self->_samplingBitmap = 0;
  self->_lastEpochTime = 0.0;
  *&self->_trustedAudioStats.fractionalAudio = 3212836864;
  *&self->_trustedAudioStats.numEpochsMissingAudioAfterStart = 0xFF7FFFFF00000000;
  self->_tellCompanionToUpload = 0;
  self->_companionConnected = 0;
  [(CLTimer *)self->_triggerTimer setNextFireDelay:600.0 interval:1.79769313e308];
  self->_sessionDetails.serverConfigVersion = -1.0;
  *&self->_sessionDetails.trigger_bitmap = 0;
  *&self->_sessionDetails.numDeescalations = 0;
  *&self->_sessionDetails.numRolloverCrashes = 0;
  self->_sessionDetails.maxDeltaVXYOverEpoch = 0;
  *&self->_sessionDetails.coarseLat = vdup_n_s32(0x447A0000u);
  *&self->_sessionDetails.sunElevation = 0x3E8447A0000;
  *&self->_sessionDetails.gpsCount = 0u;
  *&self->_sessionDetails.numDeescalationQuiescence = 0u;
  *&self->_sessionDetails.numDeescalationSkiLift = 0u;
  *&self->_sessionDetails.numDeescalationDistToRoad = 0u;
  *&self->_sessionDetails.numInertDeescalationCrashClassifier = 0u;
  *&self->_sessionDetails.severeCrashAOPTimestamp = 0u;
  *&self->_sessionDetails.crashTimestamp = 0u;
  *(&self->_sessionDetails.highSenseCrashDetected + 1) = 0u;
  *&self->_POIResolutionComplete = 0;
  *&self->_isCrashDetected = 0;
  self->_possibleRollerCoaster = 1;
  self->_isNearAmusementParkPOI = 0;
  poiGpsSample = self->_poiGpsSample;
  self->_poiGpsSample = 0;

  self->_triggerAOPHasBTCarplay = 0;
}

- (void)evaluatePossibleCrashDetectorDecision
{
  ptr = self->fFlowControl.__ptr_;
  if (!ptr)
  {
    sub_100306724(0, a2);
  }

  if ((CLKappaAlgFlowController::isKappaInferencesAlgSevereCrashEnabled(ptr) & 1) == 0)
  {
    sub_1003065FC();
  }

  v4 = self->fFlowControl.__ptr_;
  v6 = *(v4 + 54);
  v5 = *(v4 + 55);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v28 = v6;
  v29 = v5;
  sub_1002F8F1C(&v28, &v30);
  if (v29)
  {
    sub_100009A48(v29);
  }

  (*v30)[20](&v24);
  sub_10003B98C(&v24, &v26);
  if (v25)
  {
    sub_100009A48(v25);
  }

  v7 = v26[4];
  v8 = *(v26 + 48);
  if (qword_100456818 != -1)
  {
    sub_10030620C();
  }

  v9 = qword_100456820;
  if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67240448;
    v33 = v8 & 1;
    v34 = 2050;
    *v35 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[SC] de %{public}d, timestamp %{public}llu", buf, 0x12u);
  }

  v10 = v26;
  self->_isCrashDetected |= *(v26 + 56);
  self->_isRolloverCrashDetected |= *(v10 + 57);
  self->_isHighSpeedCrashDetected |= *(v10 + 58);
  self->_isAirbagDetectedOverWindow |= *(v10 + 292);
  v11 = +[CSPersistentConfiguration sharedConfiguration];
  if ([v11 BOOLForKey:@"CSRollerCoasterProxyForceBT"])
  {
    if (qword_100456818 != -1)
    {
      sub_10030620C();
    }

    v12 = qword_100456820;
    if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "forcing bt/carplay", buf, 2u);
    }

    self->_triggerAOPHasBTCarplay = 1;
  }

  v13 = [v11 BOOLForKey:@"CSRollerCoasterProxyForceAirbag"];
  v14 = v13;
  if (v13)
  {
    if (qword_100456818 != -1)
    {
      sub_10030620C();
    }

    v15 = qword_100456820;
    if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "forcing airbag", buf, 2u);
    }

    self->_isAirbagDetectedOverWindow = v14;
  }

  if (*(v26 + 48) != 1 || ([v11 BOOLForKey:@"CSRollerCoasterProxyDeescalationDisabled"] & 1) != 0 || self->_checkForPOI)
  {
    goto LABEL_41;
  }

  v16 = [v11 integerForKey:@"CSRollerCoasterProxyArmedSecThreshold"];
  if (v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = 60;
  }

  v18 = self->_possibleRollerCoaster & ~self->_triggerAOPHasBTCarplay & (v17 > self->_triggerAOPArmedSec);
  if (self->_isAirbagDetectedOverWindow)
  {
    v18 = 0;
  }

  self->_possibleRollerCoaster = v18;
  if (qword_100456818 != -1)
  {
    sub_10030620C();
  }

  v19 = qword_100456820;
  if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEFAULT))
  {
    triggerAOPHasBTCarplay = self->_triggerAOPHasBTCarplay;
    triggerAOPArmedSec = self->_triggerAOPArmedSec;
    isAirbagDetectedOverWindow = self->_isAirbagDetectedOverWindow;
    possibleRollerCoaster = self->_possibleRollerCoaster;
    *buf = 67241216;
    v33 = triggerAOPHasBTCarplay;
    v34 = 1026;
    *v35 = triggerAOPArmedSec;
    *&v35[4] = 1026;
    *&v35[6] = v17;
    v36 = 1026;
    v37 = isAirbagDetectedOverWindow;
    v38 = 1026;
    v39 = possibleRollerCoaster;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "bt/carplay %{public}d armed %{public}d %{public}d airbag %{public}d proxy %{public}d", buf, 0x20u);
  }

  if (!self->_possibleRollerCoaster)
  {
LABEL_41:
    if (*(v26 + 48) == 1 && !self->_SOSInProgress && !self->_checkForPOI)
    {
      [(CSKappaDetectionService *)self escalateCrashDecision];
    }
  }

  else
  {
    self->_checkForPOI = 1;
    [(CSKappaDetectionService *)self queryIfNearAmusementPark];
    [(CSHSMObjc *)self->_hsm signal:5 data:0];
  }

  if (v27)
  {
    sub_100009A48(v27);
  }

  if (v31)
  {
    sub_100009A48(v31);
  }
}

- (shared_ptr<CLKappaEstimatesAlgCrash>)getCrashBlock
{
  ptr = self->fFlowControl.__ptr_;
  if (!ptr)
  {
    sub_10030696C(0, a2);
  }

  v5 = v2;
  isKappaEstimatesAlgCrashEnabled = CLKappaAlgFlowController::isKappaEstimatesAlgCrashEnabled(ptr);
  if ((isKappaEstimatesAlgCrashEnabled & 1) == 0)
  {
    sub_10030684C();
  }

  v8 = self->fFlowControl.__ptr_;
  v10 = *(v8 + 40);
  v9 = *(v8 + 41);
  *v5 = v10;
  v5[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  result.var1 = v7;
  result.var0 = isKappaEstimatesAlgCrashEnabled;
  return result;
}

- (shared_ptr<CLKappaFeaturesAlgDataIntegrity>)getDataIntegrityBlock
{
  ptr = self->fFlowControl.__ptr_;
  if (!ptr)
  {
    sub_100306BAC(0, a2);
  }

  v5 = v2;
  isKappaFeaturesAlgDataIntegrityEnabled = CLKappaAlgFlowController::isKappaFeaturesAlgDataIntegrityEnabled(ptr);
  if ((isKappaFeaturesAlgDataIntegrityEnabled & 1) == 0)
  {
    sub_100306A8C();
  }

  v8 = self->fFlowControl.__ptr_;
  v10 = *(v8 + 58);
  v9 = *(v8 + 59);
  *v5 = v10;
  v5[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  result.var1 = v7;
  result.var0 = isKappaFeaturesAlgDataIntegrityEnabled;
  return result;
}

- (void)updateTrustedAudioMetadata
{
  [(CSKappaDetectionService *)self getDataIntegrityBlock];
  Stats = TrustedAudioHelper::getStats((v15 + 128), self->_triggerAOPTime);
  *&self->_trustedAudioStats.fractionalAudio = Stats;
  *&self->_trustedAudioStats.numEpochsMissingAudioAfterStart = v4;
  mslRecording = self->_mslRecording;
  v17[0] = @"fractionalAudioAvailability";
  v6 = [NSNumber numberWithDouble:*&Stats];
  v7 = [v6 stringValue];
  v18[0] = v7;
  v17[1] = @"numEpochsMissingAudioAtStart";
  v8 = [NSNumber numberWithInt:self->_trustedAudioStats.numEpochsMissingAudioAtStart];
  v9 = [v8 stringValue];
  v18[1] = v9;
  v17[2] = @"numEpochsMissingAudioAfterStart";
  v10 = [NSNumber numberWithInt:self->_trustedAudioStats.numEpochsMissingAudioAfterStart];
  v11 = [v10 stringValue];
  v18[2] = v11;
  v17[3] = @"preTriggerAudioSec";
  v12 = [NSNumber numberWithDouble:self->_trustedAudioStats.preTriggerAudioSec];
  v13 = [v12 stringValue];
  v18[3] = v13;
  v14 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:4];
  [(CSMSLDataRecording *)mslRecording updateMetadata:v14];

  if (v16)
  {
    sub_100009A48(v16);
  }
}

- (void)logAudioStats
{
  if (qword_100456818 != -1)
  {
    sub_1003061F8();
  }

  v3 = qword_100456820;
  if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEFAULT))
  {
    fractionalAudio = self->_trustedAudioStats.fractionalAudio;
    numEpochsMissingAudioAtStart = self->_trustedAudioStats.numEpochsMissingAudioAtStart;
    numEpochsMissingAudioAfterStart = self->_trustedAudioStats.numEpochsMissingAudioAfterStart;
    preTriggerAudioSec = self->_trustedAudioStats.preTriggerAudioSec;
    v8 = 134218752;
    v9 = fractionalAudio;
    v10 = 1024;
    v11 = numEpochsMissingAudioAtStart;
    v12 = 1024;
    v13 = numEpochsMissingAudioAfterStart;
    v14 = 2048;
    v15 = preTriggerAudioSec;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "fractionalAudio %f %d %d %f", &v8, 0x22u);
  }
}

- (void)sendLocalAudioToWatch
{
  ptr = self->fFlowControl.__ptr_;
  if (!ptr)
  {
    sub_100306DF4(0, a2);
  }

  if ((CLKappaAlgFlowController::isKappaFeaturesAlgLocalAudioEnabled(ptr) & 1) == 0)
  {
    sub_100306CCC();
  }

  v4 = self->fFlowControl.__ptr_;
  v5 = *(v4 + 16);
  v6 = *(v4 + 17);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v5 + 160))(&v23);
  sub_1002A9480(&v23, &v25);
  if (v24)
  {
    sub_100009A48(v24);
  }

  v7 = *(v25 + 15);
  v18 = *(v25 + 13);
  v19 = v7;
  v20 = *(v25 + 17);
  v21 = v25[19];
  v8 = *(v25 + 11);
  v16 = *(v25 + 9);
  v17 = v8;
  Current = CFAbsoluteTimeGetCurrent();
  *&v16 = self->_epochTimestamp;
  *(&v19 + 1) = Current;
  v20 = *&self->_lastEpochTime;
  v10 = *&self->_triggerAOPTime;
  v22 = v10;
  if (qword_100456818 != -1)
  {
    sub_10030620C();
  }

  v11 = qword_100456820;
  if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134349312;
    v28 = *&v21;
    v29 = 2050;
    v30 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "sending local audio results to companion %{public}llu %{public}llu", buf, 0x16u);
  }

  if (qword_100456818 != -1)
  {
    sub_10030620C();
  }

  v12 = qword_100456820;
  if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134351104;
    v28 = *(&v16 + 2);
    v29 = 2050;
    v30 = *(&v16 + 3);
    v31 = 2050;
    v32 = *&v17;
    v33 = 2050;
    v34 = *(&v17 + 1);
    v35 = 1026;
    v36 = BYTE8(v17);
    v37 = 1026;
    v38 = BYTE9(v17);
    v39 = 1026;
    v40 = BYTE10(v17);
    v41 = 1026;
    v42 = BYTE11(v17);
    v43 = 1026;
    v44 = BYTE13(v17);
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "sent local audio results (all): %{public}f %{public}f %{public}f %{public}f %{public}d %{public}d %{public}d %{public}d %{public}d", buf, 0x48u);
  }

  if (qword_100456818 != -1)
  {
    sub_10030620C();
  }

  v13 = qword_100456820;
  if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134351104;
    v28 = *(&v16 + 2);
    v29 = 2050;
    v30 = *&v18;
    v31 = 2050;
    v32 = *(&v18 + 1);
    v33 = 2050;
    v34 = *(&v18 + 2);
    v35 = 1026;
    v36 = BYTE12(v18);
    v37 = 1026;
    v38 = BYTE13(v18);
    v39 = 1026;
    v40 = BYTE14(v18);
    v41 = 1026;
    v42 = HIBYTE(v18);
    v43 = 1026;
    v44 = BYTE1(v19);
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "sent [LA] results (roll): %{public}f %{public}f %{public}f %{public}f %{public}d %{public}d %{public}d %{public}d %{public}d", buf, 0x48u);
  }

  companionProxy = self->_companionProxy;
  v15 = [NSData dataWithBytes:&v16 length:96];
  [(CSCompanionServiceProtocol *)companionProxy sendData:v15 type:2, v16];

  if (v26)
  {
    sub_100009A48(v26);
  }

  if (v6)
  {
    sub_100009A48(v6);
  }
}

- (void)evaluateSamplingAlgFeatures
{
  ptr = self->fFlowControl.__ptr_;
  v4 = *(ptr + 18);
  v5 = *(ptr + 19);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v4 + 160))(&v25);
  sub_10001F720(&v25, &v27);
  if (v26)
  {
    sub_100009A48(v26);
  }

  if (v27[10] & 1) != 0 || (self->_forceFeatureBitmap)
  {
    self->_algFeatureBitmap |= 1u;
  }

  v6 = self->fFlowControl.__ptr_;
  v7 = *(v6 + 10);
  v8 = *(v6 + 11);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v7 + 160))(&lpsrc);
  if (lpsrc)
  {
    v9 = **lpsrc;
    if (v10)
    {
      v11 = v24;
      if (v24)
      {
        atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  if (v24)
  {
    sub_100009A48(v24);
  }

  if ((v10[40] & 1) != 0 || (self->_forceFeatureBitmap & 2) != 0)
  {
    self->_algFeatureBitmap |= 2u;
  }

  v12 = self->fFlowControl.__ptr_;
  v13 = *(v12 + 6);
  v14 = *(v12 + 7);
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v13 + 320))(&v21);
  v15 = *(v21 + 8);
  if (v22)
  {
    sub_100009A48(v22);
  }

  if ((v15 & 1) != 0 || (self->_forceFeatureBitmap & 4) != 0)
  {
    self->_algFeatureBitmap |= 4u;
  }

  v16 = self->fFlowControl.__ptr_;
  v17 = *(v16 + 42);
  v18 = *(v16 + 43);
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v17 + 160))(&v19);
  sub_1002C33E0(&v19, &v21);
  if (v20)
  {
    sub_100009A48(v20);
  }

  if (*(v21 + 340) == 1 && (v21[40] & 1) != 0 || (self->_forceFeatureBitmap & 8) != 0)
  {
    self->_algFeatureBitmap |= 8u;
  }

  if (v22)
  {
    sub_100009A48(v22);
  }

  if (v18)
  {
    sub_100009A48(v18);
  }

  if (v14)
  {
    sub_100009A48(v14);
  }

  if (v11)
  {
    sub_100009A48(v11);
  }

  if (v8)
  {
    sub_100009A48(v8);
  }

  if (v28)
  {
    sub_100009A48(v28);
  }

  if (v5)
  {
    sub_100009A48(v5);
  }
}

- (void)populateSessionDetails
{
  ptr = self->fFlowControl.__ptr_;
  if (!ptr)
  {
    sub_100306F1C();
  }

  v4 = *(ptr + 42);
  v5 = *(ptr + 43);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v4 + 160))(&v64);
  sub_1002C33E0(&v64, &v66);
  if (v65)
  {
    sub_100009A48(v65);
  }

  if (*(v66 + 296) == 1)
  {
    ++self->_sessionDetails.numRolloverCrashes;
  }

  v6 = self->fFlowControl.__ptr_;
  v7 = *(v6 + 16);
  v8 = *(v6 + 17);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v49 = v8;
  (*(*v7 + 160))(&v60);
  sub_1002A9480(&v60, &v62);
  if (v61)
  {
    sub_100009A48(v61);
  }

  if ((*(v62 + 101) & 1) != 0 || (self->_forceFeatureBitmap & 0x10) != 0)
  {
    self->_algFeatureBitmap |= 0x10u;
  }

  v9 = self->fFlowControl.__ptr_;
  v10 = *(v9 + 40);
  v11 = *(v9 + 41);
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v10 + 160))(&lpsrc);
  if (lpsrc)
  {
    v12 = **lpsrc;
    if (v13 && v59)
    {
      v48 = v59;
      atomic_fetch_add_explicit(&v59->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    else
    {
      v48 = 0;
    }
  }

  else
  {
    v48 = 0;
    v13 = 0;
  }

  if (v59)
  {
    sub_100009A48(v59);
  }

  if (v13[184] == 1)
  {
    ++self->_sessionDetails.numPlanarCrashes;
  }

  v14 = self->fFlowControl.__ptr_;
  v15 = *(v14 + 44);
  v16 = *(v14 + 45);
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v15 + 160))(&v56);
  if (v56)
  {
    v17 = **v56;
    if (v18)
    {
      v19 = v57;
      if (v57)
      {
        atomic_fetch_add_explicit(&v57->__shared_owners_, 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
    v18 = 0;
  }

  if (v57)
  {
    sub_100009A48(v57);
  }

  if (v18[32] == 1)
  {
    if (self->_sessionDetails.latchedHighSpeedCrash)
    {
      goto LABEL_42;
    }

    ++self->_sessionDetails.numHighSpeedCrashes;
    v20 = 1;
  }

  else
  {
    v20 = 0;
  }

  self->_sessionDetails.latchedHighSpeedCrash = v20;
LABEL_42:
  v21 = self->fFlowControl.__ptr_;
  v22 = *(v21 + 54);
  v23 = *(v21 + 55);
  if (v23)
  {
    atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v22 + 160))(&v52);
  sub_10003B98C(&v52, &v54);
  if (v53)
  {
    sub_100009A48(v53);
  }

  v24 = v54;
  v25 = v54[5];
  if (v25)
  {
    self->_sessionDetails.crashTimestamp = v25;
  }

  if (*(v24 + 48) == 1)
  {
    ++self->_sessionDetails.numSevereCrashes;
    self->_sessionDetails.severeCrashAOPTimestamp = v24[4];
  }

  v26 = *(v24 + 50);
  v27 = *(v24 + 49);
  if (((v26 & 1) != 0 || *(v24 + 49)) && !self->_sessionDetails.lendCompanionPunchThru)
  {
    if (qword_100456818 != -1)
    {
      sub_10030620C();
    }

    v28 = qword_100456820;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEBUG, "lending companion punch thru", buf, 2u);
    }

    self->_sessionDetails.lendCompanionPunchThru = 1;
    v29 = sub_1000197C8();
    [(CSCompanionServiceProtocol *)self->_companionProxy sendData:v29 type:402];
  }

  if (qword_100456818 != -1)
  {
    sub_10030620C();
  }

  v30 = qword_100456820;
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
  {
    lendCompanionPunchThru = self->_sessionDetails.lendCompanionPunchThru;
    v32 = *(v54 + 51);
    v33 = *(v54 + 48);
    v34 = *(v54 + 53);
    *buf = 67110400;
    *&buf[4] = v26;
    LOWORD(v69) = 1024;
    *(&v69 + 2) = v27;
    HIWORD(v69) = 1024;
    v70 = lendCompanionPunchThru;
    v71 = 1024;
    v72 = v32;
    v73 = 1024;
    v74 = v33;
    v75 = 1024;
    v76 = v34;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "punch thru lowsense %d highsense %d lend %d decided %d severe %d cand %d", buf, 0x26u);
  }

  KappaLowSenseCrashToken = getKappaLowSenseCrashToken(0);
  KappaHighSenseCrashToken = getKappaHighSenseCrashToken(0);
  if (v26 && KappaLowSenseCrashToken > 0)
  {
    v37 = 0;
  }

  else if (KappaHighSenseCrashToken < 1)
  {
    v37 = 1;
  }

  else
  {
    v37 = v27 ^ 1;
  }

  v38 = v54;
  if (v54[6])
  {
    v39 = 0;
  }

  else
  {
    v39 = *(v54 + 53) ^ 1;
  }

  if (self->_sessionDetails.lendCompanionPunchThru && !self->_sessionDetails.retractCompanionPunchThru && (*(v54 + 51) & (v37 & v39) & 1) != 0)
  {
    if (qword_100456818 != -1)
    {
      sub_10030620C();
    }

    v40 = qword_100456820;
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEBUG, "retracting companion punch thru", buf, 2u);
    }

    self->_sessionDetails.retractCompanionPunchThru = 1;
    v41 = sub_100019A7C();
    [(CSCompanionServiceProtocol *)self->_companionProxy sendData:v41 type:403];

    v38 = v54;
  }

  self->_sessionDetails.numDeescalationStatic = v38[6].i32[2];
  self->_sessionDetails.numDeescalationMoving = v38[5].i32[2];
  self->_sessionDetails.numDeescalationSteps = v38[6].i32[3];
  self->_sessionDetails.numDeescalationQuiescence = v38[5].i32[3];
  self->_sessionDetails.numDeescalationAutocorrelation = v38[5].i32[1];
  self->_sessionDetails.numDeescalationTriggerCluster = v38[7].i32[0];
  *&self->_sessionDetails.numDeescalationSkiingBaroAndAudio = v38[6].i64[0];
  self->_sessionDetails.numDeescalationUsha = v38[7].i32[2];
  self->_sessionDetails.numDeescalationAOI = v38[5].i32[0];
  self->_sessionDetails.numDeescalationTwoLevel = v38[7].i32[1];
  *&self->_sessionDetails.numDeescalationDistToRoad = vuzp2q_s32(vextq_s8(v38[8], v38[8], 4uLL), v38[8]);
  self->_sessionDetails.numInertDeescalationCrashClassifier = v38[9].i32[0];
  v42 = self->fFlowControl.__ptr_;
  v43 = *(v42 + 18);
  v44 = *(v42 + 19);
  if (v44)
  {
    atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v43 + 160))(&v50);
  sub_10001F720(&v50, buf);
  if (v51)
  {
    sub_100009A48(v51);
  }

  v45 = *buf;
  v46 = *(*buf + 176);
  if (v46 > self->_sessionDetails.maxDeltaVXYBiggestImpact)
  {
    self->_sessionDetails.maxDeltaVXYBiggestImpact = v46;
  }

  v47 = *(v45 + 168);
  if (v47 > self->_sessionDetails.maxDeltaVXYOverEpoch)
  {
    self->_sessionDetails.maxDeltaVXYOverEpoch = v47;
  }

  if (v69)
  {
    sub_100009A48(v69);
  }

  if (v44)
  {
    sub_100009A48(v44);
  }

  if (v55)
  {
    sub_100009A48(v55);
  }

  if (v23)
  {
    sub_100009A48(v23);
  }

  if (v19)
  {
    sub_100009A48(v19);
  }

  if (v16)
  {
    sub_100009A48(v16);
  }

  if (v48)
  {
    sub_100009A48(v48);
  }

  if (v11)
  {
    sub_100009A48(v11);
  }

  if (v63)
  {
    sub_100009A48(v63);
  }

  if (v49)
  {
    sub_100009A48(v49);
  }

  if (v67)
  {
    sub_100009A48(v67);
  }

  if (v5)
  {
    sub_100009A48(v5);
  }
}

- (void)sendRemoteSampleToCompanion:(unint64_t)a3 epochTs:(unint64_t)a4 epochNumber:(int)a5
{
  ptr = self->fFlowControl.__ptr_;
  if (ptr)
  {
    CLKappaAlgFlowController::createRemoteSample(ptr, &v11);
    if (v14 == 1)
    {
      v11.i32[2] = a5;
      v12 = a3;
      v13 = a4;
      v10 = sub_1000193B4(&v11);
      [(CSCompanionServiceProtocol *)self->_companionProxy sendData:v10 type:401];
    }
  }
}

- (int64_t)daysSinceTimestamp:(double)a3
{
  v3 = [NSDate dateWithTimeIntervalSinceReferenceDate:a3];
  v4 = +[NSCalendar currentCalendar];
  v5 = +[NSDate now];
  v6 = [v4 components:16 fromDate:v3 toDate:v5 options:0];

  v7 = [v6 day];
  return v7;
}

- (BOOL)shouldKeepEarlyCrashTTR
{
  v3 = +[CSPersistentConfiguration sharedConfiguration];
  v4 = [v3 getFloatDefault:@"KappaTTREarlyCrashPopupRate"];
  [v3 doubleForKey:@"KappaLastTTREarlyCrashTimestamp"];
  v5 = [(CSKappaDetectionService *)self daysSinceTimestamp:?];
  v6 = v5;
  if ((v4 & &_mh_execute_header) != 0)
  {
    v7 = *&v4;
  }

  else
  {
    v7 = 1.0;
  }

  if (v5 >= 1 && [(CSKappaDetectionService *)self coinflip:v7])
  {
    if (qword_100456818 != -1)
    {
      sub_1003061F8();
    }

    v8 = qword_100456820;
    if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 67109376;
      v13 = v6;
      v14 = 2048;
      v15 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[TTR] EarlyCrash alert cooldown expired daysSinceLast,%d,rate,%4.2f", &v12, 0x12u);
    }

    v9 = 1;
  }

  else
  {
    if (qword_100456818 != -1)
    {
      sub_1003061F8();
    }

    v10 = qword_100456820;
    v9 = 0;
    if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 67109376;
      v13 = v6;
      v14 = 2048;
      v15 = v7;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[TTR] EarlyCrash alert still cooling down daysSinceLast,%d,rate,%4.2f", &v12, 0x12u);
      v9 = 0;
    }
  }

  return v9;
}

- (void)stop:(unint64_t)a3
{
  if (qword_100456818 != -1)
  {
    sub_1003061F8();
  }

  v5 = qword_100456820;
  if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "stop the aop service", &buf, 2u);
  }

  CSAOPSvc::suppressTriggers(self->_aop, 1);
  CSAOPSvc::stopDetection(self->_aop);
  if (qword_100456818 != -1)
  {
    sub_10030620C();
  }

  v6 = qword_100456820;
  if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "finalizing the session", &buf, 2u);
  }

  [(CSKappaDetectionService *)self stopSession];
  [(CSPower *)self->_powerAssertion powerlogActivity:6 event:0 isActive:CFAbsoluteTimeGetCurrent()];
  v7 = [(CSKappaDetectionService *)self logAudioStats];
  if (self->_detectionEvent >= 2)
  {
    if (qword_100456818 != -1)
    {
      sub_10030620C();
    }

    v8 = qword_100456820;
    if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "subsequent detection events cannot take tokens or update metadata", &buf, 2u);
    }

    goto LABEL_61;
  }

  ptr = self->fFlowControl.__ptr_;
  if (!ptr)
  {
    sub_100307044(v7);
  }

  v10 = *(ptr + 54);
  v11 = *(ptr + 55);
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v10 + 160))(&v45);
  sub_10003B98C(&v45, v56);
  if (v46)
  {
    sub_100009A48(v46);
  }

  v12 = *v56;
  self->_deescalationBitmap = *(*v56 + 344);
  v42 = v12[49];
  v43 = v12[50];
  v41 = v12[48];
  v13 = v12[53];
  KappaToken = getKappaToken(0);
  KappaLowSenseCrashToken = getKappaLowSenseCrashToken(0);
  KappaHighSenseCrashToken = getKappaHighSenseCrashToken(0);
  if (qword_100456818 != -1)
  {
    sub_10030620C();
  }

  v17 = a3;
  v18 = qword_100456820;
  if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 67109632;
    HIDWORD(buf) = KappaToken;
    v48 = 1024;
    v49 = KappaLowSenseCrashToken;
    v50 = 1024;
    v51 = KappaHighSenseCrashToken;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "tokenTriggerCnt = %d, tokenLowSenseCrashCnt = %d, tokenHighSenseCrashCnt = %d", &buf, 0x14u);
  }

  if (self->_SOSInProgress || v13)
  {
    a3 = v17;
    if (qword_100456818 != -1)
    {
      sub_10030620C();
    }

    v19 = v11;
    v22 = qword_100456820;
    if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEBUG))
    {
      SOSInProgress = self->_SOSInProgress;
      LODWORD(buf) = 67109376;
      HIDWORD(buf) = SOSInProgress;
      v48 = 1024;
      v49 = v13;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "crash detected %d suppressed %d", &buf, 0xEu);
    }

    goto LABEL_36;
  }

  a3 = v17;
  if (KappaLowSenseCrashToken >= 1 && v43)
  {
    v19 = v11;
    if (qword_100456818 != -1)
    {
      sub_10030620C();
    }

    v20 = qword_100456820;
    if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "acquiring kappa low sense crash token", &buf, 2u);
    }

    v21 = 1;
    getKappaLowSenseCrashToken(1);
    goto LABEL_37;
  }

  v19 = v11;
  if (KappaHighSenseCrashToken >= 1 && v42)
  {
    if (qword_100456818 != -1)
    {
      sub_10030620C();
    }

    v32 = qword_100456820;
    if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEBUG, "acquiring kappa high sense crash token", &buf, 2u);
    }

    v21 = 1;
    getKappaHighSenseCrashToken(1);
    goto LABEL_37;
  }

  if (KappaToken < 1)
  {
    if (!KappaToken)
    {
      v40 = sub_1002F7258();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEBUG, "forcefully stopping aop collection", &buf, 2u);
      }

      CSAOPSvc::forceStopCollection(self->_aop);
    }

LABEL_36:
    v21 = 0;
    goto LABEL_37;
  }

  if (qword_100456818 != -1)
  {
    sub_10030620C();
  }

  v39 = qword_100456820;
  if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEBUG, "acquiring kappa trigger token", &buf, 2u);
  }

  v21 = 1;
  getKappaToken(1);
LABEL_37:
  mslRecording = self->_mslRecording;
  v54 = @"kappaTokenAllocated";
  v25 = [NSNumber numberWithBool:v21];
  v55 = v25;
  v26 = [NSDictionary dictionaryWithObjects:&v55 forKeys:&v54 count:1];
  [(CSMSLDataRecording *)mslRecording updateMetadata:v26];

  self->_sessionDetails.lowSenseCrashDetected = v43;
  self->_sessionDetails.highSenseCrashDetected = v42;
  v27 = +[CSPersistentConfiguration sharedConfiguration];
  v28 = [v27 getFloatDefault:@"KappaTTREnableHighSens"];
  if (qword_100456818 != -1)
  {
    sub_10030620C();
  }

  v29 = (v28 & 0x17FFFFFFFLL);
  v30 = qword_100456820;
  if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEFAULT))
  {
    buf = __PAIR64__(v43, 67109888);
    v48 = 1024;
    v49 = v42;
    v50 = 1024;
    v51 = v29 != &_mh_execute_header;
    v52 = 1024;
    v53 = v41;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "[TTR] lowSens,%d,highSens,%d,highSensEnabled,%d,severe,%d", &buf, 0x1Au);
  }

  if (![(CSKappaDetectionService *)self shouldKeepEarlyCrashTTR])
  {
    goto LABEL_57;
  }

  if (!v43 || (v41 & 1) != 0)
  {
    if (v29 == &_mh_execute_header || !v42 || (v41 & 1) != 0)
    {
      goto LABEL_57;
    }

    v31 = 2;
  }

  else
  {
    v31 = 3;
  }

  self->_sessionDetails.ttrType = v31;
LABEL_57:

  if (v57)
  {
    sub_100009A48(v57);
  }

  if (v19)
  {
    sub_100009A48(v19);
  }

LABEL_61:
  v33 = objc_initWeak(&buf, self);
  v34 = [(CLSilo *)self->_silo newTimer];
  sosTimer = self->_sosTimer;
  self->_sosTimer = v34;

  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_1002FD810;
  v44[3] = &unk_1004234F0;
  v44[4] = self;
  v44[5] = a3;
  [(CLTimer *)self->_sosTimer setHandler:v44];
  v36 = +[CSPersistentConfiguration sharedConfiguration];
  v37 = [v36 integerForKey:@"SOSTimeoutExpiration"];

  if (qword_100456818 != -1)
  {
    sub_10030620C();
  }

  v38 = qword_100456820;
  if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_INFO))
  {
    *v56 = 67109120;
    *&v56[4] = v37;
    _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, "setting sos timer expiration %d", v56, 8u);
  }

  [(CLTimer *)self->_sosTimer setNextFireDelay:v37 interval:1.79769313e308];

  objc_destroyWeak(&buf);
}

- (void)saveForceState:(int)a3 withValue:(int)a4
{
  if (a3 < 0x18)
  {
    self->_savedForceState[a3] = a4;
  }

  else
  {
    v8 = v4;
    v9 = v5;
    if (qword_100456818 != -1)
    {
      sub_1003061F8();
    }

    v6 = qword_100456820;
    if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEBUG))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "value not in range", v7, 2u);
    }
  }
}

- (void)forceBehavior:(int)a3 withValue:(int)a4
{
  if (a3 <= 9)
  {
    if (a3 >= 6)
    {
      if ((a3 - 6) < 4)
      {
        [CSKappaDetectionService forceRolloverCrashDetector:"forceRolloverCrashDetector:withValue:" withValue:?];
      }
    }

    else
    {
      [CSKappaDetectionService forceCrashDetector:"forceCrashDetector:withValue:" withValue:?];
    }
  }

  else if (a3 < 16)
  {
    [CSKappaDetectionService forceHighSpeedCrashDetector:"forceHighSpeedCrashDetector:withValue:" withValue:?];
  }

  else
  {
    if (a3 < 21)
    {
LABEL_4:
      [CSKappaDetectionService forceSevereCrashDetector:"forceSevereCrashDetector:withValue:" withValue:?];
      return;
    }

    switch(a3)
    {
      case 21:
        [CSKappaDetectionService forceSamplingBits:"forceSamplingBits:withValue:" withValue:?];
        break;
      case 22:
        [CSKappaDetectionService forceParticipatingInEscalation:"forceParticipatingInEscalation:withValue:" withValue:?];
        break;
      case 23:
        goto LABEL_4;
    }
  }
}

- (BOOL)coinflip:(double)a3
{
  if (a3 >= 0.0 && a3 <= 1.0)
  {
    v7 = drand48();
    if (qword_100456818 != -1)
    {
      sub_1003061F8();
    }

    v8 = v7 * 100.0;
    v9 = a3 * 100.0;
    v10 = qword_100456820;
    if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_INFO))
    {
      v12 = 134218240;
      v13 = v8;
      v14 = 2048;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "coin flip = %f, rbound = %f", &v12, 0x16u);
    }

    LOBYTE(v6) = v8 <= v9 && v8 >= 0.0;
  }

  else
  {
    if (qword_100456818 != -1)
    {
      sub_1003061F8();
    }

    v5 = qword_100456820;
    v6 = os_log_type_enabled(qword_100456820, OS_LOG_TYPE_INFO);
    if (v6)
    {
      LOWORD(v12) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "invalid rate specified", &v12, 2u);
      LOBYTE(v6) = 0;
    }
  }

  return v6;
}

- (float)querySamplingRate:(id)a3 withDefault:(float)a4
{
  v5 = a3;
  v6 = +[CSPersistentConfiguration sharedConfiguration];
  v7 = [v6 objectForKey:v5];
  if (v7)
  {
    [v6 floatForKey:v5];
    a4 = v8;
  }

  return a4;
}

- (float)querySamplingBin:(id)a3 atIndex:(int)a4 withDefault:(float)a5
{
  v7 = a3;
  v8 = +[CSPersistentConfiguration sharedConfiguration];
  v9 = a4;
  v10 = [v7 stringByAppendingFormat:@"%lu", a4];
  v11 = [v8 objectForKey:v10];
  if (v11)
  {
    LODWORD(v12) = 1120403456;
    *&v13 = a5;
    [v8 algorithmThresholdNumber:v9 inArrayForKey:@"CurDetectionPhoneDetectionWatchAcceptanceRateBitmap" withMinValue:0.0 maxValue:v12 defaultValue:v13];
    a5 = v14;
  }

  return a5;
}

- (void)printSamplingDefaults
{
  if (qword_100456818 != -1)
  {
    sub_1003061F8();
  }

  v3 = qword_100456820;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    LODWORD(v4) = -1.0;
    [(CSKappaDetectionService *)self querySamplingRate:@"CurPairedLoggingAndDetectionAcceptanceRate" withDefault:v4];
    *buf = 134217984;
    v20[0] = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "curation rate 2: %f", buf, 0xCu);
  }

  v6 = 0;
  do
  {
    if (qword_100456818 != -1)
    {
      sub_10030620C();
    }

    v7 = qword_100456820;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      LODWORD(v8) = -1.0;
      [(CSKappaDetectionService *)self querySamplingBin:@"CurDetectionPhoneDetectionWatchAcceptanceRateBitmap" atIndex:v6 withDefault:v8];
      *buf = 67109376;
      LODWORD(v20[0]) = v6;
      WORD2(v20[0]) = 2048;
      *(v20 + 6) = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "curation bitmap %d: %f", buf, 0x12u);
    }

    v6 = (v6 + 1);
  }

  while (v6 != 32);
  if (qword_100456818 != -1)
  {
    sub_10030620C();
  }

  v10 = qword_100456820;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    LODWORD(v11) = -1.0;
    [(CSKappaDetectionService *)self querySamplingRate:@"PerfDetectionPhoneDetectionWatchAcceptanceRate" withDefault:v11];
    *buf = 134217984;
    v20[0] = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "performance sampling rate 1 %f", buf, 0xCu);
  }

  if (qword_100456818 != -1)
  {
    sub_10030620C();
  }

  v13 = qword_100456820;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    LODWORD(v14) = -1.0;
    [(CSKappaDetectionService *)self querySamplingRate:@"PerfLoggingPhoneDetectionWatchAcceptanceRate" withDefault:v14];
    *buf = 134217984;
    v20[0] = v15;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "performance sampling rate 2 %f", buf, 0xCu);
  }

  if (qword_100456818 != -1)
  {
    sub_10030620C();
  }

  v16 = qword_100456820;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    LODWORD(v17) = -1.0;
    [(CSKappaDetectionService *)self querySamplingRate:@"PerfDetectionPhoneAcceptanceRate" withDefault:v17];
    *buf = 134217984;
    v20[0] = v18;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "performance sampling rate 3 %f", buf, 0xCu);
  }
}

- (BOOL)curationSampling
{
  if (self->_SOSInProgress)
  {
    if (qword_100456818 != -1)
    {
      sub_1003061F8();
    }

    v3 = qword_100456820;
    if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "curation sampling coinflip 1 1.0", buf, 2u);
    }

    self->_samplingBitmap |= 1u;
    return 1;
  }

  ptr = self->fFlowControl.__ptr_;
  if (!ptr)
  {
    sub_100307BA4();
  }

  v6 = *(ptr + 54);
  v7 = *(ptr + 55);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v6 + 160))(&v20);
  sub_10003B98C(&v20, &v22);
  if (v21)
  {
    sub_100009A48(v21);
  }

  if (*(v22 + 53) != 1)
  {
    LODWORD(v8) = 1041865114;
    [(CSKappaDetectionService *)self querySamplingRate:@"CurPairedLoggingAndDetectionAcceptanceRate" withDefault:v8];
    v11 = *&v10;
    if (!self->_isLoggingDevice || self->_companionDeviceType != 1)
    {
      if (!self->_isDetectionDevice)
      {
        goto LABEL_35;
      }

      if (self->_companionDeviceType)
      {
        goto LABEL_33;
      }
    }

    if (qword_100456818 != -1)
    {
      sub_10030620C();
    }

    v12 = qword_100456820;
    v13 = v11;
    if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      *v25 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "curation sampling coinflip 2 %f", buf, 0xCu);
    }

    if ([(CSKappaDetectionService *)self coinflip:v13])
    {
      goto LABEL_34;
    }

    if (self->_isDetectionDevice)
    {
LABEL_33:
      if (self->_companionDeviceType == 1)
      {
        LODWORD(v10) = dword_1003BFE74[self->_algFeatureBitmap];
        [(CSKappaDetectionService *)self querySamplingBin:@"CurDetectionPhoneDetectionWatchAcceptanceRateBitmap" atIndex:v10 withDefault:?];
        v15 = v14;
        if (qword_100456818 != -1)
        {
          sub_10030620C();
        }

        v16 = qword_100456820;
        if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_INFO))
        {
          algFeatureBitmap = self->_algFeatureBitmap;
          v18 = v15;
          *buf = 67109376;
          LODWORD(v25[0]) = algFeatureBitmap;
          WORD2(v25[0]) = 2048;
          *(v25 + 6) = v18;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "curation sampling coinflip 3 alg rate for %d is %f", buf, 0x12u);
        }

        else
        {
          v18 = v15;
        }

        if ([(CSKappaDetectionService *)self coinflip:v18])
        {
          goto LABEL_34;
        }
      }
    }

LABEL_35:
    v4 = 0;
    goto LABEL_36;
  }

  if (qword_100456818 != -1)
  {
    sub_10030620C();
  }

  v9 = qword_100456820;
  if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "false positive (previous escalations) 1.0", buf, 2u);
  }

LABEL_34:
  self->_samplingBitmap |= 1u;
  v4 = 1;
LABEL_36:
  if (v23)
  {
    sub_100009A48(v23);
  }

  if (v7)
  {
    sub_100009A48(v7);
  }

  return v4;
}

- (BOOL)performanceSampling
{
  LODWORD(v2) = 1031798784;
  [(CSKappaDetectionService *)self querySamplingRate:@"PerfDetectionPhoneDetectionWatchAcceptanceRate" withDefault:v2];
  if (__PAIR64__(self->_companionDeviceType, self->_isDetectionDevice) == 0x100000001)
  {
    v5 = *&v4;
    if (qword_100456818 != -1)
    {
      sub_1003061F8();
    }

    v6 = qword_100456820;
    v7 = v5;
    if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_INFO))
    {
      v18 = 134217984;
      v19 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "performance sampling coinflip 1 %f", &v18, 0xCu);
    }

    if ([(CSKappaDetectionService *)self coinflip:v7])
    {
      goto LABEL_22;
    }
  }

  LODWORD(v4) = 956502639;
  [(CSKappaDetectionService *)self querySamplingRate:@"PerfLoggingPhoneDetectionWatchAcceptanceRate" withDefault:v4];
  if (self->_isLoggingDevice && self->_companionDeviceType == 1)
  {
    v9 = *&v8;
    if (qword_100456818 != -1)
    {
      sub_10030620C();
    }

    v10 = qword_100456820;
    v11 = v9;
    if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_INFO))
    {
      v18 = 134217984;
      v19 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "performance sampling coinflip 2 %f", &v18, 0xCu);
    }

    if ([(CSKappaDetectionService *)self coinflip:v11])
    {
      goto LABEL_22;
    }
  }

  LODWORD(v8) = 956502639;
  [(CSKappaDetectionService *)self querySamplingRate:@"PerfDetectionPhoneAcceptanceRate" withDefault:v8];
  if (self->_isDetectionDevice && (self->_companionDeviceType + 1) <= 1)
  {
    v13 = v12;
    if (qword_100456818 != -1)
    {
      sub_10030620C();
    }

    v14 = qword_100456820;
    v15 = v13;
    if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_INFO))
    {
      v18 = 134217984;
      v19 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "performance sampling coinflip 3 %f", &v18, 0xCu);
    }

    v16 = [(CSKappaDetectionService *)self coinflip:v15];
    if (v16)
    {
LABEL_22:
      self->_samplingBitmap |= 2u;
      LOBYTE(v16) = 1;
    }
  }

  else
  {
    LOBYTE(v16) = 0;
  }

  return v16;
}

- (BOOL)shouldUploadRecording
{
  v3 = [(CSKappaDetectionService *)self curationSampling];
  v4 = [(CSKappaDetectionService *)self performanceSampling];
  return (v3 | v4 | [(CSKappaDetectionService *)self isHighOrLowSenseDetection]) & 1;
}

- (void)notifyCompanionOfUploadedCompanionUUID
{
  v5[0] = 0;
  v5[1] = 0;
  [(NSUUID *)self->_companionUUID getUUIDBytes:v5];
  companionProxy = self->_companionProxy;
  v4 = [NSData dataWithBytes:v5 length:16];
  [(CSCompanionServiceProtocol *)companionProxy sendData:v4 type:7];
}

- (void)resetSession
{
  if (qword_100456818 != -1)
  {
    sub_1003061F8();
  }

  v3 = qword_100456820;
  if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "resetSession", buf, 2u);
  }

  v4 = +[CSPersistentConfiguration sharedConfiguration];
  v45 = [v4 integerForKey:@"ServerConfigVersion"];

  v5 = +[CSPersistentConfiguration sharedConfiguration];
  v44 = [v5 BOOLForKey:@"UploadSerialNumberInMetadata"];

  ptr = self->fFlowControl.__ptr_;
  v7 = *(ptr + 54);
  v8 = *(ptr + 55);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v39 = v8;
  (*(*v7 + 160))(&v46);
  sub_10003B98C(&v46, buf);
  if (v47)
  {
    sub_100009A48(v47);
  }

  mslRecording = self->_mslRecording;
  v58[0] = @"configServerVersionNumber";
  v43 = [NSNumber numberWithInteger:v45];
  v59[0] = v43;
  v58[1] = @"curationAlgBitmap";
  v42 = [NSNumber numberWithUnsignedChar:self->_algFeatureBitmap];
  v59[1] = v42;
  v58[2] = @"severeCrashDetectorDecision";
  v41 = [NSNumber numberWithBool:self->_sessionDetails.numSevereCrashes > 0];
  v59[2] = v41;
  v58[3] = @"severeCrashTimestamp";
  v40 = [NSNumber numberWithUnsignedLongLong:self->_sessionDetails.severeCrashAOPTimestamp];
  v59[3] = v40;
  v58[4] = @"algsEndTimestamp";
  v10 = [NSNumber numberWithUnsignedLongLong:self->_sessionDetails.algsEndTimestamp];
  v59[4] = v10;
  v58[5] = @"deescalationPath";
  v11 = [NSNumber numberWithUnsignedInt:self->_deescalationBitmap];
  v59[5] = v11;
  v58[6] = @"escalationCandidateSuppressed";
  v12 = [NSNumber numberWithBool:*(*buf + 53)];
  v59[6] = v12;
  v58[7] = @"crashTimestamp";
  v13 = [NSNumber numberWithUnsignedLongLong:self->_sessionDetails.crashTimestamp];
  v59[7] = v13;
  v58[8] = @"lowSenseCrashDetected";
  v14 = [NSNumber numberWithBool:self->_sessionDetails.lowSenseCrashDetected];
  v59[8] = v14;
  v58[9] = @"highSenseCrashDetected";
  v15 = [NSNumber numberWithBool:self->_sessionDetails.highSenseCrashDetected];
  v59[9] = v15;
  v16 = [NSDictionary dictionaryWithObjects:v59 forKeys:v58 count:10];
  [(CSMSLDataRecording *)mslRecording updateMetadata:v16];

  if (v44)
  {
    v17 = +[CSPlatformInfo sharedInstance];
    v18 = [v17 getSerialNumber];

    v19 = self->_mslRecording;
    v56 = @"serialNumber";
    v57 = v18;
    v20 = [NSDictionary dictionaryWithObjects:&v57 forKeys:&v56 count:1];
    [(CSMSLDataRecording *)v19 updateMetadata:v20];
  }

  if (self->_checkForPOI)
  {
    v21 = self->_mslRecording;
    v54 = @"LOIHint";
    v22 = [NSNumber numberWithBool:self->_isNearAmusementParkPOI];
    v55 = v22;
    v23 = [NSDictionary dictionaryWithObjects:&v55 forKeys:&v54 count:1];
    [(CSMSLDataRecording *)v21 updateMetadata:v23];
  }

  self->_sessionDetails.deescalationBitmap = self->_deescalationBitmap;
  self->_deescalationBitmap = 0;
  self->_sessionDetails.serverConfigVersion = v45;
  if (qword_100456818 != -1)
  {
    sub_10030620C();
  }

  v24 = qword_100456820;
  if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEFAULT))
  {
    samplingBitmap = self->_samplingBitmap;
    *v52 = 67240192;
    v53 = samplingBitmap;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "sampling bitmap %{public}d", v52, 8u);
  }

  if (self->_canCollectData)
  {
    v26 = [(CSKappaDetectionService *)self shouldUploadRecording];
    v27 = [(CSMSLDataRecording *)self->_mslRecording metadata];
    v28 = [v27 objectForKey:@"shouldUploadIndependentlyOfSOS"];

    if (v28)
    {
      v26 = [v28 isEqual:&off_10043D648];
    }

    if (self->_companionUUID && ((v26 & 1) != 0 || self->_tellCompanionToUpload))
    {
      if (qword_100456818 != -1)
      {
        sub_10030620C();
      }

      v29 = qword_100456820;
      if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_INFO))
      {
        *v52 = 0;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "Notifying companion of UUID for upload", v52, 2u);
      }

      [(CSKappaDetectionService *)self notifyCompanionOfUploadedCompanionUUID];
      companionUUID = self->_companionUUID;
      self->_companionUUID = 0;
    }

    v31 = self->_mslRecording;
    v50[0] = @"samplingBitmap";
    v32 = [NSNumber numberWithUnsignedChar:self->_samplingBitmap];
    v33 = &off_10043D648;
    v50[1] = @"shouldUploadIndependentlyOfSOS";
    v51[0] = v32;
    if (!v26)
    {
      v33 = &off_10043D660;
    }

    v51[1] = v33;
    v34 = [NSDictionary dictionaryWithObjects:v51 forKeys:v50 count:2];
    [(CSMSLDataRecording *)v31 updateMetadata:v34];
  }

  v35 = [NSData dataWithBytes:&self->_sessionDetails length:176];
  [(CSKappaDetectionService *)self updateKappaSessionClients:9 data:v35];

  self->_companionTriggerTime = 0.0;
  self->_inSession = 0;
  companionUUIDPreSession = self->_companionUUIDPreSession;
  self->_companionUUIDPreSession = 0;

  v37 = self->_companionUUID;
  self->_companionUUID = 0;

  [(CLTimer *)self->_triggerTimer setNextFireDelay:1.79769313e308 interval:1.79769313e308];
  v38 = self->fFlowControl.__ptr_;
  self->fFlowControl.__ptr_ = 0;
  if (v38)
  {
    (*(*v38 + 8))(v38);
  }

  CSAOPSvc::suppressTriggers(self->_aop, 0);
  if (v49)
  {
    sub_100009A48(v49);
  }

  if (v39)
  {
    sub_100009A48(v39);
  }
}

- (void)stopSession
{
  if (qword_100456818 != -1)
  {
    sub_1003061F8();
  }

  v3 = qword_100456820;
  if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_INFO))
  {
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "stop session", v15, 2u);
  }

  companionUUID = self->_companionUUID;
  if (companionUUID && (v5 = self->_mslRecording, v20 = @"companionUUID", v21 = companionUUID, [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1], v6 = objc_claimAutoreleasedReturnValue(), [(CSMSLDataRecording *)v5 updateMetadata:v6], v6, self->_companionUUID))
  {
    mslRecording = self->_mslRecording;
    v16 = @"collectionUUID";
    v8 = [(NSUUID *)self->_uuid UUIDString];
    v17 = v8;
    v9 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    [(CSMSLDataRecording *)mslRecording updateMetadata:v9];
  }

  else
  {
    v10 = self->_mslRecording;
    v18 = @"collectionUUID";
    v8 = [(NSUUID *)self->_uuid UUIDString];
    v19 = v8;
    v9 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    [(CSMSLDataRecording *)v10 updateMetadata:v9];
  }

  self->_sessionDetails.trigger_bitmap = self->_triggerPathBitmap;
  v11 = objc_alloc_init(NSMutableDictionary);
  ptr = self->fFlowControl.__ptr_;
  if (ptr)
  {
    CLKappaAlgFlowController::finalizeAlgBlocks(ptr);
    CLKappaAlgFlowController::fetchAlgBlocksMeta(self->fFlowControl.__ptr_, v11);
  }

  [(CSMSLDataRecording *)self->_mslRecording updateMetadata:v11];
  if (self->_canCollectData)
  {
    v13 = +[CSPermissions sharedInstance];
    v14 = [v13 isAuthorizedToCollectData];

    if ((v14 & 1) == 0)
    {
      self->_canCollectData = 0;
    }
  }

  [(CSKappaDetectionService *)self updateKappaSessionClients:3 data:0];
}

- (void)finishAnomalyEvent
{
  self->_detectionEvent = 0;
  [(CSKappaDetectionService *)self decideToShowTTR];
  v3 = +[CSPlatformInfo sharedInstance];
  v4 = [v3 isFeedbackAssistantEligible];

  if (v4 && !self->_SOSInProgress)
  {
    if (qword_100456818 != -1)
    {
      sub_1003061F8();
    }

    v5 = qword_100456820;
    if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[fba] SOS not in progress, attempt to enqueue UUID, if it was held", v7, 2u);
    }

    v6 = [(NSUUID *)self->_uuid UUIDString];
    [CSAnomalyEventService enqueueHeldRecordingForUpload:v6];
  }
}

- (void)decideToShowTTR
{
  if (qword_100456818 != -1)
  {
    sub_1003061F8();
  }

  v3 = qword_100456820;
  if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEFAULT))
  {
    ttrType = self->_sessionDetails.ttrType;
    v12[0] = 67109120;
    v12[1] = ttrType;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[TTR] Deciding if to show TTR: type,%d", v12, 8u);
  }

  v5 = +[CSPlatformInfo sharedInstance];
  v6 = [v5 isInternalInstall];

  if (v6)
  {
    v7 = +[CSPersistentConfiguration sharedConfiguration];
    v8 = self->_sessionDetails.ttrType;
    if ((v8 - 2) >= 2)
    {
      if (v8 != 4)
      {
LABEL_11:

        return;
      }

      ttr = self->_ttr;
      v10 = [(NSUUID *)self->_uuid UUIDString];
      [(CSKappaTap2Radar *)ttr enqueueTTRWithTriggerUUID:v10 error:0];
    }

    else
    {
      [v7 setDouble:@"KappaLastTTREarlyCrashTimestamp" forKey:CFAbsoluteTimeGetCurrent()];
      v9 = self->_ttr;
      v10 = [(NSUUID *)self->_uuid UUIDString];
      [(CSKappaTap2Radar *)v9 showTTRWithTriggerUUID:v10 andEventType:self->_sessionDetails.ttrType];
    }

    goto LABEL_11;
  }
}

- (void)setRecording:(id)a3 withUUID:(id)a4
{
  v8 = a3;
  v9 = a4;
  if (self->_hsm)
  {
    p_vtable = GPBRootObject.vtable;
    if (qword_100456818 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_100307CCC(buf);

    abort_report_np();
    __break(1u);
  }

  sub_1003061F8();
LABEL_3:
  v10 = qword_100456820;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v8;
    v12 = [(CSHSMObjc *)self->_hsm isIn:self->_idleState];
    v13 = [(CSHSMObjc *)self->_hsm isIn:self->_readingState];
    v14 = [(CSHSMObjc *)self->_hsm isIn:self->_waitForSOSState];
    v15 = [(CSHSMObjc *)self->_hsm isIn:self->_waitForPOIState];
    *buf = 67109888;
    *&buf[4] = v12;
    v18 = 1024;
    v19 = v13;
    v20 = 1024;
    v21 = v14;
    v22 = 1024;
    v23 = v15;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "set recording state %d %d %d %d", buf, 0x1Au);
    v8 = v11;
    p_vtable = GPBRootObject.vtable;
  }

  if ([(CSHSMObjc *)self->_hsm isIn:self->_idleState])
  {
    objc_storeStrong(&self->_mslRecording, a3);
    objc_storeStrong(&self->_uuid, a4);
  }

  else
  {
    if (p_vtable[259] != -1)
    {
      sub_10030620C();
    }

    v16 = qword_100456820;
    if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "recording details may only be set in idle", buf, 2u);
    }
  }
}

- (void)dumpSample:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    if (qword_100456818 != -1)
    {
      sub_1003061F8();
    }

    v5 = qword_100456820;
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_18;
    }

    v6 = *[v4 c_struct];
    v7 = *([v4 c_struct] + 2);
    v8 = *([v4 c_struct] + 3);
    v9 = *([v4 c_struct] + 4);
    v56 = 134218752;
    v57 = v6;
    v58 = 2048;
    *v59 = v7;
    *&v59[8] = 2048;
    *v60 = v8;
    *&v60[8] = 2048;
    v61 = v9;
    v10 = "accel800 %llu x %.7f y %.7f z %.7f\n";
    goto LABEL_16;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v3;
    if (qword_100456818 != -1)
    {
      sub_1003061F8();
    }

    v5 = qword_100456820;
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_18;
    }

    v12 = *[v11 c_struct];
    v13 = *([v11 c_struct] + 2);
    v14 = *([v11 c_struct] + 3);
    v15 = *([v11 c_struct] + 4);
    v56 = 134218752;
    v57 = v12;
    v58 = 2048;
    *v59 = v13;
    *&v59[8] = 2048;
    *v60 = v14;
    *&v60[8] = 2048;
    v61 = v15;
    v10 = "hgaccel %llu x %.7f y %.7f z %.7f\n";
    goto LABEL_16;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = v3;
    if (qword_100456818 != -1)
    {
      sub_1003061F8();
    }

    v5 = qword_100456820;
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_18;
    }

    v17 = *[v16 c_struct];
    v18 = *([v16 c_struct] + 2);
    v19 = *([v16 c_struct] + 3);
    v20 = *([v16 c_struct] + 4);
    v56 = 134218752;
    v57 = v17;
    v58 = 2048;
    *v59 = v18;
    *&v59[8] = 2048;
    *v60 = v19;
    *&v60[8] = 2048;
    v61 = v20;
    v10 = "accel %llu x %.7f y %.7f z %.7f\n";
LABEL_16:
    v21 = v5;
    v22 = 42;
LABEL_17:
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, v10, &v56, v22);
    goto LABEL_18;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v23 = v3;
    if (qword_100456818 != -1)
    {
      sub_1003061F8();
    }

    v5 = qword_100456820;
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_18;
    }

    v24 = *([v23 c_struct] + 1);
    v56 = 134217984;
    v57 = v24;
    v10 = "trigger %llu\n";
    v21 = v5;
    v22 = 12;
    goto LABEL_17;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v25 = v3;
    if (qword_100456818 != -1)
    {
      sub_1003061F8();
    }

    v5 = qword_100456820;
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_18;
    }

    v26 = *([v25 c_struct] + 42);
    v27 = *[v25 c_struct];
    v28 = *([v25 c_struct] + 1);
    v29 = *([v25 c_struct] + 2);
    v30 = *([v25 c_struct] + 3);
    v31 = *([v25 c_struct] + 4);
    v32 = *([v25 c_struct] + 5);
    v33 = *([v25 c_struct] + 6);
    v56 = 134219776;
    v57 = v26;
    v58 = 2048;
    *v59 = v27;
    *&v59[8] = 2048;
    *v60 = v28;
    *&v60[8] = 2048;
    v61 = v29;
    v62 = 2048;
    v63 = v30;
    v64 = 2048;
    v65 = v31;
    v66 = 2048;
    v67 = v32;
    v68 = 2048;
    v69 = v33;
    v10 = "dm6 %llu %.7f %.7f %.7f %.7f %.7f %.7f %.7f\n";
    v21 = v5;
    v22 = 82;
    goto LABEL_17;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v34 = v3;
    v5 = sub_1002F7258();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_18;
    }

    v35 = *([v34 c_struct] + 5);
    v36 = *([v34 c_struct] + 8);
    v37 = *[v34 c_struct];
    v38 = *([v34 c_struct] + 1);
    v39 = *([v34 c_struct] + 2);
    v40 = *([v34 c_struct] + 3);
    v56 = 134219264;
    v57 = v35;
    v58 = 2048;
    *v59 = v36;
    *&v59[8] = 2048;
    *v60 = v37;
    *&v60[8] = 2048;
    v61 = v38;
    v62 = 2048;
    v63 = v39;
    v64 = 2048;
    v65 = v40;
    v10 = "gps %llu %f %.7f %.7f %.7f %.7f\n";
    v21 = v5;
    v22 = 62;
    goto LABEL_17;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v41 = v3;
    v5 = sub_1002F7258();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_18;
    }

    v42 = *[v41 c_struct];
    v43 = *([v41 c_struct] + 2);
    v44 = *([v41 c_struct] + 3);
    v45 = *([v41 c_struct] + 4);
    v46 = *([v41 c_struct] + 20);
    v56 = 134219008;
    v57 = v42;
    v58 = 1024;
    *v59 = v43;
    *&v59[4] = 1024;
    *&v59[6] = v44;
    *v60 = 2048;
    *&v60[2] = v45;
    LOWORD(v61) = 1024;
    *(&v61 + 2) = v46;
    v10 = "steps %llu %d %d %.7f %d\n";
    v21 = v5;
    v22 = 40;
    goto LABEL_17;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v47 = v3;
    v5 = sub_1002F7258();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_18;
    }

    v48 = *[v47 c_struct];
    v49 = *([v47 c_struct] + 2);
    v56 = 134218240;
    v57 = v48;
    v58 = 2048;
    *v59 = v49;
    v10 = "SPL %llu %f\n";
    goto LABEL_45;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v50 = v3;
    v5 = sub_1002F7258();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_18;
    }

    v51 = *[v50 c_struct];
    v52 = *([v50 c_struct] + 2);
    v56 = 134218240;
    v57 = v51;
    v58 = 2048;
    *v59 = v52;
    v10 = "pressure %llu %f\n";
    goto LABEL_45;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_19;
  }

  v53 = v3;
  v5 = sub_1002F7258();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v54 = *[v53 c_struct];
    v55 = *([v53 c_struct] + 1);
    v56 = 134218240;
    v57 = v54;
    v58 = 2048;
    *v59 = v55;
    v10 = "roads %llu %f\n";
LABEL_45:
    v21 = v5;
    v22 = 22;
    goto LABEL_17;
  }

LABEL_18:

LABEL_19:
}

- (void)sosActivated
{
  if (qword_100456818 != -1)
  {
    sub_1003061F8();
  }

  v3 = qword_100456820;
  if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEBUG))
  {
    inSession = self->_inSession;
    mslRecording = self->_mslRecording;
    v8[0] = 67109376;
    v8[1] = inSession;
    v9 = 2048;
    v10 = mslRecording;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "sosActivated _inSession %d _mslRecording %p", v8, 0x12u);
  }

  if (self->_inSession && (v6 = self->_mslRecording) != 0)
  {
    [(CSMSLDataRecording *)v6 updateMetadata:&off_10043F340];
  }

  else
  {
    v7 = [[CSStudiesServerUploadOutOfBandMetadata alloc] initWithLookingBack:&off_10043F368 keyValuePairs:900.0];
    [(CSStudiesServerUploader *)self->_uploader addOutOfBandMetadata:v7 error:0];
  }

  self->_tellCompanionToUpload = 1;
}

- (void)feedAccel800:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    CLKappaAlgFlowController::feedFastAccel(self->fFlowControl.__ptr_, v4);
  }

  else
  {
    sub_100307DE0(&v6);

    abort_report_np();
    __break(1u);
  }
}

- (void)feedHgAccel:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    CLKappaAlgFlowController::feedHgAccel(self->fFlowControl.__ptr_, v4);
  }

  else
  {
    sub_100307EF4(&v6);

    abort_report_np();
    __break(1u);
  }
}

- (void)feedAccel:(id)a3
{
  v3 = a3;
  if (!v3)
  {
    sub_100308008();
  }
}

- (void)feedDeviceMotion:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    CLKappaAlgFlowController::feedDM(self->fFlowControl.__ptr_, v4);
  }

  else
  {
    sub_100308130(&v6);

    abort_report_np();
    __break(1u);
  }
}

- (void)feedGPS:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (!v5)
  {
    sub_100308244(&v15);

    abort_report_np();
    __break(1u);
    goto LABEL_20;
  }

  if (*([(CSSPUGps *)v5 c_struct]+ 15) != 3)
  {
LABEL_5:
    if (!self->_gpsCount)
    {
      Current = CFAbsoluteTimeGetCurrent();
      LODWORD(Current) = sunElevationDeg(Current, *([(CSSPUGps *)v6 c_struct]+ 4), *([(CSSPUGps *)v6 c_struct]+ 5));
      v8 = *([(CSSPUGps *)v6 c_struct]+ 32);
      self->_sessionDetails.sunElevation = *&Current;
      self->_sessionDetails.signalEnvironment = v8;
      ++self->_gpsCount;
    }

    if (CSAOPSvc::isRecording(self->_aop))
    {
      v9 = self->_gpsCount + 1;
      self->_gpsCount = v9;
      self->_sessionDetails.gpsCount = v9;
    }

    objc_storeStrong(&self->_poiGpsSample, a3);
    CLKappaAlgFlowController::feedGPS(self->fFlowControl.__ptr_, v6);
    goto LABEL_18;
  }

  if (!self->_shouldFeedAccessoryGPS)
  {
    if (qword_100456818 == -1)
    {
LABEL_11:
      v10 = qword_100456820;
      if (!os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_18;
      }

      v14 = 0;
      v11 = "ignoring gps accessory";
      v12 = &v14;
LABEL_17:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, v11, v12, 2u);
      goto LABEL_18;
    }

LABEL_20:
    sub_1003061F8();
    goto LABEL_11;
  }

  if (self->_triggerAOPHasBTCarplay)
  {
    goto LABEL_5;
  }

  if (qword_100456818 != -1)
  {
    sub_1003061F8();
  }

  v10 = qword_100456820;
  if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    v11 = "ignoring gps accessory when btHint=0";
    v12 = buf;
    goto LABEL_17;
  }

LABEL_18:
}

- (void)feedSteps:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    CLKappaAlgFlowController::feedSteps(self->fFlowControl.__ptr_, v4);
  }

  else
  {
    sub_100308358(&v6);

    abort_report_np();
    __break(1u);
  }
}

- (void)feedKappaTrigger:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    CLKappaAlgFlowController::feedTrigger(self->fFlowControl.__ptr_, v4);
  }

  else
  {
    sub_10030846C(&v6);

    abort_report_np();
    __break(1u);
  }
}

- (void)feedMag:(id)a3
{
  v3 = a3;
  if (!v3)
  {
    sub_100308580();
  }
}

- (void)feedPressure:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    CLKappaAlgFlowController::feedPressure(self->fFlowControl.__ptr_, v4);
  }

  else
  {
    sub_1003086A8(&v6);

    abort_report_np();
    __break(1u);
  }
}

- (void)feedSoundPressureLevel:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    CLKappaAlgFlowController::feedAudioRms(self->fFlowControl.__ptr_, v4);
  }

  else
  {
    sub_1003087BC(&v6);

    abort_report_np();
    __break(1u);
  }
}

- (void)feedTrustedAudioResult:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    CLKappaAlgFlowController::feedTrustedAudioResult(self->fFlowControl.__ptr_, v4);
  }

  else
  {
    sub_1003088D0(&v6);

    abort_report_np();
    __break(1u);
  }
}

- (void)feedRoads:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    CLKappaAlgFlowController::feedRoads(self->fFlowControl.__ptr_, v4);
  }

  else
  {
    sub_1003089E4(&v6);

    abort_report_np();
    __break(1u);
  }
}

- (void)feedHertzSample:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    CLKappaAlgFlowController::feedHertzSample(self->fFlowControl.__ptr_, v4);
  }

  else
  {
    sub_100308AF8(&v6);

    abort_report_np();
    __break(1u);
  }
}

- (void)feedCompanionStatus:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    CLKappaAlgFlowController::feedCompanionStatus(self->fFlowControl.__ptr_, v4);
  }

  else
  {
    sub_100308C0C(&v6);

    abort_report_np();
    __break(1u);
  }
}

- (void)feedRemoteSample:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    CLKappaAlgFlowController::feedRemoteSample(self->fFlowControl.__ptr_, v4);
  }

  else
  {
    sub_100308D20(&v6);

    abort_report_np();
    __break(1u);
  }
}

- (void)consumeSampleArray:(id)a3
{
  v4 = a3;
  for (i = 0; [v4 count] > i; ++i)
  {
    ptr = self->fFlowControl.__ptr_;
    if (!ptr)
    {
      sub_100308E34(buf);

      abort_report_np();
      __break(1u);
LABEL_49:
      sub_10030620C();
LABEL_45:
      v11 = qword_100456820;
      if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "stop consuming samples", buf, 2u);
      }

      break;
    }

    if ((*(ptr + 8) & 1) == 0)
    {
      if (qword_100456818 == -1)
      {
        goto LABEL_45;
      }

      goto LABEL_49;
    }

    v7 = [v4 objectAtIndexedSubscript:i];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
      [(CSKappaDetectionService *)self feedAccel800:v8];
LABEL_39:

      goto LABEL_40;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
      [(CSKappaDetectionService *)self feedAccel:v8];
      goto LABEL_39;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
      [(CSKappaDetectionService *)self feedHgAccel:v8];
      goto LABEL_39;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
      if ([v8 meta]< 0)
      {
        if (qword_100456818 != -1)
        {
          sub_10030620C();
        }

        v9 = qword_100456820;
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v10 = [v8 timestamp];
          *buf = 134217984;
          *&buf[4] = v10;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "ignoring stop trigger from aop %llu", buf, 0xCu);
        }
      }

      else
      {
        [(CSKappaDetectionService *)self feedKappaTrigger:v8];
      }

      goto LABEL_39;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
      [(CSKappaDetectionService *)self feedDeviceMotion:v8];
      goto LABEL_39;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
      [(CSKappaDetectionService *)self feedGPS:v8];
      goto LABEL_39;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
      [(CSKappaDetectionService *)self feedSteps:v8];
      goto LABEL_39;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
      [(CSKappaDetectionService *)self feedSoundPressureLevel:v8];
      goto LABEL_39;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
      [(CSKappaDetectionService *)self feedTrustedAudioResult:v8];
      goto LABEL_39;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
      [(CSKappaDetectionService *)self feedPressure:v8];
      goto LABEL_39;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
      [(CSKappaDetectionService *)self feedRoads:v8];
      goto LABEL_39;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
      [(CSKappaDetectionService *)self feedHertzSample:v8];
      goto LABEL_39;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
      [(CSKappaDetectionService *)self feedCompanionStatus:v8];
      goto LABEL_39;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
      [(CSKappaDetectionService *)self feedRemoteSample:v8];
      goto LABEL_39;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v8 = sub_1002F7258();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "CSKappaDetectionService ignoring %@", buf, 0xCu);
      }

      goto LABEL_39;
    }

LABEL_40:
  }
}

- (void)feedLocationManagerResults:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_mslRecording)
  {
    v6 = [v4 firstObject];
    [v6 coordinate];
    v8 = v7;

    v9 = [v5 firstObject];
    [v9 coordinate];
    v11 = v10 * 1000.0;

    *&v8 = v8 * 1000.0;
    self->_sessionDetails.coarseLat = *&v8;
    self->_sessionDetails.coarseLong = v11;
  }

  else
  {
    if (qword_100456818 != -1)
    {
      sub_1003061F8();
    }

    v12 = qword_100456820;
    if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "coarse location cannot be stored: IS=0 or IS=1 and not the first session in the recording", v13, 2u);
    }
  }
}

- (void)companionConnectedAckHandler_Deprecated:(int)a3 data:(id)a4 receivedTimestamp:(double)a5
{
  v6 = a4;
  if (qword_100456818 != -1)
  {
    sub_1003061F8();
  }

  v7 = qword_100456820;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109376;
    *v39 = [v6 length];
    *&v39[4] = 1024;
    *&v39[6] = 36;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "companionConnectedAckHandler %d %d", buf, 0xEu);
  }

  if ([v6 length] < 0x25)
  {
    if (self->_inSession)
    {
      v15 = v6;
      memcpy(&__dst, [v6 bytes], objc_msgSend(v6, "length"));
      if (qword_100456818 != -1)
      {
        sub_10030620C();
      }

      v16 = qword_100456820;
      if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134349570;
        *v39 = __dst;
        *&v39[8] = 2082;
        v40 = v44;
        v41 = 1026;
        v42 = v45;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "received companion device info %{public}lu %{public}s %{public}d", buf, 0x1Cu);
      }

      if (v47 < 1)
      {
        v17 = -1;
      }

      else
      {
        v17 = 1;
      }

      if (v47)
      {
        v18 = v17;
      }

      else
      {
        v18 = 0;
      }

      v37[0] = &__kCFBooleanTrue;
      mslRecording = self->_mslRecording;
      v36[0] = @"companionConnected";
      v36[1] = @"companionDeviceModel";
      v20 = [NSString stringWithUTF8String:v44];
      v37[1] = v20;
      v36[2] = @"companionDeviceType";
      v21 = [NSNumber numberWithInt:v45];
      v37[2] = v21;
      v22 = [NSDictionary dictionaryWithObjects:v37 forKeys:v36 count:3];
      [(CSMSLDataRecording *)mslRecording updateMetadata:v22];

      if ((_companionCompatibility & 0xFFFFFFFD) == 1)
      {
        if (qword_100456818 != -1)
        {
          sub_10030620C();
        }

        v23 = qword_100456820;
        if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67240448;
          *v39 = v46;
          *&v39[4] = 1026;
          *&v39[6] = v47;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "received companion device info %{public}d %{public}d", buf, 0xEu);
        }

        v24 = self->_mslRecording;
        v25 = [NSNumber numberWithInt:v46, @"companionTokenCount"];
        v34[1] = @"companionArmedStatus";
        v35[0] = v25;
        v26 = [NSNumber numberWithInt:v18];
        v35[1] = v26;
        v27 = [NSDictionary dictionaryWithObjects:v35 forKeys:v34 count:2];
        [(CSMSLDataRecording *)v24 updateMetadata:v27];
      }

      self->_companionDeviceType = v45;
      [(CSKappaDetectionService *)self updateKappaSessionClients:10 data:0];
      ptr = self->fFlowControl.__ptr_;
      v29 = *(ptr + 40);
      v30 = *(ptr + 41);
      if (v30)
      {
        atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
        ptr = self->fFlowControl.__ptr_;
      }

      *(v29 + 82) = 1;
      v32 = *(ptr + 42);
      v31 = *(ptr + 43);
      if (v31)
      {
        atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
        *(v32 + 81) = 1;
        self->_companionConnected = 1;
        sub_100009A48(v31);
        if (!v30)
        {
          goto LABEL_47;
        }
      }

      else
      {
        *(v32 + 81) = 1;
        self->_companionConnected = 1;
        if (!v30)
        {
          goto LABEL_47;
        }
      }

      sub_100009A48(v30);
      goto LABEL_47;
    }

    if (qword_100456818 != -1)
    {
      sub_10030620C();
    }

    v33 = qword_100456820;
    if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      v12 = "companion out of sync, session not in progress";
      v13 = v33;
      v14 = 2;
      goto LABEL_44;
    }
  }

  else
  {
    if (qword_100456818 != -1)
    {
      sub_10030620C();
    }

    v8 = qword_100456820;
    if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "incorrect number of bytes for device info", buf, 2u);
    }

    if (qword_100456818 != -1)
    {
      sub_10030620C();
    }

    v9 = qword_100456820;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = [v6 length];
      *buf = 134217984;
      *v39 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "data length %lu", buf, 0xCu);
    }

    if (qword_100456818 != -1)
    {
      sub_10030620C();
    }

    v11 = qword_100456820;
    if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      *v39 = 36;
      v12 = "result length %lu";
      v13 = v11;
      v14 = 12;
LABEL_44:
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, v12, buf, v14);
    }
  }

LABEL_47:
}

- (void)messageReceived:(id)a3 fromConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (qword_100456818 != -1)
  {
    sub_1003061F8();
  }

  v8 = qword_100456820;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = [v6 name];
    *buf = 68289538;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    v88 = 2114;
    v89 = v7;
    v90 = 2114;
    v91 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:messageReceived, connection:%{public, location:escape_only}@, name:%{public, location:escape_only}@}", buf, 0x26u);
  }

  v10 = [v6 name];
  v11 = [v10 isEqualToString:@"com.apple.anomalydetectiond.kappa.message.test"];

  if (v11)
  {
    if (qword_100456818 != -1)
    {
      sub_10030620C();
    }

    v12 = qword_100456820;
    if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "testMessageReceived", buf, 2u);
    }

    goto LABEL_125;
  }

  v13 = [v6 name];
  v14 = [v13 isEqualToString:@"com.apple.anomalydetectiond.kappa.ttr.test"];

  if (v14)
  {
    if (qword_100456818 != -1)
    {
      sub_10030620C();
    }

    v15 = qword_100456820;
    if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "testTTRReceived", buf, 2u);
    }

    if ((atomic_load_explicit(&qword_100458888, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100458888))
    {
      qword_100458880 = [[CSKappaTap2RadarConfiguration alloc] initWithAllowOnBattery:1 checkIntervalInSeconds:XPC_ACTIVITY_INTERVAL_1_MIN coolDownPeriodInSeconds:0];
      __cxa_guard_release(&qword_100458888);
    }

    if (qword_100458898 != -1)
    {
      sub_100308F48();
    }

    v16 = +[NSUUID UUID];
    v17 = [v16 UUIDString];

    v84 = 0;
    [qword_100458890 enqueueTTRWithTriggerUUID:v17 error:&v84];
    v18 = v84;
    if (v18)
    {
      if (qword_100456818 != -1)
      {
        sub_10030620C();
      }

      v19 = qword_100456820;
      if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        *&buf[4] = v18;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "[TTR] Error enqueuing for TTR test: %@", buf, 0xCu);
      }
    }

    goto LABEL_125;
  }

  v20 = [v6 name];
  v21 = [v20 isEqualToString:@"com.apple.anomalydetectiond.kappa.feedbackConsentResponse"];

  if (v21)
  {
    if (v6)
    {
      [v6 message];
      v22 = *buf;
    }

    else
    {
      v22 = 0;
      *buf = 0;
      *&buf[8] = 0;
    }

    v30 = CLConnectionMessage::getDictionary(v22);
    if (*&buf[8])
    {
      sub_100009A48(*&buf[8]);
    }

    v31 = [v30 objectForKeyedSubscript:@"CSKappaFeedbackAssistantConsentKey"];
    if (v31)
    {
      v32 = [v30 objectForKeyedSubscript:@"CSKappaFeedbackAssistantUUIDKey"];
      v33 = v32 == 0;

      if (!v33)
      {
        v34 = [v30 objectForKey:@"CSKappaFeedbackAssistantConsentKey"];
        v35 = [v34 BOOLValue];

        v36 = [v30 objectForKey:@"CSKappaFeedbackAssistantUUIDKey"];
        v37 = [[NSUUID alloc] initWithUUIDString:v36];
        if (v37)
        {
          if (qword_100456818 != -1)
          {
            sub_10030620C();
          }

          v38 = qword_100456820;
          if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109378;
            *&buf[4] = v35;
            *&buf[8] = 2112;
            *&buf[10] = v36;
            _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "[fba] Received Feedback Assistant Consent Response: consented,%d uuid,%@", buf, 0x12u);
          }

          v39 = *(self->_aop + 2);
          v40 = v39;
          if (v39)
          {
            v41 = v35;
          }

          else
          {
            v41 = 0;
          }

          if (v41 == 1)
          {
            v83 = 0;
            [v39 enqueueHeldRecordingForUploadWithConsent:v36 withError:&v83];
            v42 = v83;
            if (v42)
            {
              v43 = sub_1002F7258();
              if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
              {
                v44 = [v42 description];
                *buf = 138412290;
                *&buf[4] = v44;
                _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "[fba] Feedback Assistant encountered an error: %@", buf, 0xCu);
              }

              [CSAnomalyEventService removeHeldRecording:v36];
            }
          }

          else
          {
            [CSAnomalyEventService removeHeldRecording:v36];
          }
        }

        else
        {
          if (qword_100456818 != -1)
          {
            sub_10030620C();
          }

          v56 = qword_100456820;
          if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_ERROR, "[fba] UUID in message is malformed", buf, 2u);
          }
        }

        goto LABEL_125;
      }
    }

    if (qword_100456818 != -1)
    {
      sub_10030620C();
    }

    v45 = qword_100456820;
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      v46 = [v30 description];
      *buf = 138412290;
      *&buf[4] = v46;
      _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "[fba] Feedback Assistant consent keys not found: %@", buf, 0xCu);
    }

LABEL_60:

    goto LABEL_125;
  }

  v23 = [v6 name];
  v24 = [v23 isEqualToString:@"CSKappaConnectionBringupFeedbackAssistantMessage"];

  if (!v24)
  {
    v26 = [v6 name];
    v27 = [v26 isEqualToString:@"CSKappaConnectionTestSensorAccessQuery"];

    if (v27)
    {
      if (qword_100456818 != -1)
      {
        sub_10030620C();
      }

      v28 = qword_100456820;
      if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEBUG, "testSensorAccessQuery received", buf, 2u);
      }

      v29 = +[CSKappaDetectionService testSensorAccessQuery];
      if (v6)
      {
        [v6 message];
      }

      else
      {
        *buf = 0;
        *&buf[8] = 0;
      }

      v85 = @"SensorAccess";
      v62 = [NSNumber numberWithBool:v29 ^ 1];
      v86 = v62;
      v63 = [NSDictionary dictionaryWithObjects:&v86 forKeys:&v85 count:1];
      CLConnectionMessage::sendReply();

      if (*&buf[8])
      {
        sub_100009A48(*&buf[8]);
      }

      goto LABEL_125;
    }

    v47 = [v6 name];
    v48 = [v47 isEqualToString:@"com.apple.anomalydetectiond.kappa.command"];

    if (v48)
    {
      if (v6)
      {
        [v6 message];
        v49 = *buf;
      }

      else
      {
        v49 = 0;
        *buf = 0;
        *&buf[8] = 0;
      }

      v68 = CLConnectionMessage::getDictionary(v49);
      if (*&buf[8])
      {
        sub_100009A48(*&buf[8]);
      }

      v69 = [v68 objectForKeyedSubscript:@"CSKappaCommandKey"];
      if (!v69 || ([v68 objectForKeyedSubscript:@"CSKappaValueKey"], v70 = objc_claimAutoreleasedReturnValue(), v71 = v70 == 0, v70, v69, v71))
      {
        v77 = sub_1002F7258();
        if (os_log_type_enabled(v77, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_INFO, "invalid command", buf, 2u);
        }
      }

      else
      {
        v72 = [v68 objectForKeyedSubscript:@"CSKappaCommandKey"];
        v73 = [v72 intValue];

        v74 = [v68 objectForKeyedSubscript:@"CSKappaValueKey"];
        v75 = [v74 intValue];

        v76 = sub_1002F7258();
        if (os_log_type_enabled(v76, OS_LOG_TYPE_INFO))
        {
          *buf = 67109376;
          *&buf[4] = v73;
          *&buf[8] = 1024;
          *&buf[10] = v75;
          _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_INFO, "cmd = %d val = %d", buf, 0xEu);
        }

        [(CSKappaDetectionService *)self saveForceState:v73 withValue:v75];
        if (v6)
        {
          [v6 message];
        }

        else
        {
          *buf = 0;
          *&buf[8] = 0;
        }

        CLConnectionMessage::sendReply();
        if (*&buf[8])
        {
          sub_100009A48(*&buf[8]);
        }
      }
    }

    else
    {
      v57 = [v6 name];
      v58 = [v57 isEqualToString:@"com.apple.anomalydetectiond.kappa.powerassertion.test"];

      if (!v58)
      {
        v64 = [v6 name];
        v65 = [v64 isEqualToString:@"com.apple.anomalydetectiond.kappa.aoi.test"];

        if (v65)
        {
          v66 = sub_1002F7258();
          if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEBUG, "testAOIReceived", buf, 2u);
          }

          if (v6)
          {
            [v6 message];
            v67 = *buf;
          }

          else
          {
            v67 = 0;
            *buf = 0;
            *&buf[8] = 0;
          }

          v82 = CLConnectionMessage::getDictionary(v67);
          if (*&buf[8])
          {
            sub_100009A48(*&buf[8]);
          }

          CLKappaDeescalatorAOI::runOnDeviceTest(v82);
        }

        goto LABEL_125;
      }

      v59 = sub_1002F7258();
      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEBUG, "testPowerAssertionReceived", buf, 2u);
      }

      if (v6)
      {
        [v6 message];
        v60 = *buf;
      }

      else
      {
        v60 = 0;
        *buf = 0;
        *&buf[8] = 0;
      }

      v68 = CLConnectionMessage::getDictionary(v60);
      if (*&buf[8])
      {
        sub_100009A48(*&buf[8]);
      }

      v78 = [v68 objectForKeyedSubscript:@"testPowerAssertionCmd"];
      [v78 doubleValue];
      v80 = v79;

      powerAssertion = self->_powerAssertion;
      if (v80 <= 0.0)
      {
        [(CSPower *)powerAssertion releasePowerAssertion];
      }

      else
      {
        [(CSPower *)powerAssertion createPowerAssertion:@"anomalyctl"];
      }
    }

    goto LABEL_125;
  }

  if (v6)
  {
    [v6 message];
    v25 = *buf;
  }

  else
  {
    v25 = 0;
    *buf = 0;
    *&buf[8] = 0;
  }

  v30 = CLConnectionMessage::getDictionary(v25);
  if (*&buf[8])
  {
    sub_100009A48(*&buf[8]);
  }

  v50 = [v30 objectForKeyedSubscript:@"CSKappaFeedbackAssistantUUIDKey"];
  v51 = v50 == 0;

  if (v51)
  {
    if (qword_100456818 != -1)
    {
      sub_10030620C();
    }

    v45 = qword_100456820;
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      v55 = [v30 description];
      *buf = 138412290;
      *&buf[4] = v55;
      _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "[fba] Feedback Assistant consent keys not found: %@", buf, 0xCu);
    }

    goto LABEL_60;
  }

  v52 = [v30 objectForKey:@"CSKappaFeedbackAssistantUUIDKey"];
  v53 = [[NSUUID alloc] initWithUUIDString:v52];
  if (v53)
  {
    if (qword_100456818 != -1)
    {
      sub_10030620C();
    }

    v54 = qword_100456820;
    if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v52;
      _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "[fba] Received Feedback Assistant bringup: uuid,%@", buf, 0xCu);
    }

    [CSFeedbackAssistant showFeedbackAssistantSurveyWithUUID:v52];
  }

  else
  {
    v61 = sub_1002F7258();
    if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_ERROR, "[fba] UUID in message is malformed", buf, 2u);
    }
  }

LABEL_125:
}

- (void)onCompanionTestTrigger:(double)a3
{
  if (qword_100456818 != -1)
  {
    sub_1003061F8();
  }

  v5 = qword_100456820;
  if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v10 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "onCompanionTestTrigger: timestamp: %f", buf, 0xCu);
  }

  v6 = [NSString stringWithFormat:@"test message data %f", *&a3];
  companionProxy = self->_companionProxy;
  v8 = [v6 dataUsingEncoding:4];
  [(CSCompanionServiceProtocol *)companionProxy sendData:v8 type:0];
}

- (void)kappaSessionCompanionHandler:(int)a3 data:(id)a4 receivedTimestamp:(double)a5
{
  v6 = a4;
  if (self->_inSession)
  {
    if (self->_canCollectData)
    {
      goto LABEL_3;
    }

LABEL_12:
    if (qword_100456818 != -1)
    {
      sub_1003061F8();
    }

    v14 = qword_100456820;
    if (!os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_23;
    }

    *buf = 0;
    v11 = "ignoring companion UUID since collection is not allowed";
    v15 = v14;
    v16 = OS_LOG_TYPE_DEBUG;
    v17 = 2;
    goto LABEL_16;
  }

  v12 = +[CSPermissions sharedInstance];
  v13 = [v12 isAuthorizedToCollectData];

  if ((v13 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_3:
  if ([v6 length] > 0xF)
  {
    if (![(CSKappaDetectionService *)self isArmedForKappa])
    {
LABEL_23:

      return;
    }

    if (self->_inSession)
    {
      if (self->_companionUUID)
      {
        goto LABEL_23;
      }

      v7 = [[NSUUID alloc] initWithUUIDBytes:{objc_msgSend(v6, "bytes")}];
      companionUUID = self->_companionUUID;
      self->_companionUUID = v7;

      if (qword_100456818 != -1)
      {
        sub_1003061F8();
      }

      v9 = qword_100456820;
      if (!os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_23;
      }

      v10 = self->_companionUUID;
      *buf = 138543362;
      *&buf[4] = v10;
      v11 = "Companion trigger session UUID %{public}@";
    }

    else
    {
      if (self->_companionUUIDPreSession)
      {
        goto LABEL_23;
      }

      v18 = [[NSUUID alloc] initWithUUIDBytes:{objc_msgSend(v6, "bytes")}];
      companionUUIDPreSession = self->_companionUUIDPreSession;
      self->_companionUUIDPreSession = v18;

      if (qword_100456818 != -1)
      {
        sub_1003061F8();
      }

      v9 = qword_100456820;
      if (!os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_23;
      }

      v20 = self->_companionUUIDPreSession;
      *buf = 138543362;
      *&buf[4] = v20;
      v11 = "Companion trigger session UUID %{public}@";
    }

    v15 = v9;
    v16 = OS_LOG_TYPE_DEFAULT;
    v17 = 12;
LABEL_16:
    _os_log_impl(&_mh_execute_header, v15, v16, v11, buf, v17);
    goto LABEL_23;
  }

  sub_100308F70(buf);

  abort_report_np();
  __break(1u);
}

- (BOOL)isArmedForKappa
{
  v3 = objc_alloc_init(CSArmedClients);
  if (CSAOPSvc::getArmedClients(self->_aop, v3))
  {
    v4 = [(CSArmedClients *)v3 enableMode]& 1;
  }

  else
  {
    if (qword_1004567D8 != -1)
    {
      sub_100306470();
    }

    v5 = qword_1004567E0;
    if (os_log_type_enabled(qword_1004567E0, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "failed to get armed clients state", v7, 2u);
    }

    LOBYTE(v4) = 0;
  }

  return v4;
}

- (void)companionTriggerHandler:(int)a3 data:(id)a4 receivedTimestamp:(double)a5
{
  v6 = a4;
  if ([v6 length] <= 0x27)
  {
    sub_100309084(&__dst);

    abort_report_np();
    __break(1u);
  }

  memcpy(&__dst, [v6 bytes], objc_msgSend(v6, "length"));
  v7 = v13;
  if ((v13 & 4) != 0)
  {
    if (qword_100456818 != -1)
    {
      sub_1003061F8();
    }

    v10 = qword_100456820;
    if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_INFO))
    {
      *v14 = 67109120;
      v15 = v7;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "not setting companion trigger time path %d", v14, 8u);
    }
  }

  else
  {
    *v14 = 1027;
    v14[2] = 0;
    v16 = 0;
    CSAOPSvc::sendCommand(self->_aop, v14, 0x10u);
    v8 = *&__dst;
    if (*&__dst == 0.0)
    {
      if (qword_100456818 != -1)
      {
        sub_10030620C();
      }

      v9 = qword_100456820;
      if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_FAULT, "companion message trigger time of zero will leak wall-clock time", buf, 2u);
      }
    }

    if ([(CSKappaDetectionService *)self isArmedForKappa])
    {
      self->_companionTriggerTime = v8;
    }
  }
}

- (void)onCompanionMessage:(int)a3 data:(id)a4 receivedTimestamp:(double)a5
{
  v8 = a4;
  v9 = [[NSString alloc] initWithData:v8 encoding:4];
  if (qword_100456818 != -1)
  {
    sub_1003061F8();
  }

  v10 = qword_100456820;
  if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_INFO))
  {
    v13[0] = 67109890;
    v13[1] = a3;
    v14 = 2112;
    v15 = v9;
    v16 = 2112;
    v17 = v8;
    v18 = 2048;
    v19 = a5;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "onCompanionMessage: type: %d, msg: %@ data: %@, receivedTimestamp: %f", v13, 0x26u);
  }

  if (self->_isLoggingDevice || self->_isDetectionDevice)
  {
    if (a3 > 100)
    {
      if (a3 <= 200)
      {
        if (a3 == 101)
        {
          v12 = 102;
          goto LABEL_31;
        }

        if (a3 == 102)
        {
          [(CSKappaDetectionService *)self companionConnectedAckHandler:102 data:v8 receivedTimestamp:a5];
        }
      }

      else
      {
        switch(a3)
        {
          case 201:
            [(CSKappaDetectionService *)self receiveDeviceInfoProtobuf:v8];
            break;
          case 202:
            [(CSKappaDetectionService *)self receiveForceTriggerProtobuf:v8];
            break;
          case 203:
            [(CSKappaDetectionService *)self receiveCompanionUUID:v8];
            break;
        }
      }
    }

    else
    {
      if (a3 > 3)
      {
        if (a3 != 4)
        {
          if (a3 == 5)
          {
            [(CSKappaDetectionService *)self companionConnectedAckHandler_Deprecated:5 data:v8 receivedTimestamp:a5];
          }

          else if (a3 == 7)
          {
            [(CSKappaDetectionService *)self companionDecidedToUploadHandler:7 data:v8 receivedTimestamp:a5];
          }

          goto LABEL_35;
        }

        v12 = 5;
LABEL_31:
        [(CSKappaDetectionService *)self companionConnectedAck:v12];
        goto LABEL_35;
      }

      if (a3 == 1)
      {
        [(CSKappaDetectionService *)self kappaSessionCompanionHandler:1 data:v8 receivedTimestamp:a5];
      }

      else if (a3 == 3)
      {
        [(CSKappaDetectionService *)self companionTriggerHandler:3 data:v8 receivedTimestamp:a5];
      }
    }
  }

  else
  {
    if (qword_100456818 != -1)
    {
      sub_10030620C();
    }

    v11 = qword_100456820;
    if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_INFO))
    {
      LOWORD(v13[0]) = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "ignore companion messages", v13, 2u);
    }
  }

LABEL_35:
}

- (void)onCompanionStatusUpdate:(BOOL)a3 pairedDevice:(id)a4 updatedTimestamp:(double)a5
{
  v6 = a3;
  v7 = a4;
  if (qword_100456818 != -1)
  {
    sub_1003061F8();
  }

  v8 = qword_100456820;
  if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEBUG))
  {
    v16 = 67109376;
    *v17 = v6;
    *&v17[4] = 2048;
    *&v17[6] = a5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "onCompanionStatusUpdate: isConnected: %d, updatedTimestamp: %f", &v16, 0x12u);
  }

  if (qword_100456818 != -1)
  {
    sub_10030620C();
  }

  v9 = qword_100456820;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = [v7 name];
    v11 = v10;
    v12 = [v10 UTF8String];
    v13 = [v7 isNearby];
    v14 = [v7 isDefaultPairedDevice];
    v15 = [v7 isConnected];
    v16 = 136315906;
    *v17 = v12;
    *&v17[8] = 1024;
    *&v17[10] = v13;
    v18 = 1024;
    v19 = v14;
    v20 = 1024;
    v21 = v15;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Paired device info: name %s, isNearby %d, isDefaultPairedDevice %d, isConnected %d", &v16, 0x1Eu);
  }
}

- (void)didReceiveSOSAck:(int64_t)a3 forMode:(unsigned __int8)a4
{
  v11 = a3;
  if (a4 == 1)
  {
    if (qword_100456818 != -1)
    {
      sub_1003061F8();
    }

    v6 = qword_100456820;
    if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v13 = a3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "didReceiveSOSAck response:%ld", buf, 0xCu);
    }

    if (a3 <= 6)
    {
      if (((1 << a3) & 0x65) != 0)
      {
        self->_SOSInProgress = 1;
        if (qword_100456818 != -1)
        {
          sub_10030620C();
        }

        v7 = qword_100456820;
        if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_INFO))
        {
          SOSInProgress = self->_SOSInProgress;
          *buf = 67109120;
          LODWORD(v13) = SOSInProgress;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "didReceiveSOSAck setting _SOSInProgress to %d", buf, 8u);
        }

        [(CSPower *)self->_powerAssertion releasePowerAssertion];
      }

      else
      {
        [(CSMSLDataRecording *)self->_mslRecording updateMetadata:&off_10043F390];
        [(CSHSMObjc *)self->_hsm signal:7 data:0];
      }
    }

    v10 = [NSData dataWithBytes:&v11 length:8];
    [(CSKappaDetectionService *)self updateKappaSessionClients:4 data:v10];
  }

  else
  {
    if (qword_100456818 != -1)
    {
      sub_1003061F8();
    }

    v9 = qword_100456820;
    if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "sos status ack invalid mode", buf, 2u);
    }
  }
}

- (void)didReceiveSOSStatusUpdate:(id)a3 forMode:(unsigned __int8)a4
{
  v4 = a4;
  v6 = a3;
  if (v4 == 1)
  {
    if (qword_100456818 != -1)
    {
      sub_1003061F8();
    }

    v7 = qword_100456820;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = [v6 sosStatus];
      v9 = [v8 flowState];
      v10 = [v6 isKappaFlow];
      v11 = [v6 isKappaFlowActive];
      v12 = [v6 sosStatus];
      *buf = 134218752;
      *v45 = v9;
      *&v45[8] = 1024;
      v46 = v10;
      v47 = 1024;
      v48 = v11;
      v49 = 1024;
      v50 = [v12 isPairedDeviceStatus];
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "didReceiveSOSStatusUpdate state:%ld, isKappaFlow:%d, isKappaFlowActive:%d isFromPaired:%d", buf, 0x1Eu);
    }

    if (([v6 isKappaFlow] & 1) == 0)
    {
      if (qword_100456818 != -1)
      {
        sub_10030620C();
      }

      v13 = qword_100456820;
      if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Received non-Kappa flow state from SOS SM (should never happen)", buf, 2u);
      }
    }

    v14 = [v6 sosStatus];
    v15 = [v14 isPairedDeviceStatus];

    v37 = v15 ^ 1;
    v16 = [v6 sosKappaState];
    if (v16 <= 3)
    {
      if (v16 == 1)
      {
        if (v37)
        {
          v28 = &off_10043F3B8;
        }

        else
        {
          v28 = &off_10043F3E0;
        }

        [(CSMSLDataRecording *)self->_mslRecording updateMetadata:v28];
        v27 = [NSData dataWithBytes:&v37 length:1];
        [(CSKappaDetectionService *)self updateKappaSessionClients:5 data:v27];
        goto LABEL_29;
      }

      if (v16 != 3)
      {
        goto LABEL_30;
      }

      mslRecording = self->_mslRecording;
      v42 = @"userResponse";
      v18 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v6 sosKappaState]);
      v43 = v18;
      v19 = [NSDictionary dictionaryWithObjects:&v43 forKeys:&v42 count:1];
      [(CSMSLDataRecording *)mslRecording updateMetadata:v19];

      v20 = [NSData dataWithBytes:&v37 length:1];
      [(CSKappaDetectionService *)self updateKappaSessionClients:7 data:v20];

      v21 = +[CSPlatformInfo sharedInstance];
      LODWORD(mslRecording) = [v21 isFeedbackAssistantEligible];

      if (!mslRecording)
      {
        goto LABEL_30;
      }

      goto LABEL_28;
    }

    if (v16 == 4)
    {
      v29 = self->_mslRecording;
      v40 = @"userResponse";
      v30 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v6 sosKappaState]);
      v41 = v30;
      v31 = [NSDictionary dictionaryWithObjects:&v41 forKeys:&v40 count:1];
      [(CSMSLDataRecording *)v29 updateMetadata:v31];

      v32 = [NSData dataWithBytes:&v37 length:1];
      [(CSKappaDetectionService *)self updateKappaSessionClients:8 data:v32];

      v33 = +[CSPlatformInfo sharedInstance];
      LODWORD(v29) = [v33 isFeedbackAssistantEligible];

      if (v29)
      {
LABEL_28:
        v27 = [(NSUUID *)self->_uuid UUIDString];
        [CSAnomalyEventService enqueueHeldRecordingForUpload:v27];
        goto LABEL_29;
      }
    }

    else if (v16 == 6)
    {
      v23 = [(NSUUID *)self->_uuid UUIDString];
      [CSFeedbackAssistant showFeedbackAssistantSurveyWithUUID:v23];

      v24 = self->_mslRecording;
      v38 = @"userResponse";
      v25 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v6 sosKappaState]);
      v39 = v25;
      v26 = [NSDictionary dictionaryWithObjects:&v39 forKeys:&v38 count:1];
      [(CSMSLDataRecording *)v24 updateMetadata:v26];

      v27 = [NSData dataWithBytes:&v37 length:1];
      [(CSKappaDetectionService *)self updateKappaSessionClients:6 data:v27];
LABEL_29:
    }

LABEL_30:
    SOSInProgress = self->_SOSInProgress;
    v35 = [v6 isKappaFlowActive];
    if (qword_100456818 != -1)
    {
      sub_10030620C();
    }

    v36 = qword_100456820;
    if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109376;
      *v45 = SOSInProgress;
      *&v45[4] = 1024;
      *&v45[6] = v35;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEBUG, "_SOSInProgress prev %d, current %d", buf, 0xEu);
    }

    if (!(v35 & 1 | !SOSInProgress))
    {
      [(CSHSMObjc *)self->_hsm signal:7 data:0];
    }

    goto LABEL_36;
  }

  if (qword_100456818 != -1)
  {
    sub_1003061F8();
  }

  v22 = qword_100456820;
  if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "sos status update for invalid mode", buf, 2u);
  }

LABEL_36:
}

- (id)userInfoUploader
{
  objc_initWeak(&location, self);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100305DD0;
  v5[3] = &unk_100416C50;
  objc_copyWeak(&v6, &location);
  v2 = objc_retainBlock(v5);
  v3 = objc_retainBlock(v2);

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);

  return v3;
}

- (id).cxx_construct
{
  *(self + 10) = 0;
  *(self + 56) = -1082130432;
  *(self + 228) = 0;
  *(self + 30) = 0;
  *(self + 31) = 0;
  *(self + 29) = 0;
  *(self + 32) = vdup_n_s32(0x447A0000u);
  *(self + 33) = 0x3E8447A0000;
  *(self + 86) = 0;
  *(self + 48) = 0;
  *(self + 98) = 0;
  *(self + 17) = 0u;
  *(self + 18) = 0u;
  *(self + 19) = 0u;
  *(self + 20) = 0u;
  *(self + 333) = 0;
  *(self + 44) = 0;
  *(self + 45) = 0;
  *(self + 94) = 0;
  *(self + 46) = 0;
  *(self + 66) = 3212836864;
  *(self + 67) = 0xFF7FFFFF00000000;
  return self;
}

@end