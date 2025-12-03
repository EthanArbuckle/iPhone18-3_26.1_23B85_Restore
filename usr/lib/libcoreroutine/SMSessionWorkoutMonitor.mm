@interface SMSessionWorkoutMonitor
+ (unint64_t)convertNoMovementDetectionTypeToTriggerCategory:(int64_t)category;
- (BOOL)_shouldPromptNoMovementTrigger:(id)trigger;
- (SMSessionWorkoutMonitor)initWithQueue:(id)queue defaultsManager:(id)manager distanceCalculator:(id)calculator locationManager:(id)locationManager healthKitManager:(id)kitManager platform:(id)platform sessionMetricManager:(id)metricManager sessionStore:(id)self0 timerManager:(id)self1 noMovementMonitor:(id)self2 motionActivityManager:(id)self3;
- (SMTriggerManagerProtocol)sessionMonitorDelegate;
- (double)_workoutEndReminderTimeout;
- (void)_addObservers;
- (void)_bootstrap;
- (void)_initializeTimerWithIdentifier:(id)identifier fireAfterDelay:(double)delay;
- (void)_modifyMonitoringWithConfiguration:(id)configuration handler:(id)handler;
- (void)_onTimerExpiryForTimerIdentifier:(id)identifier;
- (void)_onWorkoutTriggerControlUpdate:(unint64_t)update;
- (void)_removeObservers;
- (void)_removeTimers;
- (void)_setup;
- (void)_startMonitoringWithConfiguration:(id)configuration handler:(id)handler;
- (void)_stopMonitoringWithHandler:(id)handler;
- (void)_tearDownTimerWithIdentifier:(id)identifier;
- (void)checkIfCurrentWorkoutIsOutdoorPedestrianWithHandler:(id)handler;
- (void)initializeTimersOnStartMonitoring:(id)monitoring;
- (void)modifyMonitoringWithConfiguration:(id)configuration handler:(id)handler;
- (void)onHealthKitNotification:(id)notification;
- (void)onNoMovementMonitorNotification:(id)notification;
- (void)onWorkoutTriggerControlUpdate:(unint64_t)update;
- (void)setup;
- (void)startListeningForXPCEvents;
- (void)startMonitoringWithConfiguration:(id)configuration handler:(id)handler;
- (void)stopListeningForXPCEvents;
- (void)stopMonitoringWithHandler:(id)handler;
- (void)takeOdometerDistanceSampleWithHandler:(id)handler;
@end

@implementation SMSessionWorkoutMonitor

- (SMSessionWorkoutMonitor)initWithQueue:(id)queue defaultsManager:(id)manager distanceCalculator:(id)calculator locationManager:(id)locationManager healthKitManager:(id)kitManager platform:(id)platform sessionMetricManager:(id)metricManager sessionStore:(id)self0 timerManager:(id)self1 noMovementMonitor:(id)self2 motionActivityManager:(id)self3
{
  v57 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  managerCopy = manager;
  managerCopy2 = manager;
  calculatorCopy = calculator;
  calculatorCopy2 = calculator;
  locationManagerCopy = locationManager;
  locationManagerCopy2 = locationManager;
  kitManagerCopy = kitManager;
  kitManagerCopy2 = kitManager;
  platformCopy = platform;
  platformCopy2 = platform;
  metricManagerCopy = metricManager;
  storeCopy = store;
  timerManagerCopy = timerManager;
  monitorCopy = monitor;
  activityManagerCopy = activityManager;
  v52 = queueCopy;
  v50 = activityManagerCopy;
  if (queueCopy)
  {
    v27 = managerCopy2;
    if (managerCopy2)
    {
      v28 = calculatorCopy2;
      v29 = locationManagerCopy2;
      if (calculatorCopy2)
      {
        if (locationManagerCopy2)
        {
          if (kitManagerCopy2)
          {
            if (platformCopy2)
            {
              if (metricManagerCopy)
              {
                if (storeCopy)
                {
                  if (timerManagerCopy)
                  {
                    if (monitorCopy)
                    {
                      if (activityManagerCopy)
                      {
                        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                        {
                          v30 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
                          if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
                          {
                            *buf = 136315138;
                            v56 = "[SMSessionWorkoutMonitor initWithQueue:defaultsManager:distanceCalculator:locationManager:healthKitManager:platform:sessionMetricManager:sessionStore:timerManager:noMovementMonitor:motionActivityManager:]";
                            _os_log_impl(&dword_2304B3000, v30, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
                          }
                        }

                        v54.receiver = self;
                        v54.super_class = SMSessionWorkoutMonitor;
                        v31 = [(SMSessionWorkoutMonitor *)&v54 init];
                        v32 = v31;
                        if (v31)
                        {
                          objc_storeStrong(&v31->_queue, obja);
                          objc_storeStrong(&v32->_defaultsManager, managerCopy);
                          objc_storeStrong(&v32->_distanceCalculator, calculatorCopy);
                          objc_storeStrong(&v32->_healthKitManager, kitManagerCopy);
                          objc_storeStrong(&v32->_locationManager, locationManagerCopy);
                          objc_storeStrong(&v32->_platform, platformCopy);
                          objc_storeStrong(&v32->_sessionMetricManager, metricManager);
                          objc_storeStrong(&v32->_sessionStore, store);
                          objc_storeStrong(&v32->_timerManager, timerManager);
                          v33 = objc_opt_new();
                          timerIdentifierToTimers = v32->_timerIdentifierToTimers;
                          v32->_timerIdentifierToTimers = v33;

                          objc_storeStrong(&v32->_noMovementMonitor, monitor);
                          objc_storeStrong(&v32->_motionActivityManager, activityManager);
                          v35 = objc_alloc_init(SMCMOdometer);
                          cmOdometer = v32->_cmOdometer;
                          v32->_cmOdometer = v35;

                          [(SMSessionWorkoutMonitor *)v32 setup];
                        }

                        v37 = v32;
                        self = v37;
                        goto LABEL_44;
                      }

                      v39 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 0;
                        v40 = "Invalid parameter not satisfying: motionActivityManager";
                        goto LABEL_42;
                      }

LABEL_43:

                      v37 = 0;
                      goto LABEL_44;
                    }

                    v39 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                    if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_43;
                    }

                    *buf = 0;
                    v40 = "Invalid parameter not satisfying: noMovementMonitor";
                  }

                  else
                  {
                    v39 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                    if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_43;
                    }

                    *buf = 0;
                    v40 = "Invalid parameter not satisfying: timerManager";
                  }
                }

                else
                {
                  v39 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                  if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_43;
                  }

                  *buf = 0;
                  v40 = "Invalid parameter not satisfying: sessionStore";
                }
              }

              else
              {
                v39 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_43;
                }

                *buf = 0;
                v40 = "Invalid parameter not satisfying: sessionMetricManager";
              }
            }

            else
            {
              v39 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
              if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_43;
              }

              *buf = 0;
              v40 = "Invalid parameter not satisfying: platform";
            }
          }

          else
          {
            v39 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
            if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_43;
            }

            *buf = 0;
            v40 = "Invalid parameter not satisfying: healthKitManager";
          }
        }

        else
        {
          v39 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
          if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_43;
          }

          *buf = 0;
          v40 = "Invalid parameter not satisfying: locationManager";
        }
      }

      else
      {
        v39 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_43;
        }

        *buf = 0;
        v40 = "Invalid parameter not satisfying: distanceCalculator";
      }
    }

    else
    {
      v39 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      v28 = calculatorCopy2;
      v29 = locationManagerCopy2;
      if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_43;
      }

      *buf = 0;
      v40 = "Invalid parameter not satisfying: defaultsManager";
    }

