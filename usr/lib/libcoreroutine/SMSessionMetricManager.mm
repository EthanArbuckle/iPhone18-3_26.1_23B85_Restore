@interface SMSessionMetricManager
- (BOOL)_isCellularActivated;
- (BOOL)_isStandalone;
- (SMSessionMetricManager)initWithDefaultsManager:(id)manager learnedLocationManager:(id)locationManager sessionStore:(id)store locationManager:(id)a6 currentDeviceIdentifier:(id)identifier;
- (id)_createDestinationMetricDictionary;
- (id)_createInitiatorPerSessionDetailsMetricDictionary;
- (id)collectDestinationSessionMetrics;
- (id)collectInitiatorPerSessionMetrics;
- (id)getLocationsForInterval:(id)interval nearBoundingLocation:(id)location;
- (id)getRTLocationOfInterestForCLLocation:(id)location;
- (void)_gatherSessionDestinationStats:(id)stats;
- (void)_onDailyMetricsNotification:(id)notification;
- (void)_reset;
- (void)_setup;
- (void)_submitTerminationMetricsWithSuccess:(BOOL)success reason:(unint64_t)reason error:(id)error;
- (void)_updateETASubmissionStates;
- (void)cacheMostRecentLocationDistance:(double)distance;
- (void)initialDistance:(double)distance;
- (void)onBecomingActiveDevice:(id)device;
- (void)onBecomingNonActiveDevice:(id)device;
- (void)onCrowFliesETAUpdate:(double)update;
- (void)onDailyMetricsNotification:(id)notification;
- (void)onDeclareAnomalyForTriggerCategory:(unint64_t)category;
- (void)onLPMSeparation;
- (void)onMapsETAUpdate:(double)update;
- (void)onSessionChangedWithConfiguration:(id)configuration;
- (void)onSessionEndedForActiveDevice:(BOOL)device;
- (void)onSessionStartedWithState:(id)state;
- (void)onSessionTerminationResult:(BOOL)result reason:(unint64_t)reason error:(id)error;
- (void)onShouldUpdateETAUpperBoundWithETAUpdateState:(id)state;
- (void)onUnsupportedDeviceSeparation;
- (void)onUserActionWithRemoteCommand:(int64_t)command remoteCommandType:(int64_t)type error:(int64_t)error errorDomain:(id)domain;
- (void)onUserDisabledConnectivity;
- (void)onWorkoutEnded;
- (void)onWorkoutPaused;
- (void)setClosestTimeIntervalToExceedingETA:(double)a;
- (void)setDidArriveSafely:(BOOL)safely;
- (void)setDidDestinationAnomalyTrigger:(BOOL)trigger;
- (void)setDidHandoffOccur:(BOOL)occur;
- (void)setDidTriggerOccur:(BOOL)occur;
- (void)setDidWorkoutEnd:(BOOL)end;
- (void)setDidWorkoutPause:(BOOL)pause;
- (void)setEtaUpdateStateQueue:(id)queue;
- (void)setEtaUpdateSubmissionQueue:(id)queue;
- (void)setFirstAnomalyTriggerCategoryEnum:(unint64_t)enum;
- (void)setInitialDestinationExpectedTravelTime:(double)time;
- (void)setIsWorkoutAlwaysOn:(BOOL)on;
- (void)setMaxCrowFliesScaleFactor:(double)factor;
- (void)setMaxMapsETAScaleFactor:(double)factor;
- (void)setModeOfTransportation:(unint64_t)transportation;
- (void)setMostRecentLocationDistance:(double)distance;
- (void)setNoProgressTriggered:(BOOL)triggered;
- (void)setNumAnomalyPrompt:(unint64_t)prompt;
- (void)setNumAnomalyPromptDuringHysteresis:(unint64_t)hysteresis;
- (void)setNumExtensions:(int)extensions;
- (void)setNumHandoff:(unint64_t)handoff;
- (void)setNumLPMSeparation:(unint64_t)separation;
- (void)setNumRecipients:(unint64_t)recipients;
- (void)setNumTakeover:(unint64_t)takeover;
- (void)setNumUnsupportedDeviceSeparation:(unint64_t)separation;
- (void)setNumUserDisabledConnectivity:(unint64_t)connectivity;
- (void)setOriginalNominalTravelTime:(double)time;
- (void)setOriginatingLocationTypeEnum:(unint64_t)enum;
- (void)setPreviousCrowFliesETA:(double)a;
- (void)setPreviousMapsExpectedETA:(double)a;
- (void)setRatioOfFirstAnomalyDistanceToTotalDistance:(double)distance;
- (void)setRouteDeviationTriggered:(BOOL)triggered;
- (void)setSessionDestinationType:(unint64_t)type;
- (void)setSessionEndDate:(id)date;
- (void)setSessionStartDate:(id)date;
- (void)setSessionType:(unint64_t)type;
- (void)setSosTriggered:(BOOL)triggered;
- (void)setUserEndedSession:(BOOL)session;
- (void)setWasActiveAtEnd:(BOOL)end;
- (void)setWasActiveAtStart:(BOOL)start;
- (void)setWorkoutActivityTypeString:(id)string;
- (void)setup;
- (void)submitMetrics;
- (void)updateClosestTimeIntervalToExceedingETAWithTimeInterval:(double)interval;
@end

@implementation SMSessionMetricManager

- (SMSessionMetricManager)initWithDefaultsManager:(id)manager learnedLocationManager:(id)locationManager sessionStore:(id)store locationManager:(id)a6 currentDeviceIdentifier:(id)identifier
{
  managerCopy = manager;
  locationManagerCopy = locationManager;
  storeCopy = store;
  v16 = a6;
  identifierCopy = identifier;
  if (!managerCopy)
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 0;
    v25 = "Invalid parameter not satisfying: defaultsManager";
LABEL_16:
    _os_log_error_impl(&dword_2304B3000, v24, OS_LOG_TYPE_ERROR, v25, buf, 2u);
    goto LABEL_17;
  }

  if (!locationManagerCopy)
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 0;
    v25 = "Invalid parameter not satisfying: learnedLocationManager";
    goto LABEL_16;
  }

  if (!storeCopy)
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 0;
    v25 = "Invalid parameter not satisfying: sessionStore";
    goto LABEL_16;
  }

  if (!v16)
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v25 = "Invalid parameter not satisfying: locationManager";
      goto LABEL_16;
    }

LABEL_17:

    selfCopy = 0;
    goto LABEL_18;
  }

  v32.receiver = self;
  v32.super_class = SMSessionMetricManager;
  v17 = [(SMSessionMetricManager *)&v32 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_defaultsManager, manager);
    v19 = objc_opt_new();
    distanceCalculator = v18->_distanceCalculator;
    v18->_distanceCalculator = v19;

    objc_storeStrong(&v18->_learnedLocationManager, locationManager);
    objc_storeStrong(&v18->_sessionStore, store);
    objc_storeStrong(&v18->_locationManager, a6);
    v21 = v18;
    v22 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      uTF8String = [v21 UTF8String];
    }

    else
    {
      v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%p", objc_opt_class(), v21];
      uTF8String = [v28 UTF8String];
    }

    v29 = dispatch_queue_create(uTF8String, v22);

    v30 = v21[9];
    v21[9] = v29;

    objc_storeStrong(v21 + 10, identifier);
    [v21 setup];
  }

  self = v18;
  selfCopy = self;
LABEL_18:

  return selfCopy;
}

