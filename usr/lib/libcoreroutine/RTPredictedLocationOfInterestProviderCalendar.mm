@interface RTPredictedLocationOfInterestProviderCalendar
+ (BOOL)reasonableDistanceBetweenEventLocation:(id)location andLocation:(id)andLocation;
- (RTPredictedLocationOfInterestProviderCalendar)initWithEventManager:(id)manager eventModelProvider:(id)provider learnedLocationManager:(id)locationManager mapServiceManager:(id)serviceManager;
- (void)_fetchLocationOfInterestForEvent:(id)event clientIdentifier:(id)identifier handler:(id)handler;
- (void)_fetchPredictedLocationOfInterestAtEvent:(id)event clientIdentifier:(id)identifier handler:(id)handler;
- (void)_fetchPredictedLocationsOfInterestBetweenStartDate:(id)date endDate:(id)endDate clientIdentifier:(id)identifier handler:(id)handler;
- (void)_fetchPredictedLocationsOfInterestOnDate:(id)date clientIdentifier:(id)identifier handler:(id)handler;
- (void)fetchNextPredictedLocationsOfInterestFromLocation:(id)location startDate:(id)date timeInterval:(double)interval clientIdentifier:(id)identifier filterLocationsByDistance:(BOOL)distance handler:(id)handler;
- (void)fetchNextPredictedLocationsOfInterestWithCriteria:(id)criteria handler:(id)handler;
- (void)fetchPredictedLocationsOfInterestBetweenStartDate:(id)date endDate:(id)endDate clientIdentifier:(id)identifier handler:(id)handler;
- (void)fetchPredictedLocationsOfInterestOnDate:(id)date clientIdentifier:(id)identifier handler:(id)handler;
- (void)fetchPredictedLocationsOfInterestWithCriteria:(id)criteria handler:(id)handler;
@end

@implementation RTPredictedLocationOfInterestProviderCalendar

- (RTPredictedLocationOfInterestProviderCalendar)initWithEventManager:(id)manager eventModelProvider:(id)provider learnedLocationManager:(id)locationManager mapServiceManager:(id)serviceManager
{
  v34 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  providerCopy = provider;
  locationManagerCopy = locationManager;
  serviceManagerCopy = serviceManager;
  if (!managerCopy)
  {
    v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v31 = "[RTPredictedLocationOfInterestProviderCalendar initWithEventManager:eventModelProvider:learnedLocationManager:mapServiceManager:]";
      v32 = 1024;
      v33 = 132;
      _os_log_error_impl(&dword_2304B3000, v19, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: eventManager (in %s:%d)", buf, 0x12u);
    }

    if (providerCopy)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if (!providerCopy)
  {
LABEL_9:
    v20 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v31 = "[RTPredictedLocationOfInterestProviderCalendar initWithEventManager:eventModelProvider:learnedLocationManager:mapServiceManager:]";
      v32 = 1024;
      v33 = 133;
      _os_log_error_impl(&dword_2304B3000, v20, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: eventModelProvider (in %s:%d)", buf, 0x12u);
    }

LABEL_12:
    selfCopy = 0;
    goto LABEL_16;
  }

  v29.receiver = self;
  v29.super_class = RTPredictedLocationOfInterestProviderCalendar;
  v15 = [(RTPredictedLocationOfInterestProviderCalendar *)&v29 init];
  v16 = v15;
  if (v15)
  {
    v27 = serviceManagerCopy;
    v28 = locationManagerCopy;
    v17 = v15;
    attr = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      uTF8String = [(RTPredictedLocationOfInterestProviderCalendar *)v17 UTF8String];
    }

    else
    {
      v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%p", objc_opt_class(), v17];
      uTF8String = [v22 UTF8String];
    }

    v23 = dispatch_queue_create(uTF8String, attr);

    queue = v17->_queue;
    v17->_queue = v23;

    objc_storeStrong(&v17->_eventManager, manager);
    objc_storeStrong(&v17->_eventModelProvider, provider);
    objc_storeStrong(&v17->_learnedLocationManager, locationManager);
    objc_storeStrong(&v17->_mapServiceManager, serviceManager);
    serviceManagerCopy = v27;
    locationManagerCopy = v28;
  }

  self = v16;
  selfCopy = self;
LABEL_16:

  return selfCopy;
}

+ (BOOL)reasonableDistanceBetweenEventLocation:(id)location andLocation:(id)andLocation
{
  andLocationCopy = andLocation;
  locationCopy = location;
  [locationCopy latitude];
  [locationCopy longitude];

  [andLocationCopy latitude];
  [andLocationCopy longitude];

  RTCommonCalculateDistance();
  return v7 < 321868.0 && v7 > 700.0;
}

