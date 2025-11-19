@interface SAMonitoringSessionManager
+ (id)convertSAMonitoringSessionStateToString:(unint64_t)a3;
- (BOOL)_isOnlyMonitoringCompanionDevice;
- (BOOL)_isOnlyMonitoringDisconnectedCompanionDevice;
- (BOOL)addTravelFenceForDevice:(id)a3;
- (BOOL)allDevicesInSafeLocation;
- (BOOL)anyDeviceInUnsafeLocation;
- (BOOL)checkIfAlertWasTriggeredAtHome:(id)a3 isEarlyVehicularTrigger:(BOOL)a4;
- (BOOL)checkIfCloseToAnySafeLocations:(id)a3 leftBehindLocation:(id)a4;
- (BOOL)enoughTimeHasPassedBeforeSurfacingAlert:(id)a3 forAlertForDevice:(id)a4 alertType:(unint64_t)a5;
- (BOOL)isAnyInTrackedInUnsafeLocation;
- (BOOL)isAnyTrackedWhileTraveling;
- (BOOL)isWithinCurrentVisitOrLOI:(id)a3;
- (BOOL)monitoringSessionState:(unint64_t)a3 matchesWithScenarioClass:(unint64_t)a4;
- (BOOL)needPeriodicScan;
- (BOOL)shouldIssueBookendedNotificationBasedOnLocationForDevice:(id)a3;
- (BOOL)shouldIssueBookendedNotificationBasedOnTimeForDevice:(id)a3;
- (BOOL)shouldIssueBookendedNotificationForDevice:(id)a3;
- (BOOL)shouldSuppressBudsAlertDueToCaseLeashedNotAdv:(id)a3;
- (BOOL)shouldSuppressDueToHELEAdvertisingLimit:(id)a3;
- (BOOL)shouldSuppressDueToRepeatedAlertsInOneTravelingSession:(id)a3 context:(id)a4;
- (SAMonitoringSessionManager)initWithWithYouDetector:(id)a3 fenceRequestServicer:(id)a4 fenceManager:(id)a5 travelTypeClassifier:(id)a6 clock:(id)a7 deviceRecord:(id)a8 analytics:(id)a9 persistenceManager:(id)a10 audioAccessoryManager:(id)a11;
- (double)minimumTimeSinceScenarioTransitionForAlertForDeviceUUID:(id)a3 alertType:(unint64_t)a4;
- (double)timeDelayForRetryScanForAlertForDeviceUUID:(id)a3 alertType:(unint64_t)a4;
- (id)computeRemovedSafeLocations:(id)a3;
- (id)createLocationFromCircularRegion:(id)a3 forDevice:(id)a4 withContext:(unint64_t)a5;
- (id)getLastScenarioChangeDateAmongAllDevices;
- (int64_t)checkInEarStatus:(id)a3;
- (int64_t)determineTrackedTravelingCount;
- (int64_t)earlyVehicularTriggerForDeviceUUID:(id)a3;
- (int64_t)isBudPartID:(int64_t)a3 inCasePartID:(int64_t)a4 relationStatus:(int64_t)a5;
- (unint64_t)getMoreSpecificSADeviceType:(id)a3;
- (unint64_t)scenarioClassForDeviceUUID:(id)a3;
- (unint64_t)stateForDeviceUUID:(id)a3;
- (void)addClient:(id)a3;
- (void)addDevicesIfNeededPerEvent:(id)a3;
- (void)addDisableReason:(unint64_t)a3;
- (void)alarmFiredForUUID:(id)a3;
- (void)attemptToPopulateTrackedTravelingStartLocationForDevice:(id)a3;
- (void)bootstrapMonitoringSessionRecord:(id)a3;
- (void)cancelMonitoringDevice:(id)a3;
- (void)changeMonitoringSessionState:(id)a3 toState:(unint64_t)a4;
- (void)checkForDevicesNeedingTransition;
- (void)checkReunion:(unint64_t)a3 to:(unint64_t)a4 forDeviceWithUUID:(id)a5;
- (void)configureBackgroundScanning;
- (void)createMonitoringDevice:(id)a3;
- (void)didChangeScenarioClassFrom:(unint64_t)a3 to:(unint64_t)a4 forDevice:(id)a5;
- (void)didChangeTravelTypeFrom:(unint64_t)a3 to:(unint64_t)a4 hints:(unint64_t)a5;
- (void)didForceUpdateWithYouStatus;
- (void)forceStandbyMode:(id)a3;
- (void)handleGeofenceEvent:(id)a3;
- (void)handleGeofenceExitedForDeviceUUID:(id)a3;
- (void)handleMultiPartStatusEvent:(id)a3;
- (void)handleSeparationForDeviceUUID:(id)a3 withSafeLocationRecommendation:(id)a4 context:(id)a5;
- (void)handleSystemStateChanged:(id)a3;
- (void)ingestTAEvent:(id)a3;
- (void)notifyEarlyLeftBehind:(id)a3;
- (void)notifyWhenLeftBehind:(id)a3;
- (void)removeAndStopSafeLocationsForDeviceUUID:(id)a3;
- (void)removeClient:(id)a3;
- (void)removeDevicesIfNeededPerEvent:(id)a3;
- (void)removeDisableReason:(unint64_t)a3;
- (void)removeSafeLocation:(id)a3 forDeviceUUID:(id)a4;
- (void)removeTravelFenceForDevice:(id)a3;
- (void)requestToFetchLastVisit;
- (void)requestToStartBackgroundScanning;
- (void)requestToStopBackgroundScanning;
- (void)scheduleNextForceUpdateWithYouStatusFromReferenceDate:(id)a3 forAlertForDevice:(id)a4 alertType:(unint64_t)a5;
- (void)scheduleNextPersistenceWrite;
- (void)setEnabled:(BOOL)a3;
- (void)setSafeLocations:(id)a3 forDeviceUUID:(id)a4;
- (void)setUpTravelingGeofencesOnAirplaneModeToggleOffIfNeeded;
- (void)startPeriodicScans;
- (void)startPeriodicScansIfNeeded;
- (void)startSafeLocation:(id)a3 forDevice:(id)a4;
- (void)stopPeriodicScans;
- (void)stopPeriodicScansIfNotNeeded;
- (void)stopSafeLocation:(id)a3 forDevice:(id)a4;
- (void)storeSeparationLocation:(id)a3;
- (void)updateDevicesWithSafeLocations:(id)a3;
- (void)updateLocation:(id)a3;
- (void)updateSafeLocations:(id)a3;
- (void)updatedWithYouStatusFrom:(unint64_t)a3 to:(unint64_t)a4 forDeviceWithUUID:(id)a5;
@end

@implementation SAMonitoringSessionManager

- (SAMonitoringSessionManager)initWithWithYouDetector:(id)a3 fenceRequestServicer:(id)a4 fenceManager:(id)a5 travelTypeClassifier:(id)a6 clock:(id)a7 deviceRecord:(id)a8 analytics:(id)a9 persistenceManager:(id)a10 audioAccessoryManager:(id)a11
{
  v53 = a3;
  v52 = a4;
  v51 = a5;
  v48 = a6;
  v50 = a7;
  v49 = a8;
  v47 = a9;
  v46 = a10;
  v45 = a11;
  v54.receiver = self;
  v54.super_class = SAMonitoringSessionManager;
  v18 = [(SAMonitoringSessionManager *)&v54 init];
  v19 = v18;
  if (!v18)
  {
    goto LABEL_8;
  }

  v20 = 0;
  if (v53 && v52 && v51 && v50 && v49)
  {
    *&v18->_enabled = 0;
    objc_storeStrong(&v18->_clock, a7);
    objc_storeStrong(&v19->_analytics, a9);
    objc_storeStrong(&v19->_withYouDetector, a3);
    v21 = [(SAMonitoringSessionManager *)v19 withYouDetector];
    [v21 addClient:v19];

    objc_storeStrong(&v19->_deviceRecord, a8);
    objc_storeStrong(&v19->_fenceManager, a5);
    objc_storeStrong(&v19->_fenceRequestServicer, a4);
    objc_storeStrong(&v19->_travelTypeClassifier, a6);
    v22 = [(SAMonitoringSessionManager *)v19 travelTypeClassifier];
    [v22 addClient:v19];

    v23 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
    clients = v19->_clients;
    v19->_clients = v23;

    objc_storeStrong(&v19->_persistenceManager, a10);
    objc_storeStrong(&v19->_audioAccessoryManager, a11);
    v25 = objc_alloc_init(MEMORY[0x277CBEB38]);
    devices = v19->_devices;
    v19->_devices = v25;

    v27 = objc_alloc_init(MEMORY[0x277CBEB38]);
    safeLocations = v19->_safeLocations;
    v19->_safeLocations = v27;

    v29 = objc_alloc_init(MEMORY[0x277CBEB38]);
    deviceUUIDtoSafeLocationUUIDs = v19->_deviceUUIDtoSafeLocationUUIDs;
    v19->_deviceUUIDtoSafeLocationUUIDs = v29;

    v19->_requestedPeriodicScan = 0;
    timeOfAttemptToLoadFromPersistence = v19->_timeOfAttemptToLoadFromPersistence;
    v19->_timeOfAttemptToLoadFromPersistence = 0;

    [(SAMonitoringSessionManager *)v19 addDisableReason:64];
    [(SAMonitoringSessionManager *)v19 addDisableReason:128];
    [(SAMonitoringSessionManager *)v19 addDisableReason:1];
    [(SAMonitoringSessionManager *)v19 addDisableReason:2];
    v32 = objc_alloc_init(MEMORY[0x277CBEB38]);
    caLastAlertDate = v19->_caLastAlertDate;
    v19->_caLastAlertDate = v32;

    v19->_caBroughtOutOnTravel = -1;
    v19->_caCurrentVehicularState = 0;
    v19->_caIsVehicularBTHintOn = 0;
    v34 = objc_alloc_init(MEMORY[0x277CBEB38]);
    deviceUUIDtoAlertContext = v19->_deviceUUIDtoAlertContext;
    v19->_deviceUUIDtoAlertContext = v34;

    v36 = objc_alloc_init(MEMORY[0x277CBEB38]);
    deviceUUIDtoMonitoringSession = v19->_deviceUUIDtoMonitoringSession;
    v19->_deviceUUIDtoMonitoringSession = v36;

    nextScheduledAlarmForPersistenceWrite = v19->_nextScheduledAlarmForPersistenceWrite;
    v19->_nextScheduledAlarmForPersistenceWrite = 0;

    currentVisitOrLOIEvent = v19->_currentVisitOrLOIEvent;
    v19->_currentVisitOrLOIEvent = 0;

    v19->_isCompanionConnected = 0;
    v40 = objc_alloc_init(MEMORY[0x277CBEB58]);
    devicesWithToBePopulatedTrackedTravelingStartLocation = v19->_devicesWithToBePopulatedTrackedTravelingStartLocation;
    v19->_devicesWithToBePopulatedTrackedTravelingStartLocation = v40;

    v42 = objc_alloc_init(MEMORY[0x277CBEB58]);
    devicesWithPendingTransition = v19->_devicesWithPendingTransition;
    v19->_devicesWithPendingTransition = v42;

LABEL_8:
    v20 = v19;
  }

  return v20;
}

- (void)requestToStartBackgroundScanning
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = self->_clients;
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
          [v7 startBackgroundScanning];
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

- (void)requestToStopBackgroundScanning
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = self->_clients;
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
          [v7 stopBackgroundScanning];
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

- (void)requestToFetchLastVisit
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = self->_clients;
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
          [v7 fetchLastVisit];
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

- (void)configureBackgroundScanning
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [(SAMonitoringSessionManager *)self enabled];
  v4 = TASALog;
  v5 = os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v7 = 68289026;
      v8 = 0;
      v9 = 2082;
      v10 = "";
      _os_log_impl(&dword_2656EA000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAMonitoringSessionManager request to start scanning}", &v7, 0x12u);
    }

    [(SAMonitoringSessionManager *)self requestToStartBackgroundScanning];
  }

  else
  {
    if (v5)
    {
      v7 = 68289026;
      v8 = 0;
      v9 = 2082;
      v10 = "";
      _os_log_impl(&dword_2656EA000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAMonitoringSessionManager request to stop scanning}", &v7, 0x12u);
    }

    [(SAMonitoringSessionManager *)self requestToStopBackgroundScanning];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)bootstrapMonitoringSessionRecord:(id)a3
{
  v47 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v32 objects:v46 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v33;
    v9 = &TASALog;
    *&v6 = 68289795;
    v30 = v6;
    v31 = v4;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v33 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v32 + 1) + 8 * i);
        v12 = [v4 objectForKeyedSubscript:{v11, v30}];
        v13 = [(SAMonitoringSessionManager *)self fenceManager];
        v14 = [v12 scenarioClassifier];
        [v13 addClient:v14];

        v15 = [(SAMonitoringSessionManager *)self travelTypeClassifier];
        v16 = [v12 scenarioClassifier];
        [v15 addClient:v16];

        v17 = [v12 scenarioClassifier];
        [v17 addClient:self];

        v18 = [(SAMonitoringSessionManager *)self fenceManager];
        v19 = [v12 scenarioClassifier];
        [v19 setDelegate:v18];

        v20 = [(SAMonitoringSessionManager *)self clock];
        v21 = [v12 scenarioClassifier];
        [v21 setTimeDelegate:v20];

        [(SAMonitoringSessionManager *)self attemptToPopulateTrackedTravelingStartLocationForDevice:v11];
        v22 = *v9;
        if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
        {
          v23 = v22;
          v24 = +[SAMonitoringSessionManager convertSAMonitoringSessionStateToString:](SAMonitoringSessionManager, "convertSAMonitoringSessionStateToString:", [v12 state]);
          v25 = v7;
          v26 = v8;
          v27 = v9;
          v28 = +[SAScenarioClassifier convertSAScenarioClassToString:](SAScenarioClassifier, "convertSAScenarioClassToString:", [v12 scenario]);
          *buf = v30;
          v37 = 0;
          v38 = 2082;
          v39 = "";
          v40 = 2113;
          v41 = v11;
          v42 = 2113;
          v43 = v24;
          v44 = 2113;
          v45 = v28;
          _os_log_impl(&dword_2656EA000, v23, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAMonitoringSessionManager bootstraped from persisted data, uuid:%{private}@, state:%{private}@, scenario:%{private}@}", buf, 0x30u);

          v9 = v27;
          v8 = v26;
          v7 = v25;
          v4 = v31;
        }
      }

      v7 = [v4 countByEnumeratingWithState:&v32 objects:v46 count:16];
    }

    while (v7);
  }

  [(SAMonitoringSessionManager *)self startPeriodicScansIfNeeded];

  v29 = *MEMORY[0x277D85DE8];
}

- (BOOL)monitoringSessionState:(unint64_t)a3 matchesWithScenarioClass:(unint64_t)a4
{
  if (a3 - 3 < 2)
  {
    return a4 == 3;
  }

  if (a3 != 5)
  {
    if (a3 != 1)
    {
      return 1;
    }

    return a4 == 3;
  }

  return a4 == 2;
}

- (void)checkForDevicesNeedingTransition
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
  v5 = [v4 allKeys];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v23 objects:v33 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    do
    {
      v9 = 0;
      do
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v23 + 1) + 8 * v9);
        v11 = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
        v12 = [v11 objectForKeyedSubscript:v10];
        v13 = [v12 scenario];

        v14 = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
        v15 = [v14 objectForKeyedSubscript:v10];
        v16 = [v15 state];

        if (![(SAMonitoringSessionManager *)self monitoringSessionState:v16 matchesWithScenarioClass:v13])
        {
          [v3 addObject:v10];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v23 objects:v33 count:16];
    }

    while (v7);
  }

  v17 = [v3 count];
  if (v17)
  {
    v18 = v17;
    v19 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289283;
      v28 = 0;
      v29 = 2082;
      v30 = "";
      v31 = 2049;
      v32 = v18;
      _os_log_impl(&dword_2656EA000, v19, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAMonitoringSessionManager requesting terminable long scan on enable with devices needing transition, count of devices needing transition:%{private}ld}", buf, 0x1Cu);
    }

    v20 = [(SAMonitoringSessionManager *)self withYouDetector];
    [v20 forceUpdateWithYouStatusToFindDevices:v3 withContext:10];
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)setEnabled:(BOOL)a3
{
  v47 = *MEMORY[0x277D85DE8];
  if (self->_enabled != a3)
  {
    v3 = a3;
    self->_enabled = a3;
    v5 = TASALog;
    v6 = os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT);
    if (v3)
    {
      if (v6)
      {
        buf = 68289026;
        v45 = 2082;
        v46 = "";
        _os_log_impl(&dword_2656EA000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAMonitoringSessionManager enabling sa}", &buf, 0x12u);
      }

      v7 = [(SAMonitoringSessionManager *)self withYouDetector];
      [v7 resetAllWithYouStatusAndScanStates];

      [(SAMonitoringSessionManager *)self configureBackgroundScanning];
      [(SAMonitoringSessionManager *)self requestToFetchLastVisit];
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v8 = [(SAMonitoringSessionManager *)self devices];
      v9 = [v8 countByEnumeratingWithState:&v37 objects:v43 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v38;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v38 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v37 + 1) + 8 * i);
            [(SAMonitoringSessionManager *)self createMonitoringDevice:v13];
            v35 = 0u;
            v36 = 0u;
            v33 = 0u;
            v34 = 0u;
            v14 = [(SAMonitoringSessionManager *)self deviceUUIDtoSafeLocationUUIDs];
            v15 = [v14 objectForKeyedSubscript:v13];

            v16 = [v15 countByEnumeratingWithState:&v33 objects:v42 count:16];
            if (v16)
            {
              v17 = v16;
              v18 = *v34;
              do
              {
                for (j = 0; j != v17; ++j)
                {
                  if (*v34 != v18)
                  {
                    objc_enumerationMutation(v15);
                  }

                  [(SAMonitoringSessionManager *)self startSafeLocation:*(*(&v33 + 1) + 8 * j) forDevice:v13];
                }

                v17 = [v15 countByEnumeratingWithState:&v33 objects:v42 count:16];
              }

              while (v17);
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v37 objects:v43 count:16];
        }

        while (v10);
      }

      [(SAMonitoringSessionManager *)self startPeriodicScansIfNeeded];
      [(SAMonitoringSessionManager *)self checkForDevicesNeedingTransition];
    }

    else
    {
      if (v6)
      {
        buf = 68289026;
        v45 = 2082;
        v46 = "";
        _os_log_impl(&dword_2656EA000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAMonitoringSessionManager disabling sa}", &buf, 0x12u);
      }

      [(SAMonitoringSessionManager *)self stopPeriodicScans];
      v20 = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
      v21 = [v20 allKeys];

      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v22 = v21;
      v23 = [v22 countByEnumeratingWithState:&v29 objects:v41 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v30;
        do
        {
          for (k = 0; k != v24; ++k)
          {
            if (*v30 != v25)
            {
              objc_enumerationMutation(v22);
            }

            [(SAMonitoringSessionManager *)self cancelMonitoringDevice:*(*(&v29 + 1) + 8 * k), v29];
          }

          v24 = [v22 countByEnumeratingWithState:&v29 objects:v41 count:16];
        }

        while (v24);
      }

      [(SAMonitoringSessionManager *)self setCurrentVisitOrLOIEvent:0];
      [(SAMonitoringSessionManager *)self configureBackgroundScanning];
      v27 = [(SAMonitoringSessionManager *)self withYouDetector];
      [v27 resetAllWithYouStatusAndScanStates];
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)forceStandbyMode:(id)a3
{
  v11 = a3;
  v4 = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
  v5 = [v4 objectForKeyedSubscript:v11];

  if (v5)
  {
    [v5 setEarlyVehicularTrigger:0];
    [v5 setEarlyAirplaneTrigger:0];
    v6 = [v5 geofence];

    if (v6)
    {
      v7 = [(SAMonitoringSessionManager *)self fenceRequestServicer];
      v8 = [v5 geofence];
      [v7 removeGeofence:v8];

      v9 = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
      v10 = [v9 objectForKeyedSubscript:v11];
      [v10 setGeofence:0];

      [(SAMonitoringSessionManager *)self changeMonitoringSessionState:v11 toState:2];
    }
  }
}

- (BOOL)allDevicesInSafeLocation
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v9 = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
        v10 = [v9 objectForKeyedSubscript:v8];
        v11 = [v10 scenario];

        if (v11 != 1)
        {
          v12 = 0;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v12 = 1;
LABEL_11:

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

- (BOOL)anyDeviceInUnsafeLocation
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v9 = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
        v10 = [v9 objectForKeyedSubscript:v8];
        v11 = [v10 scenario];

        if (v11 == 2)
        {
          v12 = 1;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)createMonitoringDevice:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    v8 = TASALog;
    if (!os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    *buf = 68289026;
    v32 = 0;
    v33 = 2082;
    v34 = "";
    v9 = "{msg%{public}.0s:#SAMonitoringSessionManager createMonitoringDevice nil UUID}";
LABEL_10:
    _os_log_impl(&dword_2656EA000, v8, OS_LOG_TYPE_ERROR, v9, buf, 0x12u);
    goto LABEL_22;
  }

  if (![(SAMonitoringSessionManager *)self enabled])
  {
    v8 = TASALog;
    if (!os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    *buf = 68289026;
    v32 = 0;
    v33 = 2082;
    v34 = "";
    v9 = "{msg%{public}.0s:#SAMonitoringSessionManager createMonitoringDevice while not enabled}";
    goto LABEL_10;
  }

  v5 = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
  v6 = [v5 objectForKeyedSubscript:v4];

  v7 = TASALog;
  if (v6)
  {
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289283;
      v32 = 0;
      v33 = 2082;
      v34 = "";
      v35 = 2113;
      v36 = v4;
      _os_log_impl(&dword_2656EA000, v7, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#SAMonitoringSessionManager createMonitoringDevice monitoring session already exists, uuid:%{private}@}", buf, 0x1Cu);
    }
  }

  else
  {
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289283;
      v32 = 0;
      v33 = 2082;
      v34 = "";
      v35 = 2113;
      v36 = v4;
      _os_log_impl(&dword_2656EA000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAMonitoringSessionManager createMonitoringDevice, uuid:%{private}@}", buf, 0x1Cu);
    }

    v10 = [(SAMonitoringSessionManager *)self currentVisitOrLOIEvent];
    if (v10)
    {
      v11 = 2;
    }

    else
    {
      v11 = 3;
    }

    v12 = [[SAMonitoringSession alloc] initWithDeviceUUID:v4 state:0 geofence:0 scenario:v11 trackedTravelingStartDate:0];
    v13 = [(SAMonitoringSessionManager *)self fenceManager];
    v14 = [(SAMonitoringSession *)v12 scenarioClassifier];
    [v13 addClient:v14];

    v15 = [(SAMonitoringSessionManager *)self travelTypeClassifier];
    v16 = [(SAMonitoringSession *)v12 scenarioClassifier];
    [v15 addClient:v16];

    v17 = [(SAMonitoringSession *)v12 scenarioClassifier];
    [v17 addClient:self];

    v18 = [(SAMonitoringSessionManager *)self fenceManager];
    v19 = [(SAMonitoringSession *)v12 scenarioClassifier];
    [v19 setDelegate:v18];

    v20 = [(SAMonitoringSessionManager *)self clock];
    v21 = [(SAMonitoringSession *)v12 scenarioClassifier];
    [v21 setTimeDelegate:v20];

    v22 = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
    [v22 setObject:v12 forKeyedSubscript:v4];

    [(SAMonitoringSessionManager *)self changeMonitoringSessionState:v4 toState:2];
    [(SAMonitoringSessionManager *)self didChangeScenarioClassFrom:0 to:v11 forDevice:v4];
    v23 = [(SAMonitoringSession *)v12 scenarioClassifier];
    v24 = [(SAMonitoringSessionManager *)self currentVisitOrLOIEvent];
    [v23 ingestTAEvent:v24];

    LOBYTE(v24) = [(SAMonitoringSessionManager *)self standby];
    v25 = [(SAMonitoringSessionManager *)self withYouDetector];
    v26 = v25;
    if (v24)
    {
      [v25 forceUpdateWithYouStatusWithShortScan:0];
    }

    else
    {
      v30 = v4;
      v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
      [v26 forceUpdateWithYouStatusToFindDevices:v27 withContext:5];
    }
  }

  if (![(SAMonitoringSessionManager *)self standby])
  {
    v28 = [(SAMonitoringSessionManager *)self analytics];
    [v28 setActiveState:1];
  }

LABEL_22:

  v29 = *MEMORY[0x277D85DE8];
}