- (void)setup
{
  queue = [(SMSessionMetricManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__SMSessionMetricManager_setup__block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_setup
{
  v209 = *MEMORY[0x277D85DE8];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_onDailyMetricsNotification_ name:@"RTMetricManagerDailyMetricNotification" object:0];

  defaultsManager = [(SMSessionMetricManager *)self defaultsManager];
  v5 = [defaultsManager objectForKey:@"RTDefaultsSessionMetricManagerSessionStartDateKey"];
  v6 = [v5 copy];
  objc_storeStrong(&self->_sessionStartDate, v6);

  defaultsManager2 = [(SMSessionMetricManager *)self defaultsManager];
  v8 = [defaultsManager2 objectForKey:@"RTDefaultsSessionMetricManagerSessionEndDateKey"];
  v9 = [v8 copy];
  objc_storeStrong(&self->_sessionEndDate, v9);

  defaultsManager3 = [(SMSessionMetricManager *)self defaultsManager];
  v11 = [defaultsManager3 objectForKey:@"RTDefaultsSessionMetricManagerInitialDestinationExpectedTravelTimeKey"];
  if (v11)
  {
    defaultsManager4 = [(SMSessionMetricManager *)self defaultsManager];
    v13 = [defaultsManager4 objectForKey:@"RTDefaultsSessionMetricManagerInitialDestinationExpectedTravelTimeKey"];
    [v13 doubleValue];
    self->_initialDestinationExpectedTravelTime = v14;
  }

  else
  {
    self->_initialDestinationExpectedTravelTime = -1.0;
  }

  defaultsManager5 = [(SMSessionMetricManager *)self defaultsManager];
  v16 = [defaultsManager5 objectForKey:@"RTDefaultsSessionMetricManagerMaxCrowFliesScaleFactorKey"];
  if (v16)
  {
    defaultsManager6 = [(SMSessionMetricManager *)self defaultsManager];
    v18 = [defaultsManager6 objectForKey:@"RTDefaultsSessionMetricManagerMaxCrowFliesScaleFactorKey"];
    [v18 doubleValue];
    self->_maxCrowFliesScaleFactor = v19;
  }

  else
  {
    self->_maxCrowFliesScaleFactor = -1.0;
  }

  defaultsManager7 = [(SMSessionMetricManager *)self defaultsManager];
  v21 = [defaultsManager7 objectForKey:@"RTDefaultsSessionMetricManagerMaxMapsETAScaleFactorKey"];
  if (v21)
  {
    defaultsManager8 = [(SMSessionMetricManager *)self defaultsManager];
    v23 = [defaultsManager8 objectForKey:@"RTDefaultsSessionMetricManagerMaxMapsETAScaleFactorKey"];
    [v23 doubleValue];
    self->_maxMapsETAScaleFactor = v24;
  }

  else
  {
    self->_maxMapsETAScaleFactor = -1.0;
  }

  defaultsManager9 = [(SMSessionMetricManager *)self defaultsManager];
  v26 = [defaultsManager9 objectForKey:@"RTDefaultsSessionMetricManagerClosestTimeIntervalToExceedingETAKey"];
  if (v26)
  {
    defaultsManager10 = [(SMSessionMetricManager *)self defaultsManager];
    v28 = [defaultsManager10 objectForKey:@"RTDefaultsSessionMetricManagerClosestTimeIntervalToExceedingETAKey"];
    [v28 doubleValue];
    self->_closestTimeIntervalToExceedingETA = v29;
  }

  else
  {
    self->_closestTimeIntervalToExceedingETA = 1.79769313e308;
  }

  defaultsManager11 = [(SMSessionMetricManager *)self defaultsManager];
  v31 = [defaultsManager11 objectForKey:@"RTDefaultsSessionMetricManagerDidDestinationAnomalyTriggerKey"];
  if (v31)
  {
    defaultsManager12 = [(SMSessionMetricManager *)self defaultsManager];
    v33 = [defaultsManager12 objectForKey:@"RTDefaultsSessionMetricManagerDidDestinationAnomalyTriggerKey"];
    self->_didDestinationAnomalyTrigger = [v33 BOOLValue];
  }

  else
  {
    self->_didDestinationAnomalyTrigger = 0;
  }

  defaultsManager13 = [(SMSessionMetricManager *)self defaultsManager];
  v35 = [defaultsManager13 objectForKey:@"RTDefaultsSessionMetricManagerNoProgressTriggeredKey"];
  if (v35)
  {
    defaultsManager14 = [(SMSessionMetricManager *)self defaultsManager];
    v37 = [defaultsManager14 objectForKey:@"RTDefaultsSessionMetricManagerNoProgressTriggeredKey"];
    self->_noProgressTriggered = [v37 BOOLValue];
  }

  else
  {
    self->_noProgressTriggered = 0;
  }

  defaultsManager15 = [(SMSessionMetricManager *)self defaultsManager];
  v39 = [defaultsManager15 objectForKey:@"RTDefaultsSessionMetricManagerRouteDeviationTriggeredKey"];
  if (v39)
  {
    defaultsManager16 = [(SMSessionMetricManager *)self defaultsManager];
    v41 = [defaultsManager16 objectForKey:@"RTDefaultsSessionMetricManagerRouteDeviationTriggeredKey"];
    self->_routeDeviationTriggered = [v41 BOOLValue];
  }

  else
  {
    self->_routeDeviationTriggered = 0;
  }

  defaultsManager17 = [(SMSessionMetricManager *)self defaultsManager];
  v43 = [defaultsManager17 objectForKey:@"RTDefaultsSessionMetricManagerDidArriveSafelyKey"];
  if (v43)
  {
    defaultsManager18 = [(SMSessionMetricManager *)self defaultsManager];
    v45 = [defaultsManager18 objectForKey:@"RTDefaultsSessionMetricManagerDidArriveSafelyKey"];
    self->_didArriveSafely = [v45 BOOLValue];
  }

  else
  {
    self->_didArriveSafely = 0;
  }

  defaultsManager19 = [(SMSessionMetricManager *)self defaultsManager];
  v47 = [defaultsManager19 objectForKey:@"RTDefaultsSessionMetricManagerSosTriggeredKey"];
  if (v47)
  {
    defaultsManager20 = [(SMSessionMetricManager *)self defaultsManager];
    v49 = [defaultsManager20 objectForKey:@"RTDefaultsSessionMetricManagerSosTriggeredKey"];
    self->_sosTriggered = [v49 BOOLValue];
  }

  else
  {
    self->_sosTriggered = 0;
  }

  defaultsManager21 = [(SMSessionMetricManager *)self defaultsManager];
  v51 = [defaultsManager21 objectForKey:@"RTDefaultsSessionMetricManagerUserEndedSessionKey"];
  if (v51)
  {
    defaultsManager22 = [(SMSessionMetricManager *)self defaultsManager];
    v53 = [defaultsManager22 objectForKey:@"RTDefaultsSessionMetricManagerUserEndedSessionKey"];
    self->_userEndedSession = [v53 BOOLValue];
  }

  else
  {
    self->_userEndedSession = 0;
  }

  defaultsManager23 = [(SMSessionMetricManager *)self defaultsManager];
  v55 = [defaultsManager23 objectForKey:@"RTDefaultsSessionMetricManagerPreviousCrowFliesETAKey"];
  if (v55)
  {
    defaultsManager24 = [(SMSessionMetricManager *)self defaultsManager];
    v57 = [defaultsManager24 objectForKey:@"RTDefaultsSessionMetricManagerPreviousCrowFliesETAKey"];
    [v57 doubleValue];
    self->_previousCrowFliesETA = v58;
  }

  else
  {
    self->_previousCrowFliesETA = -1.0;
  }

  defaultsManager25 = [(SMSessionMetricManager *)self defaultsManager];
  v60 = [defaultsManager25 objectForKey:@"RTDefaultsSessionMetricManagerPreviousMapsExpectedETAKey"];
  if (v60)
  {
    defaultsManager26 = [(SMSessionMetricManager *)self defaultsManager];
    v62 = [defaultsManager26 objectForKey:@"RTDefaultsSessionMetricManagerPreviousMapsExpectedETAKey"];
    [v62 doubleValue];
    self->_previousMapsExpectedETA = v63;
  }

  else
  {
    self->_previousMapsExpectedETA = -1.0;
  }

  v64 = MEMORY[0x277CBEB98];
  v65 = objc_opt_class();
  v66 = objc_opt_class();
  v67 = [v64 setWithObjects:{v65, v66, objc_opt_class(), 0}];
  v68 = MEMORY[0x277CCAAC8];
  defaultsManager27 = [(SMSessionMetricManager *)self defaultsManager];
  v70 = [defaultsManager27 objectForKey:@"RTDefaultsSessionMetricManagerEtaUpdateStateQueueKey"];
  v204 = 0;
  v71 = [v68 unarchivedObjectOfClasses:v67 fromData:v70 error:&v204];
  v72 = v204;

  if (v72)
  {
    v73 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v206 = "[SMSessionMetricManager _setup]";
      v207 = 2112;
      v208 = v72;
      _os_log_error_impl(&dword_2304B3000, v73, OS_LOG_TYPE_ERROR, "%s, Decoding error for etaUpdateStateQueue, %@", buf, 0x16u);
    }

    goto LABEL_41;
  }

  if (!v71)
  {
LABEL_41:
    etaUpdateStateQueue = [[RTFixedSizeQueue alloc] initWithCapacity:2];
    objc_storeStrong(&self->_etaUpdateStateQueue, etaUpdateStateQueue);
    v75 = 0;
    goto LABEL_44;
  }

  v75 = v71;
  etaUpdateStateQueue = self->_etaUpdateStateQueue;
  self->_etaUpdateStateQueue = v75;
LABEL_44:

  v76 = MEMORY[0x277CCAAC8];
  defaultsManager28 = [(SMSessionMetricManager *)self defaultsManager];
  v78 = [defaultsManager28 objectForKey:@"RTDefaultsSessionMetricManagerEtaUpdateSubmissionQueueKey"];
  v203 = 0;
  v79 = [v76 unarchivedObjectOfClasses:v67 fromData:v78 error:&v203];
  v80 = v203;

  if (v80)
  {
    v81 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v206 = "[SMSessionMetricManager _setup]";
      v207 = 2112;
      v208 = v80;
      _os_log_error_impl(&dword_2304B3000, v81, OS_LOG_TYPE_ERROR, "%s, Decoding error for etaUpdateSubmissionQueue, %@", buf, 0x16u);
    }

    goto LABEL_48;
  }

  if (!v79)
  {
LABEL_48:
    etaUpdateSubmissionQueue = [[RTFixedSizeQueue alloc] initWithCapacity:2];
    objc_storeStrong(&self->_etaUpdateSubmissionQueue, etaUpdateSubmissionQueue);
    v83 = 0;
    goto LABEL_51;
  }

  v83 = v79;
  etaUpdateSubmissionQueue = self->_etaUpdateSubmissionQueue;
  self->_etaUpdateSubmissionQueue = v83;
LABEL_51:

  defaultsManager29 = [(SMSessionMetricManager *)self defaultsManager];
  v85 = [defaultsManager29 objectForKey:@"RTDefaultsSessionMetricManagerSessionTypeKey"];
  if (v85)
  {
    defaultsManager30 = [(SMSessionMetricManager *)self defaultsManager];
    v87 = [defaultsManager30 objectForKey:@"RTDefaultsSessionMetricManagerSessionTypeKey"];
    self->_sessionType = [v87 integerValue];
  }

  else
  {
    self->_sessionType = 0;
  }

  defaultsManager31 = [(SMSessionMetricManager *)self defaultsManager];
  v89 = [defaultsManager31 objectForKey:@"RTDefaultsSessionMetricManagerDidTriggerOccurKey"];
  if (v89)
  {
    defaultsManager32 = [(SMSessionMetricManager *)self defaultsManager];
    v91 = [defaultsManager32 objectForKey:@"RTDefaultsSessionMetricManagerDidTriggerOccurKey"];
    self->_didTriggerOccur = [v91 BOOLValue];
  }

  else
  {
    self->_didTriggerOccur = 0;
  }

  defaultsManager33 = [(SMSessionMetricManager *)self defaultsManager];
  v93 = [defaultsManager33 objectForKey:@"RTDefaultsSessionMetricManagerDestinationLocationTypeEnumKey"];
  if (v93)
  {
    defaultsManager34 = [(SMSessionMetricManager *)self defaultsManager];
    v95 = [defaultsManager34 objectForKey:@"RTDefaultsSessionMetricManagerDestinationLocationTypeEnumKey"];
    [v95 doubleValue];
    self->_sessionDestinationType = v96;
  }

  else
  {
    self->_sessionDestinationType = 0;
  }

  defaultsManager35 = [(SMSessionMetricManager *)self defaultsManager];
  v98 = [defaultsManager35 objectForKey:@"RTDefaultsSessionMetricManagerFirstAnomalyTriggerCategoryEnumKey"];
  if (v98)
  {
    defaultsManager36 = [(SMSessionMetricManager *)self defaultsManager];
    v100 = [defaultsManager36 objectForKey:@"RTDefaultsSessionMetricManagerFirstAnomalyTriggerCategoryEnumKey"];
    [v100 doubleValue];
    self->_firstAnomalyTriggerCategoryEnum = v101;
  }

  else
  {
    self->_firstAnomalyTriggerCategoryEnum = 0;
  }

  defaultsManager37 = [(SMSessionMetricManager *)self defaultsManager];
  v103 = [defaultsManager37 objectForKey:@"RTDefaultsSessionMetricManagerMostRecentLocationDistanceKey"];
  if (v103)
  {
    defaultsManager38 = [(SMSessionMetricManager *)self defaultsManager];
    v105 = [defaultsManager38 objectForKey:@"RTDefaultsSessionMetricManagerMostRecentLocationDistanceKey"];
    [v105 doubleValue];
    self->_mostRecentLocationDistance = v106;
  }

  else
  {
    self->_mostRecentLocationDistance = -1.0;
  }

  defaultsManager39 = [(SMSessionMetricManager *)self defaultsManager];
  v108 = [defaultsManager39 objectForKey:@"RTDefaultsSessionMetricManagerNumExtensionsKey"];
  if (v108)
  {
    defaultsManager40 = [(SMSessionMetricManager *)self defaultsManager];
    v110 = [defaultsManager40 objectForKey:@"RTDefaultsSessionMetricManagerNumExtensionsKey"];
    [v110 doubleValue];
    self->_numExtensions = v111;
  }

  else
  {
    self->_numExtensions = 0;
  }

  defaultsManager41 = [(SMSessionMetricManager *)self defaultsManager];
  v113 = [defaultsManager41 objectForKey:@"RTDefaultsSessionMetricManagerOriginatingLocationTypeKey"];
  if (v113)
  {
    defaultsManager42 = [(SMSessionMetricManager *)self defaultsManager];
    v115 = [defaultsManager42 objectForKey:@"RTDefaultsSessionMetricManagerOriginatingLocationTypeKey"];
    [v115 doubleValue];
    self->_originatingLocationTypeEnum = v116;
  }

  else
  {
    self->_originatingLocationTypeEnum = 0;
  }

  defaultsManager43 = [(SMSessionMetricManager *)self defaultsManager];
  v118 = [defaultsManager43 objectForKey:@"RTDefaultsSessionMetricManagerOriginalNominalTravelTimeKey"];
  if (v118)
  {
    defaultsManager44 = [(SMSessionMetricManager *)self defaultsManager];
    v120 = [defaultsManager44 objectForKey:@"RTDefaultsSessionMetricManagerOriginalNominalTravelTimeKey"];
    [v120 doubleValue];
    self->_originalNominalTravelTime = v121;
  }

  else
  {
    self->_originalNominalTravelTime = -1.0;
  }

  defaultsManager45 = [(SMSessionMetricManager *)self defaultsManager];
  v123 = [defaultsManager45 objectForKey:@"RTDefaultsSessionMetricManagerRatioOfFirstAnomalyDistanceToTotalDistanceKey"];
  if (v123)
  {
    defaultsManager46 = [(SMSessionMetricManager *)self defaultsManager];
    v125 = [defaultsManager46 objectForKey:@"RTDefaultsSessionMetricManagerRatioOfFirstAnomalyDistanceToTotalDistanceKey"];
    [v125 doubleValue];
    self->_ratioOfFirstAnomalyDistanceToTotalDistance = v126;
  }

  else
  {
    self->_ratioOfFirstAnomalyDistanceToTotalDistance = -1.0;
  }

  defaultsManager47 = [(SMSessionMetricManager *)self defaultsManager];
  v128 = [defaultsManager47 objectForKey:@"RTDefaultsSessionMetricManagerInitialDistanceKey"];
  if (v128)
  {
    defaultsManager48 = [(SMSessionMetricManager *)self defaultsManager];
    v130 = [defaultsManager48 objectForKey:@"RTDefaultsSessionMetricManagerInitialDistanceKey"];
    [v130 doubleValue];
    self->_initialDistance = v131;
  }

  else
  {
    self->_initialDistance = -1.0;
  }

  defaultsManager49 = [(SMSessionMetricManager *)self defaultsManager];
  v133 = [defaultsManager49 objectForKey:@"RTDefaultsSessionMetricManagerDidHandoffOccurKey"];
  if (v133)
  {
    defaultsManager50 = [(SMSessionMetricManager *)self defaultsManager];
    v135 = [defaultsManager50 objectForKey:@"RTDefaultsSessionMetricManagerDidHandoffOccurKey"];
    self->_didHandoffOccur = [v135 BOOLValue];
  }

  else
  {
    self->_didHandoffOccur = 0;
  }

  defaultsManager51 = [(SMSessionMetricManager *)self defaultsManager];
  v137 = [defaultsManager51 objectForKey:@"RTDefaultsSessionMetricManagerWasActiveAtStartKey"];
  if (v137)
  {
    defaultsManager52 = [(SMSessionMetricManager *)self defaultsManager];
    v139 = [defaultsManager52 objectForKey:@"RTDefaultsSessionMetricManagerWasActiveAtStartKey"];
    self->_wasActiveAtStart = [v139 BOOLValue];
  }

  else
  {
    self->_wasActiveAtStart = 0;
  }

  defaultsManager53 = [(SMSessionMetricManager *)self defaultsManager];
  v141 = [defaultsManager53 objectForKey:@"RTDefaultsSessionMetricManagerWasActiveAtEndKey"];
  if (v141)
  {
    defaultsManager54 = [(SMSessionMetricManager *)self defaultsManager];
    v143 = [defaultsManager54 objectForKey:@"RTDefaultsSessionMetricManagerWasActiveAtEndKey"];
    self->_wasActiveAtEnd = [v143 BOOLValue];
  }

  else
  {
    self->_wasActiveAtEnd = 0;
  }

  defaultsManager55 = [(SMSessionMetricManager *)self defaultsManager];
  v145 = [defaultsManager55 objectForKey:@"RTDefaultsSessionMetricManagerNumAnomalyPromptKey"];
  if (v145)
  {
    defaultsManager56 = [(SMSessionMetricManager *)self defaultsManager];
    v147 = [defaultsManager56 objectForKey:@"RTDefaultsSessionMetricManagerNumAnomalyPromptKey"];
    self->_numAnomalyPrompt = [v147 unsignedIntValue];
  }

  else
  {
    self->_numAnomalyPrompt = 0;
  }

  defaultsManager57 = [(SMSessionMetricManager *)self defaultsManager];
  v149 = [defaultsManager57 objectForKey:@"RTDefaultsSessionMetricManagerNumAnomalyPromptDuringHysteresisKey"];
  if (v149)
  {
    defaultsManager58 = [(SMSessionMetricManager *)self defaultsManager];
    v151 = [defaultsManager58 objectForKey:@"RTDefaultsSessionMetricManagerNumAnomalyPromptDuringHysteresisKey"];
    self->_numAnomalyPromptDuringHysteresis = [v151 unsignedIntValue];
  }

  else
  {
    self->_numAnomalyPromptDuringHysteresis = 0;
  }

  defaultsManager59 = [(SMSessionMetricManager *)self defaultsManager];
  v153 = [defaultsManager59 objectForKey:@"RTDefaultsSessionMetricManagerNumHandoffKey"];
  if (v153)
  {
    defaultsManager60 = [(SMSessionMetricManager *)self defaultsManager];
    v155 = [defaultsManager60 objectForKey:@"RTDefaultsSessionMetricManagerNumHandoffKey"];
    self->_numHandoff = [v155 unsignedIntValue];
  }

  else
  {
    self->_numHandoff = 0;
  }

  defaultsManager61 = [(SMSessionMetricManager *)self defaultsManager];
  v157 = [defaultsManager61 objectForKey:@"RTDefaultsSessionMetricManagerNumLPMSeparationKey"];
  if (v157)
  {
    defaultsManager62 = [(SMSessionMetricManager *)self defaultsManager];
    v159 = [defaultsManager62 objectForKey:@"RTDefaultsSessionMetricManagerNumLPMSeparationKey"];
    self->_numLPMSeparation = [v159 unsignedIntValue];
  }

  else
  {
    self->_numLPMSeparation = 0;
  }

  defaultsManager63 = [(SMSessionMetricManager *)self defaultsManager];
  v161 = [defaultsManager63 objectForKey:@"RTDefaultsSessionMetricManagerNumTakeoverKey"];
  if (v161)
  {
    defaultsManager64 = [(SMSessionMetricManager *)self defaultsManager];
    v163 = [defaultsManager64 objectForKey:@"RTDefaultsSessionMetricManagerNumTakeoverKey"];
    self->_numTakeover = [v163 unsignedIntValue];
  }

  else
  {
    self->_numTakeover = 0;
  }

  defaultsManager65 = [(SMSessionMetricManager *)self defaultsManager];
  v165 = [defaultsManager65 objectForKey:@"RTDefaultsSessionMetricManagerNumUnsupportedDeviceSeparationKey"];
  if (v165)
  {
    defaultsManager66 = [(SMSessionMetricManager *)self defaultsManager];
    v167 = [defaultsManager66 objectForKey:@"RTDefaultsSessionMetricManagerNumUnsupportedDeviceSeparationKey"];
    self->_numUnsupportedDeviceSeparation = [v167 unsignedIntValue];
  }

  else
  {
    self->_numUnsupportedDeviceSeparation = 0;
  }

  defaultsManager67 = [(SMSessionMetricManager *)self defaultsManager];
  v169 = [defaultsManager67 objectForKey:@"RTDefaultsSessionMetricManagerNumUserDisabledConnectivityKey"];
  if (v169)
  {
    defaultsManager68 = [(SMSessionMetricManager *)self defaultsManager];
    v171 = [defaultsManager68 objectForKey:@"RTDefaultsSessionMetricManagerNumUserDisabledConnectivityKey"];
    self->_numUserDisabledConnectivity = [v171 unsignedIntValue];
  }

  else
  {
    self->_numUserDisabledConnectivity = 0;
  }

  defaultsManager69 = [(SMSessionMetricManager *)self defaultsManager];
  v173 = [defaultsManager69 objectForKey:@"RTDefaultsSessionMetricManagerDidWorkoutEndKey"];
  if (v173)
  {
    defaultsManager70 = [(SMSessionMetricManager *)self defaultsManager];
    v175 = [defaultsManager70 objectForKey:@"RTDefaultsSessionMetricManagerDidWorkoutEndKey"];
    self->_didWorkoutEnd = [v175 BOOLValue];
  }

  else
  {
    self->_didWorkoutEnd = 0;
  }

  defaultsManager71 = [(SMSessionMetricManager *)self defaultsManager];
  v177 = [defaultsManager71 objectForKey:@"RTDefaultsSessionMetricManagerDidWorkoutPauseKey"];
  if (v177)
  {
    defaultsManager72 = [(SMSessionMetricManager *)self defaultsManager];
    v179 = [defaultsManager72 objectForKey:@"RTDefaultsSessionMetricManagerDidWorkoutPauseKey"];
    self->_didWorkoutPause = [v179 BOOLValue];
  }

  else
  {
    self->_didWorkoutPause = 0;
  }

  defaultsManager73 = [(SMSessionMetricManager *)self defaultsManager];
  v181 = [defaultsManager73 objectForKey:@"RTDefaultsSessionMetricManagerIsWorkoutAlwaysOnKey"];
  if (v181)
  {
    defaultsManager74 = [(SMSessionMetricManager *)self defaultsManager];
    v183 = [defaultsManager74 objectForKey:@"RTDefaultsSessionMetricManagerIsWorkoutAlwaysOnKey"];
    self->_isWorkoutAlwaysOn = [v183 BOOLValue];
  }

  else
  {
    self->_isWorkoutAlwaysOn = 0;
  }

  defaultsManager75 = [(SMSessionMetricManager *)self defaultsManager];
  v185 = [defaultsManager75 objectForKey:@"RTDefaultsSessionMetricManagerModeOfTransportationKey"];
  if (v185)
  {
    defaultsManager76 = [(SMSessionMetricManager *)self defaultsManager];
    v187 = [defaultsManager76 objectForKey:@"RTDefaultsSessionMetricManagerModeOfTransportationKey"];
    self->_modeOfTransportation = [v187 unsignedIntValue];
  }

  else
  {
    self->_modeOfTransportation = 0;
  }

  defaultsManager77 = [(SMSessionMetricManager *)self defaultsManager];
  v189 = [defaultsManager77 objectForKey:@"RTDefaultsSessionMetricManagerNumRecipientsKey"];
  if (v189)
  {
    defaultsManager78 = [(SMSessionMetricManager *)self defaultsManager];
    v191 = [defaultsManager78 objectForKey:@"RTDefaultsSessionMetricManagerNumRecipientsKey"];
    self->_numRecipients = [v191 unsignedIntValue];
  }

  else
  {
    self->_numRecipients = 0;
  }

  defaultsManager79 = [(SMSessionMetricManager *)self defaultsManager];
  v193 = [defaultsManager79 objectForKey:@"RTDefaultsSessionMetricManagerWorkoutActivityTypeStringKey"];
  if (v193)
  {
    workoutActivityTypeString = [(SMSessionMetricManager *)self defaultsManager];
    v195 = [workoutActivityTypeString objectForKey:@"RTDefaultsSessionMetricManagerWorkoutActivityTypeStringKey"];
    [v195 stringValue];
    v202 = defaultsManager79;
    v196 = v67;
    v197 = v80;
    v198 = v72;
    v199 = v83;
    v201 = v200 = v75;
    objc_storeStrong(&self->_workoutActivityTypeString, v201);

    v75 = v200;
    v83 = v199;
    v72 = v198;
    v80 = v197;
    v67 = v196;
    defaultsManager79 = v202;
  }

  else
  {
    workoutActivityTypeString = self->_workoutActivityTypeString;
    self->_workoutActivityTypeString = @"Unknown";
  }
}

