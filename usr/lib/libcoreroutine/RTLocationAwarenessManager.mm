@interface RTLocationAwarenessManager
+ (id)powerAssertion;
+ (int64_t)localHourFromTimestamp:(id)a3;
- (BOOL)activeRequestInterruptedCheck;
- (BOOL)addFixedRateLocationRequester:(id)a3 error:(id *)a4;
- (BOOL)addHighAccuracyLocationRequester:(id)a3 error:(id *)a4;
- (BOOL)addLocationHeartbeatRequester:(id)a3 interval:(double)a4 error:(id *)a5;
- (BOOL)coarseLocation:(id)a3;
- (BOOL)removeHighAccuracyLocationRequester:(id)a3 error:(id *)a4;
- (BOOL)validInterval:(double)a3;
- (BOOL)validLocation:(id)a3;
- (RTLocationAwarenessManager)initWithLocationManager:(id)a3 config:(id)a4 metricManager:(id)a5 motionActivityManager:(id)a6 authorizationManager:(id)a7 wifiManager:(id)a8 xpcActivityManager:(id)a9 timerManager:(id)a10 learnedLocationStore:(id)a11;
- (double)intervalForHeartbeatBucket:(id)a3;
- (double)metricAge;
- (double)nextFiringDelayWithHeartbeatInterval:(double)result starvingDuration:(double)a4;
- (double)starvingDurationTillNow;
- (id)heartbeatBucketForInterval:(double)a3;
- (id)updateWithLocation:(id)a3 oneIntervalHistogram:(id)a4 lastLocation:(id)a5;
- (void)_addFixedRateLocationRequester:(id)a3;
- (void)_addHighAccuracyLocationRequester:(id)a3;
- (void)_onDailyMetricsNotification:(id)a3;
- (void)_removeFixedRateLocationRequester:(id)a3;
- (void)_removeHighAccuracyLocationRequester:(id)a3;
- (void)_requestForFixedRateLocation;
- (void)_requestForHighAccuracyLocation;
- (void)_setup;
- (void)_shutdownWithHandler:(id)a3;
- (void)_updateXPCActivityForHighAccuracyLocationRequest;
- (void)_updateXPCActivityForObserverCount:(unint64_t)a3;
- (void)adjustHeartbeatTimer;
- (void)considerRequestingForLocation;
- (void)considerUpdateActiveRequestMetrics;
- (void)considerUpdatingHeartbeatDelayMetrics;
- (void)heartbeatTasks;
- (void)hourlySingleShotWithHandler:(id)a3;
- (void)incrementBasicHistogram:(id)a3 forTimestamp:(id)a4;
- (void)onDailyMetricsNotification:(id)a3;
- (void)onHeartbeat;
- (void)onLeechedLocationNotification:(id)a3;
- (void)onMotionActivityManagerNotificationActivityNotification:(id)a3;
- (void)onRest;
- (void)removeFixedRateLocationRequester:(id)a3;
- (void)removeLocationHeartbeatRequester:(id)a3;
- (void)requestForFixedRateLocation;
- (void)requestForHighAccuracyLocation;
- (void)resetActiveRequestSummaryVariables;
- (void)setLastValidLocation:(id)a3;
- (void)setMinHeartbeatBucket:(id)a3;
- (void)updateHeartbeatTimerDelayForTimestamp:(id)a3 withDelay:(double)a4;
- (void)updateLocationAwarenessHistogramsWithLocations:(id)a3;
- (void)updateMinHeartbeatBucket;
@end

@implementation RTLocationAwarenessManager

void __50__RTLocationAwarenessManager_adjustHeartbeatTimer__block_invoke_73(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained onHeartbeat];
}

- (void)onHeartbeat
{
  v3 = [(RTLocationAwarenessManager *)self activeOnset];

  if (v3)
  {
    v4 = [(RTLocationAwarenessManager *)self heartbeatBuffer];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __41__RTLocationAwarenessManager_onHeartbeat__block_invoke;
    v7[3] = &unk_2788C4EA0;
    v7[4] = self;
    v5 = [MEMORY[0x277CBEAA8] date];
    v6 = [v5 stringFromDate];
    [v4 enqueueBlock:v7 description:{@"Heartbeat tasks buffered at %@", v6}];
  }

  else
  {

    [(RTLocationAwarenessManager *)self heartbeatTasks];
  }
}

- (void)heartbeatTasks
{
  [(RTLocationAwarenessManager *)self considerUpdatingHeartbeatDelayMetrics];
  [(RTLocationAwarenessManager *)self considerRequestingForLocation];

  [(RTLocationAwarenessManager *)self adjustHeartbeatTimer];
}

- (void)considerUpdatingHeartbeatDelayMetrics
{
  v3 = [(RTLocationAwarenessManager *)self scheduledHeartbeatFiringTime];

  if (v3)
  {
    v8 = [MEMORY[0x277CBEAA8] date];
    v4 = [(RTLocationAwarenessManager *)self scheduledHeartbeatFiringTime];
    [v8 timeIntervalSinceDate:v4];
    v6 = v5;

    [(RTLocationAwarenessManager *)self updateHeartbeatTimerDelayForTimestamp:v8 withDelay:v6];
    [(RTLocationAwarenessManager *)self setScheduledHeartbeatFiringTime:0];
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityLocationAwareness);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "Unable to calculate heartbeat delay: nil scheduled time.", buf, 2u);
    }
  }
}

- (void)considerRequestingForLocation
{
  v67 = *MEMORY[0x277D85DE8];
  v3 = [(RTLocationAwarenessManager *)self minHeartbeatBucket];
  if (v3)
  {
    restTimer = self->_restTimer;

    if (!restTimer)
    {
      v5 = [MEMORY[0x277CBEAA8] date];
      v6 = [(RTLocationAwarenessManager *)self metrics];
      v7 = [v6 heartbeatStats];
      v8 = [v7 timerFiringCount];
      [(RTLocationAwarenessManager *)self incrementBasicHistogram:v8 forTimestamp:v5];

      v9 = [(RTLocationAwarenessManager *)self lastValidLocation];
      if (v9 && (v10 = v9, -[RTLocationAwarenessManager stationaryStartTimestamp](self, "stationaryStartTimestamp"), v11 = objc_claimAutoreleasedReturnValue(), -[RTLocationAwarenessManager lastValidLocation](self, "lastValidLocation"), v12 = objc_claimAutoreleasedReturnValue(), [v12 timestamp], v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "timeIntervalSinceDate:", v13), v15 = v14, v13, v12, v11, v10, v15 <= 0.0))
      {
        v59 = [(RTLocationAwarenessManager *)self metrics];
        v60 = [v59 heartbeatStats];
        v61 = [v60 skippedRequestDueToStationary];
        [(RTLocationAwarenessManager *)self incrementBasicHistogram:v61 forTimestamp:v5];

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v52 = _rt_log_facility_get_os_log(RTLogFacilityLocationAwareness);
          if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
          {
            v53 = [(RTLocationAwarenessManager *)self lastValidLocation];
            v54 = [v53 timestamp];
            v55 = [v54 stringFromDate];
            v56 = [(RTLocationAwarenessManager *)self stationaryStartTimestamp];
            v57 = [v56 stringFromDate];
            *buf = 138412546;
            v64 = v55;
            v65 = 2112;
            v66 = v57;
            v58 = "Skip active location request, [stationary]. Last valid location timestamp, %@, stationary since, %@.";
            goto LABEL_17;
          }

LABEL_18:
        }
      }

      else
      {
        [(RTLocationAwarenessManager *)self starvingDurationTillNow];
        v17 = v16;
        v18 = [(RTLocationAwarenessManager *)self config];
        [v18 dispatchTimerLeeway];
        v20 = v17 + v19;
        v21 = [(RTLocationAwarenessManager *)self minHeartbeatBucket];
        [(RTLocationAwarenessManager *)self intervalForHeartbeatBucket:v21];
        v23 = v22;

        v24 = [(RTLocationAwarenessManager *)self metrics];
        v25 = [v24 heartbeatStats];
        v26 = v25;
        if (v20 > v23)
        {
          v27 = [v25 activeRequestCount];
          [(RTLocationAwarenessManager *)self incrementBasicHistogram:v27 forTimestamp:v5];

          [(RTLocationAwarenessManager *)self resetActiveRequestSummaryVariables];
          objc_storeStrong(&self->_activeOnset, v5);
          v28 = [(RTLocationAwarenessManager *)self locationManager];
          v29 = +[(RTNotification *)RTLocationManagerNotificationLocationsAccuracyHundredMeters];
          [v28 addObserver:self selector:sel_onNoOpLocationNotification_ name:v29];

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v30 = _rt_log_facility_get_os_log(RTLogFacilityLocationAwareness);
            if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
            {
              v31 = [(RTLocationAwarenessManager *)self restTimer];
              v32 = [(RTLocationAwarenessManager *)self config];
              [v32 activeDuration];
              *buf = 134218240;
              v64 = v31;
              v65 = 2048;
              v66 = v33;
              _os_log_impl(&dword_2304B3000, v30, OS_LOG_TYPE_INFO, "Reset rest timer, %p, firing delay, %f secs.", buf, 0x16u);
            }
          }

          timerManager = self->_timerManager;
          v35 = MEMORY[0x277CCACA8];
          v36 = objc_opt_class();
          v37 = NSStringFromClass(v36);
          v38 = [v35 stringWithFormat:@"%@.restTimer", v37];
          v39 = [(RTNotifier *)self queue];
          v62[0] = MEMORY[0x277D85DD0];
          v62[1] = 3221225472;
          v62[2] = __59__RTLocationAwarenessManager_considerRequestingForLocation__block_invoke;
          v62[3] = &unk_2788C4EA0;
          v62[4] = self;
          v40 = [(RTTimerManager *)timerManager timerWithIdentifier:v38 queue:v39 handler:v62];
          v41 = self->_restTimer;
          self->_restTimer = v40;

          v42 = self->_restTimer;
          v43 = [(RTLocationAwarenessManager *)self config];
          [v43 activeDuration];
          v45 = v44;
          v46 = [(RTLocationAwarenessManager *)self config];
          [v46 dispatchTimerLeeway];
          [(RTTimer *)v42 fireAfterDelay:v45 interval:INFINITY leeway:v47];

          [(RTTimer *)self->_restTimer resume];
          v48 = MEMORY[0x277CBEAA8];
          v49 = [(RTLocationAwarenessManager *)self config];
          [v49 activeDuration];
          v50 = [v48 dateWithTimeIntervalSinceNow:?];
          [(RTLocationAwarenessManager *)self setScheduledRestTimerFiringTime:v50];

          goto LABEL_19;
        }

        v51 = [v25 skippedRequestDueToRecentFix];
        [(RTLocationAwarenessManager *)self incrementBasicHistogram:v51 forTimestamp:v5];

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v52 = _rt_log_facility_get_os_log(RTLogFacilityLocationAwareness);
          if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
          {
            v53 = [(RTLocationAwarenessManager *)self lastValidLocation];
            v54 = [v53 timestamp];
            v55 = [v54 stringFromDate];
            v56 = [(RTLocationAwarenessManager *)self stationaryStartTimestamp];
            v57 = [v56 stringFromDate];
            *buf = 138412546;
            v64 = v55;
            v65 = 2112;
            v66 = v57;
            v58 = "Skip active location request, [recent fix]. Last valid location timestamp, %@, stationary since, %@.";
LABEL_17:
            _os_log_impl(&dword_2304B3000, v52, OS_LOG_TYPE_INFO, v58, buf, 0x16u);

            goto LABEL_18;
          }

          goto LABEL_18;
        }
      }