LABEL_42:
    _os_log_error_impl(&dword_2304B3000, v39, OS_LOG_TYPE_ERROR, v40, buf, 2u);
    goto LABEL_43;
  }

  v27 = managerCopy2;
  v38 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2304B3000, v38, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: queue", buf, 2u);
  }

  v37 = 0;
  v28 = calculatorCopy2;
  v29 = locationManagerCopy2;
LABEL_44:

  return v37;
}

- (void)setup
{
  queue = [(SMSessionWorkoutMonitor *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__SMSessionWorkoutMonitor_setup__block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_setup
{
  v50 = *MEMORY[0x277D85DE8];
  defaultsManager = [(SMSessionWorkoutMonitor *)self defaultsManager];
  v4 = [defaultsManager objectForKey:@"SMDefaultsSessionWorkoutMonitorEndWorkoutReminderDate"];
  endWorkoutReminderDate = self->_endWorkoutReminderDate;
  self->_endWorkoutReminderDate = v4;

  defaultsManager2 = [(SMSessionWorkoutMonitor *)self defaultsManager];
  v7 = [defaultsManager2 objectForKey:@"SMDefaultsSessionWorkoutMonitorEndWorkoutReminderTimeoutSettingEnabled" value:&unk_2845A1E38];
  [v7 doubleValue];
  self->_endWorkoutReminderTimeoutSettingEnabled = v8;

  if (self->_endWorkoutReminderTimeoutSettingEnabled != 900.0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      endWorkoutReminderTimeoutSettingEnabled = self->_endWorkoutReminderTimeoutSettingEnabled;
      v40 = 136316162;
      v41 = "[SMSessionWorkoutMonitor _setup]";
      v42 = 2080;
      v43 = "overriding end workout reminder timeout - setting enabled";
      v44 = 2048;
      v45 = 0x408C200000000000;
      v46 = 2048;
      v47 = endWorkoutReminderTimeoutSettingEnabled;
      v48 = 2112;
      v49 = @"SMDefaultsSessionWorkoutMonitorEndWorkoutReminderTimeoutSettingEnabled";
      _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "%s, %s, original value, %.2f, overridden value, %.2f, by defaultsKey, %@", &v40, 0x34u);
    }
  }

  defaultsManager3 = [(SMSessionWorkoutMonitor *)self defaultsManager];
  v12 = [defaultsManager3 objectForKey:@"SMDefaultsSessionWorkoutMonitorEndWorkoutReminderTimeoutSettingDisabled" value:&unk_2845A1E48];
  [v12 doubleValue];
  self->_endWorkoutReminderTimeoutSettingDisabled = v13;

  if (self->_endWorkoutReminderTimeoutSettingDisabled != 3600.0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      endWorkoutReminderTimeoutSettingDisabled = self->_endWorkoutReminderTimeoutSettingDisabled;
      v40 = 136316162;
      v41 = "[SMSessionWorkoutMonitor _setup]";
      v42 = 2080;
      v43 = "overriding end workout reminder timeout - setting disabled";
      v44 = 2048;
      v45 = 0x40AC200000000000;
      v46 = 2048;
      v47 = endWorkoutReminderTimeoutSettingDisabled;
      v48 = 2112;
      v49 = @"SMDefaultsSessionWorkoutMonitorEndWorkoutReminderTimeoutSettingDisabled";
      _os_log_impl(&dword_2304B3000, v14, OS_LOG_TYPE_INFO, "%s, %s, original value, %.2f, overridden value, %.2f, by defaultsKey, %@", &v40, 0x34u);
    }
  }

  defaultsManager4 = [(SMSessionWorkoutMonitor *)self defaultsManager];
  v17 = [defaultsManager4 objectForKey:@"SMDefaultsSessionWorkoutMonitorLatestWorkoutManualPauseDate"];
  latestWorkoutManualPauseDate = self->_latestWorkoutManualPauseDate;
  self->_latestWorkoutManualPauseDate = v17;

  defaultsManager5 = [(SMSessionWorkoutMonitor *)self defaultsManager];
  v20 = [defaultsManager5 objectForKey:@"SMDefaultsSessionWorkoutMonitorWorkoutManualPauseTimeout" value:&unk_2845A1E58];
  [v20 doubleValue];
  self->_workoutManualPauseTimeout = v21;

  if (self->_workoutManualPauseTimeout != 7200.0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v22 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      workoutManualPauseTimeout = self->_workoutManualPauseTimeout;
      v40 = 136316162;
      v41 = "[SMSessionWorkoutMonitor _setup]";
      v42 = 2080;
      v43 = "overriding workout manual pause timeout";
      v44 = 2048;
      v45 = 0x40BC200000000000;
      v46 = 2048;
      v47 = workoutManualPauseTimeout;
      v48 = 2112;
      v49 = @"SMDefaultsSessionWorkoutMonitorWorkoutManualPauseTimeout";
      _os_log_impl(&dword_2304B3000, v22, OS_LOG_TYPE_INFO, "%s, %s, original value, %.2f, overridden value, %.2f, by defaultsKey, %@", &v40, 0x34u);
    }
  }

  defaultsManager6 = [(SMSessionWorkoutMonitor *)self defaultsManager];
  v25 = [defaultsManager6 objectForKey:@"SMDefaultsSessionWorkoutMonitorLatestWorkoutAutoPauseDate"];
  latestWorkoutAutoPauseDate = self->_latestWorkoutAutoPauseDate;
  self->_latestWorkoutAutoPauseDate = v25;

  defaultsManager7 = [(SMSessionWorkoutMonitor *)self defaultsManager];
  v28 = [defaultsManager7 objectForKey:@"SMDefaultsSessionWorkoutMonitorWorkoutAutoPauseTimeout" value:&unk_2845A1E68];
  [v28 doubleValue];
  self->_workoutAutoPauseTimeout = v29;

  if (self->_workoutAutoPauseTimeout != 1200.0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v30 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      workoutAutoPauseTimeout = self->_workoutAutoPauseTimeout;
      v40 = 136316162;
      v41 = "[SMSessionWorkoutMonitor _setup]";
      v42 = 2080;
      v43 = "overriding workout auto pause timeout";
      v44 = 2048;
      v45 = 0x4092C00000000000;
      v46 = 2048;
      v47 = workoutAutoPauseTimeout;
      v48 = 2112;
      v49 = @"SMDefaultsSessionWorkoutMonitorWorkoutAutoPauseTimeout";
      _os_log_impl(&dword_2304B3000, v30, OS_LOG_TYPE_INFO, "%s, %s, original value, %.2f, overridden value, %.2f, by defaultsKey, %@", &v40, 0x34u);
    }
  }

  defaultsManager8 = [(SMSessionWorkoutMonitor *)self defaultsManager];
  v33 = [defaultsManager8 objectForKey:@"SMDefaultsSessionWorkoutMonitorOutdoorPedAutoPauseDistance"];
  outdoorPedAutoPauseDistance = self->_outdoorPedAutoPauseDistance;
  self->_outdoorPedAutoPauseDistance = v33;

  defaultsManager9 = [(SMSessionWorkoutMonitor *)self defaultsManager];
  v36 = [defaultsManager9 objectForKey:@"SMDefaultsSessionWorkoutMonitorOutdoorPedAutoPauseDistanceThreshold" value:&unk_2845A1E78];
  [v36 doubleValue];
  self->_outdoorPedAutoPauseDistanceThreshold = v37;

  if (self->_outdoorPedAutoPauseDistanceThreshold != 531.0835 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v38 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
    {
      outdoorPedAutoPauseDistanceThreshold = self->_outdoorPedAutoPauseDistanceThreshold;
      v40 = 136316162;
      v41 = "[SMSessionWorkoutMonitor _setup]";
      v42 = 2080;
      v43 = "overriding outdoor ped auto-pause distance threshold";
      v44 = 2048;
      v45 = 0x408098AB020C49BALL;
      v46 = 2048;
      v47 = outdoorPedAutoPauseDistanceThreshold;
      v48 = 2112;
      v49 = @"SMDefaultsSessionWorkoutMonitorOutdoorPedAutoPauseDistanceThreshold";
      _os_log_impl(&dword_2304B3000, v38, OS_LOG_TYPE_INFO, "%s, %s, original value, %.2f, overridden value, %.2f, by defaultsKey, %@", &v40, 0x34u);
    }
  }
}