- (void)_reset
{
  defaultsManager = [(SMSessionMetricManager *)self defaultsManager];
  [defaultsManager setObject:0 forKey:@"RTDefaultsSessionMetricManagerSessionStartDateKey"];

  defaultsManager2 = [(SMSessionMetricManager *)self defaultsManager];
  [defaultsManager2 setObject:0 forKey:@"RTDefaultsSessionMetricManagerSessionEndDateKey"];

  defaultsManager3 = [(SMSessionMetricManager *)self defaultsManager];
  [defaultsManager3 setObject:0 forKey:@"RTDefaultsSessionMetricManagerClosestTimeIntervalToExceedingETAKey"];

  defaultsManager4 = [(SMSessionMetricManager *)self defaultsManager];
  [defaultsManager4 setObject:0 forKey:@"RTDefaultsSessionMetricManagerMaxCrowFliesScaleFactorKey"];

  defaultsManager5 = [(SMSessionMetricManager *)self defaultsManager];
  [defaultsManager5 setObject:0 forKey:@"RTDefaultsSessionMetricManagerMaxMapsETAScaleFactorKey"];

  defaultsManager6 = [(SMSessionMetricManager *)self defaultsManager];
  [defaultsManager6 setObject:0 forKey:@"RTDefaultsSessionMetricManagerDidDestinationAnomalyTriggerKey"];

  defaultsManager7 = [(SMSessionMetricManager *)self defaultsManager];
  [defaultsManager7 setObject:0 forKey:@"RTDefaultsSessionMetricManagerNoProgressTriggeredKey"];

  defaultsManager8 = [(SMSessionMetricManager *)self defaultsManager];
  [defaultsManager8 setObject:0 forKey:@"RTDefaultsSessionMetricManagerRouteDeviationTriggeredKey"];

  defaultsManager9 = [(SMSessionMetricManager *)self defaultsManager];
  [defaultsManager9 setObject:0 forKey:@"RTDefaultsSessionMetricManagerDidArriveSafelyKey"];

  defaultsManager10 = [(SMSessionMetricManager *)self defaultsManager];
  [defaultsManager10 setObject:0 forKey:@"RTDefaultsSessionMetricManagerSosTriggeredKey"];

  defaultsManager11 = [(SMSessionMetricManager *)self defaultsManager];
  [defaultsManager11 setObject:0 forKey:@"RTDefaultsSessionMetricManagerUserEndedSessionKey"];

  defaultsManager12 = [(SMSessionMetricManager *)self defaultsManager];
  [defaultsManager12 setObject:0 forKey:@"RTDefaultsSessionMetricManagerPreviousCrowFliesETAKey"];

  defaultsManager13 = [(SMSessionMetricManager *)self defaultsManager];
  [defaultsManager13 setObject:0 forKey:@"RTDefaultsSessionMetricManagerPreviousMapsExpectedETAKey"];

  defaultsManager14 = [(SMSessionMetricManager *)self defaultsManager];
  [defaultsManager14 setObject:0 forKey:@"RTDefaultsSessionMetricManagerEtaUpdateStateQueueKey"];

  defaultsManager15 = [(SMSessionMetricManager *)self defaultsManager];
  [defaultsManager15 setObject:0 forKey:@"RTDefaultsSessionMetricManagerEtaUpdateSubmissionQueueKey"];

  defaultsManager16 = [(SMSessionMetricManager *)self defaultsManager];
  [defaultsManager16 setObject:0 forKey:@"RTDefaultsSessionMetricManagerSessionTypeKey"];

  defaultsManager17 = [(SMSessionMetricManager *)self defaultsManager];
  [defaultsManager17 setObject:0 forKey:@"RTDefaultsSessionMetricManagerDidHandoffOccurKey"];

  defaultsManager18 = [(SMSessionMetricManager *)self defaultsManager];
  [defaultsManager18 setObject:0 forKey:@"RTDefaultsSessionMetricManagerWasActiveAtStartKey"];

  defaultsManager19 = [(SMSessionMetricManager *)self defaultsManager];
  [defaultsManager19 setObject:0 forKey:@"RTDefaultsSessionMetricManagerWasActiveAtEndKey"];

  defaultsManager20 = [(SMSessionMetricManager *)self defaultsManager];
  [defaultsManager20 setObject:0 forKey:@"RTDefaultsSessionMetricManagerDidTriggerOccurKey"];

  defaultsManager21 = [(SMSessionMetricManager *)self defaultsManager];
  [defaultsManager21 setObject:0 forKey:@"RTDefaultsSessionMetricManagerDestinationLocationTypeEnumKey"];

  defaultsManager22 = [(SMSessionMetricManager *)self defaultsManager];
  [defaultsManager22 setObject:0 forKey:@"RTDefaultsSessionMetricManagerFirstAnomalyTriggerCategoryEnumKey"];

  defaultsManager23 = [(SMSessionMetricManager *)self defaultsManager];
  [defaultsManager23 setObject:0 forKey:@"RTDefaultsSessionMetricManagerInitialDistanceKey"];

  defaultsManager24 = [(SMSessionMetricManager *)self defaultsManager];
  [defaultsManager24 setObject:0 forKey:@"RTDefaultsSessionMetricManagerMostRecentLocationDistanceKey"];

  defaultsManager25 = [(SMSessionMetricManager *)self defaultsManager];
  [defaultsManager25 setObject:0 forKey:@"RTDefaultsSessionMetricManagerNumExtensionsKey"];

  defaultsManager26 = [(SMSessionMetricManager *)self defaultsManager];
  [defaultsManager26 setObject:0 forKey:@"RTDefaultsSessionMetricManagerOriginalNominalTravelTimeKey"];

  defaultsManager27 = [(SMSessionMetricManager *)self defaultsManager];
  [defaultsManager27 setObject:0 forKey:@"RTDefaultsSessionMetricManagerOriginatingLocationTypeKey"];

  defaultsManager28 = [(SMSessionMetricManager *)self defaultsManager];
  [defaultsManager28 setObject:0 forKey:@"RTDefaultsSessionMetricManagerRatioOfFirstAnomalyDistanceToTotalDistanceKey"];

  defaultsManager29 = [(SMSessionMetricManager *)self defaultsManager];
  [defaultsManager29 setObject:0 forKey:@"RTDefaultsSessionMetricManagerNumAnomalyPromptKey"];

  defaultsManager30 = [(SMSessionMetricManager *)self defaultsManager];
  [defaultsManager30 setObject:0 forKey:@"RTDefaultsSessionMetricManagerNumAnomalyPromptDuringHysteresisKey"];

  defaultsManager31 = [(SMSessionMetricManager *)self defaultsManager];
  [defaultsManager31 setObject:0 forKey:@"RTDefaultsSessionMetricManagerNumHandoffKey"];

  defaultsManager32 = [(SMSessionMetricManager *)self defaultsManager];
  [defaultsManager32 setObject:0 forKey:@"RTDefaultsSessionMetricManagerNumLPMSeparationKey"];

  defaultsManager33 = [(SMSessionMetricManager *)self defaultsManager];
  [defaultsManager33 setObject:0 forKey:@"RTDefaultsSessionMetricManagerNumTakeoverKey"];

  defaultsManager34 = [(SMSessionMetricManager *)self defaultsManager];
  [defaultsManager34 setObject:0 forKey:@"RTDefaultsSessionMetricManagerNumUnsupportedDeviceSeparationKey"];

  defaultsManager35 = [(SMSessionMetricManager *)self defaultsManager];
  [defaultsManager35 setObject:0 forKey:@"RTDefaultsSessionMetricManagerNumUserDisabledConnectivityKey"];

  defaultsManager36 = [(SMSessionMetricManager *)self defaultsManager];
  [defaultsManager36 setObject:0 forKey:@"RTDefaultsSessionMetricManagerDidWorkoutEndKey"];

  defaultsManager37 = [(SMSessionMetricManager *)self defaultsManager];
  [defaultsManager37 setObject:0 forKey:@"RTDefaultsSessionMetricManagerDidWorkoutPauseKey"];

  defaultsManager38 = [(SMSessionMetricManager *)self defaultsManager];
  [defaultsManager38 setObject:0 forKey:@"RTDefaultsSessionMetricManagerIsWorkoutAlwaysOnKey"];

  defaultsManager39 = [(SMSessionMetricManager *)self defaultsManager];
  [defaultsManager39 setObject:0 forKey:@"RTDefaultsSessionMetricManagerModeOfTransportationKey"];

  defaultsManager40 = [(SMSessionMetricManager *)self defaultsManager];
  [defaultsManager40 setObject:0 forKey:@"RTDefaultsSessionMetricManagerNumRecipientsKey"];

  defaultsManager41 = [(SMSessionMetricManager *)self defaultsManager];
  [defaultsManager41 setObject:0 forKey:@"RTDefaultsSessionMetricManagerWorkoutActivityTypeStringKey"];

  [(SMSessionMetricManager *)self _setup];
}

- (id)_createDestinationMetricDictionary
{
  v2 = objc_opt_new();
  [v2 setObject:&unk_28459F318 forKeyedSubscript:@"sessionDuration"];
  [v2 setObject:&unk_28459F318 forKeyedSubscript:@"anyTrigger"];
  [v2 setObject:&unk_28459F318 forKeyedSubscript:@"actualETAScaleFactor"];
  [v2 setObject:&unk_28459F318 forKeyedSubscript:@"initialETA"];
  [v2 setObject:&unk_28459F318 forKeyedSubscript:@"maxCrowFliesETAScaleFactor"];
  [v2 setObject:&unk_28459F318 forKeyedSubscript:@"maxMapsExpectedETAScaleFactor"];
  [v2 setObject:&unk_28459F318 forKeyedSubscript:@"noProgressTriggered"];
  [v2 setObject:&unk_28459F318 forKeyedSubscript:@"routeDeviationTriggered"];
  [v2 setObject:&unk_28459F318 forKeyedSubscript:@"safeArrivalOccurred"];
  [v2 setObject:&unk_28459F318 forKeyedSubscript:@"SOSTriggered"];
  [v2 setObject:&unk_28459F318 forKeyedSubscript:@"userEndedSession"];
  [v2 setObject:&unk_28459F330 forKeyedSubscript:@"nominalTravelTimeRemainingDifference"];
  [v2 setObject:&unk_28459F330 forKeyedSubscript:@"nominalTravelTimeRemaining"];
  [v2 setObject:&unk_28459F330 forKeyedSubscript:@"distanceRemainingDifference"];
  [v2 setObject:&unk_28459F318 forKeyedSubscript:@"distanceRemaining"];
  v3 = MEMORY[0x277CBEC28];
  [v2 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"nominalTravelTimeShorter"];
  [v2 setObject:v3 forKeyedSubscript:@"remainingDistanceShorter"];
  [v2 setObject:v3 forKeyedSubscript:@"shouldUpdateUpperBoundETA"];
  [v2 setObject:&unk_28459F330 forKeyedSubscript:@"nominalTravelTimeRemainingDifferencePrior"];
  [v2 setObject:&unk_28459F330 forKeyedSubscript:@"nominalTravelTimeRemainingPrior"];
  [v2 setObject:&unk_28459F330 forKeyedSubscript:@"distanceRemainingDifferencePrior"];
  [v2 setObject:&unk_28459F318 forKeyedSubscript:@"distanceRemainingPrior"];
  [v2 setObject:v3 forKeyedSubscript:@"nominalTravelTimeShorterPrior"];
  [v2 setObject:v3 forKeyedSubscript:@"remainingDistanceShorterPrior"];
  [v2 setObject:v3 forKeyedSubscript:@"shouldUpdateUpperBoundETAPrior"];
  [v2 setObject:v3 forKeyedSubscript:@"didHandoffOccur"];
  [v2 setObject:v3 forKeyedSubscript:@"wasActiveAtStart"];
  [v2 setObject:v3 forKeyedSubscript:@"wasActiveAtEnd"];

  return v2;
}

- (id)_createInitiatorPerSessionDetailsMetricDictionary
{
  v2 = objc_opt_new();
  [v2 setObject:&unk_28459F318 forKeyedSubscript:@"numExtensions"];
  [v2 setObject:&unk_28459F330 forKeyedSubscript:@"originalNominalTravelTime"];
  [v2 setObject:&unk_28459F318 forKeyedSubscript:@"originatingLocationTypeEnum"];
  [v2 setObject:&unk_28459F318 forKeyedSubscript:@"sessionDuration"];
  [v2 setObject:&unk_28459F330 forKeyedSubscript:@"ratioOfFirstAnomalyDistanceToTotalDistance"];
  [v2 setObject:&unk_28459F318 forKeyedSubscript:@"destinationLocationTypeEnum"];
  [v2 setObject:&unk_28459F318 forKeyedSubscript:@"didAnomalyPrompt"];
  [v2 setObject:&unk_28459F318 forKeyedSubscript:@"didSafeArrival"];
  [v2 setObject:&unk_28459F318 forKeyedSubscript:@"firstAnomalyTriggerCategoryEnum"];
  [v2 setObject:&unk_28459F318 forKeyedSubscript:@"sessionTypeEnum"];
  [v2 setObject:&unk_28459F330 forKeyedSubscript:@"sessionStartTimeOfDay"];
  [v2 setObject:&unk_28459F318 forKeyedSubscript:@"numAnomalyPrompt"];
  [v2 setObject:&unk_28459F318 forKeyedSubscript:@"numAnomalyPromptDuringHysteresis"];
  [v2 setObject:&unk_28459F318 forKeyedSubscript:@"numHandoff"];
  [v2 setObject:&unk_28459F318 forKeyedSubscript:@"numLPMSeparation"];
  [v2 setObject:&unk_28459F318 forKeyedSubscript:@"numTakeover"];
  [v2 setObject:&unk_28459F318 forKeyedSubscript:@"numUnsupportedDeviceSeparation"];
  [v2 setObject:&unk_28459F318 forKeyedSubscript:@"numUserDisabledConnectivity"];
  v3 = MEMORY[0x277CBEC28];
  [v2 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"didWorkoutEnd"];
  [v2 setObject:v3 forKeyedSubscript:@"didWorkoutPause"];
  [v2 setObject:v3 forKeyedSubscript:@"isCellularActivated"];
  [v2 setObject:v3 forKeyedSubscript:@"isStandalone"];
  [v2 setObject:v3 forKeyedSubscript:@"isWorkoutAlwaysOn"];
  [v2 setObject:&unk_28459F330 forKeyedSubscript:@"modeOfTransportation"];
  [v2 setObject:&unk_28459F318 forKeyedSubscript:@"numRecipients"];
  [v2 setObject:v3 forKeyedSubscript:@"wasActiveAtEnd"];
  [v2 setObject:v3 forKeyedSubscript:@"wasActiveAtStart"];
  [v2 setObject:@"Unknown" forKeyedSubscript:@"workoutActivityTypeString"];

  return v2;
}

- (void)_updateETASubmissionStates
{
  etaUpdateStateQueue = [(SMSessionMetricManager *)self etaUpdateStateQueue];
  v3 = [etaUpdateStateQueue copy];
  [(SMSessionMetricManager *)self setEtaUpdateSubmissionQueue:v3];
}

- (void)onDailyMetricsNotification:(id)notification
{
  notificationCopy = notification;
  queue = [(SMSessionMetricManager *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__SMSessionMetricManager_onDailyMetricsNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(queue, v7);
}

- (id)getLocationsForInterval:(id)interval nearBoundingLocation:(id)location
{
  v42 = *MEMORY[0x277D85DE8];
  intervalCopy = interval;
  locationCopy = location;
  v30 = intervalCopy;
  v8 = [objc_alloc(MEMORY[0x277D01320]) initWithDateInterval:intervalCopy horizontalAccuracy:0 batchSize:locationCopy boundingBoxLocation:250.0];
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__144;
  v38 = __Block_byref_object_dispose__144;
  v39 = 0;
  v9 = dispatch_semaphore_create(0);
  locationManager = [(SMSessionMetricManager *)self locationManager];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __71__SMSessionMetricManager_getLocationsForInterval_nearBoundingLocation___block_invoke;
  v31[3] = &unk_2788C45F0;
  v33 = &v34;
  v11 = v9;
  v32 = v11;
  [locationManager fetchStoredLocationsWithOptions:v8 handler:v31];

  v12 = v11;
  v13 = [MEMORY[0x277CBEAA8] now];
  v14 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v12, v14))
  {
    v15 = [MEMORY[0x277CBEAA8] now];
    [v15 timeIntervalSinceDate:v13];
    v17 = v16;
    v18 = objc_opt_new();
    v19 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_121];
    callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
    v21 = [callStackSymbols filteredArrayUsingPredicate:v19];
    firstObject = [v21 firstObject];

    [v18 submitToCoreAnalytics:firstObject type:1 duration:v17];
    v23 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v23, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v24 = MEMORY[0x277CCA9B8];
    v40 = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v40 count:1];
    v26 = [v24 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v25];

    if (v26)
    {
      v27 = v26;
    }
  }

  v28 = v35[5];
  _Block_object_dispose(&v34, 8);

  return v28;
}

void __71__SMSessionMetricManager_getLocationsForInterval_nearBoundingLocation___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  if (!a3)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)getRTLocationOfInterestForCLLocation:(id)location
{
  v47 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  v28 = [objc_alloc(MEMORY[0x277D01160]) initWithCLLocation:locationCopy];
  v4 = dispatch_semaphore_create(0);
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__144;
  v43 = __Block_byref_object_dispose__144;
  v44 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__144;
  v37 = __Block_byref_object_dispose__144;
  v38 = 0;
  learnedLocationManager = [(SMSessionMetricManager *)self learnedLocationManager];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __63__SMSessionMetricManager_getRTLocationOfInterestForCLLocation___block_invoke;
  v29[3] = &unk_2788C4B58;
  v31 = &v39;
  v32 = &v33;
  v6 = v4;
  v30 = v6;
  [learnedLocationManager fetchLocationOfInterestAtLocation:v28 handler:v29];

  v8 = (v34 + 5);
  v7 = v34[5];
  v9 = v6;
  v10 = [MEMORY[0x277CBEAA8] now];
  v11 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v9, v11))
  {
    v12 = [MEMORY[0x277CBEAA8] now];
    [v12 timeIntervalSinceDate:v10];
    v14 = v13;
    v15 = objc_opt_new();
    v16 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_121];
    callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
    v18 = [callStackSymbols filteredArrayUsingPredicate:v16];
    firstObject = [v18 firstObject];

    [v15 submitToCoreAnalytics:firstObject type:1 duration:v14];
    v20 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v20, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v21 = MEMORY[0x277CCA9B8];
    v45 = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v45 count:1];
    v23 = [v21 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v22];

    if (v23)
    {
      v24 = v23;

      v7 = v23;
    }
  }

  objc_storeStrong(v8, v7);
  v25 = v40[5];

  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v39, 8);

  return v25;
}

