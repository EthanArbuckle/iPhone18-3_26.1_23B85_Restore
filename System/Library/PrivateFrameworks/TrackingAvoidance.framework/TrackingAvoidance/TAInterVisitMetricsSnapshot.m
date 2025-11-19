@interface TAInterVisitMetricsSnapshot
- (BOOL)isEqual:(id)a3;
- (TAInterVisitMetricsSnapshot)initWithCoder:(id)a3;
- (TAInterVisitMetricsSnapshot)initWithTime:(id)a3 maxUniqueAddresses:(unint64_t)a4;
- (void)encodeWithCoder:(id)a3;
- (void)updateInterVisitMetric:(id)a3 store:(id)a4 withUpdatedTime:(id)a5 andCloseSnapshot:(BOOL)a6;
- (void)updateWithInterVisitMetricsSnapshot:(id)a3 store:(id)a4;
- (void)visitEntryDelayCorrection:(id)a3 store:(id)a4;
@end

@implementation TAInterVisitMetricsSnapshot

- (TAInterVisitMetricsSnapshot)initWithTime:(id)a3 maxUniqueAddresses:(unint64_t)a4
{
  v6 = a3;
  v22.receiver = self;
  v22.super_class = TAInterVisitMetricsSnapshot;
  v7 = [(TAInterVisitMetricsSnapshot *)&v22 init];
  if (v7)
  {
    if (!v6)
    {
      v20 = 0;
      goto LABEL_6;
    }

    v8 = [v6 copy];
    initialTime = v7->_initialTime;
    v7->_initialTime = v8;

    v10 = [v6 copy];
    lastUpdateTime = v7->_lastUpdateTime;
    v7->_lastUpdateTime = v10;

    v7->_maxUniqueAddresses = a4;
    v12 = [MEMORY[0x277CBEB38] dictionary];
    accumulatedDeviceMetrics = v7->_accumulatedDeviceMetrics;
    v7->_accumulatedDeviceMetrics = v12;

    v14 = [MEMORY[0x277CBEB38] dictionary];
    firstAssociatedLocationPerDevice = v7->_firstAssociatedLocationPerDevice;
    v7->_firstAssociatedLocationPerDevice = v14;

    v16 = [MEMORY[0x277CBEB38] dictionary];
    lastAssociatedLocationPerDevice = v7->_lastAssociatedLocationPerDevice;
    v7->_lastAssociatedLocationPerDevice = v16;

    v18 = [MEMORY[0x277CBEB38] dictionary];
    lastAdvPerDevice = v7->_lastAdvPerDevice;
    v7->_lastAdvPerDevice = v18;

    v7->_isClosed = 0;
  }

  v20 = v7;
LABEL_6:

  return v20;
}

