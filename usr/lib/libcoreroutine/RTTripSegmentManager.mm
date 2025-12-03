@interface RTTripSegmentManager
+ (id)uuidForTripSegmentOfType:(int64_t)type;
+ (int64_t)translateModeOfTransport:(int64_t)transport;
+ (int64_t)tripSegmentUUIDTypeFromUUID:(id)d;
- (BOOL)_applyElevationAdjustmentToReconstructedRoute;
- (BOOL)_areRoadTransitionsSame:(id)same toRoadTransitions:(id)transitions;
- (BOOL)_areRoadsConnected:(id)connected toRoadTransitions:(id)transitions;
- (BOOL)_checkForValidAltitudeSpeedAccuracyDefault;
- (BOOL)_checkIsTripSegmentGenerationEnabled;
- (BOOL)_favorNewerLocationsOverOlderLocationsForTripSegmentUnderConstruction;
- (BOOL)_generateDiagnosticFilesAtURL:(id)l error:(id *)error;
- (BOOL)isOKToAddTripSegmentdata:(id)segmentdata;
- (BOOL)isSpeedValidityCheckingEnabled;
- (BOOL)isValidSynthesizedLocation:(id)location;
- (BOOL)purgeUsedTripSegmentLocations;
- (RTTripSegmentManager)initWithTripSegmentStore:(id)store synthesizedLocationStore:(id)locationStore defaultsManager:(id)manager elevationAdjuster:(id)adjuster learnedLocationStore:(id)learnedLocationStore distanceCalculator:(id)calculator geoRoadDataStore:(id)dataStore tripSegmentRoadTransitionsStore:(id)self0;
- (id)_getPurgePolicyOverrideDaysToPersistTripSegmentData:(id)data;
- (id)fetchDownsamplingLevelAnnotationForLocations:(id)locations;
- (id)getLocationsForTripSegment:(id)segment withCount:(int)count;
- (id)getPreferredNameForLocation:(id)location isStartOfTripSegment:(BOOL)segment;
- (id)getTripSegmentsWithOptions:(id)options;
- (int)getLocationsCountForTripSegmentWithOptions:(id)options;
- (int)getValueForDaysToKeepTripSegmentLocationData;
- (void)_addTripSegmentDataWithIdentifier:(id)identifier dateInterval:(id)interval tripDistance:(double)distance tripDistanceUncertainty:(double)uncertainty modeOfTransportation:(int64_t)transportation locations:(id)locations roads:(id)roads isEndOfSegment:(BOOL)self0 originLocation:(id)self1 destinationLocation:(id)self2 tripSegSequenceNumber:(int)self3 tripSegSequenceNumberMax:(int)self4 tripCommuteID:(id)self5 handler:(id)self6;
- (void)_addTripSegmentRoadTransitions:(id)transitions tripSegmentId:(id)id isStartOfNewTripSegment:(BOOL)segment;
- (void)_deleteTripSegmentWithUUID:(id)d handler:(id)handler;
- (void)_fetchLocationsCountForTripSegmentWithOptions:(id)options handler:(id)handler;
- (void)_fetchLocationsForTripSegmentWithOptions:(id)options handler:(id)handler;
- (void)_fetchTripSegmentMetadataWithOptions:(id)options handler:(id)handler;
- (void)_fetchTripSegmentsWithOptions:(id)options handler:(id)handler;
- (void)_purgeTripSegmentsOnDateInterval:(id)interval handler:(id)handler;
- (void)_sanitizeTripSegmentDatabaseSinceDate:(id)date handler:(id)handler;
- (void)_setup;
- (void)_tripSegmentExistsForDateInterval:(id)interval ignoreTemporary:(BOOL)temporary handler:(id)handler;
- (void)_verifyAndReconcileTripSegmentRoadTransitionsArray:(id)array startDateOfConstructedTripSegment:(id)segment;
- (void)addLocationsToStore:(id)store handler:(id)handler;
- (void)addTripSegmentData:(id)data isEndOfSegment:(BOOL)segment originLocation:(id)location destinationLocation:(id)destinationLocation tripSegSequenceNumber:(int)number tripSegSequenceNumberMax:(int)max tripCommuteID:(id)d handler:(id)self0;
- (void)addTripSegmentDataWithIdentifier:(id)identifier dateInterval:(id)interval tripDistance:(double)distance tripDistanceUncertainty:(double)uncertainty modeOfTransportation:(int64_t)transportation locations:(id)locations roads:(id)roads isEndOfSegment:(BOOL)self0 originLocation:(id)self1 destinationLocation:(id)self2 tripSegSequenceNumber:(int)self3 tripSegSequenceNumberMax:(int)self4 tripCommuteID:(id)self5 handler:(id)self6;
- (void)deleteTripSegmentWithUUID:(id)d handler:(id)handler;
- (void)fetchLocationsCountForTripSegmentWithOptions:(id)options handler:(id)handler;
- (void)fetchLocationsForTripSegmentWithOptions:(id)options handler:(id)handler;
- (void)fetchTripSegmentMetadataWithOptions:(id)options handler:(id)handler;
- (void)fetchTripSegmentsWithOptions:(id)options handler:(id)handler;
- (void)performPurgeOfType:(int64_t)type referenceDate:(id)date completion:(id)completion;
- (void)purgeTripSegmentsOnDateInterval:(id)interval handler:(id)handler;
- (void)purgeTripSegmentsPredating:(id)predating handler:(id)handler;
- (void)sanitizeTripSegmentDatabaseSinceDate:(id)date handler:(id)handler;
- (void)sendDiagnosticsToURL:(id)l options:(id)options handler:(id)handler;
- (void)tripSegmentExistsForDateInterval:(id)interval handler:(id)handler;
- (void)tripSegmentExistsForDateInterval:(id)interval ignoreTemporary:(BOOL)temporary handler:(id)handler;
@end

@implementation RTTripSegmentManager

- (RTTripSegmentManager)initWithTripSegmentStore:(id)store synthesizedLocationStore:(id)locationStore defaultsManager:(id)manager elevationAdjuster:(id)adjuster learnedLocationStore:(id)learnedLocationStore distanceCalculator:(id)calculator geoRoadDataStore:(id)dataStore tripSegmentRoadTransitionsStore:(id)self0
{
  storeCopy = store;
  locationStoreCopy = locationStore;
  managerCopy = manager;
  adjusterCopy = adjuster;
  learnedLocationStoreCopy = learnedLocationStore;
  calculatorCopy = calculator;
  dataStoreCopy = dataStore;
  transitionsStoreCopy = transitionsStore;
  v33 = transitionsStoreCopy;
  if (!storeCopy)
  {
    v29 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

    *buf = 0;
    v30 = "Invalid parameter not satisfying: tripSegmentStore";
LABEL_28:
    _os_log_error_impl(&dword_2304B3000, v29, OS_LOG_TYPE_ERROR, v30, buf, 2u);
    goto LABEL_29;
  }

  if (!locationStoreCopy)
  {
    v29 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

    *buf = 0;
    v30 = "Invalid parameter not satisfying: synthesizedLocationStore";
    goto LABEL_28;
  }

  if (!managerCopy)
  {
    v29 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

    *buf = 0;
    v30 = "Invalid parameter not satisfying: defaultsManager";
    goto LABEL_28;
  }

  if (!learnedLocationStoreCopy)
  {
    v29 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

    *buf = 0;
    v30 = "Invalid parameter not satisfying: learnedLocationStore";
    goto LABEL_28;
  }

  if (!calculatorCopy)
  {
    v29 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

    *buf = 0;
    v30 = "Invalid parameter not satisfying: distanceCalculator";
    goto LABEL_28;
  }

  if (!dataStoreCopy)
  {
    v29 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_29;
    }

    *buf = 0;
    v30 = "Invalid parameter not satisfying: geoRoadDataStore";
    goto LABEL_28;
  }

  if (!transitionsStoreCopy)
  {
    v29 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v30 = "Invalid parameter not satisfying: tripSegmentRoadTransitionsStore";
      goto LABEL_28;
    }

LABEL_29:

    v28 = 0;
    selfCopy = self;
    goto LABEL_30;
  }

  v39.receiver = self;
  v39.super_class = RTTripSegmentManager;
  v19 = [(RTNotifier *)&v39 init];
  v20 = v19;
  if (v19)
  {
    storeCopy2 = store;
    v22 = v19;
    objc_storeStrong(&v19->_tripSegmentStore, storeCopy2);
    objc_storeStrong(&v22->_locationStore, locationStore);
    objc_storeStrong(&v22->_defaultsManager, manager);
    objc_storeStrong(&v22->_elevationAdjuster, adjuster);
    objc_storeStrong(&v22->_learnedLocationStore, learnedLocationStore);
    objc_storeStrong(&v22->_distanceCalculator, calculator);
    tripSegmentUnderConstruction = v22->_tripSegmentUnderConstruction;
    v22->_tripSegmentUnderConstruction = 0;

    tripSegmentUnderConstructionLastLocationTimestamp = v22->_tripSegmentUnderConstructionLastLocationTimestamp;
    v22->_tripSegmentUnderConstructionLastLocationTimestamp = 0;

    objc_storeStrong(&v22->_geoRoadDataStore, dataStore);
    objc_storeStrong(&v22->_tripSegmentRoadTransitionsStore, transitionsStore);
    [(RTService *)v22 setup];
    v25 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
    v20 = v22;
    if (v25)
    {
      v26 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_2304B3000, v26, OS_LOG_TYPE_DEBUG, "RTTripSegmentManager successfully initialized.", buf, 2u);
      }

      v20 = v22;
    }
  }

  selfCopy = v20;
  v28 = selfCopy;
LABEL_30:

  return v28;
}

- (void)_setup
{
  self->_isTripSegmentGenerationEnabled = [(RTTripSegmentManager *)self _checkIsTripSegmentGenerationEnabled];
  self->_tripSegmentUnderConstructionFavorNewerLocationsOverOlderLocations = [(RTTripSegmentManager *)self _favorNewerLocationsOverOlderLocationsForTripSegmentUnderConstruction];
  self->_checkForValidAltitudeSpeedAccuracy = [(RTTripSegmentManager *)self _checkForValidAltitudeSpeedAccuracyDefault];
}

- (BOOL)_checkIsTripSegmentGenerationEnabled
{
  defaultsManager = [(RTTripSegmentManager *)self defaultsManager];
  v3 = [defaultsManager objectForKey:@"RTDefaultsTripSegmentGenerationEnabled"];

  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = _os_feature_enabled_impl();
  }

  v5 = bOOLValue;

  return v5;
}

- (BOOL)_favorNewerLocationsOverOlderLocationsForTripSegmentUnderConstruction
{
  defaultsManager = [(RTTripSegmentManager *)self defaultsManager];
  v3 = [defaultsManager objectForKey:@"RTDefaultsTripSegmentFavorNewerLocationsOverOlderLocations"];

  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (BOOL)_checkForValidAltitudeSpeedAccuracyDefault
{
  defaultsManager = [(RTTripSegmentManager *)self defaultsManager];
  v3 = [defaultsManager objectForKey:@"RTDefaultsTripSegmentCheckSynthesizedLocationsForAltitudeSpeedAccuracy"];

  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

+ (id)uuidForTripSegmentOfType:(int64_t)type
{
  v17 = *MEMORY[0x277D85DE8];
  if (type == 1)
  {
    v4 = objc_alloc(MEMORY[0x277CCAD78]);
    v5 = objc_alloc_init(MEMORY[0x277CCAD78]);
    uUIDString = [v5 UUIDString];
    v7 = [uUIDString substringFromIndex:{objc_msgSend(@"00000000", "length")}];
    v8 = [@"00000000" stringByAppendingString:v7];
    v9 = [v4 initWithUUIDString:v8];
  }

  else
  {
    v9 = objc_alloc_init(MEMORY[0x277CCAD78]);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      uUIDString2 = [v9 UUIDString];
      v13 = 134218242;
      typeCopy = type;
      v15 = 2112;
      v16 = uUIDString2;
      _os_log_debug_impl(&dword_2304B3000, v10, OS_LOG_TYPE_DEBUG, "RTTripSegmentManager:uuidForTripSegmentOfType, type, %lu, UUID, %@", &v13, 0x16u);
    }
  }

  return v9;
}

+ (int64_t)tripSegmentUUIDTypeFromUUID:(id)d
{
  uUIDString = [d UUIDString];
  v4 = [uUIDString substringToIndex:{objc_msgSend(@"00000000", "length")}];
  v5 = [v4 isEqualToString:@"00000000"];

  return v5;
}

- (void)_fetchTripSegmentsWithOptions:(id)options handler:(id)handler
{
  optionsCopy = options;
  handlerCopy = handler;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *v10 = 0;
      _os_log_debug_impl(&dword_2304B3000, v8, OS_LOG_TYPE_DEBUG, "RTTripSegmentManager: invoking tripSegmentStore _fetchTripSegmentsWithOptions", v10, 2u);
    }
  }

  tripSegmentStore = [(RTTripSegmentManager *)self tripSegmentStore];
  [tripSegmentStore fetchTripSegmentsWithOptions:optionsCopy handler:handlerCopy];
}

- (void)fetchTripSegmentsWithOptions:(id)options handler:(id)handler
{
  v21 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  handlerCopy = handler;
  v8 = handlerCopy;
  if (optionsCopy)
  {
    if (handlerCopy)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v18 = "[RTTripSegmentManager fetchTripSegmentsWithOptions:handler:]";
    v19 = 1024;
    v20 = 185;
    _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: options (in %s:%d)", buf, 0x12u);
  }

  if (!v8)
  {
LABEL_7:
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "[RTTripSegmentManager fetchTripSegmentsWithOptions:handler:]";
      v19 = 1024;
      v20 = 186;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

LABEL_10:
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__RTTripSegmentManager_fetchTripSegmentsWithOptions_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v15 = optionsCopy;
  v16 = v8;
  v12 = v8;
  v13 = optionsCopy;
  dispatch_async(queue, block);
}

- (id)getTripSegmentsWithOptions:(id)options
{
  optionsCopy = options;
  tripSegmentStore = [(RTTripSegmentManager *)self tripSegmentStore];
  v6 = [tripSegmentStore getTripSegmentsWithOptions:optionsCopy];

  return v6;
}

- (void)_fetchLocationsCountForTripSegmentWithOptions:(id)options handler:(id)handler
{
  optionsCopy = options;
  handlerCopy = handler;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *v16 = 0;
      _os_log_debug_impl(&dword_2304B3000, v8, OS_LOG_TYPE_DEBUG, "RTTripSegmentManager: invoking tripSegmentStore _fetchLocationsCountForTripSegmentWithOptions", v16, 2u);
    }
  }

  v9 = objc_alloc(MEMORY[0x277D01350]);
  dateInterval = [optionsCopy dateInterval];
  preferredDownsamplingLevel = [optionsCopy preferredDownsamplingLevel];
  batchSize = [optionsCopy batchSize];
  boundingBoxLocation = [optionsCopy boundingBoxLocation];
  v14 = [v9 initWithDateInterval:dateInterval preferredDownsamplingLevel:preferredDownsamplingLevel batchSize:batchSize boundingBoxLocation:boundingBoxLocation];

  locationStore = [(RTTripSegmentManager *)self locationStore];
  [locationStore fetchStoredLocationsCountWithOptions:v14 handler:handlerCopy];
}

- (void)fetchLocationsCountForTripSegmentWithOptions:(id)options handler:(id)handler
{
  v21 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  handlerCopy = handler;
  v8 = handlerCopy;
  if (optionsCopy)
  {
    if (handlerCopy)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v18 = "[RTTripSegmentManager fetchLocationsCountForTripSegmentWithOptions:handler:]";
    v19 = 1024;
    v20 = 216;
    _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: options (in %s:%d)", buf, 0x12u);
  }

  if (!v8)
  {
LABEL_7:
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "[RTTripSegmentManager fetchLocationsCountForTripSegmentWithOptions:handler:]";
      v19 = 1024;
      v20 = 217;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

LABEL_10:
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__RTTripSegmentManager_fetchLocationsCountForTripSegmentWithOptions_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v15 = optionsCopy;
  v16 = v8;
  v12 = v8;
  v13 = optionsCopy;
  dispatch_async(queue, block);
}

- (int)getLocationsCountForTripSegmentWithOptions:(id)options
{
  v49[1] = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  if (!optionsCopy)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v45 = 136315394;
      *&v45[4] = "[RTTripSegmentManager getLocationsCountForTripSegmentWithOptions:]";
      *&v45[12] = 1024;
      *&v45[14] = 226;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: options (in %s:%d)", v45, 0x12u);
    }
  }

  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0;
  *v45 = 0;
  *&v45[8] = v45;
  *&v45[16] = 0x3032000000;
  v46 = __Block_byref_object_copy__1;
  v47 = __Block_byref_object_dispose__1;
  v48 = 0;
  v6 = dispatch_semaphore_create(0);
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __67__RTTripSegmentManager_getLocationsCountForTripSegmentWithOptions___block_invoke;
  v34[3] = &unk_2788C4528;
  v36 = &v38;
  v37 = v45;
  v7 = v6;
  v35 = v7;
  [(RTTripSegmentManager *)self fetchLocationsCountForTripSegmentWithOptions:optionsCopy handler:v34];
  v8 = v7;
  v9 = [MEMORY[0x277CBEAA8] now];
  v10 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v8, v10))
  {
    v11 = [MEMORY[0x277CBEAA8] now];
    [v11 timeIntervalSinceDate:v9];
    v13 = v12;
    v14 = objc_opt_new();
    v15 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_0];
    callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
    v17 = [callStackSymbols filteredArrayUsingPredicate:v15];
    firstObject = [v17 firstObject];

    [v14 submitToCoreAnalytics:firstObject type:1 duration:v13];
    v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v19, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v20 = MEMORY[0x277CCA9B8];
    v49[0] = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v49 count:1];
    v22 = [v20 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v21];

    if (v22)
    {
      v23 = v22;
    }
  }

  else
  {
    v22 = 0;
  }

  v24 = v22;
  if (v24)
  {
    v25 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v28 = objc_opt_class();
      v29 = NSStringFromClass(v28);
      localizedDescription = [v24 localizedDescription];
      *buf = 138412546;
      *&buf[4] = v29;
      v43 = 2112;
      v44 = localizedDescription;
      _os_log_error_impl(&dword_2304B3000, v25, OS_LOG_TYPE_ERROR, "%@,Semaphore Error getting locations count,error,%@", buf, 0x16u);
    }
  }

  else
  {
    if (!*(*&v45[8] + 40))
    {
      v26 = *(v39 + 6);
      goto LABEL_19;
    }

    v25 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v31 = objc_opt_class();
      v32 = NSStringFromClass(v31);
      localizedDescription2 = [0 localizedDescription];
      *buf = 138412546;
      *&buf[4] = v32;
      v43 = 2112;
      v44 = localizedDescription2;
      _os_log_error_impl(&dword_2304B3000, v25, OS_LOG_TYPE_ERROR, "%@,Error getting locations count,error,%@", buf, 0x16u);
    }
  }

  v26 = -1;
LABEL_19:

  _Block_object_dispose(v45, 8);
  _Block_object_dispose(&v38, 8);

  return v26;
}

void __67__RTTripSegmentManager_getLocationsCountForTripSegmentWithOptions___block_invoke(uint64_t a1, uint64_t a2, id obj)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), obj);
  v5 = obj;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (BOOL)isValidSynthesizedLocation:(id)location
{
  locationCopy = location;
  v5 = locationCopy;
  v14 = 0;
  if (locationCopy)
  {
    [locationCopy coordinate];
    if (v6 != 0.0 || ([v5 coordinate], v7 != 0.0))
    {
      [v5 coordinate];
      if (fabs(v8) <= 90.0)
      {
        [v5 coordinate];
        if (fabs(v9) <= 360.0)
        {
          if (!self->_checkForValidAltitudeSpeedAccuracy || ([v5 speed], v10 >= 0.0) && (objc_msgSend(v5, "speed"), (v11 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL))
          {
            [v5 horizontalAccuracy];
            if (v12 > 0.0)
            {
              [v5 horizontalAccuracy];
              if ((v13 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
              {
                if (!self->_checkForValidAltitudeSpeedAccuracy || ([v5 verticalAccuracy], v16 > 0.0) && (objc_msgSend(v5, "verticalAccuracy"), (v17 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL) && (!self->_checkForValidAltitudeSpeedAccuracy || (objc_msgSend(v5, "speedAccuracy"), v18 > 0.0) && (objc_msgSend(v5, "speedAccuracy"), (v19 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)))
                {
                  v14 = 1;
                }
              }
            }
          }
        }
      }
    }
  }

  return v14;
}

- (void)_fetchLocationsForTripSegmentWithOptions:(id)options handler:(id)handler
{
  v49[1] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v7 = MEMORY[0x277D01350];
  optionsCopy = options;
  v9 = [v7 alloc];
  dateInterval = [optionsCopy dateInterval];
  preferredDownsamplingLevel = [optionsCopy preferredDownsamplingLevel];
  batchSize = [optionsCopy batchSize];
  boundingBoxLocation = [optionsCopy boundingBoxLocation];
  v14 = [v9 initWithDateInterval:dateInterval preferredDownsamplingLevel:preferredDownsamplingLevel batchSize:batchSize boundingBoxLocation:boundingBoxLocation];

  v15 = objc_alloc(MEMORY[0x277D01348]);
  offset = [optionsCopy offset];

  v17 = [v15 initWithEnumerationOptions:v14 offset:offset];
  v18 = dispatch_semaphore_create(0);
  locationStore = [(RTTripSegmentManager *)self locationStore];
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __73__RTTripSegmentManager__fetchLocationsForTripSegmentWithOptions_handler___block_invoke;
  v45[3] = &unk_2788C4550;
  v20 = handlerCopy;
  v47 = v20;
  v21 = v18;
  v46 = v21;
  [locationStore fetchStoredLocationsWithContext:v17 handler:v45];

  v22 = v21;
  v23 = [MEMORY[0x277CBEAA8] now];
  v24 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v22, v24))
  {
    v42 = v20;
    v43 = v17;
    v44 = v14;
    v25 = [MEMORY[0x277CBEAA8] now];
    [v25 timeIntervalSinceDate:v23];
    v27 = v26;
    v28 = objc_opt_new();
    v29 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_0];
    callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
    v31 = [callStackSymbols filteredArrayUsingPredicate:v29];
    firstObject = [v31 firstObject];

    [v28 submitToCoreAnalytics:firstObject type:1 duration:v27];
    v33 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v33, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v34 = MEMORY[0x277CCA9B8];
    v35 = *MEMORY[0x277D01448];
    v49[0] = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v36 = 1;
    v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v49 count:1];
    v38 = [v34 errorWithDomain:v35 code:15 userInfo:v37];

    if (v38)
    {
      v39 = v38;

      v36 = 0;
    }

    v17 = v43;
    v14 = v44;
    v20 = v42;
  }

  else
  {
    v38 = 0;
    v36 = 1;
  }

  v40 = v38;
  if ((v36 & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v41 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      *&buf[4] = v40;
      _os_log_debug_impl(&dword_2304B3000, v41, OS_LOG_TYPE_DEBUG, "RTTripSegmentManager fetchStoredLocationsWithOptions timeout %@", buf, 0xCu);
    }
  }
}

void __73__RTTripSegmentManager__fetchLocationsForTripSegmentWithOptions_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v45 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v38 objects:v44 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v39;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v39 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v38 + 1) + 8 * i);
        if ([v12 locationType])
        {
          if (([v12 locationType] & 0x20) != 0)
          {
            v13 = 1;
          }

          else if (([v12 locationType] & 0x80) != 0)
          {
            v13 = 13;
          }

          else
          {
            v13 = ([v12 locationType] >> 4) & 4;
          }
        }

        else
        {
          v13 = 0;
        }

        v14 = objc_alloc(MEMORY[0x277CE41F8]);
        [v12 coordinate];
        v37 = v15;
        [v12 coordinate];
        v17 = v16;
        [v12 altitude];
        v19 = v18;
        [v12 speed];
        v21 = v20;
        [v12 course];
        v23 = v22;
        [v12 horizontalAccuracy];
        v25 = v24;
        [v12 verticalAccuracy];
        v27 = v26;
        [v12 speedAccuracy];
        v29 = v28;
        [v12 courseAccuracy];
        v31 = v30;
        v32 = [v12 timestamp];
        v33 = [v14 initWithLatitude:v13 longitude:v32 altitude:v37 speed:v17 course:v19 horizontalAccuracy:v21 verticalAccuracy:v23 speedAccuracy:v25 courseAccuracy:v27 type:v29 timestamp:v31];
        [v6 addObject:v33];
      }

      v9 = [v7 countByEnumeratingWithState:&v38 objects:v44 count:16];
    }

    while (v9);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v34 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      v35 = [v6 count];
      *buf = 134217984;
      v43 = v35;
      _os_log_debug_impl(&dword_2304B3000, v34, OS_LOG_TYPE_DEBUG, "RTTripSegmentManager converted %lu RTSynthesizedLocations to CLLocations", buf, 0xCu);
    }
  }

  (*(*(a1 + 40) + 16))();
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)fetchLocationsForTripSegmentWithOptions:(id)options handler:(id)handler
{
  v21 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  handlerCopy = handler;
  v8 = handlerCopy;
  if (optionsCopy)
  {
    if (handlerCopy)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v18 = "[RTTripSegmentManager fetchLocationsForTripSegmentWithOptions:handler:]";
    v19 = 1024;
    v20 = 353;
    _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: options (in %s:%d)", buf, 0x12u);
  }

  if (!v8)
  {
LABEL_7:
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "[RTTripSegmentManager fetchLocationsForTripSegmentWithOptions:handler:]";
      v19 = 1024;
      v20 = 354;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

LABEL_10:
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__RTTripSegmentManager_fetchLocationsForTripSegmentWithOptions_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v15 = optionsCopy;
  v16 = v8;
  v12 = v8;
  v13 = optionsCopy;
  dispatch_async(queue, block);
}

- (id)getLocationsForTripSegment:(id)segment withCount:(int)count
{
  v70[1] = *MEMORY[0x277D85DE8];
  segmentCopy = segment;
  if (!segmentCopy)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v66 = 136315394;
      *&v66[4] = "[RTTripSegmentManager getLocationsForTripSegment:withCount:]";
      *&v66[12] = 1024;
      *&v66[14] = 365;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: tripSegment (in %s:%d)", v66, 0x12u);
    }
  }

  if (count <= 0)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v66 = 136315394;
      *&v66[4] = "[RTTripSegmentManager getLocationsForTripSegment:withCount:]";
      *&v66[12] = 1024;
      *&v66[14] = 366;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: tripSegmentLocationsCount > 0 (in %s:%d)", v66, 0x12u);
    }
  }

  *v66 = 0;
  *&v66[8] = v66;
  *&v66[16] = 0x3032000000;
  v67 = __Block_byref_object_copy__1;
  v68 = __Block_byref_object_dispose__1;
  array = [MEMORY[0x277CBEB18] array];
  v55 = 0;
  v56 = &v55;
  v57 = 0x3032000000;
  v58 = __Block_byref_object_copy__1;
  v59 = __Block_byref_object_dispose__1;
  v60 = 0;
  v51 = 0;
  v52 = &v51;
  v53 = 0x2020000000;
  v54 = 0;
  v40 = *MEMORY[0x277D01448];
  countCopy = count;
  v41 = *MEMORY[0x277CCA450];
  while (1)
  {
    v7 = dispatch_semaphore_create(0);
    v8 = objc_alloc(MEMORY[0x277D01190]);
    v9 = [v8 initWithTripSegment:segmentCopy preferredDownsamplingLevel:0 batchSize:0 offset:v52[3]];
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __61__RTTripSegmentManager_getLocationsForTripSegment_withCount___block_invoke;
    v45[3] = &unk_2788C4578;
    v48 = &v55;
    v45[4] = self;
    v10 = segmentCopy;
    v46 = v10;
    v49 = v66;
    v50 = &v51;
    v11 = v7;
    v47 = v11;
    [(RTTripSegmentManager *)self fetchLocationsForTripSegmentWithOptions:v9 handler:v45];
    v12 = v11;
    v13 = [MEMORY[0x277CBEAA8] now];
    v14 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(v12, v14))
    {
      v15 = [MEMORY[0x277CBEAA8] now];
      [v15 timeIntervalSinceDate:v13];
      v17 = v16;
      v18 = objc_opt_new();
      v19 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_0];
      callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
      v21 = [callStackSymbols filteredArrayUsingPredicate:v19];
      firstObject = [v21 firstObject];

      [v18 submitToCoreAnalytics:firstObject type:1 duration:v17];
      v23 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_2304B3000, v23, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
      }

      v24 = MEMORY[0x277CCA9B8];
      v70[0] = v41;
      *buf = @"semaphore wait timeout";
      v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v70 count:1];
      v26 = [v24 errorWithDomain:v40 code:15 userInfo:v25];

      if (v26)
      {
        v27 = v26;

        v28 = 0;
        goto LABEL_17;
      }
    }

    else
    {
      v26 = 0;
    }

    v28 = 1;
