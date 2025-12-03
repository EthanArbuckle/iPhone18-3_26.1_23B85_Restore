@interface TAInterVisitMetricsSnapshot
- (BOOL)isEqual:(id)equal;
- (TAInterVisitMetricsSnapshot)initWithCoder:(id)coder;
- (TAInterVisitMetricsSnapshot)initWithTime:(id)time maxUniqueAddresses:(unint64_t)addresses;
- (void)encodeWithCoder:(id)coder;
- (void)updateInterVisitMetric:(id)metric store:(id)store withUpdatedTime:(id)time andCloseSnapshot:(BOOL)snapshot;
- (void)updateWithInterVisitMetricsSnapshot:(id)snapshot store:(id)store;
- (void)visitEntryDelayCorrection:(id)correction store:(id)store;
@end

@implementation TAInterVisitMetricsSnapshot

- (TAInterVisitMetricsSnapshot)initWithTime:(id)time maxUniqueAddresses:(unint64_t)addresses
{
  timeCopy = time;
  v22.receiver = self;
  v22.super_class = TAInterVisitMetricsSnapshot;
  v7 = [(TAInterVisitMetricsSnapshot *)&v22 init];
  if (v7)
  {
    if (!timeCopy)
    {
      v20 = 0;
      goto LABEL_6;
    }

    v8 = [timeCopy copy];
    initialTime = v7->_initialTime;
    v7->_initialTime = v8;

    v10 = [timeCopy copy];
    lastUpdateTime = v7->_lastUpdateTime;
    v7->_lastUpdateTime = v10;

    v7->_maxUniqueAddresses = addresses;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    accumulatedDeviceMetrics = v7->_accumulatedDeviceMetrics;
    v7->_accumulatedDeviceMetrics = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    firstAssociatedLocationPerDevice = v7->_firstAssociatedLocationPerDevice;
    v7->_firstAssociatedLocationPerDevice = dictionary2;

    dictionary3 = [MEMORY[0x277CBEB38] dictionary];
    lastAssociatedLocationPerDevice = v7->_lastAssociatedLocationPerDevice;
    v7->_lastAssociatedLocationPerDevice = dictionary3;

    dictionary4 = [MEMORY[0x277CBEB38] dictionary];
    lastAdvPerDevice = v7->_lastAdvPerDevice;
    v7->_lastAdvPerDevice = dictionary4;

    v7->_isClosed = 0;
  }

  v20 = v7;
LABEL_6:

  return v20;
}

