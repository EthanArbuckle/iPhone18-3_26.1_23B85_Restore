@interface RTVisitMonitor
+ (double)LocationHeartbeatWhileAwake;
+ (id)bucketLocations:(id)locations interval:(double)interval;
+ (id)hyperParameterForPipelineType:(unint64_t)type;
+ (id)regionMonitoringClientIdentifierForPipelineType:(unint64_t)type;
+ (id)regionWithRegionIdentifier:(id)identifier location:(id)location shouldNotifyForEntry:(BOOL)entry;
+ (int64_t)hintSourceForRegionCallbackType:(int64_t)type;
- (BOOL)_setupGeoFencesForVisit:(id)visit pipelineType:(unint64_t)type error:(id *)error;
- (RTVisitMonitor)initWithDefaultsManager:(id)manager deviceLocationPredictor:(id)predictor distanceCalculator:(id)calculator hintManager:(id)hintManager learnedLocationManager:(id)locationManager locationAwarenessManager:(id)awarenessManager locationManager:(id)a9 metricManager:(id)self0 motionActivityManager:(id)self1 platform:(id)self2 queue:(id)self3 state:(id)self4 timerManager:(id)self5 visitLabeler:(id)self6;
- (RTVisitMonitor)initWithDefaultsManager:(id)manager deviceLocationPredictor:(id)predictor hintManager:(id)hintManager learnedLocationManager:(id)locationManager locationAwarenessManager:(id)awarenessManager locationManager:(id)a8 metricManager:(id)metricManager motionActivityManager:(id)self0 platform:(id)self1 queue:(id)self2 state:(id)self3 visitLabeler:(id)self4;
- (RTVisitMonitorDelegate)delegate;
- (double)maxHorizontalAccuracyOverride;
- (id)_configurationForPipelineType:(unint64_t)type;
- (id)_createPipelineWithType:(unint64_t)type name:(id)name lastVisit:(id)visit;
- (id)_moduleWithName:(id)name pipelineType:(unint64_t)type hyperParameter:(id)parameter;
- (id)_modulesForPipelineType:(unint64_t)type hyperParameter:(id)parameter;
- (id)_updateSourceForVisit:(id)visit;
- (unint64_t)visitPipelineTypeOverride;
- (void)_batchProcess:(id)process fromDate:(id)date toDate:(id)toDate handler:(id)handler;
- (void)_bootstrapPipeline:(id)pipeline handler:(id)handler;
- (void)_compareVisit:(id)visit previousVisit:(id)previousVisit;
- (void)_processLeechedLocations:(id)locations;
- (void)_processMatureLocations;
- (void)_processRealtimeVisits:(id)visits pipeline:(id)pipeline;
- (void)_registerVisitMonitorForRegionEventsForPipelineType:(unint64_t)type;
- (void)_setupRealtimePipelineWithType:(unint64_t)type handler:(id)handler;
- (void)_shutdown;
- (void)_startFeedBuffer;
- (void)_startFeedBufferTimer;
- (void)_stopFeedBuffer;
- (void)_stopMonitoringAllRegionsForPipelineType:(unint64_t)type;
- (void)_unregisterVisitMonitorForRegionEventsForPipelineType:(unint64_t)type;
- (void)compareVisit:(id)visit previousVisit:(id)previousVisit;
- (void)fetchVisitMonitorState:(id)state;
- (void)fetchVisitMonitorStatusWithHandler:(id)handler;
- (void)fetchVisitsFromDate:(id)date toDate:(id)toDate handler:(id)handler;
- (void)handleLowConfidenceVisitIncident:(id)incident;
- (void)handleRegionCallback:(int64_t)callback region:(id)region clientIdentifier:(id)identifier;
- (void)handleVisitIncident:(id)incident;
- (void)onLeechedLocationsNotification:(id)notification;
- (void)setFeedBufferReferenceCounter:(unint64_t)counter;
- (void)setHighConfidencePipelineReferenceCounter:(unint64_t)counter;
- (void)setLowConfidencePipelineReferenceCounter:(unint64_t)counter;
- (void)setMonitoringLeechedVisitIncidents:(BOOL)incidents;
- (void)setMonitoringLowConfidenceVisitIncidents:(BOOL)incidents;
- (void)setMonitoringVisitIncidents:(BOOL)incidents;
- (void)setupGeoFencesForVisit:(id)visit pipelineType:(unint64_t)type handler:(id)handler;
- (void)showVisitReentryDetectionUI;
- (void)shutdownWithHandler:(id)handler;
- (void)startMonitoringLeechedVisitIncidents;
- (void)startMonitoringLowConfidenceVisitIncidents;
- (void)startMonitoringVisitIncidents;
- (void)stopMonitoringLeechedVisitIncidents;
- (void)stopMonitoringLowConfidenceVisitIncidents;
- (void)stopMonitoringVisitIncidents;
@end

@implementation RTVisitMonitor

- (void)_startFeedBufferTimer
{
  if (!self->_feedBufferTimer)
  {
    if ([(RTVisitFeedBuffer *)self->_feedBuffer numLocations])
    {
      objc_initWeak(&location, self);
      timerManager = self->_timerManager;
      queue = [(RTVisitMonitor *)self queue];
      v9 = MEMORY[0x277D85DD0];
      v10 = 3221225472;
      v11 = __39__RTVisitMonitor__startFeedBufferTimer__block_invoke;
      v12 = &unk_2788C5908;
      objc_copyWeak(&v13, &location);
      v5 = [(RTTimerManager *)timerManager timerWithIdentifier:@"com.apple.routined.visit.feedbuffer.timer" queue:queue handler:&v9];
      feedBufferTimer = self->_feedBufferTimer;
      self->_feedBufferTimer = v5;

      v7 = self->_feedBufferTimer;
      [(RTVisitFeedBuffer *)self->_feedBuffer minWaitInterval:v9];
      [(RTTimer *)v7 fireAfterDelay:v8 * 0.5];
      [(RTTimer *)self->_feedBufferTimer resume];
      objc_destroyWeak(&v13);
      objc_destroyWeak(&location);
    }
  }
}

void __39__RTVisitMonitor__startFeedBufferTimer__block_invoke(uint64_t a1)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      *v5 = 0;
      _os_log_debug_impl(&dword_2304B3000, v2, OS_LOG_TYPE_DEBUG, "feedBuffer timer expiry", v5, 2u);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained[2] invalidate];
  v4 = WeakRetained[2];
  WeakRetained[2] = 0;

  [WeakRetained _processMatureLocations];
  [WeakRetained _startFeedBufferTimer];
}

- (void)_processMatureLocations
{
  v19 = *MEMORY[0x277D85DE8];
  numLocations = [(RTVisitFeedBuffer *)self->_feedBuffer numLocations];
  if (numLocations)
  {
    v5 = numLocations;
    maturedLocations = [(RTVisitFeedBuffer *)self->_feedBuffer maturedLocations];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v7 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v9 = NSStringFromSelector(a2);
        *buf = 138412802;
        v14 = v9;
        v15 = 2048;
        v16 = [maturedLocations count];
        v17 = 2048;
        v18 = v5;
        _os_log_debug_impl(&dword_2304B3000, v7, OS_LOG_TYPE_DEBUG, "%@, processing %lu/%lu matured locations from feedBuffer", buf, 0x20u);
      }
    }

    if ([maturedLocations count])
    {
      pipelines = self->_pipelines;
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __41__RTVisitMonitor__processMatureLocations__block_invoke;
      v10[3] = &unk_2788CA4B8;
      v11 = maturedLocations;
      selfCopy = self;
      [(NSMutableDictionary *)pipelines enumerateKeysAndObjectsUsingBlock:v10];
    }
  }
}

void __41__RTVisitMonitor__processMatureLocations__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if ([v5 bootStrappingDone])
  {
    v4 = [v5 processLocations:*(a1 + 32)];
    [*(a1 + 40) _processRealtimeVisits:v4 pipeline:v5];
  }
}

+ (double)LocationHeartbeatWhileAwake
{
  v12 = *MEMORY[0x277D85DE8];
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults objectForKey:@"VisitMonitorLocationHeartbeatIntervalWhileAwake"];

  if (v3)
  {
    [v3 doubleValue];
    v5 = v4;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v6 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v8 = 138412546;
        v9 = @"VisitMonitorLocationHeartbeatIntervalWhileAwake";
        v10 = 2048;
        v11 = v5;
        _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@ overridden to %.1fs", &v8, 0x16u);
      }
    }
  }

  else
  {
    v5 = 300.0;
  }

  return v5;
}

+ (id)regionMonitoringClientIdentifierForPipelineType:(unint64_t)type
{
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [RTVisitPipeline typeToString:type];
  v8 = [v4 stringWithFormat:@"%@.%@", v6, v7];

  return v8;
}

- (RTVisitMonitor)initWithDefaultsManager:(id)manager deviceLocationPredictor:(id)predictor hintManager:(id)hintManager learnedLocationManager:(id)locationManager locationAwarenessManager:(id)awarenessManager locationManager:(id)a8 metricManager:(id)metricManager motionActivityManager:(id)self0 platform:(id)self1 queue:(id)self2 state:(id)self3 visitLabeler:(id)self4
{
  labelerCopy = labeler;
  stateCopy = state;
  queueCopy = queue;
  platformCopy = platform;
  activityManagerCopy = activityManager;
  metricManagerCopy = metricManager;
  v37 = a8;
  awarenessManagerCopy = awarenessManager;
  locationManagerCopy = locationManager;
  hintManagerCopy = hintManager;
  predictorCopy = predictor;
  managerCopy = manager;
  v30 = objc_opt_new();
  v34 = objc_opt_new();
  v22 = locationManagerCopy;
  v23 = [(RTVisitMonitor *)self initWithDefaultsManager:managerCopy deviceLocationPredictor:predictorCopy distanceCalculator:v30 hintManager:hintManagerCopy learnedLocationManager:locationManagerCopy locationAwarenessManager:awarenessManagerCopy locationManager:v37 metricManager:metricManagerCopy motionActivityManager:activityManagerCopy platform:platformCopy queue:queueCopy state:stateCopy timerManager:v34 visitLabeler:labelerCopy];

  return v23;
}

