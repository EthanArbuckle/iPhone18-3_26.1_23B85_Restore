@interface TATrackingAvoidanceService
+ (id)createRandomBytes:(unint64_t)a3;
- (BOOL)shouldPerformDetection;
- (TATrackingAvoidanceService)initWithSettings:(id)a3;
- (TATrackingAvoidanceService)initWithTASettings:(id)a3;
- (id)sendUnstagingUpdatesAndRemoveUnstagingUpdatesRequests:(id)a3;
- (void)_performDetection;
- (void)_performUpdateIfNecessary:(id)a3;
- (void)bootstrapDeviceRecord:(id)a3;
- (void)bootstrapVisitState:(id)a3;
- (void)debugForceSurfaceStagedDetections:(id)a3 deviceType:(unint64_t)a4 detailsBitmask:(unsigned int)a5;
- (void)debugStageTADetection:(id)a3 deviceType:(unint64_t)a4 detailsBitmask:(unsigned int)a5 shouldRemoveDevice:(BOOL)a6;
- (void)didRequestAIS:(id)a3;
- (void)fetchTAUnknownBeacon:(id)a3 withCompletion:(id)a4;
- (void)filterAndStageDetectionResults:(id)a3;
- (void)ingestTAEvent:(id)a3;
- (void)notifyObserversOfRequests:(id)a3;
- (void)notifyObserversOfStagedSuspiciousDevices:(id)a3;
- (void)notifyObserversOfSuspiciousDeviceUpdate:(id)a3;
- (void)notifyObserversOfSuspiciousDevices:(id)a3;
- (void)notifyObserversOfUnstagedSuspiciousDevices:(id)a3;
- (void)notifyObserversOfVisitStateChange;
- (void)visitState:(id)a3 didChangeStateFromType:(unint64_t)a4 toType:(unint64_t)a5;
- (void)visitState:(id)a3 didIssueMetricsSubmissionHint:(unint64_t)a4;
@end

@implementation TATrackingAvoidanceService

- (BOOL)shouldPerformDetection
{
  v3 = [(TAStore *)self->_store clock];
  [v3 timeIntervalSinceDate:self->_latestClassificationDate];
  v5 = v4;

  [(TATrackingAvoidanceServiceSettings *)self->_serviceSettings classificationTimeInterval];
  return v5 > v6;
}

- (void)_performDetection
{
  v87 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5 = [(TAStore *)self->_store visitState];
  v6 = [v5 state];

  if (v6)
  {
    if (v6 == 2)
    {
      v7 = [MEMORY[0x277CBEA60] array];
      v8 = [MEMORY[0x277CBEA60] array];
      if ([(TATrackingAvoidanceServiceSettings *)self->_serviceSettings enableTAFilterGeneral])
      {
        v17 = TAStatusLog;
        if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_26F2E2000, v17, OS_LOG_TYPE_DEFAULT, "#TATrackingAvoidanceService running TAFilterGeneral detector", buf, 2u);
        }

        store = self->_store;
        v19 = [(TASettings *)self->_settings filterGeneralSettings];
        v20 = [TAFilterGeneral filterSuspiciousDeviceWithStore:store settings:v19 andAppendOutgoingRequestsTo:v3];

        v7 = v20;
      }

      if (![(TATrackingAvoidanceServiceSettings *)self->_serviceSettings enableTAFilterLeavingLOI])
      {
        goto LABEL_21;
      }

      v21 = TAStatusLog;
      if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_26F2E2000, v21, OS_LOG_TYPE_DEFAULT, "#TATrackingAvoidanceService running TAFilterLeavingLOI detector", buf, 2u);
      }

      v22 = self->_store;
      v15 = [(TASettings *)self->_settings filterLeavingLOISettings];
      v16 = [TAFilterLeavingLOI filterSuspiciousDeviceWithStore:v22 leavingLOISettings:v15 andAppendOutgoingRequestsTo:v3];
    }

    else
    {
      if (v6 != 1)
      {
        goto LABEL_22;
      }

      v7 = [MEMORY[0x277CBEA60] array];
      v8 = [MEMORY[0x277CBEA60] array];
      if ([(TATrackingAvoidanceServiceSettings *)self->_serviceSettings enableTAFilterVisits])
      {
        v9 = TAStatusLog;
        if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_26F2E2000, v9, OS_LOG_TYPE_DEFAULT, "#TATrackingAvoidanceService running TAFilterVisits detector", buf, 2u);
        }

        v10 = self->_store;
        v11 = [(TASettings *)self->_settings filterVisitsSettings];
        v12 = [TAFilterVisits filterSuspiciousDeviceWithStore:v10 settings:v11 andAppendOutgoingRequestsTo:v3];

        v7 = v12;
      }

      if (![(TATrackingAvoidanceServiceSettings *)self->_serviceSettings enableTAFilterSingleVisit])
      {
        goto LABEL_21;
      }

      v13 = TAStatusLog;
      if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_26F2E2000, v13, OS_LOG_TYPE_DEFAULT, "#TATrackingAvoidanceService running TAFilterSingleVisit detector", buf, 2u);
      }

      v14 = self->_store;
      v15 = [(TASettings *)self->_settings filterSingleVisitSettings];
      v16 = [TAFilterSingleVisit filterSuspiciousDeviceWithStore:v14 singleVisitSettings:v15 andAppendOutgoingRequestsTo:v3];
    }

    v23 = v16;

    v8 = v23;