- (void)fetchNextPredictedLocationsOfInterestFromLocation:(id)location startDate:(id)date timeInterval:(double)interval clientIdentifier:(id)identifier filterLocationsByDistance:(BOOL)distance handler:(id)handler
{
  v32 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  dateCopy = date;
  identifierCopy = identifier;
  handlerCopy = handler;
  if (handlerCopy)
  {
    queue = [(RTPredictedLocationOfInterestProviderCalendar *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __173__RTPredictedLocationOfInterestProviderCalendar_fetchNextPredictedLocationsOfInterestFromLocation_startDate_timeInterval_clientIdentifier_filterLocationsByDistance_handler___block_invoke;
    block[3] = &unk_2788D0670;
    intervalCopy = interval;
    v21 = dateCopy;
    selfCopy = self;
    v25 = handlerCopy;
    v23 = identifierCopy;
    distanceCopy = distance;
    v24 = locationCopy;
    dispatch_async(queue, block);

    v19 = v21;
  }

  else
  {
    v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v29 = "[RTPredictedLocationOfInterestProviderCalendar fetchNextPredictedLocationsOfInterestFromLocation:startDate:timeInterval:clientIdentifier:filterLocationsByDistance:handler:]";
      v30 = 1024;
      v31 = 187;
      _os_log_error_impl(&dword_2304B3000, v19, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }
}

void __173__RTPredictedLocationOfInterestProviderCalendar_fetchNextPredictedLocationsOfInterestFromLocation_startDate_timeInterval_clientIdentifier_filterLocationsByDistance_handler___block_invoke(uint64_t a1)
{
  v66[1] = *MEMORY[0x277D85DE8];
  v34 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v2 = [*(a1 + 32) dateByAddingTimeInterval:*(a1 + 72)];
  v55 = 0;
  v56 = &v55;
  v57 = 0x3032000000;
  v58 = __Block_byref_object_copy__156;
  v59 = __Block_byref_object_dispose__156;
  v60 = 0;
  v49 = 0;
  v50 = &v49;
  v51 = 0x3032000000;
  v52 = __Block_byref_object_copy__156;
  v53 = __Block_byref_object_dispose__156;
  v54 = 0;
  if (!*(*(a1 + 40) + 16))
  {
    goto LABEL_9;
  }

  v3 = dispatch_semaphore_create(0);
  v4 = *(a1 + 32);
  v5 = *(*(a1 + 40) + 16);
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __173__RTPredictedLocationOfInterestProviderCalendar_fetchNextPredictedLocationsOfInterestFromLocation_startDate_timeInterval_clientIdentifier_filterLocationsByDistance_handler___block_invoke_26;
  v45[3] = &unk_2788C4490;
  v47 = &v49;
  v48 = &v55;
  v6 = v3;
  v46 = v6;
  [v5 fetchEventsBetweenStartDate:v4 andEndDate:v2 includeSuggestions:0 withHandler:v45];
  v7 = v6;
  v8 = [MEMORY[0x277CBEAA8] now];
  v9 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v7, v9))
  {
    v10 = [MEMORY[0x277CBEAA8] now];
    [v10 timeIntervalSinceDate:v8];
    v12 = v11;
    v13 = objc_opt_new();
    v14 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_128];
    v15 = [MEMORY[0x277CCACC8] callStackSymbols];
    v16 = [v15 filteredArrayUsingPredicate:v14];
    v17 = [v16 firstObject];

    [v13 submitToCoreAnalytics:v17 type:1 duration:v12];
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v18, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v19 = MEMORY[0x277CCA9B8];
    v66[0] = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v66 count:1];
    v21 = [v19 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v20];

    if (v21)
    {
      v22 = v21;
    }
  }

  if (v56[5])
  {
    (*(*(a1 + 64) + 16))();
  }

  else
  {
LABEL_9:
    v23 = dispatch_group_create();
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v24 = _rt_log_facility_get_os_log(RTLogFacilityEvent);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = [v50[5] count];
        v26 = [*(a1 + 32) stringFromDate];
        v27 = [v2 stringFromDate];
        *buf = 134218498;
        *&buf[4] = v25;
        v62 = 2112;
        v63 = v26;
        v64 = 2112;
        v65 = v27;
        _os_log_impl(&dword_2304B3000, v24, OS_LOG_TYPE_INFO, "found %lu events between %@ and %@", buf, 0x20u);
      }
    }

    v28 = v50[5];
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __173__RTPredictedLocationOfInterestProviderCalendar_fetchNextPredictedLocationsOfInterestFromLocation_startDate_timeInterval_clientIdentifier_filterLocationsByDistance_handler___block_invoke_28;
    v38[3] = &unk_2788D0648;
    v29 = v23;
    v30 = *(a1 + 40);
    v31 = *(a1 + 48);
    v39 = v29;
    v40 = v30;
    v41 = v31;
    v44 = *(a1 + 80);
    v42 = *(a1 + 56);
    v32 = v34;
    v43 = v32;
    [v28 enumerateObjectsUsingBlock:v38];
    v33 = [*(a1 + 40) queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __173__RTPredictedLocationOfInterestProviderCalendar_fetchNextPredictedLocationsOfInterestFromLocation_startDate_timeInterval_clientIdentifier_filterLocationsByDistance_handler___block_invoke_35;
    block[3] = &unk_2788C4938;
    v36 = v32;
    v37 = *(a1 + 64);
    dispatch_group_notify(v29, v33, block);
  }

  _Block_object_dispose(&v49, 8);

  _Block_object_dispose(&v55, 8);
}