- (RTVisitMonitor)initWithDefaultsManager:(id)manager deviceLocationPredictor:(id)predictor distanceCalculator:(id)calculator hintManager:(id)hintManager learnedLocationManager:(id)locationManager locationAwarenessManager:(id)awarenessManager locationManager:(id)a9 metricManager:(id)self0 motionActivityManager:(id)self1 platform:(id)self2 queue:(id)self3 state:(id)self4 timerManager:(id)self5 visitLabeler:(id)self6
{
  managerCopy = manager;
  predictorCopy = predictor;
  calculatorCopy = calculator;
  calculatorCopy2 = calculator;
  hintManagerCopy = hintManager;
  hintManagerCopy2 = hintManager;
  locationManagerCopy = locationManager;
  locationManagerCopy2 = locationManager;
  awarenessManagerCopy = awarenessManager;
  awarenessManagerCopy2 = awarenessManager;
  v21 = a9;
  metricManagerCopy = metricManager;
  activityManagerCopy = activityManager;
  platformCopy = platform;
  queueCopy = queue;
  stateCopy = state;
  timerManagerCopy = timerManager;
  labelerCopy = labeler;
  v52 = labelerCopy;
  if (managerCopy)
  {
    v26 = predictorCopy;
    if (!predictorCopy)
    {
      v39 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      v27 = calculatorCopy2;
      v37 = locationManagerCopy2;
      v38 = hintManagerCopy2;
      v28 = awarenessManagerCopy2;
      if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
LABEL_22:

        v35 = 0;
        goto LABEL_52;
      }

      *buf = 0;
      v43 = "Invalid parameter not satisfying: deviceLocationPredictor";
LABEL_37:
      _os_log_error_impl(&dword_2304B3000, v39, OS_LOG_TYPE_ERROR, v43, buf, 2u);
      goto LABEL_22;
    }

    v27 = calculatorCopy2;
    v28 = awarenessManagerCopy2;
    if (!calculatorCopy2)
    {
      v38 = hintManagerCopy2;
      v40 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2304B3000, v40, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: distanceCalculator", buf, 2u);
      }

      v35 = 0;
      goto LABEL_51;
    }

    if (hintManagerCopy2)
    {
      if (locationManagerCopy2)
      {
        if (awarenessManagerCopy2)
        {
          if (v21)
          {
            if (metricManagerCopy)
            {
              if (activityManagerCopy)
              {
                if (platformCopy)
                {
                  if (queueCopy)
                  {
                    if (stateCopy)
                    {
                      if (timerManagerCopy)
                      {
                        if (labelerCopy)
                        {
                          v61.receiver = self;
                          v61.super_class = RTVisitMonitor;
                          v29 = [(RTVisitMonitor *)&v61 init];
                          v30 = v29;
                          if (v29)
                          {
                            objc_storeStrong(&v29->_defaultsManager, manager);
                            objc_storeStrong(&v30->_deviceLocationPredictor, predictor);
                            objc_storeStrong(&v30->_distanceCalculator, calculatorCopy);
                            objc_storeStrong(&v30->_hintManager, hintManagerCopy);
                            objc_storeStrong(&v30->_learnedLocationManager, locationManagerCopy);
                            objc_storeStrong(&v30->_locationAwarenessManager, awarenessManagerCopy);
                            objc_storeStrong(&v30->_locationManager, a9);
                            objc_storeStrong(&v30->_metricManager, metricManager);
                            objc_storeStrong(&v30->_motionActivityManager, activityManager);
                            objc_storeStrong(&v30->_platform, platform);
                            objc_storeStrong(&v30->_timerManager, timerManager);
                            objc_storeStrong(&v30->_state, state);
                            objc_storeStrong(&v30->_queue, queue);
                            v31 = objc_opt_new();
                            pipelines = v30->_pipelines;
                            v30->_pipelines = v31;

                            v33 = objc_opt_new();
                            pipelinesMonitoringRegion = v30->_pipelinesMonitoringRegion;
                            v30->_pipelinesMonitoringRegion = v33;

                            objc_storeStrong(&v30->_visitLabeler, labeler);
                          }

                          v35 = v30;
                          self = v35;
                          goto LABEL_50;
                        }

                        v39 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                        v37 = locationManagerCopy2;
                        v38 = hintManagerCopy2;
                        if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
                        {
                          goto LABEL_22;
                        }

                        *buf = 0;
                        v43 = "Invalid parameter not satisfying: visitLabeler";
                        goto LABEL_37;
                      }

                      v41 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 0;
                        v42 = "Invalid parameter not satisfying: timerManager";
                        goto LABEL_48;
                      }

LABEL_49:

                      v35 = 0;
LABEL_50:
                      v38 = hintManagerCopy2;
LABEL_51:
                      v37 = locationManagerCopy2;
                      goto LABEL_52;
                    }

                    v41 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                    if (!os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_49;
                    }

                    *buf = 0;
                    v42 = "Invalid parameter not satisfying: state";
                  }

                  else
                  {
                    v41 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                    if (!os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_49;
                    }

                    *buf = 0;
                    v42 = "Invalid parameter not satisfying: queue";
                  }
                }

                else
                {
                  v41 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                  if (!os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_49;
                  }

                  *buf = 0;
                  v42 = "Invalid parameter not satisfying: platform";
                }
              }

              else
              {
                v41 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                if (!os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_49;
                }

                *buf = 0;
                v42 = "Invalid parameter not satisfying: motionActivityManager";
              }
            }

            else
            {
              v41 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
              if (!os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_49;
              }

              *buf = 0;
              v42 = "Invalid parameter not satisfying: metricManager";
            }
          }

          else
          {
            v41 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
            if (!os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_49;
            }

            *buf = 0;
            v42 = "Invalid parameter not satisfying: locationManager";
          }
        }

        else
        {
          v41 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
          if (!os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_49;
          }

          *buf = 0;
          v42 = "Invalid parameter not satisfying: locationAwarenessManager";
        }
      }

      else
      {
        v41 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (!os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_49;
        }

        *buf = 0;
        v42 = "Invalid parameter not satisfying: learnedLocationManager";
      }
    }

    else
    {
      v41 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (!os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_49;
      }

      *buf = 0;
      v42 = "Invalid parameter not satisfying: hintManager";
    }

LABEL_48:
    _os_log_error_impl(&dword_2304B3000, v41, OS_LOG_TYPE_ERROR, v42, buf, 2u);
    goto LABEL_49;
  }

  v26 = predictorCopy;
  v36 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2304B3000, v36, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: defaultsManager", buf, 2u);
  }

  v35 = 0;
  v27 = calculatorCopy2;
  v37 = locationManagerCopy2;
  v38 = hintManagerCopy2;
  v28 = awarenessManagerCopy2;
LABEL_52:

  return v35;
}

- (void)shutdownWithHandler:(id)handler
{
  handlerCopy = handler;
  queue = [(RTVisitMonitor *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__RTVisitMonitor_shutdownWithHandler___block_invoke;
  v7[3] = &unk_2788C4938;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

uint64_t __38__RTVisitMonitor_shutdownWithHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _shutdown];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)_shutdown
{
  v23 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = NSStringFromSelector(a2);
      *buf = 138412546;
      v20 = v5;
      v21 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%@ %@", buf, 0x16u);
    }
  }

  locationManager = [(RTVisitMonitor *)self locationManager];
  [locationManager removeObserver:self];

  locationAwarenessManager = [(RTVisitMonitor *)self locationAwarenessManager];
  [locationAwarenessManager removeLocationHeartbeatRequester:self];

  [(RTVisitMonitor *)self _unregisterVisitMonitorForRegionEventsForPipelineType:2];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  pipelines = [(RTVisitMonitor *)self pipelines];
  allValues = [pipelines allValues];

  v10 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v14 + 1) + 8 * v13++) shutdown];
      }

      while (v11 != v13);
      v11 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

- (double)maxHorizontalAccuracyOverride
{
  defaultsManager = [(RTVisitMonitor *)self defaultsManager];
  v3 = [defaultsManager objectForKey:@"MaxHorizontalAccuracy"];

  if (v3)
  {
    [v3 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = -1.0;
  }

  return v5;
}

- (unint64_t)visitPipelineTypeOverride
{
  defaultsManager = [(RTVisitMonitor *)self defaultsManager];
  v3 = [defaultsManager objectForKey:@"PlaybackVisitPipelineType"];

  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = v3;
    v5 = 1;
    v6 = [objc_opt_class() typeToString:1];
    v7 = [v4 isEqualToString:v6];

    if ((v7 & 1) == 0)
    {
      v5 = 2;
      v8 = [objc_opt_class() typeToString:2];
      v9 = [v4 isEqualToString:v8];

      if ((v9 & 1) == 0)
      {
        v10 = [objc_opt_class() typeToString:4];
        v11 = [v4 isEqualToString:v10];

        if (v11)
        {
          v5 = 4;
        }

        else
        {
          v5 = 0;
        }
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setFeedBufferReferenceCounter:(unint64_t)counter
{
  feedBufferReferenceCounter = self->_feedBufferReferenceCounter;
  if (feedBufferReferenceCounter != counter)
  {
    v10 = v4;
    v11 = v3;
    if (feedBufferReferenceCounter)
    {
      if (counter)
      {
LABEL_4:
        self->_feedBufferReferenceCounter = counter;
        return;
      }
    }

    else
    {
      [(RTVisitMonitor *)self _startFeedBuffer];
      if (counter)
      {
        goto LABEL_4;
      }
    }

    [(RTVisitMonitor *)self _stopFeedBuffer:v10];
    goto LABEL_4;
  }
}

- (id)_moduleWithName:(id)name pipelineType:(unint64_t)type hyperParameter:(id)parameter
{
  v69 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  parameterCopy = parameter;
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v12 = [nameCopy isEqualToString:v11];

  if (v12)
  {
    if (type == 2)
    {
      v13 = [RTDelayedLocationRequester alloc];
      locationManager = [(RTVisitMonitor *)self locationManager];
      [parameterCopy maxHorizontalAccuracy];
      v16 = v15;
      queue = [(RTVisitMonitor *)self queue];
      locationManager2 = [(RTDelayedLocationRequester *)v13 initWithLocationManager:locationManager maxHorizontalAccuracy:queue queue:v16];
    }

    else
    {
      locationManager2 = 0;
    }

    v23 = [RTVisitPipelineModuleSCI alloc];
    defaultsManager = [(RTVisitMonitor *)self defaultsManager];
    hintManager = [(RTVisitMonitor *)self hintManager];
    queue2 = [(RTVisitMonitor *)self queue];
    v27 = [(RTVisitPipelineModuleSCI *)v23 initWithDefaultsManager:defaultsManager delayedLocationRequester:locationManager2 hintManager:hintManager queue:queue2 hyperParameter:parameterCopy useLowConfidence:type == 1];

    goto LABEL_8;
  }

  v19 = objc_opt_class();
  v20 = NSStringFromClass(v19);
  v21 = [nameCopy isEqualToString:v20];

  if (v21)
  {
    v22 = RTVisitPipelineModuleBurstNoiseFilter;
LABEL_11:
    v31 = [[v22 alloc] initWithHyperParameter:parameterCopy];
LABEL_12:
    v27 = v31;
    goto LABEL_13;
  }

  v28 = objc_opt_class();
  v29 = NSStringFromClass(v28);
  v30 = [nameCopy isEqualToString:v29];

  if (v30)
  {
    v22 = RTVisitPipelineModuleSpeedCluster;
    goto LABEL_11;
  }

  v33 = objc_opt_class();
  v34 = NSStringFromClass(v33);
  v35 = [nameCopy isEqualToString:v34];

  if (v35)
  {
    v36 = [RTVisitPipelineModuleSmoother alloc];
    timeIntervalBetweenSmoothedPoints = [parameterCopy timeIntervalBetweenSmoothedPoints];
    smootherKernelWidth = [parameterCopy smootherKernelWidth];
    [parameterCopy maxGapInVisit];
    v31 = [(RTVisitPipelineModuleSmoother *)v36 initWithTimeIntervalBetweenSmoothedPoints:timeIntervalBetweenSmoothedPoints kernelWidth:smootherKernelWidth smallestSignificantWeightExponent:-10.0 maxGapWithinVisit:v39];
    goto LABEL_12;
  }

  v40 = objc_opt_class();
  v41 = NSStringFromClass(v40);
  v42 = [nameCopy isEqualToString:v41];

  if (v42)
  {
    v43 = [RTVisitPipelineModuleTrajectorySequenceCluster alloc];
    v44 = [[RTVisitModelControllerBatchMode alloc] initWithHyperParameter:parameterCopy];
    v27 = [(RTVisitPipelineModuleTrajectorySequenceCluster *)v43 initWithVisitTrajectorySequenceClassifier:v44 hyperParameter:parameterCopy];

    goto LABEL_13;
  }

  v45 = objc_opt_class();
  v46 = NSStringFromClass(v45);
  v47 = [nameCopy isEqualToString:v46];

  if (v47)
  {
    v48 = [RTVisitPipelineModuleVisitCentroidUpdater alloc];
    locationManager2 = [(RTVisitMonitor *)self locationManager];
    defaultsManager2 = objc_opt_new();
    v50 = [(RTVisitPipelineModuleVisitCentroidUpdater *)v48 initWithHyperParameter:parameterCopy locationManager:locationManager2 distanceCalculator:defaultsManager2];
LABEL_22:
    v27 = v50;

LABEL_8:
    goto LABEL_13;
  }

  v51 = objc_opt_class();
  v52 = NSStringFromClass(v51);
  v53 = [nameCopy isEqualToString:v52];

  if (v53)
  {
    v54 = [RTVisitPipelineModuleAltitudeEstimator alloc];
    [parameterCopy maxHorizontalAccuracy];
    v56 = v55;
    locationManager2 = [(RTVisitMonitor *)self locationManager];
    v27 = [(RTVisitPipelineModuleAltitudeEstimator *)v54 initWithMaxHorizontalAccuracy:locationManager2 locationManager:v56];
    goto LABEL_8;
  }

  v57 = objc_opt_class();
  v58 = NSStringFromClass(v57);
  v59 = [nameCopy isEqualToString:v58];

  if (v59)
  {
    v60 = [RTVisitPipelineModuleMotionStateTrimmer alloc];
    locationManager2 = [(RTVisitMonitor *)self motionActivityManager];
    defaultsManager2 = [(RTVisitMonitor *)self defaultsManager];
    v50 = [(RTVisitPipelineModuleMotionStateTrimmer *)v60 initWithMotionActivityManager:locationManager2 defaultsManager:defaultsManager2];
    goto LABEL_22;
  }

  v61 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
  {
    v63 = 138412802;
    v64 = nameCopy;
    v65 = 2080;
    v66 = "[RTVisitMonitor _moduleWithName:pipelineType:hyperParameter:]";
    v67 = 1024;
    v68 = 433;
    _os_log_error_impl(&dword_2304B3000, v61, OS_LOG_TYPE_ERROR, "unsupported module, name, %@ (in %s:%d)", &v63, 0x1Cu);
  }

  v62 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
  if (os_log_type_enabled(v62, OS_LOG_TYPE_FAULT))
  {
    v63 = 138412290;
    v64 = nameCopy;
    _os_log_fault_impl(&dword_2304B3000, v62, OS_LOG_TYPE_FAULT, "unsupported module, name, %@", &v63, 0xCu);
  }

  v27 = 0;
LABEL_13:

  return v27;
}

- (id)_configurationForPipelineType:(unint64_t)type
{
  v48 = *MEMORY[0x277D85DE8];
  if (type > 4 || ((1 << type) & 0x16) == 0)
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: VALID_PIPELINE(pipelineType)", buf, 2u);
    }

    if (type != 4)
    {
      v18 = 0;
      goto LABEL_29;
    }
  }

  platform = [(RTVisitMonitor *)self platform];
  if (([platform internalInstall] & 1) == 0)
  {

LABEL_9:
    if (type > 2)
    {
      if (type == 3)
      {
        v12 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
        {
          v38 = NSStringFromSelector(a2);
          v39 = [RTVisitPipeline typeToString:3];
          *buf = 138412546;
          v45 = v38;
          v46 = 2112;
          v47 = v39;
          _os_log_fault_impl(&dword_2304B3000, v12, OS_LOG_TYPE_FAULT, "%@, unsupported type, %@", buf, 0x16u);
        }

        v11 = 0;
        goto LABEL_27;
      }

      platform2 = [(RTVisitMonitor *)self platform];
      usesTSCForClustering = [platform2 usesTSCForClustering];

      v26 = objc_opt_class();
      v27 = NSStringFromClass(v26);
      v12 = v27;
      if (!usesTSCForClustering)
      {
        v40[0] = v27;
        v35 = objc_opt_class();
        v13 = NSStringFromClass(v35);
        v40[1] = v13;
        v36 = objc_opt_class();
        v14 = NSStringFromClass(v36);
        v40[2] = v14;
        v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:3];
        goto LABEL_25;
      }

      v41[0] = v27;
      v28 = objc_opt_class();
      v13 = NSStringFromClass(v28);
      v41[1] = v13;
      v29 = objc_opt_class();
      v14 = NSStringFromClass(v29);
      v41[2] = v14;
      v30 = objc_opt_class();
      v23 = NSStringFromClass(v30);
      v41[3] = v23;
      v31 = objc_opt_class();
      v32 = NSStringFromClass(v31);
      v41[4] = v32;
      v33 = objc_opt_class();
      v34 = NSStringFromClass(v33);
      v41[5] = v34;
      v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:6];
    }

    else
    {
      if (type == 1)
      {
        v15 = objc_opt_class();
        v12 = NSStringFromClass(v15);
        v43[0] = v12;
        v16 = objc_opt_class();
        v13 = NSStringFromClass(v16);
        v43[1] = v13;
        v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:2];
LABEL_26:

        goto LABEL_27;
      }

      v19 = objc_opt_class();
      v12 = NSStringFromClass(v19);
      v42[0] = v12;
      v20 = objc_opt_class();
      v13 = NSStringFromClass(v20);
      v42[1] = v13;
      v21 = objc_opt_class();
      v14 = NSStringFromClass(v21);
      v42[2] = v14;
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      v42[3] = v23;
      v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:4];
    }