- (void)updateInterVisitMetric:(id)metric store:(id)store withUpdatedTime:(id)time andCloseSnapshot:(BOOL)snapshot
{
  snapshotCopy = snapshot;
  v82 = *MEMORY[0x277D85DE8];
  metricCopy = metric;
  storeCopy = store;
  timeCopy = time;
  if (self->_isClosed)
  {
    v12 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
    {
      [TAInterVisitMetricsSnapshot updateInterVisitMetric:v12 store:? withUpdatedTime:? andCloseSnapshot:?];
    }

    goto LABEL_41;
  }

  if ([(NSDate *)self->_lastUpdateTime compare:timeCopy]!= NSOrderedDescending)
  {
    p_lastUpdateTime = &self->_lastUpdateTime;
    timeCopy2 = time;
    v58 = snapshotCopy;
    v59 = timeCopy;
    v60 = metricCopy;
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    obj = metricCopy;
    v65 = [obj countByEnumeratingWithState:&v71 objects:v81 count:16];
    if (!v65)
    {
      goto LABEL_38;
    }

    v63 = *v72;
    selfCopy = self;
    while (1)
    {
      v15 = 0;
      do
      {
        if (*v72 != v63)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v71 + 1) + 8 * v15);
        v17 = [obj objectForKey:v16];
        v18 = [(NSMutableDictionary *)self->_accumulatedDeviceMetrics objectForKey:v16];
        if (v18)
        {
          goto LABEL_17;
        }

        accumulatedDeviceMetrics = [(TAInterVisitMetricsSnapshot *)self accumulatedDeviceMetrics];
        v20 = [accumulatedDeviceMetrics count];
        maxUniqueAddresses = [(TAInterVisitMetricsSnapshot *)self maxUniqueAddresses];

        if (v20 < maxUniqueAddresses)
        {
          v18 = objc_alloc_init(TAInterVisitMetricPerDevice);
          [(NSMutableDictionary *)self->_accumulatedDeviceMetrics setObject:v18 forKey:v16];
LABEL_17:
          deviceLocationHistory = [v17 deviceLocationHistory];
          v23 = [deviceLocationHistory mutableCopy];

          v24 = [(NSMutableDictionary *)self->_lastAssociatedLocationPerDevice objectForKey:v16];
          if (v24)
          {
            [v23 insertObject:v24 atIndex:0];
          }

          v67 = v24;
          deviceObservationInterval = [v17 deviceObservationInterval];
          v26 = [(NSMutableDictionary *)self->_lastAdvPerDevice objectForKey:v16];
          v66 = v26;
          if (v26)
          {
            v64 = deviceObservationInterval;
            v27 = v26;
            getDate = [v26 getDate];
            latestObservation = [v17 latestObservation];
            getDate2 = [latestObservation getDate];
            v31 = [getDate compare:getDate2];

            if (v31 == 1)
            {
              if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
              {
                [TAInterVisitMetricsSnapshot updateInterVisitMetric:v70 store:? withUpdatedTime:? andCloseSnapshot:?];
              }

              deviceObservationInterval = v64;
            }

            else
            {
              v32 = MEMORY[0x277CCA970];
              getDate3 = [v27 getDate];
              latestObservation2 = [v17 latestObservation];
              getDate4 = [latestObservation2 getDate];
              deviceObservationInterval = [v32 createIntervalSafelyWithStartDate:getDate3 endDate:getDate4];
            }
          }

          v36 = [TAFilterGeneral locationSegments:v23 underMaxSpeed:50.0];
          v37 = v36;
          [(TAInterVisitMetricPerDevice *)v18 setSegmentSpeedExceedsLimit:[(TAInterVisitMetricPerDevice *)v18 segmentSpeedExceedsLimit]| !v36];
          if (!v37)
          {
            v38 = TAStatusLog;
            if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
            {
              *buf = 68289283;
              v76 = 0;
              v77 = 2082;
              v78 = "";
              v79 = 2113;
              v80 = v16;
              _os_log_impl(&dword_26F2E2000, v38, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#TAInterVisitMetricsSnapshot segment speed exceeds limit, address:%{private}@}", buf, 0x1Cu);
            }
          }

          deviceLocationHistory2 = [v17 deviceLocationHistory];
          -[TAInterVisitMetricPerDevice accumulateNumOfAssociatedLocs:](v18, "accumulateNumOfAssociatedLocs:", [deviceLocationHistory2 count]);

          [deviceObservationInterval duration];
          [(TAInterVisitMetricPerDevice *)v18 accumulateDuration:?];
          [TAFilterGeneral distOfTravelAlong:v23];
          [(TAInterVisitMetricPerDevice *)v18 accumulateDistance:?];
          [(TAInterVisitMetricPerDevice *)v18 accumulateSampledObservedLocations:v23];
          v40 = [obj objectForKeyedSubscript:v16];
          latestObservation3 = [v40 latestObservation];
          [(TAInterVisitMetricPerDevice *)v18 accumulateLatestAdvertisement:latestObservation3];

          v42 = [TADominantUserActivity getCumulativeUserActivityTimeInDateInterval:deviceObservationInterval store:storeCopy];
          [(TAInterVisitMetricPerDevice *)v18 accumulateDurationPerMotionState:v42];

          self = selfCopy;
          if ([v23 count])
          {
            v43 = [(NSMutableDictionary *)selfCopy->_firstAssociatedLocationPerDevice objectForKeyedSubscript:v16];

            if (!v43)
            {
              firstAssociatedLocationPerDevice = selfCopy->_firstAssociatedLocationPerDevice;
              firstObject = [v23 firstObject];
              v46 = [firstObject copy];
              [(NSMutableDictionary *)firstAssociatedLocationPerDevice setObject:v46 forKey:v16];
            }

            lastAssociatedLocationPerDevice = selfCopy->_lastAssociatedLocationPerDevice;
            lastObject = [v23 lastObject];
            v49 = [lastObject copy];
            [(NSMutableDictionary *)lastAssociatedLocationPerDevice setObject:v49 forKey:v16];
          }

          lastAdvPerDevice = selfCopy->_lastAdvPerDevice;
          latestObservation4 = [v17 latestObservation];
          v52 = [latestObservation4 copy];
          [(NSMutableDictionary *)lastAdvPerDevice setObject:v52 forKey:v16];

          goto LABEL_33;
        }

        v53 = TAStatusLog;
        if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
        {
          *buf = 68289283;
          v76 = 0;
          v77 = 2082;
          v78 = "";
          v79 = 2113;
          v80 = v16;
          _os_log_impl(&dword_26F2E2000, v53, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#TAInterVisitMetricsSnapshot snapshot full, not adding metrics for address, address:%{private}@}", buf, 0x1Cu);
        }

LABEL_33:

        ++v15;
      }

      while (v65 != v15);
      v54 = [obj countByEnumeratingWithState:&v71 objects:v81 count:16];
      v65 = v54;
      if (!v54)
      {
LABEL_38:

        objc_storeStrong(p_lastUpdateTime, timeCopy2);
        self->_isClosed = v58;
        timeCopy = v59;
        metricCopy = v60;
        goto LABEL_41;
      }
    }
  }

  v13 = TAStatusLog;
  v14 = os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG);
  if (snapshotCopy)
  {
    if (v14)
    {
      [TAInterVisitMetricsSnapshot updateInterVisitMetric:v13 store:? withUpdatedTime:? andCloseSnapshot:?];
    }

    self->_isClosed = snapshotCopy;
  }

  else if (v14)
  {
    [TAInterVisitMetricsSnapshot updateInterVisitMetric:v13 store:? withUpdatedTime:? andCloseSnapshot:?];
  }

