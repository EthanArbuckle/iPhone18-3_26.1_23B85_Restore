@interface RTEventModelProvider
- (BOOL)_deleteUserInteractionsBeforeDate:(id)date;
- (BOOL)_hasSuggestedLocationForEvent:(id)event;
- (BOOL)_persistEventModel;
- (BOOL)_persistUserInteractionWithPredictedLocationOfInterest:(id)interest interaction:(unint64_t)interaction feedback:(id)feedback;
- (BOOL)deleteEventModel;
- (RTEventModelProvider)initWithDefaultsManager:(id)manager eventManager:(id)eventManager learnedLocationManager:(id)locationManager managedObjectContext:(id)context metricManager:(id)metricManager persistenceManager:(id)persistenceManager;
- (RTLocationShifter)locationShifter;
- (double)getOverlapTimeForIntervalStart1:(id)start1 intervalEnd1:(id)end1 intervalStart2:(id)start2 intervalEnd2:(id)end2;
- (id)_createMetricFromEventCounter:(id)counter categories:(id)categories;
- (id)_fetchCalendarEvents;
- (id)_geoLocationOfEvent:(id)event;
- (id)_getLocationOfInterestWithIdentifier:(id)identifier fromArray:(id)array;
- (id)_suggestedLocationForEvent:(id)event;
- (id)appendFieldToCategoryString:(id)string field:(id)field value:(int64_t)value;
- (id)categoryForLocationState:(unint64_t)state ttlTrigggerd:(BOOL)trigggerd;
- (id)getLOIHistogramForEvents:(id)events andLocationsOfInterest:(id)interest;
- (id)lastDateOfLOIVisits:(id)visits;
- (unint64_t)_locationStateOfEvent:(id)event;
- (unint64_t)lengthOfEvent:(id)event;
- (unint64_t)timeOfDayOfEvent:(id)event;
- (unint64_t)verifyPresenceOfUserWithEventLocation:(id)location deviceLOIs:(id)is;
- (void)_buildLocationOfInterestHistogramWithHandler:(id)handler;
- (void)_fetchLOIHistogramForEventLocation:(id)location withHandler:(id)handler;
- (void)_finishRestoreEventModelWithIdentifiers:(id)identifiers histoItems:(id)items locationsOfInterest:(id)interest handler:(id)handler;
- (void)_restoreEventModelWithHandler:(id)handler;
- (void)_shutdownWithHandler:(id)handler;
- (void)_submitMetricScoreBoardFromStartDate:(id)date endDate:(id)endDate submissionHandler:(id)handler;
- (void)_submitMetricScoreBoardOnDate:(id)date;
- (void)_submitMetricScoreBoardOnDate:(id)date submissionHandler:(id)handler;
- (void)_updateRegisteredDefaults:(id)defaults;
- (void)fetchAllLOIHistogramsWithHandler:(id)handler;
- (void)fetchLOIHistogramForEventLocation:(id)location withHandler:(id)handler;
- (void)fetchLocationsOfInterestAssociatedToIdentifier:(id)identifier withHandler:(id)handler;
- (void)fetchLocationsOfInterestAssociatedToTitle:(id)title location:(id)location calendarIdentifier:(id)identifier withHandler:(id)handler;
- (void)fetchPredictedLocationsOfInterestAssociatedToTitle:(id)title location:(id)location calendarIdentifier:(id)identifier withHandler:(id)handler;
- (void)onDailyMetricNotification:(id)notification;
- (void)onLearnedLocationManagerNotification:(id)notification;
- (void)onManagedObjectContextCreated:(id)created;
- (void)performPurgeOfType:(int64_t)type referenceDate:(id)date completion:(id)completion;
- (void)persistEventModel;
- (void)refreshAllLOIHistogramsWithHandler:(id)handler;
- (void)restoreEventModelIfAppropriate;
- (void)restoreEventModelWithHandler:(id)handler;
- (void)updateValueForKey:(id)key expectedClass:(Class)class handler:(id)handler;
- (void)userInteractionWithPredictedLocationOfInterest:(id)interest interaction:(unint64_t)interaction feedback:(id)feedback mapItem:(id)item handler:(id)handler;
@end

@implementation RTEventModelProvider

- (RTEventModelProvider)initWithDefaultsManager:(id)manager eventManager:(id)eventManager learnedLocationManager:(id)locationManager managedObjectContext:(id)context metricManager:(id)metricManager persistenceManager:(id)persistenceManager
{
  managerCopy = manager;
  eventManagerCopy = eventManager;
  locationManagerCopy = locationManager;
  contextCopy = context;
  metricManagerCopy = metricManager;
  persistenceManagerCopy = persistenceManager;
  v19 = persistenceManagerCopy;
  if (!managerCopy)
  {
    v26 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 0;
    v27 = "Invalid parameter not satisfying: defaultsManager";
LABEL_16:
    _os_log_error_impl(&dword_2304B3000, v26, OS_LOG_TYPE_ERROR, v27, buf, 2u);
    goto LABEL_17;
  }

  if (!eventManagerCopy)
  {
    v26 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 0;
    v27 = "Invalid parameter not satisfying: eventManager";
    goto LABEL_16;
  }

  if (!locationManagerCopy)
  {
    v26 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 0;
    v27 = "Invalid parameter not satisfying: learnedLocationManager";
    goto LABEL_16;
  }

  if (!(contextCopy | persistenceManagerCopy))
  {
    v26 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v27 = "Invalid parameter not satisfying: managedObjectContext || persistenceManager";
      goto LABEL_16;
    }

LABEL_17:

    selfCopy = 0;
    goto LABEL_18;
  }

  v42.receiver = self;
  v42.super_class = RTEventModelProvider;
  v20 = [(RTNotifier *)&v42 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_learnedLocationManager, locationManager);
    objc_storeStrong(&v21->_eventManager, eventManager);
    objc_storeStrong(&v21->_metricManager, metricManager);
    objc_storeStrong(&v21->_persistenceManager, persistenceManager);
    v22 = objc_alloc_init(RTEventHistogramOptions);
    histogramOptions = v21->_histogramOptions;
    v21->_histogramOptions = v22;

    if (contextCopy)
    {
      v24 = contextCopy;
      managedObjectContext = v21->_managedObjectContext;
      v21->_managedObjectContext = v24;
    }

    else
    {
      persistenceManager = v21->_persistenceManager;
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = __138__RTEventModelProvider_initWithDefaultsManager_eventManager_learnedLocationManager_managedObjectContext_metricManager_persistenceManager___block_invoke;
      v40[3] = &unk_2788CAD20;
      v41 = v21;
      [(RTPersistenceManager *)persistenceManager createManagedObjectContext:v40];
      managedObjectContext = v41;
    }

    objc_storeStrong(&v21->_defaultsManager, manager);
    v31 = [RTInvocationDispatcher alloc];
    queue = [(RTNotifier *)v21 queue];
    v33 = [(RTInvocationDispatcher *)v31 initWithQueue:queue];
    dispatcher = v21->_dispatcher;
    v21->_dispatcher = v33;

    queue2 = [(RTNotifier *)v21 queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __138__RTEventModelProvider_initWithDefaultsManager_eventManager_learnedLocationManager_managedObjectContext_metricManager_persistenceManager___block_invoke_3;
    block[3] = &unk_2788C4EA0;
    v39 = v21;
    dispatch_async(queue2, block);
  }

  self = v21;
  selfCopy = self;
LABEL_18:

  return selfCopy;
}

void __138__RTEventModelProvider_initWithDefaultsManager_eventManager_learnedLocationManager_managedObjectContext_metricManager_persistenceManager___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __138__RTEventModelProvider_initWithDefaultsManager_eventManager_learnedLocationManager_managedObjectContext_metricManager_persistenceManager___block_invoke_2;
  v6[3] = &unk_2788C4A70;
  v7 = *(a1 + 32);
  v8 = v3;
  v5 = v3;
  dispatch_async(v4, v6);
}

void __138__RTEventModelProvider_initWithDefaultsManager_eventManager_learnedLocationManager_managedObjectContext_metricManager_persistenceManager___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  v4 = +[(RTNotification *)RTLearnedLocationManagerNotificationAvailabilityDidChange];
  [v3 addObserver:v2 selector:sel_onLearnedLocationManagerNotification_ name:v4];

  v5 = *(a1 + 32);
  v6 = *(v5 + 40);
  v7 = +[(RTNotification *)RTLearnedLocationManagerNotificationDidUpdate];
  [v6 addObserver:v5 selector:sel_onLearnedLocationManagerNotification_ name:v7];

  v8 = [MEMORY[0x277CCAB98] defaultCenter];
  [v8 addObserver:*(a1 + 32) selector:sel_onDailyMetricNotification_ name:@"RTMetricManagerDailyMetricNotification" object:0];

  v9 = *(a1 + 32);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __138__RTEventModelProvider_initWithDefaultsManager_eventManager_learnedLocationManager_managedObjectContext_metricManager_persistenceManager___block_invoke_4;
  v10[3] = &unk_2788C4EA0;
  v11 = v9;
  [v11 _updateRegisteredDefaults:v10];
}

void __138__RTEventModelProvider_initWithDefaultsManager_eventManager_learnedLocationManager_managedObjectContext_metricManager_persistenceManager___block_invoke_4(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityEventModel);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = [*(a1 + 32) histogramOptions];
      [v3 highProbabilityItemMinProbability];
      v5 = v4;
      v6 = [*(a1 + 32) histogramOptions];
      [v6 relativeHighProbabilityItemMinDifference];
      v8 = v7;
      v9 = [*(a1 + 32) histogramOptions];
      v10 = 134218496;
      v11 = v5;
      v12 = 2048;
      v13 = v8;
      v14 = 1024;
      v15 = [v9 highProbabilityItemMinNumOfEvents];
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "Updated RTEventHistogram defaults, highProbabilityItemMinProbability, %f, relativeHighProbabilityItemMinDifference, %f, highProbabilityItemMinNumOfEvents, %d", &v10, 0x1Cu);
    }
  }
}

- (void)_shutdownWithHandler:(id)handler
{
  handlerCopy = handler;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityEventModel);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "Shutdown RTEventModelProvider", v8, 2u);
    }
  }

  [(RTNotifier *)self->_learnedLocationManager removeObserver:self];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  dispatcher = [(RTEventModelProvider *)self dispatcher];
  [dispatcher shutdown];

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, 0);
  }
}

- (RTLocationShifter)locationShifter
{
  locationShifter = self->_locationShifter;
  if (!locationShifter)
  {
    v4 = objc_opt_new();
    v5 = self->_locationShifter;
    self->_locationShifter = v4;

    locationShifter = self->_locationShifter;
  }

  return locationShifter;
}

- (void)_updateRegisteredDefaults:(id)defaults
{
  defaultsCopy = defaults;
  v5 = dispatch_group_create();
  dispatch_group_enter(v5);
  v6 = objc_opt_class();
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __50__RTEventModelProvider__updateRegisteredDefaults___block_invoke;
  v20[3] = &unk_2788CE060;
  v20[4] = self;
  v7 = v5;
  v21 = v7;
  [(RTEventModelProvider *)self updateValueForKey:@"RTDefaultsEventModelProviderHighProbabilityItemMinProbability" expectedClass:v6 handler:v20];
  dispatch_group_enter(v7);
  v8 = objc_opt_class();
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __50__RTEventModelProvider__updateRegisteredDefaults___block_invoke_2;
  v18[3] = &unk_2788CE060;
  v18[4] = self;
  v9 = v7;
  v19 = v9;
  [(RTEventModelProvider *)self updateValueForKey:@"RTDefaultsEventModelProviderRelativeHighProbabilityItemMinDifference" expectedClass:v8 handler:v18];
  dispatch_group_enter(v9);
  v10 = objc_opt_class();
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __50__RTEventModelProvider__updateRegisteredDefaults___block_invoke_3;
  v16[3] = &unk_2788CE060;
  v16[4] = self;
  v17 = v9;
  v11 = v9;
  [(RTEventModelProvider *)self updateValueForKey:@"RTDefaultsEventModelProviderHighProbabilityItemMinNumOfEvents" expectedClass:v10 handler:v16];
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__RTEventModelProvider__updateRegisteredDefaults___block_invoke_4;
  block[3] = &unk_2788C4758;
  v15 = defaultsCopy;
  v13 = defaultsCopy;
  dispatch_group_notify(v11, queue, block);
}