- (void)updateInterVisitMetric:(id)a3 store:(id)a4 withUpdatedTime:(id)a5 andCloseSnapshot:(BOOL)a6
{
  v6 = a6;
  v82 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v62 = a4;
  v11 = a5;
  if (self->_isClosed)
  {
    v12 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
    {
      [TAInterVisitMetricsSnapshot updateInterVisitMetric:v12 store:? withUpdatedTime:? andCloseSnapshot:?];
    }

    goto LABEL_41;
  }

  if ([(NSDate *)self->_lastUpdateTime compare:v11]!= NSOrderedDescending)
  {
    p_lastUpdateTime = &self->_lastUpdateTime;
    v57 = a5;
    v58 = v6;
    v59 = v11;
    v60 = v10;
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    obj = v10;
    v65 = [obj countByEnumeratingWithState:&v71 objects:v81 count:16];
    if (!v65)
    {
      goto LABEL_38;
    }

    v63 = *v72;
    v61 = self;
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

        v19 = [(TAInterVisitMetricsSnapshot *)self accumulatedDeviceMetrics];
        v20 = [v19 count];
        v21 = [(TAInterVisitMetricsSnapshot *)self maxUniqueAddresses];

        if (v20 < v21)
        {
          v18 = objc_alloc_init(TAInterVisitMetricPerDevice);
          [(NSMutableDictionary *)self->_accumulatedDeviceMetrics setObject:v18 forKey:v16];
LABEL_17:
          v22 = [v17 deviceLocationHistory];
          v23 = [v22 mutableCopy];

          v24 = [(NSMutableDictionary *)self->_lastAssociatedLocationPerDevice objectForKey:v16];
          if (v24)
          {
            [v23 insertObject:v24 atIndex:0];
          }

          v67 = v24;
          v25 = [v17 deviceObservationInterval];
          v26 = [(NSMutableDictionary *)self->_lastAdvPerDevice objectForKey:v16];
          v66 = v26;
          if (v26)
          {
            v64 = v25;
            v27 = v26;
            v28 = [v26 getDate];
            v29 = [v17 latestObservation];
            v30 = [v29 getDate];
            v31 = [v28 compare:v30];

            if (v31 == 1)
            {
              if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
              {
                [TAInterVisitMetricsSnapshot updateInterVisitMetric:v70 store:? withUpdatedTime:? andCloseSnapshot:?];
              }

              v25 = v64;
            }

            else
            {
              v32 = MEMORY[0x277CCA970];
              v33 = [v27 getDate];
              v34 = [v17 latestObservation];
              v35 = [v34 getDate];
              v25 = [v32 createIntervalSafelyWithStartDate:v33 endDate:v35];
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

          v39 = [v17 deviceLocationHistory];
          -[TAInterVisitMetricPerDevice accumulateNumOfAssociatedLocs:](v18, "accumulateNumOfAssociatedLocs:", [v39 count]);

          [v25 duration];
          [(TAInterVisitMetricPerDevice *)v18 accumulateDuration:?];
          [TAFilterGeneral distOfTravelAlong:v23];
          [(TAInterVisitMetricPerDevice *)v18 accumulateDistance:?];
          [(TAInterVisitMetricPerDevice *)v18 accumulateSampledObservedLocations:v23];
          v40 = [obj objectForKeyedSubscript:v16];
          v41 = [v40 latestObservation];
          [(TAInterVisitMetricPerDevice *)v18 accumulateLatestAdvertisement:v41];

          v42 = [TADominantUserActivity getCumulativeUserActivityTimeInDateInterval:v25 store:v62];
          [(TAInterVisitMetricPerDevice *)v18 accumulateDurationPerMotionState:v42];

          self = v61;
          if ([v23 count])
          {
            v43 = [(NSMutableDictionary *)v61->_firstAssociatedLocationPerDevice objectForKeyedSubscript:v16];

            if (!v43)
            {
              firstAssociatedLocationPerDevice = v61->_firstAssociatedLocationPerDevice;
              v45 = [v23 firstObject];
              v46 = [v45 copy];
              [(NSMutableDictionary *)firstAssociatedLocationPerDevice setObject:v46 forKey:v16];
            }

            lastAssociatedLocationPerDevice = v61->_lastAssociatedLocationPerDevice;
            v48 = [v23 lastObject];
            v49 = [v48 copy];
            [(NSMutableDictionary *)lastAssociatedLocationPerDevice setObject:v49 forKey:v16];
          }

          lastAdvPerDevice = v61->_lastAdvPerDevice;
          v51 = [v17 latestObservation];
          v52 = [v51 copy];
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

        objc_storeStrong(p_lastUpdateTime, v57);
        self->_isClosed = v58;
        v11 = v59;
        v10 = v60;
        goto LABEL_41;
      }
    }
  }

  v13 = TAStatusLog;
  v14 = os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG);
  if (v6)
  {
    if (v14)
    {
      [TAInterVisitMetricsSnapshot updateInterVisitMetric:v13 store:? withUpdatedTime:? andCloseSnapshot:?];
    }

    self->_isClosed = v6;
  }

  else if (v14)
  {
    [TAInterVisitMetricsSnapshot updateInterVisitMetric:v13 store:? withUpdatedTime:? andCloseSnapshot:?];
  }

LABEL_41:

  v55 = *MEMORY[0x277D85DE8];
}