LABEL_19:
    }
  }
}

- (double)starvingDurationTillNow
{
  v3 = [(RTLocationAwarenessManager *)self lastValidLocation];
  if (v3)
  {
    v4 = [MEMORY[0x277CBEAA8] date];
    v5 = [(RTLocationAwarenessManager *)self lastValidLocation];
    v6 = [v5 timestamp];
    [v4 timeIntervalSinceDate:v6];
    v8 = v7;
  }

  else
  {
    v4 = [(RTLocationAwarenessManager *)self config];
    [v4 maxHeartbeatInterval];
    v8 = v9;
  }

  return v8;
}

- (void)resetActiveRequestSummaryVariables
{
  [(RTLocationAwarenessManager *)self setActiveRequestInterrupted:0];
  [(RTLocationAwarenessManager *)self setActiveRequestFulfilled:0];
  [(RTLocationAwarenessManager *)self setActiveRequestCoarseLocationReceived:0];
  [(RTLocationAwarenessManager *)self setActiveRequestLocationServiceOn:1];
  [(RTLocationAwarenessManager *)self setActiveRequestRoutineOn:1];

  [(RTLocationAwarenessManager *)self setActiveRequestWifiOn:1];
}

- (void)adjustHeartbeatTimer
{
  v42 = *MEMORY[0x277D85DE8];
  v3 = [(RTLocationAwarenessManager *)self minHeartbeatBucket];

  if (v3)
  {
    v4 = [(RTLocationAwarenessManager *)self minHeartbeatBucket];
    [(RTLocationAwarenessManager *)self intervalForHeartbeatBucket:v4];
    v6 = v5;

    [(RTLocationAwarenessManager *)self starvingDurationTillNow];
    [(RTLocationAwarenessManager *)self nextFiringDelayWithHeartbeatInterval:v6 starvingDuration:v7];
    v9 = v8;
    objc_initWeak(&location, self);
    v10 = [MEMORY[0x277CBEAA8] date];
    v11 = [(RTLocationAwarenessManager *)self config];
    [v11 dispatchTimerLeeway];
    v13 = v9 > v12;

    if (!v13)
    {
      v14 = [(RTLocationAwarenessManager *)self activeOnset];
      v15 = v14 == 0;

      if (v15)
      {
        v16 = [(RTNotifier *)self queue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __50__RTLocationAwarenessManager_adjustHeartbeatTimer__block_invoke;
        block[3] = &unk_2788C57F8;
        objc_copyWeak(&v36, &location);
        v35 = v10;
        dispatch_async(v16, block);

        objc_destroyWeak(&v36);
      }

      v9 = v6;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v17 = _rt_log_facility_get_os_log(RTLogFacilityLocationAwareness);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = [(RTLocationAwarenessManager *)self heartbeatTimer];
        *buf = 134218240;
        v39 = v18;
        v40 = 2048;
        v41 = v9;
        _os_log_impl(&dword_2304B3000, v17, OS_LOG_TYPE_INFO, "Reset heartbeat timer, %p, firing delay, %f secs.", buf, 0x16u);
      }
    }

    timerManager = self->_timerManager;
    v20 = MEMORY[0x277CCACA8];
    v21 = objc_opt_class();
    v22 = NSStringFromClass(v21);
    v23 = [v20 stringWithFormat:@"%@.heartbeatTimer", v22];
    v24 = [(RTNotifier *)self queue];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __50__RTLocationAwarenessManager_adjustHeartbeatTimer__block_invoke_73;
    v32[3] = &unk_2788C5908;
    objc_copyWeak(&v33, &location);
    v25 = [(RTTimerManager *)timerManager timerWithIdentifier:v23 queue:v24 handler:v32];
    heartbeatTimer = self->_heartbeatTimer;
    self->_heartbeatTimer = v25;

    v27 = self->_heartbeatTimer;
    v28 = [(RTLocationAwarenessManager *)self config];
    [v28 dispatchTimerLeeway];
    [(RTTimer *)v27 fireAfterDelay:v9 interval:INFINITY leeway:v29];

    [(RTTimer *)self->_heartbeatTimer resume];
    v30 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:v9];
    [(RTLocationAwarenessManager *)self setScheduledHeartbeatFiringTime:v30];

    objc_destroyWeak(&v33);
    objc_destroyWeak(&location);
  }

  else
  {
    [(RTTimer *)self->_heartbeatTimer invalidate];
    v31 = self->_heartbeatTimer;
    self->_heartbeatTimer = 0;
  }
}

- (double)metricAge
{
  v3 = [MEMORY[0x277CBEAA8] date];
  v4 = [(RTLocationAwarenessManager *)self metrics];
  v5 = [v4 startTimestamp];
  [v3 timeIntervalSinceDate:v5];
  v7 = v6;

  return v7;
}

- (void)updateLocationAwarenessHistogramsWithLocations:(id)a3
{
  v66 = *MEMORY[0x277D85DE8];
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  obj = a3;
  v4 = [obj countByEnumeratingWithState:&v61 objects:v65 count:16];
  if (v4)
  {
    v5 = v4;
    v60 = *v62;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v62 != v60)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v61 + 1) + 8 * i);
        v8 = [v7 timestamp];

        if (v8)
        {
          v9 = objc_opt_class();
          v10 = [v7 timestamp];
          v11 = [v9 localHourFromTimestamp:v10];

          [v7 horizontalAccuracy];
          if (v12 > 0.0)
          {
            v13 = v12;
            v14 = [(RTLocationAwarenessManager *)self metrics];
            v15 = [v14 timeHistograms];
            v16 = [v15 anyPositiveHistogram];
            v17 = [v16 counts];
            ++*(v17 + 4 * v11);

            v18 = [(RTLocationAwarenessManager *)self metrics];
            v19 = [v18 intervalHistogram];
            v20 = [v19 anyPositiveIntervalHistograms];
            v21 = [(RTLocationAwarenessManager *)self lastLocationAnyPositive];
            v22 = [(RTLocationAwarenessManager *)self updateWithLocation:v7 oneIntervalHistogram:v20 lastLocation:v21];
            [(RTLocationAwarenessManager *)self setLastLocationAnyPositive:v22];

            if (v13 < 200.0)
            {
              v23 = [(RTLocationAwarenessManager *)self metrics];
              v24 = [v23 timeHistograms];
              v25 = [v24 lessThan200mHistogram];
              v26 = [v25 counts];
              ++*(v26 + 4 * v11);

              v27 = [(RTLocationAwarenessManager *)self metrics];
              v28 = [v27 intervalHistogram];
              v29 = [v28 lessThan200mIntervalHistograms];
              v30 = [(RTLocationAwarenessManager *)self lastLocationLessThan200m];
              v31 = [(RTLocationAwarenessManager *)self updateWithLocation:v7 oneIntervalHistogram:v29 lastLocation:v30];
              [(RTLocationAwarenessManager *)self setLastLocationLessThan200m:v31];

              if (v13 < 55.0)
              {
                v32 = [(RTLocationAwarenessManager *)self metrics];
                v33 = [v32 timeHistograms];
                v34 = [v33 lessThan55mHistogram];
                v35 = [v34 counts];
                ++*(v35 + 4 * v11);

                v36 = [(RTLocationAwarenessManager *)self metrics];
                v37 = [v36 intervalHistogram];
                v38 = [v37 lessThan55mIntervalHistograms];
                v39 = [(RTLocationAwarenessManager *)self lastLocationLessThan55m];
                v40 = [(RTLocationAwarenessManager *)self updateWithLocation:v7 oneIntervalHistogram:v38 lastLocation:v39];
                [(RTLocationAwarenessManager *)self setLastLocationLessThan55m:v40];

                if (v13 < 20.0)
                {
                  v41 = [(RTLocationAwarenessManager *)self metrics];
                  v42 = [v41 timeHistograms];
                  v43 = [v42 lessThan20mHistogram];
                  v44 = [v43 counts];
                  ++*(v44 + 4 * v11);

                  v45 = [(RTLocationAwarenessManager *)self metrics];
                  v46 = [v45 intervalHistogram];
                  v47 = [v46 lessThan25mIntervalHistograms];
                  v48 = [(RTLocationAwarenessManager *)self lastLocationLessThan20m];
                  v49 = [(RTLocationAwarenessManager *)self updateWithLocation:v7 oneIntervalHistogram:v47 lastLocation:v48];
                  [(RTLocationAwarenessManager *)self setLastLocationLessThan20m:v49];

                  if (v13 < 10.0)
                  {
                    v50 = [(RTLocationAwarenessManager *)self metrics];
                    v51 = [v50 timeHistograms];
                    v52 = [v51 lessThan10mHistogram];
                    v53 = [v52 counts];
                    ++*(v53 + 4 * v11);

                    v54 = [(RTLocationAwarenessManager *)self metrics];
                    v55 = [v54 intervalHistogram];
                    v56 = [v55 lessThan10mIntervalHistograms];
                    v57 = [(RTLocationAwarenessManager *)self lastLocationLessThan10m];
                    v58 = [(RTLocationAwarenessManager *)self updateWithLocation:v7 oneIntervalHistogram:v56 lastLocation:v57];
                    [(RTLocationAwarenessManager *)self setLastLocationLessThan10m:v58];
                  }
                }
              }
            }
          }
        }
      }

      v5 = [obj countByEnumeratingWithState:&v61 objects:v65 count:16];
    }

    while (v5);
  }
}