void __50__RTEventModelProvider__updateRegisteredDefaults___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  [a3 doubleValue];
  v5 = v4;
  v6 = [*(a1 + 32) histogramOptions];
  [v6 setHighProbabilityItemMinProbability:v5];

  v7 = *(a1 + 40);

  dispatch_group_leave(v7);
}

void __50__RTEventModelProvider__updateRegisteredDefaults___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  [a3 doubleValue];
  v5 = v4;
  v6 = [*(a1 + 32) histogramOptions];
  [v6 setRelativeHighProbabilityItemMinDifference:v5];

  v7 = *(a1 + 40);

  dispatch_group_leave(v7);
}

void __50__RTEventModelProvider__updateRegisteredDefaults___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 intValue];
  v5 = [*(a1 + 32) histogramOptions];
  [v5 setHighProbabilityItemMinNumOfEvents:v4];

  v6 = *(a1 + 40);

  dispatch_group_leave(v6);
}

uint64_t __50__RTEventModelProvider__updateRegisteredDefaults___block_invoke_4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)updateValueForKey:(id)key expectedClass:(Class)class handler:(id)handler
{
  keyCopy = key;
  handlerCopy = handler;
  if (handlerCopy)
  {
    queue = [(RTNotifier *)self queue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __64__RTEventModelProvider_updateValueForKey_expectedClass_handler___block_invoke;
    v11[3] = &unk_2788CE088;
    v11[4] = self;
    v12 = keyCopy;
    classCopy = class;
    v13 = handlerCopy;
    dispatch_async(queue, v11);
  }
}

void __64__RTEventModelProvider_updateValueForKey_expectedClass_handler___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) defaultsManager];
  v3 = [v2 objectForKey:*(a1 + 40)];

  if (objc_opt_isKindOfClass())
  {
    (*(*(a1 + 48) + 16))();
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v4 = _rt_log_facility_get_os_log(RTLogFacilityEventModel);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        v7 = *(a1 + 40);
        v9 = 138412546;
        v10 = v7;
        v11 = 2112;
        v12 = v3;
        _os_log_debug_impl(&dword_2304B3000, v4, OS_LOG_TYPE_DEBUG, "onDefaultsUpdate, %@ = %@", &v9, 0x16u);
      }
    }
  }

  else
  {
    if ([*(a1 + 40) isEqualToString:@"RTDefaultsEventModelProviderHighProbabilityItemMinProbability"])
    {
      v5 = *(*(a1 + 48) + 16);
    }

    else if ([*(a1 + 40) isEqualToString:@"RTDefaultsEventModelProviderRelativeHighProbabilityItemMinDifference"])
    {
      v5 = *(*(a1 + 48) + 16);
    }

    else if ([*(a1 + 40) isEqualToString:@"RTDefaultsEventModelProviderHighProbabilityItemMinNumOfEvents"])
    {
      v5 = *(*(a1 + 48) + 16);
    }

    else
    {
      v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v8 = *(a1 + 40);
        v9 = 138412802;
        v10 = v8;
        v11 = 2080;
        v12 = "[RTEventModelProvider updateValueForKey:expectedClass:handler:]_block_invoke";
        v13 = 1024;
        v14 = 215;
        _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "unhandled update for key, %@ (in %s:%d)", &v9, 0x1Cu);
      }

      v5 = *(*(a1 + 48) + 16);
    }

    v5();
  }
}

- (double)getOverlapTimeForIntervalStart1:(id)start1 intervalEnd1:(id)end1 intervalStart2:(id)start2 intervalEnd2:(id)end2
{
  end2Copy = end2;
  end1Copy = end1;
  v11 = [start1 laterDate:start2];
  v12 = [end1Copy earlierDate:end2Copy];

  [v12 timeIntervalSinceDate:v11];
  v14 = fmax(v13, 0.0);

  return v14;
}

- (id)getLOIHistogramForEvents:(id)events andLocationsOfInterest:(id)interest
{
  eventsCopy = events;
  interestCopy = interest;
  v8 = objc_opt_new();
  v9 = objc_opt_new();
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __72__RTEventModelProvider_getLOIHistogramForEvents_andLocationsOfInterest___block_invoke;
  v21[3] = &unk_2788CE100;
  v10 = interestCopy;
  v22 = v10;
  selfCopy = self;
  v11 = v9;
  v24 = v11;
  [eventsCopy enumerateObjectsUsingBlock:v21];
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v20[3] = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __72__RTEventModelProvider_getLOIHistogramForEvents_andLocationsOfInterest___block_invoke_4;
  v17[3] = &unk_2788CE128;
  v19 = v20;
  v12 = v8;
  v18 = v12;
  [v11 enumerateKeysAndObjectsUsingBlock:v17];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __72__RTEventModelProvider_getLOIHistogramForEvents_andLocationsOfInterest___block_invoke_5;
  v16[3] = &unk_2788CE150;
  v16[4] = v20;
  [v12 enumerateObjectsUsingBlock:v16];
  [v12 sortUsingComparator:&__block_literal_global_92];
  v13 = v18;
  v14 = v12;

  _Block_object_dispose(v20, 8);

  return v14;
}

void __72__RTEventModelProvider_getLOIHistogramForEvents_andLocationsOfInterest___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __72__RTEventModelProvider_getLOIHistogramForEvents_andLocationsOfInterest___block_invoke_2;
  v7[3] = &unk_2788CE0D8;
  v4 = a1[4];
  v5 = a1[6];
  v7[4] = a1[5];
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 enumerateObjectsUsingBlock:v7];
}

void __72__RTEventModelProvider_getLOIHistogramForEvents_andLocationsOfInterest___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 visits];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __72__RTEventModelProvider_getLOIHistogramForEvents_andLocationsOfInterest___block_invoke_3;
  v7[3] = &unk_2788CE0B0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v9 = *(a1 + 48);
  v10 = v3;
  v6 = v3;
  [v4 enumerateObjectsUsingBlock:v7];
}

void __72__RTEventModelProvider_getLOIHistogramForEvents_andLocationsOfInterest___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [v4 startDate];
  v7 = [*(a1 + 40) endDate];
  v8 = [v5 entryDate];
  v9 = [v5 exitDate];

  [v3 getOverlapTimeForIntervalStart1:v6 intervalEnd1:v7 intervalStart2:v8 intervalEnd2:v9];
  v11 = v10;

  if (v11 > 0.0)
  {
    v12 = *(a1 + 48);
    v13 = [*(a1 + 56) identifier];
    v18 = [v12 objectForKey:v13];

    if (v18)
    {
      [v18 timeOfStay];
      [v18 setTimeOfStay:v11 + v14];
      [v18 setNumOfEvents:{objc_msgSend(v18, "numOfEvents") + 1}];
    }

    else
    {
      v15 = *(a1 + 48);
      v16 = [[RTLOIHistogramItem alloc] initWithLocationOfInterest:*(a1 + 56) timeOfStay:1 andNumOfEvents:v11];
      v17 = [*(a1 + 56) identifier];
      [v15 setObject:v16 forKey:v17];
    }
  }
}

void __72__RTEventModelProvider_getLOIHistogramForEvents_andLocationsOfInterest___block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  [v5 timeOfStay];
  *(*(*(a1 + 40) + 8) + 24) = v4 + *(*(*(a1 + 40) + 8) + 24);
  [*(a1 + 32) addObject:v5];
}

void __72__RTEventModelProvider_getLOIHistogramForEvents_andLocationsOfInterest___block_invoke_5(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 timeOfStay];
  [v4 setProbability:v3 / *(*(*(a1 + 32) + 8) + 24)];
}

uint64_t __72__RTEventModelProvider_getLOIHistogramForEvents_andLocationsOfInterest___block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  [v4 probability];
  v7 = v6;
  [v5 probability];
  if (v7 >= v8)
  {
    [v4 probability];
    v11 = v10;
    [v5 probability];
    if (v11 <= v12)
    {
      v9 = 0;
    }

    else
    {
      v9 = -1;
    }
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (void)fetchLOIHistogramForEventLocation:(id)location withHandler:(id)handler
{
  locationCopy = location;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__RTEventModelProvider_fetchLOIHistogramForEventLocation_withHandler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = locationCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = locationCopy;
  dispatch_async(queue, block);
}

- (void)_fetchLOIHistogramForEventLocation:(id)location withHandler:(id)handler
{
  locationCopy = location;
  handlerCopy = handler;
  locationOfInterestEventHistograms = [(RTEventModelProvider *)self locationOfInterestEventHistograms];

  if (locationOfInterestEventHistograms)
  {
    locationOfInterestEventHistograms2 = [(RTEventModelProvider *)self locationOfInterestEventHistograms];
    v9 = [locationOfInterestEventHistograms2 _loiHistogramForEventLocation:locationCopy];

    handlerCopy[2](handlerCopy, v9, 0);
  }

  else
  {
    handlerCopy[2](handlerCopy, 0, 0);
  }
}

- (void)fetchAllLOIHistogramsWithHandler:(id)handler
{
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__RTEventModelProvider_fetchAllLOIHistogramsWithHandler___block_invoke;
  v7[3] = &unk_2788C4938;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

void __57__RTEventModelProvider_fetchAllLOIHistogramsWithHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) locationOfInterestEventHistograms];

  v3 = *(a1 + 40);
  if (v2)
  {
    v7 = [*(a1 + 32) locationOfInterestEventHistograms];
    v4 = [v7 getRawHistogram];
    (*(v3 + 16))(v3, v4, 0);
  }

  else
  {
    v5 = *(v3 + 16);
    v6 = *(a1 + 40);

    v5(v6, 0, 0);
  }
}

- (id)_fetchCalendarEvents
{
  v59 = *MEMORY[0x277D85DE8];
  v33 = dispatch_semaphore_create(0);
  v53 = 0;
  v54 = &v53;
  v55 = 0x2020000000;
  v56 = 0;
  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = __Block_byref_object_copy__110;
  v51 = __Block_byref_object_dispose__110;
  v52 = objc_opt_new();
  v34 = [MEMORY[0x277CBEAA8] now];
  v2 = 0;
  v38 = 0;
  v30 = *MEMORY[0x277D01448];
  v31 = *MEMORY[0x277CCA450];
  v3 = 1;
  v4 = -604800;
  do
  {
    context = objc_autoreleasePoolPush();
    v39 = *(v54 + 6);
    if (v39 < 1501)
    {
      v6 = [v34 dateByAddingTimeInterval:v4];
      v7 = [v34 dateByAddingTimeInterval:v2 * 604800.0];
      eventManager = [(RTEventModelProvider *)self eventManager];
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __44__RTEventModelProvider__fetchCalendarEvents__block_invoke;
      v41[3] = &unk_2788CE198;
      v5 = v6;
      v42 = v5;
      v9 = v7;
      v43 = v9;
      v45 = &v47;
      v46 = &v53;
      v10 = v33;
      v44 = v10;
      v37 = v9;
      [eventManager fetchEventsBetweenStartDate:v5 andEndDate:v9 withHandler:v41];

      v11 = v10;
      v12 = [MEMORY[0x277CBEAA8] now];
      v13 = dispatch_time(0, 3600000000000);
      v14 = v38;
      if (dispatch_semaphore_wait(v11, v13))
      {
        v36 = [MEMORY[0x277CBEAA8] now];
        [v36 timeIntervalSinceDate:v12];
        v16 = v15;
        v35 = objc_opt_new();
        v17 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_368];
        callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
        v19 = [callStackSymbols filteredArrayUsingPredicate:v17];
        firstObject = [v19 firstObject];

        [v35 submitToCoreAnalytics:firstObject type:1 duration:v16];
        v21 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_2304B3000, v21, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
        }

        v22 = MEMORY[0x277CCA9B8];
        v57 = v31;
        *buf = @"semaphore wait timeout";
        v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v57 count:1];
        v24 = [v22 errorWithDomain:v30 code:15 userInfo:v23];

        v14 = v38;
        if (v24)
        {
          v25 = v24;

          v14 = v24;
        }
      }

      v26 = v14;
      v38 = v26;
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        goto LABEL_13;
      }

      v5 = _rt_log_facility_get_os_log(RTLogFacilityEventModel);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        *&buf[4] = v3;
        _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "Fetched max number of events, stopped week %d", buf, 8u);
      }
    }

LABEL_13:
    objc_autoreleasePoolPop(context);
    v27 = v39 > 1500 || v2-- == -6;
    v4 -= 604800;
    ++v3;
  }

  while (!v27);
  v28 = v48[5];

  _Block_object_dispose(&v47, 8);
  _Block_object_dispose(&v53, 8);

  return v28;
}

