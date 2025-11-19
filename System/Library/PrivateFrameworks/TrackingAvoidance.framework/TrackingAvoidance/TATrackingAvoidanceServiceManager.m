@interface TATrackingAvoidanceServiceManager
+ (id)managerStateToString:(unint64_t)a3;
- (BOOL)_shouldTerminateService;
- (TATrackingAvoidanceServiceManager)initWithQueue:(id)a3 settings:(id)a4;
- (void)_changeSession;
- (void)_fetchAndIngestLastVisit;
- (void)_fetchAndIngestNextPredictedLocationOfInterestFromLocation:(id)a3 startDate:(id)a4 interval:(double)a5;
- (void)_fetchAndIngestNextPredictedLocationOfInterestWithCurrentVisitState;
- (void)_fetchStoreAndSave;
- (void)_handleStateUpdateIfNecessary;
- (void)_loadAndBootstrap;
- (void)_onLocationAndPrivacyReset:(BOOL)a3;
- (void)_registerForAvengerScanner;
- (void)_registerForTATrackingAvoidanceServiceWithSettings:(id)a3;
- (void)_schedulePeriodicSaveAfterTimeInterval:(double)a3;
- (void)_setState:(unint64_t)a3;
- (void)_unregisterForAvengerScanner;
- (void)_unregisterForTATrackingAvoidanceService;
- (void)addDataSource:(id)a3;
- (void)addObserver:(id)a3;
- (void)fetchTAUnknownBeacon:(id)a3 withCompletion:(id)a4;
- (void)ingestTAEvent:(id)a3;
- (void)notifyObserversOfStateChangeFrom:(unint64_t)a3 to:(unint64_t)a4;
- (void)onUpdatedSettings:(id)a3;
- (void)removeDataSource:(id)a3;
- (void)removeObserver:(id)a3;
- (void)trackingAvoidanceService:(id)a3 didFindSuspiciousDevices:(id)a4;
- (void)trackingAvoidanceService:(id)a3 didStageSuspiciousDevices:(id)a4;
- (void)trackingAvoidanceService:(id)a3 didUnstageSuspiciousDevices:(id)a4;
- (void)visitStateChangedForTrackingAvoidanceService:(id)a3;
@end

@implementation TATrackingAvoidanceServiceManager

- (TATrackingAvoidanceServiceManager)initWithQueue:(id)a3 settings:(id)a4
{
  v7 = a3;
  v8 = a4;
  v30.receiver = self;
  v30.super_class = TATrackingAvoidanceServiceManager;
  v9 = [(TATrackingAvoidanceServiceManager *)&v30 init];
  if (v9)
  {
    TARegisterLogs();
    objc_storeStrong(&v9->_queue, a3);
    v10 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
    observers = v9->_observers;
    v9->_observers = v10;

    v12 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
    dataSources = v9->_dataSources;
    v9->_dataSources = v12;

    service = v9->_service;
    v9->_service = 0;

    v9->_state = 0;
    v15 = objc_alloc_init(TATrackingAvoidanceServiceStateContext);
    stateContext = v9->_stateContext;
    v9->_stateContext = v15;

    v17 = [TAPersistenceManager alloc];
    v18 = [v8 persistenceManagerSettings];
    v19 = [(TAPersistenceManager *)v17 initWithSettings:v18];
    persistenceManager = v9->_persistenceManager;
    v9->_persistenceManager = v19;

    v21 = [MEMORY[0x277CCAD78] UUID];
    sessionID = v9->_sessionID;
    v9->_sessionID = v21;

    v23 = [TAAnalyticsManager alloc];
    v24 = [v8 analyticsManagerSettings];
    v25 = [(TAAnalyticsManager *)v23 initWithSettings:v24];
    analyticsManager = v9->_analyticsManager;
    v9->_analyticsManager = v25;

    v27 = objc_alloc_init(MEMORY[0x277D01280]);
    routineManager = v9->_routineManager;
    v9->_routineManager = v27;

    [(TATrackingAvoidanceServiceManager *)v9 addObserver:v9];
    [(TATrackingAvoidanceServiceManager *)v9 addObserver:v9->_analyticsManager];
    [(TAPersistenceManager *)v9->_persistenceManager addObserver:v9->_analyticsManager];
    [(TATrackingAvoidanceServiceManager *)v9 onUpdatedSettings:v8];
  }

  return v9;
}