LABEL_41:

  v55 = *MEMORY[0x277D85DE8];
}

- (void)visitEntryDelayCorrection:(id)correction store:(id)store
{
  v83 = *MEMORY[0x277D85DE8];
  correctionCopy = correction;
  storeCopy = store;
  v52 = correctionCopy;
  if ([correctionCopy hasArrivalDate] && !objc_msgSend(correctionCopy, "hasDepartureDate"))
  {
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    obj = self->_accumulatedDeviceMetrics;
    v55 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v63 objects:v82 count:16];
    if (v55)
    {
      v10 = *v64;
      v11 = &TAStatusLog;
      *&v9 = 68289026;
      v45 = v9;
      selfCopy = self;
      v47 = storeCopy;
      v54 = *v64;
      do
      {
        for (i = 0; i != v55; ++i)
        {
          if (*v64 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v63 + 1) + 8 * i);
          v14 = [(NSMutableDictionary *)self->_lastAdvPerDevice objectForKeyedSubscript:v13, v45];
          if (v14)
          {
            v56 = v13;
            lastUpdateTime = self->_lastUpdateTime;
            [v52 arrivalDate];
            selfCopy2 = self;
            v17 = v11;
            v19 = v18 = storeCopy;
            v20 = [(NSDate *)lastUpdateTime compare:v19];

            getDate = [v14 getDate];
            arrivalDate = [v52 arrivalDate];
            v58 = [getDate compare:arrivalDate];

            v23 = MEMORY[0x277CCA970];
            arrivalDate2 = [v52 arrivalDate];
            v57 = v14;
            getDate2 = [v14 getDate];
            v26 = [v23 createIntervalSafelyWithStartDate:arrivalDate2 endDate:getDate2];

            storeCopy = v18;
            v11 = v17;
            self = selfCopy2;
            [v26 duration];
            v28 = v27;
            v29 = [TADominantUserActivity getCumulativeUserActivityTimeInDateInterval:v26 store:storeCopy];
            v53 = v20;
            v30 = v20 == -1;
            v10 = v54;
            if (!v30 && v58 != -1)
            {
              v51 = v26;
              v49 = [(NSMutableDictionary *)selfCopy2->_accumulatedDeviceMetrics objectForKeyedSubscript:v56];
              [v49 accumulateDuration:-v28];
              v31 = objc_alloc_init(MEMORY[0x277CBEB38]);
              v59 = 0u;
              v60 = 0u;
              v61 = 0u;
              v62 = 0u;
              v50 = v29;
              v32 = v29;
              v33 = [v32 countByEnumeratingWithState:&v59 objects:v81 count:16];
              if (v33)
              {
                v34 = v33;
                v35 = *v60;
                do
                {
                  for (j = 0; j != v34; ++j)
                  {
                    if (*v60 != v35)
                    {
                      objc_enumerationMutation(v32);
                    }

                    v37 = *(*(&v59 + 1) + 8 * j);
                    v38 = MEMORY[0x277CCABB0];
                    v39 = [v32 objectForKeyedSubscript:v37];
                    [v39 doubleValue];
                    v41 = [v38 numberWithDouble:-v40];
                    [v31 setObject:v41 forKeyedSubscript:v37];
                  }

                  v34 = [v32 countByEnumeratingWithState:&v59 objects:v81 count:16];
                }

                while (v34);
              }

              [v49 accumulateDurationPerMotionState:v31];
              self = selfCopy;
              storeCopy = v47;
              v10 = v54;
              v11 = &TAStatusLog;
              v29 = v50;
              v26 = v51;
            }

            v42 = *v11;
            if (os_log_type_enabled(*v11, OS_LOG_TYPE_DEBUG))
            {
              *buf = 68290307;
              v68 = 0;
              v69 = 2082;
              v70 = "";
              v71 = 2113;
              v72 = v56;
              v73 = 1026;
              v74 = v53 != -1;
              v75 = 1026;
              v76 = v58 != -1;
              v77 = 2050;
              v78 = v28;
              v79 = 2114;
              v80 = v29;
              _os_log_impl(&dword_26F2E2000, v42, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#TAInterVisitMetricsSnapshot visitEntryDelayCorrection evaluating metric, address:%{private}@, updatedAfterVisitEntry:%{public}hhd, hasAdvertisementAfterVisitEntry:%{public}hhd, durationCorrection:%{public}f, motionStatesCorrection:%{public}@}", buf, 0x3Cu);
            }

            v14 = v57;
          }

          else
          {
            v43 = *v11;
            if (os_log_type_enabled(*v11, OS_LOG_TYPE_FAULT))
            {
              *buf = v45;
              v68 = 0;
              v69 = 2082;
              v70 = "";
              _os_log_impl(&dword_26F2E2000, v43, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#TAInterVisitMetricsSnapshot missing latest advertisement for address in accumulatedDeviceMetrics}", buf, 0x12u);
            }
          }
        }

        v55 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v63 objects:v82 count:16];
      }

      while (v55);
    }
  }

  else
  {
    v8 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v68 = 0;
      v69 = 2082;
      v70 = "";
      _os_log_impl(&dword_26F2E2000, v8, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#TAInterVisitMetricsSnapshot got invalid visit in visitEntryDelayCorrection}", buf, 0x12u);
    }
  }

  v44 = *MEMORY[0x277D85DE8];
}