void __173__RTPredictedLocationOfInterestProviderCalendar_fetchNextPredictedLocationsOfInterestFromLocation_startDate_timeInterval_clientIdentifier_filterLocationsByDistance_handler___block_invoke_26(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

void __173__RTPredictedLocationOfInterestProviderCalendar_fetchNextPredictedLocationsOfInterestFromLocation_startDate_timeInterval_clientIdentifier_filterLocationsByDistance_handler___block_invoke_28(uint64_t a1, void *a2, uint64_t a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityEvent);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 134218242;
      v18 = a3 + 1;
      v19 = 2112;
      v20 = v5;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "event %lu, %@", buf, 0x16u);
    }
  }

  v7 = [v5 participationStatus];
  if (v7 == 4 || v7 == 2)
  {
    dispatch_group_enter(*(a1 + 32));
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __173__RTPredictedLocationOfInterestProviderCalendar_fetchNextPredictedLocationsOfInterestFromLocation_startDate_timeInterval_clientIdentifier_filterLocationsByDistance_handler___block_invoke_29;
    v10[3] = &unk_2788D0620;
    v16 = *(a1 + 72);
    v10[4] = v8;
    v11 = *(a1 + 56);
    v15 = a3;
    v12 = v5;
    v13 = *(a1 + 64);
    v14 = *(a1 + 32);
    [v8 _fetchLocationOfInterestForEvent:v12 clientIdentifier:v9 handler:v10];
  }
}

void __173__RTPredictedLocationOfInterestProviderCalendar_fetchNextPredictedLocationsOfInterestFromLocation_startDate_timeInterval_clientIdentifier_filterLocationsByDistance_handler___block_invoke_29(uint64_t a1, void *a2, void *a3)
{
  v42 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = objc_alloc(MEMORY[0x277D01160]);
    v8 = [v5 location];
    [v8 latitude];
    v10 = v9;
    v11 = [v5 location];
    [v11 longitude];
    v13 = v12;
    v14 = [v5 location];
    [v14 horizontalUncertainty];
    v16 = v15;
    v17 = [v5 location];
    [v17 altitude];
    v19 = v18;
    v20 = [v5 location];
    [v20 verticalUncertainty];
    v22 = [v7 initWithLatitude:0 longitude:0 horizontalUncertainty:v10 altitude:v13 verticalUncertainty:v16 date:v19 referenceFrame:v21 speed:0.0];

    if (*(a1 + 80) == 1 && ![objc_opt_class() reasonableDistanceBetweenEventLocation:v22 andLocation:*(a1 + 40)])
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        goto LABEL_10;
      }

      v30 = _rt_log_facility_get_os_log(RTLogFacilityEvent);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        v33 = *(a1 + 72) + 1;
        v34 = *(a1 + 48);
        *buf = 134218499;
        v37 = v33;
        v38 = 2112;
        v39 = v34;
        v40 = 2117;
        v41 = v5;
        _os_log_impl(&dword_2304B3000, v30, OS_LOG_TYPE_INFO, "event %lu, %@, at locationOfInterest, %{sensitive}@, is not a reasonable distance from the current location to suggest", buf, 0x20u);
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v23 = _rt_log_facility_get_os_log(RTLogFacilityEvent);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          v24 = *(a1 + 72) + 1;
          v25 = *(a1 + 48);
          *buf = 134218499;
          v37 = v24;
          v38 = 2112;
          v39 = v25;
          v40 = 2117;
          v41 = v5;
          _os_log_impl(&dword_2304B3000, v23, OS_LOG_TYPE_INFO, "event %lu, %@, at locationOfInterest, %{sensitive}@", buf, 0x20u);
        }
      }

      v26 = objc_alloc(MEMORY[0x277D01270]);
      v27 = [*(a1 + 48) startDate];
      v28 = [objc_alloc(MEMORY[0x277D012B8]) initWithEvent:*(a1 + 48)];
      v35 = v28;
      v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v35 count:1];
      v30 = [v26 initWithLocationOfInterest:v5 confidence:v27 nextEntryTime:0 modeOfTransportation:v29 sources:1.0];

      [*(a1 + 56) addObject:v30];
    }
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      goto LABEL_11;
    }

    v22 = _rt_log_facility_get_os_log(RTLogFacilityEvent);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v31 = *(a1 + 72) + 1;
      v32 = *(a1 + 48);
      *buf = 134218499;
      v37 = v31;
      v38 = 2112;
      v39 = v32;
      v40 = 2117;
      v41 = 0;
      _os_log_impl(&dword_2304B3000, v22, OS_LOG_TYPE_INFO, "event %lu, %@, locationOfInterest, %{sensitive}@", buf, 0x20u);
    }
  }

