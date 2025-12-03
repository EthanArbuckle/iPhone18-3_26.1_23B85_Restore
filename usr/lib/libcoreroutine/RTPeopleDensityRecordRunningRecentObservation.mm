@interface RTPeopleDensityRecordRunningRecentObservation
- (RTPeopleDensityRecordRunningRecentObservation)init;
- (id)getHistogram;
- (void)trimRunningRecordsBeforeRef:(id)ref;
@end

@implementation RTPeopleDensityRecordRunningRecentObservation

- (RTPeopleDensityRecordRunningRecentObservation)init
{
  v9.receiver = self;
  v9.super_class = RTPeopleDensityRecordRunningRecentObservation;
  v2 = [(RTPeopleDensityRecordRunningRecentObservation *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_currentObservationIntervalSeconds = 300.0;
    v2->_currentConfidenceThreshold = 0.0;
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    runningRecords = v3->_runningRecords;
    v3->_runningRecords = v4;

    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    runningAdvertisementsPerRecord = v3->_runningAdvertisementsPerRecord;
    v3->_runningAdvertisementsPerRecord = v6;
  }

  return v3;
}

- (id)getHistogram
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v4 = self->_runningAdvertisementsPerRecord;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v23;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v22 + 1) + 8 * i);
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v10 = v9;
        v11 = [v10 countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v19;
          do
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v19 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v18 + 1) + 8 * j);
              if ([v15 rssi] < 0)
              {
                [v3 addObject:v15];
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v18 objects:v26 count:16];
          }

          while (v12);
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v6);
  }

  v16 = [RTPeopleDensityRecord computeRssiHistogramForAdvs:v3];

  return v16;
}

- (void)trimRunningRecordsBeforeRef:(id)ref
{
  v25 = *MEMORY[0x277D85DE8];
  refCopy = ref;
  v5 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(NSMutableArray *)self->_runningRecords count];
    firstObject = [(NSMutableArray *)self->_runningRecords firstObject];
    startDatetime = [firstObject startDatetime];
    currentObservationIntervalSeconds = self->_currentObservationIntervalSeconds;
    *buf = 134218498;
    v20 = v6;
    v21 = 2112;
    v22 = startDatetime;
    v23 = 2048;
    v24 = currentObservationIntervalSeconds;
    _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_DEFAULT, "#RTPeopleDensityRecord trimRunningRecords count:%lu, startDatetime: %@, currentObservationInterval(s): %f", buf, 0x20u);
  }

  if ([(NSMutableArray *)self->_runningRecords count]>= 2)
  {
    *&v10 = 138412290;
    v18 = v10;
    do
    {
      firstObject2 = [(NSMutableArray *)self->_runningRecords firstObject];
      startDatetime2 = [firstObject2 startDatetime];
      [refCopy timeIntervalSinceDate:startDatetime2];
      v14 = v13;
      v15 = self->_currentObservationIntervalSeconds;

      if (v14 <= v15)
      {
        break;
      }

      v16 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        firstObject3 = [(NSMutableArray *)self->_runningRecords firstObject];
        *buf = v18;
        v20 = firstObject3;
        _os_log_impl(&dword_2304B3000, v16, OS_LOG_TYPE_DEFAULT, "#RTPeopleDensityRecord trimRunningRecords old bundle: %@", buf, 0xCu);
      }

      [(NSMutableArray *)self->_runningRecords removeObjectAtIndex:0];
      [(NSMutableArray *)self->_runningAdvertisementsPerRecord removeObjectAtIndex:0];
    }

    while ([(NSMutableArray *)self->_runningRecords count]> 1);
  }
}

@end