- (id)updateWithLocation:(id)a3 oneIntervalHistogram:(id)a4 lastLocation:(id)a5
{
  v42 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (!v7)
  {
    v35 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v38 = 136315394;
      v39 = "[RTLocationAwarenessManager(metric) updateWithLocation:oneIntervalHistogram:lastLocation:]";
      v40 = 1024;
      v41 = 89;
      _os_log_error_impl(&dword_2304B3000, v35, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: location (in %s:%d)", &v38, 0x12u);
    }

    v36 = v9;
    goto LABEL_18;
  }

  if (!v9)
  {
    v36 = [v7 copy];
LABEL_18:
    v17 = v36;
    goto LABEL_19;
  }

  v10 = [v7 timestamp];
  v11 = [v9 timestamp];
  [v10 timeIntervalSinceDate:v11];
  v13 = v12;

  v14 = objc_opt_class();
  v15 = [v9 timestamp];
  v16 = [v14 localHourFromTimestamp:v15];

  v17 = v9;
  if (v13 > 0.0)
  {
    v18 = [v7 copy];

    v17 = v18;
  }

  if (v13 > 8.0)
  {
    v19 = [v8 objectAtIndex:0];
    v20 = [v19 counts];
    ++*(v20 + 4 * v16);

    if (v13 > 60.0)
    {
      v21 = [v8 objectAtIndex:1];
      v22 = [v21 counts];
      ++*(v22 + 4 * v16);

      if (v13 > 120.0)
      {
        v23 = [v8 objectAtIndex:2];
        v24 = [v23 counts];
        ++*(v24 + 4 * v16);

        if (v13 > 900.0)
        {
          v25 = [v8 objectAtIndex:3];
          v26 = [v25 counts];
          ++*(v26 + 4 * v16);

          if (v13 > 3600.0)
          {
            v27 = [v8 objectAtIndex:4];
            v28 = [v27 counts];
            ++*(v28 + 4 * v16);

            if (v13 > 7200.0)
            {
              v29 = [v8 objectAtIndex:5];
              v30 = [v29 counts];
              ++*(v30 + 4 * v16);

              if (v13 > 14400.0)
              {
                v31 = [v8 objectAtIndex:6];
                v32 = [v31 counts];
                ++*(v32 + 4 * v16);

                if (v13 > 28800.0)
                {
                  v33 = [v8 objectAtIndex:7];
                  v34 = [v33 counts];
                  ++*(v34 + 4 * v16);
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_19:

  return v17;
}

+ (int64_t)localHourFromTimestamp:(id)a3
{
  v3 = MEMORY[0x277CBEA80];
  v4 = a3;
  v5 = [v3 currentCalendar];
  v6 = [v5 components:32 fromDate:v4];

  v7 = [v6 hour];
  return v7;
}

- (void)updateHeartbeatTimerDelayForTimestamp:(id)a3 withDelay:(double)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(RTLocationAwarenessManager *)self config];
  [v7 heartbeatIntervalResolution];
  v9 = v8 * 0.5;

  if (v9 < a4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v10 = _rt_log_facility_get_os_log(RTLogFacilityLocationAwareness);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v28 = 134217984;
        v29 = a4;
        _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "Significant heartbeat delay, %0.1f seconds", &v28, 0xCu);
      }
    }

    v11 = [objc_opt_class() localHourFromTimestamp:v6];
    v12 = [(RTLocationAwarenessManager *)self metrics];
    v13 = [v12 heartbeatStats];
    v14 = [v13 timerFiringDelayedCount];
    v15 = [v14 counts];
    ++*(v15 + 4 * v11);

    v16 = llround(a4);
    v17 = [(RTLocationAwarenessManager *)self metrics];
    v18 = [v17 heartbeatStats];
    v19 = [v18 timerFiringDelayedTotalSeconds];
    v20 = [v19 counts];
    *(v20 + 4 * v11) += v16;

    v21 = [(RTLocationAwarenessManager *)self metrics];
    v22 = [v21 heartbeatStats];
    v23 = [v22 timerFiringDelayedMaxSeconds];
    v24 = *([v23 counts] + 4 * v11);

    if (v24 < v16)
    {
      v25 = [(RTLocationAwarenessManager *)self metrics];
      v26 = [v25 heartbeatStats];
      v27 = [v26 timerFiringDelayedMaxSeconds];
      *([v27 counts] + 4 * v11) = v16;
    }
  }
}

- (void)considerUpdateActiveRequestMetrics
{
  [(RTLocationAwarenessManager *)self setActiveRequestInterrupted:[(RTLocationAwarenessManager *)self activeRequestInterruptedCheck]];
  v3 = dispatch_group_create();
  v4 = [(RTLocationAwarenessManager *)self authorizationManager];

  if (v4)
  {
    dispatch_group_enter(v3);
    v5 = [(RTLocationAwarenessManager *)self authorizationManager];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __72__RTLocationAwarenessManager_metric__considerUpdateActiveRequestMetrics__block_invoke;
    v15[3] = &unk_2788C53F0;
    v15[4] = self;
    v16 = v3;
    [v5 fetchRoutineEnabledWithHandler:v15];
  }

  v6 = [(RTLocationAwarenessManager *)self wifiManager];

  if (v6)
  {
    dispatch_group_enter(v3);
    v7 = [(RTLocationAwarenessManager *)self wifiManager];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __72__RTLocationAwarenessManager_metric__considerUpdateActiveRequestMetrics__block_invoke_3;
    v13[3] = &unk_2788CC440;
    v13[4] = self;
    v14 = v3;
    [v7 fetchPowerStatus:v13];
  }

  -[RTLocationAwarenessManager setActiveRequestLocationServiceOn:](self, "setActiveRequestLocationServiceOn:", [MEMORY[0x277CBFC10] locationServicesEnabled]);
  v8 = [MEMORY[0x277CBEAA8] date];
  v9 = [(RTNotifier *)self queue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __72__RTLocationAwarenessManager_metric__considerUpdateActiveRequestMetrics__block_invoke_5;
  v11[3] = &unk_2788C4A70;
  v11[4] = self;
  v12 = v8;
  v10 = v8;
  dispatch_group_notify(v3, v9, v11);
}

void __72__RTLocationAwarenessManager_metric__considerUpdateActiveRequestMetrics__block_invoke(uint64_t a1, char a2)
{
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__RTLocationAwarenessManager_metric__considerUpdateActiveRequestMetrics__block_invoke_2;
  block[3] = &unk_2788C53C8;
  v5 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v8 = a2;
  v7 = v5;
  dispatch_async(v4, block);
}

void __72__RTLocationAwarenessManager_metric__considerUpdateActiveRequestMetrics__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setActiveRequestRoutineOn:*(a1 + 48)];
  v2 = *(a1 + 40);

  dispatch_group_leave(v2);
}

void __72__RTLocationAwarenessManager_metric__considerUpdateActiveRequestMetrics__block_invoke_3(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__RTLocationAwarenessManager_metric__considerUpdateActiveRequestMetrics__block_invoke_4;
  block[3] = &unk_2788C5020;
  v5 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v8 = a2;
  v7 = v5;
  dispatch_async(v4, block);
}

void __72__RTLocationAwarenessManager_metric__considerUpdateActiveRequestMetrics__block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) setActiveRequestWifiOn:*(a1 + 48) == 2];
  v2 = *(a1 + 40);

  dispatch_group_leave(v2);
}

void __72__RTLocationAwarenessManager_metric__considerUpdateActiveRequestMetrics__block_invoke_5(uint64_t a1)
{
  v39 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityLocationAwareness);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v22 = [*(a1 + 32) activeRequestInterrupted];
      v23 = [*(a1 + 32) activeRequestFulfilled];
      v24 = [*(a1 + 32) activeRequestCoarseLocationReceived];
      v25 = [*(a1 + 32) activeRequestLocationServiceOn];
      v26 = [*(a1 + 32) activeRequestRoutineOn];
      v27 = [*(a1 + 32) activeRequestWifiOn];
      v28[0] = 67110400;
      v28[1] = v22;
      v29 = 1024;
      v30 = v23;
      v31 = 1024;
      v32 = v24;
      v33 = 1024;
      v34 = v25;
      v35 = 1024;
      v36 = v26;
      v37 = 1024;
      v38 = v27;
      _os_log_debug_impl(&dword_2304B3000, v2, OS_LOG_TYPE_DEBUG, "active request status, interrupted, %d, fulfilled, %d, coarseLocationReceived, %d, locationServiceOn, %d, routineOn, %d, wifiOn, %d", v28, 0x26u);
    }
  }

  if ([*(a1 + 32) activeRequestInterrupted])
  {
    v3 = *(a1 + 32);
    v4 = [v3 metrics];
    v5 = [v4 heartbeatStats];
    v6 = [v5 activeRequestInterrupted];
    [v3 incrementBasicHistogram:v6 forTimestamp:*(a1 + 40)];
  }

  v7 = [*(a1 + 32) activeRequestFulfilled];
  v8 = *(a1 + 32);
  if (v7)
  {
    v9 = [*(a1 + 32) metrics];
    v10 = [v9 heartbeatStats];
    v11 = [v10 validLocationCount];
  }

  else
  {
    if ([*(a1 + 32) activeRequestCoarseLocationReceived])
    {
      v12 = *(a1 + 32);
      v13 = [v12 metrics];
      v14 = [v13 heartbeatStats];
      v15 = [v14 activeRequestTimeoutWithCoarseLocation];
      [v12 incrementBasicHistogram:v15 forTimestamp:*(a1 + 40)];
    }

    v16 = [*(a1 + 32) activeRequestLocationServiceOn];
    v8 = *(a1 + 32);
    if (v16)
    {
      v17 = [*(a1 + 32) activeRequestRoutineOn];
      v8 = *(a1 + 32);
      if (v17)
      {
        v18 = [*(a1 + 32) activeRequestWifiOn];
        v8 = *(a1 + 32);
        v9 = [v8 metrics];
        v19 = [v9 heartbeatStats];
        v10 = v19;
        if (v18)
        {
          [v19 activeRequestTimeoutWithOtherReasons];
        }

        else
        {
          [v19 activeRequestTimeoutWithLocationServiceEnabledRoutineEnabledWifiOff];
        }
        v11 = ;
      }

      else
      {
        v9 = [*(a1 + 32) metrics];
        v10 = [v9 heartbeatStats];
        v11 = [v10 activeRequestTimeoutWithLocationServiceEnabledRoutineDisabled];
      }
    }

    else
    {
      v9 = [*(a1 + 32) metrics];
      v10 = [v9 heartbeatStats];
      v11 = [v10 activeRequestTimeoutWithLocationServiceDisabled];
    }
  }

  v20 = v11;
  [v8 incrementBasicHistogram:v11 forTimestamp:*(a1 + 40)];

  [*(a1 + 32) resetActiveRequestSummaryVariables];
  [*(a1 + 32) setActiveOnset:0];
  v21 = [*(a1 + 32) heartbeatBuffer];
  [v21 dispatchPendingInvocations];
}