- (void)_addObservers
{
  v12 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v10 = 136315138;
      v11 = "[SMSessionWorkoutMonitor _addObservers]";
      _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "%s", &v10, 0xCu);
    }
  }

  healthKitManager = [(SMSessionWorkoutMonitor *)self healthKitManager];
  v5 = +[(RTNotification *)RTHealthKitManagerWorkoutWillPauseWorkoutNotification];
  [healthKitManager addObserver:self selector:sel_onHealthKitNotification_ name:v5];

  healthKitManager2 = [(SMSessionWorkoutMonitor *)self healthKitManager];
  v7 = +[(RTNotification *)RTHealthKitManagerWorkoutWillResumeWorkoutNotification];
  [healthKitManager2 addObserver:self selector:sel_onHealthKitNotification_ name:v7];

  noMovementMonitor = [(SMSessionWorkoutMonitor *)self noMovementMonitor];
  v9 = +[(RTNotification *)SMCMNoMovementStateUpdateNotification];
  [noMovementMonitor addObserver:self selector:sel_onNoMovementMonitorNotification_ name:v9];
}

- (void)_removeObservers
{
  v8 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v6 = 136315138;
      v7 = "[SMSessionWorkoutMonitor _removeObservers]";
      _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "%s", &v6, 0xCu);
    }
  }

  healthKitManager = [(SMSessionWorkoutMonitor *)self healthKitManager];
  [healthKitManager removeObserver:self];

  noMovementMonitor = [(SMSessionWorkoutMonitor *)self noMovementMonitor];
  [noMovementMonitor removeObserver:self];
}

- (void)_bootstrap
{
  v9 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      sessionConfiguration = [(SMSessionWorkoutMonitor *)self sessionConfiguration];
      v5 = 136315395;
      v6 = "[SMSessionWorkoutMonitor _bootstrap]";
      v7 = 2117;
      v8 = sessionConfiguration;
      _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "%s, bootstrapping not yet supported, called with configuration, %{sensitive}@", &v5, 0x16u);
    }
  }
}

- (void)startMonitoringWithConfiguration:(id)configuration handler:(id)handler
{
  configurationCopy = configuration;
  handlerCopy = handler;
  queue = [(SMSessionWorkoutMonitor *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__SMSessionWorkoutMonitor_startMonitoringWithConfiguration_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = configurationCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = configurationCopy;
  dispatch_async(queue, block);
}

- (void)_startMonitoringWithConfiguration:(id)configuration handler:(id)handler
{
  v31 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  handlerCopy = handler;
  if ([configurationCopy sessionType] != 4)
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v26 = "[SMSessionWorkoutMonitor _startMonitoringWithConfiguration:handler:]";
      v27 = 1024;
      LODWORD(v28) = 241;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: configuration.sessionType == SMSessionTypeWorkoutBound (in %s:%d)", buf, 0x12u);
    }
  }

  [(SMSessionWorkoutMonitor *)self _addObservers];
  [(SMSessionWorkoutMonitor *)self setSessionConfiguration:configurationCopy];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 136315395;
      v26 = "[SMSessionWorkoutMonitor _startMonitoringWithConfiguration:handler:]";
      v27 = 2117;
      v28 = configurationCopy;
      _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "%s, configuration, %{sensitive}@", buf, 0x16u);
    }
  }

  if (handlerCopy)
  {
    [(SMSessionWorkoutMonitor *)self startListeningForXPCEvents];
    v10 = +[SMDateUtility date];
    sessionConfiguration = [(SMSessionWorkoutMonitor *)self sessionConfiguration];
    sessionStartDate = [sessionConfiguration sessionStartDate];
    v13 = [sessionStartDate isAfterDate:v10];

    if (v13)
    {
      v14 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sessionConfiguration2 = [(SMSessionWorkoutMonitor *)self sessionConfiguration];
        sessionStartDate2 = [sessionConfiguration2 sessionStartDate];
        stringFromDate = [sessionStartDate2 stringFromDate];
        stringFromDate2 = [v10 stringFromDate];
        *buf = 136315650;
        v26 = "[SMSessionWorkoutMonitor _startMonitoringWithConfiguration:handler:]";
        v27 = 2112;
        v28 = stringFromDate;
        v29 = 2112;
        v30 = stringFromDate2;
        _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "%s, sessionStartDate, %@, larger than currentDate, %@", buf, 0x20u);
      }

      v15 = MEMORY[0x277CCA9B8];
      v16 = *MEMORY[0x277D01448];
      v23 = *MEMORY[0x277CCA450];
      v24 = @"sessionStartDate is larger than currentDate";
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
      v18 = [v15 errorWithDomain:v16 code:7 userInfo:v17];

      handlerCopy[2](handlerCopy, v18);
    }

    else
    {
      [(SMSessionWorkoutMonitor *)self initializeTimersOnStartMonitoring:v10];
      handlerCopy[2](handlerCopy, 0);
    }
  }

  else
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v26 = "[SMSessionWorkoutMonitor _startMonitoringWithConfiguration:handler:]";
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "%s, invalid handler", buf, 0xCu);
    }
  }
}

- (void)stopMonitoringWithHandler:(id)handler
{
  handlerCopy = handler;
  queue = [(SMSessionWorkoutMonitor *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__SMSessionWorkoutMonitor_stopMonitoringWithHandler___block_invoke;
  v7[3] = &unk_2788C4938;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

- (void)_stopMonitoringWithHandler:(id)handler
{
  v11 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v9 = 136315138;
      v10 = "[SMSessionWorkoutMonitor _stopMonitoringWithHandler:]";
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%s", &v9, 0xCu);
    }
  }

  [(SMSessionWorkoutMonitor *)self stopListeningForXPCEvents];
  [(SMSessionWorkoutMonitor *)self _removeObservers];
  [(SMSessionWorkoutMonitor *)self _removeTimers];
  defaultsManager = [(SMSessionWorkoutMonitor *)self defaultsManager];
  [defaultsManager setObject:0 forKey:@"SMDefaultsSessionWorkoutMonitorEndWorkoutReminderDate"];

  defaultsManager2 = [(SMSessionWorkoutMonitor *)self defaultsManager];
  [defaultsManager2 setObject:0 forKey:@"SMDefaultsSessionWorkoutMonitorLatestWorkoutManualPauseDate"];

  cmOdometer = [(SMSessionWorkoutMonitor *)self cmOdometer];
  [cmOdometer stopOdometerUpdates];

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, 0);
  }
}