void __63__SMSessionMetricManager_getRTLocationOfInterestForCLLocation___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)_gatherSessionDestinationStats:(id)stats
{
  v226 = *MEMORY[0x277D85DE8];
  statsCopy = stats;
  v160 = [MEMORY[0x277CBEAA8] now];
  v3 = dispatch_semaphore_create(0);
  v208 = 0;
  v209 = &v208;
  v210 = 0x3032000000;
  v211 = __Block_byref_object_copy__144;
  v212 = __Block_byref_object_dispose__144;
  v213 = 0;
  v4 = objc_alloc(MEMORY[0x277D4AB80]);
  LOBYTE(v145) = 0;
  v146 = [v4 initWithBatchSize:*MEMORY[0x277D4AF00] fetchLimit:*MEMORY[0x277D4AF00] sortBySessionStartDate:0 ascending:0 sessionTypes:&unk_2845A1550 timeInADayInterval:0 pickOneConfigInTimeInADayInterval:v145 dateInterval:statsCopy startBoundingBoxLocation:0 destinationBoundingBoxLocation:0 boundingBoxRadius:0 sessionIdentifier:0];
  v202 = 0;
  v203 = &v202;
  v204 = 0x3032000000;
  v205 = __Block_byref_object_copy__144;
  v206 = __Block_byref_object_dispose__144;
  v207 = 0;
  sessionStore = [(SMSessionMetricManager *)self sessionStore];
  v198[0] = MEMORY[0x277D85DD0];
  v198[1] = 3221225472;
  v198[2] = __57__SMSessionMetricManager__gatherSessionDestinationStats___block_invoke;
  v198[3] = &unk_2788C4490;
  v200 = &v202;
  v201 = &v208;
  v6 = v3;
  v199 = v6;
  [sessionStore fetchSessionConfigurationsWithOptions:v146 handler:v198];

  v7 = (v209 + 5);
  v8 = v209[5];
  dsema = v6;
  v9 = [MEMORY[0x277CBEAA8] now];
  v10 = dispatch_time(0, 3600000000000);
  v11 = dispatch_semaphore_wait(dsema, v10);
  v12 = MEMORY[0x277D01448];
  if (v11)
  {
    v13 = [MEMORY[0x277CBEAA8] now];
    [v13 timeIntervalSinceDate:v9];
    v15 = v14;
    v16 = objc_opt_new();
    v17 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_121];
    callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
    v19 = [callStackSymbols filteredArrayUsingPredicate:v17];
    firstObject = [v19 firstObject];

    [v16 submitToCoreAnalytics:firstObject type:1 duration:v15];
    v21 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v21, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v22 = MEMORY[0x277CCA9B8];
    v217 = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v217 count:1];
    v24 = [v22 errorWithDomain:*v12 code:15 userInfo:v23];

    if (v24)
    {
      v25 = v24;

      v8 = v24;
    }
  }

  objc_storeStrong(v7, v8);
  v196 = 0u;
  v197 = 0u;
  v194 = 0u;
  v195 = 0u;
  obj = v203[5];
  v171 = [obj countByEnumeratingWithState:&v194 objects:v223 count:16];
  if (v171)
  {
    v169 = *v195;
    v159 = *MEMORY[0x277D4AF08];
    v156 = *v12;
    v157 = *MEMORY[0x277CCA450];
    v154 = *MEMORY[0x277D4ACD8];
    v153 = *MEMORY[0x277D4ACF0];
    v152 = *MEMORY[0x277D4ACE0];
    v151 = *MEMORY[0x277D4ACE8];
    v150 = *MEMORY[0x277D4AD00];
    v149 = *MEMORY[0x277D4ACF8];
    do
    {
      for (i = 0; i != v171; ++i)
      {
        if (*v195 != v169)
        {
          objc_enumerationMutation(obj);
        }

        v26 = *(*(&v194 + 1) + 8 * i);
        context = objc_autoreleasePoolPush();
        if ([v26 sessionType] == 2)
        {
          sessionID = [v26 sessionID];
          v28 = sessionID == 0;

          if (!v28)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              v29 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
              if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
              {
                sessionID2 = [v26 sessionID];
                *buf = 136446466;
                *&buf[4] = "[SMSessionMetricManager _gatherSessionDestinationStats:]";
                *&buf[12] = 2114;
                *&buf[14] = sessionID2;
                _os_log_impl(&dword_2304B3000, v29, OS_LOG_TYPE_INFO, "%{public}s, fetching session states for sessionID %{public}@", buf, 0x16u);
              }
            }

            v31 = objc_alloc(MEMORY[0x277D4ABF0]);
            sessionID3 = [v26 sessionID];
            v167 = [v31 initWithBatchSize:v159 fetchLimit:v159 sortByCreationDate:1 ascending:1 dateInterval:0 sessionState:0 locationBoundingBox:0 boundingBoxRadius:0 sessionIdentifier:sessionID3];

            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x2020000000;
            v222 = 0;
            v217 = 0;
            v218 = &v217;
            v219 = 0x2020000000;
            v220 = 0;
            v33 = dispatch_semaphore_create(0);
            currentDeviceIdentifier = [(SMSessionMetricManager *)self currentDeviceIdentifier];
            sessionStore2 = [(SMSessionMetricManager *)self sessionStore];
            v188[0] = MEMORY[0x277D85DD0];
            v188[1] = 3221225472;
            v188[2] = __57__SMSessionMetricManager__gatherSessionDestinationStats___block_invoke_681;
            v188[3] = &unk_2788CFE60;
            v192 = buf;
            v36 = currentDeviceIdentifier;
            v193 = &v217;
            v165 = v36;
            v189 = v36;
            v190 = v26;
            v37 = v33;
            v191 = v37;
            [sessionStore2 fetchSessionManagerStatesWithOptions:v167 handler:v188];

            v39 = (v209 + 5);
            v38 = v209[5];
            v172 = v37;
            v40 = [MEMORY[0x277CBEAA8] now];
            v41 = dispatch_time(0, 3600000000000);
            if (dispatch_semaphore_wait(v172, v41))
            {
              v42 = [MEMORY[0x277CBEAA8] now];
              [v42 timeIntervalSinceDate:v40];
              v44 = v43;
              v45 = objc_opt_new();
              v46 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_121];
              callStackSymbols2 = [MEMORY[0x277CCACC8] callStackSymbols];
              v48 = [callStackSymbols2 filteredArrayUsingPredicate:v46];
              firstObject2 = [v48 firstObject];

              [v45 submitToCoreAnalytics:firstObject2 type:1 duration:v44];
              v50 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
              if (os_log_type_enabled(v50, OS_LOG_TYPE_FAULT))
              {
                *v225 = 0;
                _os_log_fault_impl(&dword_2304B3000, v50, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v225, 2u);
              }

              v51 = MEMORY[0x277CCA9B8];
              v224 = v157;
              *v225 = @"semaphore wait timeout";
              v52 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v225 forKeys:&v224 count:1];
              v53 = [v51 errorWithDomain:v156 code:15 userInfo:v52];

              if (v53)
              {
                v54 = v53;

                v38 = v53;
              }
            }

            objc_storeStrong(v39, v38);
            destination = [v26 destination];
            v55 = objc_alloc(MEMORY[0x277CCA970]);
            sessionStartDate = [v26 sessionStartDate];
            v166 = [v55 initWithStartDate:sessionStartDate endDate:v160];

            v57 = [(SMSessionMetricManager *)self getLocationsForInterval:v166 nearBoundingLocation:0];
            v58 = v57;
            if (v57 && [v57 count])
            {
              v158 = v58;
              v168 = [v58 objectAtIndexedSubscript:0];
              v59 = objc_alloc(MEMORY[0x277CCA970]);
              sessionStartDate2 = [v26 sessionStartDate];
              timestamp = [v168 timestamp];
              v161 = [v59 initWithStartDate:sessionStartDate2 endDate:timestamp];

              [v161 duration];
              if (v62 <= 10.0)
              {
                v63 = [destination eta];
                [v63 expectedTravelTime];
                v65 = v64;
                v66 = [destination eta];
                [v66 additionalTravelTime];
                v68 = v67;

                v69 = v65 + v68;
                if (v65 + v68 > 0.0)
                {
                  v186 = 0u;
                  v187 = 0u;
                  v184 = 0u;
                  v185 = 0u;
                  v162 = v158;
                  v70 = [v162 countByEnumeratingWithState:&v184 objects:v216 count:16];
                  if (v70)
                  {
                    v71 = 0;
                    v72 = *v185;
                    v73 = -1.0;
                    v74 = -1.0;
                    while (2)
                    {
                      for (j = 0; j != v70; ++j)
                      {
                        if (*v185 != v72)
                        {
                          objc_enumerationMutation(v162);
                        }

                        v76 = *(*(&v184 + 1) + 8 * j);
                        v77 = objc_autoreleasePoolPush();
                        clLocation = [destination clLocation];
                        [clLocation distanceFromLocation:v76];
                        v80 = v79;

                        [v168 distanceFromLocation:v76];
                        v82 = v81;
                        [destination radius];
                        v84 = v83;
                        if (v80 < v83)
                        {
                          v85 = objc_alloc(MEMORY[0x277CCA970]);
                          sessionStartDate3 = [v26 sessionStartDate];
                          timestamp2 = [v76 timestamp];
                          v88 = [v85 initWithStartDate:sessionStartDate3 endDate:timestamp2];

                          [v88 duration];
                          v90 = v89;

                          v74 = v90 / v69;
                        }

                        if (!((v82 <= 250.0) | v71 & 1))
                        {
                          v91 = objc_alloc(MEMORY[0x277CCA970]);
                          sessionStartDate4 = [v26 sessionStartDate];
                          timestamp3 = [v76 timestamp];
                          v94 = [v91 initWithStartDate:sessionStartDate4 endDate:timestamp3];

                          [v94 duration];
                          v73 = v95;

                          v71 = 1;
                        }

                        objc_autoreleasePoolPop(v77);
                        if (v80 < v84)
                        {
                          v155 = 1;
                          goto LABEL_41;
                        }
                      }

                      v70 = [v162 countByEnumeratingWithState:&v184 objects:v216 count:16];
                      if (v70)
                      {
                        continue;
                      }

                      break;
                    }

                    v155 = 0;
                  }

                  else
                  {
                    v155 = 0;
                    v73 = -1.0;
                    v74 = -1.0;
                  }

LABEL_41:

                  v96 = [(SMSessionMetricManager *)self getRTLocationOfInterestForCLLocation:v168];
                  v182 = 0u;
                  v183 = 0u;
                  v180 = 0u;
                  v181 = 0u;
                  visits = [v96 visits];
                  v98 = [visits countByEnumeratingWithState:&v180 objects:v215 count:16];
                  v99 = -1.0;
                  if (v98)
                  {
                    v100 = *v181;
                    while (2)
                    {
                      for (k = 0; k != v98; ++k)
                      {
                        if (*v181 != v100)
                        {
                          objc_enumerationMutation(visits);
                        }

                        v102 = *(*(&v180 + 1) + 8 * k);
                        exitDate = [v102 exitDate];
                        sessionStartDate5 = [v26 sessionStartDate];
                        v105 = [exitDate compare:sessionStartDate5] == 1;

                        if (v105)
                        {
                          v106 = objc_alloc(MEMORY[0x277CCA970]);
                          sessionStartDate6 = [v26 sessionStartDate];
                          exitDate2 = [v102 exitDate];
                          v109 = [v106 initWithStartDate:sessionStartDate6 endDate:exitDate2];

                          [v109 duration];
                          v99 = v110;

                          goto LABEL_51;
                        }
                      }

                      v98 = [visits countByEnumeratingWithState:&v180 objects:v215 count:16];
                      if (v98)
                      {
                        continue;
                      }

                      break;
                    }
                  }

LABEL_51:

                  destination2 = [v26 destination];
                  clLocation2 = [destination2 clLocation];
                  v163 = [(SMSessionMetricManager *)self getRTLocationOfInterestForCLLocation:clLocation2];

                  v178 = 0u;
                  v179 = 0u;
                  v176 = 0u;
                  v177 = 0u;
                  visits2 = [v163 visits];
                  v114 = [visits2 countByEnumeratingWithState:&v176 objects:v214 count:16];
                  if (v114)
                  {
                    v115 = *v177;
                    while (2)
                    {
                      for (m = 0; m != v114; ++m)
                      {
                        if (*v177 != v115)
                        {
                          objc_enumerationMutation(visits2);
                        }

                        v117 = *(*(&v176 + 1) + 8 * m);
                        entryDate = [v117 entryDate];
                        sessionStartDate7 = [v26 sessionStartDate];
                        v120 = [entryDate compare:sessionStartDate7] == 1;

                        if (v120)
                        {
                          v121 = objc_alloc(MEMORY[0x277CCA970]);
                          sessionStartDate8 = [v26 sessionStartDate];
                          entryDate2 = [v117 entryDate];
                          v124 = [v121 initWithStartDate:sessionStartDate8 endDate:entryDate2];

                          [v124 duration];
                          v126 = v125;
                          v127 = [destination eta];
                          [v127 expectedTravelTime];
                          v129 = v128;
                          v130 = [destination eta];
                          [v130 additionalTravelTime];
                          v132 = v131;

                          if ((v155 & (v126 / (v129 + v132) >= v74)) == 0)
                          {
                            v74 = v126 / (v129 + v132);
                          }

                          v155 = 1;
                          goto LABEL_63;
                        }
                      }

                      v114 = [visits2 countByEnumeratingWithState:&v176 objects:v214 count:16];
                      if (v114)
                      {
                        continue;
                      }

                      break;
                    }
                  }

LABEL_63:
                  if (v73 == -1.0)
                  {
                    v133 = -1.0;
                  }

                  else
                  {
                    v133 = v73 / 60.0;
                  }

                  if (v99 == -1.0)
                  {
                    v134 = -1.0;
                  }

                  else
                  {
                    v134 = v99 / 60.0;
                  }

                  v135 = objc_opt_new();
                  v136 = [MEMORY[0x277CCABB0] numberWithBool:v155];
                  [v135 setObject:v136 forKeyedSubscript:v154];

                  v137 = [MEMORY[0x277CCABB0] numberWithDouble:v74];
                  [v135 setObject:v137 forKeyedSubscript:v153];

                  v138 = [MEMORY[0x277CCABB0] numberWithDouble:v134];
                  [v135 setObject:v138 forKeyedSubscript:v152];

                  v139 = [MEMORY[0x277CCABB0] numberWithDouble:v133];
                  [v135 setObject:v139 forKeyedSubscript:v151];

                  v140 = [MEMORY[0x277CCABB0] numberWithBool:*(*&buf[8] + 24)];
                  [v135 setObject:v140 forKeyedSubscript:v150];

                  v141 = [MEMORY[0x277CCABB0] numberWithBool:*(v218 + 24)];
                  [v135 setObject:v141 forKeyedSubscript:v149];

                  v142 = objc_alloc(MEMORY[0x277CCACA8]);
                  v143 = [v142 initWithCString:RTAnalyticsEventSafetyMonitorInitiatorExitAndArrivalMetrics encoding:1];
                  log_analytics_submission(v143, v135);
                  v143 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.%@", v143];
                  AnalyticsSendEvent();
                }
              }

              v58 = v158;
            }

            _Block_object_dispose(&v217, 8);
            _Block_object_dispose(buf, 8);
          }
        }

        objc_autoreleasePoolPop(context);
      }

      v171 = [obj countByEnumeratingWithState:&v194 objects:v223 count:16];
    }

    while (v171);
  }

  _Block_object_dispose(&v202, 8);
  _Block_object_dispose(&v208, 8);
}

void __57__SMSessionMetricManager__gatherSessionDestinationStats___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v6 = a3;
  if (!v6)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
  v9 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

void __57__SMSessionMetricManager__gatherSessionDestinationStats___block_invoke_681(uint64_t a1, void *a2, uint64_t a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [v5 count];
  if (!a3 && v6)
  {
    v7 = [v5 firstObject];
    v8 = [v7 activeDeviceIdentifier];
    *(*(*(a1 + 56) + 8) + 24) = [v8 isEqual:*(a1 + 32)];

    v9 = [v5 lastObject];
    v10 = [v9 activeDeviceIdentifier];
    *(*(*(a1 + 64) + 8) + 24) = [v10 isEqual:*(a1 + 32)];
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = [v5 count];
      v13 = [*(a1 + 40) sessionID];
      v14 = *(*(*(a1 + 56) + 8) + 24);
      v15 = *(*(*(a1 + 64) + 8) + 24);
      v16 = 136447234;
      v17 = "[SMSessionMetricManager _gatherSessionDestinationStats:]_block_invoke";
      v18 = 2048;
      v19 = v12;
      v20 = 2112;
      v21 = v13;
      v22 = 1024;
      v23 = v14;
      v24 = 1024;
      v25 = v15;
      _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_INFO, "%{public}s, found %lu states for %@, wasActiveAtStart %{Bool}d, wasActiveAtEnd %{Bool}d", &v16, 0x2Cu);
    }
  }

  dispatch_semaphore_signal(*(a1 + 48));
}

