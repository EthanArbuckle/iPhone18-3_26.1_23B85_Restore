@interface RTPredictedContextManager
+ (BOOL)deferBasedOnFeatureExtractorError:(id)error;
+ (id)_dataCollectionDefaultLookbackDurations;
+ (id)_defaultLookbackDurations;
+ (id)modelBinPath;
+ (id)serializedDataContainerPath;
+ (id)stringFromInferenceTriggerReason:(int64_t)reason;
+ (id)stringFromTrainPolicy:(int64_t)policy;
+ (id)stringFromTrainResult:(unint64_t)result;
- (BOOL)_didHealthKitInaccessibleErrorOccur:(id)occur;
- (BOOL)_generateDiagnosticFilesAtURL:(id)l error:(id *)error;
- (BOOL)_isHealthKitInaccessibleErrorIncludedInTheErrorArray:(id)array;
- (BOOL)_isMonitoringClientEligibleForTriggerReasonClientRegistration:(id)registration;
- (BOOL)_isMonitoringClientEligibleToReceiveResultFromTriggerReasonSingleShot:(id)shot;
- (BOOL)_isSupported;
- (BOOL)_isSupportedForCurrentPlatform;
- (BOOL)_maxTrainAttemptsReachedWithinLast24Hours;
- (BOOL)_requiresPeriodicTriggerTimer;
- (BOOL)_shouldPerformManualDelete;
- (PCAlgorithms)algorithms;
- (RTDataSerializer)dataSerializer;
- (RTPredictedContextManager)initWithFeatureExtractor:(id)extractor learnedLocationManager:(id)manager platform:(id)platform activityManager:(id)activityManager dataProtectionManager:(id)protectionManager defaultsManager:(id)defaultsManager visitManager:(id)visitManager eventManager:(id)self0 mapServiceManager:(id)self1 mapsSupportManager:(id)self2 navigationManager:(id)self3 motionActivityManager:(id)self4 vehicleLocationProvider:(id)self5 distanceCalculator:(id)self6 predictedContextStore:(id)self7 metricsManager:(id)self8;
- (double)_activityTrainHighPriorityInterval;
- (double)_activityTrainRegularInterval;
- (double)_getActivityTrainIntervalForTrainPolicy:(int64_t)policy;
- (double)_periodicTriggerTimerInterval;
- (double)_trainingDurationCapInterval;
- (id)_convertContextLocation:(id)location;
- (id)_convertContextResult:(id)result;
- (id)_convertContextSources:(id)sources;
- (id)_convertContextTransition:(id)transition;
- (id)_convertContextTransport:(id)transport;
- (id)_convertContextWorkout:(id)workout;
- (id)_convertDate:(id)date;
- (id)_convertDateInterval:(id)interval;
- (id)_convertLocationOfInterest:(id)interest sources:(id)sources;
- (id)_createXPCActivityCriteriaWithInterval:(double)interval gracePeriod:(double)period allowBattery:(BOOL)battery requiresClassA:(BOOL)a requiresClassB:(BOOL)b delay:(double)delay;
- (id)_extractAndConvertAnalytics:(id)analytics;
- (id)_filterResult:(id)result forClient:(id)client;
- (id)_fireDate;
- (id)_getLocationOfInterestWithIdentifier:(id)identifier;
- (id)_getXpcActivityCriteriaForTrainPolicy:(int64_t)policy;
- (id)_lookbackIntervalsWithDefaults:(id)defaults;
- (id)_overrideKeyForFeatureOption:(unint64_t)option;
- (id)_readPersistedArrayLastTrainAttemptsDates;
- (id)_requestInferenceWithReason:(int64_t)reason outError:(id *)error;
- (id)_stringForFeatureOption:(unint64_t)option;
- (int64_t)_migrateLegacyTrainPolicyFromInteger:(int64_t)integer;
- (int64_t)_readPersistedTrainPolicyOnSetup;
- (int64_t)_trainPolicyAfterEvaluatingTrainAttempts:(int64_t)attempts;
- (unint64_t)_evaluateTrainErrorForResult:(id)result;
- (unint64_t)_trainAttemptsDatesQueueCapacity;
- (void)_addClient:(id)client;
- (void)_evaluateTrainErrorAndReschedule:(id)reschedule;
- (void)_fetchPredictedContextInputSignalsWithHandler:(id)handler;
- (void)_fetchPredictedContextWithOptions:(id)options handler:(id)handler;
- (void)_forceTrainModelWithHandler:(id)handler;
- (void)_handleComputeResultWithRecords:(id)records error:(id)error inputSignals:(id)signals stimulationDate:(id)date featureExtractorMemoryFootprint:(double)footprint handler:(id)handler;
- (void)_handlePeriodicTriggerTimer;
- (void)_handleTrainingDurationCapTimerWithStartTime:(id)time;
- (void)_invalidatePeriodicTriggerTimer;
- (void)_invalidateTrainingDurationCapTimer;
- (void)_onLearnedLocationManagerDidUpdateNotification:(id)notification;
- (void)_onMotionActivityManagerNotification:(id)notification;
- (void)_onNavigationNotification:(id)notification;
- (void)_onVisit:(id)visit;
- (void)_onVisitManagerNotification:(id)notification;
- (void)_postprocessRequest:(id)request;
- (void)_preprocessTrainingEventWithStartDate:(id)date;
- (void)_processPredictedContextResult:(id)result reason:(int64_t)reason;
- (void)_processTrainingResult:(unint64_t)result;
- (void)_pushResult:(id)result toMonitoringClient:(id)client;
- (void)_registerActivityTrainWithTrainPolicy:(int64_t)policy;
- (void)_requestInferenceWithReason:(int64_t)reason;
- (void)_rescheduleActivityTrainWithTrainPolicy:(int64_t)policy;
- (void)_setInputSignalDefaults:(id)defaults;
- (void)_setLastTrainAttemptsDatesToDefaults:(id)defaults;
- (void)_setRegisteredActivityTrainPolicyDefaults:(int64_t)defaults;
- (void)_setTrainAttemptedDateDefaults:(id)defaults;
- (void)_setup;
- (void)_shutdownWithHandler:(id)handler;
- (void)_simulatePredictedContextResult:(id)result handler:(id)handler;
- (void)_startMonitoringForClient:(id)client options:(id)options handler:(id)handler;
- (void)_startPeriodicTriggerTimer;
- (void)_startTrainingDurationCapTimerWithStartTime:(id)time;
- (void)_stopMonitoringForClient:(id)client reply:(id)reply;
- (void)_storeRequest:(id)request;
- (void)_submitMetrics:(id)metrics;
- (void)_trainWithHandler:(id)handler;
- (void)_updateMonitorPredictedContext;
- (void)checkMotionActivityChangeAndTriggerPrediction:(unint64_t)prediction currentActivity:(unint64_t)activity;
- (void)fetchPredictedContextInputSignalsWithHandler:(id)handler;
- (void)fetchPredictedContextWithOptions:(id)options handler:(id)handler;
- (void)forceTrainModelWithHandler:(id)handler;
- (void)onDataProtectionNotification:(id)notification;
- (void)onLearnedLocationManagerDidUpdateNotification:(id)notification;
- (void)onMotionActivityManagerNotification:(id)notification;
- (void)onNavigationNotification:(id)notification;
- (void)onVisitManagerNotification:(id)notification;
- (void)performPurgeOfType:(int64_t)type referenceDate:(id)date completion:(id)completion;
- (void)saveInteractionRecord:(id)record;
- (void)sendDiagnosticsToURL:(id)l options:(id)options handler:(id)handler;
- (void)setAlgorithms:(id)algorithms;
- (void)setAvailable:(BOOL)available;
- (void)setMonitorPredictedContext:(BOOL)context;
- (void)setPreviousMotionActivity:(unint64_t)activity;
- (void)setRouteSummary:(id)summary;
- (void)simulatePredictedContextResult:(id)result handler:(id)handler;
- (void)startMonitoringForClient:(id)client options:(id)options handler:(id)handler;
- (void)stopMonitoringForClient:(id)client reply:(id)reply;
@end

@implementation RTPredictedContextManager

- (BOOL)_isSupported
{
  featureEnabled = [objc_opt_class() featureEnabled];
  if (featureEnabled)
  {

    LOBYTE(featureEnabled) = [(RTPredictedContextManager *)self _isSupportedForCurrentPlatform];
  }

  return featureEnabled;
}

- (BOOL)_isSupportedForCurrentPlatform
{
  platform = [(RTPredictedContextManager *)self platform];
  deviceClass = [platform deviceClass];
  v4 = [deviceClass containsString:@"iPad"];

  return v4 ^ 1;
}

- (RTPredictedContextManager)initWithFeatureExtractor:(id)extractor learnedLocationManager:(id)manager platform:(id)platform activityManager:(id)activityManager dataProtectionManager:(id)protectionManager defaultsManager:(id)defaultsManager visitManager:(id)visitManager eventManager:(id)self0 mapServiceManager:(id)self1 mapsSupportManager:(id)self2 navigationManager:(id)self3 motionActivityManager:(id)self4 vehicleLocationProvider:(id)self5 distanceCalculator:(id)self6 predictedContextStore:(id)self7 metricsManager:(id)self8
{
  extractorCopy = extractor;
  managerCopy = manager;
  managerCopy2 = manager;
  platformCopy = platform;
  platformCopy2 = platform;
  activityManagerCopy = activityManager;
  activityManagerCopy2 = activityManager;
  protectionManagerCopy = protectionManager;
  protectionManagerCopy2 = protectionManager;
  defaultsManagerCopy = defaultsManager;
  visitManagerCopy = visitManager;
  eventManagerCopy = eventManager;
  serviceManagerCopy = serviceManager;
  supportManagerCopy = supportManager;
  navigationManagerCopy = navigationManager;
  motionActivityManagerCopy = motionActivityManager;
  providerCopy = provider;
  calculatorCopy = calculator;
  storeCopy = store;
  metricsManagerCopy = metricsManager;
  v51 = metricsManagerCopy;
  if (extractorCopy)
  {
    if (managerCopy2)
    {
      v28 = platformCopy2;
      v30 = defaultsManagerCopy;
      v29 = activityManagerCopy2;
      v31 = eventManagerCopy;
      v32 = visitManagerCopy;
      if (platformCopy2)
      {
        if (activityManagerCopy2)
        {
          if (defaultsManagerCopy)
          {
            if (visitManagerCopy)
            {
              if (eventManagerCopy)
              {
                if (serviceManagerCopy)
                {
                  if (supportManagerCopy)
                  {
                    if (navigationManagerCopy)
                    {
                      if (motionActivityManagerCopy)
                      {
                        if (providerCopy)
                        {
                          if (calculatorCopy)
                          {
                            if (storeCopy)
                            {
                              if (metricsManagerCopy)
                              {
                                v61.receiver = self;
                                v61.super_class = RTPredictedContextManager;
                                v33 = [(RTNotifier *)&v61 init];
                                if (v33)
                                {
                                  v55 = v33;
                                  objc_storeStrong(&v33->_featureExtractor, extractor);
                                  objc_storeStrong(&v55->_learnedLocationManager, managerCopy);
                                  objc_storeStrong(&v55->_platform, platformCopy);
                                  objc_storeStrong(&v55->_activityManager, activityManagerCopy);
                                  objc_storeStrong(&v55->_dataProtectionManager, protectionManagerCopy);
                                  objc_storeStrong(&v55->_defaultsManager, defaultsManager);
                                  objc_storeStrong(&v55->_visitManager, visitManager);
                                  objc_storeStrong(&v55->_eventManager, eventManager);
                                  objc_storeStrong(&v55->_mapServiceManager, serviceManager);
                                  objc_storeStrong(&v55->_mapsSupportManager, supportManager);
                                  objc_storeStrong(&v55->_navigationManager, navigationManager);
                                  objc_storeStrong(&v55->_motionActivityManager, motionActivityManager);
                                  objc_storeStrong(&v55->_vehicleLocationProvider, provider);
                                  objc_storeStrong(&v55->_distanceCalculator, calculator);
                                  v34 = objc_opt_new();
                                  clients = v55->_clients;
                                  v55->_clients = v34;

                                  v55->_previousMotionActivity = 0;
                                  objc_storeStrong(&v55->_predictedContextStore, store);
                                  objc_storeStrong(&v55->_metricsManager, metricsManager);
                                  v33 = v55;
                                  v55->_pendingInterruptSource = 0;
                                }

                                v36 = v33;
                                [(RTService *)v33 setup];
                                v37 = v36;
                                self = v37;
                                goto LABEL_52;
                              }

                              v39 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                              if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
                              {
                                *buf = 0;
                                v40 = "Invalid parameter not satisfying: metricsManager";
                                goto LABEL_50;
                              }

LABEL_51:

                              v37 = 0;
                              goto LABEL_52;
                            }

                            v39 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                            if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
                            {
                              goto LABEL_51;
                            }

                            *buf = 0;
                            v40 = "Invalid parameter not satisfying: predictedContextStore";
                          }

                          else
                          {
                            v39 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                            if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
                            {
                              goto LABEL_51;
                            }

                            *buf = 0;
                            v40 = "Invalid parameter not satisfying: distanceCalculator";
                          }
                        }

                        else
                        {
                          v39 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                          if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
                          {
                            goto LABEL_51;
                          }

                          *buf = 0;
                          v40 = "Invalid parameter not satisfying: vehicleLocationProvider";
                        }
                      }

                      else
                      {
                        v39 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                        if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
                        {
                          goto LABEL_51;
                        }

                        *buf = 0;
                        v40 = "Invalid parameter not satisfying: motionActivityManager";
                      }
                    }

                    else
                    {
                      v39 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                      if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
                      {
                        goto LABEL_51;
                      }

                      *buf = 0;
                      v40 = "Invalid parameter not satisfying: navigationManager";
                    }
                  }

                  else
                  {
                    v39 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                    if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_51;
                    }

                    *buf = 0;
                    v40 = "Invalid parameter not satisfying: mapsSupportManager";
                  }
                }

                else
                {
                  v39 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                  if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_51;
                  }

                  *buf = 0;
                  v40 = "Invalid parameter not satisfying: mapServiceManager";
                }
              }

              else
              {
                v39 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_51;
                }

                *buf = 0;
                v40 = "Invalid parameter not satisfying: eventManager";
              }
            }

            else
            {
              v39 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
              if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_51;
              }

              *buf = 0;
              v40 = "Invalid parameter not satisfying: visitManager";
            }
          }

          else
          {
            v39 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
            if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_51;
            }

            *buf = 0;
            v40 = "Invalid parameter not satisfying: defaultsManager";
          }
        }

        else
        {
          v39 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
          if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_51;
          }

          *buf = 0;
          v40 = "Invalid parameter not satisfying: activityManager";
        }
      }

      else
      {
        v39 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_51;
        }

        *buf = 0;
        v40 = "Invalid parameter not satisfying: platform";
      }
    }

    else
    {
      v39 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      v28 = platformCopy2;
      v30 = defaultsManagerCopy;
      v29 = activityManagerCopy2;
      v31 = eventManagerCopy;
      v32 = visitManagerCopy;
      if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_51;
      }

      *buf = 0;
      v40 = "Invalid parameter not satisfying: learnedLocationManager";
    }

LABEL_50:
    _os_log_error_impl(&dword_2304B3000, v39, OS_LOG_TYPE_ERROR, v40, buf, 2u);
    goto LABEL_51;
  }

  v38 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2304B3000, v38, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: featuresExtractor", buf, 2u);
  }

  v37 = 0;
  v28 = platformCopy2;
  v30 = defaultsManagerCopy;
  v29 = activityManagerCopy2;
  v31 = eventManagerCopy;
  v32 = visitManagerCopy;
LABEL_52:

  return v37;
}

- (void)_setup
{
  v17 = *MEMORY[0x277D85DE8];
  if ([objc_opt_class() featureEnabled])
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(RTPredictedContextManager *)self setMonitoringClientLastCallbackDate:v4];

    learnedLocationManager = [(RTPredictedContextManager *)self learnedLocationManager];
    v6 = +[(RTNotification *)RTLearnedLocationManagerNotificationDidUpdate];
    [learnedLocationManager addObserver:self selector:sel_onLearnedLocationManagerDidUpdateNotification_ name:v6];

    [(RTPredictedContextManager *)self _registerActivityTrainWithTrainPolicy:[(RTPredictedContextManager *)self _readPersistedTrainPolicyOnSetup]];
    dataProtectionManager = [(RTPredictedContextManager *)self dataProtectionManager];
    v8 = +[(RTNotification *)RTDataProtectionManagerNotificationUnlockedSinceBoot];
    [dataProtectionManager addObserver:self selector:sel_onDataProtectionNotification_ name:v8];

    [(RTPredictedContextManager *)self setAvailable:0];
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = NSStringFromSelector(a2);
      v13 = 138412546;
      v14 = v11;
      v15 = 2112;
      v16 = v12;
      _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "%@, %@, feature disabled", &v13, 0x16u);
    }
  }
}

- (int64_t)_readPersistedTrainPolicyOnSetup
{
  v21 = *MEMORY[0x277D85DE8];
  defaultsManager = [(RTPredictedContextManager *)self defaultsManager];
  v5 = [defaultsManager objectForKey:@"RTDefaultsPredictedContextManagerRegisteredActivityTrainPolicy"];

  if (v5)
  {
    v6 = -[RTPredictedContextManager _migrateLegacyTrainPolicyFromInteger:](self, "_migrateLegacyTrainPolicyFromInteger:", [v5 integerValue]);
  }

  else
  {
    v6 = 1;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = NSStringFromSelector(a2);
      v11 = [objc_opt_class() stringFromTrainPolicy:v6];
      v13 = 138413058;
      v14 = v9;
      v15 = 2112;
      v16 = v10;
      v17 = 2112;
      v18 = v5;
      v19 = 2112;
      v20 = v11;
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%@, %@, trainPolicyNumber from defaults, %@, registeredActivitytrainPolicy, %@", &v13, 0x2Au);
    }
  }

  return v6;
}

- (int64_t)_migrateLegacyTrainPolicyFromInteger:(int64_t)integer
{
  integerCopy = integer;
  v15 = *MEMORY[0x277D85DE8];
  if (integer > 4)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v9 = 134217984;
      v10 = integerCopy;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "Warning: Encountered an unknown or invalid RTPredictedContextManagerTrainPolicy value: %ld. Defaulting to Unknown.", &v9, 0xCu);
    }

    integerCopy = 0;
    goto LABEL_11;
  }

  if (((1 << integer) & 0x13) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v5 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = NSStringFromSelector(a2);
        v7 = [objc_opt_class() stringFromTrainPolicy:4];
        v9 = 138412802;
        v10 = v6;
        v11 = 2048;
        v12 = integerCopy;
        v13 = 2112;
        v14 = v7;
        _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%@ migrating raw legacyValue, %ld, to %@", &v9, 0x20u);
      }

      integerCopy = 4;
LABEL_11:

      return integerCopy;
    }

    return 4;
  }

  return integerCopy;
}

- (double)_getActivityTrainIntervalForTrainPolicy:(int64_t)policy
{
  if (policy == 4)
  {
    [(RTPredictedContextManager *)self _activityTrainHighPriorityInterval];
  }

  else
  {
    [(RTPredictedContextManager *)self _activityTrainRegularInterval];
  }

  return result;
}

- (double)_activityTrainRegularInterval
{
  v20 = *MEMORY[0x277D85DE8];
  defaultsManager = [(RTPredictedContextManager *)self defaultsManager];
  v4 = [defaultsManager objectForKey:@"RTDefaultsPredictedContextManagerTrainRegularInterval"];

  if (v4)
  {
    [v4 doubleValue];
    v6 = v5;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v7 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = objc_opt_class();
        v9 = NSStringFromClass(v8);
        v10 = NSStringFromSelector(a2);
        v12 = 138413058;
        v13 = v9;
        v14 = 2112;
        v15 = v10;
        v16 = 2112;
        v17 = @"RTDefaultsPredictedContextManagerTrainRegularInterval";
        v18 = 2048;
        v19 = v6;
        _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%@, %@, override, %@, %.3f", &v12, 0x2Au);
      }
    }
  }

  else
  {
    v6 = 86400.0;
  }

  return v6;
}

- (unint64_t)_trainAttemptsDatesQueueCapacity
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = RTPredictedContextManagerActivityTrainAttemptsDatesQueueCapacity;
  defaultsManager = [(RTPredictedContextManager *)self defaultsManager];
  v5 = [defaultsManager objectForKey:@"RTDefaultsPredictedContextManagerTrainAttemptsDatesQueueCapacity"];

  if (v5)
  {
    RTPredictedContextManagerActivityTrainAttemptsDatesQueueCapacity = [v5 integerValue];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v6 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = objc_opt_class();
        v8 = NSStringFromClass(v7);
        v9 = NSStringFromSelector(a2);
        v11 = 138413058;
        v12 = v8;
        v13 = 2112;
        v14 = v9;
        v15 = 2112;
        v16 = @"RTDefaultsPredictedContextManagerTrainAttemptsDatesQueueCapacity";
        v17 = 2048;
        v18 = v3;
        _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@, %@, override, %@, %lu", &v11, 0x2Au);
      }
    }
  }

  return v3;
}

- (double)_activityTrainHighPriorityInterval
{
  v20 = *MEMORY[0x277D85DE8];
  defaultsManager = [(RTPredictedContextManager *)self defaultsManager];
  v4 = [defaultsManager objectForKey:@"RTDefaultsPredictedContextManagerTrainHighPriorityInterval"];

  if (v4)
  {
    [v4 doubleValue];
    v6 = v5;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v7 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = objc_opt_class();
        v9 = NSStringFromClass(v8);
        v10 = NSStringFromSelector(a2);
        v12 = 138413058;
        v13 = v9;
        v14 = 2112;
        v15 = v10;
        v16 = 2112;
        v17 = @"RTDefaultsPredictedContextManagerTrainHighPriorityInterval";
        v18 = 2048;
        v19 = v6;
        _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%@, %@, override, %@, %.3f", &v12, 0x2Au);
      }
    }
  }

  else
  {
    v6 = 3600.0;
  }

  return v6;
}

- (id)_createXPCActivityCriteriaWithInterval:(double)interval gracePeriod:(double)period allowBattery:(BOOL)battery requiresClassA:(BOOL)a requiresClassB:(BOOL)b delay:(double)delay
{
  BYTE1(v11) = b;
  LOBYTE(v11) = a;
  LOBYTE(v10) = 1;
  v8 = [[RTXPCActivityCriteria alloc] initWithInterval:1 gracePeriod:0 priority:0 requireNetworkConnectivity:0 requireInexpensiveNetworkConnectivity:0 networkTransferUploadSize:battery networkTransferDownloadSize:interval allowBattery:period powerNap:delay delay:v10 requireBatteryLevel:0 requiresClassB:v11 requiresClassA:?];

  return v8;
}

- (id)_getXpcActivityCriteriaForTrainPolicy:(int64_t)policy
{
  [(RTPredictedContextManager *)self _getActivityTrainIntervalForTrainPolicy:?];
  v6 = v5;
  v7 = v5 * 0.5;
  if (policy == 4)
  {
    v5 = 0.0;
    selfCopy2 = self;
  }

  else
  {
    selfCopy2 = self;
    v6 = v5 * 0.5;
  }

  v9 = [(RTPredictedContextManager *)selfCopy2 _createXPCActivityCriteriaWithInterval:0 gracePeriod:0 allowBattery:0 requiresClassA:v5 requiresClassB:v7 delay:v6];
  [v9 setCpuIntensive:1];

  return v9;
}

- (void)_registerActivityTrainWithTrainPolicy:(int64_t)policy
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = [(RTPredictedContextManager *)self _trainPolicyAfterEvaluatingTrainAttempts:?];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      v26 = NSStringFromSelector(a2);
      v27 = [objc_opt_class() stringFromTrainPolicy:policy];
      v28 = [objc_opt_class() stringFromTrainPolicy:v6];
      *buf = 138413058;
      *&buf[4] = v25;
      *&buf[12] = 2112;
      *&buf[14] = v26;
      *&buf[22] = 2112;
      v34 = v27;
      v35 = 2112;
      v36 = v28;
      _os_log_debug_impl(&dword_2304B3000, v7, OS_LOG_TYPE_DEBUG, "%@, %@, input train policy %@, final train policy decision _trainPolicyAfterEvaluatingTrainAttempts %@", buf, 0x2Au);
    }
  }

  v8 = [(RTPredictedContextManager *)self _getXpcActivityCriteriaForTrainPolicy:v6];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = NSStringFromSelector(a2);
      [v8 interval];
      *buf = 138413058;
      *&buf[4] = v11;
      *&buf[12] = 2112;
      *&buf[14] = v12;
      *&buf[22] = 2048;
      v34 = v13;
      v35 = 2112;
      v36 = v8;
      _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "%@, %@, with interval %f and criteria %@", buf, 0x2Au);
    }
  }

  if ([(RTPredictedContextManager *)self _isSupported])
  {
    defaultsManager = [(RTPredictedContextManager *)self defaultsManager];
    v15 = [MEMORY[0x277CCABB0] numberWithInteger:v6];
    [defaultsManager setObject:v15 forKey:@"RTDefaultsPredictedContextManagerTrainAttemptedPolicy"];

    [(RTPredictedContextManager *)self _setRegisteredActivityTrainPolicyDefaults:v6];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    LOBYTE(v34) = 0;
    activityManager = [(RTPredictedContextManager *)self activityManager];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __67__RTPredictedContextManager__registerActivityTrainWithTrainPolicy___block_invoke;
    v30[3] = &unk_2788D25F0;
    v30[5] = buf;
    v30[6] = a2;
    v30[4] = self;
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __67__RTPredictedContextManager__registerActivityTrainWithTrainPolicy___block_invoke_121;
    v29[3] = &unk_2788D2618;
    v29[5] = buf;
    v29[6] = a2;
    v29[4] = self;
    [activityManager registerActivityWithIdentifier:@"com.apple.routined.predictedContext.train" criteria:v8 handler:v30 deferHandler:v29];

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v17 = MEMORY[0x277CCA9B8];
    v31 = *MEMORY[0x277CCA450];
    v32 = @"Predicted Context unavailable on this platform.";
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    v19 = [v17 errorWithDomain:*MEMORY[0x277D01448] code:1 userInfo:v18];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v20 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = objc_opt_class();
        v22 = NSStringFromClass(v21);
        v23 = NSStringFromSelector(a2);
        *buf = 138412802;
        *&buf[4] = v22;
        *&buf[12] = 2112;
        *&buf[14] = v23;
        *&buf[22] = 2112;
        v34 = v19;
        _os_log_impl(&dword_2304B3000, v20, OS_LOG_TYPE_INFO, "%@, %@, Platform Not Supported, error %@", buf, 0x20u);
      }
    }
  }
}

void __67__RTPredictedContextManager__registerActivityTrainWithTrainPolicy___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__RTPredictedContextManager__registerActivityTrainWithTrainPolicy___block_invoke_2;
  v7[3] = &unk_2788D25C8;
  v5 = *(a1 + 32);
  v9 = *(a1 + 40);
  v7[4] = v5;
  v8 = v3;
  v6 = v3;
  dispatch_async(v4, v7);
}

void __67__RTPredictedContextManager__registerActivityTrainWithTrainPolicy___block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = objc_opt_class();
      v4 = NSStringFromClass(v3);
      v5 = NSStringFromSelector(*(a1 + 56));
      *buf = 138412546;
      v14 = v4;
      v15 = 2112;
      v16 = v5;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@, %@, Starting training", buf, 0x16u);
    }
  }

  v6 = *(a1 + 32);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __67__RTPredictedContextManager__registerActivityTrainWithTrainPolicy___block_invoke_117;
  v10[3] = &unk_2788D25A0;
  v7 = *(a1 + 56);
  v10[4] = v6;
  v12 = v7;
  v9 = *(a1 + 40);
  v8 = v9;
  v11 = v9;
  [v6 _trainWithHandler:v10];
}

void __67__RTPredictedContextManager__registerActivityTrainWithTrainPolicy___block_invoke_117(uint64_t a1, uint64_t a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = NSStringFromSelector(*(a1 + 56));
      v10 = [objc_opt_class() stringFromTrainResult:a2];
      v11 = v10;
      if (*(*(*(a1 + 48) + 8) + 24))
      {
        v12 = @"YES";
      }

      else
      {
        v12 = @"NO";
      }

      v14 = 138413314;
      v15 = v8;
      v16 = 2112;
      v17 = v9;
      v18 = 2112;
      v19 = v10;
      v20 = 2112;
      v21 = v12;
      v22 = 2112;
      v23 = v5;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@, %@, Finished training, result, %@, was deferred, %@, error, %@", &v14, 0x34u);
    }
  }

  v13 = *(a1 + 40);
  if (v13)
  {
    (*(v13 + 16))(v13, v5, *(*(*(a1 + 48) + 8) + 24));
  }

  [*(a1 + 32) _evaluateTrainErrorAndReschedule:v5];
  [*(a1 + 32) _processTrainingResult:a2];
}

void __67__RTPredictedContextManager__registerActivityTrainWithTrainPolicy___block_invoke_121(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __67__RTPredictedContextManager__registerActivityTrainWithTrainPolicy___block_invoke_2_122;
  v6[3] = &unk_2788CD450;
  v6[4] = *(a1 + 32);
  v7 = v3;
  v8 = *(a1 + 40);
  v5 = v3;
  dispatch_async(v4, v6);
}

void __67__RTPredictedContextManager__registerActivityTrainWithTrainPolicy___block_invoke_2_122(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) defaultsManager];
  v3 = [v2 objectForKey:@"RTDefaultsPredictedContextManagerTrainIgnoreDeferral"];

  v4 = [*(a1 + 32) platform];
  if ([v4 internalInstall])
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
  }

  else
  {
    v6 = [v3 BOOLValue];

    if (v6)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v7 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          v8 = NSStringFromSelector(*(a1 + 56));
          *buf = 138412546;
          v20 = v8;
          v21 = 2112;
          v22 = @"RTDefaultsPredictedContextManagerTrainIgnoreDeferral";
          _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%@, ignoring deferral due to defaults key: %@", buf, 0x16u);
        }

LABEL_20:

        goto LABEL_21;
      }

      goto LABEL_21;
    }
  }

  if (!*(a1 + 40))
  {
    v11 = [MEMORY[0x277CBEAA8] date];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v12 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = NSStringFromSelector(*(a1 + 56));
        *buf = 138412290;
        v20 = v13;
        _os_log_impl(&dword_2304B3000, v12, OS_LOG_TYPE_INFO, "%@, received deferral in PredictedContextManager, forwarding to the Helper Service", buf, 0xCu);
      }
    }

    [*(a1 + 32) setPendingInterruptSource:2];
    v14 = [*(a1 + 32) mapServiceManager];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __67__RTPredictedContextManager__registerActivityTrainWithTrainPolicy___block_invoke_127;
    v16[3] = &unk_2788C4D10;
    v15 = *(a1 + 56);
    v17 = v11;
    v18 = v15;
    v7 = v11;
    [v14 interruptComputeWithError:v16];

    *(*(*(a1 + 48) + 8) + 24) = 1;
    goto LABEL_20;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = NSStringFromSelector(*(a1 + 56));
      v10 = *(a1 + 40);
      *buf = 138412546;
      v20 = v9;
      v21 = 2112;
      v22 = v10;
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%@, deferral error, %@", buf, 0x16u);
    }

    goto LABEL_20;
  }

LABEL_21:
}

void __67__RTPredictedContextManager__registerActivityTrainWithTrainPolicy___block_invoke_127(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = NSStringFromSelector(*(a1 + 40));
      v6 = [MEMORY[0x277CBEAA8] date];
      [v6 timeIntervalSinceDate:*(a1 + 32)];
      v8 = 138412802;
      v9 = v5;
      v10 = 2048;
      v11 = v7;
      v12 = 2112;
      v13 = v3;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%@, deferral handling in service completed, latency, %.2f, error, %@", &v8, 0x20u);
    }
  }
}