void __44__RTEventModelProvider__fetchCalendarEvents__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
  if (v6)
  {
    if (v7)
    {
      v8 = _rt_log_facility_get_os_log(RTLogFacilityEventModel);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = [v6 description];
        v17 = 138412290;
        v18 = v9;
        _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "Error fetching events: %@", &v17, 0xCu);
      }
    }
  }

  else
  {
    if (v7)
    {
      v10 = _rt_log_facility_get_os_log(RTLogFacilityEventModel);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = [v5 count];
        v12 = [*(a1 + 32) stringFromDate];
        v13 = [*(a1 + 40) stringFromDate];
        v17 = 134218498;
        v18 = v11;
        v19 = 2112;
        v20 = v12;
        v21 = 2112;
        v22 = v13;
        _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "Fetched %lu events, startDate, %@, endDate, %@", &v17, 0x20u);
      }
    }

    v14 = [*(*(*(a1 + 56) + 8) + 40) arrayByAddingObjectsFromArray:v5];
    v15 = *(*(a1 + 56) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    *(*(*(a1 + 64) + 8) + 24) += [v5 count];
  }

  dispatch_semaphore_signal(*(a1 + 48));
}

- (void)_buildLocationOfInterestHistogramWithHandler:(id)handler
{
  handlerCopy = handler;
  _fetchCalendarEvents = [(RTEventModelProvider *)self _fetchCalendarEvents];
  v6 = dispatch_group_create();
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x3032000000;
  v19[3] = __Block_byref_object_copy__110;
  v19[4] = __Block_byref_object_dispose__110;
  v20 = 0;
  dispatch_group_enter(v6);
  learnedLocationManager = [(RTEventModelProvider *)self learnedLocationManager];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __69__RTEventModelProvider__buildLocationOfInterestHistogramWithHandler___block_invoke;
  v16[3] = &unk_2788C45F0;
  v18 = v19;
  v8 = v6;
  v17 = v8;
  [learnedLocationManager fetchRecentLocationsOfInterestWithHandler:v16];

  queue = [(RTNotifier *)self queue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __69__RTEventModelProvider__buildLocationOfInterestHistogramWithHandler___block_invoke_94;
  v12[3] = &unk_2788CE260;
  v12[4] = self;
  v13 = _fetchCalendarEvents;
  v14 = handlerCopy;
  v15 = v19;
  v10 = handlerCopy;
  v11 = _fetchCalendarEvents;
  dispatch_group_notify(v8, queue, v12);

  _Block_object_dispose(v19, 8);
}

void __69__RTEventModelProvider__buildLocationOfInterestHistogramWithHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
  if (!v6)
  {
    if (v7)
    {
      v10 = _rt_log_facility_get_os_log(RTLogFacilityEventModel);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v13 = 134217984;
        v14 = [v5 count];
        _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "Fetched %lu LOIs.", &v13, 0xCu);
      }
    }

    v11 = [MEMORY[0x277D01170] locationsOfInterestFromLearnedLocationsOfInterest:v5];
    v12 = *(*(a1 + 40) + 8);
    v8 = *(v12 + 40);
    *(v12 + 40) = v11;
    goto LABEL_10;
  }

  if (v7)
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityEventModel);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [v6 description];
      v13 = 138412290;
      v14 = v9;
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "Error fetching LOIs: %@", &v13, 0xCu);
    }

LABEL_10:
  }

  dispatch_group_leave(*(a1 + 32));
}

void __69__RTEventModelProvider__buildLocationOfInterestHistogramWithHandler___block_invoke_94(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = [RTEventHistogram alloc];
  v3 = *(*(*(a1 + 56) + 8) + 40);
  v4 = *(a1 + 40);
  v5 = [*(a1 + 32) histogramOptions];
  v6 = [(RTEventHistogram *)v2 initWithEvents:v4 locationsOfInterest:v3 options:v5];
  [*(a1 + 32) setLocationOfInterestEventHistograms:v6];

  v7 = [*(a1 + 32) _persistEventModel];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityEventModel);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [*(a1 + 40) count];
      *buf = 134217984;
      v26 = v9;
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "Start logging %lu fetched events.", buf, 0xCu);
    }

    [*(a1 + 40) enumerateObjectsUsingBlock:&__block_literal_global_99_1];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v10 = _rt_log_facility_get_os_log(RTLogFacilityEventModel);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = [*(*(*(a1 + 56) + 8) + 40) count];
        *buf = 134217984;
        v26 = v11;
        _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "Start logging %lu fetched LOIs.", buf, 0xCu);
      }
    }

    [*(*(*(a1 + 56) + 8) + 40) enumerateObjectsUsingBlock:&__block_literal_global_102];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v12 = _rt_log_facility_get_os_log(RTLogFacilityEventModel);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = [*(a1 + 32) locationOfInterestEventHistograms];
        v14 = [v13 getRawHistogram];
        v15 = [v14 count];
        *buf = 134217984;
        v26 = v15;
        _os_log_impl(&dword_2304B3000, v12, OS_LOG_TYPE_INFO, "associated %lu events with LOIs", buf, 0xCu);
      }
    }

    v16 = [*(a1 + 32) locationOfInterestEventHistograms];
    v17 = [v16 getRawHistogram];
    [v17 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_109_0];
  }

  v18 = *(a1 + 48);
  if (v18)
  {
    if (v7)
    {
      (*(v18 + 16))(v18, 0);
    }

    else
    {
      v19 = MEMORY[0x277CCA9B8];
      v20 = *MEMORY[0x277D01448];
      v23 = *MEMORY[0x277CCA450];
      v24 = @"persist event model was unsuccessful";
      v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
      v22 = [v19 errorWithDomain:v20 code:0 userInfo:v21];
      (*(v18 + 16))(v18, v22);
    }
  }
}

void __69__RTEventModelProvider__buildLocationOfInterestHistogramWithHandler___block_invoke_96(uint64_t a1, void *a2, uint64_t a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = [v4 participationStatus];
  if (([v4 isAllDay] & 1) == 0 && v5 == 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityEventModel);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [v4 title];
      v14 = [v4 locationWithoutPrediction];
      v8 = [v4 startDate];
      v9 = [v8 stringFromDate];
      v10 = [v4 endDate];
      v11 = [v10 stringFromDate];
      v12 = [v4 calendar];
      v13 = [v12 calendarIdentifier];
      *buf = 134219266;
      v16 = a3;
      v17 = 2112;
      v18 = v7;
      v19 = 2112;
      v20 = v14;
      v21 = 2112;
      v22 = v9;
      v23 = 2112;
      v24 = v11;
      v25 = 2112;
      v26 = v13;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "Event %lu, %@, %@, %@, %@, %@", buf, 0x3Eu);
    }
  }
}

void __69__RTEventModelProvider__buildLocationOfInterestHistogramWithHandler___block_invoke_100(uint64_t a1, void *a2, uint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityEventModel);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [v4 description];
      v8 = 134218243;
      v9 = a3;
      v10 = 2117;
      v11 = v6;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "LOI %lu, %{sensitive}@", &v8, 0x16u);
    }
  }

  v7 = [v4 visits];
  [v7 enumerateObjectsUsingBlock:&__block_literal_global_105_0];
}

void __69__RTEventModelProvider__buildLocationOfInterestHistogramWithHandler___block_invoke_103(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilityEventModel);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = [v2 entryDate];
      v5 = [v4 stringFromDate];
      v6 = [v2 exitDate];
      v7 = [v6 stringFromDate];
      v8 = 138412546;
      v9 = v5;
      v10 = 2112;
      v11 = v7;
      _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "entry, %@, exit, %@", &v8, 0x16u);
    }
  }
}

void __69__RTEventModelProvider__buildLocationOfInterestHistogramWithHandler___block_invoke_106(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = v4;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityEventModel);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = 138412546;
      v9 = v6;
      v10 = 2048;
      v11 = [v5 count];
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%@, possible LOIs, %lu", &v8, 0x16u);
    }
  }

  [v5 enumerateObjectsUsingBlock:&__block_literal_global_112];
}

void __69__RTEventModelProvider__buildLocationOfInterestHistogramWithHandler___block_invoke_110(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityEventModel);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 134218243;
      v7 = a3 + 1;
      v8 = 2117;
      v9 = v4;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "possible LOI %lu, %{sensitive}@", &v6, 0x16u);
    }
  }
}

- (void)refreshAllLOIHistogramsWithHandler:(id)handler
{
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__RTEventModelProvider_refreshAllLOIHistogramsWithHandler___block_invoke;
  v7[3] = &unk_2788C4938;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

- (void)onLearnedLocationManagerNotification:(id)notification
{
  notificationCopy = notification;
  queue = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__RTEventModelProvider_onLearnedLocationManagerNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v8 = notificationCopy;
  selfCopy = self;
  v6 = notificationCopy;
  dispatch_async(queue, v7);
}

void __61__RTEventModelProvider_onLearnedLocationManagerNotification___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityEventModel);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = [*(a1 + 32) name];
      v14 = 138412290;
      v15 = v3;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "received %@", &v14, 0xCu);
    }
  }

  v4 = [*(a1 + 32) name];
  v5 = +[(RTNotification *)RTLearnedLocationManagerNotificationDidUpdate];
  v6 = [v4 isEqualToString:v5];

  if (v6)
  {
    [*(a1 + 40) _buildLocationOfInterestHistogramWithHandler:0];
  }

  else
  {
    v7 = [*(a1 + 32) name];
    v8 = +[(RTNotification *)RTLearnedLocationManagerNotificationAvailabilityDidChange];
    v9 = [v7 isEqualToString:v8];

    if (v9)
    {
      v10 = [*(a1 + 32) available];
      v11 = *(a1 + 40);
      if (v10)
      {
        [v11 setLocationsOfInterestsAvailable:1];
        [*(a1 + 40) restoreEventModelIfAppropriate];
      }

      else
      {
        [v11 setLocationsOfInterestsAvailable:0];
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v12 = _rt_log_facility_get_os_log(RTLogFacilityEventModel);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = [*(a1 + 32) name];
        v14 = 138412290;
        v15 = v13;
        _os_log_impl(&dword_2304B3000, v12, OS_LOG_TYPE_INFO, "unhandled notification, %@", &v14, 0xCu);
      }
    }
  }
}

- (void)fetchLocationsOfInterestAssociatedToIdentifier:(id)identifier withHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  if (handlerCopy)
  {
    queue = [(RTNotifier *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __83__RTEventModelProvider_fetchLocationsOfInterestAssociatedToIdentifier_withHandler___block_invoke;
    block[3] = &unk_2788C4500;
    block[4] = self;
    v10 = identifierCopy;
    v11 = handlerCopy;
    dispatch_async(queue, block);
  }
}

void __83__RTEventModelProvider_fetchLocationsOfInterestAssociatedToIdentifier_withHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) locationOfInterestEventHistograms];

  if (v2)
  {
    v3 = [*(a1 + 32) locationOfInterestEventHistograms];
    v4 = [v3 locationsOfInterestAssociatedToIdentifier:*(a1 + 40)];
  }

  else
  {
    v4 = 0;
  }

  (*(*(a1 + 48) + 16))();
}

- (void)fetchLocationsOfInterestAssociatedToTitle:(id)title location:(id)location calendarIdentifier:(id)identifier withHandler:(id)handler
{
  titleCopy = title;
  locationCopy = location;
  identifierCopy = identifier;
  handlerCopy = handler;
  if (handlerCopy)
  {
    queue = [(RTNotifier *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __106__RTEventModelProvider_fetchLocationsOfInterestAssociatedToTitle_location_calendarIdentifier_withHandler___block_invoke;
    block[3] = &unk_2788C5580;
    block[4] = self;
    v16 = titleCopy;
    v17 = locationCopy;
    v18 = identifierCopy;
    v19 = handlerCopy;
    dispatch_async(queue, block);
  }
}

void __106__RTEventModelProvider_fetchLocationsOfInterestAssociatedToTitle_location_calendarIdentifier_withHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) locationOfInterestEventHistograms];
  v4 = [v2 predictedLocationsOfInterestAssociatedToTitle:*(a1 + 40) location:*(a1 + 48) calendarIdentifier:*(a1 + 56)];

  v3 = [v4 valueForKeyPath:@"locationOfInterest"];
  (*(*(a1 + 64) + 16))();
}