- (void)onWorkoutTriggerControlUpdate:(unint64_t)update
{
  queue = [(SMSessionWorkoutMonitor *)self queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __57__SMSessionWorkoutMonitor_onWorkoutTriggerControlUpdate___block_invoke;
  v6[3] = &unk_2788C52E8;
  v6[4] = self;
  v6[5] = update;
  dispatch_async(queue, v6);
}

- (void)_onWorkoutTriggerControlUpdate:(unint64_t)update
{
  v20 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v16 = 136315394;
      v17 = "[SMSessionWorkoutMonitor _onWorkoutTriggerControlUpdate:]";
      v18 = 2048;
      updateCopy = update;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%s, control, %lu", &v16, 0x16u);
    }
  }

  if (update == 2)
  {
    [(SMSessionWorkoutMonitor *)self setIsWorkoutPaused:0];
    defaultsManager = [(SMSessionWorkoutMonitor *)self defaultsManager];
    [defaultsManager setObject:0 forKey:@"SMDefaultsSessionWorkoutMonitorLatestWorkoutManualPauseDate"];

    v14 = @"com.apple.routined.SMSessionWorkoutMonitor.workoutManualPauseTimerIdentifier";
  }

  else
  {
    if (update != 1)
    {
      return;
    }

    [(SMSessionWorkoutMonitor *)self setIsWorkoutPaused:1];
    latestWorkoutManualPauseDate = [(SMSessionWorkoutMonitor *)self latestWorkoutManualPauseDate];
    if (!latestWorkoutManualPauseDate || (v7 = latestWorkoutManualPauseDate, -[SMSessionWorkoutMonitor latestWorkoutManualPauseDate](self, "latestWorkoutManualPauseDate"), v8 = objc_claimAutoreleasedReturnValue(), -[SMSessionWorkoutMonitor sessionConfiguration](self, "sessionConfiguration"), v9 = objc_claimAutoreleasedReturnValue(), [v9 sessionStartDate], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v8, "isBeforeDate:", v10), v10, v9, v8, v7, v11))
    {
      defaultsManager2 = [(SMSessionWorkoutMonitor *)self defaultsManager];
      date = [MEMORY[0x277CBEAA8] date];
      [defaultsManager2 setObject:date forKey:@"SMDefaultsSessionWorkoutMonitorLatestWorkoutManualPauseDate"];

      [(SMSessionWorkoutMonitor *)self _initializeTimerWithIdentifier:@"com.apple.routined.SMSessionWorkoutMonitor.workoutManualPauseTimerIdentifier" fireAfterDelay:self->_workoutManualPauseTimeout];
    }

    v14 = @"com.apple.routined.SMSessionWorkoutMonitor.workoutEndReminderTimerIdentifier";
  }

  [(SMSessionWorkoutMonitor *)self _tearDownTimerWithIdentifier:v14];
  [(SMSessionWorkoutMonitor *)self _tearDownTimerWithIdentifier:@"com.apple.routined.SMSessionWorkoutMonitor.workoutAutoPauseTimerIdentifier"];
}

- (void)modifyMonitoringWithConfiguration:(id)configuration handler:(id)handler
{
  configurationCopy = configuration;
  handlerCopy = handler;
  queue = [(SMSessionWorkoutMonitor *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__SMSessionWorkoutMonitor_modifyMonitoringWithConfiguration_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = configurationCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = configurationCopy;
  dispatch_async(queue, block);
}

- (void)_modifyMonitoringWithConfiguration:(id)configuration handler:(id)handler
{
  v29 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  handlerCopy = handler;
  if ([configurationCopy sessionType] != 4)
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v24 = "[SMSessionWorkoutMonitor _modifyMonitoringWithConfiguration:handler:]";
      v25 = 1024;
      LODWORD(v26) = 368;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: configuration.sessionType == SMSessionTypeWorkoutBound (in %s:%d)", buf, 0x12u);
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 136315395;
      v24 = "[SMSessionWorkoutMonitor _modifyMonitoringWithConfiguration:handler:]";
      v25 = 2117;
      v26 = configurationCopy;
      _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "%s, configuration, %{sensitive}@", buf, 0x16u);
    }
  }

  sessionConfiguration = [(SMSessionWorkoutMonitor *)self sessionConfiguration];
  v11 = [sessionConfiguration isEqual:configurationCopy];

  if (!v11)
  {
    sessionConfiguration2 = [(SMSessionWorkoutMonitor *)self sessionConfiguration];
    sessionID = [sessionConfiguration2 sessionID];
    sessionID2 = [configurationCopy sessionID];
    v16 = [sessionID isEqual:sessionID2];

    if (v16)
    {
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __70__SMSessionWorkoutMonitor__modifyMonitoringWithConfiguration_handler___block_invoke;
      v21[3] = &unk_2788C48C0;
      v17 = handlerCopy;
      v22 = v17;
      [(SMSessionWorkoutMonitor *)self _stopMonitoringWithHandler:v21];
      [(SMSessionWorkoutMonitor *)self _startMonitoringWithConfiguration:configurationCopy handler:v17];
      v12 = v22;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        goto LABEL_16;
      }

      v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        sessionConfiguration3 = [(SMSessionWorkoutMonitor *)self sessionConfiguration];
        sessionID3 = [sessionConfiguration3 sessionID];
        sessionID4 = [configurationCopy sessionID];
        *buf = 136315650;
        v24 = "[SMSessionWorkoutMonitor _modifyMonitoringWithConfiguration:handler:]";
        v25 = 2112;
        v26 = sessionID3;
        v27 = 2112;
        v28 = sessionID4;
        _os_log_impl(&dword_2304B3000, v12, OS_LOG_TYPE_INFO, "%s, Configuration modified for wrong session, current config sessionID, %@, modified config sessionID, %@", buf, 0x20u);
      }
    }

    goto LABEL_15;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v24 = "[SMSessionWorkoutMonitor _modifyMonitoringWithConfiguration:handler:]";
      _os_log_impl(&dword_2304B3000, v12, OS_LOG_TYPE_INFO, "%s, Configuration did not change", buf, 0xCu);
    }

LABEL_15:
  }

LABEL_16:
}

void __70__SMSessionWorkoutMonitor__modifyMonitoringWithConfiguration_handler___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315394;
      v6 = "[SMSessionWorkoutMonitor _modifyMonitoringWithConfiguration:handler:]_block_invoke";
      v7 = 2112;
      v8 = v3;
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "%s, modify workout bound session with configuration failed in stop monitoring with error, %@", &v5, 0x16u);
    }

    (*(*(a1 + 32) + 16))();
  }
}

- (void)startListeningForXPCEvents
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v5 = 136315138;
      v6 = "[SMSessionWorkoutMonitor startListeningForXPCEvents]";
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%s", &v5, 0xCu);
    }
  }

  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_set_event();

  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_set_event();
}

- (void)stopListeningForXPCEvents
{
  v5 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = 136315138;
      v4 = "[SMSessionWorkoutMonitor stopListeningForXPCEvents]";
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%s", &v3, 0xCu);
    }
  }

  xpc_set_event();
  xpc_set_event();
}

- (void)initializeTimersOnStartMonitoring:(id)monitoring
{
  v16 = *MEMORY[0x277D85DE8];
  monitoringCopy = monitoring;
  queue = [(SMSessionWorkoutMonitor *)self queue];

  if (!queue)
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *location = 136315394;
      *&location[4] = "[SMSessionWorkoutMonitor initializeTimersOnStartMonitoring:]";
      v14 = 1024;
      v15 = 433;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: self.queue (in %s:%d)", location, 0x12u);
    }
  }

  objc_initWeak(location, self);
  healthKitManager = [(SMSessionWorkoutMonitor *)self healthKitManager];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __61__SMSessionWorkoutMonitor_initializeTimersOnStartMonitoring___block_invoke;
  v10[3] = &unk_2788CF470;
  objc_copyWeak(v12, location);
  v12[1] = a2;
  v10[4] = self;
  v9 = monitoringCopy;
  v11 = v9;
  [healthKitManager fetchCurrentCMWorkoutSnapshotWithHandler:v10];

  objc_destroyWeak(v12);
  objc_destroyWeak(location);
}