- (void)cancelMonitoringDevice:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    v27 = TASALog;
    if (!os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    buf = 68289026;
    v39 = 2082;
    v40 = "";
    v28 = "{msg%{public}.0s:#SAMonitoringSessionManager cancelMonitoringDevice nil UUID}";
    v29 = v27;
    v30 = 18;
LABEL_20:
    _os_log_impl(&dword_2656EA000, v29, OS_LOG_TYPE_ERROR, v28, &buf, v30);
    goto LABEL_21;
  }

  [(SAMonitoringSessionManager *)self changeMonitoringSessionState:v4 toState:6];
  v5 = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (!v6)
  {
    v31 = TASALog;
    if (!os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    buf = 68289283;
    v39 = 2082;
    v40 = "";
    v41 = 2113;
    v42 = v4;
    v28 = "{msg%{public}.0s:#SAMonitoringSessionManager cancelMonitoringDevice monitoring session does not exist, uuid:%{private}@}";
    v29 = v31;
    v30 = 28;
    goto LABEL_20;
  }

  v7 = [v6 geofence];

  if (v7)
  {
    v8 = [(SAMonitoringSessionManager *)self fenceRequestServicer];
    v9 = [v6 geofence];
    [v8 removeGeofence:v9];
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v10 = [(SAMonitoringSessionManager *)self deviceUUIDtoSafeLocationUUIDs];
  v11 = [v10 objectForKeyedSubscript:v4];

  v12 = [v11 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v34;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v34 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [(SAMonitoringSessionManager *)self stopSafeLocation:*(*(&v33 + 1) + 8 * i) forDevice:v4];
      }

      v13 = [v11 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v13);
  }

  v16 = [(SAMonitoringSessionManager *)self fenceManager];
  v17 = [v6 scenarioClassifier];
  [v16 removeClient:v17];

  v18 = [(SAMonitoringSessionManager *)self travelTypeClassifier];
  v19 = [v6 scenarioClassifier];
  [v18 removeClient:v19];

  v20 = [v6 scenarioClassifier];
  [v20 removeClient:self];

  [v6 setScenarioClassifier:0];
  [v6 setDeviceUUID:0];

  v21 = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
  [v21 setObject:0 forKeyedSubscript:v4];

  v22 = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
  [v22 removeObjectForKey:v4];

  v23 = TASALog;
  if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
  {
    buf = 68289283;
    v39 = 2082;
    v40 = "";
    v41 = 2113;
    v42 = v4;
    _os_log_impl(&dword_2656EA000, v23, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAMonitoringSessionManager canceled monitoring session, uuid:%{private}@}", &buf, 0x1Cu);
  }

  v24 = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
  v25 = [v24 count];

  if (!v25)
  {
    v26 = [(SAMonitoringSessionManager *)self analytics];
    [v26 setActiveState:0];
  }

LABEL_21:

  v32 = *MEMORY[0x277D85DE8];
}

- (void)attemptToPopulateTrackedTravelingStartLocationForDevice:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
  v6 = [v5 objectForKeyedSubscript:v4];

  v7 = [v6 state];
  if (v7 > 4 || ((1 << v7) & 0x1A) == 0)
  {
    v10 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEBUG))
    {
      v21 = 68289283;
      v22 = 0;
      v23 = 2082;
      v24 = "";
      v25 = 2113;
      v26 = v4;
      v11 = "{msg%{public}.0s:#SAMonitoringSessionManager attemptToPopulateTrackedTravelingStartLocationForDevice not in one of the traveling states, uuid:%{private}@}";
      goto LABEL_16;
    }
  }

  else
  {
    v9 = [v6 trackedTravelingStartLocation];

    if (v9)
    {
      v10 = TASALog;
      if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEBUG))
      {
        v21 = 68289283;
        v22 = 0;
        v23 = 2082;
        v24 = "";
        v25 = 2113;
        v26 = v4;
        v11 = "{msg%{public}.0s:#SAMonitoringSessionManager attemptToPopulateTrackedTravelingStartLocationForDevice already set, uuid:%{private}@}";
LABEL_16:
        _os_log_impl(&dword_2656EA000, v10, OS_LOG_TYPE_DEBUG, v11, &v21, 0x1Cu);
      }
    }

    else
    {
      v12 = [(SAMonitoringSessionManager *)self lastLocation];
      v13 = [v12 getDate];
      v14 = [(SATimeServiceProtocol *)self->_clock getCurrentTime];
      [v13 timeIntervalSinceDate:v14];
      v16 = v15;

      v17 = -v16;
      if (v16 >= 0.0)
      {
        v17 = v16;
      }

      if (v17 <= 10.0)
      {
        v19 = [(SAMonitoringSessionManager *)self lastLocation];
        [v6 setTrackedTravelingStartLocation:v19];
      }

      else
      {
        v18 = TASALog;
        if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEBUG))
        {
          v21 = 68289283;
          v22 = 0;
          v23 = 2082;
          v24 = "";
          v25 = 2113;
          v26 = v4;
          _os_log_impl(&dword_2656EA000, v18, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#SAMonitoringSessionManager attemptToPopulateTrackedTravelingStartLocationForDevice lastLocation is not recent enough, adding to set to be populated, uuid:%{private}@}", &v21, 0x1Cu);
        }

        v19 = [(SAMonitoringSessionManager *)self devicesWithToBePopulatedTrackedTravelingStartLocation];
        [v19 addObject:v4];
      }
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)changeMonitoringSessionState:(id)a3 toState:(unint64_t)a4
{
  v44 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
  v8 = [v7 objectForKeyedSubscript:v6];

  if (v8)
  {
    v9 = [v8 state];
    v10 = TASALog;
    if (v9 == a4)
    {
      if (os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
      {
        v11 = v10;
        v12 = +[SAMonitoringSessionManager convertSAMonitoringSessionStateToString:](SAMonitoringSessionManager, "convertSAMonitoringSessionStateToString:", [v8 state]);
        v13 = [SAMonitoringSessionManager convertSAMonitoringSessionStateToString:a4];
        buf = 68289795;
        v36 = 2082;
        v37 = "";
        v38 = 2113;
        v39 = v6;
        v40 = 2113;
        v41 = v12;
        v42 = 2113;
        v43 = v13;
        _os_log_impl(&dword_2656EA000, v11, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#SAMonitoringSessionManager changeMonitoringSessionState no state change necessary, uuid:%{private}@, fromState:%{private}@, toState:%{private}@}", &buf, 0x30u);
      }
    }

    else
    {
      if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
      {
        v15 = v10;
        v16 = +[SAMonitoringSessionManager convertSAMonitoringSessionStateToString:](SAMonitoringSessionManager, "convertSAMonitoringSessionStateToString:", [v8 state]);
        v17 = [SAMonitoringSessionManager convertSAMonitoringSessionStateToString:a4];
        buf = 68289795;
        v36 = 2082;
        v37 = "";
        v38 = 2113;
        v39 = v6;
        v40 = 2113;
        v41 = v16;
        v42 = 2113;
        v43 = v17;
        _os_log_impl(&dword_2656EA000, v15, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAMonitoringSessionManager changeMonitoringSessionState, uuid:%{private}@, fromState:%{private}@, toState:%{private}@}", &buf, 0x30u);
      }

      v18 = [(SAMonitoringSessionManager *)self deviceRecord];
      [v18 updateMonitoringSessionState:a4 forDeviceWithUUID:v6];

      v19 = [(SAMonitoringSessionManager *)self devicesWithPendingTransition];
      [v19 removeObject:v6];

      if (a4 - 5 < 2 || a4 == 2)
      {
        [v8 setTrackedTravelingStartDate:0];
        [v8 setTrackedTravelingStartLocation:0];
      }

      else if (a4 == 1 && [v8 state] != 3 && objc_msgSend(v8, "state") != 4)
      {
        v20 = [(SATimeServiceProtocol *)self->_clock getCurrentTime];
        [v8 setTrackedTravelingStartDate:v20];
      }

      [v8 setState:a4];
      [(SAMonitoringSessionManager *)self attemptToPopulateTrackedTravelingStartLocationForDevice:v6];
      [v8 setEarlyVehicularTrigger:0];
      [v8 setEarlyAirplaneTrigger:0];
      v21 = [(SATimeServiceProtocol *)self->_clock getCurrentTime];
      [v8 setCaLastStateTransition:v21];

      v29 = a4;
      if (a4 == 3)
      {
        [(SAMonitoringSessionManager *)self storeSeparationLocation:v6];
      }

      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v22 = self->_clients;
      v23 = [(NSHashTable *)v22 countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v31;
        do
        {
          for (i = 0; i != v24; ++i)
          {
            if (*v31 != v25)
            {
              objc_enumerationMutation(v22);
            }

            v27 = *(*(&v30 + 1) + 8 * i);
            if (objc_opt_respondsToSelector())
            {
              [v27 updatedMonitoringState:objc_msgSend(v8 forDeviceUUID:{"state"), v6}];
            }
          }

          v24 = [(NSHashTable *)v22 countByEnumeratingWithState:&v30 objects:v34 count:16];
        }

        while (v24);
      }

      if (v29 <= 4 && ((1 << v29) & 0x1A) != 0)
      {
        [(SAMonitoringSessionManager *)self startPeriodicScans];
      }

      else
      {
        [(SAMonitoringSessionManager *)self stopPeriodicScansIfNotNeeded];
      }

      [(SAMonitoringSessionManager *)self scheduleNextPersistenceWrite];
    }
  }

  else
  {
    v14 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
    {
      buf = 68289283;
      v36 = 2082;
      v37 = "";
      v38 = 2113;
      v39 = v6;
      _os_log_impl(&dword_2656EA000, v14, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#SAMonitoringSessionManager changeMonitoringSessionState UUID doesn't map to monitoring session, uuid:%{private}@}", &buf, 0x1Cu);
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (int64_t)determineTrackedTravelingCount
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v16;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
        v11 = [v10 objectForKeyedSubscript:v9];
        v12 = [v11 state];

        if (v12 == 1)
        {
          ++v6;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)needPeriodicScan
{
  v21 = *MEMORY[0x277D85DE8];
  if ([(SAMonitoringSessionManager *)self enabled]&& ![(SAMonitoringSessionManager *)self standby])
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v4 = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
    v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v17;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v17 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v16 + 1) + 8 * i);
          v10 = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
          v11 = [v10 objectForKeyedSubscript:v9];
          v12 = [v11 state];

          if (v12 <= 4 && ((1 << v12) & 0x1A) != 0)
          {
            v3 = 1;
            goto LABEL_18;
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
        v3 = 0;
      }

      while (v6);
    }

    else
    {
      v3 = 0;
    }

LABEL_18:
  }

  else
  {
    v3 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v3;
}

- (void)stopPeriodicScans
{
  if ([(SAMonitoringSessionManager *)self requestedPeriodicScan])
  {
    [(SAMonitoringSessionManager *)self setRequestedPeriodicScan:0];
    withYouDetector = self->_withYouDetector;

    [(SAWithYouDetectorServiceProtocol *)withYouDetector pausePeriodicScan];
  }
}

- (void)stopPeriodicScansIfNotNeeded
{
  if ([(SAMonitoringSessionManager *)self requestedPeriodicScan]&& ![(SAMonitoringSessionManager *)self needPeriodicScan])
  {

    [(SAMonitoringSessionManager *)self stopPeriodicScans];
  }
}

- (void)startPeriodicScans
{
  if (![(SAMonitoringSessionManager *)self requestedPeriodicScan]&& [(SAMonitoringSessionManager *)self enabled]&& ![(SAMonitoringSessionManager *)self standby])
  {
    [(SAMonitoringSessionManager *)self setRequestedPeriodicScan:1];
    withYouDetector = self->_withYouDetector;

    [(SAWithYouDetectorServiceProtocol *)withYouDetector resumePeriodicScan];
  }
}

- (void)startPeriodicScansIfNeeded
{
  if (![(SAMonitoringSessionManager *)self requestedPeriodicScan]&& [(SAMonitoringSessionManager *)self needPeriodicScan])
  {

    [(SAMonitoringSessionManager *)self startPeriodicScans];
  }
}

- (unint64_t)getMoreSpecificSADeviceType:(id)a3
{
  v3 = a3;
  v4 = [v3 deviceType];
  if ([v3 deviceType] == 1)
  {
    v5 = [v3 model];
    v6 = [v5 hasPrefix:@"iPhone"];

    if (v6)
    {
      v4 = 64;
    }

    else
    {
      v7 = [v3 model];
      v8 = [v7 hasPrefix:@"iPad"];

      if (v8)
      {
        v4 = 32;
      }

      else
      {
        v9 = [v3 model];
        v10 = [v9 hasPrefix:@"MacBook"];

        if (v10)
        {
          v4 = 128;
        }
      }
    }
  }

  else if ([v3 deviceType] == 4)
  {
    if ([v3 isAppleAudioAccessory])
    {
      v4 = 256;
    }

    else
    {
      v4 = 4;
    }
  }

  return v4;
}

- (int64_t)checkInEarStatus:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SAMonitoringSessionManager *)self audioAccessoryManager];

  if (v5)
  {
    if (v4)
    {
      v6 = objc_alloc_init(MEMORY[0x277CCAB68]);
      [v6 setString:v4];
      if ([v6 length])
      {
        v7 = 0;
        do
        {
          if (3 * (v7 / 3) + 2 == v7)
          {
            [v6 insertString:@":" atIndex:v7];
          }

          ++v7;
        }

        while ([v6 length] > v7);
      }

      v8 = [(SAMonitoringSessionManager *)self audioAccessoryManager];
      [v8 setBTAddress:v6];

      v19 = 0;
      v20 = 0;
      v9 = [(SAMonitoringSessionManager *)self audioAccessoryManager];
      [v9 getInEarStatus:&v20 secondary:&v19];

      v10 = TASALog;
      if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289795;
        v22 = 0;
        v23 = 2082;
        v24 = "";
        v25 = 2113;
        v26 = v6;
        v27 = 2049;
        v28 = v20;
        v29 = 2049;
        v30 = v19;
        _os_log_impl(&dword_2656EA000, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sa received in ear status, macAddress:%{private}@, primary:%{private}ld, secondary:%{private}ld}", buf, 0x30u);
      }

      v11 = [(SAMonitoringSessionManager *)self audioAccessoryManager];
      v12 = [v11 getPrimaryBudSide];

      v13 = TASALog;
      if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289283;
        v22 = 0;
        v23 = 2082;
        v24 = "";
        v25 = 2049;
        v26 = v12;
        _os_log_impl(&dword_2656EA000, v13, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sa received primary bud side, bud side:%{private}ld}", buf, 0x1Cu);
      }

      if (v20 != 3 && v19 != 3)
      {
        v14 = 3;
LABEL_34:

        goto LABEL_35;
      }

      if (v12 == 1)
      {
        if (v20 == 3)
        {
          v14 = 1;
        }

        else
        {
          v14 = 2;
        }

        if (v20 != 3)
        {
          goto LABEL_34;
        }
      }

      else
      {
        if (v12)
        {
          goto LABEL_33;
        }

        if (v20 == 3)
        {
          v14 = 2;
        }

        else
        {
          v14 = 1;
        }

        if (v20 != 3)
        {
          goto LABEL_34;
        }
      }

      if (v19 != 3)
      {
        goto LABEL_34;
      }

LABEL_33:
      v14 = 0;
      goto LABEL_34;
    }

    v15 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v22 = 0;
      v23 = 2082;
      v24 = "";
      v16 = "{msg%{public}.0s:#sa check in ear status received unknown macAddress}";
      goto LABEL_19;
    }
  }

  else
  {
    v15 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v22 = 0;
      v23 = 2082;
      v24 = "";
      v16 = "{msg%{public}.0s:#sa check in ear status received unknown audioAccessoryManager}";
LABEL_19:
      _os_log_impl(&dword_2656EA000, v15, OS_LOG_TYPE_ERROR, v16, buf, 0x12u);
    }
  }

  v14 = 0;
LABEL_35:

  v17 = *MEMORY[0x277D85DE8];
  return v14;
}

- (BOOL)checkIfCloseToAnySafeLocations:(id)a3 leftBehindLocation:(id)a4
{
  v48 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v37 = a4;
  v7 = [(SAMonitoringSessionManager *)self deviceUUIDtoSafeLocationUUIDs];
  v8 = [v7 objectForKeyedSubscript:v6];

  v9 = TASALog;
  if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEBUG))
  {
    buf = 68289283;
    v44 = 2082;
    v45 = "";
    v46 = 2113;
    v47 = v6;
    _os_log_impl(&dword_2656EA000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#SAMonitoringSessionManager checking if close to any safe locations before surfacing the alert, uuid:%{private}@}", &buf, 0x1Cu);
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = v8;
  v10 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v10)
  {
    v11 = v10;
    v35 = v6;
    v12 = *v39;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v39 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v38 + 1) + 8 * i);
        v15 = [(SAMonitoringSessionManager *)self safeLocations];
        v16 = [v15 objectForKeyedSubscript:v14];

        if (v16)
        {
          v17 = objc_alloc(MEMORY[0x277CE41F8]);
          v18 = [(SAMonitoringSessionManager *)self safeLocations];
          v19 = [v18 objectForKeyedSubscript:v14];
          [v19 latitude];
          v21 = v20;
          v22 = [(SAMonitoringSessionManager *)self safeLocations];
          v23 = [v22 objectForKeyedSubscript:v14];
          [v23 longitude];
          v25 = [v17 initWithLatitude:v21 longitude:v24];

          [v25 distanceFromLocation:v37];
          v27 = v26;
          v28 = [(SAMonitoringSessionManager *)self safeLocations];
          v29 = [v28 objectForKeyedSubscript:v14];
          [v29 radius];
          v31 = v30;

          if (v31 < 100.0)
          {
            v31 = 100.0;
          }

          if (v27 <= v31)
          {
            v32 = 1;
            goto LABEL_16;
          }
        }
      }

      v11 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }

    v32 = 0;
LABEL_16:
    v6 = v35;
  }

  else
  {
    v32 = 0;
  }

  v33 = *MEMORY[0x277D85DE8];
  return v32;
}

- (BOOL)checkIfAlertWasTriggeredAtHome:(id)a3 isEarlyVehicularTrigger:(BOOL)a4
{
  v4 = a4;
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = TASALog;
  if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEBUG))
  {
    v25[0] = 68289539;
    v25[1] = 0;
    v26 = 2082;
    v27 = "";
    v28 = 2117;
    v29 = v6;
    v30 = 1025;
    v31 = v4;
    _os_log_impl(&dword_2656EA000, v7, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#SAMonitoringSessionManager checking if alert was triggered at home, location:%{sensitive}@, isEarlyVehicularTrigger:%{private}d}", v25, 0x22u);
  }

  if (!v4)
  {
    v11 = [(SAMonitoringSessionManager *)self previousVisitOrLOIEvent];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v10 = [(SAMonitoringSessionManager *)self previousVisitOrLOIEvent];
      goto LABEL_8;
    }

LABEL_13:
    v13 = 0;
LABEL_14:
    v22 = 0;
    goto LABEL_15;
  }

  v8 = [(SAMonitoringSessionManager *)self currentVisitOrLOIEvent];
  objc_opt_class();
  v9 = objc_opt_isKindOfClass();

  if ((v9 & 1) == 0)
  {
    goto LABEL_13;
  }

  v10 = [(SAMonitoringSessionManager *)self currentVisitOrLOIEvent];
LABEL_8:
  v13 = v10;
  if (!v10 || [v10 type] != 1)
  {
    goto LABEL_14;
  }

  v14 = objc_alloc(MEMORY[0x277CE41F8]);
  [v13 latitude];
  v16 = v15;
  [v13 longitude];
  v18 = [v14 initWithLatitude:v16 longitude:v17];
  [v6 distanceFromLocation:v18];
  v20 = v19;
  [v18 horizontalAccuracy];
  if (v21 < 100.0)
  {
    v21 = 100.0;
  }

  v22 = v20 <= v21;

LABEL_15:
  v23 = *MEMORY[0x277D85DE8];
  return v22;
}