- (void)updateWithInterVisitMetricsSnapshot:(id)snapshot store:(id)store
{
  v86 = *MEMORY[0x277D85DE8];
  snapshotCopy = snapshot;
  storeCopy = store;
  lastUpdateTime = [snapshotCopy lastUpdateTime];
  lastUpdateTime = self->_lastUpdateTime;
  self->_lastUpdateTime = lastUpdateTime;

  self->_isClosed = [snapshotCopy isClosed];
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  obj = [snapshotCopy accumulatedDeviceMetrics];
  v68 = [obj countByEnumeratingWithState:&v74 objects:v85 count:16];
  if (v68)
  {
    v67 = *v75;
    *&v9 = 68289283;
    v61 = v9;
    selfCopy = self;
    v64 = snapshotCopy;
    do
    {
      v10 = 0;
      do
      {
        if (*v75 != v67)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v74 + 1) + 8 * v10);
        accumulatedDeviceMetrics = [snapshotCopy accumulatedDeviceMetrics];
        v13 = [accumulatedDeviceMetrics objectForKey:v11];

        v14 = [(NSMutableDictionary *)self->_accumulatedDeviceMetrics objectForKey:v11];
        v15 = [(NSMutableDictionary *)self->_accumulatedDeviceMetrics objectForKey:v11];

        if (v15)
        {
          [v14 accumulateNumOfAssociatedLocs:{objc_msgSend(v13, "numOfAssociatedLocs")}];
          v16 = [(NSMutableDictionary *)self->_lastAdvPerDevice objectForKeyedSubscript:v11];
          lastAdvPerDevice = [snapshotCopy lastAdvPerDevice];
          v18 = [lastAdvPerDevice objectForKeyedSubscript:v11];

          v69 = v16;
          if (v16 && v18)
          {
            getDate = [v16 getDate];
            [v18 getDate];
            v20 = v18;
            v22 = v21 = v16;
            v23 = [getDate compare:v22];

            if (v23 == 1)
            {
              v18 = v20;
              self = selfCopy;
              if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_FAULT))
              {
                [TAInterVisitMetricsSnapshot updateWithInterVisitMetricsSnapshot:v73 store:?];
              }
            }

            else
            {
              v29 = MEMORY[0x277CCA970];
              getDate2 = [v21 getDate];
              getDate3 = [v20 getDate];
              v32 = [v29 createIntervalSafelyWithStartDate:getDate2 endDate:getDate3];

              [v32 duration];
              [v14 accumulateDuration:?];
              v33 = [TADominantUserActivity getCumulativeUserActivityTimeInDateInterval:v32 store:storeCopy];
              [v14 accumulateDurationPerMotionState:v33];

              v18 = v20;
              self = selfCopy;
            }
          }

          else
          {
            [v13 duration];
            [v14 accumulateDuration:?];
            durationPerMotionState = [v13 durationPerMotionState];
            [v14 accumulateDurationPerMotionState:durationPerMotionState];
          }

          [v13 distance];
          [v14 accumulateDistance:?];
          v34 = [(NSMutableDictionary *)self->_lastAssociatedLocationPerDevice objectForKeyedSubscript:v11];
          firstAssociatedLocationPerDevice = [snapshotCopy firstAssociatedLocationPerDevice];
          v36 = [firstAssociatedLocationPerDevice objectForKeyedSubscript:v11];

          if (v34 && v36)
          {
            v66 = v18;
            getDate4 = [v34 getDate];
            getDate5 = [v36 getDate];
            v39 = [getDate4 compare:getDate5];

            if (v39 == -1)
            {
              v78[0] = v34;
              v78[1] = v36;
              v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v78 count:2];
              [TAFilterGeneral distOfTravelAlong:v40];
              v42 = v41;

              [v14 accumulateDistance:v42];
              snapshotCopy = v64;
              v18 = v66;
            }

            else
            {
              snapshotCopy = v64;
              v18 = v66;
              if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
              {
                [TAInterVisitMetricsSnapshot updateWithInterVisitMetricsSnapshot:v71 store:?];
              }
            }
          }

          sampledObservedLocations = [v13 sampledObservedLocations];
          [v14 accumulateSampledObservedLocations:sampledObservedLocations];

          latestAdvertisement = [v13 latestAdvertisement];
          [v14 accumulateLatestAdvertisement:latestAdvertisement];