LABEL_10:

LABEL_11:
  dispatch_group_leave(*(a1 + 64));
}

uint64_t __173__RTPredictedLocationOfInterestProviderCalendar_fetchNextPredictedLocationsOfInterestFromLocation_startDate_timeInterval_clientIdentifier_filterLocationsByDistance_handler___block_invoke_35(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"nextEntryTime" ascending:1];
  v6[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  [v2 sortUsingDescriptors:v4];

  return (*(*(a1 + 40) + 16))();
}

- (void)_fetchPredictedLocationsOfInterestOnDate:(id)date clientIdentifier:(id)identifier handler:(id)handler
{
  handlerCopy = handler;
  identifierCopy = identifier;
  dateCopy = date;
  v12 = [dateCopy dateByAddingTimeInterval:-7200.0];
  v11 = [dateCopy dateByAddingTimeInterval:7200.0];

  [(RTPredictedLocationOfInterestProviderCalendar *)self _fetchPredictedLocationsOfInterestBetweenStartDate:v12 endDate:v11 clientIdentifier:identifierCopy handler:handlerCopy];
}

- (void)fetchPredictedLocationsOfInterestOnDate:(id)date clientIdentifier:(id)identifier handler:(id)handler
{
  v21 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  identifierCopy = identifier;
  handlerCopy = handler;
  if (handlerCopy)
  {
    queue = [(RTPredictedLocationOfInterestProviderCalendar *)self queue];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __114__RTPredictedLocationOfInterestProviderCalendar_fetchPredictedLocationsOfInterestOnDate_clientIdentifier_handler___block_invoke;
    v13[3] = &unk_2788C5530;
    v13[4] = self;
    v14 = dateCopy;
    v15 = identifierCopy;
    v16 = handlerCopy;
    dispatch_async(queue, v13);
  }

  else
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "[RTPredictedLocationOfInterestProviderCalendar fetchPredictedLocationsOfInterestOnDate:clientIdentifier:handler:]";
      v19 = 1024;
      v20 = 311;
      _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }
}