- (BOOL)shouldSuppressDueToRepeatedAlertsInOneTravelingSession:(id)a3 context:(id)a4
{
  v41 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
  v9 = [v8 objectForKeyedSubscript:v6];

  v10 = [v7 objectForKeyedSubscript:&unk_2877100A8];
  if (v10)
  {
    v11 = [v7 objectForKeyedSubscript:&unk_2877100A8];
    v12 = [v11 BOOLValue] ^ 1;
  }

  else
  {
    v12 = 1;
  }

  v13 = [v7 objectForKeyedSubscript:&unk_2877100C0];
  v14 = [v13 integerValue];

  if (v14 != 2)
  {
LABEL_20:
    v17 = 0;
    goto LABEL_21;
  }

  v15 = [v9 lastAlertDateInCurrentTravelingSession];

  if (v15)
  {
    v16 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289283;
      v34 = 0;
      v35 = 2082;
      v36 = "";
      v37 = 2113;
      v38 = v6;
      _os_log_impl(&dword_2656EA000, v16, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAMonitoringSessionManager suppressing alerts due to repeated alerts in one traveling session, uuid:%{private}@}", buf, 0x1Cu);
    }

    v17 = 1;
    goto LABEL_21;
  }

  v32 = v9;
  v18 = [(SADeviceRecord *)self->_deviceRecord getRelatedDevices:v6];
  v19 = v18;
  if (!v18 || ![v18 count])
  {
LABEL_15:
    v9 = v32;
    if (v12)
    {
      v27 = TASALog;
      if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289283;
        v34 = 0;
        v35 = 2082;
        v36 = "";
        v37 = 2113;
        v38 = v6;
        _os_log_impl(&dword_2656EA000, v27, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAMonitoringSessionManager gating number of alerts in one traveling session , uuid:%{private}@}", buf, 0x1Cu);
      }

      v28 = [(SATimeServiceProtocol *)self->_clock getCurrentTime];
      [v32 setLastAlertDateInCurrentTravelingSession:v28];
    }

    goto LABEL_20;
  }

  v20 = 0;
  while (1)
  {
    v21 = [v19 objectAtIndexedSubscript:v20];
    v22 = [(NSMutableDictionary *)self->_deviceUUIDtoMonitoringSession objectForKeyedSubscript:v21];
    if (v22)
    {
      v23 = [(SATimeServiceProtocol *)self->_clock getCurrentTime];
      v24 = [v22 lastAlertDateInCurrentTravelingSession];
      [v23 timeIntervalSinceDate:v24];
      v26 = v25;

      if (v26 > 60.0)
      {
        break;
      }
    }

    if (++v20 >= [v19 count])
    {
      goto LABEL_15;
    }
  }

  v31 = TASALog;
  if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289539;
    v34 = 0;
    v35 = 2082;
    v36 = "";
    v37 = 2113;
    v38 = v6;
    v39 = 2113;
    v40 = v21;
    _os_log_impl(&dword_2656EA000, v31, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAMonitoringSessionManager suppressing alerts due to related device alert in current traveling session, uuid:%{private}@, relatedDeviceUUID:%{private}@}", buf, 0x26u);
  }

  v17 = 1;
  v9 = v32;
LABEL_21:

  v29 = *MEMORY[0x277D85DE8];
  return v17;
}

- (BOOL)shouldSuppressDueToHELEAdvertisingLimit:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 isAppleAudioAccessory] && (objc_msgSend(v4, "productId") == 8206 || objc_msgSend(v4, "productId") == 8211))
  {
    v5 = [(SAMonitoringSessionManager *)self deviceRecord];
    v6 = [v4 identifier];
    v7 = [v5 getAdvertisingStartDateForHELE:v6];

    if (v7)
    {
      v8 = [(SATimeServiceProtocol *)self->_clock getCurrentTime];
      [v8 timeIntervalSinceDate:v7];
      v10 = v9;

      v11 = TASALog;
      v12 = os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT);
      if (v10 > 86400.0)
      {
        if (v12)
        {
          v13 = v11;
          v14 = [v4 identifier];
          v15 = [v14 UUIDString];
          v26 = 68289283;
          v27 = 0;
          v28 = 2082;
          v29 = "";
          v30 = 2113;
          v31 = v15;
          _os_log_impl(&dword_2656EA000, v13, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sa separation for device exceeding 24hr advertising limit - suppressing alert, device:%{private}@}", &v26, 0x1Cu);
        }

        v16 = 1;
        goto LABEL_16;
      }

      if (v12)
      {
        v18 = v11;
        v19 = [v4 identifier];
        v20 = [v19 UUIDString];
        v26 = 68289539;
        v27 = 0;
        v28 = 2082;
        v29 = "";
        v30 = 2113;
        v31 = v20;
        v32 = 2049;
        v33 = v10;
        v21 = "{msg%{public}.0s:#sa separation for device within 24hr advertising limit, device:%{private}@, advertisingAge:%{private}f}";
        v22 = v18;
        v23 = 38;
        goto LABEL_14;
      }
    }

    else
    {
      v17 = TASALog;
      if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
      {
        v18 = v17;
        v19 = [v4 identifier];
        v20 = [v19 UUIDString];
        v26 = 68289283;
        v27 = 0;
        v28 = 2082;
        v29 = "";
        v30 = 2113;
        v31 = v20;
        v21 = "{msg%{public}.0s:#sa separation for device with no advertising start state being set, device:%{private}@}";
        v22 = v18;
        v23 = 28;
LABEL_14:
        _os_log_impl(&dword_2656EA000, v22, OS_LOG_TYPE_DEFAULT, v21, &v26, v23);
      }
    }

    v16 = 0;
LABEL_16:

    goto LABEL_17;
  }

  v16 = 0;
LABEL_17:

  v24 = *MEMORY[0x277D85DE8];
  return v16;
}

- (BOOL)shouldSuppressBudsAlertDueToCaseLeashedNotAdv:(id)a3
{
  v63 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SADeviceRecord *)self->_deviceRecord getSADevice:v4];
  v6 = v5;
  if (v5 && [v5 isBudForAirPodsBLECase])
  {
    v7 = [(SADeviceRecord *)self->_deviceRecord getRelatedDevices:v4];
    v8 = v7;
    if (!v7)
    {
      v16 = TASALog;
      if (os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
      {
        *buf = 68289283;
        v47 = 0;
        v48 = 2082;
        v49 = "";
        v50 = 2113;
        v51 = v4;
        v17 = "{msg%{public}.0s:#sa #suppress no related devices for buds, uuid:%{private}@}";
LABEL_18:
        _os_log_impl(&dword_2656EA000, v16, OS_LOG_TYPE_ERROR, v17, buf, 0x1Cu);
      }

LABEL_34:
      v18 = 0;
      goto LABEL_35;
    }

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v42 objects:v62 count:16];
    if (!v10)
    {
      goto LABEL_13;
    }

    v11 = v10;
    v12 = *v43;
LABEL_6:
    v13 = 0;
    while (1)
    {
      if (*v43 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v14 = [(SADeviceRecord *)self->_deviceRecord getSADevice:*(*(&v42 + 1) + 8 * v13), v42];
      v15 = v14;
      if (v14)
      {
        if ([v14 isAirPodsCase])
        {
          break;
        }
      }

      if (v11 == ++v13)
      {
        v11 = [v9 countByEnumeratingWithState:&v42 objects:v62 count:16];
        if (v11)
        {
          goto LABEL_6;
        }

LABEL_13:

        v16 = TASALog;
        if (os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
        {
          *buf = 68289283;
          v47 = 0;
          v48 = 2082;
          v49 = "";
          v50 = 2113;
          v51 = v4;
          v17 = "{msg%{public}.0s:#sa #suppress no case found for buds, uuid:%{private}@}";
          goto LABEL_18;
        }

        goto LABEL_34;
      }
    }

    deviceRecord = self->_deviceRecord;
    v20 = [v15 identifier];
    if ([(SADeviceRecord *)deviceRecord getConnectionState:v20]== 3)
    {
    }

    else
    {
      v21 = self->_deviceRecord;
      v22 = [v15 identifier];
      v23 = [(SADeviceRecord *)v21 getConnectionState:v22];

      if (v23 != 2)
      {
        v39 = TASALog;
        if (os_log_type_enabled(TASALog, OS_LOG_TYPE_INFO))
        {
          v34 = v39;
          v35 = [v15 identifier];
          *buf = 68289539;
          v47 = 0;
          v48 = 2082;
          v49 = "";
          v50 = 2113;
          v51 = v4;
          v52 = 2113;
          v53 = v35;
          v36 = "{msg%{public}.0s:#sa #suppress case not leashed, bud:%{private}@, case:%{private}@}";
          v37 = v34;
          v38 = OS_LOG_TYPE_INFO;
          goto LABEL_32;
        }

LABEL_33:

        goto LABEL_34;
      }
    }

    v24 = self->_deviceRecord;
    v25 = [v15 identifier];
    v26 = [(SADeviceRecord *)v24 getRelationStatus:v25];

    v27 = [v15 partIdentifier];
    v28 = [v6 partIdentifier];
    if ([v15 isValidPartID] && objc_msgSend(v6, "isValidPartID") && (v26 & 0x8000000000000000) == 0)
    {
      v29 = [(SAMonitoringSessionManager *)self isBudPartID:v28 inCasePartID:v27 relationStatus:v26];
      v30 = TASALog;
      if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
      {
        v31 = v30;
        v32 = [v15 identifier];
        *buf = 68290563;
        v47 = 0;
        v48 = 2082;
        v49 = "";
        v50 = 2113;
        v51 = v4;
        v52 = 2049;
        v53 = v28;
        v54 = 2113;
        v55 = v32;
        v56 = 2049;
        v57 = v27;
        v58 = 2049;
        v59 = v26;
        v60 = 2049;
        v61 = v29;
        _os_log_impl(&dword_2656EA000, v31, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sa #suppress, bud:%{private}@, budPartID:%{private}ld, case:%{private}@, casePartID:%{private}ld, relation:%{private}ld, budInCase:%{private}ld}", buf, 0x4Eu);
      }

      v18 = v29 == 1;

LABEL_35:
      goto LABEL_36;
    }

    v33 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
    {
      v34 = v33;
      v35 = [v15 identifier];
      *buf = 68289539;
      v47 = 0;
      v48 = 2082;
      v49 = "";
      v50 = 2113;
      v51 = v4;
      v52 = 2113;
      v53 = v35;
      v36 = "{msg%{public}.0s:#sa #suppress invalid case, partID or relationStatus partID, uuid:%{private}@, relatedCaseUUID:%{private}@}";
      v37 = v34;
      v38 = OS_LOG_TYPE_ERROR;
LABEL_32:
      _os_log_impl(&dword_2656EA000, v37, v38, v36, buf, 0x26u);

      goto LABEL_33;
    }

    goto LABEL_33;
  }

  v18 = 0;
LABEL_36:

  v40 = *MEMORY[0x277D85DE8];
  return v18;
}

- (int64_t)isBudPartID:(int64_t)a3 inCasePartID:(int64_t)a4 relationStatus:(int64_t)a5
{
  v5 = 2;
  if (a3 == 1)
  {
    v5 = 8;
  }

  v6 = (v5 & a5) != 0;
  if (a4 <= a3)
  {
    return -1;
  }

  else
  {
    return v6;
  }
}

- (void)handleSeparationForDeviceUUID:(id)a3 withSafeLocationRecommendation:(id)a4 context:(id)a5
{
  v227[19] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(SAMonitoringSessionManager *)self devices];
  v12 = [v11 objectForKeyedSubscript:v8];

  v13 = [(SAMonitoringSessionManager *)self deviceRecord];
  v14 = [v13 getLatestAdvertisement:v8];

  v203 = [(SAMonitoringSessionManager *)self checkIfCloseToAnySafeLocations:v8 leftBehindLocation:v9];
  v15 = [(SAMonitoringSessionManager *)self shouldSuppressDueToRepeatedAlertsInOneTravelingSession:v8 context:v10];
  v202 = [(SAMonitoringSessionManager *)self shouldSuppressDueToHELEAdvertisingLimit:v12];
  v16 = [(SAMonitoringSessionManager *)self shouldSuppressBudsAlertDueToCaseLeashedNotAdv:v8];
  if (v12)
  {
    v200 = v16;
    v201 = v15;
    if (![v12 isAppleAudioAccessory])
    {
      v198 = 0;
      v199 = 0;
LABEL_40:
      v193 = [(SAMonitoringSessionManager *)self getMoreSpecificSADeviceType:v12];
      v51 = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
      v52 = [v51 objectForKeyedSubscript:v8];

      v197 = [v10 objectForKeyedSubscript:&unk_2877100C0];
      v53 = [v52 caLastStateTransition];

      v54 = -1.0;
      v55 = -1.0;
      if (v53)
      {
        v56 = [(SATimeServiceProtocol *)self->_clock getCurrentTime];
        v57 = [v52 caLastStateTransition];
        [v56 timeIntervalSinceDate:v57];
        v55 = v58;
      }

      v59 = [(SAMonitoringSessionManager *)self caLastAlertDate];
      v60 = [v59 objectForKeyedSubscript:v8];

      v188 = v52;
      if (v60)
      {
        v61 = [(SATimeServiceProtocol *)self->_clock getCurrentTime];
        v62 = [(SAMonitoringSessionManager *)self caLastAlertDate];
        v63 = [v62 objectForKeyedSubscript:v8];
        [v61 timeIntervalSinceDate:v63];
        v54 = v64;

        v52 = v188;
      }

      if (v9)
      {
        [v9 horizontalAccuracy];
        v66 = v65;
        v67 = [v52 caSeparationLocation];

        if (v67)
        {
          v68 = [v52 caSeparationLocation];
          [v9 distanceFromLocation:v68];
          v70 = v69;

          v177 = v70;
          v179 = v70 - v66;
        }

        else
        {
          v179 = -1;
          v177 = -1;
        }

        v71 = [(SAMonitoringSessionManager *)self lastLocation];

        if (v71)
        {
          v72 = objc_alloc(MEMORY[0x277CE41F8]);
          v73 = [(SAMonitoringSessionManager *)self lastLocation];
          [v73 latitude];
          v75 = v74;
          v76 = [(SAMonitoringSessionManager *)self lastLocation];
          [v76 longitude];
          v78 = [v72 initWithLatitude:v75 longitude:v77];

          [v9 distanceFromLocation:v78];
          v173 = v79;
          v175 = v79 - v66;
        }

        else
        {
          v173 = -1;
          v175 = -1;
        }
      }

      else
      {
        v179 = -1;
        v173 = -1;
        v175 = -1;
        v177 = -1;
        v66 = -1;
      }

      v80 = [v14 scanDate];
      if (v80)
      {
        v81 = [(SATimeServiceProtocol *)self->_clock getCurrentTime];
        [v81 timeIntervalSinceDate:v80];
        v83 = v82;
      }

      else
      {
        v83 = -1.0;
      }

      v189 = [v14 rssi];
      v186 = v80;
      if (v14)
      {
        v191 = [v14 getBatteryState];
      }

      else
      {
        v191 = -1;
      }

      v181 = v66;
      v84 = [(SAMonitoringSessionManager *)self deviceRecord];
      v85 = [v84 getLatestNOAdvertisement:v8];
      v86 = [v85 scanDate];

      v87 = -1.0;
      v88 = -1.0;
      if (v86)
      {
        v89 = [(SATimeServiceProtocol *)self->_clock getCurrentTime];
        [v89 timeIntervalSinceDate:v86];
        v88 = v90;
      }

      v91 = [(SAMonitoringSessionManager *)self deviceRecord];
      v92 = [v91 getLatestWildAdvertisement:v8];
      v93 = [v92 scanDate];

      v94 = v93;
      if (v93)
      {
        v95 = [(SATimeServiceProtocol *)self->_clock getCurrentTime];
        [v95 timeIntervalSinceDate:v93];
        v87 = v96;
      }

      v97 = [(SAMonitoringSessionManager *)self deviceRecord];
      v98 = [v97 getLastWithYouDate:v8];

      if (v98)
      {
        v99 = [(SATimeServiceProtocol *)self->_clock getCurrentTime];
        [v99 timeIntervalSinceDate:v98];
        v101 = v100;
      }

      else
      {
        v101 = -1.0;
      }

      v102 = [v10 objectForKeyedSubscript:&unk_2877100A8];
      if (v102)
      {
        v196 = [v10 objectForKeyedSubscript:&unk_2877100A8];
      }

      else
      {
        v196 = &unk_2877100D8;
      }

      v184 = v94;

      v103 = [v10 objectForKeyedSubscript:&unk_2877100F0];
      v194 = v8;
      v195 = v12;
      v187 = v14;
      v185 = v86;
      v183 = v98;
      if (v103)
      {
        v104 = [v10 objectForKeyedSubscript:&unk_2877100F0];
        v105 = [v104 BOOLValue];
      }

      else
      {
        v105 = 0;
      }

      v106 = [(SAMonitoringSessionManager *)self checkIfAlertWasTriggeredAtHome:v9 isEarlyVehicularTrigger:v105];
      v227[0] = v197;
      v226[0] = @"lastAlertType";
      v226[1] = @"lastAlert";
      v170 = [(SATimeServiceProtocol *)self->_clock getCurrentTime];
      v227[1] = v170;
      v226[2] = @"tLastWithYou";
      v168 = [MEMORY[0x277CCABB0] numberWithDouble:v101];
      v227[2] = v168;
      v227[3] = v9;
      v226[3] = @"lLastWithYou";
      v226[4] = @"lastAlertIsBookendingTravel";
      v227[4] = v196;
      v226[5] = @"lastAlertIsEarlyVehicularTrigger";
      v165 = [MEMORY[0x277CCABB0] numberWithBool:v105];
      v227[5] = v165;
      v226[6] = @"lastAlertVehicularState";
      v163 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SAMonitoringSessionManager caCurrentVehicularState](self, "caCurrentVehicularState")}];
      v227[6] = v163;
      v226[7] = @"lastAlertIsVehicularBTHintOn";
      v161 = [MEMORY[0x277CCABB0] numberWithBool:{-[SAMonitoringSessionManager caIsVehicularBTHintOn](self, "caIsVehicularBTHintOn")}];
      v227[7] = v161;
      v226[8] = @"lastAlertIsClassicallyConnected";
      v159 = [MEMORY[0x277CCABB0] numberWithBool:HIDWORD(v199)];
      v227[8] = v159;
      v226[9] = @"noCaseAdvSuppressed";
      v157 = [MEMORY[0x277CCABB0] numberWithBool:v199];
      v227[9] = v157;
      v226[10] = @"lastAlertBatteryState";
      v155 = [MEMORY[0x277CCABB0] numberWithInteger:v191];
      v227[10] = v155;
      v226[11] = @"closeToAnySafeLocations";
      v153 = [MEMORY[0x277CCABB0] numberWithBool:v203];
      v227[11] = v153;
      v226[12] = @"timeSinceLastAlert";
      v151 = [MEMORY[0x277CCABB0] numberWithDouble:v54];
      v227[12] = v151;
      v226[13] = @"triggeredAtHome";
      v107 = [MEMORY[0x277CCABB0] numberWithBool:v106];
      v227[13] = v107;
      v226[14] = @"lastAlertRssiValue";
      v108 = [MEMORY[0x277CCABB0] numberWithInteger:v189];
      v227[14] = v108;
      v226[15] = @"travelingSuppressed";
      [MEMORY[0x277CCABB0] numberWithBool:v201];
      v109 = v204 = self;
      v227[15] = v109;
      v226[16] = @"criticalLowBatterySuppressed";
      v110 = [MEMORY[0x277CCABB0] numberWithBool:v198];
      v227[16] = v110;
      v226[17] = @"HELEAdvertisingLimitSuppressed";
      v111 = [MEMORY[0x277CCABB0] numberWithBool:v202];
      v227[17] = v111;
      v226[18] = @"caseLeashedNotAdvSuppressed";
      v112 = [MEMORY[0x277CCABB0] numberWithBool:v200];
      v227[18] = v112;
      v172 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v227 forKeys:v226 count:19];

      v113 = [(SAMonitoringSessionManager *)v204 deviceUUIDtoAlertContext];
      [v113 setObject:v172 forKeyedSubscript:v194];

      v225[0] = v197;
      v224[0] = @"alertType";
      v224[1] = @"itemType";
      v171 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v193];
      v225[1] = v171;
      v224[2] = @"productID";
      v169 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v195, "productId")}];
      v225[2] = v169;
      v224[3] = @"vendorId";
      v166 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v195, "vendorId")}];
      v225[3] = v166;
      v224[4] = @"tSinceLastTransition";
      v164 = [MEMORY[0x277CCABB0] numberWithDouble:v55];
      v225[4] = v164;
      v224[5] = @"tSincePriorAlert";
      v162 = [MEMORY[0x277CCABB0] numberWithDouble:v54];
      v225[5] = v162;
      v224[6] = @"radius";
      v182 = [MEMORY[0x277CCABB0] numberWithInt:v181];
      v225[6] = v182;
      v224[7] = @"t1centerDistance";
      v178 = [MEMORY[0x277CCABB0] numberWithInt:v177];
      v225[7] = v178;
      v224[8] = @"t1boundaryDistance";
      v180 = [MEMORY[0x277CCABB0] numberWithInt:v179];
      v225[8] = v180;
      v224[9] = @"t2centerDistance";
      v174 = [MEMORY[0x277CCABB0] numberWithInt:v173];
      v225[9] = v174;
      v224[10] = @"t2boundaryDistance";
      v176 = [MEMORY[0x277CCABB0] numberWithInt:v175];
      v225[10] = v176;
      v224[11] = @"lastUpdateAge";
      v160 = [MEMORY[0x277CCABB0] numberWithDouble:v83];
      v225[11] = v160;
      v224[12] = @"lastAdvRSSI";
      v190 = [MEMORY[0x277CCABB0] numberWithInteger:v189];
      v225[12] = v190;
      v224[13] = @"airplaneEnabled";
      v158 = [MEMORY[0x277CCABB0] numberWithBool:{-[SAMonitoringSessionManager isInAirplaneMode](v204, "isInAirplaneMode")}];
      v225[13] = v158;
      v225[14] = v196;
      v224[14] = @"isBookendingTravel";
      v224[15] = @"isEarlyVehicularTrigger";
      v167 = [MEMORY[0x277CCABB0] numberWithBool:v105];
      v225[15] = v167;
      v224[16] = @"vehicularState";
      v156 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SAMonitoringSessionManager caCurrentVehicularState](v204, "caCurrentVehicularState")}];
      v225[16] = v156;
      v224[17] = @"isVehicularBTHintOn";
      v154 = [MEMORY[0x277CCABB0] numberWithBool:{-[SAMonitoringSessionManager caIsVehicularBTHintOn](v204, "caIsVehicularBTHintOn")}];
      v225[17] = v154;
      v224[18] = @"lastNOAdvertisementAge";
      v152 = [MEMORY[0x277CCABB0] numberWithDouble:v88];
      v225[18] = v152;
      v224[19] = @"lastWildAdvertisementAge";
      v150 = [MEMORY[0x277CCABB0] numberWithDouble:v87];
      v225[19] = v150;
      v224[20] = @"classicallyConnected";
      v149 = [MEMORY[0x277CCABB0] numberWithBool:HIDWORD(v199)];
      v225[20] = v149;
      v224[21] = @"noCaseAdvSuppressed";
      v148 = [MEMORY[0x277CCABB0] numberWithBool:v199];
      v225[21] = v148;
      v224[22] = @"lastBatteryStateBeforeAlert";
      v147 = [MEMORY[0x277CCABB0] numberWithInteger:v191];
      v225[22] = v147;
      v224[23] = @"closeToAnySafeLocations";
      v114 = [MEMORY[0x277CCABB0] numberWithBool:v203];
      v225[23] = v114;
      v224[24] = @"systemVersion";
      v115 = [v195 systemVersion];
      v116 = v115;
      v117 = @"unknown";
      if (v115)
      {
        v117 = v115;
      }

      v225[24] = v117;
      v224[25] = @"isHome";
      v118 = [MEMORY[0x277CCABB0] numberWithBool:v106];
      v225[25] = v118;
      v224[26] = @"hasSurfacedInCurrentTravelingSession";
      v119 = [MEMORY[0x277CCABB0] numberWithBool:v201];
      v225[26] = v119;
      v224[27] = @"criticalLowBatterySuppressed";
      v120 = [MEMORY[0x277CCABB0] numberWithBool:v198];
      v225[27] = v120;
      v224[28] = @"HELEAdvertisingLimit";
      v121 = [MEMORY[0x277CCABB0] numberWithBool:v202];
      v225[28] = v121;
      v224[29] = @"caseLeashedNotAdvSuppressed";
      v122 = [MEMORY[0x277CCABB0] numberWithBool:v200];
      v225[29] = v122;
      v192 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v225 forKeys:v224 count:30];

      v12 = v195;
      v8 = v194;

      p_isa = &v204->super.isa;
      v124 = [(SAMonitoringSessionManager *)v204 analytics];
      [v124 submitEvent:@"com.apple.clx.alert.alertEvent" content:v192];

      v125 = [(SAMonitoringSessionManager *)v204 analytics];
      v126 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v193];
      [v125 submitAlertRateEvent:v126 alertType:v197];

      v14 = v187;
      if (((v198 | v201 | v199 | HIDWORD(v199) | v203 | (v202 || v200)) & 1) == 0)
      {
        v127 = TASALog;
        if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
        {
          v128 = v127;
          v129 = [v195 identifier];
          v130 = [v195 name];
          v131 = [v10 objectForKeyedSubscript:&unk_2877100C0];
          v132 = [v131 integerValue];
          v133 = [(SAMonitoringSessionManager *)v204 getMoreSpecificSADeviceType:v195];
          v134 = [v195 systemVersion];
          *buf = 68290307;
          v211 = 0;
          v212 = 2082;
          v213 = "";
          v214 = 2113;
          v215 = v129;
          v216 = 2113;
          v217 = v130;
          v218 = 2049;
          v219 = v132;
          v220 = 2049;
          v221 = v133;
          v222 = 2113;
          v223 = v134;
          _os_log_impl(&dword_2656EA000, v128, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sa notify separation, uuid:%{private}@, name:%{private}@, type:%{private}ld, deviceType:%{private}ld, systemVersion:%{private}@}", buf, 0x44u);

          v12 = v195;
          p_isa = &v204->super.isa;
        }

        v135 = [p_isa[2] getCurrentTime];
        v136 = [p_isa caLastAlertDate];
        [v136 setObject:v135 forKeyedSubscript:v194];

        v137 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{v12, 0}];
        v205 = 0u;
        v206 = 0u;
        v207 = 0u;
        v208 = 0u;
        v138 = p_isa[6];
        v139 = [v138 countByEnumeratingWithState:&v205 objects:v209 count:16];
        if (v139)
        {
          v140 = v139;
          v141 = *v206;
          do
          {
            for (i = 0; i != v140; ++i)
            {
              if (*v206 != v141)
              {
                objc_enumerationMutation(v138);
              }

              v143 = *(*(&v205 + 1) + 8 * i);
              if (objc_opt_respondsToSelector())
              {
                [v143 notifySeparationsForDevices:v137 withLocation:v9 withContext:v10];
              }
            }

            v140 = [v138 countByEnumeratingWithState:&v205 objects:v209 count:16];
          }

          while (v140);
        }

        v8 = v194;
        v12 = v195;
        v14 = v187;
      }

      goto LABEL_86;
    }

    v17 = [v12 macAddress];
    v18 = [(SAMonitoringSessionManager *)self checkInEarStatus:v17];

    v19 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289283;
      v211 = 0;
      v212 = 2082;
      v213 = "";
      v214 = 2049;
      v215 = v18;
      _os_log_impl(&dword_2656EA000, v19, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:SAMonitoringSessionManager in ear status before notifying, state:%{private}ld}", buf, 0x1Cu);
    }

    switch(v18)
    {
      case 1:
        v28 = [v12 name];
        v29 = [v28 isEqualToString:@"left"];

        if (v29)
        {
          goto LABEL_14;
        }

        break;
      case 2:
        v22 = [v12 name];
        v23 = [v22 isEqualToString:@"right"];

        if (v23)
        {
          goto LABEL_14;
        }

        break;
      case 3:
        v20 = [v12 name];
        if ([v20 isEqualToString:@"left"])
        {

LABEL_14:
          v24 = TASALog;
          if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
          {
            v25 = v24;
            v26 = [v12 identifier];
            v27 = [v26 UUIDString];
            *buf = 68289283;
            v211 = 0;
            v212 = 2082;
            v213 = "";
            v214 = 2113;
            v215 = v27;
            _os_log_impl(&dword_2656EA000, v25, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sa separation for classically connected device, device:%{private}@}", buf, 0x1Cu);
          }

          HIDWORD(v199) = 1;
LABEL_19:
          if (([v12 isAirPodsCase] & 1) == 0 && !objc_msgSend(v12, "isBudForAirPodsBLECase"))
          {
            LODWORD(v199) = 0;
            if (v14)
            {
              goto LABEL_35;
            }

            goto LABEL_39;
          }

          v30 = [(SAMonitoringSessionManager *)self deviceRecord];
          v31 = [v30 getLatestCaseAdvertisementDate:v8];

          if (v31)
          {
            v32 = [(SATimeServiceProtocol *)self->_clock getCurrentTime];
            [v32 timeIntervalSinceDate:v31];
            v34 = v33;

            v35 = TASALog;
            v36 = os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT);
            if (v34 <= 129600.0)
            {
              if (v36)
              {
                v43 = v35;
                v44 = [v12 identifier];
                [v44 UUIDString];
                v46 = v45 = self;
                *buf = 68289283;
                v211 = 0;
                v212 = 2082;
                v213 = "";
                v214 = 2113;
                v215 = v46;
                _os_log_impl(&dword_2656EA000, v43, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sa separation for device with recent case advertisement, device:%{private}@}", buf, 0x1Cu);

                self = v45;
              }

              LODWORD(v199) = 0;
LABEL_34:

              if (v14)
              {
LABEL_35:
                if ([v14 getBatteryState] == 3)
                {
                  v47 = TASALog;
                  if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
                  {
                    v48 = v47;
                    v49 = [v12 identifier];
                    v50 = [v49 UUIDString];
                    *buf = 68289283;
                    v211 = 0;
                    v212 = 2082;
                    v213 = "";
                    v214 = 2113;
                    v215 = v50;
                    _os_log_impl(&dword_2656EA000, v48, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sa separation for device with critical low battery level - suppressing alert, device:%{private}@}", buf, 0x1Cu);
                  }

                  v198 = 1;
                  goto LABEL_40;
                }
              }

LABEL_39:
              v198 = 0;
              goto LABEL_40;
            }

            if (v36)
            {
              v37 = v35;
              v38 = [v12 identifier];
              [v38 UUIDString];
              v40 = v39 = self;
              *buf = 68289283;
              v211 = 0;
              v212 = 2082;
              v213 = "";
              v214 = 2113;
              v215 = v40;
              v41 = "{msg%{public}.0s:#sa separation for device with too old case advertisement - suppressing alert, device:%{private}@}";
LABEL_27:
              _os_log_impl(&dword_2656EA000, v37, OS_LOG_TYPE_DEFAULT, v41, buf, 0x1Cu);

              self = v39;
            }
          }

          else
          {
            v42 = TASALog;
            if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
            {
              v37 = v42;
              v38 = [v12 identifier];
              [v38 UUIDString];
              v40 = v39 = self;
              *buf = 68289283;
              v211 = 0;
              v212 = 2082;
              v213 = "";
              v214 = 2113;
              v215 = v40;
              v41 = "{msg%{public}.0s:#sa separation for device with no recent case advertisement - suppressing alert, device:%{private}@}";
              goto LABEL_27;
            }
          }

          LODWORD(v199) = 1;
          goto LABEL_34;
        }

        v145 = [v12 name];
        v146 = [v145 isEqualToString:@"right"];

        if (v146)
        {
          goto LABEL_14;
        }

        break;
    }

    HIDWORD(v199) = 0;
    goto LABEL_19;
  }

  v21 = TASALog;
  if (os_log_type_enabled(TASALog, OS_LOG_TYPE_FAULT))
  {
    *buf = 68289283;
    v211 = 0;
    v212 = 2082;
    v213 = "";
    v214 = 2113;
    v215 = v8;
    _os_log_impl(&dword_2656EA000, v21, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#sa Service tried to notify with no corresponding device, uuid:%{private}@}", buf, 0x1Cu);
  }

LABEL_86:

  v144 = *MEMORY[0x277D85DE8];
}