void __61__SMSessionWorkoutMonitor_initializeTimersOnStartMonitoring___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v97 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
  if (!v5)
  {
    if (!v8)
    {
      goto LABEL_48;
    }

    v19 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
LABEL_47:

      goto LABEL_48;
    }

    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    v22 = NSStringFromSelector(*(a1 + 56));
    *buf = 138412802;
    v84 = v21;
    v85 = 2112;
    v86 = v22;
    v87 = 2112;
    v88 = v6;
    _os_log_impl(&dword_2304B3000, v19, OS_LOG_TYPE_INFO, "%@, %@, snapshot is nil, error, %@", buf, 0x20u);

LABEL_46:
    goto LABEL_47;
  }

  if (v8)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = NSStringFromSelector(*(a1 + 56));
      v13 = [v5 entryDate];
      *buf = 138413314;
      v84 = v11;
      v85 = 2112;
      v86 = v12;
      v87 = 2112;
      v88 = v13;
      v89 = 1024;
      *v90 = [v5 state];
      *&v90[4] = 2112;
      *&v90[6] = v6;
      _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "%@, %@, snapshot date, %@, state %d, error, %@", buf, 0x30u);
    }
  }

  if ([v5 state] != 1)
  {
    if ([v5 state] == 5)
    {
      v23 = [v5 entryDate];
      v24 = *(a1 + 32);
      v25 = *(v24 + 104);
      *(v24 + 104) = v23;

      v18 = [*(a1 + 32) defaultsManager];
      v26 = [v5 entryDate];
      v27 = @"SMDefaultsSessionWorkoutMonitorEndWorkoutReminderDate";
    }

    else
    {
      if ([v5 state] != 6)
      {
        goto LABEL_20;
      }

      v28 = [v5 entryDate];
      v29 = *(a1 + 32);
      v30 = *(v29 + 120);
      *(v29 + 120) = v28;

      v18 = [*(a1 + 32) defaultsManager];
      v26 = [v5 entryDate];
      v27 = @"SMDefaultsSessionWorkoutMonitorLatestWorkoutAutoPauseDate";
    }

    [v18 setObject:v26 forKey:v27];

    goto LABEL_19;
  }

  v14 = *(a1 + 32);
  v15 = *(v14 + 104);
  if (v15)
  {
    *(v14 + 104) = 0;

    v16 = [*(a1 + 32) defaultsManager];
    [v16 setObject:0 forKey:@"SMDefaultsSessionWorkoutMonitorEndWorkoutReminderDate"];

    v14 = *(a1 + 32);
  }

  v17 = *(v14 + 120);
  if (v17)
  {
    *(v14 + 120) = 0;

    v18 = [*(a1 + 32) defaultsManager];
    [v18 setObject:0 forKey:@"SMDefaultsSessionWorkoutMonitorLatestWorkoutAutoPauseDate"];
LABEL_19:
  }

LABEL_20:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v31 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      v32 = objc_opt_class();
      v33 = NSStringFromClass(v32);
      v34 = NSStringFromSelector(*(a1 + 56));
      v35 = *(a1 + 32);
      v82 = WeakRetained;
      v36 = v6;
      if (*(v35 + 9))
      {
        v37 = @"YES";
      }

      else
      {
        v37 = @"NO";
      }

      v38 = [*(v35 + 104) stringFromDate];
      v39 = [*(*(a1 + 32) + 112) stringFromDate];
      v40 = [*(*(a1 + 32) + 120) stringFromDate];
      v41 = *(a1 + 32);
      v43 = *(v41 + 168);
      v42 = *(v41 + 176);
      *buf = 138414082;
      v84 = v33;
      v85 = 2112;
      v86 = v34;
      v87 = 2112;
      v88 = v37;
      v6 = v36;
      WeakRetained = v82;
      v89 = 2112;
      *v90 = v38;
      *&v90[8] = 2112;
      *&v90[10] = v39;
      v91 = 2112;
      v92 = v40;
      v93 = 2112;
      v94 = v43;
      v95 = 2048;
      v96 = v42;
      _os_log_impl(&dword_2304B3000, v31, OS_LOG_TYPE_INFO, "%@, %@, endWorkoutReminderSettingEnabled, %@, endWorkoutReminderDate, %@, latestWorkoutManualPauseDate, %@, latestWorkoutAutoPauseDate, %@, outdoorPedAutoPauseDistance, %@, outdoorPedAutoPauseDistanceThreshold, %f", buf, 0x52u);
    }
  }

  v44 = *(a1 + 32);
  if (!v44[16])
  {
    v45 = objc_opt_new();
    v46 = *(a1 + 32);
    v47 = *(v46 + 128);
    *(v46 + 128) = v45;

    v44 = *(a1 + 32);
  }

  v48 = [v44 endWorkoutReminderDate];
  if (v48)
  {
    v49 = v48;
    v50 = [*(a1 + 32) endWorkoutReminderDate];
    v51 = [*(a1 + 32) sessionConfiguration];
    v52 = [v51 sessionStartDate];
    if ([v50 isAfterDate:v52])
    {
      v53 = [*(a1 + 32) endWorkoutReminderDate];
      v54 = [v53 isBeforeDate:*(a1 + 40)];

      if (!v54)
      {
        goto LABEL_35;
      }

      v55 = *(a1 + 32);
      [v55 _workoutEndReminderTimeout];
      v57 = v56;
      v58 = *(a1 + 40);
      v49 = [*(a1 + 32) endWorkoutReminderDate];
      [v58 timeIntervalSinceDate:v49];
      [v55 _initializeTimerWithIdentifier:@"com.apple.routined.SMSessionWorkoutMonitor.workoutEndReminderTimerIdentifier" fireAfterDelay:v57 - v59];
    }

    else
    {
    }
  }

LABEL_35:
  v60 = [*(a1 + 32) latestWorkoutManualPauseDate];
  if (!v60)
  {
    goto LABEL_41;
  }

  v61 = v60;
  v62 = [*(a1 + 32) latestWorkoutManualPauseDate];
  v63 = [*(a1 + 32) sessionConfiguration];
  v64 = [v63 sessionStartDate];
  if ([v62 isAfterDate:v64])
  {
    v65 = [*(a1 + 32) latestWorkoutManualPauseDate];
    v66 = [v65 isBeforeDate:*(a1 + 40)];

    if (!v66)
    {
      goto LABEL_41;
    }

    v67 = *(a1 + 32);
    [v67 workoutManualPauseTimeout];
    v69 = v68;
    v70 = *(a1 + 40);
    v61 = [*(a1 + 32) latestWorkoutManualPauseDate];
    [v70 timeIntervalSinceDate:v61];
    [v67 _initializeTimerWithIdentifier:@"com.apple.routined.SMSessionWorkoutMonitor.workoutManualPauseTimerIdentifier" fireAfterDelay:v69 - v71];
  }

  else
  {
  }

LABEL_41:
  v72 = [*(a1 + 32) latestWorkoutAutoPauseDate];
  if (!v72)
  {
    goto LABEL_48;
  }

  v19 = v72;
  v21 = [*(a1 + 32) latestWorkoutAutoPauseDate];
  v73 = [*(a1 + 32) sessionConfiguration];
  v74 = [v73 sessionStartDate];
  if (![v21 isAfterDate:v74])
  {

    goto LABEL_46;
  }

  v75 = [*(a1 + 32) latestWorkoutAutoPauseDate];
  v76 = [v75 isBeforeDate:*(a1 + 40)];

  if (v76)
  {
    v77 = *(a1 + 32);
    [v77 workoutAutoPauseTimeout];
    v79 = v78;
    v80 = *(a1 + 40);
    v19 = [*(a1 + 32) latestWorkoutAutoPauseDate];
    [v80 timeIntervalSinceDate:v19];
    [v77 _initializeTimerWithIdentifier:@"com.apple.routined.SMSessionWorkoutMonitor.workoutAutoPauseTimerIdentifier" fireAfterDelay:v79 - v81];
    goto LABEL_47;
  }