- (void)_fetchLocationOfInterestForEvent:(id)event clientIdentifier:(id)identifier handler:(id)handler
{
  eventCopy = event;
  identifierCopy = identifier;
  handlerCopy = handler;
  if (handlerCopy)
  {
    v58[0] = 0;
    v58[1] = v58;
    v58[2] = 0x3032000000;
    v58[3] = __Block_byref_object_copy__156;
    v58[4] = __Block_byref_object_dispose__156;
    v59 = 0;
    v56[0] = 0;
    v56[1] = v56;
    v56[2] = 0x3032000000;
    v56[3] = __Block_byref_object_copy__156;
    v56[4] = __Block_byref_object_dispose__156;
    v57 = 0;
    v54[0] = 0;
    v54[1] = v54;
    v54[2] = 0x3032000000;
    v54[3] = __Block_byref_object_copy__156;
    v54[4] = __Block_byref_object_dispose__156;
    v55 = 0;
    v11 = dispatch_group_create();
    structuredLocation = [eventCopy structuredLocation];
    geoLocation = [structuredLocation geoLocation];

    if (geoLocation)
    {
      if (self->_learnedLocationManager)
      {
        dispatch_group_enter(v11);
        v14 = objc_alloc(MEMORY[0x277D01160]);
        structuredLocation2 = [eventCopy structuredLocation];
        geoLocation2 = [structuredLocation2 geoLocation];
        v17 = [v14 initWithCLLocation:geoLocation2];

        learnedLocationManager = self->_learnedLocationManager;
        v50[0] = MEMORY[0x277D85DD0];
        v50[1] = 3221225472;
        v50[2] = __107__RTPredictedLocationOfInterestProviderCalendar__fetchLocationOfInterestForEvent_clientIdentifier_handler___block_invoke;
        v50[3] = &unk_2788D0698;
        v53 = v58;
        v51 = eventCopy;
        v52 = v11;
        [(RTLearnedLocationManager *)learnedLocationManager fetchLocationOfInterestAtLocation:v17 handler:v50];

        goto LABEL_14;
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        goto LABEL_15;
      }

      v17 = _rt_log_facility_get_os_log(RTLogFacilityEvent);
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        goto LABEL_14;
      }

      *buf = 0;
      v24 = "Device location predictor unavailable";
    }

    else
    {
      if (self->_eventModelProvider)
      {
        dispatch_group_enter(v11);
        eventModelProvider = self->_eventModelProvider;
        title = [eventCopy title];
        location = [eventCopy location];
        calendar = [eventCopy calendar];
        calendarIdentifier = [calendar calendarIdentifier];
        v45[0] = MEMORY[0x277D85DD0];
        v45[1] = 3221225472;
        v45[2] = __107__RTPredictedLocationOfInterestProviderCalendar__fetchLocationOfInterestForEvent_clientIdentifier_handler___block_invoke_43;
        v45[3] = &unk_2788C9568;
        v48 = v58;
        v46 = eventCopy;
        v47 = v11;
        [(RTEventLocationAssociationProtocol *)eventModelProvider fetchLocationsOfInterestAssociatedToTitle:title location:location calendarIdentifier:calendarIdentifier withHandler:v45];

        v17 = v46;
        goto LABEL_14;
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        goto LABEL_15;
      }

      v17 = _rt_log_facility_get_os_log(RTLogFacilityEvent);
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
LABEL_14:

LABEL_15:
        structuredLocation3 = [eventCopy structuredLocation];
        mapKitHandle = [structuredLocation3 mapKitHandle];
        if (mapKitHandle)
        {
          mapServiceManager = self->_mapServiceManager;

          if (!mapServiceManager)
          {
LABEL_19:
            queue = [(RTPredictedLocationOfInterestProviderCalendar *)self queue];
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __107__RTPredictedLocationOfInterestProviderCalendar__fetchLocationOfInterestForEvent_clientIdentifier_handler___block_invoke_48;
            block[3] = &unk_2788D0710;
            v36 = eventCopy;
            v38 = v58;
            v39 = v56;
            v37 = handlerCopy;
            dispatch_group_notify(v11, queue, block);

            _Block_object_dispose(v54, 8);
            _Block_object_dispose(v56, 8);

            _Block_object_dispose(v58, 8);
            goto LABEL_20;
          }

          dispatch_group_enter(v11);
          v28 = objc_alloc(MEMORY[0x277D011B0]);
          v29 = objc_opt_class();
          v30 = NSStringFromClass(v29);
          structuredLocation3 = [v28 initWithUseBackgroundTraits:1 analyticsIdentifier:v30 clientIdentifier:identifierCopy];

          v31 = self->_mapServiceManager;
          structuredLocation4 = [eventCopy structuredLocation];
          mapKitHandle2 = [structuredLocation4 mapKitHandle];
          v40[0] = MEMORY[0x277D85DD0];
          v40[1] = 3221225472;
          v40[2] = __107__RTPredictedLocationOfInterestProviderCalendar__fetchLocationOfInterestForEvent_clientIdentifier_handler___block_invoke_46;
          v40[3] = &unk_2788D06E8;
          v41 = eventCopy;
          v43 = v56;
          v44 = v54;
          v42 = v11;
          [(RTMapServiceManager *)v31 fetchMapItemFromHandle:mapKitHandle2 options:structuredLocation3 handler:v40];
        }

        goto LABEL_19;
      }

      *buf = 0;
      v24 = "Event model provider unavailable";
    }

    _os_log_impl(&dword_2304B3000, v17, OS_LOG_TYPE_INFO, v24, buf, 2u);
    goto LABEL_14;
  }

LABEL_20:
}

void __107__RTPredictedLocationOfInterestProviderCalendar__fetchLocationOfInterestForEvent_clientIdentifier_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [objc_alloc(MEMORY[0x277D01170]) initWithLearnedLocationOfInterest:v5];
    v8 = *(*(a1 + 48) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v10 = _rt_log_facility_get_os_log(RTLogFacilityEvent);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = *(*(*(a1 + 48) + 8) + 40);
        v12 = *(a1 + 32);
        v13 = 138740227;
        v14 = v11;
        v15 = 2117;
        v16 = v12;
        _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "found loi, %{sensitive}@, at location of event, %{sensitive}@", &v13, 0x16u);
      }
    }
  }

  dispatch_group_leave(*(a1 + 40));
}

void __107__RTPredictedLocationOfInterestProviderCalendar__fetchLocationOfInterestForEvent_clientIdentifier_handler___block_invoke_43(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __107__RTPredictedLocationOfInterestProviderCalendar__fetchLocationOfInterestForEvent_clientIdentifier_handler___block_invoke_2;
  v6[3] = &unk_2788D06C0;
  v6[4] = *(a1 + 48);
  [a2 enumerateObjectsUsingBlock:v6];
  if (*(*(*(a1 + 48) + 8) + 40) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilityEvent);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(*(*(a1 + 48) + 8) + 40);
      v5 = *(a1 + 32);
      *buf = 138740227;
      v8 = v4;
      v9 = 2117;
      v10 = v5;
      _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "inferred loi, %{sensitive}@, for event, %{sensitive}@", buf, 0x16u);
    }
  }

  dispatch_group_leave(*(a1 + 40));
}

void __107__RTPredictedLocationOfInterestProviderCalendar__fetchLocationOfInterestForEvent_clientIdentifier_handler___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = a2;
  v4 = [v8 visits];
  v5 = [v4 count];
  v6 = [*(*(*(a1 + 32) + 8) + 40) visits];
  v7 = [v6 count];

  if (v5 > v7)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }
}