- (void)handleGeofenceExitedForDeviceUUID:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(SAMonitoringSessionManager *)self standby])
  {
    v5 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      v16 = 0;
      v17 = 2082;
      v18 = "";
      _os_log_impl(&dword_2656EA000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAMonitoringSessionManager travel exit while in standby}", buf, 0x12u);
    }

    [(SAMonitoringSessionManager *)self changeMonitoringSessionState:v4 toState:2];
  }

  else
  {
    v6 = [(SAMonitoringSessionManager *)self clock];
    v7 = [v6 getCurrentTime];
    v8 = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
    v9 = [v8 objectForKeyedSubscript:v4];
    [v9 setTravelingGeofenceExitDate:v7];

    [(SAMonitoringSessionManager *)self changeMonitoringSessionState:v4 toState:4];
    if ([(SAMonitoringSessionManager *)self _isOnlyMonitoringDisconnectedCompanionDevice])
    {
      v10 = TASALog;
      if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289026;
        v16 = 0;
        v17 = 2082;
        v18 = "";
        _os_log_impl(&dword_2656EA000, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAMonitoringSessionManager is only monitoring disconnected companion device, skipping force update all WithYouStatus}", buf, 0x12u);
      }

      [(SAMonitoringSessionManager *)self didForceUpdateWithYouStatus];
    }

    else
    {
      v11 = [(SAMonitoringSessionManager *)self withYouDetector];
      v14 = v4;
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:1];
      [v11 forceUpdateWithYouStatusToFindDevices:v12 withContext:3];
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isOnlyMonitoringDisconnectedCompanionDevice
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
  v4 = [v3 allKeys];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        v11 = [(SADeviceRecord *)self->_deviceRecord getSADevice:v10, v21];

        if (v11)
        {
          v12 = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
          v13 = [v12 objectForKeyedSubscript:v10];

          v14 = [v13 state];
          if (v14 <= 5 && ((1 << v14) & 0x3A) != 0)
          {
            v16 = [(SADeviceRecord *)self->_deviceRecord getSADevice:v10];
            v17 = [v16 deviceType];

            if (v17 != 8)
            {

              v18 = 0;
              goto LABEL_17;
            }
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v18 = 1;
LABEL_17:

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

- (BOOL)addTravelFenceForDevice:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (!v6)
  {
    v22 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_FAULT))
    {
      v29 = 68289283;
      v30 = 0;
      v31 = 2082;
      v32 = "";
      v33 = 2113;
      v34 = v4;
      v23 = "{msg%{public}.0s:#SAMonitoringSessionManager unable to set while traveling fence due to no session, uuid:%{private}@}";
      v24 = v22;
      v25 = OS_LOG_TYPE_FAULT;
LABEL_8:
      _os_log_impl(&dword_2656EA000, v24, v25, v23, &v29, 0x1Cu);
    }

LABEL_9:
    v21 = 0;
    goto LABEL_10;
  }

  v7 = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
  v8 = [v7 objectForKeyedSubscript:v4];
  v9 = [v8 firstNotWithYouLocation];

  if (!v9)
  {
    lastLocation = self->_lastLocation;
    if (lastLocation)
    {
      v9 = lastLocation;
      goto LABEL_5;
    }

    v28 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
    {
      v29 = 68289283;
      v30 = 0;
      v31 = 2082;
      v32 = "";
      v33 = 2113;
      v34 = v4;
      v23 = "{msg%{public}.0s:#SAMonitoringSessionManager unable to set while traveling fence due to no last location, uuid:%{private}@}";
      v24 = v28;
      v25 = OS_LOG_TYPE_ERROR;
      goto LABEL_8;
    }

    goto LABEL_9;
  }

LABEL_5:
  [(TALocationLite *)v9 latitude];
  v12 = v11;
  [(TALocationLite *)v9 longitude];
  v14 = v13;
  v15 = objc_alloc(MEMORY[0x277CBFBC8]);
  v16 = [v4 UUIDString];
  v17 = [v15 initWithCenter:v16 radius:v12 identifier:{v14, 100.0}];

  v18 = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
  v19 = [v18 objectForKeyedSubscript:v4];
  [v19 setGeofence:v17];

  v20 = [(SAMonitoringSessionManager *)self fenceRequestServicer];
  [v20 addGeofence:v17];

  v21 = 1;
LABEL_10:

  v26 = *MEMORY[0x277D85DE8];
  return v21;
}

- (void)removeTravelFenceForDevice:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (v6)
  {
    v7 = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
    v8 = [v7 objectForKeyedSubscript:v4];
    v9 = [v8 geofence];

    if (v9)
    {
      v10 = [(SAMonitoringSessionManager *)self fenceRequestServicer];
      v11 = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
      v12 = [v11 objectForKeyedSubscript:v4];
      v13 = [v12 geofence];
      [v10 removeGeofence:v13];
    }

    v14 = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
    v15 = [v14 objectForKeyedSubscript:v4];
    [v15 setGeofence:0];
  }

  else
  {
    v16 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_FAULT))
    {
      v18[0] = 68289283;
      v18[1] = 0;
      v19 = 2082;
      v20 = "";
      v21 = 2113;
      v22 = v4;
      _os_log_impl(&dword_2656EA000, v16, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#SAMonitoringSessionManager unable to remove while traveling fence due to no session, uuid:%{private}@}", v18, 0x1Cu);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)storeSeparationLocation:(id)a3
{
  v14 = a3;
  v4 = [(SAMonitoringSessionManager *)self lastLocation];

  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x277CE41F8]);
    v6 = [(SAMonitoringSessionManager *)self lastLocation];
    [v6 latitude];
    v8 = v7;
    v9 = [(SAMonitoringSessionManager *)self lastLocation];
    [v9 longitude];
    v11 = [v5 initWithLatitude:v8 longitude:v10];
    v12 = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
    v13 = [v12 objectForKeyedSubscript:v14];
    [v13 setCaSeparationLocation:v11];
  }
}

- (void)notifyWhenLeftBehind:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(SAMonitoringSessionManager *)self standby])
  {
    v5 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 68289026;
      v21 = 0;
      v22 = 2082;
      v23 = "";
      v6 = "{msg%{public}.0s:#SAMonitoringSessionManager standby notify}";
      v7 = v5;
      v8 = OS_LOG_TYPE_DEFAULT;
      v9 = 18;
LABEL_13:
      _os_log_impl(&dword_2656EA000, v7, v8, v6, &v20, v9);
    }
  }

  else
  {
    v10 = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
    v11 = [v10 objectForKeyedSubscript:v4];

    if (v11)
    {
      v12 = [(SADeviceRecord *)self->_deviceRecord getLastWithYouLocation:v4];
      if (!v12)
      {
        v13 = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
        v14 = [v13 objectForKeyedSubscript:v4];
        v15 = [v14 scenarioClassifier];
        v16 = [v15 lastUnsafeLocation];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v17 = v16;
        }

        else
        {
          v17 = 0;
        }

        v12 = v17;
      }

      [(SAMonitoringSessionManager *)self notifyLeftBehind:v4 withRegion:v12 isEarlyVehicularTrigger:0];
    }

    else
    {
      v18 = TASALog;
      if (os_log_type_enabled(TASALog, OS_LOG_TYPE_FAULT))
      {
        v20 = 68289283;
        v21 = 0;
        v22 = 2082;
        v23 = "";
        v24 = 2113;
        v25 = v4;
        v6 = "{msg%{public}.0s:#SAMonitoringSessionManager unable to notify when left behind due to no session, uuid:%{private}@}";
        v7 = v18;
        v8 = OS_LOG_TYPE_FAULT;
        v9 = 28;
        goto LABEL_13;
      }
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)notifyEarlyLeftBehind:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(SAMonitoringSessionManager *)self standby])
  {
    v5 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 68289026;
      v21 = 0;
      v22 = 2082;
      v23 = "";
      v6 = "{msg%{public}.0s:#SAMonitoringSessionManager standby notify early}";
      v7 = v5;
      v8 = OS_LOG_TYPE_DEFAULT;
      v9 = 18;
LABEL_13:
      _os_log_impl(&dword_2656EA000, v7, v8, v6, &v20, v9);
    }
  }

  else
  {
    v10 = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
    v11 = [v10 objectForKeyedSubscript:v4];

    if (v11)
    {
      v12 = [(SADeviceRecord *)self->_deviceRecord getLastWithYouLocation:v4];
      if (!v12)
      {
        v13 = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
        v14 = [v13 objectForKeyedSubscript:v4];
        v15 = [v14 scenarioClassifier];
        v16 = [v15 currentUnsafeLocation];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v17 = v16;
        }

        else
        {
          v17 = 0;
        }

        v12 = v17;
      }

      [(SAMonitoringSessionManager *)self notifyLeftBehind:v4 withRegion:v12 isEarlyVehicularTrigger:1];
    }

    else
    {
      v18 = TASALog;
      if (os_log_type_enabled(TASALog, OS_LOG_TYPE_FAULT))
      {
        v20 = 68289283;
        v21 = 0;
        v22 = 2082;
        v23 = "";
        v24 = 2113;
        v25 = v4;
        v6 = "{msg%{public}.0s:#SAMonitoringSessionManager unable to notify early left behind due to no session, uuid:%{private}@}";
        v7 = v18;
        v8 = OS_LOG_TYPE_FAULT;
        v9 = 28;
        goto LABEL_13;
      }
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (id)createLocationFromCircularRegion:(id)a3 forDevice:(id)a4 withContext:(unint64_t)a5
{
  v32 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    goto LABEL_5;
  }

  [v8 radius];
  v11 = 75.0;
  if (v10 >= 75.0)
  {
    v11 = v10;
    if (v10 <= 0.0)
    {
      goto LABEL_5;
    }
  }

  v12 = objc_alloc(MEMORY[0x277CE41F8]);
  [v8 center];
  v14 = v13;
  v16 = v15;
  v17 = [(SATimeServiceProtocol *)self->_clock getCurrentTime];
  v18 = [v12 initWithCoordinate:v17 altitude:objc_msgSend(v8 horizontalAccuracy:"geoReferenceFrame") verticalAccuracy:v14 timestamp:v16 referenceFrame:{0.0, v11, -1.0}];

  if (!v18)
  {
LABEL_5:
    v19 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
    {
      v20 = MEMORY[0x277CCABB0];
      v21 = v19;
      v22 = [v20 numberWithUnsignedInteger:a5];
      v25[0] = 68289539;
      v25[1] = 0;
      v26 = 2082;
      v27 = "";
      v28 = 2113;
      v29 = v9;
      v30 = 2113;
      v31 = v22;
      _os_log_impl(&dword_2656EA000, v21, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#SAMonitoringSessionManager unable to create/recommend location, uuid:%{private}@, context:%{private}@}", v25, 0x26u);
    }

    v18 = 0;
  }

  v23 = *MEMORY[0x277D85DE8];

  return v18;
}

- (void)setSafeLocations:(id)a3 forDeviceUUID:(id)a4
{
  v90 = *MEMORY[0x277D85DE8];
  v55 = a3;
  v6 = a4;
  v52 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v7 = [(SAMonitoringSessionManager *)self deviceUUIDtoSafeLocationUUIDs];
  v8 = [v7 objectForKeyedSubscript:v6];

  obj = v8;
  v9 = [v8 countByEnumeratingWithState:&v73 objects:v89 count:16];
  if (v9)
  {
    v11 = v9;
    v12 = *v74;
    *&v10 = 138477827;
    v51 = v10;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v74 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v73 + 1) + 8 * i);
        v69 = 0u;
        v70 = 0u;
        v71 = 0u;
        v72 = 0u;
        v15 = v55;
        v16 = [v15 countByEnumeratingWithState:&v69 objects:v88 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v70;
          while (2)
          {
            for (j = 0; j != v17; ++j)
            {
              if (*v70 != v18)
              {
                objc_enumerationMutation(v15);
              }

              if ([*(*(&v69 + 1) + 8 * j) isEqual:{v14, v51}])
              {

                goto LABEL_18;
              }
            }

            v17 = [v15 countByEnumeratingWithState:&v69 objects:v88 count:16];
            if (v17)
            {
              continue;
            }

            break;
          }
        }

        v20 = TASALog;
        if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
        {
          v21 = v20;
          v22 = [v14 UUIDString];
          *buf = v51;
          *v78 = v22;
          _os_log_impl(&dword_2656EA000, v21, OS_LOG_TYPE_DEFAULT, "#SAMonitoringSessionManager found removed location, for deviceId, %{private}@", buf, 0xCu);
        }

        [v52 addObject:{v14, v51}];
LABEL_18:
        ;
      }

      v11 = [obj countByEnumeratingWithState:&v73 objects:v89 count:16];
    }

    while (v11);
  }

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v23 = v52;
  v24 = [v23 countByEnumeratingWithState:&v65 objects:v87 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v66;
    do
    {
      for (k = 0; k != v25; ++k)
      {
        if (*v66 != v26)
        {
          objc_enumerationMutation(v23);
        }

        [(SAMonitoringSessionManager *)self stopSafeLocation:*(*(&v65 + 1) + 8 * k) forDevice:v6];
      }

      v25 = [v23 countByEnumeratingWithState:&v65 objects:v87 count:16];
    }

    while (v25);
  }

  obja = v23;

  v28 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v56 = v55;
  v29 = [v56 countByEnumeratingWithState:&v61 objects:v86 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v62;
    do
    {
      v32 = 0;
      do
      {
        if (*v62 != v31)
        {
          objc_enumerationMutation(v56);
        }

        v33 = *(*(&v61 + 1) + 8 * v32);
        v34 = [(SAMonitoringSessionManager *)self deviceUUIDtoSafeLocationUUIDs];
        v35 = [v34 objectForKeyedSubscript:v6];
        v36 = [v35 containsObject:v33];

        if ((v36 & 1) == 0)
        {
          v37 = [(SAMonitoringSessionManager *)self safeLocations];
          v38 = [v37 objectForKeyedSubscript:v33];

          if (v38)
          {
            [v28 addObject:v33];
          }

          else
          {
            v39 = TASALog;
            if (os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
            {
              [(SAMonitoringSessionManager *)v84 setSafeLocations:v39 forDeviceUUID:v6, &v85];
            }
          }
        }

        ++v32;
      }

      while (v30 != v32);
      v30 = [v56 countByEnumeratingWithState:&v61 objects:v86 count:16];
    }

    while (v30);
  }

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v40 = v28;
  v41 = [v40 countByEnumeratingWithState:&v57 objects:v83 count:16];
  if (v41)
  {
    v42 = v41;
    v43 = *v58;
    do
    {
      for (m = 0; m != v42; ++m)
      {
        if (*v58 != v43)
        {
          objc_enumerationMutation(v40);
        }

        [(SAMonitoringSessionManager *)self startSafeLocation:*(*(&v57 + 1) + 8 * m) forDevice:v6];
      }

      v42 = [v40 countByEnumeratingWithState:&v57 objects:v83 count:16];
    }

    while (v42);
  }

  v45 = TASALog;
  if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
  {
    v46 = v45;
    v47 = [v40 count];
    *buf = 68289539;
    *v78 = 0;
    *&v78[4] = 2082;
    *&v78[6] = "";
    v79 = 2113;
    v80 = v6;
    v81 = 2049;
    v82 = v47;
    _os_log_impl(&dword_2656EA000, v46, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAMonitoringSessionManager update safe locations, device:%{private}@, count:%{private}ld}", buf, 0x26u);
  }

  v48 = [v56 copy];
  v49 = [(SAMonitoringSessionManager *)self deviceUUIDtoSafeLocationUUIDs];
  [v49 setObject:v48 forKeyedSubscript:v6];

  v50 = *MEMORY[0x277D85DE8];
}