LABEL_25:
          firstAssociatedLocationPerDevice3 = [(NSMutableDictionary *)self->_firstAssociatedLocationPerDevice objectForKeyedSubscript:v11];
          if (firstAssociatedLocationPerDevice3)
          {
LABEL_28:
          }

          else
          {
            firstAssociatedLocationPerDevice2 = [snapshotCopy firstAssociatedLocationPerDevice];
            v47 = [firstAssociatedLocationPerDevice2 objectForKeyedSubscript:v11];

            if (v47)
            {
              firstAssociatedLocationPerDevice = self->_firstAssociatedLocationPerDevice;
              firstAssociatedLocationPerDevice3 = [snapshotCopy firstAssociatedLocationPerDevice];
              v49 = [firstAssociatedLocationPerDevice3 objectForKeyedSubscript:v11];
              [(NSMutableDictionary *)firstAssociatedLocationPerDevice setObject:v49 forKey:v11];

              goto LABEL_28;
            }
          }

          lastAssociatedLocationPerDevice = [snapshotCopy lastAssociatedLocationPerDevice];
          v51 = [lastAssociatedLocationPerDevice objectForKeyedSubscript:v11];

          if (v51)
          {
            lastAssociatedLocationPerDevice = self->_lastAssociatedLocationPerDevice;
            lastAssociatedLocationPerDevice2 = [snapshotCopy lastAssociatedLocationPerDevice];
            v54 = [lastAssociatedLocationPerDevice2 objectForKeyedSubscript:v11];
            [(NSMutableDictionary *)lastAssociatedLocationPerDevice setObject:v54 forKey:v11];
          }

          lastAdvPerDevice2 = [snapshotCopy lastAdvPerDevice];
          v56 = [lastAdvPerDevice2 objectForKeyedSubscript:v11];

          if (v56)
          {
            lastAdvPerDevice = self->_lastAdvPerDevice;
            lastAdvPerDevice3 = [snapshotCopy lastAdvPerDevice];
            v59 = [lastAdvPerDevice3 objectForKeyedSubscript:v11];
            [(NSMutableDictionary *)lastAdvPerDevice setObject:v59 forKey:v11];
          }

          goto LABEL_33;
        }

        accumulatedDeviceMetrics2 = [(TAInterVisitMetricsSnapshot *)self accumulatedDeviceMetrics];
        v25 = [accumulatedDeviceMetrics2 count];
        maxUniqueAddresses = [(TAInterVisitMetricsSnapshot *)self maxUniqueAddresses];

        if (v25 < maxUniqueAddresses)
        {
          [(NSMutableDictionary *)self->_accumulatedDeviceMetrics setObject:v13 forKey:v11];
          goto LABEL_25;
        }

        v28 = TAStatusLog;
        if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
        {
          *buf = v61;
          v80 = 0;
          v81 = 2082;
          v82 = "";
          v83 = 2113;
          v84 = v11;
          _os_log_impl(&dword_26F2E2000, v28, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#TAInterVisitMetricsSnapshot snapshot full, not adding metrics for address, address:%{private}@}", buf, 0x1Cu);
        }

LABEL_33:

        ++v10;
      }

      while (v68 != v10);
      v68 = [obj countByEnumeratingWithState:&v74 objects:v85 count:16];
    }

    while (v68);
  }

  v60 = *MEMORY[0x277D85DE8];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      isClosed = [(TAInterVisitMetricsSnapshot *)self isClosed];
      if (isClosed != [(TAInterVisitMetricsSnapshot *)v6 isClosed])
      {
        v8 = 0;
LABEL_41:

        goto LABEL_42;
      }

      initialTime = [(TAInterVisitMetricsSnapshot *)self initialTime];
      initialTime2 = [(TAInterVisitMetricsSnapshot *)v6 initialTime];
      if (initialTime != initialTime2)
      {
        initialTime3 = [(TAInterVisitMetricsSnapshot *)self initialTime];
        initialTime4 = [(TAInterVisitMetricsSnapshot *)v6 initialTime];
        v57 = initialTime3;
        if (![initialTime3 isEqual:?])
        {
          v8 = 0;
          goto LABEL_39;
        }
      }

      lastUpdateTime = [(TAInterVisitMetricsSnapshot *)self lastUpdateTime];
      lastUpdateTime2 = [(TAInterVisitMetricsSnapshot *)v6 lastUpdateTime];
      if (lastUpdateTime != lastUpdateTime2)
      {
        lastUpdateTime3 = [(TAInterVisitMetricsSnapshot *)self lastUpdateTime];
        lastUpdateTime4 = [(TAInterVisitMetricsSnapshot *)v6 lastUpdateTime];
        if (![lastUpdateTime3 isEqual:?])
        {
          v8 = 0;
LABEL_37:

LABEL_38:
          if (initialTime == initialTime2)
          {
LABEL_40:

            goto LABEL_41;
          }

LABEL_39:

          goto LABEL_40;
        }
      }

      accumulatedDeviceMetrics = [(TAInterVisitMetricsSnapshot *)self accumulatedDeviceMetrics];
      accumulatedDeviceMetrics2 = [(TAInterVisitMetricsSnapshot *)v6 accumulatedDeviceMetrics];
      v55 = accumulatedDeviceMetrics;
      v16 = accumulatedDeviceMetrics == accumulatedDeviceMetrics2;
      v17 = accumulatedDeviceMetrics2;
      if (v16)
      {
        v52 = accumulatedDeviceMetrics2;
      }

      else
      {
        accumulatedDeviceMetrics3 = [(TAInterVisitMetricsSnapshot *)self accumulatedDeviceMetrics];
        accumulatedDeviceMetrics4 = [(TAInterVisitMetricsSnapshot *)v6 accumulatedDeviceMetrics];
        v49 = accumulatedDeviceMetrics3;
        if (![accumulatedDeviceMetrics3 isEqual:?])
        {
          v8 = 0;
          v25 = v17;
          v26 = v55;
LABEL_35:

LABEL_36:
          if (lastUpdateTime == lastUpdateTime2)
          {
            goto LABEL_38;
          }

          goto LABEL_37;
        }

        v52 = v17;
      }

      firstAssociatedLocationPerDevice = [(TAInterVisitMetricsSnapshot *)self firstAssociatedLocationPerDevice];
      firstAssociatedLocationPerDevice2 = [(TAInterVisitMetricsSnapshot *)v6 firstAssociatedLocationPerDevice];
      v50 = firstAssociatedLocationPerDevice;
      v51 = lastUpdateTime3;
      v16 = firstAssociatedLocationPerDevice == firstAssociatedLocationPerDevice2;
      v21 = firstAssociatedLocationPerDevice2;
      if (!v16)
      {
        firstAssociatedLocationPerDevice3 = [(TAInterVisitMetricsSnapshot *)self firstAssociatedLocationPerDevice];
        firstAssociatedLocationPerDevice4 = [(TAInterVisitMetricsSnapshot *)v6 firstAssociatedLocationPerDevice];
        v43 = firstAssociatedLocationPerDevice3;
        if (![firstAssociatedLocationPerDevice3 isEqual:?])
        {
          v23 = v52;
          v8 = 0;
          v24 = v50;
LABEL_33:

LABEL_34:
          v26 = v55;
          v25 = v23;
          v16 = v55 == v23;
          lastUpdateTime3 = v51;
          if (v16)
          {
            goto LABEL_36;
          }

          goto LABEL_35;
        }
      }

      lastAssociatedLocationPerDevice = [(TAInterVisitMetricsSnapshot *)self lastAssociatedLocationPerDevice];
      lastAssociatedLocationPerDevice2 = [(TAInterVisitMetricsSnapshot *)v6 lastAssociatedLocationPerDevice];
      v46 = lastAssociatedLocationPerDevice;
      v47 = v21;
      v44 = lastUpdateTime2;
      if (lastAssociatedLocationPerDevice == lastAssociatedLocationPerDevice2)
      {
        v41 = lastUpdateTime;
        v30 = v52;
      }

      else
      {
        lastAssociatedLocationPerDevice3 = [(TAInterVisitMetricsSnapshot *)self lastAssociatedLocationPerDevice];
        lastAssociatedLocationPerDevice4 = [(TAInterVisitMetricsSnapshot *)v6 lastAssociatedLocationPerDevice];
        v40 = lastAssociatedLocationPerDevice3;
        v29 = [lastAssociatedLocationPerDevice3 isEqual:?];
        v30 = v52;
        if (!v29)
        {
          v8 = 0;
          v37 = lastAssociatedLocationPerDevice2;
          v36 = v46;
          goto LABEL_30;
        }

        v41 = lastUpdateTime;
      }

      lastAdvPerDevice = [(TAInterVisitMetricsSnapshot *)self lastAdvPerDevice];
      lastAdvPerDevice2 = [(TAInterVisitMetricsSnapshot *)v6 lastAdvPerDevice];
      v33 = lastAdvPerDevice2;
      if (lastAdvPerDevice == lastAdvPerDevice2)
      {

        v8 = 1;
      }

      else
      {
        [(TAInterVisitMetricsSnapshot *)self lastAdvPerDevice];
        v34 = v53 = v30;
        lastAdvPerDevice3 = [(TAInterVisitMetricsSnapshot *)v6 lastAdvPerDevice];
        v8 = [v34 isEqual:lastAdvPerDevice3];

        v30 = v53;
      }

      v37 = lastAssociatedLocationPerDevice2;
      v36 = v46;
      lastUpdateTime = v41;
      if (v46 == lastAssociatedLocationPerDevice2)
      {
        v23 = v30;
LABEL_32:

        v24 = v50;
        v21 = v47;
        lastUpdateTime2 = v44;
        if (v50 == v47)
        {
          goto LABEL_34;
        }

        goto LABEL_33;
      }