- (void)fetchPredictedLocationsOfInterestAssociatedToTitle:(id)title location:(id)location calendarIdentifier:(id)identifier withHandler:(id)handler
{
  titleCopy = title;
  locationCopy = location;
  identifierCopy = identifier;
  handlerCopy = handler;
  if (handlerCopy)
  {
    queue = [(RTNotifier *)self queue];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __115__RTEventModelProvider_fetchPredictedLocationsOfInterestAssociatedToTitle_location_calendarIdentifier_withHandler___block_invoke;
    v16[3] = &unk_2788C56E8;
    v22 = a2;
    v17 = titleCopy;
    v18 = locationCopy;
    v19 = identifierCopy;
    selfCopy = self;
    v21 = handlerCopy;
    dispatch_async(queue, v16);
  }
}

void __115__RTEventModelProvider_fetchPredictedLocationsOfInterestAssociatedToTitle_location_calendarIdentifier_withHandler___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityEventModel);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v5 = NSStringFromSelector(*(a1 + 72));
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
      v8 = *(a1 + 48);
      v9 = 138413059;
      v10 = v5;
      v11 = 2112;
      v12 = v6;
      v13 = 2117;
      v14 = v7;
      v15 = 2112;
      v16 = v8;
      _os_log_debug_impl(&dword_2304B3000, v2, OS_LOG_TYPE_DEBUG, "%@, %@, location, %{sensitive}@, calendarIdentifier, %@", &v9, 0x2Au);
    }
  }

  v3 = [*(a1 + 56) locationOfInterestEventHistograms];
  v4 = [v3 predictedLocationsOfInterestAssociatedToTitle:*(a1 + 32) location:*(a1 + 40) calendarIdentifier:*(a1 + 48)];

  (*(*(a1 + 64) + 16))();
}

- (void)onManagedObjectContextCreated:(id)created
{
  if (created)
  {
    [(RTEventModelProvider *)self setManagedObjectContext:?];
    dispatcher = [(RTEventModelProvider *)self dispatcher];
    invocationsPending = [dispatcher invocationsPending];

    if (invocationsPending)
    {
      dispatcher2 = [(RTEventModelProvider *)self dispatcher];
      [dispatcher2 dispatchPendingInvocations];
    }

    [(RTEventModelProvider *)self restoreEventModelIfAppropriate];
  }

  else
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityEventModel);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "Failed to create managed object context.", v8, 2u);
    }
  }
}

- (BOOL)deleteEventModel
{
  v20 = *MEMORY[0x277D85DE8];
  managedObjectContext = [(RTEventModelProvider *)self managedObjectContext];

  if (managedObjectContext)
  {
    *buf = 0;
    v13 = buf;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__110;
    v16 = __Block_byref_object_dispose__110;
    v17 = 0;
    managedObjectContext2 = [(RTEventModelProvider *)self managedObjectContext];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __40__RTEventModelProvider_deleteEventModel__block_invoke;
    v11[3] = &unk_2788C4FD8;
    v11[4] = self;
    v11[5] = buf;
    [managedObjectContext2 performBlockAndWait:v11];

    v5 = *(v13 + 5);
    v6 = v5 == 0;
    if (v5)
    {
      v7 = _rt_log_facility_get_os_log(RTLogFacilityEventModel);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v10 = [*(v13 + 5) description];
        *v18 = 138412290;
        v19 = v10;
        _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "Error deleting event model, %@", v18, 0xCu);
      }
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v8 = _rt_log_facility_get_os_log(RTLogFacilityEventModel);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "No managed object context, not purging.", buf, 2u);
      }
    }

    return 0;
  }

  return v6;
}

void __40__RTEventModelProvider_deleteEventModel__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = +[(NSManagedObject *)RTEventLocationIdentifierMO];
  v4 = *(*(a1 + 40) + 8);
  obj = *(v4 + 40);
  [v2 deleteAllWithEntityName:v3 predicate:0 error:&obj];
  objc_storeStrong((v4 + 40), obj);

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v5 = [*(a1 + 32) managedObjectContext];
    v6 = +[(NSManagedObject *)RTLOIHistogramItemMO];
    v7 = *(*(a1 + 40) + 8);
    v11 = *(v7 + 40);
    [v5 deleteAllWithEntityName:v6 predicate:0 error:&v11];
    objc_storeStrong((v7 + 40), v11);

    if (!*(*(*(a1 + 40) + 8) + 40))
    {
      v8 = [*(a1 + 32) managedObjectContext];
      v9 = *(*(a1 + 40) + 8);
      v10 = *(v9 + 40);
      [v8 save:&v10];
      objc_storeStrong((v9 + 40), v10);
    }
  }
}

- (BOOL)_persistEventModel
{
  v28 = *MEMORY[0x277D85DE8];
  if ([(RTEventModelProvider *)self deleteEventModel])
  {
    locationOfInterestEventHistograms = [(RTEventModelProvider *)self locationOfInterestEventHistograms];

    if (locationOfInterestEventHistograms)
    {
      *v20 = 0;
      v21 = v20;
      v22 = 0x3032000000;
      v23 = __Block_byref_object_copy__110;
      v24 = __Block_byref_object_dispose__110;
      v25 = 0;
      locationOfInterestEventHistograms2 = [(RTEventModelProvider *)self locationOfInterestEventHistograms];
      getRawHistogram = [locationOfInterestEventHistograms2 getRawHistogram];

      managedObjectContext = [(RTEventModelProvider *)self managedObjectContext];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __42__RTEventModelProvider__persistEventModel__block_invoke;
      v16[3] = &unk_2788C51F0;
      v7 = getRawHistogram;
      v17 = v7;
      selfCopy = self;
      v19 = v20;
      [managedObjectContext performBlockAndWait:v16];

      v8 = *(v21 + 5);
      v9 = v8 == 0;
      if (v8)
      {
        v10 = _rt_log_facility_get_os_log(RTLogFacilityEventModel);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v15 = [*(v21 + 5) description];
          *buf = 138412290;
          v27 = v15;
          _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Error persisting event model, %@", buf, 0xCu);
        }
      }

      else
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          goto LABEL_7;
        }

        v10 = _rt_log_facility_get_os_log(RTLogFacilityEventModel);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v14 = [v7 count];
          *buf = 134217984;
          v27 = v14;
          _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "Persisted event model for %lu identifiers.", buf, 0xCu);
        }
      }

LABEL_7:
      _Block_object_dispose(v20, 8);

      return v9;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v12 = _rt_log_facility_get_os_log(RTLogFacilityEventModel);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        *v20 = 0;
        _os_log_debug_impl(&dword_2304B3000, v12, OS_LOG_TYPE_DEBUG, "Nothing to save.", v20, 2u);
      }
    }

    return 1;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v11 = _rt_log_facility_get_os_log(RTLogFacilityEventModel);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *v20 = 0;
        _os_log_debug_impl(&dword_2304B3000, v11, OS_LOG_TYPE_DEBUG, "Can't delete previous event model, not saving.", v20, 2u);
      }
    }

    return 0;
  }
}

void __42__RTEventModelProvider__persistEventModel__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__RTEventModelProvider__persistEventModel__block_invoke_2;
  v7[3] = &unk_2788CE2B0;
  v7[4] = *(a1 + 40);
  [v2 enumerateKeysAndObjectsUsingBlock:v7];
  v3 = [*(a1 + 40) managedObjectContext];
  v4 = *(*(a1 + 48) + 8);
  obj = *(v4 + 40);
  [v3 save:&obj];
  objc_storeStrong((v4 + 40), obj);

  v5 = [*(a1 + 40) managedObjectContext];
  [v5 reset];
}

void __42__RTEventModelProvider__persistEventModel__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [v5 managedObjectContext];
  v9 = [RTEventLocationIdentifierMO managedObjectWithEventLocationIdentifier:v7 inManagedObjectContext:v8];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __42__RTEventModelProvider__persistEventModel__block_invoke_3;
  v11[3] = &unk_2788CE288;
  v11[4] = *(a1 + 32);
  v12 = v9;
  v10 = v9;
  [v6 enumerateObjectsUsingBlock:v11];
}

void __42__RTEventModelProvider__persistEventModel__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 managedObjectContext];
  v6 = [RTLOIHistogramItemMO managedObjectWithLOIHistogramItem:v4 inManagedObjectContext:v5];

  [v6 setEventLocationIdentifier:*(a1 + 40)];
}

- (void)_restoreEventModelWithHandler:(id)handler
{
  handlerCopy = handler;
  managedObjectContext = [(RTEventModelProvider *)self managedObjectContext];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__RTEventModelProvider__restoreEventModelWithHandler___block_invoke;
  v7[3] = &unk_2788C4938;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [managedObjectContext performBlockAndWait:v7];
}

void __54__RTEventModelProvider__restoreEventModelWithHandler___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = +[(NSManagedObject *)RTEventLocationIdentifierMO];
  v22 = 0;
  v4 = [v2 fetchAllWithEntityName:v3 predicate:0 sortDescriptors:0 error:&v22];
  v5 = v22;

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityEventModel);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [v4 count];
      *buf = 134217984;
      v24 = v7;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "Retrieved %lu identifiers from disk.", buf, 0xCu);
    }
  }

  if (v5)
  {
    v8 = 0;
  }

  else
  {
    v9 = [*(a1 + 32) managedObjectContext];
    v10 = +[(NSManagedObject *)RTLOIHistogramItemMO];
    v21 = 0;
    v8 = [v9 fetchAllWithEntityName:v10 predicate:0 sortDescriptors:0 error:&v21];
    v5 = v21;

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v11 = _rt_log_facility_get_os_log(RTLogFacilityEventModel);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = [v8 count];
        *buf = 134217984;
        v24 = v12;
        _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_INFO, "Retrieved %lu histogram items from disk.", buf, 0xCu);
      }
    }

    if (!v5)
    {
      v14 = [*(a1 + 32) learnedLocationManager];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __54__RTEventModelProvider__restoreEventModelWithHandler___block_invoke_124;
      v17[3] = &unk_2788CE2D8;
      v15 = *(a1 + 40);
      v17[4] = *(a1 + 32);
      v20 = v15;
      v18 = v4;
      v8 = v8;
      v19 = v8;
      [v14 fetchRecentLocationsOfInterestWithHandler:v17];

      v5 = 0;
      goto LABEL_15;
    }
  }

  v13 = _rt_log_facility_get_os_log(RTLogFacilityEventModel);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v16 = [v5 description];
    *buf = 138412290;
    v24 = v16;
    _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "Error restoring event model, %@", buf, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
LABEL_15:
}

void __54__RTEventModelProvider__restoreEventModelWithHandler___block_invoke_124(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [a1[4] queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__RTEventModelProvider__restoreEventModelWithHandler___block_invoke_2;
  block[3] = &unk_2788C6800;
  v15 = v6;
  v8 = a1[7];
  v16 = v5;
  v13 = *(a1 + 2);
  v9 = *(&v13 + 1);
  *&v10 = a1[6];
  *(&v10 + 1) = v8;
  v17 = v13;
  v18 = v10;
  v11 = v5;
  v12 = v6;
  dispatch_async(v7, block);
}

void __54__RTEventModelProvider__restoreEventModelWithHandler___block_invoke_2(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = *(*(a1 + 72) + 16);

    v2();
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v3 = _rt_log_facility_get_os_log(RTLogFacilityEventModel);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        v4 = [*(a1 + 40) count];
        v9 = 134217984;
        v10 = v4;
        _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "Fetched %lu LOIs during restore.", &v9, 0xCu);
      }
    }

    v5 = *(a1 + 56);
    v6 = *(a1 + 64);
    v7 = *(a1 + 48);
    v8 = [MEMORY[0x277D01170] locationsOfInterestFromLearnedLocationsOfInterest:*(a1 + 40)];
    [v7 _finishRestoreEventModelWithIdentifiers:v5 histoItems:v6 locationsOfInterest:v8 handler:*(a1 + 72)];
  }
}

- (id)_getLocationOfInterestWithIdentifier:(id)identifier fromArray:(id)array
{
  identifierCopy = identifier;
  arrayCopy = array;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__110;
  v17 = __Block_byref_object_dispose__110;
  v18 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __71__RTEventModelProvider__getLocationOfInterestWithIdentifier_fromArray___block_invoke;
  v10[3] = &unk_2788CE300;
  v7 = identifierCopy;
  v11 = v7;
  v12 = &v13;
  [arrayCopy enumerateObjectsUsingBlock:v10];
  v8 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v8;
}