LABEL_17:

    v29 = v26;
    if (v29)
    {
      v30 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v36 = objc_opt_class();
        v37 = NSStringFromClass(v36);
        identifier = [v10 identifier];
        localizedDescription = [v29 localizedDescription];
        *buf = 138412802;
        *&buf[4] = v37;
        v62 = 2112;
        v63 = identifier;
        v64 = 2112;
        v65 = localizedDescription;
        _os_log_error_impl(&dword_2304B3000, v30, OS_LOG_TYPE_ERROR, "%@,Semaphore Error getting locations for tripID,%@,error,%@", buf, 0x20u);
      }

      goto LABEL_27;
    }

    if (!v28 || v56[5])
    {
      break;
    }

    if (v52[3] >= countCopy)
    {
      v34 = *(*&v66[8] + 40);
      goto LABEL_29;
    }
  }

  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    goto LABEL_28;
  }

  v30 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
  {
    v31 = objc_opt_class();
    v32 = NSStringFromClass(v31);
    identifier2 = [v10 identifier];
    *buf = 138412546;
    *&buf[4] = v32;
    v62 = 2112;
    v63 = identifier2;
    _os_log_impl(&dword_2304B3000, v30, OS_LOG_TYPE_INFO, "%@,Error fetching locations for tripID,%@", buf, 0x16u);
  }

LABEL_27:

LABEL_28:
  v34 = 0;
LABEL_29:
  _Block_object_dispose(&v51, 8);
  _Block_object_dispose(&v55, 8);

  _Block_object_dispose(v66, 8);

  return v34;
}

void __61__RTTripSegmentManager_getLocationsForTripSegment_withCount___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v53 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v7 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = objc_opt_class();
        v9 = NSStringFromClass(v8);
        v10 = [*(a1 + 40) identifier];
        *buf = 138412546;
        v45 = v9;
        v46 = 2112;
        v47 = v10;
        _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "%@,Location fetch error for tripID,%@,skip it", buf, 0x16u);
      }
    }

    goto LABEL_24;
  }

  v11 = [MEMORY[0x277CBEB18] array];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v38 = v5;
  v12 = v5;
  v13 = [v12 countByEnumeratingWithState:&v40 objects:v52 count:16];
  if (!v13)
  {
    goto LABEL_19;
  }

  v14 = v13;
  v15 = *v41;
  v16 = 0x277CBF000uLL;
  v17 = MEMORY[0x277D86220];
  v39 = *v41;
  do
  {
    for (i = 0; i != v14; ++i)
    {
      if (*v41 != v15)
      {
        objc_enumerationMutation(v12);
      }

      v19 = *(*(&v40 + 1) + 8 * i);
      [v19 coordinate];
      if (CLLocationCoordinate2DIsValid(v54))
      {
        v20 = objc_alloc(*(v16 + 3072));
        [v19 coordinate];
        v22 = v21;
        [v19 coordinate];
        v23 = [v20 initWithLatitude:v22 longitude:?];
        [v11 addObject:v23];
LABEL_13:

        continue;
      }

      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v23 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          v24 = objc_opt_class();
          v25 = NSStringFromClass(v24);
          [*(a1 + 40) identifier];
          v26 = v12;
          v27 = v11;
          v28 = v17;
          v29 = v16;
          v31 = v30 = a1;
          *buf = 138412546;
          v45 = v25;
          v46 = 2112;
          v47 = v31;
          _os_log_impl(&dword_2304B3000, v23, OS_LOG_TYPE_INFO, "%@,Invalid location skipped for tripID,%@", buf, 0x16u);

          a1 = v30;
          v16 = v29;
          v17 = v28;
          v11 = v27;
          v12 = v26;
          v15 = v39;
        }

        goto LABEL_13;
      }
    }

    v14 = [v12 countByEnumeratingWithState:&v40 objects:v52 count:16];
  }

  while (v14);
LABEL_19:

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v32 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      v33 = objc_opt_class();
      v34 = NSStringFromClass(v33);
      v35 = [*(a1 + 40) identifier];
      v36 = [v12 count];
      v37 = [v11 count];
      *buf = 138413058;
      v45 = v34;
      v46 = 2112;
      v47 = v35;
      v48 = 1024;
      v49 = v36;
      v50 = 1024;
      v51 = v37;
      _os_log_impl(&dword_2304B3000, v32, OS_LOG_TYPE_INFO, "%@,fetched locations for tripID,%@,fetchCount,%d,processedCount,%d", buf, 0x22u);
    }
  }

  [*(*(*(a1 + 64) + 8) + 40) addObjectsFromArray:v11];
  *(*(*(a1 + 72) + 8) + 24) += [v12 count];

  dispatch_semaphore_signal(*(a1 + 48));
  v6 = 0;
  v5 = v38;
LABEL_24:
}

- (id)getPreferredNameForLocation:(id)location isStartOfTripSegment:(BOOL)segment
{
  segmentCopy = segment;
  v62[1] = *MEMORY[0x277D85DE8];
  locationCopy = location;
  if (!locationCopy)
  {
    v23 = 0;
    goto LABEL_19;
  }

  v7 = objc_alloc(MEMORY[0x277CE41F8]);
  [locationCopy coordinate];
  v9 = v8;
  v11 = v10;
  [locationCopy altitude];
  v13 = v12;
  timestamp = [locationCopy timestamp];
  v15 = [v7 initWithCoordinate:timestamp altitude:v9 horizontalAccuracy:v11 verticalAccuracy:v13 timestamp:{1.0, 1.0}];

  v16 = objc_alloc(MEMORY[0x277CCA970]);
  if (segmentCopy)
  {
    v17 = MEMORY[0x277CBEAA8];
    v18 = v16;
    v19 = [v17 alloc];
    timestamp2 = [locationCopy timestamp];
    v21 = [v19 initWithTimeInterval:timestamp2 sinceDate:-86400.0];
    v22 = [v18 initWithStartDate:v21 duration:86400.0];
  }

  else
  {
    v21 = v16;
    timestamp2 = [locationCopy timestamp];
    v22 = [v21 initWithStartDate:timestamp2 duration:86400.0];
  }

  v55 = 0;
  v56 = &v55;
  v57 = 0x3032000000;
  v58 = __Block_byref_object_copy__1;
  v59 = __Block_byref_object_dispose__1;
  v60 = 0;
  v24 = dispatch_semaphore_create(0);
  learnedLocationStore = self->_learnedLocationStore;
  startDate = [v22 startDate];
  endDate = [v22 endDate];
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __73__RTTripSegmentManager_getPreferredNameForLocation_isStartOfTripSegment___block_invoke;
  v50[3] = &unk_2788C45A0;
  v54 = segmentCopy;
  v49 = v15;
  v51 = v49;
  v53 = &v55;
  v28 = v24;
  v52 = v28;
  [(RTLearnedLocationStore *)learnedLocationStore fetchLocationsOfInterestVisitedBetweenStartDate:startDate endDate:endDate handler:v50];

  v29 = v28;
  v30 = [MEMORY[0x277CBEAA8] now];
  v31 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v29, v31))
  {
    v32 = [MEMORY[0x277CBEAA8] now];
    [v32 timeIntervalSinceDate:v30];
    v34 = v33;
    v35 = objc_opt_new();
    v36 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_0];
    callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
    v38 = [callStackSymbols filteredArrayUsingPredicate:v36];
    firstObject = [v38 firstObject];

    [v35 submitToCoreAnalytics:firstObject type:1 duration:v34];
    v40 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v40, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v41 = MEMORY[0x277CCA9B8];
    v62[0] = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v62 count:1];
    v43 = [v41 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v42];

    if (v43)
    {
      v44 = v43;

      v45 = 0;
      goto LABEL_13;
    }
  }

  else
  {
    v43 = 0;
  }

  v45 = 1;
LABEL_13:

  v46 = v43;
  if ((v45 & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v47 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      *&buf[4] = v46;
      _os_log_debug_impl(&dword_2304B3000, v47, OS_LOG_TYPE_DEBUG, "RTTripSegmentManager [_learnedLocationStore fetchLocationsOfInterestVisitedBetweenStartDate:endDate:]: timeout %@", buf, 0xCu);
    }
  }

  v23 = v56[5];

  _Block_object_dispose(&v55, 8);
LABEL_19:

  return v23;
}

intptr_t __73__RTTripSegmentManager_getPreferredNameForLocation_isStartOfTripSegment___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v43 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    [MEMORY[0x277D01170] locationsOfInterestFromLearnedLocationsOfInterest:a2];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    obj = v40 = 0u;
    v31 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
    if (v31)
    {
      v30 = *v38;
      v4 = 600.0;
      do
      {
        v5 = 0;
        do
        {
          if (*v38 != v30)
          {
            objc_enumerationMutation(obj);
          }

          v32 = v5;
          v6 = *(*(&v37 + 1) + 8 * v5);
          v33 = 0u;
          v34 = 0u;
          v35 = 0u;
          v36 = 0u;
          v7 = [v6 visits];
          v8 = [v7 countByEnumeratingWithState:&v33 objects:v41 count:16];
          if (v8)
          {
            v9 = v8;
            v10 = *v34;
            do
            {
              for (i = 0; i != v9; ++i)
              {
                if (*v34 != v10)
                {
                  objc_enumerationMutation(v7);
                }

                v12 = *(*(&v33 + 1) + 8 * i);
                v13 = objc_alloc(MEMORY[0x277CE41F8]);
                v14 = [v6 location];
                [v14 latitude];
                v16 = v15;
                v17 = [v6 location];
                [v17 longitude];
                v19 = [v13 initWithLatitude:v16 longitude:v18];

                LODWORD(v17) = *(a1 + 56);
                v20 = [*(a1 + 32) timestamp];
                if (v17 == 1)
                {
                  [v12 exitDate];
                }

                else
                {
                  [v12 entryDate];
                }
                v21 = ;
                [v20 timeIntervalSinceDate:v21];
                v23 = fabs(v22);

                [*(a1 + 32) distanceFromLocation:v19];
                if (v23 < v4 && v24 < 250.0)
                {
                  v25 = [v6 preferredName];
                  v26 = *(*(a1 + 48) + 8);
                  v27 = *(v26 + 40);
                  *(v26 + 40) = v25;

                  v4 = v23;
                }
              }

              v9 = [v7 countByEnumeratingWithState:&v33 objects:v41 count:16];
            }

            while (v9);
          }

          v5 = v32 + 1;
        }

        while (v32 + 1 != v31);
        v31 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
      }

      while (v31);
    }
  }

  return dispatch_semaphore_signal(*(a1 + 40));
}

- (void)_fetchTripSegmentMetadataWithOptions:(id)options handler:(id)handler
{
  v236 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  handlerCopy = handler;
  v7 = objc_alloc(MEMORY[0x277D01350]);
  v217 = optionsCopy;
  dateInterval = [optionsCopy dateInterval];
  v181 = [v7 initWithDateInterval:dateInterval preferredDownsamplingLevel:0 batchSize:0 boundingBoxLocation:0];

  v9 = dispatch_semaphore_create(0);
  v225 = 0;
  v226 = &v225;
  v227 = 0x2020000000;
  v228 = 0;
  locationStore = [(RTTripSegmentManager *)self locationStore];
  v221[0] = MEMORY[0x277D85DD0];
  v221[1] = 3221225472;
  v221[2] = __69__RTTripSegmentManager__fetchTripSegmentMetadataWithOptions_handler___block_invoke;
  v221[3] = &unk_2788C45C8;
  v176 = handlerCopy;
  v223 = v176;
  v224 = &v225;
  v11 = v9;
  v222 = v11;
  [locationStore fetchStoredLocationsCountWithOptions:v181 handler:v221];

  dsema = v11;
  v12 = [MEMORY[0x277CBEAA8] now];
  v13 = dispatch_time(0, 3600000000000);
  v14 = dispatch_semaphore_wait(dsema, v13);
  v15 = MEMORY[0x277D01448];
  v16 = MEMORY[0x277CCA450];
  if (!v14)
  {
    v28 = 0;
LABEL_7:
    v30 = 1;
    goto LABEL_8;
  }

  v17 = [MEMORY[0x277CBEAA8] now];
  [v17 timeIntervalSinceDate:v12];
  v19 = v18;
  v20 = objc_opt_new();
  v21 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_0];
  callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
  v23 = [callStackSymbols filteredArrayUsingPredicate:v21];
  firstObject = [v23 firstObject];

  [v20 submitToCoreAnalytics:firstObject type:1 duration:v19];
  v25 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
  {
    *v232 = 0;
    _os_log_fault_impl(&dword_2304B3000, v25, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v232, 2u);
  }

  v26 = MEMORY[0x277CCA9B8];
  *&buf = *v16;
  *v232 = @"semaphore wait timeout";
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v232 forKeys:&buf count:1];
  v28 = [v26 errorWithDomain:*v15 code:15 userInfo:v27];

  if (!v28)
  {
    goto LABEL_7;
  }

  v29 = v28;

  v30 = 0;
LABEL_8:

  v31 = v28;
  if ((v30 & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v32 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      *v232 = 138412290;
      *&v232[4] = v31;
      _os_log_debug_impl(&dword_2304B3000, v32, OS_LOG_TYPE_DEBUG, "RTTripSegmentManager _fetchRoadClassForTripSegmentWithOptions timeout %@", v232, 0xCu);
    }
  }

  if ([v217 fetchRoadClass])
  {
    v199 = objc_alloc_init(MEMORY[0x277CBEB18]);
  }

  else
  {
    v199 = 0;
  }

  if ([v217 fetchFormOfWay])
  {
    v198 = objc_alloc_init(MEMORY[0x277CBEB18]);
  }

  else
  {
    v198 = 0;
  }

  if ([v217 fetchLocationType])
  {
    v197 = objc_alloc_init(MEMORY[0x277CBEB18]);
  }

  else
  {
    v197 = 0;
  }

  v189 = 0;
  v34 = 0;
  v182 = 0;
  v178 = 0;
  v179 = *v15;
  v180 = *v16;
  v35 = 0.0;
  *&v33 = 138412290;
  v175 = v33;
  do
  {
    v185 = [objc_alloc(MEMORY[0x277D01348]) initWithEnumerationOptions:v181 offset:v189];
    v36 = dispatch_semaphore_create(0);
    *v232 = 0;
    *&v232[8] = v232;
    *&v232[16] = 0x3032000000;
    v233 = __Block_byref_object_copy__1;
    v234 = __Block_byref_object_dispose__1;
    v235 = 0;
    locationStore2 = [(RTTripSegmentManager *)self locationStore];
    v218[0] = MEMORY[0x277D85DD0];
    v218[1] = 3221225472;
    v218[2] = __69__RTTripSegmentManager__fetchTripSegmentMetadataWithOptions_handler___block_invoke_234;
    v218[3] = &unk_2788C45F0;
    v220 = v232;
    v38 = v36;
    v219 = v38;
    [locationStore2 fetchStoredLocationsWithContext:v185 handler:v218];

    v193 = v38;
    v39 = [MEMORY[0x277CBEAA8] now];
    v40 = dispatch_time(0, 3600000000000);
    if (!dispatch_semaphore_wait(v193, v40))
    {
      goto LABEL_28;
    }

    v41 = [MEMORY[0x277CBEAA8] now];
    [v41 timeIntervalSinceDate:v39];
    v43 = v42;
    v44 = objc_opt_new();
    v45 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_0];
    callStackSymbols2 = [MEMORY[0x277CCACC8] callStackSymbols];
    v47 = [callStackSymbols2 filteredArrayUsingPredicate:v45];
    firstObject2 = [v47 firstObject];

    [v44 submitToCoreAnalytics:firstObject2 type:1 duration:v43];
    v49 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v49, OS_LOG_TYPE_FAULT))
    {
      LOWORD(buf) = 0;
      _os_log_fault_impl(&dword_2304B3000, v49, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", &buf, 2u);
    }

    v50 = MEMORY[0x277CCA9B8];
    v229 = v180;
    *&buf = @"semaphore wait timeout";
    v51 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&buf forKeys:&v229 count:1];
    v52 = [v50 errorWithDomain:v179 code:15 userInfo:v51];

    if (v52)
    {
      v53 = v52;

      v54 = 0;
    }

    else
    {
LABEL_28:
      v54 = 1;
      v52 = v31;
    }

    v184 = v52;
    if ((v54 & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v55 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(buf) = v175;
        *(&buf + 4) = v184;
        _os_log_debug_impl(&dword_2304B3000, v55, OS_LOG_TYPE_DEBUG, "RTTripSegmentManager _fetchRoadClassForTripSegmentWithOptions timeout %@", &buf, 0xCu);
      }
    }

    if ([*(*&v232[8] + 40) count])
    {
      if (!v189)
      {
        firstObject3 = [*(*&v232[8] + 40) firstObject];

        firstObject4 = [*(*&v232[8] + 40) firstObject];

        v34 = firstObject4;
        v178 = firstObject3;
      }

      lastObject = [*(*&v232[8] + 40) lastObject];

      v182 = lastObject;
    }

    v183 = [*(*&v232[8] + 40) count];
    v59 = [*(*&v232[8] + 40) count];
    firstObject5 = [*(*&v232[8] + 40) firstObject];
    timestamp = [firstObject5 timestamp];

    firstObject6 = [*(*&v232[8] + 40) firstObject];
    timestamp2 = [firstObject6 timestamp];

    firstObject7 = [*(*&v232[8] + 40) firstObject];
    timestamp3 = [firstObject7 timestamp];

    firstObject8 = [*(*&v232[8] + 40) firstObject];
    geoRoadClass = [firstObject8 geoRoadClass];

    firstObject9 = [*(*&v232[8] + 40) firstObject];
    geoFormOfWay = [firstObject9 geoFormOfWay];

    firstObject10 = [*(*&v232[8] + 40) firstObject];
    locationType = [firstObject10 locationType];

    v189 += v59;
    v68 = v35;
    v69 = v35;
    v70 = v35;
    for (i = 1; i < [*(*&v232[8] + 40) count]; ++i)
    {
      buf = 0uLL;
      [v34 coordinate];
      *&buf = v72;
      *(&buf + 1) = v73;
      v229 = 0;
      v230 = 0;
      v74 = [*(*&v232[8] + 40) objectAtIndexedSubscript:i];
      [v74 coordinate];
      v229 = v75;
      v230 = v76;

      distanceCalculator = [(RTTripSegmentManager *)self distanceCalculator];
      [distanceCalculator distanceFromLocationCoordinate:&buf toLocationCoordinate:&v229 error:0];
      v79 = v78;

      v80 = [*(*&v232[8] + 40) objectAtIndexedSubscript:i];

      v35 = v35 + v79;
      if ([v217 fetchRoadClass])
      {
        v81 = [*(*&v232[8] + 40) objectAtIndexedSubscript:i];
        geoRoadClass2 = [v81 geoRoadClass];

        if (i == [*(*&v232[8] + 40) count] - 1 || geoRoadClass != geoRoadClass2)
        {
          v83 = objc_alloc(MEMORY[0x277D01408]);
          v84 = objc_alloc(MEMORY[0x277CCA970]);
          v85 = [*(*&v232[8] + 40) objectAtIndexedSubscript:i];
          timestamp4 = [v85 timestamp];
          v87 = [v84 initWithStartDate:timestamp endDate:timestamp4];
          v88 = [objc_alloc(MEMORY[0x277D010D8]) initWithStartDistance:v68 endDistance:v35];
          v89 = [v83 initWithDateInterval:v87 distanceInterval:v88 geoRoadClass:geoRoadClass];
          [v199 addObject:v89];

          v90 = [*(*&v232[8] + 40) objectAtIndexedSubscript:i];
          timestamp5 = [v90 timestamp];

          timestamp = timestamp5;
          geoRoadClass = geoRoadClass2;
          v68 = v35;
        }
      }

      if ([v217 fetchFormOfWay])
      {
        v92 = [*(*&v232[8] + 40) objectAtIndexedSubscript:i];
        geoFormOfWay2 = [v92 geoFormOfWay];

        if (i == [*(*&v232[8] + 40) count] - 1 || geoFormOfWay != geoFormOfWay2)
        {
          v94 = objc_alloc(MEMORY[0x277D013D8]);
          v95 = objc_alloc(MEMORY[0x277CCA970]);
          v96 = [*(*&v232[8] + 40) objectAtIndexedSubscript:i];
          timestamp6 = [v96 timestamp];
          v98 = [v95 initWithStartDate:timestamp2 endDate:timestamp6];
          v99 = [objc_alloc(MEMORY[0x277D010D8]) initWithStartDistance:v69 endDistance:v35];
          v100 = [v94 initWithDateInterval:v98 distanceInterval:v99 geoFormOfWay:geoFormOfWay];
          [v198 addObject:v100];

          v101 = [*(*&v232[8] + 40) objectAtIndexedSubscript:i];
          timestamp7 = [v101 timestamp];

          timestamp2 = timestamp7;
          v69 = v35;
          geoFormOfWay = geoFormOfWay2;
        }
      }

      if ([v217 fetchLocationType])
      {
        v103 = [*(*&v232[8] + 40) objectAtIndexedSubscript:i];
        locationType2 = [v103 locationType];

        if (i == [*(*&v232[8] + 40) count] - 1 || locationType != locationType2)
        {
          v105 = objc_alloc(MEMORY[0x277D013F0]);
          v106 = objc_alloc(MEMORY[0x277CCA970]);
          v107 = [*(*&v232[8] + 40) objectAtIndexedSubscript:i];
          timestamp8 = [v107 timestamp];
          v109 = [v106 initWithStartDate:timestamp3 endDate:timestamp8];
          v110 = [objc_alloc(MEMORY[0x277D010D8]) initWithStartDistance:v70 endDistance:v35];
          v111 = [v105 initWithDateInterval:v109 distanceInterval:v110 locationType:locationType];
          [v197 addObject:v111];

          v112 = [*(*&v232[8] + 40) objectAtIndexedSubscript:i];
          timestamp9 = [v112 timestamp];

          timestamp3 = timestamp9;
          v70 = v35;
          locationType = locationType2;
        }
      }

      v34 = v80;
    }

    _Block_object_dispose(v232, 8);
    if (v189 >= v226[3])
    {
      break;
    }

    v31 = v184;
  }

  while (v183 > 0);
  if (v199 && [v199 count] >= 2)
  {
    v114 = 0;
LABEL_58:
    v213 = v114;
    v209 = v114 + 1;
    while (v213 < [v199 count] - 1)
    {
      v115 = [v199 objectAtIndexedSubscript:?];
      geoRoadClass3 = [v115 geoRoadClass];
      v117 = [v199 objectAtIndexedSubscript:v209];
      LODWORD(geoRoadClass3) = geoRoadClass3 == [v117 geoRoadClass];

      if (!geoRoadClass3)
      {
        v114 = v209;
        goto LABEL_58;
      }

      v118 = objc_alloc(MEMORY[0x277D01408]);
      v119 = objc_alloc(MEMORY[0x277CCA970]);
      v205 = [v199 objectAtIndexedSubscript:v213];
      dateInterval2 = [v205 dateInterval];
      startDate = [dateInterval2 startDate];
      v194 = [v199 objectAtIndexedSubscript:v209];
      dateInterval3 = [v194 dateInterval];
      endDate = [dateInterval3 endDate];
      v121 = [v119 initWithStartDate:startDate endDate:endDate];
      v122 = objc_alloc(MEMORY[0x277D010D8]);
      v123 = [v199 objectAtIndexedSubscript:v213];
      distanceInterval = [v123 distanceInterval];
      [distanceInterval startDistance];
      v126 = v125;
      v127 = [v199 objectAtIndexedSubscript:v209];
      distanceInterval2 = [v127 distanceInterval];
      [distanceInterval2 endDistance];
      v130 = [v122 initWithStartDistance:v126 endDistance:v129];
      v131 = [v199 objectAtIndexedSubscript:v213];
      v132 = [v118 initWithDateInterval:v121 distanceInterval:v130 geoRoadClass:{objc_msgSend(v131, "geoRoadClass")}];
      [v199 setObject:v132 atIndexedSubscript:v209];

      [v199 removeObjectAtIndex:v213];
    }
  }

  if (v198 && [v198 count] >= 2)
  {
    v133 = 0;
LABEL_66:
    v214 = v133;
    v210 = v133 + 1;
    while (v214 < [v198 count] - 1)
    {
      v134 = [v198 objectAtIndexedSubscript:?];
      geoFormOfWay3 = [v134 geoFormOfWay];
      v136 = [v198 objectAtIndexedSubscript:v210];
      LODWORD(geoFormOfWay3) = geoFormOfWay3 == [v136 geoFormOfWay];

      if (!geoFormOfWay3)
      {
        v133 = v210;
        goto LABEL_66;
      }

      v137 = objc_alloc(MEMORY[0x277D013D8]);
      v138 = objc_alloc(MEMORY[0x277CCA970]);
      v206 = [v198 objectAtIndexedSubscript:v214];
      dateInterval4 = [v206 dateInterval];
      startDate2 = [dateInterval4 startDate];
      v195 = [v198 objectAtIndexedSubscript:v210];
      dateInterval5 = [v195 dateInterval];
      endDate2 = [dateInterval5 endDate];
      v140 = [v138 initWithStartDate:startDate2 endDate:endDate2];
      v141 = objc_alloc(MEMORY[0x277D010D8]);
      v142 = [v198 objectAtIndexedSubscript:v214];
      distanceInterval3 = [v142 distanceInterval];
      [distanceInterval3 startDistance];
      v145 = v144;
      v146 = [v198 objectAtIndexedSubscript:v210];
      distanceInterval4 = [v146 distanceInterval];
      [distanceInterval4 endDistance];
      v149 = [v141 initWithStartDistance:v145 endDistance:v148];
      v150 = [v198 objectAtIndexedSubscript:v214];
      v151 = [v137 initWithDateInterval:v140 distanceInterval:v149 geoFormOfWay:{objc_msgSend(v150, "geoFormOfWay")}];
      [v198 setObject:v151 atIndexedSubscript:v210];

      [v198 removeObjectAtIndex:v214];
    }
  }

  if (v197 && [v197 count] >= 2)
  {
    v152 = 0;
LABEL_74:
    v215 = v152;
    v211 = v152 + 1;
    while (v215 < [v197 count] - 1)
    {
      v153 = [v197 objectAtIndexedSubscript:?];
      locationType3 = [v153 locationType];
      v155 = [v197 objectAtIndexedSubscript:v211];
      LODWORD(locationType3) = locationType3 == [v155 locationType];

      if (!locationType3)
      {
        v152 = v211;
        goto LABEL_74;
      }

      v156 = objc_alloc(MEMORY[0x277D013F0]);
      v157 = objc_alloc(MEMORY[0x277CCA970]);
      v207 = [v197 objectAtIndexedSubscript:v215];
      dateInterval6 = [v207 dateInterval];
      startDate3 = [dateInterval6 startDate];
      v196 = [v197 objectAtIndexedSubscript:v211];
      dateInterval7 = [v196 dateInterval];
      endDate3 = [dateInterval7 endDate];
      v159 = [v157 initWithStartDate:startDate3 endDate:endDate3];
      v160 = objc_alloc(MEMORY[0x277D010D8]);
      v161 = [v197 objectAtIndexedSubscript:v215];
      distanceInterval5 = [v161 distanceInterval];
      [distanceInterval5 startDistance];
      v164 = v163;
      v165 = [v197 objectAtIndexedSubscript:v211];
      distanceInterval6 = [v165 distanceInterval];
      [distanceInterval6 endDistance];
      v168 = [v160 initWithStartDistance:v164 endDistance:v167];
      v169 = [v197 objectAtIndexedSubscript:v215];
      v170 = [v156 initWithDateInterval:v159 distanceInterval:v168 locationType:{objc_msgSend(v169, "locationType")}];
      [v197 setObject:v170 atIndexedSubscript:v211];

      [v197 removeObjectAtIndex:v215];
    }
  }

  if ([v217 fetchPreferredNames])
  {
    v171 = [(RTTripSegmentManager *)self getPreferredNameForLocation:v178 isStartOfTripSegment:1];
    v172 = [(RTTripSegmentManager *)self getPreferredNameForLocation:v182 isStartOfTripSegment:0];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v173 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v173, OS_LOG_TYPE_DEBUG))
      {
        *v232 = 138412546;
        *&v232[4] = v171;
        *&v232[12] = 2112;
        *&v232[14] = v172;
        _os_log_debug_impl(&dword_2304B3000, v173, OS_LOG_TYPE_DEBUG, "RTTripSegmentManager startPreferredName %@, endPreferredName %@", v232, 0x16u);
      }
    }
  }

  else
  {
    v171 = 0;
    v172 = 0;
  }

  v174 = [objc_alloc(MEMORY[0x277D013F8]) initWithRoadClass:v199 formOfWay:v198 locationType:v197 startLocationName:v171 endLocationName:v172];
  (*(v176 + 2))(v176, v174, 0);

  _Block_object_dispose(&v225, 8);
}