- (void)visitEntryDelayCorrection:(id)a3 store:(id)a4
{
  v83 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v52 = v6;
  if ([v6 hasArrivalDate] && !objc_msgSend(v6, "hasDepartureDate"))
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
      v46 = self;
      v47 = v7;
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
            v16 = self;
            v17 = v11;
            v19 = v18 = v7;
            v20 = [(NSDate *)lastUpdateTime compare:v19];

            v21 = [v14 getDate];
            v22 = [v52 arrivalDate];
            v58 = [v21 compare:v22];

            v23 = MEMORY[0x277CCA970];
            v24 = [v52 arrivalDate];
            v57 = v14;
            v25 = [v14 getDate];
            v26 = [v23 createIntervalSafelyWithStartDate:v24 endDate:v25];

            v7 = v18;
            v11 = v17;
            self = v16;
            [v26 duration];
            v28 = v27;
            v29 = [TADominantUserActivity getCumulativeUserActivityTimeInDateInterval:v26 store:v7];
            v53 = v20;
            v30 = v20 == -1;
            v10 = v54;
            if (!v30 && v58 != -1)
            {
              v51 = v26;
              v49 = [(NSMutableDictionary *)v16->_accumulatedDeviceMetrics objectForKeyedSubscript:v56];
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
              self = v46;
              v7 = v47;
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

- (void)updateWithInterVisitMetricsSnapshot:(id)a3 store:(id)a4
{
  v86 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v62 = a4;
  v7 = [v6 lastUpdateTime];
  lastUpdateTime = self->_lastUpdateTime;
  self->_lastUpdateTime = v7;

  self->_isClosed = [v6 isClosed];
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  obj = [v6 accumulatedDeviceMetrics];
  v68 = [obj countByEnumeratingWithState:&v74 objects:v85 count:16];
  if (v68)
  {
    v67 = *v75;
    *&v9 = 68289283;
    v61 = v9;
    v63 = self;
    v64 = v6;
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
        v12 = [v6 accumulatedDeviceMetrics];
        v13 = [v12 objectForKey:v11];

        v14 = [(NSMutableDictionary *)self->_accumulatedDeviceMetrics objectForKey:v11];
        v15 = [(NSMutableDictionary *)self->_accumulatedDeviceMetrics objectForKey:v11];

        if (v15)
        {
          [v14 accumulateNumOfAssociatedLocs:{objc_msgSend(v13, "numOfAssociatedLocs")}];
          v16 = [(NSMutableDictionary *)self->_lastAdvPerDevice objectForKeyedSubscript:v11];
          v17 = [v6 lastAdvPerDevice];
          v18 = [v17 objectForKeyedSubscript:v11];

          v69 = v16;
          if (v16 && v18)
          {
            v19 = [v16 getDate];
            [v18 getDate];
            v20 = v18;
            v22 = v21 = v16;
            v23 = [v19 compare:v22];

            if (v23 == 1)
            {
              v18 = v20;
              self = v63;
              if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_FAULT))
              {
                [TAInterVisitMetricsSnapshot updateWithInterVisitMetricsSnapshot:v73 store:?];
              }
            }

            else
            {
              v29 = MEMORY[0x277CCA970];
              v30 = [v21 getDate];
              v31 = [v20 getDate];
              v32 = [v29 createIntervalSafelyWithStartDate:v30 endDate:v31];

              [v32 duration];
              [v14 accumulateDuration:?];
              v33 = [TADominantUserActivity getCumulativeUserActivityTimeInDateInterval:v32 store:v62];
              [v14 accumulateDurationPerMotionState:v33];

              v18 = v20;
              self = v63;
            }
          }

          else
          {
            [v13 duration];
            [v14 accumulateDuration:?];
            v27 = [v13 durationPerMotionState];
            [v14 accumulateDurationPerMotionState:v27];
          }

          [v13 distance];
          [v14 accumulateDistance:?];
          v34 = [(NSMutableDictionary *)self->_lastAssociatedLocationPerDevice objectForKeyedSubscript:v11];
          v35 = [v6 firstAssociatedLocationPerDevice];
          v36 = [v35 objectForKeyedSubscript:v11];

          if (v34 && v36)
          {
            v66 = v18;
            v37 = [v34 getDate];
            v38 = [v36 getDate];
            v39 = [v37 compare:v38];

            if (v39 == -1)
            {
              v78[0] = v34;
              v78[1] = v36;
              v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v78 count:2];
              [TAFilterGeneral distOfTravelAlong:v40];
              v42 = v41;

              [v14 accumulateDistance:v42];
              v6 = v64;
              v18 = v66;
            }

            else
            {
              v6 = v64;
              v18 = v66;
              if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
              {
                [TAInterVisitMetricsSnapshot updateWithInterVisitMetricsSnapshot:v71 store:?];
              }
            }
          }

          v43 = [v13 sampledObservedLocations];
          [v14 accumulateSampledObservedLocations:v43];

          v44 = [v13 latestAdvertisement];
          [v14 accumulateLatestAdvertisement:v44];

LABEL_25:
          v45 = [(NSMutableDictionary *)self->_firstAssociatedLocationPerDevice objectForKeyedSubscript:v11];
          if (v45)
          {
LABEL_28:
          }

          else
          {
            v46 = [v6 firstAssociatedLocationPerDevice];
            v47 = [v46 objectForKeyedSubscript:v11];

            if (v47)
            {
              firstAssociatedLocationPerDevice = self->_firstAssociatedLocationPerDevice;
              v45 = [v6 firstAssociatedLocationPerDevice];
              v49 = [v45 objectForKeyedSubscript:v11];
              [(NSMutableDictionary *)firstAssociatedLocationPerDevice setObject:v49 forKey:v11];

              goto LABEL_28;
            }
          }

          v50 = [v6 lastAssociatedLocationPerDevice];
          v51 = [v50 objectForKeyedSubscript:v11];

          if (v51)
          {
            lastAssociatedLocationPerDevice = self->_lastAssociatedLocationPerDevice;
            v53 = [v6 lastAssociatedLocationPerDevice];
            v54 = [v53 objectForKeyedSubscript:v11];
            [(NSMutableDictionary *)lastAssociatedLocationPerDevice setObject:v54 forKey:v11];
          }

          v55 = [v6 lastAdvPerDevice];
          v56 = [v55 objectForKeyedSubscript:v11];

          if (v56)
          {
            lastAdvPerDevice = self->_lastAdvPerDevice;
            v58 = [v6 lastAdvPerDevice];
            v59 = [v58 objectForKeyedSubscript:v11];
            [(NSMutableDictionary *)lastAdvPerDevice setObject:v59 forKey:v11];
          }

          goto LABEL_33;
        }

        v24 = [(TAInterVisitMetricsSnapshot *)self accumulatedDeviceMetrics];
        v25 = [v24 count];
        v26 = [(TAInterVisitMetricsSnapshot *)self maxUniqueAddresses];

        if (v25 < v26)
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

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      v7 = [(TAInterVisitMetricsSnapshot *)self isClosed];
      if (v7 != [(TAInterVisitMetricsSnapshot *)v6 isClosed])
      {
        v8 = 0;
LABEL_41:

        goto LABEL_42;
      }

      v9 = [(TAInterVisitMetricsSnapshot *)self initialTime];
      v10 = [(TAInterVisitMetricsSnapshot *)v6 initialTime];
      if (v9 != v10)
      {
        v11 = [(TAInterVisitMetricsSnapshot *)self initialTime];
        v56 = [(TAInterVisitMetricsSnapshot *)v6 initialTime];
        v57 = v11;
        if (![v11 isEqual:?])
        {
          v8 = 0;
          goto LABEL_39;
        }
      }

      v12 = [(TAInterVisitMetricsSnapshot *)self lastUpdateTime];
      v13 = [(TAInterVisitMetricsSnapshot *)v6 lastUpdateTime];
      if (v12 != v13)
      {
        v3 = [(TAInterVisitMetricsSnapshot *)self lastUpdateTime];
        v54 = [(TAInterVisitMetricsSnapshot *)v6 lastUpdateTime];
        if (![v3 isEqual:?])
        {
          v8 = 0;
LABEL_37:

LABEL_38:
          if (v9 == v10)
          {
LABEL_40:

            goto LABEL_41;
          }

LABEL_39:

          goto LABEL_40;
        }
      }

      v14 = [(TAInterVisitMetricsSnapshot *)self accumulatedDeviceMetrics];
      v15 = [(TAInterVisitMetricsSnapshot *)v6 accumulatedDeviceMetrics];
      v55 = v14;
      v16 = v14 == v15;
      v17 = v15;
      if (v16)
      {
        v52 = v15;
      }

      else
      {
        v18 = [(TAInterVisitMetricsSnapshot *)self accumulatedDeviceMetrics];
        v48 = [(TAInterVisitMetricsSnapshot *)v6 accumulatedDeviceMetrics];
        v49 = v18;
        if (![v18 isEqual:?])
        {
          v8 = 0;
          v25 = v17;
          v26 = v55;
LABEL_35:

LABEL_36:
          if (v12 == v13)
          {
            goto LABEL_38;
          }

          goto LABEL_37;
        }

        v52 = v17;
      }

      v19 = [(TAInterVisitMetricsSnapshot *)self firstAssociatedLocationPerDevice];
      v20 = [(TAInterVisitMetricsSnapshot *)v6 firstAssociatedLocationPerDevice];
      v50 = v19;
      v51 = v3;
      v16 = v19 == v20;
      v21 = v20;
      if (!v16)
      {
        v22 = [(TAInterVisitMetricsSnapshot *)self firstAssociatedLocationPerDevice];
        v42 = [(TAInterVisitMetricsSnapshot *)v6 firstAssociatedLocationPerDevice];
        v43 = v22;
        if (![v22 isEqual:?])
        {
          v23 = v52;
          v8 = 0;
          v24 = v50;
LABEL_33:

LABEL_34:
          v26 = v55;
          v25 = v23;
          v16 = v55 == v23;
          v3 = v51;
          if (v16)
          {
            goto LABEL_36;
          }

          goto LABEL_35;
        }
      }

      v27 = [(TAInterVisitMetricsSnapshot *)self lastAssociatedLocationPerDevice];
      v45 = [(TAInterVisitMetricsSnapshot *)v6 lastAssociatedLocationPerDevice];
      v46 = v27;
      v47 = v21;
      v44 = v13;
      if (v27 == v45)
      {
        v41 = v12;
        v30 = v52;
      }

      else
      {
        v28 = [(TAInterVisitMetricsSnapshot *)self lastAssociatedLocationPerDevice];
        v39 = [(TAInterVisitMetricsSnapshot *)v6 lastAssociatedLocationPerDevice];
        v40 = v28;
        v29 = [v28 isEqual:?];
        v30 = v52;
        if (!v29)
        {
          v8 = 0;
          v37 = v45;
          v36 = v46;
          goto LABEL_30;
        }

        v41 = v12;
      }

      v31 = [(TAInterVisitMetricsSnapshot *)self lastAdvPerDevice];
      v32 = [(TAInterVisitMetricsSnapshot *)v6 lastAdvPerDevice];
      v33 = v32;
      if (v31 == v32)
      {

        v8 = 1;
      }

      else
      {
        [(TAInterVisitMetricsSnapshot *)self lastAdvPerDevice];
        v34 = v53 = v30;
        v35 = [(TAInterVisitMetricsSnapshot *)v6 lastAdvPerDevice];
        v8 = [v34 isEqual:v35];

        v30 = v53;
      }

      v37 = v45;
      v36 = v46;
      v12 = v41;
      if (v46 == v45)
      {
        v23 = v30;
LABEL_32:

        v24 = v50;
        v21 = v47;
        v13 = v44;
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

- (TAInterVisitMetricsSnapshot)initWithCoder:(id)a3
{
  v4 = a3;
  v35.receiver = self;
  v35.super_class = TAInterVisitMetricsSnapshot;
  v5 = [(TAInterVisitMetricsSnapshot *)&v35 init];
  if (v5)
  {
    v5->_isClosed = [v4 decodeBoolForKey:@"IsClosed"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"InitTime"];
    initialTime = v5->_initialTime;
    v5->_initialTime = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"LastUpdateTime"];
    lastUpdateTime = v5->_lastUpdateTime;
    v5->_lastUpdateTime = v8;

    v10 = MEMORY[0x277CBEB98];
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = [v10 setWithObjects:{v11, v12, objc_opt_class(), 0}];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"accumMetrics"];
    accumulatedDeviceMetrics = v5->_accumulatedDeviceMetrics;
    v5->_accumulatedDeviceMetrics = v14;

    v16 = MEMORY[0x277CBEB98];
    v17 = objc_opt_class();
    v18 = objc_opt_class();
    v19 = [v16 setWithObjects:{v17, v18, objc_opt_class(), 0}];
    v20 = [v4 decodeObjectOfClasses:v19 forKey:@"firstLoc"];
    firstAssociatedLocationPerDevice = v5->_firstAssociatedLocationPerDevice;
    v5->_firstAssociatedLocationPerDevice = v20;

    v22 = MEMORY[0x277CBEB98];
    v23 = objc_opt_class();
    v24 = objc_opt_class();
    v25 = [v22 setWithObjects:{v23, v24, objc_opt_class(), 0}];
    v26 = [v4 decodeObjectOfClasses:v25 forKey:@"lastLoc"];
    lastAssociatedLocationPerDevice = v5->_lastAssociatedLocationPerDevice;
    v5->_lastAssociatedLocationPerDevice = v26;

    v28 = MEMORY[0x277CBEB98];
    v29 = objc_opt_class();
    v30 = objc_opt_class();
    v31 = [v28 setWithObjects:{v29, v30, objc_opt_class(), 0}];
    v32 = [v4 decodeObjectOfClasses:v31 forKey:@"LastAdv"];
    lastAdvPerDevice = v5->_lastAdvPerDevice;
    v5->_lastAdvPerDevice = v32;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  isClosed = self->_isClosed;
  v5 = a3;
  [v5 encodeBool:isClosed forKey:@"IsClosed"];
  [v5 encodeObject:self->_initialTime forKey:@"InitTime"];
  [v5 encodeObject:self->_lastUpdateTime forKey:@"LastUpdateTime"];
  [v5 encodeObject:self->_accumulatedDeviceMetrics forKey:@"accumMetrics"];
  [v5 encodeObject:self->_firstAssociatedLocationPerDevice forKey:@"firstLoc"];
  [v5 encodeObject:self->_lastAssociatedLocationPerDevice forKey:@"lastLoc"];
  [v5 encodeObject:self->_lastAdvPerDevice forKey:@"LastAdv"];
}

@end