- (BOOL)_didHealthKitInaccessibleErrorOccur:(id)occur
{
  v24 = *MEMORY[0x277D85DE8];
  occurCopy = occur;
  if ([occurCopy code] == 6)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v12 = 1;
      goto LABEL_25;
    }

    v5 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = NSStringFromSelector(a2);
      *buf = 138412290;
      v23 = v6;
      _os_log_debug_impl(&dword_2304B3000, v5, OS_LOG_TYPE_DEBUG, "%@ YES", buf, 0xCu);
    }

LABEL_21:
    v12 = 1;
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    userInfo = [occurCopy userInfo];
    v5 = [userInfo objectForKeyedSubscript:*MEMORY[0x277D01440]];

    v8 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v5);
          }

          if ([*(*(&v17 + 1) + 8 * i) code] == 6)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
            {
              v13 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
              if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
              {
                v15 = NSStringFromSelector(a2);
                *buf = 138412290;
                v23 = v15;
                _os_log_debug_impl(&dword_2304B3000, v13, OS_LOG_TYPE_DEBUG, "%@ YES", buf, 0xCu);
              }
            }

            goto LABEL_21;
          }
        }

        v9 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v12 = 0;
      goto LABEL_25;
    }

    v5 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v16 = NSStringFromSelector(a2);
      *buf = 138412290;
      v23 = v16;
      _os_log_debug_impl(&dword_2304B3000, v5, OS_LOG_TYPE_DEBUG, "%@ NO", buf, 0xCu);
    }

    v12 = 0;
  }

LABEL_25:
  return v12;
}

+ (BOOL)deferBasedOnFeatureExtractorError:(id)error
{
  v21 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  flattenErrors = [errorCopy flattenErrors];
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __63__RTPredictedContextManager_deferBasedOnFeatureExtractorError___block_invoke;
  v12[3] = &unk_2788D2640;
  v12[4] = &v13;
  v12[5] = a2;
  [flattenErrors enumerateObjectsUsingBlock:v12];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = NSStringFromSelector(a2);
      v8 = v7;
      if (*(v14 + 24))
      {
        v9 = @"YES";
      }

      else
      {
        v9 = @"NO";
      }

      *buf = 138412546;
      v18 = v7;
      v19 = 2112;
      v20 = v9;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@, defer, %@", buf, 0x16u);
    }
  }

  v10 = *(v14 + 24);
  _Block_object_dispose(&v13, 8);

  return v10 & 1;
}

void __63__RTPredictedContextManager_deferBasedOnFeatureExtractorError___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = a2;
  if ([v6 code] == 5 || objc_msgSend(v6, "code") == 8 || objc_msgSend(v6, "code") == 15)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v7 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v8 = NSStringFromSelector(*(a1 + 40));
        v9 = 138412546;
        v10 = v8;
        v11 = 2112;
        v12 = v6;
        _os_log_debug_impl(&dword_2304B3000, v7, OS_LOG_TYPE_DEBUG, "%@, defer due to feature extractor error, %@", &v9, 0x16u);
      }
    }

    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }
}

- (void)_setRegisteredActivityTrainPolicyDefaults:(int64_t)defaults
{
  defaultsManager = [(RTPredictedContextManager *)self defaultsManager];
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:defaults];
  [defaultsManager setObject:v6 forKey:@"RTDefaultsPredictedContextManagerRegisteredActivityTrainPolicy"];

  defaultsManager2 = [(RTPredictedContextManager *)self defaultsManager];
  date = [MEMORY[0x277CBEAA8] date];
  [defaultsManager2 setObject:date forKey:@"RTDefaultsPredictedContextManagerRegisteredActivityTrainPolicyDate"];
}

- (void)_setTrainAttemptedDateDefaults:(id)defaults
{
  defaultsCopy = defaults;
  defaultsManager = [(RTPredictedContextManager *)self defaultsManager];
  [defaultsManager setObject:defaultsCopy forKey:@"RTDefaultsPredictedContextManagerTrainAttemptedDate"];

  v5 = [RTFixedSizeQueue alloc];
  _trainAttemptsDatesQueueCapacity = [(RTPredictedContextManager *)self _trainAttemptsDatesQueueCapacity];
  _readPersistedArrayLastTrainAttemptsDates = [(RTPredictedContextManager *)self _readPersistedArrayLastTrainAttemptsDates];
  v8 = [(RTFixedSizeQueue *)v5 initWithCapacity:_trainAttemptsDatesQueueCapacity objects:_readPersistedArrayLastTrainAttemptsDates];

  v9 = [(RTFixedSizeQueue *)v8 enqueueObject:defaultsCopy];
  objects = [(RTFixedSizeQueue *)v8 objects];
  [(RTPredictedContextManager *)self _setLastTrainAttemptsDatesToDefaults:objects];
}

- (void)_setInputSignalDefaults:(id)defaults
{
  defaultsCopy = defaults;
  defaultsManager = [(RTPredictedContextManager *)self defaultsManager];
  v6 = MEMORY[0x277CCABB0];
  calendarEvents = [defaultsCopy calendarEvents];
  v8 = [v6 numberWithUnsignedInteger:{objc_msgSend(calendarEvents, "count")}];
  [defaultsManager setObject:v8 forKey:@"RTDefaultsFeatureExtractorTrainCalendarEventCount"];

  defaultsManager2 = [(RTPredictedContextManager *)self defaultsManager];
  v10 = MEMORY[0x277CCABB0];
  homeKitHomes = [defaultsCopy homeKitHomes];
  v12 = [v10 numberWithUnsignedInteger:{objc_msgSend(homeKitHomes, "count")}];
  [defaultsManager2 setObject:v12 forKey:@"RTDefaultsFeatureExtractorTrainHomeKitHomesCount"];

  defaultsManager3 = [(RTPredictedContextManager *)self defaultsManager];
  v14 = MEMORY[0x277CCABB0];
  locationHistorys = [defaultsCopy locationHistorys];
  v16 = [v14 numberWithUnsignedInteger:{objc_msgSend(locationHistorys, "count")}];
  [defaultsManager3 setObject:v16 forKey:@"RTDefaultsFeatureExtractorTrainLocationHistoryCount"];

  defaultsManager4 = [(RTPredictedContextManager *)self defaultsManager];
  v18 = MEMORY[0x277CCABB0];
  locationOfInterests = [defaultsCopy locationOfInterests];
  v20 = [v18 numberWithUnsignedInteger:{objc_msgSend(locationOfInterests, "count")}];
  [defaultsManager4 setObject:v20 forKey:@"RTDefaultsFeatureExtractorTrainLocationOfInterestCount"];

  defaultsManager5 = [(RTPredictedContextManager *)self defaultsManager];
  v22 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(defaultsCopy, "hasMapsActiveNavigation")}];
  [defaultsManager5 setObject:v22 forKey:@"RTDefaultsFeatureExtractorTrainMapsActiveNavigation"];

  defaultsManager6 = [(RTPredictedContextManager *)self defaultsManager];
  v24 = MEMORY[0x277CCABB0];
  mapsViewedPlaces = [defaultsCopy mapsViewedPlaces];
  v26 = [v24 numberWithUnsignedInteger:{objc_msgSend(mapsViewedPlaces, "count")}];
  [defaultsManager6 setObject:v26 forKey:@"RTDefaultsFeatureExtractorTrainMapsViewedPlacesCount"];

  defaultsManager7 = [(RTPredictedContextManager *)self defaultsManager];
  v28 = MEMORY[0x277CCABB0];
  motionActivitys = [defaultsCopy motionActivitys];
  v30 = [v28 numberWithUnsignedInteger:{objc_msgSend(motionActivitys, "count")}];
  [defaultsManager7 setObject:v30 forKey:@"RTDefaultsFeatureExtractorTrainMotionActivityCount"];

  defaultsManager8 = [(RTPredictedContextManager *)self defaultsManager];
  v32 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(defaultsCopy, "hasParkedCar")}];
  [defaultsManager8 setObject:v32 forKey:@"RTDefaultsFeatureExtractorTrainParkedCar"];

  defaultsManager9 = [(RTPredictedContextManager *)self defaultsManager];
  v34 = MEMORY[0x277CCABB0];
  propagatedLocations = [defaultsCopy propagatedLocations];
  v36 = [v34 numberWithUnsignedInteger:{objc_msgSend(propagatedLocations, "count")}];
  [defaultsManager9 setObject:v36 forKey:@"RTDefaultsFeatureExtractorTrainPropagatedLocationCount"];

  defaultsManager10 = [(RTPredictedContextManager *)self defaultsManager];
  v38 = MEMORY[0x277CCABB0];
  transitions = [defaultsCopy transitions];
  v40 = [v38 numberWithUnsignedInteger:{objc_msgSend(transitions, "count")}];
  [defaultsManager10 setObject:v40 forKey:@"RTDefaultsFeatureExtractorTrainTransitionCount"];

  defaultsManager11 = [(RTPredictedContextManager *)self defaultsManager];
  v42 = MEMORY[0x277CCABB0];
  visits = [defaultsCopy visits];
  v44 = [v42 numberWithUnsignedInteger:{objc_msgSend(visits, "count")}];
  [defaultsManager11 setObject:v44 forKey:@"RTDefaultsFeatureExtractorTrainVisitCount"];

  defaultsManager12 = [(RTPredictedContextManager *)self defaultsManager];
  v45 = MEMORY[0x277CCABB0];
  workouts = [defaultsCopy workouts];

  v47 = [v45 numberWithUnsignedInteger:{objc_msgSend(workouts, "count")}];
  [defaultsManager12 setObject:v47 forKey:@"RTDefaultsFeatureExtractorTrainWorkoutCount"];
}

- (void)_evaluateTrainErrorAndReschedule:(id)reschedule
{
  v23 = *MEMORY[0x277D85DE8];
  rescheduleCopy = reschedule;
  flattenErrors = [rescheduleCopy flattenErrors];
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 1;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __62__RTPredictedContextManager__evaluateTrainErrorAndReschedule___block_invoke;
  v12[3] = &unk_2788D2668;
  v12[4] = self;
  v12[5] = &v13;
  [flattenErrors enumerateObjectsUsingBlock:v12];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = NSStringFromSelector(a2);
      v11 = [objc_opt_class() stringFromTrainPolicy:v14[3]];
      *buf = 138412802;
      v18 = v9;
      v19 = 2112;
      v20 = v10;
      v21 = 2112;
      v22 = v11;
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%@, %@, rescheduled train policy, %@", buf, 0x20u);
    }
  }

  [(RTPredictedContextManager *)self _rescheduleActivityTrainWithTrainPolicy:v14[3]];
  _Block_object_dispose(&v13, 8);
}

void __62__RTPredictedContextManager__evaluateTrainErrorAndReschedule___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([v5 code] == 5 || objc_msgSend(v5, "code") == 8 || objc_msgSend(v5, "code") == 15)
  {
    v3 = *(*(a1 + 40) + 8);
    if (*(v3 + 24) <= 3)
    {
      v4 = 4;
LABEL_16:
      *(v3 + 24) = v4;
      goto LABEL_17;
    }
  }

  if (([v5 code] == -1 || !objc_msgSend(v5, "code") || objc_msgSend(v5, "code") == 1 || objc_msgSend(v5, "code") == 2 || objc_msgSend(v5, "code") == 3 || objc_msgSend(v5, "code") == 4) && (v3 = *(*(a1 + 40) + 8), *(v3 + 24) <= 0) || objc_msgSend(*(a1 + 32), "_didHealthKitInaccessibleErrorOccur:", v5) && (v3 = *(*(a1 + 40) + 8), *(v3 + 24) <= 0))
  {
    v4 = 1;
    goto LABEL_16;
  }

LABEL_17:
}

- (unint64_t)_evaluateTrainErrorForResult:(id)result
{
  v28 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  flattenErrors = [resultCopy flattenErrors];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __58__RTPredictedContextManager__evaluateTrainErrorForResult___block_invoke;
  v19[3] = &unk_2788D2690;
  v19[4] = self;
  v19[5] = a2;
  [flattenErrors enumerateObjectsUsingBlock:v19];
  if ([flattenErrors count])
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = 0;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __58__RTPredictedContextManager__evaluateTrainErrorForResult___block_invoke_173;
    v14[3] = &unk_2788D26B8;
    v14[4] = self;
    v14[5] = &v15;
    v14[6] = a2;
    [flattenErrors enumerateObjectsUsingBlock:v14];
    if ([(RTPredictedContextManager *)self _didHealthKitInaccessibleErrorOccur:resultCopy])
    {
      v16[3] |= 4uLL;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v7 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = objc_opt_class();
        v9 = NSStringFromClass(v8);
        v10 = NSStringFromSelector(a2);
        v11 = [objc_opt_class() stringFromTrainResult:v16[3]];
        *buf = 138413058;
        v21 = v9;
        v22 = 2112;
        v23 = v10;
        v24 = 2112;
        v25 = v11;
        v26 = 2112;
        v27 = flattenErrors;
        _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%@, %@, training result, %@, after evaluating error(s), %@", buf, 0x2Au);
      }
    }

    v12 = v16[3];
    _Block_object_dispose(&v15, 8);
  }

  else
  {
    v12 = 2;
  }

  return v12;
}

void __58__RTPredictedContextManager__evaluateTrainErrorForResult___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = NSStringFromSelector(*(a1 + 40));
      v10 = 138413058;
      v11 = v8;
      v12 = 2112;
      v13 = v9;
      v14 = 2048;
      v15 = a3;
      v16 = 2112;
      v17 = v5;
      _os_log_debug_impl(&dword_2304B3000, v6, OS_LOG_TYPE_DEBUG, "%@, %@, idx, %lu, error, %@", &v10, 0x2Au);
    }
  }
}

uint64_t __58__RTPredictedContextManager__evaluateTrainErrorForResult___block_invoke_173(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  result = [a2 code];
  if (result <= 3)
  {
    switch(result)
    {
      case 1:
        v4 = *(*(a1 + 40) + 8);
        v5 = *(v4 + 24) | 8;
        break;
      case 2:
        v4 = *(*(a1 + 40) + 8);
        v5 = *(v4 + 24) | 0x10;
        break;
      case 3:
        v4 = *(*(a1 + 40) + 8);
        v5 = *(v4 + 24) | 0x20;
        break;
      default:
        return result;
    }

    goto LABEL_13;
  }

  if (result == 4)
  {
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 24) | 0x40;
LABEL_13:
    *(v4 + 24) = v5;
    return result;
  }

  if (result != 5)
  {
    if (result != 6)
    {
      return result;
    }

    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 24) | 0x100;
    goto LABEL_13;
  }

  if ([*(a1 + 32) pendingInterruptSource] == 1)
  {
    v6 = 4096;
  }

  else
  {
    if ([*(a1 + 32) pendingInterruptSource] != 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v7 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v8 = objc_opt_class();
        v9 = NSStringFromClass(v8);
        v10 = NSStringFromSelector(*(a1 + 48));
        v11 = 138412546;
        v12 = v9;
        v13 = 2112;
        v14 = v10;
        _os_log_debug_impl(&dword_2304B3000, v7, OS_LOG_TYPE_DEBUG, "%@, %@, received invalid interruption source value", &v11, 0x16u);
      }
    }

    v6 = 128;
  }

  *(*(*(a1 + 40) + 8) + 24) |= v6;
  return [*(a1 + 32) setPendingInterruptSource:0];
}

- (void)_rescheduleActivityTrainWithTrainPolicy:(int64_t)policy
{
  activityManager = [(RTPredictedContextManager *)self activityManager];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __69__RTPredictedContextManager__rescheduleActivityTrainWithTrainPolicy___block_invoke;
  v7[3] = &unk_2788CDAF8;
  v7[4] = self;
  v7[5] = a2;
  v7[6] = policy;
  [activityManager unregisterActivityWithIdentifier:@"com.apple.routined.predictedContext.train" handler:v7];
}

void __69__RTPredictedContextManager__rescheduleActivityTrainWithTrainPolicy___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      v7 = NSStringFromSelector(*(a1 + 40));
      *buf = 138412802;
      v15 = v6;
      v16 = 2112;
      v17 = v7;
      v18 = 2112;
      v19 = @"com.apple.routined.predictedContext.train";
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "%@, %@, Couldn't cancel xpc activity %@", buf, 0x20u);
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v8 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        v11 = NSStringFromSelector(*(a1 + 40));
        *buf = 138412802;
        v15 = @"com.apple.routined.predictedContext.train";
        v16 = 2112;
        v17 = v10;
        v18 = 2112;
        v19 = v11;
        _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "%@, %@, success, unregisterActivityWithIdentifier %@", buf, 0x20u);
      }
    }

    v4 = [*(a1 + 32) queue];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __69__RTPredictedContextManager__rescheduleActivityTrainWithTrainPolicy___block_invoke_174;
    v13[3] = &unk_2788C52E8;
    v12 = *(a1 + 48);
    v13[4] = *(a1 + 32);
    v13[5] = v12;
    dispatch_async(v4, v13);
  }
}

- (int64_t)_trainPolicyAfterEvaluatingTrainAttempts:(int64_t)attempts
{
  v22 = *MEMORY[0x277D85DE8];
  if ([(RTPredictedContextManager *)self _maxTrainAttemptsReachedWithinLast24Hours])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v5 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        v7 = objc_opt_class();
        v8 = NSStringFromClass(v7);
        v9 = NSStringFromSelector(a2);
        v10 = [objc_opt_class() stringFromTrainPolicy:attempts];
        v11 = [objc_opt_class() stringFromTrainPolicy:1];
        v12 = 138413314;
        v13 = v8;
        v14 = 2112;
        v15 = v9;
        v16 = 2112;
        v17 = v10;
        v18 = 2112;
        v19 = v11;
        v20 = 2112;
        v21 = @"YES";
        _os_log_debug_impl(&dword_2304B3000, v5, OS_LOG_TYPE_DEBUG, "%@, %@, Overriding trainPolicy from, %@, to %@, because areMaxTrainAttemptsWithinLastDayReached, %@", &v12, 0x34u);
      }
    }

    return 1;
  }

  return attempts;
}

- (BOOL)_maxTrainAttemptsReachedWithinLast24Hours
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = [RTFixedSizeQueue alloc];
  _trainAttemptsDatesQueueCapacity = [(RTPredictedContextManager *)self _trainAttemptsDatesQueueCapacity];
  _readPersistedArrayLastTrainAttemptsDates = [(RTPredictedContextManager *)self _readPersistedArrayLastTrainAttemptsDates];
  v7 = [(RTFixedSizeQueue *)v4 initWithCapacity:_trainAttemptsDatesQueueCapacity objects:_readPersistedArrayLastTrainAttemptsDates];

  if (v7 && [(RTFixedSizeQueue *)v7 count])
  {
    if ([(RTFixedSizeQueue *)v7 count])
    {
      v8 = 0;
      v9 = MEMORY[0x277D86220];
      do
      {
        v10 = [(RTFixedSizeQueue *)v7 objectAtIndex:v8];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
          {
            v11 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
            {
              v18 = objc_opt_class();
              v25 = NSStringFromClass(v18);
              v19 = NSStringFromSelector(a2);
              stringFromDate = [v10 stringFromDate];
              *buf = 138413058;
              v27 = v25;
              v28 = 2112;
              v29 = v19;
              v30 = 2048;
              v31 = v8;
              v32 = 2112;
              v33 = stringFromDate;
              v21 = stringFromDate;
              _os_log_debug_impl(&dword_2304B3000, v11, OS_LOG_TYPE_DEBUG, "%@, %@, index, %lu, trainAttemptDate, %@", buf, 0x2Au);

              v9 = MEMORY[0x277D86220];
            }
          }

          if (([objc_opt_class() isDateWithinLast24Hours:v10] & 1) == 0)
          {

            goto LABEL_17;
          }
        }

        else
        {
          v12 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            v13 = objc_opt_class();
            v14 = NSStringFromClass(v13);
            v15 = NSStringFromSelector(a2);
            v16 = objc_opt_class();
            NSStringFromClass(v16);
            v17 = v24 = a2;
            *buf = 138412802;
            v27 = v14;
            v28 = 2112;
            v29 = v15;
            v30 = 2112;
            v31 = v17;
            _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "%@%@ Unexpected object %@ stored within ", buf, 0x20u);

            a2 = v24;
            v9 = MEMORY[0x277D86220];
          }
        }

        ++v8;
      }

      while (v8 < [(RTFixedSizeQueue *)v7 count]);
    }

    v22 = 1;
  }

  else
  {
LABEL_17:
    v22 = 0;
  }

  return v22;
}

- (id)_readPersistedArrayLastTrainAttemptsDates
{
  v33 = *MEMORY[0x277D85DE8];
  defaultsManager = [(RTPredictedContextManager *)self defaultsManager];
  v4 = [defaultsManager objectForKey:@"RTDefaultsPredictedContextManagerTrainArrayAttemptsDates"];

  if (v4)
  {
    v5 = MEMORY[0x277CBEB98];
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = [v5 setWithObjects:{v6, v7, objc_opt_class(), 0}];
    v26 = 0;
    v9 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v8 fromData:v4 error:&v26];
    v10 = v26;

    if (v10)
    {
      v11 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v15 = objc_opt_class();
        v16 = NSStringFromClass(v15);
        v17 = NSStringFromSelector(a2);
        *buf = 138412802;
        v28 = v16;
        v29 = 2112;
        v30 = v17;
        v31 = 2112;
        v32 = v10;
        _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "#%@, %@, Failed to decode metadata for RTFixedSizeQueue, error, %@", buf, 0x20u);
      }

      v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
    }

    else
    {
      v9 = v9;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v21 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          v22 = objc_opt_class();
          v23 = NSStringFromClass(v22);
          v24 = NSStringFromSelector(a2);
          *buf = 138412802;
          v28 = v23;
          v29 = 2112;
          v30 = v24;
          v31 = 2112;
          v32 = v9;
          _os_log_impl(&dword_2304B3000, v21, OS_LOG_TYPE_INFO, "#%@, %@, read from defaults, lastTrainAttemptsDates, %@", buf, 0x20u);
        }
      }

      v10 = 0;
      v12 = v9;
    }

    v14 = v12;
  }

  else
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      v20 = NSStringFromSelector(a2);
      *buf = 138412802;
      v28 = v19;
      v29 = 2112;
      v30 = v20;
      v31 = 2112;
      v32 = @"RTDefaultsPredictedContextManagerTrainArrayAttemptsDates";
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "%@, %@, Failed to retrieve serialized data from defaults for the key %@", buf, 0x20u);
    }

    v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
  }

  return v14;
}

- (void)_setLastTrainAttemptsDatesToDefaults:(id)defaults
{
  v24 = *MEMORY[0x277D85DE8];
  defaultsCopy = defaults;
  if (!defaultsCopy)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v17 = "[RTPredictedContextManager _setLastTrainAttemptsDatesToDefaults:]";
      v18 = 1024;
      LODWORD(v19) = 972;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: datesArray (in %s:%d)", buf, 0x12u);
    }
  }

  v15 = 0;
  v7 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:defaultsCopy requiringSecureCoding:1 error:&v15];
  v8 = v15;
  if (v8)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = NSStringFromSelector(a2);
      v14 = [defaultsCopy description];
      *buf = 138413058;
      v17 = v12;
      v18 = 2112;
      v19 = v13;
      v20 = 2112;
      v21 = v14;
      v22 = 2112;
      v23 = v8;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "%@, %@, Failed to serialize datesArray, %@, error, %@", buf, 0x2Au);
    }
  }

  defaultsManager = [(RTPredictedContextManager *)self defaultsManager];
  [defaultsManager setObject:v7 forKey:@"RTDefaultsPredictedContextManagerTrainArrayAttemptsDates"];
}

+ (id)stringFromTrainPolicy:(int64_t)policy
{
  v3 = @"Unknown";
  if (policy == 4)
  {
    v3 = @"TrainPolicyHighPriority";
  }

  if (policy == 1)
  {
    return @"TrainPolicyRegular";
  }

  else
  {
    return v3;
  }
}

+ (id)stringFromTrainResult:(unint64_t)result
{
  if (result)
  {
    resultCopy = result;
    array = [MEMORY[0x277CBEB18] array];
    v5 = array;
    if (resultCopy)
    {
      [array addObject:@"Unsupported Platform"];
      if ((resultCopy & 2) == 0)
      {
LABEL_4:
        if ((resultCopy & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_22;
      }
    }

    else if ((resultCopy & 2) == 0)
    {
      goto LABEL_4;
    }

    [v5 addObject:@"Success: No Errors"];
    if ((resultCopy & 4) == 0)
    {
LABEL_5:
      if ((resultCopy & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_23;
    }

LABEL_22:
    [v5 addObject:@"Success: HealthKit InaccessibleError"];
    if ((resultCopy & 8) == 0)
    {
LABEL_6:
      if ((resultCopy & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_24;
    }

LABEL_23:
    [v5 addObject:@"Fail: Invalid Parameter Error"];
    if ((resultCopy & 0x10) == 0)
    {
LABEL_7:
      if ((resultCopy & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_25;
    }

LABEL_24:
    [v5 addObject:@"Fail: Invalid State Error"];
    if ((resultCopy & 0x20) == 0)
    {
LABEL_8:
      if ((resultCopy & 0x40) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_26;
    }

LABEL_25:
    [v5 addObject:@"Fail: Algo State Version Mismatch Error"];
    if ((resultCopy & 0x40) == 0)
    {
LABEL_9:
      if ((resultCopy & 0x80) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_27;
    }

LABEL_26:
    [v5 addObject:@"Fail: Insufficient Input Error"];
    if ((resultCopy & 0x80) == 0)
    {
LABEL_10:
      if ((resultCopy & 0x1000) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_28;
    }

LABEL_27:
    [v5 addObject:@"Interrupted: System Deferral"];
    if ((resultCopy & 0x1000) == 0)
    {
LABEL_11:
      if ((resultCopy & 0x100) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_29;
    }

LABEL_28:
    [v5 addObject:@"Interrupted: Duration Cap"];
    if ((resultCopy & 0x100) == 0)
    {
LABEL_12:
      if ((resultCopy & 0x200) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_30;
    }

LABEL_29:
    [v5 addObject:@"Success: Interruption Ignored"];
    if ((resultCopy & 0x200) == 0)
    {
LABEL_13:
      if ((resultCopy & 0x400) == 0)
      {
LABEL_15:
        v6 = [v5 componentsJoinedByString:{@", "}];

        goto LABEL_17;
      }

LABEL_14:
      [v5 addObject:@"Defer: Integrity Error"];
      goto LABEL_15;
    }

LABEL_30:
    [v5 addObject:@"Defer: Feature Extractor Error"];
    if ((resultCopy & 0x400) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v6 = @"Unknown";
LABEL_17:

  return v6;
}

+ (id)stringFromInferenceTriggerReason:(int64_t)reason
{
  if (reason >= 7)
  {
    reason = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid Reason (%ld)", reason];
  }

  else
  {
    reason = off_2788D2908[reason];
  }

  return reason;
}

- (double)_periodicTriggerTimerInterval
{
  v21 = *MEMORY[0x277D85DE8];
  if (([(NSNumber *)self->_currentVisitType isEqual:&unk_2845A0410]& 1) != 0 || self->_previousMotionActivity == 4)
  {
    v4 = 900.0;
  }

  else
  {
    v4 = 3600.0;
  }

  defaultsManager = [(RTPredictedContextManager *)self defaultsManager];
  v6 = [defaultsManager objectForKey:@"RTDefaultsPredictedContextManagerPeriodicTriggerInterval"];

  if (v6)
  {
    [v6 doubleValue];
    v4 = v7;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v8 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        v11 = NSStringFromSelector(a2);
        v13 = 138413058;
        v14 = v10;
        v15 = 2112;
        v16 = v11;
        v17 = 2112;
        v18 = @"RTDefaultsPredictedContextManagerPeriodicTriggerInterval";
        v19 = 2048;
        v20 = v4;
        _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "%@, %@, override, %@, %.3f", &v13, 0x2Au);
      }
    }
  }

  return v4;
}

- (double)_trainingDurationCapInterval
{
  v20 = *MEMORY[0x277D85DE8];
  defaultsManager = [(RTPredictedContextManager *)self defaultsManager];
  v4 = [defaultsManager objectForKey:@"RTDefaultsPredictedContextManagerTrainingDurationCapInterval"];

  if (v4)
  {
    [v4 doubleValue];
    v6 = v5;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v7 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = objc_opt_class();
        v9 = NSStringFromClass(v8);
        v10 = NSStringFromSelector(a2);
        v12 = 138413058;
        v13 = v9;
        v14 = 2112;
        v15 = v10;
        v16 = 2112;
        v17 = @"RTDefaultsPredictedContextManagerTrainingDurationCapInterval";
        v18 = 2048;
        v19 = v6;
        _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%@, %@, override, %@, %.3f", &v12, 0x2Au);
      }
    }
  }

  else
  {
    v6 = 3600.0;
  }

  return v6;
}

- (id)_fireDate
{
  defaultsManager = [(RTPredictedContextManager *)self defaultsManager];
  v4 = [defaultsManager objectForKey:@"RTDefaultsPredictedContextManagerPeriodicTriggerFireDate"];

  v5 = MEMORY[0x277CBEAA8];
  [(RTPredictedContextManager *)self _periodicTriggerTimerInterval];
  v7 = v6;
  date = [MEMORY[0x277CBEAA8] date];
  v9 = [v5 dateWithTimeInterval:date sinceDate:v7];

  if (v4)
  {
    date2 = [MEMORY[0x277CBEAA8] date];
    if ([v4 isAfterDate:date2])
    {
      if ([v9 isBeforeDate:v4])
      {
        date3 = [MEMORY[0x277CBEAA8] date];
        v12 = [v9 isAfterDate:date3];

        if (v12)
        {
          goto LABEL_9;
        }
      }

      else
      {
      }

      date2 = v9;
      v9 = v4;
    }
  }

LABEL_9:

  return v9;
}

- (void)_handlePeriodicTriggerTimer
{
  v12 = *MEMORY[0x277D85DE8];
  [(RTPredictedContextManager *)self _invalidatePeriodicTriggerTimer];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      v7 = NSStringFromSelector(a2);
      v8 = 138412546;
      v9 = v6;
      v10 = 2112;
      v11 = v7;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%@, %@", &v8, 0x16u);
    }
  }

  [(RTPredictedContextManager *)self _requestInferenceWithReason:3];
  [(RTPredictedContextManager *)self _startPeriodicTriggerTimer];
}

- (BOOL)_requiresPeriodicTriggerTimer
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  clients = [(RTPredictedContextManager *)self clients];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __58__RTPredictedContextManager__requiresPeriodicTriggerTimer__block_invoke;
  v4[3] = &unk_2788D26E0;
  v4[4] = &v5;
  [clients enumerateObjectsUsingBlock:v4];

  LOBYTE(clients) = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return clients;
}

uint64_t __58__RTPredictedContextManager__requiresPeriodicTriggerTimer__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 singleShot];
  if ((result & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

- (void)_startPeriodicTriggerTimer
{
  v27 = *MEMORY[0x277D85DE8];
  periodicTriggerTimer = [(RTPredictedContextManager *)self periodicTriggerTimer];

  if (!periodicTriggerTimer && [(RTPredictedContextManager *)self _requiresPeriodicTriggerTimer])
  {
    v5 = [RTXPCTimerAlarm alloc];
    queue = [(RTNotifier *)self queue];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __55__RTPredictedContextManager__startPeriodicTriggerTimer__block_invoke;
    v18[3] = &unk_2788C4EA0;
    v18[4] = self;
    v7 = [(RTXPCTimerAlarm *)v5 initWithIdentifier:@"com.apple.routined.predictedContext.periodicTriggerTimer" queue:queue handler:v18];
    [(RTPredictedContextManager *)self setPeriodicTriggerTimer:v7];

    _fireDate = [(RTPredictedContextManager *)self _fireDate];
    periodicTriggerTimer2 = [(RTPredictedContextManager *)self periodicTriggerTimer];
    v17 = 0;
    [periodicTriggerTimer2 fireWithDate:_fireDate shouldWake:0 error:&v17];
    v10 = v17;

    defaultsManager = [(RTPredictedContextManager *)self defaultsManager];
    [defaultsManager setObject:_fireDate forKey:@"RTDefaultsPredictedContextManagerPeriodicTriggerFireDate"];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v12 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        v15 = NSStringFromSelector(a2);
        stringFromDate = [_fireDate stringFromDate];
        *buf = 138413058;
        v20 = v14;
        v21 = 2112;
        v22 = v15;
        v23 = 2112;
        v24 = stringFromDate;
        v25 = 2112;
        v26 = v10;
        _os_log_impl(&dword_2304B3000, v12, OS_LOG_TYPE_INFO, "%@, %@, fireDate, %@, error, %@", buf, 0x2Au);
      }
    }
  }
}

- (void)_invalidatePeriodicTriggerTimer
{
  periodicTriggerTimer = [(RTPredictedContextManager *)self periodicTriggerTimer];
  [periodicTriggerTimer invalidate];

  [(RTPredictedContextManager *)self setPeriodicTriggerTimer:0];
}

+ (id)serializedDataContainerPath
{
  routineCacheDirectoryPath = [MEMORY[0x277CCAA00] routineCacheDirectoryPath];
  v3 = [routineCacheDirectoryPath stringByAppendingPathComponent:@"PredictedContext"];

  return v3;
}

+ (id)modelBinPath
{
  routineCacheDirectoryPath = [MEMORY[0x277CCAA00] routineCacheDirectoryPath];
  v3 = [routineCacheDirectoryPath stringByAppendingPathComponent:@"PredictedContext.bin"];

  return v3;
}

- (void)_handleComputeResultWithRecords:(id)records error:(id)error inputSignals:(id)signals stimulationDate:(id)date featureExtractorMemoryFootprint:(double)footprint handler:(id)handler
{
  v88 = *MEMORY[0x277D85DE8];
  recordsCopy = records;
  errorCopy = error;
  signalsCopy = signals;
  dateCopy = date;
  handlerCopy = handler;
  [(RTPredictedContextManager *)self _invalidateTrainingDurationCapTimer];
  array = [MEMORY[0x277CBEB18] array];
  if (errorCopy)
  {
    flattenErrors = [errorCopy flattenErrors];

    array = flattenErrors;
  }

  v69 = array;
  v70 = [(RTPredictedContextManager *)self _evaluateTrainErrorForResult:errorCopy];
  +[RTRuntime footprint];
  v21 = v20;
  date = [MEMORY[0x277CBEAA8] date];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v22 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      v25 = NSStringFromSelector(a2);
      [date timeIntervalSinceDate:dateCopy];
      durationAsReadableString(v26);
      v28 = v27 = signalsCopy;
      *buf = 138413314;
      v76 = v24;
      v77 = 2112;
      v78 = v25;
      v79 = 2112;
      v80 = errorCopy;
      v81 = 2112;
      v82 = v28;
      v83 = 2048;
      v84 = v21;
      _os_log_impl(&dword_2304B3000, v22, OS_LOG_TYPE_INFO, "%@, %@, Step 2: compute model complete - error, %@, latency, %@, footprint, %.4f MB", buf, 0x34u);

      signalsCopy = v27;
    }
  }

  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v29 = recordsCopy;
  v30 = [v29 countByEnumeratingWithState:&v71 objects:v87 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v72;
    do
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v72 != v32)
        {
          objc_enumerationMutation(v29);
        }

        [(RTPredictedContextManager *)self saveInteractionRecord:*(*(&v71 + 1) + 8 * i)];
      }

      v31 = [v29 countByEnumeratingWithState:&v71 objects:v87 count:16];
    }

    while (v31);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v34 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      v35 = objc_opt_class();
      v36 = NSStringFromClass(v35);
      v37 = NSStringFromSelector(a2);
      v38 = [v29 count];
      *buf = 138412802;
      v76 = v36;
      v77 = 2112;
      v78 = v37;
      v79 = 2048;
      v80 = v38;
      _os_log_impl(&dword_2304B3000, v34, OS_LOG_TYPE_INFO, "%@, %@, Step 3: Saved %lu interaction records", buf, 0x20u);
    }
  }

  [(RTPredictedContextManager *)self setAlgorithms:0];
  v39 = v69;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v40 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
    {
      v41 = objc_opt_class();
      v42 = NSStringFromClass(v41);
      v43 = NSStringFromSelector(a2);
      *buf = 138412546;
      v76 = v42;
      v77 = 2112;
      v78 = v43;
      _os_log_impl(&dword_2304B3000, v40, OS_LOG_TYPE_INFO, "%@, %@, Step 4: release the algorithm object for the daemon", buf, 0x16u);
    }
  }

  date2 = [MEMORY[0x277CBEAA8] date];
  [(RTPredictedContextManager *)self _setTrainAttemptedDateDefaults:dateCopy];
  defaultsManager = [(RTPredictedContextManager *)self defaultsManager];
  [defaultsManager setObject:date2 forKey:@"RTDefaultsPredictedContextManagerTrainAttemptedCompletionDateKey"];

  defaultsManager2 = [(RTPredictedContextManager *)self defaultsManager];
  v47 = [MEMORY[0x277CCABB0] numberWithDouble:footprint];
  [defaultsManager2 setObject:v47 forKey:@"RTDefaultsPredictedContextManagerTrainAttemptedFeatureExtractorMemoryFootprint"];

  defaultsManager3 = [(RTPredictedContextManager *)self defaultsManager];
  v49 = [MEMORY[0x277CCABB0] numberWithDouble:v21];
  [defaultsManager3 setObject:v49 forKey:@"RTDefaultsPredictedContextManagerTrainAttemptedComputeMemoryFootprint"];

  [(RTPredictedContextManager *)self _setInputSignalDefaults:signalsCopy];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v64 = errorCopy;
    v50 = dateCopy;
    v51 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
    {
      v52 = objc_opt_class();
      v53 = NSStringFromClass(v52);
      NSStringFromSelector(a2);
      v54 = aSelectora = signalsCopy;
      stringFromDate = [v50 stringFromDate];
      stringFromDate2 = [date2 stringFromDate];
      [date2 timeIntervalSinceDate:v50];
      v58 = durationAsReadableString(v57);
      *buf = 138413570;
      v76 = v53;
      v77 = 2112;
      v78 = v54;
      v79 = 2112;
      v80 = stringFromDate;
      v81 = 2112;
      v82 = stringFromDate2;
      v83 = 2112;
      v84 = *&v58;
      v85 = 2112;
      v86 = v69;
      _os_log_impl(&dword_2304B3000, v51, OS_LOG_TYPE_INFO, "%@, %@, training attempt completed, start date, %@, completion date, %@, latency, %@, error(s), %@", buf, 0x3Eu);

      v39 = v69;
      signalsCopy = aSelectora;
    }

    dateCopy = v50;
    errorCopy = v64;
  }

  if ((v70 & 0x106) == 0 || (-[RTPredictedContextManager defaultsManager](self, "defaultsManager"), v59 = objc_claimAutoreleasedReturnValue(), [v59 setObject:date2 forKey:@"RTDefaultsPredictedContextManagerTrainAllContextLastCompletionDate"], v59, -[RTPredictedContextManager defaultsManager](self, "defaultsManager"), v60 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v60, "setObject:forKey:", date2, @"RTDefaultsPredictedContextManagerTrainLocationContextLastCompletionDate"), v60, (v70 & 4) == 0))
  {
    defaultsManager4 = [(RTPredictedContextManager *)self defaultsManager];
    [defaultsManager4 setObject:date2 forKey:@"RTDefaultsPredictedContextManagerTrainWorkoutContextLastCompletionDate"];
  }

  if (handlerCopy)
  {
    v62 = _RTSafeArray();
    v63 = _RTMultiErrorCreate();
    handlerCopy[2](handlerCopy, v70, v63);
  }
}