intptr_t __69__RTTripSegmentManager__fetchTripSegmentMetadataWithOptions_handler___block_invoke(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    (*(a1[5] + 16))();
  }

  *(*(a1[6] + 8) + 24) = a2;
  v5 = a1[4];

  return dispatch_semaphore_signal(v5);
}

void __69__RTTripSegmentManager__fetchTripSegmentMetadataWithOptions_handler___block_invoke_234(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)fetchTripSegmentMetadataWithOptions:(id)options handler:(id)handler
{
  v21 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  handlerCopy = handler;
  v8 = handlerCopy;
  if (optionsCopy)
  {
    if (handlerCopy)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v18 = "[RTTripSegmentManager fetchTripSegmentMetadataWithOptions:handler:]";
    v19 = 1024;
    v20 = 718;
    _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: options (in %s:%d)", buf, 0x12u);
  }

  if (!v8)
  {
LABEL_7:
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "[RTTripSegmentManager fetchTripSegmentMetadataWithOptions:handler:]";
      v19 = 1024;
      v20 = 719;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

LABEL_10:
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__RTTripSegmentManager_fetchTripSegmentMetadataWithOptions_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v15 = optionsCopy;
  v16 = v8;
  v12 = v8;
  v13 = optionsCopy;
  dispatch_async(queue, block);
}

- (id)fetchDownsamplingLevelAnnotationForLocations:(id)locations
{
  locationsCopy = locations;
  v47 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(locationsCopy, "count")}];
  if ([locationsCopy count])
  {
    v4 = 0;
    do
    {
      v5 = objc_alloc(MEMORY[0x277CE41F8]);
      v52 = [locationsCopy objectAtIndexedSubscript:v4];
      [v52 coordinate];
      v48 = v6;
      v51 = [locationsCopy objectAtIndexedSubscript:v4];
      [v51 coordinate];
      v8 = v7;
      v50 = [locationsCopy objectAtIndexedSubscript:v4];
      [v50 altitude];
      v10 = v9;
      v49 = [locationsCopy objectAtIndexedSubscript:v4];
      [v49 speed];
      v12 = v11;
      v13 = [locationsCopy objectAtIndexedSubscript:v4];
      [v13 course];
      v15 = v14;
      v16 = [locationsCopy objectAtIndexedSubscript:v4];
      [v16 horizontalAccuracy];
      v18 = v17;
      v19 = [locationsCopy objectAtIndexedSubscript:v4];
      [v19 verticalAccuracy];
      v21 = v20;
      v22 = [locationsCopy objectAtIndexedSubscript:v4];
      [v22 speedAccuracy];
      v24 = v23;
      v25 = [locationsCopy objectAtIndexedSubscript:v4];
      [v25 courseAccuracy];
      v27 = v26;
      v28 = [locationsCopy objectAtIndexedSubscript:v4];
      timestamp = [v28 timestamp];
      v30 = [v5 initWithLatitude:0 longitude:timestamp altitude:v48 speed:v8 course:v10 horizontalAccuracy:v12 verticalAccuracy:v15 speedAccuracy:v18 courseAccuracy:v21 type:v24 timestamp:v27];
      [v47 setObject:v30 atIndexedSubscript:v4];

      ++v4;
    }

    while (v4 < [locationsCopy count]);
  }

  v31 = MEMORY[0x277D01168];
  createErrorFunctionWithAbsoluteCrosstrackDistance = [MEMORY[0x277D01168] createErrorFunctionWithAbsoluteCrosstrackDistance];
  v33 = [v31 downsampleLocations:v47 errorFunction:createErrorFunctionWithAbsoluteCrosstrackDistance errorThreshold:0 outputSize:1.0];

  v34 = MEMORY[0x277D01168];
  createErrorFunctionWithAbsoluteCrosstrackDistance2 = [MEMORY[0x277D01168] createErrorFunctionWithAbsoluteCrosstrackDistance];
  v36 = [v34 downsampleLocations:v47 errorFunction:createErrorFunctionWithAbsoluteCrosstrackDistance2 errorThreshold:0 outputSize:2.5];

  v37 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(locationsCopy, "count")}];
  v38 = v47;
  if ([locationsCopy count])
  {
    v39 = 0;
    v40 = 0;
    v41 = 0;
    do
    {
      [v37 setObject:&unk_28459C108 atIndexedSubscript:v41];
      v42 = v38;
      v43 = [v38 objectAtIndex:v41];
      if (v39 < [v33 count])
      {
        v44 = [v33 objectAtIndex:v39];
        if ([v43 isEqual:v44])
        {
          [v37 setObject:&unk_28459C120 atIndexedSubscript:v41];
          ++v39;
        }
      }

      if (v40 < [v36 count])
      {
        v45 = [v36 objectAtIndex:v40];
        if ([v43 isEqual:v45])
        {
          [v37 setObject:&unk_28459C138 atIndexedSubscript:v41];
          ++v40;
        }
      }

      ++v41;
      v38 = v42;
    }

    while (v41 < [locationsCopy count]);
  }

  return v37;
}

- (void)addLocationsToStore:(id)store handler:(id)handler
{
  v27 = *MEMORY[0x277D85DE8];
  storeCopy = store;
  handlerCopy = handler;
  if (!storeCopy)
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v19 = 136315394;
      v20 = "[RTTripSegmentManager addLocationsToStore:handler:]";
      v21 = 1024;
      LODWORD(v22) = 789;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: locations (in %s:%d)", &v19, 0x12u);
    }
  }

  v9 = [(RTTripSegmentManager *)self fetchDownsamplingLevelAnnotationForLocations:storeCopy];
  v10 = [v9 count];
  if (v10 != [storeCopy count])
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v17 = [v9 count];
      v18 = [storeCopy count];
      v19 = 134218754;
      v20 = v17;
      v21 = 2048;
      v22 = v18;
      v23 = 2080;
      v24 = "[RTTripSegmentManager addLocationsToStore:handler:]";
      v25 = 1024;
      v26 = 803;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "downsampling annotation array length is not equal to locations array legnth, %tu != %tu (in %s:%d)", &v19, 0x26u);
    }
  }

  if ([storeCopy count])
  {
    v12 = 0;
    do
    {
      v13 = [v9 objectAtIndexedSubscript:v12];
      intValue = [v13 intValue];
      v15 = [storeCopy objectAtIndexedSubscript:v12];
      [v15 setDownsamplingLevel:intValue];

      ++v12;
    }

    while (v12 < [storeCopy count]);
  }

  locationStore = [(RTTripSegmentManager *)self locationStore];
  [locationStore storeLocations:storeCopy handler:handlerCopy];
}

+ (int64_t)translateModeOfTransport:(int64_t)transport
{
  if ((transport - 1) > 2)
  {
    return 0;
  }

  else
  {
    return qword_230AFDC40[transport - 1];
  }
}

- (BOOL)_applyElevationAdjustmentToReconstructedRoute
{
  defaultsManager = [(RTTripSegmentManager *)self defaultsManager];
  v3 = [defaultsManager objectForKey:@"RTDefaultsTripSegmentAdjustElevationForReconstructedRoute"];

  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (BOOL)isOKToAddTripSegmentdata:(id)segmentdata
{
  v38 = *MEMORY[0x277D85DE8];
  segmentdataCopy = segmentdata;
  v5 = [objc_alloc(MEMORY[0x277D01328]) initWithAscending:1 dateInterval:segmentdataCopy limit:0];
  v6 = dispatch_semaphore_create(0);
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __49__RTTripSegmentManager_isOKToAddTripSegmentdata___block_invoke;
  v27[3] = &unk_2788C4640;
  v31 = &v32;
  v7 = segmentdataCopy;
  v28 = v7;
  selfCopy = self;
  v8 = v6;
  v30 = v8;
  [(RTTripSegmentManager *)self _fetchTripSegmentsWithOptions:v5 handler:v27];
  v9 = v8;
  v10 = [MEMORY[0x277CBEAA8] now];
  v11 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v9, v11))
  {
    v12 = [MEMORY[0x277CBEAA8] now];
    [v12 timeIntervalSinceDate:v10];
    v14 = v13;
    v15 = objc_opt_new();
    v16 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_0];
    callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
    v18 = [callStackSymbols filteredArrayUsingPredicate:v16];
    firstObject = [v18 firstObject];

    [v15 submitToCoreAnalytics:firstObject type:1 duration:v14];
    v20 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v20, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v21 = MEMORY[0x277CCA9B8];
    v36 = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v36 count:1];
    v23 = [v21 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v22];

    if (v23)
    {
      v24 = v23;
    }
  }

  v25 = *(v33 + 24);
  _Block_object_dispose(&v32, 8);

  return v25 & 1;
}

void __49__RTTripSegmentManager_isOKToAddTripSegmentdata___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v52 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  if (!a3)
  {
    v7 = [v5 count];
    *(*(*(a1 + 56) + 8) + 24) = 1;
    if (v7)
    {
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v27 = v6;
      v8 = v6;
      v9 = [v8 countByEnumeratingWithState:&v37 objects:v51 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v38;
        v12 = MEMORY[0x277D86220];
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v38 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v14 = *(*(&v37 + 1) + 8 * i);
            v15 = [v14 identifier];
            v16 = [RTTripSegmentManager tripSegmentUUIDTypeFromUUID:v15];

            if (!v16)
            {
              *(*(*(a1 + 56) + 8) + 24) = 0;
              if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
              {
                v17 = v12;
                v18 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
                if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
                {
                  v30 = *(a1 + 32);
                  v29 = *(*(*(a1 + 56) + 8) + 24);
                  v32 = [v14 dateInterval];
                  v33 = [v32 startDate];
                  v31 = [v14 dateInterval];
                  v19 = [v31 endDate];
                  v28 = [v14 identifier];
                  v20 = [v28 UUIDString];
                  *buf = 138413314;
                  v42 = v30;
                  v43 = 1024;
                  v44 = v29;
                  v45 = 2112;
                  v46 = v33;
                  v47 = 2112;
                  v48 = v19;
                  v49 = 2112;
                  v50 = v20;
                  _os_log_debug_impl(&dword_2304B3000, v18, OS_LOG_TYPE_DEBUG, "RTTripSegmentManager trip segment of type FINAL found for interval %@, okToAddTripSegmentData,%d,startData,%@,stopDate,%@,id,%@", buf, 0x30u);
                }

                v12 = v17;
              }
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v37 objects:v51 count:16];
        }

        while (v10);
      }

      v21 = *(a1 + 56);
      v6 = v27;
      if (*(*(v21 + 8) + 24) == 1)
      {
        v22 = *(a1 + 32);
        v23 = *(a1 + 40);
        v34[0] = MEMORY[0x277D85DD0];
        v34[1] = 3221225472;
        v34[2] = __49__RTTripSegmentManager_isOKToAddTripSegmentdata___block_invoke_251;
        v34[3] = &unk_2788C4618;
        v36 = v21;
        v35 = v22;
        [v23 _purgeTripSegmentsOnDateInterval:v35 handler:v34];
        v24 = v35;
LABEL_20:
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v24 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        v25 = *(a1 + 32);
        v26 = *(*(*(a1 + 56) + 8) + 24);
        *buf = 138412546;
        v42 = v25;
        v43 = 1024;
        v44 = v26;
        _os_log_debug_impl(&dword_2304B3000, v24, OS_LOG_TYPE_DEBUG, "RTTripSegmentManager no trip segment data found for interval %@, okToAddTripSegmentData,%d", buf, 0x12u);
      }

      goto LABEL_20;
    }
  }

  dispatch_semaphore_signal(*(a1 + 48));
}

void __49__RTTripSegmentManager_isOKToAddTripSegmentdata___block_invoke_251(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v4 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        v5 = *(a1 + 32);
        v6 = *(*(*(a1 + 40) + 8) + 24);
        v7 = 138412546;
        v8 = v5;
        v9 = 1024;
        v10 = v6;
        _os_log_debug_impl(&dword_2304B3000, v4, OS_LOG_TYPE_DEBUG, "RTTripSegmentManager purge of trip segments for date interval %@ failed, okToAddTripSegmentData,%d", &v7, 0x12u);
      }
    }
  }
}

- (void)_tripSegmentExistsForDateInterval:(id)interval ignoreTemporary:(BOOL)temporary handler:(id)handler
{
  intervalCopy = interval;
  handlerCopy = handler;
  v10 = [objc_alloc(MEMORY[0x277D01328]) initWithAscending:1 dateInterval:intervalCopy limit:0];
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x2020000000;
  v22 = 0;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x3032000000;
  v19[3] = __Block_byref_object_copy__1;
  v19[4] = __Block_byref_object_dispose__1;
  v20 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __82__RTTripSegmentManager__tripSegmentExistsForDateInterval_ignoreTemporary_handler___block_invoke;
  v13[3] = &unk_2788C4668;
  temporaryCopy = temporary;
  v16 = v19;
  v17 = v21;
  v11 = intervalCopy;
  v14 = v11;
  v12 = handlerCopy;
  v15 = v12;
  [(RTTripSegmentManager *)self _fetchTripSegmentsWithOptions:v10 handler:v13];

  _Block_object_dispose(v19, 8);
  _Block_object_dispose(v21, 8);
}