void __107__RTPredictedLocationOfInterestProviderCalendar__fetchLocationOfInterestForEvent_clientIdentifier_handler___block_invoke_46(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityEvent);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      v9 = [v5 address];
      v16 = 138740739;
      v17 = v8;
      v18 = 2117;
      v19 = v9;
      v20 = 2112;
      v21 = v6;
      v22 = 2117;
      v23 = v5;
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "resolved mapItem from event, %{sensitive}@, to address, %{sensitive}@, error, %@, resolvedMapItem, %{sensitive}@", &v16, 0x2Au);
    }
  }

  v10 = *(*(a1 + 48) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v5;
  v12 = v5;

  v13 = *(*(a1 + 56) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v6;
  v15 = v6;

  dispatch_group_leave(*(a1 + 40));
}

void __107__RTPredictedLocationOfInterestProviderCalendar__fetchLocationOfInterestForEvent_clientIdentifier_handler___block_invoke_48(uint64_t a1)
{
  v2 = [*(a1 + 32) structuredLocation];
  v3 = [v2 geoLocation];
  if (v3)
  {
  }

  else
  {
    v4 = *(*(*(a1 + 48) + 8) + 40);

    if (!v4)
    {
      v46 = 0;
      goto LABEL_33;
    }
  }

  v5 = [*(a1 + 32) structuredLocation];
  v6 = [v5 geoLocation];
  if (v6)
  {
    v7 = [*(a1 + 32) structuredLocation];
    v8 = [v7 geoLocation];
    [v8 coordinate];
    v10 = v9;
  }

  else
  {
    v7 = [*(*(*(a1 + 48) + 8) + 40) location];
    [v7 latitude];
    v10 = v11;
  }

  v12 = [*(a1 + 32) structuredLocation];
  v13 = [v12 geoLocation];
  if (v13)
  {
    v14 = [*(a1 + 32) structuredLocation];
    v15 = [v14 geoLocation];
    [v15 coordinate];
    v17 = v16;
  }

  else
  {
    v14 = [*(*(*(a1 + 48) + 8) + 40) location];
    [v14 longitude];
    v17 = v18;
  }

  v19 = [*(a1 + 32) structuredLocation];
  v20 = [v19 geoLocation];
  if (v20)
  {
    v21 = [*(a1 + 32) structuredLocation];
    v22 = [v21 geoLocation];
    [v22 horizontalAccuracy];
    v24 = v23;
  }

  else
  {
    v21 = [*(*(*(a1 + 48) + 8) + 40) location];
    [v21 horizontalUncertainty];
    v24 = v25;
  }

  v26 = *(*(*(a1 + 56) + 8) + 40);
  if (v26)
  {
    v27 = v26;
  }

  else
  {
    v27 = [*(*(*(a1 + 48) + 8) + 40) mapItem];
  }

  v28 = v27;
  v29 = [*(*(*(a1 + 48) + 8) + 40) identifier];
  v30 = v29;
  if (v29)
  {
    v31 = v29;
  }

  else
  {
    v32 = objc_alloc(MEMORY[0x277CCAD78]);
    v33 = [*(a1 + 32) UUID];
    v34 = [v32 initWithUUIDString:v33];
    v35 = v34;
    if (v34)
    {
      v36 = v34;
    }

    else
    {
      v36 = [MEMORY[0x277CCAD78] UUID];
    }

    v31 = v36;
  }

  v37 = *(*(*(a1 + 48) + 8) + 40);
  if (!v37)
  {
    v42 = 0;
    v40 = 0;
    v44 = 0;
    v38 = -1;
    goto LABEL_32;
  }

  v38 = [v37 type];
  v39 = *(*(*(a1 + 48) + 8) + 40);
  if (!v39)
  {
    v42 = 0;
    v40 = 0;
    goto LABEL_31;
  }

  v40 = [v39 typeSource];
  v41 = *(*(*(a1 + 48) + 8) + 40);
  if (!v41)
  {
    v42 = 0;
    goto LABEL_31;
  }

  v42 = [v41 visits];
  v43 = *(*(*(a1 + 48) + 8) + 40);
  if (!v43)
  {
LABEL_31:
    v44 = 0;
    goto LABEL_32;
  }

  v44 = [v43 customLabel];
LABEL_32:
  v45 = [objc_alloc(MEMORY[0x277D01160]) initWithLatitude:0 longitude:v10 horizontalUncertainty:v17 date:v24];
  v46 = [objc_alloc(MEMORY[0x277D01170]) initWithLocation:v45 confidence:v31 identifier:v38 type:v40 typeSource:v42 visits:v44 customLabel:1.0 mapItem:v28];

LABEL_33:
  (*(*(a1 + 40) + 16))();
}

- (void)_fetchPredictedLocationOfInterestAtEvent:(id)event clientIdentifier:(id)identifier handler:(id)handler
{
  eventCopy = event;
  handlerCopy = handler;
  if (handlerCopy)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __115__RTPredictedLocationOfInterestProviderCalendar__fetchPredictedLocationOfInterestAtEvent_clientIdentifier_handler___block_invoke;
    v10[3] = &unk_2788D0738;
    v11 = eventCopy;
    v12 = handlerCopy;
    [(RTPredictedLocationOfInterestProviderCalendar *)self _fetchLocationOfInterestForEvent:v11 clientIdentifier:identifier handler:v10];
  }
}