- (BOOL)activeRequestInterruptedCheck
{
  v3 = [(RTLocationAwarenessManager *)self scheduledRestTimerFiringTime];

  if (v3)
  {
    v4 = [MEMORY[0x277CBEAA8] date];
    v5 = [(RTLocationAwarenessManager *)self scheduledRestTimerFiringTime];
    [v4 timeIntervalSinceDate:v5];
    v7 = v6;
    v8 = [(RTLocationAwarenessManager *)self config];
    [v8 heartbeatIntervalResolution];
    v10 = v7 > v9 * 0.5;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v11 = _rt_log_facility_get_os_log(RTLogFacilityLocationAwareness);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *v13 = 0;
        _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_INFO, "Unable to check for active request interruption: nil scheduledRestTimerFiringTime.", v13, 2u);
      }
    }

    return 0;
  }

  return v10;
}

- (void)incrementBasicHistogram:(id)a3 forTimestamp:(id)a4
{
  v5 = a4;
  v6 = [a3 counts];
  v7 = [objc_opt_class() localHourFromTimestamp:v5];

  ++*(v6 + 4 * v7);
}

- (RTLocationAwarenessManager)initWithLocationManager:(id)a3 config:(id)a4 metricManager:(id)a5 motionActivityManager:(id)a6 authorizationManager:(id)a7 wifiManager:(id)a8 xpcActivityManager:(id)a9 timerManager:(id)a10 learnedLocationStore:(id)a11
{
  v68 = *MEMORY[0x277D85DE8];
  v17 = a3;
  v18 = a4;
  v56 = a5;
  v19 = a5;
  v62 = a6;
  v57 = a7;
  v61 = a7;
  v58 = a8;
  v60 = a8;
  v20 = a9;
  v21 = a10;
  v59 = a11;
  if (v17)
  {
    if (v18)
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
      v65 = "[RTLocationAwarenessManager initWithLocationManager:config:metricManager:motionActivityManager:authorizationManager:wifiManager:xpcActivityManager:timerManager:learnedLocationStore:]";
      v66 = 1024;
      v67 = 85;
      _os_log_error_impl(&dword_2304B3000, v22, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: locationManager (in %s:%d)", buf, 0x12u);
    }

    if (v18)
    {
LABEL_3:
      if (v20)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  v23 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v65 = "[RTLocationAwarenessManager initWithLocationManager:config:metricManager:motionActivityManager:authorizationManager:wifiManager:xpcActivityManager:timerManager:learnedLocationStore:]";
    v66 = 1024;
    v67 = 86;
    _os_log_error_impl(&dword_2304B3000, v23, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: config (in %s:%d)", buf, 0x12u);
  }

  if (v20)
  {
LABEL_4:
    if (v21)
    {
      goto LABEL_18;
    }

    goto LABEL_15;
  }

LABEL_12:
  v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v65 = "[RTLocationAwarenessManager initWithLocationManager:config:metricManager:motionActivityManager:authorizationManager:wifiManager:xpcActivityManager:timerManager:learnedLocationStore:]";
    v66 = 1024;
    v67 = 91;
    _os_log_error_impl(&dword_2304B3000, v24, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: xpcActivityManager (in %s:%d)", buf, 0x12u);
  }

  if (!v21)
  {
LABEL_15:
    v25 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v65 = "[RTLocationAwarenessManager initWithLocationManager:config:metricManager:motionActivityManager:authorizationManager:wifiManager:xpcActivityManager:timerManager:learnedLocationStore:]";
      v66 = 1024;
      v67 = 92;
      _os_log_error_impl(&dword_2304B3000, v25, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: timerManager (in %s:%d)", buf, 0x12u);
    }
  }

LABEL_18:
  v26 = 0;
  if (v17 && v18 && v20)
  {
    v63.receiver = self;
    v63.super_class = RTLocationAwarenessManager;
    v27 = [(RTNotifier *)&v63 init];
    if (v27)
    {
      v28 = [v18 copy];
      config = v27->_config;
      v27->_config = v28;

      v30 = [MEMORY[0x277CCAB00] mapTableWithKeyOptions:5 valueOptions:0x10000];
      requesterToHeartbeatBucket = v27->_requesterToHeartbeatBucket;
      v27->_requesterToHeartbeatBucket = v30;

      v32 = [MEMORY[0x277CCAB00] mapTableWithKeyOptions:0x10000 valueOptions:0];
      heartbeatBucketToRequesters = v27->_heartbeatBucketToRequesters;
      v27->_heartbeatBucketToRequesters = v32;

      objc_storeStrong(&v27->_timerManager, a10);
      objc_storeStrong(&v27->_locationManager, a3);
      activeOnset = v27->_activeOnset;
      v27->_activeOnset = 0;

      minHeartbeatBucket = v27->_minHeartbeatBucket;
      v27->_minHeartbeatBucket = 0;

      lastValidLocation = v27->_lastValidLocation;
      v27->_lastValidLocation = 0;

      objc_storeStrong(&v27->_motionActivityManager, a6);
      v37 = [MEMORY[0x277CBEAA8] distantFuture];
      stationaryStartTimestamp = v27->_stationaryStartTimestamp;
      v27->_stationaryStartTimestamp = v37;

      v39 = [RTInvocationDispatcher alloc];
      v40 = [(RTNotifier *)v27 queue];
      v41 = [(RTInvocationDispatcher *)v39 initWithQueue:v40];
      heartbeatBuffer = v27->_heartbeatBuffer;
      v27->_heartbeatBuffer = v41;

      v43 = objc_opt_new();
      metrics = v27->_metrics;
      v27->_metrics = v43;

      objc_storeStrong(&v27->_metricManager, v56);
      objc_storeStrong(&v27->_learnedLocationStore, a11);
      lastLocationAnyPositive = v27->_lastLocationAnyPositive;
      v27->_lastLocationAnyPositive = 0;

      lastLocationLessThan200m = v27->_lastLocationLessThan200m;
      v27->_lastLocationLessThan200m = 0;

      lastLocationLessThan55m = v27->_lastLocationLessThan55m;
      v27->_lastLocationLessThan55m = 0;

      lastLocationLessThan20m = v27->_lastLocationLessThan20m;
      v27->_lastLocationLessThan20m = 0;

      lastLocationLessThan10m = v27->_lastLocationLessThan10m;
      v27->_lastLocationLessThan10m = 0;

      objc_storeStrong(&v27->_authorizationManager, v57);
      objc_storeStrong(&v27->_wifiManager, v58);
      objc_storeStrong(&v27->_xpcActivityManager, a9);
      v50 = objc_opt_new();
      highAccuracyLocationRequesters = v27->_highAccuracyLocationRequesters;
      v27->_highAccuracyLocationRequesters = v50;

      v52 = objc_opt_new();
      fixedRateLocationRequesters = v27->_fixedRateLocationRequesters;
      v27->_fixedRateLocationRequesters = v52;

      v27->_requestedHighAccuracyLocation = 0;
      [(RTService *)v27 setup];
    }

    self = v27;
    v26 = self;
  }

  return v26;
}

- (void)_setup
{
  v19 = *MEMORY[0x277D85DE8];
  if (_os_feature_enabled_impl())
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v4 = _rt_log_facility_get_os_log(RTLogFacilityLocationAwareness);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = NSStringFromSelector(a2);
        *buf = 138412290;
        v18 = v5;
        _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%@, all day GNSS feature enabled", buf, 0xCu);
      }
    }

    v6 = [MEMORY[0x277CBEAA8] date];
    activeOnset = self->_activeOnset;
    self->_activeOnset = v6;

    [(RTLocationAwarenessManager *)self setRequestedHighAccuracyLocation:1];
    v8 = [(RTLocationAwarenessManager *)self locationManager];
    v9 = +[(RTNotification *)RTLocationManagerNotificationLocationsAccuracyBest];
    [v8 addObserver:self selector:sel_onNoOpLocationNotification_ name:v9];
  }

  else
  {
    v10 = [(RTLocationAwarenessManager *)self locationManager];
    v11 = +[(RTNotification *)RTLocationManagerNotificationLocationsLeeched];
    [v10 addObserver:self selector:sel_onLeechedLocationNotification_ name:v11];

    v12 = [(RTLocationAwarenessManager *)self motionActivityManager];
    v13 = +[(RTNotification *)RTMotionActivityManagerNotificationActivity];
    [v12 addObserver:self selector:sel_onMotionActivityManagerNotificationActivityNotification_ name:v13];

    v14 = [(RTLocationAwarenessManager *)self motionActivityManager];
    v15 = +[(RTNotification *)RTMotionActivityManagerNotificationMotionSettledStateChange];
    [v14 addObserver:self selector:sel_onMotionActivityManagerNotificationActivityNotification_ name:v15];

    v16 = [MEMORY[0x277CCAB98] defaultCenter];
    [v16 addObserver:self selector:sel_onDailyMetricsNotification_ name:@"RTMetricManagerDailyMetricNotification" object:0];
  }
}