void __82__RTTripSegmentManager__tripSegmentExistsForDateInterval_ignoreTemporary_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v40 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
  if (*(*(*(a1 + 48) + 8) + 40))
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  else
  {
    v7 = *(a1 + 64);
    v8 = [v5 count];
    if (v7)
    {
      v24 = v6;
      if (v8)
      {
        v9 = [v5 firstObject];
        v10 = [v9 tripSegmentSequenceMax];
      }

      else
      {
        v10 = -1;
      }

      v23 = v10;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v11 = v5;
      v12 = [v11 countByEnumeratingWithState:&v25 objects:v39 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = 0;
        v15 = *v26;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v26 != v15)
            {
              objc_enumerationMutation(v11);
            }

            v17 = [*(*(&v25 + 1) + 8 * i) identifier];
            v18 = [RTTripSegmentManager tripSegmentUUIDTypeFromUUID:v17];

            if (!v18)
            {
              ++v14;
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v25 objects:v39 count:16];
        }

        while (v13);
      }

      else
      {
        v14 = 0;
      }

      if (v23 >= 1 && v14 >= v23)
      {
        *(*(*(a1 + 56) + 8) + 24) = 1;
      }

      v19 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = *(*(*(a1 + 56) + 8) + 24);
        v21 = [*(a1 + 32) startDate];
        v22 = [*(a1 + 32) endDate];
        *buf = 67110146;
        v30 = v23;
        v31 = 1024;
        v32 = v14;
        v33 = 1024;
        v34 = v20;
        v35 = 2112;
        v36 = v21;
        v37 = 2112;
        v38 = v22;
        _os_log_impl(&dword_2304B3000, v19, OS_LOG_TYPE_DEFAULT, "RTTripSegmentManager,_tripSegmentExistsForDateInterval,numTripsExpected,%d,numTripsInStore,%d,dateIntervalOccupied,%d,startDate,%@,endDate,%@", buf, 0x28u);
      }

      v6 = v24;
    }

    else
    {
      *(*(*(a1 + 56) + 8) + 24) = v8 != 0;
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (void)tripSegmentExistsForDateInterval:(id)interval handler:(id)handler
{
  v21 = *MEMORY[0x277D85DE8];
  intervalCopy = interval;
  handlerCopy = handler;
  v8 = handlerCopy;
  if (intervalCopy)
  {
    if (handlerCopy)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v18 = "[RTTripSegmentManager tripSegmentExistsForDateInterval:handler:]";
    v19 = 1024;
    v20 = 930;
    _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: dateInterval (in %s:%d)", buf, 0x12u);
  }

  if (!v8)
  {
LABEL_7:
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "[RTTripSegmentManager tripSegmentExistsForDateInterval:handler:]";
      v19 = 1024;
      v20 = 931;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

LABEL_10:
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__RTTripSegmentManager_tripSegmentExistsForDateInterval_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v15 = intervalCopy;
  v16 = v8;
  v12 = v8;
  v13 = intervalCopy;
  dispatch_async(queue, block);
}

- (void)tripSegmentExistsForDateInterval:(id)interval ignoreTemporary:(BOOL)temporary handler:(id)handler
{
  v24 = *MEMORY[0x277D85DE8];
  intervalCopy = interval;
  handlerCopy = handler;
  v10 = handlerCopy;
  if (intervalCopy)
  {
    if (handlerCopy)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v21 = "[RTTripSegmentManager tripSegmentExistsForDateInterval:ignoreTemporary:handler:]";
    v22 = 1024;
    v23 = 944;
    _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: dateInterval (in %s:%d)", buf, 0x12u);
  }

  if (!v10)
  {
LABEL_7:
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v21 = "[RTTripSegmentManager tripSegmentExistsForDateInterval:ignoreTemporary:handler:]";
      v22 = 1024;
      v23 = 945;
      _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

LABEL_10:
  queue = [(RTNotifier *)self queue];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __81__RTTripSegmentManager_tripSegmentExistsForDateInterval_ignoreTemporary_handler___block_invoke;
  v16[3] = &unk_2788C4690;
  v16[4] = self;
  v17 = intervalCopy;
  temporaryCopy = temporary;
  v18 = v10;
  v14 = v10;
  v15 = intervalCopy;
  dispatch_async(queue, v16);
}

- (void)_addTripSegmentDataWithIdentifier:(id)identifier dateInterval:(id)interval tripDistance:(double)distance tripDistanceUncertainty:(double)uncertainty modeOfTransportation:(int64_t)transportation locations:(id)locations roads:(id)roads isEndOfSegment:(BOOL)self0 originLocation:(id)self1 destinationLocation:(id)self2 tripSegSequenceNumber:(int)self3 tripSegSequenceNumberMax:(int)self4 tripCommuteID:(id)self5 handler:(id)self6
{
  segmentCopy = segment;
  v348[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  intervalCopy = interval;
  locationsCopy = locations;
  roadsCopy = roads;
  locationCopy = location;
  destinationLocationCopy = destinationLocation;
  dCopy = d;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *v344 = 136315394;
      *&v344[4] = "[RTTripSegmentManager _addTripSegmentDataWithIdentifier:dateInterval:tripDistance:tripDistanceUncertainty:modeOfTransportation:locations:roads:isEndOfSegment:originLocation:destinationLocation:tripSegSequenceNumber:tripSegSequenceNumberMax:tripCommuteID:handler:]";
      *&v344[12] = 1024;
      *&v344[14] = 970;
      _os_log_error_impl(&dword_2304B3000, v24, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", v344, 0x12u);
    }
  }

  *v344 = 0;
  *&v344[8] = v344;
  *&v344[16] = 0x3032000000;
  v345 = __Block_byref_object_copy__1;
  v346 = __Block_byref_object_dispose__1;
  v347 = 0;
  v288 = intervalCopy;
  [intervalCopy duration];
  if (uncertainty <= 0.0 || distance <= 0.0 || v25 <= 0.0)
  {
    v52 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      [intervalCopy duration];
      *v337 = 134218752;
      *&v337[4] = v211;
      *&v337[12] = 2048;
      *&v337[14] = distance;
      *&v337[22] = 2048;
      uncertaintyCopy = uncertainty;
      LOWORD(v339) = 2048;
      *(&v339 + 2) = [locationsCopy count];
      _os_log_error_impl(&dword_2304B3000, v52, OS_LOG_TYPE_ERROR, "RTTripSegmentManager attempted to add invalid trip segment data: dateInterval.duration, %.3f, distance, %.3f, distanceUncertainty, %.3f, locations.count, %tu.", v337, 0x2Au);
    }

    v53 = MEMORY[0x277CCA9B8];
    v342 = *MEMORY[0x277CCA450];
    v343 = @"RTTripSegmentManager attempted to add invalid trip segment data.";
    v54 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v343 forKeys:&v342 count:1];
    v55 = [v53 errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v54];
    v56 = *(*&v344[8] + 40);
    *(*&v344[8] + 40) = v55;

    handlerCopy[2](handlerCopy, *(*&v344[8] + 40));
  }

  else
  {
    v26 = [(RTTripSegmentManager *)self isOKToAddTripSegmentdata:intervalCopy];
    v27 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
    if (v26)
    {
      if (v27)
      {
        v28 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          uUIDString = [identifierCopy UUIDString];
          v255 = uUIDString;
          uTF8String = [uUIDString UTF8String];
          v257 = [locationsCopy count];
          startDate = [intervalCopy startDate];
          [startDate timeIntervalSinceReferenceDate];
          v260 = v259;
          endDate = [v288 endDate];
          [endDate timeIntervalSinceReferenceDate];
          *v337 = 136315906;
          *&v337[4] = uTF8String;
          *&v337[12] = 2048;
          *&v337[14] = v257;
          *&v337[22] = 2048;
          uncertaintyCopy = v260;
          LOWORD(v339) = 2048;
          *(&v339 + 2) = v262;
          _os_log_debug_impl(&dword_2304B3000, v28, OS_LOG_TYPE_DEBUG, "RTTripSegmentManager invoked addTripSegmentData with UUID %s, and %lu locations, from startTime, %.1f, to stopTime, %.1lf", v337, 0x2Au);
        }
      }

      tripSegmentUnderConstruction = [(RTTripSegmentManager *)self tripSegmentUnderConstruction];
      if (tripSegmentUnderConstruction)
      {
        tripSegmentUnderConstruction2 = [(RTTripSegmentManager *)self tripSegmentUnderConstruction];
        identifier = [tripSegmentUnderConstruction2 identifier];
        v32 = identifier == identifierCopy;

        if (!v32)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
          {
            v33 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
            {
              *v337 = 0;
              _os_log_debug_impl(&dword_2304B3000, v33, OS_LOG_TYPE_DEBUG, "RTTripSegmentManager _tripSegmentUnderConstruction has different UUID, setting to nil", v337, 2u);
            }
          }

          [(RTTripSegmentManager *)self setTripSegmentUnderConstruction:0];
          [(RTTripSegmentManager *)self setTripSegmentUnderConstructionLastLocationTimestamp:0];
          [(RTTripSegmentManager *)self setTripSegmentRoadTransitionsArray:0];
        }
      }

      v34 = 0.0;
      v35 = 0.0;
      v36 = 0.0;
      if (locationCopy)
      {
        [locationCopy coordinate];
        v36 = v37;
        [locationCopy coordinate];
        v35 = v38;
      }

      v39 = 0.0;
      if (destinationLocationCopy)
      {
        [destinationLocationCopy coordinate];
        v39 = v40;
        [destinationLocationCopy coordinate];
        v34 = v41;
      }

      tripSegmentUnderConstruction3 = [(RTTripSegmentManager *)self tripSegmentUnderConstruction];
      v43 = tripSegmentUnderConstruction3 == 0;

      v44 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v43)
      {
        if (v44)
        {
          v62 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
          if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
          {
            *v337 = 0;
            _os_log_debug_impl(&dword_2304B3000, v62, OS_LOG_TYPE_DEBUG, "RTTripSegmentManager addTripSegmentData created new RTTripSegment instance", v337, 2u);
          }
        }

        v63 = [objc_alloc(MEMORY[0x277D013D0]) initWithTripSegmentIdentifier:identifierCopy dateInterval:v288 tripDistance:transportation tripDistanceUncertainty:0 modeOfTransportation:number isConsumedByClustering:max tripSegmentSequence:distance tripSegmentSequenceMax:uncertainty originLatitude:v36 originLongitude:v35 destinationLatitude:v39 destinationLongitude:v34 tripCommuteID:dCopy];
        [(RTTripSegmentManager *)self setTripSegmentUnderConstruction:v63];

        tripSegmentUnderConstruction4 = [(RTTripSegmentManager *)self tripSegmentUnderConstruction];
        identifier2 = [tripSegmentUnderConstruction4 identifier];
        [(RTTripSegmentManager *)self _addTripSegmentRoadTransitions:roadsCopy tripSegmentId:identifier2 isStartOfNewTripSegment:1];

        [(RTTripSegmentManager *)self setTripSegmentUnderConstructionLastLocationTimestamp:0];
      }

      else
      {
        if (v44)
        {
          v45 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
          {
            *v337 = 0;
            _os_log_debug_impl(&dword_2304B3000, v45, OS_LOG_TYPE_DEBUG, "RTTripSegmentManager addTripSegmentData appending to existing trip-segment", v337, 2u);
          }
        }

        v46 = MEMORY[0x277D013D0];
        tripSegmentUnderConstruction5 = [(RTTripSegmentManager *)self tripSegmentUnderConstruction];
        v48 = [objc_alloc(MEMORY[0x277D013D0]) initWithTripSegmentIdentifier:identifierCopy dateInterval:v288 tripDistance:transportation tripDistanceUncertainty:0 modeOfTransportation:number isConsumedByClustering:max tripSegmentSequence:distance tripSegmentSequenceMax:uncertainty originLatitude:v36 originLongitude:v35 destinationLatitude:v39 destinationLongitude:v34 tripCommuteID:dCopy];
        v49 = [v46 mergeTripSegment:tripSegmentUnderConstruction5 other:v48];
        [(RTTripSegmentManager *)self setTripSegmentUnderConstruction:v49];

        tripSegmentUnderConstruction6 = [(RTTripSegmentManager *)self tripSegmentUnderConstruction];
        identifier3 = [tripSegmentUnderConstruction6 identifier];
        [(RTTripSegmentManager *)self _addTripSegmentRoadTransitions:roadsCopy tripSegmentId:identifier3 isStartOfNewTripSegment:0];
      }

      array = [MEMORY[0x277CBEB18] array];
      context = objc_autoreleasePoolPush();
      dsema = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(locationsCopy, "count")}];
      for (i = 0; i < [locationsCopy count]; ++i)
      {
        v67 = [RTSynthesizedLocation alloc];
        v68 = [locationsCopy objectAtIndexedSubscript:i];
        v69 = [(RTSynthesizedLocation *)v67 initWithCLTripSegmentLocation:v68];

        [dsema addObject:v69];
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v70 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
        if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
        {
          v263 = [locationsCopy count];
          *v337 = 134217984;
          *&v337[4] = v263;
          _os_log_debug_impl(&dword_2304B3000, v70, OS_LOG_TYPE_DEBUG, "RTTripSegmentManager converted %lu CLTripSegmentLocations to RTSynthesizedLocations", v337, 0xCu);
        }
      }

      *v337 = 0;
      *&v337[8] = v337;
      *&v337[16] = 0x3032000000;
      uncertaintyCopy = COERCE_DOUBLE(__Block_byref_object_copy__1);
      *&v339 = __Block_byref_object_dispose__1;
      *(&v339 + 1) = [MEMORY[0x277CBEA60] array];
      if (self->_elevationAdjuster && [(RTTripSegmentManager *)self _applyElevationAdjustmentToReconstructedRoute])
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          v71 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
          if (os_log_type_enabled(v71, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134217984;
            *&buf[4] = [locationsCopy count];
            _os_log_debug_impl(&dword_2304B3000, v71, OS_LOG_TYPE_DEBUG, "RTTripSegmentManager adjusted elevation for %lu locations", buf, 0xCu);
          }
        }

        v72 = dispatch_semaphore_create(0);
        elevationAdjuster = self->_elevationAdjuster;
        v317[0] = MEMORY[0x277D85DD0];
        v317[1] = 3221225472;
        v317[2] = __264__RTTripSegmentManager__addTripSegmentDataWithIdentifier_dateInterval_tripDistance_tripDistanceUncertainty_modeOfTransportation_locations_roads_isEndOfSegment_originLocation_destinationLocation_tripSegSequenceNumber_tripSegSequenceNumberMax_tripCommuteID_handler___block_invoke;
        v317[3] = &unk_2788C4490;
        v319 = v337;
        v320 = v344;
        v74 = v72;
        v318 = v74;
        [(RTElevationAdjuster *)elevationAdjuster adjustElevationForSynthesizedLocations:dsema handler:v317];
        v75 = (*&v344[8] + 40);
        v76 = *(*&v344[8] + 40);
        v77 = v74;
        v78 = [MEMORY[0x277CBEAA8] now];
        v79 = dispatch_time(0, 3600000000000);
        if (dispatch_semaphore_wait(v77, v79))
        {
          obj = [MEMORY[0x277CBEAA8] now];
          [obj timeIntervalSinceDate:v78];
          v81 = v80;
          v82 = objc_opt_new();
          v83 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_0];
          callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
          v85 = [callStackSymbols filteredArrayUsingPredicate:v83];
          firstObject = [v85 firstObject];

          [v82 submitToCoreAnalytics:firstObject type:1 duration:v81];
          v87 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
          if (os_log_type_enabled(v87, OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_fault_impl(&dword_2304B3000, v87, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
          }

          v88 = MEMORY[0x277CCA9B8];
          *v328 = *MEMORY[0x277CCA450];
          *buf = @"semaphore wait timeout";
          v89 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v328 count:1];
          v90 = [v88 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v89];

          if (v90)
          {
            v91 = v90;

            v76 = v90;
          }
        }

        objc_storeStrong(v75, v76);
      }

      else
      {
        v92 = *&v337[8];
        v93 = dsema;
        v77 = *(v92 + 40);
        *(v92 + 40) = v93;
      }

      v315 = 0u;
      v316 = 0u;
      v313 = 0u;
      v314 = 0u;
      v94 = *(*&v337[8] + 40);
      v95 = [v94 countByEnumeratingWithState:&v313 objects:v336 count:16];
      if (v95)
      {
        v96 = MEMORY[0x277D86220];
        v97 = *v314;
        do
        {
          for (j = 0; j != v95; ++j)
          {
            if (*v314 != v97)
            {
              objc_enumerationMutation(v94);
            }

            v99 = *(*(&v313 + 1) + 8 * j);
            if (![(RTTripSegmentManager *)self isValidSynthesizedLocation:v99])
            {
              if (!os_log_type_enabled(v96, OS_LOG_TYPE_DEBUG))
              {
                continue;
              }

              v105 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
              if (os_log_type_enabled(v105, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138739971;
                *&buf[4] = v99;
                _os_log_debug_impl(&dword_2304B3000, v105, OS_LOG_TYPE_DEBUG, "RTTripSegmentManager invalid properties observed for location sample %{sensitive}@", buf, 0xCu);
              }

              goto LABEL_78;
            }

            tripSegmentUnderConstructionLastLocationTimestamp = [(RTTripSegmentManager *)self tripSegmentUnderConstructionLastLocationTimestamp];
            if (tripSegmentUnderConstructionLastLocationTimestamp)
            {
              tripSegmentUnderConstructionFavorNewerLocationsOverOlderLocations = [(RTTripSegmentManager *)self tripSegmentUnderConstructionFavorNewerLocationsOverOlderLocations];

              if (!tripSegmentUnderConstructionFavorNewerLocationsOverOlderLocations)
              {
                timestamp = [v99 timestamp];
                tripSegmentUnderConstructionLastLocationTimestamp2 = [(RTTripSegmentManager *)self tripSegmentUnderConstructionLastLocationTimestamp];
                v104 = [timestamp isOnOrBefore:tripSegmentUnderConstructionLastLocationTimestamp2];

                if (v104)
                {
                  if (!os_log_type_enabled(v96, OS_LOG_TYPE_DEBUG))
                  {
                    continue;
                  }

                  v105 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
                  if (os_log_type_enabled(v105, OS_LOG_TYPE_DEBUG))
                  {
                    tripSegmentUnderConstructionLastLocationTimestamp3 = [(RTTripSegmentManager *)self tripSegmentUnderConstructionLastLocationTimestamp];
                    *buf = 138740227;
                    *&buf[4] = v99;
                    *&buf[12] = 2117;
                    *&buf[14] = tripSegmentUnderConstructionLastLocationTimestamp3;
                    _os_log_debug_impl(&dword_2304B3000, v105, OS_LOG_TYPE_DEBUG, "RTTripSegmentManager skipping location %{sensitive}@ earlier than most recent location at %{sensitive}@", buf, 0x16u);
                  }

LABEL_78:

                  continue;
                }
              }
            }

            timestamp2 = [v99 timestamp];
            [(RTTripSegmentManager *)self setTripSegmentUnderConstructionLastLocationTimestamp:timestamp2];

            [array addObject:v99];
          }

          v95 = [v94 countByEnumeratingWithState:&v313 objects:v336 count:16];
        }

        while (v95);
      }

      if ([array count] >= 2)
      {
        lastObject = [array lastObject];
        timestamp3 = [lastObject timestamp];
        firstObject2 = [array firstObject];
        timestamp4 = [firstObject2 timestamp];
        v112 = [timestamp3 isAfterDate:timestamp4];

        if (v112)
        {
          v113 = objc_alloc(MEMORY[0x277CCA970]);
          firstObject3 = [array firstObject];
          timestamp5 = [firstObject3 timestamp];
          lastObject2 = [array lastObject];
          timestamp6 = [lastObject2 timestamp];
          v118 = [v113 initWithStartDate:timestamp5 endDate:timestamp6];

          v119 = dispatch_semaphore_create(0);
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3032000000;
          v333 = __Block_byref_object_copy__1;
          v334 = __Block_byref_object_dispose__1;
          v335 = 0;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
          {
            v120 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
            if (os_log_type_enabled(v120, OS_LOG_TYPE_DEBUG))
            {
              v265 = [array count];
              *v328 = 138412546;
              *&v328[4] = v118;
              *&v328[12] = 2048;
              *&v328[14] = v265;
              _os_log_debug_impl(&dword_2304B3000, v120, OS_LOG_TYPE_DEBUG, "RTTripSegmentManager cleaning location store on interval %@ prior to adding %ld locations", v328, 0x16u);
            }
          }

          v310[0] = MEMORY[0x277D85DD0];
          v310[1] = 3221225472;
          v310[2] = __264__RTTripSegmentManager__addTripSegmentDataWithIdentifier_dateInterval_tripDistance_tripDistanceUncertainty_modeOfTransportation_locations_roads_isEndOfSegment_originLocation_destinationLocation_tripSegSequenceNumber_tripSegSequenceNumberMax_tripCommuteID_handler___block_invoke_264;
          v310[3] = &unk_2788C4618;
          v312 = buf;
          v121 = v119;
          v311 = v121;
          [(RTTripSegmentManager *)self _purgeTripSegmentsOnDateInterval:v118 handler:v310];
          v122 = (*&buf[8] + 40);
          v123 = *(*&buf[8] + 40);
          v124 = v121;
          obja = [MEMORY[0x277CBEAA8] now];
          v125 = dispatch_time(0, 3600000000000);
          if (dispatch_semaphore_wait(v124, v125))
          {
            v271 = [MEMORY[0x277CBEAA8] now];
            [v271 timeIntervalSinceDate:obja];
            v127 = v126;
            v128 = objc_opt_new();
            v129 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_0];
            callStackSymbols2 = [MEMORY[0x277CCACC8] callStackSymbols];
            v131 = [callStackSymbols2 filteredArrayUsingPredicate:v129];
            firstObject4 = [v131 firstObject];

            [v128 submitToCoreAnalytics:firstObject4 type:1 duration:v127];
            v133 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
            if (os_log_type_enabled(v133, OS_LOG_TYPE_FAULT))
            {
              *v328 = 0;
              _os_log_fault_impl(&dword_2304B3000, v133, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v328, 2u);
            }

            v134 = MEMORY[0x277CCA9B8];
            *v321 = *MEMORY[0x277CCA450];
            *v328 = @"semaphore wait timeout";
            v135 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v328 forKeys:v321 count:1];
            v136 = [v134 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v135];

            if (v136)
            {
              v137 = v136;

              v123 = v136;
            }
          }

          objc_storeStrong(v122, v123);
          _Block_object_dispose(buf, 8);
        }
      }

      _Block_object_dispose(v337, 8);

      objc_autoreleasePoolPop(context);
      v138 = dispatch_semaphore_create(0);
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v139 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
        if (os_log_type_enabled(v139, OS_LOG_TYPE_DEBUG))
        {
          v264 = [array count];
          *v337 = 134217984;
          *&v337[4] = v264;
          _os_log_debug_impl(&dword_2304B3000, v139, OS_LOG_TYPE_DEBUG, "RTTripSegmentManager adding %lu locations to location store", v337, 0xCu);
        }
      }

      v307[0] = MEMORY[0x277D85DD0];
      v307[1] = 3221225472;
      v307[2] = __264__RTTripSegmentManager__addTripSegmentDataWithIdentifier_dateInterval_tripDistance_tripDistanceUncertainty_modeOfTransportation_locations_roads_isEndOfSegment_originLocation_destinationLocation_tripSegSequenceNumber_tripSegSequenceNumberMax_tripCommuteID_handler___block_invoke_265;
      v307[3] = &unk_2788C4618;
      v309 = v344;
      v140 = v138;
      v308 = v140;
      [(RTTripSegmentManager *)self addLocationsToStore:array handler:v307];
      v141 = (*&v344[8] + 40);
      v142 = *(*&v344[8] + 40);
      dsemaa = v140;
      v143 = [MEMORY[0x277CBEAA8] now];
      v144 = dispatch_time(0, 3600000000000);
      if (dispatch_semaphore_wait(dsemaa, v144))
      {
        v145 = [MEMORY[0x277CBEAA8] now];
        [v145 timeIntervalSinceDate:v143];
        v147 = v146;
        v148 = objc_opt_new();
        v149 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_0];
        callStackSymbols3 = [MEMORY[0x277CCACC8] callStackSymbols];
        v151 = [callStackSymbols3 filteredArrayUsingPredicate:v149];
        firstObject5 = [v151 firstObject];

        [v148 submitToCoreAnalytics:firstObject5 type:1 duration:v147];
        v153 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v153, OS_LOG_TYPE_FAULT))
        {
          *v337 = 0;
          _os_log_fault_impl(&dword_2304B3000, v153, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v337, 2u);
        }

        v154 = MEMORY[0x277CCA9B8];
        *buf = *MEMORY[0x277CCA450];
        *v337 = @"semaphore wait timeout";
        v155 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v337 forKeys:buf count:1];
        v156 = [v154 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v155];

        if (v156)
        {
          v157 = v156;

          v142 = v156;
        }
      }

      objc_storeStrong(v141, v142);
      *v337 = 0;
      *&v337[8] = v337;
      *&v337[16] = 0x3032000000;
      uncertaintyCopy = COERCE_DOUBLE(__Block_byref_object_copy__1);
      *&v339 = __Block_byref_object_dispose__1;
      *(&v339 + 1) = 0;
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v333 = __Block_byref_object_copy__1;
      v334 = __Block_byref_object_dispose__1;
      v335 = 0;
      v158 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (segmentCopy)
      {
        if (v158)
        {
          v159 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
          if (os_log_type_enabled(v159, OS_LOG_TYPE_DEBUG))
          {
            *v328 = 67109120;
            *&v328[4] = 1;
            _os_log_debug_impl(&dword_2304B3000, v159, OS_LOG_TYPE_DEBUG, "RTTripSegmentManager inserting tripSegment in RTTripSegmentStore (isEndOfSegment == %d)", v328, 8u);
          }
        }

        v160 = dispatch_semaphore_create(0);
        tripSegmentStore = [(RTTripSegmentManager *)self tripSegmentStore];
        tripSegmentUnderConstruction = self->_tripSegmentUnderConstruction;
        v304[0] = MEMORY[0x277D85DD0];
        v304[1] = 3221225472;
        v304[2] = __264__RTTripSegmentManager__addTripSegmentDataWithIdentifier_dateInterval_tripDistance_tripDistanceUncertainty_modeOfTransportation_locations_roads_isEndOfSegment_originLocation_destinationLocation_tripSegSequenceNumber_tripSegSequenceNumberMax_tripCommuteID_handler___block_invoke_266;
        v304[3] = &unk_2788C46B8;
        v306 = v337;
        v304[4] = self;
        v163 = v160;
        v305 = v163;
        [tripSegmentStore storeTripSegment:tripSegmentUnderConstruction handler:v304];

        v164 = (*&v337[8] + 40);
        objb = *(*&v337[8] + 40);
        v165 = v163;
        v166 = [MEMORY[0x277CBEAA8] now];
        v167 = dispatch_time(0, 3600000000000);
        if (dispatch_semaphore_wait(v165, v167))
        {
          v168 = [MEMORY[0x277CBEAA8] now];
          [v168 timeIntervalSinceDate:v166];
          v170 = v169;
          v171 = objc_opt_new();
          v172 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_0];
          callStackSymbols4 = [MEMORY[0x277CCACC8] callStackSymbols];
          v174 = [callStackSymbols4 filteredArrayUsingPredicate:v172];
          firstObject6 = [v174 firstObject];

          [v171 submitToCoreAnalytics:firstObject6 type:1 duration:v170];
          v176 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
          if (os_log_type_enabled(v176, OS_LOG_TYPE_FAULT))
          {
            *v328 = 0;
            _os_log_fault_impl(&dword_2304B3000, v176, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v328, 2u);
          }

          v177 = MEMORY[0x277CCA9B8];
          *v321 = *MEMORY[0x277CCA450];
          *v328 = @"semaphore wait timeout";
          v178 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v328 forKeys:v321 count:1];
          v179 = [v177 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v178];

          if (v179)
          {
            v180 = v179;

            objb = v179;
          }
        }

        objc_storeStrong(v164, objb);
        v181 = objc_alloc(MEMORY[0x277CBEAA8]);
        dateInterval = [(RTTripSegment *)self->_tripSegmentUnderConstruction dateInterval];
        startDate2 = [dateInterval startDate];
        objc = [v181 initWithTimeInterval:startDate2 sinceDate:-60.0];

        tripSegmentRoadTransitionsArray = [(RTTripSegmentManager *)self tripSegmentRoadTransitionsArray];
        if (tripSegmentRoadTransitionsArray)
        {
          tripSegmentRoadTransitionsArray2 = [(RTTripSegmentManager *)self tripSegmentRoadTransitionsArray];
          v186 = [tripSegmentRoadTransitionsArray2 count] == 0;

          if (!v186)
          {
            tripSegmentUnderConstruction7 = [(RTTripSegmentManager *)self tripSegmentUnderConstruction];
            identifier4 = [tripSegmentUnderConstruction7 identifier];
            tripSegmentUnderConstruction8 = [(RTTripSegmentManager *)self tripSegmentUnderConstruction];
            dateInterval2 = [tripSegmentUnderConstruction8 dateInterval];
            startDate3 = [dateInterval2 startDate];
            [(RTTripSegmentManager *)self _verifyAndReconcileTripSegmentRoadTransitionsArray:identifier4 startDateOfConstructedTripSegment:startDate3];

            v192 = dispatch_semaphore_create(0);
            *v328 = 0;
            *&v328[8] = v328;
            *&v328[16] = 0x3032000000;
            v329 = __Block_byref_object_copy__1;
            v330 = __Block_byref_object_dispose__1;
            v331 = 0;
            tripSegmentRoadTransitionsStore = [(RTTripSegmentManager *)self tripSegmentRoadTransitionsStore];
            tripSegmentRoadTransitionsArray3 = [(RTTripSegmentManager *)self tripSegmentRoadTransitionsArray];
            v301[0] = MEMORY[0x277D85DD0];
            v301[1] = 3221225472;
            v301[2] = __264__RTTripSegmentManager__addTripSegmentDataWithIdentifier_dateInterval_tripDistance_tripDistanceUncertainty_modeOfTransportation_locations_roads_isEndOfSegment_originLocation_destinationLocation_tripSegSequenceNumber_tripSegSequenceNumberMax_tripCommuteID_handler___block_invoke_267;
            v301[3] = &unk_2788C4618;
            v303 = v328;
            v195 = v192;
            v302 = v195;
            [tripSegmentRoadTransitionsStore storeTripClusterRoadTransitions:tripSegmentRoadTransitionsArray3 handler:v301];

            v196 = v195;
            v197 = [MEMORY[0x277CBEAA8] now];
            v198 = dispatch_time(0, 3600000000000);
            if (dispatch_semaphore_wait(v196, v198))
            {
              v276 = [MEMORY[0x277CBEAA8] now];
              [v276 timeIntervalSinceDate:v197];
              v200 = v199;
              v201 = objc_opt_new();
              v202 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_0];
              callStackSymbols5 = [MEMORY[0x277CCACC8] callStackSymbols];
              v204 = [callStackSymbols5 filteredArrayUsingPredicate:v202];
              firstObject7 = [v204 firstObject];

              [v201 submitToCoreAnalytics:firstObject7 type:1 duration:v200];
              v206 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
              if (os_log_type_enabled(v206, OS_LOG_TYPE_FAULT))
              {
                *v321 = 0;
                _os_log_fault_impl(&dword_2304B3000, v206, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v321, 2u);
              }

              v207 = MEMORY[0x277CCA9B8];
              v348[0] = *MEMORY[0x277CCA450];
              *v321 = @"semaphore wait timeout";
              v208 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v321 forKeys:v348 count:1];
              v209 = [v207 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v208];

              if (v209)
              {
                v210 = v209;
              }
            }

            else
            {
              v209 = 0;
            }

            v212 = v209;
            if (*(*&v328[8] + 40) | v212)
            {
              v213 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
              if (os_log_type_enabled(v213, OS_LOG_TYPE_ERROR))
              {
                v266 = objc_opt_class();
                v267 = NSStringFromClass(v266);
                v268 = NSStringFromSelector(a2);
                v269 = *(*&v328[8] + 40);
                *v321 = 138413058;
                *&v321[4] = v267;
                v322 = 2112;
                v323 = v268;
                v324 = 2112;
                v325 = v269;
                v326 = 2112;
                v327 = v212;
                _os_log_error_impl(&dword_2304B3000, v213, OS_LOG_TYPE_ERROR, "%@:%@,error,%@,%@", v321, 0x2Au);
              }
            }

            [(RTTripSegmentManager *)self setTripSegmentRoadTransitionsArray:0];

            _Block_object_dispose(v328, 8);
          }
        }

        [(RTTripSegmentManager *)self setTripSegmentUnderConstruction:0];
        [(RTTripSegmentManager *)self setTripSegmentUnderConstructionLastLocationTimestamp:0];
      }

      else
      {
        if (!v158)
        {
          objc = 0;
          goto LABEL_133;
        }

        v165 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
        if (os_log_type_enabled(v165, OS_LOG_TYPE_DEBUG))
        {
          *v328 = 67109120;
          *&v328[4] = 0;
          _os_log_debug_impl(&dword_2304B3000, v165, OS_LOG_TYPE_DEBUG, "RTTripSegmentManager maintaining tripSegment under construction (isEndOfSegment == %d)", v328, 8u);
        }

        objc = 0;
      }

LABEL_133:
      defaultsManager = [(RTTripSegmentManager *)self defaultsManager];
      v215 = [defaultsManager objectForKey:@"RTDefaultsTripSegmentEnableRoadFamiliarityStore"];

      if (v215 && [v215 BOOLValue] && objc_msgSend(roadsCopy, "count"))
      {
        v216 = dispatch_semaphore_create(0);
        geoRoadDataStore = [(RTTripSegmentManager *)self geoRoadDataStore];
        v297[0] = MEMORY[0x277D85DD0];
        v297[1] = 3221225472;
        v297[2] = __264__RTTripSegmentManager__addTripSegmentDataWithIdentifier_dateInterval_tripDistance_tripDistanceUncertainty_modeOfTransportation_locations_roads_isEndOfSegment_originLocation_destinationLocation_tripSegSequenceNumber_tripSegSequenceNumberMax_tripCommuteID_handler___block_invoke_271;
        v297[3] = &unk_2788C46B8;
        v300 = buf;
        v298 = roadsCopy;
        v218 = v216;
        v299 = v218;
        [geoRoadDataStore storeCLTripSegmentRoadData:v298 handler:v297];

        v219 = (*&buf[8] + 40);
        v274 = *(*&buf[8] + 40);
        v220 = v218;
        v277 = [MEMORY[0x277CBEAA8] now];
        v221 = dispatch_time(0, 3600000000000);
        if (dispatch_semaphore_wait(v220, v221))
        {
          v272 = [MEMORY[0x277CBEAA8] now];
          [v272 timeIntervalSinceDate:v277];
          v223 = v222;
          v224 = objc_opt_new();
          v225 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_0];
          callStackSymbols6 = [MEMORY[0x277CCACC8] callStackSymbols];
          v227 = [callStackSymbols6 filteredArrayUsingPredicate:v225];
          firstObject8 = [v227 firstObject];

          [v224 submitToCoreAnalytics:firstObject8 type:1 duration:v223];
          v229 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
          if (os_log_type_enabled(v229, OS_LOG_TYPE_FAULT))
          {
            *v328 = 0;
            _os_log_fault_impl(&dword_2304B3000, v229, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v328, 2u);
          }

          v230 = MEMORY[0x277CCA9B8];
          *v321 = *MEMORY[0x277CCA450];
          *v328 = @"semaphore wait timeout";
          v231 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v328 forKeys:v321 count:1];
          v232 = [v230 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v231];

          if (v232)
          {
            v233 = v232;

            v274 = v232;
          }
        }

        objc_storeStrong(v219, v274);
      }

      if (objc)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          v234 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
          if (os_log_type_enabled(v234, OS_LOG_TYPE_DEBUG))
          {
            *v328 = 0;
            _os_log_debug_impl(&dword_2304B3000, v234, OS_LOG_TYPE_DEBUG, "RTTripSegmentManager performing post-storeTripSegment sanitization.", v328, 2u);
          }
        }

        v235 = dispatch_semaphore_create(0);
        *v328 = 0;
        *&v328[8] = v328;
        *&v328[16] = 0x3032000000;
        v329 = __Block_byref_object_copy__1;
        v330 = __Block_byref_object_dispose__1;
        v331 = 0;
        v294[0] = MEMORY[0x277D85DD0];
        v294[1] = 3221225472;
        v294[2] = __264__RTTripSegmentManager__addTripSegmentDataWithIdentifier_dateInterval_tripDistance_tripDistanceUncertainty_modeOfTransportation_locations_roads_isEndOfSegment_originLocation_destinationLocation_tripSegSequenceNumber_tripSegSequenceNumberMax_tripCommuteID_handler___block_invoke_272;
        v294[3] = &unk_2788C4618;
        v296 = v328;
        v236 = v235;
        v295 = v236;
        [(RTTripSegmentManager *)self _sanitizeTripSegmentDatabaseSinceDate:objc handler:v294];
        v237 = (*&v328[8] + 40);
        v278 = *(*&v328[8] + 40);
        v238 = v236;
        v239 = [MEMORY[0x277CBEAA8] now];
        v240 = dispatch_time(0, 3600000000000);
        if (dispatch_semaphore_wait(v238, v240))
        {
          v241 = [MEMORY[0x277CBEAA8] now];
          [v241 timeIntervalSinceDate:v239];
          v243 = v242;
          v244 = objc_opt_new();
          v245 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_0];
          callStackSymbols7 = [MEMORY[0x277CCACC8] callStackSymbols];
          v247 = [callStackSymbols7 filteredArrayUsingPredicate:v245];
          firstObject9 = [v247 firstObject];

          [v244 submitToCoreAnalytics:firstObject9 type:1 duration:v243];
          v249 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
          if (os_log_type_enabled(v249, OS_LOG_TYPE_FAULT))
          {
            *v321 = 0;
            _os_log_fault_impl(&dword_2304B3000, v249, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v321, 2u);
          }

          v250 = MEMORY[0x277CCA9B8];
          v348[0] = *MEMORY[0x277CCA450];
          *v321 = @"semaphore wait timeout";
          v251 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v321 forKeys:v348 count:1];
          v252 = [v250 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v251];

          if (v252)
          {
            v253 = v252;

            v278 = v252;
          }
        }

        objc_storeStrong(v237, v278);
        _Block_object_dispose(v328, 8);
      }

      handlerCopy[2](handlerCopy, *(*&v344[8] + 40));

      _Block_object_dispose(buf, 8);
      _Block_object_dispose(v337, 8);

      goto LABEL_154;
    }

    if (v27)
    {
      v57 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
      {
        *v337 = 0;
        _os_log_debug_impl(&dword_2304B3000, v57, OS_LOG_TYPE_DEBUG, "RTTripSegmentManager Possible duplication of trip segment, date interval overlaps with previous entry. Not adding new data.", v337, 2u);
      }
    }

    v58 = MEMORY[0x277CCA9B8];
    v340 = *MEMORY[0x277CCA450];
    v341 = @"TripSegment already exists with this dateInterval.";
    v59 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v341 forKeys:&v340 count:1];
    v60 = [v58 errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v59];
    v61 = *(*&v344[8] + 40);
    *(*&v344[8] + 40) = v60;

    handlerCopy[2](handlerCopy, *(*&v344[8] + 40));
  }