- (void)_onLocationAndPrivacyReset:(BOOL)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = TAStatusLog;
  if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
  {
    v6[0] = 68289026;
    v6[1] = 0;
    v7 = 2082;
    v8 = "";
    _os_log_impl(&dword_26F2E2000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#ut received location and privacy reset notification. Resetting persistence store and restarting service.}", v6, 0x12u);
  }

  [(TAPersistenceManager *)self->_persistenceManager reset];
  [(TATrackingAvoidanceServiceStateContext *)self->_stateContext setRestartRequired:1];
  [(TATrackingAvoidanceServiceManager *)self _handleStateUpdateIfNecessary];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)onUpdatedSettings:(id)a3
{
  v5 = a3;
  if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
  {
    [(TATrackingAvoidanceServiceManager *)v5 onUpdatedSettings:?];
  }

  if (!self->_serviceSettings || ([v5 isEqual:?] & 1) == 0)
  {
    objc_storeStrong(&self->_serviceSettings, a3);
    [(TATrackingAvoidanceServiceStateContext *)self->_stateContext setServiceEnabled:[(TASettings *)self->_serviceSettings trackingAvoidanceEnabled]];
    v6 = [(TATrackingAvoidanceServiceStateContext *)self->_stateContext serviceEnabled];
    v7 = os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG);
    if (v6)
    {
      if (v7)
      {
        [TATrackingAvoidanceServiceManager onUpdatedSettings:];
      }
    }

    else if (v7)
    {
      [TATrackingAvoidanceServiceManager onUpdatedSettings:];
    }

    [(TATrackingAvoidanceServiceStateContext *)self->_stateContext setRestartRequired:v6];
  }

  [(TATrackingAvoidanceServiceManager *)self _handleStateUpdateIfNecessary];
}

- (BOOL)_shouldTerminateService
{
  if (![(TATrackingAvoidanceServiceStateContext *)self->_stateContext serviceEnabled]|| [(TATrackingAvoidanceServiceStateContext *)self->_stateContext airplaneMode]|| ![(TATrackingAvoidanceServiceStateContext *)self->_stateContext locationServicesEnabled]|| !self->_serviceSettings || ![(TATrackingAvoidanceServiceStateContext *)self->_stateContext allowSimulatedEvents]&& [(TATrackingAvoidanceServiceStateContext *)self->_stateContext locationSimulationInProgress]|| ![(TATrackingAvoidanceServiceStateContext *)self->_stateContext deviceUnlockedSinceBoot]|| [(TATrackingAvoidanceServiceStateContext *)self->_stateContext hasKoreaCountryCode])
  {
    return 1;
  }

  stateContext = self->_stateContext;

  return [(TATrackingAvoidanceServiceStateContext *)stateContext userLocationInsideKorea];
}