void __71__RTEventModelProvider__getLocationOfInterestWithIdentifier_fromArray___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  v7 = [v10 identifier];
  v8 = [v7 UUIDString];
  v9 = [v8 isEqualToString:*(a1 + 32)];

  if (v9)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (void)_finishRestoreEventModelWithIdentifiers:(id)identifiers histoItems:(id)items locationsOfInterest:(id)interest handler:(id)handler
{
  v40 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  itemsCopy = items;
  interestCopy = interest;
  handlerCopy = handler;
  v14 = objc_opt_new();
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__110;
  v36 = __Block_byref_object_dispose__110;
  v37 = 0;
  managedObjectContext = [(RTEventModelProvider *)self managedObjectContext];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __103__RTEventModelProvider__finishRestoreEventModelWithIdentifiers_histoItems_locationsOfInterest_handler___block_invoke;
  v26[3] = &unk_2788CE378;
  v16 = identifiersCopy;
  v27 = v16;
  selfCopy = self;
  v17 = interestCopy;
  v29 = v17;
  v31 = &v32;
  v18 = v14;
  v30 = v18;
  [managedObjectContext performBlockAndWait:v26];

  if (v33[5])
  {
    handlerCopy[2](handlerCopy);
  }

  else
  {
    v19 = [RTEventHistogram alloc];
    histogramOptions = [(RTEventModelProvider *)self histogramOptions];
    v21 = [(RTEventHistogram *)v19 initWithDictionary:v18 options:histogramOptions];
    [(RTEventModelProvider *)self setLocationOfInterestEventHistograms:v21];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v22 = _rt_log_facility_get_os_log(RTLogFacilityEventModel);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = [v18 count];
        *buf = 134217984;
        v39 = v23;
        _os_log_impl(&dword_2304B3000, v22, OS_LOG_TYPE_INFO, "Finished restoring event model with %lu identifiers.", buf, 0xCu);
      }

      locationOfInterestEventHistograms = [(RTEventModelProvider *)self locationOfInterestEventHistograms];
      getRawHistogram = [locationOfInterestEventHistograms getRawHistogram];
      [getRawHistogram enumerateKeysAndObjectsUsingBlock:&__block_literal_global_132];
    }

    (handlerCopy[2])(handlerCopy, 0);
  }

  _Block_object_dispose(&v32, 8);
}

void __103__RTEventModelProvider__finishRestoreEventModelWithIdentifiers_histoItems_locationsOfInterest_handler___block_invoke(uint64_t a1)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __103__RTEventModelProvider__finishRestoreEventModelWithIdentifiers_histoItems_locationsOfInterest_handler___block_invoke_2;
  v7[3] = &unk_2788CE350;
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v7[4] = *(a1 + 40);
  v8 = v3;
  v6 = *(a1 + 56);
  v4 = v6;
  v9 = v6;
  [v2 enumerateObjectsUsingBlock:v7];
  v5 = [*(a1 + 40) managedObjectContext];
  [v5 reset];
}

void __103__RTEventModelProvider__finishRestoreEventModelWithIdentifiers_histoItems_locationsOfInterest_handler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [RTEventLocationIdentifier alloc];
  v8 = [v6 name];
  v9 = [v6 source];
  v10 = [v9 integerValue];
  v11 = [v6 calendarIdentifier];
  v12 = [(RTEventLocationIdentifier *)v7 initWithName:v8 source:v10 calendarIdentifier:v11];

  v13 = objc_opt_new();
  v14 = [v6 loiHistogramItems];

  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __103__RTEventModelProvider__finishRestoreEventModelWithIdentifiers_histoItems_locationsOfInterest_handler___block_invoke_3;
  v22 = &unk_2788CE328;
  v15 = *(a1 + 40);
  v23 = *(a1 + 32);
  v16 = v15;
  v17 = *(a1 + 56);
  v24 = v16;
  v26 = v17;
  v18 = v13;
  v25 = v18;
  [v14 enumerateObjectsUsingBlock:&v19];

  if (*(*(*(a1 + 56) + 8) + 40))
  {
    *a4 = 1;
  }

  [v18 sortUsingComparator:{&__block_literal_global_128, v19, v20, v21, v22, v23}];
  [*(a1 + 48) setObject:v18 forKey:v12];
}

void __103__RTEventModelProvider__finishRestoreEventModelWithIdentifiers_histoItems_locationsOfInterest_handler___block_invoke_3(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v6 locationOfInterestIdentifier];
  v18 = [v5 _getLocationOfInterestWithIdentifier:v7 fromArray:*(a1 + 40)];

  if (!v18)
  {
    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01448] code:0 userInfo:0];
    v9 = *(*(a1 + 56) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    *a3 = 1;
  }

  v11 = [RTLOIHistogramItem alloc];
  v12 = [v6 timeOfStay];
  [v12 doubleValue];
  v14 = v13;
  v15 = [v6 numOfEvents];
  v16 = -[RTLOIHistogramItem initWithLocationOfInterest:timeOfStay:andNumOfEvents:](v11, "initWithLocationOfInterest:timeOfStay:andNumOfEvents:", v18, [v15 integerValue], v14);

  v17 = [v6 probability];

  [v17 doubleValue];
  [(RTLOIHistogramItem *)v16 setProbability:?];

  [*(a1 + 48) addObject:v16];
}

uint64_t __103__RTEventModelProvider__finishRestoreEventModelWithIdentifiers_histoItems_locationsOfInterest_handler___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  [v4 probability];
  v7 = v6;
  [v5 probability];
  if (v7 >= v8)
  {
    [v4 probability];
    v11 = v10;
    [v5 probability];
    if (v11 <= v12)
    {
      v9 = 0;
    }

    else
    {
      v9 = -1;
    }
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

void __103__RTEventModelProvider__finishRestoreEventModelWithIdentifiers_histoItems_locationsOfInterest_handler___block_invoke_130(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = v4;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityEventModel);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = 138412546;
      v9 = v6;
      v10 = 2048;
      v11 = [v5 count];
      _os_log_debug_impl(&dword_2304B3000, v7, OS_LOG_TYPE_DEBUG, "%@, possible LOIs, %lu", &v8, 0x16u);
    }
  }

  [v5 enumerateObjectsUsingBlock:&__block_literal_global_135_0];
}

void __103__RTEventModelProvider__finishRestoreEventModelWithIdentifiers_histoItems_locationsOfInterest_handler___block_invoke_133(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityEventModel);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = 134218242;
      v7 = a3 + 1;
      v8 = 2112;
      v9 = v4;
      _os_log_debug_impl(&dword_2304B3000, v5, OS_LOG_TYPE_DEBUG, "possible LOI %lu, %@", &v6, 0x16u);
    }
  }
}

- (void)restoreEventModelIfAppropriate
{
  managedObjectContext = [(RTEventModelProvider *)self managedObjectContext];
  if (managedObjectContext && (v5 = managedObjectContext, [(RTEventModelProvider *)self locationsOfInterestsAvailable]))
  {
    locationOfInterestEventHistograms = [(RTEventModelProvider *)self locationOfInterestEventHistograms];

    if (!locationOfInterestEventHistograms)
    {
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __54__RTEventModelProvider_restoreEventModelIfAppropriate__block_invoke;
      v6[3] = &unk_2788C4730;
      v6[4] = self;
      [(RTEventModelProvider *)self _restoreEventModelWithHandler:v6];
    }
  }

  else
  {

    MEMORY[0x2821F96F8]();
  }
}

void __54__RTEventModelProvider_restoreEventModelIfAppropriate__block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityEventModel);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = [v3 description];
      v6 = 138412290;
      v7 = v5;
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "Error restoring the event model, %@. Compute from scratch.", &v6, 0xCu);
    }

    [*(a1 + 32) _buildLocationOfInterestHistogramWithHandler:0];
  }
}

- (void)persistEventModel
{
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__RTEventModelProvider_persistEventModel__block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)restoreEventModelWithHandler:(id)handler
{
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__RTEventModelProvider_restoreEventModelWithHandler___block_invoke;
  v7[3] = &unk_2788C4938;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

- (void)userInteractionWithPredictedLocationOfInterest:(id)interest interaction:(unint64_t)interaction feedback:(id)feedback mapItem:(id)item handler:(id)handler
{
  interestCopy = interest;
  feedbackCopy = feedback;
  itemCopy = item;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __108__RTEventModelProvider_userInteractionWithPredictedLocationOfInterest_interaction_feedback_mapItem_handler___block_invoke;
  v21[3] = &unk_2788C56E8;
  v22 = interestCopy;
  v23 = feedbackCopy;
  v24 = itemCopy;
  selfCopy = self;
  v26 = handlerCopy;
  interactionCopy = interaction;
  v17 = handlerCopy;
  v18 = itemCopy;
  v19 = feedbackCopy;
  v20 = interestCopy;
  dispatch_async(queue, v21);
}

void __108__RTEventModelProvider_userInteractionWithPredictedLocationOfInterest_interaction_feedback_mapItem_handler___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityEventModel);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 72);
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      v6 = *(a1 + 48);
      *buf = 134218755;
      v15 = v3;
      v16 = 2117;
      v17 = v4;
      v18 = 2112;
      v19 = v5;
      v20 = 2117;
      v21 = v6;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "userInteraction, %lu, PLOI, %{sensitive}@, feedback, %@, mapItem, %{sensitive}@", buf, 0x2Au);
    }
  }

  [*(a1 + 56) _persistUserInteractionWithPredictedLocationOfInterest:*(a1 + 32) interaction:*(a1 + 72) feedback:*(a1 + 40)];
  if (*(a1 + 48))
  {
    v7 = [*(a1 + 56) learnedLocationManager];
    v8 = [*(a1 + 32) locationOfInterest];
    v9 = [v8 identifier];
    v10 = *(a1 + 48);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __108__RTEventModelProvider_userInteractionWithPredictedLocationOfInterest_interaction_feedback_mapItem_handler___block_invoke_137;
    v12[3] = &unk_2788C64B8;
    v13 = *(a1 + 64);
    [v7 updateLocationOfInterestWithIdentifier:v9 mapItem:v10 mapItemSource:264 handler:v12];
  }

  else
  {
    v11 = *(a1 + 64);
    if (v11)
    {
      (*(v11 + 16))(v11, 0);
    }
  }
}

uint64_t __108__RTEventModelProvider_userInteractionWithPredictedLocationOfInterest_interaction_feedback_mapItem_handler___block_invoke_137(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a3);
  }

  return result;
}

- (BOOL)_persistUserInteractionWithPredictedLocationOfInterest:(id)interest interaction:(unint64_t)interaction feedback:(id)feedback
{
  v34 = *MEMORY[0x277D85DE8];
  interestCopy = interest;
  feedbackCopy = feedback;
  managedObjectContext = [(RTEventModelProvider *)self managedObjectContext];

  if (!managedObjectContext)
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilityEventModel);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *v26 = 0;
      _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, "managedObjectContext is nil, not persisting user interaction.", v26, 2u);
    }

    goto LABEL_13;
  }

  locationOfInterest = [interestCopy locationOfInterest];
  identifier = [locationOfInterest identifier];

  if (!identifier)
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilityEventModel);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *v26 = 0;
      _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, "No LOI identifier, not persisting user interaction.", v26, 2u);
    }

LABEL_13:

    v15 = 0;
    goto LABEL_14;
  }

  *v26 = 0;
  v27 = v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__110;
  v30 = __Block_byref_object_dispose__110;
  v31 = 0;
  managedObjectContext2 = [(RTEventModelProvider *)self managedObjectContext];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __100__RTEventModelProvider__persistUserInteractionWithPredictedLocationOfInterest_interaction_feedback___block_invoke;
  v20[3] = &unk_2788CB638;
  v21 = feedbackCopy;
  interactionCopy = interaction;
  v22 = interestCopy;
  selfCopy = self;
  v24 = v26;
  [managedObjectContext2 performBlockAndWait:v20];

  v14 = *(v27 + 5);
  v15 = v14 == 0;
  if (v14)
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityEventModel);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v19 = [*(v27 + 5) description];
      *buf = 138412290;
      v33 = v19;
      _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, "Error persisting user interaction, %@", buf, 0xCu);
    }
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      goto LABEL_7;
    }

    v16 = _rt_log_facility_get_os_log(RTLogFacilityEventModel);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2304B3000, v16, OS_LOG_TYPE_INFO, "Persisted a user interaction.", buf, 2u);
    }
  }