LABEL_154:
  _Block_object_dispose(v344, 8);
}

void __264__RTTripSegmentManager__addTripSegmentDataWithIdentifier_dateInterval_tripDistance_tripDistanceUncertainty_modeOfTransportation_locations_roads_isEndOfSegment_originLocation_destinationLocation_tripSegSequenceNumber_tripSegSequenceNumberMax_tripCommuteID_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = [*(*(*(a1 + 40) + 8) + 40) count];
      v10 = 134218242;
      v11 = v9;
      v12 = 2112;
      v13 = v7;
      _os_log_debug_impl(&dword_2304B3000, v8, OS_LOG_TYPE_DEBUG, "RTTripSegmentManager adjustElevationForLocations, location count, %lu, error, %@", &v10, 0x16u);
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void __264__RTTripSegmentManager__addTripSegmentDataWithIdentifier_dateInterval_tripDistance_tripDistanceUncertainty_modeOfTransportation_locations_roads_isEndOfSegment_originLocation_destinationLocation_tripSegSequenceNumber_tripSegSequenceNumberMax_tripCommuteID_handler___block_invoke_264(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = 138412290;
      v7 = v4;
      _os_log_debug_impl(&dword_2304B3000, v5, OS_LOG_TYPE_DEBUG, "RTTripSegmentManager clean location store for new batch, error, %@", &v6, 0xCu);
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void __264__RTTripSegmentManager__addTripSegmentDataWithIdentifier_dateInterval_tripDistance_tripDistanceUncertainty_modeOfTransportation_locations_roads_isEndOfSegment_originLocation_destinationLocation_tripSegSequenceNumber_tripSegSequenceNumberMax_tripCommuteID_handler___block_invoke_265(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = 138412290;
      v7 = v4;
      _os_log_debug_impl(&dword_2304B3000, v5, OS_LOG_TYPE_DEBUG, "RTTripSegmentManager addLocationsToStore, error, %@", &v6, 0xCu);
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void __264__RTTripSegmentManager__addTripSegmentDataWithIdentifier_dateInterval_tripDistance_tripDistanceUncertainty_modeOfTransportation_locations_roads_isEndOfSegment_originLocation_destinationLocation_tripSegSequenceNumber_tripSegSequenceNumberMax_tripCommuteID_handler___block_invoke_266(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = [*(a1 + 32) tripSegmentUnderConstruction];
      v7 = 138412546;
      v8 = v6;
      v9 = 2112;
      v10 = v4;
      _os_log_debug_impl(&dword_2304B3000, v5, OS_LOG_TYPE_DEBUG, "RTTripSegmentManager stored trip segment, %@, error, %@", &v7, 0x16u);
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void __264__RTTripSegmentManager__addTripSegmentDataWithIdentifier_dateInterval_tripDistance_tripDistanceUncertainty_modeOfTransportation_locations_roads_isEndOfSegment_originLocation_destinationLocation_tripSegSequenceNumber_tripSegSequenceNumberMax_tripCommuteID_handler___block_invoke_267(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void __264__RTTripSegmentManager__addTripSegmentDataWithIdentifier_dateInterval_tripDistance_tripDistanceUncertainty_modeOfTransportation_locations_roads_isEndOfSegment_originLocation_destinationLocation_tripSegSequenceNumber_tripSegSequenceNumberMax_tripCommuteID_handler___block_invoke_271(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = [*(a1 + 32) count];
      v7 = 134218242;
      v8 = v6;
      v9 = 2112;
      v10 = v4;
      _os_log_debug_impl(&dword_2304B3000, v5, OS_LOG_TYPE_DEBUG, "RTTripSegmentManager stored %lu geo road data, error, %@", &v7, 0x16u);
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void __264__RTTripSegmentManager__addTripSegmentDataWithIdentifier_dateInterval_tripDistance_tripDistanceUncertainty_modeOfTransportation_locations_roads_isEndOfSegment_originLocation_destinationLocation_tripSegSequenceNumber_tripSegSequenceNumberMax_tripCommuteID_handler___block_invoke_272(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)addTripSegmentData:(id)data isEndOfSegment:(BOOL)segment originLocation:(id)location destinationLocation:(id)destinationLocation tripSegSequenceNumber:(int)number tripSegSequenceNumberMax:(int)max tripCommuteID:(id)d handler:(id)self0
{
  segmentCopy = segment;
  v50 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  locationCopy = location;
  destinationLocationCopy = destinationLocation;
  dCopy = d;
  handlerCopy = handler;
  if (!dataCopy)
  {
    v21 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v47 = "[RTTripSegmentManager addTripSegmentData:isEndOfSegment:originLocation:destinationLocation:tripSegSequenceNumber:tripSegSequenceNumberMax:tripCommuteID:handler:]";
      v48 = 1024;
      v49 = 1253;
      _os_log_error_impl(&dword_2304B3000, v21, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: clTripSegmentData (in %s:%d)", buf, 0x12u);
    }
  }

  if (self->_isTripSegmentGenerationEnabled)
  {
    tripSegmentID = [dataCopy tripSegmentID];
    numberCopy = number;
    v22 = objc_alloc(MEMORY[0x277CCA970]);
    startDate = [dataCopy startDate];
    [dataCopy endDate];
    v44 = v42 = segmentCopy;
    v23 = [v22 initWithStartDate:startDate endDate:v44];
    [dataCopy distance_m];
    v25 = v24;
    [dataCopy distanceUnc_m];
    v27 = v26;
    v28 = dCopy;
    v29 = locationCopy;
    v30 = +[RTTripSegmentManager translateModeOfTransport:](RTTripSegmentManager, "translateModeOfTransport:", [dataCopy modeOfTransport]);
    [dataCopy tripLocations];
    v32 = v31 = destinationLocationCopy;
    routeRoads = [dataCopy routeRoads];
    selfCopy = self;
    v35 = handlerCopy;
    v36 = routeRoads;
    HIDWORD(v40) = max;
    v37 = tripSegmentID;
    LODWORD(v40) = numberCopy;
    v39 = v29;
    v38 = v30;
    locationCopy = v29;
    dCopy = v28;
    [(RTTripSegmentManager *)selfCopy addTripSegmentDataWithIdentifier:tripSegmentID dateInterval:v23 tripDistance:v38 tripDistanceUncertainty:v32 modeOfTransportation:routeRoads locations:v42 roads:v25 isEndOfSegment:v27 originLocation:v39 destinationLocation:v31 tripSegSequenceNumber:v40 tripSegSequenceNumberMax:v28 tripCommuteID:v35 handler:?];

    handlerCopy = v35;
    destinationLocationCopy = v31;

LABEL_10:
    goto LABEL_11;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v37 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_2304B3000, v37, OS_LOG_TYPE_DEBUG, "RTTripSegmentManager: trip segment generation is disabled on device.", buf, 2u);
    }

    goto LABEL_10;
  }

LABEL_11:
}

- (void)addTripSegmentDataWithIdentifier:(id)identifier dateInterval:(id)interval tripDistance:(double)distance tripDistanceUncertainty:(double)uncertainty modeOfTransportation:(int64_t)transportation locations:(id)locations roads:(id)roads isEndOfSegment:(BOOL)self0 originLocation:(id)self1 destinationLocation:(id)self2 tripSegSequenceNumber:(int)self3 tripSegSequenceNumberMax:(int)self4 tripCommuteID:(id)self5 handler:(id)self6
{
  identifierCopy = identifier;
  intervalCopy = interval;
  locationsCopy = locations;
  roadsCopy = roads;
  locationCopy = location;
  destinationLocationCopy = destinationLocation;
  dCopy = d;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __263__RTTripSegmentManager_addTripSegmentDataWithIdentifier_dateInterval_tripDistance_tripDistanceUncertainty_modeOfTransportation_locations_roads_isEndOfSegment_originLocation_destinationLocation_tripSegSequenceNumber_tripSegSequenceNumberMax_tripCommuteID_handler___block_invoke;
  block[3] = &unk_2788C46E0;
  block[4] = self;
  v42 = identifierCopy;
  distanceCopy = distance;
  uncertaintyCopy = uncertainty;
  transportationCopy = transportation;
  v43 = intervalCopy;
  v44 = locationsCopy;
  segmentCopy = segment;
  v45 = roadsCopy;
  v46 = locationCopy;
  numberCopy = number;
  maxCopy = max;
  v47 = destinationLocationCopy;
  v48 = dCopy;
  v49 = handlerCopy;
  v40 = handlerCopy;
  v31 = dCopy;
  v32 = destinationLocationCopy;
  v33 = locationCopy;
  v34 = roadsCopy;
  v35 = locationsCopy;
  v36 = intervalCopy;
  v37 = identifierCopy;
  dispatch_async(queue, block);
}

- (void)_deleteTripSegmentWithUUID:(id)d handler:(id)handler
{
  v164[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  handlerCopy = handler;
  if (!dCopy)
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v160 = 136315394;
      *&v160[4] = "[RTTripSegmentManager _deleteTripSegmentWithUUID:handler:]";
      *&v160[12] = 1024;
      *&v160[14] = 1314;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: uuid (in %s:%d)", v160, 0x12u);
    }
  }

  if (!handlerCopy)
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v160 = 136315394;
      *&v160[4] = "[RTTripSegmentManager _deleteTripSegmentWithUUID:handler:]";
      *&v160[12] = 1024;
      *&v160[14] = 1315;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", v160, 0x12u);
    }
  }

  v9 = dispatch_semaphore_create(0);
  *v160 = 0;
  *&v160[8] = v160;
  *&v160[16] = 0x3032000000;
  v161 = __Block_byref_object_copy__1;
  v162 = __Block_byref_object_dispose__1;
  v163 = 0;
  v138 = 0;
  v139 = &v138;
  v140 = 0x3032000000;
  v141 = __Block_byref_object_copy__1;
  v142 = __Block_byref_object_dispose__1;
  v143 = 0;
  tripSegmentStore = [(RTTripSegmentManager *)self tripSegmentStore];
  v133[0] = MEMORY[0x277D85DD0];
  v133[1] = 3221225472;
  v133[2] = __59__RTTripSegmentManager__deleteTripSegmentWithUUID_handler___block_invoke;
  v133[3] = &unk_2788C4708;
  v136 = &v138;
  v11 = dCopy;
  v134 = v11;
  v137 = v160;
  v12 = v9;
  v135 = v12;
  [tripSegmentStore fetchTripSegmentsWithUUID:v11 handler:v133];

  v13 = v12;
  v14 = [MEMORY[0x277CBEAA8] now];
  v15 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v13, v15))
  {
    v16 = [MEMORY[0x277CBEAA8] now];
    [v16 timeIntervalSinceDate:v14];
    v18 = v17;
    v19 = objc_opt_new();
    v20 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_0];
    callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
    v22 = [callStackSymbols filteredArrayUsingPredicate:v20];
    firstObject = [v22 firstObject];

    [v19 submitToCoreAnalytics:firstObject type:1 duration:v18];
    v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v24, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v25 = MEMORY[0x277CCA9B8];
    *v154 = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v154 count:1];
    v27 = [v25 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v26];

    if (v27)
    {
      v28 = v27;
    }
  }

  else
  {
    v27 = 0;
  }

  v29 = v27;
  v30 = *(*&v160[8] + 40);
  if (!v30)
  {
    v30 = v29;
    if (!v30)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v158 = __Block_byref_object_copy__1;
      *&v159 = __Block_byref_object_dispose__1;
      *(&v159 + 1) = 0;
      v33 = objc_alloc(MEMORY[0x277CCA970]);
      v34 = objc_alloc(MEMORY[0x277CBEAA8]);
      startDate = [v139[5] startDate];
      v36 = [v34 initWithTimeInterval:startDate sinceDate:-0.001];
      v37 = objc_alloc(MEMORY[0x277CBEAA8]);
      endDate = [v139[5] endDate];
      v39 = [v37 initWithTimeInterval:endDate sinceDate:0.001];
      v40 = [v33 initWithStartDate:v36 endDate:v39];
      v41 = v139[5];
      v139[5] = v40;

      v42 = dispatch_semaphore_create(0);
      locationStore = [(RTTripSegmentManager *)self locationStore];
      v44 = v139[5];
      v130[0] = MEMORY[0x277D85DD0];
      v130[1] = 3221225472;
      v130[2] = __59__RTTripSegmentManager__deleteTripSegmentWithUUID_handler___block_invoke_273;
      v130[3] = &unk_2788C4618;
      v132 = buf;
      v45 = v42;
      v131 = v45;
      [locationStore removeLocationsOnDateInterval:v44 handler:v130];

      dsema = v45;
      v46 = [MEMORY[0x277CBEAA8] now];
      v47 = dispatch_time(0, 3600000000000);
      if (dispatch_semaphore_wait(dsema, v47))
      {
        v48 = [MEMORY[0x277CBEAA8] now];
        [v48 timeIntervalSinceDate:v46];
        v50 = v49;
        v51 = objc_opt_new();
        v52 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_0];
        callStackSymbols2 = [MEMORY[0x277CCACC8] callStackSymbols];
        v54 = [callStackSymbols2 filteredArrayUsingPredicate:v52];
        firstObject2 = [v54 firstObject];

        [v51 submitToCoreAnalytics:firstObject2 type:1 duration:v50];
        v56 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v56, OS_LOG_TYPE_FAULT))
        {
          *v154 = 0;
          _os_log_fault_impl(&dword_2304B3000, v56, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v154, 2u);
        }

        v57 = MEMORY[0x277CCA9B8];
        *v151 = *MEMORY[0x277CCA450];
        *v154 = @"semaphore wait timeout";
        v58 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v154 forKeys:v151 count:1];
        v59 = [v57 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v58];

        if (v59)
        {
          v60 = v59;
        }
      }

      else
      {
        v59 = 0;
      }

      v29 = v59;
      v61 = *(*&buf[8] + 40);
      if (v61 || (v61 = v29) != 0)
      {
        v31 = v61;
        v62 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
        if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
        {
          v87 = objc_opt_class();
          v88 = NSStringFromClass(v87);
          v89 = NSStringFromSelector(a2);
          v90 = *(*&buf[8] + 40);
          *v154 = 138413058;
          *&v154[4] = v88;
          *&v154[12] = 2112;
          *&v154[14] = v89;
          *&v154[22] = 2112;
          v155 = v90;
          LOWORD(v156) = 2112;
          *(&v156 + 2) = v29;
          _os_log_error_impl(&dword_2304B3000, v62, OS_LOG_TYPE_ERROR, "%@:%@,removeLocationsOnDateInterval error,%@,%@", v154, 0x2Au);
        }

        handlerCopy[2](handlerCopy, v31);
        goto LABEL_32;
      }

      *v154 = 0;
      *&v154[8] = v154;
      *&v154[16] = 0x3032000000;
      v155 = __Block_byref_object_copy__1;
      *&v156 = __Block_byref_object_dispose__1;
      *(&v156 + 1) = 0;
      v67 = dispatch_semaphore_create(0);
      tripSegmentRoadTransitionsStore = [(RTTripSegmentManager *)self tripSegmentRoadTransitionsStore];
      v127[0] = MEMORY[0x277D85DD0];
      v127[1] = 3221225472;
      v127[2] = __59__RTTripSegmentManager__deleteTripSegmentWithUUID_handler___block_invoke_274;
      v127[3] = &unk_2788C4618;
      v129 = v154;
      v69 = v67;
      v128 = v69;
      [tripSegmentRoadTransitionsStore deleteTripClusterRoadTransitionsWithUUID:v11 handler:v127];

      v120 = v69;
      v70 = [MEMORY[0x277CBEAA8] now];
      v71 = dispatch_time(0, 3600000000000);
      if (dispatch_semaphore_wait(v120, v71))
      {
        v72 = [MEMORY[0x277CBEAA8] now];
        [v72 timeIntervalSinceDate:v70];
        v74 = v73;
        v75 = objc_opt_new();
        v76 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_0];
        callStackSymbols3 = [MEMORY[0x277CCACC8] callStackSymbols];
        v78 = [callStackSymbols3 filteredArrayUsingPredicate:v76];
        firstObject3 = [v78 firstObject];

        [v75 submitToCoreAnalytics:firstObject3 type:1 duration:v74];
        v80 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v80, OS_LOG_TYPE_FAULT))
        {
          *v151 = 0;
          _os_log_fault_impl(&dword_2304B3000, v80, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v151, 2u);
        }

        v81 = MEMORY[0x277CCA9B8];
        *v144 = *MEMORY[0x277CCA450];
        *v151 = @"semaphore wait timeout";
        v82 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v151 forKeys:v144 count:1];
        v83 = [v81 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v82];

        if (v83)
        {
          v84 = v83;
        }
      }

      else
      {
        v83 = 0;
      }

      v29 = v83;
      v85 = *(*&v154[8] + 40);
      if (v85 || (v85 = v29) != 0)
      {
        v31 = v85;
        v86 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
        if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
        {
          v111 = objc_opt_class();
          v112 = NSStringFromClass(v111);
          v113 = NSStringFromSelector(a2);
          v114 = *(*&v154[8] + 40);
          *v151 = 138413058;
          *&v151[4] = v112;
          *&v151[12] = 2112;
          *&v151[14] = v113;
          *&v151[22] = 2112;
          v152 = v114;
          LOWORD(v153) = 2112;
          *(&v153 + 2) = v29;
          _os_log_error_impl(&dword_2304B3000, v86, OS_LOG_TYPE_ERROR, "%@:%@,deleteTripClusterRoadTransitionsWithUUID error,%@,%@", v151, 0x2Au);
        }

        handlerCopy[2](handlerCopy, v31);
        goto LABEL_44;
      }

      *v151 = 0;
      *&v151[8] = v151;
      *&v151[16] = 0x3032000000;
      v152 = __Block_byref_object_copy__1;
      *&v153 = __Block_byref_object_dispose__1;
      *(&v153 + 1) = 0;
      v91 = dispatch_semaphore_create(0);
      tripSegmentStore2 = [(RTTripSegmentManager *)self tripSegmentStore];
      v124[0] = MEMORY[0x277D85DD0];
      v124[1] = 3221225472;
      v124[2] = __59__RTTripSegmentManager__deleteTripSegmentWithUUID_handler___block_invoke_275;
      v124[3] = &unk_2788C4618;
      v126 = v151;
      v93 = v91;
      v125 = v93;
      [tripSegmentStore2 deleteTripSegmentWithUUID:v11 handler:v124];

      v119 = v93;
      v94 = [MEMORY[0x277CBEAA8] now];
      v95 = dispatch_time(0, 3600000000000);
      if (dispatch_semaphore_wait(v119, v95))
      {
        v96 = [MEMORY[0x277CBEAA8] now];
        [v96 timeIntervalSinceDate:v94];
        v98 = v97;
        v99 = objc_opt_new();
        v100 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_0];
        callStackSymbols4 = [MEMORY[0x277CCACC8] callStackSymbols];
        v102 = [callStackSymbols4 filteredArrayUsingPredicate:v100];
        firstObject4 = [v102 firstObject];

        [v99 submitToCoreAnalytics:firstObject4 type:1 duration:v98];
        v104 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v104, OS_LOG_TYPE_FAULT))
        {
          *v144 = 0;
          _os_log_fault_impl(&dword_2304B3000, v104, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v144, 2u);
        }

        v105 = MEMORY[0x277CCA9B8];
        v164[0] = *MEMORY[0x277CCA450];
        *v144 = @"semaphore wait timeout";
        v106 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v144 forKeys:v164 count:1];
        v107 = [v105 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v106];

        if (v107)
        {
          v108 = v107;
        }
      }

      else
      {
        v107 = 0;
      }

      v29 = v107;
      v109 = *(*&v151[8] + 40);
      if (v109)
      {
        v31 = v109;
      }

      else
      {
        v31 = v29;
        if (!v31)
        {
LABEL_57:
          handlerCopy[2](handlerCopy, v31);

          _Block_object_dispose(v151, 8);
LABEL_44:

          _Block_object_dispose(v154, 8);
LABEL_32:

          _Block_object_dispose(buf, 8);
          goto LABEL_20;
        }
      }

      v110 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v110, OS_LOG_TYPE_ERROR))
      {
        v115 = objc_opt_class();
        v116 = NSStringFromClass(v115);
        v117 = NSStringFromSelector(a2);
        v118 = *(*&v151[8] + 40);
        *v144 = 138413058;
        *&v144[4] = v116;
        v145 = 2112;
        v146 = v117;
        v147 = 2112;
        v148 = v118;
        v149 = 2112;
        v150 = v29;
        _os_log_error_impl(&dword_2304B3000, v110, OS_LOG_TYPE_ERROR, "%@:%@,deleteTripSegmentWithUUID error,%@,%@", v144, 0x2Au);
      }

      goto LABEL_57;
    }
  }

  v31 = v30;
  v32 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
  if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
  {
    v63 = objc_opt_class();
    v64 = NSStringFromClass(v63);
    v65 = NSStringFromSelector(a2);
    v66 = *(*&v160[8] + 40);
    *buf = 138413058;
    *&buf[4] = v64;
    *&buf[12] = 2112;
    *&buf[14] = v65;
    *&buf[22] = 2112;
    v158 = v66;
    LOWORD(v159) = 2112;
    *(&v159 + 2) = v29;
    _os_log_error_impl(&dword_2304B3000, v32, OS_LOG_TYPE_ERROR, "%@:%@,fetchTripSegmentsWithUUID error,%@,%@", buf, 0x2Au);
  }

  handlerCopy[2](handlerCopy, v31);
LABEL_20:

  _Block_object_dispose(&v138, 8);
  _Block_object_dispose(v160, 8);
}

void __59__RTTripSegmentManager__deleteTripSegmentWithUUID_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    if (!v6)
    {
      if ([v5 count])
      {
        v8 = [v5 objectAtIndexedSubscript:0];
        v9 = [v8 dateInterval];
        v10 = *(*(a1 + 48) + 8);
        v11 = *(v10 + 40);
        *(v10 + 40) = v9;

        if ([v5 count] >= 2)
        {
          v12 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            v16 = [v5 count];
            v17 = *(a1 + 32);
            v18 = 134218242;
            v19 = v16;
            v20 = 2112;
            v21 = v17;
            _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "RTTripSegmentManager:deleteTripSegmentWithUUID multiple (%tu) trip segments found with UUID %@", &v18, 0x16u);
          }
        }
      }
    }
  }

  v13 = *(*(a1 + 56) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v7;
  v15 = v7;

  dispatch_semaphore_signal(*(a1 + 40));
}