- (void)_shutdownWithHandler:(id)a3
{
  v64 = *MEMORY[0x277D85DE8];
  v57 = a3;
  [(RTTimer *)self->_heartbeatTimer invalidate];
  heartbeatTimer = self->_heartbeatTimer;
  self->_heartbeatTimer = 0;

  [(RTLocationAwarenessManager *)self onRest];
  v5 = [(RTLocationAwarenessManager *)self locationManager];
  [v5 removeObserver:self];

  v6 = [(RTLocationAwarenessManager *)self motionActivityManager];
  [v6 removeObserver:self];

  v7 = [MEMORY[0x277CCAB98] defaultCenter];
  [v7 removeObserver:self];

  v8 = [(RTLocationAwarenessManager *)self heartbeatBuffer];
  [v8 shutdown];

  v9 = dispatch_semaphore_create(0);
  v10 = [(RTLocationAwarenessManager *)self xpcActivityManager];
  v60[0] = MEMORY[0x277D85DD0];
  v60[1] = 3221225472;
  v60[2] = __51__RTLocationAwarenessManager__shutdownWithHandler___block_invoke;
  v60[3] = &unk_2788C4730;
  v11 = v9;
  v61 = v11;
  [v10 unregisterActivityWithIdentifier:@"com.apple.routined.locationAwareness.heartbeat" handler:v60];

  v12 = v11;
  v13 = 0x277CBE000uLL;
  v14 = [MEMORY[0x277CBEAA8] now];
  v15 = dispatch_time(0, 3600000000000);
  v16 = dispatch_semaphore_wait(v12, v15);
  v17 = 0x277CCA000uLL;
  v18 = MEMORY[0x277D01448];
  if (v16)
  {
    v19 = [MEMORY[0x277CBEAA8] now];
    [v19 timeIntervalSinceDate:v14];
    v21 = v20;
    v22 = objc_opt_new();
    v23 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_130];
    v24 = [MEMORY[0x277CCACC8] callStackSymbols];
    v25 = [v24 filteredArrayUsingPredicate:v23];
    v26 = [v25 firstObject];

    [v22 submitToCoreAnalytics:v26 type:1 duration:v21];
    v27 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v27, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v28 = MEMORY[0x277CCA9B8];
    v29 = *v18;
    v62 = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v62 count:1];
    v31 = [v28 errorWithDomain:v29 code:15 userInfo:v30];

    if (v31)
    {
      v32 = v31;
    }

    v17 = 0x277CCA000;
    v13 = 0x277CBE000;
  }

  else
  {
    v31 = 0;
  }

  v33 = v31;
  v34 = dispatch_semaphore_create(0);

  v35 = [(RTLocationAwarenessManager *)self xpcActivityManager];
  v58[0] = MEMORY[0x277D85DD0];
  v58[1] = 3221225472;
  v58[2] = __51__RTLocationAwarenessManager__shutdownWithHandler___block_invoke_2;
  v58[3] = &unk_2788C4730;
  v36 = v34;
  v59 = v36;
  [v35 unregisterActivityWithIdentifier:@"com.apple.routined.locationAwareness.highAccuracyLocationRequest" handler:v58];

  v37 = v36;
  v38 = [*(v13 + 2728) now];
  v39 = dispatch_time(0, 3600000000000);
  v40 = v33;
  if (dispatch_semaphore_wait(v37, v39))
  {
    v56 = [*(v13 + 2728) now];
    [v56 timeIntervalSinceDate:v38];
    v42 = v41;
    v43 = objc_opt_new();
    v44 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_130];
    v45 = [*(v17 + 3272) callStackSymbols];
    v46 = [v45 filteredArrayUsingPredicate:v44];
    v47 = [v46 firstObject];

    [v43 submitToCoreAnalytics:v47 type:1 duration:v42];
    v48 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v48, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v48, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v49 = MEMORY[0x277CCA9B8];
    v50 = *MEMORY[0x277D01448];
    v62 = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v51 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v62 count:1];
    v52 = [v49 errorWithDomain:v50 code:15 userInfo:v51];

    v40 = v33;
    if (v52)
    {
      v53 = v52;

      v40 = v52;
    }
  }

  v54 = v40;
  xpcActivityPowerAssertion = self->_xpcActivityPowerAssertion;
  self->_xpcActivityPowerAssertion = 0;

  if (v57)
  {
    v57[2](v57, v54);
  }
}

- (void)_onDailyMetricsNotification:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityLocationAwareness);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = NSStringFromSelector(a2);
      v11 = 138412546;
      v12 = v7;
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@, received notification, %@", &v11, 0x16u);
    }
  }

  v8 = [MEMORY[0x277CBEAA8] now];
  v9 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:v8 sinceDate:-86400.0];
  v10 = [[RTLocationAwarenessMetricManager alloc] initWithLocationManager:self->_locationManager motionManager:self->_motionActivityManager learnedLocationStore:self->_learnedLocationStore startDate:v9 endDate:v8];
  [(RTLocationAwarenessMetricManager *)v10 submitMetrics];
}

- (void)onDailyMetricsNotification:(id)a3
{
  v4 = a3;
  v5 = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__RTLocationAwarenessManager_onDailyMetricsNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)setMinHeartbeatBucket:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a3;
  minHeartbeatBucket = self->_minHeartbeatBucket;
  if (v5 | minHeartbeatBucket && (!v5 || !minHeartbeatBucket || [(NSNumber *)minHeartbeatBucket compare:v5]))
  {
    objc_storeStrong(&self->_minHeartbeatBucket, a3);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v7 = _rt_log_facility_get_os_log(RTLogFacilityLocationAwareness);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = 138412290;
        v9 = v5;
        _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "Set minHeartbeatBucket to %@.", &v8, 0xCu);
      }
    }

    [(RTLocationAwarenessManager *)self adjustHeartbeatTimer];
  }
}

- (void)setLastValidLocation:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v21 = 136315394;
      v22 = "[RTLocationAwarenessManager setLastValidLocation:]";
      v23 = 1024;
      v24 = 257;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: latestValidLocation (in %s:%d)", &v21, 0x12u);
    }
  }

  lastValidLocation = self->_lastValidLocation;
  if (lastValidLocation)
  {
    v7 = [(CLLocation *)lastValidLocation timestamp];
    v8 = [v4 timestamp];
    v9 = [v7 compare:v8];

    if (v9 != -1)
    {
      v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v21 = 136315394;
        v22 = "[RTLocationAwarenessManager setLastValidLocation:]";
        v23 = 1024;
        v24 = 260;
        _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "If lastValidLocation is not nil, it should have an earlier timestamp than latestValidLocation's. (in %s:%d)", &v21, 0x12u);
      }
    }
  }

  v11 = [v4 copy];
  v12 = self->_lastValidLocation;
  self->_lastValidLocation = v11;

  if (self->_activeOnset)
  {
    if (![(RTLocationAwarenessManager *)self requestedHighAccuracyLocation])
    {
      v13 = [(CLLocation *)self->_lastValidLocation timestamp];
      [v13 timeIntervalSinceDate:self->_activeOnset];
      v15 = v14;
      v16 = [(RTLocationAwarenessManager *)self config];
      [v16 dispatchTimerLeeway];
      v18 = -v17;

      if (v15 > v18)
      {
        [(RTLocationAwarenessManager *)self setActiveRequestFulfilled:1];
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          v19 = _rt_log_facility_get_os_log(RTLogFacilityLocationAwareness);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            restTimer = self->_restTimer;
            v21 = 134217984;
            v22 = restTimer;
            _os_log_debug_impl(&dword_2304B3000, v19, OS_LOG_TYPE_DEBUG, "Pause rest timer %p.", &v21, 0xCu);
          }
        }

        [(RTLocationAwarenessManager *)self onRest];
      }
    }
  }
}

- (BOOL)addLocationHeartbeatRequester:(id)a3 interval:(double)a4 error:(id *)a5
{
  v28[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  if (!v8)
  {
    if (!a5)
    {
      goto LABEL_11;
    }

    v11 = MEMORY[0x277CCA9B8];
    v12 = *MEMORY[0x277D01448];
    v27 = *MEMORY[0x277CCA450];
    v28[0] = @"Requester should not be nil.";
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:&v27 count:1];
    *a5 = [v11 errorWithDomain:v12 code:0 userInfo:v13];

LABEL_10:
    LOBYTE(a5) = 0;
    goto LABEL_11;
  }

  if (![(RTLocationAwarenessManager *)self validInterval:a4])
  {
    if (!a5)
    {
      goto LABEL_11;
    }

    v14 = MEMORY[0x277CCACA8];
    v15 = [(RTLocationAwarenessManager *)self config];
    [v15 maxHeartbeatInterval];
    v17 = [v14 stringWithFormat:@"Interval should be between 0 and %f.", v16];

    v18 = MEMORY[0x277CCA9B8];
    v19 = *MEMORY[0x277D01448];
    v25 = *MEMORY[0x277CCA450];
    v26 = v17;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    *a5 = [v18 errorWithDomain:v19 code:1 userInfo:v20];

    goto LABEL_10;
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __75__RTLocationAwarenessManager_addLocationHeartbeatRequester_interval_error___block_invoke;
  aBlock[3] = &unk_2788C5020;
  aBlock[4] = self;
  v24 = a4;
  v23 = v8;
  v9 = _Block_copy(aBlock);
  v10 = [(RTNotifier *)self queue];
  dispatch_async(v10, v9);

  if (a5)
  {
    *a5 = 0;
  }

  LOBYTE(a5) = 1;
LABEL_11:

  return a5;
}

void __75__RTLocationAwarenessManager_addLocationHeartbeatRequester_interval_error___block_invoke(uint64_t a1)
{
  v12 = [*(a1 + 32) heartbeatBucketForInterval:*(a1 + 48)];
  v2 = [*(a1 + 32) requesterToHeartbeatBucket];
  v3 = [v2 objectForKey:*(a1 + 40)];

  if (!v3 || [v12 compare:v3])
  {
    v4 = [*(a1 + 32) heartbeatBucketToRequesters];
    v5 = [v4 objectForKey:v3];
    [v5 removeObject:*(a1 + 40)];

    v6 = [*(a1 + 32) requesterToHeartbeatBucket];
    [v6 setObject:v12 forKey:*(a1 + 40)];

    v7 = [*(a1 + 32) heartbeatBucketToRequesters];
    v8 = [v7 objectForKey:v12];

    if (!v8)
    {
      v8 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
      v9 = [*(a1 + 32) heartbeatBucketToRequesters];
      [v9 setObject:v8 forKey:v12];
    }

    [v8 addObject:*(a1 + 40)];
    [*(a1 + 32) updateMinHeartbeatBucket];
    v10 = *(a1 + 32);
    v11 = [v10 requesterToHeartbeatBucket];
    [v10 _updateXPCActivityForObserverCount:{objc_msgSend(v11, "count")}];
  }
}

- (void)removeLocationHeartbeatRequester:(id)a3
{
  v4 = a3;
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __63__RTLocationAwarenessManager_removeLocationHeartbeatRequester___block_invoke;
  v11 = &unk_2788C4A70;
  v12 = v4;
  v13 = self;
  v5 = v4;
  v6 = _Block_copy(&v8);
  v7 = [(RTNotifier *)self queue:v8];
  dispatch_async(v7, v6);
}

void __63__RTLocationAwarenessManager_removeLocationHeartbeatRequester___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [*(a1 + 40) requesterToHeartbeatBucket];
    v8 = [v2 objectForKey:*(a1 + 32)];

    if (v8)
    {
      v3 = [*(a1 + 40) requesterToHeartbeatBucket];
      [v3 removeObjectForKey:*(a1 + 32)];

      v4 = [*(a1 + 40) heartbeatBucketToRequesters];
      v5 = [v4 objectForKey:v8];
      [v5 removeObject:*(a1 + 32)];

      [*(a1 + 40) updateMinHeartbeatBucket];
      v6 = *(a1 + 40);
      v7 = [v6 requesterToHeartbeatBucket];
      [v6 _updateXPCActivityForObserverCount:{objc_msgSend(v7, "count")}];
    }
  }
}

- (void)_addHighAccuracyLocationRequester:(id)a3
{
  v4 = a3;
  v5 = [(RTLocationAwarenessManager *)self highAccuracyLocationRequesters];
  v6 = [v5 count];

  v7 = [(RTLocationAwarenessManager *)self highAccuracyLocationRequesters];
  [v7 addObject:v4];

  if (!v6)
  {

    [(RTLocationAwarenessManager *)self _updateXPCActivityForHighAccuracyLocationRequest];
  }
}