LABEL_7:
  _Block_object_dispose(v26, 8);

LABEL_14:
  return v15;
}

void __100__RTEventModelProvider__persistUserInteractionWithPredictedLocationOfInterest_interaction_feedback___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 64)];
  v4 = [*(a1 + 40) locationOfInterest];
  v5 = [v4 identifier];
  v6 = [v5 UUIDString];
  v7 = [MEMORY[0x277CBEAA8] date];
  v8 = [*(a1 + 48) managedObjectContext];
  v9 = [RTEventModelUserInteractionMO managedObjectWithFeedback:v2 interaction:v3 locationOfInterestIdentifier:v6 date:v7 inManagedObjectContext:v8];

  v10 = [*(a1 + 48) managedObjectContext];
  v11 = *(*(a1 + 56) + 8);
  obj = *(v11 + 40);
  [v10 save:&obj];
  objc_storeStrong((v11 + 40), obj);
}

- (BOOL)_deleteUserInteractionsBeforeDate:(id)date
{
  v33 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  managedObjectContext = [(RTEventModelProvider *)self managedObjectContext];

  if (managedObjectContext)
  {
    *buf = 0;
    v23 = buf;
    v24 = 0x3032000000;
    v25 = __Block_byref_object_copy__110;
    v26 = __Block_byref_object_dispose__110;
    v27 = 0;
    managedObjectContext2 = [(RTEventModelProvider *)self managedObjectContext];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __58__RTEventModelProvider__deleteUserInteractionsBeforeDate___block_invoke_144;
    v18[3] = &unk_2788C51F0;
    v19 = dateCopy;
    selfCopy = self;
    v21 = buf;
    [managedObjectContext2 performBlockAndWait:v18];

    v8 = *(v23 + 5);
    v9 = v8 == 0;
    if (v8)
    {
      v10 = _rt_log_facility_get_os_log(RTLogFacilityEventModel);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v17 = *(v23 + 5);
        *v31 = 138412290;
        v32 = v17;
        _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Error deleting user interactions, %@", v31, 0xCu);
      }
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v11 = _rt_log_facility_get_os_log(RTLogFacilityEventModel);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_INFO, "No managed object context, queuing purge operation.", buf, 2u);
      }
    }

    dispatcher = [(RTEventModelProvider *)self dispatcher];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __58__RTEventModelProvider__deleteUserInteractionsBeforeDate___block_invoke;
    v29[3] = &unk_2788C4A70;
    v29[4] = self;
    v30 = dateCopy;
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __58__RTEventModelProvider__deleteUserInteractionsBeforeDate___block_invoke_2;
    v28[3] = &__block_descriptor_40_e5_v8__0l;
    v28[4] = a2;
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v15 = NSStringFromSelector(a2);
    [dispatcher enqueueBlock:v29 failureBlock:v28 description:{@"%@-%@", v14, v15}];

    v9 = 0;
  }

  return v9;
}

void __58__RTEventModelProvider__deleteUserInteractionsBeforeDate___block_invoke_2(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = _rt_log_facility_get_os_log(RTLogFacilityEventModel);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(*(a1 + 32));
    v4 = 138412290;
    v5 = v3;
    _os_log_error_impl(&dword_2304B3000, v2, OS_LOG_TYPE_ERROR, "failure block invoked for %@", &v4, 0xCu);
  }
}

void __58__RTEventModelProvider__deleteUserInteractionsBeforeDate___block_invoke_144(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(date < %@)", *(a1 + 32)];
  v3 = [*(a1 + 40) managedObjectContext];
  v4 = +[(NSManagedObject *)RTEventModelUserInteractionMO];
  v5 = *(*(a1 + 48) + 8);
  obj = *(v5 + 40);
  [v3 deleteAllWithEntityName:v4 predicate:v2 error:&obj];
  objc_storeStrong((v5 + 40), obj);

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v6 = [*(a1 + 40) managedObjectContext];
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    [v6 save:&v8];
    objc_storeStrong((v7 + 40), v8);
  }
}

- (void)performPurgeOfType:(int64_t)type referenceDate:(id)date completion:(id)completion
{
  dateCopy = date;
  completionCopy = completion;
  queue = [(RTNotifier *)self queue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __68__RTEventModelProvider_performPurgeOfType_referenceDate_completion___block_invoke;
  v13[3] = &unk_2788C4C20;
  v14 = dateCopy;
  selfCopy = self;
  v16 = completionCopy;
  typeCopy = type;
  v11 = completionCopy;
  v12 = dateCopy;
  dispatch_async(queue, v13);
}

void __68__RTEventModelProvider_performPurgeOfType_referenceDate_completion___block_invoke(uint64_t a1)
{
  if (*(a1 + 56) <= 2uLL && (v2 = *(a1 + 32)) != 0)
  {
    v3 = v2;
    [*(a1 + 40) _deleteUserInteractionsBeforeDate:v2];
  }

  else
  {
    v3 = 0;
  }

  (*(*(a1 + 48) + 16))();
}

- (unint64_t)_locationStateOfEvent:(id)event
{
  eventCopy = event;
  if ([eventCopy hasConfirmedSuggestedLocation])
  {
    v5 = 2;
  }

  else if ([eventCopy hasUserSpecifiedLocation])
  {
    v5 = 3;
  }

  else
  {
    v5 = ([eventCopy hasRejectedSuggestion] & 1) == 0 && -[RTEventModelProvider _hasSuggestedLocationForEvent:](self, "_hasSuggestedLocationForEvent:", eventCopy);
  }

  return v5;
}

- (id)_geoLocationOfEvent:(id)event
{
  eventCopy = event;
  preferredLocationWithoutPrediction = [eventCopy preferredLocationWithoutPrediction];
  geoLocation = [preferredLocationWithoutPrediction geoLocation];

  if (geoLocation)
  {
    preferredLocationWithoutPrediction2 = [eventCopy preferredLocationWithoutPrediction];
    geoLocation2 = [preferredLocationWithoutPrediction2 geoLocation];
LABEL_3:

    goto LABEL_8;
  }

  if (([eventCopy hasRejectedSuggestion] & 1) == 0)
  {
    v9 = [(RTEventModelProvider *)self _suggestedLocationForEvent:eventCopy];
    if (v9)
    {
      preferredLocationWithoutPrediction2 = v9;
      v10 = objc_alloc(MEMORY[0x277CE41F8]);
      locationOfInterest = [preferredLocationWithoutPrediction2 locationOfInterest];
      geoLocation2 = [v10 initWithRTLocationOfInterest:locationOfInterest];

      goto LABEL_3;
    }
  }

  geoLocation2 = 0;
LABEL_8:

  return geoLocation2;
}

- (BOOL)_hasSuggestedLocationForEvent:(id)event
{
  v3 = [(RTEventModelProvider *)self _suggestedLocationForEvent:event];
  v4 = v3 != 0;

  return v4;
}

- (id)_suggestedLocationForEvent:(id)event
{
  eventCopy = event;
  if ([eventCopy needsSuggestedLocation])
  {
    locationOfInterestEventHistograms = [(RTEventModelProvider *)self locationOfInterestEventHistograms];
    title = [eventCopy title];
    locationWithoutPrediction = [eventCopy locationWithoutPrediction];
    calendar = [eventCopy calendar];
    calendarIdentifier = [calendar calendarIdentifier];
    v10 = [locationOfInterestEventHistograms predictedLocationsOfInterestAssociatedToTitle:title location:locationWithoutPrediction calendarIdentifier:calendarIdentifier];

    if ([v10 count])
    {
      firstObject = [v10 firstObject];
    }

    else
    {
      firstObject = 0;
    }
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (void)_submitMetricScoreBoardOnDate:(id)date
{
  v10 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  if (!dateCopy)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315394;
      v7 = "[RTEventModelProvider(RTMetricManager) _submitMetricScoreBoardOnDate:]";
      v8 = 1024;
      v9 = 988;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: date (in %s:%d)", &v6, 0x12u);
    }
  }

  [(RTEventModelProvider *)self _submitMetricScoreBoardOnDate:dateCopy submissionHandler:0];
}

- (void)_submitMetricScoreBoardOnDate:(id)date submissionHandler:(id)handler
{
  v15 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  handlerCopy = handler;
  if (!dateCopy)
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315394;
      v12 = "[RTEventModelProvider(RTMetricManager) _submitMetricScoreBoardOnDate:submissionHandler:]";
      v13 = 1024;
      v14 = 995;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: date (in %s:%d)", &v11, 0x12u);
    }
  }

  startOfDay = [dateCopy startOfDay];
  endOfDay = [dateCopy endOfDay];
  [(RTEventModelProvider *)self _submitMetricScoreBoardFromStartDate:startOfDay endDate:endOfDay submissionHandler:handlerCopy];
}

- (void)_submitMetricScoreBoardFromStartDate:(id)date endDate:(id)endDate submissionHandler:(id)handler
{
  v28 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  endDateCopy = endDate;
  handlerCopy = handler;
  if (dateCopy)
  {
    if (endDateCopy)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v25 = "[RTEventModelProvider(RTMetricManager) _submitMetricScoreBoardFromStartDate:endDate:submissionHandler:]";
    v26 = 1024;
    LODWORD(v27) = 1004;
    _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: startDate (in %s:%d)", buf, 0x12u);
  }

  if (!endDateCopy)
  {
LABEL_7:
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v25 = "[RTEventModelProvider(RTMetricManager) _submitMetricScoreBoardFromStartDate:endDate:submissionHandler:]";
      v26 = 1024;
      LODWORD(v27) = 1005;
      _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: endDate (in %s:%d)", buf, 0x12u);
    }
  }

LABEL_10:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityEventModel);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      stringFromDate = [dateCopy stringFromDate];
      stringFromDate2 = [endDateCopy stringFromDate];
      *buf = 138412546;
      v25 = stringFromDate;
      v26 = 2112;
      v27 = stringFromDate2;
      _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_INFO, "LMP ScoreBoardOnDate:%@ - %@", buf, 0x16u);
    }
  }

  metricManager = [(RTEventModelProvider *)self metricManager];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __104__RTEventModelProvider_RTMetricManager___submitMetricScoreBoardFromStartDate_endDate_submissionHandler___block_invoke;
  v20[3] = &unk_2788CE4B8;
  v20[4] = self;
  v21 = dateCopy;
  v22 = endDateCopy;
  v23 = handlerCopy;
  v17 = handlerCopy;
  v18 = endDateCopy;
  v19 = dateCopy;
  [metricManager fetchDiagnosticsEnabled:v20];
}

void __104__RTEventModelProvider_RTMetricManager___submitMetricScoreBoardFromStartDate_endDate_submissionHandler___block_invoke(id *a1, int a2)
{
  v22[1] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = [a1[4] queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __104__RTEventModelProvider_RTMetricManager___submitMetricScoreBoardFromStartDate_endDate_submissionHandler___block_invoke_2;
    block[3] = &unk_2788C5530;
    v15 = *(a1 + 2);
    v4 = *(&v15 + 1);
    v5 = a1[6];
    v6 = a1[7];
    *&v7 = v5;
    *(&v7 + 1) = v6;
    v17 = v15;
    v18 = v7;
    dispatch_async(v3, block);
  }

  else
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"LMP score board: Failed metric submission because Diagnostics and Usage is disabled."];
    v9 = v8;
    v10 = a1[7];
    if (v10)
    {
      v11 = MEMORY[0x277CCA9B8];
      v21 = *MEMORY[0x277CCA450];
      v22[0] = v8;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
      v13 = [v11 errorWithDomain:@"RTMetricManagerErrorDomain" code:5 userInfo:v12];
      v10[2](v10, 0, v13);
    }

    v14 = _rt_log_facility_get_os_log(RTLogFacilityEventModel);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v20 = v9;
      _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }
  }
}