- (void)removeSafeLocation:(id)a3 forDeviceUUID:(id)a4
{
  v18 = a3;
  v6 = a4;
  if (v18)
  {
    if (v6)
    {
      v7 = [(SAMonitoringSessionManager *)self deviceUUIDtoSafeLocationUUIDs];
      v8 = [v7 objectForKeyedSubscript:v6];
      v9 = [v8 containsObject:v18];

      if (v9)
      {
        v10 = MEMORY[0x277CBEB58];
        v11 = [(SAMonitoringSessionManager *)self deviceUUIDtoSafeLocationUUIDs];
        v12 = [v11 objectForKeyedSubscript:v6];
        v13 = [v10 setWithSet:v12];

        v14 = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
        v15 = [v14 objectForKeyedSubscript:v6];

        v16 = v18;
        if (v15)
        {
          [(SAMonitoringSessionManager *)self stopSafeLocation:v18 forDevice:v6];
          v16 = v18;
        }

        [v13 removeObject:v16];
        v17 = [(SAMonitoringSessionManager *)self deviceUUIDtoSafeLocationUUIDs];
        [v17 setObject:v13 forKeyedSubscript:v6];
      }
    }
  }
}

- (void)removeAndStopSafeLocationsForDeviceUUID:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SAMonitoringSessionManager *)self deviceUUIDtoSafeLocationUUIDs];
  v6 = [v5 objectForKeyedSubscript:v4];
  v7 = [v6 allObjects];

  v8 = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
  v9 = [v8 objectForKeyedSubscript:v4];

  if (v9)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v10 = v7;
    v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v18;
      do
      {
        v14 = 0;
        do
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(v10);
          }

          [(SAMonitoringSessionManager *)self stopSafeLocation:*(*(&v17 + 1) + 8 * v14++) forDevice:v4, v17];
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v12);
    }
  }

  v15 = [(SAMonitoringSessionManager *)self deviceUUIDtoSafeLocationUUIDs];
  [v15 setObject:0 forKeyedSubscript:v4];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)startSafeLocation:(id)a3 forDevice:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(SAMonitoringSessionManager *)self safeLocations];
  v9 = [v8 objectForKeyedSubscript:v6];

  if (!v9)
  {
    v20 = TASALog;
    if (!os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    v26 = 68289539;
    v27 = 0;
    v28 = 2082;
    v29 = "";
    v30 = 2113;
    v31 = v6;
    v32 = 2113;
    v33 = v7;
    v21 = "{msg%{public}.0s:#SAMonitoringSessionManager start location error, location:%{private}@, device:%{private}@}";
    v22 = v20;
    v23 = 38;
LABEL_10:
    _os_log_impl(&dword_2656EA000, v22, OS_LOG_TYPE_ERROR, v21, &v26, v23);
    goto LABEL_11;
  }

  v10 = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
  v11 = [v10 objectForKeyedSubscript:v7];

  if (!v11)
  {
    v24 = TASALog;
    if (!os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    v26 = 68289283;
    v27 = 0;
    v28 = 2082;
    v29 = "";
    v30 = 2113;
    v31 = v7;
    v21 = "{msg%{public}.0s:#SAMonitoringSessionManager start location device error, device:%{private}@}";
    v22 = v24;
    v23 = 28;
    goto LABEL_10;
  }

  v12 = [SASafeLocationUpdateEvent alloc];
  v13 = [(SATimeServiceProtocol *)self->_clock getCurrentTime];
  v14 = [(SASafeLocationUpdateEvent *)v12 initWithSafeLocation:v9 eventType:0 lastEvent:1 date:v13];

  v15 = TASALog;
  if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
  {
    v16 = v15;
    v26 = 68289795;
    v27 = 0;
    v28 = 2082;
    v29 = "";
    v30 = 2113;
    v31 = v6;
    v32 = 2113;
    v33 = v7;
    v34 = 2049;
    v35 = [v9 referenceFrame];
    _os_log_impl(&dword_2656EA000, v16, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAMonitoringSessionManager start location, location:%{private}@, device:%{private}@, refFrame:%{private}lu}", &v26, 0x30u);
  }

  v17 = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
  v18 = [v17 objectForKeyedSubscript:v7];
  v19 = [v18 scenarioClassifier];
  [v19 ingestTAEvent:v14];

LABEL_11:
  v25 = *MEMORY[0x277D85DE8];
}

- (void)stopSafeLocation:(id)a3 forDevice:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(SAMonitoringSessionManager *)self safeLocations];
  v9 = [v8 objectForKeyedSubscript:v6];

  if (!v9)
  {
    v19 = TASALog;
    if (!os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    v25 = 68289539;
    *v26 = 0;
    *&v26[4] = 2082;
    *&v26[6] = "";
    *&v26[14] = 2113;
    *&v26[16] = v6;
    v27 = 2113;
    v28 = v7;
    v20 = "{msg%{public}.0s:#SAMonitoringSessionManager stop location error, location:%{private}@, device:%{private}@}";
    v21 = v19;
    v22 = 38;
LABEL_10:
    _os_log_impl(&dword_2656EA000, v21, OS_LOG_TYPE_ERROR, v20, &v25, v22);
    goto LABEL_11;
  }

  v10 = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
  v11 = [v10 objectForKeyedSubscript:v7];

  if (!v11)
  {
    v23 = TASALog;
    if (!os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    v25 = 68289283;
    *v26 = 0;
    *&v26[4] = 2082;
    *&v26[6] = "";
    *&v26[14] = 2113;
    *&v26[16] = v7;
    v20 = "{msg%{public}.0s:#SAMonitoringSessionManager stop location device error, device:%{private}@}";
    v21 = v23;
    v22 = 28;
    goto LABEL_10;
  }

  v12 = [SASafeLocationUpdateEvent alloc];
  v13 = [(SATimeServiceProtocol *)self->_clock getCurrentTime];
  v14 = [(SASafeLocationUpdateEvent *)v12 initWithSafeLocation:v9 eventType:1 lastEvent:1 date:v13];

  v15 = TASALog;
  if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 138478083;
    *v26 = v6;
    *&v26[8] = 2113;
    *&v26[10] = v7;
    _os_log_impl(&dword_2656EA000, v15, OS_LOG_TYPE_DEFAULT, "#SAMonitoringSessionManager stop location %{private}@ for device %{private}@", &v25, 0x16u);
  }

  v16 = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
  v17 = [v16 objectForKeyedSubscript:v7];
  v18 = [v17 scenarioClassifier];
  [v18 ingestTAEvent:v14];

LABEL_11:
  v24 = *MEMORY[0x277D85DE8];
}

- (void)removeDevicesIfNeededPerEvent:(id)a3
{
  v84 = *MEMORY[0x277D85DE8];
  v51 = a3;
  obj = objc_alloc_init(MEMORY[0x277CBEB18]);
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v4 = [(SAMonitoringSessionManager *)self devices];
  v5 = [v4 countByEnumeratingWithState:&v72 objects:v83 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v73;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v73 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v72 + 1) + 8 * i);
        v68 = 0u;
        v69 = 0u;
        v70 = 0u;
        v71 = 0u;
        v10 = [v51 devices];
        v11 = [v10 countByEnumeratingWithState:&v68 objects:v82 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v69;
          while (2)
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v69 != v13)
              {
                objc_enumerationMutation(v10);
              }

              if ([*(*(&v68 + 1) + 8 * j) isEqual:v9])
              {

                goto LABEL_18;
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v68 objects:v82 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }

        v15 = TASALog;
        if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
        {
          v16 = v15;
          v17 = [v9 UUIDString];
          *buf = 138477827;
          v81 = v17;
          _os_log_impl(&dword_2656EA000, v16, OS_LOG_TYPE_DEFAULT, "#SAMonitoringSessionManager found unpaired device, clearing deviceId, %{private}@", buf, 0xCu);
        }

        [obj addObject:v9];
LABEL_18:
        ;
      }

      v6 = [v4 countByEnumeratingWithState:&v72 objects:v83 count:16];
    }

    while (v6);
  }

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v18 = obj;
  v19 = [v18 countByEnumeratingWithState:&v64 objects:v79 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v65;
    do
    {
      for (k = 0; k != v20; ++k)
      {
        if (*v65 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v64 + 1) + 8 * k);
        v24 = [v18 lastObject];
        [(SAMonitoringSessionManager *)self removeDeviceWithUUID:v23 isLastDeviceEvent:v23 == v24];
      }

      v20 = [v18 countByEnumeratingWithState:&v64 objects:v79 count:16];
    }

    while (v20);
  }

  v25 = [(SAMonitoringSessionManager *)self devices];
  [v25 removeObjectsForKeys:v18];

  v26 = [(SAMonitoringSessionManager *)self deviceUUIDtoSafeLocationUUIDs];
  [v26 removeObjectsForKeys:v18];

  v48 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  obja = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
  v27 = [obja countByEnumeratingWithState:&v60 objects:v78 count:16];
  if (v27)
  {
    v29 = v27;
    v30 = *v61;
    *&v28 = 138477827;
    v47 = v28;
    do
    {
      for (m = 0; m != v29; ++m)
      {
        if (*v61 != v30)
        {
          objc_enumerationMutation(obja);
        }

        v32 = *(*(&v60 + 1) + 8 * m);
        v56 = 0u;
        v57 = 0u;
        v58 = 0u;
        v59 = 0u;
        v33 = [v51 devices];
        v34 = [v33 countByEnumeratingWithState:&v56 objects:v77 count:16];
        if (v34)
        {
          v35 = v34;
          v36 = *v57;
          while (2)
          {
            for (n = 0; n != v35; ++n)
            {
              if (*v57 != v36)
              {
                objc_enumerationMutation(v33);
              }

              if ([*(*(&v56 + 1) + 8 * n) isEqual:v32])
              {

                goto LABEL_44;
              }
            }

            v35 = [v33 countByEnumeratingWithState:&v56 objects:v77 count:16];
            if (v35)
            {
              continue;
            }

            break;
          }
        }

        v38 = TASALog;
        if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
        {
          v39 = v38;
          v40 = [v32 UUIDString];
          *buf = v47;
          v81 = v40;
          _os_log_impl(&dword_2656EA000, v39, OS_LOG_TYPE_DEFAULT, "#SAMonitoringSessionManager found unpaired device in monitoring session record, clearing deviceId, %{private}@", buf, 0xCu);
        }

        [v48 addObject:v32];
LABEL_44:
        ;
      }

      v29 = [obja countByEnumeratingWithState:&v60 objects:v78 count:16];
    }

    while (v29);
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v41 = v48;
  v42 = [v41 countByEnumeratingWithState:&v52 objects:v76 count:16];
  if (v42)
  {
    v43 = v42;
    v44 = *v53;
    do
    {
      for (ii = 0; ii != v43; ++ii)
      {
        if (*v53 != v44)
        {
          objc_enumerationMutation(v41);
        }

        [(SAMonitoringSessionManager *)self cancelMonitoringDevice:*(*(&v52 + 1) + 8 * ii)];
      }

      v43 = [v41 countByEnumeratingWithState:&v52 objects:v76 count:16];
    }

    while (v43);
  }

  v46 = *MEMORY[0x277D85DE8];
}

- (void)addDevicesIfNeededPerEvent:(id)a3
{
  v51 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v38 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = [v4 devices];
  v40 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
  if (v40)
  {
    v39 = *v46;
    v36 = v4;
    do
    {
      for (i = 0; i != v40; ++i)
      {
        if (*v46 != v39)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v45 + 1) + 8 * i);
        v7 = [v4 devices];
        v8 = [v7 objectForKeyedSubscript:v6];

        v9 = [(SAMonitoringSessionManager *)self devices];
        v10 = [v9 objectForKeyedSubscript:v6];

        if (v10)
        {
          if ([v10 isReallyEqual:v8])
          {
            v11 = [v4 safeLocations];
            v12 = [v11 objectForKeyedSubscript:v6];
            v13 = [(SAMonitoringSessionManager *)self deviceUUIDtoSafeLocationUUIDs];
            v14 = [v13 objectForKeyedSubscript:v6];
            v15 = [v12 isEqualToSet:v14];

            v4 = v36;
            if (v15)
            {
              goto LABEL_13;
            }

            v16 = [v36 safeLocations];
            v17 = [v16 objectForKeyedSubscript:v6];
            [(SAMonitoringSessionManager *)self removeSafeLocationsIfNeededPerNewSet:v17 forDevice:v6];

            v18 = [v36 safeLocations];
            v19 = [v18 objectForKeyedSubscript:v6];
            [(SAMonitoringSessionManager *)self addSafeLocationsIfNeededPerNewSet:v19 forDevice:v6];
          }

          else
          {
            [(SAMonitoringSessionManager *)self removeAndStopSafeLocationsForDeviceUUID:v6];
            v20 = [(SAMonitoringSessionManager *)self devices];
            v21 = [v10 identifier];
            [v20 setObject:0 forKeyedSubscript:v21];

            v18 = [v4 devices];
            v19 = [v18 objectForKeyedSubscript:v6];
            [v38 addObject:v19];
          }
        }

        else
        {
          [v38 addObject:v8];
        }

LABEL_13:
      }

      v40 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
    }

    while (v40);
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v22 = v38;
  v23 = [v22 countByEnumeratingWithState:&v41 objects:v49 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v42;
    do
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v42 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v41 + 1) + 8 * j);
        v28 = [v22 lastObject];
        [(SAMonitoringSessionManager *)self addDevice:v27 isLastDeviceEvent:v27 == v28];

        v29 = [v4 safeLocations];
        v30 = [v27 identifier];
        v31 = [v29 objectForKeyedSubscript:v30];
        v32 = [v27 identifier];
        [(SAMonitoringSessionManager *)self setSafeLocations:v31 forDeviceUUID:v32];
      }

      v24 = [v22 countByEnumeratingWithState:&v41 objects:v49 count:16];
    }

    while (v24);
  }

  v33 = [(SAMonitoringSessionManager *)self devices];
  v34 = [v33 count];

  if (v34)
  {
    [(SAMonitoringSessionManager *)self removeDisableReason:64];
  }

  else
  {
    [(SAMonitoringSessionManager *)self addDisableReason:64];
  }

  v35 = *MEMORY[0x277D85DE8];
}

- (BOOL)isWithinCurrentVisitOrLOI:(id)a3
{
  v4 = MEMORY[0x277CE41F8];
  v5 = a3;
  v6 = [v4 alloc];
  [v5 latitude];
  v8 = v7;
  [v5 longitude];
  v10 = v9;

  v11 = [v6 initWithLatitude:v8 longitude:v10];
  v12 = [(SAMonitoringSessionManager *)self currentVisitOrLOIEvent];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v14 = [(SAMonitoringSessionManager *)self currentVisitOrLOIEvent];
  if (isKindOfClass)
  {
    v15 = objc_alloc(MEMORY[0x277CE41F8]);
    [v14 coordinate];
    v17 = v16;
    [v14 coordinate];
  }

  else
  {
    objc_opt_class();
    v19 = objc_opt_isKindOfClass();

    if ((v19 & 1) == 0)
    {
      v26 = 0;
      goto LABEL_9;
    }

    v14 = [(SAMonitoringSessionManager *)self currentVisitOrLOIEvent];
    v15 = objc_alloc(MEMORY[0x277CE41F8]);
    [v14 latitude];
    v17 = v20;
    [v14 longitude];
    v18 = v21;
  }

  v22 = [v15 initWithLatitude:v17 longitude:v18];
  [v22 distanceFromLocation:v11];
  v24 = v23;
  [v14 horizontalAccuracy];
  if (v25 < 100.0)
  {
    v25 = 100.0;
  }

  v26 = v24 <= v25;

LABEL_9:
  return v26;
}

- (BOOL)shouldIssueBookendedNotificationBasedOnLocationForDevice:(id)a3
{
  v4 = a3;
  v5 = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
  v8 = [v5 objectForKeyedSubscript:v4];

  v6 = [v8 trackedTravelingStartLocation];

  v7 = [(SAMonitoringSessionManager *)self currentVisitOrLOIEvent];
  LOBYTE(v8) = 0;
  if (v7 && v6)
  {
    LODWORD(v8) = ![(SAMonitoringSessionManager *)self isWithinCurrentVisitOrLOI:v6];
  }

  return v8;
}

- (BOOL)shouldIssueBookendedNotificationBasedOnTimeForDevice:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
  v6 = [v5 objectForKeyedSubscript:v4];

  v7 = [v6 trackedTravelingStartDate];
  v8 = [v6 scenarioClassifier];
  v9 = [v8 scenarioChangeDate];

  if (v7)
  {
    [v9 timeIntervalSinceDate:v7];
    v11 = v10 >= 360.0;
  }

  else
  {
    v11 = 1;
  }

  v12 = [(SAMonitoringSessionManager *)self timeOfAttemptToLoadFromPersistence];
  v13 = [(SATimeServiceProtocol *)self->_clock getCurrentTime];
  [v12 timeIntervalSinceDate:v13];
  v15 = v14;

  if (v15 < 0.0)
  {
    v15 = -v15;
  }

  if (!v7)
  {
    v16 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
    {
      v21 = 68289026;
      v22 = 0;
      v23 = 2082;
      v24 = "";
      _os_log_impl(&dword_2656EA000, v16, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#SAMonitoringSessionManager no tracked traveling start date}", &v21, 0x12u);
    }
  }

  v17 = TASALog;
  if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEBUG))
  {
    v21 = 68289539;
    v22 = 0;
    v23 = 2082;
    v24 = "";
    v25 = 1025;
    v26 = v11;
    v27 = 1025;
    v28 = v15 >= 150.0;
    _os_log_impl(&dword_2656EA000, v17, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#SAMonitoringSessionManager shouldIssueBookendedNotificationBasedOnTimeForDevice, min travel satisified:%{private}hhd, min duration after persistence:%{private}hhd}", &v21, 0x1Eu);
  }

  v18 = v15 >= 150.0 && v11;

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

- (BOOL)shouldIssueBookendedNotificationForDevice:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SAMonitoringSessionManager *)self shouldIssueBookendedNotificationBasedOnLocationForDevice:v4];
  v6 = [(SAMonitoringSessionManager *)self shouldIssueBookendedNotificationBasedOnTimeForDevice:v4];

  v7 = TASALog;
  if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEBUG))
  {
    v10[0] = 68289539;
    v10[1] = 0;
    v11 = 2082;
    v12 = "";
    v13 = 1025;
    v14 = v5;
    v15 = 1025;
    v16 = v6;
    _os_log_impl(&dword_2656EA000, v7, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#SAMonitoringSessionManager shouldIssueBookendedNotificationForDevice, based on location:%{private}hhd, based on time:%{private}hhd}", v10, 0x1Eu);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5 && v6;
}

- (void)ingestTAEvent:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SAMonitoringSessionManager *)self updateDevicesWithSafeLocations:v4];
    goto LABEL_19;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SAMonitoringSessionManager *)self updateSafeLocations:v4];
    goto LABEL_19;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SAMonitoringSessionManager *)self updateLocation:v4];
    goto LABEL_19;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SAMonitoringSessionManager *)self handleGeofenceEvent:v4];
    goto LABEL_19;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(SAMonitoringSessionManager *)self analytics];
    [v5 horizontalAccuracy];
    [v6 addVisit:1 withRadius:v7];

    [(SAMonitoringSessionManager *)self setCurrentVisitOrLOIEvent:v5];
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v8 = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
    v9 = [v8 allValues];

    v10 = [v9 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v29;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v29 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v28 + 1) + 8 * i) scenarioClassifier];
          [v14 ingestTAEvent:v5];
        }

        v11 = [v9 countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v11);
    }

    goto LABEL_17;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    if (![v5 hasArrivalDate])
    {
      goto LABEL_18;
    }

    if ([v5 hasDepartureDate])
    {
      [(SAMonitoringSessionManager *)self setCurrentVisitOrLOIEvent:0];
      [(SAMonitoringSessionManager *)self setPreviousVisitOrLOIEvent:v5];
      goto LABEL_18;
    }

    v16 = [(SAMonitoringSessionManager *)self analytics];
    [v5 horizontalAccuracy];
    [v16 addVisit:0 withRadius:v17];

    [(SAMonitoringSessionManager *)self setCurrentVisitOrLOIEvent:v5];
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v18 = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
    v9 = [v18 allValues];

    v19 = [v9 countByEnumeratingWithState:&v24 objects:v32 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v25;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v25 != v21)
          {
            objc_enumerationMutation(v9);
          }

          v23 = [*(*(&v24 + 1) + 8 * j) scenarioClassifier];
          [v23 ingestTAEvent:v5];
        }

        v20 = [v9 countByEnumeratingWithState:&v24 objects:v32 count:16];
      }

      while (v20);
    }

LABEL_17:

LABEL_18:
    goto LABEL_19;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SAMonitoringSessionManager *)self handleSystemStateChanged:v4];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(SAMonitoringSessionManager *)self handleMultiPartStatusEvent:v4];
    }
  }

LABEL_19:

  v15 = *MEMORY[0x277D85DE8];
}

- (void)handleMultiPartStatusEvent:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 uuid];

  if (v5)
  {
    deviceRecord = self->_deviceRecord;
    v7 = [v4 uuid];
    v8 = [(SADeviceRecord *)deviceRecord getSADevice:v7];

    v9 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      v11 = [v4 uuid];
      v12 = [v8 name];
      if ([v8 isAirPodsCase])
      {
        v13 = "YES";
      }

      else
      {
        v13 = "NO";
      }

      v24 = 68290307;
      v25 = 0;
      v26 = 2082;
      v27 = "";
      v28 = 2113;
      v29 = v11;
      v30 = 2113;
      v31 = v12;
      v32 = 2081;
      v33 = v13;
      v34 = 2049;
      v35 = [v4 relationStatus];
      v36 = 2049;
      v37 = [v4 maintenanceStatus];
      _os_log_impl(&dword_2656EA000, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sa #handleMultiPartStatusEvent multi-part status, uuid:%{private}@, name:%{private}@, isAirPodsCase:%{private}s, relation:%{private}ld, maintenance:%{private}ld}", &v24, 0x44u);
    }

    if (v8 && [v8 isAirPodsCase])
    {
      v14 = [(SAMonitoringSessionManager *)self deviceRecord];
      v15 = [v4 relationStatus];
      v16 = [v4 uuid];
      [v14 updateRelationStatus:v15 forDeviceWithUUID:v16];

      v17 = [(SAMonitoringSessionManager *)self deviceRecord];
      v18 = [v4 maintenanceStatus];
      v19 = [v4 uuid];
      [v17 updateMaintenanceStatus:v18 forDeviceWithUUID:v19];
    }
  }

  else
  {
    v20 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
    {
      v21 = v20;
      v22 = [v4 uuid];
      v24 = 68289283;
      v25 = 0;
      v26 = 2082;
      v27 = "";
      v28 = 2113;
      v29 = v22;
      _os_log_impl(&dword_2656EA000, v21, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#sa #handleMultiPartStatusEvent event uuid nil, uuid:%{private}@}", &v24, 0x1Cu);
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)updateDevicesWithSafeLocations:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = TASALog;
  if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [v4 devices];
    v9[0] = 68289283;
    v9[1] = 0;
    v10 = 2082;
    v11 = "";
    v12 = 2049;
    v13 = [v7 count];
    _os_log_impl(&dword_2656EA000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAMonitoringSessionManager update devices, count:%{private}ld}", v9, 0x1Cu);
  }

  [(SAMonitoringSessionManager *)self removeDevicesIfNeededPerEvent:v4];
  [(SAMonitoringSessionManager *)self addDevicesIfNeededPerEvent:v4];

  v8 = *MEMORY[0x277D85DE8];
}