LABEL_25:
    goto LABEL_26;
  }

  defaultsManager = [(RTVisitMonitor *)self defaultsManager];
  v8 = MEMORY[0x277CCACA8];
  v9 = [RTVisitPipeline typeToString:type];
  v10 = [v8 stringWithFormat:@"RTVisitPiplelineType%@", v9];
  v11 = [defaultsManager objectForKey:v10];

  if (!v11)
  {
    goto LABEL_9;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
LABEL_27:

      goto LABEL_28;
    }

    v13 = [RTVisitPipeline typeToString:type];
    v14 = [v11 componentsJoinedByString:{@", "}];
    *buf = 138412546;
    v45 = v13;
    v46 = 2112;
    v47 = v14;
    _os_log_impl(&dword_2304B3000, v12, OS_LOG_TYPE_INFO, "pipeline configuration overidden by defaults, pipelineType, %@, configuration, %@", buf, 0x16u);
    goto LABEL_25;
  }

LABEL_28:
  v18 = v11;

LABEL_29:

  return v18;
}

- (id)_modulesForPipelineType:(unint64_t)type hyperParameter:(id)parameter
{
  v33 = *MEMORY[0x277D85DE8];
  parameterCopy = parameter;
  if (type <= 4 && ((1 << type) & 0x16) != 0)
  {
    goto LABEL_3;
  }

  v21 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2304B3000, v21, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: VALID_PIPELINE(type)", buf, 2u);
  }

  if (type == 4)
  {
LABEL_3:
    if (parameterCopy)
    {
      v8 = objc_opt_new();
      v9 = [(RTVisitMonitor *)self _configurationForPipelineType:type];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v10 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v11 = NSStringFromSelector(a2);
          v12 = [RTVisitPipeline typeToString:type];
          v13 = [v9 componentsJoinedByString:{@", "}];
          *buf = 138412802;
          v28 = v11;
          v29 = 2112;
          v30 = v12;
          v31 = 2112;
          v32 = v13;
          _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "%@, pipelineType, %@, configuration, %@", buf, 0x20u);
        }
      }

      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v14 = v9;
      v15 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v23;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v23 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = [(RTVisitMonitor *)self _moduleWithName:*(*(&v22 + 1) + 8 * i) pipelineType:type hyperParameter:parameterCopy, v22];
            if (v19)
            {
              [v8 addObject:v19];
            }
          }

          v16 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
        }

        while (v16);
      }
    }

    else
    {
      v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: hyperParameter", buf, 2u);
      }

      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)hyperParameterForPipelineType:(unint64_t)type
{
  v5 = 0;
  v14 = *MEMORY[0x277D85DE8];
  if (type > 2)
  {
    if (type != 3)
    {
      if (type != 4)
      {
        goto LABEL_11;
      }

      goto LABEL_6;
    }

    goto LABEL_8;
  }

  if (type - 1 < 2)
  {
LABEL_6:
    v5 = objc_opt_new();
    goto LABEL_11;
  }

  if (!type)
  {
LABEL_8:
    v6 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      v8 = NSStringFromSelector(a2);
      v9 = [RTVisitPipeline typeToString:type];
      v10 = 138412546;
      v11 = v8;
      v12 = 2112;
      v13 = v9;
      _os_log_fault_impl(&dword_2304B3000, v6, OS_LOG_TYPE_FAULT, "%@, unsupported type, %@", &v10, 0x16u);
    }

    v5 = 0;
  }

LABEL_11:

  return v5;
}

- (id)_createPipelineWithType:(unint64_t)type name:(id)name lastVisit:(id)visit
{
  v25 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  visitCopy = visit;
  if (type <= 4 && ((1 << type) & 0x16) != 0)
  {
    goto LABEL_3;
  }

  v20 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v21) = 0;
    _os_log_error_impl(&dword_2304B3000, v20, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: VALID_PIPELINE(type)", &v21, 2u);
  }

  if (type == 4)
  {
LABEL_3:
    if (nameCopy)
    {
      v10 = [objc_opt_class() hyperParameterForPipelineType:type];
      platform = [(RTVisitMonitor *)self platform];
      internalInstall = [platform internalInstall];

      if (internalInstall)
      {
        [(RTVisitMonitor *)self maxHorizontalAccuracyOverride];
        if (v13 > 0.0)
        {
          v14 = v13;
          v15 = [MEMORY[0x277CCABB0] numberWithDouble:?];
          [v10 setValue:v15 forKey:@"maxHorizontalAccuracy"];

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v16 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
            {
              v21 = 138412546;
              v22 = @"MaxHorizontalAccuracy";
              v23 = 2048;
              v24 = v14;
              _os_log_impl(&dword_2304B3000, v16, OS_LOG_TYPE_INFO, "%@ overridden to %.2f", &v21, 0x16u);
            }
          }
        }
      }

      v17 = [(RTVisitMonitor *)self _modulesForPipelineType:type hyperParameter:v10];
      v18 = [[RTVisitPipeline alloc] initWithModules:v17 name:nameCopy type:type lastVisit:visitCopy hyperParameter:v10];
    }

    else
    {
      v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v21) = 0;
        _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: name", &v21, 2u);
      }

      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (void)_setupRealtimePipelineWithType:(unint64_t)type handler:(id)handler
{
  v28 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (type - 1 >= 2)
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v24 = 136315394;
      v25 = "[RTVisitMonitor _setupRealtimePipelineWithType:handler:]";
      v26 = 1024;
      LODWORD(v27) = 596;
      _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: VALID_REALTIME_PIPELINE(type) (in %s:%d)", &v24, 0x12u);
    }

    v11 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_8;
    }

    v12 = NSStringFromSelector(a2);
    v13 = [RTVisitPipeline typeToString:type];
    v24 = 138412546;
    v25 = v12;
    v26 = 2112;
    v27 = v13;
    v14 = "%@, unsupported type, %@";
    goto LABEL_19;
  }

  pipelines = self->_pipelines;
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
  v10 = [(NSMutableDictionary *)pipelines objectForKeyedSubscript:v9];

  if (v10)
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
LABEL_8:

      handlerCopy[2](handlerCopy, 0);
      goto LABEL_9;
    }

    v12 = NSStringFromSelector(a2);
    v13 = [RTVisitPipeline typeToString:type];
    v24 = 138412546;
    v25 = v12;
    v26 = 2112;
    v27 = v13;
    v14 = "%@, pipeline already setup, type, %@";
LABEL_19:
    _os_log_fault_impl(&dword_2304B3000, v11, OS_LOG_TYPE_FAULT, v14, &v24, 0x16u);

    goto LABEL_8;
  }

  state = [(RTVisitMonitor *)self state];
  v17 = state;
  if (type == 1)
  {
    lastLowConfidenceVisitIncident = [state lastLowConfidenceVisitIncident];
    v19 = @"com.apple.routined.visit.pipeline.realtime-low-confidence";
  }

  else
  {
    lastLowConfidenceVisitIncident = [state lastVisitIncident];
    v19 = @"com.apple.routined.visit.pipeline.realtime-high-confidence";
  }

  v20 = [(RTVisitMonitor *)self _createPipelineWithType:type name:v19 lastVisit:lastLowConfidenceVisitIncident];
  if (!v20)
  {
    v21 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v24 = 136315394;
      v25 = "[RTVisitMonitor _setupRealtimePipelineWithType:handler:]";
      v26 = 1024;
      LODWORD(v27) = 643;
      _os_log_error_impl(&dword_2304B3000, v21, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: pipeline (in %s:%d)", &v24, 0x12u);
    }
  }

  v22 = self->_pipelines;
  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
  [(NSMutableDictionary *)v22 setObject:v20 forKeyedSubscript:v23];

  [(RTVisitMonitor *)self _bootstrapPipeline:v20 handler:handlerCopy];
LABEL_9:
}

- (void)_registerVisitMonitorForRegionEventsForPipelineType:(unint64_t)type
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = [objc_opt_class() regionMonitoringClientIdentifierForPipelineType:type];
  locationManager = self->_locationManager;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __70__RTVisitMonitor__registerVisitMonitorForRegionEventsForPipelineType___block_invoke;
  v14[3] = &unk_2788CA378;
  v16 = a2;
  v14[4] = self;
  v8 = v6;
  v15 = v8;
  [(RTLocationManager *)locationManager registerForRegionEventsWithClientIdentifier:v8 handler:v14];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = NSStringFromSelector(a2);
      v11 = [RTVisitPipeline typeToString:type];
      *buf = 138412546;
      v18 = v10;
      v19 = 2112;
      v20 = v11;
      _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "%@, Registration for pipeline, %@", buf, 0x16u);
    }
  }

  pipelinesMonitoringRegion = self->_pipelinesMonitoringRegion;
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
  [(NSMutableSet *)pipelinesMonitoringRegion addObject:v13];
}

void __70__RTVisitMonitor__registerVisitMonitorForRegionEventsForPipelineType___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a4;
  v9 = v8;
  if (a3 == 4)
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      v11 = NSStringFromSelector(*(a1 + 48));
      v12 = [RTLocationManager stringForRegionCallbackType:4];
      v15 = *(*(a1 + 32) + 168);
      v19 = 138413059;
      v20 = v11;
      v21 = 2112;
      v22 = v12;
      v23 = 2117;
      v24 = v15;
      v25 = 2112;
      v26 = v9;
      v14 = "%@, regionMonitoring failure, %@, pipelinesMonitoringregion, %{sensitive}@, error, %@";
      goto LABEL_7;
    }
  }

  else if (a3 == 3)
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      v11 = NSStringFromSelector(*(a1 + 48));
      v12 = [RTLocationManager stringForRegionCallbackType:3];
      v13 = *(*(a1 + 32) + 168);
      v19 = 138413059;
      v20 = v11;
      v21 = 2112;
      v22 = v12;
      v23 = 2117;
      v24 = v13;
      v25 = 2112;
      v26 = v9;
      v14 = "%@, regionMonitoring client registration failure, %@, pipelinesMonitoringregion, %{sensitive}@, error, %@";