LABEL_30:
      v23 = v30;

      goto LABEL_32;
    }

    v8 = 0;
  }

LABEL_42:

  return v8;
}

- (TAInterVisitMetricsSnapshot)initWithCoder:(id)coder
{
  coderCopy = coder;
  v35.receiver = self;
  v35.super_class = TAInterVisitMetricsSnapshot;
  v5 = [(TAInterVisitMetricsSnapshot *)&v35 init];
  if (v5)
  {
    v5->_isClosed = [coderCopy decodeBoolForKey:@"IsClosed"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"InitTime"];
    initialTime = v5->_initialTime;
    v5->_initialTime = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"LastUpdateTime"];
    lastUpdateTime = v5->_lastUpdateTime;
    v5->_lastUpdateTime = v8;

    v10 = MEMORY[0x277CBEB98];
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = [v10 setWithObjects:{v11, v12, objc_opt_class(), 0}];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"accumMetrics"];
    accumulatedDeviceMetrics = v5->_accumulatedDeviceMetrics;
    v5->_accumulatedDeviceMetrics = v14;

    v16 = MEMORY[0x277CBEB98];
    v17 = objc_opt_class();
    v18 = objc_opt_class();
    v19 = [v16 setWithObjects:{v17, v18, objc_opt_class(), 0}];
    v20 = [coderCopy decodeObjectOfClasses:v19 forKey:@"firstLoc"];
    firstAssociatedLocationPerDevice = v5->_firstAssociatedLocationPerDevice;
    v5->_firstAssociatedLocationPerDevice = v20;

    v22 = MEMORY[0x277CBEB98];
    v23 = objc_opt_class();
    v24 = objc_opt_class();
    v25 = [v22 setWithObjects:{v23, v24, objc_opt_class(), 0}];
    v26 = [coderCopy decodeObjectOfClasses:v25 forKey:@"lastLoc"];
    lastAssociatedLocationPerDevice = v5->_lastAssociatedLocationPerDevice;
    v5->_lastAssociatedLocationPerDevice = v26;

    v28 = MEMORY[0x277CBEB98];
    v29 = objc_opt_class();
    v30 = objc_opt_class();
    v31 = [v28 setWithObjects:{v29, v30, objc_opt_class(), 0}];
    v32 = [coderCopy decodeObjectOfClasses:v31 forKey:@"LastAdv"];
    lastAdvPerDevice = v5->_lastAdvPerDevice;
    v5->_lastAdvPerDevice = v32;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  isClosed = self->_isClosed;
  coderCopy = coder;
  [coderCopy encodeBool:isClosed forKey:@"IsClosed"];
  [coderCopy encodeObject:self->_initialTime forKey:@"InitTime"];
  [coderCopy encodeObject:self->_lastUpdateTime forKey:@"LastUpdateTime"];
  [coderCopy encodeObject:self->_accumulatedDeviceMetrics forKey:@"accumMetrics"];
  [coderCopy encodeObject:self->_firstAssociatedLocationPerDevice forKey:@"firstLoc"];
  [coderCopy encodeObject:self->_lastAssociatedLocationPerDevice forKey:@"lastLoc"];
  [coderCopy encodeObject:self->_lastAdvPerDevice forKey:@"LastAdv"];
}

@end