LABEL_21:
    [v4 addObjectsFromArray:v7];
    [v4 addObjectsFromArray:v8];

    goto LABEL_22;
  }

  v65 = TAStatusLog;
  if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26F2E2000, v65, OS_LOG_TYPE_DEFAULT, "#TATrackingAvoidanceService not running detection in the unknown visit state", buf, 2u);
  }

LABEL_22:
  v67 = v3;
  v24 = [(TAStore *)self->_store clock];
  latestClassificationDate = self->_latestClassificationDate;
  self->_latestClassificationDate = v24;

  v68 = v4;
  [(TATrackingAvoidanceService *)self filterAndStageDetectionResults:v4];
  v26 = [(TAStore *)self->_store deviceRecord];
  v27 = [v26 getDetectionResultsToPush];

  v70 = v27;
  v28 = [TAFilterKnownDevices removeDuplicateSuspiciousDevices:v27];
  v29 = [(TATrackingAvoidanceService *)self store];
  v30 = [v29 deviceRecord];
  v69 = v28;
  v31 = [TAFilterKnownDevices removeIssuedDevices:v28 deviceRecord:v30];

  v32 = [(TAStore *)self->_store deviceRecord];
  v33 = [TAFilterObservationAggregator normalizeDualT18PoshAdvertisersAsPosh:v31 deviceRecord:v32];

  v34 = [(TAStore *)self->_store visitState];
  v35 = [v34 visitSnapshotBuffer];
  v36 = [(TAStore *)self->_store visitState];
  v37 = [v36 interVisitMetricSnapshotBuffer];
  v38 = [(TAStore *)self->_store clock];
  v39 = [TAFilterObservationAggregator aggregateObservationsThroughHistoryForDetectionResults:v33 visitSnapshotBuffer:v35 intervisitSnapshotBuffer:v37 clock:v38];

  v40 = [(TAStore *)self->_store deviceRecord];
  [TAFilterObservationAggregator attachAISInfo:v39 deviceRecord:v40];

  if (_os_feature_enabled_impl())
  {
    v41 = [(TATrackingAvoidanceService *)self getDailyAlertLimitPerAccessory];
    v42 = [(TATrackingAvoidanceService *)self store];
    v43 = [v42 deviceRecord];
    v44 = [v43 limitSuspiciousDevicesSentToObservers:v39 forDailyMaximum:v41];

    if ([v39 count])
    {
      v45 = TAStatusLog;
      if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
      {
        v46 = v45;
        v66 = [v70 count];
        v47 = [v69 count];
        v48 = [v31 count];
        v49 = [v68 count];
        v50 = [v44 count];
        v51 = [v39 count];
        *buf = 68290563;
        v72 = 0;
        v73 = 2082;
        v74 = "";
        v75 = 2049;
        v76 = v66;
        v77 = 2049;
        v78 = v47;
        v79 = 2049;
        v80 = v48;
        v81 = 2049;
        v82 = v49;
        v83 = 2049;
        v84 = v50;
        v85 = 2049;
        v86 = v51;
        _os_log_impl(&dword_26F2E2000, v46, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#TATrackingAvoidanceService reporting suspicious devices, stagedDetectionsReadyForSubmission:%{private}lu, dedupedStagedDetectionsReadyForSubmission:%{private}lu, nonIssuedDedupedStagedDetectionsReadyForSubmission:%{private}lu, allUnfilteredSuspiciousDevices:%{private}lu, dailyAlertLimitFilteredDetectionWithHistoricalObservations:%{private}lu, detectionWithHistoricalObservations:%{private}lu}", buf, 0x4Eu);
      }
    }

    v52 = [(TATrackingAvoidanceService *)self store];
    v53 = [v52 deviceRecord];
    [v53 processSurfacedAlerts:v44];

    v54 = v67;
    [(TATrackingAvoidanceService *)self notifyObserversOfRequests:v67];
    [(TATrackingAvoidanceService *)self notifyObserversOfSuspiciousDevices:v44];

    v55 = v68;
  }

  else
  {
    v55 = v68;
    if ([v39 count])
    {
      v56 = TAStatusLog;
      if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
      {
        v57 = v56;
        v58 = [v70 count];
        v59 = [v69 count];
        v60 = [v31 count];
        v61 = [v68 count];
        *buf = 68290051;
        v72 = 0;
        v73 = 2082;
        v74 = "";
        v75 = 2049;
        v76 = v58;
        v77 = 2049;
        v78 = v59;
        v79 = 2049;
        v80 = v60;
        v81 = 2049;
        v82 = v61;
        _os_log_impl(&dword_26F2E2000, v57, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#TATrackingAvoidanceService reporting suspicious devices, stagedDetectionsReadyForSubmission:%{private}lu, dedupedStagedDetectionsReadyForSubmission:%{private}lu, nonIssuedDedupedStagedDetectionsReadyForSubmission:%{private}lu, allUnfilteredSuspiciousDevices:%{private}lu}", buf, 0x3Au);
      }
    }

    v62 = [(TATrackingAvoidanceService *)self store];
    v63 = [v62 deviceRecord];
    [v63 processSurfacedAlerts:v39];

    v54 = v67;
    [(TATrackingAvoidanceService *)self notifyObserversOfRequests:v67];
    [(TATrackingAvoidanceService *)self notifyObserversOfSuspiciousDevices:v39];
  }

  v64 = *MEMORY[0x277D85DE8];
}

- (TATrackingAvoidanceService)initWithSettings:(id)a3
{
  v4 = a3;
  v5 = [[TASettings alloc] initWithSettings:v4];

  v6 = [(TATrackingAvoidanceService *)self initWithTASettings:v5];
  return v6;
}

- (TATrackingAvoidanceService)initWithTASettings:(id)a3
{
  v5 = a3;
  v23.receiver = self;
  v23.super_class = TATrackingAvoidanceService;
  v6 = [(TATrackingAvoidanceService *)&v23 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_settings, a3);
    TARegisterLogs();
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
    {
      [TATrackingAvoidanceService initWithTASettings:?];
    }

    v8 = [(TASettings *)v7->_settings serviceSettings];
    serviceSettings = v7->_serviceSettings;
    v7->_serviceSettings = v8;

    v10 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
    observers = v7->_observers;
    v7->_observers = v10;

    v12 = [TAStore alloc];
    v13 = [(TASettings *)v7->_settings eventBufferSettings];
    v14 = [(TASettings *)v7->_settings scanRequestSettings];
    v15 = [(TASettings *)v7->_settings visitStateSettings];
    v16 = [(TASettings *)v7->_settings deviceRecordSettings];
    v17 = [(TAStore *)v12 initWithEventBufferSettings:v13 scanRequestSettings:v14 visitStateSettings:v15 deviceRecordSettings:v16];
    store = v7->_store;
    v7->_store = v17;

    v19 = [MEMORY[0x277CBEAA8] distantPast];
    latestClassificationDate = v7->_latestClassificationDate;
    v7->_latestClassificationDate = v19;

    [(TAStore *)v7->_store addObserver:v7];
    stagedIntervisitMetrics = v7->_stagedIntervisitMetrics;
    v7->_stagedIntervisitMetrics = 0;
  }

  return v7;
}