LABEL_7:
      _os_log_fault_impl(&dword_2304B3000, v10, OS_LOG_TYPE_FAULT, v14, &v19, 0x2Au);
    }
  }

  else
  {
    if (!v8)
    {
      [*(a1 + 32) handleRegionCallback:a3 region:v7 clientIdentifier:*(a1 + 40)];
      goto LABEL_12;
    }

    v10 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      v16 = NSStringFromSelector(*(a1 + 48));
      v17 = [RTLocationManager stringForRegionCallbackType:a3];
      v18 = *(*(a1 + 32) + 168);
      v19 = 138413059;
      v20 = v16;
      v21 = 2112;
      v22 = v17;
      v23 = 2117;
      v24 = v18;
      v25 = 2112;
      v26 = v9;
      _os_log_fault_impl(&dword_2304B3000, v10, OS_LOG_TYPE_FAULT, "%@, regionMonitoring %@, pipelinesMonitoringregion, %{sensitive}@, error, %@", &v19, 0x2Au);
    }
  }

LABEL_12:
}

- (void)_unregisterVisitMonitorForRegionEventsForPipelineType:(unint64_t)type
{
  pipelinesMonitoringRegion = self->_pipelinesMonitoringRegion;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  LODWORD(pipelinesMonitoringRegion) = [(NSMutableSet *)pipelinesMonitoringRegion containsObject:v7];

  if (pipelinesMonitoringRegion)
  {
    locationManager = self->_locationManager;
    v9 = [objc_opt_class() regionMonitoringClientIdentifierForPipelineType:type];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __72__RTVisitMonitor__unregisterVisitMonitorForRegionEventsForPipelineType___block_invoke;
    v12[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
    v12[4] = a2;
    [(RTLocationManager *)locationManager unregisterForRegionEventsWithClientIdentifier:v9 handler:v12];

    v10 = self->_pipelinesMonitoringRegion;
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
    [(NSMutableSet *)v10 removeObject:v11];
  }
}

void __72__RTVisitMonitor__unregisterVisitMonitorForRegionEventsForPipelineType___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_3;
    }

    v5 = NSStringFromSelector(*(a1 + 32));
    v6 = 138412546;
    v7 = v5;
    v8 = 2112;
    v9 = v3;
    _os_log_fault_impl(&dword_2304B3000, v4, OS_LOG_TYPE_FAULT, "%@, regionMonitoring client unregistration failure, error, %@", &v6, 0x16u);
LABEL_9:

    goto LABEL_3;
  }

  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    goto LABEL_4;
  }

  v4 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = NSStringFromSelector(*(a1 + 32));
    v6 = 138412546;
    v7 = v5;
    v8 = 2112;
    v9 = 0;
    _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%@, error, %@", &v6, 0x16u);
    goto LABEL_9;
  }

LABEL_3:

LABEL_4:
}

- (void)handleRegionCallback:(int64_t)callback region:(id)region clientIdentifier:(id)identifier
{
  v37 = *MEMORY[0x277D85DE8];
  regionCopy = region;
  identifierCopy = identifier;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = NSStringFromSelector(a2);
      v13 = [RTLocationManager stringForRegionCallbackType:callback];
      *buf = 138413059;
      v30 = v12;
      v31 = 2112;
      v32 = v13;
      v33 = 2117;
      v34 = regionCopy;
      v35 = 2112;
      v36 = identifierCopy;
      _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_INFO, "%@, callbackType, %@, region, %{sensitive}@, clientIdentifier, %@", buf, 0x2Au);
    }
  }

  if ((callback - 1) <= 1)
  {
    v14 = [objc_opt_class() hintSourceForRegionCallbackType:callback];
    v15 = objc_alloc(MEMORY[0x277D01160]);
    [regionCopy center];
    v17 = v16;
    [regionCopy center];
    v19 = v18;
    [regionCopy radius];
    v21 = v20;
    v22 = [MEMORY[0x277CBEAA8] now];
    v23 = [v15 initWithLatitude:v22 longitude:v17 horizontalUncertainty:v19 date:v21];

    queue = [(RTVisitMonitor *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__RTVisitMonitor_handleRegionCallback_region_clientIdentifier___block_invoke;
    block[3] = &unk_2788C5020;
    v27 = v23;
    v28 = v14;
    block[4] = self;
    v25 = v23;
    dispatch_async(queue, block);
  }
}

+ (int64_t)hintSourceForRegionCallbackType:(int64_t)type
{
  v13 = *MEMORY[0x277D85DE8];
  if (type == 1)
  {
    return 7;
  }

  if (type == 2)
  {
    return 8;
  }

  v6 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
  {
    v7 = NSStringFromSelector(a2);
    v8 = [RTLocationManager stringForRegionCallbackType:type];
    v9 = 138412546;
    v10 = v7;
    v11 = 2112;
    v12 = v8;
    _os_log_fault_impl(&dword_2304B3000, v6, OS_LOG_TYPE_FAULT, "%@, unsupported type, %@", &v9, 0x16u);
  }

  return -1;
}

- (void)_bootstrapPipeline:(id)pipeline handler:(id)handler
{
  v34 = *MEMORY[0x277D85DE8];
  pipelineCopy = pipeline;
  handlerCopy = handler;
  distantPast = [MEMORY[0x277CBEAA8] distantPast];
  lastVisit = [pipelineCopy lastVisit];
  exit = [lastVisit exit];

  lastVisit2 = [pipelineCopy lastVisit];
  lastVisit3 = lastVisit2;
  if (exit)
  {
    exit2 = [lastVisit2 exit];
  }

  else
  {
    entry = [lastVisit2 entry];

    if (!entry)
    {
      goto LABEL_6;
    }

    lastVisit3 = [pipelineCopy lastVisit];
    exit2 = [lastVisit3 entry];
  }

  v15 = exit2;
  v16 = [exit2 dateByAddingTimeInterval:1.0];

  distantPast = v16;
LABEL_6:
  date = [MEMORY[0x277CBEAA8] date];
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x2020000000;
  v29[3] = 0;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      stringFromDate = [distantPast stringFromDate];
      *buf = 138740227;
      v31 = pipelineCopy;
      v32 = 2112;
      v33 = stringFromDate;
      _os_log_impl(&dword_2304B3000, v18, OS_LOG_TYPE_INFO, "start bootstrapping pipeline, %{sensitive}@, with locations since %@", buf, 0x16u);
    }
  }

  date2 = [MEMORY[0x277CBEAA8] date];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __45__RTVisitMonitor__bootstrapPipeline_handler___block_invoke;
  v24[3] = &unk_2788CA3A0;
  v24[4] = self;
  v21 = pipelineCopy;
  v25 = v21;
  v28 = v29;
  v22 = date;
  v26 = v22;
  v23 = handlerCopy;
  v27 = v23;
  [(RTVisitMonitor *)self _batchProcess:v21 fromDate:distantPast toDate:date2 handler:v24];

  _Block_object_dispose(v29, 8);
}

void __45__RTVisitMonitor__bootstrapPipeline_handler___block_invoke(uint64_t a1, void *a2, int a3, void *a4)
{
  v31 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a2;
  v9 = [v7 code];
  v10 = v7;
  v11 = v10;
  v12 = v10;
  if (v9 == 2)
  {

    v12 = 0;
  }

  [*(a1 + 32) _processRealtimeVisits:v8 pipeline:*(a1 + 40)];
  v13 = [v8 count];

  *(*(*(a1 + 64) + 8) + 24) += v13;
  if (a3)
  {
    [*(a1 + 40) setBootStrappingDone:1];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v14 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = *(a1 + 40);
        v16 = *(*(*(a1 + 64) + 8) + 24);
        v17 = [MEMORY[0x277CBEAA8] date];
        [v17 timeIntervalSinceDate:*(a1 + 48)];
        v21 = 138740995;
        v19 = @"NO";
        v22 = v15;
        v23 = 2048;
        if (v9 == 2)
        {
          v19 = @"YES";
        }

        v24 = v16;
        v25 = 2048;
        v26 = v18;
        v27 = 2112;
        v28 = v19;
        v29 = 2112;
        v30 = v11;
        _os_log_impl(&dword_2304B3000, v14, OS_LOG_TYPE_INFO, "finished bootstrapping pipeline, %{sensitive}@, visits processed, %lu, latency, %.2f, diminishedMode, %@, error, %@", &v21, 0x34u);
      }
    }

    v20 = *(a1 + 56);
    if (v20)
    {
      (*(v20 + 16))(v20, v12);
    }
  }
}

+ (id)bucketLocations:(id)locations interval:(double)interval
{
  v30 = *MEMORY[0x277D85DE8];
  locationsCopy = locations;
  if ([locationsCopy count])
  {
    array = [MEMORY[0x277CBEB18] array];
    array2 = [MEMORY[0x277CBEB18] array];
    [array addObject:array2];
    firstObject = [locationsCopy firstObject];
    date = [firstObject date];
    v10 = [date dateByAddingTimeInterval:interval];

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v24 = locationsCopy;
    v11 = locationsCopy;
    v12 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v26;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v26 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v25 + 1) + 8 * i);
          date2 = [v16 date];
          v18 = [date2 compare:v10];

          if (v18 != -1)
          {
            array3 = [MEMORY[0x277CBEB18] array];

            [array addObject:array3];
            date3 = [v16 date];
            v21 = [date3 dateByAddingTimeInterval:interval];

            array2 = array3;
            v10 = v21;
          }

          [array2 addObject:v16];
        }

        v13 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v13);
    }

    v22 = array;
    locationsCopy = v24;
  }

  else
  {
    v22 = MEMORY[0x277CBEBF8];
  }

  return v22;
}