- (void)_trainWithHandler:(id)handler
{
  v76[1] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = NSStringFromSelector(a2);
      *buf = 138412546;
      v64 = v8;
      v65 = 2112;
      v66 = v9;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@, %@, starting training", buf, 0x16u);
    }
  }

  v10 = MEMORY[0x277CCACA8];
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  v13 = NSStringFromSelector(a2);
  v14 = [v10 stringWithFormat:@"%@-%@", v12, v13];
  [v14 UTF8String];
  v15 = os_transaction_create();

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v50 = objc_opt_class();
      v51 = NSStringFromClass(v50);
      v52 = NSStringFromSelector(a2);
      *buf = 138412546;
      v64 = v51;
      v65 = 2112;
      v66 = v52;
      _os_log_debug_impl(&dword_2304B3000, v16, OS_LOG_TYPE_DEBUG, "creating os_transaction, %@, %@", buf, 0x16u);
    }
  }

  if ([(RTPredictedContextManager *)self _isSupported])
  {
    if ([(RTPredictedContextManager *)self available])
    {
      date = [MEMORY[0x277CBEAA8] date];
      [(RTPredictedContextManager *)self _startTrainingDurationCapTimerWithStartTime:date];
      [(RTPredictedContextManager *)self _preprocessTrainingEventWithStartDate:date];
      _defaultLookbackDurations = [objc_opt_class() _defaultLookbackDurations];
      v19 = [(RTPredictedContextManager *)self _lookbackIntervalsWithDefaults:_defaultLookbackDurations];

      featureExtractor = [(RTPredictedContextManager *)self featureExtractor];
      v62 = 0;
      v21 = [featureExtractor extractFeaturesWithLookbackIntervals:v19 operationType:2 outError:&v62];
      v22 = v62;

      v56 = v22;
      v23 = [v22 copy];
      +[RTRuntime footprint];
      v25 = v24;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v26 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          v27 = objc_opt_class();
          NSStringFromClass(v27);
          v28 = v53 = v21;
          v29 = NSStringFromSelector(a2);
          date2 = [MEMORY[0x277CBEAA8] date];
          [date2 timeIntervalSinceDate:date];
          durationAsReadableString(v31);
          v32 = v54 = v19;
          *buf = 138413314;
          v64 = v28;
          v65 = 2112;
          v66 = v29;
          v67 = 2112;
          v68 = v32;
          v69 = 2048;
          v70 = v25;
          v71 = 2112;
          v72 = v23;
          _os_log_impl(&dword_2304B3000, v26, OS_LOG_TYPE_INFO, "%@, %@, Step 1: Extract Features, latency, %@, footprint, %.4f MB, error(s), %@", buf, 0x34u);

          v19 = v54;
          v21 = v53;
        }
      }

      if ([objc_opt_class() deferBasedOnFeatureExtractorError:v23])
      {
        v55 = v19;
        date3 = [MEMORY[0x277CBEAA8] date];
        [(RTPredictedContextManager *)self _setTrainAttemptedDateDefaults:date];
        defaultsManager = [(RTPredictedContextManager *)self defaultsManager];
        [defaultsManager setObject:date3 forKey:@"RTDefaultsPredictedContextManagerTrainAttemptedCompletionDateKey"];

        defaultsManager2 = [(RTPredictedContextManager *)self defaultsManager];
        v36 = [MEMORY[0x277CCABB0] numberWithDouble:v25];
        [defaultsManager2 setObject:v36 forKey:@"RTDefaultsPredictedContextManagerTrainAttemptedFeatureExtractorMemoryFootprint"];

        defaultsManager3 = [(RTPredictedContextManager *)self defaultsManager];
        v38 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
        [defaultsManager3 setObject:v38 forKey:@"RTDefaultsPredictedContextManagerTrainAttemptedComputeMemoryFootprint"];

        [(RTPredictedContextManager *)self _setInputSignalDefaults:v21];
        if (handlerCopy)
        {
          handlerCopy[2](handlerCopy, 512, v23);
        }

        v19 = v55;
      }

      else
      {
        mapServiceManager = [(RTPredictedContextManager *)self mapServiceManager];
        v57[0] = MEMORY[0x277D85DD0];
        v57[1] = 3221225472;
        v57[2] = __47__RTPredictedContextManager__trainWithHandler___block_invoke;
        v57[3] = &unk_2788C5D18;
        v57[4] = self;
        v58 = v21;
        v59 = date;
        v61 = v25;
        v60 = handlerCopy;
        [mapServiceManager computeWithInputSignals:v58 handler:v57];

        date3 = 0;
      }
    }

    else
    {
      v46 = MEMORY[0x277CCA9B8];
      v47 = *MEMORY[0x277D01448];
      v73 = *MEMORY[0x277CCA450];
      v74 = @"Resource temporarily unavailable; data access not available until first unlock after boot.";
      date = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v74 forKeys:&v73 count:1];
      v48 = [v46 errorWithDomain:v47 code:5 userInfo:date];
      handlerCopy[2](handlerCopy, 2048, v48);
    }
  }

  else
  {
    v39 = MEMORY[0x277CCA9B8];
    v40 = *MEMORY[0x277D01448];
    v75 = *MEMORY[0x277CCA450];
    v76[0] = @"ContextAlgorithms unavailable on this platform";
    v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v76 forKeys:&v75 count:1];
    date = [v39 errorWithDomain:v40 code:1 userInfo:v41];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v42 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
      {
        v43 = objc_opt_class();
        v44 = NSStringFromClass(v43);
        v45 = NSStringFromSelector(a2);
        *buf = 138412802;
        v64 = v44;
        v65 = 2112;
        v66 = v45;
        v67 = 2112;
        v68 = date;
        _os_log_impl(&dword_2304B3000, v42, OS_LOG_TYPE_INFO, "%@, %@, Platform Not Supported, error, %@", buf, 0x20u);
      }
    }

    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, 1, date);
    }
  }
}

void __47__RTPredictedContextManager__trainWithHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__RTPredictedContextManager__trainWithHandler___block_invoke_2;
  block[3] = &unk_2788CCA20;
  v8 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v12 = v5;
  v13 = v6;
  v14 = v8;
  v15 = *(a1 + 48);
  v17 = *(a1 + 64);
  v16 = *(a1 + 56);
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

- (BOOL)_isHealthKitInaccessibleErrorIncludedInTheErrorArray:(id)array
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  arrayCopy = array;
  v5 = [arrayCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(arrayCopy);
        }

        if ([(RTPredictedContextManager *)self _didHealthKitInaccessibleErrorOccur:*(*(&v11 + 1) + 8 * i), v11])
        {
          v9 = 1;
          goto LABEL_11;
        }
      }

      v6 = [arrayCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  return v9;
}

- (void)_preprocessTrainingEventWithStartDate:(id)date
{
  v54 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  defaultsManager = [(RTPredictedContextManager *)self defaultsManager];
  v7 = [defaultsManager objectForKey:@"RTDefaultsPredictedContextManagerTrainAttemptedDate"];

  v8 = 0.0;
  if (v7)
  {
    defaultsManager2 = [(RTPredictedContextManager *)self defaultsManager];
    v10 = [defaultsManager2 objectForKey:@"RTDefaultsPredictedContextManagerTrainAttemptedDate"];

    [dateCopy timeIntervalSinceDate:v10];
    v12 = v11;
    defaultsManager3 = [(RTPredictedContextManager *)self defaultsManager];
    v14 = [MEMORY[0x277CCABB0] numberWithDouble:v12];
    [defaultsManager3 setObject:v14 forKey:@"RTDefaultsPredictedContextManagerTimeSinceLastTrainingAttempt"];
  }

  else
  {
    v10 = 0;
    v12 = 0.0;
  }

  defaultsManager4 = [(RTPredictedContextManager *)self defaultsManager];
  v16 = [defaultsManager4 objectForKey:@"RTDefaultsPredictedContextManagerTrainAllContextLastCompletionDate"];

  if (v16)
  {
    defaultsManager5 = [(RTPredictedContextManager *)self defaultsManager];
    v18 = [defaultsManager5 objectForKey:@"RTDefaultsPredictedContextManagerTrainAllContextLastCompletionDate"];

    [dateCopy timeIntervalSinceDate:v18];
    v8 = v19;
    defaultsManager6 = [(RTPredictedContextManager *)self defaultsManager];
    v21 = [MEMORY[0x277CCABB0] numberWithDouble:v8];
    [defaultsManager6 setObject:v21 forKey:@"RTDefaultsPredictedContextManagerTimeSinceLastTrainingSuccess"];
  }

  defaultsManager7 = [(RTPredictedContextManager *)self defaultsManager];
  v23 = [defaultsManager7 objectForKey:@"RTDefaultsPredictedContextManagerTrainAttemptedCompletionDateKey"];

  defaultsManager8 = [(RTPredictedContextManager *)self defaultsManager];
  v25 = [defaultsManager8 objectForKey:@"RTDefaultsPredictedContextManagerTrainAllContextLastCompletionDate"];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v26 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = objc_opt_class();
      v35 = NSStringFromClass(v27);
      v34 = NSStringFromSelector(a2);
      stringFromDate = [dateCopy stringFromDate];
      [v10 stringFromDate];
      v29 = v36 = dateCopy;
      stringFromDate2 = [v23 stringFromDate];
      stringFromDate3 = [v25 stringFromDate];
      v32 = durationAsReadableString(v12);
      durationAsReadableString(v8);
      v33 = v37 = v10;
      *buf = 138414082;
      v39 = v35;
      v40 = 2112;
      v41 = v34;
      v42 = 2112;
      v43 = stringFromDate;
      v44 = 2112;
      v45 = v29;
      v46 = 2112;
      v47 = stringFromDate2;
      v48 = 2112;
      v49 = stringFromDate3;
      v50 = 2112;
      v51 = v32;
      v52 = 2112;
      v53 = v33;
      _os_log_impl(&dword_2304B3000, v26, OS_LOG_TYPE_INFO, "%@, %@, new attempt start date, %@, last attempt start date, %@, last training attempt completion date, %@, last successful training attempt completion date, %@, time since last training attempt, %@, time since last training success, %@", buf, 0x52u);

      v10 = v37;
      dateCopy = v36;
    }
  }
}

- (void)_processTrainingResult:(unint64_t)result
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = [MEMORY[0x277CBEAA8] now];
  metricsManager = [(RTPredictedContextManager *)self metricsManager];
  [metricsManager prepareAndSubmitTrainingEventMetrics:result];

  v8 = [MEMORY[0x277CBEAA8] now];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = NSStringFromSelector(a2);
      [v8 timeIntervalSinceDate:v6];
      v14 = 138412802;
      v15 = v11;
      v16 = 2112;
      v17 = v12;
      v18 = 2048;
      v19 = v13;
      _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "%@, %@, latency, %.2f", &v14, 0x20u);
    }
  }
}

- (void)_shutdownWithHandler:(id)handler
{
  handlerCopy = handler;
  dataProtectionManager = [(RTPredictedContextManager *)self dataProtectionManager];
  [dataProtectionManager removeObserver:self];

  [(RTPredictedContextManager *)self setAvailable:0];
  [(RTPredictedContextManager *)self setAlgorithms:0];
  v5 = handlerCopy;
  if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
    v5 = handlerCopy;
  }
}

- (RTDataSerializer)dataSerializer
{
  dataSerializer = self->_dataSerializer;
  if (!dataSerializer)
  {
    serializedDataContainerPath = [objc_opt_class() serializedDataContainerPath];
    v5 = [RTDataSerializer alloc];
    lastPathComponent = [serializedDataContainerPath lastPathComponent];
    v7 = [(RTDataSerializer *)v5 initWithContainerPath:serializedDataContainerPath outputPrefix:lastPathComponent];
    v8 = self->_dataSerializer;
    self->_dataSerializer = v7;

    dataSerializer = self->_dataSerializer;
  }

  return dataSerializer;
}

- (void)saveInteractionRecord:(id)record
{
  recordCopy = record;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__RTPredictedContextManager_saveInteractionRecord___block_invoke;
  block[3] = &unk_2788C5020;
  block[4] = self;
  v9 = recordCopy;
  v10 = a2;
  v7 = recordCopy;
  dispatch_async(queue, block);
}

void __51__RTPredictedContextManager_saveInteractionRecord___block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) platform];
  v3 = [v2 internalInstall];

  if (v3)
  {
    v4 = [MEMORY[0x277CBEAA8] date];
    pcpObfuscateCalendarStringsInPlace(*(a1 + 40));
    v5 = [*(a1 + 40) data];
    v6 = [*(a1 + 32) dataSerializer];
    v19 = 0;
    v7 = [v6 saveData:v5 error:&v19];
    v8 = v19;

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v9 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        v12 = NSStringFromSelector(*(a1 + 48));
        v13 = vcvtd_n_f64_u64([v5 length], 0x14uLL);
        if (v7)
        {
          v14 = @"YES";
        }

        else
        {
          v14 = @"NO";
        }

        v15 = [MEMORY[0x277CBEAA8] date];
        [v15 timeIntervalSinceDate:v4];
        v17 = v16;
        +[RTRuntime footprint];
        *buf = 138413826;
        v21 = v11;
        v22 = 2112;
        v23 = v12;
        v24 = 2048;
        v25 = v13;
        v26 = 2112;
        v27 = v14;
        v28 = 2112;
        v29 = v8;
        v30 = 2048;
        v31 = v17;
        v32 = 2048;
        v33 = v18;
        _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "%@, %@, size, %.6f MB, success, %@, error, %@, latency, %.2f, footprint, %.4f MB", buf, 0x48u);
      }
    }
  }
}

- (id)_convertDate:(id)date
{
  dateCopy = date;
  if (dateCopy)
  {
    v4 = objc_alloc(MEMORY[0x277D01220]);
    v5 = MEMORY[0x277CBEAA8];
    [dateCopy date];
    v6 = [v5 dateWithTimeIntervalSinceReferenceDate:?];
    [dateCopy confidenceInterval];
    v7 = [v4 initWithDate:v6 confidenceInterval:?];
  }

  else
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: pDate", v10, 2u);
    }

    v7 = 0;
  }

  return v7;
}

- (id)_convertDateInterval:(id)interval
{
  intervalCopy = interval;
  v5 = intervalCopy;
  if (intervalCopy)
  {
    startDate = [intervalCopy startDate];
    v7 = [(RTPredictedContextManager *)self _convertDate:startDate];

    endDate = [v5 endDate];
    v9 = [(RTPredictedContextManager *)self _convertDate:endDate];

    v10 = [objc_alloc(MEMORY[0x277D01228]) initWithStartDate:v7 endDate:v9];
  }

  else
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: pDateInterval", v13, 2u);
    }

    v10 = 0;
  }

  return v10;
}

- (id)_convertLocationOfInterest:(id)interest sources:(id)sources
{
  v77 = *MEMORY[0x277D85DE8];
  interestCopy = interest;
  sourcesCopy = sources;
  if (interestCopy)
  {
    aSelector = a2;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v9 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v44 = objc_opt_class();
        v45 = NSStringFromClass(v44);
        v46 = NSStringFromSelector(a2);
        *buf = 138412803;
        *&buf[4] = v45;
        *&buf[12] = 2112;
        *&buf[14] = v46;
        *&buf[22] = 2117;
        v74 = interestCopy;
        _os_log_debug_impl(&dword_2304B3000, v9, OS_LOG_TYPE_DEBUG, "%@, %@, input predicted locationOfInterest, %{sensitive}@", buf, 0x20u);
      }
    }

    v10 = objc_autoreleasePoolPush();
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v74 = __Block_byref_object_copy__188;
    v75 = __Block_byref_object_dispose__188;
    v11 = objc_alloc(MEMORY[0x277CCAD78]);
    loiIdentifier = [interestCopy loiIdentifier];
    v76 = [v11 initWithData:loiIdentifier];

    v13 = [(RTPredictedContextManager *)self _getLocationOfInterestWithIdentifier:*(*&buf[8] + 40)];
    if (!v13)
    {
      *v69 = 0;
      *&v69[8] = v69;
      *&v69[16] = 0x3032000000;
      v70 = __Block_byref_object_copy__188;
      v71 = __Block_byref_object_dispose__188;
      v72 = 0;
      v14 = objc_alloc(MEMORY[0x277D01160]);
      location = [interestCopy location];
      [location locationLatitudeDeg];
      v17 = v16;
      location2 = [interestCopy location];
      [location2 locationLongitudeDeg];
      v20 = v19;
      location3 = [interestCopy location];
      [location3 locationHorizontalUncertaintyMeters];
      v23 = v22;
      v24 = [MEMORY[0x277CBEAA8] now];
      v25 = [v14 initWithLatitude:v24 longitude:v17 horizontalUncertainty:v20 date:v23];

      v57[0] = MEMORY[0x277D85DD0];
      v57[1] = 3221225472;
      v57[2] = __64__RTPredictedContextManager__convertLocationOfInterest_sources___block_invoke;
      v57[3] = &unk_2788D2708;
      v57[4] = self;
      v62 = aSelector;
      v26 = v25;
      v58 = v26;
      v60 = v69;
      v27 = interestCopy;
      v59 = v27;
      v61 = buf;
      [sourcesCopy enumerateObjectsUsingBlock:v57];
      if (!*(*&v69[8] + 40))
      {
        v28 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          v53 = objc_opt_class();
          v54 = NSStringFromClass(v53);
          v55 = NSStringFromSelector(aSelector);
          *v63 = 138412546;
          v64 = v54;
          v65 = 2112;
          v66 = v55;
          _os_log_error_impl(&dword_2304B3000, v28, OS_LOG_TYPE_ERROR, "%@, %@, no mapItem or LOI fetched", v63, 0x16u);
        }

        v29 = [RTLearnedPlace alloc];
        v30 = objc_alloc_init(MEMORY[0x277CCAD78]);
        placeType = [v27 placeType];
        date = [MEMORY[0x277CBEAA8] date];
        date2 = [MEMORY[0x277CBEAA8] date];
        v34 = [(RTLearnedPlace *)v29 initWithIdentifier:v30 type:placeType typeSource:0 mapItem:0 customLabel:@"Unknown" creationDate:date expirationDate:date2];
        v35 = *(*&v69[8] + 40);
        *(*&v69[8] + 40) = v34;
      }

      v36 = [RTLearnedLocationOfInterest alloc];
      v37 = *(*&buf[8] + 40);
      v38 = [[RTLearnedLocation alloc] initWithLocation:v26 dataPointCount:0 type:0];
      v13 = [(RTLearnedLocationOfInterest *)v36 initWithIdentifier:v37 location:v38 place:*(*&v69[8] + 40) visits:0 transitions:0];

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v39 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
        {
          v50 = objc_opt_class();
          v51 = NSStringFromClass(v50);
          v52 = NSStringFromSelector(aSelector);
          *v63 = 138412803;
          v64 = v51;
          v65 = 2112;
          v66 = v52;
          v67 = 2117;
          v68 = v13;
          _os_log_debug_impl(&dword_2304B3000, v39, OS_LOG_TYPE_DEBUG, "%@, %@, learnedLocationOfInterest, %{sensitive}@", v63, 0x20u);
        }
      }

      _Block_object_dispose(v69, 8);
    }

    v40 = [objc_alloc(MEMORY[0x277D01170]) initWithLearnedLocationOfInterest:v13];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v41 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
      {
        v47 = objc_opt_class();
        v48 = NSStringFromClass(v47);
        v49 = NSStringFromSelector(aSelector);
        *v69 = 138412803;
        *&v69[4] = v48;
        *&v69[12] = 2112;
        *&v69[14] = v49;
        *&v69[22] = 2117;
        v70 = v40;
        _os_log_debug_impl(&dword_2304B3000, v41, OS_LOG_TYPE_DEBUG, "%@, %@, output locationOfInterest, %{sensitive}@", v69, 0x20u);
      }
    }

    _Block_object_dispose(buf, 8);
    objc_autoreleasePoolPop(v10);
  }

  else
  {
    v42 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v42, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: pLocationOfInterest", buf, 2u);
    }

    v40 = 0;
  }

  return v40;
}