- (void)fetchTAUnknownBeacon:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [(TAStore *)self->_store fetchTAUnknownBeacon:v6];
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
    {
      [TATrackingAvoidanceService fetchTAUnknownBeacon:withCompletion:];
    }

    v7[2](v7, v8);
  }

  else if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
  {
    [TATrackingAvoidanceService fetchTAUnknownBeacon:withCompletion:];
  }
}

- (void)didRequestAIS:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NSHashTable *)self->_observers allObjects];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v23;
    *&v7 = 138477827;
    v21 = v7;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          if ([(TASettings *)self->_settings aisFetchEnabled])
          {
            [v11 trackingAvoidanceService:self didRequestAIS:v4];
            continue;
          }

          v17 = TAStatusLog;
          if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
          {
            v13 = v17;
            v14 = [v4 description];
            *buf = v21;
            v27 = v14;
            v15 = v13;
            v16 = "#TATrackingAvoidanceService AIS fetch disabled :%{private}@";
            goto LABEL_13;
          }
        }

        else
        {
          v12 = TAStatusLog;
          if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
          {
            v13 = v12;
            v14 = [v4 description];
            *buf = v21;
            v27 = v14;
            v15 = v13;
            v16 = "#TATrackingAvoidanceService AIS fetch not implemented on connection stack :%{private}@";
LABEL_13:
            _os_log_impl(&dword_26F2E2000, v15, OS_LOG_TYPE_DEFAULT, v16, buf, 0xCu);
          }
        }

        v18 = [(TAStore *)self->_store deviceRecord];
        v19 = [v4 address];
        [v18 forceUpdateAISFetchState:v19 state:8];
      }

      v8 = [v5 countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v8);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)bootstrapDeviceRecord:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(TAStore *)self->_store deviceRecord];
    [v5 mergeWithAnotherDeviceRecord:v4];
  }

  else if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
  {
    [TATrackingAvoidanceService bootstrapDeviceRecord:];
  }
}

- (void)bootstrapVisitState:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(TAStore *)self->_store visitState];
    [v5 mergeWithAnotherTAVisitState:v4];
  }

  else if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
  {
    [TATrackingAvoidanceService bootstrapVisitState:];
  }
}