- (void)_removeHighAccuracyLocationRequester:(id)a3
{
  v11 = a3;
  v4 = [(RTLocationAwarenessManager *)self highAccuracyLocationRequesters];
  v5 = [v4 count];

  v6 = [(RTLocationAwarenessManager *)self highAccuracyLocationRequesters];
  v7 = [v6 containsObject:v11];

  if (v7)
  {
    v8 = [(RTLocationAwarenessManager *)self highAccuracyLocationRequesters];
    [v8 removeObject:v11];

    if (v5 == 1)
    {
      v9 = [(RTLocationAwarenessManager *)self highAccuracyLocationRequesters];
      v10 = [v9 count];

      if (!v10)
      {
        [(RTLocationAwarenessManager *)self _updateXPCActivityForHighAccuracyLocationRequest];
      }
    }
  }
}

- (BOOL)addHighAccuracyLocationRequester:(id)a3 error:(id *)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = a3;
  if (v7)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v8 = _rt_log_facility_get_os_log(RTLogFacilityLocationAwareness);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = NSStringFromSelector(a2);
        *buf = 138412546;
        v16 = v9;
        v17 = 2112;
        v18 = v7;
        _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "%@, Add high accuracy location requester, %@", buf, 0x16u);
      }
    }

    v10 = [(RTNotifier *)self queue];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __69__RTLocationAwarenessManager_addHighAccuracyLocationRequester_error___block_invoke;
    v13[3] = &unk_2788C4A70;
    v13[4] = self;
    v14 = v7;
    dispatch_async(v10, v13);

    if (a4)
    {
      *a4 = 0;
    }
  }

  else
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: requester", buf, 2u);
    }

    if (a4)
    {
      *a4 = _RTErrorInvalidParameterCreate(@"requester");
    }
  }

  return v7 != 0;
}

- (BOOL)removeHighAccuracyLocationRequester:(id)a3 error:(id *)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = a3;
  if (v7)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v8 = _rt_log_facility_get_os_log(RTLogFacilityLocationAwareness);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = NSStringFromSelector(a2);
        *buf = 138412546;
        v16 = v9;
        v17 = 2112;
        v18 = v7;
        _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "%@, Remove high accuracy location requester, %@", buf, 0x16u);
      }
    }

    v10 = [(RTNotifier *)self queue];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __72__RTLocationAwarenessManager_removeHighAccuracyLocationRequester_error___block_invoke;
    v13[3] = &unk_2788C4A70;
    v13[4] = self;
    v14 = v7;
    dispatch_async(v10, v13);
  }

  else
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: requester", buf, 2u);
    }

    if (a4)
    {
      *a4 = _RTErrorInvalidParameterCreate(@"requester");
    }
  }

  return v7 != 0;
}

- (BOOL)addFixedRateLocationRequester:(id)a3 error:(id *)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = a3;
  if (v7)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v8 = _rt_log_facility_get_os_log(RTLogFacilityLocationAwareness);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = NSStringFromSelector(a2);
        *buf = 138412546;
        v16 = v9;
        v17 = 2112;
        v18 = v7;
        _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "%@, Add fixed rate location requester, %@", buf, 0x16u);
      }
    }

    v10 = [(RTNotifier *)self queue];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __66__RTLocationAwarenessManager_addFixedRateLocationRequester_error___block_invoke;
    v13[3] = &unk_2788C4A70;
    v13[4] = self;
    v14 = v7;
    dispatch_async(v10, v13);

    if (a4)
    {
      *a4 = 0;
    }
  }

  else
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: requester", buf, 2u);
    }

    if (a4)
    {
      *a4 = _RTErrorInvalidParameterCreate(@"requester");
    }
  }

  return v7 != 0;
}

- (void)removeFixedRateLocationRequester:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v14 = "[RTLocationAwarenessManager removeFixedRateLocationRequester:]";
      v15 = 1024;
      LODWORD(v16) = 427;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: requester (in %s:%d)", buf, 0x12u);
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityLocationAwareness);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = NSStringFromSelector(a2);
      *buf = 138412546;
      v14 = v8;
      v15 = 2112;
      v16 = v5;
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%@, Remove fixed rate location requester, %@", buf, 0x16u);
    }
  }

  v9 = [(RTNotifier *)self queue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __63__RTLocationAwarenessManager_removeFixedRateLocationRequester___block_invoke;
  v11[3] = &unk_2788C4A70;
  v11[4] = self;
  v12 = v5;
  v10 = v5;
  dispatch_async(v9, v11);
}

- (void)_addFixedRateLocationRequester:(id)a3
{
  v4 = a3;
  v5 = [(RTLocationAwarenessManager *)self fixedRateLocationRequesters];
  v6 = [v5 count];

  v7 = [(RTLocationAwarenessManager *)self fixedRateLocationRequesters];
  [v7 addObject:v4];

  if (!v6)
  {

    [(RTLocationAwarenessManager *)self _requestForFixedRateLocation];
  }
}

- (void)_removeFixedRateLocationRequester:(id)a3
{
  v13 = a3;
  v4 = [(RTLocationAwarenessManager *)self fixedRateLocationRequesters];
  v5 = [v4 count];

  v6 = [(RTLocationAwarenessManager *)self fixedRateLocationRequesters];
  v7 = [v6 containsObject:v13];

  if (v7)
  {
    v8 = [(RTLocationAwarenessManager *)self fixedRateLocationRequesters];
    [v8 removeObject:v13];

    if (v5 == 1)
    {
      v9 = [(RTLocationAwarenessManager *)self fixedRateLocationRequesters];
      v10 = [v9 count];

      if (!v10)
      {
        v11 = [(RTLocationAwarenessManager *)self locationManager];
        v12 = +[(RTNotification *)RTLocationManagerNotificationLocationsAccuracyRhythmicNonWaking];
        [v11 removeObserver:self fromNotification:v12];
      }
    }
  }
}

- (void)_updateXPCActivityForHighAccuracyLocationRequest
{
  location[1] = *MEMORY[0x277D85DE8];
  v4 = [(RTLocationAwarenessManager *)self highAccuracyLocationRequesters];
  v5 = [v4 count];

  if (v5)
  {
    v6 = [(RTLocationAwarenessManager *)self highAccuracyLocationRequesters];
    v7 = [v6 count];

    if (v7 != 1)
    {
      return;
    }

    v8 = [[RTXPCActivityCriteria alloc] initWithInterval:1 gracePeriod:0 priority:0 requireNetworkConnectivity:0 requireInexpensiveNetworkConnectivity:0 networkTransferDirection:1 allowBattery:1800.0 powerNap:900.0];
    objc_initWeak(location, self);
    v9 = [(RTLocationAwarenessManager *)self xpcActivityManager];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __78__RTLocationAwarenessManager__updateXPCActivityForHighAccuracyLocationRequest__block_invoke_2;
    v28[3] = &unk_2788C6A18;
    v29[1] = a2;
    objc_copyWeak(v29, location);
    [v9 registerActivityWithIdentifier:@"com.apple.routined.locationAwareness.highAccuracyLocationRequest" criteria:v8 handler:v28];

    objc_destroyWeak(v29);
    objc_destroyWeak(location);
  }

  else
  {
    if ([(RTLocationAwarenessManager *)self requestedHighAccuracyLocation])
    {
      [(RTLocationAwarenessManager *)self onRest];
    }

    v10 = dispatch_semaphore_create(0);
    v11 = [(RTLocationAwarenessManager *)self xpcActivityManager];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __78__RTLocationAwarenessManager__updateXPCActivityForHighAccuracyLocationRequest__block_invoke;
    v30[3] = &unk_2788C4730;
    v12 = v10;
    v31 = v12;
    [v11 unregisterActivityWithIdentifier:@"com.apple.routined.locationAwareness.highAccuracyLocationRequest" handler:v30];

    v8 = v12;
    v13 = [MEMORY[0x277CBEAA8] now];
    v14 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(&v8->super, v14))
    {
      v15 = [MEMORY[0x277CBEAA8] now];
      [v15 timeIntervalSinceDate:v13];
      v17 = v16;
      v18 = objc_opt_new();
      v19 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_130];
      v20 = [MEMORY[0x277CCACC8] callStackSymbols];
      v21 = [v20 filteredArrayUsingPredicate:v19];
      v22 = [v21 firstObject];

      [v18 submitToCoreAnalytics:v22 type:1 duration:v17];
      v23 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
      {
        LOWORD(location[0]) = 0;
        _os_log_fault_impl(&dword_2304B3000, v23, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", location, 2u);
      }

      v24 = MEMORY[0x277CCA9B8];
      v32 = *MEMORY[0x277CCA450];
      location[0] = @"semaphore wait timeout";
      v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:location forKeys:&v32 count:1];
      v26 = [v24 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v25];

      if (v26)
      {
        v27 = v26;
      }
    }
  }
}

void __78__RTLocationAwarenessManager__updateXPCActivityForHighAccuracyLocationRequest__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v7 = _rt_log_facility_get_os_log(RTLogFacilityLocationAwareness);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = NSStringFromSelector(*(a1 + 40));
        v11 = 138412546;
        v12 = v8;
        v13 = 2112;
        v14 = v6;
        _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%@, error, %@", &v11, 0x16u);
      }
    }

    if (v5)
    {
      v5[2](v5, v6, 0);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v10 = WeakRetained;
    if (WeakRetained)
    {
      [WeakRetained requestForHighAccuracyLocation];
    }

    if (v5)
    {
      v5[2](v5, 0, 0);
    }
  }
}