- (void)_onDailyMetricsNotification:(id)notification
{
  v180[1] = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = NSStringFromSelector(a2);
      *buf = 138412546;
      *&buf[4] = v5;
      *&buf[12] = 2112;
      *&buf[14] = notificationCopy;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%@, received notification, %@", buf, 0x16u);
    }
  }

  v119 = [MEMORY[0x277CBEAA8] now];
  v114 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:v119 sinceDate:-86400.0];
  v113 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:v119 sinceDate:-604800.0];
  v112 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:v119 sinceDate:-2419200.0];
  v110 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:v119 sinceDate:-4838400.0];
  v167 = 0;
  v168 = &v167;
  v169 = 0x2020000000;
  v170 = 0;
  v163 = 0;
  v164 = &v163;
  v165 = 0x2020000000;
  v166 = 0;
  v159 = 0;
  v160 = &v159;
  v161 = 0x2020000000;
  v162 = 0;
  v155 = 0;
  v156 = &v155;
  v157 = 0x2020000000;
  v158 = 0;
  v151 = 0;
  v152 = &v151;
  v153 = 0x2020000000;
  v154 = 0;
  v147 = 0;
  v148 = &v147;
  v149 = 0x2020000000;
  v150 = 0;
  v143 = 0;
  v144 = &v143;
  v145 = 0x2020000000;
  v146 = 0;
  v139 = 0;
  v140 = &v139;
  v141 = 0x2020000000;
  v142 = 0;
  v109 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v114 endDate:v119];
  v108 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v113 endDate:v114];
  v106 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v112 endDate:v113];
  v105 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v110 endDate:v112];
  v6 = dispatch_semaphore_create(0);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v177 = __Block_byref_object_copy__144;
  v178 = __Block_byref_object_dispose__144;
  v179 = 0;
  sessionStore = [(SMSessionMetricManager *)self sessionStore];
  v134[0] = MEMORY[0x277D85DD0];
  v134[1] = 3221225472;
  v134[2] = __54__SMSessionMetricManager__onDailyMetricsNotification___block_invoke;
  v134[3] = &unk_2788CFE88;
  v136 = &v167;
  v137 = &v151;
  v138 = buf;
  v8 = v6;
  v135 = v8;
  [sessionStore fetchSessionCountWithDateInterval:v109 handler:v134];

  dsema = v8;
  v9 = [MEMORY[0x277CBEAA8] now];
  v10 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(dsema, v10))
  {
    v11 = [MEMORY[0x277CBEAA8] now];
    [v11 timeIntervalSinceDate:v9];
    v13 = v12;
    v14 = objc_opt_new();
    v15 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_121];
    callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
    v17 = [callStackSymbols filteredArrayUsingPredicate:v15];
    firstObject = [v17 firstObject];

    [v14 submitToCoreAnalytics:firstObject type:1 duration:v13];
    v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      *v171 = 0;
      _os_log_fault_impl(&dword_2304B3000, v19, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v171, 2u);
    }

    v20 = MEMORY[0x277CCA9B8];
    v180[0] = *MEMORY[0x277CCA450];
    *v171 = @"semaphore wait timeout";
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v171 forKeys:v180 count:1];
    v22 = [v20 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v21];

    if (v22)
    {
      v23 = v22;
    }
  }

  else
  {
    v22 = 0;
  }

  v24 = v22;
  v107 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:v119 sinceDate:-172800.0];
  v25 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v107 endDate:v114];
  [(SMSessionMetricManager *)self _gatherSessionDestinationStats:v25];
  v103 = v25;
  v26 = dispatch_semaphore_create(0);
  sessionStore2 = [(SMSessionMetricManager *)self sessionStore];
  v129[0] = MEMORY[0x277D85DD0];
  v129[1] = 3221225472;
  v129[2] = __54__SMSessionMetricManager__onDailyMetricsNotification___block_invoke_2;
  v129[3] = &unk_2788CFE88;
  v131 = &v163;
  v132 = &v147;
  v133 = buf;
  v28 = v26;
  v130 = v28;
  [sessionStore2 fetchSessionCountWithDateInterval:v108 handler:v129];

  v116 = v28;
  v29 = [MEMORY[0x277CBEAA8] now];
  v30 = dispatch_time(0, 3600000000000);
  v31 = v24;
  if (dispatch_semaphore_wait(v116, v30))
  {
    v32 = [MEMORY[0x277CBEAA8] now];
    [v32 timeIntervalSinceDate:v29];
    v34 = v33;
    v35 = objc_opt_new();
    v36 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_121];
    callStackSymbols2 = [MEMORY[0x277CCACC8] callStackSymbols];
    v38 = [callStackSymbols2 filteredArrayUsingPredicate:v36];
    firstObject2 = [v38 firstObject];

    [v35 submitToCoreAnalytics:firstObject2 type:1 duration:v34];
    v40 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
    {
      *v171 = 0;
      _os_log_fault_impl(&dword_2304B3000, v40, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v171, 2u);
    }

    v41 = MEMORY[0x277CCA9B8];
    v180[0] = *MEMORY[0x277CCA450];
    *v171 = @"semaphore wait timeout";
    v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v171 forKeys:v180 count:1];
    v43 = [v41 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v42];

    v31 = v24;
    if (v43)
    {
      v44 = v43;

      v31 = v43;
    }
  }

  v45 = v31;
  v46 = dispatch_semaphore_create(0);
  sessionStore3 = [(SMSessionMetricManager *)self sessionStore];
  v124[0] = MEMORY[0x277D85DD0];
  v124[1] = 3221225472;
  v124[2] = __54__SMSessionMetricManager__onDailyMetricsNotification___block_invoke_3;
  v124[3] = &unk_2788CFE88;
  v126 = &v159;
  v127 = &v143;
  v128 = buf;
  v48 = v46;
  v125 = v48;
  [sessionStore3 fetchSessionCountWithDateInterval:v106 handler:v124];

  v115 = v48;
  v49 = [MEMORY[0x277CBEAA8] now];
  v50 = dispatch_time(0, 3600000000000);
  v51 = v45;
  if (dispatch_semaphore_wait(v115, v50))
  {
    v52 = [MEMORY[0x277CBEAA8] now];
    [v52 timeIntervalSinceDate:v49];
    v54 = v53;
    v55 = objc_opt_new();
    v56 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_121];
    callStackSymbols3 = [MEMORY[0x277CCACC8] callStackSymbols];
    v58 = [callStackSymbols3 filteredArrayUsingPredicate:v56];
    firstObject3 = [v58 firstObject];

    [v55 submitToCoreAnalytics:firstObject3 type:1 duration:v54];
    v60 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v60, OS_LOG_TYPE_FAULT))
    {
      *v171 = 0;
      _os_log_fault_impl(&dword_2304B3000, v60, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v171, 2u);
    }

    v61 = MEMORY[0x277CCA9B8];
    v180[0] = *MEMORY[0x277CCA450];
    *v171 = @"semaphore wait timeout";
    v62 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v171 forKeys:v180 count:1];
    v63 = [v61 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v62];

    v51 = v45;
    if (v63)
    {
      v64 = v63;

      v51 = v63;
    }
  }

  v111 = v51;
  v65 = dispatch_semaphore_create(0);
  sessionStore4 = [(SMSessionMetricManager *)self sessionStore];
  v120[0] = MEMORY[0x277D85DD0];
  v120[1] = 3221225472;
  v120[2] = __54__SMSessionMetricManager__onDailyMetricsNotification___block_invoke_4;
  v120[3] = &unk_2788CFEB0;
  v122 = &v155;
  v123 = &v139;
  v67 = v65;
  v121 = v67;
  [sessionStore4 fetchSessionCountWithDateInterval:v105 handler:v120];

  v68 = (*&buf[8] + 40);
  v69 = *(*&buf[8] + 40);
  v70 = v67;
  v71 = [MEMORY[0x277CBEAA8] now];
  v72 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v70, v72))
  {
    v73 = [MEMORY[0x277CBEAA8] now];
    [v73 timeIntervalSinceDate:v71];
    v75 = v74;
    v76 = objc_opt_new();
    v77 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_121];
    callStackSymbols4 = [MEMORY[0x277CCACC8] callStackSymbols];
    v79 = [callStackSymbols4 filteredArrayUsingPredicate:v77];
    firstObject4 = [v79 firstObject];

    [v76 submitToCoreAnalytics:firstObject4 type:1 duration:v75];
    v81 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v81, OS_LOG_TYPE_FAULT))
    {
      *v171 = 0;
      _os_log_fault_impl(&dword_2304B3000, v81, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v171, 2u);
    }

    v82 = MEMORY[0x277CCA9B8];
    v180[0] = *MEMORY[0x277CCA450];
    *v171 = @"semaphore wait timeout";
    v83 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v171 forKeys:v180 count:1];
    v84 = [v82 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v83];

    if (v84)
    {
      v85 = v84;

      v69 = v84;
    }
  }

  objc_storeStrong(v68, v69);
  if (*(*&buf[8] + 40) | v111)
  {
    v86 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
    {
      v87 = *(*&buf[8] + 40);
      *v171 = 136315650;
      *&v171[4] = "[SMSessionMetricManager _onDailyMetricsNotification:]";
      v172 = 2112;
      v173 = v87;
      v174 = 2112;
      v175 = v111;
      _os_log_error_impl(&dword_2304B3000, v86, OS_LOG_TYPE_ERROR, "%s, encountered errors fetching for session count, fetchError, %@, fetchTimeoutError, %@", v171, 0x20u);
    }
  }

  else
  {
    v88 = v168[3] + v164[3];
    v164[3] = v88;
    v89 = v160[3] + v88;
    v160[3] = v89;
    v156[3] += v89;
    v90 = v152[3] + v148[3];
    v148[3] = v90;
    v91 = v144[3] + v90;
    v144[3] = v91;
    v140[3] += v91;
    v86 = objc_opt_new();
    v92 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v168[3]];
    [v86 setObject:v92 forKeyedSubscript:*MEMORY[0x277D4ADA8]];

    v93 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v164[3]];
    [v86 setObject:v93 forKeyedSubscript:*MEMORY[0x277D4AE18]];

    v94 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v160[3]];
    [v86 setObject:v94 forKeyedSubscript:*MEMORY[0x277D4AE08]];

    v95 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v156[3]];
    [v86 setObject:v95 forKeyedSubscript:*MEMORY[0x277D4ADA0]];

    v96 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v152[3]];
    [v86 setObject:v96 forKeyedSubscript:*MEMORY[0x277D4ADD0]];

    v97 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v148[3]];
    [v86 setObject:v97 forKeyedSubscript:*MEMORY[0x277D4ADE0]];

    v98 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v144[3]];
    [v86 setObject:v98 forKeyedSubscript:*MEMORY[0x277D4ADD8]];

    v99 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v140[3]];
    [v86 setObject:v99 forKeyedSubscript:*MEMORY[0x277D4ADC8]];

    v100 = objc_alloc(MEMORY[0x277CCACA8]);
    v101 = [v100 initWithCString:RTAnalyticsEventSafetyMonitorInitiatorSessionCount encoding:1];
    log_analytics_submission(v101, v86);
    v101 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.%@", v101];
    AnalyticsSendEvent();
  }

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(&v139, 8);
  _Block_object_dispose(&v143, 8);
  _Block_object_dispose(&v147, 8);
  _Block_object_dispose(&v151, 8);
  _Block_object_dispose(&v155, 8);
  _Block_object_dispose(&v159, 8);
  _Block_object_dispose(&v163, 8);
  _Block_object_dispose(&v167, 8);
}

void __54__SMSessionMetricManager__onDailyMetricsNotification___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  if (!v7)
  {
    *(*(*(a1 + 40) + 8) + 24) = a2;
    *(*(*(a1 + 48) + 8) + 24) = a3;
  }

  v8 = *(*(a1 + 56) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
  v10 = v7;

  dispatch_semaphore_signal(*(a1 + 32));
}

void __54__SMSessionMetricManager__onDailyMetricsNotification___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  if (!v7)
  {
    *(*(*(a1 + 40) + 8) + 24) = a2;
    *(*(*(a1 + 48) + 8) + 24) = a3;
  }

  v8 = *(*(a1 + 56) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
  v10 = v7;

  dispatch_semaphore_signal(*(a1 + 32));
}

void __54__SMSessionMetricManager__onDailyMetricsNotification___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  if (!v7)
  {
    *(*(*(a1 + 40) + 8) + 24) = a2;
    *(*(*(a1 + 48) + 8) + 24) = a3;
  }

  v8 = *(*(a1 + 56) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
  v10 = v7;

  dispatch_semaphore_signal(*(a1 + 32));
}

intptr_t __54__SMSessionMetricManager__onDailyMetricsNotification___block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    *(*(*(a1 + 40) + 8) + 24) = a2;
    *(*(*(a1 + 48) + 8) + 24) = a3;
  }

  return dispatch_semaphore_signal(*(a1 + 32));
}

- (void)onSessionStartedWithState:(id)state
{
  stateCopy = state;
  queue = [(SMSessionMetricManager *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__SMSessionMetricManager_onSessionStartedWithState___block_invoke;
  v7[3] = &unk_2788C4A70;
  v8 = stateCopy;
  selfCopy = self;
  v6 = stateCopy;
  dispatch_async(queue, v7);
}

void __52__SMSessionMetricManager_onSessionStartedWithState___block_invoke(uint64_t a1)
{
  v112[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [v2 configuration];
    v4 = [v3 sessionStartDate];
    [*(a1 + 40) setSessionStartDate:v4];

    v5 = [*(a1 + 32) configuration];
    [*(a1 + 40) setSessionType:{objc_msgSend(v5, "sessionType")}];

    v6 = [*(a1 + 32) configuration];
    v7 = [v6 destination];
    [*(a1 + 40) setSessionDestinationType:{objc_msgSend(v7, "destinationType")}];

    v8 = [*(a1 + 32) activeDeviceIdentifier];
    v9 = [*(a1 + 40) currentDeviceIdentifier];
    [*(a1 + 40) setWasActiveAtStart:{objc_msgSend(v8, "isEqual:", v9)}];

    v10 = [*(a1 + 32) configuration];
    v11 = [v10 conversation];
    v12 = [v11 receiverHandles];
    [*(a1 + 40) setNumRecipients:{objc_msgSend(v12, "count")}];

    v13 = [*(a1 + 32) configuration];
    LODWORD(v11) = [v13 sessionType] == 2;

    v14 = [*(a1 + 32) configuration];
    v15 = v14;
    if (v11)
    {
      v16 = [v14 destination];
      v17 = [v16 eta];
      [v17 expectedTravelTime];
      [*(a1 + 40) setInitialDestinationExpectedTravelTime:?];

      v18 = [*(a1 + 32) configuration];
      v19 = [v18 destination];
      v20 = [v19 eta];
      [*(a1 + 40) setModeOfTransportation:{objc_msgSend(v20, "transportType")}];

      v21 = [*(a1 + 32) location];

      if (!v21)
      {
LABEL_30:
        v68 = [*(a1 + 32) configuration];
        v69 = [v68 destination];
        v70 = [v69 eta];
        if (v70)
        {
          v71 = [*(a1 + 32) configuration];
          v72 = [v71 destination];
          v73 = [v72 eta];
          [v73 expectedTravelTime];
          v75 = v74 > 0.0;

          if (v75)
          {
            v76 = [*(a1 + 32) configuration];
            v77 = [v76 destination];
            v78 = [v77 eta];
            [v78 expectedTravelTime];
            [*(a1 + 40) setOriginalNominalTravelTime:?];

            v79 = [*(a1 + 32) configuration];
            v80 = [v79 destination];
            v81 = [v80 eta];
            [v81 additionalTravelTime];
            v83 = v82 > 0.0;

            if (v83)
            {
              v84 = (a1 + 40);
              [*(a1 + 40) originalNominalTravelTime];
              v86 = v85;
              v87 = [*(a1 + 32) configuration];
              v88 = [v87 destination];
              v89 = [v88 eta];
              [v89 additionalTravelTime];
              [*v84 setOriginalNominalTravelTime:v86 + v90];
            }
          }
        }

        else
        {
        }

        return;
      }

      v22 = [*(a1 + 32) configuration];
      v23 = [v22 destination];
      v24 = [v23 location];

      if (v24)
      {
        v25 = [*(a1 + 32) location];
        v26 = [*(a1 + 32) configuration];
        v27 = [v26 destination];
        v28 = [v27 clLocation];
        [v25 distanceFromLocation:v28];
        [*(a1 + 40) setInitialDistance:?];
      }

      v29 = objc_alloc(MEMORY[0x277D01160]);
      v30 = [*(a1 + 32) location];
      v31 = [v29 initWithCLLocation:v30];

      v32 = dispatch_semaphore_create(0);
      *buf = 0;
      v104 = buf;
      v105 = 0x3032000000;
      v106 = __Block_byref_object_copy__144;
      v107 = __Block_byref_object_dispose__144;
      v108 = 0;
      v97 = 0;
      v98 = &v97;
      v99 = 0x3032000000;
      v100 = __Block_byref_object_copy__144;
      v101 = __Block_byref_object_dispose__144;
      v102 = 0;
      v33 = [*(a1 + 40) learnedLocationManager];
      v93[0] = MEMORY[0x277D85DD0];
      v93[1] = 3221225472;
      v93[2] = __52__SMSessionMetricManager_onSessionStartedWithState___block_invoke_689;
      v93[3] = &unk_2788C4B58;
      v95 = buf;
      v96 = &v97;
      v34 = v32;
      v94 = v34;
      [v33 fetchLocationOfInterestAtLocation:v31 handler:v93];

      v35 = v34;
      v36 = [MEMORY[0x277CBEAA8] now];
      v37 = dispatch_time(0, 3600000000000);
      if (dispatch_semaphore_wait(v35, v37))
      {
        v38 = [MEMORY[0x277CBEAA8] now];
        [v38 timeIntervalSinceDate:v36];
        v40 = v39;
        v41 = objc_opt_new();
        v42 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_121];
        v43 = [MEMORY[0x277CCACC8] callStackSymbols];
        v44 = [v43 filteredArrayUsingPredicate:v42];
        v45 = [v44 firstObject];

        [v41 submitToCoreAnalytics:v45 type:1 duration:v40];
        v46 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v46, OS_LOG_TYPE_FAULT))
        {
          *v109 = 0;
          _os_log_fault_impl(&dword_2304B3000, v46, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v109, 2u);
        }

        v47 = MEMORY[0x277CCA9B8];
        v112[0] = *MEMORY[0x277CCA450];
        *v109 = @"semaphore wait timeout";
        v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v109 forKeys:v112 count:1];
        v49 = [v47 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v48];

        if (v49)
        {
          v50 = v49;

          v51 = 0;
LABEL_20:

          v62 = v49;
          if ((v51 & 1) == 0)
          {
            objc_storeStrong(v98 + 5, v49);
          }

          if (v98[5])
          {
            v63 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
            if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
            {
              v91 = v98[5];
              *v109 = 136315394;
              *&v109[4] = "[SMSessionMetricManager onSessionStartedWithState:]_block_invoke_2";
              v110 = 2112;
              v111 = v91;
              _os_log_error_impl(&dword_2304B3000, v63, OS_LOG_TYPE_ERROR, "%s, attempt to fetch LOI at location failed with error, %@", v109, 0x16u);
            }
          }

          v64 = *(v104 + 5);
          if (v64)
          {
            v65 = [v64 place];
            v66 = v65 == 0;

            if (!v66)
            {
              v67 = [*(v104 + 5) place];
              [*(a1 + 40) setOriginatingLocationTypeEnum:{objc_msgSend(v67, "type")}];
            }
          }

          _Block_object_dispose(&v97, 8);
          _Block_object_dispose(buf, 8);

          goto LABEL_30;
        }
      }

      else
      {
        v49 = 0;
      }

      v51 = 1;
      goto LABEL_20;
    }

    v53 = [v14 sessionType];

    if (v53 == 4)
    {
      v54 = [*(a1 + 32) configuration];
      [v54 sessionWorkoutType];
      v55 = _HKWorkoutActivityNameForActivityType();
      [*(a1 + 40) setWorkoutActivityTypeString:v55];

      v56 = MEMORY[0x277CCDBE8];
      v57 = [*(a1 + 32) configuration];
      v58 = [v57 sessionWorkoutType];
      v59 = [MEMORY[0x277CBEAA8] now];
      v60 = [MEMORY[0x277CBEAA8] now];
      v92 = [v56 workoutWithActivityType:v58 startDate:v59 endDate:v60];

      v61 = [MEMORY[0x277D095E0] effectiveActivityTypeWithWorkout:v92];
      [*(a1 + 40) setIsWorkoutAlwaysOn:{objc_msgSend(v61, "supportsSafetyCheckInPrompt")}];
    }
  }

  else
  {
    v52 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v52, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: state", buf, 2u);
    }
  }
}