- (id)computeRemovedSafeLocations:(id)a3
{
  v4 = a3;
  v5 = [(SAMonitoringSessionManager *)self safeLocations];
  if (v5 && (v6 = v5, -[SAMonitoringSessionManager safeLocations](self, "safeLocations"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 count], v7, v6, v8))
  {
    v9 = MEMORY[0x277CBEB58];
    v10 = [(SAMonitoringSessionManager *)self safeLocations];
    v11 = [v10 allKeys];
    v12 = [v9 setWithArray:v11];

    if (v4 && [v4 count])
    {
      [v12 minusSet:v4];
    }
  }

  else
  {
    v12 = [MEMORY[0x277CBEB58] set];
  }

  return v12;
}

- (void)updateSafeLocations:(id)a3
{
  v47 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277CBEB98];
  v6 = [v4 safeLocations];
  v7 = [v6 allKeys];
  v8 = [v5 setWithArray:v7];
  v9 = [(SAMonitoringSessionManager *)self computeRemovedSafeLocations:v8];

  if ([v9 count])
  {
    v29 = v9;
    v30 = v4;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v35 objects:v46 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v36;
      do
      {
        v14 = 0;
        do
        {
          if (*v36 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v35 + 1) + 8 * v14);
          v31 = 0u;
          v32 = 0u;
          v33 = 0u;
          v34 = 0u;
          v16 = [(SAMonitoringSessionManager *)self devices:v29];
          v17 = [v16 allKeys];

          v18 = [v17 countByEnumeratingWithState:&v31 objects:v45 count:16];
          if (v18)
          {
            v19 = v18;
            v20 = *v32;
            do
            {
              v21 = 0;
              do
              {
                if (*v32 != v20)
                {
                  objc_enumerationMutation(v17);
                }

                [(SAMonitoringSessionManager *)self removeSafeLocation:v15 forDeviceUUID:*(*(&v31 + 1) + 8 * v21++)];
              }

              while (v19 != v21);
              v19 = [v17 countByEnumeratingWithState:&v31 objects:v45 count:16];
            }

            while (v19);
          }

          ++v14;
        }

        while (v14 != v12);
        v12 = [v10 countByEnumeratingWithState:&v35 objects:v46 count:16];
      }

      while (v12);
    }

    v9 = v29;
    v4 = v30;
  }

  v22 = TASALog;
  if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
  {
    v23 = v22;
    v24 = [v4 safeLocations];
    v25 = [v24 count];
    *buf = 68289283;
    v40 = 0;
    v41 = 2082;
    v42 = "";
    v43 = 2049;
    v44 = v25;
    _os_log_impl(&dword_2656EA000, v23, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAMonitoringSessionManager update safe locations, count:%{private}ld}", buf, 0x1Cu);
  }

  v26 = [v4 safeLocations];
  v27 = [v26 copy];
  [(SAMonitoringSessionManager *)self setSafeLocations:v27];

  v28 = *MEMORY[0x277D85DE8];
}

- (void)updateLocation:(id)a3
{
  v52 = *MEMORY[0x277D85DE8];
  v5 = a3;
  p_lastLocation = &self->_lastLocation;
  lastLocation = self->_lastLocation;
  if (lastLocation)
  {
    v8 = [(TALocationLite *)lastLocation getDate];
    v9 = [v5 getDate];
    v10 = [v8 compare:v9] == 0;

    if (!v5)
    {
LABEL_9:
      v13 = TASALog;
      if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEBUG))
      {
        v14 = *p_lastLocation;
        v15 = v13;
        v16 = [(TALocationLite *)v14 description];
        v17 = [v5 description];
        buf = 68289539;
        v46 = 2082;
        v47 = "";
        v48 = 2117;
        v49 = v16;
        v50 = 2117;
        v51 = v17;
        _os_log_impl(&dword_2656EA000, v15, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#SAMonitoringSessionManager updateLocation update criteria not satisfied, lastLocation:%{sensitive}@, newLocation:%{sensitive}@}", &buf, 0x26u);
      }

      goto LABEL_26;
    }
  }

  else
  {
    v10 = 0;
    if (!v5)
    {
      goto LABEL_9;
    }
  }

  [v5 horizontalAccuracy];
  v12 = v11 >= 70.0 || v10;
  if (v12 == 1)
  {
    goto LABEL_9;
  }

  objc_storeStrong(&self->_lastLocation, a3);
  v18 = TASALog;
  if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEBUG))
  {
    v19 = *p_lastLocation;
    v20 = v18;
    v21 = [(TALocationLite *)v19 description];
    buf = 68289283;
    v46 = 2082;
    v47 = "";
    v48 = 2117;
    v49 = v21;
    _os_log_impl(&dword_2656EA000, v20, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#SAMonitoringSessionManager updateLocation updated, lastLocation:%{sensitive}@}", &buf, 0x1Cu);
  }

  v22 = [(SAMonitoringSessionManager *)self devicesWithToBePopulatedTrackedTravelingStartLocation];
  v23 = [v22 count];

  if (v23)
  {
    v24 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
    {
      buf = 68289283;
      v46 = 2082;
      v47 = "";
      v48 = 2049;
      v49 = v23;
      _os_log_impl(&dword_2656EA000, v24, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAMonitoringSessionManager updateLocation populating tracked traveling start location, device count:%{private}lu}", &buf, 0x1Cu);
    }

    v25 = [(SAMonitoringSessionManager *)self devicesWithToBePopulatedTrackedTravelingStartLocation];
    v26 = [v25 allObjects];

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v27 = v26;
    v28 = [v27 countByEnumeratingWithState:&v40 objects:v44 count:16];
    if (v28)
    {
      v30 = v28;
      v31 = *v41;
      *&v29 = 68289283;
      v39 = v29;
      do
      {
        v32 = 0;
        do
        {
          if (*v41 != v31)
          {
            objc_enumerationMutation(v27);
          }

          v33 = *(*(&v40 + 1) + 8 * v32);
          v34 = TASALog;
          if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
          {
            buf = v39;
            v46 = 2082;
            v47 = "";
            v48 = 2113;
            v49 = v33;
            _os_log_impl(&dword_2656EA000, v34, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAMonitoringSessionManager updateLocation populating tracked traveling start location, device:%{private}@}", &buf, 0x1Cu);
          }

          v35 = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession:v39];
          v36 = [v35 objectForKeyedSubscript:v33];
          [v36 setTrackedTravelingStartLocation:v5];

          v37 = [(SAMonitoringSessionManager *)self devicesWithToBePopulatedTrackedTravelingStartLocation];
          [v37 removeObject:v33];

          ++v32;
        }

        while (v30 != v32);
        v30 = [v27 countByEnumeratingWithState:&v40 objects:v44 count:16];
      }

      while (v30);
    }
  }

LABEL_26:

  v38 = *MEMORY[0x277D85DE8];
}

- (void)handleGeofenceEvent:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_14;
  }

  v6 = [v4 region];
  if (!v6)
  {
    goto LABEL_14;
  }

  v7 = v6;
  v8 = [v5 region];
  v9 = [v8 identifier];

  if (v9)
  {
    v10 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
      v12 = [v5 description];
      v32 = 68289283;
      v33 = 0;
      v34 = 2082;
      v35 = "";
      v36 = 2117;
      v37 = v12;
      _os_log_impl(&dword_2656EA000, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAMonitoringSessionManager handleGeofenceEvent received geofenceEvent, geofence:%{sensitive}@}", &v32, 0x1Cu);
    }

    v13 = objc_alloc(MEMORY[0x277CCAD78]);
    v14 = [v5 region];
    v15 = [v14 identifier];
    v16 = [v13 initWithUUIDString:v15];

    v17 = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
    v18 = [v17 objectForKeyedSubscript:v16];

    if (v18)
    {
      v19 = [v5 eventType];
      if (v19 == 2 || v19 == 4)
      {
        v27 = [v18 geofence];

        if (v27)
        {
          v28 = [(SAMonitoringSessionManager *)self fenceRequestServicer];
          v29 = [v18 geofence];
          [v28 removeGeofence:v29];
        }

        if ([v18 state] == 3)
        {
          [(SAMonitoringSessionManager *)self handleGeofenceExitedForDeviceUUID:v16];
        }

        else if ([v5 eventType] == 4)
        {
          v30 = TASALog;
          if (os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
          {
            v32 = 68289283;
            v33 = 0;
            v34 = 2082;
            v35 = "";
            v36 = 2117;
            v37 = v16;
            _os_log_impl(&dword_2656EA000, v30, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#SAMonitoringSessionManager handleGeofenceEvent ignored (recent crash?), geofence:%{sensitive}@}", &v32, 0x1Cu);
          }
        }
      }

      else if (v19 == 6)
      {
        v20 = [v18 geofence];

        if (v20)
        {
          [v18 setGeofence:0];
        }

        if ([v18 state] == 3)
        {
          [(SAMonitoringSessionManager *)self changeMonitoringSessionState:v16 toState:1];
        }
      }
    }

    else
    {
      v24 = TASALog;
      if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEBUG))
      {
        v25 = v24;
        v26 = [v5 description];
        v32 = 68289283;
        v33 = 0;
        v34 = 2082;
        v35 = "";
        v36 = 2117;
        v37 = v26;
        _os_log_impl(&dword_2656EA000, v25, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#SAMonitoringSessionManager handleGeofenceEvent geofenceEvent cannot be mapped to monitoring session, geofence:%{sensitive}@}", &v32, 0x1Cu);
      }
    }
  }

  else
  {
LABEL_14:
    v21 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_FAULT))
    {
      v22 = v21;
      v23 = [v5 description];
      v32 = 68289283;
      v33 = 0;
      v34 = 2082;
      v35 = "";
      v36 = 2117;
      v37 = v23;
      _os_log_impl(&dword_2656EA000, v22, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#SAMonitoringSessionManager handleGeofenceEvent invalid geofenceEvent, geofence:%{sensitive}@}", &v32, 0x1Cu);
    }
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (void)setUpTravelingGeofencesOnAirplaneModeToggleOffIfNeeded
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * v7);
        v9 = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
        v10 = [v9 objectForKeyedSubscript:v8];

        if ([v10 state] == 1)
        {
          v11 = [v10 firstNotWithYouLocation];

          if (v11)
          {
            if ([(SAMonitoringSessionManager *)self addTravelFenceForDevice:v8])
            {
              [(SAMonitoringSessionManager *)self changeMonitoringSessionState:v8 toState:3];
            }
          }
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)removeDisableReason:(unint64_t)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = TASALog;
  if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 68289283;
    v9[1] = 0;
    v10 = 2082;
    v11 = "";
    v12 = 2049;
    v13 = a3;
    _os_log_impl(&dword_2656EA000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAMonitoringSessionManager removeDisableReason, reason:%{private}lu}", v9, 0x1Cu);
  }

  disabledReasons = self->_disabledReasons;
  if ((disabledReasons & a3) != 0)
  {
    v7 = disabledReasons & ~a3;
    self->_disabledReasons = v7;
    if (!v7)
    {
      [(SAMonitoringSessionManager *)self setEnabled:1];
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)addDisableReason:(unint64_t)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = TASALog;
  if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 68289283;
    v8[1] = 0;
    v9 = 2082;
    v10 = "";
    v11 = 2049;
    v12 = a3;
    _os_log_impl(&dword_2656EA000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAMonitoringSessionManager addDisableReason, reason:%{private}lu}", v8, 0x1Cu);
  }

  disabledReasons = self->_disabledReasons;
  if ((disabledReasons & a3) == 0)
  {
    if (a3 && !disabledReasons)
    {
      [(SAMonitoringSessionManager *)self setEnabled:0];
      disabledReasons = self->_disabledReasons;
    }

    self->_disabledReasons = disabledReasons | a3;
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)handleSystemStateChanged:(id)a3
{
  v48 = *MEMORY[0x277D85DE8];
  v4 = a3;
  isInAirplaneMode = self->_isInAirplaneMode;
  v6 = [v4 systemStateType];
  if (v6 > 7)
  {
    switch(v6)
    {
      case 16:
        -[SAMonitoringSessionManager setIsCompanionConnected:](self, "setIsCompanionConnected:", [v4 isOn]);
        break;
      case 11:
        if ([v4 isOn])
        {
          v24 = [(SAMonitoringSessionManager *)self timeOfAttemptToLoadFromPersistence];

          if (!v24)
          {
            v25 = [(SATimeServiceProtocol *)self->_clock getCurrentTime];
            [(SAMonitoringSessionManager *)self setTimeOfAttemptToLoadFromPersistence:v25];

            v26 = [(SAMonitoringSessionManager *)self persistenceManager];
            v27 = [v26 load];

            if (v27)
            {
              v28 = [(SAMonitoringSessionManager *)self persistenceManager];
              v29 = [v28 store];
              v30 = [v29 monitoringSessionRecord];
              [(SAMonitoringSessionManager *)self setDeviceUUIDtoMonitoringSession:v30];

              v31 = [(SAMonitoringSessionManager *)self persistenceManager];
              v32 = [v31 store];
              v33 = [v32 monitoringSessionRecord];
              [(SAMonitoringSessionManager *)self bootstrapMonitoringSessionRecord:v33];
            }
          }

          v7 = self;
          v8 = 128;
          goto LABEL_38;
        }

        v34 = self;
        v35 = 128;
        goto LABEL_43;
      case 8:
        if ([v4 isOn])
        {
          v7 = self;
          v8 = 1;
          goto LABEL_38;
        }

        v34 = self;
        v35 = 1;
LABEL_43:
        [(SAMonitoringSessionManager *)v34 addDisableReason:v35];
        break;
    }
  }

  else
  {
    switch(v6)
    {
      case 3:
        -[SAMonitoringSessionManager setIsInAirplaneMode:](self, "setIsInAirplaneMode:", [v4 isOn]);
        if (![(SAMonitoringSessionManager *)self standby])
        {
          if (isInAirplaneMode && ([v4 isOn] & 1) == 0)
          {
            [(SAMonitoringSessionManager *)self setUpTravelingGeofencesOnAirplaneModeToggleOffIfNeeded];
          }

          v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
          v10 = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
          v11 = [v10 allKeys];

          v39 = 0u;
          v40 = 0u;
          v37 = 0u;
          v38 = 0u;
          v12 = v11;
          v13 = [v12 countByEnumeratingWithState:&v37 objects:v47 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v38;
            do
            {
              v16 = 0;
              do
              {
                if (*v38 != v15)
                {
                  objc_enumerationMutation(v12);
                }

                v17 = *(*(&v37 + 1) + 8 * v16);
                v18 = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
                v19 = [v18 objectForKeyedSubscript:v17];

                if ([v19 state] == 1)
                {
                  [v19 setEarlyAirplaneTrigger:1];
                  [v9 addObject:v17];
                }

                ++v16;
              }

              while (v14 != v16);
              v14 = [v12 countByEnumeratingWithState:&v37 objects:v47 count:16];
            }

            while (v14);
          }

          v20 = [v9 count];
          if (v20)
          {
            v21 = v20;
            v22 = TASALog;
            if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 68289283;
              v42 = 0;
              v43 = 2082;
              v44 = "";
              v45 = 2049;
              v46 = v21;
              _os_log_impl(&dword_2656EA000, v22, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAMonitoringSessionManager requesting terminable long aggressive scan on Airplane Mode toggle, count of devices to find:%{private}ld}", buf, 0x1Cu);
            }

            v23 = [(SAMonitoringSessionManager *)self withYouDetector];
            [v23 forceUpdateWithYouStatusToFindDevices:v9 withContext:6];
          }
        }

        break;
      case 5:
        if ([v4 isOn])
        {
          v7 = self;
          v8 = 2;
          goto LABEL_38;
        }

        v34 = self;
        v35 = 2;
        goto LABEL_43;
      case 6:
        if ([v4 isOn])
        {
          v7 = self;
          v8 = 4;
LABEL_38:
          [(SAMonitoringSessionManager *)v7 removeDisableReason:v8];
          break;
        }

        v34 = self;
        v35 = 4;
        goto LABEL_43;
    }
  }

  v36 = *MEMORY[0x277D85DE8];
}

- (void)didChangeScenarioClassFrom:(unint64_t)a3 to:(unint64_t)a4 forDevice:(id)a5
{
  v75 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
  v10 = [v9 objectForKeyedSubscript:v8];
  v11 = [v10 state];

  if (v11 != 6)
  {
    v13 = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
    v14 = [v13 objectForKeyedSubscript:v8];
    v15 = [v14 scenario];

    if (v15 == a4)
    {
      goto LABEL_63;
    }

    if (a3 == 3)
    {
      v16 = TASALog;
      if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEBUG))
      {
        *buf = 68289283;
        *&buf[4] = 0;
        v65 = 2082;
        v66 = "";
        v67 = 2113;
        v68 = v8;
        _os_log_impl(&dword_2656EA000, v16, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#SAMonitoringSessionManager end current traveling session, uuid:%{private}@}", buf, 0x1Cu);
      }

      v17 = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
      v18 = [v17 objectForKeyedSubscript:v8];
      [v18 setLastAlertDateInCurrentTravelingSession:0];
    }

    v19 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
    {
      v20 = v19;
      v21 = [SAMonitoringSessionManager convertSAMonitoringSessionStateToString:[(SAMonitoringSessionManager *)self stateForDeviceUUID:v8]];
      v22 = [SAScenarioClassifier convertSAScenarioClassToString:a3];
      v23 = [SAScenarioClassifier convertSAScenarioClassToString:a4];
      *buf = 68290051;
      v65 = 2082;
      v66 = "";
      v67 = 2113;
      v68 = v21;
      v69 = 2113;
      v70 = v22;
      v71 = 2113;
      v72 = v23;
      v73 = 2113;
      v74 = v8;
      _os_log_impl(&dword_2656EA000, v20, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAMonitoringSessionManager didChangeScenarioClass, sessionState:%{private}@, fromScenario:%{private}@, toScenario:%{private}@, uuid:%{private}@}", buf, 0x3Au);
    }

    v24 = [(SAMonitoringSessionManager *)self deviceRecord];
    [v24 updateScenario:a4 forDeviceWithUUID:v8];

    v25 = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
    v26 = [v25 objectForKeyedSubscript:v8];
    [v26 setScenario:a4];

    v27 = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
    v28 = [v27 objectForKeyedSubscript:v8];
    v29 = [v28 state];

    v30 = [(SAMonitoringSessionManager *)self withYouDetector];
    v31 = [v30 statusForDeviceWithUUID:v8];

    if (a4 - 2 >= 3 && a4)
    {
      if (a4 != 1)
      {
        goto LABEL_62;
      }

      v32 = TASALog;
      if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEBUG))
      {
        *buf = 68289283;
        *&buf[4] = 0;
        v65 = 2082;
        v66 = "";
        v67 = 2113;
        v68 = v8;
        _os_log_impl(&dword_2656EA000, v32, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#SAMonitoringSessionManager not requesting aggressive scan, entering safe location for device, uuid:%{private}@}", buf, 0x1Cu);
      }

      if (v31 == 1)
      {
        v33 = 1;
      }

      else
      {
        v33 = 2;
      }

      [(SAMonitoringSessionManager *)self updatedWithYouStatusFrom:v33 to:v33 forDeviceWithUUID:v8];
      goto LABEL_57;
    }

    switch(a3)
    {
      case 3uLL:
        v45 = [(SAMonitoringSessionManager *)self standby];
        v46 = TASALog;
        v47 = os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT);
        if (!v45 && (v29 & 0xFFFFFFFFFFFFFFFDLL) == 1)
        {
          if (v47)
          {
            *buf = 68289283;
            *&buf[4] = 0;
            v65 = 2082;
            v66 = "";
            v67 = 2113;
            v68 = v8;
            _os_log_impl(&dword_2656EA000, v46, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAMonitoringSessionManager requesting a terminable long aggressive scan to find tracked device when ending traveling scenario, uuid:%{private}@}", buf, 0x1Cu);
          }

          v36 = [(SAMonitoringSessionManager *)self withYouDetector];
          v62 = v8;
          v41 = [MEMORY[0x277CBEA60] arrayWithObjects:&v62 count:1];
          v42 = v36;
          v43 = v41;
          v44 = 2;
          goto LABEL_36;
        }

        if (v47)
        {
          *buf = 68289283;
          *&buf[4] = 0;
          v65 = 2082;
          v66 = "";
          v67 = 2113;
          v68 = v8;
          _os_log_impl(&dword_2656EA000, v46, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAMonitoringSessionManager requesting short aggressive scan, ending traveling scenario and device is not tracked, uuid:%{private}@}", buf, 0x1Cu);
        }

        v36 = [(SAMonitoringSessionManager *)self withYouDetector];
        v48 = [(SAMonitoringSessionManager *)self isAnyTrackedWhileTraveling];
        break;
      case 2uLL:
        v38 = [(SAMonitoringSessionManager *)self standby];
        v39 = TASALog;
        v40 = os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT);
        if (!v38 && v29 == 5)
        {
          if (v40)
          {
            *buf = 68289283;
            *&buf[4] = 0;
            v65 = 2082;
            v66 = "";
            v67 = 2113;
            v68 = v8;
            _os_log_impl(&dword_2656EA000, v39, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAMonitoringSessionManager requesting a terminable long aggressive scan to find tracked device when exiting unsafe location, uuid:%{private}@}", buf, 0x1Cu);
          }

          v36 = [(SAMonitoringSessionManager *)self withYouDetector];
          v63 = v8;
          v41 = [MEMORY[0x277CBEA60] arrayWithObjects:&v63 count:1];
          v42 = v36;
          v43 = v41;
          v44 = 1;
LABEL_36:
          [v42 forceUpdateWithYouStatusToFindDevices:v43 withContext:v44];

LABEL_45:
LABEL_46:
          if (a4 <= 1)
          {
            if (a4)
            {
LABEL_57:
              if ([(SAMonitoringSessionManager *)self allDevicesInSafeLocation])
              {
                v56 = 0;
                v57 = 1;
LABEL_60:
                v58 = [(SAMonitoringSessionManager *)self analytics];
                [v58 setInTravelState:0];

                v59 = [(SAMonitoringSessionManager *)self analytics];
                [v59 setInSafeLocationState:v57];

                goto LABEL_61;
              }

LABEL_62:
              [(SAMonitoringSessionManager *)self scheduleNextPersistenceWrite];
              goto LABEL_63;
            }
          }

          else
          {
            if (a4 == 2)
            {
              v57 = 0;
              v56 = 1;
              goto LABEL_60;
            }

            if (a4 != 4)
            {
              v49 = [(SAMonitoringSessionManager *)self currentVisitOrLOIEvent];

              if (v49)
              {
                v50 = TASALog;
                if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
                {
                  v51 = v50;
                  v52 = [(SAMonitoringSessionManager *)self currentVisitOrLOIEvent];
                  *buf = 68289283;
                  *&buf[4] = 0;
                  v65 = 2082;
                  v66 = "";
                  v67 = 2117;
                  v68 = v52;
                  _os_log_impl(&dword_2656EA000, v51, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAMonitoringSessionManager removing currentVisitOrLOIEvent due to scenario change, currentVisitOrLOIEvent:%{sensitive}@}", buf, 0x1Cu);
                }

                v53 = [(SAMonitoringSessionManager *)self currentVisitOrLOIEvent];
                [(SAMonitoringSessionManager *)self setPreviousVisitOrLOIEvent:v53];

                [(SAMonitoringSessionManager *)self setCurrentVisitOrLOIEvent:0];
              }

              v54 = [(SAMonitoringSessionManager *)self analytics];
              [v54 setInTravelState:1];
            }
          }

          v55 = [(SAMonitoringSessionManager *)self analytics];
          [v55 setInSafeLocationState:0];

          if (![(SAMonitoringSessionManager *)self anyDeviceInUnsafeLocation])
          {
            v56 = 0;
LABEL_61:
            v60 = [(SAMonitoringSessionManager *)self analytics];
            [v60 setInUnsafeLocationState:v56];

            goto LABEL_62;
          }

          goto LABEL_62;
        }

        if (v40)
        {
          *buf = 68289283;
          *&buf[4] = 0;
          v65 = 2082;
          v66 = "";
          v67 = 2113;
          v68 = v8;
          _os_log_impl(&dword_2656EA000, v39, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAMonitoringSessionManager requesting short aggressive scan, exiting unsafe location and device is not tracked, uuid:%{private}@}", buf, 0x1Cu);
        }

        v36 = [(SAMonitoringSessionManager *)self withYouDetector];
        v48 = [(SAMonitoringSessionManager *)self isAnyInTrackedInUnsafeLocation];
        break;
      case 1uLL:
        v34 = TASALog;
        if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68289283;
          *&buf[4] = 0;
          v65 = 2082;
          v66 = "";
          v67 = 2113;
          v68 = v8;
          _os_log_impl(&dword_2656EA000, v34, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAMonitoringSessionManager requesting short aggressive scan, exiting safe location for device, uuid:%{private}@}", buf, 0x1Cu);
        }

        v35 = [(SAMonitoringSessionManager *)self withYouDetector];
        v36 = v35;
        v37 = 0;
        goto LABEL_44;
      default:
        goto LABEL_46;
    }

    v37 = v48;
    v35 = v36;