LABEL_48:
}

- (void)onHealthKitNotification:(id)notification
{
  notificationCopy = notification;
  queue = [(SMSessionWorkoutMonitor *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__SMSessionWorkoutMonitor_onHealthKitNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v8 = notificationCopy;
  selfCopy = self;
  v6 = notificationCopy;
  dispatch_async(queue, v7);
}

void __51__SMSessionWorkoutMonitor_onHealthKitNotification___block_invoke(uint64_t a1)
{
  v50 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 32);
      *buf = 136315394;
      v47 = "[SMSessionWorkoutMonitor onHealthKitNotification:]_block_invoke";
      v48 = 2112;
      v49 = v3;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "%s, processing, %@", buf, 0x16u);
    }
  }

  v4 = [*(a1 + 32) name];
  v5 = +[(RTNotification *)RTHealthKitManagerWorkoutEndReminderShowAlertNotification];
  v6 = [v4 isEqualToString:v5];

  if (v6)
  {
    goto LABEL_6;
  }

  v12 = [*(a1 + 32) name];
  v13 = +[(RTNotification *)RTHealthKitManagerWorkoutEndReminderAlertDismissedNotification];
  v14 = [v12 isEqualToString:v13];

  v15 = *(a1 + 32);
  if (v14)
  {
    if ([*(a1 + 40) _shouldPromptEndWorkoutReminderTriggerWithReason:{objc_msgSend(v15, "reason")}])
    {
      v16 = [SMTriggerNotification alloc];
      v17 = +[SMDateUtility date];
      v18 = [(SMTriggerNotification *)v16 initWithTriggerCategory:20 SOSState:1 triggerName:@"SMTriggerWorkout" date:v17 details:MEMORY[0x277CBEC10]];

      v19 = [*(a1 + 40) sessionMonitorDelegate];
      [v19 onTriggerNotification:v18];
      goto LABEL_11;
    }

    goto LABEL_17;
  }

  v20 = [v15 name];
  v21 = +[(RTNotification *)RTHealthKitManagerWorkoutSuggestedStopWorkoutNotification];
  v22 = [v20 isEqualToString:v21];

  if (!v22)
  {
    v23 = [*(a1 + 32) name];
    v24 = +[(RTNotification *)RTHealthKitManagerWorkoutResumedNotification];
    v25 = [v23 isEqualToString:v24];

    if (!v25)
    {
      v29 = [*(a1 + 32) name];
      v30 = +[(RTNotification *)RTHealthKitManagerWorkoutWillPauseWorkoutNotification];
      v31 = [v29 isEqualToString:v30];

      if (v31)
      {
        v32 = [MEMORY[0x277CBEAA8] date];
        v33 = *(a1 + 40);
        v34 = *(v33 + 120);
        *(v33 + 120) = v32;

        v35 = [*(a1 + 40) defaultsManager];
        [v35 setObject:*(*(a1 + 40) + 120) forKey:@"SMDefaultsSessionWorkoutMonitorLatestWorkoutAutoPauseDate"];

        v36 = *(a1 + 40);
        v45[0] = MEMORY[0x277D85DD0];
        v45[1] = 3221225472;
        v45[2] = __51__SMSessionWorkoutMonitor_onHealthKitNotification___block_invoke_91;
        v45[3] = &unk_2788C9890;
        v45[4] = v36;
        [v36 checkIfCurrentWorkoutIsOutdoorPedestrianWithHandler:v45];
        v11 = *(a1 + 40);
        v10 = @"com.apple.routined.SMSessionWorkoutMonitor.workoutAutoPauseTimerIdentifier";
        goto LABEL_7;
      }

      v37 = [*(a1 + 32) name];
      v38 = +[(RTNotification *)RTHealthKitManagerWorkoutWillResumeWorkoutNotification];
      v39 = [v37 isEqualToString:v38];

      if (!v39)
      {
        v18 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_12;
        }

        v19 = [*(a1 + 32) name];
        *buf = 138412290;
        v47 = v19;
        _os_log_error_impl(&dword_2304B3000, v18, OS_LOG_TYPE_ERROR, "unhandled notification, %@", buf, 0xCu);
LABEL_11:

LABEL_12:
        return;
      }

      v40 = *(a1 + 40);
      v41 = *(v40 + 120);
      *(v40 + 120) = 0;

      v42 = [*(a1 + 40) defaultsManager];
      [v42 setObject:*(*(a1 + 40) + 120) forKey:@"SMDefaultsSessionWorkoutMonitorLatestWorkoutAutoPauseDate"];

      v43 = *(a1 + 40);
      v44[0] = MEMORY[0x277D85DD0];
      v44[1] = 3221225472;
      v44[2] = __51__SMSessionWorkoutMonitor_onHealthKitNotification___block_invoke_3;
      v44[3] = &unk_2788C9890;
      v44[4] = v43;
      [v43 checkIfCurrentWorkoutIsOutdoorPedestrianWithHandler:v44];
      v27 = *(a1 + 40);
      v28 = @"com.apple.routined.SMSessionWorkoutMonitor.workoutAutoPauseTimerIdentifier";
      goto LABEL_18;
    }

LABEL_17:
    v26 = [*(a1 + 40) defaultsManager];
    [v26 setObject:0 forKey:@"SMDefaultsSessionWorkoutMonitorEndWorkoutReminderDate"];

    v27 = *(a1 + 40);
    v28 = @"com.apple.routined.SMSessionWorkoutMonitor.workoutEndReminderTimerIdentifier";
LABEL_18:
    [v27 _tearDownTimerWithIdentifier:v28];
    return;
  }

  if (([*(a1 + 40) endWorkoutReminderSettingEnabled] & 1) == 0)
  {
LABEL_6:
    v7 = [*(a1 + 40) defaultsManager];
    v8 = [MEMORY[0x277CBEAA8] date];
    [v7 setObject:v8 forKey:@"SMDefaultsSessionWorkoutMonitorEndWorkoutReminderDate"];

    v9 = *(a1 + 40);
    [v9 _workoutEndReminderTimeout];
    v10 = @"com.apple.routined.SMSessionWorkoutMonitor.workoutEndReminderTimerIdentifier";
    v11 = v9;
LABEL_7:
    [v11 _initializeTimerWithIdentifier:v10 fireAfterDelay:?];
  }
}

uint64_t __51__SMSessionWorkoutMonitor_onHealthKitNotification___block_invoke_91(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __51__SMSessionWorkoutMonitor_onHealthKitNotification___block_invoke_2;
  v3[3] = &unk_2788CF498;
  v3[4] = v1;
  return [v1 takeOdometerDistanceSampleWithHandler:v3];
}

void __51__SMSessionWorkoutMonitor_onHealthKitNotification___block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(a1 + 32) + 168), a2);
  v4 = a2;
  v5 = [*(a1 + 32) defaultsManager];
  [v5 setObject:*(*(a1 + 32) + 168) forKey:@"SMDefaultsSessionWorkoutMonitorOutdoorPedAutoPauseDistance"];
}

void __51__SMSessionWorkoutMonitor_onHealthKitNotification___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 168);
  *(v2 + 168) = 0;

  v4 = [*(a1 + 32) defaultsManager];
  [v4 setObject:*(*(a1 + 32) + 168) forKey:@"SMDefaultsSessionWorkoutMonitorOutdoorPedAutoPauseDistance"];
}

- (void)onNoMovementMonitorNotification:(id)notification
{
  notificationCopy = notification;
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __59__SMSessionWorkoutMonitor_onNoMovementMonitorNotification___block_invoke;
  v11 = &unk_2788C4A70;
  v12 = notificationCopy;
  selfCopy = self;
  v5 = notificationCopy;
  v6 = _Block_copy(&v8);
  v7 = [(SMSessionWorkoutMonitor *)self queue:v8];
  dispatch_async(v7, v6);
}