void __59__RTTripSegmentManager__deleteTripSegmentWithUUID_handler___block_invoke_273(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void __59__RTTripSegmentManager__deleteTripSegmentWithUUID_handler___block_invoke_274(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void __59__RTTripSegmentManager__deleteTripSegmentWithUUID_handler___block_invoke_275(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)deleteTripSegmentWithUUID:(id)d handler:(id)handler
{
  v21 = *MEMORY[0x277D85DE8];
  dCopy = d;
  handlerCopy = handler;
  v8 = handlerCopy;
  if (dCopy)
  {
    if (handlerCopy)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v18 = "[RTTripSegmentManager deleteTripSegmentWithUUID:handler:]";
    v19 = 1024;
    v20 = 1413;
    _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: uuid (in %s:%d)", buf, 0x12u);
  }

  if (!v8)
  {
LABEL_7:
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "[RTTripSegmentManager deleteTripSegmentWithUUID:handler:]";
      v19 = 1024;
      v20 = 1414;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

LABEL_10:
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__RTTripSegmentManager_deleteTripSegmentWithUUID_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v15 = dCopy;
  v16 = v8;
  v12 = v8;
  v13 = dCopy;
  dispatch_async(queue, block);
}

- (id)_getPurgePolicyOverrideDaysToPersistTripSegmentData:(id)data
{
  dataCopy = data;
  defaultsManager = [(RTTripSegmentManager *)self defaultsManager];
  v6 = [defaultsManager objectForKey:@"RTDefaultsTripSegmentOverrideDaysToPersistTripSegmentData"];

  if (v6)
  {
    [v6 floatValue];
    v8 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow:v7 * -86400.0];
    v9 = [v8 earlierDate:dataCopy];
  }

  else
  {
    v9 = dataCopy;
  }

  return v9;
}

- (void)purgeTripSegmentsPredating:(id)predating handler:(id)handler
{
  v21 = *MEMORY[0x277D85DE8];
  predatingCopy = predating;
  handlerCopy = handler;
  v8 = handlerCopy;
  if (predatingCopy)
  {
    if (handlerCopy)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v18 = "[RTTripSegmentManager purgeTripSegmentsPredating:handler:]";
    v19 = 1024;
    v20 = 1439;
    _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: date (in %s:%d)", buf, 0x12u);
  }

  if (!v8)
  {
LABEL_7:
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "[RTTripSegmentManager purgeTripSegmentsPredating:handler:]";
      v19 = 1024;
      v20 = 1440;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

LABEL_10:
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__RTTripSegmentManager_purgeTripSegmentsPredating_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v15 = predatingCopy;
  v16 = v8;
  v12 = v8;
  v13 = predatingCopy;
  dispatch_async(queue, block);
}

void __59__RTTripSegmentManager_purgeTripSegmentsPredating_handler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _getPurgePolicyOverrideDaysToPersistTripSegmentData:*(a1 + 40)];
  v3 = dispatch_group_create();
  dispatch_group_enter(v3);
  v4 = [*(a1 + 32) tripSegmentStore];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __59__RTTripSegmentManager_purgeTripSegmentsPredating_handler___block_invoke_2;
  v22[3] = &unk_2788C4730;
  v5 = v3;
  v23 = v5;
  [v4 purgeTripSegmentsPredating:v2 handler:v22];

  dispatch_group_enter(v5);
  v6 = [*(a1 + 32) locationStore];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __59__RTTripSegmentManager_purgeTripSegmentsPredating_handler___block_invoke_3;
  v20[3] = &unk_2788C4730;
  v7 = v5;
  v21 = v7;
  [v6 removeLocationsPredating:v2 handler:v20];

  dispatch_group_enter(v7);
  v8 = [*(a1 + 32) tripSegmentRoadTransitionsStore];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __59__RTTripSegmentManager_purgeTripSegmentsPredating_handler___block_invoke_4;
  v18[3] = &unk_2788C4730;
  v9 = v7;
  v19 = v9;
  [v8 removeTripClusterRoadTransitionsPredating:v2 handler:v18];

  v10 = [*(a1 + 32) defaultsManager];
  v11 = [v10 objectForKey:@"RTDefaultsTripSegmentEnableRoadFamiliarityStore"];

  if (!v11 || ([v11 BOOLValue] & 1) == 0)
  {
    dispatch_group_enter(v9);
    v12 = [*(a1 + 32) geoRoadDataStore];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __59__RTTripSegmentManager_purgeTripSegmentsPredating_handler___block_invoke_5;
    v16[3] = &unk_2788C4730;
    v17 = v9;
    [v12 purgeGeoRoadDataWithHandler:v16];
  }

  v13 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__RTTripSegmentManager_purgeTripSegmentsPredating_handler___block_invoke_6;
  block[3] = &unk_2788C4758;
  v15 = *(a1 + 48);
  dispatch_group_notify(v9, v13, block);
}

uint64_t __59__RTTripSegmentManager_purgeTripSegmentsPredating_handler___block_invoke_6(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

- (int)getValueForDaysToKeepTripSegmentLocationData
{
  v3 = +[RTPlatform currentPlatform];
  if ([v3 internalInstall])
  {
    v4 = 28;
  }

  else
  {
    v4 = 3;
  }

  defaultsManager = [(RTTripSegmentManager *)self defaultsManager];
  v6 = [defaultsManager objectForKey:@"RTDefaultsTripSegmentDaysToPersistTripSegmentLocationData"];

  if (v6)
  {
    integerValue = [v6 integerValue];
    if (integerValue >= 0)
    {
      v4 = integerValue;
    }
  }

  return v4;
}

- (BOOL)purgeUsedTripSegmentLocations
{
  v68 = *MEMORY[0x277D85DE8];
  getValueForDaysToKeepTripSegmentLocationData = [(RTTripSegmentManager *)self getValueForDaysToKeepTripSegmentLocationData];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      v7 = NSStringFromSelector(a2);
      *buf = 138412802;
      v59 = v6;
      v60 = 2112;
      v61 = v7;
      v62 = 1024;
      LODWORD(v63) = getValueForDaysToKeepTripSegmentLocationData;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "%@:%@, purge %d days old trip segment locations", buf, 0x1Cu);
    }
  }

  v8 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:getValueForDaysToKeepTripSegmentLocationData * -86400.0];
  v9 = [v8 dateByAddingTimeInterval:18000.0];
  v10 = objc_alloc(MEMORY[0x277CCA970]);
  distantPast = [MEMORY[0x277CBEAA8] distantPast];
  v12 = [v10 initWithStartDate:distantPast endDate:v9];

  v50 = v12;
  v49 = [objc_alloc(MEMORY[0x277D01328]) initWithAscending:0 dateInterval:v12 limit:0];
  v13 = [(RTTripSegmentManager *)self getTripSegmentsWithOptions:?];
  if ([v13 count])
  {
    v14 = [v13 objectAtIndexedSubscript:0];
    dateInterval = [v14 dateInterval];
    endDate = [dateInterval endDate];

    v17 = [v8 laterDate:endDate];

    v8 = v17;
  }

  v18 = [v8 dateByAddingTimeInterval:0.001];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v19 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      v22 = NSStringFromSelector(a2);
      v23 = [v13 count];
      *buf = 138413314;
      v59 = v21;
      v60 = 2112;
      v61 = v22;
      v62 = 2048;
      v63 = v23;
      v64 = 2112;
      v65 = v18;
      v66 = 2112;
      v67 = v9;
      _os_log_impl(&dword_2304B3000, v19, OS_LOG_TYPE_INFO, "%@:%@,purging trip location and road transitions,fetchedTripSegmentCount,%lu,purgeDateEnd,%@,tripSegmentEndDate,%@", buf, 0x34u);
    }
  }

  locationStore = [(RTTripSegmentManager *)self locationStore];
  v25 = [locationStore removeLocationsPredating:v18];

  v47 = v25;
  if ((v25 & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v26 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = objc_opt_class();
      v28 = NSStringFromClass(v27);
      v29 = NSStringFromSelector(a2);
      *buf = 138412802;
      v59 = v28;
      v60 = 2112;
      v61 = v29;
      v62 = 2112;
      v63 = v18;
      _os_log_impl(&dword_2304B3000, v26, OS_LOG_TYPE_INFO, "%@:%@,error deleting locations older than %@", buf, 0x20u);
    }
  }

  v48 = v18;
  v51 = v9;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v30 = v13;
  v31 = [v30 countByEnumeratingWithState:&v53 objects:v57 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v54;
    v34 = 1;
    do
    {
      for (i = 0; i != v32; ++i)
      {
        if (*v54 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v36 = *(*(&v53 + 1) + 8 * i);
        tripSegmentRoadTransitionsStore = [(RTTripSegmentManager *)self tripSegmentRoadTransitionsStore];
        identifier = [v36 identifier];
        v39 = [tripSegmentRoadTransitionsStore deleteTripClusterRoadTransitionsWithUUID:identifier];

        if ((v39 & 1) == 0)
        {
          v40 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            v41 = objc_opt_class();
            v42 = NSStringFromClass(v41);
            v43 = NSStringFromSelector(a2);
            identifier2 = [v36 identifier];
            uUIDString = [identifier2 UUIDString];
            *buf = 138412802;
            v59 = v42;
            v60 = 2112;
            v61 = v43;
            v62 = 2112;
            v63 = uUIDString;
            _os_log_error_impl(&dword_2304B3000, v40, OS_LOG_TYPE_ERROR, "%@:%@,deleteTripClusterRoadTransition Error for UUID,%@", buf, 0x20u);
          }

          v34 = 0;
        }
      }

      v32 = [v30 countByEnumeratingWithState:&v53 objects:v57 count:16];
    }

    while (v32);
  }

  else
  {
    v34 = 1;
  }

  return v47 & v34;
}

- (void)_purgeTripSegmentsOnDateInterval:(id)interval handler:(id)handler
{
  v109[1] = *MEMORY[0x277D85DE8];
  intervalCopy = interval;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    selfCopy = self;
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v105 = 136315394;
      *&v105[4] = "[RTTripSegmentManager _purgeTripSegmentsOnDateInterval:handler:]";
      *&v105[12] = 1024;
      *&v105[14] = 1584;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", v105, 0x12u);
    }

    self = selfCopy;
  }

  *v105 = 0;
  *&v105[8] = v105;
  *&v105[16] = 0x3032000000;
  v106 = __Block_byref_object_copy__1;
  v107 = __Block_byref_object_dispose__1;
  v108 = 0;
  v10 = dispatch_semaphore_create(0);
  selfCopy2 = self;
  tripSegmentStore = [(RTTripSegmentManager *)self tripSegmentStore];
  v95[0] = MEMORY[0x277D85DD0];
  v95[1] = 3221225472;
  v95[2] = __65__RTTripSegmentManager__purgeTripSegmentsOnDateInterval_handler___block_invoke;
  v95[3] = &unk_2788C4618;
  v97 = v105;
  v12 = v10;
  v96 = v12;
  [tripSegmentStore purgeTripSegmentsOnDateInterval:intervalCopy handler:v95];

  v13 = v12;
  v14 = [MEMORY[0x277CBEAA8] now];
  v15 = dispatch_time(0, 3600000000000);
  if (dispatch_semaphore_wait(v13, v15))
  {
    v16 = [MEMORY[0x277CBEAA8] now];
    [v16 timeIntervalSinceDate:v14];
    v18 = v17;
    v19 = objc_opt_new();
    v20 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_0];
    callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
    v22 = [callStackSymbols filteredArrayUsingPredicate:v20];
    firstObject = [v22 firstObject];

    [v19 submitToCoreAnalytics:firstObject type:1 duration:v18];
    v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v24, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v25 = MEMORY[0x277CCA9B8];
    v109[0] = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v109 count:1];
    v27 = [v25 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v26];

    if (v27)
    {
      v28 = v27;
    }
  }

  else
  {
    v27 = 0;
  }

  v29 = v27;
  v30 = *(*&v105[8] + 40);
  if (!v30)
  {
    v30 = v29;
    if (!v30)
    {
      v33 = dispatch_semaphore_create(0);
      locationStore = [(RTTripSegmentManager *)selfCopy2 locationStore];
      v92[0] = MEMORY[0x277D85DD0];
      v92[1] = 3221225472;
      v92[2] = __65__RTTripSegmentManager__purgeTripSegmentsOnDateInterval_handler___block_invoke_283;
      v92[3] = &unk_2788C4618;
      v94 = v105;
      v35 = v33;
      v93 = v35;
      [locationStore removeLocationsOnDateInterval:intervalCopy handler:v92];

      dsema = v35;
      v36 = [MEMORY[0x277CBEAA8] now];
      v37 = dispatch_time(0, 3600000000000);
      if (dispatch_semaphore_wait(dsema, v37))
      {
        v38 = [MEMORY[0x277CBEAA8] now];
        [v38 timeIntervalSinceDate:v36];
        v40 = v39;
        v41 = objc_opt_new();
        v42 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_0];
        callStackSymbols2 = [MEMORY[0x277CCACC8] callStackSymbols];
        v44 = [callStackSymbols2 filteredArrayUsingPredicate:v42];
        firstObject2 = [v44 firstObject];

        [v41 submitToCoreAnalytics:firstObject2 type:1 duration:v40];
        v46 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v46, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_2304B3000, v46, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
        }

        v47 = MEMORY[0x277CCA9B8];
        v109[0] = *MEMORY[0x277CCA450];
        *buf = @"semaphore wait timeout";
        v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v109 count:1];
        v49 = [v47 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v48];

        if (v49)
        {
          v50 = v49;
        }
      }

      else
      {
        v49 = 0;
      }

      v29 = v49;
      v51 = *(*&v105[8] + 40);
      if (v51 || (v51 = v29) != 0)
      {
        v31 = v51;
        v52 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
        if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
        {
          v77 = objc_opt_class();
          v78 = NSStringFromClass(v77);
          v79 = NSStringFromSelector(a2);
          v80 = *(*&v105[8] + 40);
          *buf = 138413058;
          *&buf[4] = v78;
          v99 = 2112;
          v100 = v79;
          v101 = 2112;
          v102 = v80;
          v103 = 2112;
          v104 = v29;
          _os_log_error_impl(&dword_2304B3000, v52, OS_LOG_TYPE_ERROR, "%@:%@,removeLocationsOnDateInterval error,%@,%@", buf, 0x2Au);
        }

        handlerCopy[2](handlerCopy, v31);
        goto LABEL_28;
      }

      v57 = dispatch_semaphore_create(0);
      tripSegmentRoadTransitionsStore = [(RTTripSegmentManager *)selfCopy2 tripSegmentRoadTransitionsStore];
      v89[0] = MEMORY[0x277D85DD0];
      v89[1] = 3221225472;
      v89[2] = __65__RTTripSegmentManager__purgeTripSegmentsOnDateInterval_handler___block_invoke_284;
      v89[3] = &unk_2788C4618;
      v91 = v105;
      v59 = v57;
      v90 = v59;
      [tripSegmentRoadTransitionsStore removeTripClusterRoadTransitionsOnDateInterval:intervalCopy handler:v89];

      v60 = v59;
      v61 = [MEMORY[0x277CBEAA8] now];
      v62 = dispatch_time(0, 3600000000000);
      if (dispatch_semaphore_wait(v60, v62))
      {
        v85 = [MEMORY[0x277CBEAA8] now];
        [v85 timeIntervalSinceDate:v61];
        v64 = v63;
        v65 = objc_opt_new();
        v66 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_0];
        callStackSymbols3 = [MEMORY[0x277CCACC8] callStackSymbols];
        v68 = [callStackSymbols3 filteredArrayUsingPredicate:v66];
        firstObject3 = [v68 firstObject];

        [v65 submitToCoreAnalytics:firstObject3 type:1 duration:v64];
        v70 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v70, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_2304B3000, v70, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
        }

        v71 = MEMORY[0x277CCA9B8];
        v109[0] = *MEMORY[0x277CCA450];
        *buf = @"semaphore wait timeout";
        v72 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v109 count:1];
        v73 = [v71 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v72];

        if (v73)
        {
          v74 = v73;
        }
      }

      else
      {
        v73 = 0;
      }

      v29 = v73;
      v75 = *(*&v105[8] + 40);
      if (v75)
      {
        v31 = v75;
      }

      else
      {
        v31 = v29;
        if (!v31)
        {
LABEL_41:
          handlerCopy[2](handlerCopy, v31);

LABEL_28:
          goto LABEL_16;
        }
      }

      v76 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
      {
        v81 = objc_opt_class();
        v82 = NSStringFromClass(v81);
        v83 = NSStringFromSelector(a2);
        v84 = *(*&v105[8] + 40);
        *buf = 138413058;
        *&buf[4] = v82;
        v99 = 2112;
        v100 = v83;
        v101 = 2112;
        v102 = v84;
        v103 = 2112;
        v104 = v29;
        _os_log_error_impl(&dword_2304B3000, v76, OS_LOG_TYPE_ERROR, "%@:%@,removeTripSegmentRoadTransitionsOnDateInterval error,%@,%@", buf, 0x2Au);
      }

      goto LABEL_41;
    }
  }

  v31 = v30;
  v32 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
  if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
  {
    v53 = objc_opt_class();
    v54 = NSStringFromClass(v53);
    v55 = NSStringFromSelector(a2);
    v56 = *(*&v105[8] + 40);
    *buf = 138413058;
    *&buf[4] = v54;
    v99 = 2112;
    v100 = v55;
    v101 = 2112;
    v102 = v56;
    v103 = 2112;
    v104 = v29;
    _os_log_error_impl(&dword_2304B3000, v32, OS_LOG_TYPE_ERROR, "%@:%@,purgeTripSegmentsOnDateInterval error,%@,%@", buf, 0x2Au);
  }

  handlerCopy[2](handlerCopy, v31);
LABEL_16:

  _Block_object_dispose(v105, 8);
}