void __64__RTPredictedContextManager__convertLocationOfInterest_sources___block_invoke(uint64_t a1, void *a2)
{
  v416[1] = *MEMORY[0x277D85DE8];
  v343 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v226 = objc_opt_class();
      v227 = NSStringFromClass(v226);
      v228 = NSStringFromSelector(*(a1 + 72));
      *buf = 138412803;
      *&buf[4] = v227;
      *&buf[12] = 2112;
      *&buf[14] = v228;
      *&buf[22] = 2117;
      v411 = v343;
      _os_log_debug_impl(&dword_2304B3000, v2, OS_LOG_TYPE_DEBUG, "%@, %@, source, %{sensitive}@", buf, 0x20u);
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    context = v343;
    v390 = 0;
    v391 = &v390;
    v392 = 0x3032000000;
    v393 = __Block_byref_object_copy__188;
    v394 = __Block_byref_object_dispose__188;
    v395 = 0;
    *v413 = 0;
    *&v413[8] = v413;
    *&v413[16] = 0x3032000000;
    v414 = __Block_byref_object_copy__188;
    *&v415 = __Block_byref_object_dispose__188;
    *(&v415 + 1) = 0;
    v3 = dispatch_semaphore_create(0);
    v4 = objc_alloc(MEMORY[0x277CCA970]);
    v5 = [context usageDate];
    v6 = [context usageDate];
    v350 = [v4 initWithStartDate:v5 endDate:v6];

    v7 = a1;
    v352 = [[RTMapsSupportOptions alloc] initWithDateInterval:v350 location:*(a1 + 40) distance:50.0];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v8 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v241 = objc_opt_class();
        v242 = NSStringFromClass(v241);
        v243 = NSStringFromSelector(*(a1 + 72));
        *buf = 138412803;
        *&buf[4] = v242;
        *&buf[12] = 2112;
        *&buf[14] = v243;
        *&buf[22] = 2117;
        v411 = v352;
        _os_log_debug_impl(&dword_2304B3000, v8, OS_LOG_TYPE_DEBUG, "%@, %@, fetching maps viewed places with options, %{sensitive}@", buf, 0x20u);
      }

      v7 = a1;
    }

    v9 = [*(v7 + 32) mapsSupportManager];
    v386[0] = MEMORY[0x277D85DD0];
    v386[1] = 3221225472;
    v386[2] = __64__RTPredictedContextManager__convertLocationOfInterest_sources___block_invoke_304;
    v386[3] = &unk_2788C4490;
    v388 = &v390;
    v389 = v413;
    v10 = v3;
    v387 = v10;
    [v9 fetchHistoryEntryPlaceDisplaysWithOptions:v352 handler:v386];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v11 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        v14 = NSStringFromSelector(*(a1 + 72));
        v15 = v391[5];
        v16 = [v15 count];
        v17 = *(*&v413[8] + 40);
        *buf = 138413315;
        *&buf[4] = v13;
        *&buf[12] = 2112;
        *&buf[14] = v14;
        *&buf[22] = 2117;
        v411 = v15;
        *v412 = 2048;
        *&v412[2] = v16;
        *&v412[10] = 2112;
        *&v412[12] = v17;
        _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_INFO, "%@, %@, fetched maps viewed places, %{sensitive}@, count, %lu, error, %@", buf, 0x34u);
      }
    }

    v18 = v10;
    v19 = [MEMORY[0x277CBEAA8] now];
    v20 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(v18, v20))
    {
      v21 = [MEMORY[0x277CBEAA8] now];
      [v21 timeIntervalSinceDate:v19];
      v23 = v22;
      v24 = objc_opt_new();
      v25 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_148];
      v26 = [MEMORY[0x277CCACC8] callStackSymbols];
      v27 = [v26 filteredArrayUsingPredicate:v25];
      v28 = [v27 firstObject];

      [v24 submitToCoreAnalytics:v28 type:1 duration:v23];
      v29 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_2304B3000, v29, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
      }

      v30 = MEMORY[0x277CCA9B8];
      v404 = *MEMORY[0x277CCA450];
      *buf = @"semaphore wait timeout";
      v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v404 count:1];
      v32 = [v30 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v31];

      if (v32)
      {
        v33 = v32;
      }
    }

    else
    {
      v32 = 0;
    }

    v71 = v32;
    if (v71 || *(*&v413[8] + 40))
    {
      v72 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
      if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
      {
        v229 = objc_opt_class();
        v230 = NSStringFromClass(v229);
        v231 = NSStringFromSelector(*(a1 + 72));
        v232 = *(*&v413[8] + 40);
        *buf = 138413058;
        *&buf[4] = v230;
        *&buf[12] = 2112;
        *&buf[14] = v231;
        *&buf[22] = 2112;
        v411 = v232;
        *v412 = 2112;
        *&v412[2] = v71;
        _os_log_error_impl(&dword_2304B3000, v72, OS_LOG_TYPE_ERROR, "%@, %@, error fetching mapItem from maps viewed places, %@, semaError, %@", buf, 0x2Au);
      }
    }

    v73 = [RTLearnedPlace alloc];
    v74 = objc_alloc_init(MEMORY[0x277CCAD78]);
    v75 = [*(a1 + 48) placeType];
    v76 = [v391[5] firstObject];
    v77 = [v76 mapItem];
    v78 = [MEMORY[0x277CBEAA8] date];
    v79 = [MEMORY[0x277CBEAA8] date];
    v80 = [(RTLearnedPlace *)v73 initWithIdentifier:v74 type:v75 typeSource:16 mapItem:v77 customLabel:0 creationDate:v78 expirationDate:v79];
    v81 = *(*(a1 + 56) + 8);
    v82 = *(v81 + 40);
    *(v81 + 40) = v80;

    _Block_object_dispose(v413, 8);
    _Block_object_dispose(&v390, 8);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v34 = v343;
      v390 = 0;
      v391 = &v390;
      v392 = 0x3032000000;
      v393 = __Block_byref_object_copy__188;
      v394 = __Block_byref_object_dispose__188;
      v395 = 0;
      *v413 = 0;
      *&v413[8] = v413;
      *&v413[16] = 0x3032000000;
      v414 = __Block_byref_object_copy__188;
      *&v415 = __Block_byref_object_dispose__188;
      *(&v415 + 1) = 0;
      v35 = dispatch_semaphore_create(0);
      v36 = [v34 usageDate];
      [v36 timeIntervalSinceNow];
      v38 = v37 > 86400.0;

      if (v38)
      {
        v404 = 0;
        v405 = &v404;
        v406 = 0x3032000000;
        v407 = __Block_byref_object_copy__188;
        v408 = __Block_byref_object_dispose__188;
        v409 = 0;
        v39 = objc_alloc(MEMORY[0x277CCA970]);
        v40 = [v34 usageDate];
        v41 = [v34 usageDate];
        v42 = [v39 initWithStartDate:v40 endDate:v41];

        v43 = [[RTMapsSupportOptions alloc] initWithDateInterval:v42];
        v44 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
        v45 = a1;
        if (v44)
        {
          v46 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
          if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
          {
            v290 = objc_opt_class();
            v291 = NSStringFromClass(v290);
            v292 = NSStringFromSelector(*(a1 + 72));
            *buf = 138412803;
            *&buf[4] = v291;
            *&buf[12] = 2112;
            *&buf[14] = v292;
            *&buf[22] = 2117;
            v411 = v43;
            _os_log_debug_impl(&dword_2304B3000, v46, OS_LOG_TYPE_DEBUG, "%@, %@, fetching place maps entry routes with options, %{sensitive}@", buf, 0x20u);
          }

          v45 = a1;
        }

        v47 = [*(v45 + 32) mapsSupportManager];
        v381[0] = MEMORY[0x277D85DD0];
        v381[1] = 3221225472;
        v381[2] = __64__RTPredictedContextManager__convertLocationOfInterest_sources___block_invoke_307;
        v381[3] = &unk_2788C47D0;
        v383 = &v404;
        v384 = v413;
        v385 = &v390;
        v382 = v35;
        [v47 fetchHistoryEntryRoutesWithOptions:v43 handler:v381];

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          v48 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
          if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
          {
            v293 = objc_opt_class();
            v294 = NSStringFromClass(v293);
            v295 = NSStringFromSelector(*(a1 + 72));
            v296 = v405[5];
            v297 = [v296 count];
            v298 = v391[5];
            *buf = 138413315;
            *&buf[4] = v294;
            *&buf[12] = 2112;
            *&buf[14] = v295;
            *&buf[22] = 2117;
            v411 = v296;
            *v412 = 2048;
            *&v412[2] = v297;
            *&v412[10] = 2112;
            *&v412[12] = v298;
            _os_log_debug_impl(&dword_2304B3000, v48, OS_LOG_TYPE_DEBUG, "%@, %@, fetched maps entry routes, %{sensitive}@, count, %lu, error, %@", buf, 0x34u);
          }
        }

        _Block_object_dispose(&v404, 8);
      }

      else
      {
        v404 = 0;
        v405 = &v404;
        v406 = 0x3032000000;
        v407 = __Block_byref_object_copy__188;
        v408 = __Block_byref_object_dispose__188;
        v409 = 0;
        v104 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
        v105 = a1;
        if (v104)
        {
          v106 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
          if (os_log_type_enabled(v106, OS_LOG_TYPE_DEBUG))
          {
            v281 = objc_opt_class();
            v282 = NSStringFromClass(v281);
            v283 = NSStringFromSelector(*(a1 + 72));
            *buf = 138412546;
            *&buf[4] = v282;
            *&buf[12] = 2112;
            *&buf[14] = v283;
            _os_log_debug_impl(&dword_2304B3000, v106, OS_LOG_TYPE_DEBUG, "%@, %@, fetching active navigation", buf, 0x16u);
          }

          v105 = a1;
        }

        v107 = [*(v105 + 32) navigationManager];
        v376[0] = MEMORY[0x277D85DD0];
        v376[1] = 3221225472;
        v376[2] = __64__RTPredictedContextManager__convertLocationOfInterest_sources___block_invoke_308;
        v376[3] = &unk_2788C47D0;
        v378 = &v404;
        v379 = v413;
        v380 = &v390;
        v377 = v35;
        [v107 fetchNavigationRouteSummaryWithHandler:v376];

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          v108 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
          if (os_log_type_enabled(v108, OS_LOG_TYPE_DEBUG))
          {
            v284 = objc_opt_class();
            v285 = NSStringFromClass(v284);
            v286 = NSStringFromSelector(*(a1 + 72));
            v287 = v405[5];
            v288 = [v287 count];
            v289 = v391[5];
            *buf = 138413315;
            *&buf[4] = v285;
            *&buf[12] = 2112;
            *&buf[14] = v286;
            *&buf[22] = 2117;
            v411 = v287;
            *v412 = 2048;
            *&v412[2] = v288;
            *&v412[10] = 2112;
            *&v412[12] = v289;
            _os_log_debug_impl(&dword_2304B3000, v108, OS_LOG_TYPE_DEBUG, "%@, %@, fetched active navigation routes, %{sensitive}@, count, %lu, error, %@", buf, 0x34u);
          }
        }

        _Block_object_dispose(&v404, 8);
      }

      v109 = v35;
      v110 = [MEMORY[0x277CBEAA8] now];
      v111 = dispatch_time(0, 3600000000000);
      if (dispatch_semaphore_wait(v109, v111))
      {
        v112 = [MEMORY[0x277CBEAA8] now];
        [v112 timeIntervalSinceDate:v110];
        v114 = v113;
        v115 = objc_opt_new();
        v116 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_148];
        v117 = [MEMORY[0x277CCACC8] callStackSymbols];
        v118 = [v117 filteredArrayUsingPredicate:v116];
        v119 = [v118 firstObject];

        [v115 submitToCoreAnalytics:v119 type:1 duration:v114];
        v120 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v120, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_2304B3000, v120, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
        }

        v121 = MEMORY[0x277CCA9B8];
        v404 = *MEMORY[0x277CCA450];
        *buf = @"semaphore wait timeout";
        v122 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v404 count:1];
        v123 = [v121 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v122];

        if (v123)
        {
          v124 = v123;
        }
      }

      else
      {
        v123 = 0;
      }

      v125 = v123;
      if (v125 || v391[5])
      {
        v126 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
        if (os_log_type_enabled(v126, OS_LOG_TYPE_ERROR))
        {
          v244 = objc_opt_class();
          v245 = NSStringFromClass(v244);
          v246 = NSStringFromSelector(*(a1 + 72));
          v247 = v391[5];
          *buf = 138413058;
          *&buf[4] = v245;
          *&buf[12] = 2112;
          *&buf[14] = v246;
          *&buf[22] = 2112;
          v411 = v247;
          *v412 = 2112;
          *&v412[2] = v125;
          _os_log_error_impl(&dword_2304B3000, v126, OS_LOG_TYPE_ERROR, "%@, %@, error fetching map item from active navigation, %@, semaError, %@", buf, 0x2Au);
        }
      }

      v127 = [RTLearnedPlace alloc];
      v128 = objc_alloc_init(MEMORY[0x277CCAD78]);
      v129 = [*(a1 + 48) placeType];
      v130 = *(*&v413[8] + 40);
      v131 = [MEMORY[0x277CBEAA8] date];
      v132 = [MEMORY[0x277CBEAA8] date];
      v133 = [(RTLearnedPlace *)v127 initWithIdentifier:v128 type:v129 typeSource:16 mapItem:v130 customLabel:0 creationDate:v131 expirationDate:v132];
      v134 = *(*(a1 + 56) + 8);
      v135 = *(v134 + 40);
      *(v134 + 40) = v133;

      _Block_object_dispose(v413, 8);
      _Block_object_dispose(&v390, 8);
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v348 = v343;
        v390 = 0;
        v391 = &v390;
        v392 = 0x3032000000;
        v393 = __Block_byref_object_copy__188;
        v394 = __Block_byref_object_dispose__188;
        v395 = 0;
        *v413 = 0;
        *&v413[8] = v413;
        *&v413[16] = 0x3032000000;
        v414 = __Block_byref_object_copy__188;
        *&v415 = __Block_byref_object_dispose__188;
        *(&v415 + 1) = 0;
        v49 = dispatch_semaphore_create(0);
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          v50 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
          if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
          {
            v276 = objc_opt_class();
            v277 = NSStringFromClass(v276);
            v278 = NSStringFromSelector(*(a1 + 72));
            v279 = [v348 startDate];
            v280 = [v348 endDate];
            *buf = 138413058;
            *&buf[4] = v277;
            *&buf[12] = 2112;
            *&buf[14] = v278;
            *&buf[22] = 2112;
            v411 = v279;
            *v412 = 2112;
            *&v412[2] = v280;
            _os_log_debug_impl(&dword_2304B3000, v50, OS_LOG_TYPE_DEBUG, "%@, %@, fetching calendar events between startDate, %@, endDate, %@", buf, 0x2Au);
          }
        }

        v51 = [*(a1 + 32) eventManager];
        v52 = [v348 startDate];
        v53 = [v348 endDate];
        v372[0] = MEMORY[0x277D85DD0];
        v372[1] = 3221225472;
        v372[2] = __64__RTPredictedContextManager__convertLocationOfInterest_sources___block_invoke_310;
        v372[3] = &unk_2788C4490;
        v374 = &v390;
        v375 = v413;
        v54 = v49;
        v373 = v54;
        [v51 fetchEventsBetweenStartDate:v52 endDate:v53 handler:v372];

        v55 = v54;
        v56 = [MEMORY[0x277CBEAA8] now];
        v57 = dispatch_time(0, 3600000000000);
        if (dispatch_semaphore_wait(v55, v57))
        {
          v58 = [MEMORY[0x277CBEAA8] now];
          [v58 timeIntervalSinceDate:v56];
          v60 = v59;
          v61 = objc_opt_new();
          v62 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_148];
          v63 = [MEMORY[0x277CCACC8] callStackSymbols];
          v64 = [v63 filteredArrayUsingPredicate:v62];
          v65 = [v64 firstObject];

          [v61 submitToCoreAnalytics:v65 type:1 duration:v60];
          v66 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
          if (os_log_type_enabled(v66, OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_fault_impl(&dword_2304B3000, v66, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
          }

          v67 = MEMORY[0x277CCA9B8];
          v404 = *MEMORY[0x277CCA450];
          *buf = @"semaphore wait timeout";
          v68 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v404 count:1];
          v69 = [v67 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v68];

          if (v69)
          {
            v70 = v69;
          }
        }

        else
        {
          v69 = 0;
        }

        v342 = v69;
        if (v342)
        {
          v156 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
          if (os_log_type_enabled(v156, OS_LOG_TYPE_ERROR))
          {
            v273 = objc_opt_class();
            v274 = NSStringFromClass(v273);
            v275 = NSStringFromSelector(*(a1 + 72));
            *buf = 138412802;
            *&buf[4] = v274;
            *&buf[12] = 2112;
            *&buf[14] = v275;
            *&buf[22] = 2112;
            v411 = v342;
            _os_log_error_impl(&dword_2304B3000, v156, OS_LOG_TYPE_ERROR, "%@, %@, semaphore error fetching calendar events, %@", buf, 0x20u);
          }
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v157 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
          if (os_log_type_enabled(v157, OS_LOG_TYPE_INFO))
          {
            v158 = objc_opt_class();
            v159 = NSStringFromClass(v158);
            v160 = NSStringFromSelector(*(a1 + 72));
            v161 = v391[5];
            v162 = [v161 count];
            v163 = *(*&v413[8] + 40);
            *buf = 138413315;
            *&buf[4] = v159;
            *&buf[12] = 2112;
            *&buf[14] = v160;
            *&buf[22] = 2117;
            v411 = v161;
            *v412 = 2048;
            *&v412[2] = v162;
            *&v412[10] = 2112;
            *&v412[12] = v163;
            _os_log_impl(&dword_2304B3000, v157, OS_LOG_TYPE_INFO, "%@, %@, fetched calendar events, %{sensitive}@, count, %lu, error, %@", buf, 0x34u);
          }
        }

        v346 = [MEMORY[0x277CBEB18] array];
        v370 = 0u;
        v371 = 0u;
        v368 = 0u;
        v369 = 0u;
        obj = v391[5];
        v164 = [obj countByEnumeratingWithState:&v368 objects:v403 count:16];
        if (v164)
        {
          v351 = *v369;
          v344 = *MEMORY[0x277D01448];
          v345 = *MEMORY[0x277CCA450];
          do
          {
            v353 = v164;
            for (i = 0; i != v353; ++i)
            {
              if (*v369 != v351)
              {
                objc_enumerationMutation(obj);
              }

              v166 = *(*(&v368 + 1) + 8 * i);
              contexta = objc_autoreleasePoolPush();
              v167 = [v166 locationMapItemHandle];
              if (v167)
              {
                v168 = [v166 eventIdentifier];
                v169 = [v348 eventIdentifier];
                v170 = [v168 isEqualToString:v169];

                if (v170)
                {
                  *buf = 0;
                  *&buf[8] = buf;
                  *&buf[16] = 0x3032000000;
                  v411 = __Block_byref_object_copy__188;
                  *v412 = __Block_byref_object_dispose__188;
                  *&v412[8] = 0;
                  v404 = 0;
                  v405 = &v404;
                  v406 = 0x3032000000;
                  v407 = __Block_byref_object_copy__188;
                  v408 = __Block_byref_object_dispose__188;
                  v409 = 0;
                  v171 = dispatch_semaphore_create(0);

                  v172 = objc_alloc(MEMORY[0x277D011B0]);
                  v173 = objc_opt_class();
                  v174 = NSStringFromClass(v173);
                  v175 = [MEMORY[0x277CCA8D8] _coreroutineBundle];
                  v176 = [v175 bundleIdentifier];
                  v177 = [v172 initWithUseBackgroundTraits:1 analyticsIdentifier:v174 clientIdentifier:v176];

                  v178 = [*(a1 + 32) mapServiceManager];
                  v179 = [v166 locationMapItemHandle];
                  v364[0] = MEMORY[0x277D85DD0];
                  v364[1] = 3221225472;
                  v364[2] = __64__RTPredictedContextManager__convertLocationOfInterest_sources___block_invoke_313;
                  v364[3] = &unk_2788C61E8;
                  v366 = &v404;
                  v367 = buf;
                  v180 = v171;
                  v365 = v180;
                  [v178 fetchMapItemFromHandle:v179 options:v177 handler:v364];

                  v55 = v180;
                  v181 = [MEMORY[0x277CBEAA8] now];
                  v182 = dispatch_time(0, 3600000000000);
                  if (dispatch_semaphore_wait(v55, v182))
                  {
                    v183 = [MEMORY[0x277CBEAA8] now];
                    [v183 timeIntervalSinceDate:v181];
                    v185 = v184;
                    v186 = objc_opt_new();
                    v187 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_148];
                    v188 = [MEMORY[0x277CCACC8] callStackSymbols];
                    v189 = [v188 filteredArrayUsingPredicate:v187];
                    v190 = [v189 firstObject];

                    [v186 submitToCoreAnalytics:v190 type:1 duration:v185];
                    v191 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                    if (os_log_type_enabled(v191, OS_LOG_TYPE_FAULT))
                    {
                      *v396 = 0;
                      _os_log_fault_impl(&dword_2304B3000, v191, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v396, 2u);
                    }

                    v192 = MEMORY[0x277CCA9B8];
                    v416[0] = v345;
                    *v396 = @"semaphore wait timeout";
                    v193 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v396 forKeys:v416 count:1];
                    v194 = [v192 errorWithDomain:v344 code:15 userInfo:v193];

                    if (v194)
                    {
                      v195 = v194;
                    }
                  }

                  else
                  {
                    v194 = 0;
                  }

                  v196 = v194;
                  if (v196)
                  {
                    v197 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
                    if (os_log_type_enabled(v197, OS_LOG_TYPE_ERROR))
                    {
                      v204 = objc_opt_class();
                      v205 = NSStringFromClass(v204);
                      v206 = NSStringFromSelector(*(a1 + 72));
                      *v396 = 138412802;
                      *&v396[4] = v205;
                      v397 = 2112;
                      v398 = v206;
                      v399 = 2112;
                      v400 = v196;
                      _os_log_error_impl(&dword_2304B3000, v197, OS_LOG_TYPE_ERROR, "%@, %@, semaphore error fetching map items from calendar event, %@", v396, 0x20u);
                    }
                  }

                  if (v405[5])
                  {
                    [v346 addObject:?];
                  }

                  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                  {
                    v198 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
                    if (os_log_type_enabled(v198, OS_LOG_TYPE_INFO))
                    {
                      v199 = objc_opt_class();
                      v200 = NSStringFromClass(v199);
                      v201 = NSStringFromSelector(*(a1 + 72));
                      v202 = v405[5];
                      v203 = *(*&buf[8] + 40);
                      *v396 = 138413059;
                      *&v396[4] = v200;
                      v397 = 2112;
                      v398 = v201;
                      v399 = 2117;
                      v400 = v202;
                      v401 = 2112;
                      v402 = v203;
                      _os_log_impl(&dword_2304B3000, v198, OS_LOG_TYPE_INFO, "%@, %@, fetched map item, %{sensitive}@, error, %@", v396, 0x2Au);
                    }
                  }

                  _Block_object_dispose(&v404, 8);
                  _Block_object_dispose(buf, 8);
                }
              }

              objc_autoreleasePoolPop(contexta);
            }

            v164 = [obj countByEnumeratingWithState:&v368 objects:v403 count:16];
          }

          while (v164);
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          v207 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
          if (os_log_type_enabled(v207, OS_LOG_TYPE_DEBUG))
          {
            v299 = objc_opt_class();
            v300 = NSStringFromClass(v299);
            v301 = NSStringFromSelector(*(a1 + 72));
            v302 = [v346 count];
            v303 = *(*&v413[8] + 40);
            *buf = 138413315;
            *&buf[4] = v300;
            *&buf[12] = 2112;
            *&buf[14] = v301;
            *&buf[22] = 2117;
            v411 = v346;
            *v412 = 2048;
            *&v412[2] = v302;
            *&v412[10] = 2112;
            *&v412[12] = v303;
            _os_log_debug_impl(&dword_2304B3000, v207, OS_LOG_TYPE_DEBUG, "%@, %@, filtered map items, %{sensitive}@, count, %lu, error, %@", buf, 0x34u);
          }
        }

        v208 = [RTLearnedPlace alloc];
        v209 = objc_alloc_init(MEMORY[0x277CCAD78]);
        v210 = [*(a1 + 48) placeType];
        v211 = [v346 firstObject];
        v212 = [MEMORY[0x277CBEAA8] date];
        v213 = [MEMORY[0x277CBEAA8] date];
        v214 = [(RTLearnedPlace *)v208 initWithIdentifier:v209 type:v210 typeSource:1 mapItem:v211 customLabel:0 creationDate:v212 expirationDate:v213];
        v215 = *(*(a1 + 56) + 8);
        v216 = *(v215 + 40);
        *(v215 + 40) = v214;

        _Block_object_dispose(v413, 8);
        _Block_object_dispose(&v390, 8);
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3032000000;
          v411 = __Block_byref_object_copy__188;
          *v412 = __Block_byref_object_dispose__188;
          *&v412[8] = 0;
          v390 = 0;
          v391 = &v390;
          v392 = 0x3032000000;
          v393 = __Block_byref_object_copy__188;
          v394 = __Block_byref_object_dispose__188;
          v395 = 0;
          v83 = dispatch_semaphore_create(0);
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
          {
            v84 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
            if (os_log_type_enabled(v84, OS_LOG_TYPE_DEBUG))
            {
              v308 = objc_opt_class();
              v309 = NSStringFromClass(v308);
              v310 = NSStringFromSelector(*(a1 + 72));
              *v413 = 138412546;
              *&v413[4] = v309;
              *&v413[12] = 2112;
              *&v413[14] = v310;
              _os_log_debug_impl(&dword_2304B3000, v84, OS_LOG_TYPE_DEBUG, "%@, %@, fetching LOIs from homekit location", v413, 0x16u);
            }
          }

          v85 = [*(a1 + 32) learnedLocationManager];
          v86 = *(a1 + 40);
          v360[0] = MEMORY[0x277D85DD0];
          v360[1] = 3221225472;
          v360[2] = __64__RTPredictedContextManager__convertLocationOfInterest_sources___block_invoke_316;
          v360[3] = &unk_2788C4B58;
          v362 = buf;
          v363 = &v390;
          v87 = v83;
          v361 = v87;
          [v85 fetchLocationOfInterestAtLocation:v86 handler:v360];

          v88 = v87;
          v89 = [MEMORY[0x277CBEAA8] now];
          v90 = dispatch_time(0, 3600000000000);
          if (dispatch_semaphore_wait(v88, v90))
          {
            v91 = [MEMORY[0x277CBEAA8] now];
            [v91 timeIntervalSinceDate:v89];
            v93 = v92;
            v94 = objc_opt_new();
            v95 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_148];
            v96 = [MEMORY[0x277CCACC8] callStackSymbols];
            v97 = [v96 filteredArrayUsingPredicate:v95];
            v98 = [v97 firstObject];

            [v94 submitToCoreAnalytics:v98 type:1 duration:v93];
            v99 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
            if (os_log_type_enabled(v99, OS_LOG_TYPE_FAULT))
            {
              *v413 = 0;
              _os_log_fault_impl(&dword_2304B3000, v99, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v413, 2u);
            }

            v100 = MEMORY[0x277CCA9B8];
            v404 = *MEMORY[0x277CCA450];
            *v413 = @"semaphore wait timeout";
            v101 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v413 forKeys:&v404 count:1];
            v102 = [v100 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v101];

            if (v102)
            {
              v103 = v102;
            }
          }

          else
          {
            v102 = 0;
          }

          v233 = v102;
          if (v233 || v391[5])
          {
            v234 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
            if (os_log_type_enabled(v234, OS_LOG_TYPE_ERROR))
            {
              v304 = objc_opt_class();
              v305 = NSStringFromClass(v304);
              v306 = NSStringFromSelector(*(a1 + 72));
              v307 = v391[5];
              *v413 = 138413058;
              *&v413[4] = v305;
              *&v413[12] = 2112;
              *&v413[14] = v306;
              *&v413[22] = 2112;
              v414 = v307;
              LOWORD(v415) = 2112;
              *(&v415 + 2) = v233;
              _os_log_error_impl(&dword_2304B3000, v234, OS_LOG_TYPE_ERROR, "%@, %@, error fetching LOI from homekit location, %@, semaError, %@", v413, 0x2Au);
            }
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
          {
            v235 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
            if (os_log_type_enabled(v235, OS_LOG_TYPE_DEBUG))
            {
              v311 = objc_opt_class();
              v312 = NSStringFromClass(v311);
              v313 = NSStringFromSelector(*(a1 + 72));
              v314 = *(*&buf[8] + 40);
              v315 = v391[5];
              *v413 = 138413059;
              *&v413[4] = v312;
              *&v413[12] = 2112;
              *&v413[14] = v313;
              *&v413[22] = 2117;
              v414 = v314;
              LOWORD(v415) = 2112;
              *(&v415 + 2) = v315;
              _os_log_debug_impl(&dword_2304B3000, v235, OS_LOG_TYPE_DEBUG, "%@, %@, fetched loi from homekit location, %{sensitive}@, error, %@", v413, 0x2Au);
            }
          }

          v236 = *(*&buf[8] + 40);
          if (v236)
          {
            v237 = [v236 place];
            v238 = *(*(a1 + 56) + 8);
            v239 = *(v238 + 40);
            *(v238 + 40) = v237;
          }

          _Block_object_dispose(&v390, 8);
          _Block_object_dispose(buf, 8);
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x3032000000;
            v411 = __Block_byref_object_copy__188;
            *v412 = __Block_byref_object_dispose__188;
            *&v412[8] = 0;
            v390 = 0;
            v391 = &v390;
            v392 = 0x3032000000;
            v393 = __Block_byref_object_copy__188;
            v394 = __Block_byref_object_dispose__188;
            v395 = 0;
            v136 = dispatch_semaphore_create(0);
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
            {
              v137 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
              if (os_log_type_enabled(v137, OS_LOG_TYPE_DEBUG))
              {
                v318 = objc_opt_class();
                v319 = NSStringFromClass(v318);
                v320 = NSStringFromSelector(*(a1 + 72));
                *v413 = 138412546;
                *&v413[4] = v319;
                *&v413[12] = 2112;
                *&v413[14] = v320;
                _os_log_debug_impl(&dword_2304B3000, v137, OS_LOG_TYPE_DEBUG, "%@, %@, fetching vehicle events", v413, 0x16u);
              }
            }

            v138 = [*(a1 + 32) vehicleLocationProvider];
            v356[0] = MEMORY[0x277D85DD0];
            v356[1] = 3221225472;
            v356[2] = __64__RTPredictedContextManager__convertLocationOfInterest_sources___block_invoke_319;
            v356[3] = &unk_2788C4490;
            v358 = buf;
            v359 = &v390;
            v139 = v136;
            v357 = v139;
            [v138 fetchLastVehicleEventsWithHandler:v356];

            v140 = v139;
            v141 = [MEMORY[0x277CBEAA8] now];
            v142 = dispatch_time(0, 3600000000000);
            if (dispatch_semaphore_wait(v140, v142))
            {
              v143 = [MEMORY[0x277CBEAA8] now];
              [v143 timeIntervalSinceDate:v141];
              v145 = v144;
              v146 = objc_opt_new();
              v147 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_148];
              v148 = [MEMORY[0x277CCACC8] callStackSymbols];
              v149 = [v148 filteredArrayUsingPredicate:v147];
              v150 = [v149 firstObject];

              [v146 submitToCoreAnalytics:v150 type:1 duration:v145];
              v151 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
              if (os_log_type_enabled(v151, OS_LOG_TYPE_FAULT))
              {
                *v413 = 0;
                _os_log_fault_impl(&dword_2304B3000, v151, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v413, 2u);
              }

              v152 = MEMORY[0x277CCA9B8];
              v404 = *MEMORY[0x277CCA450];
              *v413 = @"semaphore wait timeout";
              v153 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v413 forKeys:&v404 count:1];
              v154 = [v152 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v153];

              if (v154)
              {
                v155 = v154;
              }
            }

            else
            {
              v154 = 0;
            }

            v248 = v154;
            if (v248 || v391[5])
            {
              v249 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
              if (os_log_type_enabled(v249, OS_LOG_TYPE_ERROR))
              {
                v316 = NSStringFromSelector(*(a1 + 72));
                v317 = v391[5];
                *v413 = 138412802;
                *&v413[4] = v316;
                *&v413[12] = 2112;
                *&v413[14] = v317;
                *&v413[22] = 2112;
                v414 = v248;
                _os_log_error_impl(&dword_2304B3000, v249, OS_LOG_TYPE_ERROR, "%@, failed to fetch vehicle event, fetchError, %@, semaError, %@", v413, 0x20u);
              }
            }

            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
            {
              v250 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
              if (os_log_type_enabled(v250, OS_LOG_TYPE_DEBUG))
              {
                v326 = objc_opt_class();
                v327 = NSStringFromClass(v326);
                v328 = NSStringFromSelector(*(a1 + 72));
                v329 = *(*&buf[8] + 40);
                *v413 = 138412803;
                *&v413[4] = v327;
                *&v413[12] = 2112;
                *&v413[14] = v328;
                *&v413[22] = 2117;
                v414 = v329;
                _os_log_debug_impl(&dword_2304B3000, v250, OS_LOG_TYPE_DEBUG, "%@, %@, fetched vehicle event, %{sensitive}@", v413, 0x20u);
              }
            }

            v251 = [*(*&buf[8] + 40) nearbyLocationOfInterest];

            v252 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
            if (v251)
            {
              if (v252)
              {
                v253 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
                if (os_log_type_enabled(v253, OS_LOG_TYPE_DEBUG))
                {
                  v330 = objc_opt_class();
                  v331 = NSStringFromClass(v330);
                  v332 = NSStringFromSelector(*(a1 + 72));
                  v333 = [*(*&buf[8] + 40) nearbyLocationOfInterest];
                  *v413 = 138412803;
                  *&v413[4] = v331;
                  *&v413[12] = 2112;
                  *&v413[14] = v332;
                  *&v413[22] = 2117;
                  v414 = v333;
                  _os_log_debug_impl(&dword_2304B3000, v253, OS_LOG_TYPE_DEBUG, "%@, %@, nearby vehicle output locationOfInterest, %{sensitive}@", v413, 0x20u);
                }
              }

              v254 = [*(*&buf[8] + 40) nearbyLocationOfInterest];
              v255 = [v254 identifier];
              v256 = *(*(a1 + 64) + 8);
              v257 = *(v256 + 40);
              *(v256 + 40) = v255;

              v258 = [RTLearnedPlace alloc];
              v259 = objc_alloc_init(MEMORY[0x277CCAD78]);
              v260 = [*(a1 + 48) placeType];
              v261 = [*(*&buf[8] + 40) nearbyLocationOfInterest];
              v262 = [v261 mapItem];
              v263 = [MEMORY[0x277CBEAA8] date];
              v264 = [MEMORY[0x277CBEAA8] date];
              v265 = [(RTLearnedPlace *)v258 initWithIdentifier:v259 type:v260 typeSource:0 mapItem:v262 customLabel:@"Parked Car" creationDate:v263 expirationDate:v264];
              v266 = *(*(a1 + 56) + 8);
              v267 = *(v266 + 40);
              *(v266 + 40) = v265;
            }

            else
            {
              if (v252)
              {
                v268 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
                if (os_log_type_enabled(v268, OS_LOG_TYPE_DEBUG))
                {
                  v339 = objc_opt_class();
                  v340 = NSStringFromClass(v339);
                  v341 = NSStringFromSelector(*(a1 + 72));
                  *v413 = 138412546;
                  *&v413[4] = v340;
                  *&v413[12] = 2112;
                  *&v413[14] = v341;
                  _os_log_debug_impl(&dword_2304B3000, v268, OS_LOG_TYPE_DEBUG, "%@, %@, fetched vehicle has no nearby locationOfInterest", v413, 0x16u);
                }
              }

              v269 = [RTLearnedPlace alloc];
              v259 = objc_alloc_init(MEMORY[0x277CCAD78]);
              v270 = [*(a1 + 48) placeType];
              v261 = [MEMORY[0x277CBEAA8] date];
              v262 = [MEMORY[0x277CBEAA8] date];
              v271 = [(RTLearnedPlace *)v269 initWithIdentifier:v259 type:v270 typeSource:0 mapItem:0 customLabel:@"Parked Car" creationDate:v261 expirationDate:v262];
              v272 = *(*(a1 + 56) + 8);
              v263 = *(v272 + 40);
              *(v272 + 40) = v271;
            }

            _Block_object_dispose(&v390, 8);
            _Block_object_dispose(buf, 8);
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
              {
                v217 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
                if (os_log_type_enabled(v217, OS_LOG_TYPE_DEBUG))
                {
                  v334 = objc_opt_class();
                  v335 = NSStringFromClass(v334);
                  v336 = NSStringFromSelector(*(a1 + 72));
                  v337 = objc_opt_class();
                  *buf = 138412803;
                  *&buf[4] = v335;
                  *&buf[12] = 2112;
                  *&buf[14] = v336;
                  *&buf[22] = 2117;
                  v411 = v337;
                  v338 = v337;
                  _os_log_debug_impl(&dword_2304B3000, v217, OS_LOG_TYPE_DEBUG, "%@, %@, propagatedLocation, %{sensitive}@", buf, 0x20u);
                }
              }

              v218 = [RTLearnedPlace alloc];
              v219 = objc_alloc_init(MEMORY[0x277CCAD78]);
              v220 = [*(a1 + 48) placeType];
              v221 = [MEMORY[0x277CBEAA8] date];
              v222 = [MEMORY[0x277CBEAA8] date];
              v223 = [(RTLearnedPlace *)v218 initWithIdentifier:v219 type:v220 typeSource:0 mapItem:0 customLabel:@"Propagated Location" creationDate:v221 expirationDate:v222];
              v224 = *(*(a1 + 56) + 8);
              v225 = *(v224 + 40);
              *(v224 + 40) = v223;
            }

            else
            {
              v240 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
              if (os_log_type_enabled(v240, OS_LOG_TYPE_ERROR))
              {
                v321 = objc_opt_class();
                v322 = NSStringFromClass(v321);
                v323 = NSStringFromSelector(*(a1 + 72));
                v324 = objc_opt_class();
                *buf = 138412802;
                *&buf[4] = v322;
                *&buf[12] = 2112;
                *&buf[14] = v323;
                *&buf[22] = 2112;
                v411 = v324;
                v325 = v324;
                _os_log_error_impl(&dword_2304B3000, v240, OS_LOG_TYPE_ERROR, "%@, %@, invalid source, %@", buf, 0x20u);
              }
            }
          }
        }
      }
    }
  }
}

