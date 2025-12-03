@interface RTLocationAwarenessManager
+ (id)powerAssertion;
+ (int64_t)localHourFromTimestamp:(id)timestamp;
- (BOOL)activeRequestInterruptedCheck;
- (BOOL)addFixedRateLocationRequester:(id)requester error:(id *)error;
- (BOOL)addHighAccuracyLocationRequester:(id)requester error:(id *)error;
- (BOOL)addLocationHeartbeatRequester:(id)requester interval:(double)interval error:(id *)error;
- (BOOL)coarseLocation:(id)location;
- (BOOL)removeHighAccuracyLocationRequester:(id)requester error:(id *)error;
- (BOOL)validInterval:(double)interval;
- (BOOL)validLocation:(id)location;
- (RTLocationAwarenessManager)initWithLocationManager:(id)manager config:(id)config metricManager:(id)metricManager motionActivityManager:(id)activityManager authorizationManager:(id)authorizationManager wifiManager:(id)wifiManager xpcActivityManager:(id)xpcActivityManager timerManager:(id)self0 learnedLocationStore:(id)self1;
- (double)intervalForHeartbeatBucket:(id)bucket;
- (double)metricAge;
- (double)nextFiringDelayWithHeartbeatInterval:(double)result starvingDuration:(double)duration;
- (double)starvingDurationTillNow;
- (id)heartbeatBucketForInterval:(double)interval;
- (id)updateWithLocation:(id)location oneIntervalHistogram:(id)histogram lastLocation:(id)lastLocation;
- (void)_addFixedRateLocationRequester:(id)requester;
- (void)_addHighAccuracyLocationRequester:(id)requester;
- (void)_onDailyMetricsNotification:(id)notification;
- (void)_removeFixedRateLocationRequester:(id)requester;
- (void)_removeHighAccuracyLocationRequester:(id)requester;
- (void)_requestForFixedRateLocation;
- (void)_requestForHighAccuracyLocation;
- (void)_setup;
- (void)_shutdownWithHandler:(id)handler;
- (void)_updateXPCActivityForHighAccuracyLocationRequest;
- (void)_updateXPCActivityForObserverCount:(unint64_t)count;
- (void)adjustHeartbeatTimer;
- (void)considerRequestingForLocation;
- (void)considerUpdateActiveRequestMetrics;
- (void)considerUpdatingHeartbeatDelayMetrics;
- (void)heartbeatTasks;
- (void)hourlySingleShotWithHandler:(id)handler;
- (void)incrementBasicHistogram:(id)histogram forTimestamp:(id)timestamp;
- (void)onDailyMetricsNotification:(id)notification;
- (void)onHeartbeat;
- (void)onLeechedLocationNotification:(id)notification;
- (void)onMotionActivityManagerNotificationActivityNotification:(id)notification;
- (void)onRest;
- (void)removeFixedRateLocationRequester:(id)requester;
- (void)removeLocationHeartbeatRequester:(id)requester;
- (void)requestForFixedRateLocation;
- (void)requestForHighAccuracyLocation;
- (void)resetActiveRequestSummaryVariables;
- (void)setLastValidLocation:(id)location;
- (void)setMinHeartbeatBucket:(id)bucket;
- (void)updateHeartbeatTimerDelayForTimestamp:(id)timestamp withDelay:(double)delay;
- (void)updateLocationAwarenessHistogramsWithLocations:(id)locations;
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
  activeOnset = [(RTLocationAwarenessManager *)self activeOnset];

  if (activeOnset)
  {
    heartbeatBuffer = [(RTLocationAwarenessManager *)self heartbeatBuffer];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __41__RTLocationAwarenessManager_onHeartbeat__block_invoke;
    v7[3] = &unk_2788C4EA0;
    v7[4] = self;
    date = [MEMORY[0x277CBEAA8] date];
    stringFromDate = [date stringFromDate];
    [heartbeatBuffer enqueueBlock:v7 description:{@"Heartbeat tasks buffered at %@", stringFromDate}];
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
  scheduledHeartbeatFiringTime = [(RTLocationAwarenessManager *)self scheduledHeartbeatFiringTime];

  if (scheduledHeartbeatFiringTime)
  {
    date = [MEMORY[0x277CBEAA8] date];
    scheduledHeartbeatFiringTime2 = [(RTLocationAwarenessManager *)self scheduledHeartbeatFiringTime];
    [date timeIntervalSinceDate:scheduledHeartbeatFiringTime2];
    v6 = v5;

    [(RTLocationAwarenessManager *)self updateHeartbeatTimerDelayForTimestamp:date withDelay:v6];
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
  minHeartbeatBucket = [(RTLocationAwarenessManager *)self minHeartbeatBucket];
  if (minHeartbeatBucket)
  {
    restTimer = self->_restTimer;

    if (!restTimer)
    {
      date = [MEMORY[0x277CBEAA8] date];
      metrics = [(RTLocationAwarenessManager *)self metrics];
      heartbeatStats = [metrics heartbeatStats];
      timerFiringCount = [heartbeatStats timerFiringCount];
      [(RTLocationAwarenessManager *)self incrementBasicHistogram:timerFiringCount forTimestamp:date];

      lastValidLocation = [(RTLocationAwarenessManager *)self lastValidLocation];
      if (lastValidLocation && (v10 = lastValidLocation, -[RTLocationAwarenessManager stationaryStartTimestamp](self, "stationaryStartTimestamp"), v11 = objc_claimAutoreleasedReturnValue(), -[RTLocationAwarenessManager lastValidLocation](self, "lastValidLocation"), v12 = objc_claimAutoreleasedReturnValue(), [v12 timestamp], v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "timeIntervalSinceDate:", v13), v15 = v14, v13, v12, v11, v10, v15 <= 0.0))
      {
        metrics2 = [(RTLocationAwarenessManager *)self metrics];
        heartbeatStats2 = [metrics2 heartbeatStats];
        skippedRequestDueToStationary = [heartbeatStats2 skippedRequestDueToStationary];
        [(RTLocationAwarenessManager *)self incrementBasicHistogram:skippedRequestDueToStationary forTimestamp:date];

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v52 = _rt_log_facility_get_os_log(RTLogFacilityLocationAwareness);
          if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
          {
            lastValidLocation2 = [(RTLocationAwarenessManager *)self lastValidLocation];
            timestamp = [lastValidLocation2 timestamp];
            stringFromDate = [timestamp stringFromDate];
            stationaryStartTimestamp = [(RTLocationAwarenessManager *)self stationaryStartTimestamp];
            stringFromDate2 = [stationaryStartTimestamp stringFromDate];
            *buf = 138412546;
            v64 = stringFromDate;
            v65 = 2112;
            v66 = stringFromDate2;
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
        config = [(RTLocationAwarenessManager *)self config];
        [config dispatchTimerLeeway];
        v20 = v17 + v19;
        minHeartbeatBucket2 = [(RTLocationAwarenessManager *)self minHeartbeatBucket];
        [(RTLocationAwarenessManager *)self intervalForHeartbeatBucket:minHeartbeatBucket2];
        v23 = v22;

        metrics3 = [(RTLocationAwarenessManager *)self metrics];
        heartbeatStats3 = [metrics3 heartbeatStats];
        v26 = heartbeatStats3;
        if (v20 > v23)
        {
          activeRequestCount = [heartbeatStats3 activeRequestCount];
          [(RTLocationAwarenessManager *)self incrementBasicHistogram:activeRequestCount forTimestamp:date];

          [(RTLocationAwarenessManager *)self resetActiveRequestSummaryVariables];
          objc_storeStrong(&self->_activeOnset, date);
          locationManager = [(RTLocationAwarenessManager *)self locationManager];
          v29 = +[(RTNotification *)RTLocationManagerNotificationLocationsAccuracyHundredMeters];
          [locationManager addObserver:self selector:sel_onNoOpLocationNotification_ name:v29];

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v30 = _rt_log_facility_get_os_log(RTLogFacilityLocationAwareness);
            if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
            {
              restTimer = [(RTLocationAwarenessManager *)self restTimer];
              config2 = [(RTLocationAwarenessManager *)self config];
              [config2 activeDuration];
              *buf = 134218240;
              v64 = restTimer;
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
          queue = [(RTNotifier *)self queue];
          v62[0] = MEMORY[0x277D85DD0];
          v62[1] = 3221225472;
          v62[2] = __59__RTLocationAwarenessManager_considerRequestingForLocation__block_invoke;
          v62[3] = &unk_2788C4EA0;
          v62[4] = self;
          v40 = [(RTTimerManager *)timerManager timerWithIdentifier:v38 queue:queue handler:v62];
          v41 = self->_restTimer;
          self->_restTimer = v40;

          v42 = self->_restTimer;
          config3 = [(RTLocationAwarenessManager *)self config];
          [config3 activeDuration];
          v45 = v44;
          config4 = [(RTLocationAwarenessManager *)self config];
          [config4 dispatchTimerLeeway];
          [(RTTimer *)v42 fireAfterDelay:v45 interval:INFINITY leeway:v47];

          [(RTTimer *)self->_restTimer resume];
          v48 = MEMORY[0x277CBEAA8];
          config5 = [(RTLocationAwarenessManager *)self config];
          [config5 activeDuration];
          v50 = [v48 dateWithTimeIntervalSinceNow:?];
          [(RTLocationAwarenessManager *)self setScheduledRestTimerFiringTime:v50];

          goto LABEL_19;
        }

        skippedRequestDueToRecentFix = [heartbeatStats3 skippedRequestDueToRecentFix];
        [(RTLocationAwarenessManager *)self incrementBasicHistogram:skippedRequestDueToRecentFix forTimestamp:date];

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v52 = _rt_log_facility_get_os_log(RTLogFacilityLocationAwareness);
          if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
          {
            lastValidLocation2 = [(RTLocationAwarenessManager *)self lastValidLocation];
            timestamp = [lastValidLocation2 timestamp];
            stringFromDate = [timestamp stringFromDate];
            stationaryStartTimestamp = [(RTLocationAwarenessManager *)self stationaryStartTimestamp];
            stringFromDate2 = [stationaryStartTimestamp stringFromDate];
            *buf = 138412546;
            v64 = stringFromDate;
            v65 = 2112;
            v66 = stringFromDate2;
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
  lastValidLocation = [(RTLocationAwarenessManager *)self lastValidLocation];
  if (lastValidLocation)
  {
    date = [MEMORY[0x277CBEAA8] date];
    lastValidLocation2 = [(RTLocationAwarenessManager *)self lastValidLocation];
    timestamp = [lastValidLocation2 timestamp];
    [date timeIntervalSinceDate:timestamp];
    v8 = v7;
  }

  else
  {
    date = [(RTLocationAwarenessManager *)self config];
    [date maxHeartbeatInterval];
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
  minHeartbeatBucket = [(RTLocationAwarenessManager *)self minHeartbeatBucket];

  if (minHeartbeatBucket)
  {
    minHeartbeatBucket2 = [(RTLocationAwarenessManager *)self minHeartbeatBucket];
    [(RTLocationAwarenessManager *)self intervalForHeartbeatBucket:minHeartbeatBucket2];
    v6 = v5;

    [(RTLocationAwarenessManager *)self starvingDurationTillNow];
    [(RTLocationAwarenessManager *)self nextFiringDelayWithHeartbeatInterval:v6 starvingDuration:v7];
    v9 = v8;
    objc_initWeak(&location, self);
    date = [MEMORY[0x277CBEAA8] date];
    config = [(RTLocationAwarenessManager *)self config];
    [config dispatchTimerLeeway];
    v13 = v9 > v12;

    if (!v13)
    {
      activeOnset = [(RTLocationAwarenessManager *)self activeOnset];
      v15 = activeOnset == 0;

      if (v15)
      {
        queue = [(RTNotifier *)self queue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __50__RTLocationAwarenessManager_adjustHeartbeatTimer__block_invoke;
        block[3] = &unk_2788C57F8;
        objc_copyWeak(&v36, &location);
        v35 = date;
        dispatch_async(queue, block);

        objc_destroyWeak(&v36);
      }

      v9 = v6;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v17 = _rt_log_facility_get_os_log(RTLogFacilityLocationAwareness);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        heartbeatTimer = [(RTLocationAwarenessManager *)self heartbeatTimer];
        *buf = 134218240;
        v39 = heartbeatTimer;
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
    queue2 = [(RTNotifier *)self queue];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __50__RTLocationAwarenessManager_adjustHeartbeatTimer__block_invoke_73;
    v32[3] = &unk_2788C5908;
    objc_copyWeak(&v33, &location);
    v25 = [(RTTimerManager *)timerManager timerWithIdentifier:v23 queue:queue2 handler:v32];
    heartbeatTimer = self->_heartbeatTimer;
    self->_heartbeatTimer = v25;

    v27 = self->_heartbeatTimer;
    config2 = [(RTLocationAwarenessManager *)self config];
    [config2 dispatchTimerLeeway];
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
  date = [MEMORY[0x277CBEAA8] date];
  metrics = [(RTLocationAwarenessManager *)self metrics];
  startTimestamp = [metrics startTimestamp];
  [date timeIntervalSinceDate:startTimestamp];
  v7 = v6;

  return v7;
}

- (void)updateLocationAwarenessHistogramsWithLocations:(id)locations
{
  v66 = *MEMORY[0x277D85DE8];
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  obj = locations;
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
        timestamp = [v7 timestamp];

        if (timestamp)
        {
          v9 = objc_opt_class();
          timestamp2 = [v7 timestamp];
          v11 = [v9 localHourFromTimestamp:timestamp2];

          [v7 horizontalAccuracy];
          if (v12 > 0.0)
          {
            v13 = v12;
            metrics = [(RTLocationAwarenessManager *)self metrics];
            timeHistograms = [metrics timeHistograms];
            anyPositiveHistogram = [timeHistograms anyPositiveHistogram];
            counts = [anyPositiveHistogram counts];
            ++*(counts + 4 * v11);

            metrics2 = [(RTLocationAwarenessManager *)self metrics];
            intervalHistogram = [metrics2 intervalHistogram];
            anyPositiveIntervalHistograms = [intervalHistogram anyPositiveIntervalHistograms];
            lastLocationAnyPositive = [(RTLocationAwarenessManager *)self lastLocationAnyPositive];
            v22 = [(RTLocationAwarenessManager *)self updateWithLocation:v7 oneIntervalHistogram:anyPositiveIntervalHistograms lastLocation:lastLocationAnyPositive];
            [(RTLocationAwarenessManager *)self setLastLocationAnyPositive:v22];

            if (v13 < 200.0)
            {
              metrics3 = [(RTLocationAwarenessManager *)self metrics];
              timeHistograms2 = [metrics3 timeHistograms];
              lessThan200mHistogram = [timeHistograms2 lessThan200mHistogram];
              counts2 = [lessThan200mHistogram counts];
              ++*(counts2 + 4 * v11);

              metrics4 = [(RTLocationAwarenessManager *)self metrics];
              intervalHistogram2 = [metrics4 intervalHistogram];
              lessThan200mIntervalHistograms = [intervalHistogram2 lessThan200mIntervalHistograms];
              lastLocationLessThan200m = [(RTLocationAwarenessManager *)self lastLocationLessThan200m];
              v31 = [(RTLocationAwarenessManager *)self updateWithLocation:v7 oneIntervalHistogram:lessThan200mIntervalHistograms lastLocation:lastLocationLessThan200m];
              [(RTLocationAwarenessManager *)self setLastLocationLessThan200m:v31];

              if (v13 < 55.0)
              {
                metrics5 = [(RTLocationAwarenessManager *)self metrics];
                timeHistograms3 = [metrics5 timeHistograms];
                lessThan55mHistogram = [timeHistograms3 lessThan55mHistogram];
                counts3 = [lessThan55mHistogram counts];
                ++*(counts3 + 4 * v11);

                metrics6 = [(RTLocationAwarenessManager *)self metrics];
                intervalHistogram3 = [metrics6 intervalHistogram];
                lessThan55mIntervalHistograms = [intervalHistogram3 lessThan55mIntervalHistograms];
                lastLocationLessThan55m = [(RTLocationAwarenessManager *)self lastLocationLessThan55m];
                v40 = [(RTLocationAwarenessManager *)self updateWithLocation:v7 oneIntervalHistogram:lessThan55mIntervalHistograms lastLocation:lastLocationLessThan55m];
                [(RTLocationAwarenessManager *)self setLastLocationLessThan55m:v40];

                if (v13 < 20.0)
                {
                  metrics7 = [(RTLocationAwarenessManager *)self metrics];
                  timeHistograms4 = [metrics7 timeHistograms];
                  lessThan20mHistogram = [timeHistograms4 lessThan20mHistogram];
                  counts4 = [lessThan20mHistogram counts];
                  ++*(counts4 + 4 * v11);

                  metrics8 = [(RTLocationAwarenessManager *)self metrics];
                  intervalHistogram4 = [metrics8 intervalHistogram];
                  lessThan25mIntervalHistograms = [intervalHistogram4 lessThan25mIntervalHistograms];
                  lastLocationLessThan20m = [(RTLocationAwarenessManager *)self lastLocationLessThan20m];
                  v49 = [(RTLocationAwarenessManager *)self updateWithLocation:v7 oneIntervalHistogram:lessThan25mIntervalHistograms lastLocation:lastLocationLessThan20m];
                  [(RTLocationAwarenessManager *)self setLastLocationLessThan20m:v49];

                  if (v13 < 10.0)
                  {
                    metrics9 = [(RTLocationAwarenessManager *)self metrics];
                    timeHistograms5 = [metrics9 timeHistograms];
                    lessThan10mHistogram = [timeHistograms5 lessThan10mHistogram];
                    counts5 = [lessThan10mHistogram counts];
                    ++*(counts5 + 4 * v11);

                    metrics10 = [(RTLocationAwarenessManager *)self metrics];
                    intervalHistogram5 = [metrics10 intervalHistogram];
                    lessThan10mIntervalHistograms = [intervalHistogram5 lessThan10mIntervalHistograms];
                    lastLocationLessThan10m = [(RTLocationAwarenessManager *)self lastLocationLessThan10m];
                    v58 = [(RTLocationAwarenessManager *)self updateWithLocation:v7 oneIntervalHistogram:lessThan10mIntervalHistograms lastLocation:lastLocationLessThan10m];
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

- (id)updateWithLocation:(id)location oneIntervalHistogram:(id)histogram lastLocation:(id)lastLocation
{
  v42 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  histogramCopy = histogram;
  lastLocationCopy = lastLocation;
  if (!locationCopy)
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

    v36 = lastLocationCopy;
    goto LABEL_18;
  }

  if (!lastLocationCopy)
  {
    v36 = [locationCopy copy];
LABEL_18:
    v17 = v36;
    goto LABEL_19;
  }

  timestamp = [locationCopy timestamp];
  timestamp2 = [lastLocationCopy timestamp];
  [timestamp timeIntervalSinceDate:timestamp2];
  v13 = v12;

  v14 = objc_opt_class();
  timestamp3 = [lastLocationCopy timestamp];
  v16 = [v14 localHourFromTimestamp:timestamp3];

  v17 = lastLocationCopy;
  if (v13 > 0.0)
  {
    v18 = [locationCopy copy];

    v17 = v18;
  }

  if (v13 > 8.0)
  {
    v19 = [histogramCopy objectAtIndex:0];
    counts = [v19 counts];
    ++*(counts + 4 * v16);

    if (v13 > 60.0)
    {
      v21 = [histogramCopy objectAtIndex:1];
      counts2 = [v21 counts];
      ++*(counts2 + 4 * v16);

      if (v13 > 120.0)
      {
        v23 = [histogramCopy objectAtIndex:2];
        counts3 = [v23 counts];
        ++*(counts3 + 4 * v16);

        if (v13 > 900.0)
        {
          v25 = [histogramCopy objectAtIndex:3];
          counts4 = [v25 counts];
          ++*(counts4 + 4 * v16);

          if (v13 > 3600.0)
          {
            v27 = [histogramCopy objectAtIndex:4];
            counts5 = [v27 counts];
            ++*(counts5 + 4 * v16);

            if (v13 > 7200.0)
            {
              v29 = [histogramCopy objectAtIndex:5];
              counts6 = [v29 counts];
              ++*(counts6 + 4 * v16);

              if (v13 > 14400.0)
              {
                v31 = [histogramCopy objectAtIndex:6];
                counts7 = [v31 counts];
                ++*(counts7 + 4 * v16);

                if (v13 > 28800.0)
                {
                  v33 = [histogramCopy objectAtIndex:7];
                  counts8 = [v33 counts];
                  ++*(counts8 + 4 * v16);
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

+ (int64_t)localHourFromTimestamp:(id)timestamp
{
  v3 = MEMORY[0x277CBEA80];
  timestampCopy = timestamp;
  currentCalendar = [v3 currentCalendar];
  v6 = [currentCalendar components:32 fromDate:timestampCopy];

  hour = [v6 hour];
  return hour;
}

- (void)updateHeartbeatTimerDelayForTimestamp:(id)timestamp withDelay:(double)delay
{
  v30 = *MEMORY[0x277D85DE8];
  timestampCopy = timestamp;
  config = [(RTLocationAwarenessManager *)self config];
  [config heartbeatIntervalResolution];
  v9 = v8 * 0.5;

  if (v9 < delay)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v10 = _rt_log_facility_get_os_log(RTLogFacilityLocationAwareness);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v28 = 134217984;
        delayCopy = delay;
        _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "Significant heartbeat delay, %0.1f seconds", &v28, 0xCu);
      }
    }

    v11 = [objc_opt_class() localHourFromTimestamp:timestampCopy];
    metrics = [(RTLocationAwarenessManager *)self metrics];
    heartbeatStats = [metrics heartbeatStats];
    timerFiringDelayedCount = [heartbeatStats timerFiringDelayedCount];
    counts = [timerFiringDelayedCount counts];
    ++*(counts + 4 * v11);

    v16 = llround(delay);
    metrics2 = [(RTLocationAwarenessManager *)self metrics];
    heartbeatStats2 = [metrics2 heartbeatStats];
    timerFiringDelayedTotalSeconds = [heartbeatStats2 timerFiringDelayedTotalSeconds];
    counts2 = [timerFiringDelayedTotalSeconds counts];
    *(counts2 + 4 * v11) += v16;

    metrics3 = [(RTLocationAwarenessManager *)self metrics];
    heartbeatStats3 = [metrics3 heartbeatStats];
    timerFiringDelayedMaxSeconds = [heartbeatStats3 timerFiringDelayedMaxSeconds];
    v24 = *([timerFiringDelayedMaxSeconds counts] + 4 * v11);

    if (v24 < v16)
    {
      metrics4 = [(RTLocationAwarenessManager *)self metrics];
      heartbeatStats4 = [metrics4 heartbeatStats];
      timerFiringDelayedMaxSeconds2 = [heartbeatStats4 timerFiringDelayedMaxSeconds];
      *([timerFiringDelayedMaxSeconds2 counts] + 4 * v11) = v16;
    }
  }
}

- (void)considerUpdateActiveRequestMetrics
{
  [(RTLocationAwarenessManager *)self setActiveRequestInterrupted:[(RTLocationAwarenessManager *)self activeRequestInterruptedCheck]];
  v3 = dispatch_group_create();
  authorizationManager = [(RTLocationAwarenessManager *)self authorizationManager];

  if (authorizationManager)
  {
    dispatch_group_enter(v3);
    authorizationManager2 = [(RTLocationAwarenessManager *)self authorizationManager];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __72__RTLocationAwarenessManager_metric__considerUpdateActiveRequestMetrics__block_invoke;
    v15[3] = &unk_2788C53F0;
    v15[4] = self;
    v16 = v3;
    [authorizationManager2 fetchRoutineEnabledWithHandler:v15];
  }

  wifiManager = [(RTLocationAwarenessManager *)self wifiManager];

  if (wifiManager)
  {
    dispatch_group_enter(v3);
    wifiManager2 = [(RTLocationAwarenessManager *)self wifiManager];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __72__RTLocationAwarenessManager_metric__considerUpdateActiveRequestMetrics__block_invoke_3;
    v13[3] = &unk_2788CC440;
    v13[4] = self;
    v14 = v3;
    [wifiManager2 fetchPowerStatus:v13];
  }

  -[RTLocationAwarenessManager setActiveRequestLocationServiceOn:](self, "setActiveRequestLocationServiceOn:", [MEMORY[0x277CBFC10] locationServicesEnabled]);
  date = [MEMORY[0x277CBEAA8] date];
  queue = [(RTNotifier *)self queue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __72__RTLocationAwarenessManager_metric__considerUpdateActiveRequestMetrics__block_invoke_5;
  v11[3] = &unk_2788C4A70;
  v11[4] = self;
  v12 = date;
  v10 = date;
  dispatch_group_notify(v3, queue, v11);
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
  scheduledRestTimerFiringTime = [(RTLocationAwarenessManager *)self scheduledRestTimerFiringTime];

  if (scheduledRestTimerFiringTime)
  {
    date = [MEMORY[0x277CBEAA8] date];
    scheduledRestTimerFiringTime2 = [(RTLocationAwarenessManager *)self scheduledRestTimerFiringTime];
    [date timeIntervalSinceDate:scheduledRestTimerFiringTime2];
    v7 = v6;
    config = [(RTLocationAwarenessManager *)self config];
    [config heartbeatIntervalResolution];
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

- (void)incrementBasicHistogram:(id)histogram forTimestamp:(id)timestamp
{
  timestampCopy = timestamp;
  counts = [histogram counts];
  v7 = [objc_opt_class() localHourFromTimestamp:timestampCopy];

  ++*(counts + 4 * v7);
}

- (RTLocationAwarenessManager)initWithLocationManager:(id)manager config:(id)config metricManager:(id)metricManager motionActivityManager:(id)activityManager authorizationManager:(id)authorizationManager wifiManager:(id)wifiManager xpcActivityManager:(id)xpcActivityManager timerManager:(id)self0 learnedLocationStore:(id)self1
{
  v68 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  configCopy = config;
  metricManagerCopy = metricManager;
  metricManagerCopy2 = metricManager;
  activityManagerCopy = activityManager;
  authorizationManagerCopy = authorizationManager;
  authorizationManagerCopy2 = authorizationManager;
  wifiManagerCopy = wifiManager;
  wifiManagerCopy2 = wifiManager;
  xpcActivityManagerCopy = xpcActivityManager;
  timerManagerCopy = timerManager;
  storeCopy = store;
  if (managerCopy)
  {
    if (configCopy)
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

    if (configCopy)
    {
LABEL_3:
      if (xpcActivityManagerCopy)
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

  if (xpcActivityManagerCopy)
  {
LABEL_4:
    if (timerManagerCopy)
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

  if (!timerManagerCopy)
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
  selfCopy = 0;
  if (managerCopy && configCopy && xpcActivityManagerCopy)
  {
    v63.receiver = self;
    v63.super_class = RTLocationAwarenessManager;
    v27 = [(RTNotifier *)&v63 init];
    if (v27)
    {
      v28 = [configCopy copy];
      config = v27->_config;
      v27->_config = v28;

      v30 = [MEMORY[0x277CCAB00] mapTableWithKeyOptions:5 valueOptions:0x10000];
      requesterToHeartbeatBucket = v27->_requesterToHeartbeatBucket;
      v27->_requesterToHeartbeatBucket = v30;

      v32 = [MEMORY[0x277CCAB00] mapTableWithKeyOptions:0x10000 valueOptions:0];
      heartbeatBucketToRequesters = v27->_heartbeatBucketToRequesters;
      v27->_heartbeatBucketToRequesters = v32;

      objc_storeStrong(&v27->_timerManager, timerManager);
      objc_storeStrong(&v27->_locationManager, manager);
      activeOnset = v27->_activeOnset;
      v27->_activeOnset = 0;

      minHeartbeatBucket = v27->_minHeartbeatBucket;
      v27->_minHeartbeatBucket = 0;

      lastValidLocation = v27->_lastValidLocation;
      v27->_lastValidLocation = 0;

      objc_storeStrong(&v27->_motionActivityManager, activityManager);
      distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
      stationaryStartTimestamp = v27->_stationaryStartTimestamp;
      v27->_stationaryStartTimestamp = distantFuture;

      v39 = [RTInvocationDispatcher alloc];
      queue = [(RTNotifier *)v27 queue];
      v41 = [(RTInvocationDispatcher *)v39 initWithQueue:queue];
      heartbeatBuffer = v27->_heartbeatBuffer;
      v27->_heartbeatBuffer = v41;

      v43 = objc_opt_new();
      metrics = v27->_metrics;
      v27->_metrics = v43;

      objc_storeStrong(&v27->_metricManager, metricManagerCopy);
      objc_storeStrong(&v27->_learnedLocationStore, store);
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

      objc_storeStrong(&v27->_authorizationManager, authorizationManagerCopy);
      objc_storeStrong(&v27->_wifiManager, wifiManagerCopy);
      objc_storeStrong(&v27->_xpcActivityManager, xpcActivityManager);
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
    selfCopy = self;
  }

  return selfCopy;
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

    date = [MEMORY[0x277CBEAA8] date];
    activeOnset = self->_activeOnset;
    self->_activeOnset = date;

    [(RTLocationAwarenessManager *)self setRequestedHighAccuracyLocation:1];
    locationManager = [(RTLocationAwarenessManager *)self locationManager];
    v9 = +[(RTNotification *)RTLocationManagerNotificationLocationsAccuracyBest];
    [locationManager addObserver:self selector:sel_onNoOpLocationNotification_ name:v9];
  }

  else
  {
    locationManager2 = [(RTLocationAwarenessManager *)self locationManager];
    v11 = +[(RTNotification *)RTLocationManagerNotificationLocationsLeeched];
    [locationManager2 addObserver:self selector:sel_onLeechedLocationNotification_ name:v11];

    motionActivityManager = [(RTLocationAwarenessManager *)self motionActivityManager];
    v13 = +[(RTNotification *)RTMotionActivityManagerNotificationActivity];
    [motionActivityManager addObserver:self selector:sel_onMotionActivityManagerNotificationActivityNotification_ name:v13];

    motionActivityManager2 = [(RTLocationAwarenessManager *)self motionActivityManager];
    v15 = +[(RTNotification *)RTMotionActivityManagerNotificationMotionSettledStateChange];
    [motionActivityManager2 addObserver:self selector:sel_onMotionActivityManagerNotificationActivityNotification_ name:v15];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:self selector:sel_onDailyMetricsNotification_ name:@"RTMetricManagerDailyMetricNotification" object:0];
  }
}

- (void)_shutdownWithHandler:(id)handler
{
  v64 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  [(RTTimer *)self->_heartbeatTimer invalidate];
  heartbeatTimer = self->_heartbeatTimer;
  self->_heartbeatTimer = 0;

  [(RTLocationAwarenessManager *)self onRest];
  locationManager = [(RTLocationAwarenessManager *)self locationManager];
  [locationManager removeObserver:self];

  motionActivityManager = [(RTLocationAwarenessManager *)self motionActivityManager];
  [motionActivityManager removeObserver:self];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  heartbeatBuffer = [(RTLocationAwarenessManager *)self heartbeatBuffer];
  [heartbeatBuffer shutdown];

  v9 = dispatch_semaphore_create(0);
  xpcActivityManager = [(RTLocationAwarenessManager *)self xpcActivityManager];
  v60[0] = MEMORY[0x277D85DD0];
  v60[1] = 3221225472;
  v60[2] = __51__RTLocationAwarenessManager__shutdownWithHandler___block_invoke;
  v60[3] = &unk_2788C4730;
  v11 = v9;
  v61 = v11;
  [xpcActivityManager unregisterActivityWithIdentifier:@"com.apple.routined.locationAwareness.heartbeat" handler:v60];

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
    callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
    v25 = [callStackSymbols filteredArrayUsingPredicate:v23];
    firstObject = [v25 firstObject];

    [v22 submitToCoreAnalytics:firstObject type:1 duration:v21];
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

  xpcActivityManager2 = [(RTLocationAwarenessManager *)self xpcActivityManager];
  v58[0] = MEMORY[0x277D85DD0];
  v58[1] = 3221225472;
  v58[2] = __51__RTLocationAwarenessManager__shutdownWithHandler___block_invoke_2;
  v58[3] = &unk_2788C4730;
  v36 = v34;
  v59 = v36;
  [xpcActivityManager2 unregisterActivityWithIdentifier:@"com.apple.routined.locationAwareness.highAccuracyLocationRequest" handler:v58];

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
    callStackSymbols2 = [*(v17 + 3272) callStackSymbols];
    v46 = [callStackSymbols2 filteredArrayUsingPredicate:v44];
    firstObject2 = [v46 firstObject];

    [v43 submitToCoreAnalytics:firstObject2 type:1 duration:v42];
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

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, v54);
  }
}

- (void)_onDailyMetricsNotification:(id)notification
{
  v15 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityLocationAwareness);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = NSStringFromSelector(a2);
      v11 = 138412546;
      v12 = v7;
      v13 = 2112;
      v14 = notificationCopy;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@, received notification, %@", &v11, 0x16u);
    }
  }

  v8 = [MEMORY[0x277CBEAA8] now];
  v9 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:v8 sinceDate:-86400.0];
  v10 = [[RTLocationAwarenessMetricManager alloc] initWithLocationManager:self->_locationManager motionManager:self->_motionActivityManager learnedLocationStore:self->_learnedLocationStore startDate:v9 endDate:v8];
  [(RTLocationAwarenessMetricManager *)v10 submitMetrics];
}

- (void)onDailyMetricsNotification:(id)notification
{
  notificationCopy = notification;
  queue = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__RTLocationAwarenessManager_onDailyMetricsNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(queue, v7);
}

- (void)setMinHeartbeatBucket:(id)bucket
{
  v10 = *MEMORY[0x277D85DE8];
  bucketCopy = bucket;
  minHeartbeatBucket = self->_minHeartbeatBucket;
  if (bucketCopy | minHeartbeatBucket && (!bucketCopy || !minHeartbeatBucket || [(NSNumber *)minHeartbeatBucket compare:bucketCopy]))
  {
    objc_storeStrong(&self->_minHeartbeatBucket, bucket);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v7 = _rt_log_facility_get_os_log(RTLogFacilityLocationAwareness);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = 138412290;
        v9 = bucketCopy;
        _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "Set minHeartbeatBucket to %@.", &v8, 0xCu);
      }
    }

    [(RTLocationAwarenessManager *)self adjustHeartbeatTimer];
  }
}

- (void)setLastValidLocation:(id)location
{
  v25 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  if (!locationCopy)
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
    timestamp = [(CLLocation *)lastValidLocation timestamp];
    timestamp2 = [locationCopy timestamp];
    v9 = [timestamp compare:timestamp2];

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

  v11 = [locationCopy copy];
  v12 = self->_lastValidLocation;
  self->_lastValidLocation = v11;

  if (self->_activeOnset)
  {
    if (![(RTLocationAwarenessManager *)self requestedHighAccuracyLocation])
    {
      timestamp3 = [(CLLocation *)self->_lastValidLocation timestamp];
      [timestamp3 timeIntervalSinceDate:self->_activeOnset];
      v15 = v14;
      config = [(RTLocationAwarenessManager *)self config];
      [config dispatchTimerLeeway];
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

- (BOOL)addLocationHeartbeatRequester:(id)requester interval:(double)interval error:(id *)error
{
  v28[1] = *MEMORY[0x277D85DE8];
  requesterCopy = requester;
  if (!requesterCopy)
  {
    if (!error)
    {
      goto LABEL_11;
    }

    v11 = MEMORY[0x277CCA9B8];
    v12 = *MEMORY[0x277D01448];
    v27 = *MEMORY[0x277CCA450];
    v28[0] = @"Requester should not be nil.";
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:&v27 count:1];
    *error = [v11 errorWithDomain:v12 code:0 userInfo:v13];

LABEL_10:
    LOBYTE(error) = 0;
    goto LABEL_11;
  }

  if (![(RTLocationAwarenessManager *)self validInterval:interval])
  {
    if (!error)
    {
      goto LABEL_11;
    }

    v14 = MEMORY[0x277CCACA8];
    config = [(RTLocationAwarenessManager *)self config];
    [config maxHeartbeatInterval];
    v17 = [v14 stringWithFormat:@"Interval should be between 0 and %f.", v16];

    v18 = MEMORY[0x277CCA9B8];
    v19 = *MEMORY[0x277D01448];
    v25 = *MEMORY[0x277CCA450];
    v26 = v17;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    *error = [v18 errorWithDomain:v19 code:1 userInfo:v20];

    goto LABEL_10;
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __75__RTLocationAwarenessManager_addLocationHeartbeatRequester_interval_error___block_invoke;
  aBlock[3] = &unk_2788C5020;
  aBlock[4] = self;
  intervalCopy = interval;
  v23 = requesterCopy;
  v9 = _Block_copy(aBlock);
  queue = [(RTNotifier *)self queue];
  dispatch_async(queue, v9);

  if (error)
  {
    *error = 0;
  }

  LOBYTE(error) = 1;
LABEL_11:

  return error;
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

- (void)removeLocationHeartbeatRequester:(id)requester
{
  requesterCopy = requester;
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __63__RTLocationAwarenessManager_removeLocationHeartbeatRequester___block_invoke;
  v11 = &unk_2788C4A70;
  v12 = requesterCopy;
  selfCopy = self;
  v5 = requesterCopy;
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

- (void)_addHighAccuracyLocationRequester:(id)requester
{
  requesterCopy = requester;
  highAccuracyLocationRequesters = [(RTLocationAwarenessManager *)self highAccuracyLocationRequesters];
  v6 = [highAccuracyLocationRequesters count];

  highAccuracyLocationRequesters2 = [(RTLocationAwarenessManager *)self highAccuracyLocationRequesters];
  [highAccuracyLocationRequesters2 addObject:requesterCopy];

  if (!v6)
  {

    [(RTLocationAwarenessManager *)self _updateXPCActivityForHighAccuracyLocationRequest];
  }
}

- (void)_removeHighAccuracyLocationRequester:(id)requester
{
  requesterCopy = requester;
  highAccuracyLocationRequesters = [(RTLocationAwarenessManager *)self highAccuracyLocationRequesters];
  v5 = [highAccuracyLocationRequesters count];

  highAccuracyLocationRequesters2 = [(RTLocationAwarenessManager *)self highAccuracyLocationRequesters];
  v7 = [highAccuracyLocationRequesters2 containsObject:requesterCopy];

  if (v7)
  {
    highAccuracyLocationRequesters3 = [(RTLocationAwarenessManager *)self highAccuracyLocationRequesters];
    [highAccuracyLocationRequesters3 removeObject:requesterCopy];

    if (v5 == 1)
    {
      highAccuracyLocationRequesters4 = [(RTLocationAwarenessManager *)self highAccuracyLocationRequesters];
      v10 = [highAccuracyLocationRequesters4 count];

      if (!v10)
      {
        [(RTLocationAwarenessManager *)self _updateXPCActivityForHighAccuracyLocationRequest];
      }
    }
  }
}

- (BOOL)addHighAccuracyLocationRequester:(id)requester error:(id *)error
{
  v19 = *MEMORY[0x277D85DE8];
  requesterCopy = requester;
  if (requesterCopy)
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
        v18 = requesterCopy;
        _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "%@, Add high accuracy location requester, %@", buf, 0x16u);
      }
    }

    queue = [(RTNotifier *)self queue];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __69__RTLocationAwarenessManager_addHighAccuracyLocationRequester_error___block_invoke;
    v13[3] = &unk_2788C4A70;
    v13[4] = self;
    v14 = requesterCopy;
    dispatch_async(queue, v13);

    if (error)
    {
      *error = 0;
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

    if (error)
    {
      *error = _RTErrorInvalidParameterCreate(@"requester");
    }
  }

  return requesterCopy != 0;
}

- (BOOL)removeHighAccuracyLocationRequester:(id)requester error:(id *)error
{
  v19 = *MEMORY[0x277D85DE8];
  requesterCopy = requester;
  if (requesterCopy)
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
        v18 = requesterCopy;
        _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "%@, Remove high accuracy location requester, %@", buf, 0x16u);
      }
    }

    queue = [(RTNotifier *)self queue];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __72__RTLocationAwarenessManager_removeHighAccuracyLocationRequester_error___block_invoke;
    v13[3] = &unk_2788C4A70;
    v13[4] = self;
    v14 = requesterCopy;
    dispatch_async(queue, v13);
  }

  else
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: requester", buf, 2u);
    }

    if (error)
    {
      *error = _RTErrorInvalidParameterCreate(@"requester");
    }
  }

  return requesterCopy != 0;
}

- (BOOL)addFixedRateLocationRequester:(id)requester error:(id *)error
{
  v19 = *MEMORY[0x277D85DE8];
  requesterCopy = requester;
  if (requesterCopy)
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
        v18 = requesterCopy;
        _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "%@, Add fixed rate location requester, %@", buf, 0x16u);
      }
    }

    queue = [(RTNotifier *)self queue];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __66__RTLocationAwarenessManager_addFixedRateLocationRequester_error___block_invoke;
    v13[3] = &unk_2788C4A70;
    v13[4] = self;
    v14 = requesterCopy;
    dispatch_async(queue, v13);

    if (error)
    {
      *error = 0;
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

    if (error)
    {
      *error = _RTErrorInvalidParameterCreate(@"requester");
    }
  }

  return requesterCopy != 0;
}

- (void)removeFixedRateLocationRequester:(id)requester
{
  v17 = *MEMORY[0x277D85DE8];
  requesterCopy = requester;
  if (!requesterCopy)
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
      v16 = requesterCopy;
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%@, Remove fixed rate location requester, %@", buf, 0x16u);
    }
  }

  queue = [(RTNotifier *)self queue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __63__RTLocationAwarenessManager_removeFixedRateLocationRequester___block_invoke;
  v11[3] = &unk_2788C4A70;
  v11[4] = self;
  v12 = requesterCopy;
  v10 = requesterCopy;
  dispatch_async(queue, v11);
}

- (void)_addFixedRateLocationRequester:(id)requester
{
  requesterCopy = requester;
  fixedRateLocationRequesters = [(RTLocationAwarenessManager *)self fixedRateLocationRequesters];
  v6 = [fixedRateLocationRequesters count];

  fixedRateLocationRequesters2 = [(RTLocationAwarenessManager *)self fixedRateLocationRequesters];
  [fixedRateLocationRequesters2 addObject:requesterCopy];

  if (!v6)
  {

    [(RTLocationAwarenessManager *)self _requestForFixedRateLocation];
  }
}

- (void)_removeFixedRateLocationRequester:(id)requester
{
  requesterCopy = requester;
  fixedRateLocationRequesters = [(RTLocationAwarenessManager *)self fixedRateLocationRequesters];
  v5 = [fixedRateLocationRequesters count];

  fixedRateLocationRequesters2 = [(RTLocationAwarenessManager *)self fixedRateLocationRequesters];
  v7 = [fixedRateLocationRequesters2 containsObject:requesterCopy];

  if (v7)
  {
    fixedRateLocationRequesters3 = [(RTLocationAwarenessManager *)self fixedRateLocationRequesters];
    [fixedRateLocationRequesters3 removeObject:requesterCopy];

    if (v5 == 1)
    {
      fixedRateLocationRequesters4 = [(RTLocationAwarenessManager *)self fixedRateLocationRequesters];
      v10 = [fixedRateLocationRequesters4 count];

      if (!v10)
      {
        locationManager = [(RTLocationAwarenessManager *)self locationManager];
        v12 = +[(RTNotification *)RTLocationManagerNotificationLocationsAccuracyRhythmicNonWaking];
        [locationManager removeObserver:self fromNotification:v12];
      }
    }
  }
}

- (void)_updateXPCActivityForHighAccuracyLocationRequest
{
  location[1] = *MEMORY[0x277D85DE8];
  highAccuracyLocationRequesters = [(RTLocationAwarenessManager *)self highAccuracyLocationRequesters];
  v5 = [highAccuracyLocationRequesters count];

  if (v5)
  {
    highAccuracyLocationRequesters2 = [(RTLocationAwarenessManager *)self highAccuracyLocationRequesters];
    v7 = [highAccuracyLocationRequesters2 count];

    if (v7 != 1)
    {
      return;
    }

    v8 = [[RTXPCActivityCriteria alloc] initWithInterval:1 gracePeriod:0 priority:0 requireNetworkConnectivity:0 requireInexpensiveNetworkConnectivity:0 networkTransferDirection:1 allowBattery:1800.0 powerNap:900.0];
    objc_initWeak(location, self);
    xpcActivityManager = [(RTLocationAwarenessManager *)self xpcActivityManager];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __78__RTLocationAwarenessManager__updateXPCActivityForHighAccuracyLocationRequest__block_invoke_2;
    v28[3] = &unk_2788C6A18;
    v29[1] = a2;
    objc_copyWeak(v29, location);
    [xpcActivityManager registerActivityWithIdentifier:@"com.apple.routined.locationAwareness.highAccuracyLocationRequest" criteria:v8 handler:v28];

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
    xpcActivityManager2 = [(RTLocationAwarenessManager *)self xpcActivityManager];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __78__RTLocationAwarenessManager__updateXPCActivityForHighAccuracyLocationRequest__block_invoke;
    v30[3] = &unk_2788C4730;
    v12 = v10;
    v31 = v12;
    [xpcActivityManager2 unregisterActivityWithIdentifier:@"com.apple.routined.locationAwareness.highAccuracyLocationRequest" handler:v30];

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
      callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
      v21 = [callStackSymbols filteredArrayUsingPredicate:v19];
      firstObject = [v21 firstObject];

      [v18 submitToCoreAnalytics:firstObject type:1 duration:v17];
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

- (void)_updateXPCActivityForObserverCount:(unint64_t)count
{
  location[1] = *MEMORY[0x277D85DE8];
  if (count == 1)
  {
    v8 = [[RTXPCActivityCriteria alloc] initWithInterval:1 gracePeriod:0 priority:0 requireNetworkConnectivity:0 requireInexpensiveNetworkConnectivity:1 networkTransferDirection:0 allowBattery:3600.0 powerNap:1800.0];
    objc_initWeak(location, self);
    xpcActivityManager = [(RTLocationAwarenessManager *)self xpcActivityManager];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __65__RTLocationAwarenessManager__updateXPCActivityForObserverCount___block_invoke_2;
    v26[3] = &unk_2788C6A18;
    v27[1] = a2;
    objc_copyWeak(v27, location);
    [xpcActivityManager registerActivityWithIdentifier:@"com.apple.routined.locationAwareness.heartbeat" criteria:v8 handler:v26];

    objc_destroyWeak(v27);
    objc_destroyWeak(location);
  }

  else
  {
    if (count)
    {
      return;
    }

    xpcActivityPowerAssertion = self->_xpcActivityPowerAssertion;
    self->_xpcActivityPowerAssertion = 0;

    v5 = dispatch_semaphore_create(0);
    xpcActivityManager2 = [(RTLocationAwarenessManager *)self xpcActivityManager];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __65__RTLocationAwarenessManager__updateXPCActivityForObserverCount___block_invoke;
    v28[3] = &unk_2788C4730;
    v7 = v5;
    v29 = v7;
    [xpcActivityManager2 unregisterActivityWithIdentifier:@"com.apple.routined.locationAwareness.heartbeat" handler:v28];

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
      callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
      v17 = [callStackSymbols filteredArrayUsingPredicate:v15];
      firstObject = [v17 firstObject];

      [v14 submitToCoreAnalytics:firstObject type:1 duration:v13];
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

- (void)hourlySingleShotWithHandler:(id)handler
{
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__RTLocationAwarenessManager_hourlySingleShotWithHandler___block_invoke;
  block[3] = &unk_2788C6300;
  v9 = handlerCopy;
  v10 = a2;
  block[4] = self;
  v7 = handlerCopy;
  dispatch_async(queue, block);
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
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__RTLocationAwarenessManager_requestForHighAccuracyLocation__block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(queue, block);
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

  date = [MEMORY[0x277CBEAA8] date];
  activeOnset = self->_activeOnset;
  self->_activeOnset = date;

  [(RTLocationAwarenessManager *)self setRequestedHighAccuracyLocation:1];
  locationManager = [(RTLocationAwarenessManager *)self locationManager];
  v8 = +[(RTNotification *)RTLocationManagerNotificationLocationsAccuracyBest];
  [locationManager addObserver:self selector:sel_onNoOpLocationNotification_ name:v8];

  timerManager = self->_timerManager;
  v10 = MEMORY[0x277CCACA8];
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  v13 = [v10 stringWithFormat:@"%@.restTimer", v12];
  queue = [(RTNotifier *)self queue];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __61__RTLocationAwarenessManager__requestForHighAccuracyLocation__block_invoke;
  v30[3] = &unk_2788C4EA0;
  v30[4] = self;
  v15 = [(RTTimerManager *)timerManager timerWithIdentifier:v13 queue:queue handler:v30];
  v16 = self->_restTimer;
  self->_restTimer = v15;

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilityLocationAwareness);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = NSStringFromSelector(a2);
      restTimer = [(RTLocationAwarenessManager *)self restTimer];
      config = [(RTLocationAwarenessManager *)self config];
      [config highAccuracyLocationRequestDuration];
      *buf = 138412802;
      v32 = v18;
      v33 = 2048;
      v34 = restTimer;
      v35 = 2048;
      v36 = v21;
      _os_log_impl(&dword_2304B3000, v17, OS_LOG_TYPE_INFO, "%@, Start rest timer, %p, firing delay, %f secs.", buf, 0x20u);
    }
  }

  v22 = self->_restTimer;
  config2 = [(RTLocationAwarenessManager *)self config];
  [config2 highAccuracyLocationRequestDuration];
  v25 = v24;
  config3 = [(RTLocationAwarenessManager *)self config];
  [config3 dispatchTimerLeeway];
  [(RTTimer *)v22 fireAfterDelay:v25 interval:INFINITY leeway:v27];

  [(RTTimer *)self->_restTimer resume];
}

- (void)requestForFixedRateLocation
{
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__RTLocationAwarenessManager_requestForFixedRateLocation__block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(queue, block);
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
    locationManager = [(RTLocationAwarenessManager *)self locationManager];
    v4 = +[(RTNotification *)RTLocationManagerNotificationLocationsAccuracyRhythmicNonWaking];
    [locationManager addObserver:self selector:sel_onNoOpLocationNotification_ name:v4];
  }
}

- (void)onLeechedLocationNotification:(id)notification
{
  notificationCopy = notification;
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __60__RTLocationAwarenessManager_onLeechedLocationNotification___block_invoke;
  v11 = &unk_2788C4A70;
  v12 = notificationCopy;
  selfCopy = self;
  v5 = notificationCopy;
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

- (void)onMotionActivityManagerNotificationActivityNotification:(id)notification
{
  v27 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  name = [notificationCopy name];
  v7 = +[(RTNotification *)RTMotionActivityManagerNotificationActivity];
  v8 = [name isEqualToString:v7];

  if (v8)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __86__RTLocationAwarenessManager_onMotionActivityManagerNotificationActivityNotification___block_invoke;
    aBlock[3] = &unk_2788C4A70;
    v23 = notificationCopy;
    selfCopy = self;
    v9 = _Block_copy(aBlock);
    queue = [(RTNotifier *)self queue];
    dispatch_async(queue, v9);

    v11 = v23;
  }

  else
  {
    name2 = [notificationCopy name];
    v13 = +[(RTNotification *)RTMotionActivityManagerNotificationMotionSettledStateChange];
    v14 = [name2 isEqualToString:v13];

    if (v14)
    {
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __86__RTLocationAwarenessManager_onMotionActivityManagerNotificationActivityNotification___block_invoke_2;
      v18[3] = &unk_2788C5020;
      v19 = notificationCopy;
      selfCopy2 = self;
      v21 = a2;
      v15 = _Block_copy(v18);
      queue2 = [(RTNotifier *)self queue];
      dispatch_async(queue2, v15);

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
        name3 = [notificationCopy name];
        *buf = 138412290;
        v26 = name3;
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
      heartbeatBucketToRequesters = [(RTLocationAwarenessManager *)self heartbeatBucketToRequesters];
      v10 = [heartbeatBucketToRequesters objectForKey:v8];
      v11 = v10;
      if (!v10)
      {

LABEL_12:
        [v26 addObject:v8];
        goto LABEL_13;
      }

      allObjects = [v10 allObjects];
      v13 = [allObjects count];

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
        heartbeatBucketToRequesters2 = [(RTLocationAwarenessManager *)self heartbeatBucketToRequesters];
        [heartbeatBucketToRequesters2 removeObjectForKey:v20];
      }

      v17 = [v15 countByEnumeratingWithState:&v27 objects:v39 count:16];
    }

    while (v17);
  }

  if (!v5)
  {
    heartbeatBucketToRequesters3 = [(RTLocationAwarenessManager *)self heartbeatBucketToRequesters];
    v23 = [heartbeatBucketToRequesters3 count];

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
        restTimer = [(RTLocationAwarenessManager *)self restTimer];
        v14 = 138412546;
        v15 = v6;
        v16 = 2048;
        v17 = restTimer;
        _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%@, Invalidate rest timer, %p.", &v14, 0x16u);
      }

      restTimer = self->_restTimer;
    }

    [(RTTimer *)restTimer invalidate];
    v8 = self->_restTimer;
    self->_restTimer = 0;
  }

  activeOnset = [(RTLocationAwarenessManager *)self activeOnset];

  if (activeOnset)
  {
    requestedHighAccuracyLocation = [(RTLocationAwarenessManager *)self requestedHighAccuracyLocation];
    locationManager = [(RTLocationAwarenessManager *)self locationManager];
    if (requestedHighAccuracyLocation)
    {
      v12 = +[(RTNotification *)RTLocationManagerNotificationLocationsAccuracyBest];
      [locationManager removeObserver:self fromNotification:v12];

      [(RTLocationAwarenessManager *)self setRequestedHighAccuracyLocation:0];
    }

    else
    {
      v13 = +[(RTNotification *)RTLocationManagerNotificationLocationsAccuracyHundredMeters];
      [locationManager removeObserver:self fromNotification:v13];
    }

    [(RTLocationAwarenessManager *)self considerUpdateActiveRequestMetrics];
  }
}

- (double)nextFiringDelayWithHeartbeatInterval:(double)result starvingDuration:(double)duration
{
  v4 = result - duration;
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

- (BOOL)validInterval:(double)interval
{
  if (interval <= 0.0)
  {
    return 0;
  }

  config = [(RTLocationAwarenessManager *)self config];
  [config maxHeartbeatInterval];
  v6 = v5 >= interval;

  return v6;
}

- (BOOL)validLocation:(id)location
{
  locationCopy = location;
  v5 = locationCopy;
  if (locationCopy && ([locationCopy horizontalAccuracy], v6 >= 0.0))
  {
    [v5 horizontalAccuracy];
    v9 = v8;
    config = [(RTLocationAwarenessManager *)self config];
    [config requiredHorizontalAccuracy];
    v7 = v9 <= v11;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)coarseLocation:(id)location
{
  locationCopy = location;
  v5 = locationCopy;
  if (locationCopy)
  {
    [locationCopy horizontalAccuracy];
    v7 = v6;
    config = [(RTLocationAwarenessManager *)self config];
    [config requiredHorizontalAccuracy];
    if (v7 <= v9)
    {
      v14 = 0;
    }

    else
    {
      [v5 horizontalAccuracy];
      v11 = v10;
      config2 = [(RTLocationAwarenessManager *)self config];
      [config2 maxHorizontalAccuracyForCoarseLocation];
      v14 = v11 <= v13;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)heartbeatBucketForInterval:(double)interval
{
  config = [(RTLocationAwarenessManager *)self config];
  [config heartbeatIntervalResolution];
  v6 = vcvtpd_u64_f64(interval / v5);

  v7 = MEMORY[0x277CCABB0];

  return [v7 numberWithUnsignedInteger:v6];
}

- (double)intervalForHeartbeatBucket:(id)bucket
{
  v15 = *MEMORY[0x277D85DE8];
  bucketCopy = bucket;
  if (!bucketCopy)
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

  config = [(RTLocationAwarenessManager *)self config];
  [config heartbeatIntervalResolution];
  v8 = v7;
  integerValue = [bucketCopy integerValue];

  return v8 * integerValue;
}

@end