void __65__RTTripSegmentManager__purgeTripSegmentsOnDateInterval_handler___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void __65__RTTripSegmentManager__purgeTripSegmentsOnDateInterval_handler___block_invoke_283(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void __65__RTTripSegmentManager__purgeTripSegmentsOnDateInterval_handler___block_invoke_284(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)purgeTripSegmentsOnDateInterval:(id)interval handler:(id)handler
{
  v21 = *MEMORY[0x277D85DE8];
  intervalCopy = interval;
  handlerCopy = handler;
  v8 = handlerCopy;
  if (intervalCopy)
  {
    if (handlerCopy)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v18 = "[RTTripSegmentManager purgeTripSegmentsOnDateInterval:handler:]";
    v19 = 1024;
    v20 = 1647;
    _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: dateInterval (in %s:%d)", buf, 0x12u);
  }

  if (!v8)
  {
LABEL_7:
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "[RTTripSegmentManager purgeTripSegmentsOnDateInterval:handler:]";
      v19 = 1024;
      v20 = 1648;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

LABEL_10:
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__RTTripSegmentManager_purgeTripSegmentsOnDateInterval_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v15 = intervalCopy;
  v16 = v8;
  v12 = v8;
  v13 = intervalCopy;
  dispatch_async(queue, block);
}

- (void)performPurgeOfType:(int64_t)type referenceDate:(id)date completion:(id)completion
{
  dateCopy = date;
  completionCopy = completion;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__RTTripSegmentManager_performPurgeOfType_referenceDate_completion___block_invoke;
  block[3] = &unk_2788C47A8;
  v17 = completionCopy;
  typeCopy = type;
  v15 = dateCopy;
  selfCopy = self;
  v19 = a2;
  v12 = completionCopy;
  v13 = dateCopy;
  dispatch_async(queue, block);
}

void __68__RTTripSegmentManager_performPurgeOfType_referenceDate_completion___block_invoke(uint64_t a1)
{
  if (*(a1 + 56) <= 2uLL && (v2 = *(a1 + 32)) != 0)
  {
    v3 = v2;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __68__RTTripSegmentManager_performPurgeOfType_referenceDate_completion___block_invoke_2;
    v6[3] = &unk_2788C4780;
    v8 = *(a1 + 64);
    v4 = *(a1 + 40);
    v7 = *(a1 + 48);
    [v4 purgeTripSegmentsPredating:v3 handler:v6];
  }

  else
  {
    v5 = *(*(a1 + 48) + 16);

    v5();
  }
}

void __68__RTTripSegmentManager_performPurgeOfType_referenceDate_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = NSStringFromSelector(*(a1 + 40));
      v6 = 138412546;
      v7 = v5;
      v8 = 2112;
      v9 = v3;
      _os_log_debug_impl(&dword_2304B3000, v4, OS_LOG_TYPE_DEBUG, "%@, performPurgeOfType, error, %@", &v6, 0x16u);
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (BOOL)isSpeedValidityCheckingEnabled
{
  defaultsManager = [(RTTripSegmentManager *)self defaultsManager];
  v3 = [defaultsManager objectForKey:@"RTDefaultsTripSegmentEnableSpeedValidityChecks"];

  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (void)_sanitizeTripSegmentDatabaseSinceDate:(id)date handler:(id)handler
{
  v492[1] = *MEMORY[0x277D85DE8];
  dateCopy = date;
  handlerCopy = handler;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_2304B3000, v5, OS_LOG_TYPE_DEBUG, "RTTripSegmentManager:_sanitizeTripSegmentDatabaseWithHandler invoked", buf, 2u);
    }
  }

  defaultsManager = [(RTTripSegmentManager *)self defaultsManager];
  v383 = [defaultsManager objectForKey:@"RTDefaultsTripSegmentEnableDatabaseSanitization"];

  if (!v383 || ([v383 BOOLValue] & 1) != 0)
  {
    if (dateCopy)
    {
      v7 = objc_alloc(MEMORY[0x277CCA970]);
      v8 = [MEMORY[0x277CBEAA8] now];
      oslog = [v7 initWithStartDate:dateCopy endDate:v8];
    }

    else
    {
      oslog = 0;
    }

    v380 = [objc_alloc(MEMORY[0x277D01328]) initWithAscending:1 dateInterval:oslog limit:0];
    v9 = dispatch_semaphore_create(0);
    v459 = 0;
    v460 = &v459;
    v461 = 0x3032000000;
    v462 = __Block_byref_object_copy__1;
    v463 = __Block_byref_object_dispose__1;
    v464 = 0;
    v453 = 0;
    v454 = &v453;
    v455 = 0x3032000000;
    v456 = __Block_byref_object_copy__1;
    v457 = __Block_byref_object_dispose__1;
    v458 = 0;
    v449[0] = MEMORY[0x277D85DD0];
    v449[1] = 3221225472;
    v449[2] = __70__RTTripSegmentManager__sanitizeTripSegmentDatabaseSinceDate_handler___block_invoke;
    v449[3] = &unk_2788C4490;
    v451 = &v453;
    v452 = &v459;
    v10 = v9;
    v450 = v10;
    [(RTTripSegmentManager *)self _fetchTripSegmentsWithOptions:v380 handler:v449];
    v11 = (v454 + 5);
    v12 = v454[5];
    dsema = v10;
    v13 = [MEMORY[0x277CBEAA8] now];
    v14 = dispatch_time(0, 3600000000000);
    v15 = dispatch_semaphore_wait(dsema, v14);
    v16 = MEMORY[0x277D01448];
    if (v15)
    {
      v17 = [MEMORY[0x277CBEAA8] now];
      [v17 timeIntervalSinceDate:v13];
      v19 = v18;
      v20 = objc_opt_new();
      v21 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_0];
      callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
      v23 = [callStackSymbols filteredArrayUsingPredicate:v21];
      firstObject = [v23 firstObject];

      [v20 submitToCoreAnalytics:firstObject type:1 duration:v19];
      v25 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_2304B3000, v25, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
      }

      v26 = MEMORY[0x277CCA9B8];
      v486 = *MEMORY[0x277CCA450];
      *buf = @"semaphore wait timeout";
      v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v486 count:1];
      v28 = [v26 errorWithDomain:*v16 code:15 userInfo:v27];

      if (v28)
      {
        v29 = v28;

        v12 = v28;
      }
    }

    objc_storeStrong(v11, v12);
    v30 = v460[5];
    if (!v30 || ![v30 count])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v59 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
        if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_debug_impl(&dword_2304B3000, v59, OS_LOG_TYPE_DEBUG, "RTTripSegmentManager:_sanitizeTripSegmentDatabaseWithHandler no stored trip segments, returning early.", buf, 2u);
        }
      }

      handlerCopy[2](handlerCopy, v454[5]);
      goto LABEL_197;
    }

    array = [MEMORY[0x277CBEB18] array];
    v31 = 0;
    while (v31 < [v460[5] count])
    {
      if (!v31 && !oslog)
      {
        v32 = objc_alloc(MEMORY[0x277CCA970]);
        distantPast = [MEMORY[0x277CBEAA8] distantPast];
        v34 = objc_alloc(MEMORY[0x277CBEAA8]);
        v35 = [v460[5] objectAtIndexedSubscript:0];
        dateInterval = [v35 dateInterval];
        startDate = [dateInterval startDate];
        v38 = [v34 initWithTimeInterval:startDate sinceDate:-0.001];
        v39 = [v32 initWithStartDate:distantPast endDate:v38];
        [array addObject:v39];
      }

      if (v31 == [v460[5] count] - 1)
      {
        v40 = objc_alloc(MEMORY[0x277CCA970]);
        v41 = objc_alloc(MEMORY[0x277CBEAA8]);
        v42 = [v460[5] objectAtIndexedSubscript:v31];
        dateInterval2 = [v42 dateInterval];
        endDate = [dateInterval2 endDate];
        v45 = [v41 initWithTimeInterval:endDate sinceDate:0.001];
        distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
        v47 = [v40 initWithStartDate:v45 endDate:distantFuture];
        [array addObject:v47];

        ++v31;
      }

      else
      {
        v48 = objc_alloc(MEMORY[0x277CBEAA8]);
        v49 = [v460[5] objectAtIndexedSubscript:v31];
        dateInterval3 = [v49 dateInterval];
        endDate2 = [dateInterval3 endDate];
        v52 = [v48 initWithTimeInterval:endDate2 sinceDate:0.001];

        v53 = objc_alloc(MEMORY[0x277CBEAA8]);
        v54 = [v460[5] objectAtIndexedSubscript:++v31];
        dateInterval4 = [v54 dateInterval];
        startDate2 = [dateInterval4 startDate];
        v57 = [v53 initWithTimeInterval:startDate2 sinceDate:-0.001];

        if ([v52 isBeforeDate:v57])
        {
          v58 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v52 endDate:v57];
          [array addObject:v58];
        }
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v60 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
      {
        v360 = [v460[5] count];
        v361 = [array count];
        *buf = 134218240;
        *&buf[4] = v360;
        *&buf[12] = 2048;
        *&buf[14] = v361;
        _os_log_debug_impl(&dword_2304B3000, v60, OS_LOG_TYPE_DEBUG, "RTTripSegmentManager:_sanitizeTripSegmentDatabaseWithHandler, tripSegments.count, %zu, dateIntervalsBetween.count, %zu", buf, 0x16u);
      }
    }

    v61 = 0;
    v486 = 0;
    v487 = &v486;
    v488 = 0x3032000000;
    v489 = __Block_byref_object_copy__1;
    v490 = __Block_byref_object_dispose__1;
    v491 = 0;
    v398 = *v16;
    v399 = *MEMORY[0x277CCA450];
    do
    {
      if (v61 >= [array count])
      {
        break;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v62 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
        if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
        {
          v85 = [array objectAtIndexedSubscript:v61];
          *buf = 138412290;
          *&buf[4] = v85;
          _os_log_debug_impl(&dword_2304B3000, v62, OS_LOG_TYPE_DEBUG, "RTTripSegmentManager:_sanitizeTripSegmentDatabaseWithHandler, Purging orphan trip segment locations on interval: %@", buf, 0xCu);
        }
      }

      v63 = dispatch_semaphore_create(0);
      locationStore = [(RTTripSegmentManager *)self locationStore];
      v65 = [array objectAtIndexedSubscript:v61];
      v446[0] = MEMORY[0x277D85DD0];
      v446[1] = 3221225472;
      v446[2] = __70__RTTripSegmentManager__sanitizeTripSegmentDatabaseSinceDate_handler___block_invoke_291;
      v446[3] = &unk_2788C4618;
      v448 = &v486;
      v66 = v63;
      v447 = v66;
      [locationStore removeLocationsOnDateInterval:v65 handler:v446];

      v67 = (v487 + 5);
      obj = v487[5];
      v68 = v66;
      v69 = [MEMORY[0x277CBEAA8] now];
      v70 = dispatch_time(0, 3600000000000);
      if (dispatch_semaphore_wait(v68, v70))
      {
        v71 = [MEMORY[0x277CBEAA8] now];
        [v71 timeIntervalSinceDate:v69];
        v73 = v72;
        v74 = objc_opt_new();
        v75 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_0];
        callStackSymbols2 = [MEMORY[0x277CCACC8] callStackSymbols];
        v77 = [callStackSymbols2 filteredArrayUsingPredicate:v75];
        firstObject2 = [v77 firstObject];

        [v74 submitToCoreAnalytics:firstObject2 type:1 duration:v73];
        v79 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v79, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_2304B3000, v79, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
        }

        v80 = MEMORY[0x277CCA9B8];
        v480 = v399;
        *buf = @"semaphore wait timeout";
        v81 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v480 count:1];
        v82 = [v80 errorWithDomain:v398 code:15 userInfo:v81];

        if (v82)
        {
          v83 = v82;

          obj = v82;
        }
      }

      objc_storeStrong(v67, obj);
      v84 = v487[5] == 0;

      ++v61;
    }

    while (v84);
    if (v487[5])
    {
      v86 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
      {
        v359 = v487[5];
        *buf = 138412290;
        *&buf[4] = v359;
        _os_log_error_impl(&dword_2304B3000, v86, OS_LOG_TYPE_ERROR, "RTTripSegmentManager:Error executing removeLocationsOnDateInterval for dateIntervalsBetween %@", buf, 0xCu);
      }

      handlerCopy[2](handlerCopy, v487[5]);
      goto LABEL_196;
    }

    firstObject3 = [v460[5] firstObject];
    dateInterval5 = [firstObject3 dateInterval];
    startDate3 = [dateInterval5 startDate];

    lastObject = [v460[5] lastObject];
    dateInterval6 = [lastObject dateInterval];
    endDate3 = [dateInterval6 endDate];

    v91 = objc_alloc(MEMORY[0x277D01350]);
    v92 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:startDate3 endDate:endDate3];
    v366 = [v91 initWithDateInterval:v92 preferredDownsamplingLevel:0 batchSize:0 boundingBoxLocation:0];

    v442 = 0;
    v443 = &v442;
    v444 = 0x2020000000;
    v445 = 0;
    v480 = 0;
    v481 = &v480;
    v482 = 0x3032000000;
    v483 = __Block_byref_object_copy__1;
    v484 = __Block_byref_object_dispose__1;
    v485 = 0;
    v93 = dispatch_semaphore_create(0);
    locationStore2 = [(RTTripSegmentManager *)self locationStore];
    v438[0] = MEMORY[0x277D85DD0];
    v438[1] = 3221225472;
    v438[2] = __70__RTTripSegmentManager__sanitizeTripSegmentDatabaseSinceDate_handler___block_invoke_292;
    v438[3] = &unk_2788C4528;
    v440 = &v442;
    v441 = &v480;
    v95 = v93;
    v439 = v95;
    [locationStore2 fetchStoredLocationsCountWithOptions:v366 handler:v438];

    v96 = (v481 + 5);
    v97 = v481[5];
    v367 = v95;
    v98 = [MEMORY[0x277CBEAA8] now];
    v99 = dispatch_time(0, 3600000000000);
    if (dispatch_semaphore_wait(v367, v99))
    {
      v100 = [MEMORY[0x277CBEAA8] now];
      [v100 timeIntervalSinceDate:v98];
      v102 = v101;
      v103 = objc_opt_new();
      v104 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_0];
      callStackSymbols3 = [MEMORY[0x277CCACC8] callStackSymbols];
      v106 = [callStackSymbols3 filteredArrayUsingPredicate:v104];
      firstObject4 = [v106 firstObject];

      [v103 submitToCoreAnalytics:firstObject4 type:1 duration:v102];
      v108 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v108, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_2304B3000, v108, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
      }

      v109 = MEMORY[0x277CCA9B8];
      *v474 = v399;
      *buf = @"semaphore wait timeout";
      v110 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v474 count:1];
      v111 = [v109 errorWithDomain:v398 code:15 userInfo:v110];

      if (v111)
      {
        v112 = v111;

        v97 = v111;
      }
    }

    objc_storeStrong(v96, v97);
    if (v481[5])
    {
      v113 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v113, OS_LOG_TYPE_ERROR))
      {
        dateInterval7 = [v366 dateInterval];
        v363 = v481[5];
        *buf = 138412546;
        *&buf[4] = dateInterval7;
        *&buf[12] = 2112;
        *&buf[14] = v363;
        _os_log_error_impl(&dword_2304B3000, v113, OS_LOG_TYPE_ERROR, "RTTripSegmentManager:Error executing fetchStoredLocationsCountWithOptions, dateInterval, %@, error, %@", buf, 0x16u);
      }

      handlerCopy[2](handlerCopy, v481[5]);
      goto LABEL_195;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v114 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v114, OS_LOG_TYPE_DEBUG))
      {
        dateInterval8 = [v366 dateInterval];
        v365 = v443[3];
        *buf = 138412546;
        *&buf[4] = dateInterval8;
        *&buf[12] = 2048;
        *&buf[14] = v365;
        _os_log_debug_impl(&dword_2304B3000, v114, OS_LOG_TYPE_DEBUG, "RTTripSegmentManager: fetchStoredLocationsCountWithOptions, dateInterval, %@, expecting %tu locations", buf, 0x16u);
      }
    }

    v368 = 0;
    v369 = 0;
    v434 = 0;
    v435 = &v434;
    v436 = 0x2020000000;
    v437 = 0;
    while (1)
    {
      v435[3] = 0;
      v115 = dispatch_semaphore_create(0);
      *v474 = 0;
      v475 = v474;
      v476 = 0x3032000000;
      v477 = __Block_byref_object_copy__1;
      v478 = __Block_byref_object_dispose__1;
      v479 = 0;
      v374 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:startDate3 endDate:endDate3];
      v373 = [objc_alloc(MEMORY[0x277D01350]) initWithDateInterval:v374];
      locationStore3 = [(RTTripSegmentManager *)self locationStore];
      v429[0] = MEMORY[0x277D85DD0];
      v429[1] = 3221225472;
      v429[2] = __70__RTTripSegmentManager__sanitizeTripSegmentDatabaseSinceDate_handler___block_invoke_293;
      v429[3] = &unk_2788C47D0;
      v431 = &v453;
      v432 = v474;
      v433 = &v434;
      v117 = v115;
      v430 = v117;
      [locationStore3 fetchStoredLocationsWithOptions:v373 handler:v429];

      v118 = (v454 + 5);
      v119 = v454[5];
      v384 = v117;
      v120 = [MEMORY[0x277CBEAA8] now];
      v121 = dispatch_time(0, 3600000000000);
      if (dispatch_semaphore_wait(v384, v121))
      {
        v122 = [MEMORY[0x277CBEAA8] now];
        [v122 timeIntervalSinceDate:v120];
        v124 = v123;
        v125 = objc_opt_new();
        v126 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_0];
        callStackSymbols4 = [MEMORY[0x277CCACC8] callStackSymbols];
        v128 = [callStackSymbols4 filteredArrayUsingPredicate:v126];
        firstObject5 = [v128 firstObject];

        [v125 submitToCoreAnalytics:firstObject5 type:1 duration:v124];
        v130 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v130, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_2304B3000, v130, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
        }

        v131 = MEMORY[0x277CCA9B8];
        *v465 = v399;
        *buf = @"semaphore wait timeout";
        v132 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v465 count:1];
        v133 = [v131 errorWithDomain:v398 code:15 userInfo:v132];

        if (v133)
        {
          v134 = v133;

          v119 = v133;
        }
      }

      objc_storeStrong(v118, v119);
      if (v454[5])
      {
        v135 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
        if (os_log_type_enabled(v135, OS_LOG_TYPE_ERROR))
        {
          v287 = v454[5];
          *buf = 138412546;
          *&buf[4] = v374;
          *&buf[12] = 2112;
          *&buf[14] = v287;
          _os_log_error_impl(&dword_2304B3000, v135, OS_LOG_TYPE_ERROR, "RTTripSegmentManager:Error executing fetchStoredLocationsWithOptions for fetchInterval %@, error %@", buf, 0x16u);
        }

        handlerCopy[2](handlerCopy, v454[5]);
        v136 = 0;
        goto LABEL_156;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v137 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
        if (os_log_type_enabled(v137, OS_LOG_TYPE_DEBUG))
        {
          v288 = v435[3];
          stringFromDate = [startDate3 stringFromDate];
          stringFromDate2 = [endDate3 stringFromDate];
          *buf = 134218498;
          *&buf[4] = v288;
          *&buf[12] = 2112;
          *&buf[14] = stringFromDate;
          *&buf[22] = 2112;
          v472 = stringFromDate2;
          _os_log_debug_impl(&dword_2304B3000, v137, OS_LOG_TYPE_DEBUG, "RTTripSegmentManager:_sanitizeTripSegmentDatabaseWithHandler, loaded samples this iteration, %tu for interval %@ to %@", buf, 0x20u);
        }
      }

      obja = [MEMORY[0x277CBEB18] array];
      for (i = 0; i < [*(v475 + 5) count]; ++i)
      {
        if (i)
        {
          v139 = [*(v475 + 5) objectAtIndexedSubscript:i];
          timestamp = [v139 timestamp];
          v141 = [*(v475 + 5) objectAtIndexedSubscript:i - 1];
          timestamp2 = [v141 timestamp];
          [timestamp timeIntervalSinceDate:timestamp2];
          v144 = v143 >= 0.1;
        }

        else
        {
          v144 = 1;
        }

        v145 = [*(v475 + 5) objectAtIndexedSubscript:i];
        v146 = [(RTTripSegmentManager *)self isValidSynthesizedLocation:v145];

        if (v144)
        {
          if (v146)
          {
            v147 = [*(v475 + 5) objectAtIndexedSubscript:i];
            [obja addObject:v147];
          }

          else
          {
LABEL_95:
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
            {
              continue;
            }

            v147 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
            if (os_log_type_enabled(v147, OS_LOG_TYPE_DEBUG))
            {
              v156 = [*(v475 + 5) objectAtIndexedSubscript:i];
              *buf = 138739971;
              *&buf[4] = v156;
              _os_log_debug_impl(&dword_2304B3000, v147, OS_LOG_TYPE_DEBUG, "RTTripSegmentManager:_sanitizeTripSegmentDatabaseWithHandler: invalid properties detected, deleting location %{sensitive}@", buf, 0xCu);
            }
          }

          continue;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          v148 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
          if (os_log_type_enabled(v148, OS_LOG_TYPE_DEBUG))
          {
            v149 = [*(v475 + 5) objectAtIndexedSubscript:i];
            timestamp3 = [v149 timestamp];
            v151 = [*(v475 + 5) objectAtIndexedSubscript:i - 1];
            timestamp4 = [v151 timestamp];
            [timestamp3 timeIntervalSinceDate:timestamp4];
            v154 = v153;
            v155 = [*(v475 + 5) objectAtIndexedSubscript:i];
            *buf = 134218243;
            *&buf[4] = v154;
            *&buf[12] = 2117;
            *&buf[14] = v155;
            _os_log_debug_impl(&dword_2304B3000, v148, OS_LOG_TYPE_DEBUG, "RTTripSegmentManager:_sanitizeTripSegmentDatabaseWithHandler: invalid date interval %f, deleting location %{sensitive}@", buf, 0x16u);
          }
        }

        if (!v146)
        {
          goto LABEL_95;
        }
      }

      if ([(RTTripSegmentManager *)self isSpeedValidityCheckingEnabled])
      {
        v378 = 0;
        v400 = 0.0;
        v157 = 1;
        while (1)
        {
          if (v157 >= [obja count])
          {
            goto LABEL_118;
          }

          v405 = v157;
          v158 = [obja objectAtIndexedSubscript:v157];
          timestamp5 = [v158 timestamp];
          v160 = v405 - 1;
          v161 = [obja objectAtIndexedSubscript:v405 - 1];
          timestamp6 = [v161 timestamp];
          [timestamp5 timeIntervalSinceDate:timestamp6];
          v164 = v163;

          if (v164 > 2.1 || v164 < 0.0001)
          {
            v199 = v400;
            goto LABEL_116;
          }

          distanceCalculator = self->_distanceCalculator;
          v165 = objc_alloc(MEMORY[0x277D01160]);
          v394 = [obja objectAtIndexedSubscript:v405];
          [v394 coordinate];
          v167 = v166;
          v391 = [obja objectAtIndexedSubscript:v405];
          [v391 coordinate];
          v169 = v168;
          v389 = [obja objectAtIndexedSubscript:v405];
          [v389 horizontalAccuracy];
          v171 = v170;
          v172 = [obja objectAtIndexedSubscript:v405];
          timestamp7 = [v172 timestamp];
          v174 = [v165 initWithLatitude:timestamp7 longitude:v167 horizontalUncertainty:v169 date:v171];
          v175 = objc_alloc(MEMORY[0x277D01160]);
          v176 = [obja objectAtIndexedSubscript:v160];
          [v176 coordinate];
          v178 = v177;
          v179 = [obja objectAtIndexedSubscript:v160];
          [v179 coordinate];
          v181 = v180;
          v182 = [obja objectAtIndexedSubscript:v160];
          [v182 horizontalAccuracy];
          v184 = v183;
          v185 = [obja objectAtIndexedSubscript:v160];
          timestamp8 = [v185 timestamp];
          v187 = [v175 initWithLatitude:timestamp8 longitude:v178 horizontalUncertainty:v181 date:v184];
          v428 = 0;
          [(RTDistanceCalculator *)distanceCalculator distanceFromLocation:v174 toLocation:v187 error:&v428];
          v189 = v188;
          v387 = v428;

          v190 = [obja objectAtIndexedSubscript:v405];
          [v190 speed];
          v192 = v191;
          v193 = [obja objectAtIndexedSubscript:v160];
          [v193 speed];
          v195 = v194;

          if (!v387)
          {
            v196 = v189 / v164;
            if (v189 / v164 < 0.1)
            {
              break;
            }
          }

          v200 = vabdd_f64(v192, v195) / v164;
          v199 = 0.0;
          if (v200 > v400 * 0.1 + 10.0)
          {
            v201 = [obja objectAtIndexedSubscript:v160];
            [v201 speed];
            v196 = v202;

            v197 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
            v400 = v400 + v164;
            if (os_log_type_enabled(v197, OS_LOG_TYPE_ERROR))
            {
              v228 = [obja objectAtIndexedSubscript:v405];
              *buf = 134218755;
              *&buf[4] = v200;
              *&buf[12] = 2048;
              *&buf[14] = 0x4024000000000000;
              *&buf[22] = 2048;
              v472 = *&v196;
              *v473 = 2117;
              *&v473[2] = v228;
              _os_log_error_impl(&dword_2304B3000, v197, OS_LOG_TYPE_ERROR, "RTTripSegmentManager:_sanitizeTripSegmentDatabaseWithHandler, found location with large discontinuity in speed (%f > %f), updating to new speed, %f mps, in location sample,%{sensitive}@.", buf, 0x2Au);
            }

            goto LABEL_113;
          }

LABEL_115:

LABEL_116:
          v157 = v405 + 1;
          v400 = v199;
        }

        v197 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
        if (os_log_type_enabled(v197, OS_LOG_TYPE_ERROR))
        {
          v198 = [obja objectAtIndexedSubscript:v405];
          *buf = 134218499;
          *&buf[4] = v189 / v164;
          *&buf[12] = 2048;
          *&buf[14] = v189 / v164;
          *&buf[22] = 2117;
          v472 = v198;
          _os_log_error_impl(&dword_2304B3000, v197, OS_LOG_TYPE_ERROR, "RTTripSegmentManager:_sanitizeTripSegmentDatabaseWithHandler, found location with speed inconsistent with delta position, (delta pos. %f), updating to new speed, %f mps, in location sample, %{sensitive}@.", buf, 0x20u);
        }

LABEL_113:

        v199 = 0.0;
        if (v196 >= 0.0)
        {
          v372 = [RTSynthesizedLocation alloc];
          v395 = [obja objectAtIndexedSubscript:v405];
          [v395 coordinate];
          v204 = v203;
          v206 = v205;
          v392 = [obja objectAtIndexedSubscript:v405];
          [v392 altitude];
          v208 = v207;
          v390 = [obja objectAtIndexedSubscript:v405];
          [v390 horizontalAccuracy];
          v210 = v209;
          v379 = [obja objectAtIndexedSubscript:v405];
          [v379 verticalAccuracy];
          v212 = v211;
          v377 = [obja objectAtIndexedSubscript:v405];
          [v377 course];
          v214 = v213;
          v376 = [obja objectAtIndexedSubscript:v405];
          [v376 courseAccuracy];
          v216 = v215;
          v375 = [obja objectAtIndexedSubscript:v405];
          geoRoadClass = [v375 geoRoadClass];
          v218 = [obja objectAtIndexedSubscript:v405];
          geoFormOfWay = [v218 geoFormOfWay];
          v220 = [obja objectAtIndexedSubscript:v405];
          locationType = [v220 locationType];
          v222 = [obja objectAtIndexedSubscript:v405];
          timestamp9 = [v222 timestamp];
          v224 = [obja objectAtIndexedSubscript:v405];
          clRoadID = [v224 clRoadID];
          v226 = [obja objectAtIndexedSubscript:v405];
          v227 = -[RTSynthesizedLocation initWithCoordinate:altitude:horizontalAccuracy:verticalAccuracy:course:courseAccuracy:speed:speedAccuracy:geoRoadClass:geoFormOfWay:locationType:timestamp:clRoadID:downsamplingLevel:](v372, "initWithCoordinate:altitude:horizontalAccuracy:verticalAccuracy:course:courseAccuracy:speed:speedAccuracy:geoRoadClass:geoFormOfWay:locationType:timestamp:clRoadID:downsamplingLevel:", geoRoadClass, geoFormOfWay, locationType, timestamp9, clRoadID, [v226 downsamplingLevel], v204, v206, v208, v210, v212, v214, v216, v196, 0x4024000000000000);
          [obja setObject:v227 atIndexedSubscript:v405];

          v378 = 1;
          v199 = v400;
        }

        goto LABEL_115;
      }

      v378 = 0;
LABEL_118:
      v229 = [obja count];
      LOBYTE(v229) = (v229 < [*(v475 + 5) count]) | v378;
      v230 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if ((v229 & 1) == 0)
      {
        break;
      }

      if (v230)
      {
        v231 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
        if (os_log_type_enabled(v231, OS_LOG_TYPE_DEBUG))
        {
          v295 = [*(v475 + 5) count];
          v296 = [obja count];
          v297 = [*(v475 + 5) count];
          stringFromDate3 = [startDate3 stringFromDate];
          [endDate3 stringFromDate];
          v300 = v299 = v295 - v296;
          *buf = 134218754;
          *&buf[4] = v299;
          *&buf[12] = 2048;
          *&buf[14] = v297;
          *&buf[22] = 2112;
          v472 = stringFromDate3;
          *v473 = 2112;
          *&v473[2] = v300;
          _os_log_debug_impl(&dword_2304B3000, v231, OS_LOG_TYPE_DEBUG, "RTTripSegmentManager:_sanitizeTripSegmentDatabaseWithHandler, %ld invalid locations found in the %ld fetched locations for interval %@ to %@", buf, 0x2Au);
        }
      }

      v232 = dispatch_semaphore_create(0);
      v233 = objc_alloc(MEMORY[0x277CCA970]);
      v234 = objc_alloc(MEMORY[0x277CBEAA8]);
      startDate4 = [v374 startDate];
      v236 = [v234 initWithTimeInterval:startDate4 sinceDate:-0.001];
      v237 = objc_alloc(MEMORY[0x277CBEAA8]);
      lastObject2 = [*(v475 + 5) lastObject];
      timestamp10 = [lastObject2 timestamp];
      v240 = [v237 initWithTimeInterval:timestamp10 sinceDate:0.001];
      v406 = [v233 initWithStartDate:v236 endDate:v240];

      locationStore4 = [(RTTripSegmentManager *)self locationStore];
      v425[0] = MEMORY[0x277D85DD0];
      v425[1] = 3221225472;
      v425[2] = __70__RTTripSegmentManager__sanitizeTripSegmentDatabaseSinceDate_handler___block_invoke_295;
      v425[3] = &unk_2788C4618;
      v427 = &v486;
      v242 = v232;
      v426 = v242;
      [locationStore4 removeLocationsOnDateInterval:v406 handler:v425];

      v243 = (v487 + 5);
      v244 = v487[5];
      v245 = v242;
      v246 = [MEMORY[0x277CBEAA8] now];
      v247 = dispatch_time(0, 3600000000000);
      if (dispatch_semaphore_wait(v245, v247))
      {
        v248 = [MEMORY[0x277CBEAA8] now];
        [v248 timeIntervalSinceDate:v246];
        v250 = v249;
        v251 = objc_opt_new();
        v252 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_0];
        callStackSymbols5 = [MEMORY[0x277CCACC8] callStackSymbols];
        v254 = [callStackSymbols5 filteredArrayUsingPredicate:v252];
        firstObject6 = [v254 firstObject];

        [v251 submitToCoreAnalytics:firstObject6 type:1 duration:v250];
        v256 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v256, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_2304B3000, v256, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
        }

        v257 = MEMORY[0x277CCA9B8];
        *v465 = v399;
        *buf = @"semaphore wait timeout";
        v258 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v465 count:1];
        v259 = [v257 errorWithDomain:v398 code:15 userInfo:v258];

        if (v259)
        {
          v260 = v259;

          v244 = v259;
        }
      }

      objc_storeStrong(v243, v244);
      if (v487[5])
      {
        v261 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
        if (os_log_type_enabled(v261, OS_LOG_TYPE_ERROR))
        {
          v291 = v487[5];
          *buf = 138412546;
          *&buf[4] = v406;
          *&buf[12] = 2112;
          *&buf[14] = v291;
          _os_log_error_impl(&dword_2304B3000, v261, OS_LOG_TYPE_ERROR, "RTTripSegmentManager:Error executing removeLocationsOnDateInterval for dateInterval %@, error %@", buf, 0x16u);
        }

        handlerCopy[2](handlerCopy, v487[5]);
        v136 = 0;
        goto LABEL_153;
      }

      v263 = dispatch_semaphore_create(0);
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v472 = __Block_byref_object_copy__1;
      *v473 = __Block_byref_object_dispose__1;
      *&v473[8] = 0;
      locationStore5 = [(RTTripSegmentManager *)self locationStore];
      v422[0] = MEMORY[0x277D85DD0];
      v422[1] = 3221225472;
      v422[2] = __70__RTTripSegmentManager__sanitizeTripSegmentDatabaseSinceDate_handler___block_invoke_296;
      v422[3] = &unk_2788C4618;
      v424 = buf;
      v265 = v263;
      v423 = v265;
      [locationStore5 storeLocations:obja handler:v422];

      v266 = (*&buf[8] + 40);
      v401 = *(*&buf[8] + 40);
      v267 = v265;
      v268 = [MEMORY[0x277CBEAA8] now];
      v269 = dispatch_time(0, 3600000000000);
      if (dispatch_semaphore_wait(v267, v269))
      {
        v270 = [MEMORY[0x277CBEAA8] now];
        [v270 timeIntervalSinceDate:v268];
        v272 = v271;
        v273 = objc_opt_new();
        v274 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_0];
        callStackSymbols6 = [MEMORY[0x277CCACC8] callStackSymbols];
        v276 = [callStackSymbols6 filteredArrayUsingPredicate:v274];
        firstObject7 = [v276 firstObject];

        [v273 submitToCoreAnalytics:firstObject7 type:1 duration:v272];
        v278 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v278, OS_LOG_TYPE_FAULT))
        {
          *v465 = 0;
          _os_log_fault_impl(&dword_2304B3000, v278, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v465, 2u);
        }

        v279 = MEMORY[0x277CCA9B8];
        v492[0] = v399;
        *v465 = @"semaphore wait timeout";
        v280 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v465 forKeys:v492 count:1];
        v281 = [v279 errorWithDomain:v398 code:15 userInfo:v280];

        if (v281)
        {
          v282 = v281;

          v401 = v281;
        }
      }

      objc_storeStrong(v266, v401);
      v283 = *(*&buf[8] + 40);
      if (v283)
      {
        v284 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
        if (os_log_type_enabled(v284, OS_LOG_TYPE_ERROR))
        {
          v303 = *(*&buf[8] + 40);
          *v465 = 138412546;
          *&v465[4] = v406;
          v466 = 2112;
          v467 = v303;
          _os_log_error_impl(&dword_2304B3000, v284, OS_LOG_TYPE_ERROR, "RTTripSegmentManager:Error executing [self.locationStore storeLocations:sanitizedLocations for , dateInterval %@, error %@", v465, 0x16u);
        }

        handlerCopy[2](handlerCopy, *(*&buf[8] + 40));
      }

      _Block_object_dispose(buf, 8);
      if (!v283)
      {
        goto LABEL_147;
      }

      v136 = 0;
LABEL_155:

LABEL_156:
      _Block_object_dispose(v474, 8);

      if (!v136)
      {
        goto LABEL_194;
      }

      if (v369 >= v443[3] || !v368)
      {
        v420 = 0u;
        v421 = 0u;
        v418 = 0u;
        v419 = 0u;
        v388 = v460[5];
        v397 = [v388 countByEnumeratingWithState:&v418 objects:v470 count:16];
        if (!v397)
        {
          goto LABEL_193;
        }

        v396 = *v419;
        while (1)
        {
          objb = 0;
          do
          {
            if (*v419 != v396)
            {
              objc_enumerationMutation(v388);
            }

            v407 = *(*(&v418 + 1) + 8 * objb);
            [v407 tripDistance];
            if (v304 >= 10.0 || ([v407 dateInterval], v305 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v305, "duration"), v307 = v306 < 10.0, v305, !v307))
            {
              v309 = dispatch_semaphore_create(0);
              *v474 = 0;
              v475 = v474;
              v476 = 0x2020000000;
              v477 = 0;
              *buf = 0;
              *&buf[8] = buf;
              *&buf[16] = 0x3032000000;
              v472 = __Block_byref_object_copy__1;
              *v473 = __Block_byref_object_dispose__1;
              *&v473[8] = 0;
              v403 = [objc_alloc(MEMORY[0x277D01190]) initWithTripSegment:v407];
              v414[0] = MEMORY[0x277D85DD0];
              v414[1] = 3221225472;
              v414[2] = __70__RTTripSegmentManager__sanitizeTripSegmentDatabaseSinceDate_handler___block_invoke_297;
              v414[3] = &unk_2788C4528;
              v416 = buf;
              v417 = v474;
              v310 = v309;
              v415 = v310;
              [(RTTripSegmentManager *)self _fetchLocationsCountForTripSegmentWithOptions:v403 handler:v414];
              v312 = (*&buf[8] + 40);
              v311 = *(*&buf[8] + 40);
              v313 = v310;
              v314 = [MEMORY[0x277CBEAA8] now];
              v315 = dispatch_time(0, 3600000000000);
              if (dispatch_semaphore_wait(v313, v315))
              {
                v316 = [MEMORY[0x277CBEAA8] now];
                [v316 timeIntervalSinceDate:v314];
                v318 = v317;
                v319 = objc_opt_new();
                v320 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_0];
                callStackSymbols7 = [MEMORY[0x277CCACC8] callStackSymbols];
                v322 = [callStackSymbols7 filteredArrayUsingPredicate:v320];
                firstObject8 = [v322 firstObject];

                [v319 submitToCoreAnalytics:firstObject8 type:1 duration:v318];
                v324 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
                if (os_log_type_enabled(v324, OS_LOG_TYPE_FAULT))
                {
                  *v465 = 0;
                  _os_log_fault_impl(&dword_2304B3000, v324, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v465, 2u);
                }

                v325 = MEMORY[0x277CCA9B8];
                v492[0] = v399;
                *v465 = @"semaphore wait timeout";
                v326 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v465 forKeys:v492 count:1];
                v327 = [v325 errorWithDomain:v398 code:15 userInfo:v326];

                if (v327)
                {
                  v328 = v327;

                  v311 = v327;
                }
              }

              objc_storeStrong(v312, v311);
              v329 = *(*&buf[8] + 40);
              v330 = v329 != 0;
              if (v329)
              {
                v331 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
                if (os_log_type_enabled(v331, OS_LOG_TYPE_ERROR))
                {
                  v332 = v454[5];
                  *v465 = 138412546;
                  *&v465[4] = v407;
                  v466 = 2112;
                  v467 = v332;
                  v333 = v331;
                  v334 = "RTTripSegmentManager:Error executing fetchLocationsCountForTripSegmentWithOptions for tripSegment %@, error, %@";
                  v335 = 22;
                  goto LABEL_180;
                }

                goto LABEL_181;
              }

              if (*(v475 + 3) > 1uLL)
              {
                v330 = 1;
              }

              else
              {
                v331 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
                if (os_log_type_enabled(v331, OS_LOG_TYPE_ERROR))
                {
                  v336 = *(v475 + 3);
                  *v465 = 134218498;
                  *&v465[4] = v336;
                  v466 = 2048;
                  v467 = 2;
                  v468 = 2112;
                  v469 = v407;
                  v333 = v331;
                  v334 = "RTTripSegmentManager: found %ld locations for tripSegment, which is fewer than the minimum requirement of %ld, deleting trip segment, %@.";
                  v335 = 32;
LABEL_180:
                  _os_log_error_impl(&dword_2304B3000, v333, OS_LOG_TYPE_ERROR, v334, v465, v335);
                }

LABEL_181:
              }

              _Block_object_dispose(buf, 8);
              _Block_object_dispose(v474, 8);

              if (v329 != 0 || v330)
              {
                goto LABEL_189;
              }

              goto LABEL_183;
            }

            v308 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
            if (os_log_type_enabled(v308, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218498;
              *&buf[4] = 0x4024000000000000;
              *&buf[12] = 2048;
              *&buf[14] = 0x4024000000000000;
              *&buf[22] = 2112;
              v472 = v407;
              _os_log_error_impl(&dword_2304B3000, v308, OS_LOG_TYPE_ERROR, "RTTripSegmentManager: tripSegment has duration lower than threshold %f s, and distance lower than threshold %f m, deleting trip segment, %@.", buf, 0x20u);
            }

LABEL_183:
            v337 = dispatch_semaphore_create(0);
            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x3032000000;
            v472 = __Block_byref_object_copy__1;
            *v473 = __Block_byref_object_dispose__1;
            *&v473[8] = 0;
            identifier = [v407 identifier];
            v411[0] = MEMORY[0x277D85DD0];
            v411[1] = 3221225472;
            v411[2] = __70__RTTripSegmentManager__sanitizeTripSegmentDatabaseSinceDate_handler___block_invoke_298;
            v411[3] = &unk_2788C4618;
            v413 = buf;
            v339 = v337;
            v412 = v339;
            [(RTTripSegmentManager *)self _deleteTripSegmentWithUUID:identifier handler:v411];

            v341 = (*&buf[8] + 40);
            v340 = *(*&buf[8] + 40);
            v342 = v339;
            v343 = [MEMORY[0x277CBEAA8] now];
            v344 = dispatch_time(0, 3600000000000);
            if (dispatch_semaphore_wait(v342, v344))
            {
              v345 = [MEMORY[0x277CBEAA8] now];
              [v345 timeIntervalSinceDate:v343];
              v347 = v346;
              v348 = objc_opt_new();
              v349 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_0];
              callStackSymbols8 = [MEMORY[0x277CCACC8] callStackSymbols];
              v351 = [callStackSymbols8 filteredArrayUsingPredicate:v349];
              firstObject9 = [v351 firstObject];

              [v348 submitToCoreAnalytics:firstObject9 type:1 duration:v347];
              v353 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
              if (os_log_type_enabled(v353, OS_LOG_TYPE_FAULT))
              {
                *v474 = 0;
                _os_log_fault_impl(&dword_2304B3000, v353, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", v474, 2u);
              }

              v354 = MEMORY[0x277CCA9B8];
              *v465 = v399;
              *v474 = @"semaphore wait timeout";
              v355 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v474 forKeys:v465 count:1];
              v356 = [v354 errorWithDomain:v398 code:15 userInfo:v355];

              if (v356)
              {
                v357 = v356;

                v340 = v356;
              }
            }

            objc_storeStrong(v341, v340);
            _Block_object_dispose(buf, 8);