void __64__RTPredictedContextManager__convertLocationOfInterest_sources___block_invoke_304(uint64_t a1, void *a2, void *a3)
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

void __64__RTPredictedContextManager__convertLocationOfInterest_sources___block_invoke_307(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v16 = v5;

  v9 = [*(*(*(a1 + 40) + 8) + 40) firstObject];
  v10 = [v9 destinationMapItem];
  v11 = *(*(a1 + 48) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  v13 = *(*(a1 + 56) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v6;
  v15 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

void __64__RTPredictedContextManager__convertLocationOfInterest_sources___block_invoke_308(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v16 = v5;

  v9 = [*(*(*(a1 + 40) + 8) + 40) firstObject];
  v10 = [v9 destinationMapItem];
  v11 = *(*(a1 + 48) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  v13 = *(*(a1 + 56) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v6;
  v15 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

void __64__RTPredictedContextManager__convertLocationOfInterest_sources___block_invoke_310(uint64_t a1, void *a2, void *a3)
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

void __64__RTPredictedContextManager__convertLocationOfInterest_sources___block_invoke_313(uint64_t a1, void *a2, void *a3)
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

void __64__RTPredictedContextManager__convertLocationOfInterest_sources___block_invoke_316(uint64_t a1, void *a2, void *a3)
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

void __64__RTPredictedContextManager__convertLocationOfInterest_sources___block_invoke_319(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 firstObject];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;
  v11 = v5;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)_convertContextLocation:(id)location
{
  v35 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  if (locationCopy)
  {
    v6 = objc_autoreleasePoolPush();
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v7 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = objc_opt_class();
        v9 = NSStringFromClass(v8);
        v10 = NSStringFromSelector(a2);
        v29 = 138412803;
        v30 = v9;
        v31 = 2112;
        v32 = v10;
        v33 = 2117;
        v34 = locationCopy;
        _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%@, %@, input contextLocation, %{sensitive}@", &v29, 0x20u);
      }
    }

    predictedContext = [locationCopy predictedContext];
    sources = [predictedContext sources];
    v13 = [(RTPredictedContextManager *)self _convertContextSources:sources];

    locationOfInterest = [locationCopy locationOfInterest];
    v15 = [(RTPredictedContextManager *)self _convertLocationOfInterest:locationOfInterest sources:v13];

    predictedContext2 = [locationCopy predictedContext];
    dateInterval = [predictedContext2 dateInterval];
    v18 = [(RTPredictedContextManager *)self _convertDateInterval:dateInterval];

    predictedContext3 = [locationCopy predictedContext];
    [predictedContext3 probability];
    v21 = v20;

    v22 = [objc_alloc(MEMORY[0x277D01230]) initWithLocationOfInterest:v15 dateInterval:v18 predictionSources:v13 probability:v21];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v23 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v24 = objc_opt_class();
        v25 = NSStringFromClass(v24);
        v26 = NSStringFromSelector(a2);
        v29 = 138412803;
        v30 = v25;
        v31 = 2112;
        v32 = v26;
        v33 = 2117;
        v34 = v22;
        _os_log_impl(&dword_2304B3000, v23, OS_LOG_TYPE_INFO, "%@, %@, output contextLocation, %{sensitive}@", &v29, 0x20u);
      }
    }

    objc_autoreleasePoolPop(v6);
  }

  else
  {
    v27 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v29) = 0;
      _os_log_error_impl(&dword_2304B3000, v27, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: pContextLocation", &v29, 2u);
    }

    v22 = 0;
  }

  return v22;
}

- (id)_convertContextTransport:(id)transport
{
  v25 = *MEMORY[0x277D85DE8];
  transportCopy = transport;
  if (transportCopy)
  {
    v5 = objc_autoreleasePoolPush();
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v6 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = objc_opt_class();
        v8 = NSStringFromClass(v7);
        v9 = NSStringFromSelector(a2);
        v19 = 138412803;
        v20 = v8;
        v21 = 2112;
        v22 = v9;
        v23 = 2117;
        v24 = transportCopy;
        _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@, %@, input contextTransport, %{sensitive}@", &v19, 0x20u);
      }
    }

    transportMode = [transportCopy transportMode];
    [transportCopy probability];
    v12 = [objc_alloc(MEMORY[0x277D01258]) initWithTransportMode:transportMode probability:v11];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v13 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        v16 = NSStringFromSelector(a2);
        v19 = 138412803;
        v20 = v15;
        v21 = 2112;
        v22 = v16;
        v23 = 2117;
        v24 = v12;
        _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_INFO, "%@, %@, output contextTransport, %{sensitive}@", &v19, 0x20u);
      }
    }

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v19) = 0;
      _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: pContextTransport", &v19, 2u);
    }

    v12 = 0;
  }

  return v12;
}

- (id)_convertContextTransition:(id)transition
{
  v42 = *MEMORY[0x277D85DE8];
  transitionCopy = transition;
  if (transitionCopy)
  {
    v6 = objc_autoreleasePoolPush();
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v7 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = objc_opt_class();
        v9 = NSStringFromClass(v8);
        v10 = NSStringFromSelector(a2);
        *buf = 138412803;
        v37 = v9;
        v38 = 2112;
        v39 = v10;
        v40 = 2117;
        v41 = transitionCopy;
        _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%@, %@, input contextTransition, %{sensitive}@", buf, 0x20u);
      }
    }

    array = [MEMORY[0x277CBEB18] array];
    predictedContextTransports = [transitionCopy predictedContextTransports];
    v30 = MEMORY[0x277D85DD0];
    v31 = 3221225472;
    v32 = __55__RTPredictedContextManager__convertContextTransition___block_invoke;
    v33 = &unk_2788D2730;
    selfCopy = self;
    v13 = array;
    v35 = v13;
    [predictedContextTransports enumerateObjectsUsingBlock:&v30];

    predictedContext = [transitionCopy predictedContext];
    dateInterval = [predictedContext dateInterval];
    v16 = [(RTPredictedContextManager *)self _convertDateInterval:dateInterval];

    predictedContext2 = [transitionCopy predictedContext];
    sources = [predictedContext2 sources];
    v19 = [(RTPredictedContextManager *)self _convertContextSources:sources];

    predictedContext3 = [transitionCopy predictedContext];
    [predictedContext3 probability];
    v22 = v21;

    v23 = [objc_alloc(MEMORY[0x277D01250]) initWithPredictedContextTransports:v13 predictedContextDateInterval:v16 predictionSources:v19 probability:v22];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v24 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = objc_opt_class();
        v26 = NSStringFromClass(v25);
        v27 = NSStringFromSelector(a2);
        *buf = 138412803;
        v37 = v26;
        v38 = 2112;
        v39 = v27;
        v40 = 2117;
        v41 = v23;
        _os_log_impl(&dword_2304B3000, v24, OS_LOG_TYPE_INFO, "%@, %@, output contextTransition, %{sensitive}@", buf, 0x20u);
      }
    }

    objc_autoreleasePoolPop(v6);
  }

  else
  {
    v28 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v28, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: pContextTransition", buf, 2u);
    }

    v23 = 0;
  }

  return v23;
}

uint64_t __55__RTPredictedContextManager__convertContextTransition___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _convertContextTransport:a2];
  if (v3)
  {
    [*(a1 + 40) addObject:v3];
  }

  return MEMORY[0x2821F96F8]();
}

- (id)_convertContextWorkout:(id)workout
{
  v36 = *MEMORY[0x277D85DE8];
  workoutCopy = workout;
  if (workoutCopy)
  {
    v6 = objc_autoreleasePoolPush();
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v7 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = objc_opt_class();
        v9 = NSStringFromClass(v8);
        v10 = NSStringFromSelector(a2);
        v30 = 138412802;
        v31 = v9;
        v32 = 2112;
        v33 = v10;
        v34 = 2112;
        v35 = workoutCopy;
        _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%@, %@, input contextWorkout, %@", &v30, 0x20u);
      }
    }

    predictedContext = [workoutCopy predictedContext];
    sources = [predictedContext sources];
    v13 = [(RTPredictedContextManager *)self _convertContextSources:sources];

    predictedContext2 = [workoutCopy predictedContext];
    dateInterval = [predictedContext2 dateInterval];
    v16 = [(RTPredictedContextManager *)self _convertDateInterval:dateInterval];

    workoutLocationType = [workoutCopy workoutLocationType];
    v18 = objc_alloc(MEMORY[0x277D01260]);
    predictedContext3 = [workoutCopy predictedContext];
    [predictedContext3 probability];
    v21 = v20;
    sourceBundleIdentifier = [workoutCopy sourceBundleIdentifier];
    v23 = [v18 initWithDateInterval:v16 predictionSources:v13 probability:sourceBundleIdentifier sourceBundleIdentifier:objc_msgSend(workoutCopy workoutActivityType:"workoutActivityType") workoutLocationType:{workoutLocationType, v21}];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v24 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = objc_opt_class();
        v26 = NSStringFromClass(v25);
        v27 = NSStringFromSelector(a2);
        v30 = 138412803;
        v31 = v26;
        v32 = 2112;
        v33 = v27;
        v34 = 2117;
        v35 = v23;
        _os_log_impl(&dword_2304B3000, v24, OS_LOG_TYPE_INFO, "%@, %@, output contextWorkout, %{sensitive}@", &v30, 0x20u);
      }
    }

    objc_autoreleasePoolPop(v6);
  }

  else
  {
    v28 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v30) = 0;
      _os_log_error_impl(&dword_2304B3000, v28, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: pContextWorkout", &v30, 2u);
    }

    v23 = 0;
  }

  return v23;
}

- (id)_convertContextResult:(id)result
{
  resultCopy = result;
  if (resultCopy)
  {
    v5 = objc_autoreleasePoolPush();
    array = [MEMORY[0x277CBEB18] array];
    predictedContextLocations = [resultCopy predictedContextLocations];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __51__RTPredictedContextManager__convertContextResult___block_invoke;
    v25[3] = &unk_2788D2758;
    v25[4] = self;
    v8 = array;
    v26 = v8;
    [predictedContextLocations enumerateObjectsUsingBlock:v25];

    predictedContextTransitions = [resultCopy predictedContextTransitions];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __51__RTPredictedContextManager__convertContextResult___block_invoke_2;
    v23[3] = &unk_2788D2780;
    v23[4] = self;
    v10 = v8;
    v24 = v10;
    [predictedContextTransitions enumerateObjectsUsingBlock:v23];

    predictedContextWorkouts = [resultCopy predictedContextWorkouts];
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __51__RTPredictedContextManager__convertContextResult___block_invoke_3;
    v20 = &unk_2788D27A8;
    selfCopy = self;
    v22 = v10;
    v12 = v10;
    [predictedContextWorkouts enumerateObjectsUsingBlock:&v17];

    selfCopy = [(RTPredictedContextManager *)self _extractAndConvertAnalytics:resultCopy, v17, v18, v19, v20, selfCopy];
    v14 = [objc_alloc(MEMORY[0x277D01248]) initWithPredictedContexts:v12 analytics:selfCopy];

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: pResult", buf, 2u);
    }

    v14 = 0;
  }

  return v14;
}

uint64_t __51__RTPredictedContextManager__convertContextResult___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _convertContextLocation:a2];
  if (v3)
  {
    [*(a1 + 40) addObject:v3];
  }

  return MEMORY[0x2821F96F8]();
}

uint64_t __51__RTPredictedContextManager__convertContextResult___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _convertContextTransition:a2];
  if (v3)
  {
    [*(a1 + 40) addObject:v3];
  }

  return MEMORY[0x2821F96F8]();
}

uint64_t __51__RTPredictedContextManager__convertContextResult___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _convertContextWorkout:a2];
  if (v3)
  {
    [*(a1 + 40) addObject:v3];
  }

  return MEMORY[0x2821F96F8]();
}

- (id)_extractAndConvertAnalytics:(id)analytics
{
  v40 = *MEMORY[0x277D85DE8];
  analyticsCopy = analytics;
  if (analyticsCopy)
  {
    context = objc_autoreleasePoolPush();
    [MEMORY[0x277CBEB38] dictionary];
    v30 = v29 = analyticsCopy;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    predictedContextAnalytics = [analyticsCopy predictedContextAnalytics];
    rolledLoiAnalyticsDictionarys = [predictedContextAnalytics rolledLoiAnalyticsDictionarys];

    v6 = [rolledLoiAnalyticsDictionarys countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v35;
      v31 = *v35;
      v32 = rolledLoiAnalyticsDictionarys;
      do
      {
        v9 = 0;
        v33 = v7;
        do
        {
          if (*v35 != v8)
          {
            objc_enumerationMutation(rolledLoiAnalyticsDictionarys);
          }

          v10 = *(*(&v34 + 1) + 8 * v9);
          v11 = objc_autoreleasePoolPush();
          identifier = [v10 identifier];
          if (identifier)
          {
            v13 = identifier;
            analytics = [v10 analytics];

            if (analytics)
            {
              v15 = objc_alloc(MEMORY[0x277CCAD78]);
              identifier2 = [v10 identifier];
              v17 = [v15 initWithUUIDBytes:{objc_msgSend(identifier2, "bytes")}];

              if (v17)
              {
                v18 = objc_alloc(MEMORY[0x277D01218]);
                analytics2 = [v10 analytics];
                loiIsMissingFromCurrentVisitHistory = [analytics2 loiIsMissingFromCurrentVisitHistory];
                analytics3 = [v10 analytics];
                isHome = [analytics3 isHome];
                analytics4 = [v10 analytics];
                v24 = [v18 initWithIdentifier:v17 loiIsMissingFromCurrentVisitHistory:loiIsMissingFromCurrentVisitHistory isHome:isHome isWork:{objc_msgSend(analytics4, "isWork")}];

                if (v24)
                {
                  [v30 setObject:v24 forKey:v17];
                }

                v8 = v31;
                rolledLoiAnalyticsDictionarys = v32;
                v7 = v33;
              }
            }
          }

          objc_autoreleasePoolPop(v11);
          ++v9;
        }

        while (v7 != v9);
        v7 = [rolledLoiAnalyticsDictionarys countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v7);
    }

    v25 = [objc_alloc(MEMORY[0x277D01210]) initWithRolledLOIResult:v30];
    objc_autoreleasePoolPop(context);
    analyticsCopy = v29;
  }

  else
  {
    v26 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v26, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: pResult", buf, 2u);
    }

    v25 = 0;
  }

  return v25;
}

- (id)_convertContextSources:(id)sources
{
  v29 = *MEMORY[0x277D85DE8];
  sourcesCopy = sources;
  v6 = sourcesCopy;
  if (sourcesCopy)
  {
    v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(sourcesCopy, "count")}];
    v8 = objc_autoreleasePoolPush();
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v9 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        v12 = NSStringFromSelector(a2);
        *buf = 138412803;
        v24 = v11;
        v25 = 2112;
        v26 = v12;
        v27 = 2117;
        v28 = v6;
        _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "%@, %@, input predictedContextSources, %{sensitive}@", buf, 0x20u);
      }
    }

    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __52__RTPredictedContextManager__convertContextSources___block_invoke;
    v20[3] = &unk_2788D27D0;
    v20[4] = self;
    v22 = a2;
    v13 = v7;
    v21 = v13;
    [v6 enumerateObjectsUsingBlock:v20];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v14 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = objc_opt_class();
        v16 = NSStringFromClass(v15);
        v17 = NSStringFromSelector(a2);
        *buf = 138412803;
        v24 = v16;
        v25 = 2112;
        v26 = v17;
        v27 = 2117;
        v28 = v13;
        _os_log_impl(&dword_2304B3000, v14, OS_LOG_TYPE_INFO, "%@, %@, output predictedContextSources, %{sensitive}@", buf, 0x20u);
      }
    }

    objc_autoreleasePoolPop(v8);
  }

  else
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v18, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: predictedContextSources", buf, 2u);
    }

    v13 = 0;
  }

  return v13;
}

void __52__RTPredictedContextManager__convertContextSources___block_invoke(uint64_t a1, void *a2)
{
  v125 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 identifier];
  if ([v4 isEqual:@"PCVisitHistoryPredictor"])
  {

LABEL_4:
    v7 = objc_opt_new();
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_7;
    }

    v8 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_6;
    }

    v105 = objc_opt_class();
    v18 = NSStringFromClass(v105);
    v19 = NSStringFromSelector(*(a1 + 48));
    v20 = [v3 identifier];
    *buf = 138413315;
    v116 = v18;
    v117 = 2112;
    v118 = v19;
    v119 = 2112;
    v120 = v20;
    v121 = 2117;
    v122 = v3;
    v123 = 2117;
    v124 = v7;
    v21 = "%@, %@, %@ -> RTSourceCoreRoutineLearnedLocation, %{sensitive}@ -> %{sensitive}@";
    goto LABEL_58;
  }

  v5 = [v3 identifier];
  v6 = [v5 isEqual:@"PCConstraintsWeighting"];

  if (v6)
  {
    goto LABEL_4;
  }

  v9 = [v3 identifier];
  if ([v9 isEqual:@"PCMapsViewedPlacesPredictor"])
  {
    v10 = [v3 predictedContextSource];
    v11 = [v10 hasMapsViewedPlace];

    if (v11)
    {
      v12 = objc_alloc(MEMORY[0x277D012E0]);
      v13 = MEMORY[0x277CBEAA8];
      v14 = [v3 predictedContextSource];
      v15 = [v14 mapsViewedPlace];
      [v15 usageTimeCFAbsolute];
      v16 = [v13 dateWithTimeIntervalSinceReferenceDate:?];
      v7 = [v12 initWithUsageDate:v16];

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v8 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          v17 = objc_opt_class();
          v18 = NSStringFromClass(v17);
          v19 = NSStringFromSelector(*(a1 + 48));
          v20 = [v3 identifier];
          *buf = 138413315;
          v116 = v18;
          v117 = 2112;
          v118 = v19;
          v119 = 2112;
          v120 = v20;
          v121 = 2117;
          v122 = v3;
          v123 = 2117;
          v124 = v7;
          v21 = "%@, %@, %@ -> RTSourceMapsSupportHistoryEntryPlaceDisplay, %{sensitive}@ -> %{sensitive}@";
LABEL_58:
          _os_log_debug_impl(&dword_2304B3000, v8, OS_LOG_TYPE_DEBUG, v21, buf, 0x34u);

          goto LABEL_59;
        }

        goto LABEL_6;
      }

      goto LABEL_7;
    }
  }

  else
  {
  }

  v22 = [v3 identifier];
  if (([v22 isEqual:@"PCScheduledTravelPredictor"] & 1) == 0)
  {

LABEL_21:
    v31 = [v3 identifier];
    if ([v31 isEqual:@"PCCalendarVisitPredictor"])
    {
      v32 = [v3 predictedContextSource];
      v33 = [v32 hasCalendarEvent];

      if (v33)
      {
        v114 = a1;
        v109 = objc_alloc(MEMORY[0x277D012B8]);
        v113 = [v3 predictedContextSource];
        v112 = [v113 calendarEvent];
        v106 = [v112 eventId];
        v34 = MEMORY[0x277CBEAA8];
        v111 = [v3 predictedContextSource];
        v110 = [v111 calendarEvent];
        [v110 startTimeCFAbsolute];
        v35 = [v34 dateWithTimeIntervalSinceReferenceDate:?];
        v36 = MEMORY[0x277CBEAA8];
        v108 = [v3 predictedContextSource];
        v107 = [v108 calendarEvent];
        [v107 endTimeCFAbsolute];
        v37 = [v36 dateWithTimeIntervalSinceReferenceDate:?];
        v38 = [v3 predictedContextSource];
        v39 = [v38 calendarEvent];
        v40 = [v39 titleOfEvent];
        v41 = [v3 predictedContextSource];
        v42 = [v41 calendarEvent];
        v43 = [v42 locationTitle];
        v7 = [v109 initWithEventIdentifier:v106 startDate:v35 endDate:v37 title:v40 location:v43 allDay:0 sharingStatus:0];

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          v8 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
          a1 = v114;
          if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_6;
          }

          v44 = objc_opt_class();
          v18 = NSStringFromClass(v44);
          v45 = NSStringFromSelector(*(v114 + 48));
          v46 = [v3 identifier];
          *buf = 138413315;
          v116 = v18;
          v117 = 2112;
          v118 = v45;
          v119 = 2112;
          v120 = v46;
          v121 = 2117;
          v122 = v3;
          v123 = 2117;
          v124 = v7;
          v47 = "%@, %@, %@ -> RTSourceEventKit, %{sensitive}@ -> %{sensitive}@";
          goto LABEL_50;
        }

LABEL_51:
        a1 = v114;
        goto LABEL_7;
      }
    }

    else
    {
    }

    v48 = [v3 identifier];
    if ([v48 isEqual:@"PCPHealthKitWorkout"])
    {
      v49 = [v3 predictedContextSource];
      v50 = [v49 hasHealthKitWorkout];

      if (v50)
      {
        v51 = a1;
        v52 = objc_alloc(MEMORY[0x277D012C0]);
        v53 = objc_alloc(MEMORY[0x277CCAD78]);
        v54 = [v3 predictedContextSource];
        v55 = [v54 healthKitWorkout];
        v56 = [v55 identifier];
        v57 = [v53 initWithUUIDBytes:{objc_msgSend(v56, "bytes")}];
        v58 = MEMORY[0x277CBEAA8];
        v59 = [v3 predictedContextSource];
        v60 = [v59 healthKitWorkout];
        [v60 startTimeCFAbsolute];
        v61 = [v58 dateWithTimeIntervalSinceReferenceDate:?];
        v7 = [v52 initWithWorkoutUUID:v57 startDate:v61];

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          v8 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
          a1 = v51;
          if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_6;
          }

          v62 = objc_opt_class();
          v18 = NSStringFromClass(v62);
          v45 = NSStringFromSelector(*(v51 + 48));
          v46 = [v3 identifier];
          *buf = 138413315;
          v116 = v18;
          v117 = 2112;
          v118 = v45;
          v119 = 2112;
          v120 = v46;
          v121 = 2117;
          v122 = v3;
          v123 = 2117;
          v124 = v7;
          v47 = "%@, %@, %@ -> RTSourceHealthKitWorkout, %{sensitive}@ -> %{sensitive}@";
          goto LABEL_50;
        }

LABEL_52:
        a1 = v51;
        goto LABEL_7;
      }
    }

    else
    {
    }

    v63 = [v3 identifier];
    if ([v63 isEqual:@"PCHomeKitPredictor"])
    {
      v64 = [v3 predictedContextSource];
      v65 = [v64 hasHomekitHome];

      if (v65)
      {
        v51 = a1;
        v66 = objc_alloc(MEMORY[0x277D012C8]);
        v67 = objc_alloc(MEMORY[0x277CCAD78]);
        v68 = [v3 predictedContextSource];
        v69 = [v68 homekitHome];
        v70 = [v69 identifier];
        v71 = [v67 initWithUUIDBytes:{objc_msgSend(v70, "bytes")}];
        v72 = [v71 UUIDString];
        v73 = [v3 predictedContextSource];
        v74 = [v73 homekitHome];
        v7 = [v66 initWithIdentifier:v72 primary:{objc_msgSend(v74, "primary")}];

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          v8 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
          a1 = v51;
          if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_6;
          }

          v75 = objc_opt_class();
          v18 = NSStringFromClass(v75);
          v45 = NSStringFromSelector(*(v51 + 48));
          v46 = [v3 identifier];
          *buf = 138413315;
          v116 = v18;
          v117 = 2112;
          v118 = v45;
          v119 = 2112;
          v120 = v46;
          v121 = 2117;
          v122 = v3;
          v123 = 2117;
          v124 = v7;
          v47 = "%@, %@, %@ -> RTSourceHomeKit, %{sensitive}@ -> %{sensitive}@";
          goto LABEL_50;
        }

        goto LABEL_52;
      }
    }

    else
    {
    }

    v76 = [v3 identifier];
    if ([v76 isEqual:@"PCParkedCarLocationPredictor"])
    {
      v77 = [v3 predictedContextSource];
      v78 = [v77 hasParkedCar];

      if (v78)
      {
        v114 = a1;
        v79 = objc_alloc(MEMORY[0x277D012F0]);
        v80 = objc_alloc(MEMORY[0x277CCAD78]);
        v81 = [v3 predictedContextSource];
        v82 = [v81 parkedCar];
        v83 = [v82 identifier];
        v84 = [v80 initWithUUIDBytes:{objc_msgSend(v83, "bytes")}];
        v85 = [v84 UUIDString];
        v86 = MEMORY[0x277CBEAA8];
        v87 = [v3 predictedContextSource];
        v88 = [v87 parkedCar];
        [v88 parkTimeCFAbsolute];
        v89 = [v86 dateWithTimeIntervalSinceReferenceDate:?];
        v7 = [v79 initWithIdentifier:v85 parkDate:v89];

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          v8 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
          a1 = v114;
          if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_6;
          }

          v90 = objc_opt_class();
          v18 = NSStringFromClass(v90);
          v45 = NSStringFromSelector(*(v114 + 48));
          v46 = [v3 identifier];
          *buf = 138413315;
          v116 = v18;
          v117 = 2112;
          v118 = v45;
          v119 = 2112;
          v120 = v46;
          v121 = 2117;
          v122 = v3;
          v123 = 2117;
          v124 = v7;
          v47 = "%@, %@, %@ -> RTSourceParkedCar, %{sensitive}@ -> %{sensitive}@";
          goto LABEL_50;
        }

        goto LABEL_51;
      }
    }

    else
    {
    }

    v91 = [v3 identifier];
    if (([v91 isEqual:@"PCPropagatedPositionPredictor"] & 1) == 0)
    {

      goto LABEL_54;
    }

    v92 = [v3 predictedContextSource];
    v93 = [v92 hasPropagatedLocation];

    if (!v93)
    {
      goto LABEL_54;
    }

    v94 = objc_alloc(MEMORY[0x277D012F8]);
    v95 = MEMORY[0x277CBEAA8];
    v96 = [v3 predictedContextSource];
    v97 = [v96 propagatedLocation];
    [v97 timeCFAbsolute];
    v98 = [v95 dateWithTimeIntervalSinceReferenceDate:?];
    v7 = [v94 initWithDate:v98];

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_7;
    }

    v8 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_6;
    }

    v99 = objc_opt_class();
    v18 = NSStringFromClass(v99);
    v45 = NSStringFromSelector(*(a1 + 48));
    v46 = [v3 identifier];
    *buf = 138413315;
    v116 = v18;
    v117 = 2112;
    v118 = v45;
    v119 = 2112;
    v120 = v46;
    v121 = 2117;
    v122 = v3;
    v123 = 2117;
    v124 = v7;
    v47 = "%@, %@, %@ -> RTSourcePropagatedLocation, %{sensitive}@ -> %{sensitive}@";
LABEL_50:
    _os_log_debug_impl(&dword_2304B3000, v8, OS_LOG_TYPE_DEBUG, v47, buf, 0x34u);

LABEL_59:
    goto LABEL_6;
  }

  v23 = [v3 predictedContextSource];
  v24 = [v23 hasMapsActiveNavigation];

  if (!v24)
  {
    goto LABEL_21;
  }

  v25 = objc_alloc(MEMORY[0x277D012E8]);
  v26 = MEMORY[0x277CBEAA8];
  v27 = [v3 predictedContextSource];
  v28 = [v27 mapsActiveNavigation];
  [v28 usageTimeCFAbsolute];
  v29 = [v26 dateWithTimeIntervalSinceReferenceDate:?];
  v7 = [v25 initWithUsageDate:v29 navigationWasInterrupted:0];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v30 = objc_opt_class();
      v18 = NSStringFromClass(v30);
      v19 = NSStringFromSelector(*(a1 + 48));
      v20 = [v3 identifier];
      *buf = 138413315;
      v116 = v18;
      v117 = 2112;
      v118 = v19;
      v119 = 2112;
      v120 = v20;
      v121 = 2117;
      v122 = v3;
      v123 = 2117;
      v124 = v7;
      v21 = "%@, %@, %@ -> RTSourceMapsSupportHistoryEntryRoute, %{sensitive}@ -> %{sensitive}@";
      goto LABEL_58;
    }

LABEL_6:
  }

LABEL_7:
  if (v7)
  {
    [*(a1 + 40) addObject:v7];
    goto LABEL_56;
  }

LABEL_54:
  v7 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v100 = objc_opt_class();
    v101 = NSStringFromClass(v100);
    v102 = NSStringFromSelector(*(a1 + 48));
    v103 = objc_opt_class();
    v104 = NSStringFromClass(v103);
    *buf = 138412802;
    v116 = v101;
    v117 = 2112;
    v118 = v102;
    v119 = 2112;
    v120 = v104;
    _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "%@, %@, failed to convert source, %@", buf, 0x20u);
  }

LABEL_56:
}

- (id)_getLocationOfInterestWithIdentifier:(id)identifier
{
  v44 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v5 = dispatch_semaphore_create(0);
    *v36 = 0;
    v37 = v36;
    v38 = 0x3032000000;
    v39 = __Block_byref_object_copy__188;
    v40 = __Block_byref_object_dispose__188;
    v41 = 0;
    v30 = 0;
    v31 = &v30;
    v32 = 0x3032000000;
    v33 = __Block_byref_object_copy__188;
    v34 = __Block_byref_object_dispose__188;
    v35 = 0;
    learnedLocationManager = [(RTPredictedContextManager *)self learnedLocationManager];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __66__RTPredictedContextManager__getLocationOfInterestWithIdentifier___block_invoke;
    v26[3] = &unk_2788C4B58;
    v28 = &v30;
    v29 = v36;
    v7 = v5;
    v27 = v7;
    [learnedLocationManager fetchLocationOfInterestWithIdentifier:identifierCopy handler:v26];

    v8 = v7;
    v9 = [MEMORY[0x277CBEAA8] now];
    v10 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(v8, v10))
    {
      v11 = [MEMORY[0x277CBEAA8] now];
      [v11 timeIntervalSinceDate:v9];
      v13 = v12;
      v14 = objc_opt_new();
      v15 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_148];
      callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
      v17 = [callStackSymbols filteredArrayUsingPredicate:v15];
      firstObject = [v17 firstObject];

      [v14 submitToCoreAnalytics:firstObject type:1 duration:v13];
      v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_2304B3000, v19, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
      }

      v20 = MEMORY[0x277CCA9B8];
      v42 = *MEMORY[0x277CCA450];
      *buf = @"semaphore wait timeout";
      v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v42 count:1];
      v22 = [v20 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v21];

      if (v22)
      {
        v23 = v22;
      }
    }

    v24 = v31[5];
    _Block_object_dispose(&v30, 8);

    _Block_object_dispose(v36, 8);
  }

  else
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v36 = 0;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: identifier", v36, 2u);
    }

    v24 = 0;
  }

  return v24;
}

