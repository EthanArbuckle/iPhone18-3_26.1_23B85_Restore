@interface RTVisitMonitor
+ (double)LocationHeartbeatWhileAwake;
+ (id)bucketLocations:(id)a3 interval:(double)a4;
+ (id)hyperParameterForPipelineType:(unint64_t)a3;
+ (id)regionMonitoringClientIdentifierForPipelineType:(unint64_t)a3;
+ (id)regionWithRegionIdentifier:(id)a3 location:(id)a4 shouldNotifyForEntry:(BOOL)a5;
+ (int64_t)hintSourceForRegionCallbackType:(int64_t)a3;
- (BOOL)_setupGeoFencesForVisit:(id)a3 pipelineType:(unint64_t)a4 error:(id *)a5;
- (RTVisitMonitor)initWithDefaultsManager:(id)a3 deviceLocationPredictor:(id)a4 distanceCalculator:(id)a5 hintManager:(id)a6 learnedLocationManager:(id)a7 locationAwarenessManager:(id)a8 locationManager:(id)a9 metricManager:(id)a10 motionActivityManager:(id)a11 platform:(id)a12 queue:(id)a13 state:(id)a14 timerManager:(id)a15 visitLabeler:(id)a16;
- (RTVisitMonitor)initWithDefaultsManager:(id)a3 deviceLocationPredictor:(id)a4 hintManager:(id)a5 learnedLocationManager:(id)a6 locationAwarenessManager:(id)a7 locationManager:(id)a8 metricManager:(id)a9 motionActivityManager:(id)a10 platform:(id)a11 queue:(id)a12 state:(id)a13 visitLabeler:(id)a14;
- (RTVisitMonitorDelegate)delegate;
- (double)maxHorizontalAccuracyOverride;
- (id)_configurationForPipelineType:(unint64_t)a3;
- (id)_createPipelineWithType:(unint64_t)a3 name:(id)a4 lastVisit:(id)a5;
- (id)_moduleWithName:(id)a3 pipelineType:(unint64_t)a4 hyperParameter:(id)a5;
- (id)_modulesForPipelineType:(unint64_t)a3 hyperParameter:(id)a4;
- (id)_updateSourceForVisit:(id)a3;
- (unint64_t)visitPipelineTypeOverride;
- (void)_batchProcess:(id)a3 fromDate:(id)a4 toDate:(id)a5 handler:(id)a6;
- (void)_bootstrapPipeline:(id)a3 handler:(id)a4;
- (void)_compareVisit:(id)a3 previousVisit:(id)a4;
- (void)_processLeechedLocations:(id)a3;
- (void)_processMatureLocations;
- (void)_processRealtimeVisits:(id)a3 pipeline:(id)a4;
- (void)_registerVisitMonitorForRegionEventsForPipelineType:(unint64_t)a3;
- (void)_setupRealtimePipelineWithType:(unint64_t)a3 handler:(id)a4;
- (void)_shutdown;
- (void)_startFeedBuffer;
- (void)_startFeedBufferTimer;
- (void)_stopFeedBuffer;
- (void)_stopMonitoringAllRegionsForPipelineType:(unint64_t)a3;
- (void)_unregisterVisitMonitorForRegionEventsForPipelineType:(unint64_t)a3;
- (void)compareVisit:(id)a3 previousVisit:(id)a4;
- (void)fetchVisitMonitorState:(id)a3;
- (void)fetchVisitMonitorStatusWithHandler:(id)a3;
- (void)fetchVisitsFromDate:(id)a3 toDate:(id)a4 handler:(id)a5;
- (void)handleLowConfidenceVisitIncident:(id)a3;
- (void)handleRegionCallback:(int64_t)a3 region:(id)a4 clientIdentifier:(id)a5;
- (void)handleVisitIncident:(id)a3;
- (void)onLeechedLocationsNotification:(id)a3;
- (void)setFeedBufferReferenceCounter:(unint64_t)a3;
- (void)setHighConfidencePipelineReferenceCounter:(unint64_t)a3;
- (void)setLowConfidencePipelineReferenceCounter:(unint64_t)a3;
- (void)setMonitoringLeechedVisitIncidents:(BOOL)a3;
- (void)setMonitoringLowConfidenceVisitIncidents:(BOOL)a3;
- (void)setMonitoringVisitIncidents:(BOOL)a3;
- (void)setupGeoFencesForVisit:(id)a3 pipelineType:(unint64_t)a4 handler:(id)a5;
- (void)showVisitReentryDetectionUI;
- (void)shutdownWithHandler:(id)a3;
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
      v4 = [(RTVisitMonitor *)self queue];
      v9 = MEMORY[0x277D85DD0];
      v10 = 3221225472;
      v11 = __39__RTVisitMonitor__startFeedBufferTimer__block_invoke;
      v12 = &unk_2788C5908;
      objc_copyWeak(&v13, &location);
      v5 = [(RTTimerManager *)timerManager timerWithIdentifier:@"com.apple.routined.visit.feedbuffer.timer" queue:v4 handler:&v9];
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
  v4 = [(RTVisitFeedBuffer *)self->_feedBuffer numLocations];
  if (v4)
  {
    v5 = v4;
    v6 = [(RTVisitFeedBuffer *)self->_feedBuffer maturedLocations];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v7 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v9 = NSStringFromSelector(a2);
        *buf = 138412802;
        v14 = v9;
        v15 = 2048;
        v16 = [v6 count];
        v17 = 2048;
        v18 = v5;
        _os_log_debug_impl(&dword_2304B3000, v7, OS_LOG_TYPE_DEBUG, "%@, processing %lu/%lu matured locations from feedBuffer", buf, 0x20u);
      }
    }

    if ([v6 count])
    {
      pipelines = self->_pipelines;
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __41__RTVisitMonitor__processMatureLocations__block_invoke;
      v10[3] = &unk_2788CA4B8;
      v11 = v6;
      v12 = self;
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
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v2 objectForKey:@"VisitMonitorLocationHeartbeatIntervalWhileAwake"];

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

+ (id)regionMonitoringClientIdentifierForPipelineType:(unint64_t)a3
{
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [RTVisitPipeline typeToString:a3];
  v8 = [v4 stringWithFormat:@"%@.%@", v6, v7];

  return v8;
}