void __59__SMSessionWorkoutMonitor_onNoMovementMonitorNotification___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) name];
  v3 = +[(RTNotification *)SMCMNoMovementStateUpdateNotification];
  v4 = [v2 isEqualToString:v3];

  if (v4)
  {
    v5 = [*(a1 + 32) state];
    v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315394;
      v13 = "[SMSessionWorkoutMonitor onNoMovementMonitorNotification:]_block_invoke";
      v14 = 2112;
      v15 = v5;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_DEFAULT, "%s, onNoMovementMonitorNotification, %@", &v12, 0x16u);
    }

    if ([*(a1 + 40) _shouldPromptNoMovementTrigger:v5])
    {
      v7 = +[SMSessionWorkoutMonitor convertNoMovementDetectionTypeToTriggerCategory:](SMSessionWorkoutMonitor, "convertNoMovementDetectionTypeToTriggerCategory:", [v5 detectionType]);
      v8 = [SMTriggerNotification alloc];
      v9 = +[SMDateUtility date];
      v10 = [(SMTriggerNotification *)v8 initWithTriggerCategory:v7 SOSState:1 triggerName:@"SMTriggerWorkout" date:v9 details:MEMORY[0x277CBEC10]];

      v11 = [*(a1 + 40) sessionMonitorDelegate];
      [v11 onTriggerNotification:v10];
    }
  }
}

- (void)checkIfCurrentWorkoutIsOutdoorPedestrianWithHandler:(id)handler
{
  handlerCopy = handler;
  healthKitManager = [(SMSessionWorkoutMonitor *)self healthKitManager];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __79__SMSessionWorkoutMonitor_checkIfCurrentWorkoutIsOutdoorPedestrianWithHandler___block_invoke;
  v7[3] = &unk_2788CBE80;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [healthKitManager fetchCurrentWorkoutSnapshotWithHandler:v7];
}

void __79__SMSessionWorkoutMonitor_checkIfCurrentWorkoutIsOutdoorPedestrianWithHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = 136315394;
        v9 = "[SMSessionWorkoutMonitor checkIfCurrentWorkoutIsOutdoorPedestrianWithHandler:]_block_invoke";
        v10 = 2112;
        v11 = v6;
        _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%s, error, %@", &v8, 0x16u);
      }
    }

    (*(*(a1 + 32) + 16))();
  }

  if (!v5 || [v5 locationType] == 3 && (objc_msgSend(v5, "activityType") == 52 || objc_msgSend(v5, "activityType") == 37 || objc_msgSend(v5, "activityType") == 24))
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)takeOdometerDistanceSampleWithHandler:(id)handler
{
  handlerCopy = handler;
  objc_initWeak(&location, self);
  cmOdometer = [(SMSessionWorkoutMonitor *)self cmOdometer];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__SMSessionWorkoutMonitor_takeOdometerDistanceSampleWithHandler___block_invoke;
  v7[3] = &unk_2788CF4C0;
  objc_copyWeak(&v9, &location);
  v6 = handlerCopy;
  v8 = v6;
  [cmOdometer startOdometerUpdatesForActivity:2 withHandler:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __65__SMSessionWorkoutMonitor_takeOdometerDistanceSampleWithHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v8 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v14 = 136315394;
        v15 = "[SMSessionWorkoutMonitor takeOdometerDistanceSampleWithHandler:]_block_invoke";
        v16 = 2112;
        v17 = v6;
        _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "%s error %@", &v14, 0x16u);
      }
    }

    (*(*(a1 + 32) + 16))();
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = [v5 odometer];
        v14 = 136315394;
        v15 = "[SMSessionWorkoutMonitor takeOdometerDistanceSampleWithHandler:]_block_invoke";
        v16 = 2112;
        v17 = v10;
        _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "%s odometer distance %@", &v14, 0x16u);
      }
    }

    v11 = *(a1 + 32);
    v12 = [v5 odometer];
    (*(v11 + 16))(v11, v12);
  }

  v13 = [WeakRetained cmOdometer];
  [v13 stopOdometerUpdates];
}

- (BOOL)_shouldPromptNoMovementTrigger:(id)trigger
{
  triggerCopy = trigger;
  v5 = !-[SMSessionWorkoutMonitor isWorkoutPaused](self, "isWorkoutPaused") && [triggerCopy state] == 2;

  return v5;
}

+ (unint64_t)convertNoMovementDetectionTypeToTriggerCategory:(int64_t)category
{
  if (category > 3)
  {
    return -1;
  }

  else
  {
    return qword_230B014D8[category];
  }
}

- (void)_initializeTimerWithIdentifier:(id)identifier fireAfterDelay:(double)delay
{
  v34 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  timerIdentifierToTimers = [(SMSessionWorkoutMonitor *)self timerIdentifierToTimers];
  v8 = [timerIdentifierToTimers objectForKey:identifierCopy];

  v9 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
  if (v8)
  {
    if (v9)
    {
      v10 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        v29 = "[SMSessionWorkoutMonitor _initializeTimerWithIdentifier:fireAfterDelay:]";
        v30 = 2112;
        v31 = identifierCopy;
        v32 = 2048;
        delayCopy2 = delay;
        _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "%s, timerIdentifier already exists, skipping %@, delay, %.1f", buf, 0x20u);
      }
    }
  }

  else
  {
    if (v9)
    {
      v11 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        v29 = "[SMSessionWorkoutMonitor _initializeTimerWithIdentifier:fireAfterDelay:]";
        v30 = 2112;
        v31 = identifierCopy;
        v32 = 2048;
        delayCopy2 = delay;
        _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_INFO, "%s, timerIdentifier, %@, delay, %.1f", buf, 0x20u);
      }
    }

    objc_initWeak(&location, self);
    v12 = +[SMDateUtility date];
    timerManager = self->_timerManager;
    queue = [(SMSessionWorkoutMonitor *)self queue];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __73__SMSessionWorkoutMonitor__initializeTimerWithIdentifier_fireAfterDelay___block_invoke;
    v23[3] = &unk_2788CF4E8;
    v15 = identifierCopy;
    v24 = v15;
    v16 = v12;
    v25 = v16;
    objc_copyWeak(&v26, &location);
    v17 = [(RTTimerManager *)timerManager xpcTimerAlarmWithIdentifier:v15 queue:queue handler:v23];

    timerIdentifierToTimers2 = [(SMSessionWorkoutMonitor *)self timerIdentifierToTimers];
    [timerIdentifierToTimers2 setObject:v17 forKey:v15];

    v19 = [v16 dateByAddingTimeInterval:delay];
    v22 = 0;
    [v17 fireWithDate:v19 error:&v22];
    v20 = v22;

    if (v20)
    {
      v21 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v29 = "[SMSessionWorkoutMonitor _initializeTimerWithIdentifier:fireAfterDelay:]";
        v30 = 2112;
        v31 = v20;
        _os_log_error_impl(&dword_2304B3000, v21, OS_LOG_TYPE_ERROR, "%s, error in fire timer, %@", buf, 0x16u);
      }
    }

    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
  }
}

void __73__SMSessionWorkoutMonitor__initializeTimerWithIdentifier_fireAfterDelay___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = +[SMDateUtility date];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 32);
      [v2 timeIntervalSinceDate:*(a1 + 40)];
      v7 = 136315650;
      v8 = "[SMSessionWorkoutMonitor _initializeTimerWithIdentifier:fireAfterDelay:]_block_invoke";
      v9 = 2112;
      v10 = v4;
      v11 = 2048;
      v12 = v5;
      _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "%s, timer fired, timerIdentifier, %@, %.2f since created", &v7, 0x20u);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _onTimerExpiryForTimerIdentifier:*(a1 + 32)];
}