- (void)notifyObserversOfSuspiciousDevices:(id)a3
{
  v57 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 count])
  {
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v32 = v5;
    obj = v5;
    v36 = [obj countByEnumeratingWithState:&v46 objects:v56 count:16];
    if (v36)
    {
      v34 = *v47;
      v35 = self;
      do
      {
        v6 = 0;
        do
        {
          if (*v47 != v34)
          {
            objc_enumerationMutation(obj);
          }

          v37 = v6;
          v7 = *(*(&v46 + 1) + 8 * v6);
          v8 = TAStatusLog;
          if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
          {
            v9 = v8;
            v10 = [v7 description];
            *buf = 138739971;
            v52 = v10;
            _os_log_impl(&dword_26F2E2000, v9, OS_LOG_TYPE_DEFAULT, "#TATrackingAvoidanceService found:%{sensitive}@", buf, 0xCu);
          }

          v44 = 0u;
          v45 = 0u;
          v42 = 0u;
          v43 = 0u;
          v11 = [v7 locationHistory];
          v12 = [v11 countByEnumeratingWithState:&v42 objects:v55 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v43;
            do
            {
              v15 = 0;
              do
              {
                if (*v43 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                v16 = TAStatusLog;
                if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
                {
                  v17 = *(*(&v42 + 1) + 8 * v15);
                  v18 = v16;
                  v19 = [v7 address];
                  v20 = [v17 description];
                  *buf = 138478083;
                  v52 = v19;
                  v53 = 2117;
                  v54 = v20;
                  _os_log_debug_impl(&dword_26F2E2000, v18, OS_LOG_TYPE_DEBUG, "#TATrackingAvoidanceService detection location associated with %{private}@:%{sensitive}@", buf, 0x16u);
                }

                ++v15;
              }

              while (v13 != v15);
              v13 = [v11 countByEnumeratingWithState:&v42 objects:v55 count:16];
            }

            while (v13);
          }

          self = v35;
          v21 = [(TAStore *)v35->_store deviceRecord];
          v22 = [TADeviceInformation alloc];
          v23 = [v7 latestAdvertisement];
          v24 = [v7 date];
          v25 = [(TADeviceInformation *)v22 initWithTASPAdvertisement:v23 deviceType:0 notificationState:1 date:v24];
          [v21 ingestTAEvent:v25 andAppendOutgoingRequestsTo:0];

          v6 = v37 + 1;
        }

        while (v37 + 1 != v36);
        v36 = [obj countByEnumeratingWithState:&v46 objects:v56 count:16];
      }

      while (v36);
    }

    v26 = [(NSHashTable *)self->_observers allObjects];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v27 = [v26 countByEnumeratingWithState:&v38 objects:v50 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v39;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v39 != v29)
          {
            objc_enumerationMutation(v26);
          }

          [*(*(&v38 + 1) + 8 * i) trackingAvoidanceService:self didFindSuspiciousDevices:obj];
        }

        v28 = [v26 countByEnumeratingWithState:&v38 objects:v50 count:16];
      }

      while (v28);
    }

    v5 = v32;
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (void)notifyObserversOfRequests:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 count])
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v22 = v5;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v27 objects:v34 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v28;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v28 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = TAStatusLog;
          if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
          {
            v12 = *(*(&v27 + 1) + 8 * i);
            v13 = v11;
            v14 = [v12 description];
            *buf = 138739971;
            v33 = v14;
            _os_log_impl(&dword_26F2E2000, v13, OS_LOG_TYPE_DEFAULT, "#TATrackingAvoidanceService requesting:%{sensitive}@", buf, 0xCu);
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v27 objects:v34 count:16];
      }

      while (v8);
    }

    v15 = [(NSHashTable *)self->_observers allObjects];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v16 = [v15 countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v24;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v24 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v23 + 1) + 8 * j);
          if (objc_opt_respondsToSelector())
          {
            [v20 trackingAvoidanceService:self requestingAdditionalInformation:v6];
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v23 objects:v31 count:16];
      }

      while (v17);
    }

    v5 = v22;
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)notifyObserversOfSuspiciousDeviceUpdate:(id)a3
{
  v54[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v30 = v4;
    v54[0] = v4;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:1];
    v29 = self;
    v6 = [(TAStore *)self->_store deviceRecord];
    v7 = [TAFilterObservationAggregator normalizeDualT18PoshAdvertisersAsPosh:v5 deviceRecord:v6];

    v8 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      v10 = [v7 description];
      *buf = 138739971;
      v49 = v10;
      _os_log_impl(&dword_26F2E2000, v9, OS_LOG_TYPE_DEFAULT, "#TATrackingAvoidanceService update:%{sensitive}@", buf, 0xCu);
    }

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    obj = v7;
    v32 = [obj countByEnumeratingWithState:&v43 objects:v53 count:16];
    if (v32)
    {
      v31 = *v44;
      do
      {
        v11 = 0;
        do
        {
          if (*v44 != v31)
          {
            objc_enumerationMutation(obj);
          }

          v34 = v11;
          v12 = *(*(&v43 + 1) + 8 * v11);
          v39 = 0u;
          v40 = 0u;
          v41 = 0u;
          v42 = 0u;
          v13 = [v12 locationHistory];
          v14 = [v13 countByEnumeratingWithState:&v39 objects:v52 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v40;
            do
            {
              v17 = 0;
              do
              {
                if (*v40 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                v18 = TAStatusLog;
                if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
                {
                  v19 = *(*(&v39 + 1) + 8 * v17);
                  v20 = v18;
                  v21 = [v12 address];
                  v22 = [v19 description];
                  *buf = 138478083;
                  v49 = v21;
                  v50 = 2117;
                  v51 = v22;
                  _os_log_debug_impl(&dword_26F2E2000, v20, OS_LOG_TYPE_DEBUG, "#TATrackingAvoidanceService update location associated with %{private}@:%{sensitive}@", buf, 0x16u);
                }

                ++v17;
              }

              while (v15 != v17);
              v15 = [v13 countByEnumeratingWithState:&v39 objects:v52 count:16];
            }

            while (v15);
          }

          v11 = v34 + 1;
        }

        while (v34 + 1 != v32);
        v32 = [obj countByEnumeratingWithState:&v43 objects:v53 count:16];
      }

      while (v32);
    }

    v23 = [(NSHashTable *)v29->_observers allObjects];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v24 = [v23 countByEnumeratingWithState:&v35 objects:v47 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v36;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v36 != v26)
          {
            objc_enumerationMutation(v23);
          }

          [*(*(&v35 + 1) + 8 * i) trackingAvoidanceService:v29 didUpdateSuspiciousDevices:obj];
        }

        v25 = [v23 countByEnumeratingWithState:&v35 objects:v47 count:16];
      }

      while (v25);
    }

    v4 = v30;
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)notifyObserversOfStagedSuspiciousDevices:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 count])
  {
    v6 = [(TAStore *)self->_store deviceRecord];
    v7 = [TAFilterObservationAggregator normalizeDualT18PoshAdvertisersAsPosh:v5 deviceRecord:v6];

    v8 = [(NSHashTable *)self->_observers allObjects];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v30 objects:v37 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v31;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v31 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v30 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v13 trackingAvoidanceService:self didStageSuspiciousDevices:v7];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v30 objects:v37 count:16];
      }

      while (v10);
    }

    v24 = v7;
    v25 = v5;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v14 = v5;
    v15 = [v14 countByEnumeratingWithState:&v26 objects:v36 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v27;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v27 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = TAStatusLog;
          if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
          {
            v20 = *(*(&v26 + 1) + 8 * j);
            v21 = v19;
            v22 = [v20 description];
            *buf = 138739971;
            v35 = v22;
            _os_log_impl(&dword_26F2E2000, v21, OS_LOG_TYPE_DEFAULT, "#TATrackingAvoidanceService staged:%{sensitive}@", buf, 0xCu);
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v26 objects:v36 count:16];
      }

      while (v16);
    }

    v5 = v25;
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)notifyObserversOfUnstagedSuspiciousDevices:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 count])
  {
    v6 = [(TAStore *)self->_store deviceRecord];
    v7 = [TAFilterObservationAggregator normalizeDualT18PoshAdvertisersAsPosh:v5 deviceRecord:v6];

    v8 = [(NSHashTable *)self->_observers allObjects];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        v12 = 0;
        do
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v15 + 1) + 8 * v12);
          if (objc_opt_respondsToSelector())
          {
            [v13 trackingAvoidanceService:self didUnstageSuspiciousDevices:v7];
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)notifyObserversOfVisitStateChange
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [(NSHashTable *)self->_observers allObjects];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
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

        v8 = *(*(&v10 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 visitStateChangedForTrackingAvoidanceService:self];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)visitState:(id)a3 didChangeStateFromType:(unint64_t)a4 toType:(unint64_t)a5
{
  if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
  {
    [TATrackingAvoidanceService visitState:didChangeStateFromType:toType:];
  }

  [(TATrackingAvoidanceService *)self _performDetection];
  [(TATrackingAvoidanceService *)self notifyObserversOfVisitStateChange];
}