LABEL_44:
    [v35 forceUpdateWithYouStatusWithShortScan:v37];
    goto LABEL_45;
  }

  v12 = TASALog;
  if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    *&buf[4] = 0;
    v65 = 2082;
    v66 = "";
    _os_log_impl(&dword_2656EA000, v12, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAMonitoringSessionManager didChangeScenarioClass end monitoring skip}", buf, 0x12u);
  }

LABEL_63:

  v61 = *MEMORY[0x277D85DE8];
}

- (BOOL)isAnyInTrackedInUnsafeLocation
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(NSMutableDictionary *)self->_deviceUUIDtoMonitoringSession allValues];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v8 + 1) + 8 * i) state] == 5)
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v6 = *MEMORY[0x277D85DE8];
  return v3;
}

- (BOOL)isAnyTrackedWhileTraveling
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [(NSMutableDictionary *)self->_deviceUUIDtoMonitoringSession allValues];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        if ([v7 state] == 1 || objc_msgSend(v7, "state") == 3)
        {
          v8 = 1;
          goto LABEL_13;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      v8 = 0;
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v8 = 0;
  }

LABEL_13:

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)addClient:(id)a3
{
  v4 = a3;
  v5 = [(SAMonitoringSessionManager *)self clients];
  [v5 addObject:v4];

  [(SAMonitoringSessionManager *)self configureBackgroundScanning];
}

- (void)removeClient:(id)a3
{
  v4 = a3;
  v5 = [(SAMonitoringSessionManager *)self clients];
  [v5 removeObject:v4];
}

- (unint64_t)stateForDeviceUUID:(id)a3
{
  v4 = a3;
  v5 = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (v6)
  {
    v7 = [v6 state];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)scenarioClassForDeviceUUID:(id)a3
{
  v4 = a3;
  v5 = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (v6)
  {
    v7 = [v6 scenario];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (int64_t)earlyVehicularTriggerForDeviceUUID:(id)a3
{
  v4 = a3;
  v5 = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (v6)
  {
    v7 = [v6 earlyVehicularTrigger];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

+ (id)convertSAMonitoringSessionStateToString:(unint64_t)a3
{
  if (a3 - 1 > 5)
  {
    return @"Unknown";
  }

  else
  {
    return off_279B9C6E0[a3 - 1];
  }
}

- (void)didForceUpdateWithYouStatus
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = [(NSMutableDictionary *)self->_deviceUUIDtoMonitoringSession allKeys];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v19 objects:v31 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v20;
    *&v5 = 68289283;
    v18 = v5;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        v10 = [(SAWithYouDetectorServiceProtocol *)self->_withYouDetector statusForDeviceWithUUID:v9, v18];
        v11 = v10;
        if ((v10 - 1) < 2)
        {
          [(SAMonitoringSessionManager *)self updatedWithYouStatusFrom:v10 to:v10 forDeviceWithUUID:v9];
          continue;
        }

        if ((v10 - 3) >= 2)
        {
          if (v10)
          {
            continue;
          }

          v15 = TASALog;
          if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v18;
            v24 = 0;
            v25 = 2082;
            v26 = "";
            v27 = 2113;
            v28 = v9;
            _os_log_impl(&dword_2656EA000, v15, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAMonitoringSessionManager got unknown with-you status, uuid:%{private}@}", buf, 0x1Cu);
          }
        }

        else
        {
          v12 = TASALog;
          if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
          {
            v13 = v12;
            v14 = [SAWithYouDetector convertSAWithYouStatusToString:v11];
            *buf = 68289539;
            v24 = 0;
            v25 = 2082;
            v26 = "";
            v27 = 2113;
            v28 = v9;
            v29 = 2113;
            v30 = v14;
            _os_log_impl(&dword_2656EA000, v13, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAMonitoringSessionManager got to be verified with-you status at the end of a force update, uuid:%{private}@, status:%{private}@}", buf, 0x26u);
          }
        }

        v16 = [(SATimeServiceProtocol *)self->_clock getCurrentTime];
        [(SAMonitoringSessionManager *)self scheduleNextForceUpdateWithYouStatusFromReferenceDate:v16 forAlertForDevice:v9 alertType:0];
      }

      v6 = [v3 countByEnumeratingWithState:&v19 objects:v31 count:16];
    }

    while (v6);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)checkReunion:(unint64_t)a3 to:(unint64_t)a4 forDeviceWithUUID:(id)a5
{
  v89 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = [(SAMonitoringSessionManager *)self deviceUUIDtoAlertContext];
  v10 = [v9 objectForKeyedSubscript:v8];

  if (v10)
  {
    v11 = [(SAMonitoringSessionManager *)self deviceUUIDtoAlertContext];
    v12 = [v11 objectForKeyedSubscript:v8];

    v13 = [(SATimeServiceProtocol *)self->_clock getCurrentTime];
    v14 = [v12 objectForKeyedSubscript:@"lastAlert"];
    [v13 timeIntervalSinceDate:v14];
    v16 = v15;

    if (v16 <= 86400.0)
    {
      if (a3 != 2 || a4 != 1)
      {
LABEL_24:

        goto LABEL_25;
      }

      v37 = TASALog;
      if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
      {
        buf = 68289283;
        v85 = 2082;
        v86 = "";
        v87 = 2113;
        v88 = v8;
        _os_log_impl(&dword_2656EA000, v37, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAMonitoringSessionManager reunion update, uuid:%{private}@}", &buf, 0x1Cu);
      }
    }

    v17 = [(SADeviceRecord *)self->_deviceRecord getSADevice:v8];
    v18 = [(SAMonitoringSessionManager *)self getMoreSpecificSADeviceType:v17];
    v19 = [v12 objectForKeyedSubscript:@"tLastWithYou"];
    [v19 doubleValue];
    v21 = v20;

    v22 = v16 < 0.0 || v21 < 0.0;
    v23 = -1.0;
    if (v22)
    {
      v24 = -1.0;
    }

    else
    {
      v24 = v16 + v21;
    }

    v25 = [v12 objectForKeyedSubscript:@"lLastWithYou"];
    if (self->_lastLocation)
    {
      v26 = [(SATimeServiceProtocol *)self->_clock getCurrentTime];
      v27 = [(TALocationLite *)self->_lastLocation timestamp];
      [v26 timeIntervalSinceDate:v27];
      v29 = v28;

      v30 = objc_alloc(MEMORY[0x277CE41F8]);
      [(TALocationLite *)self->_lastLocation latitude];
      v32 = v31;
      [(TALocationLite *)self->_lastLocation longitude];
      v34 = [v30 initWithLatitude:v32 longitude:v33];
      [v34 horizontalAccuracy];
      v36 = v35;
    }

    else
    {
      v34 = 0;
      v36 = -1.0;
      v29 = -1.0;
    }

    v38 = -1.0;
    if (v25)
    {
      [v25 horizontalAccuracy];
      v38 = v39;
      [v34 distanceFromLocation:v25];
      v23 = v40;
    }

    v41 = [(SADeviceRecord *)self->_deviceRecord getLatestAdvertisement:v8];
    v80 = v25;
    v81 = v8;
    v78 = v41;
    v79 = v34;
    if (v41)
    {
      v42 = [v41 getBatteryState];
    }

    else
    {
      v42 = -1;
    }

    v82[0] = @"deviceType";
    v77 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v18];
    v83[0] = v77;
    v82[1] = @"productId";
    v76 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v17, "productId")}];
    v83[1] = v76;
    v82[2] = @"vendorId";
    v75 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v17, "vendorId")}];
    v83[2] = v75;
    v82[3] = @"tReunion";
    v74 = [MEMORY[0x277CCABB0] numberWithDouble:v16];
    v83[3] = v74;
    v82[4] = @"tLastObserved";
    v73 = [MEMORY[0x277CCABB0] numberWithDouble:v21];
    v83[4] = v73;
    v82[5] = @"tMissingAdv";
    v72 = [MEMORY[0x277CCABB0] numberWithDouble:v24];
    v83[5] = v72;
    v82[6] = @"leftBehindReunionDistance";
    v71 = [MEMORY[0x277CCABB0] numberWithDouble:v23];
    v83[6] = v71;
    v82[7] = @"reunionAge";
    v70 = [MEMORY[0x277CCABB0] numberWithDouble:v29];
    v83[7] = v70;
    v82[8] = @"lastLeftBehindRadius";
    v69 = [MEMORY[0x277CCABB0] numberWithDouble:v38];
    v83[8] = v69;
    v82[9] = @"reunionRadius";
    v68 = [MEMORY[0x277CCABB0] numberWithDouble:v36];
    v83[9] = v68;
    v82[10] = @"lastAlertType";
    v67 = [v12 objectForKeyedSubscript:?];
    v83[10] = v67;
    v82[11] = @"lastAlertIsBookendingTravel";
    v66 = [v12 objectForKeyedSubscript:?];
    v83[11] = v66;
    v82[12] = @"lastAlertIsEarlyVehicularTrigger";
    v65 = [v12 objectForKeyedSubscript:?];
    v83[12] = v65;
    v82[13] = @"lastAlertVehicularState";
    v63 = [v12 objectForKeyedSubscript:?];
    v83[13] = v63;
    v82[14] = @"lastAlertIsVehicularBTHintOn";
    v62 = [v12 objectForKeyedSubscript:?];
    v83[14] = v62;
    v82[15] = @"classicallyConnected";
    v61 = [v12 objectForKeyedSubscript:@"lastAlertIsClassicallyConnected"];
    v83[15] = v61;
    v82[16] = @"noCaseAdvSuppressed";
    v60 = [v12 objectForKeyedSubscript:?];
    v83[16] = v60;
    v82[17] = @"lastBatteryStateBeforeAlert";
    v59 = [v12 objectForKeyedSubscript:@"lastAlertBatteryState"];
    v83[17] = v59;
    v82[18] = @"reunionBatteryState";
    v58 = [MEMORY[0x277CCABB0] numberWithInteger:v42];
    v83[18] = v58;
    v82[19] = @"closeToAnySafeLocations";
    v57 = [v12 objectForKeyedSubscript:?];
    v83[19] = v57;
    v82[20] = @"systemVersion";
    v43 = [v17 systemVersion];
    v44 = v43;
    v45 = @"unknown";
    if (v43)
    {
      v45 = v43;
    }

    v83[20] = v45;
    v82[21] = @"timeSinceLastAlert";
    v46 = [v12 objectForKeyedSubscript:?];
    v83[21] = v46;
    v82[22] = @"triggeredAtHome";
    v47 = [v12 objectForKeyedSubscript:?];
    v83[22] = v47;
    v82[23] = @"rssi";
    [v12 objectForKeyedSubscript:@"lastAlertRssiValue"];
    v48 = v64 = v17;
    v83[23] = v48;
    v82[24] = @"hasSurfacedInCurrentTravelingSession";
    v49 = [v12 objectForKeyedSubscript:@"travelingSuppressed"];
    v83[24] = v49;
    v82[25] = @"criticalLowBatterySuppressed";
    v50 = [v12 objectForKeyedSubscript:?];
    v83[25] = v50;
    v82[26] = @"HELEAdvertisingLimitSuppressed";
    v51 = [v12 objectForKeyedSubscript:?];
    v83[26] = v51;
    v82[27] = @"caseLeashedNotAdvSuppressed";
    v52 = [v12 objectForKeyedSubscript:?];
    v83[27] = v52;
    v56 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v83 forKeys:v82 count:28];

    v53 = [(SAMonitoringSessionManager *)self analytics];
    [v53 submitEvent:@"com.apple.clx.alert.reunionEvent" content:v56];

    v54 = [(SAMonitoringSessionManager *)self deviceUUIDtoAlertContext];
    v8 = v81;
    [v54 setObject:0 forKeyedSubscript:v81];

    goto LABEL_24;
  }

LABEL_25:

  v55 = *MEMORY[0x277D85DE8];
}

- (void)updatedWithYouStatusFrom:(unint64_t)a3 to:(unint64_t)a4 forDeviceWithUUID:(id)a5
{
  v114 = *MEMORY[0x277D85DE8];
  v8 = a5;
  [(SAMonitoringSessionManager *)self checkReunion:a3 to:a4 forDeviceWithUUID:v8];
  v97 = a3;
  if (a3 != a4)
  {
    v9 = [(SAMonitoringSessionManager *)self devicesWithPendingTransition];
    [v9 removeObject:v8];
  }

  v99 = [(SAMonitoringSessionManager *)self stateForDeviceUUID:v8];
  v98 = [(SAMonitoringSessionManager *)self scenarioClassForDeviceUUID:v8];
  v10 = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
  v11 = [v10 objectForKeyedSubscript:v8];
  v12 = [v11 scenarioClassifier];
  v13 = [v12 scenarioChangeDate];

  v14 = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
  v15 = [v14 objectForKeyedSubscript:v8];
  v16 = [v15 travelingGeofenceExitDate];

  v17 = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
  v18 = [v17 objectForKeyedSubscript:v8];
  v19 = [v18 earlyVehicularStateChangeDate];

  v20 = [(SADeviceRecord *)self->_deviceRecord getLastWithYouDate:v8];
  v21 = TASALog;
  if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
  {
    v22 = v21;
    v23 = [SAMonitoringSessionManager convertSAMonitoringSessionStateToString:v99];
    v96 = self;
    v24 = [SAWithYouDetector convertSAWithYouStatusToString:v97];
    v25 = [SAWithYouDetector convertSAWithYouStatusToString:a4];
    [SAScenarioClassifier convertSAScenarioClassToString:v98];
    v95 = a4;
    v26 = v20;
    v27 = v19;
    v28 = v16;
    v30 = v29 = v13;
    *buf = 68290307;
    *&buf[4] = 0;
    v102 = 2082;
    v103 = "";
    v104 = 2113;
    v105 = v23;
    v106 = 2113;
    v107 = v24;
    v108 = 2113;
    v109 = v25;
    v110 = 2113;
    v111 = v30;
    v112 = 2113;
    v113 = v8;
    _os_log_impl(&dword_2656EA000, v22, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAMonitoringSessionManager updatedWithYouStatus, sessionState:%{private}@, fromStatus:%{private}@, toStatus:%{private}@, scenario:%{private}@, uuid:%{private}@}", buf, 0x44u);

    v13 = v29;
    v16 = v28;
    v19 = v27;
    v20 = v26;
    a4 = v95;

    self = v96;
  }

  switch(a4)
  {
    case 0uLL:
      v37 = TASALog;
      if (!os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_121;
      }

      v38 = v37;
      v39 = [SAMonitoringSessionManager convertSAMonitoringSessionStateToString:v99];
      v40 = [SAWithYouDetector convertSAWithYouStatusToString:v97];
      v41 = [SAWithYouDetector convertSAWithYouStatusToString:0];
      *buf = 68290051;
      v102 = 2082;
      v103 = "";
      v104 = 2113;
      v105 = v39;
      v106 = 2113;
      v107 = v40;
      v108 = 2113;
      v109 = v41;
      v110 = 2113;
      v111 = v8;
      _os_log_impl(&dword_2656EA000, v38, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#SAMonitoringSessionManager Unknown signal state, sessionState:%{private}@, fromStatus:%{private}@, toStatus:%{private}@, uuid:%{private}@}", buf, 0x3Au);

      goto LABEL_80;
    case 2uLL:
      v31 = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
      v32 = [v31 objectForKeyedSubscript:v8];
      v33 = [v32 firstNotWithYouLocation];

      if (v33)
      {
        goto LABEL_14;
      }

      v34 = [(SAMonitoringSessionManager *)self lastLocation];
      v35 = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
      v36 = [v35 objectForKeyedSubscript:v8];
      [v36 setFirstNotWithYouLocation:v34];

      break;
    case 1uLL:
      v34 = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
      v35 = [v34 objectForKeyedSubscript:v8];
      [v35 setFirstNotWithYouLocation:0];
      break;
    default:
      goto LABEL_14;
  }

LABEL_14:
  if (v99 <= 3)
  {
    v42 = v98;
    if (v99 != 1)
    {
      if (v99 != 2)
      {
        if (v99 != 3)
        {
          goto LABEL_121;
        }

        if (a4 != 1)
        {
          if (a4 != 2)
          {
            goto LABEL_121;
          }

          if (v98 != 2)
          {
            if (v98 == 1)
            {
              v43 = TASALog;
              if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 68289283;
                *&buf[4] = 0;
                v102 = 2082;
                v103 = "";
                v104 = 2113;
                v105 = v8;
                _os_log_impl(&dword_2656EA000, v43, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAMonitoringSessionManager travel bookending into a safe location, uuid:%{private}@}", buf, 0x1Cu);
              }

              [(SAMonitoringSessionManager *)self changeMonitoringSessionState:v8 toState:2];
              [(SAMonitoringSessionManager *)self removeTravelFenceForDevice:v8];
            }

            goto LABEL_121;
          }

          if (v97 != 2)
          {
            goto LABEL_121;
          }

          if ([(SAMonitoringSessionManager *)self shouldIssueBookendedNotificationForDevice:v8])
          {
            if ([(SAMonitoringSessionManager *)self enoughTimeHasPassedBeforeSurfacingAlert:v13 forAlertForDevice:v8 alertType:2])
            {
              v81 = TASALog;
              if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 68289283;
                *&buf[4] = 0;
                v102 = 2082;
                v103 = "";
                v104 = 2113;
                v105 = v8;
                _os_log_impl(&dword_2656EA000, v81, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAMonitoringSessionManager issuing travel bookending notification into an unsafe location, uuid:%{private}@}", buf, 0x1Cu);
              }

              [(SAMonitoringSessionManager *)self changeMonitoringSessionState:v8 toState:2];
              v77 = self;
              v78 = v8;
              v79 = 1;
              goto LABEL_111;
            }

            v88 = self;
            v89 = v13;
LABEL_134:
            v90 = v8;
            v91 = 2;
            goto LABEL_120;
          }

          v94 = TASALog;
          if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 68289283;
            *&buf[4] = 0;
            v102 = 2082;
            v103 = "";
            v104 = 2113;
            v105 = v8;
            _os_log_impl(&dword_2656EA000, v94, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAMonitoringSessionManager not issuing travel bookending notification into an unsafe location, uuid:%{private}@}", buf, 0x1Cu);
          }

          v85 = self;
          v86 = v8;
          v87 = 5;
LABEL_118:
          [(SAMonitoringSessionManager *)v85 changeMonitoringSessionState:v86 toState:v87];
          goto LABEL_121;
        }

        goto LABEL_59;
      }

      if (v98 == 2)
      {
        if (a4 != 1)
        {
          goto LABEL_121;
        }

        if ([(SAMonitoringSessionManager *)self deviceShouldTransitionWithLastScenarioChangeDate:v13 lastWithYouDate:v20])
        {
          goto LABEL_69;
        }
      }

      else
      {
        if (v98 != 3)
        {
          goto LABEL_121;
        }

        if (a4 != 1)
        {
          goto LABEL_47;
        }

        if ([(SAMonitoringSessionManager *)self deviceShouldTransitionWithLastScenarioChangeDate:v13 lastWithYouDate:v20])
        {
          [(SAMonitoringSessionManager *)self changeMonitoringSessionState:v8 toState:1];
LABEL_47:
          v49 = [(SAMonitoringSessionManager *)self determineTrackedTravelingCount];
          v50 = self;
LABEL_99:
          [(SAMonitoringSessionManager *)v50 setCaBroughtOutOnTravel:v49];
          goto LABEL_121;
        }
      }

      goto LABEL_119;
    }

    if (v98 != 3)
    {
      if (v98 != 2)
      {
        if (v98 != 1)
        {
          goto LABEL_121;
        }

        if (a4 == 2)
        {
          v48 = TASALog;
          if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 68289283;
            *&buf[4] = 0;
            v102 = 2082;
            v103 = "";
            v104 = 2113;
            v105 = v8;
            _os_log_impl(&dword_2656EA000, v48, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAMonitoringSessionManager travel bookending into a safe location, uuid:%{private}@}", buf, 0x1Cu);
          }

          [(SAMonitoringSessionManager *)self changeMonitoringSessionState:v8 toState:2];
          [(SAMonitoringSessionManager *)self removeTravelFenceForDevice:v8];
          goto LABEL_96;
        }

        [(SAMonitoringSessionManager *)self removeTravelFenceForDevice:v8];
        v73 = self;
        v74 = v8;
        v75 = 2;
        goto LABEL_95;
      }

      if (a4 != 1)
      {
        if (v97 != 2 || a4 != 2)
        {
          goto LABEL_121;
        }

        if ([(SAMonitoringSessionManager *)self shouldIssueBookendedNotificationForDevice:v8])
        {
          if ([(SAMonitoringSessionManager *)self enoughTimeHasPassedBeforeSurfacingAlert:v13 forAlertForDevice:v8 alertType:2])
          {
            v72 = TASALog;
            if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 68289283;
              *&buf[4] = 0;
              v102 = 2082;
              v103 = "";
              v104 = 2113;
              v105 = v8;
              _os_log_impl(&dword_2656EA000, v72, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAMonitoringSessionManager issuing travel bookending notification into an unsafe location, uuid:%{private}@}", buf, 0x1Cu);
            }

            [(SAMonitoringSessionManager *)self storeSeparationLocation:v8];
            [(SAMonitoringSessionManager *)self changeMonitoringSessionState:v8 toState:2];
            [(SAMonitoringSessionManager *)self notifyWhileTraveling:v8 isBookendingTravel:1];
          }

          else
          {
            [(SAMonitoringSessionManager *)self scheduleNextForceUpdateWithYouStatusFromReferenceDate:v13 forAlertForDevice:v8 alertType:2];
          }

          goto LABEL_96;
        }

        v93 = TASALog;
        if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68289283;
          *&buf[4] = 0;
          v102 = 2082;
          v103 = "";
          v104 = 2113;
          v105 = v8;
          _os_log_impl(&dword_2656EA000, v93, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAMonitoringSessionManager not issuing travel bookending notification into an unsafe location, uuid:%{private}@}", buf, 0x1Cu);
        }

        v73 = self;
        v74 = v8;
        v75 = 5;