- (void)_batchProcess:(id)process fromDate:(id)date toDate:(id)toDate handler:(id)handler
{
  v60[1] = *MEMORY[0x277D85DE8];
  processCopy = process;
  dateCopy = date;
  toDateCopy = toDate;
  handlerCopy = handler;
  if (processCopy)
  {
    if (dateCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v22 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v50 = "[RTVisitMonitor _batchProcess:fromDate:toDate:handler:]";
      v51 = 1024;
      LODWORD(v52) = 839;
      _os_log_error_impl(&dword_2304B3000, v22, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: pipeline (in %s:%d)", buf, 0x12u);
    }

    if (dateCopy)
    {
LABEL_3:
      if (toDateCopy)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  v23 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v50 = "[RTVisitMonitor _batchProcess:fromDate:toDate:handler:]";
    v51 = 1024;
    LODWORD(v52) = 840;
    _os_log_error_impl(&dword_2304B3000, v23, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: fromDate (in %s:%d)", buf, 0x12u);
  }

  if (toDateCopy)
  {
LABEL_4:
    if (handlerCopy)
    {
      goto LABEL_5;
    }

LABEL_19:
    stringFromDate = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(stringFromDate, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v50 = "[RTVisitMonitor _batchProcess:fromDate:toDate:handler:]";
      v51 = 1024;
      LODWORD(v52) = 842;
      _os_log_error_impl(&dword_2304B3000, stringFromDate, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }

    goto LABEL_21;
  }

LABEL_16:
  v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v50 = "[RTVisitMonitor _batchProcess:fromDate:toDate:handler:]";
    v51 = 1024;
    LODWORD(v52) = 841;
    _os_log_error_impl(&dword_2304B3000, v24, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: toDate (in %s:%d)", buf, 0x12u);
  }

  if (!handlerCopy)
  {
    goto LABEL_19;
  }

LABEL_5:
  if (!processCopy)
  {
    v25 = MEMORY[0x277CCA9B8];
    v26 = *MEMORY[0x277D01448];
    v59 = *MEMORY[0x277CCA450];
    v60[0] = @"requires pipeline";
    v27 = MEMORY[0x277CBEAC0];
    v28 = v60;
    v29 = &v59;
LABEL_24:
    v30 = [v27 dictionaryWithObjects:v28 forKeys:v29 count:1];
    v31 = [v25 errorWithDomain:v26 code:7 userInfo:v30];
    handlerCopy[2](handlerCopy, 0, 1, v31);

    goto LABEL_25;
  }

  if (!dateCopy || !toDateCopy)
  {
    v25 = MEMORY[0x277CCA9B8];
    v26 = *MEMORY[0x277D01448];
    v57 = *MEMORY[0x277CCA450];
    v58 = @"requires valid dates.";
    v27 = MEMORY[0x277CBEAC0];
    v28 = &v58;
    v29 = &v57;
    goto LABEL_24;
  }

  if ([dateCopy isAfterDate:toDateCopy])
  {
    v14 = MEMORY[0x277CCA9B8];
    v15 = *MEMORY[0x277D01448];
    v55 = *MEMORY[0x277CCA450];
    v16 = MEMORY[0x277CCACA8];
    stringFromDate = [dateCopy stringFromDate];
    stringFromDate2 = [toDateCopy stringFromDate];
    v19 = [v16 stringWithFormat:@"fromDate, %@, postdates toDate, %@", stringFromDate, stringFromDate2];
    v56 = v19;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v56 forKeys:&v55 count:1];
    v21 = [v14 errorWithDomain:v15 code:7 userInfo:v20];
    handlerCopy[2](handlerCopy, 0, 1, v21);

LABEL_21:
    goto LABEL_25;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v32 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      stringFromDate3 = [dateCopy stringFromDate];
      stringFromDate4 = [toDateCopy stringFromDate];
      *buf = 138740483;
      v50 = processCopy;
      v51 = 2112;
      v52 = stringFromDate3;
      v53 = 2112;
      v54 = stringFromDate4;
      _os_log_impl(&dword_2304B3000, v32, OS_LOG_TYPE_INFO, "batch processing pipeline %{sensitive}@ between, %@, to, %@", buf, 0x20u);
    }
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __56__RTVisitMonitor__batchProcess_fromDate_toDate_handler___block_invoke;
  aBlock[3] = &unk_2788CA3F0;
  aBlock[4] = self;
  v48 = handlerCopy;
  v35 = dateCopy;
  v45 = v35;
  v36 = toDateCopy;
  v46 = v36;
  v37 = processCopy;
  v47 = v37;
  v38 = _Block_copy(aBlock);
  v39 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v35 endDate:v36];
  v40 = objc_alloc(MEMORY[0x277D01320]);
  hyperParameter = [v37 hyperParameter];
  [hyperParameter maxHorizontalAccuracy];
  v42 = [v40 initWithDateInterval:v39 horizontalAccuracy:3600 batchSize:0 boundingBoxLocation:?];

  locationManager = [(RTVisitMonitor *)self locationManager];
  [locationManager fetchStoredLocationsWithOptions:v42 handler:v38];

LABEL_25:
}

void __56__RTVisitMonitor__batchProcess_fromDate_toDate_handler___block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [[_RTMap alloc] initWithInput:v6];

  v8 = [(_RTMap *)v7 withBlock:&__block_literal_global_50];

  v9 = [a1[4] queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__RTVisitMonitor__batchProcess_fromDate_toDate_handler___block_invoke_3;
  block[3] = &unk_2788CA3C8;
  v17 = v5;
  v21 = a1[8];
  v18 = v8;
  v10 = a1[5];
  v11 = a1[6];
  *&v12 = a1[7];
  *(&v12 + 1) = a1[4];
  *&v13 = v10;
  *(&v13 + 1) = v11;
  v19 = v13;
  v20 = v12;
  v14 = v8;
  v15 = v5;
  dispatch_async(v9, block);
}

id __56__RTVisitMonitor__batchProcess_fromDate_toDate_handler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D01160];
  v3 = a2;
  v4 = [[v2 alloc] initWithCLLocation:v3];

  return v4;
}

void __56__RTVisitMonitor__batchProcess_fromDate_toDate_handler___block_invoke_3(uint64_t a1)
{
  v1 = a1;
  v59 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = *(*(a1 + 80) + 16);

    v2();
  }

  else
  {
    v3 = [*(a1 + 40) firstObject];
    v4 = [v3 date];

    v5 = [*(v1 + 40) lastObject];
    v6 = [v5 date];

    if (![*(v1 + 40) count] || (objc_msgSend(v6, "isBeforeDate:", *(v1 + 48)) & 1) != 0 || objc_msgSend(v4, "isAfterDate:", *(v1 + 56)))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v7 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          v8 = [*(v1 + 48) stringFromDate];
          v9 = [*(v1 + 56) stringFromDate];
          v10 = [v4 stringFromDate];
          v11 = [v6 stringFromDate];
          *buf = 138413058;
          v52 = v8;
          v53 = 2112;
          v54 = v9;
          v55 = 2112;
          v56 = v10;
          v57 = 2112;
          v58 = v11;
          _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "no valid locations are fetched between, %@, and, %@, first location date, %@, last location date, %@", buf, 0x2Au);
        }
      }

      (*(*(v1 + 80) + 16))();
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v12 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v13 = *(v1 + 64);
          v14 = [*(v1 + 40) count];
          v15 = [*(v1 + 40) firstObject];
          v16 = [*(v1 + 40) lastObject];
          *buf = 138740739;
          v52 = v13;
          v53 = 2048;
          v54 = v14;
          v55 = 2117;
          v56 = v15;
          v57 = 2117;
          v58 = v16;
          _os_log_impl(&dword_2304B3000, v12, OS_LOG_TYPE_INFO, "batch processing pipeline %{sensitive}@ with %lu locations, first, %{sensitive}@, last, %{sensitive}@", buf, 0x2Au);
        }
      }

      v41 = v4;
      v45 = [MEMORY[0x277CBEB18] array];
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v17 = [objc_opt_class() bucketLocations:*(v1 + 40) interval:43200.0];
      v18 = [v17 countByEnumeratingWithState:&v46 objects:v50 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v47;
        v21 = MEMORY[0x277D86220];
        v22 = RTLogFacilityVisit;
        v42 = v17;
        do
        {
          v23 = 0;
          v43 = v19;
          do
          {
            if (*v47 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v24 = *(*(&v46 + 1) + 8 * v23);
            v25 = objc_autoreleasePoolPush();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
            {
              v26 = _rt_log_facility_get_os_log(v22);
              if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
              {
                v44 = *(v1 + 64);
                v27 = v22;
                v28 = v20;
                v29 = v1;
                v30 = [v24 count];
                v31 = [v24 firstObject];
                v32 = [v24 lastObject];
                *buf = 138740739;
                v52 = v44;
                v53 = 2048;
                v54 = v30;
                v1 = v29;
                v20 = v28;
                v22 = v27;
                v19 = v43;
                v55 = 2117;
                v56 = v31;
                v57 = 2117;
                v58 = v32;
                _os_log_impl(&dword_2304B3000, v26, OS_LOG_TYPE_INFO, "batch processing pipeline %{sensitive}@ with %lu bucketed locations, first, %{sensitive}@, last, %{sensitive}@", buf, 0x2Au);

                v17 = v42;
                v21 = MEMORY[0x277D86220];
              }
            }

            v33 = [*(v1 + 64) processLocations:v24];
            [v45 addObjectsFromArray:v33];

            objc_autoreleasePoolPop(v25);
            ++v23;
          }

          while (v19 != v23);
          v19 = [v17 countByEnumeratingWithState:&v46 objects:v50 count:16];
        }

        while (v19);
      }

      v6 = v40;
      v34 = [v40 isOnOrAfter:*(v1 + 56)];
      v35 = *(*(v1 + 80) + 16);
      if (v34)
      {
        v35();
      }

      else
      {
        v35();
        v37 = *(v1 + 64);
        v36 = *(v1 + 72);
        v38 = [v40 dateByAddingTimeInterval:1.0];
        v39 = [v38 earlierDate:*(v1 + 56)];
        [v36 _batchProcess:v37 fromDate:v39 toDate:*(v1 + 56) handler:*(v1 + 80)];
      }

      v4 = v41;
    }
  }
}

- (void)fetchVisitsFromDate:(id)date toDate:(id)toDate handler:(id)handler
{
  v29 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  toDateCopy = toDate;
  handlerCopy = handler;
  if (dateCopy)
  {
    if (toDateCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v26 = "[RTVisitMonitor fetchVisitsFromDate:toDate:handler:]";
      v27 = 1024;
      v28 = 933;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: fromDate (in %s:%d)", buf, 0x12u);
    }

    if (toDateCopy)
    {
LABEL_3:
      if (handlerCopy)
      {
        goto LABEL_14;
      }

      goto LABEL_11;
    }
  }

  v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v26 = "[RTVisitMonitor fetchVisitsFromDate:toDate:handler:]";
    v27 = 1024;
    v28 = 934;
    _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: toDate (in %s:%d)", buf, 0x12u);
  }

  if (!handlerCopy)
  {
LABEL_11:
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v26 = "[RTVisitMonitor fetchVisitsFromDate:toDate:handler:]";
      v27 = 1024;
      v28 = 935;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

LABEL_14:
  v14 = objc_opt_new();
  queue = [(RTVisitMonitor *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__RTVisitMonitor_fetchVisitsFromDate_toDate_handler___block_invoke;
  block[3] = &unk_2788CA440;
  block[4] = self;
  v21 = dateCopy;
  v23 = v14;
  v24 = handlerCopy;
  v22 = toDateCopy;
  v16 = v14;
  v17 = handlerCopy;
  v18 = toDateCopy;
  v19 = dateCopy;
  dispatch_async(queue, block);
}

void __53__RTVisitMonitor_fetchVisitsFromDate_toDate_handler___block_invoke(id *a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = [a1[4] platform];
  v3 = [v2 internalInstall];

  if (v3 && (v4 = [a1[4] visitPipelineTypeOverride]) != 0)
  {
    v5 = v4;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v6 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = [objc_opt_class() typeToString:v5];
        *buf = 138412546;
        v21 = @"PlaybackVisitPipelineType";
        v22 = 2112;
        v23 = v7;
        _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@ overridden to %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v5 = 4;
  }

  v8 = [a1[4] _createPipelineWithType:v5 name:@"com.apple.routined.visit.pipeline.batch-from-date" lastVisit:0];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v21 = v8;
      _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "creating pipeline %@", buf, 0xCu);
    }
  }

  v11 = a1[4];
  v10 = a1[5];
  v12 = a1[6];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __53__RTVisitMonitor_fetchVisitsFromDate_toDate_handler___block_invoke_135;
  v14[3] = &unk_2788CA418;
  v19 = a1[8];
  v15 = a1[7];
  v16 = v8;
  v17 = a1[5];
  v18 = a1[6];
  v13 = v8;
  [v11 _batchProcess:v13 fromDate:v10 toDate:v12 handler:v14];
}

uint64_t __53__RTVisitMonitor_fetchVisitsFromDate_toDate_handler___block_invoke_135(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v18 = *MEMORY[0x277D85DE8];
  if (a4)
  {
    v5 = *(*(a1 + 64) + 16);

    return v5();
  }

  else
  {
    result = [*(a1 + 32) addObjectsFromArray:a2];
    if (a3)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v8 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          v9 = *(a1 + 40);
          v10 = [*(a1 + 48) stringFromDate];
          v11 = [*(a1 + 56) stringFromDate];
          v12 = 138740483;
          v13 = v9;
          v14 = 2112;
          v15 = v10;
          v16 = 2112;
          v17 = v11;
          _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "pipeline %{sensitive}@ completes batch processing from %@, to %@", &v12, 0x20u);
        }
      }

      return (*(*(a1 + 64) + 16))();
    }
  }

  return result;
}

- (void)setHighConfidencePipelineReferenceCounter:(unint64_t)counter
{
  highConfidencePipelineReferenceCounter = self->_highConfidencePipelineReferenceCounter;
  if (highConfidencePipelineReferenceCounter != counter)
  {
    v10 = v4;
    v11 = v3;
    if (highConfidencePipelineReferenceCounter)
    {
      if (counter)
      {
LABEL_4:
        self->_highConfidencePipelineReferenceCounter = counter;
        return;
      }
    }

    else
    {
      [(RTVisitMonitor *)self _setupRealtimePipelineWithType:2 handler:&__block_literal_global_137];
      if (counter)
      {
        goto LABEL_4;
      }
    }

    [(RTVisitMonitor *)self _stopMonitoringAllRegionsForPipelineType:2, v10, v11, v5, v6];
    [(NSMutableDictionary *)self->_pipelines setObject:0 forKeyedSubscript:&unk_28459DDE8];
    goto LABEL_4;
  }
}

void __60__RTVisitMonitor_setHighConfidencePipelineReferenceCounter___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = [RTVisitPipeline typeToString:2];
      v5 = 138412546;
      v6 = v4;
      v7 = 2112;
      v8 = v2;
      _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "setup complete, pipeline, %@, error, %@", &v5, 0x16u);
    }
  }
}

- (void)_stopMonitoringAllRegionsForPipelineType:(unint64_t)type
{
  v17 = *MEMORY[0x277D85DE8];
  pipelinesMonitoringRegion = self->_pipelinesMonitoringRegion;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  LODWORD(pipelinesMonitoringRegion) = [(NSMutableSet *)pipelinesMonitoringRegion containsObject:v6];

  if (pipelinesMonitoringRegion)
  {
    locationManager = [(RTVisitMonitor *)self locationManager];
    v8 = [objc_opt_class() regionMonitoringClientIdentifierForPipelineType:type];
    v12 = 0;
    [locationManager stopMonitoringAllRegionsForClientIdentifier:v8 error:&v12];
    v9 = v12;

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v10 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = [RTVisitPipeline typeToString:2];
        *buf = 138412546;
        v14 = v11;
        v15 = 2112;
        v16 = v9;
        _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "stopMonitoringAllRegionsForClientIdentifier complete, pipeline, %@, error, %@", buf, 0x16u);
      }
    }
  }
}