- (void)visitState:(id)a3 didIssueMetricsSubmissionHint:(unint64_t)a4
{
  v28[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  switch(a4)
  {
    case 2uLL:
      if (self->_stagedIntervisitMetrics)
      {
        v21 = TAStatusLog;
        if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
        {
          *v26 = 0;
          _os_log_impl(&dword_26F2E2000, v21, OS_LOG_TYPE_DEFAULT, "#TATrackingAvoidanceService reporting the previous intervisit-based metrics", v26, 2u);
        }

        stagedIntervisitMetrics = self->_stagedIntervisitMetrics;
        v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&stagedIntervisitMetrics count:1];
        [(TATrackingAvoidanceService *)self notifyObserversOfRequests:v22];

        v23 = self->_stagedIntervisitMetrics;
        self->_stagedIntervisitMetrics = 0;
      }

      break;
    case 1uLL:
      v15 = [TACoreAnalyticMetricManager computeMetricsInterVisit:self->_store];
      v9 = v15;
      if (v15 && [v15 count])
      {
        v16 = TAStatusLog;
        if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
        {
          *v26 = 0;
          _os_log_impl(&dword_26F2E2000, v16, OS_LOG_TYPE_DEFAULT, "#TATrackingAvoidanceService staging previous inter-visit metrics", v26, 2u);
        }

        v17 = [TAOutgoingRequests alloc];
        v18 = [(TAStore *)self->_store clock];
        v19 = [(TAOutgoingRequests *)v17 initWithRequestKey:@"DonatingInterVisitMetrics" additionalInformation:v9 date:v18];
        v20 = self->_stagedIntervisitMetrics;
        self->_stagedIntervisitMetrics = v19;
      }

      goto LABEL_14;
    case 0uLL:
      store = self->_store;
      v8 = [(TASettings *)self->_settings filterVisitsSettings];
      v9 = [TACoreAnalyticMetricManager computeMetricsVisit:store withFilterVisitsSettings:v8];

      if (v9 && [v9 count])
      {
        v10 = TAStatusLog;
        if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
        {
          *v26 = 0;
          _os_log_impl(&dword_26F2E2000, v10, OS_LOG_TYPE_DEFAULT, "#TATrackingAvoidanceService reporting the previous visit-based metrics", v26, 2u);
        }

        v11 = [TAOutgoingRequests alloc];
        v12 = [(TAStore *)self->_store clock];
        v13 = [(TAOutgoingRequests *)v11 initWithRequestKey:@"DonatingVisitMetrics" additionalInformation:v9 date:v12];

        v28[0] = v13;
        v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
        [(TATrackingAvoidanceService *)self notifyObserversOfRequests:v14];
      }

LABEL_14:

      break;
    default:
      v24 = TAStatusLog;
      if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
      {
        [TATrackingAvoidanceService visitState:a4 didIssueMetricsSubmissionHint:v24];
      }

      break;
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)filterAndStageDetectionResults:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(TAStore *)self->_store deviceRecord];
  v22 = v4;
  v6 = [TAFilterKnownDevices removeAndProcessBackgroundDetections:v4 deviceRecord:v5];

  v7 = [(TAStore *)self->_store deviceRecord];
  v21 = v6;
  v8 = [TAFilterKnownDevices removeKnownSuspiciousDevices:v6 deviceRecord:v7];

  v9 = [TAFilterKnownDevices removeDuplicateSuspiciousDevices:v8];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v24;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v23 + 1) + 8 * i);
        v15 = [(TAStore *)self->_store deviceRecord];
        v16 = [v14 latestAdvertisement];
        v17 = [(TAStore *)self->_store clock];
        [v15 stageDevice:v16 withCurrentDate:v17];

        v18 = [(TAStore *)self->_store deviceRecord];
        v27 = v14;
        v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];
        [v18 stageDetectionResults:v19];
      }

      v11 = [v9 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v11);
  }

  [(TATrackingAvoidanceService *)self notifyObserversOfStagedSuspiciousDevices:v9];

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_performUpdateIfNecessary:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(TAStore *)self->_store deviceRecord];
  v6 = [v4 address];
  v7 = [v5 hasSurfacedNotificationFor:v6];

  if (v7)
  {
    v8 = [(TAStore *)self->_store eventBuffer];
    v9 = [v8 getLatestElementOf:objc_opt_class()];

    if (v9)
    {
      v10 = [v4 scanDate];
      v11 = [v9 timestamp];
      [v10 timeIntervalSinceDate:v11];
      v13 = v12;

      v14 = [(TASettings *)self->_settings filterGeneralSettings];
      [v14 thresholdOfLocationRelevance];
      v16 = v15;

      if (v13 <= v16)
      {
        v18 = [TASuspiciousDevice alloc];
        v19 = [v4 getDate];
        v27 = v9;
        v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];
        v21 = [[TAMetricsDetection alloc] initWithDetectionType:0 visitDetectionMetrics:0 generalDetectionMetrics:0 singleVisitDetectionMetrics:0 latestAdvertisement:v4];
        v22 = [(TAStore *)self->_store deviceRecord];
        v23 = [v4 address];
        v24 = [v22 getAccessoryInfo:v23];
        v25 = [(TASuspiciousDevice *)v18 initWithLatestAdv:v4 detectionSummary:&unk_287F6FFF8 date:v19 locHistory:v20 detectionMetrics:v21 detectionType:0 immediacyType:0 accessoryInfo:v24 forceSurfaceReason:0];

        [(TATrackingAvoidanceService *)self notifyObserversOfSuspiciousDeviceUpdate:v25];
      }

      else
      {
        v17 = TAStatusLog;
        if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
        {
          *buf = 68289539;
          v29 = 0;
          v30 = 2082;
          v31 = "";
          v32 = 2113;
          v33 = v4;
          v34 = 2117;
          v35 = v9;
          _os_log_impl(&dword_26F2E2000, v17, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#TATrackingAvoidanceService location too stale to update, advertisement:%{private}@, latestLocation:%{sensitive}@}", buf, 0x26u);
        }
      }
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (id)sendUnstagingUpdatesAndRemoveUnstagingUpdatesRequests:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB18] array];
  v5 = [MEMORY[0x277CBEB18] array];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v23;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        v12 = [v11 key];
        v13 = [v12 isEqualToString:@"UnstagingUpdate"];

        if (v13)
        {
          v14 = [v11 additionalInformation];
          v15 = [v14 objectForKeyedSubscript:@"UnstagingUpdate"];
          v16 = v15;
          if (v15)
          {
            v17 = v15;
          }

          else
          {
            v17 = MEMORY[0x277CBEBF8];
          }

          [v5 addObjectsFromArray:v17];
        }

        else
        {
          [v4 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v8);
  }

  [(TATrackingAvoidanceService *)self notifyObserversOfUnstagedSuspiciousDevices:v5];
  v18 = [v4 copy];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (void)ingestTAEvent:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (_os_feature_enabled_impl() & 1) == 0)
    {
      v5 = v4;
      if ([v5 isPosh])
      {
        v6 = TAStatusLog;
        if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
        {
          v7 = v6;
          v8 = [v5 descriptionDictionary];
          v23 = 68289283;
          *v24 = 0;
          *&v24[4] = 2082;
          *&v24[6] = "";
          v25 = 2113;
          v26 = v8;
          _os_log_impl(&dword_26F2E2000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#TATrackingAvoidanceService skip adv ff not enabled, adv:%{private}@}", &v23, 0x1Cu);
        }

LABEL_22:

        goto LABEL_23;
      }
    }

    v9 = [MEMORY[0x277CBEAA8] now];
    v10 = [v4 getDate];
    [v9 timeIntervalSinceDate:v10];
    v12 = v11;

    [(TASettings *)self->_settings futureEventToleranceInterval];
    if (v12 >= -v13)
    {
      v17 = TAEventsLog;
      if (os_log_type_enabled(TAEventsLog, OS_LOG_TYPE_DEFAULT))
      {
        v23 = 138739971;
        *v24 = v4;
        _os_log_impl(&dword_26F2E2000, v17, OS_LOG_TYPE_DEFAULT, "%{sensitive}@", &v23, 0xCu);
      }

      v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
      [(TAStore *)self->_store addTAEvent:v4 andAppendOutgoingRequestsTo:v5];
      v18 = [(TATrackingAvoidanceService *)self sendUnstagingUpdatesAndRemoveUnstagingUpdatesRequests:v5];
      if ([(TATrackingAvoidanceService *)self shouldPerformDetection])
      {
        v19 = TAStatusLog;
        if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v23) = 0;
          _os_log_impl(&dword_26F2E2000, v19, OS_LOG_TYPE_DEFAULT, "#TATrackingAvoidanceService significant time elapsed, performing classification now", &v23, 2u);
        }

        [(TATrackingAvoidanceService *)self _performDetection];
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(TATrackingAvoidanceService *)self _performUpdateIfNecessary:v4];
      }

      v20 = [(TAStore *)self->_store deviceRecord];
      v21 = [TAFilterKnownDevices removeMetricsFromKnownDevices:v18 deviceRecord:v20];

      [(TATrackingAvoidanceService *)self notifyObserversOfRequests:v21];
      goto LABEL_22;
    }

    v14 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
    {
      v15 = v14;
      v16 = [v4 description];
      v23 = 68289283;
      *v24 = 0;
      *&v24[4] = 2082;
      *&v24[6] = "";
      v25 = 2117;
      v26 = v16;
      _os_log_impl(&dword_26F2E2000, v15, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#TATrackingAvoidanceService event is dated too far in the future, not ingesting, event:%{sensitive}@}", &v23, 0x1Cu);
    }
  }

  else if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
  {
    [TATrackingAvoidanceService ingestTAEvent:];
  }