void __104__RTEventModelProvider_RTMetricManager___submitMetricScoreBoardFromStartDate_endDate_submissionHandler___block_invoke_2(uint64_t a1)
{
  v2 = dispatch_group_create();
  dispatch_group_enter(v2);
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3032000000;
  v21[3] = __Block_byref_object_copy__110;
  v21[4] = __Block_byref_object_dispose__110;
  v22 = 0;
  v3 = [*(a1 + 32) eventManager];
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __104__RTEventModelProvider_RTMetricManager___submitMetricScoreBoardFromStartDate_endDate_submissionHandler___block_invoke_3;
  v17[3] = &unk_2788CE3A0;
  v19 = *(a1 + 56);
  v20 = v21;
  v6 = v2;
  v18 = v6;
  [v3 fetchEventsBetweenStartDate:v4 andEndDate:v5 withHandler:v17];

  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __104__RTEventModelProvider_RTMetricManager___submitMetricScoreBoardFromStartDate_endDate_submissionHandler___block_invoke_307;
  block[3] = &unk_2788CE490;
  v16 = v21;
  v12 = *(a1 + 32);
  v8 = *(&v12 + 1);
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  *&v11 = v9;
  *(&v11 + 1) = v10;
  v14 = v12;
  v15 = v11;
  dispatch_group_notify(v6, v7, block);

  _Block_object_dispose(v21, 8);
}

void __104__RTEventModelProvider_RTMetricManager___submitMetricScoreBoardFromStartDate_endDate_submissionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = *(a1 + 40);
    if (v7)
    {
      (*(v7 + 16))(v7, 0, v6);
    }

    v8 = _rt_log_facility_get_os_log(RTLogFacilityEventModel);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412290;
      v13 = v6;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "LMP score board: Error fetching events %@", &v12, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v9 = _rt_log_facility_get_os_log(RTLogFacilityEventModel);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v12 = 134217984;
        v13 = [v5 count];
        _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "LMP score board: Fetched %lu events.", &v12, 0xCu);
      }
    }

    v10 = *(*(a1 + 48) + 8);
    v11 = v5;
    v8 = *(v10 + 40);
    *(v10 + 40) = v11;
  }

  dispatch_group_leave(*(a1 + 32));
}

void __104__RTEventModelProvider_RTMetricManager___submitMetricScoreBoardFromStartDate_endDate_submissionHandler___block_invoke_307(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  if (*(*(*(a1 + 64) + 8) + 40))
  {
    v2 = dispatch_group_create();
    dispatch_group_enter(v2);
    *&buf = 0;
    *(&buf + 1) = &buf;
    v27 = 0x3032000000;
    v28 = __Block_byref_object_copy__110;
    v29 = __Block_byref_object_dispose__110;
    v30 = 0;
    v3 = [*(a1 + 32) learnedLocationManager];
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __104__RTEventModelProvider_RTMetricManager___submitMetricScoreBoardFromStartDate_endDate_submissionHandler___block_invoke_2_308;
    v20[3] = &unk_2788CE3A0;
    v22 = *(a1 + 56);
    p_buf = &buf;
    v6 = v2;
    v21 = v6;
    [v3 fetchLocationsOfInterestVisitedBetweenStartDate:v4 endDate:v5 handler:v20];

    v7 = [*(a1 + 32) queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __104__RTEventModelProvider_RTMetricManager___submitMetricScoreBoardFromStartDate_endDate_submissionHandler___block_invoke_309;
    block[3] = &unk_2788CE468;
    v8 = *(a1 + 32);
    v18 = &buf;
    block[4] = v8;
    v9 = *(a1 + 56);
    v19 = *(a1 + 64);
    v17 = v9;
    dispatch_group_notify(v6, v7, block);

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"LMP score board: event counter is empty"];
    v6 = v10;
    v11 = *(a1 + 56);
    if (v11)
    {
      v12 = MEMORY[0x277CCA9B8];
      v24 = *MEMORY[0x277CCA450];
      v25 = v10;
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
      v14 = [v12 errorWithDomain:@"RTMetricManagerErrorDomain" code:10 userInfo:v13];
      (*(v11 + 16))(v11, 0, v14);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v15 = _rt_log_facility_get_os_log(RTLogFacilityEventModel);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v6;
        _os_log_impl(&dword_2304B3000, v15, OS_LOG_TYPE_INFO, "%@", &buf, 0xCu);
      }
    }
  }
}

void __104__RTEventModelProvider_RTMetricManager___submitMetricScoreBoardFromStartDate_endDate_submissionHandler___block_invoke_2_308(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
  if (v6)
  {
    if (v7)
    {
      v8 = _rt_log_facility_get_os_log(RTLogFacilityEventModel);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v14 = 138412290;
        v15 = v6;
        _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "LMP score, LOI for device: Error fetching LOIs of the device %@", &v14, 0xCu);
      }
    }

    v9 = *(a1 + 40);
    if (v9)
    {
      (*(v9 + 16))(v9, 0, v6);
    }
  }

  else
  {
    if (v7)
    {
      v10 = _rt_log_facility_get_os_log(RTLogFacilityEventModel);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v14 = 134217984;
        v15 = [v5 count];
        _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "LMP score, LOI for device: Fetched %lu LOIs of the device.", &v14, 0xCu);
      }
    }

    v11 = [MEMORY[0x277D01170] locationsOfInterestFromLearnedLocationsOfInterest:v5];
    v12 = *(*(a1 + 48) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
  }

  dispatch_group_leave(*(a1 + 32));
}

void __104__RTEventModelProvider_RTMetricManager___submitMetricScoreBoardFromStartDate_endDate_submissionHandler___block_invoke_309(uint64_t a1)
{
  v51 = *MEMORY[0x277D85DE8];
  if (*(*(*(a1 + 48) + 8) + 40))
  {
    v2 = [*(a1 + 32) lastDateOfLOIVisits:?];
    v3 = objc_opt_new();
    v4 = objc_opt_new();
    v5 = *(*(*(a1 + 56) + 8) + 40);
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __104__RTEventModelProvider_RTMetricManager___submitMetricScoreBoardFromStartDate_endDate_submissionHandler___block_invoke_2_312;
    v41[3] = &unk_2788CE418;
    v6 = *(a1 + 32);
    v45 = *(a1 + 48);
    v41[4] = v6;
    v33 = v2;
    v42 = v33;
    v7 = v3;
    v43 = v7;
    v8 = v4;
    v44 = v8;
    [v5 enumerateObjectsUsingBlock:v41];
    v30 = v8;
    v31 = a1;
    v32 = v7;
    v9 = [*(a1 + 32) _createMetricFromEventCounter:v8 categories:v7];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v37 objects:v50 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v38;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v38 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v37 + 1) + 8 * i);
          v15 = objc_alloc(MEMORY[0x277CCACA8]);
          v16 = [v15 initWithCString:RTAnalyticsEventLearnedMeeting encoding:1];
          log_analytics_submission(v16, v14);
          v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.%@", v16];
          AnalyticsSendEvent();
        }

        v11 = [v9 countByEnumeratingWithState:&v37 objects:v50 count:16];
      }

      while (v11);
    }

    v18 = v32;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v19 = _rt_log_facility_get_os_log(RTLogFacilityEventModel);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = [v32 count];
        *buf = 134217984;
        v49 = v20;
        _os_log_impl(&dword_2304B3000, v19, OS_LOG_TYPE_INFO, "LMP score board: metric is submitted. (%lu)", buf, 0xCu);
      }
    }

    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __104__RTEventModelProvider_RTMetricManager___submitMetricScoreBoardFromStartDate_endDate_submissionHandler___block_invoke_319;
    v34[3] = &unk_2788CE440;
    v21 = v30;
    v22 = *(v31 + 32);
    v35 = v21;
    v36 = v22;
    [v32 enumerateObjectsUsingBlock:v34];
    v23 = *(v31 + 40);
    if (v23)
    {
      (*(v23 + 16))(v23, v9, 0);
    }

    v24 = v33;
LABEL_16:

    goto LABEL_17;
  }

  v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"LMP score board: Location is not available"];
  v24 = v25;
  v26 = *(a1 + 40);
  if (v26)
  {
    v27 = MEMORY[0x277CCA9B8];
    v46 = *MEMORY[0x277CCA450];
    v47 = v25;
    v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
    v29 = [v27 errorWithDomain:@"RTMetricManagerErrorDomain" code:10 userInfo:v28];
    (*(v26 + 16))(v26, 0, v29);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityEventModel);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v49 = v24;
      _os_log_impl(&dword_2304B3000, v18, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
    }

    goto LABEL_16;
  }

LABEL_17:
}

void __104__RTEventModelProvider_RTMetricManager___submitMetricScoreBoardFromStartDate_endDate_submissionHandler___block_invoke_2_312(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 isAllDay] & 1) == 0)
  {
    v4 = MEMORY[0x277CCAC30];
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = __104__RTEventModelProvider_RTMetricManager___submitMetricScoreBoardFromStartDate_endDate_submissionHandler___block_invoke_3_313;
    v50[3] = &unk_2788CE3F0;
    v5 = v3;
    v51 = v5;
    v49 = [v4 predicateWithBlock:v50];
    v6 = [*(*(*(a1 + 64) + 8) + 40) filteredArrayUsingPredicate:?];
    v7 = [*(a1 + 32) _geoLocationOfEvent:v5];
    v8 = [*(a1 + 32) _locationStateOfEvent:v5];
    v47 = v7;
    v48 = v6;
    v9 = [*(a1 + 32) verifyPresenceOfUserWithEventLocation:v7 deviceLOIs:v6];
    v10 = [v5 startDate];
    v11 = [v5 endDate];

    if (v11)
    {
      v12 = [v5 endDate];

      v10 = v12;
    }

    v46 = v10;
    v13 = [*(a1 + 40) compare:v10];
    if (v9)
    {
      v14 = 0;
    }

    else
    {
      v14 = v13 == -1;
    }

    if (v14)
    {
      v15 = 3;
    }

    else
    {
      v15 = v9;
    }

    v16 = [*(a1 + 32) categoryForLocationState:v8 ttlTrigggerd:{objc_msgSend(v5, "hasTTLBeenTriggered")}];
    v17 = [*(a1 + 32) keywordForCategory:v16 visited:v15];
    [*(a1 + 48) addObject:v16];
    v45 = v17;
    [*(a1 + 56) addObject:v17];
    if ([v5 hasRejectedSuggestion])
    {
      v18 = [*(a1 + 32) categoryForLocationState:4 ttlTrigggerd:{objc_msgSend(v5, "hasTTLBeenTriggered")}];
      [*(a1 + 48) addObject:v18];
      v19 = *(a1 + 56);
      v20 = [*(a1 + 32) keywordForCategory:v18 visited:v15];
      [v19 addObject:v20];
    }

    if (v8 == 1)
    {
      v21 = [v5 locationWithoutPrediction];
      if (v21)
      {
        v22 = v21;
        v23 = [v5 locationWithoutPrediction];
        v24 = [v23 length];

        if (v24)
        {
          v25 = 1;
        }

        else
        {
          v25 = 2;
        }
      }

      else
      {
        v25 = 2;
      }

      v26 = [*(a1 + 32) appendFieldToCategoryString:v16 field:@"MODEL" value:v25];
      [*(a1 + 48) addObject:v26];
      v27 = *(a1 + 56);
      v28 = [*(a1 + 32) keywordForCategory:v26 visited:v15];
      [v27 addObject:v28];
    }

    v29 = [*(a1 + 32) appendFieldToCategoryString:v16 field:@"LENGTH" value:{objc_msgSend(*(a1 + 32), "lengthOfEvent:", v5)}];
    [*(a1 + 48) addObject:v29];
    v30 = *(a1 + 56);
    v31 = [*(a1 + 32) keywordForCategory:v29 visited:v15];
    [v30 addObject:v31];

    v32 = [*(a1 + 32) appendFieldToCategoryString:v16 field:@"TOD" value:{objc_msgSend(*(a1 + 32), "timeOfDayOfEvent:", v5)}];
    [*(a1 + 48) addObject:v32];
    v33 = *(a1 + 56);
    v34 = [*(a1 + 32) keywordForCategory:v32 visited:v15];
    [v33 addObject:v34];

    if (v8 != 1)
    {
      goto LABEL_28;
    }

    v35 = [*(a1 + 32) _suggestedLocationForEvent:v5];
    v36 = v35;
    if (!v35)
    {
LABEL_27:

LABEL_28:
      goto LABEL_29;
    }

    v37 = [v35 locationOfInterest];
    if ([v37 type])
    {
      v38 = [v36 locationOfInterest];
      v39 = [v38 type];

      if (v39 != 1)
      {
        v40 = -1;
LABEL_26:
        v42 = [*(a1 + 32) appendFieldToCategoryString:v16 field:@"TYPE" value:v40];
        [*(a1 + 48) addObject:v42];
        v43 = *(a1 + 56);
        v44 = [*(a1 + 32) keywordForCategory:v42 visited:v15];
        [v43 addObject:v44];

        goto LABEL_27;
      }
    }

    else
    {
    }

    v41 = [v36 locationOfInterest];
    v40 = [v41 type];

    goto LABEL_26;
  }