- (RTVisitMonitor)initWithDefaultsManager:(id)a3 deviceLocationPredictor:(id)a4 hintManager:(id)a5 learnedLocationManager:(id)a6 locationAwarenessManager:(id)a7 locationManager:(id)a8 metricManager:(id)a9 motionActivityManager:(id)a10 platform:(id)a11 queue:(id)a12 state:(id)a13 visitLabeler:(id)a14
{
  v35 = a14;
  v32 = a13;
  v31 = a12;
  v25 = a11;
  v18 = a10;
  v27 = a9;
  v37 = a8;
  v26 = a7;
  v19 = a6;
  v20 = a5;
  v29 = a4;
  v21 = a3;
  v30 = objc_opt_new();
  v34 = objc_opt_new();
  v22 = v19;
  v23 = [(RTVisitMonitor *)self initWithDefaultsManager:v21 deviceLocationPredictor:v29 distanceCalculator:v30 hintManager:v20 learnedLocationManager:v19 locationAwarenessManager:v26 locationManager:v37 metricManager:v27 motionActivityManager:v18 platform:v25 queue:v31 state:v32 timerManager:v34 visitLabeler:v35];

  return v23;
}

- (RTVisitMonitor)initWithDefaultsManager:(id)a3 deviceLocationPredictor:(id)a4 distanceCalculator:(id)a5 hintManager:(id)a6 learnedLocationManager:(id)a7 locationAwarenessManager:(id)a8 locationManager:(id)a9 metricManager:(id)a10 motionActivityManager:(id)a11 platform:(id)a12 queue:(id)a13 state:(id)a14 timerManager:(id)a15 visitLabeler:(id)a16
{
  v60 = a3;
  v50 = a4;
  v46 = a5;
  v53 = a5;
  v47 = a6;
  v59 = a6;
  v48 = a7;
  v58 = a7;
  v49 = a8;
  v51 = a8;
  v21 = a9;
  v22 = a10;
  v23 = a11;
  v24 = a12;
  v57 = a13;
  v56 = a14;
  v55 = a15;
  v25 = a16;
  v52 = v25;
  if (v60)
  {
    v26 = v50;
    if (!v50)
    {
      v39 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      v27 = v53;
      v37 = v58;
      v38 = v59;
      v28 = v51;
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

    v27 = v53;
    v28 = v51;
    if (!v53)
    {
      v38 = v59;
      v40 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2304B3000, v40, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: distanceCalculator", buf, 2u);
      }

      v35 = 0;
      goto LABEL_51;
    }

    if (v59)
    {
      if (v58)
      {
        if (v51)
        {
          if (v21)
          {
            if (v22)
            {
              if (v23)
              {
                if (v24)
                {
                  if (v57)
                  {
                    if (v56)
                    {
                      if (v55)
                      {
                        if (v25)
                        {
                          v61.receiver = self;
                          v61.super_class = RTVisitMonitor;
                          v29 = [(RTVisitMonitor *)&v61 init];
                          v30 = v29;
                          if (v29)
                          {
                            objc_storeStrong(&v29->_defaultsManager, a3);
                            objc_storeStrong(&v30->_deviceLocationPredictor, a4);
                            objc_storeStrong(&v30->_distanceCalculator, v46);
                            objc_storeStrong(&v30->_hintManager, v47);
                            objc_storeStrong(&v30->_learnedLocationManager, v48);
                            objc_storeStrong(&v30->_locationAwarenessManager, v49);
                            objc_storeStrong(&v30->_locationManager, a9);
                            objc_storeStrong(&v30->_metricManager, a10);
                            objc_storeStrong(&v30->_motionActivityManager, a11);
                            objc_storeStrong(&v30->_platform, a12);
                            objc_storeStrong(&v30->_timerManager, a15);
                            objc_storeStrong(&v30->_state, a14);
                            objc_storeStrong(&v30->_queue, a13);
                            v31 = objc_opt_new();
                            pipelines = v30->_pipelines;
                            v30->_pipelines = v31;

                            v33 = objc_opt_new();
                            pipelinesMonitoringRegion = v30->_pipelinesMonitoringRegion;
                            v30->_pipelinesMonitoringRegion = v33;

                            objc_storeStrong(&v30->_visitLabeler, a16);
                          }

                          v35 = v30;
                          self = v35;
                          goto LABEL_50;
                        }

                        v39 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                        v37 = v58;
                        v38 = v59;
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
                      v38 = v59;
LABEL_51:
                      v37 = v58;
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

  v26 = v50;
  v36 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2304B3000, v36, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: defaultsManager", buf, 2u);
  }

  v35 = 0;
  v27 = v53;
  v37 = v58;
  v38 = v59;
  v28 = v51;
LABEL_52:

  return v35;
}

- (void)shutdownWithHandler:(id)a3
{
  v4 = a3;
  v5 = [(RTVisitMonitor *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__RTVisitMonitor_shutdownWithHandler___block_invoke;
  v7[3] = &unk_2788C4938;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
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
      v22 = self;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%@ %@", buf, 0x16u);
    }
  }

  v6 = [(RTVisitMonitor *)self locationManager];
  [v6 removeObserver:self];

  v7 = [(RTVisitMonitor *)self locationAwarenessManager];
  [v7 removeLocationHeartbeatRequester:self];

  [(RTVisitMonitor *)self _unregisterVisitMonitorForRegionEventsForPipelineType:2];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = [(RTVisitMonitor *)self pipelines];
  v9 = [v8 allValues];

  v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v9);
        }

        [*(*(&v14 + 1) + 8 * v13++) shutdown];
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

- (double)maxHorizontalAccuracyOverride
{
  v2 = [(RTVisitMonitor *)self defaultsManager];
  v3 = [v2 objectForKey:@"MaxHorizontalAccuracy"];

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
  v2 = [(RTVisitMonitor *)self defaultsManager];
  v3 = [v2 objectForKey:@"PlaybackVisitPipelineType"];

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

- (void)setFeedBufferReferenceCounter:(unint64_t)a3
{
  feedBufferReferenceCounter = self->_feedBufferReferenceCounter;
  if (feedBufferReferenceCounter != a3)
  {
    v10 = v4;
    v11 = v3;
    if (feedBufferReferenceCounter)
    {
      if (a3)
      {
LABEL_4:
        self->_feedBufferReferenceCounter = a3;
        return;
      }
    }

    else
    {
      [(RTVisitMonitor *)self _startFeedBuffer];
      if (a3)
      {
        goto LABEL_4;
      }
    }

    [(RTVisitMonitor *)self _stopFeedBuffer:v10];
    goto LABEL_4;
  }
}

- (id)_moduleWithName:(id)a3 pipelineType:(unint64_t)a4 hyperParameter:(id)a5
{
  v69 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v12 = [v8 isEqualToString:v11];

  if (v12)
  {
    if (a4 == 2)
    {
      v13 = [RTDelayedLocationRequester alloc];
      v14 = [(RTVisitMonitor *)self locationManager];
      [v9 maxHorizontalAccuracy];
      v16 = v15;
      v17 = [(RTVisitMonitor *)self queue];
      v18 = [(RTDelayedLocationRequester *)v13 initWithLocationManager:v14 maxHorizontalAccuracy:v17 queue:v16];
    }

    else
    {
      v18 = 0;
    }

    v23 = [RTVisitPipelineModuleSCI alloc];
    v24 = [(RTVisitMonitor *)self defaultsManager];
    v25 = [(RTVisitMonitor *)self hintManager];
    v26 = [(RTVisitMonitor *)self queue];
    v27 = [(RTVisitPipelineModuleSCI *)v23 initWithDefaultsManager:v24 delayedLocationRequester:v18 hintManager:v25 queue:v26 hyperParameter:v9 useLowConfidence:a4 == 1];

    goto LABEL_8;
  }

  v19 = objc_opt_class();
  v20 = NSStringFromClass(v19);
  v21 = [v8 isEqualToString:v20];

  if (v21)
  {
    v22 = RTVisitPipelineModuleBurstNoiseFilter;
LABEL_11:
    v31 = [[v22 alloc] initWithHyperParameter:v9];
LABEL_12:
    v27 = v31;
    goto LABEL_13;
  }

  v28 = objc_opt_class();
  v29 = NSStringFromClass(v28);
  v30 = [v8 isEqualToString:v29];

  if (v30)
  {
    v22 = RTVisitPipelineModuleSpeedCluster;
    goto LABEL_11;
  }

  v33 = objc_opt_class();
  v34 = NSStringFromClass(v33);
  v35 = [v8 isEqualToString:v34];

  if (v35)
  {
    v36 = [RTVisitPipelineModuleSmoother alloc];
    v37 = [v9 timeIntervalBetweenSmoothedPoints];
    v38 = [v9 smootherKernelWidth];
    [v9 maxGapInVisit];
    v31 = [(RTVisitPipelineModuleSmoother *)v36 initWithTimeIntervalBetweenSmoothedPoints:v37 kernelWidth:v38 smallestSignificantWeightExponent:-10.0 maxGapWithinVisit:v39];
    goto LABEL_12;
  }

  v40 = objc_opt_class();
  v41 = NSStringFromClass(v40);
  v42 = [v8 isEqualToString:v41];

  if (v42)
  {
    v43 = [RTVisitPipelineModuleTrajectorySequenceCluster alloc];
    v44 = [[RTVisitModelControllerBatchMode alloc] initWithHyperParameter:v9];
    v27 = [(RTVisitPipelineModuleTrajectorySequenceCluster *)v43 initWithVisitTrajectorySequenceClassifier:v44 hyperParameter:v9];

    goto LABEL_13;
  }

  v45 = objc_opt_class();
  v46 = NSStringFromClass(v45);
  v47 = [v8 isEqualToString:v46];

  if (v47)
  {
    v48 = [RTVisitPipelineModuleVisitCentroidUpdater alloc];
    v18 = [(RTVisitMonitor *)self locationManager];
    v49 = objc_opt_new();
    v50 = [(RTVisitPipelineModuleVisitCentroidUpdater *)v48 initWithHyperParameter:v9 locationManager:v18 distanceCalculator:v49];
LABEL_22:
    v27 = v50;

LABEL_8:
    goto LABEL_13;
  }

  v51 = objc_opt_class();
  v52 = NSStringFromClass(v51);
  v53 = [v8 isEqualToString:v52];

  if (v53)
  {
    v54 = [RTVisitPipelineModuleAltitudeEstimator alloc];
    [v9 maxHorizontalAccuracy];
    v56 = v55;
    v18 = [(RTVisitMonitor *)self locationManager];
    v27 = [(RTVisitPipelineModuleAltitudeEstimator *)v54 initWithMaxHorizontalAccuracy:v18 locationManager:v56];
    goto LABEL_8;
  }

  v57 = objc_opt_class();
  v58 = NSStringFromClass(v57);
  v59 = [v8 isEqualToString:v58];

  if (v59)
  {
    v60 = [RTVisitPipelineModuleMotionStateTrimmer alloc];
    v18 = [(RTVisitMonitor *)self motionActivityManager];
    v49 = [(RTVisitMonitor *)self defaultsManager];
    v50 = [(RTVisitPipelineModuleMotionStateTrimmer *)v60 initWithMotionActivityManager:v18 defaultsManager:v49];
    goto LABEL_22;
  }

  v61 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
  {
    v63 = 138412802;
    v64 = v8;
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
    v64 = v8;
    _os_log_fault_impl(&dword_2304B3000, v62, OS_LOG_TYPE_FAULT, "unsupported module, name, %@", &v63, 0xCu);
  }

  v27 = 0;
LABEL_13:

  return v27;
}

- (id)_configurationForPipelineType:(unint64_t)a3
{
  v48 = *MEMORY[0x277D85DE8];
  if (a3 > 4 || ((1 << a3) & 0x16) == 0)
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: VALID_PIPELINE(pipelineType)", buf, 2u);
    }

    if (a3 != 4)
    {
      v18 = 0;
      goto LABEL_29;
    }
  }

  v6 = [(RTVisitMonitor *)self platform];
  if (([v6 internalInstall] & 1) == 0)
  {

LABEL_9:
    if (a3 > 2)
    {
      if (a3 == 3)
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

      v24 = [(RTVisitMonitor *)self platform];
      v25 = [v24 usesTSCForClustering];

      v26 = objc_opt_class();
      v27 = NSStringFromClass(v26);
      v12 = v27;
      if (!v25)
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
      if (a3 == 1)
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

  v7 = [(RTVisitMonitor *)self defaultsManager];
  v8 = MEMORY[0x277CCACA8];
  v9 = [RTVisitPipeline typeToString:a3];
  v10 = [v8 stringWithFormat:@"RTVisitPiplelineType%@", v9];
  v11 = [v7 objectForKey:v10];

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

    v13 = [RTVisitPipeline typeToString:a3];
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

- (id)_modulesForPipelineType:(unint64_t)a3 hyperParameter:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v7 = a4;
  if (a3 <= 4 && ((1 << a3) & 0x16) != 0)
  {
    goto LABEL_3;
  }

  v21 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2304B3000, v21, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: VALID_PIPELINE(type)", buf, 2u);
  }

  if (a3 == 4)
  {
LABEL_3:
    if (v7)
    {
      v8 = objc_opt_new();
      v9 = [(RTVisitMonitor *)self _configurationForPipelineType:a3];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v10 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v11 = NSStringFromSelector(a2);
          v12 = [RTVisitPipeline typeToString:a3];
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

            v19 = [(RTVisitMonitor *)self _moduleWithName:*(*(&v22 + 1) + 8 * i) pipelineType:a3 hyperParameter:v7, v22];
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

+ (id)hyperParameterForPipelineType:(unint64_t)a3
{
  v5 = 0;
  v14 = *MEMORY[0x277D85DE8];
  if (a3 > 2)
  {
    if (a3 != 3)
    {
      if (a3 != 4)
      {
        goto LABEL_11;
      }

      goto LABEL_6;
    }

    goto LABEL_8;
  }

  if (a3 - 1 < 2)
  {
LABEL_6:
    v5 = objc_opt_new();
    goto LABEL_11;
  }

  if (!a3)
  {
LABEL_8:
    v6 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      v8 = NSStringFromSelector(a2);
      v9 = [RTVisitPipeline typeToString:a3];
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

- (id)_createPipelineWithType:(unint64_t)a3 name:(id)a4 lastVisit:(id)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  if (a3 <= 4 && ((1 << a3) & 0x16) != 0)
  {
    goto LABEL_3;
  }

  v20 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v21) = 0;
    _os_log_error_impl(&dword_2304B3000, v20, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: VALID_PIPELINE(type)", &v21, 2u);
  }

  if (a3 == 4)
  {
LABEL_3:
    if (v8)
    {
      v10 = [objc_opt_class() hyperParameterForPipelineType:a3];
      v11 = [(RTVisitMonitor *)self platform];
      v12 = [v11 internalInstall];

      if (v12)
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

      v17 = [(RTVisitMonitor *)self _modulesForPipelineType:a3 hyperParameter:v10];
      v18 = [[RTVisitPipeline alloc] initWithModules:v17 name:v8 type:a3 lastVisit:v9 hyperParameter:v10];
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

- (void)_setupRealtimePipelineWithType:(unint64_t)a3 handler:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v7 = a4;
  if (a3 - 1 >= 2)
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
    v13 = [RTVisitPipeline typeToString:a3];
    v24 = 138412546;
    v25 = v12;
    v26 = 2112;
    v27 = v13;
    v14 = "%@, unsupported type, %@";
    goto LABEL_19;
  }

  pipelines = self->_pipelines;
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v10 = [(NSMutableDictionary *)pipelines objectForKeyedSubscript:v9];

  if (v10)
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
LABEL_8:

      v7[2](v7, 0);
      goto LABEL_9;
    }

    v12 = NSStringFromSelector(a2);
    v13 = [RTVisitPipeline typeToString:a3];
    v24 = 138412546;
    v25 = v12;
    v26 = 2112;
    v27 = v13;
    v14 = "%@, pipeline already setup, type, %@";
LABEL_19:
    _os_log_fault_impl(&dword_2304B3000, v11, OS_LOG_TYPE_FAULT, v14, &v24, 0x16u);

    goto LABEL_8;
  }

  v16 = [(RTVisitMonitor *)self state];
  v17 = v16;
  if (a3 == 1)
  {
    v18 = [v16 lastLowConfidenceVisitIncident];
    v19 = @"com.apple.routined.visit.pipeline.realtime-low-confidence";
  }

  else
  {
    v18 = [v16 lastVisitIncident];
    v19 = @"com.apple.routined.visit.pipeline.realtime-high-confidence";
  }

  v20 = [(RTVisitMonitor *)self _createPipelineWithType:a3 name:v19 lastVisit:v18];
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
  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [(NSMutableDictionary *)v22 setObject:v20 forKeyedSubscript:v23];

  [(RTVisitMonitor *)self _bootstrapPipeline:v20 handler:v7];
LABEL_9:
}

- (void)_registerVisitMonitorForRegionEventsForPipelineType:(unint64_t)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = [objc_opt_class() regionMonitoringClientIdentifierForPipelineType:a3];
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
      v11 = [RTVisitPipeline typeToString:a3];
      *buf = 138412546;
      v18 = v10;
      v19 = 2112;
      v20 = v11;
      _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "%@, Registration for pipeline, %@", buf, 0x16u);
    }
  }

  pipelinesMonitoringRegion = self->_pipelinesMonitoringRegion;
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
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

- (void)_unregisterVisitMonitorForRegionEventsForPipelineType:(unint64_t)a3
{
  pipelinesMonitoringRegion = self->_pipelinesMonitoringRegion;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  LODWORD(pipelinesMonitoringRegion) = [(NSMutableSet *)pipelinesMonitoringRegion containsObject:v7];

  if (pipelinesMonitoringRegion)
  {
    locationManager = self->_locationManager;
    v9 = [objc_opt_class() regionMonitoringClientIdentifierForPipelineType:a3];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __72__RTVisitMonitor__unregisterVisitMonitorForRegionEventsForPipelineType___block_invoke;
    v12[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
    v12[4] = a2;
    [(RTLocationManager *)locationManager unregisterForRegionEventsWithClientIdentifier:v9 handler:v12];

    v10 = self->_pipelinesMonitoringRegion;
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
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

- (void)handleRegionCallback:(int64_t)a3 region:(id)a4 clientIdentifier:(id)a5
{
  v37 = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = a5;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = NSStringFromSelector(a2);
      v13 = [RTLocationManager stringForRegionCallbackType:a3];
      *buf = 138413059;
      v30 = v12;
      v31 = 2112;
      v32 = v13;
      v33 = 2117;
      v34 = v9;
      v35 = 2112;
      v36 = v10;
      _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_INFO, "%@, callbackType, %@, region, %{sensitive}@, clientIdentifier, %@", buf, 0x2Au);
    }
  }

  if ((a3 - 1) <= 1)
  {
    v14 = [objc_opt_class() hintSourceForRegionCallbackType:a3];
    v15 = objc_alloc(MEMORY[0x277D01160]);
    [v9 center];
    v17 = v16;
    [v9 center];
    v19 = v18;
    [v9 radius];
    v21 = v20;
    v22 = [MEMORY[0x277CBEAA8] now];
    v23 = [v15 initWithLatitude:v22 longitude:v17 horizontalUncertainty:v19 date:v21];

    v24 = [(RTVisitMonitor *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__RTVisitMonitor_handleRegionCallback_region_clientIdentifier___block_invoke;
    block[3] = &unk_2788C5020;
    v27 = v23;
    v28 = v14;
    block[4] = self;
    v25 = v23;
    dispatch_async(v24, block);
  }
}

+ (int64_t)hintSourceForRegionCallbackType:(int64_t)a3
{
  v13 = *MEMORY[0x277D85DE8];
  if (a3 == 1)
  {
    return 7;
  }

  if (a3 == 2)
  {
    return 8;
  }

  v6 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
  {
    v7 = NSStringFromSelector(a2);
    v8 = [RTLocationManager stringForRegionCallbackType:a3];
    v9 = 138412546;
    v10 = v7;
    v11 = 2112;
    v12 = v8;
    _os_log_fault_impl(&dword_2304B3000, v6, OS_LOG_TYPE_FAULT, "%@, unsupported type, %@", &v9, 0x16u);
  }

  return -1;
}

- (void)_bootstrapPipeline:(id)a3 handler:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CBEAA8] distantPast];
  v9 = [v6 lastVisit];
  v10 = [v9 exit];

  v11 = [v6 lastVisit];
  v12 = v11;
  if (v10)
  {
    v13 = [v11 exit];
  }

  else
  {
    v14 = [v11 entry];

    if (!v14)
    {
      goto LABEL_6;
    }

    v12 = [v6 lastVisit];
    v13 = [v12 entry];
  }

  v15 = v13;
  v16 = [v13 dateByAddingTimeInterval:1.0];

  v8 = v16;
LABEL_6:
  v17 = [MEMORY[0x277CBEAA8] date];
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x2020000000;
  v29[3] = 0;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = [v8 stringFromDate];
      *buf = 138740227;
      v31 = v6;
      v32 = 2112;
      v33 = v19;
      _os_log_impl(&dword_2304B3000, v18, OS_LOG_TYPE_INFO, "start bootstrapping pipeline, %{sensitive}@, with locations since %@", buf, 0x16u);
    }
  }

  v20 = [MEMORY[0x277CBEAA8] date];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __45__RTVisitMonitor__bootstrapPipeline_handler___block_invoke;
  v24[3] = &unk_2788CA3A0;
  v24[4] = self;
  v21 = v6;
  v25 = v21;
  v28 = v29;
  v22 = v17;
  v26 = v22;
  v23 = v7;
  v27 = v23;
  [(RTVisitMonitor *)self _batchProcess:v21 fromDate:v8 toDate:v20 handler:v24];

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

+ (id)bucketLocations:(id)a3 interval:(double)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ([v5 count])
  {
    v6 = [MEMORY[0x277CBEB18] array];
    v7 = [MEMORY[0x277CBEB18] array];
    [v6 addObject:v7];
    v8 = [v5 firstObject];
    v9 = [v8 date];
    v10 = [v9 dateByAddingTimeInterval:a4];

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v24 = v5;
    v11 = v5;
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
          v17 = [v16 date];
          v18 = [v17 compare:v10];

          if (v18 != -1)
          {
            v19 = [MEMORY[0x277CBEB18] array];

            [v6 addObject:v19];
            v20 = [v16 date];
            v21 = [v20 dateByAddingTimeInterval:a4];

            v7 = v19;
            v10 = v21;
          }

          [v7 addObject:v16];
        }

        v13 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v13);
    }

    v22 = v6;
    v5 = v24;
  }

  else
  {
    v22 = MEMORY[0x277CBEBF8];
  }

  return v22;
}

- (void)_batchProcess:(id)a3 fromDate:(id)a4 toDate:(id)a5 handler:(id)a6
{
  v60[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v10)
  {
    if (v11)
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

    if (v11)
    {
LABEL_3:
      if (v12)
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

  if (v12)
  {
LABEL_4:
    if (v13)
    {
      goto LABEL_5;
    }

LABEL_19:
    v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v50 = "[RTVisitMonitor _batchProcess:fromDate:toDate:handler:]";
      v51 = 1024;
      LODWORD(v52) = 842;
      _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
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

  if (!v13)
  {
    goto LABEL_19;
  }

LABEL_5:
  if (!v10)
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
    v13[2](v13, 0, 1, v31);

    goto LABEL_25;
  }

  if (!v11 || !v12)
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

  if ([v11 isAfterDate:v12])
  {
    v14 = MEMORY[0x277CCA9B8];
    v15 = *MEMORY[0x277D01448];
    v55 = *MEMORY[0x277CCA450];
    v16 = MEMORY[0x277CCACA8];
    v17 = [v11 stringFromDate];
    v18 = [v12 stringFromDate];
    v19 = [v16 stringWithFormat:@"fromDate, %@, postdates toDate, %@", v17, v18];
    v56 = v19;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v56 forKeys:&v55 count:1];
    v21 = [v14 errorWithDomain:v15 code:7 userInfo:v20];
    v13[2](v13, 0, 1, v21);

LABEL_21:
    goto LABEL_25;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v32 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      v33 = [v11 stringFromDate];
      v34 = [v12 stringFromDate];
      *buf = 138740483;
      v50 = v10;
      v51 = 2112;
      v52 = v33;
      v53 = 2112;
      v54 = v34;
      _os_log_impl(&dword_2304B3000, v32, OS_LOG_TYPE_INFO, "batch processing pipeline %{sensitive}@ between, %@, to, %@", buf, 0x20u);
    }
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __56__RTVisitMonitor__batchProcess_fromDate_toDate_handler___block_invoke;
  aBlock[3] = &unk_2788CA3F0;
  aBlock[4] = self;
  v48 = v13;
  v35 = v11;
  v45 = v35;
  v36 = v12;
  v46 = v36;
  v37 = v10;
  v47 = v37;
  v38 = _Block_copy(aBlock);
  v39 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v35 endDate:v36];
  v40 = objc_alloc(MEMORY[0x277D01320]);
  v41 = [v37 hyperParameter];
  [v41 maxHorizontalAccuracy];
  v42 = [v40 initWithDateInterval:v39 horizontalAccuracy:3600 batchSize:0 boundingBoxLocation:?];

  v43 = [(RTVisitMonitor *)self locationManager];
  [v43 fetchStoredLocationsWithOptions:v42 handler:v38];

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

- (void)fetchVisitsFromDate:(id)a3 toDate:(id)a4 handler:(id)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8)
  {
    if (v9)
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

    if (v9)
    {
LABEL_3:
      if (v10)
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

  if (!v10)
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
  v15 = [(RTVisitMonitor *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__RTVisitMonitor_fetchVisitsFromDate_toDate_handler___block_invoke;
  block[3] = &unk_2788CA440;
  block[4] = self;
  v21 = v8;
  v23 = v14;
  v24 = v10;
  v22 = v9;
  v16 = v14;
  v17 = v10;
  v18 = v9;
  v19 = v8;
  dispatch_async(v15, block);
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

- (void)setHighConfidencePipelineReferenceCounter:(unint64_t)a3
{
  highConfidencePipelineReferenceCounter = self->_highConfidencePipelineReferenceCounter;
  if (highConfidencePipelineReferenceCounter != a3)
  {
    v10 = v4;
    v11 = v3;
    if (highConfidencePipelineReferenceCounter)
    {
      if (a3)
      {
LABEL_4:
        self->_highConfidencePipelineReferenceCounter = a3;
        return;
      }
    }

    else
    {
      [(RTVisitMonitor *)self _setupRealtimePipelineWithType:2 handler:&__block_literal_global_137];
      if (a3)
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

- (void)_stopMonitoringAllRegionsForPipelineType:(unint64_t)a3
{
  v17 = *MEMORY[0x277D85DE8];
  pipelinesMonitoringRegion = self->_pipelinesMonitoringRegion;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  LODWORD(pipelinesMonitoringRegion) = [(NSMutableSet *)pipelinesMonitoringRegion containsObject:v6];

  if (pipelinesMonitoringRegion)
  {
    v7 = [(RTVisitMonitor *)self locationManager];
    v8 = [objc_opt_class() regionMonitoringClientIdentifierForPipelineType:a3];
    v12 = 0;
    [v7 stopMonitoringAllRegionsForClientIdentifier:v8 error:&v12];
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

- (void)setLowConfidencePipelineReferenceCounter:(unint64_t)a3
{
  lowConfidencePipelineReferenceCounter = self->_lowConfidencePipelineReferenceCounter;
  if (lowConfidencePipelineReferenceCounter != a3)
  {
    v10 = v4;
    v11 = v3;
    if (lowConfidencePipelineReferenceCounter)
    {
      if (a3)
      {
LABEL_4:
        self->_lowConfidencePipelineReferenceCounter = a3;
        return;
      }
    }

    else
    {
      [(RTVisitMonitor *)self _setupRealtimePipelineWithType:1 handler:&__block_literal_global_140];
      if (a3)
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

- (void)setMonitoringVisitIncidents:(BOOL)a3
{
  if (self->_monitoringVisitIncidents != a3)
  {
    v12 = v3;
    v13 = v4;
    v5 = a3;
    self->_monitoringVisitIncidents = a3;
    v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
    if (v5)
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

- (void)setMonitoringLeechedVisitIncidents:(BOOL)a3
{
  if (self->_monitoringLeechedVisitIncidents != a3)
  {
    v12 = v3;
    v13 = v4;
    v5 = a3;
    self->_monitoringLeechedVisitIncidents = a3;
    v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
    if (v5)
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

- (void)setMonitoringLowConfidenceVisitIncidents:(BOOL)a3
{
  if (self->_monitoringLowConfidenceVisitIncidents != a3)
  {
    v12 = v3;
    v13 = v4;
    v5 = a3;
    self->_monitoringLowConfidenceVisitIncidents = a3;
    v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
    if (v5)
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
  v3 = [(RTVisitMonitor *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__RTVisitMonitor_startMonitoringVisitIncidents__block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)stopMonitoringVisitIncidents
{
  v3 = [(RTVisitMonitor *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__RTVisitMonitor_stopMonitoringVisitIncidents__block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)startMonitoringLeechedVisitIncidents
{
  v3 = [(RTVisitMonitor *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__RTVisitMonitor_startMonitoringLeechedVisitIncidents__block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)stopMonitoringLeechedVisitIncidents
{
  v3 = [(RTVisitMonitor *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__RTVisitMonitor_stopMonitoringLeechedVisitIncidents__block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)startMonitoringLowConfidenceVisitIncidents
{
  v3 = [(RTVisitMonitor *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__RTVisitMonitor_startMonitoringLowConfidenceVisitIncidents__block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)stopMonitoringLowConfidenceVisitIncidents
{
  v3 = [(RTVisitMonitor *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__RTVisitMonitor_stopMonitoringLowConfidenceVisitIncidents__block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(v3, block);
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

  v6 = [(RTVisitMonitor *)self state];
  [v6 dump];

  v7 = [(RTVisitMonitor *)self locationManager];
  v8 = +[(RTNotification *)RTLocationManagerNotificationLocationsLeeched];
  [v7 addObserver:self selector:sel_onLeechedLocationsNotification_ name:v8];

  v9 = [(RTVisitMonitor *)self locationAwarenessManager];
  [objc_opt_class() LocationHeartbeatWhileAwake];
  v14 = 0;
  [v9 addLocationHeartbeatRequester:self interval:&v14 error:?];
  v10 = v14;

  if (v10)
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [v10 code];
      v13 = [v10 localizedDescription];
      *buf = 134218754;
      v16 = v12;
      v17 = 2112;
      v18 = v13;
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
  v3 = [(RTVisitMonitor *)self locationManager];
  v4 = +[(RTNotification *)RTLocationManagerNotificationLocationsLeeched];
  [v3 removeObserver:self fromNotification:v4];

  v5 = [(RTVisitMonitor *)self locationAwarenessManager];
  [v5 removeLocationHeartbeatRequester:self];

  [(RTTimer *)self->_feedBufferTimer invalidate];
  feedBufferTimer = self->_feedBufferTimer;
  self->_feedBufferTimer = 0;

  feedBuffer = self->_feedBuffer;
  self->_feedBuffer = 0;
}

- (void)onLeechedLocationsNotification:(id)a3
{
  v5 = a3;
  v6 = [(RTVisitMonitor *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__RTVisitMonitor_onLeechedLocationsNotification___block_invoke;
  block[3] = &unk_2788C5020;
  v9 = v5;
  v10 = self;
  v11 = a2;
  v7 = v5;
  dispatch_async(v6, block);
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

- (void)_processLeechedLocations:(id)a3
{
  feedBuffer = self->_feedBuffer;
  if (feedBuffer)
  {
    [(RTVisitFeedBuffer *)feedBuffer addLocations:a3];

    [(RTVisitMonitor *)self _startFeedBufferTimer];
  }
}

+ (id)regionWithRegionIdentifier:(id)a3 location:(id)a4 shouldNotifyForEntry:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v5)
  {
    [v8 horizontalUncertainty];
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
  v17 = [v12 initForLowPowerWithCenter:v7 radius:v16.latitude identifier:{v16.longitude, v11}];
  [v17 setNotifyOnEntry:v5];
  [v17 setNotifyOnExit:v5 ^ 1];

  return v17;
}

- (void)setupGeoFencesForVisit:(id)a3 pipelineType:(unint64_t)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(RTVisitMonitor *)self queue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __62__RTVisitMonitor_setupGeoFencesForVisit_pipelineType_handler___block_invoke;
  v13[3] = &unk_2788C4C20;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a4;
  v11 = v9;
  v12 = v8;
  dispatch_async(v10, v13);
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

- (BOOL)_setupGeoFencesForVisit:(id)a3 pipelineType:(unint64_t)a4 error:(id *)a5
{
  v44 = *MEMORY[0x277D85DE8];
  v9 = a3;
  if (!v9)
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
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
  LODWORD(pipelinesMonitoringRegion) = [(NSMutableSet *)pipelinesMonitoringRegion containsObject:v12];

  if (pipelinesMonitoringRegion)
  {
    v13 = [objc_opt_class() regionMonitoringClientIdentifierForPipelineType:a4];
    v14 = [(RTVisitMonitor *)self locationManager];
    v35 = 0;
    [v14 stopMonitoringAllRegionsForClientIdentifier:v13 error:&v35];
    v15 = v35;

    if (v15)
    {
      if (a5)
      {
        v16 = v15;
        v17 = 0;
        *a5 = v15;
      }

      else
      {
        v17 = 0;
      }

      goto LABEL_27;
    }

    if ([v9 type] == 1)
    {
      v18 = objc_opt_class();
      v19 = [v9 location];
      v20 = [v18 regionWithRegionIdentifier:@"ExitForCurrentVisit" location:v19 shouldNotifyForEntry:0];

      v21 = [(RTVisitMonitor *)self locationManager];
      v34 = 0;
      [v21 startMonitoringForRegion:v20 clientIdentifier:v13 error:&v34];
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

      if (!a5)
      {
        goto LABEL_26;
      }
    }

    else
    {
      if ([v9 type] == 3)
      {
        deviceLocationPredictor = self->_deviceLocationPredictor;
        v25 = [v9 location];
        v26 = [v9 exit];
        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = __61__RTVisitMonitor__setupGeoFencesForVisit_pipelineType_error___block_invoke;
        v30[3] = &unk_2788CA490;
        v30[4] = self;
        v31 = v13;
        v33 = a2;
        v32 = v9;
        [(RTDeviceLocationPredictor *)deviceLocationPredictor fetchNextPredictedLocationsOfInterestFromLocation:v25 startDate:v26 timeInterval:v30 handler:7200.0];
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v27 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138739971;
          v37 = v9;
          _os_log_debug_impl(&dword_2304B3000, v27, OS_LOG_TYPE_DEBUG, "Invalid type received on visit, %{sensitive}@", buf, 0xCu);
        }
      }

      v15 = 0;
      if (!a5)
      {
        goto LABEL_26;
      }
    }

    v28 = v15;
    *a5 = v15;
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

- (id)_updateSourceForVisit:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277D01428]);
    v5 = [v3 date];
    v6 = [v3 type];
    v7 = [v3 location];
    v8 = [v3 entry];
    v9 = [v3 exit];
    v10 = [v3 dataPointCount];
    [v3 confidence];
    v12 = v11;
    v13 = [v3 placeInference];
    v14 = [v4 initWithDate:v5 type:v6 location:v7 entry:v8 exit:v9 dataPointCount:v10 confidence:v12 placeInference:v13 source:1];
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

- (void)_processRealtimeVisits:(id)a3 pipeline:(id)a4
{
  v74 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    if (![v7 count])
    {
      goto LABEL_55;
    }

    v9 = [[_RTMap alloc] initWithInput:v7];
    v63[0] = MEMORY[0x277D85DD0];
    v63[1] = 3221225472;
    v63[2] = __50__RTVisitMonitor__processRealtimeVisits_pipeline___block_invoke;
    v63[3] = &unk_2788CA4E0;
    v63[4] = self;
    v10 = [(_RTMap *)v9 withBlock:v63];

    if ([v8 type] != 2)
    {
      if ([v8 type] != 1)
      {
        obj = _rt_log_facility_get_os_log(RTLogFacilityVisit);
        if (os_log_type_enabled(obj, OS_LOG_TYPE_FAULT))
        {
          v24 = NSStringFromSelector(a2);
          *buf = 138412547;
          v65 = v24;
          v66 = 2117;
          v67 = v8;
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

        v40 = [v10 lastObject];

        if (v40)
        {
          v41 = [v10 lastObject];
          v51 = 0;
          -[RTVisitMonitor _setupGeoFencesForVisit:pipelineType:error:](self, "_setupGeoFencesForVisit:pipelineType:error:", v41, [v8 type], &v51);
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
              v67 = v41;
              v68 = 2117;
              v69 = v8;
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
      v49 = v8;
      v45 = v7;
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
              v23 = [v49 name];
              *buf = 138412803;
              v65 = v23;
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
      v7 = v45;
      v8 = v49;
LABEL_47:
      v10 = v46;
      a2 = v47;
      goto LABEL_48;
    }

    v47 = a2;
    if (_os_feature_enabled_impl())
    {
      v11 = [(RTVisitMonitor *)self platform];
      if ([v11 iPhoneDevice])
      {
        v12 = [v8 bootStrappingDone];

        v13 = v12 & 1;
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
      v49 = v8;
      v45 = v7;
      v27 = 0;
      v28 = *v60;
      v29 = @"com.apple.CoreRoutine.VisitMonitor";
      v48 = self;
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
          v32 = [(RTVisitMonitor *)self visitLabeler];
          v58 = 0;
          [v32 labelVisit:v31 clientIdentifier:v29 policy:v13 error:&v58];
          v33 = v58;

          [(RTVisitMonitor *)self handleVisitIncident:v31];
          if ([v31 type] == 1)
          {
            v34 = [(RTVisitMonitor *)self locationAwarenessManager];
            v57 = 0;
            [v34 addHighAccuracyLocationRequester:self error:&v57];
          }

          else
          {
            if ([v31 type] != 3)
            {
              goto LABEL_40;
            }

            v34 = [(RTVisitMonitor *)self locationAwarenessManager];
            v56 = 0;
            [v34 removeHighAccuracyLocationRequester:self error:&v56];
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
              self = v48;
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

- (void)fetchVisitMonitorStatusWithHandler:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
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

  v6 = [(RTVisitMonitor *)self queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53__RTVisitMonitor_fetchVisitMonitorStatusWithHandler___block_invoke;
  v8[3] = &unk_2788C4D38;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(v6, v8);
}

void __53__RTVisitMonitor_fetchVisitMonitorStatusWithHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = -[RTVisitMonitorStatus initWithMonitoringVisitIncidents:monitoringLeechedVisitIncidents:monitoringLowConfidenceVisitIncidents:feedBufferReferenceCounter:]([RTVisitMonitorStatus alloc], "initWithMonitoringVisitIncidents:monitoringLeechedVisitIncidents:monitoringLowConfidenceVisitIncidents:feedBufferReferenceCounter:", [*(a1 + 32) monitoringVisitIncidents], objc_msgSend(*(a1 + 32), "monitoringLeechedVisitIncidents"), objc_msgSend(*(a1 + 32), "monitoringLowConfidenceVisitIncidents"), objc_msgSend(*(a1 + 32), "feedBufferReferenceCounter"));
  (*(v1 + 16))(v1, v2);
}

- (void)fetchVisitMonitorState:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
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

  v6 = [(RTVisitMonitor *)self queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __41__RTVisitMonitor_fetchVisitMonitorState___block_invoke;
  v8[3] = &unk_2788C4D38;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(v6, v8);
}

void __41__RTVisitMonitor_fetchVisitMonitorState___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) state];
  (*(v1 + 16))(v1, v2, 0);
}

- (void)showVisitReentryDetectionUI
{
  v3 = [(RTVisitMonitor *)self platform];
  v4 = [v3 internalInstall];

  if (v4)
  {
    v5 = [(RTVisitMonitor *)self platform];
    v6 = [v5 iPhoneDevice];

    if (v6)
    {
      v7 = [(RTVisitMonitor *)self defaultsManager];
      v8 = [v7 objectForKey:@"VisitReentryDetection"];
      v9 = [v8 BOOLValue];

      if (v9)
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

- (void)_compareVisit:(id)a3 previousVisit:(id)a4
{
  v76 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7 && v8)
  {
    v10 = [v7 exit];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = [v7 entry];
    }

    v13 = v12;

    v14 = [v9 exit];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = [v9 entry];
    }

    v17 = v16;

    [v13 timeIntervalSinceDate:v17];
    v19 = v18;
    v20 = [v9 exit];
    v21 = v20;
    if (!v20)
    {
      v21 = [v9 date];
    }

    v22 = [v9 entry];
    if (v22)
    {
      [v21 timeIntervalSinceDate:v22];
      v24 = v23;
    }

    else
    {
      v25 = [v9 date];
      [v21 timeIntervalSinceDate:v25];
      v24 = v26;
    }

    if (!v20)
    {
    }

    v27 = [(RTVisitMonitor *)self distanceCalculator];
    v28 = [v7 location];
    v29 = [v9 location];
    v63 = 0;
    [v27 distanceFromLocation:v28 toLocation:v29 error:&v63];
    v31 = v30;
    v62 = v63;

    v32 = [v7 placeInference];
    v33 = [v32 loiIdentifier];
    v34 = [v9 placeInference];
    v35 = [v34 loiIdentifier];
    v61 = [v33 isEqual:v35];

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
        v69 = *&v7;
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

    [v7 confidence];
    v50 = *MEMORY[0x277D01470];
    if (v51 != *MEMORY[0x277D01470] || [v7 type] != 1)
    {
      goto LABEL_51;
    }

    v52 = [v7 placeInference];
    if ([v52 userType] == 1)
    {
      [v9 confidence];
      if (v53 == v50 && [v9 type] == 3)
      {
        v54 = [v7 placeInference];
        if ([v54 userType] == 1)
        {
          v55 = [v9 placeInference];
          if ([v55 userType] == 1)
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

- (void)compareVisit:(id)a3 previousVisit:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTVisitMonitor *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__RTVisitMonitor_compareVisit_previousVisit___block_invoke;
  block[3] = &unk_2788C76F8;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)handleVisitIncident:(id)a3
{
  v8 = a3;
  v4 = [(RTVisitMonitor *)self state];
  v5 = [v4 lastVisitIncident];

  v6 = [(RTVisitMonitor *)self state];
  [v6 setLastVisitIncident:v8];

  if ([(RTVisitMonitor *)self monitoringVisitIncidents]|| [(RTVisitMonitor *)self monitoringLeechedVisitIncidents])
  {
    v7 = [(RTVisitMonitor *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [v7 onVisitIncident:v8 error:0];
    }

    [(RTVisitMonitor *)self _compareVisit:v8 previousVisit:v5];
  }
}

- (void)handleLowConfidenceVisitIncident:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityVisit);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v8 = 138739971;
      v9 = v4;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "low confidence visit, %{sensitive}@", &v8, 0xCu);
    }
  }

  v6 = [(RTVisitMonitor *)self state];
  [v6 setLastLowConfidenceVisitIncident:v4];

  if ([(RTVisitMonitor *)self monitoringLowConfidenceVisitIncidents])
  {
    v7 = [(RTVisitMonitor *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [v7 onLowConfidenceVisitIncident:v4 error:0];
    }
  }
}

- (RTVisitMonitorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end