LABEL_23:

  v22 = *MEMORY[0x277D85DE8];
}

+ (id)createRandomBytes:(unint64_t)a3
{
  v8[1] = *MEMORY[0x277D85DE8];
  v4 = v8 - ((a3 + 15) & 0xFFFFFFFFFFFFFFF0);
  arc4random_buf(v4, a3);
  v5 = [MEMORY[0x277CBEA90] dataWithBytes:v4 length:a3];
  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)debugStageTADetection:(id)a3 deviceType:(unint64_t)a4 detailsBitmask:(unsigned int)a5 shouldRemoveDevice:(BOOL)a6
{
  v6 = a6;
  v58 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = TAStatusLog;
  if (v10)
  {
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      v13 = [v10 hexString];
      *buf = 68289539;
      *v53 = 0;
      *&v53[4] = 2082;
      *&v53[6] = "";
      v54 = 2113;
      v55 = v13;
      v56 = 1026;
      v57 = v6;
      _os_log_impl(&dword_26F2E2000, v12, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#TATrackingAvoidanceService start stageTADetection for, address:%{private}@, shouldRemoveSingleDeviceRecord:%{public}hhd}", buf, 0x22u);
    }

    if (v6)
    {
      v14 = [(TAStore *)self->_store deviceRecord];
      [v14 removeDevice:v10];
    }

    if (a4 >= 4)
    {
      v15 = 0;
    }

    else
    {
      v15 = 0xF4E4D400 >> (8 * a4);
    }

    v16 = [MEMORY[0x277CBEAA8] date];
    v17 = &unk_287F6FEA8;
    if (a5 == 3)
    {
      v17 = &unk_287F6FED8;
    }

    if (a5 == 1)
    {
      v18 = &unk_287F6FEC0;
    }

    else
    {
      v18 = v17;
    }

    v19 = [TASPAdvertisement alloc];
    v20 = [TATrackingAvoidanceService createRandomBytes:22];
    v21 = [TATrackingAvoidanceService createRandomBytes:2];
    LODWORD(v46) = a5;
    v48 = v16;
    v22 = [(TASPAdvertisement *)v19 initWithAddress:v10 advertisementData:v20 status:v15 & 0x3FC reserved:v21 rssi:-55 scanDate:v16 detailsBitmask:v46 uuid:0 protocolID:v18];

    v23 = [(TAStore *)self->_store deviceRecord];
    v24 = [(TASPAdvertisement *)v22 getDate];
    [v23 stageDevice:v22 withCurrentDate:v24];

    v25 = [(TAStore *)self->_store deviceRecord];
    v26 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [v25 ingestTAEvent:v22 andAppendOutgoingRequestsTo:v26];

    v27 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:v16 sinceDate:-5400.0];
    v28 = [TASPAdvertisement alloc];
    v29 = [TATrackingAvoidanceService createRandomBytes:22];
    v30 = [TATrackingAvoidanceService createRandomBytes:2];
    LODWORD(v47) = a5;
    v31 = [(TASPAdvertisement *)v28 initWithAddress:v10 advertisementData:v29 status:v15 & 0x3FC reserved:v30 rssi:-55 scanDate:v27 detailsBitmask:v47 uuid:0 protocolID:v18];

    v32 = [(TAStore *)self->_store deviceRecord];
    v33 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [v32 ingestTAEvent:v31 andAppendOutgoingRequestsTo:v33];

    v34 = [[TALocationLite alloc] initWithTimestamp:v27 latitude:37.3348314 longitude:-122.008961 horizontalAccuracy:100.0];
    v35 = [TASuspiciousDevice alloc];
    v51 = v34;
    v36 = [MEMORY[0x277CBEA60] arrayWithObjects:&v51 count:1];
    v37 = [[TAMetricsDetection alloc] initWithDetectionType:1 visitDetectionMetrics:0 generalDetectionMetrics:0 singleVisitDetectionMetrics:0 latestAdvertisement:v22];
    v38 = [(TASuspiciousDevice *)v35 initWithLatestAdv:v22 detectionSummary:&unk_287F70020 date:v48 locHistory:v36 detectionMetrics:v37 detectionType:1 immediacyType:1 accessoryInfo:0 forceSurfaceReason:0];

    v39 = [(TAStore *)self->_store deviceRecord];
    v50 = v38;
    v40 = [MEMORY[0x277CBEA60] arrayWithObjects:&v50 count:1];
    [v39 stageDetectionResults:v40];

    v49 = v38;
    v41 = [MEMORY[0x277CBEA60] arrayWithObjects:&v49 count:1];
    [(TATrackingAvoidanceService *)self notifyObserversOfStagedSuspiciousDevices:v41];

    v42 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
    {
      v43 = v42;
      v44 = [v10 hexString];
      *buf = 138477827;
      *v53 = v44;
      _os_log_impl(&dword_26F2E2000, v43, OS_LOG_TYPE_DEFAULT, "#TATrackingAvoidanceService end stageDevice %{private}@", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
  {
    [TATrackingAvoidanceService debugStageTADetection:deviceType:detailsBitmask:shouldRemoveDevice:];
  }

  v45 = *MEMORY[0x277D85DE8];
}

- (void)debugForceSurfaceStagedDetections:(id)a3 deviceType:(unint64_t)a4 detailsBitmask:(unsigned int)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = TAStatusLog;
  if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = [v8 hexString];
    *buf = 138477827;
    v24 = v11;
    _os_log_impl(&dword_26F2E2000, v10, OS_LOG_TYPE_DEFAULT, "#TATrackingAvoidanceService forceSurfaceStagedDetections for address: %{private}@", buf, 0xCu);
  }

  if (a4 >= 4)
  {
    v12 = 0;
  }

  else
  {
    v12 = 0xF4E4D400 >> (8 * a4);
  }

  v13 = [TASPAdvertisement alloc];
  v14 = [TATrackingAvoidanceService createRandomBytes:22];
  v15 = [TATrackingAvoidanceService createRandomBytes:2];
  v16 = [MEMORY[0x277CBEAA8] now];
  LODWORD(v22) = a5;
  v17 = [(TASPAdvertisement *)v13 initWithAddress:v8 advertisementData:v14 status:v12 & 0x3FC reserved:v15 rssi:-55 scanDate:v16 detailsBitmask:v22 uuid:0 protocolID:0];

  v18 = [(TAStore *)self->_store deviceRecord];
  v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [v18 ingestTAEvent:v17 andAppendOutgoingRequestsTo:v19];

  v20 = [(TAStore *)self->_store deviceRecord];
  [v20 forceStagedDetectionsToSurfaceImmediatelyWithAdvertisement:v17 withReason:0];

  [(TATrackingAvoidanceService *)self _performDetection];
  v21 = *MEMORY[0x277D85DE8];
}

- (void)initWithTASettings:(uint64_t *)a1 .cold.1(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)fetchTAUnknownBeacon:withCompletion:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)visitState:didChangeStateFromType:toType:.cold.1()
{
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)visitState:(uint64_t)a1 didIssueMetricsSubmissionHint:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = a1;
  _os_log_error_impl(&dword_26F2E2000, a2, OS_LOG_TYPE_ERROR, "#TATrackingAvoidanceService unrecognized metrics hint %lu", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)ingestTAEvent:.cold.1()
{
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

@end