- (void)setLowConfidencePipelineReferenceCounter:(unint64_t)counter
{
  lowConfidencePipelineReferenceCounter = self->_lowConfidencePipelineReferenceCounter;
  if (lowConfidencePipelineReferenceCounter != counter)
  {
    v10 = v4;
    v11 = v3;
    if (lowConfidencePipelineReferenceCounter)
    {
      if (counter)
      {
LABEL_4:
        self->_lowConfidencePipelineReferenceCounter = counter;
        return;
      }
    }

    else
    {
      [(RTVisitMonitor *)self _setupRealtimePipelineWithType:1 handler:&__block_literal_global_140];
      if (counter)
      {
        goto LABEL_4;
      }
    }

    [(NSMutableDictionary *)self->_pipelines setObject:0 forKeyedSubscript:&unk_28459DE00, v10, v11, v5, v6];
    goto LABEL_4;
  }
}

void __59__RTVisitMonitor_setLowConfidencePipelineReferenceCounter___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v4 = [RTVisitPipeline typeToString:1];
      v5 = 138412546;
      v6 = v4;
      v7 = 2112;
      v8 = v2;
      _os_log_debug_impl(&dword_2304B3000, v3, OS_LOG_TYPE_DEBUG, "setup complete, pipeline, %@, error, %@", &v5, 0x16u);
    }
  }
}

- (void)setMonitoringVisitIncidents:(BOOL)incidents
{
  if (self->_monitoringVisitIncidents != incidents)
  {
    v12 = v3;
    v13 = v4;
    incidentsCopy = incidents;
    self->_monitoringVisitIncidents = incidents;
    v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
    if (incidentsCopy)
    {
      if (v7)
      {
        v8 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "start monitoring visit incidents", buf, 2u);
        }
      }

      [(RTVisitMonitor *)self _registerVisitMonitorForRegionEventsForPipelineType:2];
      [(RTVisitMonitor *)self setHighConfidencePipelineReferenceCounter:[(RTVisitMonitor *)self highConfidencePipelineReferenceCounter]+ 1];
      [(RTVisitMonitor *)self setFeedBufferReferenceCounter:[(RTVisitMonitor *)self feedBufferReferenceCounter]+ 1];
    }

    else
    {
      if (v7)
      {
        v9 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          *v10 = 0;
          _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "stop monitoring visit incidents", v10, 2u);
        }
      }

      [(RTVisitMonitor *)self setFeedBufferReferenceCounter:[(RTVisitMonitor *)self feedBufferReferenceCounter]- 1];
      [(RTVisitMonitor *)self setHighConfidencePipelineReferenceCounter:[(RTVisitMonitor *)self highConfidencePipelineReferenceCounter]- 1];
      [(RTVisitMonitor *)self _unregisterVisitMonitorForRegionEventsForPipelineType:2];
    }
  }
}

- (void)setMonitoringLeechedVisitIncidents:(BOOL)incidents
{
  if (self->_monitoringLeechedVisitIncidents != incidents)
  {
    v12 = v3;
    v13 = v4;
    incidentsCopy = incidents;
    self->_monitoringLeechedVisitIncidents = incidents;
    v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
    if (incidentsCopy)
    {
      if (v7)
      {
        v8 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "start monitoring leeched visit incidents", buf, 2u);
        }
      }

      [(RTVisitMonitor *)self setHighConfidencePipelineReferenceCounter:[(RTVisitMonitor *)self highConfidencePipelineReferenceCounter]+ 1];
      [(RTVisitMonitor *)self setFeedBufferReferenceCounter:[(RTVisitMonitor *)self feedBufferReferenceCounter]+ 1];
    }

    else
    {
      if (v7)
      {
        v9 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          *v10 = 0;
          _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "stop monitoring leeched visit incidents", v10, 2u);
        }
      }

      [(RTVisitMonitor *)self setFeedBufferReferenceCounter:[(RTVisitMonitor *)self feedBufferReferenceCounter]- 1];
      [(RTVisitMonitor *)self setHighConfidencePipelineReferenceCounter:[(RTVisitMonitor *)self highConfidencePipelineReferenceCounter]- 1];
    }
  }
}

- (void)setMonitoringLowConfidenceVisitIncidents:(BOOL)incidents
{
  if (self->_monitoringLowConfidenceVisitIncidents != incidents)
  {
    v12 = v3;
    v13 = v4;
    incidentsCopy = incidents;
    self->_monitoringLowConfidenceVisitIncidents = incidents;
    v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
    if (incidentsCopy)
    {
      if (v7)
      {
        v8 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "start monitoring low-confidence visit incidents.", buf, 2u);
        }
      }

      [(RTVisitMonitor *)self setLowConfidencePipelineReferenceCounter:[(RTVisitMonitor *)self lowConfidencePipelineReferenceCounter]+ 1];
      [(RTVisitMonitor *)self setFeedBufferReferenceCounter:[(RTVisitMonitor *)self feedBufferReferenceCounter]+ 1];
    }

    else
    {
      if (v7)
      {
        v9 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          *v10 = 0;
          _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "stop monitoring low-confidence visit incidents.", v10, 2u);
        }
      }

      [(RTVisitMonitor *)self setFeedBufferReferenceCounter:[(RTVisitMonitor *)self feedBufferReferenceCounter]- 1];
      [(RTVisitMonitor *)self setLowConfidencePipelineReferenceCounter:[(RTVisitMonitor *)self lowConfidencePipelineReferenceCounter]- 1];
    }
  }
}

- (void)startMonitoringVisitIncidents
{
  queue = [(RTVisitMonitor *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__RTVisitMonitor_startMonitoringVisitIncidents__block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)stopMonitoringVisitIncidents
{
  queue = [(RTVisitMonitor *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__RTVisitMonitor_stopMonitoringVisitIncidents__block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)startMonitoringLeechedVisitIncidents
{
  queue = [(RTVisitMonitor *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__RTVisitMonitor_startMonitoringLeechedVisitIncidents__block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)stopMonitoringLeechedVisitIncidents
{
  queue = [(RTVisitMonitor *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__RTVisitMonitor_stopMonitoringLeechedVisitIncidents__block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)startMonitoringLowConfidenceVisitIncidents
{
  queue = [(RTVisitMonitor *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__RTVisitMonitor_startMonitoringLowConfidenceVisitIncidents__block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)stopMonitoringLowConfidenceVisitIncidents
{
  queue = [(RTVisitMonitor *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__RTVisitMonitor_stopMonitoringLowConfidenceVisitIncidents__block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_startFeedBuffer
{
  v23 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "starting feed buffer", buf, 2u);
    }
  }

  v4 = [[RTVisitFeedBuffer alloc] initWithMinWaitInterval:15.0];
  feedBuffer = self->_feedBuffer;
  self->_feedBuffer = v4;

  state = [(RTVisitMonitor *)self state];
  [state dump];

  locationManager = [(RTVisitMonitor *)self locationManager];
  v8 = +[(RTNotification *)RTLocationManagerNotificationLocationsLeeched];
  [locationManager addObserver:self selector:sel_onLeechedLocationsNotification_ name:v8];

  locationAwarenessManager = [(RTVisitMonitor *)self locationAwarenessManager];
  [objc_opt_class() LocationHeartbeatWhileAwake];
  v14 = 0;
  [locationAwarenessManager addLocationHeartbeatRequester:self interval:&v14 error:?];
  v10 = v14;

  if (v10)
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      code = [v10 code];
      localizedDescription = [v10 localizedDescription];
      *buf = 134218754;
      v16 = code;
      v17 = 2112;
      v18 = localizedDescription;
      v19 = 2080;
      v20 = "[RTVisitMonitor _startFeedBuffer]";
      v21 = 1024;
      v22 = 1152;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Request location heartbeat error, code, %ld, description, %@ (in %s:%d)", buf, 0x26u);
    }
  }
}

- (void)_stopFeedBuffer
{
  locationManager = [(RTVisitMonitor *)self locationManager];
  v4 = +[(RTNotification *)RTLocationManagerNotificationLocationsLeeched];
  [locationManager removeObserver:self fromNotification:v4];

  locationAwarenessManager = [(RTVisitMonitor *)self locationAwarenessManager];
  [locationAwarenessManager removeLocationHeartbeatRequester:self];

  [(RTTimer *)self->_feedBufferTimer invalidate];
  feedBufferTimer = self->_feedBufferTimer;
  self->_feedBufferTimer = 0;

  feedBuffer = self->_feedBuffer;
  self->_feedBuffer = 0;
}

- (void)onLeechedLocationsNotification:(id)notification
{
  notificationCopy = notification;
  queue = [(RTVisitMonitor *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__RTVisitMonitor_onLeechedLocationsNotification___block_invoke;
  block[3] = &unk_2788C5020;
  v9 = notificationCopy;
  selfCopy = self;
  v11 = a2;
  v7 = notificationCopy;
  dispatch_async(queue, block);
}

void __49__RTVisitMonitor_onLeechedLocationsNotification___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) name];
  v3 = +[(RTNotification *)RTLocationManagerNotificationLocationsLeeched];
  v4 = [v2 isEqualToString:v3];

  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = [_RTMap alloc];
    v7 = [v5 leechedLocations];
    v8 = [(_RTMap *)v6 initWithInput:v7];
    v14 = [(_RTMap *)v8 withBlock:&__block_literal_global_148];

    [*(a1 + 40) _processLeechedLocations:v14];
  }

  else
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = NSStringFromSelector(*(a1 + 48));
      v13 = [*(a1 + 32) name];
      *buf = 138413314;
      v16 = v11;
      v17 = 2112;
      v18 = v12;
      v19 = 2112;
      v21 = 2080;
      v20 = v13;
      v22 = "[RTVisitMonitor onLeechedLocationsNotification:]_block_invoke";
      v23 = 1024;
      v24 = 1183;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "%@, %@, unhandled notification, %@ (in %s:%d)", buf, 0x30u);
    }
  }
}

id __49__RTVisitMonitor_onLeechedLocationsNotification___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D01160];
  v3 = a2;
  v4 = [[v2 alloc] initWithCLLocation:v3];

  return v4;
}

- (void)_processLeechedLocations:(id)locations
{
  feedBuffer = self->_feedBuffer;
  if (feedBuffer)
  {
    [(RTVisitFeedBuffer *)feedBuffer addLocations:locations];

    [(RTVisitMonitor *)self _startFeedBufferTimer];
  }
}

+ (id)regionWithRegionIdentifier:(id)identifier location:(id)location shouldNotifyForEntry:(BOOL)entry
{
  entryCopy = entry;
  identifierCopy = identifier;
  locationCopy = location;
  v9 = locationCopy;
  if (entryCopy)
  {
    [locationCopy horizontalUncertainty];
    if (v10 < 5.0)
    {
      v10 = 5.0;
    }

    v11 = fmin(v10, 100.0);
  }

  else
  {
    v11 = 500.0;
  }

  v12 = objc_alloc(MEMORY[0x277CBFBC8]);
  [v9 latitude];
  v14 = v13;
  [v9 longitude];
  v16 = CLLocationCoordinate2DMake(v14, v15);
  v17 = [v12 initForLowPowerWithCenter:identifierCopy radius:v16.latitude identifier:{v16.longitude, v11}];
  [v17 setNotifyOnEntry:entryCopy];
  [v17 setNotifyOnExit:entryCopy ^ 1];

  return v17;
}

- (void)setupGeoFencesForVisit:(id)visit pipelineType:(unint64_t)type handler:(id)handler
{
  visitCopy = visit;
  handlerCopy = handler;
  queue = [(RTVisitMonitor *)self queue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __62__RTVisitMonitor_setupGeoFencesForVisit_pipelineType_handler___block_invoke;
  v13[3] = &unk_2788C4C20;
  v13[4] = self;
  v14 = visitCopy;
  v15 = handlerCopy;
  typeCopy = type;
  v11 = handlerCopy;
  v12 = visitCopy;
  dispatch_async(queue, v13);
}

void __62__RTVisitMonitor_setupGeoFencesForVisit_pipelineType_handler___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[7];
  v6 = 0;
  [v2 _setupGeoFencesForVisit:v3 pipelineType:v4 error:&v6];
  v5 = v6;
  (*(a1[6] + 16))();
}

- (BOOL)_setupGeoFencesForVisit:(id)visit pipelineType:(unint64_t)type error:(id *)error
{
  v44 = *MEMORY[0x277D85DE8];
  visitCopy = visit;
  if (!visitCopy)
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v37 = "[RTVisitMonitor _setupGeoFencesForVisit:pipelineType:error:]";
      v38 = 1024;
      LODWORD(v39) = 1275;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: visit (in %s:%d)", buf, 0x12u);
    }
  }

  pipelinesMonitoringRegion = self->_pipelinesMonitoringRegion;
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
  LODWORD(pipelinesMonitoringRegion) = [(NSMutableSet *)pipelinesMonitoringRegion containsObject:v12];

  if (pipelinesMonitoringRegion)
  {
    v13 = [objc_opt_class() regionMonitoringClientIdentifierForPipelineType:type];
    locationManager = [(RTVisitMonitor *)self locationManager];
    v35 = 0;
    [locationManager stopMonitoringAllRegionsForClientIdentifier:v13 error:&v35];
    v15 = v35;

    if (v15)
    {
      if (error)
      {
        v16 = v15;
        v17 = 0;
        *error = v15;
      }

      else
      {
        v17 = 0;
      }

      goto LABEL_27;
    }

    if ([visitCopy type] == 1)
    {
      v18 = objc_opt_class();
      location = [visitCopy location];
      v20 = [v18 regionWithRegionIdentifier:@"ExitForCurrentVisit" location:location shouldNotifyForEntry:0];

      locationManager2 = [(RTVisitMonitor *)self locationManager];
      v34 = 0;
      [locationManager2 startMonitoringForRegion:v20 clientIdentifier:v13 error:&v34];
      v15 = v34;

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v22 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          v23 = NSStringFromSelector(a2);
          *buf = 138413059;
          v37 = v23;
          v38 = 2112;
          v39 = v13;
          v40 = 2117;
          v41 = v20;
          v42 = 2112;
          v43 = v15;
          _os_log_impl(&dword_2304B3000, v22, OS_LOG_TYPE_INFO, "%@, clientIdentifier, %@, start monitoring for region, %{sensitive}@, error, %@", buf, 0x2Au);
        }
      }

      if (!error)
      {
        goto LABEL_26;
      }
    }

    else
    {
      if ([visitCopy type] == 3)
      {
        deviceLocationPredictor = self->_deviceLocationPredictor;
        location2 = [visitCopy location];
        exit = [visitCopy exit];
        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = __61__RTVisitMonitor__setupGeoFencesForVisit_pipelineType_error___block_invoke;
        v30[3] = &unk_2788CA490;
        v30[4] = self;
        v31 = v13;
        v33 = a2;
        v32 = visitCopy;
        [(RTDeviceLocationPredictor *)deviceLocationPredictor fetchNextPredictedLocationsOfInterestFromLocation:location2 startDate:exit timeInterval:v30 handler:7200.0];
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v27 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138739971;
          v37 = visitCopy;
          _os_log_debug_impl(&dword_2304B3000, v27, OS_LOG_TYPE_DEBUG, "Invalid type received on visit, %{sensitive}@", buf, 0xCu);
        }
      }

      v15 = 0;
      if (!error)
      {
        goto LABEL_26;
      }
    }

    v28 = v15;
    *error = v15;