- (void)_updateXPCActivityForObserverCount:(unint64_t)a3
{
  location[1] = *MEMORY[0x277D85DE8];
  if (a3 == 1)
  {
    v8 = [[RTXPCActivityCriteria alloc] initWithInterval:1 gracePeriod:0 priority:0 requireNetworkConnectivity:0 requireInexpensiveNetworkConnectivity:1 networkTransferDirection:0 allowBattery:3600.0 powerNap:1800.0];
    objc_initWeak(location, self);
    v25 = [(RTLocationAwarenessManager *)self xpcActivityManager];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __65__RTLocationAwarenessManager__updateXPCActivityForObserverCount___block_invoke_2;
    v26[3] = &unk_2788C6A18;
    v27[1] = a2;
    objc_copyWeak(v27, location);
    [v25 registerActivityWithIdentifier:@"com.apple.routined.locationAwareness.heartbeat" criteria:v8 handler:v26];

    objc_destroyWeak(v27);
    objc_destroyWeak(location);
  }

  else
  {
    if (a3)
    {
      return;
    }

    xpcActivityPowerAssertion = self->_xpcActivityPowerAssertion;
    self->_xpcActivityPowerAssertion = 0;

    v5 = dispatch_semaphore_create(0);
    v6 = [(RTLocationAwarenessManager *)self xpcActivityManager];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __65__RTLocationAwarenessManager__updateXPCActivityForObserverCount___block_invoke;
    v28[3] = &unk_2788C4730;
    v7 = v5;
    v29 = v7;
    [v6 unregisterActivityWithIdentifier:@"com.apple.routined.locationAwareness.heartbeat" handler:v28];

    v8 = v7;
    v9 = [MEMORY[0x277CBEAA8] now];
    v10 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(&v8->super, v10))
    {
      v11 = [MEMORY[0x277CBEAA8] now];
      [v11 timeIntervalSinceDate:v9];
      v13 = v12;
      v14 = objc_opt_new();
      v15 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_130];
      v16 = [MEMORY[0x277CCACC8] callStackSymbols];
      v17 = [v16 filteredArrayUsingPredicate:v15];
      v18 = [v17 firstObject];

      [v14 submitToCoreAnalytics:v18 type:1 duration:v13];
      v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        LOWORD(location[0]) = 0;
        _os_log_fault_impl(&dword_2304B3000, v19, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", location, 2u);
      }

      v20 = MEMORY[0x277CCA9B8];
      v30 = *MEMORY[0x277CCA450];
      location[0] = @"semaphore wait timeout";
      v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:location forKeys:&v30 count:1];
      v22 = [v20 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v21];

      if (v22)
      {
        v23 = v22;
      }
    }
  }
}

void __65__RTLocationAwarenessManager__updateXPCActivityForObserverCount___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v7 = _rt_log_facility_get_os_log(RTLogFacilityLocationAwareness);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = NSStringFromSelector(*(a1 + 40));
        *buf = 138412546;
        v14 = v8;
        v15 = 2112;
        v16 = v6;
        _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%@, error, %@", buf, 0x16u);
      }
    }

    if (v5)
    {
      v5[2](v5, v6, 0);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    if (WeakRetained)
    {
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __65__RTLocationAwarenessManager__updateXPCActivityForObserverCount___block_invoke_59;
      v10[3] = &unk_2788C4780;
      v12 = *(a1 + 40);
      v11 = v5;
      [WeakRetained hourlySingleShotWithHandler:v10];
    }

    else if (v5)
    {
      v5[2](v5, 0, 0);
    }
  }
}

void __65__RTLocationAwarenessManager__updateXPCActivityForObserverCount___block_invoke_59(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityLocationAwareness);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = NSStringFromSelector(*(a1 + 40));
      v7 = 138412546;
      v8 = v5;
      v9 = 2112;
      v10 = v3;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%@, failed hourly single shot, error, %@", &v7, 0x16u);
    }
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, v3, 0);
  }
}

- (void)hourlySingleShotWithHandler:(id)a3
{
  v5 = a3;
  v6 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__RTLocationAwarenessManager_hourlySingleShotWithHandler___block_invoke;
  block[3] = &unk_2788C6300;
  v9 = v5;
  v10 = a2;
  block[4] = self;
  v7 = v5;
  dispatch_async(v6, block);
}

void __58__RTLocationAwarenessManager_hourlySingleShotWithHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) wifiManager];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __58__RTLocationAwarenessManager_hourlySingleShotWithHandler___block_invoke_2;
  v5[3] = &unk_2788D0950;
  v5[4] = *(a1 + 32);
  v4 = *(a1 + 40);
  v3 = v4;
  v6 = v4;
  [v2 fetchPowerStatus:v5];
}

void __58__RTLocationAwarenessManager_hourlySingleShotWithHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __58__RTLocationAwarenessManager_hourlySingleShotWithHandler___block_invoke_3;
  v8[3] = &unk_2788D0928;
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v10 = a2;
  v11 = v5;
  v7 = v6;
  v8[4] = *(a1 + 32);
  v9 = v7;
  dispatch_async(v4, v8);
}

void __58__RTLocationAwarenessManager_hourlySingleShotWithHandler___block_invoke_3(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  if (*(a1 + 48) == 2)
  {
    v2 = [objc_opt_class() powerAssertion];
    [*(a1 + 32) setXpcActivityPowerAssertion:v2];

    v3 = [*(a1 + 32) locationManager];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __58__RTLocationAwarenessManager_hourlySingleShotWithHandler___block_invoke_64;
    v7[3] = &unk_2788C8318;
    v4 = *(a1 + 40);
    v7[4] = *(a1 + 32);
    v8 = v4;
    [v3 fetchCurrentLocationWithHandler:v7];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v5 = _rt_log_facility_get_os_log(RTLogFacilityLocationAwareness);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        v6 = NSStringFromSelector(*(a1 + 56));
        *buf = 138412290;
        v10 = v6;
        _os_log_debug_impl(&dword_2304B3000, v5, OS_LOG_TYPE_DEBUG, "%@, wifi requirement not satisfied, defer hourly single shot", buf, 0xCu);
      }
    }

    (*(*(a1 + 40) + 16))();
  }
}

void __58__RTLocationAwarenessManager_hourlySingleShotWithHandler___block_invoke_64(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__RTLocationAwarenessManager_hourlySingleShotWithHandler___block_invoke_2_65;
  block[3] = &unk_2788C67D8;
  v6 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v9 = v4;
  v10 = v6;
  v7 = v4;
  dispatch_async(v5, block);
}

uint64_t __58__RTLocationAwarenessManager_hourlySingleShotWithHandler___block_invoke_2_65(uint64_t a1)
{
  [*(a1 + 32) setXpcActivityPowerAssertion:0];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

- (void)requestForHighAccuracyLocation
{
  v3 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__RTLocationAwarenessManager_requestForHighAccuracyLocation__block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)_requestForHighAccuracyLocation
{
  v37 = *MEMORY[0x277D85DE8];
  if (self->_restTimer && ![(RTLocationAwarenessManager *)self requestedHighAccuracyLocation])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v4 = _rt_log_facility_get_os_log(RTLogFacilityLocationAwareness);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        v28 = NSStringFromSelector(a2);
        restTimer = self->_restTimer;
        *buf = 138412546;
        v32 = v28;
        v33 = 2048;
        v34 = restTimer;
        _os_log_debug_impl(&dword_2304B3000, v4, OS_LOG_TYPE_DEBUG, "%@, Stop rest timer %p to start high accuracy location request.", buf, 0x16u);
      }
    }

    [(RTLocationAwarenessManager *)self onRest];
  }

  v5 = [MEMORY[0x277CBEAA8] date];
  activeOnset = self->_activeOnset;
  self->_activeOnset = v5;

  [(RTLocationAwarenessManager *)self setRequestedHighAccuracyLocation:1];
  v7 = [(RTLocationAwarenessManager *)self locationManager];
  v8 = +[(RTNotification *)RTLocationManagerNotificationLocationsAccuracyBest];
  [v7 addObserver:self selector:sel_onNoOpLocationNotification_ name:v8];

  timerManager = self->_timerManager;
  v10 = MEMORY[0x277CCACA8];
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  v13 = [v10 stringWithFormat:@"%@.restTimer", v12];
  v14 = [(RTNotifier *)self queue];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __61__RTLocationAwarenessManager__requestForHighAccuracyLocation__block_invoke;
  v30[3] = &unk_2788C4EA0;
  v30[4] = self;
  v15 = [(RTTimerManager *)timerManager timerWithIdentifier:v13 queue:v14 handler:v30];
  v16 = self->_restTimer;
  self->_restTimer = v15;

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilityLocationAwareness);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = NSStringFromSelector(a2);
      v19 = [(RTLocationAwarenessManager *)self restTimer];
      v20 = [(RTLocationAwarenessManager *)self config];
      [v20 highAccuracyLocationRequestDuration];
      *buf = 138412802;
      v32 = v18;
      v33 = 2048;
      v34 = v19;
      v35 = 2048;
      v36 = v21;
      _os_log_impl(&dword_2304B3000, v17, OS_LOG_TYPE_INFO, "%@, Start rest timer, %p, firing delay, %f secs.", buf, 0x20u);
    }
  }

  v22 = self->_restTimer;
  v23 = [(RTLocationAwarenessManager *)self config];
  [v23 highAccuracyLocationRequestDuration];
  v25 = v24;
  v26 = [(RTLocationAwarenessManager *)self config];
  [v26 dispatchTimerLeeway];
  [(RTTimer *)v22 fireAfterDelay:v25 interval:INFINITY leeway:v27];

  [(RTTimer *)self->_restTimer resume];
}

- (void)requestForFixedRateLocation
{
  v3 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__RTLocationAwarenessManager_requestForFixedRateLocation__block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)_requestForFixedRateLocation
{
  v8 = *MEMORY[0x277D85DE8];
  if ([(RTLocationAwarenessManager *)self requestedFixedRateLocation])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v3 = _rt_log_facility_get_os_log(RTLogFacilityLocationAwareness);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v7 = "[RTLocationAwarenessManager _requestForFixedRateLocation]";
        _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "%s, Rhythmic request ongoing, do nothing", buf, 0xCu);
      }
    }
  }

  else
  {
    v5 = [(RTLocationAwarenessManager *)self locationManager];
    v4 = +[(RTNotification *)RTLocationManagerNotificationLocationsAccuracyRhythmicNonWaking];
    [v5 addObserver:self selector:sel_onNoOpLocationNotification_ name:v4];
  }
}

- (void)onLeechedLocationNotification:(id)a3
{
  v4 = a3;
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __60__RTLocationAwarenessManager_onLeechedLocationNotification___block_invoke;
  v11 = &unk_2788C4A70;
  v12 = v4;
  v13 = self;
  v5 = v4;
  v6 = _Block_copy(&v8);
  v7 = [(RTNotifier *)self queue:v8];
  dispatch_async(v7, v6);
}