LABEL_29:
}

uint64_t __104__RTEventModelProvider_RTMetricManager___submitMetricScoreBoardFromStartDate_endDate_submissionHandler___block_invoke_3_313(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v7 = [v5 visits];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __104__RTEventModelProvider_RTMetricManager___submitMetricScoreBoardFromStartDate_endDate_submissionHandler___block_invoke_4;
  v10[3] = &unk_2788CE3C8;
  v11 = *(a1 + 32);
  v12 = &v13;
  [v7 enumerateObjectsUsingBlock:v10];

  v8 = *(v14 + 24);
  _Block_object_dispose(&v13, 8);

  return v8;
}

void __104__RTEventModelProvider_RTMetricManager___submitMetricScoreBoardFromStartDate_endDate_submissionHandler___block_invoke_4(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [v6 entryDate];
  v8 = [*(a1 + 32) startDate];
  v13 = [v7 laterDate:v8];

  v9 = [v6 exitDate];

  v10 = [*(a1 + 32) endDate];
  v11 = [v9 earlierDate:v10];

  [v11 timeIntervalSinceDate:v13];
  if (v12 > 0.0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }
}

void __104__RTEventModelProvider_RTMetricManager___submitMetricScoreBoardFromStartDate_endDate_submissionHandler___block_invoke_319(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityEventModel);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 32);
      v6 = [*(a1 + 40) keywordForCategory:v3 visited:1];
      v7 = [v5 countForObject:v6];
      v8 = *(a1 + 32);
      v9 = [*(a1 + 40) keywordForCategory:v3 visited:2];
      v10 = [v8 countForObject:v9];
      v11 = *(a1 + 32);
      v12 = [*(a1 + 40) keywordForCategory:v3 visited:0];
      LODWORD(v11) = [v11 countForObject:v12];
      v13 = *(a1 + 32);
      v14 = [*(a1 + 40) keywordForCategory:v3 visited:3];
      v15 = 138413314;
      v16 = v3;
      v17 = 1024;
      v18 = v7;
      v19 = 1024;
      v20 = v10;
      v21 = 1024;
      v22 = v11;
      v23 = 1024;
      v24 = [v13 countForObject:v14];
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "LMP score board: (%@: corrects=%d, incorrects=%d, unknowns=%d, invalid=%d)", &v15, 0x24u);
    }
  }
}

- (id)lastDateOfLOIVisits:(id)visits
{
  v31 = *MEMORY[0x277D85DE8];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = visits;
  v3 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v20 = *v26;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v26 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v25 + 1) + 8 * i);
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        visits = [v7 visits];
        v9 = [visits countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v22;
          do
          {
            for (j = 0; j != v10; ++j)
            {
              if (*v22 != v11)
              {
                objc_enumerationMutation(visits);
              }

              v13 = *(*(&v21 + 1) + 8 * j);
              entryDate = [v13 entryDate];
              exitDate = [v13 exitDate];

              if (exitDate)
              {
                exitDate2 = [v13 exitDate];

                entryDate = exitDate2;
              }

              if (!v5 || [entryDate compare:v5] == 1)
              {
                v17 = entryDate;

                v5 = v17;
              }
            }

            v10 = [visits countByEnumeratingWithState:&v21 objects:v29 count:16];
          }

          while (v10);
        }
      }

      v4 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)lengthOfEvent:(id)event
{
  eventCopy = event;
  endDate = [eventCopy endDate];
  startDate = [eventCopy startDate];

  [endDate timeIntervalSinceDate:startDate];
  v7 = v6;

  if (v7 < 900.0)
  {
    return 0;
  }

  if (v7 < 1800.0)
  {
    return 1;
  }

  if (v7 < 2700.0)
  {
    return 2;
  }

  if (v7 < 3600.0)
  {
    return 3;
  }

  if (v7 >= 7200.0)
  {
    return 5;
  }

  return 4;
}

- (unint64_t)timeOfDayOfEvent:(id)event
{
  startDate = [event startDate];
  hour = [startDate hour];

  v5 = 1;
  if (hour > 18)
  {
    v5 = 2;
  }

  if (hour >= 8)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

- (id)_createMetricFromEventCounter:(id)counter categories:(id)categories
{
  v25 = *MEMORY[0x277D85DE8];
  counterCopy = counter;
  categoriesCopy = categories;
  v8 = categoriesCopy;
  if (counterCopy)
  {
    if (categoriesCopy)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v22 = "[RTEventModelProvider(RTMetricManager) _createMetricFromEventCounter:categories:]";
    v23 = 1024;
    v24 = 1259;
    _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: eventCounter (in %s:%d)", buf, 0x12u);
  }

  if (!v8)
  {
LABEL_7:
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v22 = "[RTEventModelProvider(RTMetricManager) _createMetricFromEventCounter:categories:]";
      v23 = 1024;
      v24 = 1260;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: categories (in %s:%d)", buf, 0x12u);
    }
  }

LABEL_10:
  v11 = objc_opt_new();
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __82__RTEventModelProvider_RTMetricManager___createMetricFromEventCounter_categories___block_invoke;
  v17[3] = &unk_2788CE4E0;
  v18 = counterCopy;
  selfCopy = self;
  v12 = v11;
  v20 = v12;
  v13 = counterCopy;
  [v8 enumerateObjectsUsingBlock:v17];
  v14 = v20;
  v15 = v12;

  return v12;
}

void __82__RTEventModelProvider_RTMetricManager___createMetricFromEventCounter_categories___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v22 = objc_opt_new();
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) keywordForCategory:v3 visited:1];
  v6 = [v4 countForObject:v5];

  v7 = *(a1 + 32);
  v8 = [*(a1 + 40) keywordForCategory:v3 visited:2];
  v9 = [v7 countForObject:v8];

  v10 = *(a1 + 32);
  v11 = [*(a1 + 40) keywordForCategory:v3 visited:0];
  v12 = [v10 countForObject:v11];

  v13 = *(a1 + 32);
  v14 = [*(a1 + 40) keywordForCategory:v3 visited:3];
  v15 = [v13 countForObject:v14];

  v16 = [v3 copy];
  [v22 setObject:v16 forKeyedSubscript:@"keyword"];

  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v6];
  [v22 setObject:v17 forKeyedSubscript:@"corrects"];

  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v9];
  [v22 setObject:v18 forKeyedSubscript:@"incorrects"];

  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v12];
  [v22 setObject:v19 forKeyedSubscript:@"unknown"];

  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v15];
  [v22 setObject:v20 forKeyedSubscript:@"invalids"];

  if (v9 + v6)
  {
    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v6 / (v9 + v6)];
    [v22 setObject:v21 forKeyedSubscript:@"precision"];
  }

  [*(a1 + 48) addObject:v22];
}

- (id)categoryForLocationState:(unint64_t)state ttlTrigggerd:(BOOL)trigggerd
{
  trigggerdCopy = trigggerd;
  v6 = [(RTEventModelProvider *)self appendFieldToCategoryString:0 field:@"LOC" value:state];
  v7 = [(RTEventModelProvider *)self appendFieldToCategoryString:v6 field:@"TTL" value:trigggerdCopy];

  return v7;
}

- (id)appendFieldToCategoryString:(id)string field:(id)field value:(int64_t)value
{
  v18 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  fieldCopy = field;
  if (fieldCopy)
  {
    if (!stringCopy)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v15 = "[RTEventModelProvider(RTMetricManager) appendFieldToCategoryString:field:value:]";
      v16 = 1024;
      v17 = 1302;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: field (in %s:%d)", buf, 0x12u);
    }

    if (!stringCopy)
    {
LABEL_10:

      stringCopy = &stru_284528390;
      v10 = &stru_284528390;
      if (!fieldCopy)
      {
        goto LABEL_13;
      }

      goto LABEL_11;
    }
  }

  if (![(__CFString *)stringCopy length])
  {
    goto LABEL_10;
  }

  v10 = @",";
  if (!fieldCopy)
  {
    goto LABEL_13;
  }

LABEL_11:
  if ([fieldCopy length])
  {
    value = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@%@%@=%ld", stringCopy, v10, fieldCopy, value];
    goto LABEL_14;
  }

LABEL_13:
  value = stringCopy;
LABEL_14:
  v12 = value;

  return v12;
}

- (unint64_t)verifyPresenceOfUserWithEventLocation:(id)location deviceLOIs:(id)is
{
  locationCopy = location;
  isCopy = is;
  if ([isCopy count])
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v7 = 2;
    v17 = 2;
    if (locationCopy)
    {
      v8 = [objc_alloc(MEMORY[0x277D01160]) initWithCLLocation:locationCopy];
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __90__RTEventModelProvider_RTMetricManager__verifyPresenceOfUserWithEventLocation_deviceLOIs___block_invoke;
      v11[3] = &unk_2788CE300;
      v9 = v8;
      v12 = v9;
      v13 = &v14;
      [isCopy enumerateObjectsUsingBlock:v11];
      v7 = v15[3];
    }

    _Block_object_dispose(&v14, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __90__RTEventModelProvider_RTMetricManager__verifyPresenceOfUserWithEventLocation_deviceLOIs___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = objc_alloc(MEMORY[0x277D01160]);
  v8 = [v6 location];
  [v8 latitude];
  v10 = v9;
  v11 = [v6 location];
  [v11 longitude];
  v13 = v12;
  v14 = [v6 location];
  [v14 horizontalUncertainty];
  v16 = v15;
  v17 = [v6 location];
  [v17 altitude];
  v19 = v18;
  v20 = [v6 location];
  [v20 verticalUncertainty];
  v22 = [v7 initWithLatitude:0 longitude:0 horizontalUncertainty:v10 altitude:v13 verticalUncertainty:v16 date:v19 referenceFrame:v21 speed:0.0];

  v23 = objc_opt_new();
  v24 = *(a1 + 32);
  v34 = 0;
  [v23 distanceFromLocation:v24 toLocation:v22 error:&v34];
  v26 = v25;
  v27 = v34;
  if (v27)
  {
    v28 = _rt_log_facility_get_os_log(RTLogFacilityEventModel);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *v33 = 0;
      _os_log_error_impl(&dword_2304B3000, v28, OS_LOG_TYPE_ERROR, "Error computing distance in metrics, unable to verify user presence", v33, 2u);
    }

    *(*(*(a1 + 40) + 8) + 24) = 3;
  }

  v29 = [v6 location];
  [v29 horizontalUncertainty];
  v31 = v30;

  v32 = 100.0;
  if (v31 >= 100.0)
  {
    v32 = v31;
  }

  if (v26 < v32)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }
}

- (void)onDailyMetricNotification:(id)notification
{
  notificationCopy = notification;
  queue = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__RTEventModelProvider_RTMetricManager__onDailyMetricNotification___block_invoke;
  v7[3] = &unk_2788C4A70;
  v8 = notificationCopy;
  selfCopy = self;
  v6 = notificationCopy;
  dispatch_async(queue, v7);
}

void __67__RTEventModelProvider_RTMetricManager__onDailyMetricNotification___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) name];
  v3 = [v2 isEqualToString:@"RTMetricManagerDailyMetricNotification"];

  if ((v3 & 1) == 0)
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v10 = [*(a1 + 32) name];
      v12 = 138412802;
      v13 = v10;
      v14 = 2080;
      v15 = "[RTEventModelProvider(RTMetricManager) onDailyMetricNotification:]_block_invoke";
      v16 = 1024;
      v17 = 1363;
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "unknown notification name, %@ (in %s:%d)", &v12, 0x1Cu);
    }
  }

  v5 = [*(a1 + 32) name];
  v6 = [v5 isEqualToString:@"RTMetricManagerDailyMetricNotification"];

  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v7 = _rt_log_facility_get_os_log(RTLogFacilityEventModel);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v12) = 0;
        _os_log_debug_impl(&dword_2304B3000, v7, OS_LOG_TYPE_DEBUG, "LMP, a ScoreBoard metric is requested.", &v12, 2u);
      }
    }

    v8 = [MEMORY[0x277CBEAA8] date];
    v9 = [v8 dateByAddingTimeInterval:-86400.0];

    [*(a1 + 40) _submitMetricScoreBoardOnDate:v9];
  }

  else
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = [*(a1 + 32) name];
      v12 = 138412290;
      v13 = v11;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "unknown notification name, %@", &v12, 0xCu);
    }
  }
}

@end