LABEL_189:
            objb = objb + 1;
          }

          while (v397 != objb);
          v358 = [v388 countByEnumeratingWithState:&v418 objects:v470 count:16];
          v397 = v358;
          if (!v358)
          {
LABEL_193:

            handlerCopy[2](handlerCopy, 0);
LABEL_194:
            _Block_object_dispose(&v434, 8);
LABEL_195:

            _Block_object_dispose(&v480, 8);
            _Block_object_dispose(&v442, 8);

LABEL_196:
            _Block_object_dispose(&v486, 8);

LABEL_197:
            _Block_object_dispose(&v453, 8);

            _Block_object_dispose(&v459, 8);
LABEL_198:

            goto LABEL_199;
          }
        }
      }
    }

    if (v230)
    {
      v262 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v262, OS_LOG_TYPE_DEBUG))
      {
        stringFromDate4 = [startDate3 stringFromDate];
        stringFromDate5 = [endDate3 stringFromDate];
        *buf = 138412546;
        *&buf[4] = stringFromDate4;
        *&buf[12] = 2112;
        *&buf[14] = stringFromDate5;
        _os_log_debug_impl(&dword_2304B3000, v262, OS_LOG_TYPE_DEBUG, "RTTripSegmentManager:_sanitizeTripSegmentDatabaseWithHandler, no invalid locations found for interval %@ to %@", buf, 0x16u);
      }
    }

LABEL_147:
    if ([obja count])
    {
      lastObject3 = [obja lastObject];
      timestamp11 = [lastObject3 timestamp];

      startDate3 = timestamp11;
    }

    v368 = v435[3] - (v369 != 0);
    v369 += v368;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v136 = 1;
      goto LABEL_155;
    }

    v245 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v245, OS_LOG_TYPE_DEBUG))
    {
      v292 = v443[3];
      stringFromDate6 = [startDate3 stringFromDate];
      stringFromDate7 = [endDate3 stringFromDate];
      *buf = 134219010;
      *&buf[4] = v368;
      *&buf[12] = 2048;
      *&buf[14] = v369;
      *&buf[22] = 2048;
      v472 = v292;
      *v473 = 2112;
      *&v473[2] = stringFromDate6;
      *&v473[10] = 2112;
      *&v473[12] = stringFromDate7;
      _os_log_debug_impl(&dword_2304B3000, v245, OS_LOG_TYPE_DEBUG, "RTTripSegmentManager:_sanitizeTripSegmentDatabaseWithHandler, iteration loaded, %tu, total loaded samples, %tu, of expected %tu, next interval from %@ to %@", buf, 0x34u);
    }

    v136 = 1;
LABEL_153:

    goto LABEL_155;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    oslog = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_2304B3000, oslog, OS_LOG_TYPE_DEBUG, "RTTripSegmentManager:_sanitizeTripSegmentDatabaseWithHandler database sanitization has been disabled via defaults/profile (RTDefaultsTripSegmentEnableDatabaseSanitization == false).", buf, 2u);
    }

    goto LABEL_198;
  }

LABEL_199:
}

void __70__RTTripSegmentManager__sanitizeTripSegmentDatabaseSinceDate_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  v9 = a3;
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
  v8 = v5;

  dispatch_semaphore_signal(*(a1 + 32));
}

void __70__RTTripSegmentManager__sanitizeTripSegmentDatabaseSinceDate_handler___block_invoke_291(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void __70__RTTripSegmentManager__sanitizeTripSegmentDatabaseSinceDate_handler___block_invoke_292(uint64_t a1, uint64_t a2, id obj)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), obj);
  v5 = obj;
  dispatch_semaphore_signal(*(a1 + 32));
}

void __70__RTTripSegmentManager__sanitizeTripSegmentDatabaseSinceDate_handler___block_invoke_293(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  v9 = a3;
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
  v8 = v5;

  *(*(*(a1 + 56) + 8) + 24) = [*(*(*(a1 + 48) + 8) + 40) count];
  dispatch_semaphore_signal(*(a1 + 32));
}

void __70__RTTripSegmentManager__sanitizeTripSegmentDatabaseSinceDate_handler___block_invoke_295(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void __70__RTTripSegmentManager__sanitizeTripSegmentDatabaseSinceDate_handler___block_invoke_296(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void __70__RTTripSegmentManager__sanitizeTripSegmentDatabaseSinceDate_handler___block_invoke_297(uint64_t a1, uint64_t a2, id obj)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
  v6 = obj;
  *(*(*(a1 + 48) + 8) + 24) = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void __70__RTTripSegmentManager__sanitizeTripSegmentDatabaseSinceDate_handler___block_invoke_298(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)sanitizeTripSegmentDatabaseSinceDate:(id)date handler:(id)handler
{
  dateCopy = date;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__RTTripSegmentManager_sanitizeTripSegmentDatabaseSinceDate_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = dateCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = dateCopy;
  dispatch_async(queue, block);
}

- (BOOL)_generateDiagnosticFilesAtURL:(id)l error:(id *)error
{
  v52 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v6 = MEMORY[0x277CCACA8];
  routineCacheDirectoryPath = [MEMORY[0x277CCAA00] routineCacheDirectoryPath];
  v8 = [v6 stringWithFormat:@"%@/tripSegments/", routineCacheDirectoryPath];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v10 = [defaultManager fileExistsAtPath:v8];

  if (v10)
  {
    path = [lCopy path];
    v12 = [path stringByAppendingPathComponent:v8];

    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/", v12];

    stringByDeletingLastPathComponent = [v13 stringByDeletingLastPathComponent];
    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    v16 = [defaultManager2 fileExistsAtPath:stringByDeletingLastPathComponent];

    if ((v16 & 1) == 0)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v18 = objc_opt_class();
          v19 = NSStringFromClass(v18);
          v20 = NSStringFromSelector(a2);
          *buf = 138412802;
          v45 = v19;
          v46 = 2112;
          v47 = v20;
          v48 = 2112;
          v49 = stringByDeletingLastPathComponent;
          _os_log_impl(&dword_2304B3000, v17, OS_LOG_TYPE_INFO, "CRTSM,%@ %@, creating destination directory, %@", buf, 0x20u);
        }
      }

      defaultManager3 = [MEMORY[0x277CCAA00] defaultManager];
      v43 = 0;
      v22 = [defaultManager3 createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v43];
      v23 = v43;

      if (!v22 || v23)
      {
        v24 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v38 = objc_opt_class();
          v41 = NSStringFromClass(v38);
          v39 = NSStringFromSelector(a2);
          *buf = 138413058;
          v45 = v41;
          v46 = 2112;
          v47 = v39;
          v40 = v39;
          v48 = 2112;
          v49 = stringByDeletingLastPathComponent;
          v50 = 2112;
          v51 = v23;
          _os_log_error_impl(&dword_2304B3000, v24, OS_LOG_TYPE_ERROR, "CRTSM,%@ %@, failed to create directory, %@, error, %@", buf, 0x2Au);
        }
      }
    }

    defaultManager4 = [MEMORY[0x277CCAA00] defaultManager];
    v42 = 0;
    v26 = [defaultManager4 copyItemAtPath:v8 toPath:v13 error:&v42];
    v27 = v42;

    v28 = v27 == 0;
    if (!v26 || v27)
    {
      v29 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_24;
      }

      v37 = objc_opt_class();
      v31 = NSStringFromClass(v37);
      v32 = NSStringFromSelector(a2);
      *buf = 138413058;
      v45 = v31;
      v46 = 2112;
      v47 = v32;
      v48 = 2112;
      v49 = v8;
      v50 = 2112;
      v51 = v27;
      _os_log_error_impl(&dword_2304B3000, v29, OS_LOG_TYPE_ERROR, "CRTSM,%@ %@, error while copying up file %@, error, %@", buf, 0x2Au);
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
LABEL_25:

        goto LABEL_26;
      }

      v29 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (!os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
LABEL_24:

        goto LABEL_25;
      }

      v30 = objc_opt_class();
      v31 = NSStringFromClass(v30);
      v32 = NSStringFromSelector(a2);
      *buf = 138413058;
      v45 = v31;
      v46 = 2112;
      v47 = v32;
      v48 = 2112;
      v49 = v8;
      v50 = 2112;
      v51 = v13;
      _os_log_impl(&dword_2304B3000, v29, OS_LOG_TYPE_INFO, "CRTSM,%@ %@, finished copying file %@ to %@", buf, 0x2Au);
    }

    goto LABEL_24;
  }

  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v28 = 0;
    goto LABEL_28;
  }

  v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v33 = objc_opt_class();
    v34 = NSStringFromClass(v33);
    v35 = NSStringFromSelector(a2);
    *buf = 138412802;
    v45 = v34;
    v46 = 2112;
    v47 = v35;
    v48 = 2112;
    v49 = v8;
    _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_INFO, "CRTSM,%@ %@, skipping, %@, file does not exist at path", buf, 0x20u);
  }

  v28 = 0;
LABEL_26:

LABEL_28:
  return v28;
}

- (BOOL)_areRoadTransitionsSame:(id)same toRoadTransitions:(id)transitions
{
  sameCopy = same;
  transitionsCopy = transitions;
  [sameCopy fromStartLatitude];
  v8 = v7;
  [transitionsCopy fromStartLatitude];
  v19 = 0;
  if (vabdd_f64(v8, v9) < 0.0000001)
  {
    [sameCopy fromStartLongitude];
    v11 = v10;
    [transitionsCopy fromStartLongitude];
    if (vabdd_f64(v11, v12) < 0.0000001)
    {
      [sameCopy fromEndLatitude];
      v14 = v13;
      [transitionsCopy fromEndLatitude];
      if (vabdd_f64(v14, v15) < 0.0000001)
      {
        [sameCopy fromEndLongitude];
        v17 = v16;
        [transitionsCopy fromEndLongitude];
        if (vabdd_f64(v17, v18) < 0.0000001)
        {
          v19 = 1;
        }
      }
    }
  }

  return v19;
}

- (BOOL)_areRoadsConnected:(id)connected toRoadTransitions:(id)transitions
{
  connectedCopy = connected;
  transitionsCopy = transitions;
  [connectedCopy fromEndLatitude];
  v8 = v7;
  [transitionsCopy fromStartLatitude];
  v13 = 0;
  if (vabdd_f64(v8, v9) < 0.0000001)
  {
    [connectedCopy fromEndLongitude];
    v11 = v10;
    [transitionsCopy fromStartLongitude];
    if (vabdd_f64(v11, v12) < 0.0000001)
    {
      v13 = 1;
    }
  }

  return v13;
}

- (void)_verifyAndReconcileTripSegmentRoadTransitionsArray:(id)array startDateOfConstructedTripSegment:(id)segment
{
  v99 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  segmentCopy = segment;
  context = objc_autoreleasePoolPush();
  array = [MEMORY[0x277CBEB18] array];
  tripSegmentRoadTransitionsArray = [(RTTripSegmentManager *)self tripSegmentRoadTransitionsArray];
  v7 = [tripSegmentRoadTransitionsArray count];

  if (v7)
  {
    v92 = 0;
    v8 = 0;
    do
    {
      tripSegmentRoadTransitionsArray2 = [(RTTripSegmentManager *)self tripSegmentRoadTransitionsArray];
      v10 = [tripSegmentRoadTransitionsArray2 count] - 1;

      if (v8 == v10 || (-[RTTripSegmentManager tripSegmentRoadTransitionsArray](self, "tripSegmentRoadTransitionsArray"), v11 = objc_claimAutoreleasedReturnValue(), [v11 objectAtIndexedSubscript:v8], v12 = objc_claimAutoreleasedReturnValue(), -[RTTripSegmentManager tripSegmentRoadTransitionsArray](self, "tripSegmentRoadTransitionsArray"), v13 = objc_claimAutoreleasedReturnValue(), v14 = v8 + 1, objc_msgSend(v13, "objectAtIndexedSubscript:", v8 + 1), v15 = objc_claimAutoreleasedReturnValue(), v16 = -[RTTripSegmentManager _areRoadTransitionsSame:toRoadTransitions:](self, "_areRoadTransitionsSame:toRoadTransitions:", v12, v15), v15, v13, v12, v11, !v16))
      {
        ++v92;
        tripSegmentRoadTransitionsArray3 = [(RTTripSegmentManager *)self tripSegmentRoadTransitionsArray];
        v18 = [tripSegmentRoadTransitionsArray3 objectAtIndexedSubscript:v8];
        clRoadIDTo = [v18 clRoadIDTo];

        if (v8 == v10 || clRoadIDTo)
        {
          v90 = clRoadIDTo;
          v91 = v8 + 1;
        }

        else
        {
          tripSegmentRoadTransitionsArray4 = [(RTTripSegmentManager *)self tripSegmentRoadTransitionsArray];
          v21 = [tripSegmentRoadTransitionsArray4 objectAtIndexedSubscript:v8];
          tripSegmentRoadTransitionsArray5 = [(RTTripSegmentManager *)self tripSegmentRoadTransitionsArray];
          v23 = [tripSegmentRoadTransitionsArray5 objectAtIndexedSubscript:v8 + 1];
          v24 = [(RTTripSegmentManager *)self _areRoadsConnected:v21 toRoadTransitions:v23];

          v91 = v8 + 1;
          if (v24)
          {
            tripSegmentRoadTransitionsArray6 = [(RTTripSegmentManager *)self tripSegmentRoadTransitionsArray];
            v26 = [tripSegmentRoadTransitionsArray6 objectAtIndexedSubscript:v8 + 1];
            clRoadIDFrom = [v26 clRoadIDFrom];

            v90 = clRoadIDFrom;
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              v28 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
              if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
              {
                v29 = NSStringFromSelector(a2);
                lastObject = [array lastObject];
                clRoadIDTo2 = [lastObject clRoadIDTo];
                *buf = 138412803;
                v94 = v29;
                v95 = 2053;
                v96 = clRoadIDTo2;
                v97 = 2053;
                v98 = clRoadIDFrom;
                _os_log_impl(&dword_2304B3000, v28, OS_LOG_TYPE_INFO, "%@,Fixing RTTripClusterRoadTransitions clRoadIDTo,orig,%{sensitive}llu,corrected,%{sensitive}llu", buf, 0x20u);
              }
            }
          }

          else
          {
            v90 = 0;
          }
        }

        v79 = [RTTripClusterRoadTransitions alloc];
        tripSegmentRoadTransitionsArray7 = [(RTTripSegmentManager *)self tripSegmentRoadTransitionsArray];
        v88 = [tripSegmentRoadTransitionsArray7 objectAtIndexedSubscript:v8];
        clRoadIDFrom2 = [v88 clRoadIDFrom];
        tripSegmentRoadTransitionsArray8 = [(RTTripSegmentManager *)self tripSegmentRoadTransitionsArray];
        v86 = [tripSegmentRoadTransitionsArray8 objectAtIndexedSubscript:v8];
        [v86 fromStartLatitude];
        v33 = v32;
        tripSegmentRoadTransitionsArray9 = [(RTTripSegmentManager *)self tripSegmentRoadTransitionsArray];
        v84 = [tripSegmentRoadTransitionsArray9 objectAtIndexedSubscript:v8];
        [v84 fromStartLongitude];
        v35 = v34;
        tripSegmentRoadTransitionsArray10 = [(RTTripSegmentManager *)self tripSegmentRoadTransitionsArray];
        v82 = [tripSegmentRoadTransitionsArray10 objectAtIndexedSubscript:v8];
        [v82 fromEndLatitude];
        v37 = v36;
        tripSegmentRoadTransitionsArray11 = [(RTTripSegmentManager *)self tripSegmentRoadTransitionsArray];
        v80 = [tripSegmentRoadTransitionsArray11 objectAtIndexedSubscript:v8];
        [v80 fromEndLongitude];
        v39 = v38;
        tripSegmentRoadTransitionsArray12 = [(RTTripSegmentManager *)self tripSegmentRoadTransitionsArray];
        v76 = [tripSegmentRoadTransitionsArray12 objectAtIndexedSubscript:v8];
        [v76 toStartLatitude];
        v41 = v40;
        tripSegmentRoadTransitionsArray13 = [(RTTripSegmentManager *)self tripSegmentRoadTransitionsArray];
        v74 = [tripSegmentRoadTransitionsArray13 objectAtIndexedSubscript:v8];
        [v74 toStartLongitude];
        v43 = v42;
        tripSegmentRoadTransitionsArray14 = [(RTTripSegmentManager *)self tripSegmentRoadTransitionsArray];
        v72 = [tripSegmentRoadTransitionsArray14 objectAtIndexedSubscript:v8];
        [v72 toEndLatitude];
        v45 = v44;
        tripSegmentRoadTransitionsArray15 = [(RTTripSegmentManager *)self tripSegmentRoadTransitionsArray];
        v70 = [tripSegmentRoadTransitionsArray15 objectAtIndexedSubscript:v8];
        [v70 toEndLongitude];
        v47 = v46;
        tripSegmentRoadTransitionsArray16 = [(RTTripSegmentManager *)self tripSegmentRoadTransitionsArray];
        v48 = [tripSegmentRoadTransitionsArray16 objectAtIndexedSubscript:v8];
        v68 = [v48 count];
        tripSegmentRoadTransitionsArray17 = [(RTTripSegmentManager *)self tripSegmentRoadTransitionsArray];
        v50 = [tripSegmentRoadTransitionsArray17 objectAtIndexedSubscript:v8];
        startRoadCount = [v50 startRoadCount];
        tripSegmentRoadTransitionsArray18 = [(RTTripSegmentManager *)self tripSegmentRoadTransitionsArray];
        v53 = [tripSegmentRoadTransitionsArray18 objectAtIndexedSubscript:v8];
        endRoadCount = [v53 endRoadCount];
        tripSegmentRoadTransitionsArray19 = [(RTTripSegmentManager *)self tripSegmentRoadTransitionsArray];
        v56 = [tripSegmentRoadTransitionsArray19 objectAtIndexedSubscript:v8];
        [v56 familiarityMetric];
        v58 = [(RTTripClusterRoadTransitions *)v79 initWithclusterID:arrayCopy clRoadIDFrom:clRoadIDFrom2 clRoadIDTo:v90 fromStartLatitude:v68 fromStartLongitude:segmentCopy fromEndLatitude:startRoadCount fromEndLongitude:v33 toStartLatitude:v35 toStartLongitude:v37 toEndLatitude:v39 toEndLongitude:v41 count:v43 startDate:v45 startRoadCount:v47 endRoadCount:__PAIR64__(v92 roadSequenceNumber:endRoadCount) familiarityMetric:v57];

        [array addObject:v58];
        v14 = v91;
      }

      tripSegmentRoadTransitionsArray20 = [(RTTripSegmentManager *)self tripSegmentRoadTransitionsArray];
      v60 = [tripSegmentRoadTransitionsArray20 count];

      v8 = v14;
    }

    while (v14 < v60);
  }

  firstObject = [array firstObject];
  [firstObject setStartRoadCount:1];

  lastObject2 = [array lastObject];
  [lastObject2 setEndRoadCount:1];

  [(RTTripSegmentManager *)self setTripSegmentRoadTransitionsArray:array];
  objc_autoreleasePoolPop(context);
}

- (void)_addTripSegmentRoadTransitions:(id)transitions tripSegmentId:(id)id isStartOfNewTripSegment:(BOOL)segment
{
  segmentCopy = segment;
  v75 = *MEMORY[0x277D85DE8];
  transitionsCopy = transitions;
  idCopy = id;
  if (!transitionsCopy || ![transitionsCopy count])
  {
    goto LABEL_18;
  }

  tripSegmentRoadTransitionsArray = [(RTTripSegmentManager *)self tripSegmentRoadTransitionsArray];
  v10 = tripSegmentRoadTransitionsArray;
  if (segmentCopy)
  {

    if (v10)
    {
      v11 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v44 = NSStringFromSelector(a2);
        tripSegmentRoadTransitionsArray2 = [(RTTripSegmentManager *)self tripSegmentRoadTransitionsArray];
        *buf = 138412546;
        v72 = v44;
        v73 = 2048;
        v74 = [tripSegmentRoadTransitionsArray2 count];
        _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "%@,non null tripSegmentRoadDataEndpoints array,count,%lu", buf, 0x16u);
      }

      [(RTTripSegmentManager *)self setTripSegmentRoadTransitionsArray:0];
    }
  }

  else
  {

    if (v10)
    {
      goto LABEL_13;
    }

    v12 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v46 = NSStringFromSelector(a2);
      *buf = 138412290;
      v72 = v46;
      _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "%@, null tripSegmentRoadDataEndpoints array,", buf, 0xCu);
    }
  }

  array = [MEMORY[0x277CBEB18] array];
  [(RTTripSegmentManager *)self setTripSegmentRoadTransitionsArray:array];

LABEL_13:
  if ([transitionsCopy count])
  {
    v14 = 0;
    do
    {
      v15 = [transitionsCopy objectAtIndexedSubscript:v14];
      coordinates = [v15 coordinates];
      v17 = [coordinates count];

      if (v17)
      {
        v57 = [RTTripClusterRoadTransitions alloc];
        v69 = [transitionsCopy objectAtIndexedSubscript:v14];
        clRoadID = [v69 clRoadID];
        v68 = [transitionsCopy objectAtIndexedSubscript:v14];
        connectingCLRoadID = [v68 connectingCLRoadID];
        v67 = [transitionsCopy objectAtIndexedSubscript:v14];
        coordinates2 = [v67 coordinates];
        firstObject = [coordinates2 firstObject];
        [firstObject latitude];
        v19 = v18;
        v64 = [transitionsCopy objectAtIndexedSubscript:v14];
        coordinates3 = [v64 coordinates];
        firstObject2 = [coordinates3 firstObject];
        [firstObject2 longitude];
        v21 = v20;
        v61 = [transitionsCopy objectAtIndexedSubscript:v14];
        coordinates4 = [v61 coordinates];
        lastObject = [coordinates4 lastObject];
        [lastObject latitude];
        v23 = v22;
        v54 = [transitionsCopy objectAtIndexedSubscript:v14];
        coordinates5 = [v54 coordinates];
        lastObject2 = [coordinates5 lastObject];
        [lastObject2 longitude];
        v25 = v24;
        v51 = [transitionsCopy objectAtIndexedSubscript:v14];
        connectingRoadStartCoordinate = [v51 connectingRoadStartCoordinate];
        [connectingRoadStartCoordinate latitude];
        v27 = v26;
        v49 = [transitionsCopy objectAtIndexedSubscript:v14];
        connectingRoadStartCoordinate2 = [v49 connectingRoadStartCoordinate];
        [connectingRoadStartCoordinate2 longitude];
        v29 = v28;
        v30 = [transitionsCopy objectAtIndexedSubscript:v14];
        connectingRoadEndCoordinate = [v30 connectingRoadEndCoordinate];
        [connectingRoadEndCoordinate latitude];
        v33 = v32;
        v34 = [transitionsCopy objectAtIndexedSubscript:v14];
        connectingRoadEndCoordinate2 = [v34 connectingRoadEndCoordinate];
        [connectingRoadEndCoordinate2 longitude];
        v37 = v36;
        tripSegmentUnderConstruction = [(RTTripSegmentManager *)self tripSegmentUnderConstruction];
        dateInterval = [tripSegmentUnderConstruction dateInterval];
        startDate = [dateInterval startDate];
        v41 = [transitionsCopy objectAtIndexedSubscript:v14];
        [v41 familiarityIndex];
        v59 = [(RTTripClusterRoadTransitions *)v57 initWithclusterID:idCopy clRoadIDFrom:clRoadID clRoadIDTo:connectingCLRoadID fromStartLatitude:1 fromStartLongitude:startDate fromEndLatitude:0 fromEndLongitude:v19 toStartLatitude:v21 toStartLongitude:v23 toEndLatitude:v25 toEndLongitude:v27 count:v29 startDate:v33 startRoadCount:v37 endRoadCount:0 roadSequenceNumber:v42 familiarityMetric:?];

        tripSegmentRoadTransitionsArray3 = [(RTTripSegmentManager *)self tripSegmentRoadTransitionsArray];
        [tripSegmentRoadTransitionsArray3 addObject:v59];
      }

      ++v14;
    }

    while (v14 < [transitionsCopy count]);
  }

LABEL_18:
}

- (void)sendDiagnosticsToURL:(id)l options:(id)options handler:(id)handler
{
  lCopy = l;
  optionsCopy = options;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__RTTripSegmentManager_sendDiagnosticsToURL_options_handler___block_invoke;
  block[3] = &unk_2788C47F8;
  v19 = handlerCopy;
  v20 = a2;
  block[4] = self;
  v17 = optionsCopy;
  v18 = lCopy;
  v13 = lCopy;
  v14 = handlerCopy;
  v15 = optionsCopy;
  dispatch_async(queue, block);
}

void __61__RTTripSegmentManager_sendDiagnosticsToURL_options_handler___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = objc_opt_class();
      v4 = NSStringFromClass(v3);
      v5 = NSStringFromSelector(*(a1 + 64));
      v6 = *(a1 + 40);
      *buf = 138412802;
      v20 = v4;
      v21 = 2112;
      v22 = v5;
      v23 = 2112;
      v24 = v6;
      _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "CRTSM,%@ %@, options, %@", buf, 0x20u);
    }
  }

  if ([*(a1 + 40) hasMask:1])
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 48);
    v18 = 0;
    v9 = [v7 _generateDiagnosticFilesAtURL:v8 error:&v18];
    v10 = v18;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v11 = _rt_log_facility_get_os_log(RTLogFacilityDatabase);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        v14 = NSStringFromSelector(*(a1 + 64));
        v15 = v14;
        v16 = @"NO";
        *buf = 138413058;
        v20 = v13;
        v21 = 2112;
        if (v9)
        {
          v16 = @"YES";
        }

        v22 = v14;
        v23 = 2112;
        v24 = v16;
        v25 = 2112;
        v26 = v10;
        _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_INFO, "CRTSM,%@ %@, success, %@, error, %@", buf, 0x2Au);
      }
    }

    v17 = *(a1 + 56);
    if (v17)
    {
      (*(v17 + 16))(v17, v10);
    }
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

@end