void __52__SMSessionMetricManager_onSessionStartedWithState___block_invoke_689(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)onSessionChangedWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  queue = [(SMSessionMetricManager *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__SMSessionMetricManager_onSessionChangedWithConfiguration___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = configurationCopy;
  v6 = configurationCopy;
  dispatch_async(queue, v7);
}

void __60__SMSessionMetricManager_onSessionChangedWithConfiguration___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setNumExtensions:{objc_msgSend(*(a1 + 32), "numExtensions") + 1}];
  v3 = [*(a1 + 40) conversation];
  v2 = [v3 receiverHandles];
  [*(a1 + 32) setNumRecipients:{objc_msgSend(v2, "count")}];
}

- (void)onSessionTerminationResult:(BOOL)result reason:(unint64_t)reason error:(id)error
{
  errorCopy = error;
  queue = [(SMSessionMetricManager *)self queue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __66__SMSessionMetricManager_onSessionTerminationResult_reason_error___block_invoke;
  v11[3] = &unk_2788CFED8;
  resultCopy = result;
  v12 = errorCopy;
  reasonCopy = reason;
  v11[4] = self;
  v10 = errorCopy;
  dispatch_async(queue, v11);
}

uint64_t __66__SMSessionMetricManager_onSessionTerminationResult_reason_error___block_invoke(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    v2 = *(a1 + 48);
    if (v2 == 1)
    {
      [*(a1 + 32) setDidArriveSafely:1];
    }

    else if (v2 == 5 || v2 == 2)
    {
      [*(a1 + 32) setUserEndedSession:1];
    }
  }

  v4 = *(a1 + 56);
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = *(a1 + 32);

  return [v7 _submitTerminationMetricsWithSuccess:v4 reason:v5 error:v6];
}

- (void)onBecomingActiveDevice:(id)device
{
  queue = [(SMSessionMetricManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__SMSessionMetricManager_onBecomingActiveDevice___block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __49__SMSessionMetricManager_onBecomingActiveDevice___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setDidHandoffOccur:1];
  v2 = *(a1 + 32);
  v3 = [v2 numTakeover] + 1;

  return [v2 setNumTakeover:v3];
}

- (void)onBecomingNonActiveDevice:(id)device
{
  queue = [(SMSessionMetricManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__SMSessionMetricManager_onBecomingNonActiveDevice___block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __52__SMSessionMetricManager_onBecomingNonActiveDevice___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setDidHandoffOccur:1];
  v2 = *(a1 + 32);
  v3 = [v2 numHandoff] + 1;

  return [v2 setNumHandoff:v3];
}

- (void)onSessionEndedForActiveDevice:(BOOL)device
{
  queue = [(SMSessionMetricManager *)self queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56__SMSessionMetricManager_onSessionEndedForActiveDevice___block_invoke;
  v6[3] = &unk_2788C5070;
  v6[4] = self;
  deviceCopy = device;
  dispatch_async(queue, v6);
}

void __56__SMSessionMetricManager_onSessionEndedForActiveDevice___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setWasActiveAtEnd:*(a1 + 40)];
  v2 = [MEMORY[0x277CBEAA8] date];
  [*(a1 + 32) setSessionEndDate:v2];
}

- (void)onLPMSeparation
{
  queue = [(SMSessionMetricManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__SMSessionMetricManager_onLPMSeparation__block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __41__SMSessionMetricManager_onLPMSeparation__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 numLPMSeparation] + 1;

  return [v1 setNumLPMSeparation:v2];
}

- (void)onUnsupportedDeviceSeparation
{
  queue = [(SMSessionMetricManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__SMSessionMetricManager_onUnsupportedDeviceSeparation__block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __55__SMSessionMetricManager_onUnsupportedDeviceSeparation__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 numUnsupportedDeviceSeparation] + 1;

  return [v1 setNumUnsupportedDeviceSeparation:v2];
}

- (void)onUserDisabledConnectivity
{
  queue = [(SMSessionMetricManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__SMSessionMetricManager_onUserDisabledConnectivity__block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __52__SMSessionMetricManager_onUserDisabledConnectivity__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 numUserDisabledConnectivity] + 1;

  return [v1 setNumUserDisabledConnectivity:v2];
}

- (void)cacheMostRecentLocationDistance:(double)distance
{
  queue = [(SMSessionMetricManager *)self queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __58__SMSessionMetricManager_cacheMostRecentLocationDistance___block_invoke;
  v6[3] = &unk_2788C52E8;
  v6[4] = self;
  *&v6[5] = distance;
  dispatch_async(queue, v6);
}

- (void)onCrowFliesETAUpdate:(double)update
{
  queue = [(SMSessionMetricManager *)self queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__SMSessionMetricManager_onCrowFliesETAUpdate___block_invoke;
  v6[3] = &unk_2788C52E8;
  v6[4] = self;
  *&v6[5] = update;
  dispatch_async(queue, v6);
}

uint64_t __47__SMSessionMetricManager_onCrowFliesETAUpdate___block_invoke(uint64_t a1)
{
  [*(a1 + 32) maxCrowFliesScaleFactor];
  if (v2 >= 0.0)
  {
    v5 = *(a1 + 40);
    [*(a1 + 32) previousCrowFliesETA];
    v7 = v5 / v6;
    [*(a1 + 32) maxCrowFliesScaleFactor];
    if (v7 >= v4)
    {
      v4 = v7;
    }

    v3 = *(a1 + 32);
  }

  else
  {
    v3 = *(a1 + 32);
    v4 = 1.0;
  }

  [v3 setMaxCrowFliesScaleFactor:v4];
  v8 = *(a1 + 40);
  v9 = *(a1 + 32);

  return [v9 setPreviousCrowFliesETA:v8];
}

- (void)onMapsETAUpdate:(double)update
{
  queue = [(SMSessionMetricManager *)self queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__SMSessionMetricManager_onMapsETAUpdate___block_invoke;
  v6[3] = &unk_2788C52E8;
  v6[4] = self;
  *&v6[5] = update;
  dispatch_async(queue, v6);
}

uint64_t __42__SMSessionMetricManager_onMapsETAUpdate___block_invoke(uint64_t a1)
{
  [*(a1 + 32) maxMapsETAScaleFactor];
  if (v2 >= 0.0)
  {
    v5 = *(a1 + 40);
    [*(a1 + 32) previousMapsExpectedETA];
    v7 = v5 / v6;
    [*(a1 + 32) maxMapsETAScaleFactor];
    if (v7 >= v4)
    {
      v4 = v7;
    }

    v3 = *(a1 + 32);
  }

  else
  {
    v3 = *(a1 + 32);
    v4 = 1.0;
  }

  [v3 setMaxMapsETAScaleFactor:v4];
  v8 = *(a1 + 40);
  v9 = *(a1 + 32);

  return [v9 setPreviousMapsExpectedETA:v8];
}

- (void)onShouldUpdateETAUpperBoundWithETAUpdateState:(id)state
{
  stateCopy = state;
  queue = [(SMSessionMetricManager *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __72__SMSessionMetricManager_onShouldUpdateETAUpperBoundWithETAUpdateState___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = stateCopy;
  v6 = stateCopy;
  dispatch_async(queue, v7);
}

void __72__SMSessionMetricManager_onShouldUpdateETAUpperBoundWithETAUpdateState___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) etaUpdateStateQueue];
  v3 = [v2 enqueueObject:*(a1 + 40)];

  v4 = [*(a1 + 32) etaUpdateStateQueue];

  if (v4)
  {
    v5 = MEMORY[0x277CCAAB0];
    v6 = [*(a1 + 32) etaUpdateStateQueue];
    v12 = 0;
    v7 = [v5 archivedDataWithRootObject:v6 requiringSecureCoding:0 error:&v12];
    v8 = v12;

    if (v8)
    {
      v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v11 = [v8 description];
        *buf = 136315394;
        v14 = "[SMSessionMetricManager onShouldUpdateETAUpperBoundWithETAUpdateState:]_block_invoke";
        v15 = 2112;
        v16 = v11;
        _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "%s, error archiving etaUpdateStateQueue, error, %@", buf, 0x16u);
      }
    }

    v10 = [*(a1 + 32) defaultsManager];
    [v10 setObject:v7 forKey:@"RTDefaultsSessionMetricManagerEtaUpdateStateQueueKey"];
  }
}

- (void)updateClosestTimeIntervalToExceedingETAWithTimeInterval:(double)interval
{
  queue = [(SMSessionMetricManager *)self queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __82__SMSessionMetricManager_updateClosestTimeIntervalToExceedingETAWithTimeInterval___block_invoke;
  v6[3] = &unk_2788C52E8;
  *&v6[5] = interval;
  v6[4] = self;
  dispatch_async(queue, v6);
}

uint64_t __82__SMSessionMetricManager_updateClosestTimeIntervalToExceedingETAWithTimeInterval___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  result = [*(a1 + 32) closestTimeIntervalToExceedingETA];
  if (v2 < v4)
  {
    result = [*(a1 + 32) didDestinationAnomalyTrigger];
    if ((result & 1) == 0)
    {
      [*(a1 + 32) setClosestTimeIntervalToExceedingETA:*(a1 + 40)];
      v5 = *(a1 + 32);

      return [v5 _updateETASubmissionStates];
    }
  }

  return result;
}

- (void)onDeclareAnomalyForTriggerCategory:(unint64_t)category
{
  queue = [(SMSessionMetricManager *)self queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __61__SMSessionMetricManager_onDeclareAnomalyForTriggerCategory___block_invoke;
  v6[3] = &unk_2788C52E8;
  v6[4] = self;
  v6[5] = category;
  dispatch_async(queue, v6);
}

uint64_t __61__SMSessionMetricManager_onDeclareAnomalyForTriggerCategory___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setNumAnomalyPrompt:{objc_msgSend(*(a1 + 32), "numAnomalyPrompt") + 1}];
  v2 = [*(a1 + 32) defaultsManager];
  v3 = [v2 objectForKey:@"RTDefaultsSessionManagerHysteresisEventTypeKey"];
  if (v3)
  {
    v4 = v3;
    v5 = [*(a1 + 32) defaultsManager];
    v6 = [v5 objectForKey:@"RTDefaultsSessionManagerHysteresisEventTypeKey"];
    v7 = [v6 unsignedIntegerValue];

    if (v7)
    {
      [*(a1 + 32) setNumAnomalyPromptDuringHysteresis:{objc_msgSend(*(a1 + 32), "numAnomalyPromptDuringHysteresis") + 1}];
    }
  }

  else
  {
  }

  if (([*(a1 + 32) didTriggerOccur] & 1) == 0)
  {
    if ([MEMORY[0x277D4ABC8] isValidAnomaly:*(a1 + 40)])
    {
      [*(a1 + 32) setFirstAnomalyTriggerCategoryEnum:*(a1 + 40)];
      if ([*(a1 + 32) sessionType] == 2)
      {
        [*(a1 + 32) initialDistance];
        if (v8 > 0.0)
        {
          [*(a1 + 32) mostRecentLocationDistance];
          if (v9 > 0.0)
          {
            [*(a1 + 32) mostRecentLocationDistance];
            v11 = v10;
            [*(a1 + 32) initialDistance];
            [*(a1 + 32) setRatioOfFirstAnomalyDistanceToTotalDistance:v11 / v12];
          }
        }
      }
    }
  }

  v13 = *(a1 + 40);
  if ((v13 - 10) >= 5)
  {
    if (v13 == 3)
    {
      v17 = *(a1 + 32);

      return [v17 setNoProgressTriggered:1];
    }

    else if (v13 == 4)
    {
      v16 = *(a1 + 32);

      return [v16 setRouteDeviationTriggered:1];
    }

    else
    {
      v18 = *(a1 + 32);

      return [v18 setDidDestinationAnomalyTrigger:1];
    }
  }

  else
  {
    v14 = *(a1 + 32);

    return [v14 setSosTriggered:1];
  }
}

- (void)onWorkoutEnded
{
  queue = [(SMSessionMetricManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__SMSessionMetricManager_onWorkoutEnded__block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)onWorkoutPaused
{
  queue = [(SMSessionMetricManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__SMSessionMetricManager_onWorkoutPaused__block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)onUserActionWithRemoteCommand:(int64_t)command remoteCommandType:(int64_t)type error:(int64_t)error errorDomain:(id)domain
{
  domainCopy = domain;
  queue = [(SMSessionMetricManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __92__SMSessionMetricManager_onUserActionWithRemoteCommand_remoteCommandType_error_errorDomain___block_invoke;
  block[3] = &unk_2788CFF00;
  commandCopy = command;
  typeCopy = type;
  errorCopy = error;
  block[4] = self;
  v14 = domainCopy;
  v12 = domainCopy;
  dispatch_async(queue, block);
}

void __92__SMSessionMetricManager_onUserActionWithRemoteCommand_remoteCommandType_error_errorDomain___block_invoke(uint64_t a1)
{
  v13 = objc_opt_new();
  v2 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 48)];
  [v13 setObject:v2 forKeyedSubscript:*MEMORY[0x277D4AD58]];

  v3 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 56)];
  [v13 setObject:v3 forKeyedSubscript:*MEMORY[0x277D4AD60]];

  v4 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 32), "_isCellularActivated")}];
  [v13 setObject:v4 forKeyedSubscript:*MEMORY[0x277D4AD78]];

  v5 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 32), "_isStandalone")}];
  [v13 setObject:v5 forKeyedSubscript:*MEMORY[0x277D4AD80]];

  v6 = *MEMORY[0x277D4AD88];
  if (*(a1 + 64))
  {
    [v13 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:v6];
    v7 = [MEMORY[0x277CCABB0] numberWithLong:*(a1 + 64)];
    [v13 setObject:v7 forKeyedSubscript:*MEMORY[0x277D4AD68]];

    v8 = *(a1 + 40);
    v9 = *MEMORY[0x277D4AD70];
  }

  else
  {
    [v13 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v6];
    [v13 setObject:&unk_28459F360 forKeyedSubscript:*MEMORY[0x277D4AD68]];
    v9 = *MEMORY[0x277D4AD70];
    v8 = @"Unknown";
  }

  [v13 setObject:v8 forKeyedSubscript:v9];
  v10 = objc_alloc(MEMORY[0x277CCACA8]);
  v11 = [v10 initWithCString:RTAnalyticsEventSafetyMonitorRemoteUserActionsMetrics encoding:1];
  log_analytics_submission(v11, v13);
  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.%@", v11];
  AnalyticsSendEvent();
}

- (BOOL)_isCellularActivated
{
  v43[1] = *MEMORY[0x277D85DE8];
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  v2 = dispatch_semaphore_create(0);
  v3 = dispatch_get_global_queue(2, 0);
  v28 = MEMORY[0x277D85DD0];
  v29 = 3221225472;
  v30 = __46__SMSessionMetricManager__isCellularActivated__block_invoke;
  v31 = &unk_2788CCCB0;
  v33 = &v34;
  v4 = v2;
  v32 = v4;
  [SMInitiatorEligibility checkCellularEnabledWithQueue:v3 handler:&v28];

  v5 = v4;
  v6 = [MEMORY[0x277CBEAA8] now];
  v7 = dispatch_time(0, 60000000000);
  if (dispatch_semaphore_wait(v5, v7))
  {
    v8 = [MEMORY[0x277CBEAA8] now];
    [v8 timeIntervalSinceDate:v6];
    v10 = v9;
    v11 = objc_opt_new();
    v12 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_121];
    callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
    v14 = [callStackSymbols filteredArrayUsingPredicate:v12];
    firstObject = [v14 firstObject];

    [v11 submitToCoreAnalytics:firstObject type:1 duration:v10];
    v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v16, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v17 = MEMORY[0x277CCA9B8];
    v43[0] = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v43 count:1];
    v19 = [v17 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v18];

    if (v19)
    {
      v20 = v19;
    }
  }

  else
  {
    v19 = 0;
  }

  v21 = v19;
  if (v21)
  {
    v22 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      v27 = [v21 description];
      *buf = 138412802;
      *&buf[4] = v26;
      v39 = 2080;
      v40 = "[SMSessionMetricManager _isCellularActivated]";
      v41 = 2112;
      v42 = v27;
      _os_log_error_impl(&dword_2304B3000, v22, OS_LOG_TYPE_ERROR, "%@,%s,sema error,%@", buf, 0x20u);
    }
  }

  v23 = *(v35 + 24);

  _Block_object_dispose(&v34, 8);
  return v23 & 1;
}

intptr_t __46__SMSessionMetricManager__isCellularActivated__block_invoke(uint64_t a1, char a2, uint64_t a3)
{
  if (!a3)
  {
    *(*(*(a1 + 40) + 8) + 24) = a2;
  }

  return dispatch_semaphore_signal(*(a1 + 32));
}

- (BOOL)_isStandalone
{
  v3 = objc_alloc(MEMORY[0x277D4AAB0]);
  queue = [(SMSessionMetricManager *)self queue];
  v5 = [v3 initWithQueue:queue];

  LOBYTE(queue) = [v5 isEffectivePairedDeviceNearby];
  return queue ^ 1;
}

- (void)setDidTriggerOccur:(BOOL)occur
{
  occurCopy = occur;
  self->_didTriggerOccur = occur;
  defaultsManager = [(SMSessionMetricManager *)self defaultsManager];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:occurCopy];
  [defaultsManager setObject:v4 forKey:@"RTDefaultsSessionMetricManagerDidTriggerOccurKey"];
}

- (void)initialDistance:(double)distance
{
  self->_initialDistance = distance;
  defaultsManager = [(SMSessionMetricManager *)self defaultsManager];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:distance];
  [defaultsManager setObject:v4 forKey:@"RTDefaultsSessionMetricManagerInitialDistanceKey"];
}