LABEL_26:
    v17 = v15 == 0;
LABEL_27:

    goto LABEL_28;
  }

  v17 = 0;
LABEL_28:

  return v17;
}

void __61__RTVisitMonitor__setupGeoFencesForVisit_pipelineType_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__RTVisitMonitor__setupGeoFencesForVisit_pipelineType_error___block_invoke_2;
  block[3] = &unk_2788C50E8;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v11 = v3;
  v12 = v5;
  v13 = v6;
  v9 = *(a1 + 48);
  v7 = v9;
  v14 = v9;
  v8 = v3;
  dispatch_async(v4, block);
}

void __61__RTVisitMonitor__setupGeoFencesForVisit_pipelineType_error___block_invoke_2(uint64_t a1)
{
  v52 = *MEMORY[0x277D85DE8];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v39 objects:v51 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v5 = *v40;
    v6 = MEMORY[0x277D86220];
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v40 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v39 + 1) + 8 * i);
        ++v4;
        v9 = objc_opt_class();
        v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%ld", @"EntryForNextPredictedLocationOfInterest", v4];
        v11 = [v8 locationOfInterest];
        v12 = [v11 location];
        v13 = [v9 regionWithRegionIdentifier:v10 location:v12 shouldNotifyForEntry:1];

        v14 = [*(a1 + 40) locationManager];
        v15 = *(a1 + 48);
        v38 = 0;
        [v14 startMonitoringForRegion:v13 clientIdentifier:v15 error:&v38];
        v16 = v38;

        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          v17 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            v18 = NSStringFromSelector(*(a1 + 64));
            v19 = *(a1 + 48);
            *buf = 138413059;
            v44 = v18;
            v45 = 2112;
            v46 = v19;
            v47 = 2117;
            v48 = v13;
            v49 = 2112;
            v50 = v16;
            _os_log_impl(&dword_2304B3000, v17, OS_LOG_TYPE_INFO, "%@, clientIdentifier, %@, start monitoring for region, %{sensitive}@, error, %@", buf, 0x2Au);
          }
        }
      }

      v3 = [obj countByEnumeratingWithState:&v39 objects:v51 count:16];
    }

    while (v3);
  }

  v20 = [*(a1 + 32) valueForKeyPath:@"locationOfInterest"];
  v21 = [v20 valueForKeyPath:@"identifier"];
  v22 = [*(a1 + 56) placeInference];
  v23 = [v22 loiIdentifier];
  if (v23)
  {
    v24 = v23;
    v25 = [*(a1 + 56) placeInference];
    v26 = [v25 loiIdentifier];
    v27 = [v21 containsObject:v26];

    if ((v27 & 1) == 0)
    {
      v28 = *(*(a1 + 40) + 72);
      v29 = [*(a1 + 56) placeInference];
      v30 = [v29 loiIdentifier];
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __61__RTVisitMonitor__setupGeoFencesForVisit_pipelineType_error___block_invoke_159;
      v35[3] = &unk_2788CA468;
      v31 = *(a1 + 48);
      v35[4] = *(a1 + 40);
      v32 = v31;
      v33 = *(a1 + 64);
      v36 = v32;
      v37 = v33;
      [v28 fetchLocationOfInterestWithIdentifier:v30 handler:v35];
    }
  }

  else
  {
  }
}

void __61__RTVisitMonitor__setupGeoFencesForVisit_pipelineType_error___block_invoke_159(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) queue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __61__RTVisitMonitor__setupGeoFencesForVisit_pipelineType_error___block_invoke_2_160;
    v7[3] = &unk_2788C4C70;
    v7[4] = *(a1 + 32);
    v8 = v3;
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v9 = v5;
    v10 = v6;
    dispatch_async(v4, v7);
  }
}

void __61__RTVisitMonitor__setupGeoFencesForVisit_pipelineType_error___block_invoke_2_160(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_class();
  v3 = [*(a1 + 40) location];
  v4 = [v3 location];
  v5 = [v2 regionWithRegionIdentifier:@"EntryForLastVisitExit" location:v4 shouldNotifyForEntry:1];

  v6 = [*(a1 + 32) locationManager];
  v7 = *(a1 + 48);
  v12 = 0;
  [v6 startMonitoringForRegion:v5 clientIdentifier:v7 error:&v12];
  v8 = v12;

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = NSStringFromSelector(*(a1 + 56));
      v11 = *(a1 + 48);
      *buf = 138413059;
      v14 = v10;
      v15 = 2112;
      v16 = v11;
      v17 = 2117;
      v18 = v5;
      v19 = 2112;
      v20 = v8;
      _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "%@, clientIdentifier, %@, start monitoring for region, %{sensitive}@, error, %@", buf, 0x2Au);
    }
  }
}

- (id)_updateSourceForVisit:(id)visit
{
  visitCopy = visit;
  if (visitCopy)
  {
    v4 = objc_alloc(MEMORY[0x277D01428]);
    date = [visitCopy date];
    type = [visitCopy type];
    location = [visitCopy location];
    entry = [visitCopy entry];
    exit = [visitCopy exit];
    dataPointCount = [visitCopy dataPointCount];
    [visitCopy confidence];
    v12 = v11;
    placeInference = [visitCopy placeInference];
    v14 = [v4 initWithDate:date type:type location:location entry:entry exit:exit dataPointCount:dataPointCount confidence:v12 placeInference:placeInference source:1];
  }

  else
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: visit", buf, 2u);
    }

    v14 = 0;
  }

  return v14;
}

- (void)_processRealtimeVisits:(id)visits pipeline:(id)pipeline
{
  v74 = *MEMORY[0x277D85DE8];
  visitsCopy = visits;
  pipelineCopy = pipeline;
  if (pipelineCopy)
  {
    if (![visitsCopy count])
    {
      goto LABEL_55;
    }

    v9 = [[_RTMap alloc] initWithInput:visitsCopy];
    v63[0] = MEMORY[0x277D85DD0];
    v63[1] = 3221225472;
    v63[2] = __50__RTVisitMonitor__processRealtimeVisits_pipeline___block_invoke;
    v63[3] = &unk_2788CA4E0;
    v63[4] = self;
    v10 = [(_RTMap *)v9 withBlock:v63];

    if ([pipelineCopy type] != 2)
    {
      if ([pipelineCopy type] != 1)
      {
        obj = _rt_log_facility_get_os_log(RTLogFacilityVisit);
        if (os_log_type_enabled(obj, OS_LOG_TYPE_FAULT))
        {
          v24 = NSStringFromSelector(a2);
          *buf = 138412547;
          v65 = v24;
          v66 = 2117;
          v67 = pipelineCopy;
          _os_log_fault_impl(&dword_2304B3000, obj, OS_LOG_TYPE_FAULT, "%@, pipeline does not support realtime visits, %{sensitive}@", buf, 0x16u);
        }

        goto LABEL_48;
      }

      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      obj = v10;
      v15 = [obj countByEnumeratingWithState:&v52 objects:v72 count:16];
      if (!v15)
      {
LABEL_48:

        lastObject = [v10 lastObject];

        if (lastObject)
        {
          lastObject2 = [v10 lastObject];
          v51 = 0;
          -[RTVisitMonitor _setupGeoFencesForVisit:pipelineType:error:](self, "_setupGeoFencesForVisit:pipelineType:error:", lastObject2, [pipelineCopy type], &v51);
          v42 = v51;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v43 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
            if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
            {
              v44 = NSStringFromSelector(a2);
              *buf = 138413059;
              v65 = v44;
              v66 = 2117;
              v67 = lastObject2;
              v68 = 2117;
              v69 = pipelineCopy;
              v70 = 2112;
              v71 = v42;
              _os_log_impl(&dword_2304B3000, v43, OS_LOG_TYPE_INFO, "%@, setupGeoFences for visit, %{sensitive}@, pipeline, %{sensitive}@, error %@", buf, 0x2Au);
            }
          }
        }

        goto LABEL_55;
      }

      v16 = v15;
      v46 = v10;
      v47 = a2;
      v49 = pipelineCopy;
      v45 = visitsCopy;
      v17 = 0;
      v18 = *v53;
      v19 = MEMORY[0x277D86220];
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v53 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v52 + 1) + 8 * i);
          ++v17;
          [(RTVisitMonitor *)self handleLowConfidenceVisitIncident:v21];
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            v22 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
            if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
            {
              name = [v49 name];
              *buf = 138412803;
              v65 = name;
              v66 = 2048;
              v67 = v17;
              v68 = 2117;
              v69 = v21;
              _os_log_impl(&dword_2304B3000, v22, OS_LOG_TYPE_INFO, "pipeline, %@, visit %lu, %{sensitive}@", buf, 0x20u);
            }
          }
        }

        v16 = [obj countByEnumeratingWithState:&v52 objects:v72 count:16];
      }

      while (v16);
LABEL_46:
      visitsCopy = v45;
      pipelineCopy = v49;
LABEL_47:
      v10 = v46;
      a2 = v47;
      goto LABEL_48;
    }

    v47 = a2;
    if (_os_feature_enabled_impl())
    {
      platform = [(RTVisitMonitor *)self platform];
      if ([platform iPhoneDevice])
      {
        bootStrappingDone = [pipelineCopy bootStrappingDone];

        v13 = bootStrappingDone & 1;
        goto LABEL_27;
      }
    }

    v13 = 0;