- (void)_handleStateUpdateIfNecessary
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [TATrackingAvoidanceServiceManager managerStateToString:0];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_1(&dword_26F2E2000, v3, v4, "#ut no state update necessary at %@ state", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_setState:(unint64_t)a3
{
  if (self->_state != a3)
  {
    self->_state = a3;
  }
}

- (void)_changeSession
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAD78] UUID];
  v4 = TAStatusLog;
  if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
  {
    sessionID = self->_sessionID;
    v6 = v4;
    v7 = [(NSUUID *)sessionID UUIDString];
    v8 = [v7 UTF8String];
    v9 = [(NSUUID *)v3 UUIDString];
    v12[0] = 68289538;
    v12[1] = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2082;
    v16 = v8;
    v17 = 2082;
    v18 = [v9 UTF8String];
    _os_log_impl(&dword_26F2E2000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ut session change, oldSessionID:%{public}s, newSessionID:%{public}s}", v12, 0x26u);
  }

  v10 = self->_sessionID;
  self->_sessionID = v3;

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_registerForTATrackingAvoidanceServiceWithSettings:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!self->_service)
  {
    v5 = [[TATrackingAvoidanceService alloc] initWithTASettings:v4];
    service = self->_service;
    self->_service = v5;

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = self->_observers;
    v8 = [(NSHashTable *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      do
      {
        v11 = 0;
        do
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [(TATrackingAvoidanceService *)self->_service addObserver:*(*(&v13 + 1) + 8 * v11++), v13];
        }

        while (v9 != v11);
        v9 = [(NSHashTable *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }

    [(TATrackingAvoidanceServiceManager *)self _changeSession];
    [(TATrackingAvoidanceServiceManager *)self _loadAndBootstrap];
    [(TATrackingAvoidanceServiceManager *)self _fetchAndIngestLastVisit];
    [(TASettings *)self->_serviceSettings persistenceInterval];
    [(TATrackingAvoidanceServiceManager *)self _schedulePeriodicSaveAfterTimeInterval:?];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_unregisterForTATrackingAvoidanceService
{
  v15 = *MEMORY[0x277D85DE8];
  if (self->_service)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v3 = self->_observers;
    v4 = [(NSHashTable *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v11;
      do
      {
        v7 = 0;
        do
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [(TATrackingAvoidanceService *)self->_service removeObserver:*(*(&v10 + 1) + 8 * v7++), v10];
        }

        while (v5 != v7);
        v5 = [(NSHashTable *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v5);
    }

    [(TATrackingAvoidanceServiceManager *)self _changeSession];
    service = self->_service;
    self->_service = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_fetchAndIngestLastVisit
{
  v3 = objc_alloc(MEMORY[0x277D01340]);
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D01470]];
  v5 = [v3 initWithAscending:0 confidence:v4 dateInterval:0 labelVisit:1 limit:&unk_287F6FF98];

  v6 = [(TATrackingAvoidanceServiceManager *)self routineManager];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__TATrackingAvoidanceServiceManager__fetchAndIngestLastVisit__block_invoke;
  v7[3] = &unk_279DD1DB8;
  v7[4] = self;
  [v6 fetchStoredVisitsWithOptions:v5 handler:v7];
}

void __61__TATrackingAvoidanceServiceManager__fetchAndIngestLastVisit__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__TATrackingAvoidanceServiceManager__fetchAndIngestLastVisit__block_invoke_2;
  v7[3] = &unk_279DD1D90;
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void __61__TATrackingAvoidanceServiceManager__fetchAndIngestLastVisit__block_invoke_2(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2 && [v2 count])
  {
    v3 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v25 = 68289283;
      v26 = 0;
      v27 = 2082;
      v28 = "";
      v29 = 2117;
      v30 = v4;
      _os_log_impl(&dword_26F2E2000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#manager:visit got last visit, visits:%{sensitive}@}", &v25, 0x1Cu);
    }

    v5 = [*(a1 + 32) firstObject];
    v6 = [v5 location];
    [v6 latitude];
    v8 = v7;
    v9 = [v5 location];
    [v9 longitude];
    v11 = CLLocationCoordinate2DMake(v8, v10);

    v12 = [TACLVisit alloc];
    v13 = [v5 location];
    [v13 horizontalUncertainty];
    v15 = v14;
    v16 = [v5 entry];
    v17 = [v5 exit];
    v18 = [v5 date];
    v19 = [(TACLVisit *)v12 initWithCoordinate:v16 horizontalAccuracy:v17 arrivalDate:v18 departureDate:2 detectionDate:v11.latitude confidence:v11.longitude, v15];

    v20 = [*(a1 + 40) service];

    if (v20)
    {
      v21 = [*(a1 + 40) service];
      [v21 ingestTAEvent:v19];
    }

    else
    {
      v23 = TAStatusLog;
      if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
      {
        v25 = 68289026;
        v26 = 0;
        v27 = 2082;
        v28 = "";
        _os_log_impl(&dword_26F2E2000, v23, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#manager:visit not ingesting TAEvent as TA service is down}", &v25, 0x12u);
      }
    }
  }

  else
  {
    v22 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
    {
      v25 = 68289026;
      v26 = 0;
      v27 = 2082;
      v28 = "";
      _os_log_impl(&dword_26F2E2000, v22, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#manager:visit no last visit to bootstrap onto}", &v25, 0x12u);
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)_fetchAndIngestNextPredictedLocationOfInterestWithCurrentVisitState
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = [(TATrackingAvoidanceServiceManager *)self service];
  v4 = [v3 store];
  v5 = [v4 visitState];
  v6 = [v5 getLatestValidVisit];

  v7 = [(TATrackingAvoidanceServiceManager *)self service];
  v8 = [v7 store];
  v9 = [v8 clock];

  if (v6 && v9)
  {
    v10 = objc_alloc(MEMORY[0x277CE41F8]);
    [v6 coordinate];
    v12 = v11;
    v14 = v13;
    [v6 horizontalAccuracy];
    v16 = v15;
    v17 = [v6 detectionDate];
    v18 = [v10 initWithCoordinate:v17 altitude:v12 horizontalAccuracy:v14 verticalAccuracy:0.0 timestamp:{v16, -1.0}];

    [(TATrackingAvoidanceServiceManager *)self _fetchAndIngestNextPredictedLocationOfInterestFromLocation:v18 startDate:v9 interval:7200.0];
  }

  else
  {
    v19 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
    {
      v21[0] = 68289539;
      v21[1] = 0;
      v22 = 2082;
      v23 = "";
      v24 = 2117;
      v25 = v6;
      v26 = 2113;
      v27 = v9;
      _os_log_impl(&dword_26F2E2000, v19, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#manager:nextPLOI missing required info to query, latestVisit:%{sensitive}@, startDate:%{private}@}", v21, 0x26u);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_fetchAndIngestNextPredictedLocationOfInterestFromLocation:(id)a3 startDate:(id)a4 interval:(double)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(TATrackingAvoidanceServiceManager *)self routineManager];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __115__TATrackingAvoidanceServiceManager__fetchAndIngestNextPredictedLocationOfInterestFromLocation_startDate_interval___block_invoke;
  v11[3] = &unk_279DD1DB8;
  v11[4] = self;
  [v10 fetchNextPredictedLocationsOfInterestFromLocation:v9 startDate:v8 timeInterval:v11 withHandler:a5];
}

void __115__TATrackingAvoidanceServiceManager__fetchAndIngestNextPredictedLocationOfInterestFromLocation_startDate_interval___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __115__TATrackingAvoidanceServiceManager__fetchAndIngestNextPredictedLocationOfInterestFromLocation_startDate_interval___block_invoke_2;
  v7[3] = &unk_279DD1D90;
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void __115__TATrackingAvoidanceServiceManager__fetchAndIngestNextPredictedLocationOfInterestFromLocation_startDate_interval___block_invoke_2(uint64_t a1)
{
  v52 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if (v1 && [v1 count])
  {
    v2 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      buf = 68289283;
      v48 = 2082;
      v49 = "";
      v50 = 2117;
      v51 = v3;
      _os_log_impl(&dword_26F2E2000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#manager:nextPLOI got nextPLOI, nextPLOI:%{sensitive}@}", &buf, 0x1Cu);
    }

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    obj = *(a1 + 32);
    v4 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
    if (v4)
    {
      v6 = v4;
      v7 = *v43;
      *&v5 = 68289283;
      v33 = v5;
      do
      {
        v8 = 0;
        v35 = v6;
        do
        {
          if (*v43 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v42 + 1) + 8 * v8);
          [v9 confidence];
          if (v10 >= 1.0)
          {
            v12 = [v9 locationOfInterest];
            v38 = +[TALocationOfInterest convertRTToTALocationOfInterestType:](TALocationOfInterest, "convertRTToTALocationOfInterestType:", [v12 type]);

            v37 = [TAPredictedLocationOfInterest alloc];
            v41 = [v9 locationOfInterest];
            v40 = [v41 location];
            [v40 latitude];
            v14 = v13;
            v39 = [v9 locationOfInterest];
            v15 = [v39 location];
            [v15 longitude];
            v17 = v16;
            v18 = [v9 locationOfInterest];
            v19 = [v18 location];
            [v19 horizontalUncertainty];
            v21 = v20;
            v22 = [v9 locationOfInterest];
            v23 = [v22 location];
            v24 = [v23 referenceFrame];
            [v9 confidence];
            v26 = v25;
            v27 = [v9 nextEntryTime];
            v28 = [MEMORY[0x277CBEAA8] date];
            v29 = [(TAPredictedLocationOfInterest *)v37 initWithType:v38 latitude:v24 longitude:v27 horizontalAccuracy:v28 referenceFrame:v14 confidence:v17 nextEntryTime:v21 date:v26];

            v30 = [*(a1 + 40) service];
            [v30 ingestTAEvent:v29];

            v6 = v35;
          }

          else
          {
            v11 = TAStatusLog;
            if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
            {
              buf = v33;
              v48 = 2082;
              v49 = "";
              v50 = 2117;
              v51 = v9;
              _os_log_impl(&dword_26F2E2000, v11, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#manager:nextPLOI ignoring low confidence PLOI, nextPLOI:%{sensitive}@}", &buf, 0x1Cu);
            }
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
      }

      while (v6);
    }
  }

  else
  {
    v31 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
    {
      buf = 68289026;
      v48 = 2082;
      v49 = "";
      _os_log_impl(&dword_26F2E2000, v31, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#manager:nextPLOI no next PLOI}", &buf, 0x12u);
    }
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (void)_registerForAvengerScanner
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = self->_dataSources;
  v3 = [(NSHashTable *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 registerForAvengerScanner];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [(NSHashTable *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_unregisterForAvengerScanner
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = self->_dataSources;
  v3 = [(NSHashTable *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 unregisterForAvengerScanner];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [(NSHashTable *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)notifyObserversOfStateChangeFrom:(unint64_t)a3 to:(unint64_t)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = self->_dataSources;
  v7 = [(NSHashTable *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 onManagerStateChangeFrom:a3 to:{a4, v13}];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSHashTable *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_loadAndBootstrap
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = os_transaction_create();
  if (![(TAPersistenceManager *)self->_persistenceManager load])
  {
    v13 = TAStatusLog;
    if (!os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    v18 = 68289026;
    v19 = 0;
    v20 = 2082;
    v21 = "";
    v14 = "{msg%{public}.0s:#manager:persistence failed to load persistence store, aborting bootstrap}";
    v15 = v13;
    v16 = OS_LOG_TYPE_ERROR;
LABEL_10:
    _os_log_impl(&dword_26F2E2000, v15, v16, v14, &v18, 0x12u);
    goto LABEL_11;
  }

  v4 = [(TAPersistenceManager *)self->_persistenceManager store];
  v5 = [v4 deviceRecord];

  v6 = TAStatusLog;
  if (!v5)
  {
    if (!os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_11;
    }

    v18 = 68289026;
    v19 = 0;
    v20 = 2082;
    v21 = "";
    v14 = "{msg%{public}.0s:#manager:persistence no device record to bootstrap onto}";
    v15 = v6;
    v16 = OS_LOG_TYPE_DEBUG;
    goto LABEL_10;
  }

  if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 68289026;
    v19 = 0;
    v20 = 2082;
    v21 = "";
    _os_log_impl(&dword_26F2E2000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#manager:persistence bootstrapping onto loaded store}", &v18, 0x12u);
  }

  service = self->_service;
  v8 = [(TAPersistenceManager *)self->_persistenceManager store];
  v9 = [v8 deviceRecord];
  [(TATrackingAvoidanceService *)service bootstrapDeviceRecord:v9];

  v10 = self->_service;
  v11 = [(TAPersistenceManager *)self->_persistenceManager store];
  v12 = [v11 visitState];
  [(TATrackingAvoidanceService *)v10 bootstrapVisitState:v12];

LABEL_11:
  v17 = *MEMORY[0x277D85DE8];
}

- (void)_fetchStoreAndSave
{
  v5 = os_transaction_create();
  persistenceManager = self->_persistenceManager;
  v4 = [(TATrackingAvoidanceService *)self->_service store];
  [(TAPersistenceManager *)persistenceManager onUpdatedTAStore:v4];

  [(TAPersistenceManager *)self->_persistenceManager save];
  [(TATrackingAvoidanceServiceManager *)self _setLastSaveTime];
}

- (void)_schedulePeriodicSaveAfterTimeInterval:(double)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = TAStatusLog;
  if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
  {
    sessionID = self->_sessionID;
    v7 = v5;
    v8 = [(NSUUID *)sessionID UUIDString];
    *buf = 68289538;
    v18 = 0;
    v19 = 2082;
    v20 = "";
    v21 = 2050;
    v22 = a3;
    v23 = 2082;
    v24 = [v8 UTF8String];
    _os_log_impl(&dword_26F2E2000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#manager:persistence scheduling save, interval:%{public}f, currentSession:%{public}s}", buf, 0x26u);
  }

  v9 = self->_sessionID;
  v10 = dispatch_time(0, (a3 * 1000000000.0));
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__TATrackingAvoidanceServiceManager__schedulePeriodicSaveAfterTimeInterval___block_invoke;
  block[3] = &unk_279DD1DE0;
  v16 = a3;
  block[4] = self;
  v15 = v9;
  v12 = v9;
  dispatch_after(v10, queue, block);

  v13 = *MEMORY[0x277D85DE8];
}

void __76__TATrackingAvoidanceServiceManager__schedulePeriodicSaveAfterTimeInterval___block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  v2 = TAStatusLog;
  if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 48);
    v27 = 68289282;
    v28 = 0;
    v29 = 2082;
    v30 = "";
    v31 = 2050;
    v32 = v3;
    _os_log_impl(&dword_26F2E2000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#manager:persistence begin scheduled save, interval:%{public}f}", &v27, 0x1Cu);
  }

  if ([*(*(a1 + 32) + 80) isEqual:*(a1 + 40)])
  {
    if (*(*(a1 + 32) + 8) == 1)
    {
      mach_continuous_time();
      v4 = *(*(a1 + 32) + 72);
      TMConvertTicksToSeconds();
      v6 = v5;
      [*(*(a1 + 32) + 48) persistenceInterval];
      if (v6 >= v7)
      {
        v21 = TAStatusLog;
        if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
        {
          v22 = *(*(a1 + 32) + 48);
          v23 = v21;
          [v22 persistenceInterval];
          v27 = 68289282;
          v28 = 0;
          v29 = 2082;
          v30 = "";
          v31 = 2050;
          v32 = v24;
          _os_log_impl(&dword_26F2E2000, v23, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#manager:persistence save and schedule next save, secondsToNextSave:%{public}f}", &v27, 0x1Cu);
        }

        [*(a1 + 32) _fetchStoreAndSave];
        v25 = *(a1 + 32);
        [v25[6] persistenceInterval];
        v11 = v25;
      }

      else
      {
        [*(*(a1 + 32) + 48) persistenceInterval];
        v9 = v8 - v6;
        v10 = TAStatusLog;
        if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
        {
          v27 = 68289282;
          v28 = 0;
          v29 = 2082;
          v30 = "";
          v31 = 2050;
          v32 = v9;
          _os_log_impl(&dword_26F2E2000, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#manager:persistence push out save schedule, secondsToNextSave:%{public}f}", &v27, 0x1Cu);
        }

        v11 = *(a1 + 32);
        v12 = v9;
      }

      [v11 _schedulePeriodicSaveAfterTimeInterval:v12];
    }

    else
    {
      v20 = TAStatusLog;
      if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
      {
        v27 = 68289026;
        v28 = 0;
        v29 = 2082;
        v30 = "";
        _os_log_impl(&dword_26F2E2000, v20, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#manager:persistence scheduled save running but not in running state, discontinuing scheduled saves}", &v27, 0x12u);
      }
    }
  }

  else
  {
    v13 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
    {
      v14 = *(*(a1 + 32) + 80);
      v15 = v13;
      v16 = [v14 UUIDString];
      *&v17 = COERCE_DOUBLE([v16 UTF8String]);
      v18 = [*(a1 + 40) UUIDString];
      v19 = [v18 UTF8String];
      v27 = 68289538;
      v28 = 0;
      v29 = 2082;
      v30 = "";
      v31 = 2082;
      v32 = *&v17;
      v33 = 2082;
      v34 = v19;
      _os_log_impl(&dword_26F2E2000, v15, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#manager:persistence canceling scheduled save due to session change, currentSession:%{public}s, sessionAtTimeOfSchedule:%{public}s}", &v27, 0x26u);
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)addObserver:(id)a3
{
  v5 = a3;
  [(NSHashTable *)self->_observers addObject:?];
  service = self->_service;
  if (service)
  {
    [(TATrackingAvoidanceService *)service addObserver:v5];
  }
}

- (void)removeObserver:(id)a3
{
  v5 = a3;
  [(NSHashTable *)self->_observers removeObject:?];
  service = self->_service;
  if (service)
  {
    [(TATrackingAvoidanceService *)service addObserver:v5];
  }
}

- (void)ingestTAEvent:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = v4;
    v6 = [v5 systemStateType];
    if (v6 > 9)
    {
      if (v6 <= 11)
      {
        if (v6 == 10)
        {
          -[TATrackingAvoidanceServiceManager _onAllowSimulatedEvents:](self, "_onAllowSimulatedEvents:", [v5 isOn]);
        }

        else
        {
          -[TATrackingAvoidanceServiceManager _onDeviceUnlockedSinceBoot:](self, "_onDeviceUnlockedSinceBoot:", [v5 isOn]);
        }
      }

      else
      {
        switch(v6)
        {
          case 12:
            -[TATrackingAvoidanceServiceManager _onLocationAndPrivacyReset:](self, "_onLocationAndPrivacyReset:", [v5 isOn]);
            break;
          case 13:
            -[TATrackingAvoidanceServiceManager _onHasKoreaCountryCode:](self, "_onHasKoreaCountryCode:", [v5 isOn]);
            break;
          case 14:
            -[TATrackingAvoidanceServiceManager _onUserLocationInsideKorea:](self, "_onUserLocationInsideKorea:", [v5 isOn]);
            break;
        }
      }
    }

    else if (v6 <= 6)
    {
      if (v6 == 3)
      {
        -[TATrackingAvoidanceServiceManager _onAirplaneMode:](self, "_onAirplaneMode:", [v5 isOn]);
      }

      else if (v6 == 4)
      {
        -[TATrackingAvoidanceServiceManager _onBatterySaverMode:](self, "_onBatterySaverMode:", [v5 isOn]);
      }
    }

    else if (v6 == 7)
    {
      -[TATrackingAvoidanceServiceManager _onHighThermalState:](self, "_onHighThermalState:", [v5 isOn]);
    }

    else if (v6 == 8)
    {
      -[TATrackingAvoidanceServiceManager _onLocationServicesEnabled:](self, "_onLocationServicesEnabled:", [v5 isOn]);
    }

    else
    {
      -[TATrackingAvoidanceServiceManager _onLocationSimulationInProgress:](self, "_onLocationSimulationInProgress:", [v5 isOn]);
    }
  }

  service = self->_service;
  if (service)
  {
    [(TATrackingAvoidanceService *)service ingestTAEvent:v4];
  }

  else if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
  {
    [TATrackingAvoidanceServiceManager ingestTAEvent:];
  }
}

- (void)fetchTAUnknownBeacon:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  service = self->_service;
  if (service)
  {
    [(TATrackingAvoidanceService *)service fetchTAUnknownBeacon:v6 withCompletion:v7];
  }

  else if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
  {
    [TATrackingAvoidanceServiceManager fetchTAUnknownBeacon:withCompletion:];
  }
}

- (void)addDataSource:(id)a3
{
  v4 = a3;
  [(NSHashTable *)self->_dataSources addObject:v4];
  if (objc_opt_respondsToSelector())
  {
    [v4 registerForLeechedEvents];
  }

  if (self->_state == 1 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v4 registerForAvengerScanner];
  }

  MEMORY[0x2821F9730]();
}

- (void)removeDataSource:(id)a3
{
  v6 = a3;
  if (objc_opt_respondsToSelector())
  {
    [v6 unregisterForLeechedEvents];
  }

  v4 = v6;
  if (self->_state == 1)
  {
    v5 = objc_opt_respondsToSelector();
    v4 = v6;
    if (v5)
    {
      [v6 unregisterForAvengerScanner];
      v4 = v6;
    }
  }

  [(NSHashTable *)self->_dataSources removeObject:v4];
}

- (void)trackingAvoidanceService:(id)a3 didFindSuspiciousDevices:(id)a4
{
  v10 = *MEMORY[0x277D85DE8];
  if ([a4 count])
  {
    v5 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
    {
      v7[0] = 68289026;
      v7[1] = 0;
      v8 = 2082;
      v9 = "";
      _os_log_impl(&dword_26F2E2000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#manager:persistence didFindSuspiciousDevices called, saving state}", v7, 0x12u);
    }

    [(TATrackingAvoidanceServiceManager *)self _fetchStoreAndSave];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)trackingAvoidanceService:(id)a3 didStageSuspiciousDevices:(id)a4
{
  v10 = *MEMORY[0x277D85DE8];
  if ([a4 count])
  {
    v5 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
    {
      v7[0] = 68289026;
      v7[1] = 0;
      v8 = 2082;
      v9 = "";
      _os_log_impl(&dword_26F2E2000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#manager:persistence didStageSuspiciousDevices called, saving state}", v7, 0x12u);
    }

    [(TATrackingAvoidanceServiceManager *)self _fetchStoreAndSave];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)trackingAvoidanceService:(id)a3 didUnstageSuspiciousDevices:(id)a4
{
  v10 = *MEMORY[0x277D85DE8];
  if ([a4 count])
  {
    v5 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
    {
      v7[0] = 68289026;
      v7[1] = 0;
      v8 = 2082;
      v9 = "";
      _os_log_impl(&dword_26F2E2000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#manager:persistence didUnstageSuspiciousDevices called, saving state}", v7, 0x12u);
    }

    [(TATrackingAvoidanceServiceManager *)self _fetchStoreAndSave];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)visitStateChangedForTrackingAvoidanceService:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = TAStatusLog;
  if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 68289026;
    v6[1] = 0;
    v7 = 2082;
    v8 = "";
    _os_log_impl(&dword_26F2E2000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#manager:persistence visitStateChangedForTrackingAvoidanceService called, saving state}", v6, 0x12u);
  }

  [(TATrackingAvoidanceServiceManager *)self _fetchStoreAndSave];
  [(TATrackingAvoidanceServiceManager *)self _fetchAndIngestNextPredictedLocationOfInterestWithCurrentVisitState];
  v5 = *MEMORY[0x277D85DE8];
}

+ (id)managerStateToString:(unint64_t)a3
{
  if (a3 > 2)
  {
    return @"UnknownState";
  }

  else
  {
    return off_279DD1E00[a3];
  }
}

- (void)onUpdatedSettings:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 48);
  OUTLINED_FUNCTION_3();
  v7 = 2113;
  v8 = v3;
  _os_log_debug_impl(&dword_26F2E2000, v4, OS_LOG_TYPE_DEBUG, "#ut new settings %{private}@, old settings %{private}@", v6, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

@end