void __66__RTPredictedContextManager__getLocationOfInterestWithIdentifier___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (PCAlgorithms)algorithms
{
  v63 = *MEMORY[0x277D85DE8];
  algorithms = self->_algorithms;
  if (algorithms)
  {
    v3 = algorithms;
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x277D3F848]);
    v7 = self->_algorithms;
    self->_algorithms = v6;

    if (self->_algorithms)
    {
      v8 = objc_opt_new();
      v9 = objc_opt_new();
      [v8 setLifecycleEvent:v9];

      lifecycleEvent = [v8 lifecycleEvent];
      [lifecycleEvent setType:0];

      [(RTPredictedContextManager *)self saveInteractionRecord:v8];
    }

    v11 = 0x277CBE000uLL;
    date = [MEMORY[0x277CBEAA8] date];
    v48 = 0;
    v13 = [RTPredictedContextUtility readAlgorithmStateWithError:&v48];
    v14 = v48;
    if (v13)
    {
      v15 = self->_algorithms;
      v47 = 0;
      [(PCAlgorithms *)v15 applyAlgorithmState:v13 outError:&v47];
      v16 = v47;
      if (v16 || [(RTPredictedContextManager *)self _shouldPerformManualDelete])
      {
        v46 = 0;
        v17 = [RTPredictedContextUtility deleteModelWithOutError:&v46];
        v18 = v46;
        v19 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v35 = objc_opt_class();
          v45 = NSStringFromClass(v35);
          v36 = NSStringFromSelector(a2);
          v37 = @"NO";
          if (v17)
          {
            v37 = @"YES";
          }

          v41 = v37;
          v42 = v36;
          date2 = [MEMORY[0x277CBEAA8] date];
          [date2 timeIntervalSinceDate:date];
          v39 = v38;
          +[RTRuntime footprint];
          *buf = 138413826;
          v50 = v45;
          v51 = 2112;
          v52 = v42;
          v53 = 2112;
          v54 = v41;
          v55 = 2112;
          v56 = v16;
          v57 = 2112;
          v58 = v18;
          v59 = 2048;
          v60 = v39;
          v61 = 2048;
          v62 = v40;
          _os_log_error_impl(&dword_2304B3000, v19, OS_LOG_TYPE_ERROR, "%@, %@, Potential malformed and unreadable algorithmState, attempted model deletion, success, %@ applyAlgorithmStateError, %@, deleteError, %@, latency, %.2f, footprint, %.4f MB", buf, 0x48u);
        }

        v11 = 0x277CBE000;
      }

      v20 = objc_opt_new();
      v21 = objc_opt_new();
      [v20 setApplyStateEvent:v21];

      applyStateEvent = [v20 applyStateEvent];
      [applyStateEvent setInState:v13];

      [(RTPredictedContextManager *)self saveInteractionRecord:v20];
    }

    else
    {
      v16 = 0;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v23 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v24 = objc_opt_class();
        v25 = NSStringFromClass(v24);
        v26 = a2;
        v27 = v25;
        NSStringFromSelector(v26);
        v28 = v44 = v16;
        if (v13)
        {
          v29 = @"YES";
        }

        else
        {
          v29 = @"NO";
        }

        date3 = [*(v11 + 2728) date];
        [date3 timeIntervalSinceDate:date];
        v32 = v31;
        +[RTRuntime footprint];
        *buf = 138413826;
        v50 = v27;
        v51 = 2112;
        v52 = v28;
        v53 = 2112;
        v54 = v29;
        v55 = 2112;
        v56 = v14;
        v57 = 2112;
        v58 = v44;
        v59 = 2048;
        v60 = v32;
        v61 = 2048;
        v62 = v33;
        _os_log_impl(&dword_2304B3000, v23, OS_LOG_TYPE_INFO, "%@, %@, applyAlgorithmState, algorithmState, %@, readAlgorithmStateError, %@, applyAlgorithmStateError, %@, latency, %.2f, footprint, %.4f MB", buf, 0x48u);

        v16 = v44;
      }
    }

    v3 = self->_algorithms;
  }

  return v3;
}

- (BOOL)_shouldPerformManualDelete
{
  platform = [(RTPredictedContextManager *)self platform];
  if ([platform internalInstall])
  {
    defaultsManager = [(RTPredictedContextManager *)self defaultsManager];
    v5 = [defaultsManager objectForKey:@"RTDefaultsPredictedContextManagerModelDeleteFlag"];
    v6 = v5 != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setAlgorithms:(id)algorithms
{
  v15 = *MEMORY[0x277D85DE8];
  algorithmsCopy = algorithms;
  if (algorithmsCopy)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315394;
      v12 = "[RTPredictedContextManager setAlgorithms:]";
      v13 = 1024;
      v14 = 2277;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: !algorithms (in %s:%d)", &v11, 0x12u);
    }
  }

  algorithms = self->_algorithms;
  if (algorithms != algorithmsCopy)
  {
    if (!algorithmsCopy && algorithms)
    {
      v8 = objc_opt_new();
      v9 = objc_opt_new();
      [v8 setLifecycleEvent:v9];

      lifecycleEvent = [v8 lifecycleEvent];
      [lifecycleEvent setType:1];

      [(RTPredictedContextManager *)self saveInteractionRecord:v8];
    }

    objc_storeStrong(&self->_algorithms, algorithms);
  }
}

- (void)_fetchPredictedContextWithOptions:(id)options handler:(id)handler
{
  v31 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  handlerCopy = handler;
  if (![(RTPredictedContextManager *)self _isSupported])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v10 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        v13 = NSStringFromSelector(a2);
        *buf = 138412546;
        v28 = v12;
        v29 = 2112;
        v30 = v13;
        _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "%@, %@, Platform Not Supported", buf, 0x16u);
      }
    }

    v14 = MEMORY[0x277CCA9B8];
    v15 = *MEMORY[0x277D01448];
    v25 = *MEMORY[0x277CCA450];
    v26 = @"Predicted Context unavailable on this platform";
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    v17 = v14;
    v18 = v15;
    v19 = 1;
    goto LABEL_10;
  }

  if (![(RTPredictedContextManager *)self available])
  {
    v20 = MEMORY[0x277CCA9B8];
    v21 = *MEMORY[0x277D01448];
    v23 = *MEMORY[0x277CCA450];
    v24 = @"Resource temporarily unavailable; data access not available until first unlock after boot.";
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    v17 = v20;
    v18 = v21;
    v19 = 5;
LABEL_10:
    v22 = [v17 errorWithDomain:v18 code:v19 userInfo:v16];
    handlerCopy[2](handlerCopy, 0, v22);

    goto LABEL_11;
  }

  v9 = [[RTPredictedContextClient alloc] initWithClient:0 options:optionsCopy singleShot:1 handler:handlerCopy];
  [(RTPredictedContextManager *)self _addClient:v9];

LABEL_11:
}

- (void)fetchPredictedContextWithOptions:(id)options handler:(id)handler
{
  optionsCopy = options;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__RTPredictedContextManager_fetchPredictedContextWithOptions_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = optionsCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = optionsCopy;
  dispatch_async(queue, block);
}

- (void)setMonitorPredictedContext:(BOOL)context
{
  v46 = *MEMORY[0x277D85DE8];
  if (self->_monitorPredictedContext == context)
  {
    return;
  }

  contextCopy = context;
  self->_monitorPredictedContext = context;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = NSStringFromSelector(a2);
      v10 = v9;
      monitorPredictedContext = self->_monitorPredictedContext;
      v12 = @"NO";
      *buf = 138412802;
      v41 = v8;
      v42 = 2112;
      if (monitorPredictedContext)
      {
        v12 = @"YES";
      }

      v43 = v9;
      v44 = 2112;
      v45 = v12;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@, %@, monitorPredictedContext, %@", buf, 0x20u);
    }

    if (!self->_monitorPredictedContext)
    {
      goto LABEL_8;
    }
  }

  else if (!contextCopy)
  {
LABEL_8:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v13 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        v16 = NSStringFromSelector(a2);
        *buf = 138412546;
        v41 = v15;
        v42 = 2112;
        v43 = v16;
        _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_INFO, "%@, %@, stopping periodic trigger timer for predicted context", buf, 0x16u);
      }
    }

    visitManager = [(RTPredictedContextManager *)self visitManager];
    v18 = +[(RTNotification *)RTVisitManagerVisitIncidentNotification];
    [visitManager removeObserver:self fromNotification:v18];

    navigationManager = [(RTPredictedContextManager *)self navigationManager];
    v20 = +[(RTNotification *)RTNavigationManagerRouteSummaryNotification];
    [navigationManager removeObserver:self fromNotification:v20];

    motionActivityManager = [(RTPredictedContextManager *)self motionActivityManager];
    v22 = +[(RTNotification *)RTMotionActivityManagerNotificationDominantMotionActivityChange];
    [motionActivityManager removeObserver:self fromNotification:v22];

    [(RTPredictedContextManager *)self _invalidatePeriodicTriggerTimer];
    currentVisitType = self->_currentVisitType;
    self->_currentVisitType = 0;

    return;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      v27 = NSStringFromSelector(a2);
      *buf = 138412546;
      v41 = v26;
      v42 = 2112;
      v43 = v27;
      _os_log_impl(&dword_2304B3000, v24, OS_LOG_TYPE_INFO, "%@, %@, starting periodic trigger timer for predicted context", buf, 0x16u);
    }
  }

  visitManager2 = [(RTPredictedContextManager *)self visitManager];
  v29 = +[(RTNotification *)RTVisitManagerVisitIncidentNotification];
  [visitManager2 addObserver:self selector:sel_onVisitManagerNotification_ name:v29];

  navigationManager2 = [(RTPredictedContextManager *)self navigationManager];
  v31 = +[(RTNotification *)RTNavigationManagerRouteSummaryNotification];
  [navigationManager2 addObserver:self selector:sel_onNavigationNotification_ name:v31];

  motionActivityManager2 = [(RTPredictedContextManager *)self motionActivityManager];
  v33 = +[(RTNotification *)RTMotionActivityManagerNotificationDominantMotionActivityChange];
  [motionActivityManager2 addObserver:self selector:sel_onMotionActivityManagerNotification_ name:v33];

  if (!self->_currentVisitType)
  {
    v34 = objc_alloc(MEMORY[0x277D01340]);
    v35 = [MEMORY[0x277CBEB98] setWithObject:&unk_2845A0428];
    LOWORD(v38) = 0;
    v36 = [v34 initWithAscending:0 confidence:&unk_2845A2288 dateInterval:0 labelVisit:0 limit:&unk_2845A2288 sources:v35 redact:v38 filterPairedVisitEntries:?];

    visitManager3 = [(RTPredictedContextManager *)self visitManager];
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __56__RTPredictedContextManager_setMonitorPredictedContext___block_invoke;
    v39[3] = &unk_2788C4C98;
    v39[4] = self;
    v39[5] = a2;
    [visitManager3 fetchStoredVisitsWithOptions:v36 handler:v39];
  }

  [(RTPredictedContextManager *)self _startPeriodicTriggerTimer];
}

void __56__RTPredictedContextManager_setMonitorPredictedContext___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __56__RTPredictedContextManager_setMonitorPredictedContext___block_invoke_2;
  v12[3] = &unk_2788C4C70;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v15 = v5;
  v16 = v9;
  v10 = v5;
  v11 = v6;
  dispatch_async(v7, v12);
}

void __56__RTPredictedContextManager_setMonitorPredictedContext___block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
  if (v2)
  {
    if (!v3)
    {
      return;
    }

    v4 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      v7 = NSStringFromSelector(*(a1 + 56));
      v13 = 138412546;
      v14 = v6;
      v15 = 2112;
      v16 = v7;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%@, %@, could not fetch current visit type", &v13, 0x16u);
    }
  }

  else
  {
    if (v3)
    {
      v8 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        v11 = NSStringFromSelector(*(a1 + 56));
        v13 = 138412546;
        v14 = v10;
        v15 = 2112;
        v16 = v11;
        _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "%@, %@, fetched current visit while currentVisitType was nil", &v13, 0x16u);
      }
    }

    v12 = *(a1 + 40);
    v4 = [*(a1 + 48) firstObject];
    [v12 _onVisit:v4];
  }
}

- (void)simulatePredictedContextResult:(id)result handler:(id)handler
{
  resultCopy = result;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__RTPredictedContextManager_simulatePredictedContextResult_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = resultCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = resultCopy;
  dispatch_async(queue, block);
}

- (void)_simulatePredictedContextResult:(id)result handler:(id)handler
{
  v20 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  handlerCopy = handler;
  [(RTPredictedContextManager *)self setSimulatedPredictedContextResult:resultCopy];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = NSStringFromSelector(a2);
      simulatedPredictedContextResult = [(RTPredictedContextManager *)self simulatedPredictedContextResult];
      v14 = 138412802;
      v15 = v11;
      v16 = 2112;
      v17 = v12;
      v18 = 2112;
      v19 = simulatedPredictedContextResult;
      _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "%@, %@, property simulatedPredictedContextResult is set to %@", &v14, 0x20u);
    }
  }

  [(RTPredictedContextManager *)self _processPredictedContextResult:resultCopy reason:7];
  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, 0);
  }
}

- (id)_overrideKeyForFeatureOption:(unint64_t)option
{
  v8 = *MEMORY[0x277D85DE8];
  if (option <= 15)
  {
    if (option > 3)
    {
      if (option == 4)
      {
        return @"RTDefaultsFeatureExtractorLookbackDurationLocations";
      }

      if (option == 8)
      {
        return @"RTDefaultsFeatureExtractorLookbackDurationWorkouts";
      }
    }

    else
    {
      if (option == 1)
      {
        return @"RTDefaultsFeatureExtractorLookbackDurationVisits";
      }

      if (option == 2)
      {
        return @"RTDefaultsFeatureExtractorLookbackDurationLocationsOfInterest";
      }
    }
  }

  else if (option <= 63)
  {
    if (option == 16)
    {
      return @"RTDefaultsFeatureExtractorLookbackDurationMaps";
    }

    if (option == 32)
    {
      return @"RTDefaultsFeatureExtractorLookbackDurationCalendar";
    }
  }

  else
  {
    switch(option)
    {
      case 0x40uLL:
        return @"RTDefaultsFeatureExtractorLookbackDurationTransitions";
      case 0x80uLL:
        return @"RTDefaultsFeatureExtractorLookbackDurationMotionActivities";
      case 0x400uLL:
        return @"RTDefaultsFeatureExtractorLookbackDurationLOIsKnownPlaceType";
    }
  }

  v5 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = 134217984;
    optionCopy = option;
    _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "Missing override key for feature option: %lu", &v6, 0xCu);
  }

  return 0;
}

+ (id)_defaultLookbackDurations
{
  v5[8] = *MEMORY[0x277D85DE8];
  v4[0] = &unk_2845A0440;
  v4[1] = &unk_2845A0458;
  v5[0] = &unk_2845A2298;
  v5[1] = &unk_2845A2298;
  v4[2] = &unk_2845A0470;
  v4[3] = &unk_2845A0488;
  v5[2] = &unk_2845A22A8;
  v5[3] = &unk_2845A22B8;
  v4[4] = &unk_2845A04A0;
  v4[5] = &unk_2845A04B8;
  v5[4] = &unk_2845A2298;
  v5[5] = &unk_2845A2298;
  v4[6] = &unk_2845A04D0;
  v4[7] = &unk_2845A04E8;
  v5[6] = &unk_2845A2298;
  v5[7] = &unk_2845A2298;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:8];

  return v2;
}

+ (id)_dataCollectionDefaultLookbackDurations
{
  v2 = +[RTPredictedContextManager _defaultLookbackDurations];
  v3 = [v2 mutableCopy];
  [v3 setObject:&unk_2845A2298 forKeyedSubscript:&unk_2845A0488];
  v4 = [v3 copy];

  return v4;
}

- (id)_lookbackIntervalsWithDefaults:(id)defaults
{
  v73 = *MEMORY[0x277D85DE8];
  defaultsCopy = defaults;
  date = [MEMORY[0x277CBEAA8] date];
  v44 = [date dateByAddingTimeInterval:86400.0];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v4 = defaultsCopy;
  v46 = [v4 countByEnumeratingWithState:&v52 objects:v72 count:16];
  if (v46)
  {
    v43 = *v53;
    *&v5 = 138413314;
    v33 = v5;
    v42 = v4;
    do
    {
      v6 = 0;
      do
      {
        if (*v53 != v43)
        {
          objc_enumerationMutation(v4);
        }

        v7 = *(*(&v52 + 1) + 8 * v6);
        context = objc_autoreleasePoolPush();
        v8 = [v4 objectForKeyedSubscript:v7];
        [v8 doubleValue];
        v10 = v9;

        v11 = -[RTPredictedContextManager _overrideKeyForFeatureOption:](self, "_overrideKeyForFeatureOption:", [v7 unsignedIntegerValue]);
        defaultsManager = [(RTPredictedContextManager *)self defaultsManager];
        v13 = [defaultsManager objectForKey:v11];

        if (v13)
        {
          [v13 doubleValue];
          v10 = v14;
          v15 = @"Override";
        }

        else
        {
          v15 = @"Default";
        }

        v47 = v15;
        v16 = [date dateByAddingTimeInterval:{-v10, v33}];
        unsignedIntegerValue = [v7 unsignedIntegerValue];
        v18 = v44;
        if (unsignedIntegerValue != 32)
        {
          v18 = date;
        }

        v19 = v18;
        v20 = objc_alloc(MEMORY[0x277CCA970]);
        v51 = 0;
        v21 = [v20 rt_initWithStartDate:v16 endDate:v19 error:&v51];
        v22 = v51;

        if (v21)
        {
          [dictionary setObject:v21 forKeyedSubscript:v7];
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            goto LABEL_18;
          }

          v23 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
          {
            v24 = objc_opt_class();
            NSStringFromClass(v24);
            v39 = v37 = v22;
            NSStringFromSelector(a2);
            v25 = v36 = v11;
            unsignedIntegerValue2 = [v7 unsignedIntegerValue];
            v26 = -[RTPredictedContextManager _stringForFeatureOption:](self, "_stringForFeatureOption:", [v7 unsignedIntegerValue]);
            stringFromDate = [v16 stringFromDate];
            stringFromDate2 = [v19 stringFromDate];
            *buf = 138414082;
            v57 = v39;
            v58 = 2112;
            v59 = v25;
            v60 = 2048;
            v61 = unsignedIntegerValue2;
            v62 = 2112;
            v63 = v26;
            v64 = 2112;
            v65 = v47;
            v66 = 2048;
            v67 = v10;
            v68 = 2112;
            v69 = stringFromDate;
            v70 = 2112;
            v71 = stringFromDate2;
            _os_log_impl(&dword_2304B3000, v23, OS_LOG_TYPE_INFO, "%@, %@, Feature: %lu (%@), %@: %.2f, Interval: [%@ → %@]", buf, 0x52u);

            v11 = v36;
            v22 = v37;
          }
        }

        else
        {
          v23 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            v29 = objc_opt_class();
            v48 = NSStringFromClass(v29);
            v40 = NSStringFromSelector(a2);
            unsignedIntegerValue3 = [v7 unsignedIntegerValue];
            v30 = -[RTPredictedContextManager _stringForFeatureOption:](self, "_stringForFeatureOption:", [v7 unsignedIntegerValue]);
            localizedDescription = [v22 localizedDescription];
            *buf = v33;
            v57 = v48;
            v58 = 2112;
            v59 = v40;
            v60 = 2048;
            v61 = unsignedIntegerValue3;
            v62 = 2112;
            v63 = v30;
            v64 = 2112;
            v65 = localizedDescription;
            _os_log_error_impl(&dword_2304B3000, v23, OS_LOG_TYPE_ERROR, "%@, %@, Failed to create interval for feature %lu (%@): %@", buf, 0x34u);
          }
        }

        v4 = v42;
LABEL_18:

        objc_autoreleasePoolPop(context);
        ++v6;
      }

      while (v46 != v6);
      v46 = [v4 countByEnumeratingWithState:&v52 objects:v72 count:16];
    }

    while (v46);
  }

  return dictionary;
}

- (id)_stringForFeatureOption:(unint64_t)option
{
  v8 = *MEMORY[0x277D85DE8];
  if (option > 31)
  {
    if (option > 255)
    {
      switch(option)
      {
        case 0x100uLL:
          return @"HomeKitHomes";
        case 0x200uLL:
          return @"PropagatedLocations";
        case 0x400uLL:
          return @"LOIsKnownPlaceType";
      }
    }

    else
    {
      switch(option)
      {
        case 0x20uLL:
          return @"Calendar";
        case 0x40uLL:
          return @"Transitions";
        case 0x80uLL:
          return @"MotionActivities";
      }
    }
  }

  else if (option > 3)
  {
    switch(option)
    {
      case 4uLL:
        return @"Locations";
      case 8uLL:
        return @"Workouts";
      case 0x10uLL:
        return @"Maps";
    }
  }

  else
  {
    switch(option)
    {
      case 0uLL:
        return @"None";
      case 1uLL:
        return @"Visits";
      case 2uLL:
        return @"LOIs";
    }
  }

  v5 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = 134217984;
    optionCopy = option;
    _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "Unhandled feature option: %lu", &v6, 0xCu);
  }

  return @"Unknown";
}

- (void)fetchPredictedContextInputSignalsWithHandler:(id)handler
{
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __74__RTPredictedContextManager_fetchPredictedContextInputSignalsWithHandler___block_invoke;
  v7[3] = &unk_2788C4938;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

- (void)_fetchPredictedContextInputSignalsWithHandler:(id)handler
{
  v30 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = NSStringFromSelector(a2);
      *buf = 138412546;
      v23 = v8;
      v24 = 2112;
      v25 = v9;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@, %@, Fetching input signals from Feature Extractor", buf, 0x16u);
    }
  }

  _dataCollectionDefaultLookbackDurations = [objc_opt_class() _dataCollectionDefaultLookbackDurations];
  v11 = [(RTPredictedContextManager *)self _lookbackIntervalsWithDefaults:_dataCollectionDefaultLookbackDurations];

  featureExtractor = [(RTPredictedContextManager *)self featureExtractor];
  v21 = 0;
  v13 = [featureExtractor extractFeaturesWithLookbackIntervals:v11 operationType:4 outError:&v21];
  v14 = v21;

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      v18 = NSStringFromSelector(a2);
      v19 = v18;
      v20 = @"YES:";
      *buf = 138413058;
      v23 = v17;
      if (!v13)
      {
        v20 = @"NO";
      }

      v24 = 2112;
      v25 = v18;
      v26 = 2112;
      v27 = v20;
      v28 = 2112;
      v29 = v14;
      _os_log_impl(&dword_2304B3000, v15, OS_LOG_TYPE_INFO, "%@, %@, extracted input signals, %@, error, %@", buf, 0x2Au);
    }
  }

  handlerCopy[2](handlerCopy, v13, v14);
}

- (void)forceTrainModelWithHandler:(id)handler
{
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__RTPredictedContextManager_forceTrainModelWithHandler___block_invoke;
  v7[3] = &unk_2788C4938;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

- (void)_forceTrainModelWithHandler:(id)handler
{
  handlerCopy = handler;
  defaultsManager = [(RTPredictedContextManager *)self defaultsManager];
  [defaultsManager setObject:&unk_2845A0500 forKey:@"RTDefaultsPredictedContextManagerTrainAttemptedPolicy"];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __57__RTPredictedContextManager__forceTrainModelWithHandler___block_invoke;
  v8[3] = &unk_2788D27F8;
  v9 = handlerCopy;
  v10 = a2;
  v8[4] = self;
  v7 = handlerCopy;
  [(RTPredictedContextManager *)self _trainWithHandler:v8];
}

void __57__RTPredictedContextManager__forceTrainModelWithHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = NSStringFromSelector(*(a1 + 48));
      v10 = [objc_opt_class() stringFromTrainResult:a2];
      v12 = 138413058;
      v13 = v8;
      v14 = 2112;
      v15 = v9;
      v16 = 2112;
      v17 = v10;
      v18 = 2112;
      v19 = v5;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@, %@, result, %@, error, %@", &v12, 0x2Au);
    }
  }

  [*(a1 + 32) _processTrainingResult:a2];
  v11 = *(a1 + 40);
  if (v11)
  {
    (*(v11 + 16))(v11, v5);
  }
}

- (void)_processPredictedContextResult:(id)result reason:(int64_t)reason
{
  v30 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  v8 = objc_opt_new();
  clients = [(RTPredictedContextManager *)self clients];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __67__RTPredictedContextManager__processPredictedContextResult_reason___block_invoke;
  v19[3] = &unk_2788D2820;
  v22 = a2;
  v19[4] = self;
  v20 = resultCopy;
  v10 = v8;
  v21 = v10;
  reasonCopy = reason;
  v11 = resultCopy;
  [clients enumerateObjectsUsingBlock:v19];

  clients2 = [(RTPredictedContextManager *)self clients];
  [clients2 removeObjectsInArray:v10];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v16 = NSStringFromSelector(a2);
      clients3 = [(RTPredictedContextManager *)self clients];
      v18 = [clients3 count];
      *buf = 138412802;
      v25 = v15;
      v26 = 2112;
      v27 = v16;
      v28 = 2048;
      v29 = v18;
      _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_INFO, "%@, %@, postprocess, total client count, %lu", buf, 0x20u);
    }
  }

  [(RTPredictedContextManager *)self _updateMonitorPredictedContext];
}

void __67__RTPredictedContextManager__processPredictedContextResult_reason___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      v7 = NSStringFromSelector(*(a1 + 56));
      v8 = [v3 client];
      v9 = *(a1 + 40);
      v13 = 138413059;
      v14 = v6;
      v15 = 2112;
      v16 = v7;
      v17 = 2112;
      v18 = v8;
      v19 = 2117;
      v20 = v9;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%@, %@, fulfill client request, %@, result, %{sensitive}@", &v13, 0x2Au);
    }
  }

  if ([v3 singleShot])
  {
    v10 = [v3 handler];
    v11 = [*(a1 + 32) _filterResult:*(a1 + 40) forClient:v3];
    (v10)[2](v10, v11, 0);

    [*(a1 + 48) addObject:v3];
    goto LABEL_9;
  }

  if ([*(a1 + 32) _shouldAllClientsReceiveResultForInferenceReason:*(a1 + 64)])
  {
    goto LABEL_8;
  }

  v12 = *(a1 + 64);
  if (v12 == 1)
  {
    if (![*(a1 + 32) _isMonitoringClientEligibleToReceiveResultFromTriggerReasonSingleShot:v3])
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (v12 == 2 && [*(a1 + 32) _isMonitoringClientEligibleForTriggerReasonClientRegistration:v3])
  {
LABEL_8:
    [*(a1 + 32) _pushResult:*(a1 + 40) toMonitoringClient:v3];
  }

LABEL_9:
}

- (void)_pushResult:(id)result toMonitoringClient:(id)client
{
  v22 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  resultCopy = result;
  handler = [clientCopy handler];
  v10 = [(RTPredictedContextManager *)self _filterResult:resultCopy forClient:clientCopy];

  (handler)[2](handler, v10, 0);
  clientIdentity = [clientCopy clientIdentity];

  if (clientIdentity)
  {
    date = [MEMORY[0x277CBEAA8] date];
    monitoringClientLastCallbackDate = [(RTPredictedContextManager *)self monitoringClientLastCallbackDate];
    [monitoringClientLastCallbackDate setObject:date forKeyedSubscript:clientIdentity];
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      v17 = NSStringFromSelector(a2);
      v18 = 138412546;
      v19 = v16;
      v20 = 2112;
      v21 = v17;
      _os_log_impl(&dword_2304B3000, v14, OS_LOG_TYPE_INFO, "%@, %@, clientIdentity is nil so we skip tracking of the recent push", &v18, 0x16u);
    }
  }
}

- (BOOL)_isMonitoringClientEligibleForTriggerReasonClientRegistration:(id)registration
{
  v44 = *MEMORY[0x277D85DE8];
  registrationCopy = registration;
  clientIdentity = [registrationCopy clientIdentity];
  options = [registrationCopy options];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = NSStringFromSelector(a2);
      creationDate = [options creationDate];
      *buf = 138413058;
      v37 = v10;
      v38 = 2112;
      v39 = v11;
      v40 = 2112;
      v41 = clientIdentity;
      v42 = 2112;
      v43 = *&creationDate;
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "%@, %@, clientIdentity string, %@, options.creationDate, %@", buf, 0x2Au);
    }
  }

  defaultsManager = [(RTPredictedContextManager *)self defaultsManager];
  v14 = [defaultsManager objectForKey:@"RTDefaultsPredictedContextManagerClientRegistrationEligibilityInterval"];

  if (v14)
  {
    [v14 doubleValue];
    v16 = v15;
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    v19 = NSStringFromSelector(a2);
    NSLog(&cfstr_Override3f_0.isa, v18, v19, @"RTDefaultsPredictedContextManagerClientRegistrationEligibilityInterval", *&v16);

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v20 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = objc_opt_class();
        v22 = NSStringFromClass(v21);
        v23 = NSStringFromSelector(a2);
        *buf = 138413058;
        v37 = v22;
        v38 = 2112;
        v39 = v23;
        v40 = 2112;
        v41 = @"RTDefaultsPredictedContextManagerClientRegistrationEligibilityInterval";
        v42 = 2048;
        v43 = v16;
        _os_log_impl(&dword_2304B3000, v20, OS_LOG_TYPE_INFO, "%@, %@, override, %@, %.3f", buf, 0x2Au);
      }
    }
  }

  else
  {
    v16 = 900.0;
  }

  date = [MEMORY[0x277CBEAA8] date];
  creationDate2 = [options creationDate];
  [date timeIntervalSinceDate:creationDate2];
  v27 = v26;

  v28 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
  if (v27 >= v16)
  {
    if (v28)
    {
      v29 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        v35 = objc_opt_class();
        v31 = NSStringFromClass(v35);
        v32 = NSStringFromSelector(a2);
        *buf = 138412802;
        v37 = v31;
        v38 = 2112;
        v39 = v32;
        v40 = 2112;
        v41 = clientIdentity;
        v33 = "%@, %@, returning NO, client, %@";
        goto LABEL_20;
      }

LABEL_17:
    }
  }

  else if (v28)
  {
    v29 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      v30 = objc_opt_class();
      v31 = NSStringFromClass(v30);
      v32 = NSStringFromSelector(a2);
      *buf = 138412802;
      v37 = v31;
      v38 = 2112;
      v39 = v32;
      v40 = 2112;
      v41 = clientIdentity;
      v33 = "%@, %@, returning YES, client, %@";
LABEL_20:
      _os_log_debug_impl(&dword_2304B3000, v29, OS_LOG_TYPE_DEBUG, v33, buf, 0x20u);

      goto LABEL_17;
    }

    goto LABEL_17;
  }

  return v27 < v16;
}