LABEL_95:
        [(SAMonitoringSessionManager *)v73 changeMonitoringSessionState:v74 toState:v75];
        goto LABEL_96;
      }

      if ([(SAMonitoringSessionManager *)self deviceShouldTransitionWithLastScenarioChangeDate:v13 lastWithYouDate:v20])
      {
        [(SAMonitoringSessionManager *)self changeMonitoringSessionState:v8 toState:5];
        v63 = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
        v64 = [v63 objectForKeyedSubscript:v8];
        v65 = [v64 scenarioClassifier];
        [v65 currentUnsafeLocation];
        v67 = v66 = self;

        v68 = [(SAMonitoringSessionManager *)v66 deviceRecord];
        [v68 updateLastWithYouLocation:v67 forDeviceWithUUID:v8];

        self = v66;
LABEL_96:
        if (([(SAMonitoringSessionManager *)self caBroughtOutOnTravel]& 0x8000000000000000) == 0)
        {
          v76 = [(SAMonitoringSessionManager *)self analytics];
          [v76 addNumDevicesWithYou:{-[SAMonitoringSessionManager caBroughtOutOnTravel](self, "caBroughtOutOnTravel")}];
        }

        v50 = self;
        v49 = -1;
        goto LABEL_99;
      }

LABEL_119:
      v88 = self;
      v89 = 0;
      v90 = v8;
      v91 = 0;
LABEL_120:
      [(SAMonitoringSessionManager *)v88 scheduleNextForceUpdateWithYouStatusFromReferenceDate:v89 forAlertForDevice:v90 alertType:v91];
      goto LABEL_121;
    }

    if ((a4 == 4 || a4 == 2) && ![(SAMonitoringSessionManager *)self standby]&& ![(SAMonitoringSessionManager *)self isInAirplaneMode]&& [(SAMonitoringSessionManager *)self addTravelFenceForDevice:v8])
    {
      [(SAMonitoringSessionManager *)self changeMonitoringSessionState:v8 toState:3];
    }

    v38 = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
    v39 = [v38 objectForKeyedSubscript:v8];
    [v39 setEarlyAirplaneTrigger:0];
LABEL_80:

    goto LABEL_121;
  }

  v42 = v98;
  if (v99 == 4)
  {
    if (a4 - 3 >= 2)
    {
      if (a4 != 1)
      {
        if (a4 != 2)
        {
          goto LABEL_121;
        }

        if (v98 != 1)
        {
          if (v97 != 2)
          {
            goto LABEL_121;
          }

          if ([(SAMonitoringSessionManager *)self enoughTimeHasPassedBeforeSurfacingAlert:v16 forAlertForDevice:v8 alertType:2])
          {
            [(SAMonitoringSessionManager *)self changeMonitoringSessionState:v8 toState:2];
            v77 = self;
            v78 = v8;
            v79 = 0;
LABEL_111:
            [(SAMonitoringSessionManager *)v77 notifyWhileTraveling:v78 isBookendingTravel:v79];
            goto LABEL_121;
          }

          v88 = self;
          v89 = v16;
          goto LABEL_134;
        }

        [(SAMonitoringSessionManager *)self removeTravelFenceForDevice:v8];
        goto LABEL_115;
      }

LABEL_59:
      [(SAMonitoringSessionManager *)self removeTravelFenceForDevice:v8];
      if (v42 != 3)
      {
        if (v42 != 2)
        {
          if (v42 != 1)
          {
            goto LABEL_121;
          }

          goto LABEL_115;
        }

LABEL_69:
        [(SAMonitoringSessionManager *)self changeMonitoringSessionState:v8 toState:5];
        v57 = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
        v58 = [v57 objectForKeyedSubscript:v8];
        v59 = [v58 scenarioClassifier];
        [v59 currentUnsafeLocation];
        v61 = v60 = self;

        v62 = [(SAMonitoringSessionManager *)v60 deviceRecord];
        [v62 updateLastWithYouLocation:v61 forDeviceWithUUID:v8];

        goto LABEL_121;
      }

LABEL_117:
      v85 = self;
      v86 = v8;
      v87 = 1;
      goto LABEL_118;
    }

    v56 = TASALog;
    if (!os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_121;
    }

    v38 = v56;
    v39 = [SAWithYouDetector convertSAWithYouStatusToString:a4];
    *buf = 68289539;
    *&buf[4] = 0;
    v102 = 2082;
    v103 = "";
    v104 = 2113;
    v105 = v8;
    v106 = 2113;
    v107 = v39;
    v45 = "{msg%{public}.0s:#SAMonitoringSessionManager received unexpected status in verification stage, uuid:%{private}@, status:%{private}@}";
    goto LABEL_65;
  }

  if (v99 != 5)
  {
    if (v99 != 6)
    {
      goto LABEL_121;
    }

    v44 = TASALog;
    if (!os_log_type_enabled(TASALog, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_121;
    }

    v38 = v44;
    v39 = [SAMonitoringSessionManager convertSAMonitoringSessionStateToString:6];
    *buf = 68289539;
    *&buf[4] = 0;
    v102 = 2082;
    v103 = "";
    v104 = 2113;
    v105 = v39;
    v106 = 2113;
    v107 = v8;
    v45 = "{msg%{public}.0s:#SAMonitoringSessionManager session already finished, sessionState:%{private}@, uuid:%{private}@}";
    v46 = v38;
    v47 = OS_LOG_TYPE_FAULT;
    goto LABEL_66;
  }

  if (v98 == 1)
  {
    if (a4 == 2)
    {
      v71 = TASALog;
      if (os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
      {
        *buf = 68289283;
        *&buf[4] = 0;
        v102 = 2082;
        v103 = "";
        v104 = 2113;
        v105 = v8;
        _os_log_impl(&dword_2656EA000, v71, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#SAMonitoringSessionManager lost from unsafe to safe, uuid:%{private}@}", buf, 0x1Cu);
      }
    }

    goto LABEL_115;
  }

  if (v98 == 2)
  {
    if (a4 != 2)
    {
      goto LABEL_121;
    }

    v69 = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
    v70 = [v69 objectForKeyedSubscript:v8];
    if ([v70 earlyVehicularTrigger])
    {
    }

    else
    {
      v82 = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
      [v82 objectForKeyedSubscript:v8];
      v84 = v83 = self;
      v100 = [v84 earlyAirplaneTrigger];

      self = v83;
      if (!v100)
      {
        goto LABEL_121;
      }
    }

    if (![(SAMonitoringSessionManager *)self enoughTimeHasPassedBeforeSurfacingAlert:v19 forAlertForDevice:v8 alertType:1])
    {
      v88 = self;
      v89 = v19;
      v90 = v8;
      v91 = 1;
      goto LABEL_120;
    }

    [(SAMonitoringSessionManager *)self storeSeparationLocation:v8];
    [(SAMonitoringSessionManager *)self notifyEarlyLeftBehind:v8];
LABEL_115:
    v85 = self;
    v86 = v8;
    v87 = 2;
    goto LABEL_118;
  }

  if (v98 != 3)
  {
    goto LABEL_121;
  }

  if (a4 - 3 < 2)
  {
    v80 = TASALog;
    if (!os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_121;
    }

    v38 = v80;
    v39 = [SAWithYouDetector convertSAWithYouStatusToString:a4];
    *buf = 68289539;
    *&buf[4] = 0;
    v102 = 2082;
    v103 = "";
    v104 = 2113;
    v105 = v8;
    v106 = 2113;
    v107 = v39;
    v45 = "{msg%{public}.0s:#SAMonitoringSessionManager received unexpected status in left location stage, uuid:%{private}@, status:%{private}@}";
LABEL_65:
    v46 = v38;
    v47 = OS_LOG_TYPE_ERROR;
LABEL_66:
    _os_log_impl(&dword_2656EA000, v46, v47, v45, buf, 0x26u);
    goto LABEL_80;
  }

  if (a4 == 1)
  {
    if ([(SAMonitoringSessionManager *)self deviceShouldTransitionWithLastScenarioChangeDate:v13 lastWithYouDate:v20])
    {
      goto LABEL_117;
    }

    goto LABEL_119;
  }

  if (a4 == 2 && v97 == 2)
  {
    v51 = v13;
    v52 = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
    v53 = [v52 objectForKeyedSubscript:v8];
    v54 = [v53 earlyVehicularTrigger];

    if (v54)
    {
      v55 = [v19 earlierDate:v51];

      v51 = v55;
    }

    if ([(SAMonitoringSessionManager *)self enoughTimeHasPassedBeforeSurfacingAlert:v51 forAlertForDevice:v8 alertType:1])
    {
      [(SAMonitoringSessionManager *)self storeSeparationLocation:v8];
      [(SAMonitoringSessionManager *)self notifyWhenLeftBehind:v8];
      [(SAMonitoringSessionManager *)self changeMonitoringSessionState:v8 toState:2];
    }

    else
    {
      [(SAMonitoringSessionManager *)self scheduleNextForceUpdateWithYouStatusFromReferenceDate:v51 forAlertForDevice:v8 alertType:1];
    }
  }

LABEL_121:

  v92 = *MEMORY[0x277D85DE8];
}

- (id)getLastScenarioChangeDateAmongAllDevices
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
  v4 = [v3 allKeys];

  v5 = [MEMORY[0x277CBEAA8] distantPast];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        v12 = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
        v13 = [v12 objectForKeyedSubscript:v11];

        v14 = [v13 scenarioClassifier];
        v15 = [v14 scenarioChangeDate];

        if ([v5 compare:v15] == -1)
        {
          v16 = v15;

          v5 = v16;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)scheduleNextForceUpdateWithYouStatusFromReferenceDate:(id)a3 forAlertForDevice:(id)a4 alertType:(unint64_t)a5
{
  v22 = a3;
  v8 = a4;
  v9 = [(SAMonitoringSessionManager *)self devicesWithPendingTransition];
  [v9 addObject:v8];

  if (!self->_scheduledAlarmForForceUpdateWithYouStatus)
  {
    v10 = v22;
    if (!v22)
    {
      v10 = [(SAMonitoringSessionManager *)self getLastScenarioChangeDateAmongAllDevices];
    }

    v22 = v10;
    if ([(SAMonitoringSessionManager *)self _isOnlyMonitoringCompanionDevice])
    {
      v11 = MEMORY[0x277CBEAA8];
      v12 = 30.0;
    }

    else
    {
      if ([(SAMonitoringSessionManager *)self standby])
      {
        v13 = 6.0;
      }

      else
      {
        v13 = 39.0;
      }

      v14 = MEMORY[0x277CBEAA8];
      [(SAMonitoringSessionManager *)self timeDelayForRetryScanForAlertForDeviceUUID:v8 alertType:a5];
      v12 = v15 - v13;
      v11 = v14;
    }

    v16 = [v11 dateWithTimeInterval:v22 sinceDate:v12];
    v17 = [(SATimeServiceProtocol *)self->_clock getCurrentTime];
    v18 = [v16 compare:v17];

    if (v18 == -1)
    {
      v20 = [(SAMonitoringSessionManager *)self standby];
      v21 = [(SAMonitoringSessionManager *)self withYouDetector];
      v19 = v21;
      if (v20)
      {
        [v21 forceUpdateWithYouStatusWithShortScan:0];
      }

      else
      {
        [v21 forceUpdateWithYouStatus];
      }
    }

    else
    {
      v19 = [(SATimeServiceProtocol *)self->_clock setupAlarmFireAt:v16 forClient:self];
      [(SAMonitoringSessionManager *)self setScheduledAlarmForForceUpdateWithYouStatus:v19];
    }
  }
}

- (BOOL)_isOnlyMonitoringCompanionDevice
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
  v4 = [v3 allKeys];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [(SADeviceRecord *)self->_deviceRecord getSADevice:v10, v17];

        if (v11)
        {
          v12 = [(SADeviceRecord *)self->_deviceRecord getSADevice:v10];
          v13 = [v12 deviceType];

          if (v13 != 8)
          {
            v14 = 0;
            goto LABEL_12;
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v14 = 1;
LABEL_12:

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)scheduleNextPersistenceWrite
{
  v3 = [(SAMonitoringSessionManager *)self nextScheduledAlarmForPersistenceWrite];

  if (!v3)
  {
    v8 = [(SAMonitoringSessionManager *)self clock];
    v4 = MEMORY[0x277CBEAA8];
    v5 = [(SATimeServiceProtocol *)self->_clock getCurrentTime];
    v6 = [v4 dateWithTimeInterval:v5 sinceDate:1.0];
    v7 = [v8 setupAlarmFireAt:v6 forClient:self];
    [(SAMonitoringSessionManager *)self setNextScheduledAlarmForPersistenceWrite:v7];
  }
}

- (double)timeDelayForRetryScanForAlertForDeviceUUID:(id)a3 alertType:(unint64_t)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(SAMonitoringSessionManager *)self devices];
  v8 = [v7 objectForKeyedSubscript:v6];

  v9 = [(SAWithYouDetectorServiceProtocol *)self->_withYouDetector statusForDeviceWithUUID:v6];
  v10 = TASALog;
  if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEBUG))
  {
    v14[0] = 68289795;
    v14[1] = 0;
    v15 = 2082;
    v16 = "";
    v17 = 2113;
    v18 = v6;
    v19 = 2049;
    v20 = a4;
    v21 = 2049;
    v22 = v9;
    _os_log_impl(&dword_2656EA000, v10, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:SAMonitoringSessionManager schedule retry scan, uuid:%{private}@, alertType:%{private}ld, withYouStatus:%{private}ld}", v14, 0x30u);
  }

  if (![v8 isAppleAudioAccessory] || (v11 = 360.0, a4 != 2) && (a4 || (v9 & 0xFFFFFFFFFFFFFFFBLL) != 0))
  {
    v11 = 120.0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (BOOL)enoughTimeHasPassedBeforeSurfacingAlert:(id)a3 forAlertForDevice:(id)a4 alertType:(unint64_t)a5
{
  if (!a3)
  {
    return 1;
  }

  v8 = a4;
  v9 = a3;
  v10 = [(SAMonitoringSessionManager *)self clock];
  v11 = [v10 getCurrentTime];
  [v11 timeIntervalSinceDate:v9];
  v13 = v12;

  [(SAMonitoringSessionManager *)self minimumTimeSinceScenarioTransitionForAlertForDeviceUUID:v8 alertType:a5];
  v15 = v14;

  v16 = v13 >= v15;
  return v16;
}

- (double)minimumTimeSinceScenarioTransitionForAlertForDeviceUUID:(id)a3 alertType:(unint64_t)a4
{
  v5 = [(SADeviceRecord *)self->_deviceRecord getSADevice:a3];
  v6 = [v5 deviceType];
  v7 = [v5 isAppleAudioAccessory];
  v8 = 108.0;
  if (v6 != 16)
  {
    v8 = 30.0;
  }

  if (((a4 == 2) & v7) != 0)
  {
    v9 = 324.0;
  }

  else
  {
    v9 = v8;
  }

  return v9;
}

- (void)alarmFiredForUUID:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 isEqual:self->_nextScheduledAlarmForPersistenceWrite])
  {
    persistenceManager = self->_persistenceManager;
    v6 = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
    [(SAPersistenceManager *)persistenceManager onUpdatedMonitoringSessionRecord:v6];

    nextScheduledAlarmForPersistenceWrite = self->_nextScheduledAlarmForPersistenceWrite;
    self->_nextScheduledAlarmForPersistenceWrite = 0;
  }

  if ([v4 isEqual:self->_scheduledAlarmForForceUpdateWithYouStatus])
  {
    v8 = [(SAMonitoringSessionManager *)self devicesWithPendingTransition];
    v9 = [v8 count];

    if (v9)
    {
      v10 = [(SAMonitoringSessionManager *)self standby];
      v11 = TASALog;
      v12 = os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT);
      if (v10)
      {
        if (v12)
        {
          v18 = 68289026;
          v19 = 0;
          v20 = 2082;
          v21 = "";
          _os_log_impl(&dword_2656EA000, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:SAMonitoringSessionManager alarm fired while standby, requesting short aggressive scan}", &v18, 0x12u);
        }

        [(SAWithYouDetectorServiceProtocol *)self->_withYouDetector forceUpdateWithYouStatusWithShortScan:0];
      }

      else
      {
        if (v12)
        {
          v18 = 68289283;
          v19 = 0;
          v20 = 2082;
          v21 = "";
          v22 = 2049;
          v23 = v9;
          _os_log_impl(&dword_2656EA000, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:SAMonitoringSessionManager alarm fired while not standby, requesting a terminable long aggressive scan, devices pending transition count:%{private}ld}", &v18, 0x1Cu);
        }

        withYouDetector = self->_withYouDetector;
        v14 = [(SAMonitoringSessionManager *)self devicesWithPendingTransition];
        v15 = [v14 allObjects];
        [(SAWithYouDetectorServiceProtocol *)withYouDetector forceUpdateWithYouStatusToFindDevices:v15 withContext:8];
      }
    }

    scheduledAlarmForForceUpdateWithYouStatus = self->_scheduledAlarmForForceUpdateWithYouStatus;
    self->_scheduledAlarmForForceUpdateWithYouStatus = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)didChangeTravelTypeFrom:(unint64_t)a3 to:(unint64_t)a4 hints:(unint64_t)a5
{
  v53 = *MEMORY[0x277D85DE8];
  [(SAMonitoringSessionManager *)self setCaCurrentVehicularState:a4];
  [(SAMonitoringSessionManager *)self setCaIsVehicularBTHintOn:(a5 >> 4) & 1];
  v8 = [(SAMonitoringSessionManager *)self standby];
  if (a4 == 1 && !v8 && [(SAMonitoringSessionManager *)self enabled])
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v10 = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
    v11 = [v10 allKeys];

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    obj = v11;
    v12 = [obj countByEnumeratingWithState:&v37 objects:v51 count:16];
    if (v12)
    {
      v14 = v12;
      v15 = *v38;
      *&v13 = 68289026;
      v35 = v13;
      do
      {
        v16 = 0;
        do
        {
          if (*v38 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v37 + 1) + 8 * v16);
          v18 = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
          v19 = [v18 objectForKeyedSubscript:v17];

          v20 = [(SAMonitoringSessionManager *)self devices];
          v21 = [v20 objectForKeyedSubscript:v17];

          if (v21)
          {
            if ([v19 state] == 5)
            {
              [v19 setEarlyVehicularTrigger:1];
              v22 = [(SAMonitoringSessionManager *)self clock];
              v23 = [v22 getCurrentTime];
              [v19 setEarlyVehicularStateChangeDate:v23];

              [v9 addObject:v17];
            }
          }

          else
          {
            v24 = TASALog;
            if (os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
            {
              *buf = v35;
              v46 = 0;
              v47 = 2082;
              v48 = "";
              _os_log_impl(&dword_2656EA000, v24, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:SAMonitoringSessionManager device found in monitoringSession list, but not in devices list}", buf, 0x12u);
            }
          }

          ++v16;
        }

        while (v14 != v16);
        v14 = [obj countByEnumeratingWithState:&v37 objects:v51 count:16];
      }

      while (v14);
    }

    v25 = [v9 count];
    if (v25)
    {
      v26 = v25;
      v27 = TASALog;
      if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289283;
        v46 = 0;
        v47 = 2082;
        v48 = "";
        v49 = 2049;
        v50 = v26;
        _os_log_impl(&dword_2656EA000, v27, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAMonitoringSessionManager requesting terminable long aggressive scan on travel type change, count of devices to find:%{private}ld}", buf, 0x1Cu);
      }

      v28 = [(SAMonitoringSessionManager *)self withYouDetector];
      [v28 forceUpdateWithYouStatusToFindDevices:v9 withContext:7];
    }
  }

  else
  {
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v29 = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
    v9 = [v29 allValues];

    v30 = [v9 countByEnumeratingWithState:&v41 objects:v52 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v42;
      do
      {
        v33 = 0;
        do
        {
          if (*v42 != v32)
          {
            objc_enumerationMutation(v9);
          }

          [*(*(&v41 + 1) + 8 * v33++) setEarlyVehicularTrigger:0];
        }

        while (v31 != v33);
        v31 = [v9 countByEnumeratingWithState:&v41 objects:v52 count:16];
      }

      while (v31);
    }
  }

  v34 = *MEMORY[0x277D85DE8];
}

- (void)setSafeLocations:(void *)a3 forDeviceUUID:(void *)a4 .cold.1(uint8_t *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = [a3 UUIDString];
  *a1 = 138477827;
  *a4 = v8;
  _os_log_error_impl(&dword_2656EA000, v7, OS_LOG_TYPE_ERROR, "#SAMonitoringSessionManager attempted adding non-existing location, for deviceId, %{private}@", a1, 0xCu);
}

@end