void __115__RTPredictedLocationOfInterestProviderCalendar__fetchPredictedLocationOfInterestAtEvent_clientIdentifier_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    v6 = MEMORY[0x277D01270];
    v7 = a2;
    v8 = [v6 alloc];
    v9 = [*(a1 + 32) startDate];
    v10 = [objc_alloc(MEMORY[0x277D012B8]) initWithEvent:*(a1 + 32)];
    v13[0] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
    v12 = [v8 initWithLocationOfInterest:v7 confidence:v9 nextEntryTime:0 modeOfTransportation:v11 sources:1.0];
  }

  else
  {
    v12 = 0;
  }

  (*(*(a1 + 40) + 16))();
}

- (void)_fetchPredictedLocationsOfInterestBetweenStartDate:(id)date endDate:(id)endDate clientIdentifier:(id)identifier handler:(id)handler
{
  v70 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  endDateCopy = endDate;
  identifierCopy = identifier;
  handlerCopy = handler;
  v38 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v62 = 0;
  v63 = &v62;
  v64 = 0x3032000000;
  v65 = __Block_byref_object_copy__156;
  v66 = __Block_byref_object_dispose__156;
  v67 = 0;
  v56 = 0;
  v57 = &v56;
  v58 = 0x3032000000;
  v59 = __Block_byref_object_copy__156;
  v60 = __Block_byref_object_dispose__156;
  v61 = 0;
  v11 = &off_230AFD000;
  if (!self->_eventManager)
  {
    goto LABEL_10;
  }

  v12 = dispatch_semaphore_create(0);
  eventManager = self->_eventManager;
  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = __133__RTPredictedLocationOfInterestProviderCalendar__fetchPredictedLocationsOfInterestBetweenStartDate_endDate_clientIdentifier_handler___block_invoke;
  v52[3] = &unk_2788C4490;
  v54 = &v56;
  v55 = &v62;
  v14 = v12;
  v53 = v14;
  [(RTEventManager *)eventManager fetchEventsBetweenStartDate:dateCopy andEndDate:endDateCopy withHandler:v52, identifierCopy, v38];
  v15 = v14;
  v16 = [MEMORY[0x277CBEAA8] now];
  v17 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v15, v17))
  {
    v18 = [MEMORY[0x277CBEAA8] now];
    [v18 timeIntervalSinceDate:v16];
    v20 = v19;
    v21 = objc_opt_new();
    v22 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_128];
    callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
    v24 = [callStackSymbols filteredArrayUsingPredicate:v22];
    firstObject = [v24 firstObject];

    [v21 submitToCoreAnalytics:firstObject type:1 duration:v20];
    v26 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v26, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v27 = MEMORY[0x277CCA9B8];
    v68 = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v68 count:1];
    v29 = [v27 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v28];

    if (v29)
    {
      v30 = v29;
    }
  }

  v11 = &off_230AFD000;
  if (v63[5])
  {
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, 0);
    }
  }

  else
  {
LABEL_10:
    v31 = dispatch_group_create();
    v32 = v57[5];
    v44 = MEMORY[0x277D85DD0];
    v45 = *(v11 + 327);
    v33 = v45;
    v46 = __133__RTPredictedLocationOfInterestProviderCalendar__fetchPredictedLocationsOfInterestBetweenStartDate_endDate_clientIdentifier_handler___block_invoke_2;
    v47 = &unk_2788CE668;
    v34 = v31;
    v48 = v34;
    selfCopy = self;
    v50 = identifierCopy;
    v35 = v38;
    v51 = v35;
    [v32 enumerateObjectsUsingBlock:&v44];
    queue = [(RTPredictedLocationOfInterestProviderCalendar *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = v33;
    block[2] = __133__RTPredictedLocationOfInterestProviderCalendar__fetchPredictedLocationsOfInterestBetweenStartDate_endDate_clientIdentifier_handler___block_invoke_4;
    block[3] = &unk_2788C4D38;
    v43 = handlerCopy;
    v42 = v35;
    dispatch_group_notify(v34, queue, block);
  }

  _Block_object_dispose(&v56, 8);

  _Block_object_dispose(&v62, 8);
}

void __133__RTPredictedLocationOfInterestProviderCalendar__fetchPredictedLocationsOfInterestBetweenStartDate_endDate_clientIdentifier_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

void __133__RTPredictedLocationOfInterestProviderCalendar__fetchPredictedLocationsOfInterestBetweenStartDate_endDate_clientIdentifier_handler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  dispatch_group_enter(v3);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __133__RTPredictedLocationOfInterestProviderCalendar__fetchPredictedLocationsOfInterestBetweenStartDate_endDate_clientIdentifier_handler___block_invoke_3;
  v7[3] = &unk_2788D0760;
  v8 = *(a1 + 56);
  v9 = *(a1 + 32);
  [v5 _fetchPredictedLocationOfInterestAtEvent:v4 clientIdentifier:v6 handler:v7];
}