- (BOOL)_isMonitoringClientEligibleToReceiveResultFromTriggerReasonSingleShot:(id)shot
{
  v47 = *MEMORY[0x277D85DE8];
  shotCopy = shot;
  clientIdentity = [(__CFString *)shotCopy clientIdentity];
  if (!clientIdentity && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = NSStringFromSelector(a2);
      v37 = 138412546;
      v38 = v9;
      v39 = 2112;
      v40 = v10;
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%@, %@, we cannot perform this check since, clientIdentity is nil, returning YES", &v37, 0x16u);
    }
  }

  monitoringClientLastCallbackDate = [(RTPredictedContextManager *)self monitoringClientLastCallbackDate];
  v12 = [monitoringClientLastCallbackDate objectForKeyedSubscript:clientIdentity];

  defaultsManager = [(RTPredictedContextManager *)self defaultsManager];
  v14 = [defaultsManager objectForKey:@"RTDefaultsPredictedContextManagerMonitoringClientCallbackLimitInterval"];

  if ([(__CFString *)shotCopy singleShot])
  {
    date = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    if (os_log_type_enabled(date, OS_LOG_TYPE_ERROR))
    {
      v34 = objc_opt_class();
      v35 = NSStringFromClass(v34);
      v36 = NSStringFromSelector(a2);
      v37 = 138412802;
      v38 = v35;
      v39 = 2112;
      v40 = v36;
      v41 = 2112;
      v42 = shotCopy;
      _os_log_error_impl(&dword_2304B3000, date, OS_LOG_TYPE_ERROR, "%@, %@, This method should never be called for singleShot clients, client, %@", &v37, 0x20u);
    }

    goto LABEL_9;
  }

  if (v14)
  {
    [v14 doubleValue];
    v18 = v17;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v19 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = objc_opt_class();
        v21 = NSStringFromClass(v20);
        v22 = NSStringFromSelector(a2);
        v37 = 138413058;
        v38 = v21;
        v39 = 2112;
        v40 = v22;
        v41 = 2112;
        v42 = @"RTDefaultsPredictedContextManagerMonitoringClientCallbackLimitInterval";
        v43 = 2048;
        v44 = v18;
        _os_log_impl(&dword_2304B3000, v19, OS_LOG_TYPE_INFO, "%@, %@, override, %@, %.3f", &v37, 0x2Au);
      }
    }

    if (v12)
    {
LABEL_16:
      date = [MEMORY[0x277CBEAA8] date];
      [date timeIntervalSinceDate:v12];
      v24 = v23;
      v16 = v23 >= v18;
      if (v23 < v18)
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
LABEL_9:
          v16 = 0;
LABEL_30:

          goto LABEL_31;
        }

        v25 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
        if (!os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
LABEL_28:

          goto LABEL_30;
        }

        v32 = objc_opt_class();
        v27 = NSStringFromClass(v32);
        v28 = NSStringFromSelector(a2);
        v37 = 138413314;
        v38 = v27;
        v39 = 2112;
        v40 = v28;
        v41 = 2112;
        v42 = clientIdentity;
        v43 = 2048;
        v44 = v24;
        v45 = 2048;
        v46 = v18;
        _os_log_impl(&dword_2304B3000, v25, OS_LOG_TYPE_INFO, "%@, %@, Client '%@' last callback was %.1f seconds ago (required min %.1f). Not eligible to piggy back single shot.", &v37, 0x34u);
      }

      else
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          v16 = 1;
          goto LABEL_30;
        }

        v25 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
        if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_28;
        }

        v26 = objc_opt_class();
        v27 = NSStringFromClass(v26);
        v28 = NSStringFromSelector(a2);
        v37 = 138413314;
        v38 = v27;
        v39 = 2112;
        v40 = v28;
        v41 = 2112;
        v42 = clientIdentity;
        v43 = 2048;
        v44 = v24;
        v45 = 2048;
        v46 = v18;
        _os_log_debug_impl(&dword_2304B3000, v25, OS_LOG_TYPE_DEBUG, "%@,%@, Client '%@' last callback was %.1f seconds ago (required min %.1f). Eligible to piggyback to single shot.", &v37, 0x34u);
      }

      goto LABEL_28;
    }
  }

  else
  {
    v18 = 600.0;
    if (v12)
    {
      goto LABEL_16;
    }
  }

  v16 = 1;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    date = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    if (os_log_type_enabled(date, OS_LOG_TYPE_INFO))
    {
      v29 = objc_opt_class();
      v30 = NSStringFromClass(v29);
      v31 = NSStringFromSelector(a2);
      v37 = 138412802;
      v38 = v30;
      v39 = 2112;
      v40 = v31;
      v41 = 2112;
      v42 = clientIdentity;
      _os_log_impl(&dword_2304B3000, date, OS_LOG_TYPE_INFO, "%@, %@, Client '%@' has no previous callback date. Eligible for single shot.", &v37, 0x20u);
    }

    goto LABEL_30;
  }

LABEL_31:

  return v16;
}

- (id)_filterResult:(id)result forClient:(id)client
{
  v76 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  clientCopy = client;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = NSStringFromSelector(a2);
      options = [clientCopy options];
      predictedContexts = [resultCopy predictedContexts];
      *buf = 138413314;
      v67 = v8;
      v68 = 2112;
      v69 = v9;
      v70 = 2112;
      v71 = clientCopy;
      v72 = 2112;
      v73 = options;
      v74 = 2048;
      v75 = [predictedContexts count];
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@, %@, client, %@, options, %@, input predictedContext count, %lu", buf, 0x34u);
    }
  }

  options2 = [clientCopy options];
  forecastWindowDateInterval = [options2 forecastWindowDateInterval];

  if (forecastWindowDateInterval)
  {
    forecastWindowDateInterval2 = [options2 forecastWindowDateInterval];
  }

  else
  {
    v15 = objc_alloc(MEMORY[0x277CCA970]);
    v16 = [MEMORY[0x277CBEAA8] now];
    v17 = MEMORY[0x277CBEAA8];
    [options2 forecastWindowTimeInterval];
    v18 = [v17 dateWithTimeIntervalSinceNow:?];
    forecastWindowDateInterval2 = [v15 initWithStartDate:v16 endDate:v18];
  }

  filterContextTypeMask = [options2 filterContextTypeMask];
  options3 = [clientCopy options];
  filterLocations = [options3 filterLocations];

  options4 = [clientCopy options];
  resultSortDescriptors = [options4 resultSortDescriptors];

  predictedContexts2 = [resultCopy predictedContexts];
  v24 = MEMORY[0x277CCAC30];
  v59[0] = MEMORY[0x277D85DD0];
  v59[1] = 3221225472;
  v59[2] = __53__RTPredictedContextManager__filterResult_forClient___block_invoke;
  v59[3] = &unk_2788D2870;
  v59[4] = self;
  v62 = a2;
  v52 = forecastWindowDateInterval2;
  v60 = v52;
  v63 = filterContextTypeMask & 1;
  v64 = (filterContextTypeMask & 2) != 0;
  v65 = (filterContextTypeMask & 4) != 0;
  v25 = filterLocations;
  v61 = v25;
  v26 = [v24 predicateWithBlock:v59];
  v27 = [predictedContexts2 filteredArrayUsingPredicate:v26];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v28 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      v42 = objc_opt_class();
      v43 = NSStringFromClass(v42);
      v44 = NSStringFromSelector(a2);
      v45 = [v27 count];
      *buf = 138412802;
      v67 = v43;
      v68 = 2112;
      v69 = v44;
      v70 = 2048;
      v71 = v45;
      _os_log_debug_impl(&dword_2304B3000, v28, OS_LOG_TYPE_DEBUG, "%@, %@, predictedContext count after filtering by date, type mask, and location, %lu", buf, 0x20u);
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v29 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      v46 = objc_opt_class();
      v47 = NSStringFromClass(v46);
      v48 = NSStringFromSelector(a2);
      *buf = 138412546;
      v67 = v47;
      v68 = 2112;
      v69 = v48;
      _os_log_debug_impl(&dword_2304B3000, v29, OS_LOG_TYPE_DEBUG, "%@, %@, sorting contexts", buf, 0x16u);
    }
  }

  v30 = [v27 sortedArrayUsingDescriptors:{resultSortDescriptors, v52}];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v31 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      v49 = objc_opt_class();
      v50 = NSStringFromClass(v49);
      v51 = NSStringFromSelector(a2);
      *buf = 138412546;
      v67 = v50;
      v68 = 2112;
      v69 = v51;
      _os_log_debug_impl(&dword_2304B3000, v31, OS_LOG_TYPE_DEBUG, "%@, %@, sorted contexts", buf, 0x16u);
    }
  }

  v58[0] = MEMORY[0x277D85DD0];
  v58[1] = 3221225472;
  v58[2] = __53__RTPredictedContextManager__filterResult_forClient___block_invoke_501;
  v58[3] = &unk_2788D2898;
  v58[4] = self;
  v58[5] = a2;
  [v30 enumerateObjectsUsingBlock:v58];
  v32 = objc_alloc(MEMORY[0x277D01248]);
  analytics = [resultCopy analytics];
  v34 = [v32 initWithPredictedContexts:v30 analytics:analytics];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v35 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      v36 = objc_opt_class();
      v37 = NSStringFromClass(v36);
      v38 = NSStringFromSelector(a2);
      predictedContexts3 = [v34 predictedContexts];
      v40 = [predictedContexts3 count];
      *buf = 138413058;
      v67 = v37;
      v68 = 2112;
      v69 = v38;
      v70 = 2112;
      v71 = clientCopy;
      v72 = 2048;
      v73 = v40;
      _os_log_impl(&dword_2304B3000, v35, OS_LOG_TYPE_INFO, "%@, %@, client, %@, output predictedContext count, %lu", buf, 0x2Au);
    }
  }

  return v34;
}

uint64_t __53__RTPredictedContextManager__filterResult_forClient___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v49 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v30 = objc_opt_class();
      v31 = NSStringFromClass(v30);
      v32 = NSStringFromSelector(*(a1 + 56));
      *buf = 138412803;
      *&buf[4] = v31;
      *&buf[12] = 2112;
      *&buf[14] = v32;
      *&buf[22] = 2117;
      v46 = v5;
      _os_log_debug_impl(&dword_2304B3000, v7, OS_LOG_TYPE_DEBUG, "%@, %@, input result predictedContext, %{sensitive}@", buf, 0x20u);
    }
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    v9 = [v5 dateInterval];
    v10 = [v9 startDate];
    v11 = [v10 date];
    v12 = [v8 containsDate:v11];

    if ((v12 & 1) == 0)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v15 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          v17 = objc_opt_class();
          v18 = NSStringFromClass(v17);
          v19 = NSStringFromSelector(*(a1 + 56));
          v20 = [v5 dateInterval];
          v21 = [v20 startDate];
          v22 = [v21 date];
          v23 = *(a1 + 40);
          *buf = 138413059;
          *&buf[4] = v18;
          *&buf[12] = 2112;
          *&buf[14] = v19;
          *&buf[22] = 2117;
          v46 = v22;
          v47 = 2117;
          v48 = v23;
          _os_log_debug_impl(&dword_2304B3000, v15, OS_LOG_TYPE_DEBUG, "%@, %@, filtering result because predicted context start date, %{sensitive}@, is outside of forecast window, %{sensitive}@", buf, 0x2Au);
        }

        goto LABEL_37;
      }

      goto LABEL_31;
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (*(a1 + 64) & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v15 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v24 = objc_opt_class();
        v25 = NSStringFromClass(v24);
        v26 = NSStringFromSelector(*(a1 + 56));
        *buf = 138412546;
        *&buf[4] = v25;
        *&buf[12] = 2112;
        *&buf[14] = v26;
        _os_log_debug_impl(&dword_2304B3000, v15, OS_LOG_TYPE_DEBUG, "%@, %@, filtering result because mask context is location and mask is not including it", buf, 0x16u);
      }

      goto LABEL_37;
    }

    goto LABEL_31;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (*(a1 + 65) & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v15 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_37;
      }

LABEL_27:
      v27 = objc_opt_class();
      v28 = NSStringFromClass(v27);
      v29 = NSStringFromSelector(*(a1 + 56));
      *buf = 138412546;
      *&buf[4] = v28;
      *&buf[12] = 2112;
      *&buf[14] = v29;
      _os_log_debug_impl(&dword_2304B3000, v15, OS_LOG_TYPE_DEBUG, "%@, %@, filtering result because mask context is transition and mask is not including it", buf, 0x16u);

      goto LABEL_37;
    }

LABEL_31:
    v16 = 0;
    goto LABEL_39;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (*(a1 + 66) & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v15 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_37;
      }

      goto LABEL_27;
    }

    goto LABEL_31;
  }

  if ([*(a1 + 48) count])
  {
    if (*(a1 + 64) == 1)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = v5;
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2020000000;
        LOBYTE(v46) = 0;
        v14 = *(a1 + 48);
        v38[0] = MEMORY[0x277D85DD0];
        v38[1] = 3221225472;
        v38[2] = __53__RTPredictedContextManager__filterResult_forClient___block_invoke_498;
        v38[3] = &unk_2788D2848;
        v38[4] = *(a1 + 32);
        v15 = v13;
        v39 = v15;
        v40 = buf;
        [v14 enumerateObjectsUsingBlock:v38];
        if (*(*&buf[8] + 24))
        {

          _Block_object_dispose(buf, 8);
          v16 = 1;
LABEL_38:

          goto LABEL_39;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          v33 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
          {
            v35 = objc_opt_class();
            v36 = NSStringFromClass(v35);
            v37 = NSStringFromSelector(*(a1 + 56));
            *v41 = 138412546;
            v42 = v36;
            v43 = 2112;
            v44 = v37;
            _os_log_debug_impl(&dword_2304B3000, v33, OS_LOG_TYPE_DEBUG, "%@, %@, filtering result due to filter location", v41, 0x16u);
          }
        }

        _Block_object_dispose(buf, 8);
LABEL_37:
        v16 = 0;
        goto LABEL_38;
      }
    }
  }

  v16 = 1;
LABEL_39:

  return v16;
}

void __53__RTPredictedContextManager__filterResult_forClient___block_invoke_498(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = MEMORY[0x277D01160];
  v7 = a2;
  v8 = [[v6 alloc] initWithCLLocation:v7];

  v9 = [*(a1 + 32) distanceCalculator];
  v10 = [*(a1 + 40) locationOfInterest];
  v11 = [v10 location];
  v21 = 0;
  [v9 distanceFromLocation:v8 toLocation:v11 error:&v21];
  v13 = v12;
  v14 = v21;

  v15 = [*(a1 + 40) locationOfInterest];
  v16 = [v15 location];
  [v16 horizontalUncertainty];
  v18 = v17;
  [v8 horizontalUncertainty];
  v20 = v18 + v19 + 50.0;

  if (v13 < v20)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    *a4 = 1;
  }
}

void __53__RTPredictedContextManager__filterResult_forClient___block_invoke_501(uint64_t a1, void *a2, uint64_t a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = NSStringFromSelector(*(a1 + 40));
      v10 = 138413059;
      v11 = v8;
      v12 = 2112;
      v13 = v9;
      v14 = 2048;
      v15 = a3;
      v16 = 2117;
      v17 = v5;
      _os_log_debug_impl(&dword_2304B3000, v6, OS_LOG_TYPE_DEBUG, "%@, %@, idx, %lu, output predictedContext, %{sensitive}@", &v10, 0x2Au);
    }
  }
}

- (void)_postprocessRequest:(id)request
{
  v21 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  if (requestCopy)
  {
    v6 = [MEMORY[0x277CBEAA8] now];
    [(RTPredictedContextManager *)self _submitMetrics:requestCopy];
    [(RTPredictedContextManager *)self _storeRequest:requestCopy];
    v7 = [MEMORY[0x277CBEAA8] now];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v8 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        v11 = NSStringFromSelector(a2);
        [v7 timeIntervalSinceDate:v6];
        v13 = 138413059;
        v14 = v10;
        v15 = 2112;
        v16 = v11;
        v17 = 2048;
        v18 = v12;
        v19 = 2117;
        v20 = requestCopy;
        _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "%@, %@, latency, %.2f, request, %{sensitive}@", &v13, 0x2Au);
      }
    }
  }
}

- (void)_storeRequest:(id)request
{
  v20 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  if (requestCopy)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v6 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = objc_opt_class();
        v8 = NSStringFromClass(v7);
        v9 = NSStringFromSelector(a2);
        *buf = 138412546;
        v17 = v8;
        v18 = 2112;
        v19 = v9;
        _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@, %@, storing request", buf, 0x16u);
      }
    }

    predictedContextResult = [requestCopy predictedContextResult];
    v11 = [predictedContextResult nextStepPredictedContextsWithFilterMask:7];

    predictedContextStore = [(RTPredictedContextManager *)self predictedContextStore];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __43__RTPredictedContextManager__storeRequest___block_invoke;
    v15[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
    v15[4] = a2;
    [predictedContextStore storePredictedContexts:v11 handler:v15];

    predictedContextStore2 = [(RTPredictedContextManager *)self predictedContextStore];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __43__RTPredictedContextManager__storeRequest___block_invoke_505;
    v14[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
    v14[4] = a2;
    [predictedContextStore2 storePredictedContextRequest:requestCopy handler:v14];
  }
}

void __43__RTPredictedContextManager__storeRequest___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = NSStringFromSelector(*(a1 + 32));
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = 138412802;
      v9 = v5;
      v10 = 2112;
      v11 = v7;
      v12 = 2112;
      v13 = v3;
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "%@, error adding %@: %@", &v8, 0x20u);
    }
  }
}

void __43__RTPredictedContextManager__storeRequest___block_invoke_505(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = NSStringFromSelector(*(a1 + 32));
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = 138412802;
      v9 = v5;
      v10 = 2112;
      v11 = v7;
      v12 = 2112;
      v13 = v3;
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "%@, error adding %@: %@", &v8, 0x20u);
    }
  }
}

- (void)_submitMetrics:(id)metrics
{
  v22 = *MEMORY[0x277D85DE8];
  if (metrics)
  {
    v5 = MEMORY[0x277CBEAA8];
    metricsCopy = metrics;
    v7 = [v5 now];
    metricsManager = [(RTPredictedContextManager *)self metricsManager];
    [metricsManager prepareAndSubmitInferenceEventMetrics:metricsCopy];

    metricsManager2 = [(RTPredictedContextManager *)self metricsManager];
    [metricsManager2 prepareAndSubmitInferenceLOIMismatchEventMetrics:metricsCopy];

    v10 = [MEMORY[0x277CBEAA8] now];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v11 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        v14 = NSStringFromSelector(a2);
        [v10 timeIntervalSinceDate:v7];
        v16 = 138412802;
        v17 = v13;
        v18 = 2112;
        v19 = v14;
        v20 = 2048;
        v21 = v15;
        _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_INFO, "%@, %@, latency, %.2f", &v16, 0x20u);
      }
    }
  }
}

- (void)_updateMonitorPredictedContext
{
  clients = [(RTPredictedContextManager *)self clients];
  -[RTPredictedContextManager setMonitorPredictedContext:](self, "setMonitorPredictedContext:", [clients count] != 0);
}

- (void)_addClient:(id)client
{
  v28 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  if (clientCopy)
  {
    clients = [(RTPredictedContextManager *)self clients];
    [clients addObject:clientCopy];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v7 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = objc_opt_class();
        v9 = NSStringFromClass(v8);
        v10 = NSStringFromSelector(a2);
        clients2 = [(RTPredictedContextManager *)self clients];
        v20 = 138413058;
        v21 = v9;
        v22 = 2112;
        v23 = v10;
        v24 = 2112;
        v25 = clientCopy;
        v26 = 2048;
        v27 = [clients2 count];
        _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%@, %@, client, %@, total client count, %lu", &v20, 0x2Au);
      }
    }

    [(RTPredictedContextManager *)self _updateMonitorPredictedContext];
    singleShot = [clientCopy singleShot];
    if (singleShot)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    if ((singleShot & 1) != 0 || [(RTPredictedContextManager *)self _isMonitoringClientEligibleForTriggerReasonClientRegistration:clientCopy])
    {
      [(RTPredictedContextManager *)self _requestInferenceWithReason:v13];
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v14 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = objc_opt_class();
        v16 = NSStringFromClass(v15);
        v17 = NSStringFromSelector(a2);
        v18 = [objc_opt_class() stringFromInferenceTriggerReason:2];
        clientIdentity = [clientCopy clientIdentity];
        v20 = 138413058;
        v21 = v16;
        v22 = 2112;
        v23 = v17;
        v24 = 2112;
        v25 = v18;
        v26 = 2112;
        v27 = clientIdentity;
        _os_log_impl(&dword_2304B3000, v14, OS_LOG_TYPE_INFO, "%@, %@, triggerReason, %@, client.clientIdentity, %@, can skip inference since the original registration is old", &v20, 0x2Au);
      }
    }
  }
}

- (void)setAvailable:(BOOL)available
{
  v18 = *MEMORY[0x277D85DE8];
  if (self->_available != available)
  {
    self->_available = available;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v5 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = objc_opt_class();
        v7 = NSStringFromClass(v6);
        v8 = NSStringFromSelector(a2);
        v9 = v8;
        available = self->_available;
        v11 = @"NO";
        v12 = 138412802;
        v13 = v7;
        v14 = 2112;
        if (available)
        {
          v11 = @"YES";
        }

        v15 = v8;
        v16 = 2112;
        v17 = v11;
        _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%@, %@, available, %@", &v12, 0x20u);
      }
    }
  }
}

- (void)onDataProtectionNotification:(id)notification
{
  notificationCopy = notification;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__RTPredictedContextManager_onDataProtectionNotification___block_invoke;
  block[3] = &unk_2788C5020;
  v9 = notificationCopy;
  selfCopy = self;
  v11 = a2;
  v7 = notificationCopy;
  dispatch_async(queue, block);
}

void __58__RTPredictedContextManager_onDataProtectionNotification___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) name];
  v3 = +[(RTNotification *)RTDataProtectionManagerNotificationUnlockedSinceBoot];
  v4 = [v2 isEqualToString:v3];

  if (v4 && [*(a1 + 32) unlockedSinceBoot])
  {
    [*(a1 + 40) setAlgorithms:0];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v5 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = objc_opt_class();
        v7 = NSStringFromClass(v6);
        v8 = NSStringFromSelector(*(a1 + 48));
        v9 = 138412546;
        v10 = v7;
        v11 = 2112;
        v12 = v8;
        _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%@, %@, RTDataProtectionManagerNotificationUnlockedSinceBoot received, available, YES", &v9, 0x16u);
      }
    }

    [*(a1 + 40) setAvailable:1];
  }
}

- (void)onVisitManagerNotification:(id)notification
{
  notificationCopy = notification;
  queue = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__RTPredictedContextManager_onVisitManagerNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(queue, v7);
}

- (void)_onVisitManagerNotification:(id)notification
{
  v18 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = notificationCopy;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v7 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = objc_opt_class();
        v9 = NSStringFromClass(v8);
        v10 = NSStringFromSelector(a2);
        v12 = 138412803;
        v13 = v9;
        v14 = 2112;
        v15 = v10;
        v16 = 2117;
        v17 = v6;
        _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%@, %@, received visit notification, %{sensitive}@", &v12, 0x20u);
      }
    }

    visitIncident = [v6 visitIncident];
    [(RTPredictedContextManager *)self _onVisit:visitIncident];
  }
}

- (void)_onVisit:(id)visit
{
  v20 = *MEMORY[0x277D85DE8];
  visitCopy = visit;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = NSStringFromSelector(a2);
      v14 = 138412803;
      v15 = v8;
      v16 = 2112;
      v17 = v9;
      v18 = 2117;
      v19 = visitCopy;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@, %@, received visit , %{sensitive}@", &v14, 0x20u);
    }
  }

  v10 = MEMORY[0x277CCABB0];
  v11 = self->_currentVisitType;
  v12 = [v10 numberWithInteger:{objc_msgSend(visitCopy, "type")}];
  currentVisitType = self->_currentVisitType;
  self->_currentVisitType = v12;

  if (v11)
  {
    [(RTPredictedContextManager *)self _requestInferenceWithReason:4];
  }

  else
  {
    [(RTPredictedContextManager *)self _invalidatePeriodicTriggerTimer];
    [(RTPredictedContextManager *)self _startPeriodicTriggerTimer];
  }
}

- (void)onNavigationNotification:(id)notification
{
  notificationCopy = notification;
  queue = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__RTPredictedContextManager_onNavigationNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(queue, v7);
}

- (void)_onNavigationNotification:(id)notification
{
  v27[3] = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = notificationCopy;
    destinationName = [v6 destinationName];
    v8 = destinationName;
    v9 = &stru_284528390;
    if (destinationName)
    {
      v9 = destinationName;
    }

    v10 = v9;

    v27[0] = v10;
    v26[0] = @"destinationName";
    v26[1] = @"destinationLatitude";
    v11 = MEMORY[0x277CCABB0];
    [v6 destinationLatitude];
    v12 = [v11 numberWithDouble:?];
    v27[1] = v12;
    v26[2] = @"destinationLongitude";
    v13 = MEMORY[0x277CCABB0];
    [v6 destinationLongitude];
    v14 = [v13 numberWithDouble:?];
    v27[2] = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:3];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v16 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = objc_opt_class();
        v18 = NSStringFromClass(v17);
        v19 = NSStringFromSelector(a2);
        v20 = 138412803;
        v21 = v18;
        v22 = 2112;
        v23 = v19;
        v24 = 2117;
        v25 = v15;
        _os_log_impl(&dword_2304B3000, v16, OS_LOG_TYPE_INFO, "%@, %@, received navigation destination, %{sensitive}@", &v20, 0x20u);
      }
    }

    [(RTPredictedContextManager *)self setRouteSummary:v15];
  }
}

- (void)onMotionActivityManagerNotification:(id)notification
{
  notificationCopy = notification;
  queue = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__RTPredictedContextManager_onMotionActivityManagerNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(queue, v7);
}

- (void)_onMotionActivityManagerNotification:(id)notification
{
  v20 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  name = [notificationCopy name];
  v7 = +[(RTNotification *)RTMotionActivityManagerNotificationDominantMotionActivityChange];
  v8 = [name isEqualToString:v7];

  if (v8)
  {
    dominantMotionActivity = [notificationCopy dominantMotionActivity];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v10 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        v13 = NSStringFromSelector(a2);
        v14 = 138412803;
        v15 = v12;
        v16 = 2112;
        v17 = v13;
        v18 = 2117;
        v19 = dominantMotionActivity;
        _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "%@, %@, dominantMotionActivityNotification activity, %{sensitive}@", &v14, 0x20u);
      }
    }

    if ([dominantMotionActivity confidence] != 1)
    {
      -[RTPredictedContextManager setPreviousMotionActivity:](self, "setPreviousMotionActivity:", [dominantMotionActivity type]);
    }
  }
}

- (void)onLearnedLocationManagerDidUpdateNotification:(id)notification
{
  notificationCopy = notification;
  queue = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __75__RTPredictedContextManager_onLearnedLocationManagerDidUpdateNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(queue, v7);
}

- (void)_onLearnedLocationManagerDidUpdateNotification:(id)notification
{
  v28 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = notificationCopy;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v7 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = objc_opt_class();
        v9 = NSStringFromClass(v8);
        v10 = NSStringFromSelector(a2);
        v18 = 138412802;
        v19 = v9;
        v20 = 2112;
        v21 = v10;
        v22 = 2112;
        v23 = v6;
        _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%@, %@, learned location manager did update, notification, %@", &v18, 0x20u);
      }
    }

    if ([v6 trainMode]== 1 && [v6 trainResult]== 2)
    {
      [(RTPredictedContextManager *)self _rescheduleTrainingOnLearnedLocationUpdateNotificationIfNeeded];
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v11 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        v14 = NSStringFromSelector(a2);
        trainMode = [v6 trainMode];
        v16 = [RTLearnedLocationEngine stringFromTrainMode:[v6 trainMode]];
        v17 = [RTLearnedLocationEngine stringFromTrainResult:[v6 trainResult]];
        v18 = 138413314;
        v19 = v13;
        v20 = 2112;
        v21 = v14;
        v22 = 2048;
        v23 = trainMode;
        v24 = 2112;
        v25 = v16;
        v26 = 2112;
        v27 = v17;
        _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_INFO, "%@, %@, ignoring trainMode, %ld, %@, trainResult, %@", &v18, 0x34u);
      }
    }
  }

  else
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v18 = 138412802;
      v19 = notificationCopy;
      v20 = 2080;
      v21 = "[RTPredictedContextManager _onLearnedLocationManagerDidUpdateNotification:]";
      v22 = 1024;
      LODWORD(v23) = 3269;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "unhandled notification, %@ (in %s:%d)", &v18, 0x1Cu);
    }
  }
}

- (void)checkMotionActivityChangeAndTriggerPrediction:(unint64_t)prediction currentActivity:(unint64_t)activity
{
  v4 = prediction - 3 > 2 || activity >= 3;
  if (!v4 || prediction <= 2 && activity - 3 <= 2)
  {
    [(RTPredictedContextManager *)self _requestInferenceWithReason:6, activity];
  }
}

- (void)setRouteSummary:(id)summary
{
  summaryCopy = summary;
  if (![(NSDictionary *)self->_routeSummary isEqualToDictionary:?])
  {
    objc_storeStrong(&self->_routeSummary, summary);
    [(RTPredictedContextManager *)self _requestInferenceWithReason:5];
  }
}

- (void)setPreviousMotionActivity:(unint64_t)activity
{
  if (self->_previousMotionActivity != activity)
  {
    [(RTPredictedContextManager *)self checkMotionActivityChangeAndTriggerPrediction:[(RTPredictedContextManager *)self previousMotionActivity] currentActivity:activity];
    self->_previousMotionActivity = activity;
  }
}

- (void)_startMonitoringForClient:(id)client options:(id)options handler:(id)handler
{
  v27 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  optionsCopy = options;
  handlerCopy = handler;
  if ([(RTPredictedContextManager *)self _isSupported])
  {
    v12 = [[RTPredictedContextClient alloc] initWithClient:clientCopy options:optionsCopy singleShot:0 handler:handlerCopy];

    [(RTPredictedContextManager *)self _addClient:v12];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v13 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        v16 = NSStringFromSelector(a2);
        *buf = 138412546;
        v24 = v15;
        v25 = 2112;
        v26 = v16;
        _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_INFO, "%@, %@, Platform Not Supported", buf, 0x16u);
      }
    }

    v17 = MEMORY[0x277CCA9B8];
    v18 = *MEMORY[0x277D01448];
    v21 = *MEMORY[0x277CCA450];
    v22 = @"Predicted Context unavailable on this platform";
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v20 = [v17 errorWithDomain:v18 code:1 userInfo:v19];
    (*(handlerCopy + 2))(handlerCopy, 0, v20);
  }
}

- (void)startMonitoringForClient:(id)client options:(id)options handler:(id)handler
{
  clientCopy = client;
  optionsCopy = options;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __70__RTPredictedContextManager_startMonitoringForClient_options_handler___block_invoke;
  v15[3] = &unk_2788C5530;
  v15[4] = self;
  v16 = clientCopy;
  v17 = optionsCopy;
  v18 = handlerCopy;
  v12 = handlerCopy;
  v13 = optionsCopy;
  v14 = clientCopy;
  dispatch_async(queue, v15);
}

- (void)_stopMonitoringForClient:(id)client reply:(id)reply
{
  v44 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  replyCopy = reply;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__188;
  v32 = __Block_byref_object_dispose__188;
  v33 = 0;
  clients = [(RTPredictedContextManager *)self clients];
  v22 = MEMORY[0x277D85DD0];
  v23 = 3221225472;
  v24 = __60__RTPredictedContextManager__stopMonitoringForClient_reply___block_invoke;
  v25 = &unk_2788D28C0;
  v10 = clientCopy;
  v26 = v10;
  v27 = &v28;
  [clients enumerateObjectsUsingBlock:&v22];

  v11 = v29[5];
  if (v11)
  {
    v12 = [(RTPredictedContextManager *)self clients:v22];
    [v12 removeObject:v29[5]];

    [(RTPredictedContextManager *)self _updateMonitorPredictedContext];
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v16 = NSStringFromSelector(a2);
      clients2 = [(RTPredictedContextManager *)self clients];
      v18 = [clients2 count];
      *buf = 138413058;
      v37 = v15;
      v38 = 2112;
      v39 = v16;
      v40 = 2112;
      v41 = v10;
      v42 = 2048;
      v43 = v18;
      _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_INFO, "%@, %@, client, %@, total client count, %lu", buf, 0x2Au);
    }
  }

  if (v11)
  {
    v19 = 0;
  }

  else
  {
    v20 = MEMORY[0x277CCA9B8];
    v34 = *MEMORY[0x277CCA450];
    v35 = @"stopMonitoringForClient did not succeed";
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
    v19 = [v20 errorWithDomain:*MEMORY[0x277D01448] code:14 userInfo:v21];
  }

  if (replyCopy)
  {
    replyCopy[2](replyCopy, v19);
  }

  _Block_object_dispose(&v28, 8);
}