- (void)setSessionDestinationType:(unint64_t)type
{
  self->_sessionDestinationType = type;
  defaultsManager = [(SMSessionMetricManager *)self defaultsManager];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
  [defaultsManager setObject:v4 forKey:@"RTDefaultsSessionMetricManagerDestinationLocationTypeEnumKey"];
}

- (void)setRatioOfFirstAnomalyDistanceToTotalDistance:(double)distance
{
  self->_ratioOfFirstAnomalyDistanceToTotalDistance = distance;
  defaultsManager = [(SMSessionMetricManager *)self defaultsManager];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:distance];
  [defaultsManager setObject:v4 forKey:@"RTDefaultsSessionMetricManagerRatioOfFirstAnomalyDistanceToTotalDistanceKey"];
}

- (void)setMostRecentLocationDistance:(double)distance
{
  self->_mostRecentLocationDistance = distance;
  defaultsManager = [(SMSessionMetricManager *)self defaultsManager];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:distance];
  [defaultsManager setObject:v4 forKey:@"RTDefaultsSessionMetricManagerMostRecentLocationDistanceKey"];
}

- (void)setOriginalNominalTravelTime:(double)time
{
  self->_originalNominalTravelTime = time;
  defaultsManager = [(SMSessionMetricManager *)self defaultsManager];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:time];
  [defaultsManager setObject:v4 forKey:@"RTDefaultsSessionMetricManagerOriginalNominalTravelTimeKey"];
}

- (void)setOriginatingLocationTypeEnum:(unint64_t)enum
{
  self->_originatingLocationTypeEnum = enum;
  defaultsManager = [(SMSessionMetricManager *)self defaultsManager];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:enum];
  [defaultsManager setObject:v4 forKey:@"RTDefaultsSessionMetricManagerOriginatingLocationTypeKey"];
}

- (void)setFirstAnomalyTriggerCategoryEnum:(unint64_t)enum
{
  self->_firstAnomalyTriggerCategoryEnum = enum;
  [(SMSessionMetricManager *)self setDidTriggerOccur:1];
  defaultsManager = [(SMSessionMetricManager *)self defaultsManager];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:enum];
  [defaultsManager setObject:v5 forKey:@"RTDefaultsSessionMetricManagerFirstAnomalyTriggerCategoryEnumKey"];
}

- (void)setNumExtensions:(int)extensions
{
  v3 = *&extensions;
  self->_numExtensions = extensions;
  defaultsManager = [(SMSessionMetricManager *)self defaultsManager];
  v4 = [MEMORY[0x277CCABB0] numberWithInt:v3];
  [defaultsManager setObject:v4 forKey:@"RTDefaultsSessionMetricManagerNumExtensionsKey"];
}

- (void)setSessionStartDate:(id)date
{
  dateCopy = date;
  v5 = [dateCopy copy];
  sessionStartDate = self->_sessionStartDate;
  self->_sessionStartDate = v5;

  defaultsManager = [(SMSessionMetricManager *)self defaultsManager];
  [defaultsManager setObject:dateCopy forKey:@"RTDefaultsSessionMetricManagerSessionStartDateKey"];
}

- (void)setSessionEndDate:(id)date
{
  dateCopy = date;
  v5 = [dateCopy copy];
  sessionEndDate = self->_sessionEndDate;
  self->_sessionEndDate = v5;

  defaultsManager = [(SMSessionMetricManager *)self defaultsManager];
  [defaultsManager setObject:dateCopy forKey:@"RTDefaultsSessionMetricManagerSessionEndDateKey"];

  [(SMSessionMetricManager *)self submitMetrics];
}

- (void)setInitialDestinationExpectedTravelTime:(double)time
{
  self->_initialDestinationExpectedTravelTime = time;
  defaultsManager = [(SMSessionMetricManager *)self defaultsManager];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:time];
  [defaultsManager setObject:v4 forKey:@"RTDefaultsSessionMetricManagerInitialDestinationExpectedTravelTimeKey"];
}

- (void)setMaxCrowFliesScaleFactor:(double)factor
{
  self->_maxCrowFliesScaleFactor = factor;
  defaultsManager = [(SMSessionMetricManager *)self defaultsManager];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:factor];
  [defaultsManager setObject:v4 forKey:@"RTDefaultsSessionMetricManagerMaxCrowFliesScaleFactorKey"];
}

- (void)setMaxMapsETAScaleFactor:(double)factor
{
  self->_maxMapsETAScaleFactor = factor;
  defaultsManager = [(SMSessionMetricManager *)self defaultsManager];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:factor];
  [defaultsManager setObject:v4 forKey:@"RTDefaultsSessionMetricManagerMaxMapsETAScaleFactorKey"];
}

- (void)setClosestTimeIntervalToExceedingETA:(double)a
{
  self->_closestTimeIntervalToExceedingETA = a;
  defaultsManager = [(SMSessionMetricManager *)self defaultsManager];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:a];
  [defaultsManager setObject:v4 forKey:@"RTDefaultsSessionMetricManagerClosestTimeIntervalToExceedingETAKey"];
}

- (void)setDidDestinationAnomalyTrigger:(BOOL)trigger
{
  triggerCopy = trigger;
  self->_didDestinationAnomalyTrigger = trigger;
  [(SMSessionMetricManager *)self setDidTriggerOccur:1];
  defaultsManager = [(SMSessionMetricManager *)self defaultsManager];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:triggerCopy];
  [defaultsManager setObject:v6 forKey:@"RTDefaultsSessionMetricManagerDidDestinationAnomalyTriggerKey"];

  if (triggerCopy)
  {

    [(SMSessionMetricManager *)self _updateETASubmissionStates];
  }
}

- (void)setNoProgressTriggered:(BOOL)triggered
{
  triggeredCopy = triggered;
  self->_noProgressTriggered = triggered;
  defaultsManager = [(SMSessionMetricManager *)self defaultsManager];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:triggeredCopy];
  [defaultsManager setObject:v6 forKey:@"RTDefaultsSessionMetricManagerNoProgressTriggeredKey"];

  [(SMSessionMetricManager *)self setDidDestinationAnomalyTrigger:1];
}

- (void)setRouteDeviationTriggered:(BOOL)triggered
{
  triggeredCopy = triggered;
  self->_routeDeviationTriggered = triggered;
  defaultsManager = [(SMSessionMetricManager *)self defaultsManager];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:triggeredCopy];
  [defaultsManager setObject:v6 forKey:@"RTDefaultsSessionMetricManagerRouteDeviationTriggeredKey"];

  [(SMSessionMetricManager *)self setDidDestinationAnomalyTrigger:1];
}

- (void)setDidArriveSafely:(BOOL)safely
{
  safelyCopy = safely;
  self->_didArriveSafely = safely;
  defaultsManager = [(SMSessionMetricManager *)self defaultsManager];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:safelyCopy];
  [defaultsManager setObject:v4 forKey:@"RTDefaultsSessionMetricManagerDidArriveSafelyKey"];
}

- (void)setSosTriggered:(BOOL)triggered
{
  triggeredCopy = triggered;
  self->_sosTriggered = triggered;
  defaultsManager = [(SMSessionMetricManager *)self defaultsManager];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:triggeredCopy];
  [defaultsManager setObject:v6 forKey:@"RTDefaultsSessionMetricManagerSosTriggeredKey"];

  [(SMSessionMetricManager *)self setDidTriggerOccur:1];
  if (triggeredCopy)
  {

    [(SMSessionMetricManager *)self _updateETASubmissionStates];
  }
}

- (void)setUserEndedSession:(BOOL)session
{
  sessionCopy = session;
  self->_userEndedSession = session;
  defaultsManager = [(SMSessionMetricManager *)self defaultsManager];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:sessionCopy];
  [defaultsManager setObject:v4 forKey:@"RTDefaultsSessionMetricManagerUserEndedSessionKey"];
}

- (void)setPreviousCrowFliesETA:(double)a
{
  self->_previousCrowFliesETA = a;
  defaultsManager = [(SMSessionMetricManager *)self defaultsManager];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:a];
  [defaultsManager setObject:v4 forKey:@"RTDefaultsSessionMetricManagerPreviousCrowFliesETAKey"];
}

- (void)setPreviousMapsExpectedETA:(double)a
{
  self->_previousMapsExpectedETA = a;
  defaultsManager = [(SMSessionMetricManager *)self defaultsManager];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:a];
  [defaultsManager setObject:v4 forKey:@"RTDefaultsSessionMetricManagerPreviousMapsExpectedETAKey"];
}

- (void)setEtaUpdateStateQueue:(id)queue
{
  v17 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  objc_storeStrong(&self->_etaUpdateStateQueue, queue);
  etaUpdateStateQueue = self->_etaUpdateStateQueue;
  if (etaUpdateStateQueue)
  {
    v12 = 0;
    v7 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:etaUpdateStateQueue requiringSecureCoding:0 error:&v12];
    v8 = v12;
    if (v8)
    {
      v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v11 = [v8 description];
        *buf = 136315394;
        v14 = "[SMSessionMetricManager setEtaUpdateStateQueue:]";
        v15 = 2112;
        v16 = v11;
        _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "%s, error archiving etaUpdateStateQueue, error, %@", buf, 0x16u);
      }
    }

    defaultsManager = [(SMSessionMetricManager *)self defaultsManager];
    [defaultsManager setObject:v7 forKey:@"RTDefaultsSessionMetricManagerEtaUpdateStateQueueKey"];
  }
}

- (void)setEtaUpdateSubmissionQueue:(id)queue
{
  v17 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  objc_storeStrong(&self->_etaUpdateSubmissionQueue, queue);
  etaUpdateSubmissionQueue = self->_etaUpdateSubmissionQueue;
  if (etaUpdateSubmissionQueue)
  {
    v12 = 0;
    v7 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:etaUpdateSubmissionQueue requiringSecureCoding:0 error:&v12];
    v8 = v12;
    if (v8)
    {
      v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v11 = [v8 description];
        *buf = 136315394;
        v14 = "[SMSessionMetricManager setEtaUpdateSubmissionQueue:]";
        v15 = 2112;
        v16 = v11;
        _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "%s, error archiving etaUpdateSubmissionQueue, error, %@", buf, 0x16u);
      }
    }

    defaultsManager = [(SMSessionMetricManager *)self defaultsManager];
    [defaultsManager setObject:v7 forKey:@"RTDefaultsSessionMetricManagerEtaUpdateSubmissionQueueKey"];
  }
}

- (void)setDidHandoffOccur:(BOOL)occur
{
  occurCopy = occur;
  self->_didHandoffOccur = occur;
  defaultsManager = [(SMSessionMetricManager *)self defaultsManager];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:occurCopy];
  [defaultsManager setObject:v4 forKey:@"RTDefaultsSessionMetricManagerDidHandoffOccurKey"];
}

- (void)setWasActiveAtStart:(BOOL)start
{
  startCopy = start;
  self->_wasActiveAtStart = start;
  defaultsManager = [(SMSessionMetricManager *)self defaultsManager];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:startCopy];
  [defaultsManager setObject:v4 forKey:@"RTDefaultsSessionMetricManagerWasActiveAtStartKey"];
}

- (void)setWasActiveAtEnd:(BOOL)end
{
  endCopy = end;
  self->_wasActiveAtEnd = end;
  defaultsManager = [(SMSessionMetricManager *)self defaultsManager];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:endCopy];
  [defaultsManager setObject:v4 forKey:@"RTDefaultsSessionMetricManagerWasActiveAtEndKey"];
}

- (void)setNumAnomalyPrompt:(unint64_t)prompt
{
  self->_numAnomalyPrompt = prompt;
  defaultsManager = [(SMSessionMetricManager *)self defaultsManager];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:prompt];
  [defaultsManager setObject:v4 forKey:@"RTDefaultsSessionMetricManagerNumAnomalyPromptKey"];
}

- (void)setNumAnomalyPromptDuringHysteresis:(unint64_t)hysteresis
{
  self->_numAnomalyPromptDuringHysteresis = hysteresis;
  defaultsManager = [(SMSessionMetricManager *)self defaultsManager];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:hysteresis];
  [defaultsManager setObject:v4 forKey:@"RTDefaultsSessionMetricManagerNumAnomalyPromptDuringHysteresisKey"];
}

- (void)setNumHandoff:(unint64_t)handoff
{
  self->_numHandoff = handoff;
  defaultsManager = [(SMSessionMetricManager *)self defaultsManager];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:handoff];
  [defaultsManager setObject:v4 forKey:@"RTDefaultsSessionMetricManagerNumHandoffKey"];
}

- (void)setNumLPMSeparation:(unint64_t)separation
{
  self->_numLPMSeparation = separation;
  defaultsManager = [(SMSessionMetricManager *)self defaultsManager];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:separation];
  [defaultsManager setObject:v4 forKey:@"RTDefaultsSessionMetricManagerNumLPMSeparationKey"];
}

- (void)setNumTakeover:(unint64_t)takeover
{
  self->_numTakeover = takeover;
  defaultsManager = [(SMSessionMetricManager *)self defaultsManager];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:takeover];
  [defaultsManager setObject:v4 forKey:@"RTDefaultsSessionMetricManagerNumTakeoverKey"];
}

- (void)setNumUnsupportedDeviceSeparation:(unint64_t)separation
{
  self->_numUnsupportedDeviceSeparation = separation;
  defaultsManager = [(SMSessionMetricManager *)self defaultsManager];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:separation];
  [defaultsManager setObject:v4 forKey:@"RTDefaultsSessionMetricManagerNumUnsupportedDeviceSeparationKey"];
}

- (void)setNumUserDisabledConnectivity:(unint64_t)connectivity
{
  self->_numUserDisabledConnectivity = connectivity;
  defaultsManager = [(SMSessionMetricManager *)self defaultsManager];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:connectivity];
  [defaultsManager setObject:v4 forKey:@"RTDefaultsSessionMetricManagerNumUserDisabledConnectivityKey"];
}

- (void)setDidWorkoutEnd:(BOOL)end
{
  endCopy = end;
  self->_didWorkoutEnd = end;
  defaultsManager = [(SMSessionMetricManager *)self defaultsManager];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:endCopy];
  [defaultsManager setObject:v4 forKey:@"RTDefaultsSessionMetricManagerDidWorkoutEndKey"];
}

- (void)setDidWorkoutPause:(BOOL)pause
{
  pauseCopy = pause;
  self->_didWorkoutPause = pause;
  defaultsManager = [(SMSessionMetricManager *)self defaultsManager];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:pauseCopy];
  [defaultsManager setObject:v4 forKey:@"RTDefaultsSessionMetricManagerDidWorkoutPauseKey"];
}

- (void)setIsWorkoutAlwaysOn:(BOOL)on
{
  onCopy = on;
  self->_isWorkoutAlwaysOn = on;
  defaultsManager = [(SMSessionMetricManager *)self defaultsManager];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:onCopy];
  [defaultsManager setObject:v4 forKey:@"RTDefaultsSessionMetricManagerIsWorkoutAlwaysOnKey"];
}

- (void)setModeOfTransportation:(unint64_t)transportation
{
  self->_modeOfTransportation = transportation;
  defaultsManager = [(SMSessionMetricManager *)self defaultsManager];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:transportation];
  [defaultsManager setObject:v4 forKey:@"RTDefaultsSessionMetricManagerModeOfTransportationKey"];
}

- (void)setNumRecipients:(unint64_t)recipients
{
  self->_numRecipients = recipients;
  defaultsManager = [(SMSessionMetricManager *)self defaultsManager];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:recipients];
  [defaultsManager setObject:v4 forKey:@"RTDefaultsSessionMetricManagerNumRecipientsKey"];
}

- (void)setWorkoutActivityTypeString:(id)string
{
  objc_storeStrong(&self->_workoutActivityTypeString, string);
  stringCopy = string;
  defaultsManager = [(SMSessionMetricManager *)self defaultsManager];
  [defaultsManager setObject:stringCopy forKey:@"RTDefaultsSessionMetricManagerWorkoutActivityTypeStringKey"];
}

- (void)setSessionType:(unint64_t)type
{
  self->_sessionType = type;
  defaultsManager = [(SMSessionMetricManager *)self defaultsManager];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
  [defaultsManager setObject:v4 forKey:@"RTDefaultsSessionMetricManagerSessionTypeKey"];
}