void __133__RTPredictedLocationOfInterestProviderCalendar__fetchPredictedLocationsOfInterestBetweenStartDate_endDate_clientIdentifier_handler___block_invoke_3(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) addObject:a2];
  }

  v3 = *(a1 + 40);

  dispatch_group_leave(v3);
}

void __133__RTPredictedLocationOfInterestProviderCalendar__fetchPredictedLocationsOfInterestBetweenStartDate_endDate_clientIdentifier_handler___block_invoke_4(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB58] set];
  v3 = MEMORY[0x277CCAC30];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __133__RTPredictedLocationOfInterestProviderCalendar__fetchPredictedLocationsOfInterestBetweenStartDate_endDate_clientIdentifier_handler___block_invoke_5;
  v8[3] = &unk_2788C9270;
  v9 = v2;
  v4 = v2;
  v5 = [v3 predicateWithBlock:v8];
  v6 = *(a1 + 40);
  v7 = [*(a1 + 32) filteredArrayUsingPredicate:v5];
  (*(v6 + 16))(v6, v7, 0);
}

uint64_t __133__RTPredictedLocationOfInterestProviderCalendar__fetchPredictedLocationsOfInterestBetweenStartDate_endDate_clientIdentifier_handler___block_invoke_5(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 locationOfInterest];
  v5 = [v4 identifier];

  if (!v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v13 = _rt_log_facility_get_os_log(RTLogFacilityEvent);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v15 = 138739971;
        v16 = v3;
        _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_INFO, "LOI doesn't have an identifier, dropping LOI, %{sensitive}@", &v15, 0xCu);
      }
    }

    goto LABEL_8;
  }

  v6 = *(a1 + 32);
  v7 = [v3 locationOfInterest];
  v8 = [v7 identifier];
  LOBYTE(v6) = [v6 containsObject:v8];

  if (v6)
  {
LABEL_8:
    v12 = 0;
    goto LABEL_9;
  }

  v9 = *(a1 + 32);
  v10 = [v3 locationOfInterest];
  v11 = [v10 identifier];
  [v9 addObject:v11];

  v12 = 1;
LABEL_9:

  return v12;
}

- (void)fetchPredictedLocationsOfInterestBetweenStartDate:(id)date endDate:(id)endDate clientIdentifier:(id)identifier handler:(id)handler
{
  v25 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  endDateCopy = endDate;
  identifierCopy = identifier;
  handlerCopy = handler;
  if (handlerCopy)
  {
    queue = [(RTPredictedLocationOfInterestProviderCalendar *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __132__RTPredictedLocationOfInterestProviderCalendar_fetchPredictedLocationsOfInterestBetweenStartDate_endDate_clientIdentifier_handler___block_invoke;
    block[3] = &unk_2788C5580;
    block[4] = self;
    v17 = dateCopy;
    v18 = endDateCopy;
    v19 = identifierCopy;
    v20 = handlerCopy;
    dispatch_async(queue, block);
  }

  else
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v22 = "[RTPredictedLocationOfInterestProviderCalendar fetchPredictedLocationsOfInterestBetweenStartDate:endDate:clientIdentifier:handler:]";
      v23 = 1024;
      v24 = 543;
      _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }
}

- (void)fetchNextPredictedLocationsOfInterestWithCriteria:(id)criteria handler:(id)handler
{
  handlerCopy = handler;
  criteriaCopy = criteria;
  referenceLocation = [criteriaCopy referenceLocation];
  referenceDate = [criteriaCopy referenceDate];
  [criteriaCopy windowDuration];
  v10 = v9;
  clientIdentifier = [criteriaCopy clientIdentifier];

  [(RTPredictedLocationOfInterestProviderCalendar *)self fetchNextPredictedLocationsOfInterestFromLocation:referenceLocation startDate:referenceDate timeInterval:clientIdentifier clientIdentifier:handlerCopy handler:v10];
}

- (void)fetchPredictedLocationsOfInterestWithCriteria:(id)criteria handler:(id)handler
{
  handlerCopy = handler;
  criteriaCopy = criteria;
  referenceDate = [criteriaCopy referenceDate];
  [criteriaCopy windowDuration];
  v8 = [referenceDate dateByAddingTimeInterval:?];
  referenceDate2 = [criteriaCopy referenceDate];
  clientIdentifier = [criteriaCopy clientIdentifier];

  [(RTPredictedLocationOfInterestProviderCalendar *)self fetchPredictedLocationsOfInterestBetweenStartDate:referenceDate2 endDate:v8 clientIdentifier:clientIdentifier handler:handlerCopy];
}

@end