void __60__RTPredictedContextManager__stopMonitoringForClient_reply___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v4 = [v6 client];
  v5 = [v4 isEqual:*(a1 + 32)];

  if (v5)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }
}

- (void)stopMonitoringForClient:(id)client reply:(id)reply
{
  clientCopy = client;
  replyCopy = reply;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__RTPredictedContextManager_stopMonitoringForClient_reply___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = clientCopy;
  v13 = replyCopy;
  v9 = replyCopy;
  v10 = clientCopy;
  dispatch_async(queue, block);
}

- (void)_requestInferenceWithReason:(int64_t)reason
{
  v38 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = NSStringFromSelector(a2);
      v10 = [objc_opt_class() stringFromInferenceTriggerReason:reason];
      *buf = 138412802;
      v33 = v8;
      v34 = 2112;
      v35 = v9;
      v36 = 2112;
      *v37 = v10;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@, %@, reason, %@", buf, 0x20u);
    }
  }

  platform = [(RTPredictedContextManager *)self platform];
  if (![platform internalInstall])
  {
    goto LABEL_19;
  }

  defaultsManager = [(RTPredictedContextManager *)self defaultsManager];
  v13 = [defaultsManager objectForKey:@"RTDefaultsPredictedContextManagerWedgeContextSimulateEnabled"];
  if (!v13)
  {

LABEL_19:
    goto LABEL_20;
  }

  v14 = v13;
  simulatedPredictedContextResult = [(RTPredictedContextManager *)self simulatedPredictedContextResult];

  if (simulatedPredictedContextResult)
  {
    defaultsManager2 = [(RTPredictedContextManager *)self defaultsManager];
    v17 = [defaultsManager2 objectForKey:@"RTDefaultsPredictedContextManagerWedgeContextSimulateEnabled"];
    bOOLValue = [v17 BOOLValue];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v19 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        LODWORD(v33) = bOOLValue;
        _os_log_impl(&dword_2304B3000, v19, OS_LOG_TYPE_INFO, "RTDefaultsPredictedContextManagerWedgeContextSimulateEnabledKey is %d, disable to stop simulatedPredictedContext", buf, 8u);
      }
    }

    if (bOOLValue)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v20 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          v21 = objc_opt_class();
          v22 = NSStringFromClass(v21);
          v23 = NSStringFromSelector(a2);
          simulatedPredictedContextResult2 = [(RTPredictedContextManager *)self simulatedPredictedContextResult];
          *buf = 138413059;
          v33 = v22;
          v34 = 2112;
          v35 = v23;
          v36 = 1024;
          *v37 = 1;
          *&v37[4] = 2117;
          *&v37[6] = simulatedPredictedContextResult2;
          _os_log_impl(&dword_2304B3000, v20, OS_LOG_TYPE_INFO, "%@, %@, WedgeContextSimulateEnabledKey, %{BOOL}d, calling  _processPredictedContextResult, result, %{sensitive}@", buf, 0x26u);
        }
      }

      simulatedPredictedContextResult3 = [(RTPredictedContextManager *)self simulatedPredictedContextResult];
      [(RTPredictedContextManager *)self _processPredictedContextResult:simulatedPredictedContextResult3 reason:7];
      goto LABEL_25;
    }
  }

LABEL_20:
  v31 = 0;
  v26 = [(RTPredictedContextManager *)self _requestInferenceWithReason:reason outError:&v31];
  simulatedPredictedContextResult3 = v31;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v27 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v28 = objc_opt_class();
      v29 = NSStringFromClass(v28);
      v30 = NSStringFromSelector(a2);
      *buf = 138413059;
      v33 = v29;
      v34 = 2112;
      v35 = v30;
      v36 = 2117;
      *v37 = v26;
      *&v37[8] = 2112;
      *&v37[10] = simulatedPredictedContextResult3;
      _os_log_impl(&dword_2304B3000, v27, OS_LOG_TYPE_INFO, "%@, %@, request, %{sensitive}@, error, %@", buf, 0x2Au);
    }
  }

  [(RTPredictedContextManager *)self _invalidatePeriodicTriggerTimer];
  [(RTPredictedContextManager *)self _startPeriodicTriggerTimer];
  [(RTPredictedContextManager *)self _postprocessRequest:v26];

LABEL_25:
}

- (id)_requestInferenceWithReason:(int64_t)reason outError:(id *)error
{
  v140[1] = *MEMORY[0x277D85DE8];
  if ([(RTPredictedContextManager *)self available])
  {
    reasonCopy = reason;
    v8 = MEMORY[0x277CCACA8];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = NSStringFromSelector(a2);
    v12 = [v8 stringWithFormat:@"%@-%@", v10, v11];
    [v12 UTF8String];
    v114 = os_transaction_create();

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v93 = objc_opt_class();
        v94 = NSStringFromClass(v93);
        v95 = NSStringFromSelector(a2);
        *buf = 138412546;
        v128 = v94;
        v129 = 2112;
        v130 = v95;
        _os_log_debug_impl(&dword_2304B3000, v13, OS_LOG_TYPE_DEBUG, "creating os_transaction, %@, %@", buf, 0x16u);
      }
    }

    v14 = COERCE_DOUBLE(objc_opt_new());
    context = objc_autoreleasePoolPush();
    +[RTRuntime footprint];
    v16 = v15;
    algorithms = [(RTPredictedContextManager *)self algorithms];
    v18 = [MEMORY[0x277CBEAA8] now];
    defaultsManager = [(RTPredictedContextManager *)self defaultsManager];
    v20 = [defaultsManager objectForKey:@"RTDefaultsPredictedContextManagerInferenceRequest"];

    if (v20)
    {
      defaultsManager2 = [(RTPredictedContextManager *)self defaultsManager];
      v22 = MEMORY[0x277CCABB0];
      [v18 timeIntervalSinceDate:v20];
      v23 = [v22 numberWithDouble:?];
      [defaultsManager2 setObject:v23 forKey:@"RTDefaultsPredictedContextManagerTimeSinceLastInferenceRequestAttempt"];
    }

    defaultsManager3 = [(RTPredictedContextManager *)self defaultsManager];
    [defaultsManager3 setObject:v18 forKey:@"RTDefaultsPredictedContextManagerInferenceRequest"];

    _inferenceDefaultLookbackDurations = [objc_opt_class() _inferenceDefaultLookbackDurations];
    v26 = [(RTPredictedContextManager *)self _lookbackIntervalsWithDefaults:_inferenceDefaultLookbackDurations];

    v27 = objc_autoreleasePoolPush();
    featureExtractor = [(RTPredictedContextManager *)self featureExtractor];
    v126 = 0;
    v110 = v26;
    v120 = [featureExtractor extractFeaturesWithLookbackIntervals:v26 operationType:1 outError:&v126];
    v29 = COERCE_DOUBLE(v126);

    objc_autoreleasePoolPop(v27);
    v116 = v29;
    if (v29 != 0.0)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v30 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
        {
          v96 = objc_opt_class();
          v97 = NSStringFromClass(v96);
          v98 = NSStringFromSelector(a2);
          *buf = 138412802;
          v128 = v97;
          v129 = 2112;
          v130 = v98;
          v131 = 2112;
          v132 = v116;
          _os_log_debug_impl(&dword_2304B3000, v30, OS_LOG_TYPE_DEBUG, "%@, %@, ❌, extract features error, %@", buf, 0x20u);

          v29 = v116;
        }
      }

      [*&v14 addObject:*&v29];
    }

    v117 = v18;
    v31 = objc_autoreleasePoolPush();
    v124 = 0;
    v125 = 0;
    [algorithms predictContextWithInputSignals:v120 result:&v125 outError:&v124];
    v32 = v125;
    v33 = COERCE_DOUBLE(v124);
    objc_autoreleasePoolPop(v31);
    v115 = v33;
    if (v33 != 0.0)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v34 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
        {
          v99 = objc_opt_class();
          v100 = NSStringFromClass(v99);
          v101 = NSStringFromSelector(a2);
          *buf = 138412802;
          v128 = v100;
          v129 = 2112;
          v130 = v101;
          v131 = 2112;
          v132 = v115;
          _os_log_debug_impl(&dword_2304B3000, v34, OS_LOG_TYPE_DEBUG, "%@, %@, ❌, predict context error, %@", buf, 0x20u);

          v33 = v115;
        }
      }

      [*&v14 addObject:*&v33];
    }

    v111 = v20;
    v35 = [MEMORY[0x277CBEAA8] now];
    +[RTRuntime footprint];
    v37 = v36;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v38 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        v39 = objc_opt_class();
        v40 = NSStringFromClass(v39);
        v41 = NSStringFromSelector(a2);
        [v35 timeIntervalSinceDate:v117];
        *buf = 138413571;
        v128 = v40;
        v129 = 2112;
        v130 = v41;
        v131 = 2048;
        v132 = v42;
        v133 = 2048;
        v134 = v16;
        v135 = 2048;
        v136 = v37;
        v137 = 2117;
        v138 = v32;
        _os_log_impl(&dword_2304B3000, v38, OS_LOG_TYPE_INFO, "%@, %@, latency, %.2f, footprint start, %.4f MB, footprint end, %.4f MB, result, %{sensitive}@", buf, 0x3Eu);
      }
    }

    v118 = v14;
    v119 = algorithms;
    aSelector = a2;
    v43 = objc_autoreleasePoolPush();
    v44 = objc_opt_new();
    v45 = objc_opt_new();
    [v44 setPredictEvent:v45];

    predictEvent = [v44 predictEvent];
    [predictEvent setInput:v120];

    predictEvent2 = [v44 predictEvent];
    [predictEvent2 setResult:v32];

    [(RTPredictedContextManager *)self saveInteractionRecord:v44];
    objc_autoreleasePoolPop(v43);
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v49 = +[RTPredictedContextUtility modelPath];
    LOBYTE(predictEvent2) = [defaultManager fileExistsAtPath:v49];

    if ((predictEvent2 & 1) == 0)
    {
      v108 = [MEMORY[0x277CBEAA8] now];
      v50 = objc_autoreleasePoolPush();
      v122 = 0;
      v123 = 0;
      [algorithms retrieveAlgorithmState:&v123 outError:&v122];
      v51 = v123;
      v107 = COERCE_DOUBLE(v122);
      objc_autoreleasePoolPop(v50);
      v52 = objc_autoreleasePoolPush();
      v53 = objc_opt_new();
      v54 = objc_opt_new();
      [v53 setRetrieveStateEvent:v54];

      retrieveStateEvent = [v53 retrieveStateEvent];
      [retrieveStateEvent setOutState:v51];

      [(RTPredictedContextManager *)self saveInteractionRecord:v53];
      objc_autoreleasePoolPop(v52);
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v56 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
        if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
        {
          v57 = objc_opt_class();
          v58 = NSStringFromClass(v57);
          v59 = NSStringFromSelector(aSelector);
          v60 = [MEMORY[0x277CBEAA8] now];
          [v60 timeIntervalSinceDate:v108];
          v62 = v61;
          +[RTRuntime footprint];
          *buf = 138413314;
          v128 = v58;
          v129 = 2112;
          v130 = v59;
          v131 = 2112;
          v132 = v107;
          v133 = 2048;
          v134 = v62;
          v135 = 2048;
          v136 = v63;
          _os_log_impl(&dword_2304B3000, v56, OS_LOG_TYPE_INFO, "%@, %@, retrieveAlgorithmState, error, %@, latency, %.2f, footprint, %.4f MB", buf, 0x34u);
        }
      }

      data = [v51 data];
      v121 = 0;
      v65 = [RTPredictedContextUtility writeModel:data error:&v121];
      v66 = COERCE_DOUBLE(v121);
      if (v66 != 0.0)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          v67 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
          if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
          {
            v102 = objc_opt_class();
            NSStringFromClass(v102);
            v103 = v106 = v65;
            v104 = NSStringFromSelector(aSelector);
            *buf = 138412802;
            v128 = v103;
            v129 = 2112;
            v130 = v104;
            v131 = 2112;
            v132 = v66;
            _os_log_debug_impl(&dword_2304B3000, v67, OS_LOG_TYPE_DEBUG, "%@, %@, ❌, write model error, %@", buf, 0x20u);

            v65 = v106;
          }
        }

        [*&v118 addObject:*&v66];
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v68 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
        if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
        {
          v69 = objc_opt_class();
          NSStringFromClass(v69);
          v70 = v105 = v35;
          v71 = NSStringFromSelector(aSelector);
          v72 = vcvtd_n_f64_u64([data length], 0x14uLL);
          v73 = !v65;
          errorCopy = error;
          if (v73)
          {
            *&v75 = COERCE_DOUBLE(@"NO");
          }

          else
          {
            *&v75 = COERCE_DOUBLE(@"YES");
          }

          +[RTRuntime footprint];
          *buf = 138413570;
          v128 = v70;
          v129 = 2112;
          v130 = v71;
          v131 = 2048;
          v132 = v72;
          v133 = 2112;
          v134 = *&v75;
          error = errorCopy;
          v135 = 2112;
          v136 = v66;
          v137 = 2048;
          v138 = v76;
          _os_log_impl(&dword_2304B3000, v68, OS_LOG_TYPE_INFO, "%@, %@, writeModel, size, %.6f MB, success, %@, error %@, footprint, %.4f MB", buf, 0x3Eu);

          v35 = v105;
        }
      }
    }

    v77 = [(RTPredictedContextManager *)self _convertContextResult:v32];
    [(RTPredictedContextManager *)self _processPredictedContextResult:v77 reason:reasonCopy];
    v78 = objc_alloc(MEMORY[0x277D01240]);
    uUID = [MEMORY[0x277CCAD78] UUID];
    clients = [(RTPredictedContextManager *)self clients];
    v81 = COERCE_DOUBLE([v78 initWithIdentifier:uUID predictedContextResult:v77 requestStartDate:v117 requestEndDate:v35 inferenceTriggerReason:reasonCopy memoryFootprintStart:objc_msgSend(clients memoryFootprintEnd:"count") clientCount:{v16, v37}]);

    objc_autoreleasePoolPop(context);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v82 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
      if (os_log_type_enabled(v82, OS_LOG_TYPE_INFO))
      {
        v83 = objc_opt_class();
        v84 = NSStringFromClass(v83);
        v85 = NSStringFromSelector(aSelector);
        *buf = 138413059;
        v128 = v84;
        v129 = 2112;
        v130 = v85;
        v131 = 2117;
        v132 = v81;
        v133 = 2112;
        v134 = v118;
        _os_log_impl(&dword_2304B3000, v82, OS_LOG_TYPE_INFO, "%@, %@, request, %{sensitive}@, error(s), %@", buf, 0x2Au);
      }
    }

    if (error)
    {
      v86 = _RTSafeArray();
      *error = _RTMultiErrorCreate();
    }

    v87 = v114;
  }

  else
  {
    v88 = MEMORY[0x277CCA9B8];
    v89 = *MEMORY[0x277D01448];
    v139 = *MEMORY[0x277CCA450];
    v140[0] = @"Resource temporarily unavailable; data access not available until first unlock after boot.";
    v90 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v140 forKeys:&v139 count:1];
    v87 = [v88 errorWithDomain:v89 code:5 userInfo:v90];

    if (error)
    {
      v91 = v87;
      v81 = 0.0;
      *error = v87;
    }

    else
    {
      v81 = 0.0;
    }
  }

  return *&v81;
}

- (BOOL)_generateDiagnosticFilesAtURL:(id)l error:(id *)error
{
  v68 = *MEMORY[0x277D85DE8];
  lCopy = l;
  array = [MEMORY[0x277CBEB18] array];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v9 = MEMORY[0x277CBEBC0];
  v10 = +[RTPredictedContextUtility modelPath];
  v11 = [v9 fileURLWithPath:v10];

  path = [v11 path];
  LODWORD(v10) = [defaultManager fileExistsAtPath:path];

  if (v10)
  {
    path2 = [v11 path];
    v14 = [lCopy URLByAppendingPathComponent:path2];

    v55 = 0;
    v15 = [defaultManager copyItemAtURL:v11 toURL:v14 error:&v55];
    v16 = v55;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      errorCopy = error;
      v17 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = objc_opt_class();
        v40 = NSStringFromClass(v18);
        selfCopy = self;
        v39 = NSStringFromSelector(a2);
        path3 = [v11 path];
        path4 = [v14 path];
        *buf = 138413570;
        v21 = @"NO";
        v57 = v40;
        v58 = 2112;
        if (v15)
        {
          v21 = @"YES";
        }

        v59 = v39;
        v60 = 2112;
        v61 = path3;
        v62 = 2112;
        v63 = path4;
        v22 = path4;
        v64 = 2112;
        v65 = v21;
        v66 = 2112;
        v67 = v16;
        _os_log_impl(&dword_2304B3000, v17, OS_LOG_TYPE_INFO, "%@, %@, copy pc model from, %@, to, %@, success, %@, error, %@", buf, 0x3Eu);

        self = selfCopy;
      }

      error = errorCopy;
    }

    if (v16)
    {
      [array addObject:v16];
    }
  }

  serializedDataContainerPath = [objc_opt_class() serializedDataContainerPath];
  if ([defaultManager fileExistsAtPath:serializedDataContainerPath])
  {
    errorCopy2 = error;
    v24 = [lCopy URLByAppendingPathComponent:serializedDataContainerPath];
    path5 = [v24 path];

    if (([defaultManager fileExistsAtPath:path5] & 1) == 0)
    {
      v54 = 0;
      v26 = [defaultManager createDirectoryAtPath:path5 withIntermediateDirectories:1 attributes:0 error:&v54];
      v27 = v54;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v28 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          v29 = objc_opt_class();
          v42 = NSStringFromClass(v29);
          v30 = NSStringFromSelector(a2);
          *buf = 138413314;
          v31 = @"NO";
          v57 = v42;
          v58 = 2112;
          if (v26)
          {
            v31 = @"YES";
          }

          v59 = v30;
          v32 = v30;
          v60 = 2112;
          v61 = path5;
          v62 = 2112;
          v63 = v31;
          v64 = 2112;
          v65 = v27;
          _os_log_impl(&dword_2304B3000, v28, OS_LOG_TYPE_INFO, "%@, %@, create pc output container, path, %@, success, %@, error, %@", buf, 0x34u);
        }
      }

      if (v27)
      {
        [array addObject:v27];
      }
    }

    v53 = 0;
    v33 = [defaultManager contentsOfDirectoryAtPath:serializedDataContainerPath error:&v53];
    v34 = v53;
    if (v34)
    {
      [array addObject:v34];
    }

    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __65__RTPredictedContextManager__generateDiagnosticFilesAtURL_error___block_invoke;
    v46[3] = &unk_2788D28E8;
    v47 = serializedDataContainerPath;
    v48 = lCopy;
    v49 = defaultManager;
    selfCopy2 = self;
    v52 = a2;
    v51 = array;
    [v33 enumerateObjectsUsingBlock:v46];

    error = errorCopy2;
  }

  v35 = [array count];
  v36 = v35;
  if (error && v35)
  {
    v37 = _RTSafeArray();
    *error = _RTMultiErrorCreate();
  }

  return v36 == 0;
}

void __65__RTPredictedContextManager__generateDiagnosticFilesAtURL_error___block_invoke(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEBC0];
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v3 fileURLWithPath:v4];
  v7 = [v6 URLByAppendingPathComponent:v5];

  v8 = *(a1 + 40);
  v9 = [v7 path];
  v10 = [v8 URLByAppendingPathComponent:v9];

  v11 = *(a1 + 48);
  v22 = 0;
  v12 = [v11 copyItemAtURL:v7 toURL:v10 error:&v22];
  v13 = v22;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      v17 = NSStringFromSelector(*(a1 + 72));
      v18 = [v7 path];
      v19 = [v10 path];
      v20 = v19;
      *buf = 138413570;
      v21 = @"NO";
      v24 = v16;
      v25 = 2112;
      if (v12)
      {
        v21 = @"YES";
      }

      v26 = v17;
      v27 = 2112;
      v28 = v18;
      v29 = 2112;
      v30 = v19;
      v31 = 2112;
      v32 = v21;
      v33 = 2112;
      v34 = v13;
      _os_log_impl(&dword_2304B3000, v14, OS_LOG_TYPE_INFO, "%@, %@, copy pc file from, %@, to, %@, success, %@, error, %@", buf, 0x3Eu);
    }
  }

  if (v13)
  {
    [*(a1 + 64) addObject:v13];
  }
}

- (void)sendDiagnosticsToURL:(id)l options:(id)options handler:(id)handler
{
  lCopy = l;
  optionsCopy = options;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__RTPredictedContextManager_sendDiagnosticsToURL_options_handler___block_invoke;
  block[3] = &unk_2788C47F8;
  v19 = handlerCopy;
  v20 = a2;
  block[4] = self;
  v17 = optionsCopy;
  v18 = lCopy;
  v13 = lCopy;
  v14 = handlerCopy;
  v15 = optionsCopy;
  dispatch_async(queue, block);
}

void __66__RTPredictedContextManager_sendDiagnosticsToURL_options_handler___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = objc_opt_class();
      v4 = NSStringFromClass(v3);
      v5 = NSStringFromSelector(*(a1 + 64));
      v6 = *(a1 + 40);
      *buf = 138412802;
      v20 = v4;
      v21 = 2112;
      v22 = v5;
      v23 = 2112;
      v24 = v6;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%@, %@, options, %@", buf, 0x20u);
    }
  }

  if ([*(a1 + 40) hasMask:1])
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 48);
    v18 = 0;
    v9 = [v7 _generateDiagnosticFilesAtURL:v8 error:&v18];
    v10 = v18;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v11 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        v14 = NSStringFromSelector(*(a1 + 64));
        v15 = v14;
        v16 = @"NO";
        *buf = 138413058;
        v20 = v13;
        v21 = 2112;
        if (v9)
        {
          v16 = @"YES";
        }

        v22 = v14;
        v23 = 2112;
        v24 = v16;
        v25 = 2112;
        v26 = v10;
        _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_INFO, "%@, %@, success, %@, error, %@", buf, 0x2Au);
      }
    }

    v17 = *(a1 + 56);
    if (v17)
    {
      (*(v17 + 16))(v17, v10);
    }
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

- (void)performPurgeOfType:(int64_t)type referenceDate:(id)date completion:(id)completion
{
  completionCopy = completion;
  queue = [(RTNotifier *)self queue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __73__RTPredictedContextManager_performPurgeOfType_referenceDate_completion___block_invoke;
  v11[3] = &unk_2788C6710;
  typeCopy = type;
  v14 = a2;
  v11[4] = self;
  v12 = completionCopy;
  v10 = completionCopy;
  dispatch_async(queue, v11);
}

void __73__RTPredictedContextManager_performPurgeOfType_referenceDate_completion___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB18] array];
  v3 = *(a1 + 48);
  if ((v3 - 1) <= 1)
  {
    v4 = [MEMORY[0x277CCAA00] defaultManager];
    v5 = [objc_opt_class() modelBinPath];
    if ([v4 fileExistsAtPath:v5])
    {
      v21 = 0;
      [v4 removeItemAtPath:v5 error:&v21];
      v6 = v21;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          v18 = NSStringFromSelector(*(a1 + 56));
          *buf = 138412802;
          v23 = v18;
          v24 = 2112;
          v25 = v5;
          v26 = 2112;
          v27 = v6;
          _os_log_debug_impl(&dword_2304B3000, v7, OS_LOG_TYPE_DEBUG, "%@, Purged model file, %@, error, %@", buf, 0x20u);
        }
      }

      if (v6)
      {
        [v2 addObject:v6];
      }
    }

    else
    {
      v6 = 0;
    }

    v8 = [*(a1 + 32) dataSerializer];
    v20 = 0;
    [v8 purgeWithError:&v20];
    v9 = v20;

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v16 = NSStringFromSelector(*(a1 + 56));
        *buf = 138412546;
        v23 = v16;
        v24 = 2112;
        v25 = v9;
        _os_log_debug_impl(&dword_2304B3000, v10, OS_LOG_TYPE_DEBUG, "%@, Purged directory, error, %@", buf, 0x16u);
      }
    }

    if (v9)
    {
      [v2 addObject:v9];
    }

    v3 = *(a1 + 48);
  }

  if (!v3)
  {
    v11 = [*(a1 + 32) dataSerializer];
    v19 = 0;
    [v11 pruneWithError:&v19];
    v12 = v19;

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v17 = NSStringFromSelector(*(a1 + 56));
        *buf = 138412546;
        v23 = v17;
        v24 = 2112;
        v25 = v12;
        _os_log_debug_impl(&dword_2304B3000, v13, OS_LOG_TYPE_DEBUG, "%@, Pruned directory, error, %@", buf, 0x16u);
      }
    }

    if (v12)
    {
      [v2 addObject:v12];
    }
  }

  if ([v2 count])
  {
    v14 = _RTSafeArray();
    v15 = _RTMultiErrorCreate();

    (*(*(a1 + 40) + 16))(*(a1 + 40));
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (void)_startTrainingDurationCapTimerWithStartTime:(id)time
{
  v37 = *MEMORY[0x277D85DE8];
  timeCopy = time;
  trainingDurationCapTimer = [(RTPredictedContextManager *)self trainingDurationCapTimer];

  if (trainingDurationCapTimer)
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      v23 = NSStringFromSelector(a2);
      *buf = 138412546;
      v28 = v22;
      v29 = 2112;
      v30 = v23;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "%@, %@, training duration cap timer already exists, not starting new one", buf, 0x16u);
    }
  }

  else
  {
    v8 = [RTXPCTimerAlarm alloc];
    queue = [(RTNotifier *)self queue];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __73__RTPredictedContextManager__startTrainingDurationCapTimerWithStartTime___block_invoke;
    v25[3] = &unk_2788C4A70;
    v25[4] = self;
    v26 = timeCopy;
    v10 = [(RTXPCTimerAlarm *)v8 initWithIdentifier:@"com.apple.routined.predictedContext.trainingDurationCapTimer" queue:queue handler:v25];
    [(RTPredictedContextManager *)self setTrainingDurationCapTimer:v10];

    v11 = MEMORY[0x277CBEAA8];
    [(RTPredictedContextManager *)self _trainingDurationCapInterval];
    v12 = [v11 dateWithTimeIntervalSinceNow:?];
    trainingDurationCapTimer2 = [(RTPredictedContextManager *)self trainingDurationCapTimer];
    v24 = 0;
    [trainingDurationCapTimer2 fireWithDate:v12 shouldWake:0 error:&v24];
    v14 = v24;

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v15 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = objc_opt_class();
        v17 = NSStringFromClass(v16);
        v18 = NSStringFromSelector(a2);
        stringFromDate = [v12 stringFromDate];
        [(RTPredictedContextManager *)self _trainingDurationCapInterval];
        *buf = 138413314;
        v28 = v17;
        v29 = 2112;
        v30 = v18;
        v31 = 2112;
        v32 = stringFromDate;
        v33 = 2048;
        v34 = v20;
        v35 = 2112;
        v36 = v14;
        _os_log_impl(&dword_2304B3000, v15, OS_LOG_TYPE_INFO, "%@, %@, training duration cap timer started, will fire at %@ (in %.1f seconds), error: %@", buf, 0x34u);
      }
    }
  }
}

- (void)_handleTrainingDurationCapTimerWithStartTime:(id)time
{
  v32 = *MEMORY[0x277D85DE8];
  timeCopy = time;
  [(RTPredictedContextManager *)self _invalidateTrainingDurationCapTimer];
  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSinceDate:timeCopy];
  v8 = v7;

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      v19 = NSStringFromSelector(a2);
      *buf = 138413058;
      v25 = v18;
      v26 = 2112;
      v27 = v19;
      v28 = 2048;
      v29 = v8;
      v30 = 2048;
      v31 = v8 / 60.0;
      _os_log_debug_impl(&dword_2304B3000, v9, OS_LOG_TYPE_DEBUG, "%@, %@, training duration cap timer fired after %.1f seconds (%.1f minutes)", buf, 0x2Au);
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = NSStringFromSelector(a2);
      *buf = 138412546;
      v25 = v12;
      v26 = 2112;
      v27 = v13;
      _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "%@, %@, attempting to interrupt training due to duration cap", buf, 0x16u);
    }
  }

  [(RTPredictedContextManager *)self setPendingInterruptSource:1];
  date2 = [MEMORY[0x277CBEAA8] date];
  mapServiceManager = [(RTPredictedContextManager *)self mapServiceManager];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __74__RTPredictedContextManager__handleTrainingDurationCapTimerWithStartTime___block_invoke;
  v20[3] = &unk_2788C8A48;
  v21 = date2;
  selfCopy = self;
  v23 = a2;
  v16 = date2;
  [mapServiceManager interruptComputeWithError:v20];
}

void __74__RTPredictedContextManager__handleTrainingDurationCapTimerWithStartTime___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [MEMORY[0x277CBEAA8] date];
  [v4 timeIntervalSinceDate:*(a1 + 32)];
  v6 = v5;

  if (v3)
  {
    v7 = [v3 code];
    v8 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    v9 = v8;
    if (v7 != 6)
    {
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_10;
      }

      v15 = objc_opt_class();
      v11 = NSStringFromClass(v15);
      v12 = NSStringFromSelector(*(a1 + 48));
      v13 = [v3 localizedDescription];
      v16 = 138413058;
      v17 = v11;
      v18 = 2112;
      v19 = v12;
      v20 = 2048;
      v21 = v6;
      v22 = 2112;
      v23 = v13;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "%@, %@, duration cap interrupt failed with unexpected error, latency: %.2f, error: %@", &v16, 0x2Au);
      goto LABEL_5;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = NSStringFromSelector(*(a1 + 48));
      v13 = [v3 localizedDescription];
      v16 = 138413058;
      v17 = v11;
      v18 = 2112;
      v19 = v12;
      v20 = 2048;
      v21 = v6;
      v22 = 2112;
      v23 = v13;
      _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_DEFAULT, "%@, %@, duration cap interrupt was ignored due to model age (training allowed to continue), latency: %.2f, error: %@", &v16, 0x2Au);
LABEL_5:

LABEL_8:
    }
  }

  else
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v14 = objc_opt_class();
      v11 = NSStringFromClass(v14);
      v12 = NSStringFromSelector(*(a1 + 48));
      v16 = 138412802;
      v17 = v11;
      v18 = 2112;
      v19 = v12;
      v20 = 2048;
      v21 = v6;
      _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_DEFAULT, "%@, %@, duration cap interrupt completed successfully - training was stopped, latency: %.2f", &v16, 0x20u);
      goto LABEL_8;
    }
  }

LABEL_10:
}

- (void)_invalidateTrainingDurationCapTimer
{
  v14 = *MEMORY[0x277D85DE8];
  trainingDurationCapTimer = [(RTPredictedContextManager *)self trainingDurationCapTimer];

  if (trainingDurationCapTimer)
  {
    trainingDurationCapTimer2 = [(RTPredictedContextManager *)self trainingDurationCapTimer];
    [trainingDurationCapTimer2 invalidate];

    [(RTPredictedContextManager *)self setTrainingDurationCapTimer:0];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v6 = _rt_log_facility_get_os_log(RTLogFacilityPredictedContext);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        v7 = objc_opt_class();
        v8 = NSStringFromClass(v7);
        v9 = NSStringFromSelector(a2);
        v10 = 138412546;
        v11 = v8;
        v12 = 2112;
        v13 = v9;
        _os_log_debug_impl(&dword_2304B3000, v6, OS_LOG_TYPE_DEBUG, "%@, %@, training duration cap timer invalidated", &v10, 0x16u);
      }
    }
  }
}

@end