LABEL_27:
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v46 = v10;
    obj = v10;
    v25 = [obj countByEnumeratingWithState:&v59 objects:v73 count:16];
    if (v25)
    {
      v26 = v25;
      v49 = pipelineCopy;
      v45 = visitsCopy;
      v27 = 0;
      v28 = *v60;
      v29 = @"com.apple.CoreRoutine.VisitMonitor";
      selfCopy = self;
      while (1)
      {
        for (j = 0; j != v26; ++j)
        {
          if (*v60 != v28)
          {
            objc_enumerationMutation(obj);
          }

          v31 = *(*(&v59 + 1) + 8 * j);
          v13 = v13 && [*(*(&v59 + 1) + 8 * j) type] == 1;
          visitLabeler = [(RTVisitMonitor *)self visitLabeler];
          v58 = 0;
          [visitLabeler labelVisit:v31 clientIdentifier:v29 policy:v13 error:&v58];
          v33 = v58;

          [(RTVisitMonitor *)self handleVisitIncident:v31];
          if ([v31 type] == 1)
          {
            locationAwarenessManager = [(RTVisitMonitor *)self locationAwarenessManager];
            v57 = 0;
            [locationAwarenessManager addHighAccuracyLocationRequester:self error:&v57];
          }

          else
          {
            if ([v31 type] != 3)
            {
              goto LABEL_40;
            }

            locationAwarenessManager = [(RTVisitMonitor *)self locationAwarenessManager];
            v56 = 0;
            [locationAwarenessManager removeHighAccuracyLocationRequester:self error:&v56];
          }

LABEL_40:
          ++v27;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v35 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
            if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
            {
              [v49 name];
              v36 = v26;
              v37 = v28;
              v39 = v38 = v29;
              *buf = 138412803;
              v65 = v39;
              v66 = 2048;
              v67 = v27;
              v68 = 2117;
              v69 = v31;
              _os_log_impl(&dword_2304B3000, v35, OS_LOG_TYPE_INFO, "pipeline, %@, visit %lu, %{sensitive}@", buf, 0x20u);

              v29 = v38;
              v28 = v37;
              v26 = v36;
              self = selfCopy;
            }
          }
        }

        v26 = [obj countByEnumeratingWithState:&v59 objects:v73 count:16];
        if (!v26)
        {
          goto LABEL_46;
        }
      }
    }

    goto LABEL_47;
  }

  v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: pipeline", buf, 2u);
  }

LABEL_55:
}

- (void)fetchVisitMonitorStatusWithHandler:(id)handler
{
  v14 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v11 = "[RTVisitMonitor fetchVisitMonitorStatusWithHandler:]";
      v12 = 1024;
      v13 = 1510;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

  queue = [(RTVisitMonitor *)self queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53__RTVisitMonitor_fetchVisitMonitorStatusWithHandler___block_invoke;
  v8[3] = &unk_2788C4D38;
  v8[4] = self;
  v9 = handlerCopy;
  v7 = handlerCopy;
  dispatch_async(queue, v8);
}

void __53__RTVisitMonitor_fetchVisitMonitorStatusWithHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = -[RTVisitMonitorStatus initWithMonitoringVisitIncidents:monitoringLeechedVisitIncidents:monitoringLowConfidenceVisitIncidents:feedBufferReferenceCounter:]([RTVisitMonitorStatus alloc], "initWithMonitoringVisitIncidents:monitoringLeechedVisitIncidents:monitoringLowConfidenceVisitIncidents:feedBufferReferenceCounter:", [*(a1 + 32) monitoringVisitIncidents], objc_msgSend(*(a1 + 32), "monitoringLeechedVisitIncidents"), objc_msgSend(*(a1 + 32), "monitoringLowConfidenceVisitIncidents"), objc_msgSend(*(a1 + 32), "feedBufferReferenceCounter"));
  (*(v1 + 16))(v1, v2);
}

- (void)fetchVisitMonitorState:(id)state
{
  v14 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  if (!stateCopy)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v11 = "[RTVisitMonitor fetchVisitMonitorState:]";
      v12 = 1024;
      v13 = 1521;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

  queue = [(RTVisitMonitor *)self queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __41__RTVisitMonitor_fetchVisitMonitorState___block_invoke;
  v8[3] = &unk_2788C4D38;
  v8[4] = self;
  v9 = stateCopy;
  v7 = stateCopy;
  dispatch_async(queue, v8);
}

void __41__RTVisitMonitor_fetchVisitMonitorState___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) state];
  (*(v1 + 16))(v1, v2, 0);
}

- (void)showVisitReentryDetectionUI
{
  platform = [(RTVisitMonitor *)self platform];
  internalInstall = [platform internalInstall];

  if (internalInstall)
  {
    platform2 = [(RTVisitMonitor *)self platform];
    iPhoneDevice = [platform2 iPhoneDevice];

    if (iPhoneDevice)
    {
      defaultsManager = [(RTVisitMonitor *)self defaultsManager];
      v8 = [defaultsManager objectForKey:@"VisitReentryDetection"];
      bOOLValue = [v8 BOOLValue];

      if (bOOLValue)
      {
        dictionary = objc_opt_new();
        [(__CFDictionary *)dictionary setObject:@"Detected Reentry to Home LOI" forKeyedSubscript:*MEMORY[0x277CBF188]];
        [(__CFDictionary *)dictionary setObject:@"Please file a radar if you did not intend to exit and re-enter home" forKeyedSubscript:*MEMORY[0x277CBF198]];
        [(__CFDictionary *)dictionary setObject:@"Tap-to-Radar" forKeyedSubscript:*MEMORY[0x277CBF1C0]];
        [(__CFDictionary *)dictionary setObject:@"Dismiss" forKeyedSubscript:*MEMORY[0x277CBF1E8]];
        v10 = *MEMORY[0x277CBECE8];
        v11 = CFUserNotificationCreate(*MEMORY[0x277CBECE8], 0.0, 0, 0, dictionary);
        if (v11)
        {
          v12 = v11;
          RunLoopSource = CFUserNotificationCreateRunLoopSource(v10, v11, _engineeringUIResponseHandler, 0);
          if (RunLoopSource)
          {
            v14 = RunLoopSource;
            Main = CFRunLoopGetMain();
            CFRunLoopAddSource(Main, v14, *MEMORY[0x277CBF048]);
            v12 = v14;
          }

          CFRelease(v12);
        }
      }
    }
  }
}

- (void)_compareVisit:(id)visit previousVisit:(id)previousVisit
{
  v76 = *MEMORY[0x277D85DE8];
  visitCopy = visit;
  previousVisitCopy = previousVisit;
  v9 = previousVisitCopy;
  if (visitCopy && previousVisitCopy)
  {
    exit = [visitCopy exit];
    v11 = exit;
    if (exit)
    {
      entry = exit;
    }

    else
    {
      entry = [visitCopy entry];
    }

    v13 = entry;

    exit2 = [v9 exit];
    v15 = exit2;
    if (exit2)
    {
      entry2 = exit2;
    }

    else
    {
      entry2 = [v9 entry];
    }

    v17 = entry2;

    [v13 timeIntervalSinceDate:v17];
    v19 = v18;
    exit3 = [v9 exit];
    date = exit3;
    if (!exit3)
    {
      date = [v9 date];
    }

    entry3 = [v9 entry];
    if (entry3)
    {
      [date timeIntervalSinceDate:entry3];
      v24 = v23;
    }

    else
    {
      date2 = [v9 date];
      [date timeIntervalSinceDate:date2];
      v24 = v26;
    }

    if (!exit3)
    {
    }

    distanceCalculator = [(RTVisitMonitor *)self distanceCalculator];
    location = [visitCopy location];
    location2 = [v9 location];
    v63 = 0;
    [distanceCalculator distanceFromLocation:location toLocation:location2 error:&v63];
    v31 = v30;
    v62 = v63;

    placeInference = [visitCopy placeInference];
    loiIdentifier = [placeInference loiIdentifier];
    placeInference2 = [v9 placeInference];
    loiIdentifier2 = [placeInference2 loiIdentifier];
    v61 = [loiIdentifier isEqual:loiIdentifier2];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v36 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        v37 = objc_opt_class();
        v38 = NSStringFromClass(v37);
        v39 = NSStringFromSelector(a2);
        *buf = 138412803;
        v65 = v38;
        v66 = 2112;
        v67 = v39;
        v68 = 2117;
        v69 = *&visitCopy;
        _os_log_impl(&dword_2304B3000, v36, OS_LOG_TYPE_INFO, "%@, %@, visit, %{sensitive}@", buf, 0x20u);
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v40 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        v41 = objc_opt_class();
        v42 = NSStringFromClass(v41);
        v43 = NSStringFromSelector(a2);
        *buf = 138412803;
        v65 = v42;
        v66 = 2112;
        v67 = v43;
        v68 = 2117;
        v69 = *&v9;
        _os_log_impl(&dword_2304B3000, v40, OS_LOG_TYPE_INFO, "%@, %@, previous visit, %{sensitive}@", buf, 0x20u);
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v44 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
      {
        v45 = objc_opt_class();
        v46 = NSStringFromClass(v45);
        v47 = NSStringFromSelector(a2);
        v48 = v47;
        *buf = 138413571;
        v49 = @"NO";
        v66 = 2112;
        v65 = v46;
        if (v61)
        {
          v49 = @"YES";
        }

        v67 = v47;
        v68 = 2048;
        v69 = v24;
        v70 = 2048;
        v71 = v19;
        v72 = 2048;
        v73 = v31;
        v74 = 2117;
        v75 = v49;
        _os_log_impl(&dword_2304B3000, v44, OS_LOG_TYPE_INFO, "%@, %@, durationOfPreviousVisit, %.2f, intervalSincePreviousVisit, %.2f, distanceFromPreviousVisit, %.2f, visits to same LOI, %{sensitive}@", buf, 0x3Eu);
      }
    }

    [visitCopy confidence];
    v50 = *MEMORY[0x277D01470];
    if (v51 != *MEMORY[0x277D01470] || [visitCopy type] != 1)
    {
      goto LABEL_51;
    }

    placeInference3 = [visitCopy placeInference];
    if ([placeInference3 userType] == 1)
    {
      [v9 confidence];
      if (v53 == v50 && [v9 type] == 3)
      {
        placeInference4 = [visitCopy placeInference];
        if ([placeInference4 userType] == 1)
        {
          placeInference5 = [v9 placeInference];
          if ([placeInference5 userType] == 1)
          {
            if (v24 > 1800.0)
            {
              v56 = v61;
            }

            else
            {
              v56 = 0;
            }

            if (v56 == 1 && v19 < 240.0 && v31 < 300.0)
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                v57 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
                if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
                {
                  v58 = objc_opt_class();
                  v59 = NSStringFromClass(v58);
                  v60 = NSStringFromSelector(a2);
                  *buf = 138412546;
                  v65 = v59;
                  v66 = 2112;
                  v67 = v60;
                  _os_log_impl(&dword_2304B3000, v57, OS_LOG_TYPE_INFO, "%@, %@, observed exit and re-entry to home", buf, 0x16u);
                }
              }

              [(RTVisitMonitor *)self showVisitReentryDetectionUI];
            }

            goto LABEL_51;
          }
        }
      }
    }

LABEL_51:
  }
}

- (void)compareVisit:(id)visit previousVisit:(id)previousVisit
{
  visitCopy = visit;
  previousVisitCopy = previousVisit;
  queue = [(RTVisitMonitor *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__RTVisitMonitor_compareVisit_previousVisit___block_invoke;
  block[3] = &unk_2788C76F8;
  block[4] = self;
  v12 = visitCopy;
  v13 = previousVisitCopy;
  v9 = previousVisitCopy;
  v10 = visitCopy;
  dispatch_async(queue, block);
}

- (void)handleVisitIncident:(id)incident
{
  incidentCopy = incident;
  state = [(RTVisitMonitor *)self state];
  lastVisitIncident = [state lastVisitIncident];

  state2 = [(RTVisitMonitor *)self state];
  [state2 setLastVisitIncident:incidentCopy];

  if ([(RTVisitMonitor *)self monitoringVisitIncidents]|| [(RTVisitMonitor *)self monitoringLeechedVisitIncidents])
  {
    delegate = [(RTVisitMonitor *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate onVisitIncident:incidentCopy error:0];
    }

    [(RTVisitMonitor *)self _compareVisit:incidentCopy previousVisit:lastVisitIncident];
  }
}

- (void)handleLowConfidenceVisitIncident:(id)incident
{
  v10 = *MEMORY[0x277D85DE8];
  incidentCopy = incident;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v8 = 138739971;
      v9 = incidentCopy;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "low confidence visit, %{sensitive}@", &v8, 0xCu);
    }
  }

  state = [(RTVisitMonitor *)self state];
  [state setLastLowConfidenceVisitIncident:incidentCopy];

  if ([(RTVisitMonitor *)self monitoringLowConfidenceVisitIncidents])
  {
    delegate = [(RTVisitMonitor *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate onLowConfidenceVisitIncident:incidentCopy error:0];
    }
  }
}

- (RTVisitMonitorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end