void __60__RTLocationAwarenessManager_onLeechedLocationNotification___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [*(a1 + 32) leechedLocations];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v3 = [v2 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = 0;
      v6 = *v22;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v22 != v6)
          {
            objc_enumerationMutation(v2);
          }

          v8 = *(*(&v21 + 1) + 8 * i);
          if ([*(a1 + 40) validLocation:v8] && (!v5 || (objc_msgSend(v5, "timestamp"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "timestamp"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v9, "compare:", v10), v10, v9, v11 == -1)))
          {
            v13 = v8;

            v5 = v13;
          }

          else
          {
            v12 = [*(a1 + 40) activeOnset];
            if (v12 && ([*(a1 + 40) activeRequestCoarseLocationReceived] & 1) == 0)
            {
              v14 = [*(a1 + 40) coarseLocation:v8];

              if (v14)
              {
                [*(a1 + 40) setActiveRequestCoarseLocationReceived:1];
              }
            }

            else
            {
            }
          }
        }

        v4 = [v2 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v4);
      [*(a1 + 40) updateLocationAwarenessHistogramsWithLocations:v2];
      if (v5)
      {
        v15 = [*(a1 + 40) lastValidLocation];
        if (!v15 || (v16 = v15, [v5 timestamp], v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(*(a1 + 40), "lastValidLocation"), v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "timestamp"), v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v17, "compare:", v19), v19, v18, v17, v16, v20 == 1))
        {
          [*(a1 + 40) setLastValidLocation:v5];
        }
      }
    }

    else
    {
      [*(a1 + 40) updateLocationAwarenessHistogramsWithLocations:v2];
      v5 = 0;
    }
  }

  else
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v2, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: [notification isKindOfClass:[RTLocationManagerNotificationLocationsLeeched class]]", buf, 2u);
    }
  }
}

- (void)onMotionActivityManagerNotificationActivityNotification:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 name];
  v7 = +[(RTNotification *)RTMotionActivityManagerNotificationActivity];
  v8 = [v6 isEqualToString:v7];

  if (v8)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __86__RTLocationAwarenessManager_onMotionActivityManagerNotificationActivityNotification___block_invoke;
    aBlock[3] = &unk_2788C4A70;
    v23 = v5;
    v24 = self;
    v9 = _Block_copy(aBlock);
    v10 = [(RTNotifier *)self queue];
    dispatch_async(v10, v9);

    v11 = v23;
  }

  else
  {
    v12 = [v5 name];
    v13 = +[(RTNotification *)RTMotionActivityManagerNotificationMotionSettledStateChange];
    v14 = [v12 isEqualToString:v13];

    if (v14)
    {
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __86__RTLocationAwarenessManager_onMotionActivityManagerNotificationActivityNotification___block_invoke_2;
      v18[3] = &unk_2788C5020;
      v19 = v5;
      v20 = self;
      v21 = a2;
      v15 = _Block_copy(v18);
      v16 = [(RTNotifier *)self queue];
      dispatch_async(v16, v15);

      v11 = v19;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        goto LABEL_6;
      }

      v11 = _rt_log_facility_get_os_log(RTLogFacilityLocationAwareness);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v17 = [v5 name];
        *buf = 138412290;
        v26 = v17;
        _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_INFO, "unsupported notification, %@", buf, 0xCu);
      }
    }
  }

LABEL_6:
}

void __86__RTLocationAwarenessManager_onMotionActivityManagerNotificationActivityNotification___block_invoke(uint64_t a1)
{
  v11 = [*(a1 + 32) activity];
  if (v11 && [v11 type] == 1 && ((v2 = objc_msgSend(v11, "confidence") == 2, v3 = v11, v2) || (v2 = objc_msgSend(v11, "confidence") == 3, v3 = v11, v2)))
  {
    v4 = [v3 startDate];
    v6 = *(a1 + 40);
    v5 = (a1 + 40);
    v7 = [v6 stationaryStartTimestamp];
    [v4 timeIntervalSinceDate:v7];
    v9 = v8;

    if (v9 >= 0.0)
    {
      goto LABEL_10;
    }

    v10 = [v11 startDate];
  }

  else
  {
    v10 = [MEMORY[0x277CBEAA8] distantFuture];
    v5 = (a1 + 40);
  }

  [*v5 setStationaryStartTimestamp:v10];

LABEL_10:
}

void __86__RTLocationAwarenessManager_onMotionActivityManagerNotificationActivityNotification___block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if ([v2 settledState] == 1 && objc_msgSend(*(a1 + 40), "requestedHighAccuracyLocation"))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v3 = _rt_log_facility_get_os_log(RTLogFacilityLocationAwareness);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        v4 = NSStringFromSelector(*(a1 + 48));
        v5 = 138412290;
        v6 = v4;
        _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "%@, received unsettled notification, stop requesting high accuracy location", &v5, 0xCu);
      }
    }

    [*(a1 + 40) onRest];
  }
}

+ (id)powerAssertion
{
  v2 = [RTPowerAssertion alloc];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(RTPowerAssertion *)v2 initWithIdentifier:v4 timeout:15.0];

  return v5;
}

- (void)updateMinHeartbeatBucket
{
  v41 = *MEMORY[0x277D85DE8];
  v26 = objc_opt_new();
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = [(RTLocationAwarenessManager *)self heartbeatBucketToRequesters];
  v3 = [obj countByEnumeratingWithState:&v31 objects:v40 count:16];
  if (!v3)
  {
    v5 = 0;
    goto LABEL_17;
  }

  v4 = v3;
  v5 = 0;
  v6 = *v32;
  do
  {
    for (i = 0; i != v4; ++i)
    {
      if (*v32 != v6)
      {
        objc_enumerationMutation(obj);
      }

      v8 = *(*(&v31 + 1) + 8 * i);
      v9 = [(RTLocationAwarenessManager *)self heartbeatBucketToRequesters];
      v10 = [v9 objectForKey:v8];
      v11 = v10;
      if (!v10)
      {

LABEL_12:
        [v26 addObject:v8];
        goto LABEL_13;
      }

      v12 = [v10 allObjects];
      v13 = [v12 count];

      if (!v13)
      {
        goto LABEL_12;
      }

      if (!v5 || [v5 compare:v8] == 1)
      {
        v14 = v8;

        v5 = v14;
      }

LABEL_13:
    }

    v4 = [obj countByEnumeratingWithState:&v31 objects:v40 count:16];
  }

  while (v4);
LABEL_17:

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v15 = v26;
  v16 = [v15 countByEnumeratingWithState:&v27 objects:v39 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v28;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v28 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v27 + 1) + 8 * j);
        v21 = [(RTLocationAwarenessManager *)self heartbeatBucketToRequesters];
        [v21 removeObjectForKey:v20];
      }

      v17 = [v15 countByEnumeratingWithState:&v27 objects:v39 count:16];
    }

    while (v17);
  }

  if (!v5)
  {
    v22 = [(RTLocationAwarenessManager *)self heartbeatBucketToRequesters];
    v23 = [v22 count];

    if (v23)
    {
      v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v36 = "[RTLocationAwarenessManager updateMinHeartbeatBucket]";
        v37 = 1024;
        v38 = 866;
        _os_log_error_impl(&dword_2304B3000, v24, OS_LOG_TYPE_ERROR, "If minBucket is nil, heartbeatBucketToRequesters should be empty. (in %s:%d)", buf, 0x12u);
      }
    }
  }

  [(RTLocationAwarenessManager *)self setMinHeartbeatBucket:v5];
}

void __50__RTLocationAwarenessManager_adjustHeartbeatTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained updateHeartbeatTimerDelayForTimestamp:*(a1 + 32) withDelay:0.0];
    [v3 considerRequestingForLocation];
    WeakRetained = v3;
  }
}

- (void)onRest
{
  v18 = *MEMORY[0x277D85DE8];
  restTimer = self->_restTimer;
  if (restTimer)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v5 = _rt_log_facility_get_os_log(RTLogFacilityLocationAwareness);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = NSStringFromSelector(a2);
        v7 = [(RTLocationAwarenessManager *)self restTimer];
        v14 = 138412546;
        v15 = v6;
        v16 = 2048;
        v17 = v7;
        _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%@, Invalidate rest timer, %p.", &v14, 0x16u);
      }

      restTimer = self->_restTimer;
    }

    [(RTTimer *)restTimer invalidate];
    v8 = self->_restTimer;
    self->_restTimer = 0;
  }

  v9 = [(RTLocationAwarenessManager *)self activeOnset];

  if (v9)
  {
    v10 = [(RTLocationAwarenessManager *)self requestedHighAccuracyLocation];
    v11 = [(RTLocationAwarenessManager *)self locationManager];
    if (v10)
    {
      v12 = +[(RTNotification *)RTLocationManagerNotificationLocationsAccuracyBest];
      [v11 removeObserver:self fromNotification:v12];

      [(RTLocationAwarenessManager *)self setRequestedHighAccuracyLocation:0];
    }

    else
    {
      v13 = +[(RTNotification *)RTLocationManagerNotificationLocationsAccuracyHundredMeters];
      [v11 removeObserver:self fromNotification:v13];
    }

    [(RTLocationAwarenessManager *)self considerUpdateActiveRequestMetrics];
  }
}

- (double)nextFiringDelayWithHeartbeatInterval:(double)result starvingDuration:(double)a4
{
  v4 = result - a4;
  if (v4 < result)
  {
    result = v4;
  }

  if (result < 0.0)
  {
    return 0.0;
  }

  return result;
}

- (BOOL)validInterval:(double)a3
{
  if (a3 <= 0.0)
  {
    return 0;
  }

  v4 = [(RTLocationAwarenessManager *)self config];
  [v4 maxHeartbeatInterval];
  v6 = v5 >= a3;

  return v6;
}

- (BOOL)validLocation:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && ([v4 horizontalAccuracy], v6 >= 0.0))
  {
    [v5 horizontalAccuracy];
    v9 = v8;
    v10 = [(RTLocationAwarenessManager *)self config];
    [v10 requiredHorizontalAccuracy];
    v7 = v9 <= v11;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)coarseLocation:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    [v4 horizontalAccuracy];
    v7 = v6;
    v8 = [(RTLocationAwarenessManager *)self config];
    [v8 requiredHorizontalAccuracy];
    if (v7 <= v9)
    {
      v14 = 0;
    }

    else
    {
      [v5 horizontalAccuracy];
      v11 = v10;
      v12 = [(RTLocationAwarenessManager *)self config];
      [v12 maxHorizontalAccuracyForCoarseLocation];
      v14 = v11 <= v13;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)heartbeatBucketForInterval:(double)a3
{
  v4 = [(RTLocationAwarenessManager *)self config];
  [v4 heartbeatIntervalResolution];
  v6 = vcvtpd_u64_f64(a3 / v5);

  v7 = MEMORY[0x277CCABB0];

  return [v7 numberWithUnsignedInteger:v6];
}

- (double)intervalForHeartbeatBucket:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315394;
      v12 = "[RTLocationAwarenessManager intervalForHeartbeatBucket:]";
      v13 = 1024;
      v14 = 1057;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: bucket (in %s:%d)", &v11, 0x12u);
    }
  }

  v6 = [(RTLocationAwarenessManager *)self config];
  [v6 heartbeatIntervalResolution];
  v8 = v7;
  v9 = [v4 integerValue];

  return v8 * v9;
}

@end