- (id)collectDestinationSessionMetrics
{
  _createDestinationMetricDictionary = [(SMSessionMetricManager *)self _createDestinationMetricDictionary];
  sessionEndDate = [(SMSessionMetricManager *)self sessionEndDate];
  sessionStartDate = [(SMSessionMetricManager *)self sessionStartDate];
  [sessionEndDate timeIntervalSinceDate:sessionStartDate];
  v7 = v6;

  v8 = [MEMORY[0x277CCABB0] numberWithDouble:v7];
  [_createDestinationMetricDictionary setObject:v8 forKeyedSubscript:@"sessionDuration"];

  v9 = MEMORY[0x277CCABB0];
  sosTriggered = [(SMSessionMetricManager *)self didDestinationAnomalyTrigger]|| [(SMSessionMetricManager *)self noProgressTriggered]|| [(SMSessionMetricManager *)self routeDeviationTriggered]|| [(SMSessionMetricManager *)self sosTriggered];
  v11 = [v9 numberWithInt:sosTriggered];
  [_createDestinationMetricDictionary setObject:v11 forKeyedSubscript:@"anyTrigger"];

  v12 = MEMORY[0x277CCABB0];
  [(SMSessionMetricManager *)self initialDestinationExpectedTravelTime];
  v14 = [v12 numberWithDouble:v7 / v13];
  [_createDestinationMetricDictionary setObject:v14 forKeyedSubscript:@"actualETAScaleFactor"];

  v15 = MEMORY[0x277CCABB0];
  [(SMSessionMetricManager *)self initialDestinationExpectedTravelTime];
  v16 = [v15 numberWithDouble:?];
  [_createDestinationMetricDictionary setObject:v16 forKeyedSubscript:@"initialETA"];

  v17 = MEMORY[0x277CCABB0];
  [(SMSessionMetricManager *)self maxCrowFliesScaleFactor];
  v18 = [v17 numberWithDouble:?];
  [_createDestinationMetricDictionary setObject:v18 forKeyedSubscript:@"maxCrowFliesETAScaleFactor"];

  v19 = MEMORY[0x277CCABB0];
  [(SMSessionMetricManager *)self maxMapsETAScaleFactor];
  v20 = [v19 numberWithDouble:?];
  [_createDestinationMetricDictionary setObject:v20 forKeyedSubscript:@"maxMapsExpectedETAScaleFactor"];

  v21 = [MEMORY[0x277CCABB0] numberWithBool:{-[SMSessionMetricManager noProgressTriggered](self, "noProgressTriggered")}];
  [_createDestinationMetricDictionary setObject:v21 forKeyedSubscript:@"noProgressTriggered"];

  v22 = [MEMORY[0x277CCABB0] numberWithBool:{-[SMSessionMetricManager routeDeviationTriggered](self, "routeDeviationTriggered")}];
  [_createDestinationMetricDictionary setObject:v22 forKeyedSubscript:@"routeDeviationTriggered"];

  v23 = [MEMORY[0x277CCABB0] numberWithBool:{-[SMSessionMetricManager didArriveSafely](self, "didArriveSafely")}];
  [_createDestinationMetricDictionary setObject:v23 forKeyedSubscript:@"safeArrivalOccurred"];

  v24 = [MEMORY[0x277CCABB0] numberWithBool:{-[SMSessionMetricManager sosTriggered](self, "sosTriggered")}];
  [_createDestinationMetricDictionary setObject:v24 forKeyedSubscript:@"SOSTriggered"];

  v25 = [MEMORY[0x277CCABB0] numberWithBool:{-[SMSessionMetricManager userEndedSession](self, "userEndedSession")}];
  [_createDestinationMetricDictionary setObject:v25 forKeyedSubscript:@"userEndedSession"];

  v26 = [MEMORY[0x277CCABB0] numberWithBool:{-[SMSessionMetricManager didHandoffOccur](self, "didHandoffOccur")}];
  [_createDestinationMetricDictionary setObject:v26 forKeyedSubscript:@"didHandoffOccur"];

  v27 = [MEMORY[0x277CCABB0] numberWithBool:{-[SMSessionMetricManager wasActiveAtStart](self, "wasActiveAtStart")}];
  [_createDestinationMetricDictionary setObject:v27 forKeyedSubscript:@"wasActiveAtStart"];

  v28 = [MEMORY[0x277CCABB0] numberWithBool:{-[SMSessionMetricManager wasActiveAtEnd](self, "wasActiveAtEnd")}];
  [_createDestinationMetricDictionary setObject:v28 forKeyedSubscript:@"wasActiveAtEnd"];

  etaUpdateSubmissionQueue = [(SMSessionMetricManager *)self etaUpdateSubmissionQueue];
  v30 = [etaUpdateSubmissionQueue count];

  etaUpdateSubmissionQueue2 = [(SMSessionMetricManager *)self etaUpdateSubmissionQueue];
  v32 = etaUpdateSubmissionQueue2;
  if (v30 < 2)
  {
    v58 = [etaUpdateSubmissionQueue2 count];

    if (!v58)
    {
      goto LABEL_10;
    }

    etaUpdateSubmissionQueue3 = [(SMSessionMetricManager *)self etaUpdateSubmissionQueue];
    dequeueObject = [etaUpdateSubmissionQueue3 dequeueObject];

    v60 = MEMORY[0x277CCABB0];
    [dequeueObject nominalTravelTimeDifference];
    v61 = [v60 numberWithDouble:?];
    [_createDestinationMetricDictionary setObject:v61 forKeyedSubscript:@"nominalTravelTimeRemainingDifference"];

    v62 = MEMORY[0x277CCABB0];
    [dequeueObject nominalTravelTimeRemaining];
    v63 = [v62 numberWithDouble:?];
    [_createDestinationMetricDictionary setObject:v63 forKeyedSubscript:@"nominalTravelTimeRemaining"];

    v64 = MEMORY[0x277CCABB0];
    [dequeueObject distanceDifference];
    v65 = [v64 numberWithDouble:?];
    [_createDestinationMetricDictionary setObject:v65 forKeyedSubscript:@"distanceRemainingDifference"];

    v66 = MEMORY[0x277CCABB0];
    [dequeueObject distanceRemaining];
    v67 = [v66 numberWithDouble:?];
    [_createDestinationMetricDictionary setObject:v67 forKeyedSubscript:@"distanceRemaining"];

    v68 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(dequeueObject, "nominalTravelTimeShorter")}];
    [_createDestinationMetricDictionary setObject:v68 forKeyedSubscript:@"nominalTravelTimeShorter"];

    v69 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(dequeueObject, "remainingDistanceShorter")}];
    [_createDestinationMetricDictionary setObject:v69 forKeyedSubscript:@"remainingDistanceShorter"];

    dequeueObject2 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(dequeueObject, "shouldUpdateETAUpperBound")}];
    [_createDestinationMetricDictionary setObject:dequeueObject2 forKeyedSubscript:@"shouldUpdateUpperBoundETA"];
  }

  else
  {
    dequeueObject = [etaUpdateSubmissionQueue2 dequeueObject];

    etaUpdateSubmissionQueue4 = [(SMSessionMetricManager *)self etaUpdateSubmissionQueue];
    dequeueObject2 = [etaUpdateSubmissionQueue4 dequeueObject];

    v36 = MEMORY[0x277CCABB0];
    [dequeueObject nominalTravelTimeDifference];
    v37 = [v36 numberWithDouble:?];
    [_createDestinationMetricDictionary setObject:v37 forKeyedSubscript:@"nominalTravelTimeRemainingDifferencePrior"];

    v38 = MEMORY[0x277CCABB0];
    [dequeueObject nominalTravelTimeRemaining];
    v39 = [v38 numberWithDouble:?];
    [_createDestinationMetricDictionary setObject:v39 forKeyedSubscript:@"nominalTravelTimeRemainingPrior"];

    v40 = MEMORY[0x277CCABB0];
    [dequeueObject distanceDifference];
    v41 = [v40 numberWithDouble:?];
    [_createDestinationMetricDictionary setObject:v41 forKeyedSubscript:@"distanceRemainingDifferencePrior"];

    v42 = MEMORY[0x277CCABB0];
    [dequeueObject distanceRemaining];
    v43 = [v42 numberWithDouble:?];
    [_createDestinationMetricDictionary setObject:v43 forKeyedSubscript:@"distanceRemainingPrior"];

    v44 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(dequeueObject, "nominalTravelTimeShorter")}];
    [_createDestinationMetricDictionary setObject:v44 forKeyedSubscript:@"nominalTravelTimeShorterPrior"];

    v45 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(dequeueObject, "remainingDistanceShorter")}];
    [_createDestinationMetricDictionary setObject:v45 forKeyedSubscript:@"remainingDistanceShorterPrior"];

    v46 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(dequeueObject, "shouldUpdateETAUpperBound")}];
    [_createDestinationMetricDictionary setObject:v46 forKeyedSubscript:@"shouldUpdateUpperBoundETAPrior"];

    v47 = MEMORY[0x277CCABB0];
    [dequeueObject2 nominalTravelTimeDifference];
    v48 = [v47 numberWithDouble:?];
    [_createDestinationMetricDictionary setObject:v48 forKeyedSubscript:@"nominalTravelTimeRemainingDifference"];

    v49 = MEMORY[0x277CCABB0];
    [dequeueObject2 nominalTravelTimeRemaining];
    v50 = [v49 numberWithDouble:?];
    [_createDestinationMetricDictionary setObject:v50 forKeyedSubscript:@"nominalTravelTimeRemaining"];

    v51 = MEMORY[0x277CCABB0];
    [dequeueObject2 distanceDifference];
    v52 = [v51 numberWithDouble:?];
    [_createDestinationMetricDictionary setObject:v52 forKeyedSubscript:@"distanceRemainingDifference"];

    v53 = MEMORY[0x277CCABB0];
    [dequeueObject2 distanceRemaining];
    v54 = [v53 numberWithDouble:?];
    [_createDestinationMetricDictionary setObject:v54 forKeyedSubscript:@"distanceRemaining"];

    v55 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(dequeueObject2, "nominalTravelTimeShorter")}];
    [_createDestinationMetricDictionary setObject:v55 forKeyedSubscript:@"nominalTravelTimeShorter"];

    v56 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(dequeueObject2, "remainingDistanceShorter")}];
    [_createDestinationMetricDictionary setObject:v56 forKeyedSubscript:@"remainingDistanceShorter"];

    v57 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(dequeueObject2, "shouldUpdateETAUpperBound")}];
    [_createDestinationMetricDictionary setObject:v57 forKeyedSubscript:@"shouldUpdateUpperBoundETA"];
  }

LABEL_10:

  return _createDestinationMetricDictionary;
}

- (id)collectInitiatorPerSessionMetrics
{
  v3 = objc_opt_new();
  sessionEndDate = [(SMSessionMetricManager *)self sessionEndDate];
  sessionStartDate = [(SMSessionMetricManager *)self sessionStartDate];
  [sessionEndDate timeIntervalSinceDate:sessionStartDate];
  v7 = v6;

  v8 = [MEMORY[0x277CCABB0] numberWithInt:{-[SMSessionMetricManager numExtensions](self, "numExtensions")}];
  [v3 setObject:v8 forKeyedSubscript:@"numExtensions"];

  v9 = MEMORY[0x277CCABB0];
  [(SMSessionMetricManager *)self originalNominalTravelTime];
  v10 = [v9 numberWithDouble:?];
  [v3 setObject:v10 forKeyedSubscript:@"originalNominalTravelTime"];

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SMSessionMetricManager originatingLocationTypeEnum](self, "originatingLocationTypeEnum")}];
  [v3 setObject:v11 forKeyedSubscript:@"originatingLocationTypeEnum"];

  v12 = [MEMORY[0x277CCABB0] numberWithDouble:v7];
  [v3 setObject:v12 forKeyedSubscript:@"sessionDuration"];

  v13 = MEMORY[0x277CCABB0];
  [(SMSessionMetricManager *)self ratioOfFirstAnomalyDistanceToTotalDistance];
  v14 = [v13 numberWithDouble:?];
  [v3 setObject:v14 forKeyedSubscript:@"ratioOfFirstAnomalyDistanceToTotalDistance"];

  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SMSessionMetricManager sessionDestinationType](self, "sessionDestinationType")}];
  [v3 setObject:v15 forKeyedSubscript:@"destinationLocationTypeEnum"];

  v16 = [MEMORY[0x277CCABB0] numberWithBool:{-[SMSessionMetricManager didTriggerOccur](self, "didTriggerOccur")}];
  [v3 setObject:v16 forKeyedSubscript:@"didAnomalyPrompt"];

  v17 = [MEMORY[0x277CCABB0] numberWithBool:{-[SMSessionMetricManager didArriveSafely](self, "didArriveSafely")}];
  [v3 setObject:v17 forKeyedSubscript:@"didSafeArrival"];

  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SMSessionMetricManager firstAnomalyTriggerCategoryEnum](self, "firstAnomalyTriggerCategoryEnum")}];
  [v3 setObject:v18 forKeyedSubscript:@"firstAnomalyTriggerCategoryEnum"];

  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SMSessionMetricManager sessionType](self, "sessionType")}];
  [v3 setObject:v19 forKeyedSubscript:@"sessionTypeEnum"];

  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SMSessionMetricManager numAnomalyPrompt](self, "numAnomalyPrompt")}];
  [v3 setObject:v20 forKeyedSubscript:@"numAnomalyPrompt"];

  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SMSessionMetricManager numAnomalyPromptDuringHysteresis](self, "numAnomalyPromptDuringHysteresis")}];
  [v3 setObject:v21 forKeyedSubscript:@"numAnomalyPromptDuringHysteresis"];

  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SMSessionMetricManager numHandoff](self, "numHandoff")}];
  [v3 setObject:v22 forKeyedSubscript:@"numHandoff"];

  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SMSessionMetricManager numLPMSeparation](self, "numLPMSeparation")}];
  [v3 setObject:v23 forKeyedSubscript:@"numLPMSeparation"];

  v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SMSessionMetricManager numTakeover](self, "numTakeover")}];
  [v3 setObject:v24 forKeyedSubscript:@"numTakeover"];

  v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SMSessionMetricManager numUnsupportedDeviceSeparation](self, "numUnsupportedDeviceSeparation")}];
  [v3 setObject:v25 forKeyedSubscript:@"numUnsupportedDeviceSeparation"];

  v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SMSessionMetricManager numUserDisabledConnectivity](self, "numUserDisabledConnectivity")}];
  [v3 setObject:v26 forKeyedSubscript:@"numUserDisabledConnectivity"];

  v27 = [MEMORY[0x277CCABB0] numberWithBool:{-[SMSessionMetricManager didWorkoutEnd](self, "didWorkoutEnd")}];
  [v3 setObject:v27 forKeyedSubscript:@"didWorkoutEnd"];

  v28 = [MEMORY[0x277CCABB0] numberWithBool:{-[SMSessionMetricManager didWorkoutPause](self, "didWorkoutPause")}];
  [v3 setObject:v28 forKeyedSubscript:@"didWorkoutPause"];

  v29 = [MEMORY[0x277CCABB0] numberWithBool:{-[SMSessionMetricManager _isCellularActivated](self, "_isCellularActivated")}];
  [v3 setObject:v29 forKeyedSubscript:@"isCellularActivated"];

  v30 = [MEMORY[0x277CCABB0] numberWithBool:{-[SMSessionMetricManager _isStandalone](self, "_isStandalone")}];
  [v3 setObject:v30 forKeyedSubscript:@"isStandalone"];

  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  LODWORD(sessionStartDate) = [mEMORY[0x277D262A0] isHealthDataSubmissionAllowed];

  if (sessionStartDate)
  {
    v32 = [MEMORY[0x277CCABB0] numberWithBool:{-[SMSessionMetricManager isWorkoutAlwaysOn](self, "isWorkoutAlwaysOn")}];
    [v3 setObject:v32 forKeyedSubscript:@"isWorkoutAlwaysOn"];
  }

  v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SMSessionMetricManager modeOfTransportation](self, "modeOfTransportation")}];
  [v3 setObject:v33 forKeyedSubscript:@"modeOfTransportation"];

  v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SMSessionMetricManager numRecipients](self, "numRecipients")}];
  [v3 setObject:v34 forKeyedSubscript:@"numRecipients"];

  v35 = [MEMORY[0x277CCABB0] numberWithBool:{-[SMSessionMetricManager wasActiveAtEnd](self, "wasActiveAtEnd")}];
  [v3 setObject:v35 forKeyedSubscript:@"wasActiveAtEnd"];

  v36 = [MEMORY[0x277CCABB0] numberWithBool:{-[SMSessionMetricManager wasActiveAtStart](self, "wasActiveAtStart")}];
  [v3 setObject:v36 forKeyedSubscript:@"wasActiveAtStart"];

  mEMORY[0x277D262A0]2 = [MEMORY[0x277D262A0] sharedConnection];
  isHealthDataSubmissionAllowed = [mEMORY[0x277D262A0]2 isHealthDataSubmissionAllowed];

  if (isHealthDataSubmissionAllowed)
  {
    workoutActivityTypeString = [(SMSessionMetricManager *)self workoutActivityTypeString];
    v40 = workoutActivityTypeString;
    if (workoutActivityTypeString)
    {
      v41 = workoutActivityTypeString;
    }

    else
    {
      v41 = @"Unknown";
    }

    [v3 setObject:v41 forKeyedSubscript:@"workoutActivityTypeString"];
  }

  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  sessionStartDate2 = [(SMSessionMetricManager *)self sessionStartDate];
  v44 = [currentCalendar components:32 fromDate:sessionStartDate2];

  hour = [v44 hour];
  v46 = [MEMORY[0x277CCABB0] numberWithInteger:hour];
  [v3 setObject:v46 forKeyedSubscript:@"sessionStartTimeOfDay"];

  return v3;
}

- (void)submitMetrics
{
  if ([(SMSessionMetricManager *)self sessionType]== 2)
  {
    collectDestinationSessionMetrics = [(SMSessionMetricManager *)self collectDestinationSessionMetrics];
    v4 = objc_alloc(MEMORY[0x277CCACA8]);
    v5 = [v4 initWithCString:RTAnalyticsEventSessionMonitorMetrics encoding:1];
    log_analytics_submission(v5, collectDestinationSessionMetrics);
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.%@", v5];
    AnalyticsSendEvent();
  }

  collectInitiatorPerSessionMetrics = [(SMSessionMetricManager *)self collectInitiatorPerSessionMetrics];
  v7 = objc_alloc(MEMORY[0x277CCACA8]);
  v8 = [v7 initWithCString:RTAnalyticsEventSafetyMonitorInitiatorPerSessionDetails encoding:1];
  log_analytics_submission(v8, collectInitiatorPerSessionMetrics);
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.%@", v8];
  AnalyticsSendEvent();

  [(SMSessionMetricManager *)self _reset];
}

- (void)_submitTerminationMetricsWithSuccess:(BOOL)success reason:(unint64_t)reason error:(id)error
{
  successCopy = success;
  errorCopy = error;
  v7 = objc_opt_new();
  v8 = [MEMORY[0x277CCABB0] numberWithBool:successCopy];
  [v7 setObject:v8 forKeyedSubscript:*MEMORY[0x277D4AE98]];

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:reason];
  [v7 setObject:v9 forKeyedSubscript:*MEMORY[0x277D4AE90]];

  if (errorCopy)
  {
    domain = [errorCopy domain];

    if (domain)
    {
      domain2 = [errorCopy domain];
      [v7 setObject:domain2 forKeyedSubscript:*MEMORY[0x277D4AE88]];
    }

    v12 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(errorCopy, "code")}];
    [v7 setObject:v12 forKeyedSubscript:*MEMORY[0x277D4AE80]];
  }

  v13 = objc_alloc(MEMORY[0x277CCACA8]);
  v14 = [v13 initWithCString:RTAnalyticsEventSafetyMonitorInitiatorTerminationResult encoding:1];
  log_analytics_submission(v14, v7);
  v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.%@", v14];
  AnalyticsSendEvent();
}

@end