- (void)_onTimerExpiryForTimerIdentifier:(id)identifier
{
  v22 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v19 = "[SMSessionWorkoutMonitor _onTimerExpiryForTimerIdentifier:]";
      v20 = 2112;
      v21 = identifierCopy;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%s, %@", buf, 0x16u);
    }
  }

  sessionMonitorDelegate = [(SMSessionWorkoutMonitor *)self sessionMonitorDelegate];
  if (identifierCopy == @"com.apple.routined.SMSessionWorkoutMonitor.workoutEndReminderTimerIdentifier")
  {
    v11 = [SMTriggerNotification alloc];
    v12 = +[SMDateUtility date];
    v13 = MEMORY[0x277CBEC10];
    v14 = v11;
    v15 = 20;
LABEL_12:
    v9 = [(SMTriggerNotification *)v14 initWithTriggerCategory:v15 SOSState:1 triggerName:@"SMTriggerWorkout" date:v12 details:v13];

    [sessionMonitorDelegate onTriggerNotification:v9];
    goto LABEL_13;
  }

  if (identifierCopy == @"com.apple.routined.SMSessionWorkoutMonitor.workoutManualPauseTimerIdentifier")
  {
    v16 = [SMTriggerNotification alloc];
    v12 = +[SMDateUtility date];
    v13 = MEMORY[0x277CBEC10];
    v14 = v16;
    v15 = 22;
    goto LABEL_12;
  }

  if (identifierCopy == @"com.apple.routined.SMSessionWorkoutMonitor.workoutAutoPauseTimerIdentifier")
  {
    [(SMSessionWorkoutMonitor *)self _initializeTimerWithIdentifier:@"com.apple.routined.SMSessionWorkoutMonitorWorkoutAutoPauseFireTriggerTimerIdentifier" fireAfterDelay:10.0];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __60__SMSessionWorkoutMonitor__onTimerExpiryForTimerIdentifier___block_invoke;
    v17[3] = &unk_2788C9890;
    v17[4] = self;
    [(SMSessionWorkoutMonitor *)self checkIfCurrentWorkoutIsOutdoorPedestrianWithHandler:v17];
    goto LABEL_14;
  }

  if (identifierCopy == @"com.apple.routined.SMSessionWorkoutMonitorWorkoutAutoPauseFireTriggerTimerIdentifier")
  {
    v7 = [SMTriggerNotification alloc];
    v8 = +[SMDateUtility date];
    v9 = [(SMTriggerNotification *)v7 initWithTriggerCategory:25 SOSState:1 triggerName:@"SMTriggerWorkout" date:v8 details:MEMORY[0x277CBEC10]];

    [sessionMonitorDelegate onTriggerNotification:v9];
    cmOdometer = [(SMSessionWorkoutMonitor *)self cmOdometer];
    [cmOdometer stopOdometerUpdates];

LABEL_13:
  }

LABEL_14:
  [(SMSessionWorkoutMonitor *)self _tearDownTimerWithIdentifier:identifierCopy];
}

uint64_t __60__SMSessionWorkoutMonitor__onTimerExpiryForTimerIdentifier___block_invoke(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = *(result + 32);
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __60__SMSessionWorkoutMonitor__onTimerExpiryForTimerIdentifier___block_invoke_2;
    v3[3] = &unk_2788CF498;
    v3[4] = v2;
    return [v2 takeOdometerDistanceSampleWithHandler:v3];
  }

  return result;
}

void __60__SMSessionWorkoutMonitor__onTimerExpiryForTimerIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(*(a1 + 32) + 168);
    v13 = 136315650;
    v14 = "[SMSessionWorkoutMonitor _onTimerExpiryForTimerIdentifier:]_block_invoke_2";
    v15 = 2112;
    v16 = v5;
    v17 = 2112;
    v18 = v3;
    _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_DEFAULT, "%s intial distance %@, final distance, %@", &v13, 0x20u);
  }

  if (v3 && *(*(a1 + 32) + 168))
  {
    [(__CFString *)v3 doubleValue];
    v7 = v6;
    [*(*(a1 + 32) + 168) doubleValue];
    v9 = v7 - v8;
    v10 = v9 >= 0.0 && v9 < *(*(a1 + 32) + 176);
    v11 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = @"NO";
      v14 = "[SMSessionWorkoutMonitor _onTimerExpiryForTimerIdentifier:]_block_invoke";
      v13 = 136315650;
      if (v10)
      {
        v12 = @"YES";
      }

      v15 = 2048;
      v16 = v9;
      v17 = 2112;
      v18 = v12;
      _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_DEFAULT, "%s delta distance %f, should trigger, %@", &v13, 0x20u);
    }

    if (!v10)
    {
      [*(a1 + 32) _tearDownTimerWithIdentifier:@"com.apple.routined.SMSessionWorkoutMonitorWorkoutAutoPauseFireTriggerTimerIdentifier"];
    }
  }
}

- (void)_tearDownTimerWithIdentifier:(id)identifier
{
  v15 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v11 = 136315394;
      v12 = "[SMSessionWorkoutMonitor _tearDownTimerWithIdentifier:]";
      v13 = 2112;
      v14 = identifierCopy;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%s, %@", &v11, 0x16u);
    }
  }

  timerIdentifierToTimers = [(SMSessionWorkoutMonitor *)self timerIdentifierToTimers];
  v7 = [timerIdentifierToTimers objectForKey:identifierCopy];

  if (v7)
  {
    timerIdentifierToTimers2 = [(SMSessionWorkoutMonitor *)self timerIdentifierToTimers];
    v9 = [timerIdentifierToTimers2 objectForKey:identifierCopy];
    [v9 invalidate];

    timerIdentifierToTimers3 = [(SMSessionWorkoutMonitor *)self timerIdentifierToTimers];
    [timerIdentifierToTimers3 removeObjectForKey:identifierCopy];
  }
}

- (void)_removeTimers
{
  v21 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v20 = "[SMSessionWorkoutMonitor _removeTimers]";
      _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
    }
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  timerIdentifierToTimers = [(SMSessionWorkoutMonitor *)self timerIdentifierToTimers];
  allKeys = [timerIdentifierToTimers allKeys];

  v6 = [allKeys countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(allKeys);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        timerIdentifierToTimers2 = [(SMSessionWorkoutMonitor *)self timerIdentifierToTimers];
        v12 = [timerIdentifierToTimers2 objectForKeyedSubscript:v10];
        [v12 invalidate];

        ++v9;
      }

      while (v7 != v9);
      v7 = [allKeys countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  timerIdentifierToTimers3 = [(SMSessionWorkoutMonitor *)self timerIdentifierToTimers];
  [timerIdentifierToTimers3 removeAllObjects];

  [(SMSessionWorkoutMonitor *)self setTimerIdentifierToTimers:0];
}

- (double)_workoutEndReminderTimeout
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v5 = 136315138;
      v6 = "[SMSessionWorkoutMonitor _workoutEndReminderTimeout]";
      _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "%s", &v5, 0xCu);
    }
  }

  if ([(SMSessionWorkoutMonitor *)self endWorkoutReminderSettingEnabled])
  {
    [(SMSessionWorkoutMonitor *)self endWorkoutReminderTimeoutSettingEnabled];
  }

  else
  {
    [(SMSessionWorkoutMonitor *)self endWorkoutReminderTimeoutSettingDisabled];
  }

  return result;
}

- (SMTriggerManagerProtocol)sessionMonitorDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->sessionMonitorDelegate);

  return WeakRetained;
}

@end